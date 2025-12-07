uint64_t sub_100138350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = type metadata accessor for EnvironmentValues();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for OpenURLAction();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SavedWallpaperView(0, a3, a4, v17);
  sub_10000D58C(a1 + *(v18 + 40), v12, &qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v9, v23);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v14 + 8))(v16, v13);
}

double sub_1001385EC@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  *&v42 = static Color.white.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v39 = v13;
  v40 = v12;
  v15 = v14;
  v38 = v16;
  sub_10000D60C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 & 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[103] = v48;
  *&v41[7] = v42;
  *&v41[23] = v43;
  *&v41[39] = v44;
  v27 = static Color.blue.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v28 = (a1 + *(sub_100009F70(&qword_1002209F0, &qword_1001B92E8) + 36));
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #12.0 }

  *v28 = _Q0;
  *&v28[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v26;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 96) = 0;
  *(a1 + 161) = *&v41[64];
  *(a1 + 177) = *&v41[80];
  *(a1 + 193) = *&v41[96];
  *(a1 + 97) = *v41;
  *(a1 + 113) = *&v41[16];
  result = *&v41[32];
  *(a1 + 129) = *&v41[32];
  *(a1 + 145) = *&v41[48];
  *(a1 + 208) = *(&v48 + 1);
  *(a1 + 216) = v27;
  *(a1 + 224) = v9;
  return result;
}

uint64_t sub_100138940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009F70(&qword_10021A8B0, &qword_1001B51F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v13 = a2;
  v14 = a3;
  v15 = a1;
  sub_100042DC4();
  ToolbarItem<>.init(placement:content:)();
  sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100138AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for SavedWallpaperView(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v10 + 32))(v14 + v13, v12, v9);
  *a5 = 0;
  *(a5 + 8) = sub_100138E10;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_100138C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedWallpaperView(0, a2, a3, v9);
  sub_10013589C(v10, v8);
  DismissAction.callAsFunction()();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100138D3C()
{
  result = qword_100220980;
  if (!qword_100220980)
  {
    sub_10000B3DC(&qword_100220978, &qword_1001B9270);
    sub_10000D1EC(&qword_100220988, &qword_100220990, &unk_1001B9278, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220980);
  }

  return result;
}

uint64_t sub_100138E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SavedWallpaperView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100138C3C(v8, v5, v6);
}

uint64_t sub_100138E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SavedWallpaperView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v17 = *(*(v5 - 8) + 64);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v4 + v7;

  v12 = *(v5 + 36);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DismissAction();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = *(v5 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for OpenURLAction();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  else
  {
  }

  (*(v9 + 8))(v4 + ((v7 + v17 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_1001390CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SavedWallpaperView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_100138350(v4 + v8, v11, v5, v6);
}

unint64_t sub_1001391BC()
{
  result = qword_1002209F8;
  if (!qword_1002209F8)
  {
    sub_10000B3DC(&qword_1002209F0, &qword_1001B92E8);
    sub_100139274();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002209F8);
  }

  return result;
}

unint64_t sub_100139274()
{
  result = qword_100220A00;
  if (!qword_100220A00)
  {
    sub_10000B3DC(&qword_100220A08, &qword_1001B92F0);
    sub_10013932C();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A00);
  }

  return result;
}

unint64_t sub_10013932C()
{
  result = qword_100220A10;
  if (!qword_100220A10)
  {
    sub_10000B3DC(&qword_100220A18, &qword_1001B92F8);
    sub_1000B195C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A10);
  }

  return result;
}

uint64_t sub_1001393B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SavedWallpaperView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v4 + v6;

  v9 = *(v5 + 36);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = *(v5 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_100139570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SavedWallpaperView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10013718C(a1, v4 + v9, v10, v6, v7);
}

uint64_t sub_100139628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SavedWallpaperView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 36);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v5 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001397CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SavedWallpaperView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1001375B4(a1, v9, v6, v7, a3);
}

unint64_t sub_100139868()
{
  result = qword_100220A38;
  if (!qword_100220A38)
  {
    sub_10000B3DC(&qword_100220A30, &qword_1001B9318);
    sub_1001398F4();
    sub_100139B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A38);
  }

  return result;
}

unint64_t sub_1001398F4()
{
  result = qword_100220A40;
  if (!qword_100220A40)
  {
    sub_10000B3DC(&qword_100220A48, &qword_1001B9320);
    sub_1001399AC();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A40);
  }

  return result;
}

unint64_t sub_1001399AC()
{
  result = qword_100220A50;
  if (!qword_100220A50)
  {
    sub_10000B3DC(&qword_100220A58, &qword_1001B9328);
    sub_100139A64();
    sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A50);
  }

  return result;
}

unint64_t sub_100139A64()
{
  result = qword_100220A60;
  if (!qword_100220A60)
  {
    sub_10000B3DC(&qword_100220A68, &qword_1001B9330);
    sub_100139AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A60);
  }

  return result;
}

unint64_t sub_100139AF0()
{
  result = qword_100220A70;
  if (!qword_100220A70)
  {
    sub_10000B3DC(&qword_100220A78, &qword_1001B9338);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A70);
  }

  return result;
}

unint64_t sub_100139B7C()
{
  result = qword_100220A80;
  if (!qword_100220A80)
  {
    sub_10000B3DC(&qword_100220A88, &qword_1001B9340);
    sub_100139C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A80);
  }

  return result;
}

unint64_t sub_100139C08()
{
  result = qword_100220A90;
  if (!qword_100220A90)
  {
    sub_10000B3DC(&qword_100220A98, &qword_1001B9348);
    sub_100139C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A90);
  }

  return result;
}

unint64_t sub_100139C94()
{
  result = qword_100220AA0;
  if (!qword_100220AA0)
  {
    sub_10000B3DC(&qword_100218DD0, &qword_1001AD870);
    sub_100139D4C();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220AA0);
  }

  return result;
}

unint64_t sub_100139D4C()
{
  result = qword_100220AA8;
  if (!qword_100220AA8)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220AA8);
  }

  return result;
}

unint64_t sub_100139E08(uint64_t a1)
{
  result = sub_100139E30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100139E30()
{
  result = qword_100220AC8;
  if (!qword_100220AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220AC8);
  }

  return result;
}

uint64_t sub_100139EE0(uint64_t a1)
{
  *(a1 + 8) = sub_100139F64(&qword_100220B18, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  result = sub_100139F64(&qword_100220B20, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100139F64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100139FDC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013A0F8;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B28, &unk_1001B9558);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_1002103E8;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013A0F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013CAC8;
  }

  else
  {
    v2 = sub_10013A208;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013A208()
{
  v1 = *(v0 + 144);
  v2 = [v1 campaignGroup];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_10013A2AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10013A398;

  return v5();
}

uint64_t sub_10013A398(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10013A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_10013A4D8, 0, 0);
}

uint64_t sub_10013A4D8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013A5F4;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B30, &qword_1001B9568);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_1002103C0;
  v0[14] = v2;
  [v1 campaignTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013A5F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10013A7F4;
  }

  else
  {
    v2 = sub_10013A704;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013A704()
{
  v1 = *(v0 + 144);

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 tokenForClientIdentifier:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_10013A7F4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10013A864(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100028124((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10013A95C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013AA78;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B28, &unk_1001B9558);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_100210398;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013AA78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013AC2C;
  }

  else
  {
    v2 = sub_10013AB88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013AB88()
{
  v1 = *(v0 + 144);
  v2 = [v1 sportsCampaignToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_10013AC2C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10013ACB8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013ADD4;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B28, &unk_1001B9558);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_100210370;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013ADD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013CAC8;
  }

  else
  {
    v2 = sub_10013AEE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013AEE4()
{
  v1 = *(v0 + 144);
  v2 = [v1 providerToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_10013AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[373] = a3;
  v3[372] = a2;
  v3[371] = a1;
  return _swift_task_switch(sub_10013AFB0, 0, 0);
}

uint64_t sub_10013AFB0()
{
  v1 = v0[373];
  v2 = v0[372];
  v3 = [objc_opt_self() sharedInstance];
  v0[374] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v0[375] = v5;
  *(v5 + 16) = &unk_1001B94F8;
  *(v5 + 24) = v4;
  v6 = v3;
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_allocObject();
  v0[376] = v8;
  *(v8 + 16) = &unk_1001B9518;
  *(v8 + 24) = v7;
  v9 = v6;
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v0[377] = v11;
  *(v11 + 16) = &unk_1001B9530;
  *(v11 + 24) = v10;
  v12 = v9;
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  v0[378] = v14;
  *(v14 + 16) = &unk_1001B9548;
  *(v14 + 24) = v13;
  v15 = v12;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 368, sub_10013B25C, v0 + 322);
}

uint64_t sub_10013B25C(__n128 a1)
{
  v2[379] = v1;
  if (v1)
  {

    return _swift_asyncLet_finish(v2 + 242, a1);
  }

  else
  {
    v2[380] = v2[368];
    v2[381] = v2[369];

    return _swift_asyncLet_get_throwing(v2 + 82, v2 + 364, sub_10013B318, v2 + 322);
  }
}

uint64_t sub_10013B318()
{
  v1[382] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10013BA8C, 0, 0);
  }

  else
  {
    v1[383] = v1[364];
    v1[384] = v1[365];

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 362, sub_10013B3D0, v1 + 322);
  }
}

uint64_t sub_10013B3D0()
{
  v1[385] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10013BDF8, 0, 0);
  }

  else
  {
    v1[386] = v1[362];
    v1[387] = v1[363];

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 366, sub_10013B488, v1 + 322);
  }
}

uint64_t sub_10013B488()
{
  *(v1 + 3104) = v0;
  if (v0)
  {
    v2 = sub_10013C170;
  }

  else
  {
    *(v1 + 2776) = 0u;
    *(v1 + 2792) = 0u;
    *(v1 + 2744) = 0u;
    *(v1 + 2760) = 0u;
    sub_1000831F8(v1 + 2744);
    v2 = sub_10013B514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013B514()
{
  v1 = *(v0 + 3096);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3072);
  v4 = *(v0 + 3064);
  v5 = *(v0 + 3048);
  v6 = *(v0 + 3040);
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2936);
  *(v0 + 2808) = v6;
  *(v0 + 2816) = v5;
  *(v0 + 2824) = v4;
  *(v0 + 2832) = v3;
  *(v0 + 2840) = v2;
  *(v0 + 2848) = v1;
  *(v0 + 2856) = v7;
  *(v0 + 2864) = v8;
  *(v0 + 2616) = v6;
  *(v0 + 2624) = v5;
  *(v0 + 2632) = v4;
  *(v0 + 2640) = v3;
  *(v0 + 2648) = v2;
  *(v0 + 2656) = v1;
  *(v0 + 2664) = v7;
  *(v0 + 2672) = v8;

  sub_10008319C(v0 + 2808, v0 + 2680);
  sub_1000831F8(v0 + 2616);
  v9 = *(v0 + 2824);
  *(v0 + 3112) = *(v0 + 2808);
  *(v0 + 3128) = v9;
  v10 = *(v0 + 2840);
  v11 = *(v0 + 2856);
  *(v0 + 3144) = v10;
  *(v0 + 3160) = v11;

  return _swift_asyncLet_finish(v0 + 1936, v10);
}

uint64_t sub_10013B6D4()
{

  v1 = *(v0 + 2968);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3160);
  *v1 = *(v0 + 3112);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10013B85C()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013BA8C()
{

  return _swift_asyncLet_finish(v0 + 1936, v1);
}

uint64_t sub_10013BBC8()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013BDF8()
{

  return _swift_asyncLet_finish(v0 + 1936, v1);
}

uint64_t sub_10013BF40()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013C170()
{

  return _swift_asyncLet_finish(v0 + 1936, v1);
}

uint64_t sub_10013C2C4()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013C4F4()
{

  return swift_deallocObject();
}

uint64_t sub_10013C52C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013CACC;

  return sub_100139FBC(v2);
}

uint64_t sub_10013C5C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_10013A2AC(a1, v4);
}

uint64_t sub_10013C678()
{

  return swift_deallocObject();
}

uint64_t sub_10013C6B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10013C760;

  return sub_10013A4B4(v2, v3, v4);
}

uint64_t sub_10013C760(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10013C86C()
{

  return swift_deallocObject();
}

uint64_t sub_10013C8A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D890;

  return sub_10013A2AC(a1, v4);
}

uint64_t sub_10013C95C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013CACC;

  return sub_10013A93C(v2);
}

uint64_t sub_10013C9F0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013CACC;

  return sub_10013AC98(v2);
}

uint64_t sub_10013CAD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10013CB1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10013CB88(uint64_t a1)
{
  static Color.black.getter();
  v1 = Color.opacity(_:)();

  qword_100220B38 = v1;
}

uint64_t sub_10013CBC8()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100220B40 = result;
  return result;
}

uint64_t sub_10013CC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_100009F70(&qword_100220B48, &qword_1001B9640);
  __chkstk_darwin(v7 - 8);
  v9 = (&v38 - v8);
  v10 = sub_100009F70(&qword_100220B50, &qword_1001B9648);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_100009F70(&qword_100220B58, &qword_1001B9650);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v39 = sub_100009F70(&qword_100220B60, &qword_1001B9658);
  __chkstk_darwin(v39);
  v40 = &v38 - v17;
  *v9 = static Alignment.center.getter();
  v9[1] = v18;
  v19 = sub_100009F70(&qword_100220B68, &qword_1001B9660);
  sub_10013D098(a1, a2, a3 & 1, v9 + *(v19 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v9, v13, &qword_100220B48, &qword_1001B9640);
  v20 = &v13[*(v11 + 44)];
  v21 = v47;
  *(v20 + 4) = v46;
  *(v20 + 5) = v21;
  *(v20 + 6) = v48;
  v22 = v43;
  *v20 = v42;
  *(v20 + 1) = v22;
  v23 = v45;
  *(v20 + 2) = v44;
  *(v20 + 3) = v23;
  v24 = *(a1 + 16);
  v25 = v24[5];
  v26 = v24[6];
  sub_100028124(v24 + 2, v25);
  if ((*(v26 + 32))(v25, v26))
  {
    if (qword_100218438 != -1)
    {
      swift_once();
    }

    v27 = qword_100220B38;
  }

  else
  {
    v27 = 0;
  }

  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_10000F618(v13, v16, &qword_100220B50, &qword_1001B9648);
  v31 = &v16[*(v14 + 36)];
  *v31 = v27;
  v31[1] = v28;
  v31[2] = v30;
  LocalizedStringKey.init(stringLiteral:)();
  v33 = v24[5];
  v32 = v24[6];
  sub_100028124(v24 + 2, v33);
  (*(v32 + 32))(v33, v32);
  sub_10013E890();
  v34 = v40;
  View.accessibilityLabel(_:isEnabled:)();

  sub_10000D52C(v16, &qword_100220B58, &qword_1001B9650);
  LocalizedStringKey.init(stringLiteral:)();
  v35 = v24[5];
  v36 = v24[6];
  sub_100028124(v24 + 2, v35);
  (*(v36 + 32))(v35, v36);
  ModifiedContent<>.accessibilityLabel(_:isEnabled:)();

  return sub_10000D52C(v34, &qword_100220B60, &qword_1001B9658);
}

uint64_t sub_10013D098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v81 = a2;
  v92 = a4;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v88 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100009F70(&qword_100220B98, &qword_1001B9670);
  __chkstk_darwin(v80);
  v8 = (&v67 - v7);
  v84 = sub_100009F70(&qword_100220BA0, &qword_1001B9678);
  __chkstk_darwin(v84);
  v82 = &v67 - v9;
  v87 = sub_100009F70(&qword_100220BA8, &qword_1001B9680);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v67 - v10;
  v11 = sub_100009F70(&qword_100220BB0, &qword_1001B9688);
  v12 = __chkstk_darwin(v11 - 8);
  v89 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v67 - v14;
  v70 = type metadata accessor for EnvironmentValues();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnimationTimelineSchedule();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v75 = sub_100009F70(&qword_100220BB8, &qword_1001B9690);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - v23;
  v77 = sub_100009F70(&qword_100220BC0, &qword_1001B9698);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v67 - v24;
  v25 = sub_100009F70(&qword_100220BC8, &qword_1001B96A0);
  v26 = __chkstk_darwin(v25 - 8);
  v79 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v78 = &v67 - v28;
  v29 = *(a1 + 16);
  v30 = v29[5];
  v31 = v29[6];
  sub_100028124(v29 + 2, v30);
  if ((*(v31 + 32))(v30, v31) == 3 || (v32 = v29[5], v33 = v29[6], sub_100028124(v29 + 2, v32), (*(v33 + 32))(v32, v33) == 2))
  {
    v71 = v8;
    v34 = v16;
    v35 = v17;
    v36 = a1;
    v37 = v29[5];
    v38 = v29[6];
    sub_100028124(v29 + 2, v37);
    if ((*(v38 + 32))(v37, v38) == 3)
    {
      v39 = v81;
      v40 = v93;
    }

    else
    {
      v39 = v81;
      v40 = v93;
      if ((v93 & 1) == 0)
      {

        static os_log_type_t.fault.getter();
        v42 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v43 = v68;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v39, 0);
        (*(v69 + 8))(v43, v70);
      }
    }

    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    *(v44 + 24) = v39;
    *(v44 + 32) = v40 & 1;
    (*(v35 + 16))(v20, v22, v34);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_10013EBB4;
    *(v45 + 24) = v44;

    sub_10013ED48(v39, v40 & 1);
    sub_100009F70(&qword_100220C00, &qword_1001B96C0);
    sub_10013F0E4(&qword_100220C08, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
    sub_10013ED54();
    v46 = v73;
    TimelineView<>.init(_:content:)();
    (*(v35 + 8))(v22, v34);
    sub_10013EF2C();
    v47 = v72;
    v48 = v75;
    View.accessibilityHidden(_:)();
    (*(v74 + 8))(v46, v48);
    v41 = v78;
    sub_10000F618(v47, v78, &qword_100220BC0, &qword_1001B9698);
    (*(v76 + 56))(v41, 0, 1, v77);
    v8 = v71;
  }

  else
  {
    v41 = v78;
    (*(v76 + 56))(v78, 1, 1, v77);
    v36 = a1;
  }

  *v8 = static Alignment.center.getter();
  v8[1] = v49;
  v50 = sub_100009F70(&qword_100220BD0, &qword_1001B96A8);
  sub_10013E01C(v36, (v8 + *(v50 + 44)));
  *(v8 + *(v80 + 36)) = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v51 = v82;
  sub_10000F618(v8, v82, &qword_100220B98, &qword_1001B9670);
  v52 = v84;
  v53 = (v51 + *(v84 + 36));
  v54 = v101;
  v53[4] = v100;
  v53[5] = v54;
  v53[6] = v102;
  v55 = v97;
  *v53 = v96;
  v53[1] = v55;
  v56 = v99;
  v53[2] = v98;
  v53[3] = v56;
  v57 = v88;
  static AccessibilityChildBehavior.combine.getter();
  v58 = sub_10013EA00();
  v59 = v83;
  View.accessibilityElement(children:)();
  (*(v90 + 8))(v57, v91);
  sub_10000D52C(v51, &qword_100220BA0, &qword_1001B9678);
  v94 = v52;
  v95 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v87;
  View.accessibilityIdentifier(_:)();
  (*(v85 + 8))(v59, v61);
  v62 = v79;
  sub_10000D58C(v41, v79, &qword_100220BC8, &qword_1001B96A0);
  v63 = v89;
  sub_10000D58C(v60, v89, &qword_100220BB0, &qword_1001B9688);
  v64 = v92;
  sub_10000D58C(v62, v92, &qword_100220BC8, &qword_1001B96A0);
  v65 = sub_100009F70(&qword_100220BF8, &qword_1001B96B8);
  sub_10000D58C(v63, v64 + *(v65 + 48), &qword_100220BB0, &qword_1001B9688);
  sub_10000D52C(v60, &qword_100220BB0, &qword_1001B9688);
  sub_10000D52C(v41, &qword_100220BC8, &qword_1001B96A0);
  sub_10000D52C(v63, &qword_100220BB0, &qword_1001B9688);
  return sub_10000D52C(v62, &qword_100220BC8, &qword_1001B96A0);
}

uint64_t sub_10013DC7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = type metadata accessor for Font.TextStyle();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CircularProgressViewStyle(0);
  __chkstk_darwin(v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100009F70(&qword_10021C948, &qword_1001B3308);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = v13[5];
  v15 = v13[6];
  sub_100028124(v13 + 2, v14);
  *&v25 = (*(v15 + 24))(v14, v15);
  BYTE8(v25) = 0;
  v24 = 0x3FF0000000000000;
  sub_1000A4228();
  ProgressView.init<A>(value:total:)();
  *v8 = static Color.white.getter();
  *&v25 = 0x4000000000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v22);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  sub_10000D1EC(&qword_10021C940, &qword_10021C948, &qword_1001B3308, &protocol conformance descriptor for ProgressView<A, B>);
  sub_10013F0E4(&qword_100220C28, type metadata accessor for CircularProgressViewStyle, &unk_1001B3A9C);
  v16 = v23;
  View.progressViewStyle<A>(_:)();
  sub_10013EFB0(v8);
  (*(v10 + 8))(v12, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = (v16 + *(sub_100009F70(&qword_100220C20, &qword_1001B96C8) + 36));
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  v17[2] = v27;
  result = sub_100009F70(&qword_100220C00, &qword_1001B96C0);
  v20 = (v16 + *(result + 36));
  *v20 = sub_10013DFF4;
  v20[1] = 0;
  return result;
}

uint64_t sub_10013E01C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v87 = a2;
  v81 = sub_100009F70(&qword_10021C890, &qword_1001B31D0);
  __chkstk_darwin(v81);
  v4 = &v80 - v3;
  v82 = sub_100009F70(&qword_100220C48, &qword_1001B96E0);
  __chkstk_darwin(v82);
  v6 = &v80 - v5;
  v83 = sub_100009F70(&qword_100220C50, &qword_1001B96E8);
  __chkstk_darwin(v83);
  v8 = &v80 - v7;
  v84 = sub_100009F70(&qword_100220C58, &qword_1001B96F0);
  v9 = __chkstk_darwin(v84);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v80 - v12;
  __chkstk_darwin(v11);
  v89 = &v80 - v14;
  v92 = Image.init(systemName:)();
  v91 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v15 = *(a1 + 16);
  v17 = v15[5];
  v16 = v15[6];
  sub_100028124(v15 + 2, v17);
  v18 = (*(v16 + 32))(v17, v16);
  v20 = v15[5];
  v19 = v15[6];
  sub_100028124(v15 + 2, v20);
  v21 = (*(v19 + 32))(v20, v19);
  static UnitPoint.center.getter();
  v85 = v22;
  v24 = v23;
  if (qword_100218440 != -1)
  {
    swift_once();
  }

  v25 = 0.0;
  if (v21 == 2)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  if (v18 == 2)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = qword_100220B40;
  v29 = v15[5];
  v30 = v15[6];
  sub_100028124(v15 + 2, v29);
  v88 = (*(v30 + 32))(v29, v30) == 2;

  ProgressView<>.init<>()();
  v31 = static Color.white.getter();
  v32 = swift_getKeyPath();
  v33 = &v4[*(sub_100009F70(&qword_10021C918, &qword_1001B32C8) + 36)];
  *v33 = v32;
  v33[1] = v31;
  *&v4[*(sub_100009F70(&qword_10021C920, &qword_1001B32D0) + 36)] = 257;
  v34 = &v4[*(v81 + 36)];
  v35 = *(sub_100009F70(&qword_10021BF68, &qword_1001B25D8) + 28);
  v36 = enum case for ControlSize.small(_:);
  v37 = type metadata accessor for ControlSize();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = v15[5];
  v39 = v15[6];
  sub_100028124(v15 + 2, v38);
  if ((*(v39 + 32))(v38, v39) == 1)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  sub_10000F618(v4, v6, &qword_10021C890, &qword_1001B31D0);
  *&v6[*(v82 + 36)] = v40;
  v41 = v15[5];
  v42 = v15[6];
  sub_100028124(v15 + 2, v41);
  if ((*(v42 + 32))(v41, v42) == 1)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.0;
  }

  static UnitPoint.center.getter();
  v45 = v44;
  v47 = v46;
  sub_10000F618(v6, v8, &qword_100220C48, &qword_1001B96E0);
  v48 = &v8[*(v83 + 36)];
  *v48 = v43;
  *(v48 + 1) = v43;
  *(v48 + 2) = v45;
  *(v48 + 3) = v47;
  v49 = v15[5];
  v50 = v15[6];
  sub_100028124(v15 + 2, v49);
  v51 = (*(v50 + 32))(v49, v50) == 1;
  sub_10000F618(v8, v13, &qword_100220C50, &qword_1001B96E8);
  v52 = &v13[*(v84 + 36)];
  v53 = v28;
  *v52 = v28;
  v52[8] = v51;
  v54 = v89;
  sub_10000F618(v13, v89, &qword_100220C58, &qword_1001B96F0);

  v55 = Image.init(systemName:)();
  v84 = static Font.caption2.getter();
  v83 = swift_getKeyPath();
  v57 = v15[5];
  v56 = v15[6];
  sub_100028124(v15 + 2, v57);
  if ((*(v56 + 32))(v57, v56) == 3)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v15[5];
  v60 = v15[6];
  sub_100028124(v15 + 2, v59);
  if ((*(v60 + 32))(v59, v60) == 3)
  {
    v25 = 1.0;
  }

  static UnitPoint.center.getter();
  v62 = v61;
  v64 = v63;
  v65 = v15[5];
  v66 = v15[6];
  sub_100028124(v15 + 2, v65);
  LODWORD(v65) = (*(v66 + 32))(v65, v66) == 3;
  LODWORD(v82) = v65;
  v67 = v86;
  sub_10000D58C(v54, v86, &qword_100220C58, &qword_1001B96F0);
  *&v93 = v92;
  *(&v93 + 1) = KeyPath;
  *&v94 = v91;
  *(&v94 + 1) = v27;
  *&v95 = v26;
  v68 = v85;
  *(&v95 + 1) = v26;
  *&v96[0] = v85;
  *(&v96[0] + 1) = v24;
  *&v96[1] = v53;
  BYTE8(v96[1]) = v88;
  v69 = v96[0];
  v70 = v87;
  v87[2] = v95;
  v70[3] = v69;
  *(v70 + 57) = *(v96 + 9);
  v71 = v94;
  *v70 = v93;
  v70[1] = v71;
  v72 = sub_100009F70(&qword_100220C60, &qword_1001B9788);
  sub_10000D58C(v67, v70 + *(v72 + 48), &qword_100220C58, &qword_1001B96F0);
  v73 = (v70 + *(v72 + 64));
  v74 = v55;
  *&v97 = v55;
  v76 = v83;
  v75 = v84;
  *(&v97 + 1) = v83;
  *&v98 = v84;
  *(&v98 + 1) = v58;
  *&v99 = v25;
  *(&v99 + 1) = v25;
  *&v100[0] = v62;
  *(&v100[0] + 1) = v64;
  *&v100[1] = v53;
  BYTE8(v100[1]) = v65;
  v77 = v100[0];
  v73[2] = v99;
  v73[3] = v77;
  v78 = v98;
  *v73 = v97;
  v73[1] = v78;
  *(v73 + 57) = *(v100 + 9);

  sub_10000D58C(&v93, v103, &qword_100220C68, &unk_1001B9790);
  sub_10000D58C(&v97, v103, &qword_100220C68, &unk_1001B9790);
  sub_10000D52C(v89, &qword_100220C58, &qword_1001B96F0);
  v101[0] = v74;
  v101[1] = v76;
  v101[2] = v75;
  *&v101[3] = v58;
  *&v101[4] = v25;
  *&v101[5] = v25;
  v101[6] = v62;
  v101[7] = v64;
  v101[8] = v53;
  v102 = v82;
  sub_10000D52C(v101, &qword_100220C68, &unk_1001B9790);
  sub_10000D52C(v67, &qword_100220C58, &qword_1001B96F0);
  v103[0] = v92;
  v103[1] = KeyPath;
  v103[2] = v91;
  *&v103[3] = v27;
  *&v103[4] = v26;
  *&v103[5] = v26;
  v103[6] = v68;
  v103[7] = v24;
  v103[8] = v53;
  v104 = v88;
  return sub_10000D52C(v103, &qword_100220C68, &unk_1001B9790);
}

unint64_t sub_10013E890()
{
  result = qword_100220B70;
  if (!qword_100220B70)
  {
    sub_10000B3DC(&qword_100220B58, &qword_1001B9650);
    sub_10013E948();
    sub_10000D1EC(&qword_100220B88, &qword_100220B90, &qword_1001B9668, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220B70);
  }

  return result;
}

unint64_t sub_10013E948()
{
  result = qword_100220B78;
  if (!qword_100220B78)
  {
    sub_10000B3DC(&qword_100220B50, &qword_1001B9648);
    sub_10000D1EC(&qword_100220B80, &qword_100220B48, &qword_1001B9640, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220B78);
  }

  return result;
}

unint64_t sub_10013EA00()
{
  result = qword_100220BD8;
  if (!qword_100220BD8)
  {
    sub_10000B3DC(&qword_100220BA0, &qword_1001B9678);
    sub_10013EA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220BD8);
  }

  return result;
}

unint64_t sub_10013EA8C()
{
  result = qword_100220BE0;
  if (!qword_100220BE0)
  {
    sub_10000B3DC(&qword_100220B98, &qword_1001B9670);
    sub_10000D1EC(&qword_100220BE8, &qword_100220BF0, &qword_1001B96B0, &protocol conformance descriptor for ZStack<A>);
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220BE0);
  }

  return result;
}

uint64_t sub_10013EB70()
{

  sub_100027EB0(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10013EBC0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100009F70(&qword_100220C38, &qword_1001B96D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100009F70(&qword_100220C40, &qword_1001B96D8);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10013ED08()
{

  return swift_deallocObject();
}

uint64_t sub_10013ED48(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_10013ED54()
{
  result = qword_100220C10;
  if (!qword_100220C10)
  {
    sub_10000B3DC(&qword_100220C00, &qword_1001B96C0);
    sub_10013EDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C10);
  }

  return result;
}

unint64_t sub_10013EDE0()
{
  result = qword_100220C18;
  if (!qword_100220C18)
  {
    sub_10000B3DC(&qword_100220C20, &qword_1001B96C8);
    sub_10000B3DC(&qword_10021C948, &qword_1001B3308);
    type metadata accessor for CircularProgressViewStyle(255);
    sub_10000D1EC(&qword_10021C940, &qword_10021C948, &qword_1001B3308, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10013F0E4(&qword_100220C28, type metadata accessor for CircularProgressViewStyle, &unk_1001B3A9C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C18);
  }

  return result;
}

unint64_t sub_10013EF2C()
{
  result = qword_100220C30;
  if (!qword_100220C30)
  {
    sub_10000B3DC(&qword_100220BB8, &qword_1001B9690);
    sub_10013ED54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C30);
  }

  return result;
}

uint64_t sub_10013EFB0(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013F028()
{
  result = qword_100220C70;
  if (!qword_100220C70)
  {
    sub_10000B3DC(&qword_100220B60, &qword_1001B9658);
    sub_10013E890();
    sub_10013F0E4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C70);
  }

  return result;
}

uint64_t sub_10013F0E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D58C(a3, v25 - v10, &qword_10021F7D0, &qword_1001AD340);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D52C(v11, &qword_10021F7D0, &qword_1001AD340);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000D52C(a3, &qword_10021F7D0, &qword_1001AD340);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D52C(a3, &qword_10021F7D0, &qword_1001AD340);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10013F42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D58C(a3, v25 - v10, &qword_10021F7D0, &qword_1001AD340);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D52C(v11, &qword_10021F7D0, &qword_1001AD340);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100009F70(&qword_100220DD0, &qword_1001B99F8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000D52C(a3, &qword_10021F7D0, &qword_1001AD340);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D52C(a3, &qword_10021F7D0, &qword_1001AD340);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100009F70(&qword_100220DD0, &qword_1001B99F8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10013F740(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10013F7E4@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 16);
}

double sub_10013F890(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10013F95C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000D58C(v2 + 24, a2, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_10013FA2C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000D58C(v4 + 24, a3, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_10013FAFC(uint64_t a1, uint64_t *a2)
{
  sub_10000D58C(a1, v3, &qword_10021A650, &qword_1001AFE68);
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(v3, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_10013FC04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100144280(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_10013FC68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 64);
}

void sub_10013FD08(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 64);
}

double sub_10013FDB0(unsigned __int8 a1, uint64_t a2)
{
  if (*(v2 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10013FEB8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10013FF5C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 72);
}

double sub_100140008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 72))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_1001441B8(&qword_100220DA0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v3 + 72) = a1;

  return result;
}

uint64_t sub_1001401B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100140254@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 80);
}

double sub_100140300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 80))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_1001441B8(&qword_100220DA0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v3 + 80) = a1;

  return result;
}

uint64_t sub_1001404A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10014054C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 88);
}

double sub_1001405F8(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 88))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 88) = a1;

  return result;
}

uint64_t sub_100140780()
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100220DA8, &qword_1001B9920);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  swift_getKeyPath();
  v17[0] = v0;
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000D58C(v0 + 24, v18, &qword_10021A650, &qword_1001AFE68);
  v8 = v19;
  if (v19)
  {
    v9 = v20;
    v10 = sub_100028124(v18, v19);
    v11 = *(v8 - 8);
    __chkstk_darwin(v10);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    sub_10000D52C(v18, &qword_10021A650, &qword_1001AFE68);
    v14 = (*(v9 + 96))(v8, v9);
    LOBYTE(v9) = v15;
    (*(v11 + 8))(v13, v8);
    if ((v9 & 1) == 0)
    {
      return v14;
    }
  }

  else
  {
    sub_10000D52C(v18, &qword_10021A650, &qword_1001AFE68);
  }

  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000D52C(v7, &qword_100220DA8, &qword_1001B9920);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10000D52C(v7, &qword_100220DA8, &qword_1001B9920);
    v14 = MusicPlayer.Queue.Entry.endTime.getter();
    (*(v2 + 8))(v4, v1);
  }

  return v14;
}

void sub_100140B38()
{
  v0 = COERCE_DOUBLE(sub_100140780());
  if (v1 & 1) == 0 && v0 > 0.0 && ((~*&v0 & 0x7FF0000000000000) != 0 || (*&v0 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_100140BF4())
  {
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.playbackTime.getter();
  }
}

uint64_t sub_100140BF4()
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100220DA8, &qword_1001B9920);
  __chkstk_darwin(v5 - 8);
  v7 = v30 - v6;
  v8 = sub_100009F70(&qword_100220DB0, &qword_1001B9928);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    v11 = &qword_100220DA8;
    v12 = &qword_1001B9920;
    v13 = v7;
LABEL_5:
    sub_10000D52C(v13, v11, v12);
    v16 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_10000D52C(v7, &qword_100220DA8, &qword_1001B9920);
  MusicPlayer.Queue.Entry.item.getter();
  (*(v2 + 8))(v4, v1);
  v14 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    v11 = &qword_100220DB0;
    v12 = &qword_1001B9928;
    v13 = v10;
    goto LABEL_5;
  }

  v16 = MusicPlayer.Queue.Entry.Item.id.getter();
  v17 = v28;
  (*(v15 + 8))(v10, v14);
LABEL_6:
  swift_getKeyPath();
  v30[0] = v0;
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000D58C(v0 + 24, v31, &qword_10021A650, &qword_1001AFE68);
  v18 = v32;
  if (!v32)
  {
    sub_10000D52C(v31, &qword_10021A650, &qword_1001AFE68);
    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_13:
    v27 = 0;
LABEL_20:

    return v27 & 1;
  }

  v19 = v33;
  v20 = sub_100028124(v31, v32);
  v21 = *(v18 - 8);
  __chkstk_darwin(v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23);
  sub_10000D52C(v31, &qword_10021A650, &qword_1001AFE68);
  v24 = (*(v19 + 88))(v18, v19);
  v26 = v25;
  (*(v21 + 8))(v23, v18);
  if (v26)
  {
    if (v17)
    {
      if (v24 == v16 && v17 == v26)
      {
        v27 = 1;
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_20;
  }

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_15:
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_100141108()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100141194();
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_100141194()
{
  v31 = *v0;
  v1 = sub_100009F70(&qword_100220D68, &qword_1001B98B8);
  __chkstk_darwin(v1 - 8);
  v3 = v24 - v2;
  v28 = sub_100009F70(&qword_100220D70, &qword_1001B98C0);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = v24 - v4;
  sub_100142978();
  swift_getKeyPath();
  v33 = v0;
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[9])
  {

    AnyCancellable.cancel()();
  }

  swift_getKeyPath();
  v33 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[10])
  {

    AnyCancellable.cancel()();
  }

  v24[4] = type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  MusicPlayer.state.getter();

  v6 = dispatch thunk of MusicPlayer.State.objectWillChange.getter();

  v33 = v6;
  v29 = objc_opt_self();
  v7 = [v29 mainRunLoop];
  v32 = v7;
  v26 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v8 = *(v26 - 8);
  v25 = *(v8 + 56);
  v27 = v8 + 56;
  v25(v3, 1, 1, v26);
  v24[3] = sub_100009F70(&qword_100220D78, &qword_1001B9918);
  v24[2] = sub_1001440C0();
  v24[1] = sub_10000D1EC(&qword_100220D88, &qword_100220D78, &qword_1001B9918, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1001441B8(&qword_100220D90, sub_1001440C0, &protocol conformance descriptor for NSRunLoop);
  Publisher.receive<A>(on:options:)();
  sub_10000D52C(v3, &qword_100220D68, &qword_1001B98B8);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10014410C;
  *(v10 + 24) = v9;
  v24[0] = sub_10000D1EC(&qword_100220D98, &qword_100220D70, &qword_1001B98C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v11 = v28;
  v12 = Publisher<>.sink(receiveValue:)();

  v13 = *(v30 + 8);
  v13(v5, v11);
  sub_100140008(v12, v14);
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  v15 = dispatch thunk of MusicPlayer.Queue.objectWillChange.getter();

  v33 = v15;
  v16 = [v29 mainRunLoop];
  v32 = v16;
  v25(v3, 1, 1, v26);
  Publisher.receive<A>(on:options:)();
  sub_10000D52C(v3, &qword_100220D68, &qword_1001B98B8);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v31;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100144174;
  *(v20 + 24) = v18;
  v21 = Publisher<>.sink(receiveValue:)();

  v13(v5, v11);
  return sub_100140300(v21, v22);
}

uint64_t sub_1001417AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D58C(a3, v25 - v10, &qword_10021F7D0, &qword_1001AD340);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D52C(v11, &qword_10021F7D0, &qword_1001AD340);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100141A6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for MusicPlayer.Queue.Entry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_100009F70(&qword_100220DA8, &qword_1001B9920);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v37 = v14;
    v38 = v11;
    v39 = v4;
    v16 = a1 + 32;
    KeyPath = swift_getKeyPath();
    v36 = &v35;
    __chkstk_darwin(KeyPath);
    *(&v35 - 2) = v2;
    *(&v35 - 1) = a1;
    v40 = OBJC_IVAR____TtC15ShazamEventsApp16AppleMusicPlayer___observationRegistrar;
    v43[0] = v2;
    v18 = sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10005DA94(v16, v43);
    v19 = swift_getKeyPath();
    v36 = &v35;
    __chkstk_darwin(v19);
    *(&v35 - 2) = v2;
    *(&v35 - 1) = v43;
    v41[0] = v2;
    v35 = v18;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000D52C(v43, &qword_10021A650, &qword_1001AFE68);
    if (*(v2 + 64) != 1)
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      *(&v35 - 2) = v2;
      *(&v35 - 8) = 1;
      v43[0] = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v42 = _swiftEmptyArrayStorage;
    sub_100144498(0, v15, 0);
    v21 = v42;
    do
    {
      sub_10005DA94(v16, v43);
      v22 = v44;
      v23 = v45;
      v24 = sub_100028124(v43, v44);
      v41[3] = v22;
      v41[4] = *(v23 + 8);
      v25 = sub_100043D3C(v41);
      (*(*(v22 - 8) + 16))(v25, v24, v22);
      MusicPlayer.Queue.Entry.init(_:startTime:endTime:)();
      sub_100021498(v43);
      v42 = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        sub_100144498((v26 > 1), v27 + 1, 1);
        v21 = v42;
      }

      v21[2] = v27 + 1;
      (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v8, v5);
      v16 += 40;
      --v15;
    }

    while (v15);
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    (*(v6 + 56))(v37, 1, 1, v5);
    v43[0] = v21;
    type metadata accessor for MusicPlayer.Queue();
    swift_allocObject();
    sub_100009F70(&qword_100220DB8, &qword_1001B99D0);
    sub_10000D1EC(&qword_100220DC0, &qword_100220DB8, &qword_1001B99D0, &protocol conformance descriptor for [A]);
    MusicPlayer.Queue.init<A>(_:startingAt:)();
    dispatch thunk of SystemMusicPlayer.queue.setter();

    v28 = type metadata accessor for TaskPriority();
    v29 = v38;
    (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v39;
    sub_10013F12C(0, 0, v29, &unk_1001B99D8, v30);
  }

  else
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10001FDF4(v31, qword_100230610);
    v40 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v40, v32, "Cannot play empty playlist.", v33, 2u);
    }

    v34 = v40;
  }
}

void sub_100142178()
{
  v1 = *v0;
  v2 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if (sub_100140BF4())
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;
    sub_10013F12C(0, 0, v4, &unk_1001B99B8, v6);
  }

  else
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10001FDF4(v7, qword_100230610);
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Player asked to resume song but current song not in system player queue.", v9, 2u);
    }

    v10 = v12;
  }
}

void sub_100142380()
{
  if (sub_100140BF4())
  {
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.pause()();
  }

  else
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10001FDF4(v0, qword_100230610);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to pause song. Current song not in System player..", v2, 2u);
    }
  }
}

uint64_t sub_1001424C8()
{
  type metadata accessor for SystemMusicPlayer();
  *(v0 + 48) = static SystemMusicPlayer.shared.getter();
  v3 = (&async function pointer to dispatch thunk of MusicPlayer.play() + async function pointer to dispatch thunk of MusicPlayer.play());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100142580;

  return v3();
}

uint64_t sub_100142580()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001427B0;
  }

  else
  {

    v2 = sub_10014269C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014269C()
{
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Song playback started.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001427B0()
{
  v12 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to play song with error %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_100142978()
{
  v1 = type metadata accessor for MusicPlayer.PlaybackStatus();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100140BF4() & 1) == 0)
  {
    if (!*(v0 + 64))
    {
      return;
    }

    goto LABEL_7;
  }

  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  MusicPlayer.state.getter();

  dispatch thunk of MusicPlayer.State.playbackStatus.getter();

  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for MusicPlayer.PlaybackStatus.stopped(_:))
  {
    sub_100140B38();
    if (v6 > 0.0 && *(v0 + 64))
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 0;
      v14 = v0;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
LABEL_8:
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v5 == enum case for MusicPlayer.PlaybackStatus.playing(_:))
  {
    if (*(v0 + 64) != 2)
    {
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 2;
      v14 = v0;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 != enum case for MusicPlayer.PlaybackStatus.paused(_:) && v5 != enum case for MusicPlayer.PlaybackStatus.interrupted(_:))
    {
      (*(v2 + 8))(v4, v1);
      return;
    }

    if (*(v0 + 64) != 3)
    {
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 3;
      v14 = v0;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.playbackTime.getter();
    v12 = v11;

    if (v12 == 0.0 && *(v0 + 64))
    {
      goto LABEL_7;
    }
  }
}

double sub_100142EC4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100142978();
  }

  return result;
}

void sub_100142F1C(uint64_t a1)
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100220DA8, &qword_1001B9920);
  __chkstk_darwin(v5 - 8);
  v7 = v38 - v6;
  v8 = sub_100009F70(&qword_100220DB0, &qword_1001B9928);
  __chkstk_darwin(v8 - 8);
  v10 = v38 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (sub_100140BF4())
    {
LABEL_22:

      return;
    }

    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of SystemMusicPlayer.queue.getter();

    dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_10000D52C(v7, &qword_100220DA8, &qword_1001B9920);
      goto LABEL_17;
    }

    (*(v2 + 16))(v4, v7, v1);
    sub_10000D52C(v7, &qword_100220DA8, &qword_1001B9920);
    MusicPlayer.Queue.Entry.item.getter();
    (*(v2 + 8))(v4, v1);
    v13 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_10000D52C(v10, &qword_100220DB0, &qword_1001B9928);
      goto LABEL_17;
    }

    v15 = MusicPlayer.Queue.Entry.Item.id.getter();
    v17 = v16;
    (*(v14 + 8))(v10, v13);
    swift_getKeyPath();
    v18 = OBJC_IVAR____TtC15ShazamEventsApp16AppleMusicPlayer___observationRegistrar;
    *&v39 = v12;
    v19 = sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
    v38[2] = v18;
    v38[1] = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v12 + 16);
    v21 = *(v20 + 16);

    if (!v21)
    {
LABEL_16:

LABEL_17:
      if (qword_100218470 != -1)
      {
LABEL_32:
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10001FDF4(v27, qword_100230610);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "System player finished playing queued songs.", v30, 2u);
      }

      v43 = 0;
      memset(v42, 0, sizeof(v42));
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v38[-2] = v12;
      v38[-1] = v42;
      *&v41[0] = v12;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000D52C(v42, &qword_10021A650, &qword_1001AFE68);
      if (*(v12 + 64))
      {
        v32 = swift_getKeyPath();
        __chkstk_darwin(v32);
        v38[-2] = v12;
        LOBYTE(v38[-1]) = 0;
        *&v42[0] = v12;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return;
      }

      goto LABEL_22;
    }

    v22 = 0;
    v23 = v20 + 32;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_10005DA94(v23, &v39);
      sub_100028124(&v39, v40);
      if (dispatch thunk of MusicItem.id.getter() == v15 && v24 == v17)
      {

        goto LABEL_26;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        break;
      }

      ++v22;
      sub_100021498(&v39);
      v23 += 40;
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

LABEL_26:

    sub_100071318(&v39, v41);
    sub_100071318(v41, v42);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10001FDF4(v33, qword_100230610);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "System player started playing next queued song.", v36, 2u);
    }

    sub_10005DA94(v42, v41);
    v37 = swift_getKeyPath();
    __chkstk_darwin(v37);
    v38[-2] = v12;
    v38[-1] = v41;
    *&v39 = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100021498(v42);

    sub_10000D52C(v41, &qword_10021A650, &qword_1001AFE68);
  }
}

uint64_t sub_100143730()
{

  sub_10000D52C(v0 + 24, &qword_10021A650, &qword_1001AFE68);

  v1 = OBJC_IVAR____TtC15ShazamEventsApp16AppleMusicPlayer___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleMusicPlayer(uint64_t a1)
{
  result = qword_100220CA8;
  if (!qword_100220CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100143858(uint64_t a1)
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

uint64_t sub_100143918(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001439BC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000D58C(v4 + 24, a2, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_100143AB0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v3 + 64);
}

double sub_100143BBC()
{
  v0 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_1001417AC(0, 0, v2, &unk_1001B9898, v5);
  sub_10000D52C(v2, &qword_10021F7D0, &qword_1001AD340);
  return sub_1001405F8(v6, v7);
}

double sub_100143D0C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer, &unk_1001B9830);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 88))
  {

    Task.cancel()();
  }

  return result;
}

void sub_100143DFC()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t sub_100143E38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100143E70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100143EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1001410E8(a1, v4, v5, v6);
}

uint64_t sub_100143F64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_1000A8094(a1, v4);
}

uint64_t sub_10014401C()
{

  return swift_deallocObject();
}

unint64_t sub_1001440C0()
{
  result = qword_100220D80;
  if (!qword_100220D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100220D80);
  }

  return result;
}

uint64_t sub_10014413C()
{

  return swift_deallocObject();
}

void sub_10014417C()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1001441B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100144280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A650, &qword_1001AFE68);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1001442F0()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_10014432C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100144364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000214E4;

  return sub_1001424AC();
}

uint64_t sub_100144418()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void *sub_100144454(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DF8, &qword_1001B9A28, &type metadata accessor for Art);
  *v3 = result;
  return result;
}

void *sub_100144498(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DC8, &qword_1001B99E0, &type metadata accessor for MusicPlayer.Queue.Entry);
  *v3 = result;
  return result;
}

char *sub_1001444DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014464C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001444FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DE0, &qword_1001B9A10, &type metadata accessor for Dance);
  *v3 = result;
  return result;
}

void *sub_100144540(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DF0, &qword_1001B9A20, &type metadata accessor for Music);
  *v3 = result;
  return result;
}

void *sub_100144584(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DE8, &qword_1001B9A18, &type metadata accessor for Sport);
  *v3 = result;
  return result;
}

void *sub_1001445C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DD8, &qword_1001B9A08, &type metadata accessor for Theater);
  *v3 = result;
  return result;
}

char *sub_10014460C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10014462C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10014464C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(qword_100220E10, &unk_1001B9A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_100144758(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_10021B768, &qword_1001B1540);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_10014488C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009F70(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100144A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_100220E08, &qword_1001BD830);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

uint64_t sub_100144B74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100144C68;

  return v5(v2 + 32);
}

uint64_t sub_100144C68()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100144D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_100144B74(a1, v4);
}

uint64_t sub_100144E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D890;

  return sub_100144B74(a1, v4);
}

double sub_100144FAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v16 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v24);
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v17 = type metadata accessor for PromotionalAssetsEntryView(0, &v24);
  v18 = v17[13];
  *(a6 + v18) = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v19 = v17[14];
  *(a6 + v19) = swift_getKeyPath();
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  swift_storeEnumTagMultiPayload();
  v20 = a6 + v17[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a6 + v17[16];
  v27 = a7;
  v28 = a8;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v22 = v25;
  result = *&v24;
  *v21 = v24;
  *(v21 + 16) = v22;
  return result;
}

void sub_1001451A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v1;
  v2 = type metadata accessor for PromotionalAssetsEntryViewModel(319, &v12);
  if (v3 <= 0x3F)
  {
    *&v12 = v2;
    sub_10014B58C(319, &qword_1002198B8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v5 <= 0x3F)
    {
      *(&v12 + 1) = v4;
      sub_10014B58C(319, &qword_10021BD18, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v7 <= 0x3F)
      {
        *&v13 = v6;
        sub_100027AA4();
        if (v9 <= 0x3F)
        {
          *(&v13 + 1) = v8;
          sub_10014B58C(319, &qword_100220E98, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v11 <= 0x3F)
          {
            v14 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10014530C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v30 = *(a3 + 24);
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v31 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v33 = *(type metadata accessor for ColorScheme() - 8);
  v10 = *(v33 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v34 = v10;
  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 64) + v13;
  if (v9 < a2)
  {
    v16 = *(v33 + 80) & 0xF8 | 7;
    v17 = *(v11 + 80) & 0xF8 | 7;
    v18 = ((v12 + ((v34 + v17 + ((v16 + (((((v15 & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v9 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_31:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        return v9 + (v19 | v24) + 1;
      }
    }
  }

  if (v5 == v9)
  {
    v26 = *(v4 + 48);

    return v26(a1, v5, v32);
  }

  v27 = (a1 + v15) & ~v13;
  if (v31 == v9)
  {
    if (v7 >= 2)
    {
      v29 = (*(v6 + 48))(v27, v7, v30);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v27 + v14) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_10014566C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v34 = *(a4 + 16);
  v4 = *(v34 - 8);
  v33 = v4;
  v5 = *(v4 + 84);
  v31 = *(a4 + 24);
  v6 = *(v31 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v32 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = type metadata accessor for ContentSizeCategory();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  v18 = *(v4 + 64) + v17;
  v19 = *(v6 + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = ((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a3)
  {
    if (((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v23 = a3 - v9 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  v25 = a2;
  if (a2 > v9)
  {
    if (v22)
    {
      v26 = 1;
    }

    else
    {
      v26 = a2 - v9;
    }

    if (v22)
    {
      bzero(a1, v22);
      *a1 = ~v9 + a2;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v22) = v26;
      }

      else
      {
        *(a1 + v22) = v26;
      }
    }

    else if (v14)
    {
      *(a1 + v22) = v26;
    }

    return;
  }

  v27 = a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v22) = 0;
  }

  else if (v14)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v5 == v9)
  {
    v28 = v34;
    v29 = *(v33 + 56);
    v13 = v5;
  }

  else
  {
    v27 = ((a1 + v18) & ~v17);
    if (v32 != v9)
    {
      v30 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v30[3] = 0;
        v30[4] = 0;
        v30[1] = a2 & 0x7FFFFFFF;
        v30[2] = 0;
      }

      else
      {
        v30[2] = a2 - 1;
      }

      return;
    }

    v29 = *(v6 + 56);
    v25 = a2 + 1;
    v28 = v31;
  }

  v29(v27, v25, v13, v28);
}

double sub_100145A30(uint64_t a1)
{
  sub_100009F70(&qword_10021F868, &qword_1001B7A80);
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_100145AF4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_100009F70(&qword_100220EA0, &qword_1001B9B70);
  sub_100145C80(v2, a1[2], *(a1 + 3), *(a1 + 4), *(a1 + 5), a2 + *(v5 + 44));
  v6 = a2 + *(sub_100009F70(&qword_100220EA8, &qword_1001B9B78) + 36);
  sub_100148D58(a1, v6);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (v6 + *(sub_100009F70(&qword_100220EB0, &qword_1001B9B80) + 36));
  *v10 = v7;
  v10[1] = v9;
  if (qword_100218428 != -1)
  {
    swift_once();
  }

  v11 = qword_1002305F8;
  v12 = (a2 + *(sub_100009F70(&qword_100220EB8, &unk_1001B9B88) + 36));
  v13 = *(type metadata accessor for RoundedRectangle() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = v11;
  v12[1] = v11;
  result = sub_100009F70(&qword_100218928, &unk_1001ADC30);
  *(v12 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100145C80@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v103 = a4;
  *(&v102 + 1) = a3;
  *&v102 = a2;
  v101 = a1;
  v100 = a6;
  v11 = sub_100009F70(&qword_100220ED8, &qword_1001B9BA8);
  __chkstk_darwin(v11 - 8);
  v92 = (&v86 - v12);
  v91 = sub_100009F70(&qword_100220EE0, &qword_1001B9BB0);
  __chkstk_darwin(v91);
  v97 = &v86 - v13;
  v96 = sub_100009F70(&qword_100220EE8, &unk_1001B9BB8);
  v14 = __chkstk_darwin(v96);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v95 = &v86 - v17;
  __chkstk_darwin(v16);
  v98 = &v86 - v18;
  v19 = type metadata accessor for RoundedRectangle();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100009F70(&qword_10021BE10, &qword_1001B2450);
  __chkstk_darwin(v23 - 8);
  v25 = &v86 - v24;
  v26 = sub_100009F70(&qword_100220EF0, &qword_1001B9BC8);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v86 - v28;
  v87 = sub_100009F70(&qword_100220EF8, &qword_1001B9BD0);
  __chkstk_darwin(v87);
  v90 = &v86 - v30;
  v89 = sub_100009F70(&qword_100220F00, &qword_1001B9BD8);
  v31 = __chkstk_darwin(v89);
  v94 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v88 = &v86 - v34;
  __chkstk_darwin(v33);
  v93 = &v86 - v35;
  sub_1001466FC(a1, a2, a3, a4, a5, v29);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v29[*(sub_100009F70(&qword_100220F08, &qword_1001B9BE0) + 36)];
  v37 = v104[1];
  *v36 = v104[0];
  *(v36 + 1) = v37;
  *(v36 + 2) = v104[2];
  *&v29[*(sub_100009F70(&qword_100220F10, &qword_1001B9BE8) + 36)] = 0;
  v38 = 6.0;
  if (static Solarium.isEnabled.getter())
  {
    v39 = 10.0;
  }

  else
  {
    v39 = 6.0;
  }

  v40 = &v29[*(v27 + 44)];
  v41 = *(v20 + 28);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = *(*(v43 - 8) + 104);
  v44(v40 + v41, v42, v43);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  if (static Solarium.isEnabled.getter())
  {
    v38 = 10.0;
  }

  v44(v22 + *(v20 + 28), v42, v43);
  v45 = v86;
  *v22 = v38;
  v22[1] = v38;
  v106 = v102;
  *&v107 = v103;
  *(&v107 + 1) = v45;
  v46 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v106);
  if (*(v101 + *(v46 + 56)))
  {
    static Color.white.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v47 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10014943C(v22, v25, &type metadata accessor for RoundedRectangle);
  v48 = &v25[*(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36)];
  v49 = v104[4];
  *v48 = v104[3];
  *(v48 + 1) = v49;
  *(v48 + 4) = v105;
  v50 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
  *&v25[*(v50 + 52)] = v47;
  *&v25[*(v50 + 56)] = 256;
  v51 = static Alignment.center.getter();
  v53 = v52;
  sub_1001494A4(v22, &type metadata accessor for RoundedRectangle);
  v54 = &v25[*(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36)];
  *v54 = v51;
  v54[1] = v53;
  v55 = static Alignment.center.getter();
  v57 = v56;
  v58 = v90;
  v59 = &v90[*(v87 + 36)];
  sub_10000F618(v25, v59, &qword_10021BE10, &qword_1001B2450);
  v60 = (v59 + *(sub_100009F70(&qword_10021BDF8, &qword_1001B2420) + 36));
  *v60 = v55;
  v60[1] = v57;
  sub_10000F618(v29, v58, &qword_100220EF0, &qword_1001B9BC8);
  v61 = static Edge.Set.all.getter();
  v62 = v58;
  v63 = v88;
  sub_10000F618(v62, v88, &qword_100220EF8, &qword_1001B9BD0);
  v64 = v63 + *(v89 + 36);
  *v64 = v61;
  *(v64 + 8) = 0u;
  *(v64 + 24) = 0u;
  *(v64 + 40) = 1;
  v65 = v93;
  sub_10000F618(v63, v93, &qword_100220F00, &qword_1001B9BD8);
  v66 = static HorizontalAlignment.leading.getter();
  v67 = v92;
  *v92 = v66;
  *(v67 + 8) = 0x4020000000000000;
  *(v67 + 16) = 0;
  v68 = sub_100009F70(&qword_100220F18, &unk_1001B9C10);
  sub_100146D58(v101, v102, *(&v102 + 1), v103, v45, v67 + *(v68 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v97;
  sub_10000F618(v67, v97, &qword_100220ED8, &qword_1001B9BA8);
  v70 = (v69 + *(v91 + 36));
  v71 = v111;
  v70[4] = v110;
  v70[5] = v71;
  v70[6] = v112;
  v72 = v107;
  *v70 = v106;
  v70[1] = v72;
  v73 = v109;
  v70[2] = v108;
  v70[3] = v73;
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v75 = static Edge.Set.vertical.getter();
  *(inited + 32) = v75;
  v76 = static Edge.Set.trailing.getter();
  *(inited + 33) = v76;
  v77 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v77 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v76)
  {
    v77 = Edge.Set.init(rawValue:)();
  }

  v78 = v95;
  sub_10000F618(v69, v95, &qword_100220EE0, &qword_1001B9BB0);
  v79 = v78 + *(v96 + 36);
  *v79 = v77;
  *(v79 + 8) = 0u;
  *(v79 + 24) = 0u;
  *(v79 + 40) = 1;
  v80 = v98;
  sub_10000F618(v78, v98, &qword_100220EE8, &unk_1001B9BB8);
  v81 = v94;
  sub_10000D58C(v65, v94, &qword_100220F00, &qword_1001B9BD8);
  v82 = v99;
  sub_10000D58C(v80, v99, &qword_100220EE8, &unk_1001B9BB8);
  v83 = v100;
  sub_10000D58C(v81, v100, &qword_100220F00, &qword_1001B9BD8);
  v84 = sub_100009F70(&qword_100220F20, &qword_1001B9C20);
  sub_10000D58C(v82, v83 + *(v84 + 48), &qword_100220EE8, &unk_1001B9BB8);
  sub_10000D52C(v80, &qword_100220EE8, &unk_1001B9BB8);
  sub_10000D52C(v65, &qword_100220F00, &qword_1001B9BD8);
  sub_10000D52C(v82, &qword_100220EE8, &unk_1001B9BB8);
  return sub_10000D52C(v81, &qword_100220F00, &qword_1001B9BD8);
}

uint64_t sub_1001466FC@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v49 = type metadata accessor for PhotoView(0);
  __chkstk_darwin(v49);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100009F70(&qword_100220FC0, &qword_1001B9D58);
  __chkstk_darwin(v46);
  v48 = (&v40 - v12);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v51 = type metadata accessor for URL();
  v20 = *(v51 - 8);
  __chkstk_darwin(v51);
  v40 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  v52 = a2;
  v53 = a3;
  v44 = a4;
  v45 = a5;
  v54 = a4;
  v55 = a5;
  result = type metadata accessor for PromotionalAssetsEntryView(0, &v52);
  v23 = a1 + *(result + 60);
  v24 = *v23;
  v25 = *(v23 + 8);
  v47 = a1;
  if (v25 == 1)
  {
    v26 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v26 = v52;
  }

  v28 = v26 * 96.0;
  if (COERCE__INT64(fabs(v26 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25)
  {
    v29 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v29 = v52;
  }

  v31 = v51;
  v32 = v29 * 96.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v33 = v32;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v34 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v52);
  sub_100086D70(v28, v33, v34, v19);
  if ((*(v20 + 48))(v19, 1, v31) == 1)
  {
    sub_10000D52C(v19, qword_100218748, &unk_1001AD110);
    v35 = sub_100086AC4(v34);
    *v48 = v35;
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220FC8, type metadata accessor for PhotoView, &unk_1001B9E50);
    sub_10014AF34();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v36 = v40;
    (*(v20 + 32))(v40, v19, v31);
    v37 = v41;
    (*(v20 + 16))(v41, v36, v31);
    v38 = sub_100086AC4(v34);
    v39 = v48;
    *(v37 + *(v49 + 20)) = v38;
    sub_10014943C(v37, v39, type metadata accessor for PhotoView);
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220FC8, type metadata accessor for PhotoView, &unk_1001B9E50);
    sub_10014AF34();
    _ConditionalContent<>.init(storage:)();
    sub_1001494A4(v37, type metadata accessor for PhotoView);
    return (*(v20 + 8))(v36, v31);
  }
}

uint64_t sub_100146D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v104 = a5;
  v114 = a4;
  v111 = a6;
  v113 = type metadata accessor for ColorScheme();
  v112 = *(v113 - 8);
  v10 = __chkstk_darwin(v113);
  v99 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v99 - v12;
  v106 = sub_100009F70(&qword_100220F28, &qword_1001B9C28);
  v13 = __chkstk_darwin(v106);
  v110 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v109 = &v99 - v18;
  v19 = sub_100009F70(&qword_100220F30, &qword_1001B9C30);
  __chkstk_darwin(v19 - 8);
  v21 = &v99 - v20;
  v22 = sub_100009F70(&qword_100220F38, &qword_1001B9C38);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - v27;
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  *v21 = static HorizontalAlignment.leading.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v31 = &v21[*(sub_100009F70(&qword_100220F40, &qword_1001B9C40) + 44)];
  v100 = a1;
  v32 = a2;
  v102 = a2;
  v33 = a2;
  v103 = a3;
  v34 = v114;
  sub_100147720(a1, v33, a3, v114, v6, v31);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v21, v28, &qword_100220F30, &qword_1001B9C30);
  v35 = &v28[*(v23 + 44)];
  v36 = v126;
  v37 = v128;
  v38 = v129;
  *(v35 + 4) = v127;
  *(v35 + 5) = v37;
  *(v35 + 6) = v38;
  v39 = v124;
  *v35 = v123;
  *(v35 + 1) = v39;
  *(v35 + 2) = v125;
  *(v35 + 3) = v36;
  v107 = v30;
  sub_10000F618(v28, v30, &qword_100220F38, &qword_1001B9C38);
  v115 = v32;
  v116 = a3;
  v117 = v34;
  v118 = v6;
  v40 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v115);

  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  LOBYTE(v6) = v44;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v45 = Text.font(_:)();
  v47 = v46;
  v49 = v48;
  v101 = v50;

  sub_10000D60C(v41, v43, v6 & 1);
  v51 = v100;

  LOBYTE(v6) = *(v51 + *(v40 + 56));
  v115 = v102;
  v116 = v103;
  v117 = v114;
  v118 = v104;
  v114 = type metadata accessor for PromotionalAssetsEntryView(0, &v115);
  v52 = v105;
  sub_100024640(v105);
  if ((v6 & 1) != 0 || (v53 = v112, v54 = v99, v55 = v113, (*(v112 + 104))(v99, enum case for ColorScheme.light(_:), v113), v56 = static ColorScheme.== infix(_:_:)(), v99 = *(v53 + 8), (v99)(v54, v55), (v56 & 1) == 0))
  {
    v115 = static Color.white.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v61;
    v59 = v62;
    v102 = v63;
    sub_10000D60C(v45, v47, v49 & 1);

    (*(v112 + 8))(v52, v113);
  }

  else
  {
    v115 = static Color.blue.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v57;
    v59 = v58;
    v102 = v60;
    sub_10000D60C(v45, v47, v49 & 1);

    (v99)(v52, v113);
  }

  LODWORD(v113) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v112 = v64;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v59 & 1;
  v120 = v59 & 1;
  v119 = 0;
  v72 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v121 = 0;
  sub_100148B68(v114, &v115);
  v81 = v115;
  v82 = v116;
  v83 = static Alignment.center.getter();
  v85 = v84;
  v122 = v82;
  if (static Solarium.isEnabled.getter())
  {
    v86 = 16.0;
  }

  else
  {
    v86 = 14.0;
  }

  v87 = &v17[*(v106 + 36)];
  v88 = *(type metadata accessor for RoundedRectangle() + 20);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = type metadata accessor for RoundedCornerStyle();
  (*(*(v90 - 8) + 104))(v87 + v88, v89, v90);
  *v87 = v86;
  v87[1] = v86;
  *(v87 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  v91 = v103;
  *v17 = v104;
  *(v17 + 1) = v91;
  v17[16] = v71;
  *(v17 + 3) = v102;
  v17[32] = v113;
  *(v17 + 5) = v112;
  *(v17 + 6) = v66;
  *(v17 + 7) = v68;
  *(v17 + 8) = v70;
  v17[72] = 0;
  v17[80] = v72;
  *(v17 + 11) = v74;
  *(v17 + 12) = v76;
  *(v17 + 13) = v78;
  *(v17 + 14) = v80;
  v17[120] = 0;
  *(v17 + 16) = v81;
  v17[136] = v82;
  *(v17 + 18) = v83;
  *(v17 + 19) = v85;
  v92 = v109;
  sub_10000F618(v17, v109, &qword_100220F28, &qword_1001B9C28);
  v93 = v107;
  v94 = v108;
  sub_10000D58C(v107, v108, &qword_100220F38, &qword_1001B9C38);
  v95 = v110;
  sub_10000D58C(v92, v110, &qword_100220F28, &qword_1001B9C28);
  v96 = v111;
  sub_10000D58C(v94, v111, &qword_100220F38, &qword_1001B9C38);
  v97 = sub_100009F70(&qword_100220F48, &qword_1001B9C48);
  sub_10000D58C(v95, v96 + *(v97 + 48), &qword_100220F28, &qword_1001B9C28);
  sub_10000D52C(v92, &qword_100220F28, &qword_1001B9C28);
  sub_10000D52C(v93, &qword_100220F38, &qword_1001B9C38);
  sub_10000D52C(v95, &qword_100220F28, &qword_1001B9C28);
  return sub_10000D52C(v94, &qword_100220F38, &qword_1001B9C38);
}

uint64_t sub_100147720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v62 = type metadata accessor for ContentSizeCategory();
  v11 = *(v62 - 8);
  v12 = __chkstk_darwin(v62);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v53[-v15];
  v17 = sub_100009F70(&qword_100220F50, &qword_1001B9C50);
  v18 = __chkstk_darwin(v17 - 8);
  v64 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v53[-v20];
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0x4000000000000000;
  v21[16] = 0;
  v22 = sub_100009F70(&qword_100220F58, &qword_1001B9C58);
  sub_100147CCC(a1, a2, a3, a4, a5, &v21[*(v22 + 44)]);
  v58 = a2;
  v70 = a2;
  v71 = a3;
  v59 = a3;
  v60 = a4;
  v72 = a4;
  v73 = a5;
  v61 = a5;
  v23 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v70);
  sub_100086C80(v23);
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  if (*(a1 + *(v23 + 56)))
  {
    v70 = static Color.white.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v29;
    v54 = v30;
    v57 = v31;
    sub_10000D60C(v24, v26, v28 & 1);
  }

  else
  {
    LODWORD(v70) = static HierarchicalShapeStyle.primary.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v32;
    v54 = v33;
    v57 = v34;
    sub_10000D60C(v24, v26, v28 & 1);
  }

  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  type metadata accessor for PromotionalAssetsEntryView(0, &v70);
  sub_100024890(v16);
  v35 = v62;
  (*(v11 + 104))(v14, enum case for ContentSizeCategory.accessibilityMedium(_:), v62);
  v36 = sub_1000B06A0(v16, v14);
  v37 = *(v11 + 8);
  v37(v14, v35);
  v37(v16, v35);
  if (v36)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  KeyPath = swift_getKeyPath();
  v62 = static Font.subheadline.getter();
  v40 = swift_getKeyPath();
  v61 = v40;
  v41 = v54 & 1;
  v83 = v54 & 1;
  v81 = 0;
  v42 = v64;
  sub_10000D58C(v21, v64, &qword_100220F50, &qword_1001B9C50);
  v43 = v63;
  sub_10000D58C(v42, v63, &qword_100220F50, &qword_1001B9C50);
  v44 = v43 + *(sub_100009F70(&qword_100220F60, &unk_1001B9CC0) + 48);
  v45 = v56;
  *&v65 = v56;
  v46 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v41;
  *(&v66 + 1) = *v82;
  DWORD1(v66) = *&v82[3];
  v47 = v21;
  v48 = v57;
  *(&v66 + 1) = v57;
  *&v67 = KeyPath;
  *(&v67 + 1) = v38;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v80;
  DWORD1(v68) = *&v80[3];
  *(&v68 + 1) = v40;
  v49 = v62;
  v69 = v62;
  *(v44 + 64) = v62;
  v50 = v66;
  *v44 = v65;
  *(v44 + 16) = v50;
  v51 = v68;
  *(v44 + 32) = v67;
  *(v44 + 48) = v51;
  sub_10000D58C(&v65, &v70, &qword_10021C168, &unk_1001B2910);
  sub_10000D52C(v47, &qword_100220F50, &qword_1001B9C50);
  v70 = v45;
  v71 = v46;
  LOBYTE(v72) = v41;
  *(&v72 + 1) = *v82;
  HIDWORD(v72) = *&v82[3];
  v73 = v48;
  v74 = KeyPath;
  v75 = v38;
  v76 = 0;
  *v77 = *v80;
  *&v77[3] = *&v80[3];
  v78 = v61;
  v79 = v49;
  sub_10000D52C(&v70, &qword_10021C168, &unk_1001B2910);
  return sub_10000D52C(v42, &qword_100220F50, &qword_1001B9C50);
}

uint64_t sub_100147CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a4;
  v113 = a5;
  v110 = a2;
  v111 = a3;
  v109 = a6;
  *&v115 = a2;
  *(&v115 + 1) = a3;
  *&v116 = a4;
  *(&v116 + 1) = a5;
  v7 = type metadata accessor for PromotionalAssetsEntryView(0, &v115);
  v107 = *(v7 - 8);
  v104 = *(v107 + 64);
  __chkstk_darwin(v7);
  v105 = &v83 - v8;
  v102 = type metadata accessor for ColorScheme();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Material();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100009F70(&qword_100220F68, &qword_1001B9CD0);
  __chkstk_darwin(v90);
  v88 = &v83 - v11;
  v91 = sub_100009F70(&qword_100220F70, &qword_1001B9CD8);
  __chkstk_darwin(v91);
  v93 = &v83 - v12;
  v92 = sub_100009F70(&qword_100220F78, &qword_1001B9CE0);
  __chkstk_darwin(v92);
  v96 = &v83 - v13;
  v95 = sub_100009F70(&qword_100220F80, &qword_1001B9CE8);
  v14 = __chkstk_darwin(v95);
  v103 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v83 - v17;
  __chkstk_darwin(v16);
  v99 = &v83 - v18;
  v19 = sub_100009F70(&qword_100220F88, &qword_1001B9CF0);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v98 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v83 - v23;
  sub_1001487E4(v7, &v115);
  v25 = v115;
  BYTE3(v116) = 1;
  sub_100009F70(&qword_100220F90, &qword_1001B9CF8);
  sub_10014AA30();
  View.accessibilityHidden(_:)();
  j__swift_release(v25);
  v108 = v7;
  sub_100145A30(v7);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = *(v20 + 44);
  v97 = v24;
  v27 = &v24[v26];
  v28 = v116;
  *v27 = v115;
  *(v27 + 1) = v28;
  *(v27 + 2) = v117;
  v114[0] = v110;
  v114[1] = v111;
  v114[2] = v112;
  v114[3] = v113;
  v29 = type metadata accessor for PromotionalAssetsEntryViewModel(0, v114);

  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  v34 = v33;
  v35 = *(v29 + 56);
  v106 = a1;
  v89 = *(a1 + v35);
  if (v89)
  {
    v36 = v83;
    static Material.thin.getter();
    v37 = v85;
    v87 = Text.foregroundStyle<A>(_:)();
    v86 = v38;
    v40 = v39;
    v42 = v41;
    sub_10000D60C(v30, v32, v34 & 1);

    (*(v84 + 8))(v36, v37);
  }

  else
  {
    v43 = [objc_opt_self() secondaryLabelColor];
    v114[0] = Color.init(uiColor:)();
    v87 = Text.foregroundStyle<A>(_:)();
    v86 = v44;
    v40 = v45;
    v42 = v46;
    sub_10000D60C(v30, v32, v34 & 1);
  }

  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v47 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v49 = v88;
  v50 = &v88[*(v90 + 36)];
  v51 = *(sub_100009F70(&qword_100219828, &qword_1001B0010) + 28);
  v52 = enum case for Text.Case.uppercase(_:);
  v53 = type metadata accessor for Text.Case();
  v54 = *(v53 - 8);
  (*(v54 + 104))(v50 + v51, v52, v53);
  (*(v54 + 56))(v50 + v51, 0, 1, v53);
  *v50 = swift_getKeyPath();
  v55 = v86;
  *v49 = v87;
  *(v49 + 8) = v55;
  *(v49 + 16) = v40 & 1;
  *(v49 + 24) = v42;
  *(v49 + 32) = KeyPath;
  *(v49 + 40) = v47;
  v56 = swift_getKeyPath();
  v57 = v93;
  sub_10000F618(v49, v93, &qword_100220F68, &qword_1001B9CD0);
  v58 = v57 + *(v91 + 36);
  *v58 = v56;
  *(v58 + 8) = 1;
  *(v58 + 16) = 0;
  v59 = swift_getKeyPath();
  if (v89)
  {
    v60 = v101;
    v61 = v100;
    v62 = v102;
    (*(v101 + 104))(v100, enum case for ColorScheme.light(_:), v102);
    v63 = v108;
    v64 = v106;
  }

  else
  {
    v63 = v108;
    v64 = v106;
    v61 = v100;
    sub_100024640(v100);
    v62 = v102;
    v60 = v101;
  }

  v65 = v96;
  v66 = &v96[*(v92 + 36)];
  v67 = sub_100009F70(&qword_1002208B8, &qword_1001B9130);
  (*(v60 + 32))(v66 + *(v67 + 28), v61, v62);
  *v66 = v59;
  sub_10000F618(v57, v65, &qword_100220F70, &qword_1001B9CD8);
  v68 = v107;
  v69 = v105;
  (*(v107 + 16))(v105, v64, v63);
  v70 = (*(v68 + 80) + 48) & ~*(v68 + 80);
  v71 = swift_allocObject();
  v72 = v111;
  *(v71 + 2) = v110;
  *(v71 + 3) = v72;
  v73 = v113;
  *(v71 + 4) = v112;
  *(v71 + 5) = v73;
  (*(v68 + 32))(&v71[v70], v69, v63);
  v74 = v94;
  sub_10000F618(v65, v94, &qword_100220F78, &qword_1001B9CE0);
  v75 = (v74 + *(v95 + 36));
  *v75 = sub_10010BFE8;
  v75[1] = 0;
  v75[2] = sub_10014AE18;
  v75[3] = v71;
  v76 = v99;
  sub_10000F618(v74, v99, &qword_100220F80, &qword_1001B9CE8);
  v77 = v97;
  v78 = v98;
  sub_10000D58C(v97, v98, &qword_100220F88, &qword_1001B9CF0);
  v79 = v103;
  sub_10000D58C(v76, v103, &qword_100220F80, &qword_1001B9CE8);
  v80 = v109;
  sub_10000D58C(v78, v109, &qword_100220F88, &qword_1001B9CF0);
  v81 = sub_100009F70(&qword_100220FB0, &unk_1001B9D40);
  sub_10000D58C(v79, v80 + *(v81 + 48), &qword_100220F80, &qword_1001B9CE8);
  sub_10000D52C(v76, &qword_100220F80, &qword_1001B9CE8);
  sub_10000D52C(v77, &qword_100220F88, &qword_1001B9CF0);
  sub_10000D52C(v79, &qword_100220F80, &qword_1001B9CE8);
  return sub_10000D52C(v78, &qword_100220F88, &qword_1001B9CF0);
}

double sub_1001487E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v16;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel(0, &v29) + 56)) & 1) != 0 || (sub_100024640(v15), (*(v10 + 104))(v13, enum case for ColorScheme.light(_:), v9), v17 = static ColorScheme.== infix(_:_:)(), v18 = *(v10 + 8), v18(v13, v9), v18(v15, v9), (v17 & 1) == 0))
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v20;
    v26 = 0;
    v27 = 1;
    v28 = 1;
  }

  else
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v19;
    v26 = 0;
    v27 = 1;
    v28 = 0;
  }

  sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
  sub_100079534();
  _ConditionalContent<>.init(storage:)();
  result = *&v29;
  v22 = v30;
  v23 = BYTE2(v30);
  *a2 = v29;
  *(a2 + 16) = v22;
  *(a2 + 18) = v23;
  return result;
}

uint64_t sub_100148B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v12;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel(0, v20) + 56)) & 1) != 0 || (sub_100024640(v11), (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5), v13 = static ColorScheme.== infix(_:_:)(), v14 = *(v6 + 8), v14(v9, v5), v14(v11, v5), (v13 & 1) == 0))
  {
    v18 = 11;
    v19 = 1;
  }

  else
  {
    v15 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v18 = Color.init(uiColor:)();
    v19 = 0;
  }

  sub_100019990();
  result = _ConditionalContent<>.init(storage:)();
  v17 = BYTE8(v20[0]);
  *a2 = *&v20[0];
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_100148D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v43 = sub_100009F70(&qword_100220EC0, &unk_1001B9B98);
  __chkstk_darwin(v43);
  v45 = (&v38 - v5);
  v44 = type metadata accessor for PhotoBackgroundView(0);
  __chkstk_darwin(v44);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v38 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v40 = *(a1 + 32);
  v41 = v18;
  v19 = v3 + *(a1 + 60);
  v20 = *v19;
  v21 = *(v19 + 8);
  v42 = v3;
  if (v21 == 1)
  {
    v22 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v22 = *v47;
  }

  v24 = v22 * 96.0;
  if (COERCE__INT64(fabs(v22 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21)
  {
    v25 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v25 = *v47;
  }

  v27 = v25 * 96.0;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v28 = v27;
  v47[0] = v41;
  v47[1] = v40;
  v29 = type metadata accessor for PromotionalAssetsEntryViewModel(0, v47);
  v30 = v42;
  sub_100086D70(v24, v28, v29, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000D52C(v13, qword_100218748, &unk_1001AD110);
    v31 = sub_100086AC4(v29);
    v32 = *(v30 + *(v29 + 56));
    v33 = v45;
    *v45 = v31;
    *(v33 + 8) = v32;
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220EC8, type metadata accessor for PhotoBackgroundView, &unk_1001B9EF0);
    sub_1001493E8();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v34 = v38;
    (*(v15 + 32))(v38, v13, v14);
    v35 = *(v30 + *(v29 + 56));
    v36 = v39;
    (*(v15 + 16))(v39, v34, v14);
    v37 = v45;
    *(v36 + *(v44 + 20)) = v35;
    sub_10014943C(v36, v37, type metadata accessor for PhotoBackgroundView);
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220EC8, type metadata accessor for PhotoBackgroundView, &unk_1001B9EF0);
    sub_1001493E8();
    _ConditionalContent<>.init(storage:)();
    sub_1001494A4(v36, type metadata accessor for PhotoBackgroundView);
    return (*(v15 + 8))(v34, v14);
  }
}

unint64_t sub_1001493E8()
{
  result = qword_100220ED0;
  if (!qword_100220ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220ED0);
  }

  return result;
}

uint64_t sub_10014943C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001494A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100149504(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v20 = v14;
    v21 = 0;
    v22 = 257;
    v23 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100079534();
    sub_10014AF34();
    _ConditionalContent<>.init(storage:)();

    v15 = v24;
    v16 = v25;
    v17 = v26;
  }

  else
  {
    v20 = *(a2 + *(type metadata accessor for PhotoView(0) + 20));
    v21 = 0;
    v22 = 0;
    v23 = 1;
    v18 = v20;
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100079534();
    sub_10014AF34();
    _ConditionalContent<>.init(storage:)();
    v19 = v24;
    v16 = v25;
    v17 = v26;
    (*(v11 + 8))(v13, v10);
    v15 = v19;
  }

  *a3 = v15;
  *(a3 + 16) = v16;
  *(a3 + 18) = v17;
}

uint64_t sub_100149834(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, v2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_10014943C(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10014B9EC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotoView);
  sub_100009F70(&qword_100221170, &qword_1001B9F78);
  sub_10014B800(&qword_100221178, &qword_100221170, &qword_1001B9F78, sub_10014AF34);
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_100149A88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_100009F70(&qword_100221120, &qword_1001B9F40);
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221128, &qword_1001B9F48);
  __chkstk_darwin(v12);
  v14 = (&v26 - v13);
  v15 = sub_100009F70(&qword_100221130, &qword_1001B9F50);
  __chkstk_darwin(v15);
  v17 = (&v26 - v16);
  if (*(v1 + *(type metadata accessor for PhotoBackgroundView(0) + 20)))
  {
    *v14 = static Alignment.center.getter();
    v14[1] = v18;
    v27 = v14 + *(sub_100009F70(&qword_100221138, &qword_1001B9F58) + 44);
    v19 = type metadata accessor for URL();
    v28 = a1;
    v29 = v12;
    v20 = v19;
    v21 = *(v19 - 8);
    (*(v21 + 16))(v5, v1, v19);
    (*(v21 + 56))(v5, 0, 1, v20);
    sub_100009F70(&qword_100221140, &qword_1001B9F60);
    sub_10014B800(&qword_100221148, &qword_100221140, &qword_1001B9F60, sub_10004FA48);
    AsyncImage.init(url:scale:transaction:content:)();
    v22 = &v11[*(v6 + 36)];
    *v22 = 0x4039000000000000;
    v22[8] = 0;
    sub_10000D58C(v11, v9, &qword_100221120, &qword_1001B9F40);
    v23 = v27;
    sub_10000D58C(v9, v27, &qword_100221120, &qword_1001B9F40);
    *(v23 + *(sub_100009F70(&qword_100221150, &qword_1001B9F68) + 48)) = 18;
    sub_10000D52C(v11, &qword_100221120, &qword_1001B9F40);
    sub_10000D52C(v9, &qword_100221120, &qword_1001B9F40);
    sub_10000D58C(v14, v17, &qword_100221128, &qword_1001B9F48);
    swift_storeEnumTagMultiPayload();
    sub_10000D1EC(&qword_100221158, &qword_100221128, &qword_1001B9F48, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v14, &qword_100221128, &qword_1001B9F48);
  }

  else
  {
    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    *v17 = Color.init(uiColor:)();
    swift_storeEnumTagMultiPayload();
    sub_10000D1EC(&qword_100221158, &qword_100221128, &qword_1001B9F48, &protocol conformance descriptor for ZStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100149F18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v17 = v12;
    v18 = 0;
    v19 = 257;
    v20 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v13 = v21;
    v14 = v22;
    v15 = v23;
  }

  else
  {
    v17 = static Color.blue.getter();
    v18 = 0;
    v19 = 0;
    v20 = 1;
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v16 = v21;
    v14 = v22;
    v15 = v23;
    (*(v9 + 8))(v11, v8);
    v13 = v16;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 18) = v15;
}

uint64_t sub_10014A258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021B648, &qword_1001B1320);
  v9 = __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = *(v5 + 28);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v7[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v7 = _Q0;
  if (a1)
  {
    v25 = a1;
    v26 = Color.init(cgColor:)();
  }

  else
  {
    v26 = static Color.blue.getter();
  }

  v27 = v26;
  sub_10014B9EC(v7, v14, &type metadata accessor for RoundedRectangle);
  *&v14[*(v8 + 52)] = v27;
  *&v14[*(v8 + 56)] = 256;
  sub_10000F618(v14, v16, &qword_10021B648, &qword_1001B1320);
  v28 = Image.init(_:bundle:)();
  v29 = Image.init(systemName:)();
  v48 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001ACB00;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *(v31 + 32) = v32;
  *(v31 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  static Color.black.getter();
  v38 = Color.opacity(_:)();

  sub_10000D58C(v16, v11, &qword_10021B648, &qword_1001B1320);
  sub_10000D58C(v11, a2, &qword_10021B648, &qword_1001B1320);
  v39 = sub_100009F70(&qword_100221188, &qword_1001B9F88);
  *(a2 + v39[12]) = 16;
  *(a2 + v39[16]) = v28;
  v40 = (a2 + v39[20]);
  *&v49 = v29;
  *(&v49 + 1) = KeyPath;
  v47 = v11;
  v41 = v48;
  *&v50 = v48;
  *(&v50 + 1) = v33;
  *&v51 = v34;
  *(&v51 + 1) = v35;
  *&v52 = v36;
  *(&v52 + 1) = v37;
  *&v53[0] = v38;
  v46 = xmmword_1001B5A00;
  *(v53 + 8) = xmmword_1001B5A00;
  *(&v53[1] + 1) = 0x4020000000000000;
  v42 = v52;
  v40[2] = v51;
  v40[3] = v42;
  v43 = v50;
  *v40 = v49;
  v40[1] = v43;
  v44 = v53[1];
  v40[4] = v53[0];
  v40[5] = v44;

  sub_10000D58C(&v49, v54, &qword_100221190, &qword_1001B9F90);
  sub_10000D52C(v16, &qword_10021B648, &qword_1001B1320);
  v54[0] = v29;
  v54[1] = KeyPath;
  v54[2] = v41;
  v54[3] = v33;
  v54[4] = v34;
  v54[5] = v35;
  v54[6] = v36;
  v54[7] = v37;
  v54[8] = v38;
  v55 = v46;
  v56 = 0x4020000000000000;
  sub_10000D52C(v54, &qword_100221190, &qword_1001B9F90);

  return sub_10000D52C(v47, &qword_10021B648, &qword_1001B1320);
}

uint64_t sub_10014A730@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = sub_100009F70(&qword_100221180, &qword_1001B9F80);
  return sub_10014A258(v4, a2 + *(v6 + 44));
}

double sub_10014A780@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    static Alignment.center.getter();
    sub_10014A8BC(a1, v10);
  }

  else
  {
    v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    Color.init(uiColor:)();
  }

  sub_100009F70(&qword_100221160, &qword_1001B9F70);
  sub_10000D1EC(&qword_100221168, &qword_100221160, &qword_1001B9F70, &protocol conformance descriptor for ZStack<A>);
  _ConditionalContent<>.init(storage:)();
  result = *v10;
  v7 = v10[1];
  v8 = v11;
  v9 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

uint64_t sub_10014A8BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    Color.init(cgColor:)();
  }

  else
  {
    static Color.blue.getter();
  }

  result = _ConditionalContent<>.init(storage:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 17;
  return result;
}

uint64_t sub_10014A978(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100220FB8, &qword_1001B9D50);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_100220FB8, &qword_1001B9D50);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_10014AA30()
{
  result = qword_100220F98;
  if (!qword_100220F98)
  {
    sub_10000B3DC(&qword_100220F90, &qword_1001B9CF8);
    sub_10014AABC();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220F98);
  }

  return result;
}

unint64_t sub_10014AABC()
{
  result = qword_100220FA0;
  if (!qword_100220FA0)
  {
    sub_10000B3DC(&qword_100220FA8, &qword_1001B9D00);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220FA0);
  }

  return result;
}

uint64_t sub_10014AB6C()
{
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v14 = v0[2];
  v2 = v14;
  v15 = v1;
  v16 = v3;
  v17 = v4;
  v5 = type metadata accessor for PromotionalAssetsEntryView(0, &v14);
  v6 = v0 + ((*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80));
  (*(*(v2 - 8) + 8))(v6, v2);
  v14 = v2;
  v15 = v1;
  v16 = v3;
  v17 = v4;
  v7 = *(type metadata accessor for PromotionalAssetsEntryViewModel(0, &v14) + 52);
  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(&v6[v7], 1, v1))
  {
    (*(v8 + 8))(&v6[v7], v1);
  }

  v9 = v5[13];
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
  }

  v11 = v5[14];
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ContentSizeCategory();
    (*(*(v12 - 8) + 8))(&v6[v11], v12);
  }

  else
  {
  }

  sub_100027EB0(*&v6[v5[15]], v6[v5[15] + 8]);

  return swift_deallocObject();
}

uint64_t sub_10014AE18(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v11 = v1[2];
  v3 = v11;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  type metadata accessor for PromotionalAssetsEntryView(0, &v11);
  v7 = *a1;
  v8 = a1[1];
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v9 = type metadata accessor for PromotionalAssetsEntryView(0, &v11);
  return sub_100145A90(v9, v7, v8);
}

uint64_t sub_10014AEEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10014AF34()
{
  result = qword_100220FD0;
  if (!qword_100220FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220FD0);
  }

  return result;
}

uint64_t sub_10014AF88(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10014AF9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_10014AFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10014B070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10014B13C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10014B1F4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10014B274(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_10014B2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10014B344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_10014B420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

void sub_10014B4D8(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10014B58C(319, &qword_100219580, type metadata accessor for CGColor, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10014B58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10014B5F4()
{
  result = qword_1002210F8;
  if (!qword_1002210F8)
  {
    sub_10000B3DC(&qword_100220EB8, &unk_1001B9B88);
    sub_10014B6AC();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002210F8);
  }

  return result;
}

unint64_t sub_10014B6AC()
{
  result = qword_100221100;
  if (!qword_100221100)
  {
    sub_10000B3DC(&qword_100220EA8, &qword_1001B9B78);
    sub_10000D1EC(&qword_100221108, &qword_100221110, &qword_1001B9DF8, &protocol conformance descriptor for HStack<A>);
    sub_10000D1EC(&qword_100221118, &qword_100220EB0, &qword_1001B9B80, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221100);
  }

  return result;
}

uint64_t sub_10014B800(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    sub_100079534();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014B884()
{
  v1 = (type metadata accessor for PhotoView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

void sub_10014B96C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100149504(a1, v6, a2);
}

uint64_t sub_10014B9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10014BA58()
{
  result = qword_100221198;
  if (!qword_100221198)
  {
    sub_10000B3DC(&qword_1002211A0, &qword_1001B9F98);
    sub_10000D1EC(&qword_100221158, &qword_100221128, &qword_1001B9F48, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221198);
  }

  return result;
}

unint64_t sub_10014BB14()
{
  result = qword_1002211A8;
  if (!qword_1002211A8)
  {
    sub_10000B3DC(&qword_1002211B0, &qword_1001B9FA0);
    sub_10000D1EC(&qword_100221168, &qword_100221160, &qword_1001B9F70, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002211A8);
  }

  return result;
}

uint64_t sub_10014BC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10014BD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CalendarIcon(uint64_t a1)
{
  result = qword_100221238;
  if (!qword_100221238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014BECC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100027A4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10014BF6C()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1002211D8 = result;
  return result;
}

uint64_t sub_10014C050@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v3 = sub_100009F70(&qword_10021BE10, &qword_1001B2450);
  __chkstk_darwin(v3 - 8);
  v133 = &v110 - v4;
  v139 = type metadata accessor for ColorScheme();
  v140 = *(v139 - 8);
  v5 = __chkstk_darwin(v139);
  v138 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v137 = &v110 - v7;
  v136 = type metadata accessor for RoundedRectangle();
  v8 = __chkstk_darwin(v136);
  v130 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v135 = (&v110 - v10);
  v128 = sub_100009F70(&qword_100221270, &qword_1001BA018);
  __chkstk_darwin(v128);
  v132 = &v110 - v11;
  v129 = sub_100009F70(&qword_100221278, &qword_1001BA020);
  __chkstk_darwin(v129);
  v131 = &v110 - v12;
  v126 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v124 = *(v126 - 1);
  __chkstk_darwin(v126);
  v123 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v114 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Date.FormatStyle();
  v115 = *(v117 - 8);
  v15 = __chkstk_darwin(v117);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v113 = &v110 - v19;
  __chkstk_darwin(v18);
  v116 = &v110 - v20;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100009F70(&qword_100221280, &qword_1001BA028);
  __chkstk_darwin(v111);
  v26 = &v110 - v25;
  *&v118 = sub_100009F70(&qword_100221288, &qword_1001BA030);
  *&v119 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v110 - v27;
  v122 = sub_100009F70(&qword_100221290, &qword_1001BA038) - 8;
  __chkstk_darwin(v122);
  v29 = &v110 - v28;
  v127 = sub_100009F70(&qword_100221298, &qword_1001BA040);
  __chkstk_darwin(v127);
  v125 = &v110 - v30;
  *v26 = static HorizontalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v31 = sub_100009F70(&qword_1002212A0, &qword_1001BA048);
  sub_10014CFD0(v2, &v26[*(v31 + 44)]);
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_10000D1EC(&qword_1002212A8, &qword_100221280, &qword_1001BA028, &protocol conformance descriptor for VStack<A>);
  v33 = v111;
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v24, v21);
  sub_10000D52C(v26, &qword_100221280, &qword_1001BA028);
  static FormatStyle<>.dateTime.getter();
  v34 = v114;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v35 = v113;
  Date.FormatStyle.month(_:)();
  (*(v120 + 8))(v34, v121);
  v36 = *(v115 + 8);
  v37 = v117;
  v36(v17, v117);
  v38 = v123;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v39 = v116;
  Date.FormatStyle.day(_:)();
  (*(v124 + 8))(v38, v126);
  v36(v35, v37);
  sub_10014DDCC(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v36(v39, v37);
  v147 = v141;
  v144 = v33;
  *&v145 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  v40 = v118;
  v41 = v112;
  View.accessibilityLabel<A>(_:)();

  (*(v119 + 8))(v41, v40);
  v42 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v29[*(sub_100009F70(&qword_1002212B0, &qword_1001BA050) + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = *(v122 + 44);
  v126 = v29;
  v53 = &v29[v52];
  v54 = v142;
  *v53 = v141;
  *(v53 + 1) = v54;
  *(v53 + 2) = v143;
  v55 = *(v136 + 20);
  v56 = enum case for RoundedCornerStyle.continuous(_:);
  v57 = type metadata accessor for RoundedCornerStyle();
  v58 = *(v57 - 8);
  v59 = *(v58 + 104);
  v60 = v135;
  LODWORD(v124) = v56;
  v123 = v59;
  v122 = v58 + 104;
  (v59)(v135 + v55, v56, v57);
  __asm { FMOV            V0.2D, #12.0 }

  v121 = _Q0;
  *v60 = _Q0;
  v120 = *(type metadata accessor for CalendarIcon(0) + 20);
  v66 = v137;
  sub_100024640(v137);
  v67 = enum case for ColorScheme.light(_:);
  v68 = v140;
  v69 = *(v140 + 104);
  v70 = v138;
  v71 = v139;
  v69(v138, enum case for ColorScheme.light(_:), v139);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v72 = *(v68 + 8);
  v72(v70, v71);
  v140 = v68 + 8;
  v72(v66, v71);
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  if (v39)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1001AEB90;
    *(v73 + 32) = static Color.white.getter();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  else
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1001ACB00;
    if (qword_100218448 != -1)
    {
      swift_once();
    }

    *(v74 + 32) = qword_1002211D8;
    v75 = objc_opt_self();

    v76 = [v75 systemGray6Color];
    *(v74 + 40) = Color.init(uiColor:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v77 = v144;
  v119 = v145;
  v118 = v146;
  v78 = v132;
  sub_10004F958(v135, v132);
  v79 = v78 + *(v128 + 36);
  *v79 = v77;
  *(v79 + 24) = v118;
  *(v79 + 8) = v119;
  v80 = v130;
  (v123)(&v130[*(v136 + 20)], v124, v57);
  *v80 = v121;
  v81 = v137;
  sub_100024640(v137);
  v82 = v138;
  v83 = v139;
  v69(v138, v67, v139);
  v84 = static ColorScheme.== infix(_:_:)();
  v72(v82, v83);
  v72(v81, v83);
  v85 = objc_opt_self();
  v86 = &selRef_systemGray4Color;
  if ((v84 & 1) == 0)
  {
    v86 = &selRef_systemGray5Color;
  }

  v87 = [v85 *v86];
  v88 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v89 = v133;
  sub_1000A3BD8(v80, v133);
  v90 = v89 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
  v91 = v148;
  *v90 = v147;
  *(v90 + 16) = v91;
  *(v90 + 32) = v149;
  v92 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
  *(v89 + *(v92 + 52)) = v88;
  *(v89 + *(v92 + 56)) = 256;
  v93 = static Alignment.center.getter();
  v95 = v94;
  sub_1000A3C3C(v80);
  v96 = (v89 + *(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36));
  *v96 = v93;
  v96[1] = v95;
  v97 = static Alignment.center.getter();
  v99 = v98;
  v100 = v131;
  v101 = &v131[*(v129 + 36)];
  sub_10000F618(v89, v101, &qword_10021BE10, &qword_1001B2450);
  v102 = (v101 + *(sub_100009F70(&qword_10021BDF8, &qword_1001B2420) + 36));
  *v102 = v97;
  v102[1] = v99;
  sub_10000F618(v78, v100, &qword_100221270, &qword_1001BA018);
  v103 = static Alignment.center.getter();
  v105 = v104;
  v106 = v125;
  v107 = &v125[*(v127 + 36)];
  sub_10000F618(v100, v107, &qword_100221278, &qword_1001BA020);
  v108 = (v107 + *(sub_100009F70(&qword_1002212B8, &qword_1001BA058) + 36));
  *v108 = v103;
  v108[1] = v105;
  sub_10014DAC0(v126, v106);
  sub_10014DB30();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v106, &qword_100221298, &qword_1001BA040);
}

uint64_t sub_10014CFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = a1;
  v89 = sub_100009F70(&qword_1002212F0, &qword_1001BA068);
  __chkstk_darwin(v89);
  v88 = &v80 - v2;
  v3 = sub_100009F70(&qword_1002212F8, &qword_1001BA070);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v80 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  __chkstk_darwin(v7);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v10 = *(v83 - 1);
  __chkstk_darwin(v83);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Date.FormatStyle();
  v13 = *(v81 - 8);
  v14 = __chkstk_darwin(v81);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100009F70(&qword_10021BF80, &qword_1001B2660);
  __chkstk_darwin(v82);
  v22 = &v80 - v21;
  v85 = sub_100009F70(&qword_100221300, &qword_1001BA078);
  __chkstk_darwin(v85);
  v24 = &v80 - v23;
  v25 = sub_100009F70(&qword_100221308, &qword_1001BA080);
  v26 = __chkstk_darwin(v25 - 8);
  v87 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v86 = &v80 - v28;
  (*(v18 + 16))(v20, v93, v17);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v10 + 8))(v12, v83);
  (*(v13 + 8))(v16, v81);
  sub_10014DDCC(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_10014DDCC(&qword_10021FDF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v29 = Text.init<A>(_:format:)();
  v31 = v30;
  LOBYTE(v12) = v32;
  v83 = v33;
  v34 = &v22[*(sub_100009F70(&qword_100219820, &unk_1001AE8B0) + 36)];
  v35 = *(sub_100009F70(&qword_100219828, &qword_1001B0010) + 28);
  v36 = enum case for Text.Case.uppercase(_:);
  v37 = type metadata accessor for Text.Case();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  *v22 = v29;
  *(v22 + 1) = v31;
  v22[16] = v12 & 1;
  *(v22 + 3) = v83;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v39 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v41 = &v22[*(v82 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = enum case for DynamicTypeSize.medium(_:);
  v43 = v94;
  v44 = v95;
  v45 = v84;
  v83 = *(v95 + 104);
  (v83)(v84, enum case for DynamicTypeSize.medium(_:), v94);
  sub_10008F064();
  View.dynamicTypeSize(_:)();
  v46 = *(v44 + 8);
  v47 = v45;
  v95 = v44 + 8;
  v82 = v46;
  v46(v45, v43);
  sub_10014DE24(v22);
  if (qword_100218320 != -1)
  {
    swift_once();
  }

  v48 = qword_100230558;
  *&v24[*(sub_100009F70(&qword_100221310, &qword_1001BA0E8) + 36)] = v48;
  v49 = swift_getKeyPath();
  v50 = &v24[*(sub_100009F70(&qword_100221318, &qword_1001BA120) + 36)];
  *v50 = v49;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = swift_getKeyPath();
  v52 = &v24[*(v85 + 36)];
  *v52 = v51;
  v52[1] = 0x3FE3333333333333;
  sub_10014DEE8();

  v53 = v86;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v24, &qword_100221300, &qword_1001BA078);
  v54 = [objc_allocWithZone(NSDateFormatter) init];
  v55 = String._bridgeToObjectiveC()();
  [v54 setDateFormat:v55];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v57 = [v54 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Font.largeTitle.getter();
  static Font.Weight.light.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v96 = v58;
  v97 = v60;
  v65 = v62 & 1;
  v98 = v62 & 1;
  v99 = v64;
  v66 = v42;
  v67 = v94;
  (v83)(v47, v66, v94);
  v68 = v88;
  View.dynamicTypeSize(_:)();
  (v82)(v47, v67);
  sub_10000D60C(v58, v60, v65);

  LODWORD(v58) = static HierarchicalShapeStyle.primary.getter();
  *(v68 + *(sub_100009F70(&qword_100221348, &qword_1001BA160) + 36)) = v58;
  LOBYTE(v58) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v69 = v68 + *(v89 + 36);
  *v69 = v58;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  sub_10014E14C(&qword_100221350, &qword_1002212F0, &qword_1001BA068, sub_10014E1D0);
  v74 = v90;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v68, &qword_1002212F0, &qword_1001BA068);
  v75 = v87;
  sub_10000D58C(v53, v87, &qword_100221308, &qword_1001BA080);
  v76 = v91;
  sub_10000D58C(v74, v91, &qword_1002212F8, &qword_1001BA070);
  v77 = v92;
  sub_10000D58C(v75, v92, &qword_100221308, &qword_1001BA080);
  v78 = sub_100009F70(&qword_100221360, &qword_1001BA168);
  sub_10000D58C(v76, v77 + *(v78 + 48), &qword_1002212F8, &qword_1001BA070);
  sub_10000D52C(v74, &qword_1002212F8, &qword_1001BA070);
  sub_10000D52C(v53, &qword_100221308, &qword_1001BA080);
  sub_10000D52C(v76, &qword_1002212F8, &qword_1001BA070);
  return sub_10000D52C(v75, &qword_100221308, &qword_1001BA080);
}

uint64_t sub_10014DAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100221290, &qword_1001BA038);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014DB30()
{
  result = qword_1002212C0;
  if (!qword_1002212C0)
  {
    sub_10000B3DC(&qword_100221298, &qword_1001BA040);
    sub_10014DBE8();
    sub_10000D1EC(&qword_1002212E8, &qword_1002212B8, &qword_1001BA058, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002212C0);
  }

  return result;
}

unint64_t sub_10014DBE8()
{
  result = qword_1002212C8;
  if (!qword_1002212C8)
  {
    sub_10000B3DC(&qword_100221290, &qword_1001BA038);
    sub_10014E14C(&qword_1002212D0, &qword_1002212B0, &qword_1001BA050, sub_10014DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002212C8);
  }

  return result;
}

unint64_t sub_10014DCA0()
{
  result = qword_1002212D8;
  if (!qword_1002212D8)
  {
    sub_10000B3DC(&qword_1002212E0, &qword_1001BA060);
    sub_10000B3DC(&qword_100221280, &qword_1001BA028);
    sub_10000D1EC(&qword_1002212A8, &qword_100221280, &qword_1001BA028, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10014DDCC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002212D8);
  }

  return result;
}

uint64_t sub_10014DDCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014DE24(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021BF80, &qword_1001B2660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10014DEE8()
{
  result = qword_100221320;
  if (!qword_100221320)
  {
    sub_10000B3DC(&qword_100221300, &qword_1001BA078);
    sub_10014DFA0();
    sub_10000D1EC(&qword_100221338, &qword_100221340, &qword_1001BA158, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221320);
  }

  return result;
}

unint64_t sub_10014DFA0()
{
  result = qword_100221328;
  if (!qword_100221328)
  {
    sub_10000B3DC(&qword_100221318, &qword_1001BA120);
    sub_10014E058();
    sub_10000D1EC(&qword_100219800, &qword_100219808, &qword_1001B26F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221328);
  }

  return result;
}

unint64_t sub_10014E058()
{
  result = qword_100221330;
  if (!qword_100221330)
  {
    sub_10000B3DC(&qword_100221310, &qword_1001BA0E8);
    sub_10000B3DC(&qword_10021BF80, &qword_1001B2660);
    sub_10008F064();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221330);
  }

  return result;
}

uint64_t sub_10014E14C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014E1D0()
{
  result = qword_100221358;
  if (!qword_100221358)
  {
    sub_10000B3DC(&qword_100221348, &qword_1001BA160);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021B450, &qword_10021B458, &qword_1001B0F70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221358);
  }

  return result;
}

unint64_t sub_10014E2BC()
{
  result = qword_100221368;
  if (!qword_100221368)
  {
    sub_10000B3DC(&qword_100221370, &qword_1001BA170);
    sub_10014DB30();
    sub_10014DDCC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221368);
  }

  return result;
}

uint64_t sub_10014E378@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v6 = v2;
  sub_10014F59C(&qword_10021E540, type metadata accessor for EventController, &unk_1001BA190);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  return sub_10014F720(v6 + v4, a2);
}

uint64_t sub_10014E440(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = sub_100009F70(&qword_10021F138, &qword_1001B71A0);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_100009F70(&qword_100221500, &qword_1001BA1B8);
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_100009F70(&qword_10021B370, &qword_1001B3F70);
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = sub_100009F70(&qword_10021D8F8, &qword_1001B4AE0);
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v8 = sub_100009F70(&qword_100219428, &qword_1001AE340);
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = sub_100009F70(&qword_10021E530, &unk_1001B6028);
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for EventController.State(0);
  v3[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[43] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[44] = v10;
  v3[45] = v9;

  return _swift_task_switch(sub_10014E750, v10, v9);
}

uint64_t sub_10014E750()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v22 = v0[32];
  v24 = v0[29];
  v25 = v0[26];
  v5 = v0[23];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[46] = OBJC_IVAR____TtC15ShazamEventsApp15EventController___observationRegistrar;
  v0[18] = v5;
  v0[47] = sub_10014F59C(&qword_10021E540, type metadata accessor for EventController, &unk_1001BA190);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10014F538(v1);
  v7 = v3[16];
  v8 = v3[20];
  v9 = v3[24];
  v0[2] = v2 + v3[12];
  v0[3] = v2 + v7;
  v0[4] = v2 + v8;
  v0[5] = v2 + v9;
  v23 = type metadata accessor for Art();
  sub_10014F59C(qword_100219438, &type metadata accessor for Art, &protocol conformance descriptor for Art);
  static EventService.RequestType.art.getter();
  v21 = type metadata accessor for Dance();
  v10 = sub_10014F59C(&qword_10021D908, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  static EventService.RequestType.dance.getter();
  v0[6] = v4;
  v11 = type metadata accessor for Music();
  sub_10014F59C(&qword_10021B378, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  static EventService.RequestType<>.music.getter();
  v0[7] = v22;
  v12 = type metadata accessor for Sport();
  sub_10014F59C(&qword_100221508, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  static EventService.RequestType<>.sport.getter();
  v0[8] = v24;
  v13 = type metadata accessor for Theater();
  v14 = sub_10014F59C(&qword_10021F148, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  static EventService.RequestType.theater.getter();
  v0[9] = v25;
  v15 = swift_task_alloc();
  v0[48] = v15;
  v0[10] = v21;
  v0[11] = v11;
  v0[12] = v12;
  v0[13] = v13;
  v0[14] = v10;
  v0[15] = sub_10014F59C(&qword_10021CB90, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  v0[16] = sub_10014F59C(&qword_100221510, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  v0[17] = v14;
  *v15 = v0;
  v15[1] = sub_10014EBB8;
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[21];
  v19 = v0[22];

  return EventService.event<A, B>(identifier:ofType:_:)(v16, v0 + 2, v18, v19, v17, v0 + 6, 4, v23);
}

uint64_t sub_10014EBB8()
{
  v2 = *v1;
  v2[49] = v0;

  v3 = v2[38];
  v4 = v2[37];
  v5 = v2[36];
  if (v0)
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[44];
    v7 = v2[45];
    v8 = sub_10014EF3C;
  }

  else
  {
    v9 = v2[34];
    v20 = v2[33];
    v21 = v2[35];
    v19 = v2[32];
    v10 = v2[31];
    v18 = v2[30];
    v11 = v2[28];
    v12 = v2[29];
    v14 = v2[26];
    v13 = v2[27];
    v16 = v2[24];
    v15 = v2[25];
    (*(v4 + 8))(v3, v5);
    (*(v15 + 8))(v14, v16);
    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v19, v18);
    (*(v9 + 8))(v21, v20);
    v6 = v2[44];
    v7 = v2[45];
    v8 = sub_10014EDC4;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10014EDC4()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[23];

  sub_10014F5E4(v2, v1);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[20] = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10014F538(v1);
  sub_10014F654(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10014EF3C()
{
  v18 = v0[49];
  v17 = v0[42];
  v1 = v0[34];
  v15 = v0[33];
  v16 = v0[35];
  v2 = v0[31];
  v13 = v0[30];
  v14 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];

  (*(v7 + 8))(v5, v8);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);
  *v17 = v18;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v17;
  v0[19] = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10014F538(v17);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10014F144(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  sub_10014F6BC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10014F1B0()
{
  sub_10014F538(v0 + OBJC_IVAR____TtC15ShazamEventsApp15EventController__state);
  v1 = OBJC_IVAR____TtC15ShazamEventsApp15EventController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15ShazamEventsApp15EventController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10014F2C4(uint64_t a1)
{
  result = type metadata accessor for EventController.State(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EventService();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10014F3E8(uint64_t a1)
{
  sub_10009FE14();
  if (v1 <= 0x3F)
  {
    sub_10014F45C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10014F45C(uint64_t a1)
{
  if (!qword_1002214D0)
  {
    sub_10000B3DC(&qword_10021E548, &qword_1001B6070);
    sub_10000B3DC(&qword_10021E550, &qword_1001B6078);
    sub_10000B3DC(&qword_10021E4E0, &qword_1001B8DB0);
    sub_10000B3DC(&qword_10021E558, &qword_1001B6080);
    sub_10000B3DC(&qword_10021E560, &qword_1001B6088);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1002214D0);
    }
  }
}

uint64_t sub_10014F538(uint64_t a1)
{
  v2 = type metadata accessor for EventController.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014F59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014F5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E530, &unk_1001B6028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F654(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021E530, &unk_1001B6028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014F6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventController.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F79C()
{

  v1 = OBJC_IVAR____TtC15ShazamEventsApp17PlaybackViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackViewModel(uint64_t a1)
{
  result = qword_100221548;
  if (!qword_100221548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F894@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10008815C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsAppP33_1C7073CF0CC1C2E3B987F96E1178132819SubscriptionUpdater__subscription;
  swift_beginAccess();
  return sub_10000D58C(v4 + v5, a3, &qword_10021B910, &qword_1001B1650);
}

uint64_t sub_10014F93C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021B910, &qword_1001B1650);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000D58C(a1, &v6 - v3, &qword_10021B910, &qword_1001B1650);
  return sub_10007E41C(v4);
}

void sub_10014F9E8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1 + 4;
    sub_100028124(a1 + 4, a1[7]);
    *(&v86 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_100043D3C(&v85);
    dispatch thunk of Identifiable.id.getter();
    sub_100071318(&v85, v88);
    v82[0] = _swiftEmptyArrayStorage;
    sub_1001444DC(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_10005DA94(v2, &v85);
      v4 = *(&v86 + 1);
      v5 = AssociatedConformanceWitness;
      sub_100028124(&v85, *(&v86 + 1));
      v6 = (*(v5 + 88))(v4, v5);
      v8 = v7;
      sub_100021498(&v85);
      v82[0] = v3;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001444DC((v9 > 1), v10 + 1, 1);
        v3 = v82[0];
      }

      v3[2] = v10 + 1;
      v11 = &v3[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v2 += 5;
      --v1;
    }

    while (v1);
    isa = oslog[5].isa;
    v13 = oslog[6].isa;
    sub_100028124(&oslog[2].isa, isa);
    v14 = (*(v13 + 1))(isa, v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v82[0] = _swiftEmptyArrayStorage;
      sub_1001444DC(0, v15, 0);
      v16 = _swiftEmptyArrayStorage;
      v17 = v14 + 32;
      do
      {
        sub_10005DA94(v17, &v85);
        v18 = *(&v86 + 1);
        v19 = AssociatedConformanceWitness;
        sub_100028124(&v85, *(&v86 + 1));
        v20 = (*(v19 + 88))(v18, v19);
        v22 = v21;
        sub_100021498(&v85);
        v82[0] = v16;
        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          sub_1001444DC((v23 > 1), v24 + 1, 1);
          v16 = v82[0];
        }

        v16[2] = v24 + 1;
        v25 = &v16[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v17 += 40;
        --v15;
      }

      while (v15);
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }

    v29 = oslog[5].isa;
    v30 = oslog[6].isa;
    sub_100028124(&oslog[2].isa, v29);
    (*(v30 + 2))(v82, v29, v30);
    if (v83)
    {
      sub_100028124(v82, v83);
      *(&v86 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_100043D3C(&v85);
      dispatch thunk of Identifiable.id.getter();
      sub_100021498(v82);
    }

    else
    {
      sub_10000D52C(v82, &qword_10021A650, &qword_1001AFE68);
      v85 = 0u;
      v86 = 0u;
      AssociatedConformanceWitness = 0;
    }

    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    v31._countAndFlagsBits = 0x6F73207473726946;
    v31._object = 0xEC000000203A676ELL;
    String.append(_:)(v31);
    sub_100009F70(&qword_10021BF78, &unk_1001B2650);
    _print_unlocked<A, B>(_:_:)();
    v32 = v82[1];
    v74 = v82[0];
    strcpy(v82, "All songs: ");
    HIDWORD(v82[1]) = -352321536;
    v33._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v33);

    v34 = v82[0];
    v35 = v82[1];
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v80 = v82[0];
    v81 = v82[1];
    v36._countAndFlagsBits = 0x20746E6572727543;
    v36._object = 0xEE00203A676E6F73;
    String.append(_:)(v36);
    sub_10000D58C(&v85, &v78, qword_1002216A0, &qword_1001BA2C8);
    if (v79)
    {
      sub_100071318(&v78, v82);
    }

    else
    {
      v83 = &type metadata for String;
      v84 = &protocol witness table for String;
      v82[0] = 1701736270;
      v82[1] = 0xE400000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_100021498(v82);
    v37 = v80;
    v38 = v81;
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v82, "Queued songs: ");
    HIBYTE(v82[1]) = -18;
    v39._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v39);

    v41 = v82[0];
    v40 = v82[1];
    v42 = sub_1000E5FF4(v3, v16);

    if (v42)
    {
      v43 = oslog[5].isa;
      v44 = oslog[6].isa;
      sub_100028124(&oslog[2].isa, v43);
      v45 = (*(v44 + 4))(v43, v44);
      if (v45 > 1)
      {
        if (v45 == 2)
        {

          if (qword_100218470 != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          sub_10001FDF4(v58, qword_100230610);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v61 = 136315394;
            v62 = sub_10005D4E8(v37, v38, v82);

            *(v61 + 4) = v62;
            *(v61 + 12) = 2080;
            v63 = sub_10005D4E8(v41, v40, v82);

            *(v61 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "Pause song playback. %s. %s.", v61, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v70 = oslog[5].isa;
          v71 = oslog[6].isa;
          sub_100028124(&oslog[2].isa, v70);
          (*(v71 + 8))(v70, v71);
        }

        else
        {

          if (qword_100218470 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          sub_10001FDF4(v64, qword_100230610);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v67 = 136315394;
            v68 = sub_10005D4E8(v37, v38, v82);

            *(v67 + 4) = v68;
            *(v67 + 12) = 2080;
            v69 = sub_10005D4E8(v41, v40, v82);

            *(v67 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v65, v66, "Resume song playback. %s. %s.", v67, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v72 = oslog[5].isa;
          v73 = oslog[6].isa;
          sub_100028124(&oslog[2].isa, v72);
          (*(v73 + 7))(v72, v73);
        }

        goto LABEL_40;
      }

      if (v45)
      {
        sub_100021498(v88);

        goto LABEL_41;
      }

      if (qword_100218470 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10001FDF4(v46, qword_100230610);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v50 = sub_10005D4E8(v74, v32, v82);

        *(v49 + 4) = v50;
        *(v49 + 12) = 2080;
        v51 = sub_10005D4E8(v34, v35, v82);

        *(v49 + 14) = v51;
        v52 = "Player was previously idle/stopped. Restart song playback. %s. %s.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v47, v48, v52, v49, 0x16u);
        swift_arrayDestroy();

LABEL_39:

        v56 = oslog[5].isa;
        v57 = oslog[6].isa;
        sub_100028124(&oslog[2].isa, v56);
        (*(v57 + 6))(a1, v56, v57);
LABEL_40:
        sub_100021498(v88);
LABEL_41:
        sub_10000D52C(&v85, qword_1002216A0, &qword_1001BA2C8);
        return;
      }
    }

    else
    {

      if (qword_100218470 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10001FDF4(v53, qword_100230610);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v54 = sub_10005D4E8(v74, v32, v82);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = sub_10005D4E8(v34, v35, v82);

        *(v49 + 14) = v55;
        v52 = "Start song playback. %s. %s.";
        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10001FDF4(v26, qword_100230610);
  osloga = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v27, "Cannot play empty playlist.", v28, 2u);
  }
}

uint64_t sub_100150754()
{
  v0 = sub_100009F70(&qword_10021B910, &qword_1001B1650);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  if (qword_100218358 != -1)
  {
    swift_once();
  }

  v3 = *(qword_1002305A0 + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_getKeyPath();
  *&v16 = v4;
  sub_10008815C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsAppP33_1C7073CF0CC1C2E3B987F96E1178132819SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_10000D58C(v4 + v5, v2, &qword_10021B910, &qword_1001B1650);
  os_unfair_lock_unlock((v3 + 24));
  v6 = type metadata accessor for MusicSubscription();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_10000D52C(v2, &qword_10021B910, &qword_1001B1650);

LABEL_7:
    v9 = type metadata accessor for MusicPreviewPlayer(0);
    v11 = [objc_allocWithZone(v9) init];
    v12 = &off_10020B5A0;
    goto LABEL_8;
  }

  v8 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v7 + 8))(v2, v6);

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = type metadata accessor for AppleMusicPlayer(0);
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 49) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 72) = 0;
  ObservationRegistrar.init()();
  v11 = v10;
  v12 = &off_1002104E0;
LABEL_8:
  v17 = v9;
  v18 = v12;
  *&v16 = v11;
  type metadata accessor for PlaybackController(0);
  v13 = swift_allocObject();
  ObservationRegistrar.init()();
  result = sub_100071318(&v16, v13 + 16);
  qword_100230608 = v13;
  return result;
}

uint64_t sub_100150A18()
{
  v1 = v0;
  sub_10005DA94(v0 + 16, v7);
  v2 = v8;
  v3 = v9;
  sub_100028124(v7, v8);
  (*(v3 + 80))(v2, v3);
  sub_100021498(v7);
  sub_100021498((v0 + 16));
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18PlaybackController___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackController(uint64_t a1)
{
  result = qword_100221608;
  if (!qword_100221608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100150B5C(uint64_t a1)
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

uint64_t sub_100150C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  v6 = sub_100043D3C(v9);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_100009F70(&qword_100221698, &qword_1001BA2C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001AEB90;
  sub_10005DA94(v9, v7 + 32);
  sub_10014F9E8(v7);

  return sub_100021498(v9);
}

void sub_100150CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntertainmentEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      sub_1000391A4(319);
      if (v6 <= 0x3F)
      {
        sub_100050558();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100150DA0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100150E70(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100150FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100151024(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10015120C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000A818C;

  return v5();
}

uint64_t sub_1001512F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  State.init(wrappedValue:)();
  *a4 = v14;
  a4[1] = v15;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  a4[2] = EnvironmentObject.init()();
  a4[3] = v8;
  v10 = type metadata accessor for EntertainmentEventView(0, *(v7 + 80), *(v7 + 88), v9);
  v11 = *(v10 + 40);
  *(a4 + v11) = swift_getKeyPath();
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  result = swift_storeEnumTagMultiPayload();
  v13 = a4 + *(v10 + 44);
  *v13 = a2;
  v13[8] = a3 & 1;
  return result;
}

uint64_t sub_100151494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntertainmentEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_1001514E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntertainmentEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.projectedValue.getter();
  return v5;
}

uint64_t sub_100151540(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001517C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v128 = a2;
  v127 = type metadata accessor for TaskPriority();
  v126 = *(v127 - 8);
  v3 = __chkstk_darwin(v127);
  v125 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = *(a1 - 8);
  v133 = *(v124 + 64);
  __chkstk_darwin(v3);
  v123 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  type metadata accessor for Optional();
  v122 = type metadata accessor for Binding();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = v100 - v7;
  v131 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  v9 = sub_10006FEE0();
  OpaqueTypeMetadata2 = v6;
  v143 = &type metadata for DefaultHeroImageView;
  v144 = v8;
  v145 = v9;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v153 = &protocol witness table for _PaddingLayout;
  v11 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v10;
  v143 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, v6, v8, v12);
  v143 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v134 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v144 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v6, v8, v16);
  v145 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v17 = type metadata accessor for ScrollView();
  v18 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v17;
  v143 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v17;
  v143 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v19;
  v143 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v19;
  v143 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v21;
  v143 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v23 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v21;
  v143 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v150 = v24;
  v151 = v25;
  v26 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v23;
  v143 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v23;
  v143 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_100027068();
  OpaqueTypeMetadata2 = v27;
  v143 = &type metadata for String;
  v144 = v28;
  v145 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v27;
  v143 = &type metadata for String;
  v144 = v28;
  v145 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v30;
  v143 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v30;
  v143 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v32;
  v143 = &type metadata for Bool;
  v144 = v33;
  v145 = &protocol witness table for Bool;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = sub_10000B3DC(&qword_10021E3C0, &qword_1001BA350);
  OpaqueTypeMetadata2 = v32;
  v143 = &type metadata for Bool;
  v144 = v33;
  v145 = &protocol witness table for Bool;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
  v38 = sub_1000DB938();
  OpaqueTypeMetadata2 = v37;
  v143 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v34;
  v143 = v35;
  v144 = v36;
  v145 = v39;
  v109 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v34;
  v143 = v35;
  v144 = v36;
  v145 = v39;
  v107 = swift_getOpaqueTypeConformance2();
  v40 = type metadata accessor for NavigationStack();
  v108 = *(v40 - 8);
  __chkstk_darwin(v40);
  v105 = v100 - v41;
  type metadata accessor for AccessibilityAttachmentModifier();
  v42 = type metadata accessor for ModifiedContent();
  v118 = *(v42 - 8);
  __chkstk_darwin(v42);
  v129 = v100 - v43;
  v44 = swift_getWitnessTable();
  v102 = v44;
  v45 = sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v148 = v44;
  v149 = v45;
  v46 = swift_getWitnessTable();
  v47 = *(v134 + 16);
  v48 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v42;
  v143 = v6;
  v49 = v42;
  v101 = v42;
  v144 = a1;
  v145 = v46;
  v50 = v46;
  v104 = v46;
  v146 = v47;
  v147 = v48;
  v103 = v47;
  v100[1] = v48;
  v111 = swift_getOpaqueTypeMetadata2();
  v115 = *(v111 - 8);
  __chkstk_darwin(v111);
  v130 = v100 - v51;
  v52 = type metadata accessor for ModifiedContent();
  v113 = v52;
  v119 = *(v52 - 8);
  __chkstk_darwin(v52);
  v131 = v100 - v53;
  OpaqueTypeMetadata2 = v49;
  v143 = v6;
  v144 = a1;
  v145 = v50;
  v146 = v47;
  v147 = v48;
  v106 = swift_getOpaqueTypeConformance2();
  v140 = v106;
  v141 = &protocol witness table for _AppearanceActionModifier;
  v112 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v52;
  v143 = v112;
  v117 = swift_getOpaqueTypeMetadata2();
  v116 = *(v117 - 8);
  v54 = __chkstk_darwin(v117);
  v110 = v100 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v114 = v100 - v56;
  v57 = v134;
  v137 = v6;
  v138 = v134;
  v139 = v132;
  v58 = v105;
  NavigationStack.init<>(root:)();
  View.accessibilityIdentifier(_:)();
  (*(v108 + 8))(v58, v40);
  v59 = a1;
  v63 = sub_1001514E8(a1, v60, v61, v62);
  v65 = v64;
  v67 = v66;
  v68 = v6;
  v135 = v6;
  v136 = v57;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v63;
  v143 = v65;
  v144 = v67;
  type metadata accessor for EntertainmentEventViewModel(255, v6, v57, v69);
  type metadata accessor for Binding();
  v70 = v120;
  Binding.subscript.getter();

  v71 = swift_allocObject();
  *(v71 + 16) = v68;
  *(v71 + 24) = v57;
  v72 = v101;
  v100[0] = v68;
  v73 = v59;
  v74 = v129;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v121 + 8))(v70, v122);
  (*(v118 + 8))(v74, v72);
  v75 = v124;
  v129 = *(v124 + 16);
  v76 = v123;
  v77 = v132;
  (v129)(v123, v132, v73);
  v78 = *(v75 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = v68;
  *(v79 + 24) = v57;
  v80 = *(v75 + 32);
  v80(v79 + ((v78 + 32) & ~v78), v76, v73);
  v81 = v111;
  v82 = v130;
  View.onAppear(perform:)();

  (*(v115 + 8))(v82, v81);
  (v129)(v76, v77, v73);
  type metadata accessor for MainActor();
  v83 = static MainActor.shared.getter();
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = &protocol witness table for MainActor;
  v85 = v134;
  v84[4] = v100[0];
  v84[5] = v85;
  v80(v84 + ((v78 + 48) & ~v78), v76, v73);
  v86 = v125;
  v87 = v113;
  v88 = v112;
  j___sScP13userInitiatedScPvgZ();
  v99 = v88;
  v89 = v110;
  v90 = v86;
  v91 = v86;
  v92 = v131;
  sub_100009FB8(0, v90, 0xD00000000000002CLL, 0x80000001001C18F0, 120, &unk_1001BA3A0, v84, v110, v87, v99);
  (*(v126 + 8))(v91, v127);
  (*(v119 + 8))(v92, v87);
  v93 = v116;
  v94 = *(v116 + 16);
  v95 = v114;
  v96 = v117;
  v94(v114, v89, v117);
  v97 = *(v93 + 8);
  v97(v89, v96);
  v94(v128, v95, v96);
  return (v97)(v95, v96);
}

uint64_t sub_100152868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v169 = a5;
  v170 = a1;
  v166 = type metadata accessor for EntertainmentEventView(0, a2, a3, a4);
  v165 = *(v166 - 8);
  v163 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v109 - v7;
  v162 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for ContentMarginPlacement();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ScrollIndicatorVisibility();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v145 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10006FEE0();
  OpaqueTypeMetadata2 = a2;
  v179 = &type metadata for DefaultHeroImageView;
  v180 = a3;
  v181 = v11;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v12 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v177 = &protocol witness table for _PaddingLayout;
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v179 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, a2, a3, v14);
  v179 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v180 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, a3, v18);
  v181 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v112 = type metadata accessor for VStack();
  v111 = swift_getWitnessTable();
  v19 = type metadata accessor for ScrollView();
  v147 = *(v19 - 8);
  __chkstk_darwin(v19);
  v110 = &v109 - v20;
  v21 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v19;
  v179 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v139 = *(v22 - 8);
  __chkstk_darwin(v22);
  v133 = &v109 - v23;
  v129 = v19;
  OpaqueTypeMetadata2 = v19;
  v179 = v21;
  v125 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v22;
  v179 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeMetadata2();
  v132 = *(v25 - 8);
  __chkstk_darwin(v25);
  v126 = &v109 - v26;
  v144 = v22;
  OpaqueTypeMetadata2 = v22;
  v179 = OpaqueTypeConformance2;
  v121 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v25;
  v179 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v142 = *(v28 - 8);
  __chkstk_darwin(v28);
  v135 = &v109 - v29;
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v146 = v28;
  v30 = type metadata accessor for ModifiedContent();
  v140 = *(v30 - 8);
  __chkstk_darwin(v30);
  v134 = &v109 - v31;
  v136 = v25;
  OpaqueTypeMetadata2 = v25;
  v179 = v27;
  v118 = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v113 = v32;
  v174 = v32;
  v175 = v33;
  v34 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v30;
  v179 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v128 = *(v35 - 8);
  __chkstk_darwin(v35);
  v123 = &v109 - v36;
  OpaqueTypeMetadata2 = v30;
  v179 = v34;
  v114 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_100027068();
  OpaqueTypeMetadata2 = v35;
  v179 = &type metadata for String;
  v180 = v37;
  v181 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v143 = *(v39 - 8);
  __chkstk_darwin(v39);
  v137 = &v109 - v40;
  v131 = v35;
  OpaqueTypeMetadata2 = v35;
  v179 = &type metadata for String;
  v116 = v37;
  v180 = v37;
  v181 = v38;
  v115 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v39;
  v179 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v153 = *(v42 - 8);
  __chkstk_darwin(v42);
  v151 = &v109 - v43;
  v148 = v39;
  OpaqueTypeMetadata2 = v39;
  v179 = v41;
  v122 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v42;
  v179 = &type metadata for Bool;
  v180 = v44;
  v181 = &protocol witness table for Bool;
  v45 = swift_getOpaqueTypeMetadata2();
  v150 = *(v45 - 8);
  __chkstk_darwin(v45);
  v149 = &v109 - v46;
  v47 = sub_10000B3DC(&qword_10021E3C0, &qword_1001BA350);
  v154 = v42;
  OpaqueTypeMetadata2 = v42;
  v179 = &type metadata for Bool;
  v141 = v44;
  v180 = v44;
  v181 = &protocol witness table for Bool;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
  v50 = sub_1000DB938();
  OpaqueTypeMetadata2 = v49;
  v179 = v50;
  v51 = v110;
  v52 = swift_getOpaqueTypeConformance2();
  v152 = v45;
  OpaqueTypeMetadata2 = v45;
  v179 = v47;
  v138 = v47;
  v130 = v48;
  v180 = v48;
  v181 = v52;
  v120 = v52;
  v127 = swift_getOpaqueTypeMetadata2();
  v124 = *(v127 - 8);
  v53 = __chkstk_darwin(v127);
  v117 = &v109 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v119 = &v109 - v55;
  v167 = a2;
  v171 = a2;
  v172 = a3;
  v56 = v145;
  v168 = a3;
  v173 = v170;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v45) = static Axis.Set.vertical.getter();
  *(inited + 32) = v45;
  v58 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v58;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v45)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v58)
  {
    Axis.Set.init(rawValue:)();
  }

  v59 = v133;
  v60 = v129;
  View.scrollIndicators(_:axes:)();
  (*(v155 + 8))(v56, v156);
  (*(v147 + 8))(v51, v60);
  static Edge.Set.bottom.getter();
  v61 = v157;
  static ContentMarginPlacement.scrollContent.getter();
  v62 = v126;
  v63 = v144;
  View.contentMargins(_:_:for:)();
  v64 = *(v158 + 8);
  v65 = v159;
  v64(v61, v159);
  (*(v139 + 8))(v59, v63);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v66 = v135;
  v67 = v136;
  View.contentMargins(_:_:for:)();
  v64(v61, v65);
  (*(v132 + 8))(v62, v67);
  v68 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v69 = v134;
  v70 = v146;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v142 + 8))(v66, v70);
  v71 = v161;
  v72 = v160;
  v73 = v162;
  (*(v161 + 104))(v160, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v162);
  v74 = v123;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v71 + 8))(v72, v73);
  (*(v140 + 8))(v69, v30);
  v75 = v166;
  v76 = v170;
  sub_100151494(v166, v77, v78, v79);
  v80 = sub_1000EB4B4();
  v82 = v81;

  OpaqueTypeMetadata2 = v80;
  v179 = v82;
  v83 = v137;
  v84 = v131;
  View.navigationTitle<A>(_:)();

  (*(v128 + 8))(v74, v84);
  sub_100151494(v75, v85, v86, v87);
  sub_1000E88E8();

  sub_100009F70(&qword_10021A898, &qword_1001B01C0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001AEB90;
  static ToolbarPlacement.navigationBar.getter();
  v88 = v151;
  v89 = v148;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v143 + 8))(v83, v89);
  v90 = swift_allocObject();
  v91 = v167;
  v92 = v168;
  *(v90 + 16) = v167;
  *(v90 + 24) = v92;
  v93 = v165;
  v94 = v164;
  (*(v165 + 16))(v164, v76, v75);
  v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = v91;
  *(v96 + 24) = v92;
  (*(v93 + 32))(v96 + v95, v94, v75);
  v108 = &protocol witness table for Bool;
  v97 = v149;
  v98 = v154;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v99 = (*(v153 + 8))(v88, v98);
  __chkstk_darwin(v99);
  *(&v109 - 4) = v91;
  *(&v109 - 3) = v92;
  v108 = v76;
  v100 = v117;
  v101 = v152;
  View.toolbar<A>(content:)();
  (*(v150 + 8))(v97, v101);
  v102 = v124;
  v103 = *(v124 + 16);
  v104 = v119;
  v105 = v127;
  v103(v119, v100, v127);
  v106 = *(v102 + 8);
  v106(v100, v105);
  v103(v169, v104, v105);
  return (v106)(v104, v105);
}

uint64_t sub_100153D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  OpaqueTypeMetadata2 = a2;
  v32 = &type metadata for DefaultHeroImageView;
  v33 = a3;
  v34 = sub_10006FEE0();
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v8 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v30 = &protocol witness table for _PaddingLayout;
  v9 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v8;
  v32 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, a2, a3, v10);
  v32 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v33 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, a3, v14);
  v34 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v15 = type metadata accessor for VStack();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v25[-v20];
  static HorizontalAlignment.leading.getter();
  v26 = a2;
  v27 = a3;
  v28 = a1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v22 = *(v16 + 16);
  v22(v21, v19, v15);
  v23 = *(v16 + 8);
  v23(v19, v15);
  v22(a4, v21, v15);
  return (v23)(v21, v15);
}

uint64_t sub_100154090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v250 = a4;
  type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  __chkstk_darwin(v7 - 8);
  v222 = &v219 - v8;
  v10 = type metadata accessor for UpcomingViewModel(0, a2, a3, v9);
  __chkstk_darwin(v10 - 8);
  v220 = &v219 - v11;
  v13 = type metadata accessor for UpcomingModule(0, a2, a3, v12);
  v246 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v223 = &v219 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v221 = &v219 - v16;
  v247 = v17;
  v249 = type metadata accessor for Optional();
  v248 = *(v249 - 8);
  v18 = __chkstk_darwin(v249);
  v263 = &v219 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v262 = &v219 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v219 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v253 = &v219 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v254 = AssociatedTypeWitness;
  v252 = AssociatedConformanceWitness;
  v25 = type metadata accessor for LocationModule(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  v244 = *(v25 - 8);
  __chkstk_darwin(v25);
  v242 = &v219 - v26;
  v245 = v27;
  v261 = type metadata accessor for ModifiedContent();
  v272 = *(v261 - 8);
  v28 = __chkstk_darwin(v261);
  v260 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v243 = &v219 - v31;
  __chkstk_darwin(v30);
  v271 = &v219 - v32;
  v34 = type metadata accessor for DetailsModule(0, a2, a3, v33);
  v239 = *(v34 - 8);
  __chkstk_darwin(v34);
  v238 = (&v219 - v35);
  v240 = v36;
  v270 = type metadata accessor for ModifiedContent();
  v269 = *(v270 - 8);
  v37 = __chkstk_darwin(v270);
  v259 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v237 = &v219 - v40;
  __chkstk_darwin(v39);
  v268 = &v219 - v41;
  v43 = type metadata accessor for EntertainmentEventView(0, a2, a3, v42);
  v264 = *(v43 - 8);
  v255 = v264[8];
  v44 = __chkstk_darwin(v43);
  OpaqueTypeConformance2 = &v219 - v45;
  v251 = *(a2 - 8);
  v46 = __chkstk_darwin(v44);
  v227 = (&v219 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46);
  v49 = &v219 - v48;
  v257 = (&v219 - v48);
  v230 = sub_10006FEE0();
  *&v280 = a2;
  *(&v280 + 1) = &type metadata for DefaultHeroImageView;
  *&v281 = a3;
  *(&v281 + 1) = v230;
  v50 = type metadata accessor for HeaderModule(0, &v280);
  v233 = *(v50 - 8);
  __chkstk_darwin(v50);
  v228 = &v219 - v51;
  v52 = type metadata accessor for ModifiedContent();
  v236 = *(v52 - 8);
  __chkstk_darwin(v52);
  v235 = &v219 - v53;
  v234 = v50;
  WitnessTable = swift_getWitnessTable();
  v283 = WitnessTable;
  v284 = &protocol witness table for _PaddingLayout;
  v54 = swift_getWitnessTable();
  v241 = v52;
  *&v280 = v52;
  *(&v280 + 1) = v54;
  v232 = v54;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v266 = *(OpaqueTypeMetadata2 - 8);
  v55 = __chkstk_darwin(OpaqueTypeMetadata2);
  v258 = &v219 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v231 = &v219 - v58;
  __chkstk_darwin(v57);
  v265 = &v219 - v59;
  v273 = a3;
  v226 = type metadata accessor for HeaderViewModel(0, a2, a3, v60);
  sub_100151494(v43, v61, v62, v63);
  sub_1000E8FE4(v49);

  v64 = a1;
  v68 = sub_100151494(v43, v65, v66, v67);
  v225 = sub_1000E917C(v68);
  v224 = v69;

  sub_100151494(v43, v70, v71, v72);
  v73 = sub_1000E928C();
  v75 = v74;

  sub_100151494(v43, v76, v77, v78);
  v79 = sub_1000E95C0();
  v81 = v80;

  sub_100151494(v43, v82, v83, v84);
  v85 = v227;
  sub_1000E8FE4(v227);

  v86 = sub_1000A0020(a2, a3);
  (*(v251 + 8))(v85, a2);
  v282 = 0;
  v280 = 0u;
  v281 = 0u;
  v87 = sub_100079D3C(v257, v225, v224, v73, v75, v79, v81, 0, 0, v86 & 1, &v280);
  v88 = v264;
  v89 = OpaqueTypeConformance2;
  v227 = v264[2];
  (v227)(OpaqueTypeConformance2, v64, v43);
  v90 = v88;
  v91 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v92 = swift_allocObject();
  v251 = a2;
  v93 = v273;
  *(v92 + 16) = a2;
  *(v92 + 24) = v93;
  v94 = v90[4];
  v264 = v90 + 4;
  v226 = v94;
  v94(v92 + v91, v89, v43);
  v95 = v228;
  sub_1000A89F0(v87, sub_100157588, v92, &type metadata for DefaultHeroImageView, v230, v228);
  static Edge.Set.horizontal.getter();
  v96 = v43;
  if (sub_100151540(v43))
  {
    sub_1000505EC();
  }

  v97 = v235;
  v98 = v234;
  View.padding(_:_:)();
  (*(v233 + 8))(v95, v98);
  v99 = OpaqueTypeConformance2;
  (v227)(OpaqueTypeConformance2, v64, v96);
  v100 = swift_allocObject();
  v101 = v251;
  v102 = v273;
  *(v100 + 16) = v251;
  *(v100 + 24) = v102;
  v226(v100 + v91, v99, v96);
  v103 = v231;
  v104 = v241;
  v105 = v232;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v236 + 8))(v97, v104);
  *&v280 = v104;
  *(&v280 + 1) = v105;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v266;
  v107 = *(v266 + 16);
  v108 = OpaqueTypeMetadata2;
  v255 = v266 + 16;
  v241 = v107;
  (v107)(v265, v103, OpaqueTypeMetadata2);
  v109 = *(v106 + 8);
  v266 = v106 + 8;
  v264 = v109;
  (v109)(v103, v108);
  type metadata accessor for DetailsViewModel(0, v101, v102, v110);
  sub_100151494(v96, v111, v112, v113);
  v114 = v257;
  sub_1000E8FE4(v257);

  sub_100151494(v96, v115, v116, v117);
  v118 = sub_1000EB61C();
  v119 = v118;

  v120 = sub_100183444(v114, v118);
  v121 = v238;
  sub_1000FF934(v120, v238);
  static Edge.Set.horizontal.getter();
  if (sub_100151540(v96))
  {
    sub_1000506BC();
  }

  else
  {
    static Solarium.isEnabled.getter();
  }

  v122 = v240;
  v123 = swift_getWitnessTable();
  v124 = v237;
  View.padding(_:_:)();
  (*(v239 + 1))(v121, v122);
  v279[6] = v123;
  v279[7] = &protocol witness table for _PaddingLayout;
  v125 = v270;
  v251 = swift_getWitnessTable();
  v126 = v269;
  v127 = *(v269 + 16);
  v240 = v269 + 16;
  v239 = v127;
  v127(v268, v124, v125);
  v128 = *(v126 + 8);
  v269 = v126 + 8;
  v257 = v128;
  (v128)(v124, v125);
  type metadata accessor for LocationViewModel(0, v254, v252, v129);
  v133 = sub_100151494(v96, v130, v131, v132);
  v134 = sub_1000E95E0(v133);
  v136 = v135;

  v140 = sub_100151494(v96, v137, v138, v139);
  v141 = v253;
  sub_1000E96F0(v140);

  sub_100151494(v96, v142, v143, v144);
  v145 = sub_1000EB61C();
  v146 = v145;

  v150 = sub_100151494(v96, v147, v148, v149);
  v151 = sub_1000EAA10(v150);

  v152 = sub_1000C6E18(v134, v136, v141, v145, v151);
  v153 = v242;
  sub_1000A2404(v152, v242);
  static Edge.Set.horizontal.getter();
  if (sub_100151540(v96))
  {
    sub_100050654();
  }

  v154 = v245;
  v155 = swift_getWitnessTable();
  v156 = v243;
  View.padding(_:_:)();
  (*(v244 + 8))(v153, v154);
  v279[4] = v155;
  v279[5] = &protocol witness table for _PaddingLayout;
  v157 = v261;
  v244 = swift_getWitnessTable();
  v158 = v272;
  v159 = *(v272 + 16);
  v242 = v272 + 16;
  v238 = v159;
  (v159)(v271, v156, v157);
  v160 = *(v158 + 8);
  v272 = v158 + 8;
  v245 = v160;
  v160(v156, v157);
  sub_100151494(v96, v161, v162, v163);
  v164 = sub_1000EB540();

  *&v280 = v164;
  type metadata accessor for Array();
  swift_getWitnessTable();
  LOBYTE(v158) = Collection.isEmpty.getter();

  if (v158)
  {
    v168 = v263;
    (*(v246 + 56))(v263, 1, 1, v247);
    swift_getWitnessTable();
  }

  else
  {
    v169 = sub_100151494(v96, v165, v166, v167);
    v170 = (v169 + *(*v169 + 144));
    v171 = v170[1];
    v243 = *v170;

    v175 = sub_100151494(v96, v172, v173, v174);
    v176 = v253;
    sub_1000E96F0(v175);

    v177 = v254;
    v252 = (*(v252 + 48))(v254);
    v237 = v178;
    (*(v219 + 8))(v176, v177);
    sub_100151494(v96, v179, v180, v181);
    v182 = sub_1000EB540();

    v186 = sub_1001514E8(v96, v183, v184, v185);
    v188 = v187;
    v189 = v273;
    v191 = v190;
    __chkstk_darwin(v186);
    swift_getKeyPath();
    *&v280 = v186;
    *(&v280 + 1) = v188;
    *&v281 = v191;
    type metadata accessor for EntertainmentEventViewModel(255, v101, v189, v192);
    type metadata accessor for Binding();
    v193 = v222;
    Binding.subscript.getter();

    v194 = v220;
    sub_1000F6C94(v243, v171, v252, v237, 1, v182, v193, v101, v220, v189);
    KeyPath = swift_getKeyPath();
    v196 = v223;
    sub_1000C117C(v194, KeyPath, 0, v101, v189, v223);
    v197 = v247;
    swift_getWitnessTable();
    v198 = v246;
    v199 = *(v246 + 16);
    v200 = v221;
    v199(v221, v196, v197);
    v201 = *(v198 + 8);
    v201(v196, v197);
    v199(v196, v200, v197);
    v201(v200, v197);
    v168 = v263;
    (*(v198 + 32))(v263, v196, v197);
    (*(v198 + 56))(v168, 0, 1, v197);
  }

  v202 = v248;
  v203 = *(v248 + 16);
  v204 = v249;
  v203(v262, v168, v249);
  v273 = *(v202 + 8);
  v273(v168, v204);
  v205 = v258;
  v206 = OpaqueTypeMetadata2;
  v241(v258, v265);
  *&v280 = v205;
  v207 = v259;
  v208 = v270;
  v239(v259, v268, v270);
  *(&v280 + 1) = v207;
  v209 = v260;
  v210 = v261;
  (v238)(v260, v271, v261);
  *&v281 = v209;
  v211 = v262;
  v203(v168, v262, v204);
  *(&v281 + 1) = v168;
  v279[0] = v206;
  v279[1] = v208;
  v279[2] = v210;
  v279[3] = v204;
  v275 = OpaqueTypeConformance2;
  v276 = v251;
  v277 = v244;
  v274 = swift_getWitnessTable();
  v278 = swift_getWitnessTable();
  sub_100151024(&v280, 4uLL, v279);
  v212 = v273;
  v273(v211, v204);
  v213 = v245;
  v245(v271, v210);
  v214 = v208;
  v215 = v257;
  (v257)(v268, v214);
  v216 = v206;
  v217 = v264;
  (v264)(v265, v216);
  v212(v263, v204);
  v213(v260, v210);
  v215(v259, v270);
  return v217(v258, OpaqueTypeMetadata2);
}

void sub_100155940(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = type metadata accessor for EntertainmentEventView(0, a1, a2, a3);
  v9 = sub_100151494(v5, v6, v7, v8);
  v10 = (v9 + *(*v9 + 152));
  v12 = *v10;
  v11 = v10[1];

  sub_100151494(v5, v13, v14, v15);
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001ACB00;
  *(v16 + 32) = Color.init(_:bundle:)();
  *(v16 + 40) = Color.init(_:bundle:)();

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v16;
}

double sub_100155A4C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, a3, a4, a4);
  sub_100151494(v5, v6, v7, v8);
  sub_1000E9E74((a1 & 1) == 0);

  return result;
}

double sub_100155AA8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = type metadata accessor for EntertainmentEventView(0, a4, a5, a4);
  sub_100151494(v6, v7, v8, v9);
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  sub_1000E8970(v10);

  return result;
}

uint64_t sub_100155B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v6 = sub_100009F70(&qword_10021A8A8, &qword_1001BA440);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100009F70(&qword_10021A8B0, &qword_1001B51F0);
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v38 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(&qword_10021A8B8, &qword_1001B01D0);
  v17 = __chkstk_darwin(v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v37 - v21;
  v46 = a1;
  v23 = *(a1 + 16);
  if (v23)
  {
    v42 = v20;
    v43 = a4;
    if (*(v23 + 88) && (*(v23 + 80) & 1) != 0)
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        if (*(v23 + 32) > 1u || *(v23 + 32))
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v30 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
        }

        v31 = type metadata accessor for EntertainmentEventView(0, v44, v45, v29);
        v32 = v46 + *(v31 + 44);
        v33 = *v32;
        if (*(v32 + 8) == 1)
        {
          if ((v33 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v37[1] = static os_log_type_t.fault.getter();
          v34 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v35 = v38;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100027EB0(v33, 0);
          (*(v39 + 8))(v35, v40);
          if (v47 != 1)
          {
LABEL_17:
            (*(v7 + 56))(v19, 1, 1, v6);
            v36 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
            v47 = v11;
            v48 = v36;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000DBA94(v19);
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
    }

LABEL_8:
    v25 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v25);
    v26 = v45;
    *&v37[-8] = v44;
    *&v37[-6] = v26;
    *&v37[-4] = v46;
    sub_100042DC4();
    ToolbarItem<>.init(placement:content:)();
    v27 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v7 + 16))(v19, v9, v6);
    (*(v7 + 56))(v19, 0, 1, v6);
    v47 = v11;
    v48 = v27;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000DBA94(v19);
    (*(v7 + 8))(v9, v6);
    (*(v41 + 8))(v13, v11);
LABEL_9:
    sub_1000DB938();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_1000DBA94(v22);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001561DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for EntertainmentEventView(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v10 + 32))(v14 + v13, v12, v9);
  *a5 = 0;
  *(a5 + 8) = sub_1001574CC;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_100156320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntertainmentEventView(0, a2, a3, v10);
  sub_100151494(v11, v12, v13, v14);
  v15 = *(a1 + 16);
  if (v15)
  {

    sub_1000EAB68(0, 2, 0, 3u, v15);

    sub_100024868(v9);
    DismissAction.callAsFunction()();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001564C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EntertainmentEventView(0, v11, v12, v13);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  type metadata accessor for EntertainmentEventViewModel(0, a2, a3, v21);
  (*(v8 + 16))(v10, a1, a2);
  v22 = sub_1000E8580(v10);
  KeyPath = swift_getKeyPath();
  sub_1001512F4(v22, KeyPath, 0, v18);
  swift_getWitnessTable();
  v24 = *(v15 + 16);
  v24(v20, v18, v14);
  v25 = *(v15 + 8);
  v25(v18, v14);
  v24(a4, v20, v14);
  return v25(v20, v14);
}

void sub_1001566F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, a2, a3, a4);
  sub_100151494(v5, v6, v7, v8);
  if (*(a1 + 16))
  {

    sub_1000EAB08(v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1001567BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[179] = a5;
  v5[173] = a4;
  v5[167] = a3;
  v6 = type metadata accessor for EntertainmentEventView(0, a4, a5, a4);
  v5[185] = v6;
  v7 = *(v6 - 8);
  v5[186] = v7;
  v5[187] = *(v7 + 64);
  v5[188] = swift_task_alloc();
  v5[189] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[190] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[191] = v9;
  v5[192] = v8;

  return _swift_task_switch(sub_1001568D8, v9, v8);
}

uint64_t sub_1001568D8()
{
  v1 = v0[189];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[179];
  v5 = v0[173];
  v13 = v5;
  v16 = v0[167];
  v17 = v0[188];
  v14 = v4;
  v15 = *(v2 + 16);
  v15(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[193] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = *(v2 + 32);
  v8(v7 + v6, v1, v3);
  v9 = swift_task_alloc();
  v0[194] = v9;
  *(v9 + 16) = &unk_1001BA3B0;
  *(v9 + 24) = v7;
  swift_asyncLet_begin();
  (v15)(v17, v16, v3);
  v10 = swift_allocObject();
  v0[195] = v10;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  v8(v10 + v6, v17, v3);
  v11 = swift_task_alloc();
  v0[196] = v11;
  *(v11 + 16) = &unk_1001BA3D0;
  *(v11 + 24) = v10;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_100156B30()
{

  return _swift_asyncLet_finish(v0 + 16, v1);
}

uint64_t sub_100156BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100156C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100156C7C, 0, 0);
}

uint64_t sub_100156C7C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100156D10, v2, v1);
}

uint64_t sub_100156D10()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for EntertainmentEventView(0, v2, v1, v3);
  v0[6] = sub_100151494(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10005983C;

  return sub_1000EA520();
}

uint64_t sub_100156DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100156DF0, 0, 0);
}

uint64_t sub_100156DF0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100156E84, v2, v1);
}

uint64_t sub_100156E84()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for EntertainmentEventView(0, v2, v1, v3);
  v0[6] = sub_100151494(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_100057EA0;

  return sub_1000E9EAC();
}

__n128 sub_100156FA4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100156FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;

  v8 = *(v5 + 40);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v5 + 44)), *(v7 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_10015713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000D890;

  return sub_1001567BC(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_100157234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000214E4;

  return sub_100156C58(v4 + v9, v6, v7);
}

uint64_t sub_10015731C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000214E4;

  return sub_100156DCC(v4 + v9, v6, v7);
}

double sub_100157418(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for EntertainmentEventView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100155AA8(a1, a2, v10, v7, v8);
}