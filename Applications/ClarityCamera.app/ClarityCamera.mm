uint64_t sub_100001A04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_100003998(&qword_100035270, &qword_1000251E8);
  __chkstk_darwin(v3);
  v5 = (&v23 - v4);
  v23 = sub_100003998(&qword_100035278, &qword_1000251F0);
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v23 - v7;
  *v5 = static Alignment.bottom.getter();
  v5[1] = v9;
  v10 = sub_100003998(&qword_100035280, &qword_1000251F8);
  sub_100001E08(v2, v5 + *(v10 + 44));
  LocalizedStringKey.init(stringLiteral:)();
  v11 = sub_100003D8C(&qword_100035288, &qword_100035270, &qword_1000251E8, &protocol conformance descriptor for ZStack<A>);
  View.navigationTitle(_:)();

  sub_100003F00(v5, &qword_100035270, &qword_1000251E8);
  *&v29 = v3;
  *(&v29 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v23;
  v13 = v24;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v6 + 8))(v8, v12);
  v14 = *v2;
  v28 = *(v2 + 16);
  v29 = v14;
  v15 = *(v2 + 32);
  v26 = *(v2 + 40);
  v27 = v15;
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  *(v16 + 1) = *v2;
  *(v16 + 2) = v17;
  *(v16 + 3) = *(v2 + 32);
  v18 = (v13 + *(sub_100003998(&qword_100035290, &qword_100025200) + 36));
  *v18 = sub_100003A2C;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  v19 = swift_allocObject();
  v20 = *(v2 + 16);
  v19[1] = *v2;
  v19[2] = v20;
  v19[3] = *(v2 + 32);
  v21 = (v13 + *(sub_100003998(&qword_100035298, &qword_100025208) + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_100003A50;
  v21[3] = v19;
  sub_100004130(&v29, v25, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v28, v25, &qword_1000352A8, &qword_100025218);
  sub_100004130(&v27, v25, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v26, v25, &qword_1000352B8, &qword_100025228);
  sub_100004130(&v29, v25, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v28, v25, &qword_1000352A8, &qword_100025218);
  sub_100004130(&v27, v25, &qword_1000352B0, &qword_100025220);
  return sub_100004130(&v26, v25, &qword_1000352B8, &qword_100025228);
}

uint64_t sub_100001E08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v45 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_100003998(&qword_1000352C0, &qword_100025240);
  __chkstk_darwin(v46);
  v6 = &v43[-v5];
  v47 = sub_100003998(&qword_1000352C8, &qword_100025248);
  __chkstk_darwin(v47);
  v8 = &v43[-v7];
  v48 = sub_100003998(&qword_1000352D0, &qword_100025250);
  v9 = __chkstk_darwin(v48);
  v57 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v43[-v11];
  v13 = static Alignment.topTrailing.getter();
  v55 = v14;
  v56 = v13;
  v99 = *a1;
  v52 = *(&v99 + 1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = v91;
  v61 = v90;
  v62 = v92;
  v16 = v93;
  v64 = v94;
  v50 = v95;
  v63 = static Alignment.center.getter();
  v49 = v17;
  v98 = a1[1];
  v74 = a1[1];
  sub_100003998(&qword_1000352A8, &qword_100025218);
  State.wrappedValue.getter();
  if (v67 == 1)
  {
    v18 = static Color.black.getter();
  }

  else
  {
    v18 = static Color.clear.getter();
  }

  v60 = v18;
  KeyPath = swift_getKeyPath();
  v89 = v15;
  v88 = v16;
  v19 = *(a1 + 4);
  v96 = *(a1 + 5);
  v97 = v19;
  v20 = swift_allocObject();
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  v20[3] = a1[2];
  sub_100004130(&v99, &v74, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v98, &v74, &qword_1000352A8, &qword_100025218);
  sub_100004130(&v97, &v74, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v96, &v74, &qword_1000352B8, &qword_100025228);
  v58 = v16;
  sub_100003998(&qword_1000352D8, &qword_100025288);
  v44 = v15;
  sub_100003D8C(&qword_1000352E0, &qword_1000352D8, &qword_100025288, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v22 = static Color.yellow.getter();
  v23 = swift_getKeyPath();
  v24 = &v6[*(v46 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_100003CA8();
  View.accessibilityIdentifier(_:)();
  sub_100003F00(v6, &qword_1000352C0, &qword_100025240);
  v25 = v45;
  BorderedProminentButtonStyle.init()();
  sub_100003DD4();
  sub_10000375C(&qword_100035320, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v26 = v54;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v25, v26);
  sub_100003F00(v8, &qword_1000352C8, &qword_100025248);
  v27 = static Edge.Set.all.getter();
  v28 = &v12[*(v48 + 36)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = v57;
  sub_100003E90(v12, v57);
  v31 = v55;
  v30 = v56;
  *&v67 = v56;
  *(&v67 + 1) = v55;
  v54 = v12;
  v32 = v52;
  *&v68 = v52;
  *(&v68 + 1) = v61;
  LOBYTE(v69) = v15;
  *(&v69 + 1) = *v66;
  DWORD1(v69) = *&v66[3];
  *(&v69 + 1) = v62;
  LOBYTE(v70) = v58;
  *(&v70 + 1) = *v65;
  DWORD1(v70) = *&v65[3];
  v33 = v49;
  v34 = v50;
  *(&v70 + 1) = v64;
  *&v71 = v50;
  *(&v71 + 1) = KeyPath;
  *&v72 = v60;
  *(&v72 + 1) = v63;
  v73 = v49;
  v35 = v71;
  v36 = v72;
  v37 = v51;
  *(v51 + 96) = v49;
  v37[4] = v35;
  v37[5] = v36;
  v38 = v67;
  v39 = v68;
  v40 = v70;
  v37[2] = v69;
  v37[3] = v40;
  *v37 = v38;
  v37[1] = v39;
  v41 = sub_100003998(&qword_100035328, &qword_1000252D0);
  sub_100003E90(v29, v37 + *(v41 + 48));
  sub_100004130(&v67, &v74, &qword_100035330, &qword_1000252D8);
  sub_100003F00(v54, &qword_1000352D0, &qword_100025250);
  sub_100003F00(v29, &qword_1000352D0, &qword_100025250);
  *&v74 = v30;
  *(&v74 + 1) = v31;
  v75 = v32;
  v76 = v61;
  v77 = v44;
  *v78 = *v66;
  *&v78[3] = *&v66[3];
  v79 = v62;
  v80 = v58;
  *v81 = *v65;
  *&v81[3] = *&v65[3];
  v82 = v64;
  v83 = v34;
  v84 = KeyPath;
  v85 = v60;
  v86 = v63;
  v87 = v33;
  return sub_100003F00(&v74, &qword_100035330, &qword_1000252D8);
}

uint64_t sub_1000024C4(__int128 *a1)
{
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v6 = *(a1 + 4);
  v5 = *(a1 + 5);
  v19 = v5;
  v20 = v6;
  *&v18 = v6;
  *(&v18 + 1) = v5;
  sub_100004130(&v20, &v17, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v19, &v17, &qword_1000352B8, &qword_100025228);
  sub_100003998(&qword_100035348, &qword_1000252E8);
  State.wrappedValue.getter();
  if (v17)
  {
    sub_100003998(&qword_100035350, &qword_1000252F0);
    Task.cancel()();
  }

  v18 = *a1;
  sub_100008864();
  v16 = a1[1];
  v17 = v16;
  LOBYTE(v15) = 1;
  sub_100003998(&qword_1000352A8, &qword_100025218);
  State.wrappedValue.setter();
  v7 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v7 impactOccurred];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();
  sub_100004130(&v20, &v16, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v19, &v16, &qword_1000352B8, &qword_100025228);
  sub_100004130(&v18, &v16, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v17, &v16, &qword_1000352A8, &qword_100025218);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = a1[2];
  v12 = sub_100002B40(0, 0, v4, &unk_100025300, v10);
  *&v16 = v6;
  *(&v16 + 1) = v5;
  v15 = v12;

  State.wrappedValue.setter();

  sub_100003F00(&v20, &qword_1000352B0, &qword_100025220);
  return sub_100003F00(&v19, &qword_1000352B8, &qword_100025228);
}

uint64_t sub_1000027F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1000028A4;

  return static Task<>.sleep(nanoseconds:)(50000000);
}

uint64_t sub_1000028A4()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100002ADC;
  }

  else
  {
    v4 = sub_100002A00;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100002A00()
{
  v1 = *(v0 + 16);

  static Animation.spring(response:dampingFraction:blendDuration:)();
  *(swift_task_alloc() + 16) = v1;
  withAnimation<A>(_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002ADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100004130(a3, v22 - v9, &qword_100035540, &qword_100025230);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100003F00(v10, &qword_100035540, &qword_100025230);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100003F00(a3, &qword_100035540, &qword_100025230);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003F00(a3, &qword_100035540, &qword_100025230);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100002DEC()
{
  sub_100003998(&qword_100035338, &qword_1000252E0);
  sub_100003F60();

  return Label.init(title:icon:)();
}

uint64_t sub_100002E84@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Color.black.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_100004018(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100002F78@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Color.black.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

double sub_100002FE0(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v5;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100005F70(0, 0, v4, &unk_100025238, v9);

  return result;
}

uint64_t sub_100003174(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000031F0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003274@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000032BC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000032EC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003334(uint64_t a1)
{
  v2 = sub_10000375C(&qword_100035250, type metadata accessor for DeviceType, &unk_1000250AC);
  v3 = sub_10000375C(&qword_100035258, type metadata accessor for DeviceType, &unk_10002504C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000033F0(uint64_t a1)
{
  v2 = sub_10000375C(&qword_100035260, type metadata accessor for AVVideoCodecType, &unk_100024F48);
  v3 = sub_10000375C(&qword_100035268, type metadata accessor for AVVideoCodecType, &unk_100024EE8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000034B0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000034F0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003548(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000035BC(void *a1, uint64_t *a2)
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

void sub_100003680(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000375C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000038C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000038D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100003920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003998(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003A58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003B4C;

  return sub_100009004(a1, v4, v5, v6);
}

uint64_t sub_100003B4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003C48()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100003CA8()
{
  result = qword_1000352E8;
  if (!qword_1000352E8)
  {
    sub_1000039E0(&qword_1000352C0, &qword_100025240);
    sub_100003D8C(&qword_1000352F0, &qword_1000352F8, &qword_1000252C0, &protocol conformance descriptor for Button<A>);
    sub_100003D8C(&qword_100035300, &qword_100035308, &qword_1000252C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000352E8);
  }

  return result;
}

uint64_t sub_100003D8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003DD4()
{
  result = qword_100035310;
  if (!qword_100035310)
  {
    sub_1000039E0(&qword_1000352C8, &qword_100025248);
    sub_100003CA8();
    sub_10000375C(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035310);
  }

  return result;
}

uint64_t sub_100003E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000352D0, &qword_100025250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003F60()
{
  result = qword_100035340;
  if (!qword_100035340)
  {
    sub_1000039E0(&qword_100035338, &qword_1000252E0);
    sub_100003D8C(&qword_100035300, &qword_100035308, &qword_1000252C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035340);
  }

  return result;
}

void sub_100004018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004028()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100004080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003B4C;

  return sub_1000027F0(a1, v4, v5, v1 + 32);
}

uint64_t sub_100004130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000041FC()
{
  result = qword_100035358;
  if (!qword_100035358)
  {
    sub_1000039E0(&qword_100035298, &qword_100025208);
    sub_100004288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035358);
  }

  return result;
}

unint64_t sub_100004288()
{
  result = qword_100035360;
  if (!qword_100035360)
  {
    sub_1000039E0(&qword_100035290, &qword_100025200);
    sub_1000039E0(&qword_100035278, &qword_1000251F0);
    sub_1000039E0(&qword_100035270, &qword_1000251E8);
    sub_100003D8C(&qword_100035288, &qword_100035270, &qword_1000251E8, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035360);
  }

  return result;
}

__n128 sub_10000442C@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for CameraModel(0);
  sub_1000045E0();
  StateObject.wrappedValue.getter();
  v2 = ObservedObject.init(wrappedValue:)();
  v4 = v3;
  State.init(wrappedValue:)();
  sub_100003998(&qword_1000352B0, &qword_100025220);
  State.init(wrappedValue:)();
  result = v6;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1].n128_u8[0] = v6.n128_u8[0];
  a1[1].n128_u64[1] = v6.n128_u64[1];
  a1[2] = v6;
  return result;
}

__n128 sub_100004514(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100004570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000045E0()
{
  result = qword_100035368;
  if (!qword_100035368)
  {
    type metadata accessor for CameraModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035368);
  }

  return result;
}

unint64_t sub_10000463C()
{
  result = qword_100035370;
  if (!qword_100035370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035370);
  }

  return result;
}

uint64_t sub_100004724@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraModel(0);
  sub_1000045E0();
  StateObject.wrappedValue.getter();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000047C8()
{
  result = qword_100035378;
  if (!qword_100035378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035378);
  }

  return result;
}

uint64_t sub_10000481C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_100003998(&qword_100035388, &qword_100025618);
  __chkstk_darwin(v41);
  v40 = &v31 - v1;
  v34 = sub_100003998(&qword_100035390, &qword_100025620);
  v39 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v31 - v2;
  v4 = sub_100003998(&qword_100035398, &qword_100025628);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = __chkstk_darwin(v4);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v31 - v7;
  v8 = sub_100003998(&qword_1000353A0, &qword_100025630);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v35 = sub_100003998(&qword_1000353A8, &qword_100025638);
  v33 = *(v35 - 8);
  v12 = v33;
  v13 = __chkstk_darwin(v35);
  v43 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  sub_100003998(&qword_1000353B0, &qword_100025640);
  sub_100004FF0();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100003D8C(&qword_1000353D8, &qword_1000353A0, &qword_100025630, &protocol conformance descriptor for WindowGroup<A>);
  v17 = v16;
  v32 = v16;
  Scene.extendedLaunchTestName(_:)();
  (*(v9 + 8))(v11, v8);
  AssistiveAccess.init(content:)();
  sub_100003D8C(&qword_1000353E0, &qword_100035390, &qword_100025620, &protocol conformance descriptor for AssistiveAccess<A>);
  v18 = v44;
  v19 = v34;
  Scene.extendedLaunchTestName(_:)();
  (*(v39 + 8))(v3, v19);
  v20 = *(v12 + 16);
  v21 = v43;
  v22 = v35;
  v20(v43, v17, v35);
  v24 = v36;
  v23 = v37;
  v25 = *(v37 + 16);
  v26 = v38;
  v25(v36, v18, v38);
  v27 = v40;
  v20(v40, v21, v22);
  v25(&v27[*(v41 + 48)], v24, v26);
  _TupleScene.init(_:)();
  v28 = *(v23 + 8);
  v28(v44, v26);
  v29 = *(v33 + 8);
  v29(v32, v22);
  v28(v24, v26);
  return (v29)(v43, v22);
}

uint64_t sub_100004D78(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100004E44@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003998(&qword_1000353E8, &qword_100025680);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_100003998(&qword_1000353B0, &qword_100025640) + 36));
  v4 = *(sub_100003998(&qword_1000353D0, &qword_100025648) + 28);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  result = (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004F70();
  static App.main()();
  return 0;
}

unint64_t sub_100004F70()
{
  result = qword_100035380;
  if (!qword_100035380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035380);
  }

  return result;
}

unint64_t sub_100004FF0()
{
  result = qword_1000353B8;
  if (!qword_1000353B8)
  {
    sub_1000039E0(&qword_1000353B0, &qword_100025640);
    sub_1000050A8();
    sub_100003D8C(&qword_1000353C8, &qword_1000353D0, &qword_100025648, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353B8);
  }

  return result;
}

unint64_t sub_1000050A8()
{
  result = qword_1000353C0;
  if (!qword_1000353C0)
  {
    type metadata accessor for ContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353C0);
  }

  return result;
}

NSString sub_100005194()
{
  result = String._bridgeToObjectiveC()();
  qword_100037D90 = result;
  return result;
}

uint64_t sub_1000051CC(unsigned __int8 a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 1 || (a1 != 2 ? (v4 = "frontCameraPhoto") : (v4 = "backCameraPhoto"), 0x8000000100026F20 != (v4 | 0x8000000000000000)))
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }

LABEL_9:
    v3 = 1;
LABEL_11:

    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_100005338(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6F746F68506172;
  v3 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000010;
    if (v3 == 2)
    {
      v4 = 0x8000000100026F20;
    }

    else
    {
      v4 = 0x8000000100026F40;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF6F656469566172;
    }

    else
    {
      v4 = 0xEF6F746F68506172;
    }

    v5 = 0x656D61436B636162;
  }

  v6 = 0x8000000100026F40;
  if (a2 == 2)
  {
    v6 = 0x8000000100026F20;
  }

  if (a2)
  {
    v2 = 0xEF6F656469566172;
  }

  if (a2 <= 1u)
  {
    v7 = 0x656D61436B636162;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == v7 && v4 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100005478(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    goto LABEL_8;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 1;
  }

  if (a1 > 1u)
  {
    v3 = a1 == 2 ? "backCameraPhoto" : "frontCameraPhoto";
    if (0x8000000100026F40 == (v3 | 0x8000000000000000))
    {
LABEL_8:

      return 1;
    }
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v5 & 1;
}

uint64_t sub_1000055FC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v2 = a1 == 2 ? "backCameraPhoto" : "frontCameraPhoto";
    if (0x8000000100026F20 == (v2 | 0x8000000000000000))
    {
LABEL_12:

      return 1;
    }
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (a1 <= 1u || a1 != 3 && 0x8000000100026F40 != 0x8000000100026F20)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v4 & 1;
    }

    goto LABEL_12;
  }

  return 1;
}

Swift::Int sub_1000057B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100005880(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000593C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100005A08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000AA88(*a1);
  *a2 = result;
  return result;
}

void sub_100005A3C(unint64_t *a1@<X8>)
{
  v2 = 0xEF6F746F68506172;
  v3 = 0x8000000100026F20;
  if (*v1 != 2)
  {
    v3 = 0x8000000100026F40;
  }

  if (*v1)
  {
    v2 = 0xEF6F656469566172;
  }

  if (*v1 <= 1u)
  {
    v4 = 0x656D61436B636162;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v4;
  a1[1] = v2;
}

void sub_100005AF0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v6[0]) != v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v6[0]) = 0;
    v3 = v1;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [*&v3[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput] stopRecording];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_10000B230;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100006270;
    v6[3] = &unk_1000320C0;
    v5 = _Block_copy(v6);

    AudioServicesPlaySystemSoundWithCompletion(0x45Eu, v5);
    _Block_release(v5);
  }
}

uint64_t sub_100005D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100005DE8, v6, v5);
}

uint64_t sub_100005DE8()
{

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    AudioServicesDisposeSystemSoundID(0x45Du);
    sub_100008B94();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = 1;
    static Published.subscript.setter();
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AAD4(v1, qword_100037DF0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to play begin recording system sound", v4, 2u);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100005F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100004130(a3, v25 - v10, &qword_100035540, &qword_100025230);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003F00(v11, &qword_100035540, &qword_100025230);
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

      sub_100003F00(a3, &qword_100035540, &qword_100025230);

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

  sub_100003F00(a3, &qword_100035540, &qword_100025230);
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

double sub_100006270(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_1000062B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a1;
  sub_100005F70(0, 0, v7, a3, v10);

  return result;
}

uint64_t sub_1000063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000646C, v6, v5);
}

uint64_t sub_10000646C()
{

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    AudioServicesDisposeSystemSoundID(0x45Eu);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = 1;
    static Published.subscript.setter();
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AAD4(v1, qword_100037DF0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to play end recording system sound", v4, 2u);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100006604(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

char *sub_100006670(char a1)
{
  v2 = v1;
  v4 = sub_100003998(&qword_1000355B8, &qword_1000259E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - v6;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_beginRecordingSoundID] = 1117;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_endRecordingSoundID] = 1118;
  v8 = OBJC_IVAR____TtC13ClarityCamera11CameraModel__recordButtonEnabled;
  LOBYTE(v50) = 1;
  Published.init(initialValue:)();
  v9 = *(v5 + 32);
  v9(&v2[v8], v7, v4);
  v10 = OBJC_IVAR____TtC13ClarityCamera11CameraModel__isRecordingVideo;
  LOBYTE(v50) = 0;
  Published.init(initialValue:)();
  v9(&v2[v10], v7, v4);
  v11 = &v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSessionRuntimeErrorSubscription];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = &unk_100037000;
  v13 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession;
  *&v2[v13] = [objc_allocWithZone(AVCaptureSession) init];
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device] = 0;
  v14 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_photoOutput;
  *&v2[v14] = [objc_allocWithZone(AVCapturePhotoOutput) init];
  v15 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput;
  *&v2[v15] = [objc_allocWithZone(AVCaptureMovieFileOutput) init];
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput] = 0;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_audioDeviceInput] = 0;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto] = 0;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator] = 0;
  v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode] = a1;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 orientation];

  v19 = static UIInterfaceOrientation.fromDeviceOrientation(_:)(v18);
  if (v20)
  {
    v21 = static UIInterfaceOrientation.window.getter();
    *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation] = v21;
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AAD4(v22, qword_100037DF0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v21;
      v50 = v26;
      *v25 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v27 = String.init<A>(describing:)();
      v29 = sub_100012614(v27, v28, &v50);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Initial orientation from window: %s", v25, 0xCu);
      sub_10000B154(v26);
      v12 = &unk_100037000;

LABEL_10:
    }
  }

  else
  {
    v30 = v19;
    *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation] = v19;
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000AAD4(v31, qword_100037DF0);
    v23 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v30;
      v50 = v34;
      *v33 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v35 = String.init<A>(describing:)();
      v37 = sub_100012614(v35, v36, &v50);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v23, v32, "Initial orientation from device: %s", v33, 0xCu);
      sub_10000B154(v34);
      v12 = &unk_100037000;

      goto LABEL_10;
    }
  }

  v38 = type metadata accessor for CameraModel(0);
  v51.receiver = v2;
  v51.super_class = v38;
  v39 = objc_msgSendSuper2(&v51, "init");
  v40 = [v16 currentDevice];
  [v40 beginGeneratingDeviceOrientationNotifications];

  v41 = objc_opt_self();
  v42 = [v41 defaultCenter];
  [v42 addObserver:v39 selector:"orientationChangedWithNotification:" name:UIDeviceOrientationDidChangeNotification object:0];

  v43 = [v41 defaultCenter];
  v44 = v12[437];
  v45 = *&v39[v44];
  v46 = v39;
  [v43 addObserver:v46 selector:"sessionWasInterruptedWithNotification:" name:AVCaptureSessionWasInterruptedNotification object:v45];

  v47 = [v41 defaultCenter];
  [v47 addObserver:v46 selector:"sessionInterruptionEndedWithNotification:" name:AVCaptureSessionInterruptionEndedNotification object:*&v39[v44]];

  return v46;
}

id sub_100006C80()
{
  v1 = v0;
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_100005F70(0, 0, v4, &unk_1000259F0, v7);

  v8 = type metadata accessor for CameraModel(0);
  v10.receiver = v1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_100006DB8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100006E4C, v2, v1);
}

uint64_t sub_100006E4C()
{

  v1 = [objc_opt_self() currentDevice];
  [v1 endGeneratingDeviceOrientationNotifications];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for CameraModel(uint64_t a1)
{
  result = qword_100035508;
  if (!qword_100035508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000071C0()
{
  v0 = sub_100003998(&qword_100035568, &qword_1000258D8);
  __chkstk_darwin(v0 - 8);
  v2 = v39 - v1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003998(&qword_100035570, &qword_1000258E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - v9;
  v11 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v12 = [objc_opt_self() mainRunLoop];
  v40[0] = v12;
  v13 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_10000B0C4(0, &qword_100035578, NSRunLoop_ptr);
  sub_10000B10C(&qword_100035580, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10000AF88();
  Publisher.receive<A>(on:options:)();
  sub_100003F00(v2, &qword_100035568, &qword_1000258D8);

  (*(v4 + 8))(v6, v3);
  sub_10000AFF0();
  v14 = Publisher<>.sink(receiveValue:)();
  v15 = v39[1];
  v16 = v14;
  (*(v8 + 8))(v10, v7);
  v40[3] = type metadata accessor for AnyCancellable();
  v40[4] = &protocol witness table for AnyCancellable;
  v40[0] = v16;
  v17 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSessionRuntimeErrorSubscription;
  swift_beginAccess();
  sub_10000B054(v40, v15 + v17);
  swift_endAccess();
  sub_100003998(&qword_1000355A0, &qword_1000258F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000256E0;
  *(v18 + 32) = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  *(v18 + 40) = AVCaptureDeviceTypeBuiltInDualCamera;
  *(v18 + 48) = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  LOBYTE(v4) = *(v15 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode);
  v19 = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v20 = AVCaptureDeviceTypeBuiltInDualCamera;
  v21 = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v22 = AVMediaTypeVideo;
  if (sub_1000055FC(v4))
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for DeviceType(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v22 position:v23];

  v26 = [v25 devices];
  sub_10000B0C4(0, &qword_1000355A8, AVCaptureDevice_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_17:

    if (qword_1000351F8 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v29 = v28;

    v30 = [objc_opt_self() defaultDeviceWithDeviceType:AVCaptureDeviceTypeMicrophone mediaType:AVMediaTypeAudio position:0];
    if (v30)
    {
      v31 = v30;
      sub_100007B20(v29, v30);

      v25 = v31;
    }

    else
    {
      if (qword_1000351F8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000AAD4(v32, qword_100037DF0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Could not create microphone capture device", v35, 2u);
      }

      v29 = v33;
    }

    goto LABEL_20;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_18:
  v36 = type metadata accessor for Logger();
  sub_10000AAD4(v36, qword_100037DF0);
  v29 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v29, v37, "Could not find appropriate AVCaptureDevice", v38, 2u);
  }

LABEL_20:
}

void sub_1000078B0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AAD4(v6, qword_100037DF0);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_10000B10C(&qword_1000355B0, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100012614(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Capture session runtime error: %s", v9, 0xCu);
    sub_10000B154(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_100007B20(void *a1, void *a2)
{
  v5 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device];
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device] = a1;
  v9 = a1;

  v10 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession];
  [v10 beginConfiguration];
  v11 = objc_allocWithZone(AVCaptureDeviceInput);
  v65 = 0;
  v12 = v9;
  v13 = [v11 initWithDevice:v12 error:&v65];
  if (v13)
  {
    v14 = v13;
    v15 = v65;

    if (([v10 canAddInput:v14] & 1) == 0)
    {
      if (qword_1000351F8 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000AAD4(v40, qword_100037DF0);
      v41 = v14;
      v42 = v2;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412546;
        *(v45 + 4) = v41;
        *(v45 + 12) = 2112;
        *(v45 + 14) = v10;
        *v46 = v14;
        v46[1] = v10;
        v47 = v41;
        v48 = v10;
        _os_log_impl(&_mh_execute_header, v43, v44, "Unable to add input %@ to session %@", v45, 0x16u);
        sub_100003998(&qword_100035548, &qword_100025890);
        swift_arrayDestroy();

LABEL_32:
        return;
      }

LABEL_30:

      goto LABEL_32;
    }

    v16 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput];
    *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput] = v14;
    v17 = v14;

    v64 = v17;
    [v10 addInput:v17];
    v18 = v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode];
    if ((sub_100005478(v18) & 1) == 0)
    {
      goto LABEL_7;
    }

    v19 = objc_allocWithZone(AVCaptureDeviceInput);
    v65 = 0;
    v12 = a2;
    v20 = [v19 initWithDevice:v12 error:&v65];
    if (v20)
    {
      v21 = v20;
      v22 = v65;

      if ([v10 canAddInput:v21])
      {
        v23 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_audioDeviceInput];
        *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_audioDeviceInput] = v21;
        v24 = v21;

        [v10 addInput:v24];
LABEL_7:
        v25 = sub_1000051CC(v18);
        v26 = &OBJC_IVAR____TtC13ClarityCamera11CameraModel_photoOutput;
        if ((v25 & 1) == 0)
        {
          v26 = &OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput;
        }

        v27 = *&v2[*v26];
        if ([v10 canAddOutput:v27])
        {
          v28 = **(&off_1000322C8 + v18);
          [v10 setSessionPreset:v28];

          [v10 addOutput:v27];
          [v10 commitConfiguration];
          static TaskPriority.userInitiated.getter();
          v29 = type metadata accessor for TaskPriority();
          (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
          type metadata accessor for MainActor();
          v30 = v2;
          v31 = static MainActor.shared.getter();
          v32 = swift_allocObject();
          v32[2] = v31;
          v32[3] = &protocol witness table for MainActor;
          v32[4] = v30;
          sub_100005F70(0, 0, v7, &unk_1000258A0, v32);

          return;
        }

        if (qword_1000351F8 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_10000AAD4(v49, qword_100037DF0);
        v50 = v2;
        v51 = v27;
        v43 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412546;
          *(v53 + 4) = v51;
          *(v53 + 12) = 2112;
          *(v53 + 14) = v10;
          *v54 = v51;
          v54[1] = v10;
          v55 = v10;
          v56 = v51;
          _os_log_impl(&_mh_execute_header, v43, v52, "Unable to add output %@ to session %@", v53, 0x16u);
          sub_100003998(&qword_100035548, &qword_100025890);
          swift_arrayDestroy();

          return;
        }

        goto LABEL_31;
      }

      if (qword_1000351F8 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000AAD4(v58, qword_100037DF0);
      v51 = v21;
      v59 = v2;
      v43 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v43, v60))
      {
LABEL_31:

        goto LABEL_32;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412546;
      *(v61 + 4) = v51;
      *(v61 + 12) = 2112;
      *(v61 + 14) = v10;
      *v62 = v21;
      v62[1] = v10;
      v41 = v51;
      v63 = v10;
      _os_log_impl(&_mh_execute_header, v43, v60, "Unable to add input %@ to session %@", v61, 0x16u);
      sub_100003998(&qword_100035548, &qword_100025890);
      swift_arrayDestroy();

      goto LABEL_30;
    }

    v57 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v33 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000AAD4(v34, qword_100037DF0);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "Error setting up capture session: %@", v37, 0xCu);
    sub_100003F00(v38, &qword_100035548, &qword_100025890);
  }

  else
  {
  }
}

uint64_t sub_100008428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000084C4, v6, v5);
}

uint64_t sub_1000084C4()
{
  [*(*(v0 + 16) + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession) startRunning];

  return _swift_task_switch(sub_100008540, 0, 0);
}

uint64_t sub_100008540(uint64_t a1)
{
  *(v1 + 56) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000085CC, v3, v2);
}

uint64_t sub_1000085CC()
{
  v1 = v0[2];

  sub_1000086D4(v1);
  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_100008674, v2, v3);
}

uint64_t sub_100008674()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000086D4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1000351F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100037D90;
  sub_100003998(&qword_100035550, &qword_1000258C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000256F0;
  AnyHashable.init<A>(_:)();
  v5 = *(a1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode);
  *(inited + 96) = &type metadata for CameraModel.Mode;
  *(inited + 72) = v5;
  sub_10000AD9C(inited);
  swift_setDeallocating();
  sub_100003F00(inited + 32, &qword_100035558, &qword_1000258C8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:a1 userInfo:isa];
}

void sub_100008864()
{
  v1 = v0;
  v2 = [objc_allocWithZone(AVCapturePhotoSettings) init];
  v3 = *(v0 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_photoOutput);
  v4 = [v3 availablePhotoCodecTypes];
  type metadata accessor for AVVideoCodecType(0);
  v6 = v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = AVVideoCodecTypeHEVC;
  v21[2] = &v22;
  LOBYTE(v4) = sub_10000A820(sub_10000AB0C, v21, v7);

  if (v4)
  {
    sub_100003998(&qword_100035528, &qword_100025878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000256F0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = v6;
    *(inited + 40) = v9;
    *(inited + 48) = AVVideoCodecTypeHEVC;
    v10 = AVVideoCodecTypeHEVC;
    sub_10000A958(inited);
    swift_setDeallocating();
    sub_100003F00(inited + 32, &qword_100035530, &qword_100025880);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = [objc_opt_self() photoSettingsWithFormat:isa];

    v2 = v12;
  }

  v13 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput);
  if (v13)
  {
    v14 = [v13 device];
    v15 = [v14 isFlashAvailable];

    if (v15)
    {
      [v2 setFlashMode:2];
    }
  }

  v16 = AVCapturePhotoSettings.availablePreviewPhotoPixelFormatTypes.getter();
  if (*(v16 + 16))
  {
    v17 = *(v16 + 32);

    sub_100003998(&qword_100035528, &qword_100025878);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1000256F0;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    *(v18 + 72) = &type metadata for UInt32;
    *(v18 + 48) = v17;
    sub_10000A958(v18);
    swift_setDeallocating();
    sub_100003F00(v18 + 32, &qword_100035530, &qword_100025880);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 setPreviewPhotoFormat:v20];
  }

  else
  {
  }

  sub_100009C78(v3);
  [v3 capturePhotoWithSettings:v2 delegate:v1];
}

void sub_100008B94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  if ([*(&v0->isa + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession) isRunning])
  {
    v35 = v1;
    v36 = v0;
    v12 = [objc_opt_self() defaultManager];
    v13 = [v12 URLsForDirectory:9 inDomains:1];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {
      (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      UUID.init()();
      v15 = UUID.uuidString.getter();
      v17 = v16;
      (*(v2 + 8))(v4, v35);
      v37[0] = v15;
      v37[1] = v17;
      v18._countAndFlagsBits = 1987013934;
      v18._object = 0xE400000000000000;
      String.append(_:)(v18);
      URL.appendingPathComponent(_:)();

      v19 = *(v6 + 8);
      v19(v9, v5);
      URL._bridgeToObjectiveC()(v20);
      v22 = v21;
      v37[0] = 0;
      v23 = [v12 removeItemAtURL:v21 error:v37];

      if (v23)
      {
        v24 = v37[0];
      }

      else
      {
        v29 = v37[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v30 = v36;
      v31 = *(&v36->isa + OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput);
      sub_100009C78(v31);
      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      [v31 startRecordingToOutputFileURL:v33 recordingDelegate:v30];

      v19(v11, v5);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1000351F8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AAD4(v25, qword_100037DF0);
  v36 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v36, v26, "Capture session is not running on record video request", v27, 2u);
  }

  v28 = v36;
}

uint64_t sub_100009004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000909C, v6, v5);
}

uint64_t sub_10000909C()
{
  v1 = *(v0 + 16);

  [*(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession) stopRunning];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100009114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000091AC, v7, v6);
}

uint64_t sub_1000091AC()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto);
  *(v2 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto) = v1;
  v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000092BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100003998(&qword_100035540, &qword_100025230);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009390, v6, v5);
}

uint64_t sub_100009390()
{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto);
  if (v2 && (v3 = [v2 fileDataRepresentation]) != 0)
  {
    v4 = v0[3];
    v5 = v3;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    static TaskPriority.userInitiated.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    sub_10000C0B8(v6, v8);
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v6;
    v11[5] = v8;
    sub_100005F70(0, 0, v4, &unk_1000259C0, v11);
    sub_10000C14C(v6, v8);
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AAD4(v12, qword_100037DF0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not get photo data representation", v15, 2u);
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000095C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000965C, v7, v6);
}

uint64_t sub_10000965C()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[6] = sub_10000C264;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100009A28;
  v0[5] = &unk_1000321D8;
  v5 = _Block_copy(v0 + 2);
  sub_10000C0B8(v2, v1);

  [v3 requestAuthorization:v5];
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

void sub_100009790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 == 3)
  {
    v5 = [objc_opt_self() sharedPhotoLibrary];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    aBlock[4] = sub_10000C2A4;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006270;
    aBlock[3] = &unk_100032228;
    v7 = _Block_copy(aBlock);
    sub_10000C0B8(a2, a3);

    [v5 performChanges:v7 completionHandler:0];
    _Block_release(v7);
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AAD4(v8, qword_100037DF0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Library status is not authorized", v10, 2u);
    }
  }
}

void sub_10000998C()
{
  v0 = [objc_opt_self() creationRequestForAsset];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v0 addResourceWithType:1 data:isa options:0];
}

double sub_100009A28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_100009C78(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator);
  if (v3)
  {
    [v3 videoRotationAngleForHorizonLevelCapture];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation);
  if (v5 == 2)
  {
    v4 = v4 + 180.0;
  }

  else
  {
    if (v5 == 3)
    {
      v6 = v4;
      v7 = (sub_1000055FC(*(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode)) & 1) == 0;
      v8 = 270.0;
      v9 = 90.0;
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      v6 = v4;
      v7 = (sub_1000055FC(*(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode)) & 1) == 0;
      v8 = 90.0;
      v9 = 270.0;
    }

    if (!v7)
    {
      v8 = v9;
    }

    v4 = v6 + v8;
  }

LABEL_13:
  v10 = fmod(v4, 360.0);
  v11 = [a1 connectionWithMediaType:AVMediaTypeVideo];
  [v11 setVideoRotationAngle:v10];
}

void sub_100009EBC(uint64_t a1)
{
  sub_100009FA0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100009FA0()
{
  if (!qword_100035518)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100035518);
    }
  }
}

uint64_t getEnumTagSinglePayload for CameraModel.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraModel.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A170()
{
  result = qword_100035520;
  if (!qword_100035520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035520);
  }

  return result;
}

uint64_t sub_10000A1D0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CameraModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000A224(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void sub_10000A2A8(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

void sub_10000A324(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  sub_100005AF0(v3);
}

uint64_t sub_10000A3F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A4EC;

  return v6(a1);
}

uint64_t sub_10000A4EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000A5E4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000A6A0(a1, a2, v4);
}

unint64_t sub_10000A65C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000A758(a1, v4);
}

unint64_t sub_10000A6A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000A758(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000AED8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000AF34(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000A820(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10000A8C8(void *a1, uint64_t *a2)
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

unint64_t sub_10000A958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003998(&qword_100035538, &qword_100025888);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004130(v4, &v13, &qword_100035530, &qword_100025880);
      v5 = v13;
      v6 = v14;
      result = sub_10000A5E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000AB2C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000AA88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100031B90, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000AAD4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

_OWORD *sub_10000AB2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000AB40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C4BC;

  return sub_100008428(a1, v4, v5, v6);
}

uint64_t sub_10000ABF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AC2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C4BC;

  return sub_10000A3F4(a1, v4);
}

uint64_t sub_10000ACE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003B4C;

  return sub_10000A3F4(a1, v4);
}

unint64_t sub_10000AD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003998(&qword_100035560, &qword_1000258D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004130(v4, v13, &qword_100035558, &qword_1000258C8);
      result = sub_10000A65C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000AB2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000AF88()
{
  result = qword_100035588;
  if (!qword_100035588)
  {
    sub_10000B0C4(255, &qword_100035578, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035588);
  }

  return result;
}

unint64_t sub_10000AFF0()
{
  result = qword_100035590;
  if (!qword_100035590)
  {
    sub_1000039E0(&qword_100035570, &qword_1000258E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035590);
  }

  return result;
}

uint64_t sub_10000B054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035598, &qword_1000258E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B0C4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000B10C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10000B154(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_10000B1F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C4BC;

  return sub_100005D50(a1, v4, v5, v6);
}

uint64_t sub_10000B370()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C4BC;

  return sub_1000063D4(a1, v4, v5, v6);
}

void sub_10000B464(void *a1, uint64_t a2)
{
  v5 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AAD4(v8, qword_100037DF0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v20, v9, "Error processing photo: %@", v10, 0xCu);
      sub_100003F00(v11, &qword_100035548, &qword_100025890);

      v13 = v20;
    }

    else
    {
    }
  }

  else
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v2;
    v16 = a1;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = v16;
    sub_100005F70(0, 0, v7, &unk_1000259D0, v18);
  }
}

void sub_10000B730(uint64_t a1)
{
  v3 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AAD4(v6, qword_100037DF0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v17, v7, "Error capturing photo: %@", v8, 0xCu);
      sub_100003F00(v9, &qword_100035548, &qword_100025890);

      v11 = v17;
    }

    else
    {
    }
  }

  else
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v1;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_100005F70(0, 0, v5, &unk_1000259B0, v15);
  }
}

void sub_10000B9E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AAD4(v2, qword_100037DF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Error recording video: %@", v4, 0xCu);
      sub_100003F00(v5, &qword_100035548, &qword_100025890);
    }
  }

  else
  {
    URL.path(percentEncoded:)(1);
    oslog = String._bridgeToObjectiveC()();

    UISaveVideoAtPathToSavedPhotosAlbum(&oslog->isa, 0, 0, 0);
  }
}

void sub_10000BB78()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  v4 = static UIInterfaceOrientation.fromDeviceOrientation(_:)(v3);
  if (v5)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AAD4(v6, qword_100037DF0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      type metadata accessor for UIDeviceOrientation(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_100012614(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Not updating for non-interface orientation: %s", v8, 0xCu);
      sub_10000B154(v9);
    }

    else
    {
    }
  }

  else
  {
    v13 = v4;
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AAD4(v14, qword_100037DF0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v19 = String.init<A>(describing:)();
      v21 = sub_100012614(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Updated orientation: %s", v17, 0xCu);
      sub_10000B154(v18);
    }

    *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation) = v13;
  }
}

void sub_10000BE6C(void *a1, const char *a2, ...)
{
  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AAD4(v4, qword_100037DF0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100003F00(v8, &qword_100035548, &qword_100025890);
  }
}

uint64_t sub_10000BFC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003B4C;

  return sub_1000092BC(a1, v4, v5, v6);
}

uint64_t sub_10000C0B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000C10C()
{
  swift_unknownObjectRelease();
  sub_10000C14C(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10000C14C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10000C1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000C4BC;

  return sub_1000095C4(a1, v4, v5, v7, v6);
}

uint64_t sub_10000C26C()
{
  sub_10000C14C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C2AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C2F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000C4BC;

  return sub_100009114(a1, v4, v5, v7, v6);
}

uint64_t sub_10000C3B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C3EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000C4BC;

  return sub_100006DB8();
}

__n128 sub_10000C4CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000C4D8(uint64_t a1, int a2)
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

uint64_t sub_10000C520(uint64_t result, int a2, int a3)
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

id sub_10000C588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v5 = sub_100003998(&qword_100035620, &qword_100025A88);
  __chkstk_darwin(v5);
  v7 = (&v24 - v6);
  v8 = sub_100003998(&qword_100035628, &qword_100025A90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  *v7 = static Alignment.bottom.getter();
  v7[1] = v12;
  v13 = sub_100003998(&qword_100035630, &qword_100025A98);
  sub_10000C8A4(a1, a2, v7 + *(v13 + 44));
  LocalizedStringKey.init(stringLiteral:)();
  v14 = sub_100003D8C(&qword_100035638, &qword_100035620, &qword_100025A88, &protocol conformance descriptor for ZStack<A>);
  View.navigationTitle(_:)();

  sub_100003F00(v7, &qword_100035620, &qword_100025A88);
  v28 = v5;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v27;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v9 + 8))(v11, v8);
  v16 = swift_allocObject();
  v18 = v25;
  v17 = v26;
  *(v16 + 16) = v25;
  *(v16 + 24) = v17;
  v19 = (v15 + *(sub_100003998(&qword_100035640, &qword_100025AA0) + 36));
  *v19 = sub_100003A2C;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = (v15 + *(sub_100003998(&qword_100035648, &qword_100025AA8) + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_10000D60C;
  v21[3] = v20;
  v22 = v17;

  return v22;
}

uint64_t sub_10000C8A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v52 = type metadata accessor for BorderedProminentButtonStyle();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100003998(&qword_100035650, &qword_100025AB0);
  __chkstk_darwin(v47);
  v8 = &v45 - v7;
  v48 = sub_100003998(&qword_100035658, &qword_100025AB8);
  __chkstk_darwin(v48);
  v10 = &v45 - v9;
  v57 = sub_100003998(&qword_100035660, &qword_100025AC0);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = &v45 - v11;
  v51 = sub_100003998(&qword_100035668, &qword_100025AC8);
  __chkstk_darwin(v51);
  v49 = &v45 - v13;
  v50 = sub_100003998(&qword_100035670, &qword_100025AD0);
  v14 = __chkstk_darwin(v50);
  v63 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v60 = &v45 - v19;
  v62 = static Alignment.topTrailing.getter();
  v61 = v20;
  v21 = a2;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v82;
  v55 = v84;
  v59 = v86;
  v58 = v87;
  v66 = v83;
  LOBYTE(v74[0]) = v83;
  v56 = v85;
  LOBYTE(v69) = v85;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v21;
  v67 = a1;
  v68 = v21;
  v23 = v21;
  sub_100003998(&qword_100035678, &qword_100025AD8);
  sub_100003D8C(&qword_100035680, &qword_100035678, &qword_100025AD8, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8[*(v47 + 36)] = v74[0];
  sub_10000D6E0();
  View.accessibilityIdentifier(_:)();
  sub_100003F00(v8, &qword_100035650, &qword_100025AB0);
  BorderedProminentButtonStyle.init()();
  sub_10000D798();
  sub_10000D854(&qword_100035320, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v24 = v52;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v6, v24);
  sub_100003F00(v10, &qword_100035658, &qword_100025AB8);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v23;
  static Published.subscript.getter();

  if (LOBYTE(v74[0]) == 1)
  {
    v26 = static Color.red.getter();
  }

  else
  {
    v26 = static Color.green.getter();
  }

  v27 = v26;
  KeyPath = swift_getKeyPath();
  v74[0] = v27;
  v29 = AnyShapeStyle.init<A>(_:)();
  v30 = v49;
  (*(v54 + 32))(v49, v12, v57);
  v31 = (v30 + *(v51 + 36));
  *v31 = KeyPath;
  v31[1] = v29;
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  sub_10000D8AC(v30, v18, &qword_100035668, &qword_100025AC8);
  v32 = &v18[*(v50 + 36)];
  *v32 = KeyPath;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v33 = v60;
  sub_10000D8AC(v18, v60, &qword_100035670, &qword_100025AD0);
  v34 = v63;
  sub_10000D914(v33, v63);
  v35 = v62;
  *&v69 = v62;
  v36 = v61;
  *(&v69 + 1) = v61;
  v46 = v25;
  *&v70 = v25;
  *(&v70 + 1) = v65;
  LOBYTE(v71) = v66;
  *(&v71 + 1) = *v89;
  DWORD1(v71) = *&v89[3];
  v37 = v55;
  *(&v71 + 1) = v55;
  LOBYTE(v29) = v56;
  LOBYTE(v72) = v56;
  *(&v72 + 1) = *v88;
  DWORD1(v72) = *&v88[3];
  v38 = v59;
  v39 = v58;
  *(&v72 + 1) = v59;
  v73 = v58;
  v40 = v64;
  *(v64 + 64) = v58;
  v41 = v70;
  *v40 = v69;
  v40[1] = v41;
  v42 = v72;
  v40[2] = v71;
  v40[3] = v42;
  v43 = sub_100003998(&qword_1000356A8, &qword_100025BA8);
  sub_10000D914(v34, v40 + *(v43 + 48));
  sub_10000D984(&v69, v74);
  sub_100003F00(v33, &qword_100035670, &qword_100025AD0);
  sub_100003F00(v34, &qword_100035670, &qword_100025AD0);
  v74[0] = v35;
  v74[1] = v36;
  v74[2] = v46;
  v74[3] = v65;
  v75 = v66;
  *v76 = *v89;
  *&v76[3] = *&v89[3];
  v77 = v37;
  v78 = v29;
  *v79 = *v88;
  *&v79[3] = *&v88[3];
  v80 = v38;
  v81 = v39;
  return sub_100003F00(v74, &qword_1000356B0, &qword_100025BB0);
}

void sub_10000D158(uint64_t a1, uint64_t a2)
{
  withAnimation<A>(_:_:)();
  v2 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v2 impactOccurred];
}

void sub_10000D1E8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  static Published.subscript.setter();
  sub_100005AF0(v4);
}

uint64_t sub_10000D300@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10000D3E4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = Image.init(systemName:)();
  *a2 = result;
  return result;
}

double sub_10000D4A4(uint64_t a1, void *a2)
{
  v3 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = a2;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100005F70(0, 0, v5, &unk_100025238, v9);

  return result;
}

uint64_t sub_10000D5D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D614()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10000D6E0()
{
  result = qword_100035688;
  if (!qword_100035688)
  {
    sub_1000039E0(&qword_100035650, &qword_100025AB0);
    sub_100003D8C(&qword_100035690, &qword_100035698, &qword_100025B28, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035688);
  }

  return result;
}

unint64_t sub_10000D798()
{
  result = qword_1000356A0;
  if (!qword_1000356A0)
  {
    sub_1000039E0(&qword_100035658, &qword_100025AB8);
    sub_10000D6E0();
    sub_10000D854(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000356A0);
  }

  return result;
}

uint64_t sub_10000D854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D8AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035670, &qword_100025AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000356B0, &qword_100025BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000DA24()
{
  result = qword_1000356B8;
  if (!qword_1000356B8)
  {
    sub_1000039E0(&qword_100035648, &qword_100025AA8);
    sub_10000DAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000356B8);
  }

  return result;
}

unint64_t sub_10000DAB0()
{
  result = qword_1000356C0;
  if (!qword_1000356C0)
  {
    sub_1000039E0(&qword_100035640, &qword_100025AA0);
    sub_1000039E0(&qword_100035628, &qword_100025A90);
    sub_1000039E0(&qword_100035620, &qword_100025A88);
    sub_100003D8C(&qword_100035638, &qword_100035620, &qword_100025A88, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000356C0);
  }

  return result;
}

uint64_t sub_10000DC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000DC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ContentView(uint64_t a1)
{
  result = qword_100035728;
  if (!qword_100035728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DD60(uint64_t a1)
{
  sub_10000DDCC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000DDCC(uint64_t a1)
{
  if (!qword_100035738)
  {
    type metadata accessor for FinishLaunchTestAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100035738);
    }
  }
}

uint64_t sub_10000DE40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v59 = type metadata accessor for MultimodalListStyle.IconStyle();
  v3 = *(v59 - 8);
  v4 = __chkstk_darwin(v59);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v51 - v6;
  v7 = sub_100003998(&qword_100035850, &qword_100025CC8);
  v8 = __chkstk_darwin(v7 - 8);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v63 = type metadata accessor for MultimodalListStyle();
  v56 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100003998(&qword_1000357D8, &qword_100025C58);
  v54 = *(v61 - 8);
  __chkstk_darwin(v61);
  v15 = &v51 - v14;
  v62 = sub_100003998(&qword_100035858, &qword_100025CD0);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v51 - v16;
  v60 = sub_100003998(&qword_100035860, &qword_100025CD8);
  __chkstk_darwin(v60);
  v18 = &v51 - v17;
  sub_10000B0C4(0, &qword_100035840, CLFCameraSettings_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [ObjCClassFromMetadata sharedInstance];
  v21 = sub_100012C20();

  v22 = *(v21 + 2);

  if (v22 == 1)
  {
    v24 = [ObjCClassFromMetadata sharedInstance];
    v25 = sub_100012C20();

    if (*(v25 + 2))
    {
      v26 = v25[32];

      sub_10000E6E0(v26, &v65);
      v27 = v66;
      v28 = BYTE2(v66);
      *v18 = v65;
      *(v18 + 8) = v27;
      v18[18] = v28;
      swift_storeEnumTagMultiPayload();
      sub_100003998(&qword_100035790, &qword_100025C40);
      sub_1000104EC();
      v29 = sub_100003D8C(&qword_1000357E0, &qword_1000357D8, &qword_100025C58, &protocol conformance descriptor for List<A, B>);
      *&v65 = v61;
      *(&v65 + 1) = v63;
      v66 = v29;
      v67 = &protocol witness table for MultimodalListStyle;
      swift_getOpaqueTypeConformance2();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  __chkstk_darwin(v23);
  *(&v51 - 2) = v2;
  sub_100003998(&qword_100035868, &qword_100025CE0);
  sub_100010FFC();
  v51 = v15;
  List<>.init(content:)();
  sub_10000B0C4(0, &qword_100035898, CLFSettings_ptr);
  v31 = [swift_getObjCClassFromMetadata() sharedInstance];
  v32 = [v31 listLayout];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

    v37 = &enum case for MultimodalListStyle.Layout.stack(_:);
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = &enum case for MultimodalListStyle.Layout.grid(_:);
    if (v38)
    {
      v37 = &enum case for MultimodalListStyle.Layout.stack(_:);
    }
  }

  v39 = *v37;
  v40 = type metadata accessor for MultimodalListStyle.Layout();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v11, v39, v40);
  (*(v41 + 56))(v11, 0, 1, v40);
  v42 = v53;
  v43 = v59;
  (*(v3 + 104))(v53, enum case for MultimodalListStyle.IconStyle.circle(_:), v59);
  sub_100004130(v11, v52, &qword_100035850, &qword_100025CC8);
  (*(v3 + 16))(v57, v42, v43);
  MultimodalListStyle.init(layout:iconStyle:)();
  (*(v3 + 8))(v42, v43);
  sub_100003F00(v11, &qword_100035850, &qword_100025CC8);
  v44 = sub_100003D8C(&qword_1000357E0, &qword_1000357D8, &qword_100025C58, &protocol conformance descriptor for List<A, B>);
  v45 = v55;
  v46 = v61;
  v47 = v63;
  v48 = v51;
  View.listStyle<A>(_:)();
  (*(v56 + 8))(v13, v47);
  (*(v54 + 8))(v48, v46);
  v49 = v58;
  v50 = v62;
  (*(v58 + 16))(v18, v45, v62);
  swift_storeEnumTagMultiPayload();
  sub_100003998(&qword_100035790, &qword_100025C40);
  sub_1000104EC();
  *&v65 = v46;
  *(&v65 + 1) = v47;
  v66 = v44;
  v67 = &protocol witness table for MultimodalListStyle;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v49 + 8))(v45, v50);
}

double sub_10000E6E0@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  if (a1 > 1u)
  {
    sub_100010738();
    sub_10001078C();
  }

  else
  {
    sub_100010604();
    sub_100010658();
  }

  _ConditionalContent<>.init(storage:)();
  sub_100003998(&qword_1000357A0, &qword_100025C48);
  sub_100003998(&qword_1000357C0, &qword_100025C50);
  sub_100010578();
  sub_1000106AC();
  _ConditionalContent<>.init(storage:)();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 18) = v8;
  return result;
}

uint64_t sub_10000E940(uint64_t a1)
{
  v2 = type metadata accessor for ContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000B0C4(0, &qword_100035840, CLFCameraSettings_ptr);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = sub_100012C20();

  v10[1] = v6;
  sub_100010EE4(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100010C7C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_100003998(&qword_1000358A0, &qword_100025CF8);
  sub_100003998(&qword_100035880, &qword_100025CE8);
  sub_100003D8C(&qword_1000358A8, &qword_1000358A0, &qword_100025CF8, &protocol conformance descriptor for [A]);
  sub_100011080();
  sub_10001135C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10000EB3C(char *a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035890, &qword_100025CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v12 = *a1;
  v10 = a2;
  v11 = v12;
  sub_100003998(&qword_1000358B8, &qword_100025D00);
  sub_1000113BC();
  sub_1000107E0();
  NavigationLink<>.init<A>(value:label:)();
  sub_100003D8C(&qword_100035888, &qword_100035890, &qword_100025CF0, &protocol conformance descriptor for NavigationLink<A, B>);
  View.accessibilityIdentifier(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000ED6C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100003998(&qword_1000358D0, &qword_100025D08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-v8];
  v19 = a1;
  v20 = a2;
  v17 = a1;
  v18 = a2;
  sub_100003998(&qword_1000358E8, &qword_100025D18);
  sub_100003998(&qword_100035338, &qword_1000252E0);
  sub_10001094C(&qword_1000358F0, &qword_1000358E8, &qword_100025D18, sub_1000114F8);
  sub_100003F60();
  Label.init(title:icon:)();
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = static Color.yellow.getter();
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = static Color.green.getter();
LABEL_6:
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v21 = v11;
  v13 = AnyShapeStyle.init<A>(_:)();
  (*(v7 + 32))(a3, v9, v6);
  result = sub_100003998(&qword_1000358B8, &qword_100025D00);
  v15 = (a3 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  return result;
}

double sub_10000EF90@<D0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6 & 1;
  sub_10001167C(v3, v4, v6 & 1);

  _ConditionalContent<>.init(storage:)();
  sub_100003998(&qword_100035900, &qword_100025D20);
  sub_1000114F8();
  _ConditionalContent<>.init(storage:)();
  sub_100004018(v3, v5, v7);

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 33) = v12;
  return result;
}

uint64_t sub_10000F2A0@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = Image.init(_:bundle:)();
      goto LABEL_6;
    }

    v6 = Image.init(_:bundle:)();
LABEL_9:
    v4 = v6;
    v5 = static Color.white.getter();
    goto LABEL_10;
  }

  if (a1)
  {
    v6 = Image.init(systemName:)();
    goto LABEL_9;
  }

  v3 = Image.init(systemName:)();
LABEL_6:
  v4 = v3;
  v5 = static Color.black.getter();
LABEL_10:
  v7 = v5;
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = result;
  a2[2] = v7;
  return result;
}

uint64_t sub_10000F394@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v19 = v1;
  sub_100003998(&qword_100035768, &qword_100025C28);
  v20 = sub_1000039E0(&qword_100035770, &qword_100025C30);
  v21 = &type metadata for NavigationStage;
  v22 = sub_1000039E0(&qword_100035778, &qword_100025C38);
  v23 = sub_1000103D0();
  v24 = sub_1000107E0();
  v25 = sub_100010834();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v7 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_100003998(&qword_100035820, &qword_100025CA0) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  sub_100010EE4(v1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContentView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_100010C7C(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v12 = (a1 + *(sub_100003998(&qword_100035828, &qword_100025CA8) + 36));
  *v12 = sub_100010CE0;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1000351F0 != -1)
  {
    swift_once();
  }

  v14 = sub_100003998(&qword_100035830, &qword_100025CB0);
  NSNotificationCenter.publisher(for:object:)();

  sub_100010EE4(v2, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContentView);
  v15 = swift_allocObject();
  result = sub_100010C7C(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v10);
  v17 = (a1 + *(v14 + 56));
  *v17 = sub_100010D40;
  v17[1] = v15;
  return result;
}

uint64_t sub_10000F6B4(uint64_t a1)
{
  v2 = type metadata accessor for ContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003998(&qword_100035770, &qword_100025C30);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10000DE40(&v11 - v6);
  sub_100010EE4(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_100010C7C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_100003998(&qword_100035778, &qword_100025C38);
  sub_1000103D0();
  sub_1000107E0();
  sub_100010834();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_100010E7C(v7);
}

uint64_t sub_10000F894(_BYTE *a1)
{
  v2 = type metadata accessor for PhotoLibraryView(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003998(&qword_100035848, &qword_100025CC0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = *a1;
  if (v8 <= 1)
  {
    if (*a1)
    {
      *&v22 = sub_100012BC0;
      *(&v22 + 1) = 0;
      LOWORD(v23) = 256;
      sub_100010604();
      sub_100010658();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v26))
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      v22 = v25;
      LOWORD(v23) = v18 | v26;
      BYTE2(v23) = 0;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v11 = *(&v25 + 1);
      v10 = v25;
      v12 = BYTE2(v26);
      v13 = v26;
      v22 = v25;
      BYTE2(v23) = BYTE2(v26) != 0;
      LOWORD(v23) = v26;
      HIBYTE(v23) = 1;
    }

    else
    {
      *&v22 = sub_100004690;
      *(&v22 + 1) = 0;
      LOWORD(v23) = 0;
      sub_100010604();
      sub_100010658();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v26))
      {
        v14 = 256;
      }

      else
      {
        v14 = 0;
      }

      v22 = v25;
      LOWORD(v23) = v14 | v26;
      BYTE2(v23) = 0;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v11 = *(&v25 + 1);
      v10 = v25;
      v12 = BYTE2(v26);
      v13 = v26;
      v22 = v25;
      HIWORD(v23) = BYTE2(v26) != 0;
      LOWORD(v23) = v26;
    }

    sub_100010FC0(v10, v11, v13, v12, sub_1000116DC, sub_1000116DC);
    sub_100003998(&qword_100035790, &qword_100025C40);
    sub_1000104EC();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v26))
    {
      v19 = 0x1000000;
    }

    else
    {
      v19 = 0;
    }

    v22 = v25;
    v23 = v19 | v26 | (BYTE2(v26) << 16);
    v24 = 0;
  }

  else
  {
    if (v8 == 2)
    {
      *&v22 = sub_1000043F8;
      *(&v22 + 1) = 0;
      LOWORD(v23) = 0;
      sub_100010738();
      sub_10001078C();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v26))
      {
        v15 = 256;
      }

      else
      {
        v15 = 0;
      }

      v22 = v25;
      LOWORD(v23) = v15 | v26;
      BYTE2(v23) = 1;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v11 = *(&v25 + 1);
      v10 = v25;
      v12 = BYTE2(v26);
      v13 = v26;
      v22 = v25;
      HIWORD(v23) = BYTE2(v26) != 0;
      LOWORD(v23) = v26;
    }

    else
    {
      if (v8 != 3)
      {
        PhotoLibraryView.init()(v4);
        sub_100010EE4(v4, v7, type metadata accessor for PhotoLibraryView);
        swift_storeEnumTagMultiPayload();
        sub_100003998(&qword_100035800, &qword_100025C60);
        sub_10001094C(&qword_1000357F8, &qword_100035800, &qword_100025C60, sub_10001091C);
        sub_100011168(&qword_100035818, type metadata accessor for PhotoLibraryView, &protocol conformance descriptor for PhotoLibraryView);
        _ConditionalContent<>.init(storage:)();
        return sub_100010F4C(v4);
      }

      *&v22 = sub_1000046F0;
      *(&v22 + 1) = 0;
      LOWORD(v23) = 256;
      sub_100010738();
      sub_10001078C();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v26))
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      v22 = v25;
      LOWORD(v23) = v9 | v26;
      BYTE2(v23) = 1;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v11 = *(&v25 + 1);
      v10 = v25;
      v12 = BYTE2(v26);
      v13 = v26;
      v22 = v25;
      BYTE2(v23) = BYTE2(v26) != 0;
      LOWORD(v23) = v26;
      HIBYTE(v23) = 1;
    }

    sub_100010FC0(v10, v11, v13, v12, sub_1000116DC, sub_1000116DC);
    sub_100003998(&qword_100035790, &qword_100025C40);
    sub_1000104EC();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v26))
    {
      v16 = 0x1000000;
    }

    else
    {
      v16 = 0;
    }

    v22 = v25;
    v23 = v16 | v26 | (BYTE2(v26) << 16);
    v24 = 1;
  }

  sub_100003998(&qword_100035810, &qword_100025C68);
  sub_10001091C();
  _ConditionalContent<>.init(storage:)();
  v20 = v26;
  v21 = v27;
  *v7 = v25;
  *(v7 + 4) = v20;
  v7[20] = v21;
  swift_storeEnumTagMultiPayload();
  sub_100003998(&qword_100035800, &qword_100025C60);
  sub_10001094C(&qword_1000357F8, &qword_100035800, &qword_100025C60, sub_10001091C);
  sub_100011168(&qword_100035818, type metadata accessor for PhotoLibraryView, &protocol conformance descriptor for PhotoLibraryView);
  _ConditionalContent<>.init(storage:)();
  return sub_100010FC0(v10, v11, v13, v12, sub_1000116E0, sub_1000116E0);
}

uint64_t sub_1000100E8()
{
  v0 = type metadata accessor for FinishLaunchTestAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B0C4(0, &qword_100035840, CLFCameraSettings_ptr);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = sub_100012C20();

  v6 = *(v5 + 2);

  if (v6 >= 2)
  {
    sub_1000109C8(v3);
    FinishLaunchTestAction.callAsFunction()();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_100010214()
{
  v0 = type metadata accessor for FinishLaunchTestAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v9[1] = 1701080941;
  v9[2] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10000A65C(v10), (v7 & 1) == 0))
  {

    sub_10000AF34(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    return sub_100003F00(&v11, &qword_100035838, &qword_100025CB8);
  }

  sub_100010E08(*(v5 + 56) + 32 * v6, &v11);
  sub_10000AF34(v10);

  if (!*(&v12 + 1))
  {
    return sub_100003F00(&v11, &qword_100035838, &qword_100025CB8);
  }

  result = swift_dynamicCast();
  if (result)
  {
    sub_1000109C8(v3);
    FinishLaunchTestAction.callAsFunction()();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

unint64_t sub_1000103D0()
{
  result = qword_100035780;
  if (!qword_100035780)
  {
    sub_1000039E0(&qword_100035770, &qword_100025C30);
    sub_1000104EC();
    sub_1000039E0(&qword_1000357D8, &qword_100025C58);
    type metadata accessor for MultimodalListStyle();
    sub_100003D8C(&qword_1000357E0, &qword_1000357D8, &qword_100025C58, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035780);
  }

  return result;
}

unint64_t sub_1000104EC()
{
  result = qword_100035788;
  if (!qword_100035788)
  {
    sub_1000039E0(&qword_100035790, &qword_100025C40);
    sub_100010578();
    sub_1000106AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035788);
  }

  return result;
}

unint64_t sub_100010578()
{
  result = qword_100035798;
  if (!qword_100035798)
  {
    sub_1000039E0(&qword_1000357A0, &qword_100025C48);
    sub_100010604();
    sub_100010658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035798);
  }

  return result;
}

unint64_t sub_100010604()
{
  result = qword_1000357A8;
  if (!qword_1000357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357A8);
  }

  return result;
}

unint64_t sub_100010658()
{
  result = qword_1000357B0;
  if (!qword_1000357B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357B0);
  }

  return result;
}

unint64_t sub_1000106AC()
{
  result = qword_1000357B8;
  if (!qword_1000357B8)
  {
    sub_1000039E0(&qword_1000357C0, &qword_100025C50);
    sub_100010738();
    sub_10001078C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357B8);
  }

  return result;
}

unint64_t sub_100010738()
{
  result = qword_1000357C8;
  if (!qword_1000357C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357C8);
  }

  return result;
}

unint64_t sub_10001078C()
{
  result = qword_1000357D0;
  if (!qword_1000357D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357D0);
  }

  return result;
}

unint64_t sub_1000107E0()
{
  result = qword_1000357E8;
  if (!qword_1000357E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357E8);
  }

  return result;
}

unint64_t sub_100010834()
{
  result = qword_1000357F0;
  if (!qword_1000357F0)
  {
    sub_1000039E0(&qword_100035778, &qword_100025C38);
    sub_10001094C(&qword_1000357F8, &qword_100035800, &qword_100025C60, sub_10001091C);
    sub_100011168(&qword_100035818, type metadata accessor for PhotoLibraryView, &protocol conformance descriptor for PhotoLibraryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357F0);
  }

  return result;
}

uint64_t sub_10001094C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000109C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003998(&qword_1000353E8, &qword_100025680);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004130(v2, &v14 - v9, &qword_1000353E8, &qword_100025680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for FinishLaunchTestAction();
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

uint64_t sub_100010BC8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010BF4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010CE0()
{
  type metadata accessor for ContentView(0);

  return sub_1000100E8();
}

uint64_t sub_100010D40()
{
  type metadata accessor for ContentView(0);

  return sub_100010214();
}

uint64_t sub_100010DB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100010E7C(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035770, &qword_100025C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010F4C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010FB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_retain_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100010FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  if (a4)
  {
    return (a6)(a1, a2, a3, (a3 >> 8) & 1, a5);
  }

  else
  {
    return a5(a1, a2, a3, (a3 >> 8) & 1);
  }
}

void sub_100010FE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

unint64_t sub_100010FFC()
{
  result = qword_100035870;
  if (!qword_100035870)
  {
    sub_1000039E0(&qword_100035868, &qword_100025CE0);
    sub_100011080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035870);
  }

  return result;
}

unint64_t sub_100011080()
{
  result = qword_100035878;
  if (!qword_100035878)
  {
    sub_1000039E0(&qword_100035880, &qword_100025CE8);
    sub_100003D8C(&qword_100035888, &qword_100035890, &qword_100025CF0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_100011168(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035878);
  }

  return result;
}

uint64_t sub_100011168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000111B0()
{
  v1 = *(type metadata accessor for ContentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003998(&qword_1000353E8, &qword_100025680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for FinishLaunchTestAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000112C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10001135C()
{
  result = qword_1000358B0;
  if (!qword_1000358B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000358B0);
  }

  return result;
}

unint64_t sub_1000113BC()
{
  result = qword_1000358C0;
  if (!qword_1000358C0)
  {
    sub_1000039E0(&qword_1000358B8, &qword_100025D00);
    sub_100003D8C(&qword_1000358C8, &qword_1000358D0, &qword_100025D08, &protocol conformance descriptor for Label<A, B>);
    sub_100003D8C(&qword_1000358D8, &qword_1000358E0, &qword_100025D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000358C0);
  }

  return result;
}

double sub_1000114A0@<D0>(uint64_t a1@<X8>)
{
  sub_10000EF90(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

unint64_t sub_1000114F8()
{
  result = qword_1000358F8;
  if (!qword_1000358F8)
  {
    sub_1000039E0(&qword_100035900, &qword_100025D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000358F8);
  }

  return result;
}

uint64_t sub_100011574@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000115A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100011624@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001167C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_100011844()
{
  v6 = [*(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView) layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession);
    }

    else
    {
      v4 = 0;
    }

    v5 = v6;
    [v2 setSession:v4];

    [v2 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  }
}

id sub_100011A20()
{
  v1 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView;
  [*&v0[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView] setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result addSubview:*&v0[v1]];

  sub_100003998(&qword_100035980, &unk_100025DE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025D90;
  v5 = [*&v0[v1] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = [result widthAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] heightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = [result heightAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  v15 = [result centerXAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = objc_opt_self();
  v20 = [v18 centerYAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v4 + 56) = v21;
  sub_10000B0C4(0, &qword_100035988, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  v23 = *&v0[v1];

  return [v23 setAccessibilityIgnoresInvertColors:1];
}

void sub_100011E24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel);
  if (!v1)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AAD4(v16, qword_100037DF0);
    v35 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v35, v17, "Attempted to update preview rotation angle, but no camera model was set.", v18, 2u);
    }

    goto LABEL_31;
  }

  v2 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator;
  v3 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator);
  if (v3)
  {
    v4 = v1;
    goto LABEL_4;
  }

  v19 = *&v1[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device];
  if (!v19)
  {
    v33 = qword_1000351F8;
    v21 = v1;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000AAD4(v34, qword_100037DF0);
    v35 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v30))
    {
      goto LABEL_30;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Device is nil";
    goto LABEL_29;
  }

  v20 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView);
  v21 = v1;
  v22 = v19;
  v23 = [v20 layer];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
  }

  v25 = [objc_allocWithZone(AVCaptureDeviceRotationCoordinator) initWithDevice:v22 previewLayer:v24];

  v26 = *(v0 + v2);
  *(v0 + v2) = v25;
  v27 = v25;

  v28 = *&v21[OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator];
  *&v21[OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator] = v25;

  v3 = *(v0 + v2);
  if (!v3)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000AAD4(v29, qword_100037DF0);
    v35 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v30))
    {
      goto LABEL_30;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Could not create rotation coordinator";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v35, v30, v32, v31, 2u);

LABEL_30:

    goto LABEL_31;
  }

LABEL_4:
  v35 = v3;
  static UIInterfaceOrientation.window.getter();
  v5 = [*(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView) layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_7:

    goto LABEL_8;
  }

  v7 = [v6 connection];

  if (v7)
  {
    [v35 videoRotationAngleForHorizonLevelPreview];
    [v7 setVideoRotationAngle:?];
    v5 = v7;
    goto LABEL_7;
  }

LABEL_8:
  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AAD4(v8, qword_100037DF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    type metadata accessor for UIInterfaceOrientation(0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100012614(v13, v14, &v36);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating AVCaptureVideoPreviewLayer orientation to %s", v11, 0xCu);
    sub_10000B154(v12);

    return;
  }

LABEL_31:
}

id sub_100012348(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView;
  type metadata accessor for PreviewView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel] = 0;
  *&v3[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PreviewViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_100012478(void *a1)
{
  v3 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView;
  type metadata accessor for PreviewView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel] = 0;
  *&v1[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PreviewViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10001255C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100012614(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000126E0(v11, 0, 0, 1, a1, a2);
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
    sub_100010E08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B154(v11);
  return v7;
}

unint64_t sub_1000126E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000127EC(a5, a6);
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

char *sub_1000127EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100012838(a1, a2);
  sub_100012968(&off_100031B68);
  return v3;
}

char *sub_100012838(uint64_t a1, unint64_t a2)
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

  v6 = sub_100012A54(v5, 0);
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
        v7 = sub_100012A54(v10, 0);
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

uint64_t sub_100012968(uint64_t result)
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

  result = sub_100012AC8(result, v11, 1, v3);
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

void *sub_100012A54(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_100035978, "H:");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100012AC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_100035978, "H:");
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

char *sub_100012C20()
{
  if ([v0 allowPhotoCapture])
  {
    v1 = sub_100012E40(0, 1, 1, &_swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_100012E40((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v1[v3 + 32] = 0;
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  if ([v0 allowSelfieCapture])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100012E40(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_100012E40((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    v1[v5 + 32] = 2;
  }

  if ([v0 allowVideoCapture])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100012E40(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_100012E40((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    v1[v7 + 32] = 1;
  }

  if ([v0 allowSelfieVideoCapture])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100012E40(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_100012E40((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    v1[v9 + 32] = 3;
  }

  return v1;
}

char *sub_100012E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_100035998, &qword_100025EC8);
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

char *sub_100012F50()
{
  v1 = *v0;
  type metadata accessor for PreviewViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v2[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel];
  *&v2[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel] = v1;
  v4 = v1;

  sub_100011844();
  return v2;
}

void sub_100012FC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel);
  *(a1 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel) = v2;
  v4 = v2;

  sub_100011844();
}

uint64_t sub_10001307C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000131C4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000130E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000131C4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100013144(uint64_t a1)
{
  sub_1000131C4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100013170()
{
  result = qword_1000359A0;
  if (!qword_1000359A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000359A0);
  }

  return result;
}

unint64_t sub_1000131C4()
{
  result = qword_1000359A8;
  if (!qword_1000359A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000359A8);
  }

  return result;
}

uint64_t sub_100013218()
{
  v0 = type metadata accessor for Logger();
  sub_10001329C(v0, qword_100037DF0);
  sub_10000AAD4(v0, qword_100037DF0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10001329C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t static UIInterfaceOrientation.window.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10000B0C4(0, &qword_100035A68, UIScene_ptr);
  sub_100013808();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 >= 2)
  {
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AAD4(v4, qword_100037E08);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      v9 = Set.description.getter();
      v11 = sub_100012614(v9, v10, v34);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unexpectedly had multiple scenes: %s", v7, 0xCu);
      sub_10000B154(v8);
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v13 = v34[0];
    v12 = v34[1];
    v14 = v34[2];
    v15 = v34[3];
    v16 = v34[4];
  }

  else
  {
    v17 = -1 << *(v2 + 32);
    v12 = v2 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v2 + 56);

    v15 = 0;
    v13 = v2;
  }

  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v21 = v15;
  v22 = v16;
  v23 = v15;
  if (!v16)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_28;
      }

      v22 = *(v12 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_30;
  }

LABEL_21:
  v24 = (v22 - 1) & v22;
  v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  if (v25)
  {
    while (1)
    {
      sub_10000B0C4(0, &qword_100035A78, UIWindowScene_ptr);
      if ([v25 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        break;
      }

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v25 = v33;
        v23 = v15;
        v24 = v16;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_100013870(v13);

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = [v31 effectiveGeometry];
      v29 = [v32 interfaceOrientation];

      goto LABEL_33;
    }
  }

  else
  {
LABEL_28:
    sub_100013870(v13);
  }

  if (qword_100035A48 != -1)
  {
    goto LABEL_38;
  }

LABEL_30:
  v26 = type metadata accessor for Logger();
  sub_10000AAD4(v26, qword_100037E08);
  v25 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v25, v27, "Unexpectedly had no window scene.", v28, 2u);
  }

  v29 = 1;
LABEL_33:

  return v29;
}

unint64_t sub_100013808()
{
  result = qword_100035A70;
  if (!qword_100035A70)
  {
    sub_10000B0C4(255, &qword_100035A68, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035A70);
  }

  return result;
}

uint64_t static UIInterfaceOrientation.fromDeviceOrientation(_:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t variable initialization expression of PhotoLibraryView._finishedLaunching@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003998(&qword_1000353E8, &qword_100025680);

  return swift_storeEnumTagMultiPayload();
}

BOOL variable initialization expression of PhotoLibraryView.isPad()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_10001396C(uint64_t a1, int a2)
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

uint64_t sub_10001398C(uint64_t result, int a2, int a3)
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

uint64_t sub_100013A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100003998(&qword_100035A98, &qword_100026148);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  type metadata accessor for PlayerViewModel();
  sub_100013DDC();
  a3 &= 1u;
  v11 = *(StateObject.wrappedValue.getter() + 16);

  VideoPlayer<>.init(player:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  v13 = &v10[*(sub_100003998(&qword_100035AA8, &qword_100026150) + 36)];
  *v13 = sub_100013E40;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = &v10[*(sub_100003998(&qword_100035AB0, &qword_100026158) + 36)];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_100013EA4;
  *(v15 + 3) = v14;
  v10[*(v8 + 36)] = 1;
  sub_100013ECC(a1, a2);
  sub_100013ECC(a1, a2);
  sub_100013ED4();
  View.accessibilityIdentifier(_:)();
  sub_1000140F8(v10);
  v16 = *(StateObject.wrappedValue.getter() + 24);

  v17 = *(StateObject.wrappedValue.getter() + 32);

  v18 = a4 + *(sub_100003998(&qword_100035AE8, &qword_100026168) + 36);
  *v18 = v16 / v17;
  *(v18 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = 1;
  result = sub_100003998(&qword_100035AF0, &qword_1000261A0);
  v22 = (a4 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_1000141C8;
  v22[2] = v20;
  return result;
}

double sub_100013CE8(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  type metadata accessor for PlayerViewModel();
  sub_100013DDC();
  [*(StateObject.wrappedValue.getter() + 16) *a4];

  return result;
}

uint64_t sub_100013D70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100003998(&qword_100035A90, &qword_100026140);
  return sub_100013A1C(v3, v4, v5, a1 + *(v6 + 44));
}

unint64_t sub_100013DDC()
{
  result = qword_100035AA0;
  if (!qword_100035AA0)
  {
    type metadata accessor for PlayerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AA0);
  }

  return result;
}

uint64_t sub_100013E68()
{
  sub_100013E38(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100013ED4()
{
  result = qword_100035AB8;
  if (!qword_100035AB8)
  {
    sub_1000039E0(&qword_100035A98, &qword_100026148);
    sub_100013F60();
    sub_1000140A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AB8);
  }

  return result;
}

unint64_t sub_100013F60()
{
  result = qword_100035AC0;
  if (!qword_100035AC0)
  {
    sub_1000039E0(&qword_100035AB0, &qword_100026158);
    sub_100013FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AC0);
  }

  return result;
}

unint64_t sub_100013FEC()
{
  result = qword_100035AC8;
  if (!qword_100035AC8)
  {
    sub_1000039E0(&qword_100035AA8, &qword_100026150);
    sub_100003D8C(&qword_100035AD0, &qword_100035AD8, &qword_100026160, &protocol conformance descriptor for VideoPlayer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AC8);
  }

  return result;
}

unint64_t sub_1000140A4()
{
  result = qword_100035AE0;
  if (!qword_100035AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AE0);
  }

  return result;
}

uint64_t sub_1000140F8(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035A98, &qword_100026148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014160@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001423C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RoundedRectangle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000142FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotoViewInternal(uint64_t a1)
{
  result = qword_100035B60;
  if (!qword_100035B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000143EC(uint64_t a1)
{
  sub_1000144E8(319, &qword_100035B70, &qword_100035B78, &qword_1000261C8);
  if (v1 <= 0x3F)
  {
    sub_1000144E8(319, &qword_100035B80, &qword_100035B88, qword_1000261D0);
    if (v2 <= 0x3F)
    {
      sub_10001453C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for RoundedRectangle();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000144E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000039E0(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10001453C()
{
  if (!qword_100035B90)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100035B90);
    }
  }
}

uint64_t sub_1000145A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003998(&qword_100035BD0, &qword_100026228);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for PhotoViewInternal(0);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100003998(&qword_100035BD8, &qword_100026230);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v61 = *(v1 + 16);
  sub_100003998(&qword_100035BE0, &qword_100026238);
  State.wrappedValue.getter();
  v13 = *&v58[0];
  if (*&v58[0])
  {
    v40 = v10;
    v43 = *&v58[0];
    v44 = a1;
    v37 = static Color.clear.getter();
    v14 = static Alignment.center.getter();
    v41 = v6;
    v42 = v4;
    v35 = v14;
    v16 = v15;
    v17 = static Alignment.center.getter();
    v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v18;
    sub_100014B80(v13, v2, &v61);
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v50 = v61;
    v51 = v62;
    v57 = v66;
    v56[2] = v63;
    v56[3] = v64;
    v56[4] = v65;
    v56[0] = v61;
    v56[1] = v62;
    v38 = v9;
    v36 = v2;
    sub_100004130(&v50, v58, &qword_100035C80, &qword_100026288);
    sub_100003F00(v56, &qword_100035C80, &qword_100026288);
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v62 = v50;
    v63 = v51;
    *&v58[0] = v17;
    *(&v58[0] + 1) = v19;
    v58[1] = v50;
    v58[2] = v51;
    v58[4] = v53;
    v58[5] = v54;
    v58[3] = v52;
    *&v59 = v55;
    *(&v59 + 1) = v35;
    v60 = v16;
    v49 = 0;
    *&v48[54] = v52;
    *&v48[38] = v51;
    *&v48[22] = v50;
    *&v48[6] = v58[0];
    *&v48[118] = v16;
    *&v48[102] = v59;
    *&v48[86] = v54;
    *&v48[70] = v53;
    *&v61 = v17;
    *(&v61 + 1) = v19;
    v67 = v55;
    v68 = v35;
    v69 = v16;
    sub_100004130(v58, &v47, &qword_100035C40, &qword_100026268);
    sub_100003F00(&v61, &qword_100035C40, &qword_100026268);
    LOBYTE(v16) = v49;
    v20 = *(v45 + 36);
    v21 = &v12[*(sub_100003998(&qword_100035C10, &qword_100026250) + 36)];
    v22 = v36;
    sub_100015AAC(v36 + v20, v21, &type metadata accessor for RoundedRectangle);
    *(v21 + *(sub_100003998(&qword_100035C50, &qword_100026270) + 36)) = 256;
    v23 = *&v48[48];
    *(v12 + 82) = *&v48[64];
    v24 = *&v48[96];
    *(v12 + 98) = *&v48[80];
    *(v12 + 114) = v24;
    *(v12 + 8) = *&v48[110];
    *(v12 + 18) = *v48;
    v25 = *&v48[32];
    *(v12 + 34) = *&v48[16];
    *(v12 + 50) = v25;
    *v12 = v37;
    *(v12 + 1) = 0x3FF0000000000000;
    v12[16] = v16;
    v12[17] = 0;
    *(v12 + 66) = v23;
    v26 = &v12[*(sub_100003998(&qword_100035C00, &qword_100026248) + 36)];
    sub_100015AAC(v22 + v20, v26, &type metadata accessor for RoundedRectangle);
    *(v26 + *(sub_100003998(&qword_100035C60, &qword_100026278) + 36)) = 0;
    v27 = v39;
    sub_100015AAC(v22, v39, type metadata accessor for PhotoViewInternal);
    v28 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v29 = swift_allocObject();
    sub_1000155D8(v27, v29 + v28);
    v30 = v41;
    v31 = &v12[*(v40 + 36)];
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = sub_100015B14;
    *(v31 + 3) = v29;
    sub_100004130(v12, v30, &qword_100035BD8, &qword_100026230);
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035BE8, &qword_100026240);
    sub_1000156BC();
    sub_1000159F4();
    _ConditionalContent<>.init(storage:)();

    return sub_100003F00(v12, &qword_100035BD8, &qword_100026230);
  }

  else
  {
    sub_100015AAC(v2, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
    v33 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v34 = swift_allocObject();
    sub_1000155D8(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
    *v6 = sub_10001563C;
    *(v6 + 1) = v34;
    *(v6 + 2) = 0x3FF0000000000000;
    *(v6 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035BE8, &qword_100026240);
    sub_1000156BC();
    sub_1000159F4();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100014B80(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1;
  Image.init(uiImage:)();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v11 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  v12 = Image.init(systemName:)();
  v13 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v15 = static Color.black.getter();
  v16 = [*a2 mediaType];
  v23 = 1;
  v17 = 1.0;
  if (v16 != 2)
  {
    v17 = 0.0;
  }

  *&v24 = v12;
  *(&v24 + 1) = KeyPath;
  *&v25 = v13;
  *(&v25 + 1) = v15;
  v26 = 0x402C000000000000;
  v27 = 0;
  *&v28 = 0;
  *(&v28 + 1) = v17;
  *&v22[6] = v24;
  *&v22[22] = v25;
  *&v22[38] = 0x402C000000000000uLL;
  *&v22[54] = v28;
  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  v18 = *&v22[16];
  *(a3 + 18) = *v22;
  v19 = *&v22[32];
  v20 = *&v22[48];
  *(a3 + 80) = *&v22[62];
  *(a3 + 66) = v20;
  *(a3 + 50) = v19;
  *(a3 + 34) = v18;
  v29[0] = v12;
  v29[1] = KeyPath;
  v29[2] = v13;
  v29[3] = v15;
  v29[5] = 0;
  v29[6] = 0;
  v29[4] = 0x402C000000000000;
  *&v29[7] = v17;

  sub_100004130(&v24, v21, &qword_100035C90, &qword_1000262C8);
  sub_100003F00(v29, &qword_100035C90, &qword_1000262C8);
}

uint64_t sub_100014DEC(uint64_t a1)
{
  sub_100003998(&qword_100035BE0, &qword_100026238);
  State.wrappedValue.setter();
  sub_100003998(&qword_100035C88, &qword_100026290);
  State.wrappedValue.getter();
  v1 = [objc_opt_self() defaultManager];
  [v1 cancelImageRequest:0];

  return State.wrappedValue.setter();
}

uint64_t sub_100014EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotoViewInternal(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  ProgressView<>.init<>()();
  sub_100015AAC(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_1000155D8(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  (*(v7 + 32))(v15 + v14, v9, v6);
  result = sub_100003998(&qword_100035C98, &qword_1000262D0);
  v17 = (a3 + *(result + 36));
  *v17 = sub_100015D6C;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_10001510C(double *a1)
{
  v2 = type metadata accessor for PhotoViewInternal(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v34 = *a1;
  GeometryProxy.size.getter();
  v12 = v11;
  v13 = *(a1 + 6);
  if (*(a1 + 56) == 1)
  {
    v14 = a1[6];
    GeometryProxy.size.getter();
    v16 = v15;
    v17 = *&v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v32 = v3;
    v18 = static Log.runtimeIssuesLog.getter();
    v33 = v10;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v20 = sub_1000155CC(v13, 0);
    v21 = *(v7 + 8);
    v21(v9, v6, v20);
    v17 = *&aBlock;
    GeometryProxy.size.getter();
    v16 = v22;

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v10 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_1000155CC(v13, 0);
    v21(v9, v6, v24);
    v3 = v32;
    v14 = *&aBlock;
  }

  v25 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v25 setDeliveryMode:0];
  [v25 setNetworkAccessAllowed:1];
  [v25 setAllowSecondaryDegradedImage:1];
  sub_100015AAC(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  sub_1000155D8(v5, v27 + v26);
  v41 = sub_100015F54;
  v42 = v27;
  *&aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v38 = 1107296256;
  v39 = sub_100018F64;
  v40 = &unk_100032938;
  v28 = _Block_copy(&aBlock);

  LODWORD(v27) = [v10 requestImageForAsset:*&v34 targetSize:1 contentMode:v25 options:v28 resultHandler:{v12 * v17, v16 * v14}];
  _Block_release(v28);

  v29 = *(a1 + 36);
  v30 = *(a1 + 5);
  LODWORD(aBlock) = *(a1 + 8);
  BYTE4(aBlock) = v29;
  v38 = v30;
  v35 = v27;
  v36 = 0;
  sub_100003998(&qword_100035C88, &qword_100026290);
  return State.wrappedValue.setter();
}

void *sub_100015564(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    sub_100003998(&qword_100035BE0, &qword_100026238);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_1000155CC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000155D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoViewInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001563C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100014EFC(a1, v6, a2);
}

unint64_t sub_1000156BC()
{
  result = qword_100035BF0;
  if (!qword_100035BF0)
  {
    sub_1000039E0(&qword_100035BD8, &qword_100026230);
    sub_100015748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035BF0);
  }

  return result;
}

unint64_t sub_100015748()
{
  result = qword_100035BF8;
  if (!qword_100035BF8)
  {
    sub_1000039E0(&qword_100035C00, &qword_100026248);
    sub_100015800();
    sub_100003D8C(&qword_100035C58, &qword_100035C60, &qword_100026278, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035BF8);
  }

  return result;
}

unint64_t sub_100015800()
{
  result = qword_100035C08;
  if (!qword_100035C08)
  {
    sub_1000039E0(&qword_100035C10, &qword_100026250);
    sub_1000158B8();
    sub_100003D8C(&qword_100035C48, &qword_100035C50, &qword_100026270, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C08);
  }

  return result;
}

unint64_t sub_1000158B8()
{
  result = qword_100035C18;
  if (!qword_100035C18)
  {
    sub_1000039E0(&qword_100035C20, &qword_100026258);
    sub_100015970();
    sub_100003D8C(&qword_100035C38, &qword_100035C40, &qword_100026268, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C18);
  }

  return result;
}

unint64_t sub_100015970()
{
  result = qword_100035C28;
  if (!qword_100035C28)
  {
    sub_1000039E0(&qword_100035C30, &qword_100026260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C28);
  }

  return result;
}

unint64_t sub_1000159F4()
{
  result = qword_100035C68;
  if (!qword_100035C68)
  {
    sub_1000039E0(&qword_100035BE8, &qword_100026240);
    sub_100003D8C(&qword_100035C70, &qword_100035C78, &qword_100026280, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C68);
  }

  return result;
}

uint64_t sub_100015AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100015B14()
{
  v1 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100014DEC(v2);
}

uint64_t sub_100015B74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100015BCC()
{
  v1 = (type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  sub_1000155CC(*(v11 + 48), *(v11 + 56));
  v12 = v1[11];
  v13 = v12 + *(type metadata accessor for RoundedRectangle() + 20);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100015D6C()
{
  v1 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for GeometryProxy();

  return sub_10001510C((v0 + v2));
}

uint64_t sub_100015E38()
{
  v1 = (type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000155CC(*(v0 + v3 + 48), *(v0 + v3 + 56));
  v5 = v1[11];
  v6 = v5 + *(type metadata accessor for RoundedRectangle() + 20);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_100015F54(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100015564(a1, a2, v6);
}

uint64_t sub_100015FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015FF0()
{
  result = qword_100035CA0;
  if (!qword_100035CA0)
  {
    sub_1000039E0(&qword_100035CA8, &qword_1000262D8);
    sub_1000156BC();
    sub_1000159F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035CA0);
  }

  return result;
}

__n128 sub_100016090(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000160AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1000160F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000161DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100016258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1000162D4(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100016314(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035CE8, &qword_1000263F8);
  __chkstk_darwin(v2);
  v4 = &v14[-v3 - 8];
  v5 = sub_100003998(&qword_100035CF0, &qword_100026400);
  __chkstk_darwin(v5);
  v7 = &v14[-v6 - 8];
  v21 = *a1;
  if ([v21 mediaType] == 2)
  {
    sub_100016654();
    sub_100004130(v7, v4, &qword_100035CF0, &qword_100026400);
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035CF8, &qword_100026408);
    sub_100018274();
    sub_100003D8C(&qword_100035D30, &qword_100035CF8, &qword_100026408, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100003F00(v7, &qword_100035CF0, &qword_100026400);
  }

  else
  {
    v9 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = v9;
    v10 = *(a1 + 24);
    v17 = *(a1 + 32);
    v18 = v10;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v11 = swift_allocObject();
    v12 = *(a1 + 16);
    *(v11 + 16) = *a1;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(a1 + 32);
    *(v11 + 64) = *(a1 + 48);
    *v4 = sub_10001826C;
    v4[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_100018210(&v21, v14);
    sub_100004130(&v20, v14, &qword_100035B78, &qword_1000261C8);
    sub_100004130(&v19, v14, &qword_100035CB8, &qword_1000263D8);
    sub_100004130(&v18, v14, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v17, v14, &qword_100035CC8, &qword_1000263E0);
    sub_100004130(&v15, v14, &qword_100035CD0, &qword_1000263E8);
    sub_100003998(&qword_100035CF8, &qword_100026408);
    sub_100018274();
    sub_100003D8C(&qword_100035D30, &qword_100035CF8, &qword_100026408, &protocol conformance descriptor for GeometryReader<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100016654()
{
  v1 = v0;
  v2 = sub_100003998(&qword_100035D38, &qword_100026420);
  __chkstk_darwin(v2);
  v4 = (&v21[-1] - v3);
  v5 = sub_100003998(&qword_100035D10, &qword_100026410);
  __chkstk_darwin(v5);
  v7 = (&v21[-1] - v6);
  v8 = v0[3];
  v9 = v0[4];
  v22 = v8;
  v23 = v9;
  sub_100003998(&qword_100035D40, &qword_100026428);
  State.wrappedValue.getter();
  v10 = v21[0];
  if (v21[0])
  {
    *v7 = static Alignment.bottom.getter();
    v7[1] = v11;
    v12 = v7 + *(sub_100003998(&qword_100035D48, &qword_100026430) + 44);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = *(sub_100003998(&qword_100035D50, &qword_100026438) + 36);

    sub_10001AB64(&v12[v15], v13, v14);
    *v12 = sub_100018414;
    *(v12 + 1) = v10;
    v12[16] = 0;
    sub_100004130(v7, v4, &qword_100035D10, &qword_100026410);
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035D20, &qword_100026418);
    sub_100003D8C(&qword_100035D08, &qword_100035D10, &qword_100026410, &protocol conformance descriptor for ZStack<A>);
    sub_10001832C();
    _ConditionalContent<>.init(storage:)();

    return sub_100003F00(v7, &qword_100035D10, &qword_100026410);
  }

  else
  {
    v17 = *v1;
    v25 = v1[1];
    v26 = v17;
    v24 = v1[2];
    v27 = v8;
    v28 = v9;
    v22 = v1[5];
    LOBYTE(v23) = *(v1 + 48);
    v18 = swift_allocObject();
    v19 = *(v1 + 1);
    *(v18 + 16) = *v1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(v1 + 2);
    *(v18 + 64) = *(v1 + 48);
    *v4 = sub_10001840C;
    v4[1] = v18;
    v4[2] = 0;
    v4[3] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100018210(&v26, v21);
    sub_100004130(&v25, v21, &qword_100035B78, &qword_1000261C8);
    sub_100004130(&v24, v21, &qword_100035CB8, &qword_1000263D8);
    sub_100004130(&v27, v21, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v28, v21, &qword_100035CC8, &qword_1000263E0);
    sub_100004130(&v22, v21, &qword_100035CD0, &qword_1000263E8);
    sub_100003998(&qword_100035D20, &qword_100026418);
    sub_100003D8C(&qword_100035D08, &qword_100035D10, &qword_100026410, &protocol conformance descriptor for ZStack<A>);
    sub_10001832C();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100016A20(uint64_t *a1)
{
  if (qword_100035A48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AAD4(v2, qword_100037E08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting asset for video", v5, 2u);
  }

  v6 = [objc_allocWithZone(PHVideoRequestOptions) init];
  [v6 setNetworkAccessAllowed:1];
  v7 = [objc_opt_self() defaultManager];
  v8 = *a1;
  v22 = a1[1];
  v23 = v8;
  v9 = a1[2];
  v20 = a1[3];
  v21 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v17 = v10;
  v18 = *(a1 + 48);
  v11 = swift_allocObject();
  v12 = *(a1 + 1);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 2);
  *(v11 + 64) = *(a1 + 48);
  aBlock[4] = sub_10001841C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018F64;
  aBlock[3] = &unk_100032A88;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  sub_100018210(&v23, v15);
  sub_100004130(&v22, v15, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v21, v15, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v20, v15, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v19, v15, &qword_100035CC8, &qword_1000263E0);
  sub_100004130(&v17, v15, &qword_100035CD0, &qword_1000263E8);

  [v7 requestPlayerItemForVideo:v8 options:v14 resultHandler:v13];
  _Block_release(v13);
}

void sub_100016CEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = qword_100035A48;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AAD4(v6, qword_100037E08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Got player item", v9, 2u);
    }

    v10 = *a3;
    v11 = v5;
    v12 = [v10 pixelWidth];
    v13 = [v10 pixelHeight];
    type metadata accessor for PlayerViewModel();
    v14 = swift_allocObject();
    v15 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v11];

    *(v14 + 16) = v15;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    v16 = *(a3 + 32);
    v36[0] = *(a3 + 24);
    v40 = v14;
    v41 = v16;
    v32 = v36[0];
    v33 = v16;
    sub_100004130(v36, &v39, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v41, &v39, &qword_100035CC8, &qword_1000263E0);
    sub_100003998(&qword_100035D40, &qword_100026428);
    State.wrappedValue.setter();

    sub_100003F00(v36, &qword_100035CC0, &qword_100026DF0);
    sub_100003F00(&v41, &qword_100035CC8, &qword_1000263E0);
  }

  else
  {
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AAD4(v18, qword_100037E08);
    v19 = *a3;
    v40 = *(a3 + 8);
    v41 = v19;
    v20 = *(a3 + 16);
    v38 = *(a3 + 24);
    v39 = v20;
    v21 = *(a3 + 40);
    v37 = *(a3 + 32);
    v32 = v21;
    LOBYTE(v33) = *(a3 + 48);
    sub_100018210(&v41, v36);
    sub_100004130(&v40, v36, &qword_100035B78, &qword_1000261C8);
    sub_100004130(&v39, v36, &qword_100035CB8, &qword_1000263D8);
    sub_100004130(&v38, v36, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v37, v36, &qword_100035CC8, &qword_1000263E0);
    sub_100004130(&v32, v36, &qword_100035CD0, &qword_1000263E8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_10001843C(&v41);
    sub_100003F00(&v40, &qword_100035B78, &qword_1000261C8);
    v24 = v23;
    sub_100003F00(&v39, &qword_100035CB8, &qword_1000263D8);
    sub_100003F00(&v38, &qword_100035CC0, &qword_100026DF0);
    sub_100003F00(&v37, &qword_100035CC8, &qword_1000263E0);
    sub_100003F00(&v32, &qword_100035CD0, &qword_1000263E8);

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v41;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = a2;
      v36[0] = v28;
      *v26 = 138412546;
      *(v26 + 4) = v25;
      *v27 = v25;
      *(v26 + 12) = 2080;
      sub_100018210(&v41, v34);

      sub_100003998(&qword_100035D58, &qword_100026440);
      v29 = String.init<A>(describing:)();
      v31 = sub_100012614(v29, v30, v36);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v24, "Could not get playerItem for %@. Info: %s", v26, 0x16u);
      sub_100003F00(v27, &qword_100035548, &qword_100025890);

      sub_10000B154(v28);
    }
  }
}

uint64_t sub_1000171F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_1000172A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100003998(&qword_100035D60, &qword_100026448);
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  sub_1000175FC(a2, &v23[-v9 - 8]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v10[*(v8 + 36)];
  v12 = v27;
  *v11 = v26;
  v11[1] = v12;
  v11[2] = v28;
  GeometryProxy.size.getter();
  v24 = v13;
  v25 = v14;
  v15 = *a2;
  v34 = a2[1];
  v35 = v15;
  v16 = a2[2];
  v32 = a2[3];
  v33 = v16;
  v17 = a2[5];
  v31 = a2[4];
  v30 = *(a2 + 48);
  v29 = v17;
  (*(v6 + 16))(&v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  v18 = (*(v6 + 80) + 65) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = *(a2 + 1);
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a2 + 2);
  *(v19 + 64) = *(a2 + 48);
  (*(v6 + 32))(v19 + v18, &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  sub_100018210(&v35, v23);
  sub_100004130(&v34, v23, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v33, v23, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v32, v23, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v31, v23, &qword_100035CC8, &qword_1000263E0);
  sub_100004130(&v29, v23, &qword_100035CD0, &qword_1000263E8);
  type metadata accessor for CGSize(0);
  sub_1000185E4();
  sub_10001897C(&qword_100035DC8, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  View.onChange<A>(of:initial:_:)();

  return sub_100003F00(v10, &qword_100035D60, &qword_100026448);
}

uint64_t sub_1000175FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003998(&qword_100035D98, &qword_100026460);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = sub_100003998(qword_100035DD0, &qword_100026478);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v21 = *(a1 + 8);
  sub_100003998(&qword_100035BE0, &qword_100026238);
  State.wrappedValue.getter();
  if (v23)
  {
    v14 = v23;
    v20[1] = a2;
    v15 = v14;
    Image.init(uiImage:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v16 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v21 = v16;
    v22 = 1;
    sub_100003998(&qword_100035DB8, &qword_100026470);
    sub_1000188F8();
    View.accessibilityIdentifier(_:)();

    [v15 size];
    sub_10001AB64(&v10[*(v8 + 36)], v17, v18);
    sub_100004130(v10, v13, &qword_100035D98, &qword_100026460);
    swift_storeEnumTagMultiPayload();
    sub_100018780();
    sub_1000183B8();
    _ConditionalContent<>.init(storage:)();

    return sub_100003F00(v10, &qword_100035D98, &qword_100026460);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100018780();
    sub_1000183B8();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100017938(double *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  GeometryProxy.size.getter();
  v8 = v7;
  v9 = a1[5];
  v34 = v9;
  v35 = *(a1 + 48);
  if (v35 == 1)
  {
    v10 = v9;
    GeometryProxy.size.getter();
    v12 = v11;
    v13 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = v6;
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100003F00(&v34, &qword_100035CD0, &qword_1000263E8);
    v15 = *(v3 + 8);
    v15(v5, v2);
    v13 = *aBlock;
    GeometryProxy.size.getter();
    v12 = v16;

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v6 = v26;
    sub_100003F00(&v34, &qword_100035CD0, &qword_1000263E8);
    v15(v5, v2);
    v10 = *aBlock;
  }

  v33 = *a1;
  v18 = v33;
  v19 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v19 setDeliveryMode:0];
  [v19 setNetworkAccessAllowed:1];
  [v19 setAllowSecondaryDegradedImage:1];
  v20 = *(a1 + 1);
  v31 = *(a1 + 2);
  v32 = v20;
  v21 = *(a1 + 3);
  v29 = *(a1 + 4);
  v30 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a1 + 2);
  *(v22 + 64) = *(a1 + 48);
  aBlock[4] = sub_100018A28;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018F64;
  aBlock[3] = &unk_100032B00;
  v24 = _Block_copy(aBlock);
  sub_100004130(&v34, v27, &qword_100035CD0, &qword_1000263E8);
  sub_100018210(&v33, v27);
  sub_100004130(&v32, v27, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v31, v27, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v30, v27, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v29, v27, &qword_100035CC8, &qword_1000263E0);

  [v6 requestImageForAsset:v18 targetSize:0 contentMode:v19 options:v24 resultHandler:{v8 * v13, v12 * v10}];
  _Block_release(v24);
}

uint64_t sub_100017D7C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_100003998(&qword_100035BE0, &qword_100026238);
  return State.wrappedValue.setter();
}

uint64_t sub_100017DD4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100017E48@<X0>(uint64_t a2@<X8>)
{
  ProgressView<>.init<>()();
  v3 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100003998(&qword_100035E58, &qword_100026610);
  v6 = (a2 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t sub_100017EAC()
{
  sub_100003998(&qword_100035E58, &qword_100026610);
  sub_100018C30();

  return Label.init(title:icon:)();
}

uint64_t sub_100017F44@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_100003998(&qword_100035CB0, &qword_1000263D0);
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - v3;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v23 = *v1;
  v5 = v23;
  v24 = v7;
  v10 = v1[4];
  v9 = v1[5];
  v25 = v6;
  v26 = v10;
  v27 = v8;
  v28 = v9;
  v29 = *(v1 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  v12 = v1[5];
  *(v11 + 48) = v10;
  *(v11 + 56) = v12;
  *(v11 + 64) = *(v1 + 48);
  v21 = sub_100018208;
  v22 = v11;
  sub_100018210(&v23, v20);
  sub_100004130(&v25, v20, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v24, v20, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v27, v20, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v26, v20, &qword_100035CC8, &qword_1000263E0);
  sub_100004130(&v28, v20, &qword_100035CD0, &qword_1000263E8);
  LocalizedStringKey.init(stringLiteral:)();
  v13 = sub_100003998(&qword_100035CD8, &qword_1000263F0);
  v14 = sub_100003D8C(&qword_100035CE0, &qword_100035CD8, &qword_1000263F0, &unk_1000265C0);
  View.navigationTitle(_:)();

  v21 = v13;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  View.assistiveAccessNavigationIcon(systemImage:)();
  return (*(v2 + 8))(v4, v15);
}

unint64_t sub_100018274()
{
  result = qword_100035D00;
  if (!qword_100035D00)
  {
    sub_1000039E0(&qword_100035CF0, &qword_100026400);
    sub_100003D8C(&qword_100035D08, &qword_100035D10, &qword_100026410, &protocol conformance descriptor for ZStack<A>);
    sub_10001832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D00);
  }

  return result;
}

unint64_t sub_10001832C()
{
  result = qword_100035D18;
  if (!qword_100035D18)
  {
    sub_1000039E0(&qword_100035D20, &qword_100026418);
    sub_1000183B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D18);
  }

  return result;
}

unint64_t sub_1000183B8()
{
  result = qword_100035D28;
  if (!qword_100035D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D28);
  }

  return result;
}

double sub_100018424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100018490()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);

  v6 = sub_1000155CC(*(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1, v6);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100018580()
{
  type metadata accessor for GeometryProxy();

  sub_100017938((v0 + 16));
}

unint64_t sub_1000185E4()
{
  result = qword_100035D68;
  if (!qword_100035D68)
  {
    sub_1000039E0(&qword_100035D60, &qword_100026448);
    sub_100018670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D68);
  }

  return result;
}

unint64_t sub_100018670()
{
  result = qword_100035D70;
  if (!qword_100035D70)
  {
    sub_1000039E0(&qword_100035D78, &qword_100026450);
    sub_1000186F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D70);
  }

  return result;
}

unint64_t sub_1000186F4()
{
  result = qword_100035D80;
  if (!qword_100035D80)
  {
    sub_1000039E0(&qword_100035D88, &qword_100026458);
    sub_100018780();
    sub_1000183B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D80);
  }

  return result;
}

unint64_t sub_100018780()
{
  result = qword_100035D90;
  if (!qword_100035D90)
  {
    sub_1000039E0(&qword_100035D98, &qword_100026460);
    sub_10001883C();
    sub_10001897C(&qword_100035DC0, type metadata accessor for PinchToZoomModifier, &unk_100026AD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D90);
  }

  return result;
}

unint64_t sub_10001883C()
{
  result = qword_100035DA0;
  if (!qword_100035DA0)
  {
    sub_1000039E0(&qword_100035DA8, &qword_100026468);
    sub_1000188F8();
    sub_10001897C(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035DA0);
  }

  return result;
}

unint64_t sub_1000188F8()
{
  result = qword_100035DB0;
  if (!qword_100035DB0)
  {
    sub_1000039E0(&qword_100035DB8, &qword_100026470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035DB0);
  }

  return result;
}

uint64_t sub_10001897C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000189C4()
{

  sub_1000155CC(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100018A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100018A88(uint64_t *a1, int a2)
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

uint64_t sub_100018AD0(uint64_t result, int a2, int a3)
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

uint64_t sub_100018B24()
{
  sub_1000039E0(&qword_100035CB0, &qword_1000263D0);
  sub_1000039E0(&qword_100035CD8, &qword_1000263F0);
  sub_100003D8C(&qword_100035CE0, &qword_100035CD8, &qword_1000263F0, &unk_1000265C0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100018C30()
{
  result = qword_100035E60;
  if (!qword_100035E60)
  {
    sub_1000039E0(&qword_100035E58, &qword_100026610);
    sub_100003D8C(&qword_100035E68, &qword_100035E70, &qword_100026618, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100003D8C(&qword_100035300, &qword_100035308, &qword_1000252C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E60);
  }

  return result;
}

uint64_t sub_100018D14@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100018D6C(void (*a1)(void))
{
  __chkstk_darwin(a1);
  type metadata accessor for _UIHostingView();
  a1();
  return _UIHostingView.__allocating_init(rootView:)();
}

uint64_t sub_100018E08(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2(v1);
  return dispatch thunk of _UIHostingView.rootView.setter();
}

uint64_t sub_100018F68()
{
  v0 = type metadata accessor for Logger();
  sub_10001329C(v0, qword_100037E08);
  sub_10000AAD4(v0, qword_100037E08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100018FEC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_10001329C(v4, qword_100037E20);
  sub_10000AAD4(v4, qword_100037E20);
  if (qword_100035A48 != -1)
  {
    swift_once();
  }

  v5 = sub_10000AAD4(v0, qword_100037E08);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

id sub_10001917C(int64_t a1, uint64_t a2, int64_t a3, id a4)
{
  result = [a4 count];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [a4 count];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a4 count];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_10001925C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_100019274(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

id sub_1000192A0@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*sub_1000192D4(void *a1, void *a2))(uint64_t a1)
{
  v4 = [*v2 objectAtIndexedSubscript:*a2];
  *a1 = v4;
  a1[1] = v4;
  return sub_100019330;
}

uint64_t sub_100019338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = [*v2 count];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;

  return v7;
}

unint64_t sub_1000193B8@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_100019430@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 count];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_10001948C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10001917C(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_1000194C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = [*v2 count];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 count];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100019538(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_100019554(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100019570(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_10001958C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1000195A4(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

int64_t sub_1000195CC()
{
  v1 = *v0;
  v2 = [v1 count];
  result = [v1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v1 count];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019644()
{
  v1 = *v0;
  v2 = sub_100019C10(*v0);

  return v2;
}

void *sub_100019680(void *result, uint64_t a2, unint64_t a3, id a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = a3 - 1;
    while (1)
    {
      if (v7 == [a4 count])
      {
        a3 = v7;
        goto LABEL_13;
      }

      *(a2 + 8 * v7) = [a4 objectAtIndexedSubscript:v7];
      if (v9 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_100019774()
{
  result = qword_100035E98;
  if (!qword_100035E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E98);
  }

  return result;
}

unint64_t sub_100019808()
{
  result = qword_100035EB0;
  if (!qword_100035EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EB0);
  }

  return result;
}

unint64_t sub_1000198A4()
{
  result = qword_100035EC8;
  if (!qword_100035EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EC8);
  }

  return result;
}

unint64_t sub_100019974()
{
  result = qword_100035EE0;
  if (!qword_100035EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EE0);
  }

  return result;
}

uint64_t sub_100019A00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(&qword_100035EA8, &qword_1000266F8);
    sub_100019808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019AC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(&qword_100035EC0, &qword_100026700);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100019B38()
{
  result = qword_100035EF8;
  if (!qword_100035EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EF8);
  }

  return result;
}

void *sub_100019B8C(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_100035F00, &qword_100026898);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100019C10(void *a1)
{
  v2 = [a1 count];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = [a1 count];
  if (v2 < 0 || result < v2)
  {
    goto LABEL_14;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = sub_100019B8C(v2, 0);
  v5 = a1;
  if ([v5 count])
  {
    v6 = 0;
    v7 = v2 - 1;
    while (1)
    {
      v4[v6 + 4] = [v5 objectAtIndexedSubscript:v6];
      if (v7 == v6)
      {
        break;
      }

      if (++v6 == [v5 count])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  return v4;
}

uint64_t sub_100019D58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003998(&qword_100035F08, &qword_100026920);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v37 = sub_100003998(&qword_100035F10, &qword_100026928);
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v35 - v10;
  v39 = 0;
  v12 = a1;
  sub_100003998(&qword_100035B78, &qword_1000261C8);
  State.init(wrappedValue:)();
  *(v8 + 1) = v41;
  LODWORD(v39) = 0;
  BYTE4(v39) = 1;
  sub_100003998(&qword_100035B88, qword_1000261D0);
  State.init(wrappedValue:)();
  v13 = BYTE4(v41);
  v14 = *(&v41 + 1);
  *(v8 + 8) = v41;
  v8[36] = v13;
  *(v8 + 5) = v14;
  *(v8 + 6) = swift_getKeyPath();
  v8[56] = 0;
  v15 = &v8[*(type metadata accessor for PhotoViewInternal(0) + 36)];
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *v8 = v12;
  v8[8] = 0;
  v24 = [v12 localIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = &v8[*(v6 + 52)];
  *v28 = v25;
  v28[1] = v27;
  static AccessibilityChildBehavior.ignore.getter();
  v29 = sub_10001A1D0();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v36);
  sub_10001A234(v8);
  *&v41 = sub_10001A414(v12);
  *(&v41 + 1) = v30;
  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = sub_10001A4F4(v12);
  String.append(_:)(v32);

  v39 = v6;
  v40 = v29;
  swift_getOpaqueTypeConformance2();
  sub_10001A29C();
  v33 = v37;
  View.accessibilityLabel<A>(_:)();

  return (*(v9 + 8))(v11, v33);
}

unint64_t sub_10001A1D0()
{
  result = qword_100035F18;
  if (!qword_100035F18)
  {
    sub_1000039E0(&qword_100035F08, &qword_100026920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F18);
  }

  return result;
}

uint64_t sub_10001A234(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035F08, &qword_100026920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001A29C()
{
  result = qword_100035F20;
  if (!qword_100035F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F20);
  }

  return result;
}

unint64_t sub_10001A2F4()
{
  result = qword_100035F28;
  if (!qword_100035F28)
  {
    sub_1000039E0(&qword_100035F30, &qword_100026960);
    sub_1000039E0(&qword_100035F08, &qword_100026920);
    sub_10001A1D0();
    swift_getOpaqueTypeConformance2();
    sub_10001A3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F28);
  }

  return result;
}

unint64_t sub_10001A3BC()
{
  result = qword_100035318;
  if (!qword_100035318)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035318);
  }

  return result;
}

uint64_t sub_10001A414(void *a1)
{
  v1 = [a1 mediaType];
  if (v1 == 1)
  {
    v2 = 1414482000;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 1162103126;
  }

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001000274D0;
  v4._countAndFlagsBits = v2 & 0xFFFF0000FFFFFFFFLL | 0x4F00000000;
  v4._object = 0xE500000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10001A4F4(void *a1)
{
  v2 = sub_100003998(&qword_100035F38, &qword_100026968);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 creationDate];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_10001A774(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001A7E4(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (qword_100035A58 != -1)
    {
      swift_once();
    }

    v15 = qword_100037E38;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v15 stringFromDate:isa];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 8))(v11, v8);
    return v18;
  }
}

uint64_t sub_10001A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035F38, &qword_100026968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A7E4(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035F38, &qword_100026968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001A84C(uint64_t *a1@<X8>)
{
  v3 = [*v1 localIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int sub_10001A8A4()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001A90C(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_10001A990()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_100037E38 = v0;
}

unint64_t sub_10001AA18()
{
  result = qword_100035F40;
  if (!qword_100035F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F40);
  }

  return result;
}

unint64_t sub_10001AA6C()
{
  result = qword_100035F48;
  if (!qword_100035F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035F48);
  }

  return result;
}

uint64_t sub_10001AAB8()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10001AB14@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double sub_10001AB64@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  *a1 = a2;
  *(a1 + 8) = a3;
  v23 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v13 = *(&v26 + 1);
  *(a1 + 16) = v26;
  *(a1 + 24) = v13;
  v23 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v14 = *(&v26 + 1);
  *(a1 + 32) = v26;
  *(a1 + 40) = v14;
  v15 = type metadata accessor for PinchToZoomModifier(0);
  ScrollPosition.init<A>(idType:)();
  (*(v7 + 16))(v10, v12, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v12, v6);
  v16 = a1 + v15[8];
  type metadata accessor for CGPoint(0);
  v23 = 0;
  v24 = 0;
  State.init(wrappedValue:)();
  v17 = v27;
  *v16 = v26;
  *(v16 + 16) = v17;
  v18 = a1 + v15[9];
  v23 = 0;
  v24 = 0;
  v25 = 1;
  sub_100003998(&qword_100035FF8, &qword_100026AB0);
  State.init(wrappedValue:)();
  v19 = v27;
  v20 = v28;
  result = *&v26;
  *v18 = v26;
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(a1 + v15[10]) = 0x3FF3333333333333;
  return result;
}

uint64_t type metadata accessor for PinchToZoomModifier(uint64_t a1)
{
  result = qword_100036060;
  if (!qword_100036060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100003998(&qword_100036000, &qword_100026AB8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10001AEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100003998(&qword_100036000, &qword_100026AB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001AF98(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_10001B0A4();
    if (v2 <= 0x3F)
    {
      sub_10001B0F4(319, &qword_100036078, &type metadata accessor for ScrollPosition);
      if (v3 <= 0x3F)
      {
        sub_10001B0F4(319, &qword_100036080, type metadata accessor for CGPoint);
        if (v4 <= 0x3F)
        {
          sub_10001B148(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001B0A4()
{
  if (!qword_100036070)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100036070);
    }
  }
}

void sub_10001B0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001B148(uint64_t a1)
{
  if (!qword_100036088)
  {
    sub_1000039E0(&qword_100035FF8, &qword_100026AB0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100036088);
    }
  }
}

void sub_10001B1C8(double a1)
{
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.setter();
  v1 = State.wrappedValue.getter();
  if (a1 < 1.0)
  {
    __chkstk_darwin(v1);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10001B2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_100003998(&qword_1000360D0, &qword_100026B28);
  __chkstk_darwin(v2);
  v4 = (v19 - v3);
  v5 = type metadata accessor for PinchToZoomModifier(0);
  v19[0] = *(v5 - 8);
  v6 = *(v19[0] + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100003998(&qword_1000360D8, &qword_100026B30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  sub_10001CF5C();
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 allowPinchToZoom];

  v14 = *(v8 + 16);
  if (v13)
  {
    v14(v11, v20, v7);
    sub_10001CFA8(v19[1], v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = (v9 + *(v19[0] + 80) + v15) & ~*(v19[0] + 80);
    v17 = swift_allocObject();
    (*(v8 + 32))(v17 + v15, v11, v7);
    sub_10001D1D0(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    *v4 = sub_10001D234;
    v4[1] = v17;
  }

  else
  {
    v14(v4, v20, v7);
  }

  swift_storeEnumTagMultiPayload();
  sub_100003998(&qword_1000360E0, &qword_100026B38);
  sub_100003D8C(&qword_1000360E8, &qword_1000360E0, &qword_100026B38, &protocol conformance descriptor for GeometryReader<A>);
  sub_100003D8C(&qword_1000360F0, &qword_1000360D8, &qword_100026B30, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10001B600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v93 = a4;
  v94 = a1;
  v86 = type metadata accessor for MagnifyGesture();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100003998(&qword_1000360F8, &qword_100026B40);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v65 - v6;
  v92 = sub_100003998(&qword_100036100, &qword_100026B48);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v65 - v7;
  v81 = type metadata accessor for ScrollIndicatorVisibility();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_100036108, &qword_100026B50);
  __chkstk_darwin(v9 - 8);
  v72 = &v65 - v10;
  v69 = type metadata accessor for PinchToZoomModifier(0);
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = v12;
  v97 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003998(&qword_100036110, &qword_100026B58);
  v67 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v74 = sub_100003998(&qword_100036118, &qword_100026B60);
  v68 = *(v74 - 8);
  __chkstk_darwin(v74);
  v17 = &v65 - v16;
  v78 = sub_100003998(&qword_100036120, &qword_100026B68);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v73 = &v65 - v18;
  v95 = sub_100003998(&qword_100036128, &qword_100026B70);
  v77 = *(v95 - 8);
  __chkstk_darwin(v95);
  v76 = &v65 - v19;
  v83 = sub_100003998(&qword_100036130, &qword_100026B78);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v96 = &v65 - v20;
  v66 = sub_100003998(&qword_100036138, &qword_100026B80);
  inited = swift_initStackObject();
  v65 = xmmword_100026A90;
  *(inited + 16) = xmmword_100026A90;
  v22 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v22;
  v23 = static Axis.Set.vertical.getter();
  *(inited + 33) = v23;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v22)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v24 = Axis.Set.init(rawValue:)();
  if (v24 != v23)
  {
    v24 = Axis.Set.init(rawValue:)();
  }

  __chkstk_darwin(v24);
  *(&v65 - 4) = a2;
  v25 = v98;
  v26 = v94;
  *(&v65 - 3) = v98;
  v64 = v26;
  sub_100003998(&qword_100036140, &qword_100026B88);
  v27 = sub_1000039E0(&qword_100036148, &qword_100026B90);
  v28 = sub_10001D330();
  v99 = v27;
  v100 = v28;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  type metadata accessor for CGPoint(0);
  v30 = v29;
  v31 = v97;
  sub_10001CFA8(v25, v97);
  v32 = *(v11 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = v33 + v71;
  v71 = v32;
  v70 = v34;
  v35 = swift_allocObject();
  v94 = v33;
  sub_10001D1D0(v31, v35 + v33);
  v36 = sub_100003D8C(&qword_100036168, &qword_100036110, &qword_100026B58, &protocol conformance descriptor for ScrollView<A>);
  v37 = sub_10001D540(&qword_100036170, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  v64 = v37;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v67 + 8))(v15, v13);
  sub_100003998(&qword_100036000, &qword_100026AB8);
  v38 = v72;
  State.projectedValue.getter();
  v99 = v13;
  v100 = v30;
  v101 = v36;
  v102 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v73;
  v41 = v74;
  View.scrollPosition(_:anchor:)();
  sub_100003F00(v38, &qword_100036108, &qword_100026B50);
  (*(v68 + 8))(v17, v41);
  v42 = v79;
  static ScrollIndicatorVisibility.hidden.getter();
  v43 = swift_initStackObject();
  *(v43 + 16) = v65;
  LOBYTE(v30) = static Axis.Set.vertical.getter();
  *(v43 + 32) = v30;
  v44 = static Axis.Set.horizontal.getter();
  *(v43 + 33) = v44;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v44)
  {
    Axis.Set.init(rawValue:)();
  }

  v99 = v41;
  v100 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v76;
  v47 = v78;
  View.scrollIndicators(_:axes:)();
  (*(v80 + 8))(v42, v81);
  (*(v75 + 8))(v40, v47);
  v48 = v98;
  v49 = *(v98 + 40);
  v99 = *(v98 + 32);
  v100 = v49;
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.getter();
  v99 = v47;
  v100 = v45;
  v81 = swift_getOpaqueTypeConformance2();
  v50 = v95;
  View.scrollDisabled(_:)();
  (*(v77 + 8))(v46, v50);
  v51 = v84;
  MagnifyGesture.init(minimumScaleDelta:)();
  v52 = v97;
  sub_10001CFA8(v48, v97);
  v53 = swift_allocObject();
  v54 = v94;
  sub_10001D1D0(v52, v53 + v94);
  sub_10001D540(&qword_100036180, &type metadata accessor for MagnifyGesture, &protocol conformance descriptor for MagnifyGesture);
  sub_10001D540(&qword_100036188, &type metadata accessor for MagnifyGesture.Value, &protocol conformance descriptor for MagnifyGesture.Value);
  v55 = v87;
  v56 = v86;
  Gesture<>.onChanged(_:)();

  (*(v85 + 8))(v51, v56);
  sub_10001CFA8(v48, v52);
  v57 = swift_allocObject();
  sub_10001D1D0(v52, v57 + v54);
  sub_100003D8C(&qword_100036190, &qword_1000360F8, &qword_100026B40, &protocol conformance descriptor for _ChangedGesture<A>);
  v58 = v90;
  v59 = v89;
  Gesture.onEnded(_:)();

  (*(v88 + 8))(v55, v59);
  static GestureMask.all.getter();
  v99 = v95;
  v100 = v81;
  swift_getOpaqueTypeConformance2();
  sub_100003D8C(&qword_100036198, &qword_100036100, &qword_100026B48, &protocol conformance descriptor for _EndedGesture<A>);
  v60 = v83;
  v61 = v92;
  v62 = v96;
  View.highPriorityGesture<A>(_:including:)();
  (*(v91 + 8))(v58, v61);
  return (*(v82 + 8))(v62, v60);
}

uint64_t sub_10001C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v32 = a4;
  v30 = type metadata accessor for GeometryProxy();
  v6 = *(v30 - 8);
  v31 = *(v6 + 64);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PinchToZoomModifier(0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100003998(&qword_100036160, &qword_100026B98);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v29 = sub_100003998(&qword_100036148, &qword_100026B90);
  __chkstk_darwin(v29);
  v14 = &v25 - v13;
  sub_10001C808(a3);
  sub_10001C808(a3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = sub_100003998(&qword_1000360D8, &qword_100026B30);
  (*(*(v15 - 8) + 16))(v12, v28, v15);
  v16 = &v12[*(v10 + 36)];
  v17 = v34;
  *v16 = v33;
  *(v16 + 1) = v17;
  *(v16 + 2) = v35;
  sub_10001CFA8(a2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v27;
  v19 = a3;
  v20 = v30;
  (*(v6 + 16))(v27, v19, v30);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = (v9 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_10001D1D0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  (*(v6 + 32))(v23 + v22, v18, v20);
  sub_10001D3EC();
  View.accessibilityZoomAction(_:)();

  sub_100003F00(v12, &qword_100036160, &qword_100026B98);
  sub_10001D330();
  View.scrollTargetLayout(isEnabled:)();
  return sub_100003F00(v14, &qword_100036148, &qword_100026B90);
}

double sub_10001C808(uint64_t a1)
{
  GeometryProxy.size.getter();
  v3 = v2;
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  v4 = v3 * (v10 * v10);
  GeometryProxy.size.getter();
  v6 = v5;
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  v7 = v6 * (v10 * v10);
  v8 = *v1 / v1[1];
  if (v4 / v7 >= v8)
  {
    return v7 * v8;
  }

  return v4;
}

uint64_t sub_10001C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScrollPosition();
  __chkstk_darwin(v5 - 8);
  AccessibilityZoomGestureAction.direction.getter();
  if (static AccessibilityZoomGestureAction.Direction.== infix(_:_:)())
  {
    v6 = *(a2 + *(type metadata accessor for PinchToZoomModifier(0) + 40));
    sub_100003998(&qword_100036178, &qword_100026BA0);
    State.wrappedValue.getter();
    v7 = v6 * v9;
  }

  else
  {
    sub_100003998(&qword_100036178, &qword_100026BA0);
    State.wrappedValue.getter();
    v7 = v9 / *(a2 + *(type metadata accessor for PinchToZoomModifier(0) + 40));
    if (v7 <= 1.0)
    {
      v7 = 1.0;
    }
  }

  sub_10001B1C8(v7);
  sub_10001C808(a3);
  GeometryProxy.size.getter();
  sub_10001C808(a3);
  GeometryProxy.size.getter();
  type metadata accessor for PinchToZoomModifier(0);
  sub_100003998(&qword_100036000, &qword_100026AB8);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(point:)();
  return State.wrappedValue.setter();
}

void sub_10001CB1C(void *a1@<X8>)
{
  ScrollGeometry.contentOffset.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10001CB48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for PinchToZoomModifier(0);
  sub_100003998(&qword_1000361A8, &qword_100026BB0);
  return State.wrappedValue.setter();
}

void *sub_10001CBC4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ScrollPosition();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PinchToZoomModifier(0);
  sub_100003998(&qword_1000361A0, &qword_100026BA8);
  State.wrappedValue.getter();
  if (v4 == 1)
  {
    sub_100003998(&qword_1000361A8, &qword_100026BB0);
    State.wrappedValue.getter();
    v4 = 0;
    State.wrappedValue.setter();
  }

  result = State.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    MagnifyGesture.Value.magnification.getter();
    sub_100003998(&qword_100036178, &qword_100026BA0);
    State.wrappedValue.setter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    sub_100003998(&qword_100036000, &qword_100026AB8);
    State.wrappedValue.getter();
    ScrollPosition.scrollTo(point:)();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10001CE2C(uint64_t a1, void *a2)
{
  MagnifyGesture.Value.magnification.getter();
  v3 = v2;
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.getter();
  sub_10001B1C8(v3 * v5);
  State.wrappedValue.setter();
  type metadata accessor for PinchToZoomModifier(0);
  sub_100003998(&qword_1000361A0, &qword_100026BA8);
  return State.wrappedValue.setter();
}

unint64_t sub_10001CF5C()
{
  result = qword_100036420;
  if (!qword_100036420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100036420);
  }

  return result;
}

uint64_t sub_10001CFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D00C()
{
  v1 = sub_100003998(&qword_1000360D8, &qword_100026B30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PinchToZoomModifier(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v0 + v8 + v6[9];
  v12 = type metadata accessor for ScrollPosition();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_100003998(&qword_100036000, &qword_100026AB8);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}