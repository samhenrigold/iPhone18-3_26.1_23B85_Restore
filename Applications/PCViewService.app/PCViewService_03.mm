uint64_t sub_10004973C()
{
  v0 = type metadata accessor for ActivityIcon(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  Binding.wrappedValue.getter();
  sub_10004920C(v2);
  return sub_10004A028(v2);
}

uint64_t sub_1000497D0(uint64_t a1)
{
  type metadata accessor for ActivityIconView(0);

  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

void *sub_10004987C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_10001F170(a1, a2, &qword_1000DEEB0, &qword_100096C78);
  v5 = type metadata accessor for ActivityIconView(0);
  *(a2 + v5[5]) = a3;
  *(a2 + v5[6]) = 0x3F50624DD2F1A9FCLL;
  *(a2 + v5[7]) = 0x3FD3333333333333;
  *(a2 + v5[8]) = 0x4024000000000000;
  *(a2 + v5[9]) = 0x3FB999999999999ALL;
  v6 = (a2 + v5[10]);
  AnyView.init<A>(_:)();
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a2 + v5[11]);
  AnyView.init<A>(_:)();
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = a2 + v5[12];
  result = State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_100049A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100049AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_100049BB4(uint64_t a1)
{
  sub_100049CB4(319);
  if (v1 <= 0x3F)
  {
    sub_100049D0C(319, &unk_1000DEF28, &type metadata for AnyView, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100049D0C(319, &qword_1000DB1A0, &type metadata for Bool, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100049CB4(uint64_t a1)
{
  if (!qword_1000DEF20)
  {
    type metadata accessor for ActivityIcon(255);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DEF20);
    }
  }
}

void sub_100049D0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100049D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049EAC()
{
  v1 = *(type metadata accessor for ActivityIconView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3 + *(sub_1000056EC(&qword_1000DEEB0, &qword_100096C78) + 32);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for ActivityIcon(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004A028(uint64_t a1)
{
  v2 = type metadata accessor for ActivityIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A09C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivityIconView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10004A110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004A128()
{
  result = qword_1000D9FA0;
  if (!qword_1000D9FA0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9FA0);
  }

  return result;
}

uint64_t sub_10004A180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A1F0(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004A25C()
{
  result = qword_1000DEFE0;
  if (!qword_1000DEFE0)
  {
    sub_100005818(&qword_1000DEFA0, &qword_100096D18);
    sub_10004A2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFE0);
  }

  return result;
}

unint64_t sub_10004A2E8()
{
  result = qword_1000DEFE8;
  if (!qword_1000DEFE8)
  {
    sub_100005818(&qword_1000DEF90, &qword_100096D08);
    sub_10004A3A0();
    sub_10000EE58(&qword_1000DF020, &qword_1000DEF98, &qword_100096D10, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFE8);
  }

  return result;
}

unint64_t sub_10004A3A0()
{
  result = qword_1000DEFF0;
  if (!qword_1000DEFF0)
  {
    sub_100005818(&qword_1000DEF88, &qword_100096D00);
    sub_10004A458();
    sub_10000EE58(&qword_1000DF010, &qword_1000DF018, &qword_10009C760, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFF0);
  }

  return result;
}

unint64_t sub_10004A458()
{
  result = qword_1000DEFF8;
  if (!qword_1000DEFF8)
  {
    sub_100005818(&qword_1000DEF80, &unk_100096CF0);
    sub_10000EE58(&qword_1000DF000, &qword_1000DF008, &unk_100096D60, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFF8);
  }

  return result;
}

uint64_t sub_10004A518@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext;
  swift_beginAccess();
  return sub_100006854(v5 + v3, a1);
}

uint64_t sub_10004A5B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext;
  swift_beginAccess();
  sub_10004AA24(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10004A61C()
{
  swift_getKeyPath();
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10004A698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject);
}

uint64_t sub_10004A71C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004AAFC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004A828()
{

  sub_1000068B8(v0 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext);

  v1 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for NearbySharingInteractionViewModel(uint64_t a1)
{
  result = qword_1000DF068;
  if (!qword_1000DF068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004A940(uint64_t a1)
{
  result = type metadata accessor for NearbySharingInteractionDisplayContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10004AA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AAB8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject) = *(v0 + 24);
}

unint64_t sub_10004AAFC()
{
  result = qword_1000DF1C8;
  if (!qword_1000DF1C8)
  {
    type metadata accessor for NearbySharingInteractionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1C8);
  }

  return result;
}

uint64_t sub_10004AB5C(uint64_t *a1, int a2)
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

uint64_t sub_10004ABA4(uint64_t result, int a2, int a3)
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

double sub_10004AC0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v5 = sub_1000056EC(&qword_1000DF1D8, &qword_100096EE8);
  v35 = *(v5 - 8);
  v6 = v35;
  v7 = __chkstk_darwin(v5);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v41 = &v34 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  LocalizedStringKey.init(stringLiteral:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  sub_1000056EC(&qword_1000DF1E0, &qword_100096EF0);
  sub_10004B264();
  v36 = v15;
  Button.init(action:label:)();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = v13;
  v34 = v13;
  Button.init(action:label:)();
  v23 = *(v6 + 16);
  v24 = v41;
  v23(v41, v15, v5);
  v25 = v42;
  v23(v42, v22, v5);
  v27 = v39;
  v26 = v40;
  v28 = v37;
  *v40 = v16;
  v26[1] = v28;
  v38 &= 1u;
  *(v26 + 16) = v38;
  v26[3] = v27;
  v29 = sub_1000056EC(&qword_1000DF1F0, &qword_100096EF8);
  v23(v26 + *(v29 + 48), v24, v5);
  v23(v26 + *(v29 + 64), v25, v5);
  v30 = v16;
  v31 = v16;
  LOBYTE(v16) = v38;
  sub_10004B348(v31, v28, v38);
  v32 = *(v35 + 8);

  v32(v34, v5);
  v32(v36, v5);
  v32(v25, v5);
  v32(v24, v5);
  sub_100022470(v30, v28, v16);

  return result;
}

uint64_t sub_10004B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000056EC(&qword_1000DF1F8, &qword_100096F00);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  PassthroughSubject.send(_:)();
}

__n128 sub_10004B0F0@<Q0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *(a3 + 128) = v18;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  result = v15;
  *(a3 + 64) = v14;
  *(a3 + 80) = v15;
  return result;
}

double sub_10004B1DC@<D0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_1000056EC(&qword_1000DF1D0, &qword_100096EE0);
  return sub_10004AC0C(v5, v4, (a2 + *(v6 + 44)));
}

unint64_t sub_10004B264()
{
  result = qword_1000DF1E8;
  if (!qword_1000DF1E8)
  {
    sub_100005818(&qword_1000DF1E0, &qword_100096EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1E8);
  }

  return result;
}

uint64_t sub_10004B2E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10004B35C()
{
  result = qword_1000DF200;
  if (!qword_1000DF200)
  {
    sub_100005818(&qword_1000DF208, qword_100096F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF200);
  }

  return result;
}

void sub_10004B3C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10004B42C@<X0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v12 = 0;
  sub_10004B558(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_10001A510(__dst, &v9, &qword_1000DF210, &unk_100097008);
  sub_10000A628(v14, &qword_1000DF210, &unk_100097008);
  memcpy(&v11[7], __dst, 0x140uLL);
  v5 = v12;
  v6 = swift_allocObject();
  v7 = *(v2 + 16);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v2 + 32);
  *(v6 + 64) = *(v2 + 48);
  *a2 = v4;
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v11, 0x147uLL);
  *(a2 + 344) = sub_10004C19C;
  *(a2 + 352) = v6;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  return sub_100019BA0(v2, __src);
}

uint64_t sub_10004B558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  *&v87 = *(a1 + 16);
  *(&v87 + 1) = v3;
  sub_10001F080();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.title.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_100022470(v4, v6, v8 & 1);

  v14 = Text.bold()();
  v43 = v15;
  v44 = v14;
  LOBYTE(v4) = v16;
  v45 = v17;
  sub_100022470(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v39 = v4 & 1;
  LOBYTE(v87) = v4 & 1;
  LOBYTE(v83) = 0;
  v40 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100092B80;
  LOBYTE(v4) = static Edge.Set.leading.getter();
  *(v18 + 32) = v4;
  v19 = static Edge.Set.trailing.getter();
  *(v18 + 33) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  v36 = v20;
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v104 = 0;
  v37 = *(a1 + 32);
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v35 = v87;
  v87 = *(a1 + 40);

  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  v30 = v83;
  State.init(wrappedValue:)();
  v31 = v87;
  State.init(wrappedValue:)();
  v32 = v87;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v74 = v44;
  *(&v74 + 1) = v43;
  LOBYTE(v75) = v39;
  *(&v75 + 1) = *v102;
  DWORD1(v75) = *&v102[3];
  *(&v75 + 1) = v45;
  *&v76 = KeyPath;
  BYTE8(v76) = 1;
  *(&v76 + 9) = *v101;
  HIDWORD(v76) = *&v101[3];
  *&v77 = v41;
  *(&v77 + 1) = 3;
  LOBYTE(v78) = 0;
  DWORD1(v78) = *&v103[3];
  *(&v78 + 1) = *v103;
  *(&v78 + 1) = v40;
  *&v79 = 0x3FE6666666666666;
  BYTE8(v79) = v20;
  *(&v79 + 9) = v105[0];
  HIDWORD(v79) = *(v105 + 3);
  *&v80 = v22;
  *(&v80 + 1) = v24;
  *&v81 = v26;
  *(&v81 + 1) = v28;
  v82 = 0;
  __src[2] = v76;
  __src[3] = v77;
  __src[0] = v74;
  __src[1] = v75;
  LOBYTE(__src[8]) = 0;
  __src[6] = v80;
  __src[7] = v81;
  __src[4] = v78;
  __src[5] = v79;
  *&v83 = v37;
  BYTE8(v83) = v35;
  *&v84 = sub_10004C378;
  *(&v84 + 1) = v29;
  v85[0] = v30;
  *&v85[8] = v87;
  v85[24] = v87;
  v33 = *(&v87 + 1);
  *v86 = *(&v87 + 1);
  *&v86[72] = v71;
  *&v86[56] = v70;
  *&v86[88] = v72;
  *&v86[104] = v73;
  *&v86[8] = v67;
  *&v86[24] = v68;
  *&v86[40] = v69;
  *(&__src[17] + 8) = *&v86[80];
  *(&__src[18] + 8) = *&v86[96];
  *(&__src[16] + 8) = *&v86[64];
  *(&__src[11] + 8) = *&v85[16];
  *(&__src[10] + 8) = *v85;
  *(&__src[9] + 8) = v84;
  *(&__src[8] + 8) = v83;
  *(&__src[15] + 8) = *&v86[48];
  *(&__src[14] + 8) = *&v86[32];
  *(&__src[13] + 8) = *&v86[16];
  *(&__src[12] + 8) = *v86;
  *(&__src[19] + 1) = *(&v73 + 1);
  memcpy(a2, __src, 0x140uLL);
  v91 = v31;
  v97 = v70;
  v98 = v71;
  v99 = v72;
  v100 = v73;
  v94 = v67;
  v95 = v68;
  *&v87 = v37;
  BYTE8(v87) = v35;
  v88 = sub_10004C378;
  v89 = v29;
  v90 = v30;
  v92 = v32;
  v93 = v33;
  v96 = v69;
  sub_10001A510(&v74, v46, &qword_1000DF218, &qword_1000970F8);
  sub_10001A510(&v83, v46, &qword_1000DF220, &qword_100097100);
  sub_10000A628(&v87, &qword_1000DF220, &qword_100097100);
  v46[0] = v44;
  v46[1] = v43;
  v47 = v39;
  *v48 = *v102;
  *&v48[3] = *&v102[3];
  v49 = v45;
  v50 = KeyPath;
  v51 = 1;
  *v52 = *v101;
  *&v52[3] = *&v101[3];
  v53 = v41;
  v54 = 3;
  v55 = 0;
  *&v56[3] = *&v103[3];
  *v56 = *v103;
  v57 = v40;
  v58 = 0x3FE6666666666666;
  v59 = v36;
  *&v60[3] = *(v105 + 3);
  *v60 = v105[0];
  v61 = v22;
  v62 = v24;
  v63 = v26;
  v64 = v28;
  v65 = 0;
  return sub_10000A628(v46, &qword_1000DF218, &qword_1000970F8);
}

void sub_10004BBE8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  aBlock[4] = sub_10004C1F4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B3C4;
  aBlock[3] = &unk_1000CA3E0;
  v5 = _Block_copy(aBlock);
  sub_100019BA0(a1, v7);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
  _Block_release(v5);
}

uint64_t sub_10004BD48@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004BD9C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_10004BE00@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for HandoffFeatureEducationViewModel(0);
  sub_10004C064();
  v3 = ObservedObject.init(wrappedValue:)();
  v33 = v4;
  v34 = v3;
  v5 = objc_opt_self();
  v6 = [v5 localizedStringForKey:17];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100084E5C(0, 3, 0);
  v9 = [v5 localizedStringForKey:18];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  if (v14 >= v13 >> 1)
  {
    sub_100084E5C((v13 > 1), v14 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v14 + 1;
  v15 = &_swiftEmptyArrayStorage[3 * v14];
  *(v15 + 32) = 0;
  v15[5] = v10;
  v15[6] = v12;
  v16 = [v5 localizedStringForKey:{19, v31}];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v21 = _swiftEmptyArrayStorage[2];
  v20 = _swiftEmptyArrayStorage[3];
  if (v21 >= v20 >> 1)
  {
    sub_100084E5C((v20 > 1), v21 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v21 + 1;
  v22 = &_swiftEmptyArrayStorage[3 * v21];
  *(v22 + 32) = 1;
  v22[5] = v17;
  v22[6] = v19;
  v23 = [v5 localizedStringForKey:20];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v28 = _swiftEmptyArrayStorage[2];
  v27 = _swiftEmptyArrayStorage[3];
  if (v28 >= v27 >> 1)
  {
    sub_100084E5C((v27 > 1), v28 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v28 + 1;
  v29 = &_swiftEmptyArrayStorage[3 * v28];
  *(v29 + 32) = 2;
  v29[5] = v24;
  v29[6] = v26;
  result = State.init(wrappedValue:)();
  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32;
  *(a2 + 24) = v8;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = v35;
  return result;
}

unint64_t sub_10004C064()
{
  result = qword_1000DA908;
  if (!qword_1000DA908)
  {
    type metadata accessor for HandoffFeatureEducationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA908);
  }

  return result;
}

__n128 sub_10004C0BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004C0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10004C120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004C1A4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004C24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004C264@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004C2B8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10004C380()
{
  result = qword_1000DF228;
  if (!qword_1000DF228)
  {
    sub_100005818(&qword_1000DF230, &qword_100097108);
    sub_10004C40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF228);
  }

  return result;
}

unint64_t sub_10004C40C()
{
  result = qword_1000DF238;
  if (!qword_1000DF238)
  {
    sub_100005818(&qword_1000DF240, &qword_100097110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF238);
  }

  return result;
}

Swift::UInt64 sub_10004C474()
{
  if (*(v0 + 32) & 1) != 0 || (*(v0 + 48))
  {
    if (*(v0 + 16))
    {
      return 0x646570706F7473;
    }

    else
    {
      return 0x676E696E6E7572;
    }
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    result = v3 - v2;
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      v4 = UpTicksToSecondsF(_:)(result);
      return sub_1000810D8(v4);
    }
  }

  return result;
}

uint64_t sub_10004C530()
{
  if (*v0)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x676E696E6E7572;
  }
}

unint64_t sub_10004C568()
{
  result = qword_1000DF360;
  if (!qword_1000DF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF360);
  }

  return result;
}

uint64_t sub_10004C5E0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  UUID.init()();
  v8 = qword_1000DBFC0;
  sub_1000056EC(&qword_1000DF5D8, &qword_100097328);
  swift_allocObject();
  *(v3 + v8) = PassthroughSubject.init()();
  *(v3 + qword_1000DBFD0) = 0;
  v9 = qword_1000DBFD8;
  sub_1000056EC(&qword_1000DF5E0, &unk_100097330);
  swift_allocObject();
  *(v3 + v9) = PassthroughSubject.init()();
  *(v3 + qword_1000DBFE0) = 0;
  *(v3 + qword_1000DBFC8) = a1;
  v10 = (v3 + qword_1000F3C50);
  *v10 = a2;
  v10[1] = a3;
  v11 = qword_1000D9770;
  v12 = a1;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000047A0(v13, qword_1000DBFA8);
  v14 = v12;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = v14;
    v19 = String.init<A>(describing:)();
    v21 = sub_1000343F8(v19, v20, &v24);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_1000343F8(a2, a3, &v24);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init: role=%s, machService=%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_10004C888()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF368);
  sub_1000047A0(v0, qword_1000DF368);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004C908()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10004C988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000056EC(&qword_1000DF5D0, &qword_100097320);
  swift_allocObject();
  *(v2 + 32) = sub_10004C5E0(0, 0xD000000000000031, 0x80000001000A54D0);
  *(v2 + 40) = &_swiftEmptySetSingleton;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DF368);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_10004CACC()
{
  v1 = v0;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF368);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_10004CBCC()
{
  sub_10004CACC();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_10004CC24()
{
  v1 = v0;
  v12 = sub_1000056EC(&qword_1000DF5E8, &qword_100097650);
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v13[-1] - v3;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000DF368);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000529C(v9);
  }

  v13[0] = *(*(v1 + 16) + 16);
  swift_allocObject();
  swift_weakInit();

  sub_1000056EC(&qword_1000DF5F0, &unk_100097340);
  sub_10000EE58(&qword_1000DF5F8, &qword_1000DF5F0, &unk_100097340, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v10 = *(v1 + 32);
  v13[0] = sub_10004FFF8();
  sub_1000056EC(&qword_1000DF600, &unk_100097660);
  sub_10000EE58(&qword_1000DF608, &qword_1000DF600, &unk_100097660, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DF610, &qword_1000DF5E8, &qword_100097650, &protocol conformance descriptor for Publishers.Filter<A>);
  v11 = v12;
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v4, v11);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v13[0] = *(v10 + qword_1000DBFC0);
  sub_1000056EC(&qword_1000DF5D8, &qword_100097328);
  sub_10000EE58(&qword_1000DF618, &qword_1000DF5D8, &qword_100097328, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v13[0] = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_1000056EC(&qword_1000DF620, &unk_100097350);
  sub_10000EE58(&qword_1000DF628, &qword_1000DF620, &unk_100097350, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000500D4();
}

uint64_t sub_10004D16C(__int128 *a1, uint64_t a2)
{
  v3 = type metadata accessor for ViewServiceOutput(0);
  __chkstk_darwin(v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = a1[1];
  v11 = *a1;
  v12 = v6;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000056EC(&qword_1000DC500, &unk_100097360);
    *(v5 + 41) = *(v13 + 9);
    v8 = v12;
    *v5 = v11;
    v5[1] = v8;
    v5[2] = v13[0];
    sub_10004DDBC(&v11, v10);
    static Date.now.getter();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v5);

    return sub_10004DD5C(v5, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_10004D2CC(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for ViewServiceOutput(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000056EC(&qword_1000DC520, &unk_1000948F0);
    *v5 = v6;
    Date.init()();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v5);

    return sub_10004DD5C(v5, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_10004D3F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004D5A4(a1);
  }

  return result;
}

uint64_t sub_10004D454()
{
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DF368);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  return sub_1000507C0();
}

void sub_10004D5A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v5 = __chkstk_darwin(v4 - 8);
  v57 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v9 = &v52[-v8];
  v10 = __chkstk_darwin(v7);
  v12 = &v52[-v11];
  __chkstk_darwin(v10);
  v14 = &v52[-v13];
  v15 = type metadata accessor for ViewServiceInput(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v60 = &v52[-v20];
  v21 = __chkstk_darwin(v19);
  v59 = &v52[-v22];
  __chkstk_darwin(v21);
  v24 = &v52[-v23];
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000047A0(v25, qword_1000DF368);
  sub_10004DCA4(a1, v24, type metadata accessor for ViewServiceInput);
  v58 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v56 = v9;
    v30 = v29;
    v54 = swift_slowAlloc();
    v61[0] = v54;
    *v30 = 136315394;
    *(v30 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5510, v61);
    *(v30 + 12) = 2080;
    v53 = v28;
    sub_10004DCA4(v24, v59, type metadata accessor for ViewServiceInput);
    v31 = v14;
    v32 = v18;
    v33 = String.init<A>(describing:)();
    v55 = v2;
    v35 = v34;
    sub_10004DD5C(v24, type metadata accessor for ViewServiceInput);
    v36 = v33;
    v18 = v32;
    v14 = v31;
    v37 = sub_1000343F8(v36, v35, v61);

    *(v30 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v27, v53, "%s: input=%s", v30, 0x16u);
    swift_arrayDestroy();

    v9 = v56;
  }

  else
  {

    sub_10004DD5C(v24, type metadata accessor for ViewServiceInput);
  }

  v38 = v60;
  sub_10004DCA4(a1, v60, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v40 = v38[1];
        v61[0] = *v38;
        v61[1] = v40;

        PassthroughSubject.send(_:)();

        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10004DD5C(v38, type metadata accessor for ViewServiceInput);
LABEL_14:
    sub_10004DCA4(a1, v18, type metadata accessor for ViewServiceInput);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v61[0] = v44;
      *v43 = 136315138;
      sub_10004DCA4(v18, v59, type metadata accessor for ViewServiceInput);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      sub_10004DD5C(v18, type metadata accessor for ViewServiceInput);
      v48 = sub_1000343F8(v45, v47, v61);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "### Unexpected input: %s", v43, 0xCu);
      sub_10000529C(v44);

      return;
    }

    v49 = type metadata accessor for ViewServiceInput;
    v50 = v18;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 6)
  {
    return;
  }

  sub_10004DC40(v38, v14);
  sub_10004DCA4(v14, v12, type metadata accessor for NearbySharingInteractionDisplayContext);
  swift_beginAccess();
  sub_10004DCA4(v12, v9, type metadata accessor for NearbySharingInteractionDisplayContext);
  v51 = v57;
  sub_10004DCA4(v9, v57, type metadata accessor for NearbySharingInteractionDisplayContext);

  sub_100052D60(v51);

  sub_10004DD5C(v9, type metadata accessor for NearbySharingInteractionDisplayContext);
  sub_10004DD5C(v12, type metadata accessor for NearbySharingInteractionDisplayContext);
  v50 = v14;
  v49 = type metadata accessor for NearbySharingInteractionDisplayContext;
LABEL_19:
  sub_10004DD5C(v50, v49);
}

uint64_t sub_10004DC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004DD0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004DD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004DE18()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_10004DEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EF60(&qword_1000DF1C8, type metadata accessor for NearbySharingInteractionViewModel, &unk_100096DD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext;
  swift_beginAccess();
  return sub_100006854(v3 + v4, a2);
}

uint64_t sub_10004DF7C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100006854(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10004EF60(&qword_1000DF1C8, type metadata accessor for NearbySharingInteractionViewModel, &unk_100096DD0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000068B8(v6);
}

uint64_t sub_10004E0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF690);
  sub_1000047A0(v0, qword_1000DF690);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004E124()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10004E1B4()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DF938, qword_1000974C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v9 = *(v0 + 32);
  }

  else
  {

    CurrentValueSubject.value.getter();
    v10 = *(v6 + 48);
    if (v10(v4, 1, v5) == 1)
    {
      CurrentValueSubject.value.getter();

      if (v10(v4, 1, v5) != 1)
      {
        sub_10000A628(v4, &qword_1000DF938, qword_1000974C0);
      }
    }

    else
    {

      sub_10004DC40(v4, v8);
    }

    v11 = *(*(v0 + 24) + 16);
    type metadata accessor for NearbySharingInteractionViewModel(0);
    v9 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v9 + 16) = 0x706F6F625FLL;
    *(v9 + 24) = 0xE500000000000000;
    sub_10004DC40(v8, v9 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext);
    *(v9 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject) = v11;
    *(v1 + 32) = v9;
  }

  return v9;
}

uint64_t sub_10004E3F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = &_swiftEmptySetSingleton;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DF690);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_10004E4F8()
{
  v1 = v0;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF690);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_10004E5F8()
{
  sub_10004E4F8();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_10004E650()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DA9E0, &qword_100091D88);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_1000056EC(&qword_1000DF910, &qword_100097480);
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v24 = v23 - v6;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DF690);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, v28);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000529C(v11);
  }

  v12 = *(v1 + 16);
  [*(v12 + 24) setDesiredHardwareButtonEvents:16];
  memset(v28, 0, sizeof(v28));
  v29 = 2;

  PassthroughSubject.send(_:)();

  v27 = sub_10004E1B4();
  type metadata accessor for NearbySharingInteractionViewModel(0);
  State.init(wrappedValue:)();
  v13 = *v28;
  v14 = objc_allocWithZone(sub_1000056EC(&qword_1000DF918, &qword_100097488));
  *v28 = v13;
  v23[1] = v13;
  v15 = &v14[*((swift_isaMask & *v14) + qword_1000F3C60 + 16)];
  *v15 = 0;
  *(v15 + 1) = 0;

  v16 = UIHostingController.init(rootView:)();
  v23[0] = v16;
  v17 = *(v12 + 16);
  sub_10000E2D4(v16, 0);

  *v28 = 1;
  memset(&v28[8], 0, 48);
  v29 = 2;

  PassthroughSubject.send(_:)();

  *v28 = *(v12 + 32);
  sub_10000FE40();

  v18 = static OS_dispatch_queue.main.getter();
  v27 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v20 = v4;
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_1000056EC(&qword_1000DF920, &qword_100097490);
  sub_10000EE58(&qword_1000DF928, &qword_1000DF920, &qword_100097490, &unk_100096B58);
  sub_10004EF60(&qword_1000DAA48, sub_10000FE40, &protocol conformance descriptor for OS_dispatch_queue);
  v21 = v24;
  Publisher.receive<A>(on:options:)();
  sub_10000A628(v20, &qword_1000DA9E0, &qword_100091D88);

  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DF930, &qword_1000DF910, &qword_100097480, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v22 = v26;
  Publisher<>.sink(receiveValue:)();

  (*(v25 + 8))(v21, v22);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004EBFC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_10004E1B4();

    sub_100006854(a1, v5);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v9[-2] = v7;
    v9[-1] = v5;
    v9[2] = v7;
    sub_10004EF60(&qword_1000DF1C8, type metadata accessor for NearbySharingInteractionViewModel, &unk_100096DD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return sub_1000068B8(v5);
  }

  return result;
}

double sub_10004ED8C()
{
  v1 = v0;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF690);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  swift_beginAccess();
  *(v1 + 40) = &_swiftEmptySetSingleton;

  return result;
}

uint64_t sub_10004EEFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F010(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10004F728(a1);
  (*(*(*(v2 + qword_1000F3C60) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10004F090()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF940);
  sub_1000047A0(v0, qword_1000DF940);
  return Logger.init(subsystem:category:)();
}

id sub_10004F120()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  if (qword_1000D9790 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DF940);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A5670, &v15);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000529C(v7);
  }

  v9 = type metadata accessor for LockscreenViewableUIHostingController(0, *(v2 + qword_1000F3C60), *(v2 + qword_1000F3C60 + 8), v8);
  v16.receiver = v1;
  v16.super_class = v9;
  result = objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v11 = (v1 + *((swift_isaMask & *v1) + qword_1000F3C60 + 16));
  v12 = *v11;
  if (*v11)
  {
    v13 = v11[1];
    v14 = sub_10000B16C(*v11, v13);
    v12(v14);
    return sub_10000B17C(v12, v13);
  }

  return result;
}

void sub_10004F338(void *a1)
{
  v1 = a1;
  sub_10004F120();
}

void *sub_10004F3C4(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1000F3C60);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v14 - v6;
  v9 = (v2 + *(v8 + 16));
  *v9 = 0;
  v9[1] = 0;
  (*(v5 + 16))(v7);
  v10 = UIHostingController.init(coder:rootView:)();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_10004F50C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_isaMask & *v4;
  v7 = (v4 + *(v6 + qword_1000F3C60 + 16));
  *v7 = 0;
  v7[1] = 0;
  v8 = type metadata accessor for LockscreenViewableUIHostingController(0, *(v6 + qword_1000F3C60), *(v6 + qword_1000F3C60 + 8), a4);
  v11.receiver = v4;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_10004F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LockscreenViewableUIHostingController(0, *((swift_isaMask & *v4) + qword_1000F3C60), *((swift_isaMask & *v4) + qword_1000F3C60 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10004F728(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v8 - v2;
  v5 = (v1 + *(v4 + 16));
  *v5 = 0;
  v5[1] = 0;
  (*(v6 + 16))(v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10004F820(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for ViewServiceOutput(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000047A0(v12, qword_1000DBFA8);
  sub_1000522F4(a1, v11, type metadata accessor for ViewServiceOutput);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v4;
    v31 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1000343F8(0x293A5F28646E6573, 0xE800000000000000, &v31);
    *(v16 + 12) = 2080;
    v29 = a1;
    sub_1000522F4(v11, v9, type metadata accessor for ViewServiceOutput);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_100052294(v11, type metadata accessor for ViewServiceOutput);
    v21 = sub_1000343F8(v18, v20, &v31);

    *(v16 + 14) = v21;
    a1 = v29;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: input=%s", v16, 0x16u);
    swift_arrayDestroy();
    v4 = v30;

    v6 = v28;
  }

  else
  {

    sub_100052294(v11, type metadata accessor for ViewServiceOutput);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  sub_1000522F4(a1, v9, type metadata accessor for ViewServiceOutput);
  v24 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  sub_100052638(v9, v25 + v24, type metadata accessor for ViewServiceOutput);
  sub_10004FC2C(0, 0, v4, &unk_100097690, v25);
}

uint64_t sub_10004FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100052798(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100052808(v10);
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

      sub_100052808(a3);

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

  sub_100052808(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10004FE98()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_1000DBFD0;
  if (*(v0 + qword_1000DBFD0))
  {
    v6 = *(v0 + qword_1000DBFD0);
  }

  else
  {
    v7 = *(v0 + qword_1000DBFC8);
    (*(v2 + 16))(v4, v0 + qword_1000F3C48);
    type metadata accessor for XPCConnectionManager(0);
    v8 = swift_allocObject();

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x4008000000000000;
    }

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = 10;
    }

    if (v7)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v6 = sub_100051F9C(v4, v9, v10, v11, v0, v8);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_10004FFF8()
{
  v1 = qword_1000DBFE0;
  if (*(v0 + qword_1000DBFE0))
  {
    v2 = *(v0 + qword_1000DBFE0);
  }

  else
  {
    sub_1000056EC(&qword_1000DF5E0, &unk_100097330);
    sub_10000EE58(&qword_1000DFCF8, &qword_1000DF5E0, &unk_100097330, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000500D4()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x2928656D75736572, 0xE800000000000000, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_100050224();
}

void sub_100050224()
{
  v1 = v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBFA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x5374736575716572, 0xEE00292874726174, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  sub_1000503B0();
  if (!*(v1 + qword_1000DBFC8))
  {

    sub_1000504F8();
  }
}

uint64_t sub_1000503B0()
{
  v1 = v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBFA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "start()", v5, 2u);
  }

  sub_10004FE98();
  v6 = sub_100030D8C();

  if (v6 == 1 && !*(v1 + qword_1000DBFC8))
  {
    sub_1000504F8();

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_1000504F8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DBFA8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0x2928676E6970, 0xE600000000000000, &v18);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  static String.Encoding.ascii.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  if (v11 >> 60 == 15)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "### Failed to ping", v14, 2u);
    }
  }

  else
  {
    v15 = sub_10004FE98();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v15 handleWithSerializedObject:isa];

    sub_100052280(v9, v11);
  }
}

uint64_t sub_1000507C0()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10004FE98();
  sub_100031864();
}

uint64_t sub_10005092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10005094C, 0, 0);
}

uint64_t sub_10005094C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for ViewServiceOutput(0);
    sub_100052870();
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v3 = v2;

    sub_1000503B0();
    v4 = sub_10004FE98();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 handleWithSerializedObject:isa];

    sub_100008A9C(v1, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100050AA8()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF9D8);
  sub_1000047A0(v0, qword_1000DF9D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100050B4C()
{

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100050BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000056EC(&qword_1000DF5D0, &qword_100097320);
  swift_allocObject();
  *(v2 + 32) = sub_10004C5E0(0, 0xD000000000000031, 0x80000001000A54D0);
  *(v2 + 40) = &_swiftEmptySetSingleton;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DF9D8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_100050D14()
{
  v1 = v0;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF9D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_100050E14()
{
  sub_100050D14();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_100050E6C()
{
  v1 = v0;
  v14 = sub_1000056EC(&qword_1000DF5E8, &qword_100097650);
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = &v15[-1] - v3;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000DF9D8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000529C(v9);
  }

  v15[0] = *(*(v1 + 16) + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000521E0;
  *(v11 + 24) = v10;

  sub_1000056EC(&qword_1000DFCE0, &qword_100097658);
  sub_10000EE58(&qword_1000DFCE8, &qword_1000DFCE0, &qword_100097658, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v12 = *(v1 + 32);
  v15[0] = sub_10004FFF8();
  sub_1000056EC(&qword_1000DF600, &unk_100097660);
  sub_10000EE58(&qword_1000DF608, &qword_1000DF600, &unk_100097660, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DF610, &qword_1000DF5E8, &qword_100097650, &protocol conformance descriptor for Publishers.Filter<A>);
  v13 = v14;
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v4, v13);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v15[0] = *(v12 + qword_1000DBFC0);
  sub_1000056EC(&qword_1000DF5D8, &qword_100097328);
  sub_10000EE58(&qword_1000DF618, &qword_1000DF5D8, &qword_100097328, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v15[0] = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_1000056EC(&qword_1000DF620, &unk_100097350);
  sub_10000EE58(&qword_1000DF628, &qword_1000DF620, &unk_100097350, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000500D4();
}

uint64_t sub_1000513E0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ViewServiceOutput(0);
  __chkstk_darwin(v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000056EC(&qword_1000DC548, &unk_100097680);
    v11 = a1[1];
    *v9 = *a1;
    *(v9 + 1) = v11;
    *(v9 + 2) = a1[2];
    *(v9 + 41) = *(a1 + 41);
    *(v9 + 8) = a2;
    *(v9 + 9) = a3;
    sub_1000528C8(a1, v13);

    Date.init()();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v9);

    return sub_100052294(v9, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_100051540(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for ViewServiceOutput(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000056EC(&qword_1000DC520, &unk_1000948F0);
    *v5 = v6;
    Date.init()();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v5);

    return sub_100052294(v5, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_100051668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100051818(a1);
  }

  return result;
}

uint64_t sub_1000516C8()
{
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DF9D8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  return sub_1000507C0();
}

void sub_100051818(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityDisplayContext(0);
  v5 = __chkstk_darwin(v4 - 8);
  v64 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v62 = v59 - v8;
  v9 = __chkstk_darwin(v7);
  v63 = v59 - v10;
  __chkstk_darwin(v9);
  v12 = v59 - v11;
  v13 = type metadata accessor for ViewServiceInput(0);
  v14 = __chkstk_darwin(v13);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (v59 - v18);
  v20 = __chkstk_darwin(v17);
  v65 = v59 - v21;
  __chkstk_darwin(v20);
  v23 = v59 - v22;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000047A0(v24, qword_1000DF9D8);
  v66 = a1;
  sub_1000522F4(a1, v23, type metadata accessor for ViewServiceInput);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v61 = v2;
    v29 = v28;
    v59[0] = swift_slowAlloc();
    v67[0] = v59[0];
    *v29 = 136315394;
    *(v29 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5510, v67);
    *(v29 + 12) = 2080;
    v59[1] = v25;
    sub_1000522F4(v23, v65, type metadata accessor for ViewServiceInput);
    v30 = String.init<A>(describing:)();
    v60 = v19;
    v31 = v30;
    v33 = v32;
    sub_100052294(v23, type metadata accessor for ViewServiceInput);
    v34 = sub_1000343F8(v31, v33, v67);

    *(v29 + 14) = v34;
    v19 = v60;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s: input=%s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100052294(v23, type metadata accessor for ViewServiceInput);
  }

  v35 = v66;
  sub_1000522F4(v66, v19, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return;
      }

      sub_1000522F4(v35, v16, type metadata accessor for ViewServiceInput);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v67[0] = v48;
        *v47 = 136315138;
        sub_1000522F4(v16, v65, type metadata accessor for ViewServiceInput);
        v49 = String.init<A>(describing:)();
        v50 = v16;
        v51 = v49;
        v53 = v52;
        sub_100052294(v50, type metadata accessor for ViewServiceInput);
        v54 = sub_1000343F8(v51, v53, v67);

        *(v47 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v45, v46, "### Unexpected input: %s", v47, 0xCu);
        sub_10000529C(v48);
      }

      else
      {

        sub_100052294(v16, type metadata accessor for ViewServiceInput);
      }

      v41 = type metadata accessor for ViewServiceInput;
      v40 = v19;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v42 = *v19;
      swift_beginAccess();
      v43 = v42;

      sub_100053B58(v42);
    }

    else
    {
      v56 = *v19;
      swift_beginAccess();

      sub_100053FC4(v56);
    }

LABEL_20:

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v58 = *v19;
      v57 = v19[1];
      swift_beginAccess();

      sub_100019FE8(v58);
      sub_1000536D8(v58, v57);

      sub_100019FD8(v58);
      return;
    }

    v44 = v19[1];
    v67[0] = *v19;
    v67[1] = v44;

    PassthroughSubject.send(_:)();

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v55 = *v19;
    swift_beginAccess();

    sub_1000532BC(v55);
    goto LABEL_20;
  }

  sub_100052638(v19, v12, type metadata accessor for ActivityDisplayContext);
  v37 = v63;
  sub_1000522F4(v12, v63, type metadata accessor for ActivityDisplayContext);
  swift_beginAccess();
  v38 = v62;
  sub_1000522F4(v37, v62, type metadata accessor for ActivityDisplayContext);
  v39 = v64;
  sub_1000522F4(v38, v64, type metadata accessor for ActivityDisplayContext);

  sub_100052DA0(v39);

  sub_100052294(v38, type metadata accessor for ActivityDisplayContext);
  sub_100052294(v37, type metadata accessor for ActivityDisplayContext);
  v40 = v12;
  v41 = type metadata accessor for ActivityDisplayContext;
LABEL_24:
  sub_100052294(v40, v41);
}

uint64_t sub_100051F9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx) = 0;
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask) = 0;
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries) = 0;
  v11 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_id;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6 + v11, a1, v12);
  v14 = a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy;
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate + 8) = &off_1000C8FB0;
  swift_unknownObjectWeakAssign();
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000047A0(v15, qword_1000DBDE8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
  }

  else
  {
  }

  (*(v13 + 8))(a1, v12);
  return a6;
}

uint64_t sub_1000521A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000521E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052220(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = *(a1 + 32);
  *(v6 + 9) = *(a1 + 41);
  return v2(v5, *(a1 + 64), *(a1 + 72));
}

uint64_t sub_100052280(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008A9C(result, a2);
  }

  return result;
}

uint64_t sub_100052294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000522F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005235C()
{
  v1 = *(type metadata accessor for ViewServiceOutput(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1000525D8(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
    v8 = &qword_1000DC500;
    v9 = &unk_100097360;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = &qword_1000DC520;
    v9 = &unk_1000948F0;
LABEL_7:
    v7 = *(sub_1000056EC(v8, v9) + 48);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_1000524EC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));

  v7 = *(sub_1000056EC(&qword_1000DC548, &unk_100097680) + 64);
LABEL_8:
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v5 + v7, v10);
LABEL_9:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000524EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 5;
  if (v9 == 2)
  {
    v10 = a8 & 0x1F;

    sub_100052578(a1, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    if (v9 == 1)
    {
    }

    else
    {
      if (a8 >> 5)
      {
        return;
      }
    }
  }
}

double sub_100052578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 1)
  {
    if (a8)
    {
      return result;
    }
  }

  return result;
}

double sub_1000525D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100052638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000526A0(uint64_t a1)
{
  v4 = *(type metadata accessor for ViewServiceOutput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D80;

  return sub_10005092C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100052798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052808(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100052870()
{
  result = qword_1000DFCF0;
  if (!qword_1000DFCF0)
  {
    type metadata accessor for ViewServiceOutput(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFCF0);
  }

  return result;
}

void sub_100052940(char a1)
{
  v2 = v1;
  v32 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    v4 = a1 & 1;
    LOBYTE(v29[0]) = a1 & 1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v6 = *v1;
    if (v5)
    {
      v7 = *(v1 + *(v6 + 112));
      if (v7)
      {
        v8 = v7;
        v9 = String._bridgeToObjectiveC()();

        [v8 removeObjectForKey:v9];

        return;
      }

LABEL_11:

      return;
    }

    v10 = *(v1 + *(v6 + 120));
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v13 = *(v1 + *(v6 + 112));
      if (v13)
      {
        LOBYTE(v29[0]) = v4;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v28 = v4;
    sub_1000056EC(&qword_1000DFF88, &qword_100097880);
    if (swift_dynamicCast())
    {
      sub_10005D18C(v27, v29);
      v11 = v30;
      v12 = v31;
      sub_100006768(v29, v30);
      v20 = sub_10008C2F8(v11, v12);
      v22 = v21;
      v23 = *(v2 + *(*v2 + 112));
      if (v23)
      {
        v24 = v23;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v26 = String._bridgeToObjectiveC()();

        [v24 setValue:isa forKey:v26];
        sub_100008A9C(v20, v22);
      }

      else
      {

        sub_100008A9C(v20, v22);
      }

      sub_10000529C(v29);
    }

    else
    {

      memset(v27, 0, sizeof(v27));
      sub_10000A628(v27, &qword_1000DFF90, &unk_100097888);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "### Failed to cast as Codable", v19, 2u);
      }
    }
  }
}

uint64_t sub_100052DE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = v4;
  v9 = a2(0);
  v10 = __chkstk_darwin(v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v39 - v13;
  CurrentValueSubject.send(_:)();
  if (!*(v7 + *(*v7 + 128) + 8))
  {
    v20 = a1;
    v21 = a4;
    return sub_10005D310(v20, v21);
  }

  v39[0] = a4;
  sub_10005D370(a1, v14, a3);

  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  v16 = *v4;
  if (v15)
  {
    v17 = *(v4 + *(v16 + 112));
    if (v17)
    {
      v18 = v17;
      v19 = String._bridgeToObjectiveC()();

      [v18 removeObjectForKey:v19];

LABEL_5:
LABEL_14:
      v20 = a1;
      v21 = v39[0];
      return sub_10005D310(v20, v21);
    }

LABEL_13:

    goto LABEL_14;
  }

  v22 = *(v4 + *(v16 + 120));
  if (v22 == 2 || (v22 & 1) == 0)
  {
    v25 = *(v4 + *(v16 + 112));
    if (v25)
    {
      sub_10005D370(a1, v14, a3);
      v26 = v25;
      v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v28 = String._bridgeToObjectiveC()();

      [v26 setValue:v27 forKey:v28];

      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_10005D370(a1, v12, a3);
  sub_1000056EC(&qword_1000DFF88, &qword_100097880);
  if (!swift_dynamicCast())
  {

    memset(v40, 0, sizeof(v40));
    sub_10000A628(v40, &qword_1000DFF90, &unk_100097888);
    v19 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v19, v30, "### Failed to cast as Codable", v31, 2u);
    }

    goto LABEL_5;
  }

  sub_10005D18C(v40, v41);
  v23 = v42;
  v24 = v43;
  sub_100006768(v41, v42);
  v32 = sub_10008C2F8(v23, v24);
  v34 = v33;
  v35 = *(v7 + *(*v7 + 112));
  if (v35)
  {
    v36 = v35;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v38 = String._bridgeToObjectiveC()();

    [v36 setValue:isa forKey:v38];
    sub_100008A9C(v32, v34);
  }

  else
  {

    sub_100008A9C(v32, v34);
  }

  sub_10005D310(a1, v39[0]);
  return sub_10000529C(v41);
}

void sub_1000532BC(char a1)
{
  v2 = v1;
  v31 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    LOBYTE(v28[0]) = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v5 = *v1;
    if (v4)
    {
      v6 = *(v1 + *(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();

        [v7 removeObjectForKey:v8];

        return;
      }

LABEL_11:

      return;
    }

    v9 = *(v1 + *(v5 + 120));
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v12 = *(v1 + *(v5 + 112));
      if (v12)
      {
        LOBYTE(v28[0]) = a1;
        v13 = v12;
        v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v15 = String._bridgeToObjectiveC()();

        [v13 setValue:v14 forKey:v15];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v27 = a1;
    sub_1000056EC(&qword_1000DFF88, &qword_100097880);
    if (swift_dynamicCast())
    {
      sub_10005D18C(v26, v28);
      v10 = v29;
      v11 = v30;
      sub_100006768(v28, v29);
      v19 = sub_10008C2F8(v10, v11);
      v21 = v20;
      v22 = *(v2 + *(*v2 + 112));
      if (v22)
      {
        v23 = v22;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:isa forKey:v25];
        sub_100008A9C(v19, v21);
      }

      else
      {

        sub_100008A9C(v19, v21);
      }

      sub_10000529C(v28);
    }

    else
    {

      memset(v26, 0, sizeof(v26));
      sub_10000A628(v26, &qword_1000DFF90, &unk_100097888);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to cast as Codable", v18, 2u);
      }
    }
  }
}

void sub_1000536D8(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  CurrentValueSubject.send(_:)();
  if (!*(v3 + *(*v3 + 128) + 8))
  {
LABEL_13:
    sub_100019FD8(a1);
    return;
  }

  *&v30 = a1;
  *(&v30 + 1) = a2;

  sub_100019FE8(a1);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_100019FD8(a1);
    v7 = *(v2 + *(*v2 + 112));
    if (v7)
    {
      v8 = v7;
      v9 = String._bridgeToObjectiveC()();

      [v8 removeObjectForKey:v9];
    }

    else
    {
    }

    return;
  }

  v10 = *(v2 + *(*v2 + 120));
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v13 = *(v2 + *(*v2 + 112));
    if (v13)
    {
      *&v30 = a1;
      *(&v30 + 1) = a2;
      v14 = v13;
      v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v16 = String._bridgeToObjectiveC()();

      [v14 setValue:v15 forKey:v16];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v28 = a1;
  v29 = a2;
  sub_1000056EC(&qword_1000DFF88, &qword_100097880);
  if (swift_dynamicCast())
  {
    sub_10005D18C(v27, &v30);
    v11 = v31;
    v12 = v32;
    sub_100006768(&v30, v31);
    v20 = sub_10008C2F8(v11, v12);
    v22 = v21;
    v23 = *(v3 + *(*v3 + 112));
    if (v23)
    {
      v24 = v23;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v26 = String._bridgeToObjectiveC()();

      [v24 setValue:isa forKey:v26];
      sub_100008A9C(v20, v22);
    }

    else
    {

      sub_100008A9C(v20, v22);
    }

    sub_10000529C(&v30);
  }

  else
  {

    memset(v27, 0, sizeof(v27));
    sub_10000A628(v27, &qword_1000DFF90, &unk_100097888);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "### Failed to cast as Codable", v19, 2u);
    }
  }
}

void sub_100053B58(void *a1)
{
  v2 = v1;
  v3 = a1;
  v29 = a1;
  CurrentValueSubject.send(_:)();
  if (!*(v2 + *(*v2 + 128) + 8))
  {
    goto LABEL_5;
  }

  *&v26 = v3;
  v4 = v3;

  sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    v5 = *(v1 + *(*v1 + 112));
    if (v5)
    {
      v6 = v5;
      v3 = String._bridgeToObjectiveC()();

      [v6 removeObjectForKey:v3];

LABEL_5:
      return;
    }

LABEL_13:

    return;
  }

  swift_unknownObjectRelease();
  v7 = *(v1 + *(*v1 + 120));
  if (v7 == 2 || (v7 & 1) == 0)
  {
    v10 = *(v1 + *(*v1 + 112));
    if (v10)
    {
      *&v26 = v3;
      v11 = v10;
      v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v13 = String._bridgeToObjectiveC()();

      [v11 setValue:v12 forKey:v13];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v25 = v3;
  sub_1000056EC(&qword_1000DFF88, &qword_100097880);
  if (swift_dynamicCast())
  {
    sub_10005D18C(v24, &v26);
    v8 = v27;
    v9 = v28;
    sub_100006768(&v26, v27);
    v17 = sub_10008C2F8(v8, v9);
    v19 = v18;
    v20 = *(v2 + *(*v2 + 112));
    if (v20)
    {
      v21 = v20;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v23 = String._bridgeToObjectiveC()();

      [v21 setValue:isa forKey:v23];
      sub_100008A9C(v17, v19);
    }

    else
    {

      sub_100008A9C(v17, v19);
    }

    sub_10000529C(&v26);
  }

  else
  {

    memset(v24, 0, sizeof(v24));
    sub_10000A628(v24, &qword_1000DFF90, &unk_100097888);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### Failed to cast as Codable", v16, 2u);
    }
  }
}

void sub_100053FC4(float a1)
{
  v2 = v1;
  v31 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    v28[0] = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v5 = *v1;
    if (v4)
    {
      v6 = *(v1 + *(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();

        [v7 removeObjectForKey:v8];

        return;
      }

LABEL_11:

      return;
    }

    v9 = *(v1 + *(v5 + 120));
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v12 = *(v1 + *(v5 + 112));
      if (v12)
      {
        v28[0] = a1;
        v13 = v12;
        v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v15 = String._bridgeToObjectiveC()();

        [v13 setValue:v14 forKey:v15];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v27 = a1;
    sub_1000056EC(&qword_1000DFF88, &qword_100097880);
    if (swift_dynamicCast())
    {
      sub_10005D18C(v26, v28);
      v10 = v29;
      v11 = v30;
      sub_100006768(v28, v29);
      v19 = sub_10008C2F8(v10, v11);
      v21 = v20;
      v22 = *(v2 + *(*v2 + 112));
      if (v22)
      {
        v23 = v22;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:isa forKey:v25];
        sub_100008A9C(v19, v21);
      }

      else
      {

        sub_100008A9C(v19, v21);
      }

      sub_10000529C(v28);
    }

    else
    {

      memset(v26, 0, sizeof(v26));
      sub_10000A628(v26, &qword_1000DFF90, &unk_100097888);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to cast as Codable", v18, 2u);
      }
    }
  }
}

char *sub_1000543E8(int a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v95[0]) = a4;
  v92 = a2;
  v10 = *v6;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v89 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v94 = &v78 - v16;
  v17 = __chkstk_darwin(v15);
  v87 = &v78 - v18;
  v19 = __chkstk_darwin(v17);
  v88 = &v78 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v78 - v22;
  __chkstk_darwin(v21);
  v25 = &v78 - v24;

  v26 = *(*v7 + 104);
  v27 = sub_1000056EC(&qword_1000DFFF0, &unk_1000978F0);
  (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
  v28 = *(*v7 + 112);
  *&v7[v28] = 0;
  v91 = *(*v7 + 120);
  v7[v91] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v93 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v99 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v12 + 32))(&v7[v30], v25, v11);
  if (!a3)
  {
    goto LABEL_43;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v31 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    goto LABEL_43;
  }

  v32 = *(v12 + 16);
  v83 = v12 + 16;
  v84 = v32;
  v32(v23, &v7[v30], v11);
  v80 = v31;
  v81 = v31;

  v33 = Logger.logObject.getter();
  v34 = v12;
  v35 = static os_log_type_t.default.getter();

  v79 = v35;
  v36 = os_log_type_enabled(v33, v35);
  v86 = v34;
  v82 = a1;
  v85 = v30;
  v90 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v97 = v38;
    *v37 = 136315138;
    v39 = v92;
    *&v99 = v92;
    *(&v99 + 1) = a3;
    v78 = v95[0] & 1;
    LOBYTE(v100) = v95[0] & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v40 = String.init<A>(describing:)();
    v42 = sub_1000343F8(v40, v41, &v97);
    v43 = v86;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v79, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000529C(v38);

    v44 = v78;

    v45 = *(v43 + 8);
    v45(v23, v90);
  }

  else
  {

    v45 = *(v34 + 8);
    v45(v23, v11);
    v44 = v95[0] & 1;
    v39 = v92;
  }

  v46 = v93;
  *v93 = v39;
  *(v46 + 1) = a3;

  v7[v91] = v44;
  v47 = *&v7[v28];
  *&v7[v28] = v80;
  v48 = v81;

  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 valueForKey:v49];

  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v51 = v45;
  v99 = v97;
  v100 = v98;

  if ((v95[0] & 1) == 0)
  {
    sub_10001A510(&v99, &v97, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    if (swift_dynamicCast())
    {
      v56 = v96[0];
    }

    else
    {
      v56 = 2;
    }

    goto LABEL_20;
  }

  if (!sub_10005D288(&type metadata for Bool, &type metadata for Bool, &protocol descriptor for Decodable, &protocol descriptor for Encodable))
  {
    v53 = v88;
    v57 = v90;
    v84(v88, &v7[v85], v90);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v53;
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "### Type not Codable";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v58, v59, v62, v61, 2u);

      v46 = v93;
      v51(v60, v57);
      v56 = 2;
      goto LABEL_32;
    }

LABEL_27:

    v51(v53, v57);
    v56 = 2;
    goto LABEL_32;
  }

  sub_10001A510(&v99, &v97, &qword_1000D9E38, &qword_100091570);
  if (!*(&v98 + 1))
  {
    sub_10000A628(&v97, &qword_1000D9E38, &qword_100091570);
    v53 = v89;
LABEL_24:
    v57 = v90;
    v84(v53, &v7[v85], v90);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v53;
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "### Failed to cast as Data";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v52 = swift_dynamicCast();
  v53 = v89;
  if ((v52 & 1) == 0)
  {
    goto LABEL_24;
  }

  v92 = v48;
  v55 = v96[0];
  v54 = v96[1];
  __chkstk_darwin(v52);
  sub_10004DE18();
  sub_100008A9C(v55, v54);
  if (swift_dynamicCast())
  {
    v56 = v97;
  }

  else
  {
    v56 = 2;
  }

  v48 = v92;
  v46 = v93;
LABEL_20:
  v57 = v90;
LABEL_32:
  v64 = v94;
  v84(v94, &v7[v85], v57);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v95[0] = v51;
    v67 = 7104878;
    v68 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v68 = 136315394;
    v69 = *(v46 + 1);
    if (v69)
    {
      *&v97 = *v46;
      *(&v97 + 1) = v69;

      v70 = String.init<A>(describing:)();
      v72 = v71;
    }

    else
    {
      v72 = 0xE300000000000000;
      v70 = 7104878;
    }

    v73 = sub_1000343F8(v70, v72, v96);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2080;
    if (v56 == 2)
    {
      v74 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v97) = v56 & 1;
      v67 = String.init<A>(describing:)();
      v74 = v75;
    }

    v76 = sub_1000343F8(v67, v74, v96);

    *(v68 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v65, v66, "Initial %s: %s", v68, 0x16u);
    swift_arrayDestroy();

    (v95[0])(v94, v90);
  }

  else
  {

    v51(v64, v57);
  }

  sub_10000A628(&v99, &qword_1000D9E38, &qword_100091570);
  LOBYTE(a1) = v82;
  if (v56 != 2)
  {
    LOBYTE(a1) = v56;
  }

LABEL_43:
  LOBYTE(v99) = a1 & 1;
  sub_1000056EC(&qword_1000DA8E8, &qword_100091BC0);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v99) = 2;
  sub_1000056EC(&qword_1000DFFF8, &qword_100097900);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

char *sub_1000550FC(void *a1, void (*a2)(void, void), uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v96) = a4;
  v97 = a2;
  v98 = a1;
  v9 = *v6;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v92 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v95 = &v81[-v15];
  v16 = __chkstk_darwin(v14);
  v90 = &v81[-v17];
  v18 = __chkstk_darwin(v16);
  v91 = &v81[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v81[-v21];
  __chkstk_darwin(v20);
  v24 = &v81[-v23];

  v25 = *(*v7 + 104);
  v26 = sub_1000056EC(&qword_1000DFFA0, &qword_100097898);
  v27 = 1;
  (*(*(v26 - 8) + 56))(&v7[v25], 1, 1, v26);
  v28 = *(*v7 + 112);
  *&v7[v28] = 0;
  v93 = *(*v7 + 120);
  v93[v7] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v94 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v102 = v9;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  v31 = v10;
  (*(v11 + 32))(&v7[v30], v24, v10);
  if (!a3)
  {
    v46 = v98;
    goto LABEL_39;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v32 = qword_1000F3D78;
  v33 = v97;
  if (!qword_1000F3D78)
  {

    v27 = 1;
    v46 = v98;
    goto LABEL_39;
  }

  v34 = *(v11 + 16);
  v87 = v11 + 16;
  v86 = v34;
  v34(v22, &v7[v30], v31);
  v83 = v32;
  v85 = v32;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v82 = v36;
  v37 = v36;
  v38 = v31;
  v39 = os_log_type_enabled(v35, v37);
  v89 = v31;
  v88 = v30;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v100 = v41;
    *v40 = 136315138;
    *&v102 = v33;
    *(&v102 + 1) = a3;
    v84 = v96 & 1;
    LOBYTE(v103) = v96 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v42 = String.init<A>(describing:)();
    v44 = v11;
    v45 = sub_1000343F8(v42, v43, &v100);
    v38 = v89;

    *(v40 + 4) = v45;
    v46 = v98;
    _os_log_impl(&_mh_execute_header, v35, v82, "Configuring userDefaultsSync: %s", v40, 0xCu);
    sub_10000529C(v41);

    v47 = v97;
    v48 = *(v44 + 8);
    v48(v22, v38);
    v49 = v44;
  }

  else
  {

    v47 = v33;
    v48 = *(v11 + 8);
    v48(v22, v38);
    v84 = v96 & 1;
    v49 = v11;
    v46 = v98;
  }

  v50 = v94;
  *v94 = v47;
  *(v50 + 1) = a3;

  v93[v7] = v84;
  v51 = *&v7[v28];
  *&v7[v28] = v83;
  v52 = v85;

  v53 = String._bridgeToObjectiveC()();

  v54 = [v52 valueForKey:v53];

  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102 = v100;
  v103 = v101;

  if ((v96 & 1) == 0)
  {
    sub_10001A510(&v102, &v100, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
    if (swift_dynamicCast())
    {
      v27 = v99[0];
    }

    else
    {
      v27 = 1;
    }

    goto LABEL_28;
  }

  v55 = sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
  if (sub_10005D288(v55, v55, &protocol descriptor for Decodable, &protocol descriptor for Encodable))
  {
    sub_10001A510(&v102, &v100, &qword_1000D9E38, &qword_100091570);
    if (*(&v101 + 1))
    {
      v56 = swift_dynamicCast();
      v57 = v92;
      if (v56)
      {
        v96 = v49;
        v97 = v48;
        v93 = v52;
        v59 = v99[0];
        v58 = v99[1];
        __chkstk_darwin(v56);
        sub_10004DE18();
        sub_100008A9C(v59, v58);
        if (swift_dynamicCast())
        {
          v27 = v100;
        }

        else
        {
          v27 = 1;
        }

        v38 = v89;
        v49 = v96;
        v48 = v97;
        v52 = v93;
        goto LABEL_28;
      }
    }

    else
    {
      sub_10000A628(&v100, &qword_1000D9E38, &qword_100091570);
      v57 = v92;
    }

    v38 = v89;
    v86(v57, &v7[v88], v89);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "### Failed to cast as Data";
      goto LABEL_26;
    }
  }

  else
  {
    v57 = v91;
    v38 = v89;
    v86(v91, &v7[v88], v89);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "### Type not Codable";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v60, v61, v63, v62, 2u);
    }
  }

  v48(v57, v38);
  v27 = 1;
LABEL_28:
  v64 = v95;
  v86(v95, &v7[v88], v38);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v65, v66))
  {

    v48(v64, v38);
    sub_10000A628(&v102, &qword_1000D9E38, &qword_100091570);
    if (v27 == 1)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v96 = v49;
  v97 = v48;
  v67 = 7104878;
  v68 = swift_slowAlloc();
  v99[0] = swift_slowAlloc();
  *v68 = 136315394;
  v69 = *(v94 + 1);
  if (v69)
  {
    *&v100 = *v94;
    *(&v100 + 1) = v69;

    v70 = String.init<A>(describing:)();
    v72 = v71;
  }

  else
  {
    v72 = 0xE300000000000000;
    v70 = 7104878;
  }

  v73 = sub_1000343F8(v70, v72, v99);

  *(v68 + 4) = v73;
  *(v68 + 12) = 2080;
  if (v27 == 1)
  {
    v74 = 0xE300000000000000;
  }

  else
  {
    *&v100 = v27;
    v75 = v27;
    sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
    v67 = String.init<A>(describing:)();
    v74 = v76;
  }

  v77 = sub_1000343F8(v67, v74, v99);

  *(v68 + 14) = v77;
  _os_log_impl(&_mh_execute_header, v65, v66, "Initial %s: %s", v68, 0x16u);
  swift_arrayDestroy();

  v97(v95, v89);
  sub_10000A628(&v102, &qword_1000D9E38, &qword_100091570);
  v46 = v98;
  if (v27 != 1)
  {
LABEL_38:
    v78 = v27;

    v46 = v27;
  }

LABEL_39:
  *&v102 = v46;
  sub_1000056EC(&qword_1000DFFA8, &qword_1000978A0);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  *&v102 = 1;
  sub_1000056EC(&qword_1000DFFB0, &unk_1000978A8);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  sub_100019FD8(v27);
  return v7;
}

void *sub_100055E0C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v144 = a3;
  v137 = a2;
  v148 = a1;
  v8 = *v6;
  v9 = type metadata accessor for ActivityDisplayContext(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v147 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v115 - v14;
  __chkstk_darwin(v13);
  v130 = &v115 - v15;
  v16 = sub_1000056EC(&qword_1000DA898, &qword_100091B38);
  v17 = __chkstk_darwin(v16 - 8);
  v146 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v145 = &v115 - v20;
  v21 = __chkstk_darwin(v19);
  v134 = &v115 - v22;
  v23 = __chkstk_darwin(v21);
  v138 = &v115 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v115 - v26;
  v27 = __chkstk_darwin(v25);
  v133 = &v115 - v28;
  __chkstk_darwin(v27);
  v30 = &v115 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v131 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v140 = &v115 - v36;
  v37 = __chkstk_darwin(v35);
  v127 = &v115 - v38;
  v39 = __chkstk_darwin(v37);
  v128 = &v115 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v115 - v42;
  __chkstk_darwin(v41);
  v45 = &v115 - v44;

  v46 = *(*v7 + 104);
  v47 = sub_1000056EC(&qword_1000E0080, &qword_1000979E0);
  v48 = v7 + v46;
  v49 = v30;
  (*(*(v47 - 8) + 56))(v48, 1, 1, v47);
  v136 = *(*v7 + 112);
  *(v7 + v136) = 0;
  v135 = *(*v7 + 120);
  *(v7 + v135) = 2;
  v50 = (v7 + *(*v7 + 128));
  *v50 = 0;
  v50[1] = 0;
  v139 = v50;
  *(v7 + *(*v7 + 136)) = 0;
  *(v7 + *(*v7 + 152)) = 0;
  *&v152 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v51 = v31;
  Logger.init(subsystem:category:)();
  v52 = *(*v7 + 144);
  v143 = v32;
  v53 = v45;
  v54 = v49;
  v55 = v144;
  (*(v32 + 32))(v7 + v52, v53, v31);
  v56 = v10 + 56;
  v57 = *(v10 + 56);
  v57(v54, 1, 1, v9);
  if (!v55)
  {
    goto LABEL_35;
  }

  v141 = v9;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v58 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    v9 = v141;
    goto LABEL_35;
  }

  v126 = v57;
  v124 = v10;
  v59 = v143;
  v60 = *(v143 + 16);
  v121 = v143 + 16;
  v120 = v60;
  v60(v43, v7 + v52, v51);
  v117 = v58;

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v132 = v54;
  v63 = v62;

  v64 = os_log_type_enabled(v61, v63);
  v119 = v56;
  v118 = v51;
  v122 = v52;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v150 = v123;
    *v65 = 136315138;
    v115 = v63;
    v66 = v137;
    *&v152 = v137;
    *(&v152 + 1) = v55;
    v116 = v142 & 1;
    LOBYTE(v153) = v142 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v67 = String.init<A>(describing:)();
    v69 = sub_1000343F8(v67, v68, &v150);

    *(v65 + 4) = v69;
    v70 = v143;
    _os_log_impl(&_mh_execute_header, v61, v115, "Configuring userDefaultsSync: %s", v65, 0xCu);
    sub_10000529C(v123);
    v71 = v70;
    v51 = v118;

    v72 = v116;

    v123 = *(v71 + 8);
    v123(v43, v51);
  }

  else
  {

    v123 = *(v59 + 8);
    v123(v43, v51);
    v72 = v142 & 1;
    v66 = v137;
  }

  v73 = v139;
  *v139 = v66;
  v73[1] = v55;

  *(v7 + v135) = v72;
  v74 = *(v7 + v136);
  *(v7 + v136) = v58;
  v75 = v117;

  v76 = String._bridgeToObjectiveC()();

  v137 = v75;
  v77 = [v75 valueForKey:v76];

  v57 = v126;
  if (v77)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v150 = 0u;
    v151 = 0u;
  }

  v9 = v141;
  v152 = v150;
  v153 = v151;

  if ((v142 & 1) == 0)
  {
    sub_10001A510(&v152, &v150, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v82 = v133;
    v83 = swift_dynamicCast();
    v57(v82, v83 ^ 1u, 1, v9);
    sub_10005D50C(v82, v132, &qword_1000DA898, &qword_100091B38);
    goto LABEL_25;
  }

  if (!sub_10005D288(v9, v9, &protocol descriptor for Decodable, &protocol descriptor for Encodable))
  {
    v79 = v128;
    v120(v128, v7 + v122, v51);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v51;
      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "### Type not Codable";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v84, v85, v88, v87, 2u);
      v51 = v86;
    }

LABEL_24:

    v123(v79, v51);
    goto LABEL_25;
  }

  sub_10001A510(&v152, &v150, &qword_1000D9E38, &qword_100091570);
  if (!*(&v151 + 1))
  {
    sub_10000A628(&v150, &qword_1000D9E38, &qword_100091570);
    v79 = v131;
LABEL_21:
    v120(v79, v7 + v122, v51);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v51;
      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "### Failed to cast as Data";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v78 = swift_dynamicCast();
  v79 = v131;
  if ((v78 & 1) == 0)
  {
    goto LABEL_21;
  }

  v80 = v149[0];
  v81 = v149[1];
  __chkstk_darwin(v78);
  sub_10004DE18();
  sub_100008A9C(v80, v81);
  v112 = v125;
  v9 = v141;
  v113 = swift_dynamicCast();
  v114 = v126;
  v126(v112, v113 ^ 1u, 1, v9);
  sub_10005D50C(v112, v132, &qword_1000DA898, &qword_100091B38);
  v57 = v114;
LABEL_25:
  v89 = v140;
  v120(v140, v7 + v122, v51);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = 7104878;
    v93 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v93 = 136315394;
    v94 = v139[1];
    if (v94)
    {
      *&v150 = *v139;
      *(&v150 + 1) = v94;

      v95 = String.init<A>(describing:)();
      v97 = v96;
    }

    else
    {
      v97 = 0xE300000000000000;
      v95 = 7104878;
    }

    v98 = sub_1000343F8(v95, v97, v149);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2080;
    v99 = v132;
    swift_beginAccess();
    v100 = v99;
    v101 = v138;
    sub_10001A510(v100, v138, &qword_1000DA898, &qword_100091B38);
    v102 = v101;
    v103 = v134;
    sub_10001A510(v102, v134, &qword_1000DA898, &qword_100091B38);
    if ((*(v124 + 48))(v103, 1, v141) == 1)
    {
      v104 = 0xE300000000000000;
    }

    else
    {
      v105 = v130;
      sub_10005D4A4(v103, v130, type metadata accessor for ActivityDisplayContext);
      sub_10005D370(v105, v129, type metadata accessor for ActivityDisplayContext);
      v92 = String.init<A>(describing:)();
      v104 = v106;
      sub_10005D310(v105, type metadata accessor for ActivityDisplayContext);
    }

    sub_10000A628(v138, &qword_1000DA898, &qword_100091B38);
    v107 = sub_1000343F8(v92, v104, v149);

    *(v93 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v90, v91, "Initial %s: %s", v93, 0x16u);
    swift_arrayDestroy();

    v123(v140, v118);
    sub_10000A628(&v152, &qword_1000D9E38, &qword_100091570);
    v9 = v141;
    v54 = v132;
    v57 = v126;
  }

  else
  {

    v123(v89, v51);
    sub_10000A628(&v152, &qword_1000D9E38, &qword_100091570);
    v54 = v132;
  }

  v10 = v124;
LABEL_35:
  swift_beginAccess();
  v108 = v145;
  sub_10001A510(v54, v145, &qword_1000DA898, &qword_100091B38);
  v109 = *(v10 + 48);
  if (v109(v108, 1, v9) == 1)
  {
    sub_10005D370(v148, v147, type metadata accessor for ActivityDisplayContext);
    if (v109(v108, 1, v9) != 1)
    {
      sub_10000A628(v108, &qword_1000DA898, &qword_100091B38);
    }
  }

  else
  {
    sub_10005D4A4(v108, v147, type metadata accessor for ActivityDisplayContext);
  }

  sub_1000056EC(&qword_1000E0088, &qword_1000979E8);
  swift_allocObject();
  v7[2] = CurrentValueSubject.init(_:)();
  v57(v146, 1, 1, v9);
  sub_1000056EC(&qword_1000E0090, &qword_1000979F0);
  swift_allocObject();
  v110 = CurrentValueSubject.init(_:)();
  sub_10005D310(v148, type metadata accessor for ActivityDisplayContext);
  v7[3] = v110;
  sub_10000A628(v54, &qword_1000DA898, &qword_100091B38);
  return v7;
}

char *sub_10005708C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v96) = a4;
  v93 = a2;
  v10 = *v6;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v90 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v95 = &v78[-v16];
  v17 = __chkstk_darwin(v15);
  v88 = &v78[-v18];
  v19 = __chkstk_darwin(v17);
  v89 = &v78[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v78[-v22];
  __chkstk_darwin(v21);
  v25 = &v78[-v24];

  v26 = *(*v7 + 104);
  v27 = sub_1000056EC(&qword_1000E0068, &qword_1000979C0);
  (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
  v28 = *(*v7 + 112);
  *&v7[v28] = 0;
  v92 = *(*v7 + 120);
  v7[v92] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  v29[1] = 0;
  v94 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v100 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v12 + 32))(&v7[v30], v25, v11);
  if (!a3)
  {
    goto LABEL_38;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v31 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    goto LABEL_38;
  }

  v32 = *(v12 + 16);
  v84 = v12 + 16;
  v85 = v32;
  v32(v23, &v7[v30], v11);
  v80 = v31;
  v81 = v31;

  v33 = Logger.logObject.getter();
  v34 = v12;
  v35 = static os_log_type_t.default.getter();

  LODWORD(v91) = v35;
  v36 = os_log_type_enabled(v33, v35);
  v87 = v34;
  v83 = a1;
  v86 = v30;
  v82 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v98 = v38;
    *v37 = 136315138;
    v39 = v93;
    *&v100 = v93;
    *(&v100 + 1) = a3;
    v79 = v96 & 1;
    LOBYTE(v101) = v96 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v40 = String.init<A>(describing:)();
    v42 = sub_1000343F8(v40, v41, &v98);
    v43 = v87;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v91, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000529C(v38);

    v44 = v79;

    v45 = v82;
    v91 = *(v43 + 8);
    v91(v23, v82);
  }

  else
  {

    v91 = *(v34 + 8);
    v91(v23, v11);
    v44 = v96 & 1;
    v45 = v11;
    v39 = v93;
  }

  v46 = v94;
  *v94 = v39;
  v46[1] = a3;

  v7[v92] = v44;
  v47 = *&v7[v28];
  *&v7[v28] = v80;
  v48 = v81;

  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 valueForKey:v49];

  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v51 = v91;
  v100 = v98;
  v101 = v99;

  if ((v96 & 1) == 0)
  {
    sub_10001A510(&v100, &v98, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    if (swift_dynamicCast())
    {
      v56 = v97[0];
    }

    else
    {
      v56 = 5;
    }

    goto LABEL_27;
  }

  if (sub_10005D288(&type metadata for CardMode, &type metadata for CardMode, &protocol descriptor for Decodable, &protocol descriptor for Encodable))
  {
    sub_10001A510(&v100, &v98, &qword_1000D9E38, &qword_100091570);
    if (*(&v99 + 1))
    {
      v52 = swift_dynamicCast();
      v53 = v90;
      if (v52)
      {
        v96 = v48;
        v55 = v97[0];
        v54 = v97[1];
        __chkstk_darwin(v52);
        sub_10004DE18();
        sub_100008A9C(v55, v54);
        if (swift_dynamicCast())
        {
          v56 = v98;
        }

        else
        {
          v56 = 5;
        }

        v46 = v94;
        v48 = v96;
        goto LABEL_27;
      }
    }

    else
    {
      sub_10000A628(&v98, &qword_1000D9E38, &qword_100091570);
      v53 = v90;
    }

    v85(v53, &v7[v86], v45);
    v57 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v57, v61, "### Failed to cast as Data", v62, 2u);

      v60 = v90;
      goto LABEL_26;
    }

LABEL_25:

    v60 = v53;
    goto LABEL_26;
  }

  v53 = v89;
  v85(v89, &v7[v86], v45);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v57, v58))
  {
    goto LABEL_25;
  }

  v59 = swift_slowAlloc();
  *v59 = 0;
  _os_log_impl(&_mh_execute_header, v57, v58, "### Type not Codable", v59, 2u);

  v60 = v89;
LABEL_26:
  v51(v60, v45);
  v56 = 5;
LABEL_27:
  v63 = v95;
  v85(v95, &v7[v86], v45);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v91 = v51;
    v66 = 7104878;
    v67 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v67 = 136315394;
    v68 = v46[1];
    if (v68)
    {
      *&v98 = *v46;
      *(&v98 + 1) = v68;

      v69 = String.init<A>(describing:)();
      v71 = v70;
    }

    else
    {
      v71 = 0xE300000000000000;
      v69 = 7104878;
    }

    v72 = sub_1000343F8(v69, v71, v97);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    if (v56 == 5)
    {
      v73 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v98) = v56;
      v66 = String.init<A>(describing:)();
      v73 = v74;
    }

    v75 = sub_1000343F8(v66, v73, v97);

    *(v67 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v64, v65, "Initial %s: %s", v67, 0x16u);
    swift_arrayDestroy();

    v91(v95, v82);
  }

  else
  {

    v51(v63, v45);
  }

  sub_10000A628(&v100, &qword_1000D9E38, &qword_100091570);
  LOBYTE(a1) = v83;
  if (v56 != 5)
  {
    LOBYTE(a1) = v56;
  }

LABEL_38:
  LOBYTE(v100) = a1;
  sub_1000056EC(&qword_1000E0070, &qword_1000979C8);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v100) = 5;
  sub_1000056EC(&qword_1000E0078, &unk_1000979D0);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

char *sub_100057D80(void *a1, unint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  LODWORD(v94) = a5;
  v95 = a3;
  v96 = a1;
  v97 = a2;
  v10 = *v7;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v91 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v93 = &v80 - v16;
  v17 = __chkstk_darwin(v15);
  v88 = &v80 - v18;
  v19 = __chkstk_darwin(v17);
  v89 = &v80 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v80 - v22;
  __chkstk_darwin(v21);
  v25 = &v80 - v24;

  v26 = *(*v8 + 104);
  v27 = sub_1000056EC(&qword_1000E0050, &qword_1000979A8);
  (*(*(v27 - 8) + 56))(&v8[v26], 1, 1, v27);
  v28 = *(*v8 + 112);
  *&v8[v28] = 0;
  v29 = 2;
  v90 = *(*v8 + 120);
  v8[v90] = 2;
  v30 = &v8[*(*v8 + 128)];
  *v30 = 0;
  *(v30 + 1) = 0;
  v92 = v30;
  *&v8[*(*v8 + 136)] = 0;
  *&v8[*(*v8 + 152)] = 0;
  *&v103 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v31 = *(*v8 + 144);
  v32 = v12[4];
  v98 = v11;
  v32(&v8[v31], v25, v11);
  if (!a4)
  {
    goto LABEL_9;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v33 = qword_1000F3D78;
  v34 = v95;
  if (!qword_1000F3D78)
  {

    v29 = 2;
LABEL_9:
    v46 = v96;
    v47 = v97;
    goto LABEL_44;
  }

  v35 = v12[2];
  v85 = v12 + 2;
  v84 = v35;
  v35(v23, &v8[v31], v98);
  v83 = v33;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  LODWORD(v87) = v37;
  v38 = os_log_type_enabled(v36, v37);
  v86 = v31;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v82 = v33;
    v40 = v39;
    v80 = swift_slowAlloc();
    *&v101 = v80;
    *v40 = 136315138;
    *&v103 = v34;
    *(&v103 + 1) = a4;
    v81 = v94 & 1;
    LOBYTE(v104) = v94 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v41 = String.init<A>(describing:)();
    v43 = sub_1000343F8(v41, v42, &v101);
    v44 = v98;

    *(v40 + 4) = v43;
    v34 = v95;
    _os_log_impl(&_mh_execute_header, v36, v87, "Configuring userDefaultsSync: %s", v40, 0xCu);
    sub_10000529C(v80);

    v33 = v82;

    v87 = v12[1];
    v87(v23, v44);
    v45 = v81;
  }

  else
  {

    v87 = v12[1];
    v87(v23, v98);
    v45 = v94 & 1;
  }

  v48 = v92;
  *v92 = v34;
  *(v48 + 1) = a4;

  v8[v90] = v45;
  v49 = *&v8[v28];
  *&v8[v28] = v33;
  v50 = v83;

  v51 = String._bridgeToObjectiveC()();

  v95 = v50;
  v52 = [v50 valueForKey:v51];

  if (v52)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v53 = v91;
  v103 = v101;
  v104 = v102;

  if ((v94 & 1) == 0)
  {
    sub_10001A510(&v103, &v101, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = v100;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v29 = v99;
    }

    else
    {
      v29 = 2;
    }

    goto LABEL_25;
  }

  v54 = sub_10005D288(&type metadata for MediaTransferStatus, &type metadata for MediaTransferStatus, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  v55 = v84;
  if (!v54)
  {
    v53 = v89;
    v84(v89, &v8[v86], v98);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v29 = 2;
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "### Type not Codable";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v61, v62, v64, v63, 2u);

      v87(v53, v98);
      v60 = 0;
      goto LABEL_33;
    }

LABEL_32:

    v87(v53, v98);
    v60 = 0;
    v29 = 2;
    goto LABEL_33;
  }

  sub_10001A510(&v103, &v101, &qword_1000D9E38, &qword_100091570);
  if (!*(&v102 + 1))
  {
    sub_10000A628(&v101, &qword_1000D9E38, &qword_100091570);
LABEL_29:
    v55(v53, &v8[v86], v98);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v29 = 2;
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "### Failed to cast as Data";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v56 = swift_dynamicCast();
  if ((v56 & 1) == 0)
  {
    goto LABEL_29;
  }

  v58 = v99;
  v57 = v100;
  __chkstk_darwin(v56);
  sub_10004DE18();
  sub_100008A9C(v58, v57);
  v79 = swift_dynamicCast();
  if (v79)
  {
    v60 = *(&v101 + 1);
  }

  else
  {
    v60 = 0;
  }

  if (v79)
  {
    v29 = v101;
  }

  else
  {
    v29 = 2;
  }

  v48 = v92;
LABEL_25:
  v55 = v84;
LABEL_33:
  v65 = v93;
  v55(v93, &v8[v86], v98);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v94 = v12;
    v68 = 7104878;
    v69 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v69 = 136315394;
    v70 = *(v48 + 1);
    if (v70)
    {
      *&v101 = *v48;
      *(&v101 + 1) = v70;

      v71 = String.init<A>(describing:)();
      v73 = v72;
    }

    else
    {
      v73 = 0xE300000000000000;
      v71 = 7104878;
    }

    v74 = sub_1000343F8(v71, v73, &v99);

    *(v69 + 4) = v74;
    *(v69 + 12) = 2080;
    if (v29 == 2)
    {
      v75 = 0xE300000000000000;
    }

    else
    {
      *&v101 = v29;
      *(&v101 + 1) = v60;
      sub_100019FE8(v29);
      v68 = String.init<A>(describing:)();
      v75 = v76;
    }

    v47 = v97;
    v77 = sub_1000343F8(v68, v75, &v99);

    *(v69 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v66, v67, "Initial %s: %s", v69, 0x16u);
    swift_arrayDestroy();

    v87(v93, v98);
    sub_10000A628(&v103, &qword_1000D9E38, &qword_100091570);
    if (v29 == 2)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v87(v65, v98);
    sub_10000A628(&v103, &qword_1000D9E38, &qword_100091570);
    v47 = v97;
    if (v29 == 2)
    {
LABEL_43:
      v46 = v96;
      goto LABEL_44;
    }
  }

  sub_100019FE8(v29);
  sub_100019FD8(v96);
  v46 = v29;
  v47 = v60;
LABEL_44:
  *&v103 = v46;
  *(&v103 + 1) = v47;
  sub_1000056EC(&qword_1000E0058, &qword_1000979B0);
  swift_allocObject();
  *(v8 + 2) = CurrentValueSubject.init(_:)();
  v103 = xmmword_100097750;
  sub_1000056EC(&qword_1000E0060, &qword_1000979B8);
  swift_allocObject();
  *(v8 + 3) = CurrentValueSubject.init(_:)();
  sub_10005D494(v29);
  return v8;
}

char *sub_100058B08(uint64_t a1, uint64_t a2, int a3, float a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v98) = a3;
  v11 = *v6;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v97 = &v83 - v17;
  v18 = __chkstk_darwin(v16);
  v91 = &v83 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v83 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v83 - v23;
  __chkstk_darwin(v22);
  v26 = &v83 - v25;

  v27 = *(*v7 + 104);
  v28 = sub_1000056EC(&qword_1000E0038, &qword_100097990);
  (*(*(v28 - 8) + 56))(&v7[v27], 1, 1, v28);
  v94 = *(*v7 + 112);
  *&v94[v7] = 0;
  v93 = *(*v7 + 120);
  v7[v93] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  v29[1] = 0;
  v96 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v102 = v11;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v13 + 32))(&v7[v30], v26, v12);
  if (!a2)
  {
    goto LABEL_41;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v31 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    goto LABEL_41;
  }

  v32 = *(v13 + 16);
  v87 = v13 + 16;
  v86 = v32;
  v32(v24, &v7[v30], v12);
  v85 = v31;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v90 = v13;
  v88 = v30;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v100 = v89;
    *v36 = 136315138;
    v83 = v34;
    v37 = a1;
    *&v102 = a1;
    *(&v102 + 1) = a2;
    v84 = v98 & 1;
    LOBYTE(v103) = v98 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v38 = String.init<A>(describing:)();
    v40 = sub_1000343F8(v38, v39, &v100);
    v41 = v90;

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v83, "Configuring userDefaultsSync: %s", v36, 0xCu);
    sub_10000529C(v89);

    v42 = v84;

    v89 = *(v41 + 8);
    v89(v24, v12);
  }

  else
  {

    v89 = *(v13 + 8);
    v89(v24, v12);
    v42 = v98 & 1;
    v37 = a1;
  }

  v43 = v96;
  *v96 = v37;
  v43[1] = a2;

  v44 = v94;
  v7[v93] = v42;
  v45 = *&v44[v7];
  *&v44[v7] = v31;
  v46 = v85;

  v47 = String._bridgeToObjectiveC()();

  v94 = v46;
  v48 = [v46 valueForKey:v47];

  if (v48)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v49 = v95;
  v102 = v100;
  v103 = v101;

  if ((v98 & 1) == 0)
  {
    sub_10001A510(&v102, &v100, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = *v99;
    }

    else
    {
      v56 = 0.0;
    }

    v57 = v55 ^ 1;
    goto LABEL_21;
  }

  v50 = sub_10005D288(&type metadata for Float, &type metadata for Float, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  v51 = v86;
  if (!v50)
  {
    v49 = v92;
    v86(v92, &v7[v88], v12);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v12;
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "### Type not Codable";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v58, v59, v62, v61, 2u);
      v12 = v60;

      v63 = v49;
      v64 = v60;
LABEL_29:
      v89(v63, v64);
      v57 = 1;
      v56 = 0.0;
      goto LABEL_30;
    }

LABEL_28:

    v63 = v49;
    v64 = v12;
    goto LABEL_29;
  }

  sub_10001A510(&v102, &v100, &qword_1000D9E38, &qword_100091570);
  if (!*(&v101 + 1))
  {
    sub_10000A628(&v100, &qword_1000D9E38, &qword_100091570);
LABEL_25:
    v51(v49, &v7[v88], v12);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v12;
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "### Failed to cast as Data";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v52 = swift_dynamicCast();
  if ((v52 & 1) == 0)
  {
    goto LABEL_25;
  }

  v98 = v12;
  v54 = v99[0];
  v53 = v99[1];
  __chkstk_darwin(v52);
  sub_10004DE18();
  sub_100008A9C(v54, v53);
  v82 = swift_dynamicCast();
  if (v82)
  {
    v56 = *&v100;
  }

  else
  {
    v56 = 0.0;
  }

  v57 = v82 ^ 1;
  v12 = v98;
  v43 = v96;
LABEL_21:
  v51 = v86;
LABEL_30:
  v65 = v97;
  v51(v97, &v7[v88], v12);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = 7104878;
    v69 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v69 = 136315394;
    v70 = v43[1];
    v71 = v12;
    if (v70)
    {
      *&v100 = *v43;
      *(&v100 + 1) = v70;

      v72 = String.init<A>(describing:)();
      v74 = v73;
    }

    else
    {
      v74 = 0xE300000000000000;
      v72 = 7104878;
    }

    v77 = sub_1000343F8(v72, v74, v99);

    *(v69 + 4) = v77;
    *(v69 + 12) = 2080;
    if (v57)
    {
      v78 = 0xE300000000000000;
    }

    else
    {
      *&v100 = v56;
      v68 = String.init<A>(describing:)();
      v78 = v79;
    }

    v80 = sub_1000343F8(v68, v78, v99);

    *(v69 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v66, v67, "Initial %s: %s", v69, 0x16u);
    swift_arrayDestroy();

    v75 = v97;
    v76 = v71;
  }

  else
  {

    v75 = v65;
    v76 = v12;
  }

  v89(v75, v76);
  sub_10000A628(&v102, &qword_1000D9E38, &qword_100091570);
  if (!v57)
  {
    a4 = v56;
  }

LABEL_41:
  *&v102 = a4;
  sub_1000056EC(&qword_1000E0040, &qword_100097998);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LODWORD(v102) = 0;
  BYTE4(v102) = 1;
  sub_1000056EC(&qword_1000E0048, &qword_1000979A0);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

void *sub_1000597B8(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v144 = a3;
  v137 = a2;
  v148 = a1;
  v8 = *v6;
  v9 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v147 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v115 - v14;
  __chkstk_darwin(v13);
  v130 = &v115 - v15;
  v16 = sub_1000056EC(&qword_1000DF938, qword_1000974C0);
  v17 = __chkstk_darwin(v16 - 8);
  v146 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v145 = &v115 - v20;
  v21 = __chkstk_darwin(v19);
  v134 = &v115 - v22;
  v23 = __chkstk_darwin(v21);
  v138 = &v115 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v115 - v26;
  v27 = __chkstk_darwin(v25);
  v133 = &v115 - v28;
  __chkstk_darwin(v27);
  v30 = &v115 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v131 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v140 = &v115 - v36;
  v37 = __chkstk_darwin(v35);
  v127 = &v115 - v38;
  v39 = __chkstk_darwin(v37);
  v128 = &v115 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v115 - v42;
  __chkstk_darwin(v41);
  v45 = &v115 - v44;

  v46 = *(*v7 + 104);
  v47 = sub_1000056EC(&qword_1000DFFD8, &qword_1000978D8);
  v48 = v7 + v46;
  v49 = v30;
  (*(*(v47 - 8) + 56))(v48, 1, 1, v47);
  v136 = *(*v7 + 112);
  *(v7 + v136) = 0;
  v135 = *(*v7 + 120);
  *(v7 + v135) = 2;
  v50 = (v7 + *(*v7 + 128));
  *v50 = 0;
  v50[1] = 0;
  v139 = v50;
  *(v7 + *(*v7 + 136)) = 0;
  *(v7 + *(*v7 + 152)) = 0;
  *&v152 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v51 = v31;
  Logger.init(subsystem:category:)();
  v52 = *(*v7 + 144);
  v143 = v32;
  v53 = v45;
  v54 = v49;
  v55 = v144;
  (*(v32 + 32))(v7 + v52, v53, v31);
  v56 = v10 + 56;
  v57 = *(v10 + 56);
  v57(v54, 1, 1, v9);
  if (!v55)
  {
    goto LABEL_35;
  }

  v141 = v9;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v58 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    v9 = v141;
    goto LABEL_35;
  }

  v126 = v57;
  v124 = v10;
  v59 = v143;
  v60 = *(v143 + 16);
  v121 = v143 + 16;
  v120 = v60;
  v60(v43, v7 + v52, v51);
  v117 = v58;

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v132 = v54;
  v63 = v62;

  v64 = os_log_type_enabled(v61, v63);
  v119 = v56;
  v118 = v51;
  v122 = v52;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v150 = v123;
    *v65 = 136315138;
    v115 = v63;
    v66 = v137;
    *&v152 = v137;
    *(&v152 + 1) = v55;
    v116 = v142 & 1;
    LOBYTE(v153) = v142 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v67 = String.init<A>(describing:)();
    v69 = sub_1000343F8(v67, v68, &v150);

    *(v65 + 4) = v69;
    v70 = v143;
    _os_log_impl(&_mh_execute_header, v61, v115, "Configuring userDefaultsSync: %s", v65, 0xCu);
    sub_10000529C(v123);
    v71 = v70;
    v51 = v118;

    v72 = v116;

    v123 = *(v71 + 8);
    v123(v43, v51);
  }

  else
  {

    v123 = *(v59 + 8);
    v123(v43, v51);
    v72 = v142 & 1;
    v66 = v137;
  }

  v73 = v139;
  *v139 = v66;
  v73[1] = v55;

  *(v7 + v135) = v72;
  v74 = *(v7 + v136);
  *(v7 + v136) = v58;
  v75 = v117;

  v76 = String._bridgeToObjectiveC()();

  v137 = v75;
  v77 = [v75 valueForKey:v76];

  v57 = v126;
  if (v77)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v150 = 0u;
    v151 = 0u;
  }

  v9 = v141;
  v152 = v150;
  v153 = v151;

  if ((v142 & 1) == 0)
  {
    sub_10001A510(&v152, &v150, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v82 = v133;
    v83 = swift_dynamicCast();
    v57(v82, v83 ^ 1u, 1, v9);
    sub_10005D50C(v82, v132, &qword_1000DF938, qword_1000974C0);
    goto LABEL_25;
  }

  if (!sub_10005D288(v9, v9, &protocol descriptor for Decodable, &protocol descriptor for Encodable))
  {
    v79 = v128;
    v120(v128, v7 + v122, v51);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v51;
      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "### Type not Codable";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v84, v85, v88, v87, 2u);
      v51 = v86;
    }

LABEL_24:

    v123(v79, v51);
    goto LABEL_25;
  }

  sub_10001A510(&v152, &v150, &qword_1000D9E38, &qword_100091570);
  if (!*(&v151 + 1))
  {
    sub_10000A628(&v150, &qword_1000D9E38, &qword_100091570);
    v79 = v131;
LABEL_21:
    v120(v79, v7 + v122, v51);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v51;
      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "### Failed to cast as Data";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v78 = swift_dynamicCast();
  v79 = v131;
  if ((v78 & 1) == 0)
  {
    goto LABEL_21;
  }

  v80 = v149[0];
  v81 = v149[1];
  __chkstk_darwin(v78);
  sub_10004DE18();
  sub_100008A9C(v80, v81);
  v112 = v125;
  v9 = v141;
  v113 = swift_dynamicCast();
  v114 = v126;
  v126(v112, v113 ^ 1u, 1, v9);
  sub_10005D50C(v112, v132, &qword_1000DF938, qword_1000974C0);
  v57 = v114;
LABEL_25:
  v89 = v140;
  v120(v140, v7 + v122, v51);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = 7104878;
    v93 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v93 = 136315394;
    v94 = v139[1];
    if (v94)
    {
      *&v150 = *v139;
      *(&v150 + 1) = v94;

      v95 = String.init<A>(describing:)();
      v97 = v96;
    }

    else
    {
      v97 = 0xE300000000000000;
      v95 = 7104878;
    }

    v98 = sub_1000343F8(v95, v97, v149);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2080;
    v99 = v132;
    swift_beginAccess();
    v100 = v99;
    v101 = v138;
    sub_10001A510(v100, v138, &qword_1000DF938, qword_1000974C0);
    v102 = v101;
    v103 = v134;
    sub_10001A510(v102, v134, &qword_1000DF938, qword_1000974C0);
    if ((*(v124 + 48))(v103, 1, v141) == 1)
    {
      v104 = 0xE300000000000000;
    }

    else
    {
      v105 = v130;
      sub_10005D4A4(v103, v130, type metadata accessor for NearbySharingInteractionDisplayContext);
      sub_10005D370(v105, v129, type metadata accessor for NearbySharingInteractionDisplayContext);
      v92 = String.init<A>(describing:)();
      v104 = v106;
      sub_10005D310(v105, type metadata accessor for NearbySharingInteractionDisplayContext);
    }

    sub_10000A628(v138, &qword_1000DF938, qword_1000974C0);
    v107 = sub_1000343F8(v92, v104, v149);

    *(v93 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v90, v91, "Initial %s: %s", v93, 0x16u);
    swift_arrayDestroy();

    v123(v140, v118);
    sub_10000A628(&v152, &qword_1000D9E38, &qword_100091570);
    v9 = v141;
    v54 = v132;
    v57 = v126;
  }

  else
  {

    v123(v89, v51);
    sub_10000A628(&v152, &qword_1000D9E38, &qword_100091570);
    v54 = v132;
  }

  v10 = v124;
LABEL_35:
  swift_beginAccess();
  v108 = v145;
  sub_10001A510(v54, v145, &qword_1000DF938, qword_1000974C0);
  v109 = *(v10 + 48);
  if (v109(v108, 1, v9) == 1)
  {
    sub_10005D370(v148, v147, type metadata accessor for NearbySharingInteractionDisplayContext);
    if (v109(v108, 1, v9) != 1)
    {
      sub_10000A628(v108, &qword_1000DF938, qword_1000974C0);
    }
  }

  else
  {
    sub_10005D4A4(v108, v147, type metadata accessor for NearbySharingInteractionDisplayContext);
  }

  sub_1000056EC(&qword_1000DFFE0, &qword_1000978E0);
  swift_allocObject();
  v7[2] = CurrentValueSubject.init(_:)();
  v57(v146, 1, 1, v9);
  sub_1000056EC(&qword_1000DFFE8, &qword_1000978E8);
  swift_allocObject();
  v110 = CurrentValueSubject.init(_:)();
  sub_10005D310(v148, type metadata accessor for NearbySharingInteractionDisplayContext);
  v7[3] = v110;
  sub_10000A628(v54, &qword_1000DF938, qword_1000974C0);
  return v7;
}

uint64_t sub_10005AA38()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DFD00);
  sub_1000047A0(v0, qword_1000DFD00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005AAB8()
{
  v1 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge);
  }

  else
  {
    v3 = v0;
    v4 = sub_10005AB68();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState);
    type metadata accessor for ClassicCardAlertDaemonBridgeClient();
    swift_allocObject();

    v2 = sub_100050BD0(v4, v5);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10005AB68()
{
  v1 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel);
  }

  else
  {
    sub_1000056EC(&qword_1000DFFC8, &unk_1000978C8);
    sub_10000EE58(&qword_1000DFFD0, &qword_1000DFFC8, &unk_1000978C8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v3 = v0;
    v4 = Publisher.eraseToAnyPublisher()();
    type metadata accessor for ClassicCardAlertDaemonBridgeClientModel();
    v2 = swift_allocObject();
    *(v2 + 16) = v4;
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10005AC64()
{
  v1 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter);
  }

  else
  {
    v4 = v0;
    v5 = sub_10005AD18();
    v6 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState);
    v7 = objc_allocWithZone(type metadata accessor for CardPresenter(0));

    v8 = sub_1000192E4(v5, v6);

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_10005AD18()
{
  v1 = _s8CardInfoOMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel);
  }

  else
  {
    v6 = v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_context;
    v7 = type metadata accessor for ClassicCardViewServiceContext(0);
    sub_10005D370(v6 + v7[8], v3, _s8CardInfoOMa);
    v8 = *(v6 + v7[9]);
    v9 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host);
    v10 = (v6 + v7[7]);
    v12 = v10[1];
    v35 = *v10;
    v11 = v35;
    v36 = v8;
    v33 = v9;
    v34 = v12;
    v13 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_rootViewController);
    swift_unknownObjectRetain();
    sub_100019FE8(v11);
    v32 = sub_10000E9E8();
    v31 = v14;
    v30 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment__isActive);
    v15 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState);
    swift_beginAccess();
    v28 = v15[2];
    swift_beginAccess();
    v27 = v15[3];
    swift_beginAccess();
    v16 = v15[4];
    swift_beginAccess();
    v17 = v15[5];
    swift_beginAccess();
    v18 = v15[6];
    v37 = *&v13[OBJC_IVAR___MainViewController_homeGestureEventSubject];
    v29 = v13;

    sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
    sub_10000EE58(&qword_1000DFF98, &qword_1000DA1D0, &qword_100091778, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v19 = Publisher.eraseToAnyPublisher()();
    type metadata accessor for CardPresenterModel(0);
    v5 = swift_allocObject();
    v20 = OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mrResponse;
    sub_1000056EC(&qword_1000DAB50, &unk_100091EE0);
    swift_allocObject();
    *(v5 + v20) = sub_1000550FC(0, 0, 0, 0, 0, 0);
    sub_10005D4A4(v3, v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_cardInfo, _s8CardInfoOMa);
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_deviceAssetType) = v36;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_host) = v33;
    v21 = (v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_initialMediaTransferStatus);
    v22 = v34;
    *v21 = v35;
    v21[1] = v22;
    v23 = (v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_localDeviceModel);
    v24 = v31;
    *v23 = v32;
    v23[1] = v24;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController) = v29;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__isActive) = v30;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__activityDisplayContext) = v28;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__cardMode) = v27;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mediaTransferStatus) = v16;
    *(v5 + v20) = v17;

    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__progress) = v18;
    *(v5 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_homeGestureEventPublisher) = v19;
    *(v0 + v4) = v5;
  }

  return v5;
}

char *sub_10005B13C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v89 = a4;
  v90 = a5;
  v91 = a2;
  v9 = sub_1000056EC(&qword_1000E0000, &qword_100097908);
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v73 = &v72 - v10;
  v11 = sub_1000056EC(&qword_1000E0008, &unk_100097910);
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v74 = &v72 - v12;
  v13 = type metadata accessor for ActivityDisplayContext(0);
  v14 = __chkstk_darwin(v13 - 8);
  v82 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v83 = &v72 - v17;
  __chkstk_darwin(v16);
  v86 = &v72 - v18;
  v19 = type metadata accessor for ClassicCardViewServiceContext(0);
  v20 = __chkstk_darwin(v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v72 - v23;
  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  v25 = qword_1000F3D18;
  *(v5 + 7) = &_swiftEmptySetSingleton;
  v85 = v5 + 56;
  *(v5 + 2) = v25;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  v26 = v25;
  UUID.init()();
  v27 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment__isActive;
  sub_1000056EC(&qword_1000E0010, qword_10009C600);
  swift_allocObject();
  *&v5[v27] = sub_1000543E8(1, 0, 0, 0, 0, 0);
  v28 = &v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler];
  *v28 = 0;
  v28[1] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel] = 0;
  v29 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState;
  type metadata accessor for CardPresenterState();
  v30 = swift_allocObject();
  sub_1000056EC(&qword_1000DFFC8, &unk_1000978C8);
  swift_allocObject();
  *(v30 + 16) = PassthroughSubject.init()();
  v87 = sub_1000056EC(&qword_1000E0018, &unk_100097920);
  swift_allocObject();
  *(v30 + 24) = PassthroughSubject.init()();
  *&v5[v29] = v30;
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000047A0(v31, qword_1000DFD00);
  sub_10005D370(a1, v24, type metadata accessor for ClassicCardViewServiceContext);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v84 = a1;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v92[0] = v36;
    *v35 = 136315138;
    sub_10005D370(v24, v22, type metadata accessor for ClassicCardViewServiceContext);
    v37 = String.init<A>(describing:)();
    v88 = v6;
    v38 = v19;
    v39 = a3;
    v41 = v40;
    sub_10005D310(v24, type metadata accessor for ClassicCardViewServiceContext);
    v42 = sub_1000343F8(v37, v41, v92);
    a3 = v39;
    v19 = v38;
    v6 = v88;

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "Init: context=%s", v35, 0xCu);
    sub_10000529C(v36);
    a1 = v84;
  }

  else
  {

    sub_10005D310(v24, type metadata accessor for ClassicCardViewServiceContext);
  }

  sub_10005D370(a1, &v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_context], type metadata accessor for ClassicCardViewServiceContext);
  v43 = v90;
  *&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host] = v91;
  *&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_rootViewController] = a3;
  v44 = *v28;
  v45 = v28[1];
  v46 = v89;
  *v28 = v89;
  v28[1] = v43;
  swift_unknownObjectRetain();
  v88 = a3;
  sub_10000B16C(v46, v43);
  sub_10000B17C(v44, v45);
  v47 = v86;
  sub_10005D370(a1, v86, type metadata accessor for ActivityDisplayContext);
  v48 = a1 + v19[7];
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = v19[5];
  v81 = *(a1 + v19[6]);
  v52 = v81;
  v79 = *(a1 + v51);
  type metadata accessor for ClassicCardAlertDaemonBridgeClientState();
  v53 = swift_allocObject();
  sub_1000056EC(&qword_1000DAB50, &unk_100091EE0);
  swift_allocObject();
  v80 = v52;
  v53[5] = sub_1000550FC(0, 0, 0, 0, 0, 0);
  swift_allocObject();
  v53[7] = PassthroughSubject.init()();
  v54 = v83;
  sub_10005D370(v47, v83, type metadata accessor for ActivityDisplayContext);
  swift_beginAccess();
  v55 = v82;
  sub_10005D370(v54, v82, type metadata accessor for ActivityDisplayContext);
  sub_1000056EC(&qword_1000DAA38, &qword_100091DB8);
  swift_allocObject();
  v56 = sub_100055E0C(v55, 0, 0, 0, 0, 0);
  sub_10005D310(v54, type metadata accessor for ActivityDisplayContext);
  v53[2] = v56;
  swift_endAccess();
  swift_beginAccess();
  sub_1000056EC(&qword_1000DAAE0, &unk_100097930);
  swift_allocObject();
  v53[3] = sub_10005708C(v79, 0, 0, 0, 0, 0);
  swift_endAccess();
  swift_beginAccess();
  sub_1000056EC(&qword_1000DAA88, &unk_100091DD0);
  swift_allocObject();
  sub_100019FE8(v49);
  v53[4] = sub_100057D80(v49, v50, 0, 0, 0, 0, 0);
  swift_endAccess();
  swift_beginAccess();
  v57 = v80;

  swift_allocObject();
  v53[5] = sub_1000550FC(v81, 0, 0, 0, 0, 0);
  swift_endAccess();
  swift_beginAccess();
  sub_1000056EC(&qword_1000DAAA8, qword_100097940);
  swift_allocObject();
  v53[6] = sub_100058B08(0, 0, 0, 0.0, 0, 0);
  swift_endAccess();

  sub_10005D310(v86, type metadata accessor for ActivityDisplayContext);
  *&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState] = v53;
  v92[0] = v53[7];
  swift_allocObject();
  swift_weakInit();
  v86 = sub_10000EE58(&qword_1000E0020, &qword_1000E0018, &unk_100097920, &protocol conformance descriptor for PassthroughSubject<A, B>);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v92[0] = *&v88[OBJC_IVAR___MainViewController_backlightLuminanceBecameReducedSubject];
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_10005D408;
  *(v59 + 24) = v58;

  sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
  sub_10000EE58(&qword_1000DFF98, &qword_1000DA1D0, &qword_100091778, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v92[0] = *(*&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState] + 24);
  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10005AAB8();
  sub_100050E6C();

  v60 = sub_10005AC64();
  sub_100010898();

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v61 = *(qword_1000F3C58 + 880);
  v62 = *(v61 + *((swift_isaMask & *v61) + 0x70));
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    v65 = String._bridgeToObjectiveC()();
    [v64 setBool:0 forKey:v65];
  }

  v66 = v84;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  if (qword_1000F3D78)
  {
    swift_getKeyPath();
    v67 = v73;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000EE58(&qword_1000E0028, &qword_1000E0000, &qword_100097908, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    v68 = v74;
    v69 = v76;
    Publisher.filter(_:)();
    (*(v75 + 8))(v67, v69);
    sub_10000EE58(&qword_1000E0030, &qword_1000E0008, &unk_100097910, &protocol conformance descriptor for Publishers.Filter<A>);
    v70 = v78;
    Publisher<>.sink(receiveValue:)();
    (*(v77 + 8))(v68, v70);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10000B17C(v89, v90);
    swift_unknownObjectRelease();

    sub_10005D310(v66, type metadata accessor for ClassicCardViewServiceContext);
  }

  else
  {
    sub_10005D310(v66, type metadata accessor for ClassicCardViewServiceContext);
    sub_10000B17C(v89, v90);

    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_10005C028(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005CAA4(0xD00000000000001CLL, 0x80000001000A5990);
  }

  return result;
}

uint64_t sub_10005C098(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4, v5);
  }

  return result;
}

void sub_10005C110()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 880);
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = String._bridgeToObjectiveC()();
    [v3 setBool:0 forKey:v4];
  }

  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000DFD00);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "### forceKillPCViewService set to true, exiting...", v8, 2u);
  }

  exit(0);
}

uint64_t sub_10005C2C0()
{
  v1 = v0;
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DFD00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10005C6A4();
  sub_10000B17C(*(v1 + 24), *(v1 + 32));
  sub_10000B17C(*(v1 + 40), *(v1 + 48));

  v6 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_10005D310(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_context, type metadata accessor for ClassicCardViewServiceContext);
  swift_unknownObjectRelease();

  sub_10000B17C(*(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler), *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler + 8));

  return v1;
}

uint64_t sub_10005C4D0()
{
  sub_10005C2C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ClassicCardAlertEnvironment(uint64_t a1)
{
  result = qword_1000DFD70;
  if (!qword_1000DFD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C57C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ClassicCardViewServiceContext(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10005C6A4()
{
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DFD00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10005AAB8();
  sub_1000516C8();

  v5 = sub_10005AC64();
  sub_1000197E0();
}

id sub_10005C828(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DFD00);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000343F8(0xD000000000000011, 0x80000001000A5970, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000343F8(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: reason=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v2 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler + 8);

    v10(v12);

    return sub_10000B17C(v10, v11);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### No finished handler?", v16, 2u);
    }

    v17 = *(v3 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host);

    return [v17 invalidate];
  }
}

uint64_t sub_10005CAA4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000047A0(v10, qword_1000DFD00);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v7;
    aBlock[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A5950, aBlock);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000343F8(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: reason=%s", v13, 0x16u);
    swift_arrayDestroy();
    v7 = v21;
  }

  sub_10000FE40();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_10005D21C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000CA6F0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005D240(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v22);
}

void sub_10005CF14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_10005AC64();

    sub_10001681C(a2, a3, 0, 0);
  }
}

unint64_t sub_10005CF9C()
{
  _StringGuts.grow(_:)(39);

  type metadata accessor for UUID();
  sub_10005D240(&qword_1000DFF80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000025;
}

uint64_t sub_10005D074@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10005D0F0(char a1)
{

  sub_100052940(a1);
}

_OWORD *sub_10005D18C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_10005D1A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D1DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005D240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005D310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005D370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005D410()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005D494(id a1)
{
  if (a1 != 2)
  {
    sub_100019FD8(a1);
  }
}

uint64_t sub_10005D4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005D50C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000056EC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005D578()
{
  result = qword_1000E0098;
  if (!qword_1000E0098)
  {
    sub_100005818(&qword_1000E00A0, &qword_1000979F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0098);
  }

  return result;
}

uint64_t sub_10005D5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Loader.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005D68C()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E00C8);
  sub_1000047A0(v0, qword_1000E00C8);
  return Logger.init(subsystem:category:)();
}

char *sub_10005D700()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000E00C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinit", v6, 2u);
  }

  v7 = *(*v1 + 96);
  v10 = type metadata accessor for Loader.State(0, *(v2 + 80), v8, v9);
  (*(*(v10 - 8) + 8))(&v1[v7], v10);

  return v1;
}

uint64_t sub_10005D884()
{
  sub_10005D700();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10005D914(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10005D970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_10005DB44(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

void sub_10005DDB4(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v24 = v3 & 0xFFFFFFFFFFFFFF8;
      v25 = v3 & 0xC000000000000001;
      v23 = v3;
      do
      {
        if (v25)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v24 + 16))
          {
            goto LABEL_23;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v26 = v5 + 1;
        v8 = [v6 clipsToBounds];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *a2;
        v27 = *a2;
        v11 = a2;
        *a2 = 0x8000000000000000;
        v3 = sub_100045110(v7);
        v13 = v10[2];
        v14 = (v12 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_24;
        }

        a2 = v12;
        if (v10[3] >= v15)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v18 = v27;
            if (v12)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_10005F7B4();
            v18 = v27;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_10005F550(v15, isUniquelyReferenced_nonNull_native);
          v16 = sub_100045110(v7);
          if ((a2 & 1) != (v17 & 1))
          {
            sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v3 = v16;
          v18 = v27;
          if (a2)
          {
LABEL_4:
            *(v18[7] + v3) = v8;
            goto LABEL_5;
          }
        }

        v18[(v3 >> 6) + 8] |= 1 << v3;
        *(v18[6] + 8 * v3) = v7;
        *(v18[7] + v3) = v8;
        v19 = v18[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_25;
        }

        v18[2] = v21;
        v22 = v7;
LABEL_5:
        a2 = v11;
        *v11 = v18;

        [v7 setClipsToBounds:0];

        ++v5;
        v3 = v23;
      }

      while (v26 != v4);
    }
  }
}

uint64_t sub_10005E004()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E01E0);
  sub_1000047A0(v0, qword_1000E01E0);
  return Logger.init(subsystem:category:)();
}

void sub_10005E088()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 592);

  v1 = v0;
  sub_100025A38();
  v3 = v2;

  v4 = *(qword_1000F3C58 + 576);

  v5 = v4;
  sub_100025A38();
  v7 = v6;

  v8 = *(qword_1000F3C58 + 560);

  v9 = v8;
  sub_100025A38();
  v11 = v10;

  v12 = *(qword_1000F3C58 + 608);

  v13 = v12;
  sub_100025A38();
  v15 = v14;

  *&xmmword_1000F3CA0 = v3;
  *(&xmmword_1000F3CA0 + 1) = v7;
  qword_1000F3CB0 = v11;
  unk_1000F3CB8 = v15;
}

void sub_10005E1B0()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 600);

  v1 = v0;
  sub_100025A38();
  v3 = v2;

  v4 = *(qword_1000F3C58 + 584);

  v5 = v4;
  sub_100025A38();
  v7 = v6;

  v8 = *(qword_1000F3C58 + 568);

  v9 = v8;
  sub_100025A38();
  v11 = v10;

  v12 = *(qword_1000F3C58 + 608);

  v13 = v12;
  sub_100025A38();
  v15 = v14;

  *&xmmword_1000F3CC0 = v3;
  *(&xmmword_1000F3CC0 + 1) = v7;
  qword_1000F3CD0 = v11;
  unk_1000F3CD8 = v15;
}

id *sub_10005E2D8()
{
  v1 = v0;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E01E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_10005E3D8()
{
  sub_10005E2D8();

  return _swift_deallocClassInstance(v0, 128, 7);
}

void sub_10005E430()
{
  v1 = v0;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E01E0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_1000343F8(0x2865726170657270, 0xE900000000000029, v36);
    *(v5 + 12) = 2080;
    v6 = *(v1 + 72);
    v33 = *(v1 + 56);
    v34 = v6;
    v7 = String.init<A>(describing:)();
    v9 = sub_1000343F8(v7, v8, v36);

    *(v5 + 14) = v9;
    *(v5 + 22) = 2080;
    v10 = *(v1 + 104);
    v33 = *(v1 + 88);
    v34 = v10;
    v11 = String.init<A>(describing:)();
    v13 = sub_1000343F8(v11, v12, v36);

    *(v5 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.from=%s, self.to=%s", v5, 0x20u);
    swift_arrayDestroy();
  }

  v14 = [*(v1 + 16) scrollView];
  [v14 setClipsToBounds:0];

  v15 = *(v1 + 32);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 clearColor];
    [v17 setBackgroundColor:v18];
  }

  v19 = [*(v1 + 16) view];
  if (v19)
  {
    v20 = v19;
    v21 = *(v1 + 24);
    v22 = sub_100046DF0(_swiftEmptyArrayStorage);
    v36[0] = v22;
    v23 = sub_10008564C(v21);
    if (v23)
    {
      v35 = v23;
      sub_100085850();

      sub_10005DDB4(v35, v36);

      v22 = v36[0];
    }

    else
    {
    }

    *(v1 + 120) = v22;

    v25 = [*(v1 + 24) layer];
    sub_1000056EC(&qword_1000DBD80, &qword_100093928);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000938F0;
    v27 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v27 setValue:isa forKey:kCAFilterInputRadius];

    *(v26 + 56) = sub_10000ED88(0, &qword_1000DBD88, CAFilter_ptr);
    *(v26 + 32) = v27;
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v25 setFilters:v29];

    v30 = [*(v1 + 24) layer];
    [v30 setTransform:{&v33, sub_10005F2DC(&v33, *(v1 + 72), *(v1 + 64))}];

    v31 = [*(v1 + 24) layer];
    v32 = *(v1 + 80);
    *&v32 = v32;
    [v31 setOpacity:v32];
  }

  else
  {
    __break(1u);
  }
}

void sub_10005E8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E01E0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v38 = a2;
    *&aBlock = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A5AB0, &aBlock);
    *(v9 + 12) = 2080;
    *&v39[0] = *(v3 + 40);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000343F8(v10, v11, &aBlock);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    *&v39[0] = *(v3 + 48);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000343F8(v13, v14, &aBlock);

    *(v9 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: self.delay=%s, self.duration=%s", v9, 0x20u);
    swift_arrayDestroy();
  }

  v16 = objc_opt_self();
  [v16 begin];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v43 = sub_10005F9D4;
  v44 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v41 = sub_100035630;
  v42 = &unk_1000CA918;
  v18 = _Block_copy(&aBlock);

  sub_10000B16C(a1, a2);

  [v16 setCompletionBlock:v18];
  _Block_release(v18);
  if (qword_1000D97C8 != -1)
  {
    swift_once();
  }

  [v16 setAnimationTimingFunction:{qword_1000E01F8, v38, *&v39[0]}];
  *&aBlock = 0x2E737265746C6966;
  *(&aBlock + 1) = 0xE800000000000000;
  v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v21);

  v22 = aBlock;
  sub_10000ED88(0, &qword_1000E03C0, CABasicAnimation_ptr);
  v23 = sub_10005EEF0(*(v3 + 48), *(v3 + 40), v22, *(&v22 + 1));
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v23 setFromValue:isa];

  v25 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v23 setToValue:v25];

  v26 = [*(v3 + 24) layer];
  v27 = String._bridgeToObjectiveC()();
  [v26 addAnimation:v23 forKey:v27];

  v28 = sub_10005EEF0(*(v3 + 48), *(v3 + 40), 0x726F66736E617274, 0xE90000000000006DLL);
  sub_10005F2DC(v39, *(v3 + 72), *(v3 + 64));
  v29 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v28 setFromValue:v29];

  sub_10005F2DC(&aBlock, *(v3 + 104), *(v3 + 96));
  v30 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v28 setToValue:v30];

  v31 = [*(v3 + 24) layer];
  v32 = String._bridgeToObjectiveC()();
  [v31 addAnimation:v28 forKey:v32];

  v33 = sub_10005EEF0(*(v3 + 48), *(v3 + 40), 0x7974696361706FLL, 0xE700000000000000);
  v34 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v33 setFromValue:v34];

  v35 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v33 setToValue:v35];

  v36 = [*(v3 + 24) layer];
  v37 = String._bridgeToObjectiveC()();
  [v36 addAnimation:v33 forKey:v37];

  [v16 commit];
}

id sub_10005EEF0(double a1, double a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();

  v8 = [ObjCClassFromMetadata animationWithKeyPath:v7];

  v9 = v8;
  [v9 setDuration:a1];
  [v9 setFillMode:kCAFillModeForwards];
  [v9 setRemovedOnCompletion:0];
  v10 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
  [v9 setTimingFunction:v10];

  [v9 setBeginTime:CACurrentMediaTime() + a2];
  return v9;
}

void sub_10005F028()
{
  v1 = v0;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E01E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v23[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x6574656C706D6F63, 0xEA00000000002928, v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  [*(v1 + 16) externalAnimationsEnded];
  v7 = *(v1 + 32);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 systemBackgroundColor];
    [v9 setBackgroundColor:v10];
  }

  v11 = [*(v1 + 16) view];
  if (v11)
  {
    v12 = v11;
    v13 = *(v1 + 120);
    v14 = *(v1 + 24);

    sub_1000854F4(v14, v13);

    v15 = [*(v1 + 24) layer];
    [v15 setFilters:0];

    v16 = [*(v1 + 24) layer];
    v17 = *&CATransform3DIdentity.m33;
    v23[4] = *&CATransform3DIdentity.m31;
    v23[5] = v17;
    v18 = *&CATransform3DIdentity.m43;
    v23[6] = *&CATransform3DIdentity.m41;
    v23[7] = v18;
    v19 = *&CATransform3DIdentity.m13;
    v23[0] = *&CATransform3DIdentity.m11;
    v23[1] = v19;
    v20 = *&CATransform3DIdentity.m23;
    v23[2] = *&CATransform3DIdentity.m21;
    v23[3] = v20;
    [v16 setTransform:v23];

    v21 = [*(v1 + 24) layer];
    LODWORD(v22) = 1.0;
    [v21 setOpacity:v22];
  }

  else
  {
    __break(1u);
  }
}

CGFloat sub_10005F2DC@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  CATransform3DMakeScale(&v22, a2, a2, 1.0);
  [*(v3 + 24) center];
  v8 = v7;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000047A0(v9, qword_1000E01E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8 * a3;
    _os_log_impl(&_mh_execute_header, v10, v11, "OffsetY: %f", v12, 0xCu);
  }

  [*(v4 + 24) center];
  CATransform3DMakeTranslation(&v19, 0.0, v13 * a3, 0.0);
  a = v22;
  CATransform3DConcat(&v21, &a, &v19);
  v14 = *&v21.m33;
  a1[4] = *&v21.m31;
  a1[5] = v14;
  v15 = *&v21.m43;
  a1[6] = *&v21.m41;
  a1[7] = v15;
  v16 = *&v21.m13;
  *a1 = *&v21.m11;
  a1[1] = v16;
  result = v21.m21;
  v18 = *&v21.m23;
  a1[2] = *&v21.m21;
  a1[3] = v18;
  return result;
}

id sub_10005F494()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1046227190;
  LODWORD(v2) = 1058810102;
  LODWORD(v3) = 1052099215;
  LODWORD(v4) = 1.0;
  result = [v0 initWithControlPoints:v1 :v2 :v3 :v4];
  qword_1000E01F8 = result;
  return result;
}

void sub_10005F518(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

Swift::Int sub_10005F550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000056EC(qword_1000DED00, &qword_100096A70);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_10005F7B4()
{
  v1 = v0;
  sub_1000056EC(qword_1000DED00, &qword_100096A70);
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

uint64_t sub_10005F910(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = xmmword_100097A80;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v3 + 72) = _Q0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = _Q0;
  *(v3 + 120) = sub_100046DF0(_swiftEmptyArrayStorage);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v12 = *(v3 + 32);
  *(v3 + 32) = a3;
  v13 = a3;

  return v3;
}

uint64_t sub_10005F98C()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005F9D4()
{
  v1 = *(v0 + 24);
  sub_10005F028();
  if (v1)
  {
    v1();
  }
}

uint64_t sub_10005FA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10005FA30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_10005FA44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_10005FA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10005FAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, float a5@<S1>)
{
  v10 = sub_1000056EC(&qword_1000DBCD8, &qword_1000937A0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (v37 - v15);
  v17 = sub_10005FEE8(a1);
  v19 = v18;
  *v16 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for CAImage(0);
  v21 = v16 + v20[5];
  v37[0] = 0uLL;
  sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
  State.init(wrappedValue:)();
  v22 = v42;
  *v21 = v41;
  *(v21 + 2) = v22;
  v23 = (v16 + v20[7]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v16 + v20[6]);
  *v24 = v17;
  v24[1] = v19;
  static Alignment.center.getter();
  result = _FrameLayout.init(width:height:alignment:)();
  v26 = (v16 + *(v11 + 44));
  v27 = v55;
  *v26 = v54;
  v26[1] = v27;
  v26[2] = v56;
  v28 = a4 / 176.0;
  if (a4 / 176.0 * 40.0 > a4 / 176.0 * 50.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  result = _FrameLayout.init(width:height:alignment:)();
  v30 = v28 * 10.0;
  if (v28 * 10.0 > v28 * 20.0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (a5 > 0.0)
  {
    if (a5 >= 1.0)
    {
      v30 = v28 * 20.0;
    }

    else
    {
      v30 = v28 * 20.0 * a5 + v30 * (1.0 - a5);
    }
  }

  v31 = static Animation.linear(duration:)();
  sub_10001A510(v16, v14, &qword_1000DBCD8, &qword_1000937A0);
  sub_10001A510(v14, a3, &qword_1000DBCD8, &qword_1000937A0);
  v32 = (a3 + *(sub_1000056EC(&qword_1000E03D0, &qword_100097C48) + 48));
  *&v37[0] = KeyPath;
  *(&v37[0] + 1) = a2;
  v33 = v51;
  v34 = v52;
  v37[1] = v51;
  v37[2] = v52;
  v38 = v53;
  *&v39 = a5;
  *(&v39 + 1) = a5;
  *v40 = v30;
  BYTE8(v40[0]) = 0;
  *&v40[1] = v31;
  *(&v40[1] + 2) = a5;
  *v32 = v37[0];
  v32[1] = v33;
  *(v32 + 92) = *(v40 + 12);
  v35 = v38;
  v36 = v40[0];
  v32[4] = v39;
  v32[5] = v36;
  v32[2] = v34;
  v32[3] = v35;
  sub_10001A510(v37, &v41, &qword_1000E03D8, &qword_100097C50);
  sub_10000A628(v16, &qword_1000DBCD8, &qword_1000937A0);
  *&v41 = KeyPath;
  *(&v41 + 1) = a2;
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v45 = a5;
  v46 = a5;
  v47 = v30;
  v48 = 0;
  v49 = v31;
  v50 = a5;
  sub_10000A628(&v41, &qword_1000E03D8, &qword_100097C50);
  return sub_10000A628(v14, &qword_1000DBCD8, &qword_1000937A0);
}

unint64_t sub_10005FEE8(uint64_t a1)
{
  v1 = 0x5F646F70656D6F68;
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000011;
  if (a1 != 7)
  {
    v3 = 0x5F646F70656D6F68;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  if (a1 == 5)
  {
    v2 = 0x5F646F70656D6F68;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 4)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_10005FFAC@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *a2 = static Alignment.center.getter();
  a2[1] = v8;
  v9 = sub_1000056EC(&qword_1000E03C8, &unk_100097BC8);
  return sub_10005FAFC(v5, v6, a2 + *(v9 + 44), v4, v7);
}

unint64_t sub_100060034()
{
  result = qword_1000E03E0;
  if (!qword_1000E03E0)
  {
    sub_100005818(&qword_1000E03E8, qword_100097C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E03E0);
  }

  return result;
}

uint64_t sub_1000600AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006018C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100060250(uint64_t a1)
{
  sub_100060520(319, &qword_1000E0470, type metadata accessor for PCActivityType);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PCActivityAssetType(319);
    if (v2 <= 0x3F)
    {
      sub_100060328(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ActivityDisplayContext.DynamicTextScheme(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100060328(uint64_t a1)
{
  if (!qword_1000E0478)
  {
    v2 = sub_10000ED88(255, &qword_1000E0480, UIImage_ptr);
    v5 = type metadata accessor for NSCodingCodableOptional(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1000E0478);
    }
  }
}

uint64_t sub_100060390(uint64_t a1)
{
  result = type metadata accessor for ActivityDisplayContext.CallDisplayContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100060480(uint64_t a1)
{
  sub_10001AB30();
  if (v1 <= 0x3F)
  {
    sub_100060520(319, &unk_1000E05D0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100060520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100060588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100060664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100060714(uint64_t a1)
{
  sub_10001AB30();
  if (v1 <= 0x3F)
  {
    sub_100060520(319, &unk_1000E05D0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000607B8()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000F3CE0);
  sub_1000047A0(v0, qword_1000F3CE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100060838()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E03F0);
  v1 = sub_1000047A0(v0, qword_1000E03F0);
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000047A0(v0, qword_1000F3CE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100060900()
{
  v1 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityDisplayContext(0);
  sub_100065218(v0 + *(v10 + 32), v9, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_8;
    }

    sub_100065280(v9, v3, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v12 = sub_100062630();
    v14 = v13;
    v15 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
    v16 = v3;
LABEL_7:
    sub_100064EFC(v16, v15);
    if (v14)
    {
      return v12;
    }

LABEL_8:
    v18 = [objc_opt_self() localizedStringForKey:10];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_100065280(v9, v6, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v12 = sub_100062158();
    v14 = v17;
    v15 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    v16 = v6;
    goto LABEL_7;
  }

  return *v9;
}

uint64_t sub_100060B3C()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065218(v1, v10, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v12 == 2)
    {
      sub_100065280(v10, v4, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
      v14 = sub_100062630();
      sub_100064EFC(v4, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
      return v14;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100065280(v10, v7, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v15 = sub_100062158();
    sub_100064EFC(v7, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    return v15;
  }

  else
  {
    return *v10;
  }

  return result;
}

uint64_t sub_100060D40()
{
  v1 = sub_1000056EC(&qword_1000E07C0, &qword_100097EE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - v3;
  v5 = sub_1000056EC(&qword_1000E07C8, &qword_100097EE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_1000056EC(&qword_1000E07D0, &qword_100097EF0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v32 - v9;
  v10 = sub_1000056EC(&qword_1000E07D8, &qword_100097EF8);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v35 = &v32 - v11;
  v12 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v39 = v0;
  sub_100065218(v0, &v32 - v16, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100064EFC(v17, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    }

    v40 = sub_100060B3C();
    v41 = v30;
    sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
    Just.init(_:)();
    sub_10000EE58(&qword_1000E0818, &qword_1000E07C0, &qword_100097EE0, &protocol conformance descriptor for Just<A>);
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_100064EFC(v17, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_10000ED88(0, &qword_1000E07E0, NSTimer_ptr);
    v19 = v8;
    v20 = [objc_opt_self() mainRunLoop];
    v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_10000A628(v7, &qword_1000E07C8, &qword_100097EE8);
    v40 = v22;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100064EB4(&qword_1000E07E8, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v23 = ConnectablePublisher.autoconnect()();

    v40 = v23;
    sub_1000056EC(&qword_1000E07F0, &qword_100097F00);
    type metadata accessor for Date();
    *(swift_allocObject() + 16) = xmmword_1000938F0;
    Date.init()();
    sub_1000056EC(&qword_1000E07F8, &unk_100097F08);
    sub_10000EE58(&qword_1000E0800, &qword_1000E07F8, &unk_100097F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    v24 = v34;
    Publisher.prepend(_:)();

    sub_100065218(v39, v15, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v26 = swift_allocObject();
    sub_100065280(v15, v26 + v25, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
    sub_10000EE58(&qword_1000E0808, &qword_1000E07D0, &qword_100097EF0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
    v27 = v35;
    Publisher.map<A>(_:)();

    (*(v36 + 8))(v24, v19);
    sub_10000EE58(&qword_1000E0810, &qword_1000E07D8, &qword_100097EF8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v28 = v38;
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v37 + 8))(v27, v28);
  }

  return v29;
}

uint64_t sub_10006149C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
  }

  else
  {
    v7 = [objc_opt_self() localizedStringForKey:10];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
}

unint64_t sub_10006152C()
{
  v1 = v0;
  _StringGuts.grow(_:)(33);

  String.append(_:)(*(v0 + 24));
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = sub_100064F5C(*(v0 + 16));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  if (*(v1 + 8))
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    type metadata accessor for PCActivityType(0);
    v10 = String.init<A>(describing:)();
    v9 = v11;
  }

  v12 = v9;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0xD000000000000018;
}

uint64_t sub_10006165C(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E06D0, &qword_100097E60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100006768(a1, a1[3]);
  sub_100064E60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  type metadata accessor for PCActivityType(0);
  sub_100064EB4(&qword_1000E06D8, type metadata accessor for PCActivityType, &protocol conformance descriptor for PCActivityType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[2];
    v13 = 1;
    type metadata accessor for PCActivityAssetType(0);
    sub_100064EB4(&qword_1000E06E0, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[5];
    v13 = 3;
    sub_1000056EC(&qword_1000E06B8, &qword_100097E58);
    sub_10000EE58(&qword_1000E06E8, &qword_1000E06B8, &qword_100097E58, &unk_100091810);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for ActivityDisplayContext(0);
    LOBYTE(v11) = 4;
    type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    sub_100064EB4(&qword_1000E06F0, type metadata accessor for ActivityDisplayContext.DynamicTextScheme, &unk_100097D84);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000619D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v4 = __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v26 - v7;
  v9 = sub_1000056EC(&qword_1000E0698, &qword_100097E50);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v34 = a1;
  sub_100006768(a1, v15);
  sub_100064E60();
  v32 = v11;
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_10000529C(v34);
  }

  else
  {
    v33 = v8;
    v28 = v6;
    v17 = v30;
    type metadata accessor for PCActivityType(0);
    v37 = 0;
    sub_100064EB4(&qword_1000E06A8, type metadata accessor for PCActivityType, &protocol conformance descriptor for PCActivityType);
    v18 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v36;
    v20 = v14;
    *v14 = v35;
    v14[8] = v19;
    type metadata accessor for PCActivityAssetType(0);
    v37 = 1;
    sub_100064EB4(&qword_1000E06B0, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v17;
    v20[2] = v35;
    LOBYTE(v35) = 2;
    v20[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v20[4] = v22;
    sub_1000056EC(&qword_1000E06B8, &qword_100097E58);
    v27 = v20;
    v37 = 3;
    sub_10000EE58(&qword_1000E06C0, &qword_1000E06B8, &qword_100097E58, &unk_100091838);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26[1] = v35;
    v23 = v27;
    v27[5] = v35;
    LOBYTE(v35) = 4;
    sub_100064EB4(&qword_1000E06C8, type metadata accessor for ActivityDisplayContext.DynamicTextScheme, &unk_100097DAC);
    v24 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100065280(v24, v23 + *(v12 + 32), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    LOBYTE(v35) = 5;
    v25 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v32, v18);
    sub_100065280(v25, v23 + *(v12 + 36), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_100065218(v23, v29, type metadata accessor for ActivityDisplayContext);
    sub_10000529C(v34);
    sub_100064EFC(v23, type metadata accessor for ActivityDisplayContext);
  }
}

uint64_t sub_100061F90()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x6461654864726163;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x74786554746E6968;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7079547465737361;
  if (v1 != 1)
  {
    v5 = 0x614E656369766564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100062078@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100066168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000620AC(uint64_t a1)
{
  v2 = sub_100064E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000620E8(uint64_t a1)
{
  v2 = sub_100064E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100062158()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  __chkstk_darwin(v2 - 8);
  v4 = v40 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = v1[1];
  if (!v12)
  {
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000047A0(v19, qword_1000E03F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "### CallDisplayContext: No displayName", v22, 2u);
    }

    v23 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 24);
    goto LABEL_21;
  }

  v13 = *v1;
  v14 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  sub_100046CBC(v1 + *(v14 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000A628(v4, &qword_1000DEC68, &qword_1000969D8);
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000047A0(v15, qword_1000E03F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "### CallDisplayContext: No startDate", v18, 2u);
    }

LABEL_20:
    v23 = *(v14 + 24);
LABEL_21:
    v34 = *(v1 + v23);

    return v34;
  }

  (*(v6 + 32))(v11, v4, v5);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v25 = v24;
  v26 = *(v6 + 8);
  v26(v9, v5);
  v27 = [objc_opt_self() formattedDurationFor:v25];
  if (!v27)
  {
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000047A0(v35, qword_1000E03F0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "### CallDisplayContext: Could not get formattedDuration??", v38, 2u);
    }

    v26(v11, v5);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v40[0] = v13;
  v40[1] = v12;

  v32._countAndFlagsBits = 2108704;
  v32._object = 0xE300000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v29;
  v33._object = v31;
  String.append(_:)(v33);

  v34 = v40[0];
  v26(v11, v5);
  return v34;
}

uint64_t sub_100062630()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v41 - v10;
  v12 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  sub_100046CBC(v1 + *(v12 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000A628(v4, &qword_1000DEC68, &qword_1000969D8);
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000047A0(v13, qword_1000E03F0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### TimerDisplayContext: No startDate", v16, 2u);
    }

LABEL_7:
    v17 = *v1;

    return v17;
  }

  (*(v6 + 32))(v11, v4, v5);
  Date.init()();
  v18 = static Date.> infix(_:_:)();
  v19 = *(v6 + 8);
  v19(v9, v5);
  if (v18)
  {
    Date.timeIntervalSinceNow.getter();
    v21 = [objc_opt_self() formattedDurationFor:v20];
    if (!v21)
    {
      if (qword_1000D97D8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000047A0(v37, qword_1000E03F0);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "### TimerDisplayContext: Could not get formattedDuration??", v40, 2u);
      }

      v19(v11, v5);
      goto LABEL_7;
    }

    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    v26 = v1[1];
    if (v26)
    {
      v27 = *v1;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v29._countAndFlagsBits = v27;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 2108704;
    v30._object = 0xE300000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v23;
    v31._object = v25;
    String.append(_:)(v31);

    v17 = v41[0];
    v19(v11, v5);
  }

  else
  {
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000047A0(v32, qword_1000E03F0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "### TimerDisplayContext: fireDate is past", v35, 2u);
    }

    v19(v11, v5);
    return 0;
  }

  return v17;
}

uint64_t sub_100062B34@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100065218(a1, v12, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    v14 = 0;
    v15 = 0;
    if (result != 2)
    {
      goto LABEL_8;
    }

    sub_100065280(v12, v6, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v14 = sub_100062630();
    v15 = v16;
    v17 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
    v18 = v6;
LABEL_7:
    result = sub_100064EFC(v18, v17);
    goto LABEL_8;
  }

  if (result)
  {
    sub_100065280(v12, v9, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v14 = sub_100062158();
    v15 = v19;
    v17 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    v18 = v9;
    goto LABEL_7;
  }

  v14 = *v12;
  v15 = v12[1];
LABEL_8:
  *a2 = v14;
  a2[1] = v15;
  return result;
}

uint64_t sub_100062D28(void *a1)
{
  v2 = sub_1000056EC(&qword_1000E0758, &qword_100097E98);
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v32 - v3;
  v41 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v41);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000056EC(&qword_1000E0760, &qword_100097EA0);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = &v32 - v6;
  v36 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000056EC(&qword_1000E0768, &qword_100097EA8);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1000056EC(&qword_1000E0770, &qword_100097EB0);
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000056EC(&qword_1000E0778, &qword_100097EB8);
  v47 = *(v17 - 8);
  v48 = v17;
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  sub_100006768(a1, a1[3]);
  sub_100065074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100065218(v46, v16, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v50 = 1;
      sub_100065170();
      v21 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v35;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v34 + 8))(v10, v22);
      return (*(v47 + 8))(v19, v21);
    }

    v24 = v37;
    sub_100065280(v16, v37, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v51 = 2;
    sub_10006511C();
    v29 = v38;
    v26 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100064EB4(&qword_1000E0788, type metadata accessor for ActivityDisplayContext.CallDisplayContext, &unk_100097CE4);
    v30 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v29, v30);
    v28 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v24 = v42;
    sub_100065280(v16, v42, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v52 = 3;
    sub_1000650C8();
    v25 = v43;
    v26 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100064EB4(&qword_1000E0780, type metadata accessor for ActivityDisplayContext.TimerDisplayContext, &unk_100097D34);
    v27 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v25, v27);
    v28 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
LABEL_7:
    sub_100064EFC(v24, v28);
    return (*(v47 + 8))(v19, v26);
  }

  v49 = 0;
  sub_1000651C4();
  v31 = v48;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v33 + 8))(v13, v11);
  return (*(v47 + 8))(v19, v31);
}

uint64_t sub_100063454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v62 = sub_1000056EC(&qword_1000E06F8, &qword_100097E68);
  v65 = *(v62 - 8);
  __chkstk_darwin(v62);
  v70 = &v54 - v3;
  v4 = sub_1000056EC(&qword_1000E0700, &qword_100097E70);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v69 = &v54 - v5;
  v6 = sub_1000056EC(&qword_1000E0708, &qword_100097E78);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  __chkstk_darwin(v6);
  v68 = &v54 - v8;
  v9 = sub_1000056EC(&qword_1000E0710, &qword_100097E80);
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v66 = &v54 - v10;
  v67 = sub_1000056EC(&qword_1000E0718, &unk_100097E88);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = &v54 - v11;
  v13 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v54 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = (&v54 - v21);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v25 = a1[3];
  v74 = a1;
  sub_100006768(a1, v25);
  sub_100065074();
  v26 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v54 = v22;
    v55 = v19;
    v56 = v16;
    v27 = v68;
    v28 = v69;
    v29 = v70;
    v57 = v24;
    v73 = v13;
    v30 = v71;
    v31 = v67;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = (2 * *(v32 + 16)) | 1;
    v75 = v32;
    v76 = v32 + 32;
    v77 = 0;
    v78 = v33;
    v34 = sub_1000718A4();
    v35 = v12;
    if (v34 != 4 && v77 == v78 >> 1)
    {
      if (v34 > 1u)
      {
        v42 = v72;
        if (v34 == 2)
        {
          v79 = 2;
          sub_10006511C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
          sub_100064EB4(&qword_1000E0740, type metadata accessor for ActivityDisplayContext.CallDisplayContext, &unk_100097D0C);
          v43 = v55;
          v44 = v64;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v63 + 8))(v28, v44);
          (*(v42 + 8))(v35, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v43;
        }

        else
        {
          v79 = 3;
          sub_1000650C8();
          v45 = v29;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
          sub_100064EB4(&qword_1000E0730, type metadata accessor for ActivityDisplayContext.TimerDisplayContext, &unk_100097D5C);
          v47 = v56;
          v48 = v62;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v65 + 8))(v45, v48);
          (*(v42 + 8))(v35, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v47;
        }
      }

      else
      {
        if (!v34)
        {
          v79 = 0;
          sub_1000651C4();
          v36 = v66;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v58 + 8))(v36, v59);
          (*(v72 + 8))(v35, v31);
          swift_unknownObjectRelease();
          v37 = v57;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_100065280(v37, v30, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
          return sub_10000529C(v74);
        }

        v79 = 1;
        sub_100065170();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v46 = v60;
        v50 = KeyedDecodingContainer.decode(_:forKey:)();
        v52 = v51;
        (*(v61 + 8))(v27, v46);
        (*(v72 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v53 = v54;
        *v54 = v50;
        v53[1] = v52;
        swift_storeEnumTagMultiPayload();
        v49 = v53;
      }

      v37 = v57;
      sub_100065280(v49, v57, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
      goto LABEL_14;
    }

    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_1000056EC(&qword_1000DBA80, &qword_100094060);
    *v40 = v73;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v72 + 8))(v12, v31);
    swift_unknownObjectRelease();
  }

  return sub_10000529C(v74);
}

uint64_t sub_100063E10(uint64_t a1)
{
  v2 = sub_10006511C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063E4C(uint64_t a1)
{
  v2 = sub_10006511C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100063E88()
{
  v1 = 1701736302;
  v2 = 1819042147;
  if (*v0 != 2)
  {
    v2 = 0x72656D6974;
  }

  if (*v0)
  {
    v1 = 0x636974617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100063EEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100066390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100063F20(uint64_t a1)
{
  v2 = sub_100065074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063F5C(uint64_t a1)
{
  v2 = sub_100065074();

  return CodingKey.debugDescription.getter(a1, v2);
}