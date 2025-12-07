uint64_t sub_100001BB0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10000243C(a1);
  (*(*(*(v2 + qword_100022208) - 8) + 8))(a1);
  return v5;
}

void *sub_100001C74(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100022208);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_100001DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_100022208), *((swift_isaMask & *v4) + qword_100022208 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100001E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_100022208), *((swift_isaMask & *v4) + qword_100022208 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100001F78(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001FF0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002070@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000020B8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000020E4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10000216C(uint64_t a1)
{
  v2 = sub_10000260C(&qword_100021640, type metadata accessor for Role, &unk_10001480C);
  v3 = sub_10000260C(&qword_100021648, type metadata accessor for Role, &unk_1000147AC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002228@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002270(uint64_t a1)
{
  v2 = sub_10000260C(&qword_100021CA0, type metadata accessor for LaunchOptionsKey, &unk_10001489C);
  v3 = sub_10000260C(&qword_100021650, type metadata accessor for LaunchOptionsKey, &unk_100014698);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002330()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002370(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000023C8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000243C(uint64_t a1)
{
  __chkstk_darwin(a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10000260C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100002774(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002784(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000027A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1000027E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002854(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000289C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_100002904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_10000391C(&qword_100021660, &qword_1000149B8);
  __chkstk_darwin(v5, v6);
  v8 = &v27 - v7;
  v9 = sub_10000391C(&qword_100021668, &qword_1000149C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v27 - v12;
  v14 = sub_10000391C(&qword_100021670, &qword_1000149C8);
  v15 = v14 - 8;
  __chkstk_darwin(v14, v16);
  v18 = &v27 - v17;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = sub_10000391C(&qword_100021678, &qword_1000149D0);
  sub_100002BE4(a1, a2, &v8[*(v19 + 44)]);
  sub_100003C64(&qword_100021680, &qword_100021660, &qword_1000149B8, &protocol conformance descriptor for VStack<A>);
  View.allowsSecureDrawing()();
  sub_100003A1C(v8, &qword_100021660, &qword_1000149B8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v10 + 32))(v18, v13, v9);
  v20 = &v18[*(v15 + 44)];
  v21 = v34;
  *(v20 + 4) = v33;
  *(v20 + 5) = v21;
  *(v20 + 6) = v35;
  v22 = v30;
  *v20 = v29;
  *(v20 + 1) = v22;
  v23 = v32;
  *(v20 + 2) = v31;
  *(v20 + 3) = v23;
  LOBYTE(a1) = static Edge.Set.all.getter();
  v24 = v28;
  sub_1000039AC(v18, v28);
  v25 = v24 + *(sub_10000391C(&qword_100021688, &qword_1000149D8) + 36);
  *v25 = a1;
  result = 0.0;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  return result;
}

uint64_t sub_100002BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000391C(&qword_100021690, &qword_1000149E0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v18 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v14 = sub_10000391C(&qword_100021698, &qword_1000149E8);
  sub_100002D58(a1, a2, &v13[*(v14 + 44)]);
  sub_100003D04(v13, v10, &qword_100021690, &qword_1000149E0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v15 = sub_10000391C(&qword_1000216A0, &qword_1000149F0);
  sub_100003D04(v10, a3 + *(v15 + 48), &qword_100021690, &qword_1000149E0);
  v16 = a3 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100003A1C(v13, &qword_100021690, &qword_1000149E0);
  return sub_100003A1C(v10, &qword_100021690, &qword_1000149E0);
}

uint64_t sub_100002D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v81 = v5;
  v82 = v6;
  __chkstk_darwin(v5, v7);
  v78 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000391C(&qword_1000216A8, &qword_1000149F8);
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  __chkstk_darwin(v9, v11);
  v76 = &v68 - v12;
  v83 = sub_10000391C(&qword_1000216B0, &unk_100014A00) - 8;
  v14 = __chkstk_darwin(v83, v13);
  v84 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v85 = &v68 - v17;
  v18 = sub_10000391C(&qword_1000216B8, &unk_1000152F0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v68 - v20;
  v22 = sub_10000391C(&qword_1000216C0, &qword_100014A10);
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v68 - v24;
  v89 = a1;
  v90 = a2;
  v68 = a1;
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();

  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v26 = type metadata accessor for SymbolRenderingMode();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v77 = Image.symbolRenderingMode(_:)();

  sub_100003A1C(v25, &qword_1000216C0, &qword_100014A10);
  v75 = static HierarchicalShapeStyle.secondary.getter();
  v27 = type metadata accessor for Font.Design();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  v74 = static Font.system(size:weight:design:)();
  sub_100003A1C(v21, &qword_1000216B8, &unk_1000152F0);
  KeyPath = swift_getKeyPath();
  v89 = a1;
  v90 = a2;
  State.wrappedValue.getter();
  v28 = *(v88 + 32);
  v29 = *(v88 + 40);

  v89 = v28;
  v90 = v29;
  sub_100003B2C();
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  static Font.title.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v28) = v38;

  sub_100003B80(v30, v32, v34 & 1);

  LODWORD(v89) = static HierarchicalShapeStyle.tertiary.getter();
  v39 = Text.foregroundStyle<A>(_:)();
  v69 = v40;
  v70 = v41;
  v71 = v42;
  sub_100003B80(v35, v37, v28 & 1);

  v43 = swift_allocObject();
  v44 = v68;
  *(v43 + 16) = v68;
  *(v43 + 24) = a2;
  v86 = v44;
  v87 = a2;

  sub_10000391C(&qword_1000216D8, &qword_100014A50);
  sub_100003DC0(&qword_1000216E0, &qword_1000216D8, &qword_100014A50, sub_100003BE0);
  v45 = v76;
  Button.init(action:label:)();
  v46 = v78;
  PlainButtonStyle.init()();
  sub_100003C64(&qword_1000216F8, &qword_1000216A8, &qword_1000149F8, &protocol conformance descriptor for Button<A>);
  sub_100003CAC();
  v47 = v85;
  v48 = v79;
  v49 = v81;
  View.buttonStyle<A>(_:)();
  (*(v82 + 8))(v46, v49);
  (*(v80 + 8))(v45, v48);
  v50 = [objc_opt_self() darkGrayColor];
  v51 = Color.init(_:)();
  LOBYTE(v49) = static Edge.Set.all.getter();
  v52 = v47 + *(sub_10000391C(&qword_100021708, &qword_100014A60) + 36);
  *v52 = v51;
  *(v52 + 8) = v49;
  v53 = (v47 + *(v83 + 44));
  v54 = *(type metadata accessor for RoundedRectangle() + 20);
  v55 = enum case for RoundedCornerStyle.continuous(_:);
  v56 = type metadata accessor for RoundedCornerStyle();
  (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
  __asm { FMOV            V0.2D, #25.0 }

  *v53 = _Q0;
  *&v53[*(sub_10000391C(&qword_100021710, &qword_100014A68) + 36)] = 256;
  v62 = v84;
  sub_100003D04(v47, v84, &qword_1000216B0, &unk_100014A00);
  v63 = v72;
  *v72 = v77;
  *(v63 + 2) = v75;
  v64 = v74;
  v63[2] = KeyPath;
  v63[3] = v64;
  v65 = v69;
  v63[4] = v39;
  v63[5] = v65;
  LOBYTE(v55) = v70 & 1;
  *(v63 + 48) = v70 & 1;
  v63[7] = v71;
  v66 = sub_10000391C(&qword_100021718, &qword_100014A70);
  sub_100003D04(v62, v63 + *(v66 + 64), &qword_1000216B0, &unk_100014A00);

  sub_100003D6C(v39, v65, v55);

  sub_100003A1C(v85, &qword_1000216B0, &unk_100014A00);
  sub_100003A1C(v62, &qword_1000216B0, &unk_100014A00);
  sub_100003B80(v39, v65, v55);
}

uint64_t sub_10000359C(uint64_t a1, uint64_t a2)
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  sub_100010C64();
}

void sub_1000035F4(uint64_t a3@<X8>)
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();

  sub_100003B2C();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.title.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_100003B80(v4, v6, v8 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100003B80(v9, v11, v13 & 1);

  sub_10000391C(&qword_100021720, &qword_100014A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014910;
  v22 = static Edge.Set.top.getter();
  *(inited + 32) = v22;
  v23 = static Edge.Set.bottom.getter();
  *(inited + 33) = v23;
  v24 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v18 & 1;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_100014910;
  v35 = static Edge.Set.leading.getter();
  *(v34 + 32) = v35;
  v36 = static Edge.Set.trailing.getter();
  *(v34 + 33) = v36;
  v37 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v35)
  {
    v37 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v36)
  {
    v37 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v33;
  *(a3 + 24) = v20;
  *(a3 + 32) = v24;
  *(a3 + 40) = v26;
  *(a3 + 48) = v28;
  *(a3 + 56) = v30;
  *(a3 + 64) = v32;
  *(a3 + 72) = 0;
  *(a3 + 80) = v37;
  *(a3 + 88) = v38;
  *(a3 + 96) = v39;
  *(a3 + 104) = v40;
  *(a3 + 112) = v41;
  *(a3 + 120) = 0;
}

uint64_t sub_10000391C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003964(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021670, &qword_1000149C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003A1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000391C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003A7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100003AA8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100003B2C()
{
  result = qword_1000216D0;
  if (!qword_1000216D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216D0);
  }

  return result;
}

uint64_t sub_100003B80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003B90()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100003BE0()
{
  result = qword_1000216E8;
  if (!qword_1000216E8)
  {
    sub_100003964(&qword_1000216F0, &qword_100014A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216E8);
  }

  return result;
}

uint64_t sub_100003C64(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003964(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003CAC()
{
  result = qword_100021700;
  if (!qword_100021700)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021700);
  }

  return result;
}

uint64_t sub_100003D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000391C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003D6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003964(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003E44()
{
  result = qword_100021730;
  if (!qword_100021730)
  {
    sub_100003964(&qword_100021670, &qword_1000149C8);
    sub_100003964(&qword_100021660, &qword_1000149B8);
    sub_100003C64(&qword_100021680, &qword_100021660, &qword_1000149B8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021730);
  }

  return result;
}

id sub_100003F74()
{
  type metadata accessor for ScreenContinuityShellBundleMarkerClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100022218 = result;
  return result;
}

void sub_100003FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  sub_10000391C(&qword_1000217D8, &qword_100014B50);
  State.wrappedValue.getter();
  swift_getKeyPath();
  v6[0] = v5;
  sub_1000042B8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v5 + 16, v6);
  sub_100004374(v6, v6[3]);
  v3 = dispatch thunk of MicaAnimationPrimitives.packageLayer.getter();

  sub_1000043B8(v6);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of CAPackageViewLayer.packageLayer.setter();
  }
}

uint64_t sub_100004104(uint64_t a1, uint64_t a2)
{
  sub_10000391C(&qword_1000217D8, &qword_100014B50);
  State.wrappedValue.getter();
  sub_10000F3E0();
}

uint64_t sub_10000415C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for CAPackageViewLayer();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  _CALayerView.init(type:onUpdate:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = (a1 + *(sub_10000391C(&qword_1000217D0, &qword_100014B48) + 36));
  *v7 = sub_1000042A8;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;
}

uint64_t sub_100004268()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000042B8()
{
  result = qword_1000217E0;
  if (!qword_1000217E0)
  {
    type metadata accessor for MicaAnimationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217E0);
  }

  return result;
}

uint64_t sub_100004310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100004374(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000043B8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100004408()
{
  result = qword_1000217E8;
  if (!qword_1000217E8)
  {
    sub_100003964(&qword_1000217D0, &qword_100014B48);
    sub_100004494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217E8);
  }

  return result;
}

unint64_t sub_100004494()
{
  result = qword_1000217F0;
  if (!qword_1000217F0)
  {
    sub_100003964(&qword_1000217F8, &unk_100014B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217F0);
  }

  return result;
}

unint64_t sub_100004520@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ScreenContinuityActivity();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_100004578();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_100004578()
{
  result = qword_1000218A0;
  if (!qword_1000218A0)
  {
    type metadata accessor for ScreenContinuityActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218A0);
  }

  return result;
}

uint64_t sub_1000045E8(uint64_t a1)
{
  v2 = sub_100007E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004624(uint64_t a1)
{
  v2 = sub_100007E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004744@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100004780(uint64_t a1)
{
  v2 = sub_100007E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000047BC(uint64_t a1)
{
  v2 = sub_100007E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000483C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_10000391C(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v15 - v12;
  sub_100004374(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v13, v9);
}

Swift::Int sub_100004970()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000049E4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

id sub_100004A9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScreenContinuityActivity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100004B64()
{
  result = qword_1000218E8;
  if (!qword_1000218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218E8);
  }

  return result;
}

unint64_t sub_100004BBC()
{
  result = qword_1000218F0;
  if (!qword_1000218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218F0);
  }

  return result;
}

unint64_t sub_100004C14()
{
  result = qword_1000218F8;
  if (!qword_1000218F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218F8);
  }

  return result;
}

unint64_t sub_100004C6C()
{
  result = qword_100021900;
  if (!qword_100021900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021900);
  }

  return result;
}

unint64_t sub_100004CC4()
{
  result = qword_100021908;
  if (!qword_100021908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021908);
  }

  return result;
}

unint64_t sub_100004D1C()
{
  result = qword_100021910;
  if (!qword_100021910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021910);
  }

  return result;
}

uint64_t sub_100004D70()
{
  v1[2] = v0;
  v2 = type metadata accessor for ActivityPresentationOptions();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10000391C(&qword_100021938, &qword_100014E18);
  v1[6] = swift_task_alloc();
  v3 = sub_10000391C(&qword_100021920, &qword_100014DF8);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004F90, v6, v5);
}

uint64_t sub_100004F90()
{
  v56 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[11];

  static Logger.angel.getter();
  v4._countAndFlagsBits = 0xD000000000000077;
  v4._object = 0x8000000100017830;
  v5._object = 0x80000001000178D0;
  v5._countAndFlagsBits = 0xD000000000000012;
  Logger.debugMarker(_:file:line:function:)(0, v4, 37, v5);
  v6 = *(v3 + 8);
  v6(v1, v2);
  sub_10000391C(&qword_100021928, &qword_100014E00);
  v7 = static Activity.activities.getter();
  if (v7 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();

    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
LABEL_3:
      static Logger.angel.getter();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[13];
      v13 = v0[10];
      if (!v11)
      {
LABEL_6:

        v6(v12, v13);
        goto LABEL_7;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "We already have an activity running";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v9, v10, v15, v14, 2u);

      goto LABEL_6;
    }
  }

  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (!v20)
  {
    static Logger.angel.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v9, v10);
    v12 = v0[14];
    v13 = v0[10];
    if (!v31)
    {
      goto LABEL_6;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Bundle identifier is nil";
    goto LABEL_5;
  }

  v54 = v6;
  v21 = v0[6];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_100004C14();
  sub_100004C6C();
  sub_100004CC4();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_10000391C(&qword_100021940, &qword_100014E20);
  v23 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100014910;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v28, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v23);
  v29(v28 + v25, enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:), v23);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
  v30 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();

  *(v0[2] + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity) = v30;

  v32 = Activity.id.getter();
  sub_100005774(v32, v33);

  static Logger.angel.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  v51 = v35;
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[15];
  v52 = v0[10];
  v53 = v0[9];
  v38 = v0[7];
  v39 = v0[8];
  v40 = v0[4];
  v41 = v0[5];
  v42 = v0[3];
  if (v36)
  {
    v50 = v0[5];
    v43 = swift_slowAlloc();
    v49 = v42;
    v44 = swift_slowAlloc();
    v55 = v44;
    *v43 = 136446210;
    v45 = Activity.id.getter();
    v48 = v37;
    v47 = sub_100007624(v45, v46, &v55);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v34, v51, "Successfully requested activity with id %{public}s", v43, 0xCu);
    sub_1000043B8(v44);

    v54(v48, v52);
    (*(v40 + 8))(v50, v49);
    (*(v39 + 8))(v53, v38);
  }

  else
  {

    v54(v37, v52);
    (*(v40 + 8))(v41, v42);
    (*(v39 + 8))(v53, v38);
  }

LABEL_7:

  v16 = v0[1];

  return v16();
}

void sub_100005774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6, v7);
  sub_10000626C(a1, a2);
  v8 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer;
  [*(v3 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) invalidate];
  v9 = *(v3 + v8);
  *(v3 + v8) = 0;

  sub_100006B28(a1, a2);
}

uint64_t sub_100005994()
{
  v1[3] = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_10000391C(&qword_100021918, &qword_100014DF0);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v5;
  v1[14] = v4;

  return _swift_task_switch(sub_100005B28, v5, v4);
}

uint64_t sub_100005B28(uint64_t a1)
{
  v36 = v1;
  v2 = v1[11];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[3];
  static Logger.angel.getter();
  v6._countAndFlagsBits = 0xD000000000000077;
  v6._object = 0x8000000100017830;
  v7._object = 0x80000001000178B0;
  v7._countAndFlagsBits = 0xD000000000000015;
  Logger.debugMarker(_:file:line:function:)(0, v6, 89, v7);
  v8 = *(v4 + 8);
  v8(v2, v3);
  v9 = *(v5 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity);
  v1[15] = v9;
  if (v9)
  {

    static Logger.angel.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[10];
    v14 = v1[8];
    if (v12)
    {
      v33 = v1[10];
      v15 = swift_slowAlloc();
      v32 = v14;
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136446210;
      v1[2] = v9;

      sub_10000391C(&qword_100021928, &qword_100014E00);
      v17 = String.init<A>(describing:)();
      v19 = sub_100007624(v17, v18, &v35);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Ending activity %{public}s", v15, 0xCu);
      sub_1000043B8(v16);

      v21 = v32;
      v20 = v33;
    }

    else
    {

      v20 = v13;
      v21 = v14;
    }

    v8(v20, v21);
    v24 = v1[7];
    v25 = v1[3];
    sub_1000060F8();
    v26 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer;
    [*(v25 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) invalidate];
    v27 = *(v25 + v26);
    *(v25 + v26) = 0;

    dispatch thunk of Activity.content.getter();
    v28 = sub_10000391C(&qword_100021920, &qword_100014DF8);
    (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
    static ActivityUIDismissalPolicy.immediate.getter();
    v34 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v29 = swift_task_alloc();
    v1[16] = v29;
    *v29 = v1;
    v29[1] = sub_100005EB0;
    v30 = v1[6];
    v31 = v1[7];

    return v34(v31, v30);
  }

  else
  {

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_100005EB0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);

  (*(v4 + 8))(v3, v5);
  sub_100003A1C(v2, &qword_100021918, &qword_100014DF0);
  v6 = *(v1 + 112);
  v7 = *(v1 + 104);

  return _swift_task_switch(sub_100006060, v7, v6);
}

uint64_t sub_100006060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000060F8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion;
  v8 = *(v0 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion);
  if (v8)
  {
    v9 = v8;
    [v9 invalidate];
    v10 = *(v0 + v7);
    *(v0 + v7) = 0;

    static Logger.angel.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Assertion Released", v13, 2u);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

void sub_10000626C(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v92 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v77 - v12;
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v77 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v77 - v19;
  v21 = type metadata accessor for ActivityState();
  v23 = __chkstk_darwin(v21, v22);
  v25 = __chkstk_darwin(v23, v24);
  v29 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion;
  if (*(v2 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion))
  {
    static Logger.angel.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "We already have an assertion running", v32, 2u);
    }

    (*(v5 + 8))(v9, v4);
    sub_100007DBC();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    return;
  }

  v82 = &v77 - v26;
  v83 = v28;
  v80 = v20;
  v81 = v27;
  v85 = v13;
  v86 = v17;
  v87 = v3;
  v88 = v5;
  v89 = v4;
  v84 = v25;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v36 = v90;
  v37 = v92;
  v38 = v35;
  v35[2] = v34;
  v35[3] = v37;
  v35[4] = v36;
  v39 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100007DB0;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007598;
  aBlock[3] = &unk_10001D438;
  v42 = _Block_copy(aBlock);

  v43 = [v39 initWithExplanation:v40 sessionIdentifier:v41 duration:v42 invalidationHandler:5.0];
  _Block_release(v42);

  if ([v43 state] == 1)
  {
    v44 = *(v2 + v29);
    *(v2 + v29) = v43;
    v45 = v43;

    v46 = v85;
    static Logger.angel.getter();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_100007624(v92, v36, aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "Assertion acquired [id: %{public}s]", v49, 0xCu);
      sub_1000043B8(v50);
    }

    else
    {
    }

    (*(v88 + 8))(v46, v89);
    return;
  }

  v51 = v86;
  if (!*(v2 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity))
  {
    goto LABEL_20;
  }

  v78 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity;
  v79 = v2;
  v85 = v43;

  if (Activity.id.getter() == v92 && v52 == v90)
  {

LABEL_15:
    v54 = v82;
    dispatch thunk of Activity.activityState.getter();
    v55 = v81;
    v56 = *(v81 + 104);
    v58 = v83;
    v57 = v84;
    v56(v83, enum case for ActivityState.dismissed(_:), v84);
    v59 = static ActivityState.== infix(_:_:)();
    v60 = *(v55 + 8);
    v60(v58, v57);
    v60(v54, v57);
    if (v59 & 1) != 0 || (v61 = v82, dispatch thunk of Activity.activityState.getter(), v63 = v83, v62 = v84, v56(v83, enum case for ActivityState.ended(_:), v84), v64 = static ActivityState.== infix(_:_:)(), v60(v63, v62), v60(v61, v62), (v64))
    {
      v65 = v80;
      static Logger.angel.getter();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Assertion acquisition failed due to activity having already ended", v68, 2u);
      }

      else
      {
      }

      v76 = v79;
      (*(v88 + 8))(v65, v89);
      *(v76 + v78) = 0;

      return;
    }

    goto LABEL_19;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    goto LABEL_15;
  }

LABEL_19:

  v43 = v85;
  v51 = v86;
LABEL_20:
  static Logger.angel.getter();
  v69 = v90;

  v70 = v43;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136446466;
    *(v73 + 4) = sub_100007624(v92, v69, aBlock);
    *(v73 + 12) = 2050;
    *(v73 + 14) = [v70 state];

    _os_log_impl(&_mh_execute_header, v71, v72, "Acquire assertion failed [id:%{public}s, \nstate: %{public}lu]", v73, 0x16u);
    sub_1000043B8(v74);
  }

  else
  {
  }

  (*(v88 + 8))(v51, v89);
  sub_100007DBC();
  swift_allocError();
  *v75 = 2;
  swift_willThrow();
}

void sub_100006B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v45 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v41 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v41 - v20;
  Date.init()();
  v22 = (sub_100007C2C(0xBB9uLL) + 600);
  v46 = v21;
  Date.addingTimeInterval(_:)();
  static Logger.angel.getter();
  v23 = *(v10 + 16);
  v47 = v18;
  v23(v14, v18, v9);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v24, v25))
  {

    v34 = *(v10 + 8);
    v34(v14, v9);
    (*(v5 + 8))(v8, v4);
    v33 = v48;
    v32 = v45;
    goto LABEL_6;
  }

  v42 = v5;
  v43 = v4;
  v44 = v3;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  aBlock[0] = v27;
  *v26 = 136315394;
  sub_100007D18();
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  v41 = *(v10 + 8);
  v41(v14, v9);
  v31 = sub_100007624(v28, v30, aBlock);

  *(v26 + 4) = v31;
  *(v26 + 12) = 2048;
  if (v22 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v22 < 9.22337204e18)
  {
    *(v26 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v24, v25, "Next scheduled prominent assertion at %s, in %ld seconds.", v26, 0x16u);
    sub_1000043B8(v27);

    (*(v42 + 8))(v8, v43);
    v3 = v44;
    v32 = v45;
    v33 = v48;
    v34 = v41;
LABEL_6:
    v35 = objc_opt_self();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v32;
    v37[4] = v33;
    aBlock[4] = sub_100007CF4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000704C;
    aBlock[3] = &unk_10001D3E8;
    v38 = _Block_copy(aBlock);

    v39 = [v35 scheduledTimerWithTimeInterval:0 repeats:v38 block:v22];
    _Block_release(v38);
    v34(v47, v9);
    v34(v46, v9);
    v40 = *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer);
    *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) = v39;

    return;
  }

  __break(1u);
}

void sub_100006FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100005774(a3, a4);
  }
}

void sub_10000704C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000070B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v27 = a4;
    static Logger.angel.getter();
    v16 = a1;

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v26 = v9;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v19 = 136446978;
      *(v19 + 4) = sub_100007624(v27, a5, &v28);
      *(v19 + 12) = 2050;
      *(v19 + 14) = [v16 state];
      *(v19 + 22) = 2050;
      *(v19 + 24) = [v16 invalidationReason];

      *(v19 + 32) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *(v19 + 34) = v21;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Assertion invalidated [id: %{public}s, \nstate: %{public}lu, \ninvalidationReason: %{public}lu, \nerror: %@],", v19, 0x2Au);
      sub_100003A1C(v20, &qword_100021948, &qword_100014E28);

      sub_1000043B8(v25);

      (*(v10 + 8))(v13, v26);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v23 = *&v15[OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion];
    *&v15[OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion] = 0;
  }
}

uint64_t sub_100007384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007414;

  return sub_100004D70();
}

uint64_t sub_100007414()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008214;

  return sub_100005994();
}

void sub_100007598(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t sub_100007624(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000076F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007BCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000043B8(v11);
  return v7;
}

unint64_t sub_1000076F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000077FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000077FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007848(a1, a2);
  sub_100007978(&off_10001D050);
  return v3;
}

char *sub_100007848(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100007A64(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007A64(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100007978(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100007AD8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100007A64(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000391C(&qword_100021930, &qword_100014E08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000391C(&qword_100021930, &qword_100014E08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100007BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100007C2C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007CB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007D18()
{
  result = qword_100021950;
  if (!qword_100021950)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021950);
  }

  return result;
}

uint64_t sub_100007D70()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100007DBC()
{
  result = qword_100021958;
  if (!qword_100021958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021958);
  }

  return result;
}

unint64_t sub_100007E10()
{
  result = qword_100021968;
  if (!qword_100021968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021968);
  }

  return result;
}

unint64_t sub_100007E64()
{
  result = qword_100021978;
  if (!qword_100021978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenContinuityActivity.ProminenceAssertionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenContinuityActivity.ProminenceAssertionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008058()
{
  result = qword_100021980;
  if (!qword_100021980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021980);
  }

  return result;
}

unint64_t sub_1000080B0()
{
  result = qword_100021988;
  if (!qword_100021988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021988);
  }

  return result;
}

unint64_t sub_100008108()
{
  result = qword_100021990;
  if (!qword_100021990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021990);
  }

  return result;
}

unint64_t sub_100008160()
{
  result = qword_100021998;
  if (!qword_100021998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021998);
  }

  return result;
}

unint64_t sub_1000081B8()
{
  result = qword_1000219A0;
  if (!qword_1000219A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000219A0);
  }

  return result;
}

id sub_100008374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000083DC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v9, v10);
  v11 = objc_allocWithZone(sub_10000391C(&qword_100021A58, &qword_1000150B0));
  v62 = a4;
  v63 = a1;
  v64 = a2;

  v12 = UIHostingController.init(rootView:)();
  sub_10000391C(&qword_100021A60, &qword_1000150B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100015060;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v61 = v13;
  sub_100009694();
  sub_10000391C(&qword_100021A70, &qword_1000150C0);
  sub_1000096EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v5[qword_100021FB0] = v12;
  v14 = v12;
  v60.receiver = v5;
  v60.super_class = sub_10000391C(&qword_100021A40, &qword_100015098);
  v15 = objc_msgSendSuper2(&v60, "initWithNibName:bundle:", 0, 0);
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = qword_100021FB0;
  v19 = [*&v15[qword_100021FB0] view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  [v17 addSubview:v19];

  [v15 addChildViewController:*&v15[v18]];
  v21 = [v15 view];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v23 clearColor];
  [v22 setBackgroundColor:v24];

  v25 = v14;
  v26 = [v25 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  v28 = [v23 clearColor];
  [v27 setBackgroundColor:v28];

  v29 = [v25 view];
  if (!v29)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000391C(&qword_100021A80, &qword_1000150C8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100015070;
  v32 = [v25 view];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v15 view];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v31 + 32) = v38;
  v39 = [v25 view];
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = [v15 view];
  if (!v42)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v31 + 40) = v45;
  v46 = [v25 view];
  if (!v46)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v15 view];
  if (!v49)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v50 = v49;
  v51 = [v49 trailingAnchor];

  v52 = [v48 constraintEqualToAnchor:v51];
  *(v31 + 48) = v52;
  v53 = [v25 view];

  if (!v53)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = [v53 bottomAnchor];

  v55 = [v15 view];
  if (v55)
  {

    v56 = objc_opt_self();

    v57 = [v55 bottomAnchor];

    v58 = [v54 constraintEqualToAnchor:v57];
    *(v31 + 56) = v58;
    sub_100009750();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints:isa];

    return;
  }

LABEL_27:
  __break(1u);
}

void *sub_100008A6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8, v11);
  v29[3] = type metadata accessor for LSAppWorkspaceBackedApplicationLaunchPrimitives();
  v29[4] = &protocol witness table for LSAppWorkspaceBackedApplicationLaunchPrimitives;
  v29[0] = a3;
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_100021570 != -1)
  {
    swift_once();
  }

  v12 = qword_100022218;
  static Locale.current.getter();
  v13 = v12;
  a4[6] = String.init(localized:table:bundle:locale:comment:)();
  a4[7] = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  a4[8] = String.init(localized:table:bundle:locale:comment:)();
  a4[9] = v15;
  a4[10] = 0xD00000000000001BLL;
  a4[11] = 0x8000000100017B90;
  ObservationRegistrar.init()();
  a4[12] = a1;
  a4[13] = a2;
  sub_100004310(v29, (a4 + 14));
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of LiveActivityDelegate.clientName.getter();
  a4[2] = v16;
  a4[3] = v17;
  if (v17)
  {
    v18 = v16;
    v19 = v17;

    v30._object = 0x8000000100017C50;
    v20._object = 0x8000000100017C20;
    v30._countAndFlagsBits = 0xD00000000000001CLL;
    v20._countAndFlagsBits = 0x1000000000000028;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v13, v21, v30);
    sub_10000391C(&qword_100021A90, &qword_1000150D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100015060;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000979C();
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    v23 = static String.localizedStringWithFormat(_:_:)();
    v25 = v24;
    swift_unknownObjectRelease();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v26 = v13;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    v25 = v27;
    swift_unknownObjectRelease();
  }

  sub_1000043B8(v29);
  a4[4] = v23;
  a4[5] = v25;
  return a4;
}

void sub_100008E10(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v91 - v14;
  __chkstk_darwin(v13, v16);
  v18 = &v91 - v17;
  static Logger.angel.getter();
  v19._countAndFlagsBits = 0xD000000000000079;
  v19._object = 0x8000000100017A30;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v20._object = 0x8000000100017AB0;
  Logger.debugMarker(_:file:line:function:)(0, v19, 18, v20);
  v21 = *(v7 + 8);
  v21(v18, v6);
  type metadata accessor for ActivityScene();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v94 = v15;
    v95 = v21;
    type metadata accessor for AngelServer();
    v24 = a1;
    v25 = static AngelServer.sharedInstance.getter();
    v26 = AngelServer.liveActivityDelegate.getter();
    v28 = v27;

    v29 = [objc_allocWithZone(type metadata accessor for ActivitySecureWindow()) initWithWindowScene:v23];
    v30 = *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window) = v29;
    v97 = v29;

    type metadata accessor for LSAppWorkspaceBackedApplicationLaunchPrimitives();
    swift_allocObject();
    v31 = LSAppWorkspaceBackedApplicationLaunchPrimitives.init()();
    type metadata accessor for LiveActivityViewModel(0);
    v32 = swift_allocObject();
    swift_unknownObjectRetain();

    v98 = v26;
    v96 = v31;
    v99 = sub_100008A6C(v26, v28, v31, v32);
    v93 = a2;
    v33 = [a2 role];
    v34 = static UISceneSessionRole.activityAmbient.getter();
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        v92 = v24;
        v51 = v33;
        v52 = static UISceneSessionRole.activityAmbientCompact.getter();
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
        if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
        {
        }

        else
        {
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v57 & 1) == 0)
          {
            v59 = v51;
            v60 = static UISceneSessionRole.activityListItem.getter();
            v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;
            if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
            {
            }

            else
            {
              v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v65 & 1) == 0)
              {
LABEL_23:
                static Logger.angel.getter();
                v83 = v93;
                v84 = Logger.logObject.getter();
                v85 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v84, v85))
                {
                  v86 = swift_slowAlloc();
                  v87 = swift_slowAlloc();
                  v100 = v87;
                  *v86 = 136446210;
                  v102 = [v83 role];
                  type metadata accessor for Role(0);
                  v88 = String.init<A>(describing:)();
                  v90 = sub_100007624(v88, v89, &v100);

                  *(v86 + 4) = v90;
                  _os_log_impl(&_mh_execute_header, v84, v85, "Session role %{public}s not supported", v86, 0xCu);
                  sub_1000043B8(v87);
                }

                v95(v94, v6);
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return;
              }
            }

            v50 = v97;
            v66 = v97;
            [v66 frame];
            Width = CGRectGetWidth(v103);
            [v66 frame];
            v69 = v68;
            v71 = v70;
            v73 = v72;
            v75 = v74;

            v104.origin.x = v69;
            v104.origin.y = v71;
            v104.size.width = v73;
            v104.size.height = v75;
            Height = CGRectGetHeight(v104);
            v77 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
            ActivitySceneMetrics.init(size:cornerRadius:)();
            dispatch thunk of ActivityScene.resolvedMetrics.setter();
            v78 = [objc_opt_self() clearColor];
            dispatch thunk of ActivityScene.backgroundTintColor.setter();
            v102 = v99;

            State.init(wrappedValue:)();
            v79 = v100;
            v80 = v101;
            v81 = objc_allocWithZone(sub_10000391C(&qword_100021A40, &qword_100015098));
            sub_1000083DC(v79, v80, Width, Height);
            v46 = v82;
            v24 = v92;
            goto LABEL_21;
          }
        }

        v58 = objc_allocWithZone(sub_10000391C(&qword_100021A48, &qword_1000150A0));
        v46 = UIHostingController.init(rootView:)();
        v24 = v92;
        v50 = v97;
        goto LABEL_21;
      }
    }

    v6 = v99;
    v102 = v99;

    State.init(wrappedValue:)();
    v43 = v100;
    v44 = v101;
    v45 = objc_allocWithZone(sub_10000391C(&qword_100021A50, &qword_1000150A8));
    v100 = v43;
    v101 = v44;
    v46 = UIHostingController.init(rootView:)();
    v47 = [v46 view];
    if (v47)
    {
      v48 = v47;

      v49 = [objc_opt_self() blackColor];
      [v48 setBackgroundColor:v49];

      v50 = v97;
LABEL_21:
      [v50 setRootViewController:v46];
      [v50 makeKeyAndVisible];

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  static Logger.angel.getter();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "ActivityScene is missing", v41, 2u);
  }

  v21(v11, v6);
}

unint64_t sub_100009694()
{
  result = qword_100021A68;
  if (!qword_100021A68)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A68);
  }

  return result;
}

unint64_t sub_1000096EC()
{
  result = qword_100021A78;
  if (!qword_100021A78)
  {
    sub_100003964(&qword_100021A70, &qword_1000150C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A78);
  }

  return result;
}

unint64_t sub_100009750()
{
  result = qword_100021A88;
  if (!qword_100021A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021A88);
  }

  return result;
}

unint64_t sub_10000979C()
{
  result = qword_100021A98;
  if (!qword_100021A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A98);
  }

  return result;
}

uint64_t sub_1000097F0()
{
  v0 = sub_10000391C(&qword_100021B60, &qword_1000150D8);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100009920(v4, qword_100022220);
  v5 = sub_100009984(v4, qword_100022220);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t *sub_100009920(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100009984(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000099E8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_10000391C(&qword_100021B68, &qword_100015148);
  v1 = *(v26 - 8);
  __chkstk_darwin(v26, v2);
  v4 = &v25 - v3;
  v5 = sub_10000391C(&qword_100021B70, &qword_100015150);
  __chkstk_darwin(v5, v6);
  v8 = &v25 - v7;
  v9 = static VerticalAlignment.center.getter();
  if (qword_100021570 != -1)
  {
    swift_once();
  }

  v10 = qword_100022218;
  v11 = type metadata accessor for CABackedMicaAnimationPrimitives();
  swift_allocObject();
  v12 = v10;
  v13 = CABackedMicaAnimationPrimitives.init(packageName:bundle:)();
  *&v30[8] = v11;
  *&v30[16] = &protocol witness table for CABackedMicaAnimationPrimitives;
  *&v29 = v13;
  type metadata accessor for MicaAnimationModel(0);
  v14 = swift_allocObject();
  ObservationRegistrar.init()();
  sub_100009D4C(&v29, v14 + 16);
  v28 = v14;
  State.init(wrappedValue:)();
  v15 = v29;
  v29 = v9;
  v30[0] = 1;
  *&v30[8] = v15;
  sub_10000391C(&qword_100021B78, &qword_100015158);
  sub_100003C64(&qword_100021B80, &qword_100021B78, &qword_100015158, &protocol conformance descriptor for HStack<A>);
  View.allowsSecureDrawing()();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v1 + 32))(v8, v4, v26);
  v16 = &v8[*(v5 + 36)];
  v17 = v33;
  *(v16 + 4) = v32;
  *(v16 + 5) = v17;
  *(v16 + 6) = v34;
  v18 = *v30;
  *v16 = v29;
  *(v16 + 1) = v18;
  v19 = v31;
  *(v16 + 2) = *&v30[16];
  *(v16 + 3) = v19;
  v20 = sub_10000391C(&qword_100021B88, &qword_100015160);
  v21 = v27;
  v22 = v27 + *(v20 + 36);
  static Material.thin.getter();
  v23 = static Edge.Set.all.getter();
  *(v22 + *(sub_10000391C(&qword_100021B90, &qword_100015168) + 36)) = v23;
  return sub_100009D64(v8, v21);
}

uint64_t sub_100009D4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100009D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021B70, &qword_100015150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009DD8()
{
  result = qword_100021B98;
  if (!qword_100021B98)
  {
    sub_100003964(&qword_100021B88, &qword_100015160);
    sub_100009E90();
    sub_100003C64(&qword_100021BA8, &qword_100021B90, &qword_100015168, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B98);
  }

  return result;
}

unint64_t sub_100009E90()
{
  result = qword_100021BA0;
  if (!qword_100021BA0)
  {
    sub_100003964(&qword_100021B70, &qword_100015150);
    sub_100003964(&qword_100021B78, &qword_100015158);
    sub_100003C64(&qword_100021B80, &qword_100021B78, &qword_100015158, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BA0);
  }

  return result;
}

id sub_100009FC4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8);
  v14 = OBJC_IVAR____TtC21ScreenContinuityShell11AppDelegate_xpcEventQueue;
  sub_10000CC8C(0, &qword_100021D20, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_10000CD38(&qword_100021D28, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000391C(&qword_100021D30, &qword_100015208);
  sub_10000CCD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v15;
  *&v15[v14] = v9;
  v11 = type metadata accessor for AppDelegate();
  v16.receiver = v10;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10000A284(void *a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v57 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v61 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v57 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v57 - v19;
  __chkstk_darwin(v18, v21);
  v23 = &v57 - v22;
  v24 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v24))
  {
    v59 = a2;
    v25 = String.init(cString:)();
    v27 = v26;
    static Logger.angel.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    v30 = os_log_type_enabled(v28, v29);
    v60 = a1;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v58 = v7;
      v33 = v9;
      v34 = v8;
      v35 = v32;
      v62 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100007624(v25, v27, &v62);
      _os_log_impl(&_mh_execute_header, v28, v29, "Received %s event from rapport", v31, 0xCu);
      sub_1000043B8(v35);
      v8 = v34;
      v9 = v33;
      v7 = v58;
    }

    v36 = *(v9 + 8);
    v36(v20, v8);
    if (v25 == 0x7265536C6C656853 && v27 == 0xEB00000000726576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static Logger.angel.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v61 = v36;
        v40 = v39;
        v41 = v8;
        v42 = swift_slowAlloc();
        v62 = v42;
        *v40 = 136446210;
        *(v40 + 4) = sub_100007624(0x7265536C6C656853, 0xEB00000000726576, &v62);
        _os_log_impl(&_mh_execute_header, v37, v38, "Received %{public}s event from rapport, starting session bootstrap", v40, 0xCu);
        sub_1000043B8(v42);

        v61(v16, v41);
      }

      else
      {

        v36(v16, v8);
      }

      static TaskPriority.userInitiated.getter();
      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      v49[2] = 0;
      v49[3] = 0;
      v49[4] = v48;
      v49[5] = v60;
      swift_unknownObjectRetain();
      sub_10000B618(0, 0, v7, &unk_1000151E8, v49);

      return sub_10000CA0C(v7);
    }

    else
    {
      static Logger.angel.getter();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = v36;
        v53 = swift_slowAlloc();
        v54 = v8;
        v55 = swift_slowAlloc();
        v62 = v55;
        *v53 = 136446210;
        v56 = sub_100007624(v25, v27, &v62);

        *(v53 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s is unknown, ignoring and replying if needed", v53, 0xCu);
        sub_1000043B8(v55);

        v52(v61, v54);
      }

      else
      {

        v36(v61, v8);
      }

      return sub_10000A924(v60);
    }
  }

  else
  {
    static Logger.angel.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to parse XPC event name, event malformed, returning without replying", v45, 2u);

      return (*(v9 + 8))(v23, v8);
    }

    else
    {

      return (*(v9 + 8))(v23, v8);
    }
  }
}

uint64_t sub_10000A924(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_BOOL(a1, "replyRequired");
  if (result)
  {
    if (xpc_dictionary_create_reply(a1))
    {
      xpc_dictionary_send_reply();

      return swift_unknownObjectRelease();
    }

    else
    {
      static Logger.angel.getter();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to create reply, a RunningBoardAssertion has probably leaked", v10, 2u);
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_10000AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_10000AB88, 0, 0);
}

uint64_t sub_10000AB88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    static Logger.angel.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Starting Bootstrap", v4, 2u);
    }

    v5 = v0[17];
    v6 = v0[13];
    v7 = v0[14];

    v8 = *(v7 + 8);
    v0[19] = v8;
    v8(v5, v6);
    v0[20] = type metadata accessor for AngelServer();
    v0[21] = type metadata accessor for MainActor();
    v0[22] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000AD48, v10, v9);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10000AD48()
{

  *(v0 + 184) = static AngelServer.sharedInstance.getter();

  return _swift_task_switch(sub_10000ADBC, 0, 0);
}

uint64_t sub_10000ADBC()
{
  v1 = type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistrationVendor();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_10000CD38(&qword_100021D10, type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistrationVendor, &unk_100015558);
  v0[2] = v2;
  v0[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000AEAC, v4, v3);
}

uint64_t sub_10000AEAC()
{

  AngelServer.provideDisplayRegistrarVendorIfNeeded(_:)();
  sub_1000043B8((v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_10000AF58;

  return AngelServer.bootstrapSession()();
}

uint64_t sub_10000AF58()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10000B1AC;
  }

  else
  {
    v2 = sub_10000B06C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B06C(uint64_t a1)
{
  static Logger.angel.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bootstrap complete, replying to Rapport", v4, 2u);
  }

  v5 = v1[23];
  v7 = v1[18];
  v6 = v1[19];
  v8 = v1[16];
  v9 = v1[13];
  v10 = v1[12];

  v6(v8, v9);
  sub_10000A924(v10);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10000B1AC(uint64_t a1)
{
  v19 = v1;
  static Logger.angel.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[26];
    v17 = v1[19];
    v5 = v1[15];
    v6 = v1[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    v1[10] = v4;
    swift_errorRetain();
    sub_10000391C(&qword_100021D18, &qword_100015200);
    v9 = String.init<A>(describing:)();
    v11 = sub_100007624(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to bootstrap session, tearing down session: %{public}s", v7, 0xCu);
    sub_1000043B8(v8);

    v17(v5, v6);
  }

  else
  {
    v12 = v1[19];
    v13 = v1[15];
    v14 = v1[13];

    v12(v13, v14);
  }

  v15 = swift_task_alloc();
  v1[27] = v15;
  *v15 = v1;
  v15[1] = sub_10000B3C8;

  return AngelServer.tearDown()();
}

uint64_t sub_10000B3C8()
{

  return _swift_task_switch(sub_10000B4C4, 0, 0);
}

uint64_t sub_10000B4C4()
{
  sub_10000A924(*(v0 + 96));

  static Logger.angel.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Bootstrap complete, replying to Rapport", v3, 2u);
  }

  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 96);

  v5(v7, v8);
  sub_10000A924(v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10000CA74(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000CA0C(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000B8B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10000BAFC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10000BB58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000C034()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.angel.getter();
  v7._countAndFlagsBits = 0xD000000000000062;
  v7._object = 0x8000000100017DC0;
  v8._object = 0x8000000100017E90;
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  Logger.debugMarker(_:file:line:function:)(0, v7, 71, v8);
  (*(v3 + 8))(v6, v2);
  v9 = *&v1[OBJC_IVAR____TtC21ScreenContinuityShell11AppDelegate_xpcEventQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_10000C8AC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B8B8;
  aBlock[3] = &unk_10001D598;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  xpc_set_event_stream_handler("com.apple.rapport.matching", v9, v11);
  _Block_release(v11);
  return 1;
}

id sub_10000C1F8(void *a1)
{
  v2 = [a1 role];
  v3 = String._bridgeToObjectiveC()();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v4 == v7 && v6 == v9)
  {

LABEL_10:
    v14 = [a1 configuration];
    [v14 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CC8C(0, &qword_100021C90, UISceneConfiguration_ptr);
    if (swift_dynamicCast())
    {
      sub_10000CC8C(0, &qword_100021C98, UIWindowScene_ptr);
      [v15 setSceneClass:swift_getObjCClassFromMetadata()];
      type metadata accessor for DragAndDropSceneDelegate();
      [v15 setDelegateClass:swift_getObjCClassFromMetadata()];
      return v15;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = [a1 configuration];

  return v12;
}

uint64_t sub_10000C450(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v38 - v11;
  __chkstk_darwin(v10, v13);
  v15 = &v38 - v14;
  static Logger.dnd.getter();
  v16._countAndFlagsBits = 0xD000000000000062;
  v16._object = 0x8000000100017DC0;
  v17._object = 0x8000000100017AB0;
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.debugMarker(_:file:line:function:)(0, v16, 151, v17);
  v40 = *(v5 + 8);
  v40(v15, v4);
  v18 = [a2 role];
  v19 = String._bridgeToObjectiveC()();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v20 == v23 && v22 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v28 = a1;
    static Logger.dnd.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Drag-and-drop shield window scene connected", v31, 2u);
    }

    v40(v12, v4);
    type metadata accessor for AngelServer();
    v32 = static AngelServer.sharedInstance.getter();
    AngelServer.dragAndDropShieldWindowSceneContainer.getter();

    dispatch thunk of DragAndDropSceneContainer.populate(with:)();
  }

  else
  {
    v33 = v39;
    static Logger.dnd.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100007624(0x646E615F67617264, 0xED0000706F72645FLL, &v41);
      _os_log_impl(&_mh_execute_header, v34, v35, "Scene with role %s not of class UIWindowScene. Drag and drop will not work.", v36, 0xCu);
      sub_1000043B8(v37);
    }

    return (v40)(v33, v4);
  }
}

uint64_t sub_10000C874()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C8CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C904()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C94C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007414;

  return sub_10000AAB0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000CA0C(uint64_t a1)
{
  v2 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CAE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008214;

  return sub_1000118C8(a1, v4);
}

uint64_t sub_10000CBD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007414;

  return sub_1000118C8(a1, v4);
}

uint64_t sub_10000CC8C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10000CCD4()
{
  result = qword_100021D38;
  if (!qword_100021D38)
  {
    sub_100003964(&qword_100021D30, &qword_100015208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D38);
  }

  return result;
}

uint64_t sub_10000CD38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10000CD84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000CD90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000CDD8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10000CE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v53 = a3;
  v47 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v47, v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Glass();
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12, v13);
  v39 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10000391C(&qword_100021D50, &qword_1000152A8);
  v42 = *(v15 - 8);
  v43 = v15;
  __chkstk_darwin(v15, v16);
  v40 = &v37[-v17];
  v48 = sub_10000391C(&qword_100021D58, &qword_1000152B0);
  __chkstk_darwin(v48, v18);
  v41 = &v37[-v19];
  v20 = sub_10000391C(&qword_100021D60, &qword_1000152B8);
  v49 = *(v20 - 8);
  v50 = v20;
  __chkstk_darwin(v20, v21);
  v46 = &v37[-v22];
  v38 = static VerticalAlignment.center.getter();
  LOBYTE(v59) = 1;
  v51 = a2;
  v52 = a1;
  sub_10000D6E4(a1, a2, v55);
  v78 = v55[12];
  v79 = v55[13];
  v74 = v55[8];
  v75 = v55[9];
  v76 = v55[10];
  v77 = v55[11];
  v70 = v55[4];
  v71 = v55[5];
  v72 = v55[6];
  v73 = v55[7];
  v66 = v55[0];
  v67 = v55[1];
  v68 = v55[2];
  v69 = v55[3];
  v81[12] = v55[12];
  v81[13] = v55[13];
  v81[8] = v55[8];
  v81[9] = v55[9];
  v81[10] = v55[10];
  v81[11] = v55[11];
  v81[4] = v55[4];
  v81[5] = v55[5];
  v81[6] = v55[6];
  v81[7] = v55[7];
  v81[0] = v55[0];
  v81[1] = v55[1];
  v80 = v55[14];
  v82 = v55[14];
  v81[2] = v55[2];
  v81[3] = v55[3];
  sub_100003D04(&v66, v54, &qword_100021D68, &qword_1000152C0);
  sub_100003A1C(v81, &qword_100021D68, &qword_1000152C0);
  *&v56[183] = v77;
  *&v56[199] = v78;
  *&v56[215] = v79;
  *&v56[119] = v73;
  *&v56[135] = v74;
  *&v56[151] = v75;
  *&v56[167] = v76;
  *&v56[55] = v69;
  *&v56[71] = v70;
  *&v56[87] = v71;
  *&v56[103] = v72;
  *&v56[7] = v66;
  *&v56[23] = v67;
  v56[231] = v80;
  *&v56[39] = v68;
  v23 = v59;
  LOBYTE(a1) = static Edge.Set.all.getter();
  v57 = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v58[55] = v62;
  *&v58[71] = v63;
  *&v58[87] = v64;
  *&v58[103] = v65;
  *&v58[7] = v59;
  *&v58[23] = v60;
  *&v58[39] = v61;
  *(&v54[24] + 1) = *&v56[176];
  *(&v54[26] + 1) = *&v56[192];
  *(&v54[28] + 1) = *&v56[208];
  *(&v54[16] + 1) = *&v56[112];
  *(&v54[18] + 1) = *&v56[128];
  *(&v54[20] + 1) = *&v56[144];
  *(&v54[22] + 1) = *&v56[160];
  *(&v54[8] + 1) = *&v56[48];
  *(&v54[10] + 1) = *&v56[64];
  *(&v54[12] + 1) = *&v56[80];
  *(&v54[14] + 1) = *&v56[96];
  *(&v54[2] + 1) = *v56;
  v54[0] = v38;
  v54[1] = 0;
  LOBYTE(v54[2]) = v23;
  *(&v54[30] + 1) = *&v56[224];
  *(&v54[4] + 1) = *&v56[16];
  *(&v54[6] + 1) = *&v56[32];
  *(&v54[31] + 1) = 256;
  LOBYTE(v54[32]) = a1;
  memset(&v54[33], 0, 32);
  LOBYTE(v54[37]) = 1;
  *(&v54[45] + 1) = *&v58[64];
  *(&v54[47] + 1) = *&v58[80];
  *(&v54[49] + 1) = *&v58[96];
  *(&v54[37] + 1) = *v58;
  *(&v54[39] + 1) = *&v58[16];
  *(&v54[41] + 1) = *&v58[32];
  *(&v54[43] + 1) = *&v58[48];
  v54[51] = *(&v65 + 1);
  v24 = v39;
  static Glass.regular.getter();
  v25 = *(v47 + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v11[v25], v26, v27);
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_10000391C(&qword_100021D70, &qword_1000152C8);
  sub_10000E0BC();
  sub_10000E2C4();
  v28 = v40;
  View.glassEffect<A>(_:in:)();
  sub_10000E31C(v11);
  (*(v44 + 8))(v24, v45);
  memcpy(v55, v54, sizeof(v55));
  sub_100003A1C(v55, &qword_100021D70, &qword_1000152C8);
  v29 = v41;
  (*(v42 + 32))(v41, v28, v43);
  v30 = v48;
  v31 = (v29 + *(v48 + 36));
  *v31 = sub_10000E030;
  v31[1] = 0;
  v32 = sub_10000E378();
  v33 = v46;
  View.allowsSecureDrawing()();
  sub_10000E460(v29);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  *(v34 + 32) = v52;
  *(v34 + 40) = v51;

  v54[0] = v30;
  v54[1] = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  View.onTapGesture(count:perform:)();

  return (*(v49 + 8))(v33, v35);
}

uint64_t sub_10000D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[0] = a1;
  v34[1] = a2;
  v8 = sub_10000391C(&qword_1000216B8, &unk_1000152F0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v34 - v10;
  v12 = sub_10000391C(&qword_1000216C0, &qword_100014A10);
  __chkstk_darwin(v12 - 8, v13);
  v15 = v34 - v14;
  *&v54 = a1;
  *(&v54 + 1) = a2;
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();

  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v16 = type metadata accessor for SymbolRenderingMode();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v35 = Image.symbolRenderingMode(_:)();

  sub_100003A1C(v15, &qword_1000216C0, &qword_100014A10);
  v17 = type metadata accessor for Font.Design();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = static Font.system(size:weight:design:)();
  sub_100003A1C(v11, &qword_1000216B8, &unk_1000152F0);
  KeyPath = swift_getKeyPath();
  v20 = static HorizontalAlignment.leading.getter();
  v36[0] = 1;
  sub_10000DBEC(&v54);
  v42 = *&v55[48];
  v43 = *&v55[64];
  v44 = *&v55[80];
  v45 = v55[96];
  v38 = v54;
  v39 = *v55;
  v40 = *&v55[16];
  v41 = *&v55[32];
  v46[0] = v54;
  v46[1] = *v55;
  v46[2] = *&v55[16];
  v46[3] = *&v55[32];
  v46[4] = *&v55[48];
  v46[5] = *&v55[64];
  v46[6] = *&v55[80];
  v47 = v55[96];
  sub_100003D04(&v38, &v50, &qword_100021DC0, &qword_100015330);
  sub_100003A1C(v46, &qword_100021DC0, &qword_100015330);
  *(&v37[4] + 7) = v42;
  *(&v37[5] + 7) = v43;
  *(&v37[6] + 7) = v44;
  *(v37 + 7) = v38;
  *(&v37[1] + 7) = v39;
  *(&v37[2] + 7) = v40;
  BYTE7(v37[7]) = v45;
  *(&v37[3] + 7) = v41;
  v21 = v36[0];
  LOBYTE(v11) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v22 = *&v37[7];
  *(&v51[7] + 1) = *&v37[7];
  HIDWORD(v51[7]) = *&v49[3];
  *(&v51[7] + 9) = *v49;
  DWORD1(v52) = *&v48[3];
  *(&v52 + 1) = *v48;
  v50 = v20;
  LOBYTE(v51[0]) = v21;
  v23 = v37[3];
  *(&v51[4] + 1) = v37[4];
  v24 = v37[4];
  *(&v51[5] + 1) = v37[5];
  v25 = v37[5];
  *(&v51[6] + 1) = v37[6];
  v26 = v37[1];
  *(v51 + 1) = v37[0];
  v27 = v37[0];
  *(&v51[1] + 1) = v37[1];
  *(&v51[2] + 1) = v37[2];
  v28 = v37[2];
  *(&v51[3] + 1) = v37[3];
  LOBYTE(v52) = v11;
  *(&v52 + 1) = v29;
  *&v53[0] = v30;
  *(&v53[0] + 1) = v31;
  *&v53[1] = v32;
  BYTE8(v53[1]) = 0;
  *(a3 + 193) = *(v53 + 9);
  *(a3 + 184) = v53[0];
  *(a3 + 152) = v51[7];
  *(a3 + 168) = v52;
  *(a3 + 72) = v51[2];
  *(a3 + 56) = v51[1];
  *(a3 + 40) = v51[0];
  *(a3 + 24) = v50;
  *(a3 + 136) = v51[6];
  *(a3 + 120) = v51[5];
  *(a3 + 104) = v51[4];
  *(a3 + 88) = v51[3];
  *&v55[65] = v24;
  *&v55[81] = v25;
  *&v55[97] = v37[6];
  *&v55[1] = v27;
  *&v55[17] = v26;
  *&v55[33] = v28;
  v36[192] = 1;
  *a3 = v35;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v18;
  *(a3 + 216) = 0;
  *(a3 + 224) = 1;
  v54 = v20;
  v55[0] = v21;
  v56 = v22;
  *&v55[49] = v23;
  *&v57[3] = *&v49[3];
  *v57 = *v49;
  v58 = v11;
  *&v59[3] = *&v48[3];
  *v59 = *v48;
  v60 = v29;
  v61 = v30;
  v62 = v31;
  v63 = v32;
  v64 = 0;

  sub_100003D04(&v50, v36, &qword_100021DC8, &qword_100015338);
  sub_100003A1C(&v54, &qword_100021DC8, &qword_100015338);
}

uint64_t sub_10000DBEC@<X0>(uint64_t a3@<X8>)
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();

  sub_100003B2C();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.Weight.semibold.getter();
  v9 = Text.fontWeight(_:)();
  v11 = v10;
  v13 = v12;
  sub_100003B80(v4, v6, v8 & 1);

  static Font.subheadline.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_100003B80(v9, v11, v13 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v46 = v20;
  v47 = v19;
  v44 = v21;
  v48 = v22;
  sub_100003B80(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  State.wrappedValue.getter();

  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v16) = v26;
  static Font.subheadline.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  sub_100003B80(v23, v25, v16 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v32 = Text.foregroundStyle<A>(_:)();
  v34 = v33;
  LOBYTE(v23) = v35;
  v37 = v36;
  sub_100003B80(v27, v29, v31 & 1);

  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v51 = v44 & 1;
  *&v54 = v32;
  *(&v54 + 1) = v34;
  LOBYTE(v55) = v23 & 1;
  *(&v55 + 1) = v53[0];
  DWORD1(v55) = *(v53 + 3);
  *(&v55 + 1) = v37;
  *&v56 = v38;
  BYTE8(v56) = 0;
  HIDWORD(v56) = *&v52[3];
  *(&v56 + 9) = *v52;
  *&v57 = v39;
  *(&v57 + 1) = 2;
  v58 = 0;
  *&v50[7] = v54;
  v50[71] = 0;
  *&v50[55] = v57;
  *&v50[39] = v56;
  *&v50[23] = v55;
  *a3 = v47;
  *(a3 + 8) = v46;
  *(a3 + 16) = v44 & 1;
  *(a3 + 24) = v48;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  v40 = *&v50[16];
  *(a3 + 41) = *v50;
  v41 = *&v50[32];
  v42 = *&v50[48];
  *(a3 + 105) = *&v50[64];
  *(a3 + 89) = v42;
  *(a3 + 73) = v41;
  *(a3 + 57) = v40;
  v59[0] = v32;
  v59[1] = v34;
  v60 = v23 & 1;
  *&v61[3] = *(v53 + 3);
  *v61 = v53[0];
  v62 = v37;
  v63 = v38;
  v64 = 0;
  *&v65[3] = *&v52[3];
  *v65 = *v52;
  v66 = v39;
  v67 = 2;
  v68 = 0;
  sub_100003D6C(v47, v46, v44 & 1);

  sub_100003D04(&v54, v49, &qword_100021DD0, &unk_1000153A0);
  sub_100003A1C(v59, &qword_100021DD0, &unk_1000153A0);
  sub_100003B80(v47, v46, v44 & 1);
}

uint64_t sub_10000E058(uint64_t a1, uint64_t a2)
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  sub_100011428();
}

unint64_t sub_10000E0BC()
{
  result = qword_100021D78;
  if (!qword_100021D78)
  {
    sub_100003964(&qword_100021D70, &qword_1000152C8);
    sub_10000E148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D78);
  }

  return result;
}

unint64_t sub_10000E148()
{
  result = qword_100021D80;
  if (!qword_100021D80)
  {
    sub_100003964(&qword_100021D88, &qword_1000152D0);
    sub_10000E1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D80);
  }

  return result;
}

unint64_t sub_10000E1D4()
{
  result = qword_100021D90;
  if (!qword_100021D90)
  {
    sub_100003964(&qword_100021D98, &qword_1000152D8);
    sub_10000E260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D90);
  }

  return result;
}

unint64_t sub_10000E260()
{
  result = qword_100021DA0;
  if (!qword_100021DA0)
  {
    sub_100003964(&qword_100021DA8, &unk_1000152E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DA0);
  }

  return result;
}

unint64_t sub_10000E2C4()
{
  result = qword_100021DB0;
  if (!qword_100021DB0)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DB0);
  }

  return result;
}

uint64_t sub_10000E31C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E378()
{
  result = qword_100021DB8;
  if (!qword_100021DB8)
  {
    sub_100003964(&qword_100021D58, &qword_1000152B0);
    sub_100003964(&qword_100021D70, &qword_1000152C8);
    type metadata accessor for RoundedRectangle();
    sub_10000E0BC();
    sub_10000E2C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DB8);
  }

  return result;
}

uint64_t sub_10000E460(uint64_t a1)
{
  v2 = sub_10000391C(&qword_100021D58, &qword_1000152B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E4C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E51C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000E570@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E5D4()
{
  sub_100003964(&qword_100021D60, &qword_1000152B8);
  sub_100003964(&qword_100021D58, &qword_1000152B0);
  sub_10000E378();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_10000E708()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistration(uint64_t a1)
{
  result = qword_100021E08;
  if (!qword_100021E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E820(uint64_t a1)
{
  sub_10000E8B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E8B0(uint64_t a1)
{
  if (!qword_100021E18)
  {
    type metadata accessor for Registration();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100021E18);
    }
  }
}

char *sub_10000E908()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000391C(&qword_100021E20, &qword_1000153E0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000E938()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC21ScreenContinuityShell47ShellSceneKitBackedConnectedDisplayRegistration_registration;
  swift_beginAccess();
  v11 = type metadata accessor for Registration();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v0 + v10, 1, v11) == 1)
  {
    registerForContinuityDisplay()();
    swift_beginAccess();
    if (v12(v0 + v10, 1, v11) != 1)
    {
      sub_10000EEB8(v0 + v10);
    }

    sub_10000EF20(v9, v0 + v10);
    swift_endAccess();
    static Logger.angel.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Activated registration for continuity displays.", v15, 2u);
    }

    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000EBE0()
{
  v17 = type metadata accessor for Logger();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC21ScreenContinuityShell47ShellSceneKitBackedConnectedDisplayRegistration_registration;
  swift_beginAccess();
  v10 = type metadata accessor for Registration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v9, 1, v10))
  {
    Registration.invalidate()();
  }

  swift_endAccess();
  (*(v11 + 56))(v8, 1, 1, v10);
  swift_beginAccess();
  if (v12(v0 + v9, 1, v10) != 1)
  {
    sub_10000EEB8(v0 + v9);
  }

  sub_10000EF20(v8, v0 + v9);
  swift_endAccess();
  static Logger.angel.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Invalidated registration for continuity displays.", v15, 2u);
  }

  return (*(v1 + 8))(v4, v17);
}

uint64_t sub_10000EEB8(uint64_t a1)
{
  v2 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10000F0C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySecureWindow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F11C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel, "){");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100004310(v1 + 16, a1);
}

uint64_t sub_10000F1DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel, "){");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100004310(v3 + 16, a2);
}

uint64_t sub_10000F29C(uint64_t a1, uint64_t *a2)
{
  sub_100004310(a1, v3);
  swift_getKeyPath();
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel, "){");
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000043B8(v3);
}

uint64_t sub_10000F37C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1000103D0((a1 + 16), a2);
  return swift_endAccess();
}

void sub_10000F3E0()
{
  v1 = v0;
  swift_getKeyPath();
  v9[0] = v0;
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel, "){");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v0 + 16, v9);
  sub_100004374(v9, v10);
  dispatch thunk of MicaAnimationPrimitives.setInitialStates(transitionSpeed:)();
  sub_1000043B8(v9);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v0 + 16, v9);
  sub_100004374(v9, v10);
  v2 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
  if (v2 >> 62)
  {
    v7 = v2;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v7;
    if (v8)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v3 = *(v2 + 32);
      }

      v4 = v3;

      sub_1000043B8(v9);
      swift_getKeyPath();
      v9[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_100004310(v1 + 16, v9);
      sub_100004374(v9, v10);
      v5 = [v4 name];
      if (v5)
      {
        v6 = v5;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of MicaAnimationPrimitives.setCurrentState(to:)();

        sub_1000043B8(v9);
        sub_10000F680();

        return;
      }

      goto LABEL_13;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1000043B8(v9);
}

void sub_10000F680()
{
  v1 = v0;
  swift_getKeyPath();
  v20 = v0;
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel, "){");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v0 + 16, v21);
  sub_100004374(v21, v22);
  v2 = dispatch thunk of MicaAnimationPrimitives.currentState.getter();
  if (!v2)
  {
    sub_1000043B8(v21);
    return;
  }

  v3 = v2;
  sub_1000043B8(v21);
  swift_getKeyPath();
  v21[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v0 + 16, v21);
  sub_100004374(v21, v22);
  v4 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
  v5 = sub_10000F9F8(v3, v4);
  v7 = v6;

  sub_1000043B8(v21);
  if (v7)
  {

    return;
  }

  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v21[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100004310(v1 + 16, v21);
    sub_100004374(v21, v22);
    v9 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
        goto LABEL_8;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v8 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v11 = v8 % v10;
  sub_1000043B8(v21);
  swift_getKeyPath();
  v21[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v1 + 16, v21);
  sub_100004374(v21, v22);
  v12 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * v11 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_20:
  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v14 = v13;

  sub_1000043B8(v21);
  v15 = [v14 name];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_10000FB08(v17, v19);
}

unint64_t sub_10000F9F8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10000CC8C(0, &qword_100021FA8, CAState_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10000FB08(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32, v3);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5, v6);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchTime();
  v8 = *(v29 - 8);
  v10 = __chkstk_darwin(v29, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v26 = &v25 - v14;
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel, "){");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v2 + 16, aBlock);
  sub_100004374(aBlock, v38);
  dispatch thunk of MicaAnimationPrimitives.setCurrentState(to:)();
  sub_1000043B8(aBlock);
  swift_getKeyPath();
  aBlock[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v2 + 16, aBlock);
  sub_100004374(aBlock, v38);
  dispatch thunk of MicaAnimationPrimitives.setCurrentStateToPackageLayer(transitionSpeed:)();
  sub_1000043B8(aBlock);
  sub_10000CC8C(0, &qword_100021D20, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v8 + 8);
  v28 = v8 + 8;
  v17 = v29;
  v16(v12, v29);
  v18 = swift_allocObject();
  swift_weakInit();
  v39 = sub_1000102E8;
  v40 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010068;
  v38 = &unk_10001D730;
  v19 = _Block_copy(aBlock);

  v20 = v30;
  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_100010308(&qword_100021F90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000391C(&qword_100021F98, &qword_1000154C8);
  sub_100010350();
  v22 = v31;
  v21 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v35 + 8))(v22, v21);
  (*(v33 + 8))(v20, v34);
  v16(v23, v17);
}

uint64_t sub_100010010(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F680();
  }

  return result;
}

uint64_t sub_100010068(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t MicaAnimationModel.deinit()
{
  sub_1000043B8((v0 + 16));
  v1 = OBJC_IVAR____TtC21ScreenContinuityShell18MicaAnimationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MicaAnimationModel.__deallocating_deinit()
{
  sub_1000043B8(v0 + 2);
  v1 = OBJC_IVAR____TtC21ScreenContinuityShell18MicaAnimationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MicaAnimationModel(uint64_t a1)
{
  result = qword_100021E80;
  if (!qword_100021E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001020C(uint64_t a1)
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

uint64_t sub_1000102B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000102F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100010350()
{
  result = qword_100021FA0;
  if (!qword_100021FA0)
  {
    sub_100003964(&qword_100021F98, &qword_1000154C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021FA0);
  }

  return result;
}

uint64_t *sub_1000103D0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

double sub_100010634(void *a1)
{
  v1 = a1;
  sub_100010678();
  v3 = v2;

  return v3;
}

void sub_100010690(void *a1, double a2, double a3)
{
  v3 = a1;
  sub_1000106F0();
}

void sub_100010784(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LiveActivityHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "viewIsAppearing:", a1 & 1);
  sub_1000108BC();
}

void sub_100010808(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_100010784(a3, v6, v4, v5);
}

void sub_10001085C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_100010B5C();
  swift_unknownObjectRelease();
}

void sub_1000108BC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];
      if (v4)
      {
        v7 = v4;
        type metadata accessor for ActivityScene();
        if (swift_dynamicCastClass())
        {
          [v0 preferredContentSize];
          [v0 preferredContentSize];
          v5 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
          ActivitySceneMetrics.init(size:cornerRadius:)();
          dispatch thunk of ActivityScene.resolvedMetrics.setter();
        }

        v6 = v7;
      }

      else
      {
        v6 = v3;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000109F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_100010B60();
}

id sub_100010A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LiveActivityHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

unint64_t sub_100010BB4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistration(0);
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_100010C0C();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_100010C0C()
{
  result = qword_1000220D0;
  if (!qword_1000220D0)
  {
    type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000220D0);
  }

  return result;
}

uint64_t sub_100010C64()
{
  v1 = v0;
  v2 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.angel.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Tear down remote session from live activity button", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_100011168(0, 0, v5, &unk_100015660, v16);
}

uint64_t sub_100010E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100010F34, v6, v5);
}

uint64_t sub_100010F34()
{
  v1 = *(*(v0 + 16) + 104);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100010FE8;

  return dispatch thunk of LiveActivityDelegate.tearDownFromLiveActivity()(ObjectType, v1);
}

uint64_t sub_100010FE8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100011108, v3, v2);
}

uint64_t sub_100011108()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100011168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10000CA74(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000CA0C(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000CA0C(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000CA0C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100011428()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.angel.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unlock and open settings URL from live activty", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_100021578 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for URL();
  sub_100009984(v10, qword_100022220);
  sub_100004374((v1 + 112), *(v1 + 136));
  return dispatch thunk of ApplicationLaunchPrimitives.openApplication(at:)();
}

char *sub_1000115D8()
{

  swift_unknownObjectRelease();
  sub_1000043B8((v0 + 112));
  v1 = OBJC_IVAR____TtC21ScreenContinuityShell21LiveActivityViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100011670()
{
  sub_1000115D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LiveActivityViewModel(uint64_t a1)
{
  result = qword_100022108;
  if (!qword_100022108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001171C(uint64_t a1)
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

uint64_t sub_1000117D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007414;

  return sub_100010E9C(a1, v4, v5, v6);
}

uint64_t sub_1000118C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000119C0;

  return v6(a1);
}

uint64_t sub_1000119C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011AB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}