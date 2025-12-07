uint64_t sub_1000019D0()
{
  v1 = v0;
  v2 = sub_100003960(&qword_100018438, &qword_10000E1C0);
  __chkstk_darwin(v2 - 8);
  v4 = (v25 - v3);
  v5 = sub_100003960(&qword_100018440, &qword_10000E1C8);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_100003960(&qword_100018448, &qword_10000E1D0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  *v4 = static Alignment.center.getter();
  v4[1] = v11;
  v12 = sub_100003960(&qword_100018450, &qword_10000E1D8);
  sub_100001D3C(v0, v4 + *(v12 + 44));
  v13 = static Animation.easeInOut(duration:)();
  v25[0] = *(v0 + 40);
  sub_100003960(&qword_1000187C0, &qword_10000E1E0);
  State.wrappedValue.getter();
  if (v26)
  {
    v14 = 1;
  }

  else
  {
    v25[0] = *(v0 + 56);
    State.wrappedValue.getter();
    v14 = v26;
  }

  sub_1000039B4(v4, v7, &qword_100018438, &qword_10000E1C0);
  v15 = &v7[*(v5 + 36)];
  *v15 = v13;
  v15[8] = v14;
  v16 = swift_allocObject();
  v17 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v1 + 64);
  v18 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  sub_1000039B4(v7, v10, &qword_100018440, &qword_10000E1C8);
  v19 = &v10[*(v8 + 36)];
  *v19 = sub_1000039AC;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = 0;
  v26 = *(v1 + 16);
  v27 = *(v1 + 32);
  sub_100003778(v1, v25);
  sub_100003960(&qword_100018458, &qword_10000E1E8);
  Binding.wrappedValue.getter();
  v20 = *&v25[0];
  *&v26 = *&v25[0];
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  sub_100003778(v1, v25);
  sub_100003960(&qword_1000186A0, &qword_10000E1F0);
  sub_100003A84();
  sub_100003C3C();
  View.onChange<A>(of:initial:_:)();

  return sub_100004384(v10, &qword_100018448, &qword_10000E1D0);
}

uint64_t sub_100001D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v30 = sub_100003960(&qword_100018498, &qword_10000E220);
  __chkstk_darwin(v30);
  v27 = &v27 - v3;
  v32 = sub_100003960(&qword_1000184A0, &qword_10000E228);
  __chkstk_darwin(v32);
  v34 = (&v27 - v4);
  v29 = sub_100003960(&qword_1000184A8, &qword_10000E230);
  __chkstk_darwin(v29);
  v6 = &v27 - v5;
  v33 = sub_100003960(&qword_1000184B0, &qword_10000E238);
  __chkstk_darwin(v33);
  v31 = &v27 - v7;
  v8 = type metadata accessor for OpacityTransition();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v28 = sub_100003960(&qword_1000184B8, &qword_10000E240);
  __chkstk_darwin(v28);
  v16 = &v27 - v15;
  v37 = *(a1 + 40);
  sub_100003960(&qword_1000187C0, &qword_10000E1E0);
  State.wrappedValue.getter();
  if (v36 == 1)
  {
    v37 = *(a1 + 16);
    v38 = *(a1 + 32);
    sub_100003960(&qword_100018458, &qword_10000E1E8);
    Binding.wrappedValue.getter();
    v17 = v36;
    if (v36)
    {
      type metadata accessor for AXRTextFormatterPresetsManager();
      swift_allocObject();
      v18 = v17;
      AXRTextFormatterPresetsManager.init()();
      AXRRootView.init(readerManager:presetsManager:dismiss:)();
      OpacityTransition.init()();
      (*(v9 + 16))(v12, v14, v8);
      sub_100004504(&qword_1000184C0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      v19 = AnyTransition.init<A>(_:)();
      (*(v9 + 8))(v14, v8);
      *&v16[*(v28 + 36)] = v19;
      v20 = &qword_1000184B8;
      v21 = &qword_10000E240;
      sub_10000431C(v16, v6, &qword_1000184B8, &qword_10000E240);
      swift_storeEnumTagMultiPayload();
      sub_10000403C();
      sub_100004124();
      v22 = v31;
      _ConditionalContent<>.init(storage:)();
      sub_10000431C(v22, v34, &qword_1000184B0, &qword_10000E238);
      swift_storeEnumTagMultiPayload();
      sub_100003960(&qword_1000184C8, &qword_10000E248);
      sub_100003FB0();
      sub_100004208();
      _ConditionalContent<>.init(storage:)();

LABEL_6:
      sub_100004384(v22, &qword_1000184B0, &qword_10000E238);
      return sub_100004384(v16, v20, v21);
    }
  }

  v37 = *(a1 + 56);
  State.wrappedValue.getter();
  if (v36 == 1)
  {
    *&v37 = String.localized.getter();
    *(&v37 + 1) = v23;
    __chkstk_darwin(v37);
    v16 = v27;
    ContentUnavailableView.init(label:description:actions:)();

    OpacityTransition.init()();
    (*(v9 + 16))(v12, v14, v8);
    sub_100004504(&qword_1000184C0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v24 = AnyTransition.init<A>(_:)();
    (*(v9 + 8))(v14, v8);
    *&v16[*(v30 + 36)] = v24;
    v20 = &qword_100018498;
    v21 = &qword_10000E220;
    sub_10000431C(v16, v6, &qword_100018498, &qword_10000E220);
    swift_storeEnumTagMultiPayload();
    sub_10000403C();
    sub_100004124();
    v22 = v31;
    _ConditionalContent<>.init(storage:)();
    sub_10000431C(v22, v34, &qword_1000184B0, &qword_10000E238);
    swift_storeEnumTagMultiPayload();
    sub_100003960(&qword_1000184C8, &qword_10000E248);
    sub_100003FB0();
    sub_100004208();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  OpacityTransition.init()();
  (*(v9 + 16))(v12, v14, v8);
  sub_100004504(&qword_1000184C0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v26 = AnyTransition.init<A>(_:)();
  (*(v9 + 8))(v14, v8);
  *v34 = v26;
  swift_storeEnumTagMultiPayload();
  sub_100003960(&qword_1000184C8, &qword_10000E248);
  sub_100003FB0();
  sub_100004208();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10000255C(uint64_t a1)
{
  v2 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3 - 8];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  sub_100003778(a1, v12);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v8;
  *(v7 + 96) = *(a1 + 64);
  v9 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v9;
  sub_10000483C(0, 0, v4, &unk_10000E218, v7);
}

uint64_t sub_10000269C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  if (*a2)
  {
    v14[0] = *(a3 + 40);
    v15 = 1;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v14[0] = *(a3 + 56);
    v15 = 0;
    return State.wrappedValue.setter();
  }

  else
  {
    v14[0] = *(a3 + 40);
    v15 = 0;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v14[0] = *(a3 + 56);
    v15 = 0;
    State.wrappedValue.setter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    sub_100003778(a3, v14);
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    v12 = *(a3 + 48);
    *(v11 + 64) = *(a3 + 32);
    *(v11 + 80) = v12;
    *(v11 + 96) = *(a3 + 64);
    v13 = *(a3 + 16);
    *(v11 + 32) = *a3;
    *(v11 + 48) = v13;
    sub_10000483C(0, 0, v7, &unk_10000E210, v11);
  }
}

uint64_t sub_100002888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for Date();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v7;
  v4[17] = v6;

  return _swift_task_switch(sub_100002988, v7, v6);
}

uint64_t sub_100002988()
{
  Date.init()();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v6 = *(v3 + 8);
  *(v0 + 144) = v6;
  *(v0 + 152) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  if (v5 >= 5.0)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    *(v0 + 40) = *(v9 + 56);
    *(v0 + 168) = 1;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v6(v8, v10);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_100002B34;

    return static Task<>.sleep(nanoseconds:)(300000000);
  }
}

uint64_t sub_100002B34()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1000046DC;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100002C58;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100002C58()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v2;
  sub_100003960(&qword_100018458, &qword_10000E1E8);
  Binding.wrappedValue.getter();
  v3 = *(v0 + 72);
  if (v3)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 112);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);

    v8 = *(v7 + 40);
    *(v0 + 169) = 1;
    *(v0 + 56) = v8;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v4(v5, v6);
LABEL_8:

    v19 = *(v0 + 8);

    return v19();
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v13 = v12;
  v14 = *(v11 + 8);
  *(v0 + 144) = v14;
  *(v0 + 152) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v10);
  if (v13 >= 5.0)
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    *(v0 + 40) = *(v17 + 56);
    *(v0 + 168) = 1;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.setter();
    v14(v16, v18);
    goto LABEL_8;
  }

  v15 = swift_task_alloc();
  *(v0 + 160) = v15;
  *v15 = v0;
  v15[1] = sub_100002B34;

  return static Task<>.sleep(nanoseconds:)(300000000);
}

uint64_t sub_100002E90@<X0>(uint64_t a1@<X8>)
{
  v22 = String.localized.getter();
  sub_1000043E4(v22, v2, v3);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.title2.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_100004438(v4, v6, v8 & 1);

  v14 = Text.bold()();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100004438(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_100002FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1000043E4(a1, a3, a4);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static HierarchicalShapeStyle.secondary.getter();
  v10 = Text.foregroundStyle<A>(_:)();
  v12 = v11;
  v14 = v13;
  sub_100004438(v5, v7, v9 & 1);

  static Font.subheadline.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_100004438(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_10000315C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for CircularProgressViewStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003960(&qword_100018530, &qword_10000E2D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = sub_100003960(&qword_100018538, &qword_10000E2D8);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100004678(&qword_100018540, &qword_100018530, &qword_10000E2D0, &protocol conformance descriptor for ProgressView<A, B>);
  sub_100004504(&qword_100018548, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
  View.progressViewStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  static UnitPoint.center.getter();
  v15 = &v14[*(v10 + 44)];
  __asm { FMOV            V2.2D, #1.5 }

  *v15 = _Q2;
  *(v15 + 2) = v21;
  *(v15 + 3) = v22;
  v45 = String.localized.getter();
  v46 = v23;
  sub_1000043E4(v45, v23, v24);
  v25 = Text.init<A>(_:)();
  v27 = v26;
  LOBYTE(v4) = v28;
  static Font.body.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  LOBYTE(v2) = v32;

  sub_100004438(v25, v27, v4 & 1);

  static Color.secondary.getter();
  v33 = Text.foregroundColor(_:)();
  v35 = v34;
  LOBYTE(v10) = v36;
  v38 = v37;

  sub_100004438(v29, v31, v2 & 1);

  v39 = v43;
  sub_10000454C(v14, v43);
  v40 = v44;
  sub_10000454C(v39, v44);
  v41 = v40 + *(sub_100003960(&qword_100018550, &qword_10000E2E0) + 48);
  *v41 = v33;
  *(v41 + 8) = v35;
  *(v41 + 16) = v10 & 1;
  *(v41 + 24) = v38;
  sub_1000045BC(v33, v35, v10 & 1);

  sub_1000045CC(v14);
  sub_100004438(v33, v35, v10 & 1);

  return sub_1000045CC(v39);
}

uint64_t sub_100003560@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v2 = sub_100003960(&qword_100018528, &qword_10000E2C8);
  return sub_10000315C(a1 + *(v2 + 44));
}

Swift::Int sub_1000035B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003624(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

__n128 sub_10000367C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u64[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  BYTE8(v17) = v20;
  *&v18 = v21;
  BYTE8(v18) = v20;
  v19 = v21;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = BYTE8(v17);
  v26 = v18;
  v27 = BYTE8(v18);
  v28 = v19;
  sub_100003778(&v15, v14);
  sub_1000037B0(&v20);
  v12 = v18;
  *(a6 + 32) = v17;
  *(a6 + 48) = v12;
  *(a6 + 64) = v19;
  result = v16;
  *a6 = v15;
  *(a6 + 16) = result;
  return result;
}

void type metadata accessor for AXNotification()
{
  if (!qword_100018428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018428);
    }
  }
}

__n128 sub_100003830(uint64_t a1, uint64_t a2)
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

uint64_t sub_100003854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000389C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003960(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003A1C()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100003A84()
{
  result = qword_100018460;
  if (!qword_100018460)
  {
    sub_100003B10(&qword_100018448, &qword_10000E1D0);
    sub_100003B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018460);
  }

  return result;
}

uint64_t sub_100003B10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B58()
{
  result = qword_100018468;
  if (!qword_100018468)
  {
    sub_100003B10(&qword_100018440, &qword_10000E1C8);
    sub_100004678(&qword_100018470, &qword_100018438, &qword_10000E1C0, &protocol conformance descriptor for ZStack<A>);
    sub_100004678(&qword_100018478, &qword_100018480, &qword_10000E1F8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018468);
  }

  return result;
}

unint64_t sub_100003C3C()
{
  result = qword_100018488;
  if (!qword_100018488)
  {
    sub_100003B10(&qword_1000186A0, &qword_10000E1F0);
    sub_100004504(&qword_100018490, &type metadata accessor for AXRBlockManager, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018488);
  }

  return result;
}

uint64_t sub_100003CF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000046CC;

  return sub_100002888(a1, v4, v5, v1 + 32);
}

uint64_t sub_100003DA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100003E0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003EBC;

  return sub_100002888(a1, v4, v5, v1 + 32);
}

uint64_t sub_100003EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100003FB0()
{
  result = qword_1000184D0;
  if (!qword_1000184D0)
  {
    sub_100003B10(&qword_1000184B0, &qword_10000E238);
    sub_10000403C();
    sub_100004124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184D0);
  }

  return result;
}

unint64_t sub_10000403C()
{
  result = qword_1000184D8;
  if (!qword_1000184D8)
  {
    sub_100003B10(&qword_1000184B8, &qword_10000E240);
    sub_100004504(&qword_1000184E0, &type metadata accessor for AXRRootView, &protocol conformance descriptor for AXRRootView);
    sub_100004678(&qword_1000184E8, &qword_1000184F0, &qword_10000E250, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184D8);
  }

  return result;
}

unint64_t sub_100004124()
{
  result = qword_1000184F8;
  if (!qword_1000184F8)
  {
    sub_100003B10(&qword_100018498, &qword_10000E220);
    sub_100004678(&qword_100018500, &qword_100018508, &qword_10000E258, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_100004678(&qword_1000184E8, &qword_1000184F0, &qword_10000E250, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184F8);
  }

  return result;
}

unint64_t sub_100004208()
{
  result = qword_100018510;
  if (!qword_100018510)
  {
    v1 = sub_100003B10(&qword_1000184C8, &qword_10000E248);
    sub_1000042C0(v1, v2, v3);
    sub_100004678(&qword_1000184E8, &qword_1000184F0, &qword_10000E250, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018510);
  }

  return result;
}

unint64_t sub_1000042C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100018518;
  if (!qword_100018518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018518);
  }

  return result;
}

uint64_t sub_10000431C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003960(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004384(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003960(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000043E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100018520;
  if (!qword_100018520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018520);
  }

  return result;
}

uint64_t sub_100004438(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004458()
{
  sub_100003B10(&qword_100018448, &qword_10000E1D0);
  sub_100003B10(&qword_1000186A0, &qword_10000E1F0);
  sub_100003A84();
  sub_100003C3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000454C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003960(&qword_100018538, &qword_10000E2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000045BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000045CC(uint64_t a1)
{
  v2 = sub_100003960(&qword_100018538, &qword_10000E2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004678(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003B10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String __swiftcall String.axrDropPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = String.hasPrefix(_:)(a1);

  if (v5)
  {
    v6 = String.count.getter();
    sub_10000478C(v6, v4, v3);

    v4 = static String._fromSubstring(_:)();
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_10000478C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10000483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000431C(a3, v25 - v10, &qword_1000187A0, &qword_10000E200);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004384(v11, &qword_1000187A0, &qword_10000E200);
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

      sub_100004384(a3, &qword_1000187A0, &qword_10000E200);

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

  sub_100004384(a3, &qword_1000187A0, &qword_10000E200);
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

id sub_100004B3C()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityReaderProfileObserver()) init];
  qword_100018BB0 = result;
  return result;
}

id sub_100004BF0()
{
  v1 = [objc_opt_self() sharedConnection];
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for AccessibilityReaderProfileObserver();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100004D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - v8;
  __chkstk_darwin(v7);
  if (qword_100018420 != -1)
  {
    swift_once();
  }

  v10 = qword_100018BB0;
  *a1 = qword_100018BB0;
  v34 = 0;
  v35 = 0;
  v11 = v10;
  sub_100003960(&qword_100018678, &qword_10000E358);
  State.init(wrappedValue:)();
  v12 = v37;
  *(a1 + 8) = v36;
  *(a1 + 24) = v12;
  v34 = 0;
  v35 = 0;
  State.init(wrappedValue:)();
  v13 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v13;
  v14 = type metadata accessor for AccessibilityReaderApp(0);
  v15 = v14[7];
  *(a1 + v15) = swift_getKeyPath();
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[8];
  v34 = 0;
  sub_100003960(&qword_100018690, &unk_10000E360);
  State.init(wrappedValue:)();
  *(a1 + v16) = v36;
  v17 = v14[9];
  AXRDataLog.getter();
  sub_10000BD44(_swiftEmptyArrayStorage);
  v18 = [objc_opt_self() mainRunLoop];
  v19 = objc_allocWithZone(type metadata accessor for AXRuntimeClient());
  *(a1 + v17) = AXRuntimeClient.init(logger:handlers:runloop:)();
  v20 = v14[10];
  v34 = 0;
  sub_100003960(&qword_1000186A0, &qword_10000E1F0);
  State.init(wrappedValue:)();
  *(a1 + v20) = v36;
  v21 = a1 + v14[11];
  LOBYTE(v34) = 0;
  State.init(wrappedValue:)();
  v22 = *(&v36 + 1);
  *v21 = v36;
  *(v21 + 8) = v22;
  v23 = [objc_opt_self() sharedConnection];
  if (v23 && (v24 = v23, v25 = String._bridgeToObjectiveC()(), v26 = [v24 effectiveBoolValueForSetting:v25], v25, v24, v26 == 2))
  {
    AXRDataLog.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Accessibility Reader is not allowed - preventing app launch", v33, 2u);
    }

    (*(v3 + 8))(v9, v2);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    AXRDataLog.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Accessibility Reader is allowed - proceeding with app launch", v29, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_100005258@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityReaderApp(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = v7;
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003960(&qword_100018700, &qword_10000E3F0);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  __chkstk_darwin(v9);
  v43 = &v42 - v11;
  v50 = sub_100003960(&qword_100018708, &qword_10000E3F8);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v57 = &v42 - v12;
  v13 = sub_100003960(&qword_100018710, &qword_10000E400);
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  __chkstk_darwin(v13);
  v47 = &v42 - v15;
  sub_10000BE54(v1, v8);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_10000BEBC(v8, v17 + v16);
  sub_100003960(&qword_100018718, &qword_10000E408);
  v18 = sub_100003B10(&qword_100018720, &qword_10000E410);
  v19 = sub_100003B10(&qword_100018728, &qword_10000E418);
  v20 = sub_10000BF90();
  *&v58 = v19;
  *(&v58 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v58 = v18;
  *(&v58 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  v22 = v55;
  v23 = v44;
  sub_100009AE8(v44);
  sub_10000BE54(v22, v8);
  v24 = swift_allocObject();
  sub_10000BEBC(v8, v24 + v16);
  v25 = sub_100004678(&qword_100018750, &qword_100018700, &qword_10000E3F0, &protocol conformance descriptor for WindowGroup<A>);
  v26 = sub_10000CBEC(&qword_100018758, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v27 = v23;
  v28 = v45;
  v29 = v48;
  v30 = v43;
  Scene.onChange<A>(of:initial:_:)();

  (*(v49 + 8))(v27, v29);
  (*(v46 + 8))(v30, v28);
  v31 = v55;
  v32 = *(v55 + 24);
  v58 = *(v55 + 8);
  v59 = v32;
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  sub_10000BE54(v31, v8);
  v33 = swift_allocObject();
  sub_10000BEBC(v8, v33 + v16);
  v34 = sub_100003960(&qword_100018678, &qword_10000E358);
  *&v58 = v28;
  *(&v58 + 1) = v29;
  v59 = v25;
  v60 = v26;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_10000C19C();
  v37 = v47;
  v38 = v50;
  v39 = v57;
  Scene.onChange<A>(of:initial:_:)();

  (*(v53 + 8))(v39, v38);
  *&v58 = v38;
  *(&v58 + 1) = v34;
  v59 = v35;
  v60 = v36;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v52 + 8))(v37, v40);
}

uint64_t sub_1000058F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for AccessibilityReaderApp(0);
  v4 = v3 - 8;
  v21 = *(v3 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = sub_100003960(&qword_100018720, &qword_10000E410);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v20 - v7;
  v9 = *(a1 + 24);
  v32 = *(a1 + 8);
  *&v33 = v9;
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  v10 = v24;
  v24 = *(a1 + *(v4 + 48));
  sub_100003960(&qword_100018770, &qword_10000E430);
  State.projectedValue.getter();
  sub_10000367C(v10, *(&v10 + 1), v32, *(&v32 + 1), v33, v30);
  KeyPath = swift_getKeyPath();
  v12 = *(a1 + *(v4 + 44));
  v26 = v30[2];
  v27 = v30[3];
  v24 = v30[0];
  v25 = v30[1];
  *&v28 = v31;
  *(&v28 + 1) = KeyPath;
  v29 = v12;
  sub_10000BE54(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v14 = swift_allocObject();
  sub_10000BEBC(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = v12;
  v16 = sub_100003960(&qword_100018728, &qword_10000E418);
  v17 = sub_10000BF90();
  View.onOpenURL(perform:)();

  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v32 = v24;
  v33 = v25;
  sub_100004384(&v32, &qword_100018728, &qword_10000E418);
  sub_10000CE88(&off_100014BB8);
  sub_10000CFF0(&unk_100014BD8);
  sub_10000CE88(&off_100014BE8);
  sub_10000CFF0(&unk_100014C08);
  *&v24 = v16;
  *(&v24 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  View.handlesExternalEvents(preferring:allowing:)();

  return (*(v6 + 8))(v8, v18);
}

uint64_t sub_100005C58(uint64_t a1)
{
  v1 = type metadata accessor for AccessibilityReaderApp(0);
  __chkstk_darwin(v1);
  v81 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v85 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v82 = &v72 - v7;
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  __chkstk_darwin(v8);
  v86 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003960(&qword_1000187F8, &qword_10000E4F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  v14 = type metadata accessor for URLComponents();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = URL.scheme.getter();
  if (v19)
  {
    if (v18 == 0x78612D656C707061 && v19 == 0xEE00726564616572)
    {

      goto LABEL_6;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
LABEL_6:
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        return sub_100004384(v13, &qword_1000187F8, &qword_10000E4F0);
      }

      (*(v15 + 32))(v17, v13, v14);
      v26 = URLComponents.queryItems.getter();
      if (!v26)
      {
        return (*(v15 + 8))(v17, v14);
      }

      v27 = v26;
      v78 = v15;
      v79 = v14;
      v28 = *(v26 + 16);
      v76 = v26;
      v77 = v1;
      if (v28)
      {
        v73 = v17;
        v74 = v4;
        v75 = v3;
        *&v92 = _swiftEmptyArrayStorage;
        sub_10000B7F4(0, v28, 0);
        v29 = v92;
        v30 = *(v88 + 16);
        v31 = v27 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v84 = *(v88 + 72);
        v85 = v30;
        v88 += 16;
        v83 = (v88 - 8);
        do
        {
          v32 = v86;
          v33 = v87;
          v85(v86, v31, v87);
          v34 = URLQueryItem.name.getter();
          v36 = v35;
          v37 = URLQueryItem.value.getter();
          if (v38)
          {
            v39 = v37;
          }

          else
          {
            v39 = 0;
          }

          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = 0xE000000000000000;
          }

          (*v83)(v32, v33);
          *&v92 = v29;
          v42 = *(v29 + 16);
          v41 = *(v29 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_10000B7F4((v41 > 1), v42 + 1, 1);
            v29 = v92;
          }

          *(v29 + 16) = v42 + 1;
          v43 = (v29 + 32 * v42);
          v43[4] = v34;
          v43[5] = v36;
          v43[6] = v39;
          v43[7] = v40;
          v31 += v84;
          --v28;
        }

        while (v28);
        v3 = v75;
        v4 = v74;
        v44 = v82;
        v17 = v73;
      }

      else
      {
        v44 = v82;
        if (!_swiftEmptyArrayStorage[2])
        {
          v46 = &_swiftEmptyDictionarySingleton;
          v45 = v80;
LABEL_27:
          *&v92 = v46;

          sub_10000AEDC(v47, 1, &v92);
          v48 = v81;

          v49 = v92;
          if (*(v92 + 16) && (v50 = sub_10000B28C(1954047348, 0xE400000000000000), (v51 & 1) != 0))
          {
            v52 = *(*(v49 + 56) + 16 * v50);
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }

          v54 = *(v45 + 48);
          v92 = *(v45 + 32);
          v93 = v54;
          v90 = v52;
          v91 = v53;
          sub_100003960(&qword_100018760, &qword_10000E428);
          State.wrappedValue.setter();
          if (*(v49 + 16) && (v55 = sub_10000B28C(0x4449656C646E7562, 0xE800000000000000), (v56 & 1) != 0))
          {
            v57 = (*(v49 + 56) + 16 * v55);
            v59 = *v57;
            v58 = v57[1];
          }

          else
          {
            v59 = 0;
            v58 = 0;
          }

          v60 = *(v45 + 24);
          v92 = *(v45 + 8);
          v93 = v60;
          v90 = v59;
          v91 = v58;
          State.wrappedValue.setter();
          v61 = v45 + *(v77 + 44);
          v62 = *v61;
          v63 = *(v61 + 8);
          LOBYTE(v92) = v62;
          *(&v92 + 1) = v63;
          LOBYTE(v90) = 1;
          sub_100003960(&qword_1000187C0, &qword_10000E1E0);
          State.wrappedValue.setter();
          AXRDataLog.getter();
          sub_10000BE54(v45, v48);
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v89 = v67;
            *v66 = 136315138;
            v68 = *(v48 + 24);
            v92 = *(v48 + 8);
            v93 = v68;
            State.wrappedValue.getter();
            if (v91)
            {
              v69 = v90;
            }

            else
            {
              v69 = 0x6E776F6E6B6E75;
            }

            if (v91)
            {
              v70 = v91;
            }

            else
            {
              v70 = 0xE700000000000000;
            }

            sub_10000C218(v48);
            v71 = sub_10000A934(v69, v70, &v89);

            *(v66 + 4) = v71;
            _os_log_impl(&_mh_execute_header, v64, v65, "URL received, pending refresh set for bundleID: %s", v66, 0xCu);
            sub_10000C274(v67);

            (*(v4 + 8))(v82, v3);
            return (*(v78 + 8))(v17, v79);
          }

          else
          {

            (*(v4 + 8))(v44, v3);
            (*(v78 + 8))(v17, v79);
            return sub_10000C218(v48);
          }
        }
      }

      v45 = v80;
      sub_100003960(&qword_100018800, &qword_10000E4F8);
      v46 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_27;
    }
  }

  v22 = v85;
  AXRDataLog.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "AX Reader received an invalid scheme", v25, 2u);
  }

  return (*(v4 + 8))(v22, v3);
}

void sub_100006548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v4 = type metadata accessor for Logger();
  v51 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for ScenePhase();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a2, v19);
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == enum case for ScenePhase.background(_:))
  {
    AXRDataLog.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "AX Reader app entering BACKGROUND phase", v26, 2u);
    }

    (*(v51 + 8))(v10, v4);
LABEL_9:
    sub_10000718C();
    return;
  }

  if (v23 == enum case for ScenePhase.inactive(_:))
  {
    AXRDataLog.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "AX Reader app entering INACTIVE phase", v29, 2u);
    }

    (*(v51 + 8))(v13, v4);
    goto LABEL_9;
  }

  v30 = v4;
  if (v23 == enum case for ScenePhase.active(_:))
  {
    AXRDataLog.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v51;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "AX Reader app entering ACTIVE phase", v35, 2u);
    }

    v36 = *(v34 + 8);
    v36(v18, v30);
    v37 = v50;
    sub_100006AF0();
    v38 = v37 + *(type metadata accessor for AccessibilityReaderApp(0) + 44);
    v39 = *v38;
    v40 = *(v38 + 8);
    v53 = *v38;
    v54 = v40;
    sub_100003960(&qword_1000187C0, &qword_10000E1E0);
    State.wrappedValue.getter();
    if (v52 == 1)
    {
      AXRDataLog.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Processing pending URL refresh", v43, 2u);
      }

      v36(v16, v30);
      sub_100006EC8();
      v53 = v39;
      v54 = v40;
      v52 = 0;
      State.wrappedValue.setter();
    }
  }

  else
  {
    AXRDataLog.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v51;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "AX Reader app in an invalid scene phase", v48, 2u);
    }

    (*(v47 + 8))(v7, v30);
    (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_100006AF0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v29 = *(v1 + *(type metadata accessor for AccessibilityReaderApp(0) + 32));
    sub_100003960(&qword_1000187C8, &qword_10000E4A8);
    State.wrappedValue.getter();
    v14 = v28;
    if (v28)
    {
      AXRDataLog.getter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v1;
        v19 = v18;
        *&v29 = v18;
        *v17 = 136315138;
        v20 = sub_10000A934(v11, v13, &v29);

        *(v17 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v15, v16, "Releasing App Switcher Appearance Assertion for %s", v17, 0xCu);
        sub_10000C274(v19);
        v1 = v27;
      }

      else
      {
      }

      (*(v3 + 8))(v8, v2);
      [v14 invalidate];
    }

    else
    {
      AXRDataLog.getter();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v29 = v24;
        *v23 = 136315138;
        v25 = sub_10000A934(v11, v13, &v29);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "There is no active App Switcher Appearance Assertion for %s", v23, 0xCu);
        sub_10000C274(v24);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  v29 = *(v1 + *(type metadata accessor for AccessibilityReaderApp(0) + 32));
  v28 = 0;
  sub_100003960(&qword_1000187C8, &qword_10000E4A8);
  return State.wrappedValue.setter();
}

void sub_100006EC8()
{
  v0 = type metadata accessor for AccessibilityReaderApp(0);
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  if (v2)
  {

    sub_1000075E4();
  }

  else
  {
    sub_100007FBC();
  }
}

void sub_10000718C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessibilityReaderApp(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v26 = v6;
    v11 = v3;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    aBlock = *(v1 + *(v2 + 32));
    sub_100003960(&qword_1000187C8, &qword_10000E4A8);
    State.wrappedValue.getter();
    v15 = v32;
    if (v32)
    {

      AXRDataLog.getter();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&aBlock = v19;
        *v18 = 136315138;
        v20 = sub_10000A934(v12, v14, &aBlock);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "Already acquired app switcher appearance assertion for %s", v18, 0xCu);
        sub_10000C274(v19);
      }

      else
      {
      }

      (*(v26 + 8))(v8, v5);
    }

    else
    {
      sub_10000BE54(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v22 = swift_allocObject();
      sub_10000BEBC(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      v23 = (v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v23 = v12;
      v23[1] = v14;
      v30 = sub_10000C890;
      v31 = v22;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v28 = sub_1000094C4;
      v29 = &unk_100014EC0;
      v24 = _Block_copy(&aBlock);

      SBSRequestAppSwitcherAppearanceForHiddenApplication();
      _Block_release(v24);
    }
  }
}

void sub_10000753C(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_10:
    type metadata accessor for AccessibilityReaderApp(0);
    sub_100003960(&qword_100018770, &qword_10000E430);
    State.wrappedValue.setter();
    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *a1 == *a2 && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_100006EC8();
}

void sub_1000075E4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003960(&qword_100018778, &qword_10000E438);
  __chkstk_darwin(v5 - 8);
  v71 = v63 - v6;
  v7 = sub_100003960(&qword_100018780, &qword_10000E440);
  __chkstk_darwin(v7 - 8);
  v81 = v63 - v8;
  v82 = type metadata accessor for AXRTextContent();
  v9 = *(v82 - 8);
  __chkstk_darwin(v82);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AXRArticle();
  v72 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v74 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v76 = v63 - v16;
  __chkstk_darwin(v15);
  v78 = v63 - v17;
  v18 = type metadata accessor for AXRPlaybackSpeed();
  v75 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v73 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v79 = v63 - v21;
  v22 = *(v0 + 48);
  v85 = *(v0 + 32);
  v86 = v22;
  sub_100003960(&qword_100018760, &qword_10000E428);
  State.wrappedValue.getter();
  v80 = v84;
  if (v84)
  {
    v69 = v18;
    v77 = v12;
    v23 = v83;
    v24 = *(v0 + 24);
    v85 = *(v0 + 8);
    v86 = v24;
    State.wrappedValue.getter();
    v70 = v84;
    if (v84)
    {
      v64 = v2;
      v65 = v1;
      v66 = v0;
      v25 = v83;
      type metadata accessor for IRSpeechFormatterModel();
      swift_allocObject();
      IRSpeechFormatterModel.init()();
      dispatch thunk of IRSpeechFormatterModel.playbackSpeed.getter();

      *&v85 = 10;
      *(&v85 + 1) = 0xE100000000000000;
      __chkstk_darwin(v26);
      v62 = &v85;
      v27 = v80;

      v29 = sub_10000A468(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000C2C0, &v63[-4], v23, v27, v28);
      v30 = v29[2];
      v68 = v4;
      v67 = v25;
      if (v30)
      {
        *&v85 = _swiftEmptyArrayStorage;
        sub_10000B814(0, v30, 0);
        v31 = v85;
        v63[1] = v29;
        v32 = v29 + 7;
        do
        {

          static String._fromSubstring(_:)();
          v33 = type metadata accessor for AttributedString();
          (*(*(v33 - 8) + 56))(v81, 1, 1, v33);
          LOBYTE(v62) = 0;
          AXRTextContent.init(text:isHeader:headingLevel:isListElement:isLink:attributedText:isFirstElement:isLastElement:)();

          *&v85 = v31;
          v35 = *(v31 + 16);
          v34 = *(v31 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_10000B814((v34 > 1), v35 + 1, 1);
            v31 = v85;
          }

          *(v31 + 16) = v35 + 1;
          (*(v9 + 32))(v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v35, v11, v82);
          v32 += 4;
          --v30;
        }

        while (v30);
        v4 = v68;
      }

      v36 = v70;
      v37 = String._bridgeToObjectiveC()();
      v38 = AXAppNameForBundleId();

      v40 = v76;
      v39 = v77;
      if (v38)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = type metadata accessor for Date();
        (*(*(v41 - 8) + 56))(v71, 1, 1, v41);

        String.localizedData.getter();
        LOWORD(v62) = 0;
        v42 = v78;
        AXRArticle.init(appName:bundleID:content:title:date:isLandingPage:isLoading:)();
        AXRDataLog.getter();
        v43 = v72;
        v81 = *(v72 + 16);
        (v81)(v40, v42, v39);

        v44 = v4;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *&v85 = v80;
          *v47 = 136315394;
          v48 = v43;
          v49 = sub_10000A934(v67, v36, &v85);

          *(v47 + 4) = v49;
          *(v47 + 12) = 2080;
          AXRArticle.content.getter();
          v50 = Array.description.getter();
          v52 = v51;

          v53 = *(v48 + 8);
          v53(v40, v77);
          v54 = v53;
          v55 = sub_10000A934(v50, v52, &v85);
          v39 = v77;

          *(v47 + 14) = v55;
          _os_log_impl(&_mh_execute_header, v45, v46, "App Article Content (using text) for %s: %s", v47, 0x16u);
          swift_arrayDestroy();

          (*(v64 + 8))(v68, v65);
        }

        else
        {

          v54 = *(v43 + 8);
          v54(v40, v39);
          (*(v64 + 8))(v44, v65);
        }

        v56 = v78;
        (v81)(v74, v78, v39);
        v57 = v75;
        v58 = v79;
        v59 = v69;
        (*(v75 + 16))(v73, v79, v69);
        v60 = objc_allocWithZone(type metadata accessor for AXRBlockManager());
        v61 = AXRBlockManager.init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)();
        v85 = *(v66 + *(type metadata accessor for AccessibilityReaderApp(0) + 40));
        v83 = v61;
        sub_100003960(&qword_100018770, &qword_10000E430);
        State.wrappedValue.setter();
        v54(v56, v39);
        (*(v57 + 8))(v58, v59);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void *sub_100007FBC()
{
  v2 = v0;
  v3 = sub_100003960(&qword_1000187A0, &qword_10000E200);
  __chkstk_darwin(v3 - 8);
  v86 = &v72 - v4;
  v5 = type metadata accessor for Logger();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = __chkstk_darwin(v5);
  v85 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v84 = &v72 - v9;
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for AXRPlaybackSpeed();
  v88 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v83 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v72 - v15;
  v16 = sub_100003960(&qword_1000187A8, &qword_10000E468);
  __chkstk_darwin(v16 - 8);
  v18 = &v72 - v17;
  v98 = type metadata accessor for AXRArticle();
  v93 = *(v98 - 8);
  v19 = *(v93 + 64);
  v20 = __chkstk_darwin(v98);
  v87 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v72 - v22;
  __chkstk_darwin(v21);
  v92 = &v72 - v24;
  v25 = *(v0 + 24);
  v96 = *(v0 + 8);
  v97 = v25;
  sub_100003960(&qword_100018760, &qword_10000E428);
  result = State.wrappedValue.getter();
  v27 = v95;
  if (!v95)
  {
    return result;
  }

  v81 = v12;
  v82 = v11;
  v28 = v94;
  v29 = type metadata accessor for AccessibilityReaderApp(0);

  AXRuntimeClient.currentAppArticle(sceneID:bundleID:)();

  if (v1)
  {
  }

  v79 = v29;
  v80 = 0;
  v30 = v93;
  v31 = v98;
  if ((*(v93 + 48))(v18, 1, v98) == 1)
  {

    return sub_100004384(v18, &qword_1000187A8, &qword_10000E468);
  }

  v32 = v30[4];
  v33 = v92;
  v74 = v30 + 4;
  v73 = v32;
  v32(v92, v18, v31);
  type metadata accessor for IRSpeechFormatterModel();
  swift_allocObject();
  v34 = v31;
  IRSpeechFormatterModel.init()();
  dispatch thunk of IRSpeechFormatterModel.playbackSpeed.getter();

  AXRDataLog.getter();
  v35 = v30[2];
  v77 = v30 + 2;
  v76 = v35;
  v35(v23, v33, v31);

  v36 = Logger.logObject.getter();
  LODWORD(v33) = static os_log_type_t.debug.getter();

  v75 = v33;
  if (os_log_type_enabled(v36, v33))
  {
    v37 = swift_slowAlloc();
    *&v96 = swift_slowAlloc();
    *v37 = 136315394;
    v38 = v36;
    v39 = sub_10000A934(v28, v27, &v96);

    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    AXRArticle.content.getter();
    type metadata accessor for AXRTextContent();
    v40 = Array.description.getter();
    v42 = v41;

    v78 = *(v93 + 8);
    v78(v23, v98);
    v43 = sub_10000A934(v40, v42, &v96);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v38, v75, "App Article Content (using runtime) for %s: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v78 = v30[1];
    v78(v23, v34);
  }

  v44 = *(v89 + 8);
  v44(v82, v90);
  v45 = v81;
  v46 = *(AXRArticle.content.getter() + 16);

  if (!v46)
  {
    v64 = v84;
    AXRDataLog.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Not refreshing the article in the block manager as we have empty content.", v67, 2u);
    }

    v44(v64, v90);
    (*(v88 + 8))(v91, v45);
    return (v78)(v92, v98);
  }

  v47 = (v2 + *(v79 + 40));
  v48 = *v47;
  v49 = v47[1];
  *&v96 = *v47;
  *(&v96 + 1) = v49;
  sub_100003960(&qword_100018770, &qword_10000E430);
  State.wrappedValue.getter();
  v50 = v94;
  if (!v94)
  {
    v76(v87, v92, v98);
    v68 = v88;
    v69 = v91;
    (*(v88 + 16))(v83, v91, v81);
    v70 = objc_allocWithZone(type metadata accessor for AXRBlockManager());
    v71 = AXRBlockManager.init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)();
    *&v96 = v48;
    *(&v96 + 1) = v49;
    v94 = v71;
    State.wrappedValue.setter();
    (*(v68 + 8))(v69, v81);
    return (v78)(v92, v98);
  }

  v51 = v85;
  AXRDataLog.getter();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Updating content in existing AXRBlockManager instance", v54, 2u);
  }

  v44(v51, v90);
  AXRBlockManager.reset(_:)(0);
  v55 = type metadata accessor for TaskPriority();
  v56 = v86;
  (*(*(v55 - 8) + 56))(v86, 1, 1, v55);
  v57 = v87;
  v58 = v92;
  v59 = v98;
  v76(v87, v92, v98);
  type metadata accessor for MainActor();
  v60 = v50;
  v61 = static MainActor.shared.getter();
  v62 = (*(v93 + 80) + 40) & ~*(v93 + 80);
  v63 = swift_allocObject();
  *(v63 + 2) = v61;
  *(v63 + 3) = &protocol witness table for MainActor;
  *(v63 + 4) = v60;
  v73(&v63[v62], v57, v59);
  sub_10000483C(0, 0, v56, &unk_10000E478, v63);

  (*(v88 + 8))(v91, v81);
  return (v78)(v58, v59);
}

uint64_t sub_1000089F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_100008AE4, v8, v7);
}

uint64_t sub_100008AE4()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100008BB0;

  return sub_100009FB0(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100008BB0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_10000D194;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_100008D44;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100008D44()
{

  AXRBlockManager.updateContent(article:splitStrings:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessibilityReaderApp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C948();
  v16 = static OS_dispatch_queue.main.getter();
  sub_10000BE54(a2, v15);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_10000BEBC(v15, v19 + v17);
  *(v19 + v18) = a1;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_10000CB50;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009480;
  aBlock[3] = &unk_100014F10;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000CBEC(&qword_1000187D8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003960(&qword_1000187E0, &qword_10000E4B0);
  sub_100004678(&qword_1000187E8, &qword_1000187E0, &qword_10000E4B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v30 + 8))(v8, v6);
  return (*(v28 + 8))(v11, v29);
}

uint64_t sub_10000916C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = (a1 + *(type metadata accessor for AccessibilityReaderApp(0) + 32));
  v17 = v15[1];
  v30 = *v15;
  v16 = v30;
  v31 = v17;
  v29 = a2;
  v18 = a2;
  sub_100003960(&qword_1000187C8, &qword_10000E4A8);
  State.wrappedValue.setter();
  v30 = v16;
  v31 = v17;
  State.wrappedValue.getter();
  if (v29)
  {

    AXRDataLog.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000A934(a3, a4, &v30);
      _os_log_impl(&_mh_execute_header, v19, v20, "Acquired app switcher appearance for %s", v21, 0xCu);
      sub_10000C274(v22);
    }

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    AXRDataLog.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10000A934(a3, a4, &v30);
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to Acquire app switcher appearance for %s", v26, 0xCu);
      sub_10000C274(v27);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_100009480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000094C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AccessibilityReaderApp(0);
  sub_10000CBEC(&qword_100018570, type metadata accessor for AccessibilityReaderApp, &unk_10000E370);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for AccessibilityReaderApp(uint64_t a1)
{
  result = qword_100018660;
  if (!qword_100018660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009628(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003960(&qword_100018600, "<\b");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000096F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003960(&qword_100018600, "<\b");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000097A8(uint64_t a1)
{
  type metadata accessor for AccessibilityReaderProfileObserver();
  sub_100009938(319, &qword_100018670, &qword_100018678, &qword_10000E358);
  if (v1 <= 0x3F)
  {
    sub_1000098E0(319);
    if (v2 <= 0x3F)
    {
      sub_100009938(319, &qword_100018688, &qword_100018690, &unk_10000E360);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AXRuntimeClient();
        if (v4 <= 0x3F)
        {
          sub_100009938(319, &qword_100018698, &qword_1000186A0, &qword_10000E1F0);
          if (v5 <= 0x3F)
          {
            sub_10000998C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000098E0(uint64_t a1)
{
  if (!qword_100018680)
  {
    type metadata accessor for ScenePhase();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100018680);
    }
  }
}

void sub_100009938(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003B10(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000998C()
{
  if (!qword_1000186A8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000186A8);
    }
  }
}

uint64_t sub_100009A1C(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_100009AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000431C(v2, &v14 - v9, &qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
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

uint64_t sub_100009CE8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009DE0;

  return v6(a1);
}

uint64_t sub_100009DE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100009ED8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100009F44(v1, v2);
}

unint64_t sub_100009F44(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100009FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000A0B0, 0, 0);
}

uint64_t sub_10000A0B0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10000CBEC(&qword_1000187B0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000CBEC(&qword_1000187B8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10000A240;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10000A240()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10000A3FC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10000A3FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10000A468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10000A828(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10000A828((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10000A828(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10000A828(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10000A828((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000A828(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003960(&qword_100018790, &qword_10000E450);
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

unint64_t sub_10000A934(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000AA00(v11, 0, 0, 1, a1, a2);
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
    sub_10000C31C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C274(v11);
  return v7;
}

unint64_t sub_10000AA00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000AB0C(a5, a6);
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

void *sub_10000AB0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000AB58(a1, a2);
  sub_10000AC88(&off_100014C18);
  return v3;
}

void *sub_10000AB58(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000AD74(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AD74(v10, 0);
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

uint64_t sub_10000AC88(uint64_t result)
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

  result = sub_10000ADE8(result, v11, 1, v3);
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

void *sub_10000AD74(uint64_t a1, uint64_t a2)
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

  sub_100003960(&qword_100018798, &unk_10000E458);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000ADE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003960(&qword_100018798, &unk_10000E458);
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

uint64_t sub_10000AEDC(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10000B28C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10000B534(v15, v4 & 1);
    v10 = sub_10000B28C(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_10000B3BC();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100003960(&qword_100018808, &qword_10000E500);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010000F330;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10000B28C(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10000B534(v31, 1);
        v27 = sub_10000B28C(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t sub_10000B28C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000B304(a1, a2, v4);
}

unint64_t sub_10000B304(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10000B3BC()
{
  v1 = v0;
  sub_100003960(&qword_100018800, &qword_10000E4F8);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

Swift::Int sub_10000B534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003960(&qword_100018800, &qword_10000E4F8);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_10000B7F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000B834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B814(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000B968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B834(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003960(&qword_100018810, &qword_10000E508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003960(&qword_100018818, &unk_10000E510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000B968(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003960(&qword_100018788, &qword_10000E448);
  v10 = *(type metadata accessor for AXRTextContent() - 8);
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
  v15 = *(type metadata accessor for AXRTextContent() - 8);
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

void sub_10000BB40()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 effectiveBoolValueForSetting:v6];

    if (v7 == 2)
    {
      AXRDataLog.getter();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Accessibility Reader disabled via profile change - exiting app immediately", v10, 2u);
      }

      (*(v1 + 8))(v3, v0);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

unint64_t sub_10000BD44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003960(&qword_1000186F8, &qword_10000E3E8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LODWORD(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100009ED8(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_100009ED8(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityReaderApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BEBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityReaderApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BF20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessibilityReaderApp(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000058F4(v4, a1);
}

unint64_t sub_10000BF90()
{
  result = qword_100018730;
  if (!qword_100018730)
  {
    v1 = sub_100003B10(&qword_100018728, &qword_10000E418);
    sub_10000C048(v1, v2, v3);
    sub_100004678(&qword_100018740, &qword_100018748, &qword_10000E420, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018730);
  }

  return result;
}

unint64_t sub_10000C048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100018738;
  if (!qword_100018738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018738);
  }

  return result;
}

void sub_10000C09C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessibilityReaderApp(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100006548(a1, a2, v6);
}

void sub_10000C11C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for AccessibilityReaderApp(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10000753C(a1, a2, v6);
}

unint64_t sub_10000C19C()
{
  result = qword_100018768;
  if (!qword_100018768)
  {
    sub_100003B10(&qword_100018678, &qword_10000E358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018768);
  }

  return result;
}

uint64_t sub_10000C218(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityReaderApp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C274(void *a1)
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

uint64_t sub_10000C2C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000C31C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C378()
{
  v1 = type metadata accessor for AXRArticle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C444(uint64_t a1)
{
  v4 = *(type metadata accessor for AXRArticle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003EBC;

  return sub_1000089F0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000C53C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000046CC;

  return sub_100009CE8(a1, v4);
}

uint64_t sub_10000C62C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003EBC;

  return sub_100009CE8(a1, v4);
}

uint64_t sub_10000C6E4()
{
  v1 = type metadata accessor for AccessibilityReaderApp(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10000C890(void *a1)
{
  v3 = *(type metadata accessor for AccessibilityReaderApp(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100008DC4(a1, v1 + v4, v6, v7);
}

uint64_t sub_10000C930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C948()
{
  result = qword_1000187D0;
  if (!qword_1000187D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000187D0);
  }

  return result;
}

uint64_t sub_10000C994()
{
  v1 = type metadata accessor for AccessibilityReaderApp(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10000CB50()
{
  v1 = *(type metadata accessor for AccessibilityReaderApp(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10000916C(v0 + v2, v4, v6, v7);
}

uint64_t sub_10000CBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000CC34@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.axRuntimeClient.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000CC90()
{
  v1 = type metadata accessor for AccessibilityReaderApp(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100003960(&qword_1000186F0, &qword_10000E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

Swift::Int sub_10000CE88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003960(&qword_1000187F0, &qword_10000E4E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000D044()
{
  sub_100003B10(&qword_100018708, &qword_10000E3F8);
  sub_100003B10(&qword_100018678, &qword_10000E358);
  sub_100003B10(&qword_100018700, &qword_10000E3F0);
  type metadata accessor for ScenePhase();
  sub_100004678(&qword_100018750, &qword_100018700, &qword_10000E3F0, &protocol conformance descriptor for WindowGroup<A>);
  sub_10000CBEC(&qword_100018758, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  sub_10000C19C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}