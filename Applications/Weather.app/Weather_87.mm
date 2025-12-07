uint64_t sub_10092BC88@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  *a3 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for ListView.ListBackgroundView(0);
  v6 = a3 + v5[5];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a3 + v5[6]) = v4;
  *(a3 + v5[7]) = 0x3FC3333333333333;
}

uint64_t sub_10092BD3C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  *a3 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  *(a3 + *(type metadata accessor for ListView.ListGradientBackgroundView(0) + 20)) = v4;
}

uint64_t sub_10092BDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = a1;
  v4 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SearchFieldPlacement();
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 168);
  v34 = *(a2 + 152);
  v35 = v9;
  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  State.projectedValue.getter();
  v27 = v33;
  v10 = *(a2 + 184);
  LOBYTE(v34) = *(a2 + 176);
  *(&v34 + 1) = v10;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  v26 = v33;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
    static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    static SearchFieldPlacement.automatic.getter();
  }

  v13 = LocalizedStringKey.init(stringLiteral:)();
  v17 = Text.init(_:tableName:bundle:comment:)(v13, v15, v14 & 1, v16, 0, 0, 0, "Location search field placeholder text", 38, 2);
  v19 = v18;
  v25 = v20;
  v22 = v21 & 1;
  type metadata accessor for ListView.ListContentView(0);
  sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView, byte_100A9A064);
  v23 = v32;
  View.searchable(text:isPresented:placement:prompt:)();
  sub_10010CD64(v17, v19, v22);

  return (*(v28 + 8))(v23, v31);
}

uint64_t sub_10092C124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v26 = a3;
  v4 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SearchFieldPlacement();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 168);
  v31 = *(a2 + 152);
  v32 = v9;
  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  State.projectedValue.getter();
  v25 = v30;
  v10 = *(a2 + 184);
  LOBYTE(v31) = *(a2 + 176);
  *(&v31 + 1) = v10;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  v24 = v30;
  static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
  static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
  (*(v5 + 8))(v7, v4);
  v11 = LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)(v11, v13, v12 & 1, v14, 0, 0, 0, "Location search field placeholder text", 38, 2);
  v17 = v16;
  v22 = v18;
  LOBYTE(v5) = v19 & 1;
  type metadata accessor for ListView.ListContentView(0);
  sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView, byte_100A9A064);
  v20 = v23;
  View.searchable(text:isPresented:placement:prompt:)();
  sub_10010CD64(v15, v17, v5);

  return (*(v27 + 8))(v20, v29);
}

uint64_t sub_10092C470(uint64_t a1, uint64_t *a2, uint64_t a3)
{

  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  return State.wrappedValue.setter();
}

uint64_t sub_10092C4D4()
{
  sub_10093F568(v0, v6);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, v6, 0xC0uLL);
  sub_10093F568(v0, v6);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, v6, 0xC0uLL);
  Binding.init(get:set:)();
  return v6[0];
}

uint64_t sub_10092C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100988558();
  v7 = v6[10];
  sub_10093F8A8(v6, type metadata accessor for ListViewModel);
  sub_10093F568(a1, __src);
  v8 = swift_allocObject();
  memcpy(v8 + 16, __src, 0xC0uLL);
  v8[208] = v7;
  sub_1003A9460(v7 + 3, LocationSearchEntityFromStringResolver.init(), 0, sub_100941A98, v8, a2);
}

uint64_t sub_10092C738(uint64_t a1)
{
  v2 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  sub_100988558();
  v6 = sub_1000161C0((v5 + 32), *(v5 + 56));
  sub_1003C1D34(v4, *v6);
  return sub_10093F8A8(v4, type metadata accessor for ListViewModel);
}

void sub_10092C850(const char *a1)
{
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90A48);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10092C968(uint64_t a1, uint64_t *a2, uint64_t a3)
{

  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  return State.wrappedValue.setter();
}

void sub_10092CA44()
{
  v0 = type metadata accessor for ListViewModel(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100988558();
  v4 = v3[*(v1 + 88)];
  sub_10093F8A8(v3, type metadata accessor for ListViewModel);
  sub_10092CAF4(v4);
}

void sub_10092CAF4(char a1)
{
  v2 = type metadata accessor for ListLocationViewModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        return;
      }

      sub_100988558();
      sub_1000302D8(&v14[*(v9 + 32)], v8, &qword_100CC4158, &qword_100A5D730);
      if (sub_100024D10(v8, 1, v2) == 1)
      {
        v16 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1009423C8(v8, v5);
        sub_10022C350(&qword_100CD1308, &unk_100A76700);
        v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v16 = swift_allocObject();
        *(v16 + 1) = xmmword_100A2C3F0;
        sub_1009423C8(v5, v16 + v17);
      }

      v31 = v16;

      sub_10035DDEC(v18);
      v19 = v31;
      sub_10093F8A8(v14, type metadata accessor for ListViewModel);
      v20 = v19[2];

      if (v20)
      {
        return;
      }

      v21 = *(v29 + 184);
      LOBYTE(v31) = *(v29 + 176);
      v32 = v21;
      sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
      State.wrappedValue.getter();
      if (v30)
      {
        return;
      }

      sub_100988558();
      v22 = v11[*(v9 + 84)];
      sub_10093F8A8(v11, type metadata accessor for ListViewModel);
      if (v22)
      {
        return;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0x6465696E6564 && v23 == 0xE600000000000000)
      {
        goto LABEL_23;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_24;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0x7463697274736572 && v26 == 0xEA00000000006465)
      {
LABEL_23:

        goto LABEL_24;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
LABEL_24:
        sub_100650D84();
      }

      return;
    default:

      return;
  }
}

uint64_t sub_10092CFB4(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CE67A8, &qword_100A99DD0);
  sub_10093F644();
  return View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10092D080(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for ListViewModel(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  sub_100988558();
  LOBYTE(a2) = v6[*(v4 + 92)];
  result = sub_10093F8A8(v6, type metadata accessor for ListViewModel);
  if ((a2 & 1) == 0)
  {
    if (LocationAuthorizationState.rawValue.getter(v7) == 0x7265746544746F6ELL && v9 == 0xED000064656E696DLL)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_10092CAF4(v7);
        return sub_100650D7C();
      }
    }
  }

  return result;
}

void *sub_10092D1B4@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v27[-v7];
  v9 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v9 - 8);
  v31 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v27[-v12];
  __chkstk_darwin(v14);
  v16 = &v27[-v15];
  v30 = v1;
  sub_10009D114();
  v17 = v3;
  (*(v3 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v2);
  sub_10001B350(v13, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_1000302D8(v16, v8, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v13, &v8[v18], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    if (sub_100024D10(&v8[v18], 1, v2) == 1)
    {
      sub_100018198(v8, &qword_100CA6028);
LABEL_9:
      v22 = static Alignment.center.getter();
      v24 = v23;
      sub_10092D6B0(v30, v36);
      memcpy(v33, v36, 0x91uLL);
      memcpy(v34, v36, 0x91uLL);
      sub_1000302D8(v33, v35, &qword_100CE6B60, &qword_100A9A198);
      sub_100018198(v34, &qword_100CE6B60);
      memcpy(v35, v33, 0x91uLL);
      v25 = static Edge.Set.all.getter();
      v36[0] = v22;
      v36[1] = v24;
      memcpy(&v36[2], v35, 0x91uLL);
      BYTE1(v36[20]) = v25;
      LocationSearchEntityFromStringResolver.init()();
      memcpy(__dst, v36, 0xA2uLL);
      return memcpy(v32, __dst, 0xA2uLL);
    }

    goto LABEL_6;
  }

  v19 = v31;
  sub_1000302D8(v8, v31, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v8[v18], 1, v2) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v17 + 8))(v19, v2);
LABEL_6:
    sub_100018198(v8, &qword_100CA64E8);
    goto LABEL_7;
  }

  v20 = v29;
  (*(v17 + 32))(v29, &v8[v18], v2);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v20, v2);
  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  v21(v19, v2);
  sub_100018198(v8, &qword_100CA6028);
  if (v28)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100942374(__dst);
  return memcpy(v32, __dst, 0xA2uLL);
}

void *sub_10092D6B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1 + *(type metadata accessor for ListView.ListBackgroundView(0) + 20);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v9, 0);
    (*(v5 + 8))(v7, v4);
    if (v23 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1009423B0(v21);
    memcpy(v15, v21, sizeof(v15));
    sub_10022C350(&qword_100CE6B70, &qword_100A9A1A8);
    sub_10023FBF4(&qword_100CE6B78, &qword_100CE6B70, &qword_100A9A1A8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    return memcpy(a2, __dst, 0x91uLL);
  }

  v23 = v9 & 1;
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:

  sub_100281158(v21);
  v10 = static Edge.Set.all.getter();
  memcpy(v17, v21, 0x80uLL);
  v17[128] = v10;
  static Color.black.getter();
  v11 = Color.opacity(_:)();

  memcpy(v16, v17, sizeof(v16));
  memcpy(v18, v17, 0x81uLL);
  memcpy(v19, v17, 0x81uLL);
  sub_1000302D8(v17, v21, &qword_100CE6B68, &qword_100A9A1A0);

  sub_1000302D8(v18, v21, &qword_100CE6B68, &qword_100A9A1A0);
  memcpy(v20, v16, 0x81uLL);
  sub_100018198(v20, &qword_100CE6B68);
  memcpy(v21, v19, 0x88uLL);
  v21[17] = v11;
  sub_1009423A4(v21);
  memcpy(v14, v21, sizeof(v14));
  sub_10022C350(&qword_100CE6B70, &qword_100A9A1A8);
  sub_10023FBF4(&qword_100CE6B78, &qword_100CE6B70, &qword_100A9A1A8, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();

  sub_100018198(v17, &qword_100CE6B68);
  memcpy(__dst, v15, sizeof(__dst));
  return memcpy(a2, __dst, 0x91uLL);
}

uint64_t sub_10092DA74@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_10022C350(&qword_100CE6B80, &qword_100A9A1B0);
  __chkstk_darwin(v36);
  v34 = (&v32 - v2);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v35 = v1;
  sub_10009D114();
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v15, &v9[v19], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v19], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
      v20 = v37;
LABEL_8:
      v26 = static Alignment.center.getter();
      v27 = v34;
      *v34 = v26;
      *(v27 + 8) = v28;
      v29 = sub_10022C350(&qword_100CE6B88, &qword_100A9A1B8);
      sub_10092DF70(v27 + *(v29 + 44));
      v30 = static Edge.Set.all.getter();
      v22 = v36;
      *(v27 + *(v36 + 36)) = v30;
      sub_10011C0F0(v27, v20, &qword_100CE6B80, &qword_100A9A1B0);
      v21 = 0;
      return sub_10001B350(v20, v21, 1, v22);
    }
  }

  else
  {
    sub_1000302D8(v9, v12, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v9[v19], 1, v3) != 1)
    {
      v23 = v33;
      (*(v4 + 32))(v33, &v9[v19], v3);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v23, v3);
      sub_100018198(v15, &qword_100CA6028);
      sub_100018198(v18, &qword_100CA6028);
      v25(v12, v3);
      sub_100018198(v9, &qword_100CA6028);
      v20 = v37;
      if ((v24 & 1) == 0)
      {
        v21 = 1;
        v22 = v36;
        return sub_10001B350(v20, v21, 1, v22);
      }

      goto LABEL_8;
    }

    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
  }

  sub_100018198(v9, &qword_100CA64E8);
  v21 = 1;
  v22 = v36;
  v20 = v37;
  return sub_10001B350(v20, v21, 1, v22);
}

uint64_t sub_10092DF70@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v23 = type metadata accessor for SkyBackgroundGradient();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherConditionBackgroundModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CE6B90, &qword_100A9A1C0) - 8;
  __chkstk_darwin(v24);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (v22 - v11);
  type metadata accessor for ListView.ListGradientBackgroundView(0);

  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  sub_10023FBF4(&qword_100CA4BE0, &qword_100CA4BD8, &qword_100A2EE80, asc_100AA1480);
  *v12 = ObservedObject.init(wrappedValue:)();
  v12[1] = v13;
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  v14 = *(v6 + 8);
  v22[0] = v6 + 8;
  v14(v8, v5);
  v22[1] = SkyBackgroundGradient.gradient()();
  v15 = *(v2 + 8);
  v16 = v23;
  v15(v4, v23);
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  v14(v8, v5);
  SkyBackgroundGradient.gradient()();
  v15(v4, v16);
  v17 = v12 + *(type metadata accessor for CompactGradientView(0) + 20);
  AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)();
  *&v17[*(sub_10022C350(&qword_100CACB08, &unk_100A3BEF0) + 28)] = 0;
  *(v12 + *(v24 + 44)) = static Edge.Set.all.getter();
  static Color.black.getter();
  v18 = Color.opacity(_:)();

  v19 = v25;
  sub_1000302D8(v12, v25, &qword_100CE6B90, &qword_100A9A1C0);
  v20 = v26;
  sub_1000302D8(v19, v26, &qword_100CE6B90, &qword_100A9A1C0);
  *(v20 + *(sub_10022C350(&qword_100CE6B98, &unk_100A9A1C8) + 48)) = v18;

  sub_100018198(v12, &qword_100CE6B90);

  return sub_100018198(v19, &qword_100CE6B90);
}

uint64_t sub_10092E35C()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_100007074(v0, qword_100CE6698);
  sub_10000703C(v0, qword_100CE6698);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter();

  SettingReader.read<A>(_:)();
}

uint64_t sub_10092E404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v106 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v106);
  v105 = &v79 - v3;
  v108 = type metadata accessor for ListLocationViewModel(0);
  v80 = *(v108 - 8);
  __chkstk_darwin(v108);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v5 - 8);
  v90 = (&v79 - v6);
  v116 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v116);
  v104 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v79 - v9);
  v112 = type metadata accessor for ListView.ListContentView(0);
  v109 = *(v112 - 8);
  v85 = *(v109 + 8);
  __chkstk_darwin(v112);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE6BA0, &qword_100A9A1D8);
  __chkstk_darwin(v11);
  v13 = (&v79 - v12);
  v88 = sub_10022C350(&qword_100CE6BA8, &qword_100A9A1E0);
  v114 = *(v88 - 8);
  __chkstk_darwin(v88);
  v115 = &v79 - v14;
  v110 = sub_10022C350(&qword_100CE6BB0, &qword_100A9A1E8);
  __chkstk_darwin(v110);
  v87 = &v79 - v15;
  v91 = sub_10022C350(&qword_100CE6BB8, &qword_100A9A1F0);
  __chkstk_darwin(v91);
  v111 = &v79 - v16;
  v95 = sub_10022C350(&qword_100CE6BC0, &qword_100A9A1F8);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v79 - v17;
  v102 = sub_10022C350(&qword_100CE6BC8, &qword_100A9A200);
  v96 = *(v102 - 8);
  __chkstk_darwin(v102);
  v94 = &v79 - v18;
  v103 = sub_10022C350(&qword_100CE6BD0, &qword_100A9A208);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v79 - v19;
  v101 = sub_10022C350(&qword_100CE6BD8, &qword_100A9A210);
  __chkstk_darwin(v101);
  v97 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v79 - v22;
  *v13 = static Alignment.center.getter();
  v13[1] = v23;
  v24 = sub_10022C350(&qword_100CE6BE0, &qword_100A9A218);
  sub_10092F4F4(v2, v13 + *(v24 + 44));
  Solarium.init()();
  v118 = v2;
  v117 = v2;
  v113 = v2;
  v82 = sub_10022C350(&qword_100CE6BE8, &qword_100A9A220);
  v25 = sub_10022C350(&qword_100CE6BF0, &qword_100A9A228);
  v26 = sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0, &qword_100A9A1D8, &protocol conformance descriptor for ZStack<A>);
  v27 = v11;
  v125 = v11;
  v126 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = v25;
  v126 = OpaqueTypeConformance2;
  v83 = v25;
  v78 = swift_getOpaqueTypeConformance2();
  v29 = v27;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_100018198(v13, &qword_100CE6BA0);
  v84 = type metadata accessor for ListView.ListContentView;
  v30 = v86;
  sub_100941A20(v2, v86);
  v31 = v109[80];
  v32 = (v31 + 16) & ~v31;
  v33 = v85 + v32;
  v34 = swift_allocObject();
  v85 = type metadata accessor for ListView.ListContentView;
  sub_1009423C8(v30, v34 + v32);
  v125 = v29;
  v126 = &type metadata for Solarium;
  v127 = v82;
  v128 = v83;
  v129 = v26;
  v130 = &protocol witness table for Solarium;
  v131 = v78;
  v132 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v87;
  v36 = v88;
  v37 = v115;
  View.onAppear(perform:)();
  v38 = v116;
  v39 = v113;

  (*(v114 + 8))(v37, v36);
  sub_100941A20(v39, v30);
  v114 = v31;
  v40 = v33;
  v41 = swift_allocObject();
  v115 = v32;
  sub_1009423C8(v30, v41 + v32);
  sub_100942B0C();
  View.onDisappear(perform:)();
  v42 = v90;

  sub_100018198(v35, &qword_100CE6BB0);
  v43 = v39;
  v44 = *(v39 + *(v112 + 72) + 8);
  v45 = v89;
  v110 = v44;
  sub_100988558();
  v46 = v45;
  sub_1000302D8(v45 + *(v38 + 32), v42, &qword_100CC4158, &qword_100A5D730);
  if (sub_100024D10(v42, 1, v108) == 1)
  {
    v47 = _swiftEmptyArrayStorage;
  }

  else
  {
    v48 = v81;
    sub_1009423C8(v42, v81);
    sub_10022C350(&qword_100CD1308, &unk_100A76700);
    v49 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v47 = swift_allocObject();
    *(v47 + 1) = xmmword_100A2C3F0;
    sub_1009423C8(v48, v47 + v49);
  }

  v125 = v47;

  sub_10035DDEC(v50);
  v51 = v125;
  v90 = type metadata accessor for ListViewModel;
  sub_10093F8A8(v46, type metadata accessor for ListViewModel);
  v125 = v51;
  v89 = type metadata accessor for ListView.ListContentView;
  sub_100941A20(v43, v30);
  v109 = v40;
  v52 = swift_allocObject();
  v108 = type metadata accessor for ListView.ListContentView;
  sub_1009423C8(v30, &v115[v52]);
  v53 = sub_10022C350(&qword_100CE6C08, &unk_100A9A230);
  v54 = sub_100942D10();
  v55 = sub_100942D9C();
  v56 = v92;
  v57 = v91;
  v58 = v111;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v58, &qword_100CE6BB8);
  v59 = v104;
  sub_100988558();
  v60 = v59 + *(v116 + 96);
  v121 = *v60;
  v122 = *(v60 + 16);
  sub_100533400(&v121, &v125);
  sub_10093F8A8(v59, type metadata accessor for ListViewModel);
  v119 = v121;
  v120 = v122;
  sub_100941A20(v113, v30);
  v61 = swift_allocObject();
  sub_1009423C8(v30, &v115[v61]);
  v125 = v57;
  v126 = v53;
  v127 = v54;
  v128 = v55;
  v111 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_100942EB4();
  v64 = v94;
  v65 = v95;
  View.onChange<A>(of:initial:_:)();

  v123 = v119;
  v124 = v120;
  sub_100942F08(&v123);
  (*(v93 + 8))(v56, v65);
  sub_100988558();
  v66 = v105;
  sub_1000302D8(v59 + *(v116 + 88), v105, &qword_100CA5010, &unk_100A2F250);
  sub_10093F8A8(v59, v90);
  sub_100941A20(v113, v30);
  v67 = swift_allocObject();
  sub_1009423C8(v30, &v115[v67]);
  v125 = v65;
  v126 = &type metadata for ListTipGroupViewModel;
  v127 = v62;
  v128 = v63;
  v116 = swift_getOpaqueTypeConformance2();
  v68 = sub_10010B5B0();
  v69 = v99;
  v70 = v102;
  v71 = v106;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v66, &qword_100CA5010);
  (*(v96 + 8))(v64, v70);
  type metadata accessor for LocationViewCollisionOptions(0);
  sub_10093F860(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);
  StateObject.wrappedValue.getter();
  v125 = v70;
  v126 = v71;
  v127 = v116;
  v128 = v68;
  swift_getOpaqueTypeConformance2();
  v72 = v97;
  v73 = v103;
  View.environmentObject<A>(_:)();

  (*(v100 + 8))(v69, v73);
  v74 = sub_100942F88();
  v75 = v98;
  v76 = v101;
  sub_1000833D8(v72, v101, v74);
  sub_100018198(v72, &qword_100CE6BD8);
  sub_1000833D8(v75, v76, v74);
  return sub_100018198(v75, &qword_100CE6BD8);
}

uint64_t sub_10092F4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v81 = a2;
  v82 = sub_10022C350(&qword_100CE6C40, &qword_100A9A248);
  v63 = *(v82 - 8);
  __chkstk_darwin(v82);
  v62 = &v61 - v3;
  v76 = type metadata accessor for ListViewModel(0) - 8;
  __chkstk_darwin(v76);
  v75 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE6C48, &qword_100A9A250);
  __chkstk_darwin(v5 - 8);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v61 - v8;
  IsDeviceSlowViewInputPredicate = type metadata accessor for IsDeviceSlowViewInputPredicate();
  __chkstk_darwin(IsDeviceSlowViewInputPredicate);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10022C350(&qword_100CE6C50, &qword_100A9A258);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v61 - v10;
  v79 = sub_10022C350(&qword_100CE6C58, &qword_100A9A260);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v61 - v13;
  v83 = type metadata accessor for KeyEquivalent();
  v66 = *(v83 - 1);
  __chkstk_darwin(v83);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ListView.ListContentView(0);
  v17 = *(v16 - 8);
  v68 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = sub_10022C350(&qword_100CE6C60, &qword_100A9A268);
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v65 = sub_10022C350(&qword_100CE6C68, &qword_100A9A270);
  v22 = *(v65 - 8);
  __chkstk_darwin(v65);
  v24 = &v61 - v23;
  v25 = sub_10022C350(&qword_100CE6C70, &qword_100A9A278);
  __chkstk_darwin(v25 - 8);
  v84 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  sub_100941A20(a1, &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v31 = swift_allocObject();
  sub_1009423C8(&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  Button.init(action:label:)();
  static KeyEquivalent.delete.getter();
  EventModifiers.init(rawValue:)();
  v32 = sub_100943304();
  View.keyboardShortcut(_:modifiers:)();
  (*(v66 + 8))(v15, v83);
  sub_100018198(v21, &qword_100CE6C60);
  v88 = v19;
  v89 = v32;
  swift_getOpaqueTypeConformance2();
  v83 = v29;
  v33 = v65;
  View.accessibilityHidden(_:)();
  (*(v22 + 8))(v24, v33);
  static ViewInputPredicate<>.deviceIsSlow.getter();
  v34 = v64;
  v87 = v64;
  v86 = v64;
  v66 = sub_10022C350(&qword_100CE6C90, &qword_100A9A288);
  sub_10022C350(&qword_100CE6C98, &qword_100A9A290);
  sub_10093F860(&qword_100CE6CA0, &type metadata accessor for IsDeviceSlowViewInputPredicate, &protocol conformance descriptor for IsDeviceSlowViewInputPredicate);
  sub_1009433E8();
  v35 = sub_10022E824(&qword_100CE6CB0, &unk_100A9A298);
  v36 = sub_10022E824(&qword_100CC3AF8, &qword_100A5CEC0);
  v37 = sub_100943550();
  v38 = sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8, &qword_100A5CEC0, &protocol conformance descriptor for TupleView<A>);
  v88 = v35;
  v89 = v36;
  v39 = v71;
  v90 = &type metadata for Text;
  v91 = v37;
  v92 = v38;
  v93 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v40 = v69;
  StaticIf<>.init(_:then:else:)();
  Solarium.init()();
  v85 = v34;
  sub_10022C350(&qword_100CE6D60, &qword_100A9A308);
  sub_100943C98();
  sub_100943E18();
  v41 = v70;
  v42 = v73;
  View.staticIf<A, B>(_:then:)();
  (*(v74 + 8))(v40, v42);
  v43 = v75;
  sub_100988558();
  LODWORD(v21) = *(v43 + *(v76 + 56));
  sub_10093F8A8(v43, type metadata accessor for ListViewModel);
  v44 = 1;
  if (v21 == 1)
  {
    v45 = Solarium.init()();
    __chkstk_darwin(v45);
    sub_10022C350(&qword_100CE17C0, &qword_100A92480);
    sub_10022C350(&qword_100CE6D80, &qword_100A9A320);
    sub_10023FBF4(&qword_100CE17D0, &qword_100CE17C0, &qword_100A92480, byte_100A5F580);
    sub_100943EC8();
    v46 = v62;
    StaticIf<>.init(_:then:else:)();
    (*(v63 + 32))(v39, v46, v82);
    v44 = 0;
  }

  v47 = v39;
  sub_10001B350(v39, v44, 1, v82);
  v48 = v84;
  sub_1000302D8(v83, v84, &qword_100CE6C70, &qword_100A9A278);
  v49 = v78;
  v50 = *(v78 + 16);
  v51 = v77;
  v52 = v41;
  v53 = v41;
  v54 = v79;
  v50(v77, v53, v79);
  v55 = v39;
  v56 = v80;
  sub_1000302D8(v55, v80, &qword_100CE6C48, &qword_100A9A250);
  v57 = v81;
  sub_1000302D8(v48, v81, &qword_100CE6C70, &qword_100A9A278);
  v58 = sub_10022C350(&qword_100CE6D78, &unk_100A9A310);
  v50((v57 + *(v58 + 48)), v51, v54);
  sub_1000302D8(v56, v57 + *(v58 + 64), &qword_100CE6C48, &qword_100A9A250);
  sub_100018198(v47, &qword_100CE6C48);
  v59 = *(v49 + 8);
  v59(v52, v54);
  sub_100018198(v83, &qword_100CE6C70);
  sub_100018198(v56, &qword_100CE6C48);
  v59(v51, v54);
  return sub_100018198(v84, &qword_100CE6C70);
}

uint64_t sub_100930158(uint64_t a1)
{
  v2 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v5 - 8);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v39 - v8;
  __chkstk_darwin(v9);
  v45 = &v39 - v10;
  v46 = type metadata accessor for ListLocationViewModel(0);
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v39 - v15;
  v49 = sub_100930680();
  v50 = v16;
  v51 = v17;
  v52 = v18;
  sub_10022C350(&qword_100CE6F00, &qword_100A9A4D8);
  Binding.wrappedValue.getter();
  v19 = v48;
  if (v48)
  {
    v20 = a1;
    v21 = v47;

    v40 = type metadata accessor for ListView.ListContentView(0);
    v41 = v20;
    sub_100988558();
    v22 = *&v4[*(v2 + 36)];

    result = sub_10093F8A8(v4, type metadata accessor for ListViewModel);
    v24 = 0;
    v25 = *(v22 + 16);
    while (1)
    {
      if (v25 == v24)
      {

        v29 = 1;
        v30 = v41;
        v32 = v45;
        v31 = v46;
        goto LABEL_16;
      }

      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100941A20(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v13);
      if (LocationModel.id.getter() == v21 && v19 == v26)
      {

        goto LABEL_15;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        break;
      }

      result = sub_10093F8A8(v13, type metadata accessor for ListLocationViewModel);
      ++v24;
    }

LABEL_15:

    v32 = v45;
    sub_1009423C8(v13, v45);
    v29 = 0;
    v30 = v41;
    v31 = v46;
LABEL_16:
    sub_10001B350(v32, v29, 1, v31);
    if (sub_100024D10(v32, 1, v31) == 1)
    {
      return sub_100018198(v32, &qword_100CC4158);
    }

    else
    {
      v33 = v42;
      sub_1009423C8(v32, v42);
      v34 = v43;
      sub_100941A20(v33, v43);
      sub_10001B350(v34, 0, 1, v31);
      v35 = v40;
      sub_1000302D8(v34, v44, &qword_100CC4158, &qword_100A5D730);
      sub_10022C350(&qword_100CE6930, &unk_100A99FC0);
      State.wrappedValue.setter();
      sub_100018198(v34, &qword_100CC4158);
      v36 = (v30 + *(v35 + 32));
      v37 = *v36;
      v38 = *(v36 + 1);
      LOBYTE(v49) = v37;
      v50 = v38;
      LOBYTE(v47) = 1;
      sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
      State.wrappedValue.setter();
      return sub_10093F8A8(v33, type metadata accessor for ListLocationViewModel);
    }
  }

  else
  {
  }
}

uint64_t sub_100930680()
{
  v1 = type metadata accessor for ListView.ListContentView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100941A20(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1009423C8(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100941A20(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1009423C8(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  sub_10022C350(&qword_100CE6EF8, &qword_100A9A4D0);
  Binding.init(get:set:)();
  return v10;
}

uint64_t sub_100930860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  v13 = v12[v4[12]];
  sub_10093F8A8(v12, type metadata accessor for ListViewModel);
  if (v13 != 1 || (sub_100988558(), v14 = v9[v4[13]], sub_10093F8A8(v9, type metadata accessor for ListViewModel), v15 = 0.0, (v14 & 1) == 0) && (sub_100988558(), v16 = v6[v4[14]], sub_10093F8A8(v6, type metadata accessor for ListViewModel), (v16 & 1) == 0))
  {
    v15 = 1.0;
  }

  v17 = sub_10022C350(&qword_100CE6C50, &qword_100A9A258);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  result = sub_10022C350(&qword_100CE6D60, &qword_100A9A308);
  *(a2 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_100930A4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CE1840, &qword_100A703A0);
  *(a1 + 80) = sub_10071E9E8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = v2;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v4, &unk_100CAF270, &qword_100A31F20);
  if (v5)
  {
    sub_100013188(&v4, a1 + 24);
    *(a1 + 8) = sub_100947240;
    *(a1 + 16) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a1 + 64) = _swiftEmptyArrayStorage;
    *(a1 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100930B64@<X0>(_BYTE *a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  sub_10093B554(v17, v18, v19, v20, v21, v22, v23, v24, v34, v35, *v36, *&v36[8], *&v36[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6]);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v1);
  sub_10001B350(v13, 0, 1, v1);
  v25 = *(v5 + 56);
  sub_1000302D8(v16, v7, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v13, &v7[v25], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_1000302D8(v7, v10, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v7[v25], 1, v1) != 1)
    {
      v28 = &v7[v25];
      v29 = v34;
      (*(v2 + 32))(v34, v28, v1);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v2 + 8);
      v31(v29, v1);
      sub_100018198(v13, &qword_100CA6028);
      sub_100018198(v16, &qword_100CA6028);
      v31(v10, v1);
      result = sub_100018198(v7, &qword_100CA6028);
      if (v30)
      {
        goto LABEL_9;
      }

LABEL_7:
      v27 = v35;
      v35[96] = 0;
      v27[4] = 0u;
      v27[5] = 0u;
      v27[2] = 0u;
      v27[3] = 0u;
      *v27 = 0u;
      v27[1] = 0u;
      return result;
    }

    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    result = sub_100018198(v7, &qword_100CA64E8);
    goto LABEL_7;
  }

  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  if (sub_100024D10(&v7[v25], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_100018198(v7, &qword_100CA6028);
LABEL_9:
  v32 = sub_10022C350(&unk_100CE1840, &qword_100A703A0);
  __src[10] = sub_10071E9E8;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = v32;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270, &qword_100A31F20);
  if (*(&__dst[1] + 1))
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_100947240;
    __src[2] = 0;
    v33 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v33;
    memcpy(__dst, __src, 0x61uLL);
    return memcpy(v35, __dst, 0x61uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009310C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v57 = a2;
  v58 = type metadata accessor for ToolbarTitleDisplayMode();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v50 - v8;
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = sub_10022C350(&qword_100CE6BF0, &qword_100A9A228);
  v52 = *(v19 - 8);
  v53 = v19;
  __chkstk_darwin(v19);
  sub_10093B554(v21, v22, v23, v24, v25, v26, v27, v28, v50, &v50 - v20, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.regular(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v29 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v15, &v9[v29], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v29], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
      v30 = 0;
      v31 = 0;
      v32 = 0xE000000000000000;
      v33 = v51;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v9, v12, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v9[v29], 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_100018198(v9, &qword_100CA64E8);
    v33 = v51;
LABEL_7:
    v34 = LocalizedStringKey.init(stringLiteral:)();
    v30 = Text.init(_:tableName:bundle:comment:)(v34, v36, v35 & 1, v37, 0, 0, 0, "The title that appears at the top of the list", 45, 2);
    v32 = v38;
    v31 = v39;
    goto LABEL_8;
  }

  v47 = v50;
  (*(v4 + 32))(v50, &v9[v29], v3);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v4 + 8);
  v49(v47, v3);
  sub_100018198(v15, &qword_100CA6028);
  sub_100018198(v18, &qword_100CA6028);
  v49(v12, v3);
  sub_100018198(v9, &qword_100CA6028);
  v33 = v51;
  if ((v48 & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0xE000000000000000;
LABEL_8:
  v40 = sub_10022C350(&qword_100CE6BA0, &qword_100A9A1D8);
  v41 = sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0, &qword_100A9A1D8, &protocol conformance descriptor for ZStack<A>);
  View.navigationTitle(_:)();
  sub_10010CD64(v30, v32, v31 & 1);

  v42 = [objc_opt_self() currentDevice];
  v43 = [v42 userInterfaceIdiom];

  v44 = v55;
  if (v43)
  {
    static ToolbarTitleDisplayMode.inline.getter();
  }

  else
  {
    static ToolbarTitleDisplayMode.inlineLarge.getter();
  }

  v59 = v40;
  v60 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = v53;
  View.toolbarTitleDisplayMode(_:)();
  (*(v56 + 8))(v44, v58);
  return (*(v52 + 8))(v33, v45);
}

uint64_t sub_1009317C8()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)(v0, v2, v1 & 1, v3, 0, 0, 0, "The title that appears at the top of the list", 45, 2);
  v6 = v5;
  v8 = v7;
  sub_10022C350(&qword_100CE6BA0, &qword_100A9A1D8);
  sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0, &qword_100A9A1D8, &protocol conformance descriptor for ZStack<A>);
  View.navigationTitle(_:)();
  sub_10010CD64(v4, v6, v8 & 1);
}

uint64_t sub_1009318F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListView.ListContentView(0);
  v32[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v32[1] = v6;
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScenePhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v32 - v12;
  v14 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2B20 != -1)
  {
    swift_once();
  }

  v17 = Namespace.wrappedValue.getter();
  swift_beginAccess();
  sub_100131E40(v41, v17, v18);
  swift_endAccess();
  sub_100988558();
  v19 = &v16[*(v14 + 40)];
  v20 = *v19;
  v21 = v19[1];

  sub_10093F8A8(v16, type metadata accessor for ListViewModel);
  sub_100650CCC(v20, v21);

  sub_1000E74DC();
  (*(v8 + 104))(v10, enum case for ScenePhase.active(_:), v7);
  LOBYTE(v20) = static ScenePhase.== infix(_:_:)();
  v22 = *(v8 + 8);
  v22(v10, v7);
  result = (v22)(v13, v7);
  if (v20)
  {
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = v33;
    sub_100941A20(a1, v33);
    v26 = (*(v32[0] + 80) + 16) & ~*(v32[0] + 80);
    v27 = swift_allocObject();
    sub_1009423C8(v25, v27 + v26);
    aBlock[4] = sub_1009432AC;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C768A0;
    v28 = _Block_copy(aBlock);

    v29 = v34;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10093F860(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_10023FBF4(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
    v30 = v36;
    v31 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v38 + 8))(v30, v31);
    return (*(v35 + 8))(v29, v37);
  }

  return result;
}

uint64_t sub_100931EFC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v2 - 8);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for ContentStatusBanner(0);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for ListView.ListContentView(0);
  v35 = *(a1 + v19[18] + 8);
  sub_100988558();
  v36 = v7;
  sub_1000302D8(&v12[*(v7 + 88)], v6, &qword_100CA5010, &unk_100A2F250);
  sub_10093F8A8(v12, type metadata accessor for ListViewModel);
  if (sub_100024D10(v6, 1, v13) == 1)
  {
    sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
    v20 = a1;
    State.wrappedValue.getter();
    if (sub_100024D10(v6, 1, v13) != 1)
    {
      sub_100018198(v6, &qword_100CA5010);
    }
  }

  else
  {
    v20 = a1;
    sub_1009423C8(v6, v18);
  }

  sub_100941A20(v18, v15);
  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
  State.wrappedValue.setter();
  sub_10093F8A8(v18, type metadata accessor for ContentStatusBanner);
  sub_100988558();
  v21 = v37;
  sub_1000302D8(&v9[*(v36 + 88)], v37, &qword_100CA5010, &unk_100A2F250);
  sub_10093F8A8(v9, type metadata accessor for ListViewModel);
  v22 = sub_100024D10(v21, 1, v13);
  sub_100018198(v21, &qword_100CA5010);
  v23 = v20 + v19[13];
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v39) = v24;
  v40 = v25;
  LOBYTE(v38) = v22 != 1;
  if (v22 == 1)
  {
    v26 = 0.9;
  }

  else
  {
    v26 = 1.0;
  }

  if (v22 == 1)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.setter();
  v28 = (v20 + v19[10]);
  v29 = *v28;
  v30 = v28[1];
  v38 = v26;
  v39 = v29;
  v40 = v30;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.setter();
  v31 = (v20 + v19[11]);
  v32 = *v31;
  v33 = v31[1];
  v38 = v27;
  v39 = v32;
  v40 = v33;
  return State.wrappedValue.setter();
}

uint64_t sub_100932330(uint64_t a1)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2B20 != -1)
  {
    swift_once();
  }

  type metadata accessor for ListView.ListContentView(0);
  v6 = Namespace.wrappedValue.getter();
  swift_beginAccess();
  sub_1008AF928(v6);
  swift_endAccess();
  if (qword_100CA2B28 != -1)
  {
    swift_once();
  }

  v7 = sub_10000703C(v2, qword_100CE6698);
  (*(v3 + 104))(v5, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v2);
  LOBYTE(v7) = sub_1001497E4(v7, v5);
  result = (*(v3 + 8))(v5, v2);
  if ((v7 & 1) != 0 && !*(off_100CE6690 + 2))
  {
    v9 = sub_10093251C(a1);
    sub_100932A60(v9);
  }

  return result;
}

void *sub_10093251C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ListLocationViewModel(0);
  v41 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v37 = &v36 - v17;
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v43 = _swiftEmptyArrayStorage;
  v24 = *(type metadata accessor for ListView.ListContentView(0) + 72);
  v39 = a1;
  v40 = *(a1 + v24 + 8);
  sub_100988558();
  v42 = v8;
  sub_1000302D8(&v13[*(v8 + 32)], v7, &qword_100CC4158, &qword_100A5D730);
  sub_10093F8A8(v13, type metadata accessor for ListViewModel);
  if (sub_100024D10(v7, 1, v14) == 1)
  {
    sub_100018198(v7, &qword_100CC4158);
    v25 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1009423C8(v7, v23);
    sub_100941A20(v23, v20);
    sub_10069FFC4();
    v25 = v26;
    v27 = v26[2];
    if (v27 >= v26[3] >> 1)
    {
      sub_10069FFC4();
      v25 = v33;
    }

    sub_10093F8A8(v23, type metadata accessor for ListLocationViewModel);
    v25[2] = v27 + 1;
    sub_1009423C8(v20, v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27);
    v43 = v25;
  }

  sub_10022C350(&qword_100CE6930, &unk_100A99FC0);
  State.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v14) == 1)
  {
    sub_100018198(v4, &qword_100CC4158);
  }

  else
  {
    v28 = v37;
    sub_1009423C8(v4, v37);
    v29 = v38;
    sub_100941A20(v28, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069FFC4();
      v25 = v34;
    }

    v30 = v25[2];
    if (v30 >= v25[3] >> 1)
    {
      sub_10069FFC4();
      v25 = v35;
    }

    sub_10093F8A8(v28, type metadata accessor for ListLocationViewModel);
    v25[2] = v30 + 1;
    sub_1009423C8(v29, v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30);
    v43 = v25;
  }

  sub_100988558();
  v31 = *&v10[*(v42 + 36)];

  sub_10093F8A8(v10, type metadata accessor for ListViewModel);
  sub_10035DDEC(v31);
  return v43;
}

void sub_100932A60(uint64_t a1)
{
  v44 = type metadata accessor for WeatherConditionBackgroundOptions();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for BackgroundAnimationData();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BackgroundAnimationKind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for VFXEffectViewID();
  v10 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v33 - v13;
  v14 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = v2;
    v21 = *(v15 + 72);
    v22 = v4;
    v23 = (v7 + 88);
    v46 = enum case for BackgroundAnimationKind.vfx(_:);
    v36 = (v7 + 8);
    v37 = v10;
    v35 = (v22 + 8);
    v34 = (v20 + 8);
    v45 = (v10 + 32);
    v24 = _swiftEmptyArrayStorage;
    v38 = v9;
    v39 = v6;
    do
    {
      sub_100941A20(v19, v17);
      if (WeatherConditionBackgroundModel.canShowAnimatedBackground.getter())
      {
        WeatherConditionBackgroundModel.animationKind.getter();
        v25 = (*v23)(v9, v6);
        if (v25 == v46)
        {
          v26 = v41;
          WeatherConditionBackgroundModel.animationData.getter();
          v27 = v43;
          BackgroundAnimationData.options.getter();
          (*v35)(v26, v42);
          v28 = v40;
          WeatherConditionBackgroundOptions.effectViewID.getter();
          (*v34)(v27, v44);
          sub_10093F8A8(v17, type metadata accessor for ListLocationViewModel);
          v29 = *v45;
          (*v45)(v47, v28, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1006A0338();
            v24 = v31;
          }

          v30 = *(v24 + 2);
          if (v30 >= *(v24 + 3) >> 1)
          {
            sub_1006A0338();
            v24 = v32;
          }

          *(v24 + 2) = v30 + 1;
          v29(&v24[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30], v47, v48);
          v9 = v38;
          v6 = v39;
        }

        else
        {
          sub_10093F8A8(v17, type metadata accessor for ListLocationViewModel);
          (*v36)(v9, v6);
        }
      }

      else
      {
        sub_10093F8A8(v17, type metadata accessor for ListLocationViewModel);
      }

      v19 += v21;
      --v18;
    }

    while (v18);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (*(v24 + 2))
  {
    type metadata accessor for ListView.ListContentView(0);
    swift_getObjectType();
    dispatch thunk of WeatherConditionBackgroundManagerType.addRemovalRequests(for:)();

    WeatherConditionBackgroundManagerType.executeRequests()();
  }

  else
  {
  }
}

uint64_t sub_100932FFC(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v45 = a3;
  v5 = type metadata accessor for ListLocationViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v45 - v9;
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = *(v14 + 16);
  v16 = _swiftEmptyArrayStorage;
  v47 = v6;
  if (v15)
  {
    v49 = v13;
    v51 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v15, 0);
    v16 = v51;
    v17 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    do
    {
      sub_100941A20(v17, v12);
      v19 = LocationModel.id.getter();
      v21 = v20;
      sub_10093F8A8(v12, type metadata accessor for ListLocationViewModel);
      v51 = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_10000369C((v22 > 1), v23 + 1, 1);
        v16 = v51;
      }

      v16[2] = v23 + 1;
      v24 = &v16[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v17 += v18;
      --v15;
    }

    while (v15);
    v13 = v49;
  }

  result = sub_1000D409C(v16);
  v26 = result;
  v27 = 0;
  v48 = *(v13 + 16);
  v28 = result + 56;
  v29 = _swiftEmptyArrayStorage;
LABEL_8:
  while (v27 != v48)
  {
    if (v27 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v31 = *(v47 + 72);
    v49 = v27 + 1;
    v32 = v13;
    sub_100941A20(v13 + v30 + v31 * v27, v50);
    v33 = LocationModel.id.getter();
    v35 = v34;
    if (*(v26 + 16))
    {
      v36 = v33;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v37 = Hasher._finalize()();
      v38 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v39 = v37 & v38;
        if (((*(v28 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {
          break;
        }

        v40 = (*(v26 + 48) + 16 * v39);
        if (*v40 != v36 || v40[1] != v35)
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v37 = v39 + 1;
          if ((v42 & 1) == 0)
          {
            continue;
          }
        }

        result = sub_10093F8A8(v50, type metadata accessor for ListLocationViewModel);
        v27 = v49;
        v13 = v32;
        goto LABEL_8;
      }
    }

    sub_1009423C8(v50, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A804C();
      v29 = v52;
    }

    v13 = v32;
    v44 = v29[2];
    if (v44 >= v29[3] >> 1)
    {
      sub_1006A804C();
      v29 = v52;
    }

    v29[2] = v44 + 1;
    result = sub_1009423C8(v46, v29 + v30 + v44 * v31);
    v27 = v49;
  }

  if (v29[2])
  {
    sub_100932A60(v29);
  }
}

void sub_10093341C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v29 = *a2;
  v30 = *(a2 + 2);
  v27 = *(a3 + *(type metadata accessor for ListView.ListContentView(0) + 56));
  sub_10022C350(&qword_100CE6C38, &qword_100A9A240);
  State.wrappedValue.getter();
  if (v25[0])
  {

    if (qword_100CA27B0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000703C(v4, qword_100D90D68);
    sub_100533400(&v29, &v27);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_100942F08(&v29);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136446210;
      v27 = v29;
      v28 = v30;
      sub_100533400(&v29, v25);
      v9 = String.init<A>(describing:)();
      v11 = sub_100078694(v9, v10, &v26);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "TipGroupViewModel changes (ignored): %{public}s", v7, 0xCu);
      sub_100006F14(v8);
    }
  }

  else
  {
    if (qword_100CA27B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90D68);
    sub_100533400(&v29, &v27);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_100942F08(&v29);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      v27 = v29;
      v28 = v30;
      sub_100533400(&v29, v25);
      v17 = String.init<A>(describing:)();
      v19 = sub_100078694(v17, v18, &v26);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "TipGroupViewModel changes: %{public}s", v15, 0xCu);
      sub_100006F14(v16);
    }

    v20 = &_mh_execute_header;
    if (!BYTE4(v29))
    {
      v20 = 0;
    }

    v21 = v29 | v20;
    v22 = 0x10000000000;
    if (!BYTE5(v29))
    {
      v22 = 0;
    }

    v23 = v21 | v22;
    v24 = 0x100000000000000;
    if (!BYTE7(v29))
    {
      v24 = 0;
    }

    sub_100933790(a3, v23 | (BYTE6(v29) << 48) | v24, SBYTE8(v29), v30);
  }
}

uint64_t sub_100933790(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = a2 >> 24;
  v9 = HIWORD(a2);
  v10 = type metadata accessor for TipGroup.Priority();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 104))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for TipGroup.Priority.firstAvailable(_:), v11);
  v18 = BYTE2(a2);
  v17 = a2;
  v19 = v8;
  v20 = BYTE4(a2) & 1;
  v21 = BYTE5(a2) & 1;
  v22 = v9;
  v23 = HIBYTE(a2) & 1;
  v24 = a3;
  v25 = a4;
  type metadata accessor for TipGroup();
  swift_allocObject();
  v14 = TipGroup.init(_:_:)();
  v27 = *(a1 + *(type metadata accessor for ListView.ListContentView(0) + 56));
  v26 = v14;
  sub_10022C350(&qword_100CE6C38, &qword_100A9A240);
  return State.wrappedValue.setter();
}

uint64_t sub_100933928(unint64_t a1, char a2)
{
  v3 = HIDWORD(a1);
  v4 = HIWORD(a1);
  v8 = &type metadata for NotificationsOptInListTip;
  v9 = sub_100235784();
  LOBYTE(v7[0]) = BYTE1(v3) & 1;
  BYTE1(v7[0]) = v4;
  BYTE2(v7[0]) = HIBYTE(v3) & 1;
  static Tips.GroupBuilder.buildPartialBlock(first:)();
  sub_100006F14(v7);
  v8 = &type metadata for NotificationsResubscriptionListTip;
  v9 = sub_100235A48();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for PredictedLocationsNotificationOptInListTip;
  v9 = sub_1002359F4();
  LOBYTE(v7[0]) = a2;
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for HomeAndWorkAddedTip;
  v9 = sub_100235AF0();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for HomeAndWorkUpdatedTip;
  v9 = sub_100235A9C();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for HomeUpdatedTip;
  v9 = sub_1002359A0();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for WorkUpdatedTip;
  v9 = sub_10023594C();
  v5 = static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  return v5;
}

uint64_t sub_100933ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListView.ListContentView(0);
  v23 = *(v11 - 8);
  v12 = *(v23 + 64);
  __chkstk_darwin(v11 - 8);
  static Animation.linear(duration:)();
  Transaction.init(animation:)();
  v27 = a3;
  v28 = a2;
  withTransaction<A>(_:_:)();

  v13 = type metadata accessor for ContentStatusBanner(0);
  if (sub_100024D10(a2, 1, v13) == 1)
  {
    v14 = static Animation.timingCurve(_:_:_:_:duration:)();
    __chkstk_darwin(v14);
    *(&v23 - 2) = a3;
    withAnimation<A>(_:_:)();

    v15 = static Animation.timingCurve(_:_:_:_:duration:)();
    __chkstk_darwin(v15);
    *(&v23 - 2) = a3;
    withAnimation<A>(_:_:)();

    if (qword_100CA2078 != -1)
    {
      swift_once();
    }

    v16 = Animation.delay(_:)();
    __chkstk_darwin(v16);
    *(&v23 - 2) = a3;
    withAnimation<A>(_:_:)();
  }

  else
  {
    if (qword_100CA2070 != -1)
    {
      swift_once();
    }

    v18 = Transaction.init(animation:)();
    __chkstk_darwin(v18);
    *(&v23 - 2) = a3;
    withTransaction<A>(_:_:)();

    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    sub_100941A20(a3, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v21 = swift_allocObject();
    sub_1009423C8(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    aBlock[4] = sub_1009431EC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C76850;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10093F860(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_10023FBF4(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v7, v5);
    return (*(v24 + 8))(v10, v25);
  }
}

uint64_t sub_100934114(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for ContentStatusBanner(0);
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_1000302D8(a2, v5, &qword_100CA5010, &unk_100A2F250);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    type metadata accessor for ListView.ListContentView(0);
    sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
    State.wrappedValue.getter();
    if (sub_100024D10(v5, 1, v6) != 1)
    {
      sub_100018198(v5, &qword_100CA5010);
    }
  }

  else
  {
    sub_1009423C8(v5, v11);
  }

  type metadata accessor for ListView.ListContentView(0);
  sub_100941A20(v11, v8);
  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
  State.wrappedValue.setter();
  return sub_10093F8A8(v11, type metadata accessor for ContentStatusBanner);
}

uint64_t sub_10093433C(uint64_t a1, char a2)
{
  v2 = sub_1000038D8();
  type metadata accessor for ListView.ListContentView(v2);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_1009343BC()
{
  if (qword_100CA2070 != -1)
  {
    swift_once();
  }

  v0 = Animation.delay(_:)();
  __chkstk_darwin(v0);
  withAnimation<A>(_:_:)();

  static Animation.timingCurve(_:_:_:_:duration:)();
  Animation.delay(_:)();

  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();
}

uint64_t sub_10093452C()
{
  v0 = sub_1000038D8();
  v1 = type metadata accessor for ListView.ListContentView(v0);
  sub_10002547C(*(v1 + 40));
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  return State.wrappedValue.setter();
}

uint64_t sub_100934598()
{
  v0 = sub_1000038D8();
  v1 = type metadata accessor for ListView.ListContentView(v0);
  sub_10002547C(*(v1 + 44));
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  return State.wrappedValue.setter();
}

uint64_t sub_100934604@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_1000E7B34();
  sub_10011C0F0(v7, v4, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v4, 1, v8) == 1)
  {
    result = sub_100018198(v4, &qword_100CADBA0);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
    v13 = Location.Identifier.id.getter();
    v14 = v15;
    result = (*(v9 + 8))(v11, v8);
  }

  *a1 = v13;
  a1[1] = v14;
  return result;
}

uint64_t sub_100934810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v5 = type metadata accessor for OSSignpostID();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = v44 - v14;
  v15 = type metadata accessor for ListLocationViewModel(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v50 = v44 - v23;
  v24 = *a1;
  v25 = a1[1];
  v44[1] = type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_1000302D8(&v9[*(v7 + 32)], v12, &qword_100CC4158, &qword_100A5D730);
  v48 = v15;
  if (sub_100024D10(v12, 1, v15) == 1)
  {
    v26 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1009423C8(v12, v21);
    sub_10022C350(&qword_100CD1308, &unk_100A76700);
    v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v26 = swift_allocObject();
    *(v26 + 1) = xmmword_100A2C3F0;
    sub_1009423C8(v21, v26 + v27);
  }

  v52 = v26;

  sub_10035DDEC(v28);
  v29 = v52;
  result = sub_10093F8A8(v9, type metadata accessor for ListViewModel);
  v31 = v29[2];
  if (v31)
  {
    v32 = 0;
    v33 = v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    while (v32 < v29[2])
    {
      sub_100941A20(v33 + *(v16 + 72) * v32, v18);
      v34 = LocationModel.id.getter();
      if (v25)
      {
        if (v34 == v24 && v25 == v35)
        {

LABEL_18:

          v39 = v49;
          sub_1009423C8(v18, v49);
          v38 = 0;
          v40 = v50;
          goto LABEL_19;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      ++v32;
      result = sub_10093F8A8(v18, type metadata accessor for ListLocationViewModel);
      if (v31 == v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    v38 = 1;
    v39 = v49;
    v40 = v50;
LABEL_19:
    v41 = v48;
    sub_10001B350(v39, v38, 1, v48);
    if (sub_100024D10(v39, 1, v41) == 1)
    {
      return sub_100018198(v39, &qword_100CC4158);
    }

    else
    {
      sub_1009423C8(v39, v40);
      if ((*(v40 + *(v41 + 84)) & 1) == 0)
      {
        static os_signpost_type_t.event.getter();
        sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
        v42 = OS_os_log.init(subsystem:category:)();
        v43 = v45;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        (*(v46 + 8))(v43, v47);
        sub_10064F628(v40, 0, 1);
      }

      return sub_10093F8A8(v40, type metadata accessor for ListLocationViewModel);
    }
  }

  return result;
}

uint64_t sub_100934DE0@<X0>(uint64_t a1@<X8>)
{
  sub_100934E24(a1);
  result = sub_10022C350(&qword_100CE6C90, &qword_100A9A288);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100934E24@<X0>(uint64_t a1@<X8>)
{
  v143 = a1;
  v142 = type metadata accessor for EditMode();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CE6D90, &qword_100A9A328);
  __chkstk_darwin(v3 - 8);
  v141 = &v104 - v4;
  v138 = type metadata accessor for ListPaddingAnchor();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for ScrollIndicatorVisibility();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v120 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SidebarListStyle();
  v124 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v8 - 8);
  v149 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for ListView.ListContentView(0);
  v117 = *(v147 - 1);
  v116 = *(v117 + 64);
  __chkstk_darwin(v147);
  v115 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for AccessibilityActionKind();
  v119 = *(v148 - 8);
  __chkstk_darwin(v148);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ScrollPosition();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = &v104 - v14;
  v15 = sub_10022C350(&qword_100CE6D10, &qword_100A9A2E0);
  v104 = v15;
  __chkstk_darwin(v15);
  v17 = &v104 - v16;
  v114 = sub_10022C350(&qword_100CE6CE8, &qword_100A9A2D0);
  __chkstk_darwin(v114);
  v110 = &v104 - v18;
  v106 = sub_10022C350(&qword_100CE6CE0, &qword_100A9A2C8);
  v118 = *(v106 - 8);
  __chkstk_darwin(v106);
  v113 = &v104 - v19;
  v125 = sub_10022C350(&qword_100CE6CD8, &qword_100A9A2C0);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v105 = &v104 - v20;
  v144 = sub_10022C350(&qword_100CE6CC8, &qword_100A9A2B0);
  v127 = *(v144 - 8);
  __chkstk_darwin(v144);
  v126 = &v104 - v21;
  v131 = sub_10022C350(&qword_100CE6CC0, &qword_100A9A2A8);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v145 = &v104 - v22;
  v134 = sub_10022C350(&qword_100CE6D98, &qword_100A9A330);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v104 - v23;
  v146 = sub_10022C350(&qword_100CE6CB0, &unk_100A9A298);
  __chkstk_darwin(v146);
  v135 = &v104 - v24;
  v153 = sub_100930680();
  v154 = v25;
  v155 = v26;
  v156 = v27;
  v150 = v1;
  v28 = v1;
  sub_10022C350(&qword_100CE6DA0, &qword_100A9A338);
  sub_1000E9170();
  sub_10023FBF4(&qword_100CE6DA8, &qword_100CE6DA0, &qword_100A9A338, &protocol conformance descriptor for TupleView<A>);
  List.init(selection:content:)();
  v151[0] = 0;
  State.init(wrappedValue:)();
  v29 = v153;
  v30 = v154;
  v31 = &v17[*(sub_10022C350(&qword_100CE6D20, &qword_100A9A2E8) + 36)];
  *v31 = v29;
  *(v31 + 1) = v30;
  v32 = &v17[*(v15 + 36)];

  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  v33 = v106;
  *v32 = ObservedObject.init(wrappedValue:)();
  v32[1] = v34;
  v35 = *(type metadata accessor for ScrollToActiveLocationModifier(0) + 20);
  *(v32 + v35) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v36 = v107;
  ScrollPosition.init<A>(idType:)();
  v37 = v109;
  v38 = v111;
  (*(v109 + 16))(v108, v36, v111);
  State.init(wrappedValue:)();
  v39 = v120;
  (*(v37 + 8))(v36, v38);
  v40 = v112;
  static AccessibilityActionKind.escape.getter();
  v41 = v115;
  sub_100941A20(v28, v115);
  v42 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v43 = swift_allocObject();
  sub_1009423C8(v41, v43 + v42);
  sub_100943914();
  v44 = v110;
  View.accessibilityAction(_:_:)();

  (*(v119 + 8))(v40, v148);
  sub_100018198(v17, &qword_100CE6D10);
  v45 = static Animation.default.getter();
  v46 = *(v147 + 18);
  v148 = v28;
  v47 = v149;
  v119 = *(v28 + v46 + 8);
  sub_100988558();
  LOBYTE(v42) = *(v47 + 9);
  sub_10093F8A8(v47, type metadata accessor for ListViewModel);
  v48 = v114;
  v49 = v44 + *(v114 + 36);
  *v49 = v45;
  *(v49 + 8) = v42;
  v50 = v121;
  SidebarListStyle.init()();
  v51 = sub_1009437A0();
  v52 = v113;
  v53 = v48;
  v54 = v122;
  View.listStyle<A>(_:)();
  (*(v124 + 8))(v50, v54);
  sub_100018198(v44, &qword_100CE6CE8);
  v153 = v53;
  v154 = v54;
  v155 = v51;
  v156 = &protocol witness table for SidebarListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v105;
  View.scrollContentBackground(_:)();
  (*(v118 + 8))(v52, v33);
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v50) = static Axis.Set.vertical.getter();
  *(inited + 32) = v50;
  v58 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v58;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v50)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v58)
  {
    Axis.Set.init(rawValue:)();
  }

  v153 = v33;
  v154 = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v126;
  v61 = v125;
  View.scrollIndicators(_:axes:)();
  (*(v128 + 8))(v39, v129);
  (*(v123 + 8))(v56, v61);
  v62 = Solarium.init()();
  __chkstk_darwin(v62);
  v63 = sub_10022C350(&qword_100CE6CD0, &qword_100A9A2B8);
  v153 = v61;
  v154 = v59;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_100943AFC();
  v66 = v144;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v127 + 8))(v60, v66);
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_100A3BBA0;
  v68 = static Edge.Set.top.getter();
  *(v67 + 32) = v68;
  v69 = static Edge.Set.trailing.getter();
  *(v67 + 33) = v69;
  v70 = static Edge.Set.leading.getter();
  *(v67 + 34) = v70;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v68)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v69)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v70)
  {
    Edge.Set.init(rawValue:)();
  }

  if (DeviceIsSlow())
  {
    if (qword_100CA2658 != -1)
    {
      swift_once();
    }

    v71 = swift_beginAccess();
    sub_1007A4380(v71);
    swift_endAccess();
  }

  v72 = v149;
  sub_100988558();
  v73 = *(v72 + 8);
  sub_10093F8A8(v72, type metadata accessor for ListViewModel);
  if ((v73 & 1) == 0)
  {
    static Solarium.isEnabled.getter();
  }

  v74 = v136;
  static ListPaddingAnchor.safeArea.getter();
  v153 = v144;
  v154 = &type metadata for Solarium;
  v155 = v63;
  v156 = v63;
  v157 = v64;
  v158 = &protocol witness table for Solarium;
  v159 = v65;
  v160 = v65;
  swift_getOpaqueTypeConformance2();
  v75 = v132;
  v76 = v131;
  v77 = v145;
  View.listPadding(_:_:anchor:)();
  (*(v137 + 8))(v74, v138);
  (*(v130 + 8))(v77, v76);
  KeyPath = swift_getKeyPath();
  v79 = v149;
  sub_100988558();
  v80 = *(v79 + 8);
  sub_10093F8A8(v79, type metadata accessor for ListViewModel);
  v81 = v140;
  v82 = &enum case for EditMode.active(_:);
  if (!v80)
  {
    v82 = &enum case for EditMode.inactive(_:);
  }

  v83 = v139;
  v84 = v142;
  (*(v140 + 104))(v139, *v82, v142);
  v85 = v141;
  static Binding.constant(_:)();
  (*(v81 + 8))(v83, v84);
  v86 = sub_10022C350(&qword_100CE6DB0, &qword_100A9A370);
  sub_10001B350(v85, 0, 1, v86);
  v87 = v135;
  v88 = &v135[*(v146 + 36)];
  v89 = sub_10022C350(&qword_100CE6D58, &unk_100A9A2F8);
  sub_10011C0F0(v85, v88 + *(v89 + 28), &qword_100CE6D90, &qword_100A9A328);
  *v88 = KeyPath;
  (*(v133 + 32))(v87, v75, v134);
  v90 = LocalizedStringKey.init(stringLiteral:)();
  v149 = Text.init(_:tableName:bundle:comment:)(v90, v92, v91 & 1, v93, 0, 0, 0, "Title of alert view when deleting a location", 44, 2);
  v145 = v94;
  LOBYTE(v83) = v95;
  v144 = v96;
  v97 = v148 + *(v147 + 8);
  v98 = *v97;
  v99 = *(v97 + 8);
  v151[0] = v98;
  v152 = v99;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  v100 = State.projectedValue.getter();
  v147 = &v104;
  __chkstk_darwin(v100);
  sub_10022C350(&qword_100CC3AF8, &qword_100A5CEC0);
  sub_100943550();
  sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8, &qword_100A5CEC0, &protocol conformance descriptor for TupleView<A>);
  v101 = v149;
  v102 = v145;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_10010CD64(v101, v102, v83 & 1);

  return sub_100018198(v87, &qword_100CE6CB0);
}

uint64_t sub_100936408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v159 = type metadata accessor for PlainButtonStyle();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10022C350(&qword_100CE6DD0, &qword_100A9A3B0);
  __chkstk_darwin(v155);
  v156 = (&v151 - v4);
  v166 = sub_10022C350(&qword_100CE6DD8, &qword_100A9A3B8);
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v161 = &v151 - v5;
  v165 = sub_10022C350(&qword_100CE6DE0, &qword_100A9A3C0);
  __chkstk_darwin(v165);
  v163 = &v151 - v6;
  v194 = sub_10022C350(&qword_100CE6DE8, &qword_100A9A3C8);
  v162 = *(v194 - 8);
  __chkstk_darwin(v194);
  v160 = &v151 - v7;
  v188 = type metadata accessor for UserInterfaceSizeClass();
  v186 = *(v188 - 8);
  __chkstk_darwin(v188);
  v153 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v183);
  v187 = &v151 - v9;
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v169 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v184 = &v151 - v13;
  __chkstk_darwin(v14);
  v185 = &v151 - v15;
  v16 = sub_10022C350(&qword_100CE6DF0, &qword_100A9A3D0);
  __chkstk_darwin(v16 - 8);
  v193 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v192 = &v151 - v19;
  v20 = type metadata accessor for ListView.ListContentView(0);
  v173 = *(v20 - 1);
  __chkstk_darwin(v20);
  v181 = v21;
  v182 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for ListLocationViewModel(0);
  v167 = *(v172 - 8);
  __chkstk_darwin(v172);
  v168 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v23 - 8);
  v171 = &v151 - v24;
  v177 = sub_10022C350(&qword_100CE6DF8, &qword_100A9A3D8);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v174 = &v151 - v25;
  v175 = sub_10022C350(&qword_100CE6E00, &qword_100A9A3E0);
  __chkstk_darwin(v175);
  v180 = &v151 - v26;
  v179 = sub_10022C350(&qword_100CE6E08, &qword_100A9A3E8);
  __chkstk_darwin(v179);
  v191 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v151 - v29;
  __chkstk_darwin(v30);
  v199 = &v151 - v31;
  v197 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v197);
  v33 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v151 - v35;
  __chkstk_darwin(v37);
  v170 = &v151 - v38;
  v196 = sub_10022C350(&qword_100CE6E10, &qword_100A9A3F0);
  __chkstk_darwin(v196);
  v40 = &v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v154 = &v151 - v42;
  v43 = sub_10022C350(&qword_100CE6E18, &qword_100A9A3F8);
  __chkstk_darwin(v43 - 8);
  v190 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v200 = &v151 - v46;
  v47 = sub_10022C350(&qword_100CE6E20, &qword_100A9A400);
  __chkstk_darwin(v47);
  v49 = &v151 - v48;
  v50 = sub_10022C350(&qword_100CE6E28, &qword_100A9A408);
  __chkstk_darwin(v50 - 8);
  v189 = &v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v151 - v53;
  v55 = (a1 + v20[13]);
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(v202) = v56;
  *(&v202 + 1) = v57;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v207 == 1)
  {
    sub_100937D34();
    sub_10011C0F0(v49, v54, &qword_100CE6E20, &qword_100A9A400);
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = 1;
  v198 = v54;
  sub_10001B350(v54, v58, 1, v47);
  v202 = *(a1 + v20[14]);
  sub_10022C350(&qword_100CE6C38, &qword_100A9A240);
  State.wrappedValue.getter();
  v60 = v207;
  v201 = a1;
  if (v207)
  {
    v61 = (a1 + v20[15]);
    v62 = *v61;
    v63 = *(v61 + 1);
    LOBYTE(v202) = v62;
    *(&v202 + 1) = v63;
    State.wrappedValue.getter();
    if (v207 == 1)
    {
      v64 = v170;
      sub_100988558();
      v65 = a1;
      v66 = v197;
      HIDWORD(v152) = *(v64 + *(v66 + 96)) | (*(v64 + *(v66 + 96) + 2) << 16);
      sub_10093F8A8(v64, type metadata accessor for ListViewModel);
      sub_100988558();
      v67 = v36[*(v66 + 96) + 3];
      sub_10093F8A8(v36, type metadata accessor for ListViewModel);
      v151 = *(v65 + v20[20]);
      swift_unknownObjectRetain();
      v68 = 0x4030000000000000;
      if (static Solarium.isEnabled.getter())
      {
        v69 = 0x4030000000000000;
      }

      else
      {
        v69 = 0x4034000000000000;
      }

      if ((static Solarium.isEnabled.getter() & 1) == 0)
      {
        v70 = v170;
        sub_100988558();
        v71 = *(v70 + 8);
        sub_10093F8A8(v70, type metadata accessor for ListViewModel);
        if (v71)
        {
          v68 = 0x4034000000000000;
        }

        else
        {
          v68 = 0;
        }
      }

      v72 = &v40[*(v196 + 36)];
      v73 = type metadata accessor for ListViewTipStyleModifier(0);
      v74 = *(v73 + 28);
      *&v72[v74] = swift_getKeyPath();
      sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
      swift_storeEnumTagMultiPayload();
      v75 = &v72[*(v73 + 32)];
      *v75 = swift_getKeyPath();
      v75[8] = 0;
      *v72 = v69;
      v72[8] = 0;
      *(v72 + 2) = v68;
      v72[24] = 0;
      *(v72 + 4) = 0;
      v72[40] = 0;
      v76 = WORD2(v152);
      v40[2] = BYTE6(v152);
      *v40 = v76;
      v40[3] = v67;
      *(v40 + 8) = v151;
      *(v40 + 3) = v60;
      v77 = v154;
      sub_10011C0F0(v40, v154, &qword_100CE6E10, &qword_100A9A3F0);
      sub_10011C0F0(v77, v200, &qword_100CE6E10, &qword_100A9A3F0);
      v59 = 0;
      a1 = v201;
    }

    else
    {
    }
  }

  sub_10001B350(v200, v59, 1, v196);
  v154 = *(a1 + v20[18] + 8);
  sub_100988558();
  v78 = v171;
  sub_1000302D8(&v33[*(v197 + 32)], v171, &qword_100CC4158, &qword_100A5D730);
  if (sub_100024D10(v78, 1, v172) == 1)
  {
    v79 = _swiftEmptyArrayStorage;
  }

  else
  {
    v80 = v168;
    sub_1009423C8(v78, v168);
    sub_10022C350(&qword_100CD1308, &unk_100A76700);
    v81 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v79 = swift_allocObject();
    *(v79 + 1) = xmmword_100A2C3F0;
    sub_1009423C8(v80, v79 + v81);
  }

  *&v202 = v79;

  sub_10035DDEC(v82);
  v83 = v202;
  sub_10093F8A8(v33, type metadata accessor for ListViewModel);
  v207 = v83;
  v197 = type metadata accessor for ListView.ListContentView;
  v84 = v182;
  sub_100941A20(v201, v182);
  v85 = (*(v173 + 80) + 16) & ~*(v173 + 80);
  v86 = swift_allocObject();
  v196 = type metadata accessor for ListView.ListContentView;
  sub_1009423C8(v84, v86 + v85);
  v173 = sub_10022C350(&qword_100CE6C08, &unk_100A9A230);
  sub_10022C350(&qword_100CE6E30, &qword_100A9A410);
  sub_10023FBF4(&qword_100CE6E38, &qword_100CE6C08, &unk_100A9A230, &protocol conformance descriptor for [A]);
  v87 = type metadata accessor for ListRowView(255);
  v88 = sub_10022E824(&qword_100CE6E40, &qword_100A9A418);
  v89 = sub_10093F860(&qword_100CE6E48, type metadata accessor for ListRowView, byte_100A9A650);
  v90 = sub_1009440B4();
  *&v202 = v87;
  *(&v202 + 1) = &type metadata for Solarium;
  v203 = v88;
  v204 = v89;
  v205 = &protocol witness table for Solarium;
  v206 = v90;
  swift_getOpaqueTypeConformance2();
  sub_10093F860(&qword_100CE6E58, type metadata accessor for ListLocationViewModel, byte_100AA033C);
  v91 = v174;
  ForEach<>.init(_:content:)();
  v92 = v201;
  sub_100941A20(v201, v84);
  v93 = swift_allocObject();
  sub_1009423C8(v84, v93 + v85);
  v94 = swift_allocObject();
  *(v94 + 16) = sub_100944170;
  *(v94 + 24) = v93;
  v95 = v180;
  (*(v176 + 32))(v180, v91, v177);
  v96 = (v95 + *(sub_10022C350(&qword_100CE6E60, &qword_100A9A420) + 36));
  *v96 = sub_1009441D4;
  v96[1] = v94;
  *(v95 + *(v175 + 36)) = 1;
  sub_100941A20(v92, v84);
  v97 = swift_allocObject();
  sub_1009423C8(v84, v97 + v85);
  v98 = swift_allocObject();
  *(v98 + 16) = sub_100944200;
  *(v98 + 24) = v97;
  v99 = v178;
  sub_10011C0F0(v95, v178, &qword_100CE6E00, &qword_100A9A3E0);
  v100 = (v99 + *(v179 + 36));
  *v100 = sub_10018F134;
  v100[1] = v98;
  v101 = sub_10011C0F0(v99, v199, &qword_100CE6E08, &qword_100A9A3E8);
  v102 = v185;
  sub_10093B554(v101, v103, v104, v105, v106, v107, v108, v109, v151, *(&v151 + 1), v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  v110 = v186;
  v111 = v184;
  v112 = v188;
  (*(v186 + 104))(v184, enum case for UserInterfaceSizeClass.compact(_:), v188);
  sub_10001B350(v111, 0, 1, v112);
  v113 = *(v183 + 48);
  v114 = v187;
  sub_1000302D8(v102, v187, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v111, v114 + v113, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v114, 1, v112) != 1)
  {
    v115 = v169;
    sub_1000302D8(v114, v169, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(v114 + v113, 1, v112) != 1)
    {
      v119 = v114 + v113;
      v120 = v153;
      (*(v110 + 32))(v153, v119, v112);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v121 = dispatch thunk of static Equatable.== infix(_:_:)();
      v122 = *(v110 + 8);
      v122(v120, v112);
      sub_100018198(v111, &qword_100CA6028);
      sub_100018198(v102, &qword_100CA6028);
      v122(v115, v112);
      sub_100018198(v114, &qword_100CA6028);
      if (v121)
      {
        goto LABEL_26;
      }

LABEL_24:
      v116 = 1;
      v117 = v194;
      v118 = v192;
      goto LABEL_29;
    }

    sub_100018198(v111, &qword_100CA6028);
    sub_100018198(v102, &qword_100CA6028);
    (*(v110 + 8))(v115, v112);
LABEL_23:
    sub_100018198(v114, &qword_100CA64E8);
    goto LABEL_24;
  }

  sub_100018198(v111, &qword_100CA6028);
  sub_100018198(v102, &qword_100CA6028);
  if (sub_100024D10(v114 + v113, 1, v112) != 1)
  {
    goto LABEL_23;
  }

  sub_100018198(v114, &qword_100CA6028);
LABEL_26:
  v123 = static VerticalAlignment.center.getter();
  v124 = v156;
  *v156 = v123;
  v124[1] = 0;
  *(v124 + 16) = 1;
  v125 = sub_10022C350(&qword_100CE6E70, &qword_100A9A430);
  sub_100939CE0(v201, v124 + *(v125 + 44));
  *&v202 = static Color.clear.getter();
  *(v124 + *(v155 + 36)) = AnyView.init<A>(_:)();
  v126 = v157;
  PlainButtonStyle.init()();
  sub_100944260();
  sub_10093F860(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v127 = v161;
  v128 = v159;
  View.buttonStyle<A>(_:)();
  (*(v158 + 8))(v126, v128);
  sub_100018198(v124, &qword_100CE6DD0);
  LOBYTE(v124) = static Edge.Set.trailing.getter();
  v129 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v124)
  {
    v129 = Edge.Set.init(rawValue:)();
  }

  v130 = v170;
  sub_100988558();
  sub_10093F8A8(v130, type metadata accessor for ListViewModel);
  EdgeInsets.init(_all:)();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = v163;
  (*(v164 + 32))(v163, v127, v166);
  v140 = v139 + *(v165 + 36);
  *v140 = v129;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  static VerticalEdge.Set.all.getter();
  sub_100944344();
  v141 = v160;
  View.listRowSeparator(_:edges:)();
  sub_100018198(v139, &qword_100CE6DE0);
  v118 = v192;
  v117 = v194;
  (*(v162 + 32))(v192, v141, v194);
  v116 = 0;
LABEL_29:
  sub_10001B350(v118, v116, 1, v117);
  v142 = v189;
  sub_1000302D8(v198, v189, &qword_100CE6E28, &qword_100A9A408);
  v143 = v200;
  v144 = v190;
  sub_1000302D8(v200, v190, &qword_100CE6E18, &qword_100A9A3F8);
  v145 = v199;
  v146 = v191;
  sub_1000302D8(v199, v191, &qword_100CE6E08, &qword_100A9A3E8);
  v147 = v193;
  sub_1000302D8(v118, v193, &qword_100CE6DF0, &qword_100A9A3D0);
  v148 = v195;
  sub_1000302D8(v142, v195, &qword_100CE6E28, &qword_100A9A408);
  v149 = sub_10022C350(&qword_100CE6E68, &qword_100A9A428);
  sub_1000302D8(v144, v148 + v149[12], &qword_100CE6E18, &qword_100A9A3F8);
  sub_1000302D8(v146, v148 + v149[16], &qword_100CE6E08, &qword_100A9A3E8);
  sub_1000302D8(v147, v148 + v149[20], &qword_100CE6DF0, &qword_100A9A3D0);
  sub_100018198(v118, &qword_100CE6DF0);
  sub_100018198(v145, &qword_100CE6E08);
  sub_100018198(v143, &qword_100CE6E18);
  sub_100018198(v198, &qword_100CE6E28);
  sub_100018198(v147, &qword_100CE6DF0);
  sub_100018198(v146, &qword_100CE6E08);
  sub_100018198(v144, &qword_100CE6E18);
  return sub_100018198(v142, &qword_100CE6E28);
}

uint64_t sub_100937D34()
{
  v1 = v0;
  v2 = type metadata accessor for ContentStatusBanner(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE6E98, &qword_100A9A470);
  __chkstk_darwin(v5);
  v7 = (&v55 - v6);
  v8 = sub_10022C350(&qword_100CE6EA0, &qword_100A9A478);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for ListView.ListContentView(0);
  sub_1000161C0((v0 + v12[22]), *(v0 + v12[22] + 24));
  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
  State.wrappedValue.getter();
  sub_10010A228(v4, v7);
  sub_10093F8A8(v4, type metadata accessor for ContentStatusBanner);
  v13 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v7 + *(sub_10022C350(&qword_100CCA2E0, &unk_100A9A480) + 36);
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7 + *(sub_10022C350(&qword_100CCA2A8, &qword_100A68A30) + 36);
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Color.clear.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  v34 = v7 + *(sub_10022C350(&qword_100CE6EA8, &qword_100A9A490) + 36);
  *v34 = v33;
  v34[8] = v4;
  v35 = (v1 + v12[11]);
  v36 = *v35;
  v37 = v35[1];
  v57 = v36;
  v58 = v37;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v38 = v56;
  *(v7 + *(sub_10022C350(&qword_100CE6EB0, &qword_100A9A498) + 36)) = v38;
  v39 = (v1 + v12[10]);
  v40 = *v39;
  v41 = v39[1];
  v57 = v40;
  v58 = v41;
  State.wrappedValue.getter();
  v42 = v56;
  static UnitPoint.center.getter();
  v44 = v43;
  v46 = v45;
  v47 = (v7 + *(sub_10022C350(&qword_100CE6EB8, &qword_100A9A4A0) + 36));
  *v47 = v42;
  v47[1] = v42;
  v47[2] = v44;
  v47[3] = v46;
  v57 = static Color.clear.getter();
  v48 = AnyView.init<A>(_:)();
  *(v7 + *(sub_10022C350(&qword_100CE6EC0, &qword_100A9A4A8) + 36)) = v48;
  v49 = v7 + *(v5 + 36);
  v49[32] = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  static VerticalEdge.Set.all.getter();
  v50 = sub_10094447C();
  View.listRowSeparator(_:edges:)();
  sub_100018198(v7, &qword_100CE6E98);
  v51 = (v1 + v12[13]);
  v52 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(v57) = v52;
  v58 = v53;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v57 = v5;
  v58 = v50;
  swift_getOpaqueTypeConformance2();
  View.accessibilityHidden(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1009381BC(char a1, char a2)
{
  v4 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  switch(a1)
  {
    case 1:
      if (a2)
      {
        type metadata accessor for ListView.ListContentView(0);
        sub_100988558();
        v8 = v6[8];
        sub_10093F8A8(v6, type metadata accessor for ListViewModel);
        if (v8)
        {
          return 0x4020000000000000;
        }
      }

      if (static Solarium.isEnabled.getter())
      {
        return 0x4030000000000000;
      }

      else
      {
        return 0x4034000000000000;
      }

    case 2:
      return result;
    case 3:
      if (a2)
      {
        type metadata accessor for ListView.ListContentView(0);
        sub_100988558();
        v9 = v6[8];
        sub_10093F8A8(v6, type metadata accessor for ListViewModel);
        if (v9)
        {
          return 0x4020000000000000;
        }

        v10 = (static Solarium.isEnabled.getter() & 1) == 0;
        v11 = 0x4030000000000000;
      }

      else
      {
        if (static Solarium.isEnabled.getter())
        {
          return 0x4030000000000000;
        }

        type metadata accessor for ListView.ListContentView(0);
        sub_100988558();
        v12 = v6[8];
        sub_10093F8A8(v6, type metadata accessor for ListViewModel);
        v10 = v12 == 0;
        v11 = 0x4034000000000000;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v11;
      }

    default:
      return 0;
  }
}

uint64_t sub_10093838C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListRowView(0);
  __chkstk_darwin(v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1009384E4(a1, v6);
  Solarium.init()();
  v9 = a2;
  v10 = a1;
  sub_10022C350(&qword_100CE6E40, &qword_100A9A418);
  sub_10093F860(&qword_100CE6E48, type metadata accessor for ListRowView, byte_100A9A650);
  sub_1009440B4();
  View.staticIf<A, B>(_:then:)();
  return sub_10093F8A8(v6, type metadata accessor for ListRowView);
}

uint64_t sub_1009384E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ListView.ListContentView(0);
  v7 = (v6 - 8);
  v38 = *(v6 - 8);
  v37 = *(v38 + 64);
  __chkstk_darwin(v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListViewModel(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100941A20(a1, a2);
  v13 = v7[22];
  v34 = *(v3 + v7[21]);
  v39 = *(v3 + v7[23]);
  v15 = v7[25];
  v14 = v7[26];
  v16 = type metadata accessor for ListRowView(0);
  v17 = v16[9];
  v36 = *(v3 + v13);
  v40 = *(v3 + v15);
  sub_10042F370(v3 + v14, a2 + v17);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100988558();
  v18 = &v12[*(v10 + 84)];
  v19 = *v18;
  v32 = *(v18 + 1);
  v33 = v19;

  sub_10093F8A8(v12, type metadata accessor for ListViewModel);
  v20 = v35;
  sub_100941A20(v3, v35);
  v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v22 = swift_allocObject();
  sub_1009423C8(v20, v22 + v21);
  sub_100941A20(v3, v20);
  v23 = swift_allocObject();
  sub_1009423C8(v20, v23 + v21);
  *(a2 + v16[5]) = v34;
  *(a2 + v16[6]) = v40;
  *(a2 + v16[7]) = v36;
  *(a2 + v16[8]) = v39;
  v24 = (a2 + v16[10]);
  v25 = v32;
  *v24 = v33;
  v24[1] = v25;
  v26 = (a2 + v16[11]);
  *v26 = sub_1009447C4;
  v26[1] = v22;
  v27 = (a2 + v16[12]);
  *v27 = sub_100944818;
  v27[1] = v23;
  v28 = v16[13];
  *(a2 + v28) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v29 = a2 + v16[14];
  v41 = 0;
  result = State.init(wrappedValue:)();
  v31 = v43;
  *v29 = v42;
  *(v29 + 8) = v31;
  return result;
}

uint64_t sub_100938850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v87 = a1;
  v88 = a4;
  v80 = sub_10022C350(&qword_100CD1660, &qword_100A76AC8);
  __chkstk_darwin(v80);
  v85 = &v72 - v5;
  v84 = type metadata accessor for ListLocationViewModel(0);
  v73 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v78);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v8 - 8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v72 - v11;
  __chkstk_darwin(v12);
  v76 = &v72 - v13;
  __chkstk_darwin(v14);
  v82 = &v72 - v15;
  v16 = type metadata accessor for UserInterfaceSizeClass();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v74 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  v23 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v23 - 8);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  __chkstk_darwin(v29);
  v31 = &v72 - v30;
  v32 = static Edge.Set.bottom.getter();
  v86 = v32;
  sub_10093B554(v32, v33, v34, v35, v36, v37, v38, v39, v72, v73, v74, v75, v76, v77, a2, v78, v79, v80, v81, v82);
  (*(v17 + 104))(v28, enum case for UserInterfaceSizeClass.regular(_:), v16);
  sub_10001B350(v28, 0, 1, v16);
  v40 = *(v20 + 56);
  sub_1000302D8(v31, v22, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v28, &v22[v40], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v22, 1, v16) == 1)
  {
    sub_100018198(v28, &qword_100CA6028);
    sub_100018198(v31, &qword_100CA6028);
    if (sub_100024D10(&v22[v40], 1, v16) == 1)
    {
      sub_100018198(v22, &qword_100CA6028);
LABEL_8:
      v46 = v82;
      sub_100941A20(v77, v82);
      v47 = v84;
      sub_10001B350(v46, 0, 1, v84);
      type metadata accessor for ListView.ListContentView(0);
      v48 = v79;
      sub_100988558();
      v49 = v76;
      sub_1000302D8(v48 + *(v78 + 32), v76, &qword_100CC4158, &qword_100A5D730);
      if (sub_100024D10(v49, 1, v47) == 1)
      {
        v50 = _swiftEmptyArrayStorage;
      }

      else
      {
        v51 = v75;
        sub_1009423C8(v49, v75);
        sub_10022C350(&qword_100CD1308, &unk_100A76700);
        v52 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v50 = swift_allocObject();
        *(v50 + 1) = xmmword_100A2C3F0;
        sub_1009423C8(v51, v50 + v52);
      }

      v53 = v85;
      v54 = v83;
      v55 = v81;
      v89 = v50;

      sub_10035DDEC(v56);
      v57 = v89;
      sub_10093F8A8(v48, type metadata accessor for ListViewModel);
      sub_1002F56A4(v57);

      v58 = *(v80 + 48);
      sub_1000302D8(v46, v53, &qword_100CC4158, &qword_100A5D730);
      sub_1000302D8(v55, v53 + v58, &qword_100CC4158, &qword_100A5D730);
      if (sub_100024D10(v53, 1, v47) == 1)
      {
        sub_100018198(v55, &qword_100CC4158);
        sub_100018198(v46, &qword_100CC4158);
        if (sub_100024D10(v53 + v58, 1, v47) == 1)
        {
          sub_100018198(v53, &qword_100CC4158);
          goto LABEL_18;
        }
      }

      else
      {
        sub_1000302D8(v53, v54, &qword_100CC4158, &qword_100A5D730);
        if (sub_100024D10(v53 + v58, 1, v47) != 1)
        {
          v70 = v53 + v58;
          v71 = v75;
          sub_1009423C8(v70, v75);
          sub_1009AB434();
          sub_10093F8A8(v71, type metadata accessor for ListLocationViewModel);
          sub_100018198(v55, &qword_100CC4158);
          sub_100018198(v46, &qword_100CC4158);
          sub_10093F8A8(v54, type metadata accessor for ListLocationViewModel);
          sub_100018198(v53, &qword_100CC4158);
          goto LABEL_18;
        }

        sub_100018198(v55, &qword_100CC4158);
        sub_100018198(v46, &qword_100CC4158);
        sub_10093F8A8(v54, type metadata accessor for ListLocationViewModel);
      }

      v41 = &qword_100CD1660;
      v42 = v53;
LABEL_17:
      sub_100018198(v42, v41);
      goto LABEL_18;
    }

LABEL_6:
    v41 = &qword_100CA64E8;
    v42 = v22;
    goto LABEL_17;
  }

  sub_1000302D8(v22, v25, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v22[v40], 1, v16) == 1)
  {
    sub_100018198(v28, &qword_100CA6028);
    sub_100018198(v31, &qword_100CA6028);
    (*(v17 + 8))(v25, v16);
    goto LABEL_6;
  }

  v43 = v74;
  (*(v17 + 32))(v74, &v22[v40], v16);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v17 + 8);
  v45(v43, v16);
  sub_100018198(v28, &qword_100CA6028);
  sub_100018198(v31, &qword_100CA6028);
  v45(v25, v16);
  sub_100018198(v22, &qword_100CA6028);
  if (v44)
  {
    goto LABEL_8;
  }

LABEL_18:
  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v88;
  sub_100941A20(v87, v88);
  result = sub_10022C350(&qword_100CE6E40, &qword_100A9A418);
  v69 = v67 + *(result + 36);
  *v69 = v86;
  *(v69 + 8) = v60;
  *(v69 + 16) = v62;
  *(v69 + 24) = v64;
  *(v69 + 32) = v66;
  *(v69 + 40) = 0;
  return result;
}

void sub_100939234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[0] = a2;
  v48[1] = a3;
  v3 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v48 - v10;
  __chkstk_darwin(v12);
  v14 = v48 - v13;
  v15 = type metadata accessor for IndexSet.Index();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.startIndex.getter();
  v19 = IndexSet.subscript.getter();
  (*(v16 + 8))(v18, v15);
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_1000302D8(&v14[*(v6 + 32)], v5, &qword_100CC4158, &qword_100A5D730);
  sub_10093F8A8(v14, type metadata accessor for ListViewModel);
  v20 = type metadata accessor for ListLocationViewModel(0);
  LODWORD(v14) = sub_100024D10(v5, 1, v20);
  sub_100018198(v5, &qword_100CC4158);
  if (v14 == 1)
  {
    v21 = v48[0];
  }

  else
  {
    if (__OFSUB__(v19--, 1))
    {
      __break(1u);
LABEL_17:
      swift_once();
LABEL_7:
      v28 = type metadata accessor for Logger();
      sub_10000703C(v28, qword_100D90A48);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v49 = v19;
        v50 = v32;
        *v31 = 136446210;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = sub_100078694(v33, v34, &v50);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to find mapped index with sourceIndex type=%{public}s", v31, 0xCu);
        sub_100006F14(v32);
LABEL_13:

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v21 = v48[0] - 1;
    if (__OFSUB__(v48[0], 1))
    {
      __break(1u);
LABEL_19:
      swift_once();
LABEL_11:
      v41 = type metadata accessor for Logger();
      sub_10000703C(v41, qword_100D90A48);
      v29 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v21;
        v50 = v44;
        *v43 = 136446210;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = sub_100078694(v45, v46, &v50);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v29, v42, "Failed to find mapped index with sourceIndex type=%{public}s", v43, 0xCu);
        sub_100006F14(v44);
        goto LABEL_13;
      }

LABEL_14:

      return;
    }
  }

  sub_100988558();
  v23 = *&v11[*(v6 + 68)];

  sub_10093F8A8(v11, type metadata accessor for ListViewModel);
  v25 = sub_10087A1B4(v19, v23, v24);
  v27 = v26;

  if (v27)
  {
    if (qword_100CA26A0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  sub_100988558();
  v36 = *&v8[*(v6 + 68)];

  sub_10093F8A8(v8, type metadata accessor for ListViewModel);
  v38 = sub_10087A1B4(v21, v36, v37);
  v40 = v39;

  if (v40)
  {
    if (qword_100CA26A0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  sub_100650528(v25, v38);
}

void sub_10093979C()
{
  v0 = type metadata accessor for IndexSet();
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for IndexSet.Index();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.startIndex.getter();
  v15 = IndexSet.subscript.getter();
  (*(v12 + 8))(v14, v11);
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_1000302D8(&v10[*(v5 + 32)], v4, &qword_100CC4158, &qword_100A5D730);
  sub_10093F8A8(v10, type metadata accessor for ListViewModel);
  v16 = type metadata accessor for ListLocationViewModel(0);
  LODWORD(v10) = sub_100024D10(v4, 1, v16);
  sub_100018198(v4, &qword_100CC4158);
  if (v10 != 1 && __OFSUB__(v15--, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_100988558();
  v18 = *&v7[*(v5 + 68)];

  sub_10093F8A8(v7, type metadata accessor for ListViewModel);
  v20 = sub_10087A1B4(v15, v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    sub_10022C350(&qword_100CAB980, &qword_100A3A800);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100A2C3F0;
    *(v31 + 32) = v20;
    v39 = v31;
    sub_10093F860(&qword_100CE6DB8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_10022C350(&qword_100CE6DC0, &qword_100A9A378);
    sub_10023FBF4(&qword_100CE6DC8, &qword_100CE6DC0, &qword_100A9A378, &protocol conformance descriptor for [A]);
    v32 = v35;
    v33 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100650604();
    (*(v36 + 8))(v32, v33);
    return;
  }

  if (qword_100CA26A0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v23 = type metadata accessor for Logger();
  sub_10000703C(v23, qword_100D90A48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v15;
    v39 = v27;
    *v26 = 136446210;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_100078694(v28, v29, &v39);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to find mapped index with sourceIndex type=%{public}s", v26, 0xCu);
    sub_100006F14(v27);
  }
}

uint64_t sub_100939CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListViewModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LearnMoreAttributorView(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v28[-v13];
  v15 = type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_100941A20(&v7[*(v5 + 72)], v14);
  sub_10093F8A8(v7, type metadata accessor for ListViewModel);
  *&v14[v9[7] + 8] = *(*(a1 + *(v15 + 80) + 8) + 8);
  swift_unknownObjectWeakInit();
  v16 = &v14[v9[8]];
  v17 = LocalizedStringKey.init(stringLiteral:)();
  *v16 = Text.init(_:tableName:bundle:comment:)(v17, v19, v18 & 1, v20, 0, 0, 0, "Accessibility hint for a link hint where the destination has already been stated", 80, 2);
  *(v16 + 1) = v21;
  v16[16] = v22 & 1;
  *(v16 + 3) = v23;
  v24 = &v14[v9[9]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_100941A20(v14, v11);
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = sub_10022C350(&qword_100CE6EF0, &unk_100A9A4C0);
  sub_100941A20(v11, a2 + *(v25 + 48));
  v26 = a2 + *(v25 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_10093F8A8(v14, type metadata accessor for LearnMoreAttributorView);
  return sub_10093F8A8(v11, type metadata accessor for LearnMoreAttributorView);
}

void sub_100939F78()
{
  v0 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  v3 = v2[8];
  sub_10093F8A8(v2, type metadata accessor for ListViewModel);
  if (v3 == 1)
  {
    sub_10064FCA8();
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  }
}

uint64_t sub_10093A050@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_10022C350(&qword_100CE6CC8, &qword_100A9A2B0);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = sub_10022C350(&qword_100CE6CD0, &qword_100A9A2B8);
  v8 = a3 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 0x4028000000000000;
  *(v8 + 16) = 0;
  return result;
}

uint64_t sub_10093A0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_10093B554(v18, v19, v20, v21, v22, v23, v24, v25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2);
  sub_10001B350(v14, 0, 1, v2);
  v26 = *(v6 + 56);
  sub_1000302D8(v17, v8, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v14, &v8[v26], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    sub_100018198(v14, &qword_100CA6028);
    sub_100018198(v17, &qword_100CA6028);
    if (sub_100024D10(&v8[v26], 1, v2) == 1)
    {
      sub_100018198(v8, &qword_100CA6028);
      v27 = 0x4024000000000000;
      goto LABEL_10;
    }

LABEL_6:
    sub_100018198(v8, &qword_100CA64E8);
    v27 = 0x4030000000000000;
    goto LABEL_10;
  }

  sub_1000302D8(v8, v11, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v8[v26], 1, v2) == 1)
  {
    sub_100018198(v14, &qword_100CA6028);
    sub_100018198(v17, &qword_100CA6028);
    (*(v3 + 8))(v11, v2);
    goto LABEL_6;
  }

  v28 = v37;
  (*(v3 + 32))(v37, &v8[v26], v2);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v3 + 8);
  v30(v28, v2);
  sub_100018198(v14, &qword_100CA6028);
  sub_100018198(v17, &qword_100CA6028);
  v30(v11, v2);
  sub_100018198(v8, &qword_100CA6028);
  if (v29)
  {
    v27 = 0x4024000000000000;
  }

  else
  {
    v27 = 0x4030000000000000;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  v32 = sub_10022C350(&qword_100CE6CC8, &qword_100A9A2B0);
  v33 = v39;
  (*(*(v32 - 8) + 16))(v39, v38, v32);
  result = sub_10022C350(&qword_100CE6CD0, &qword_100A9A2B8);
  v35 = v33 + *(result + 36);
  *v35 = KeyPath;
  *(v35 + 8) = v27;
  *(v35 + 16) = 0;
  return result;
}

uint64_t sub_10093A5A4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE6D90, &qword_100A9A328);
  __chkstk_darwin(v2 - 8);
  sub_1000302D8(a1, &v5 - v3, &qword_100CE6D90, &qword_100A9A328);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_10093A64C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for ListView.ListContentView(0);
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  __chkstk_darwin(v2 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v38 - v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];
  v47._object = 0x8000000100AE6B20;
  v20._countAndFlagsBits = 0x6C65636E6143;
  v47._countAndFlagsBits = 0xD000000000000024;
  v20._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v47);

  v46 = v22;
  static ButtonRole.cancel.getter();
  v23 = type metadata accessor for ButtonRole();
  sub_10001B350(v6, 0, 1, v23);
  sub_10002D5A4();
  Button<>.init<A>(_:role:action:)();
  v24 = [v18 mainBundle];
  v48._object = 0x8000000100AE6B50;
  v25._countAndFlagsBits = 0x6574656C6544;
  v25._object = 0xE600000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v48);

  v46 = v27;
  static ButtonRole.destructive.getter();
  sub_10001B350(v6, 0, 1, v23);
  v28 = v40;
  sub_100941A20(v44, v40);
  v29 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v30 = swift_allocObject();
  sub_1009423C8(v28, v30 + v29);
  Button<>.init<A>(_:role:action:)();
  v31 = *(v8 + 16);
  v32 = v39;
  v31(v39, v17, v7);
  v33 = v41;
  v31(v41, v14, v7);
  v34 = v45;
  v31(v45, v32, v7);
  v35 = sub_10022C350(&qword_100CC3B88, &unk_100A5CF20);
  v31(&v34[*(v35 + 48)], v33, v7);
  v36 = *(v8 + 8);
  v36(v14, v7);
  v36(v17, v7);
  v36(v33, v7);
  return (v36)(v32, v7);
}

uint64_t sub_10093AB3C()
{
  v0 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_10022C350(&qword_100CE6930, &unk_100A99FC0);
  State.wrappedValue.getter();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    return sub_100018198(v8, &qword_100CC4158);
  }

  sub_1009423C8(v8, v11);
  sub_10093AD60(v11);
  sub_10001B350(v5, 1, 1, v9);
  sub_1000302D8(v5, v2, &qword_100CC4158, &qword_100A5D730);
  State.wrappedValue.setter();
  sub_100018198(v5, &qword_100CC4158);
  return sub_10093F8A8(v11, type metadata accessor for ListLocationViewModel);
}

void sub_10093AD60(uint64_t a1)
{
  v35 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v35);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v5 - 8);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  type metadata accessor for ListView.ListContentView(0);
  v36 = v1;
  sub_100988558();
  v16 = *&v15[*(v10 + 36)];

  sub_10093F8A8(v15, type metadata accessor for ListViewModel);
  v37 = a1;
  v39 = a1;
  v17 = sub_1008EF908(sub_100943FE8, v38, v16);
  LOBYTE(a1) = v18;

  if (a1 & 1) != 0 || (sub_100988558(), v19 = *&v12[*(v10 + 68)], , sub_10093F8A8(v12, type metadata accessor for ListViewModel), v21 = sub_10087A1B4(v17, v19, v20), v23 = v22, v24 = , (v23))
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000703C(v25, qword_100D90A48);
    sub_100941A20(v37, v4);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v30 = LocationModel.id.getter();
      v32 = v31;
      sub_10093F8A8(v4, type metadata accessor for ListLocationViewModel);
      v33 = sub_100078694(v30, v32, &v40);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not find location with id %{private,mask.hash}s while attempting to delete it.", v28, 0x16u);
      sub_100006F14(v29);
    }

    else
    {

      sub_10093F8A8(v4, type metadata accessor for ListLocationViewModel);
    }
  }

  else
  {
    __chkstk_darwin(v24);
    *(&v34 - 2) = v36;
    *(&v34 - 1) = v21;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_100941A20(v37, v9);
    sub_10001B350(v9, 0, 1, v35);
    sub_1000302D8(v9, v34, &qword_100CC4158, &qword_100A5D730);
    sub_10022C350(&qword_100CE6930, &unk_100A99FC0);
    State.wrappedValue.setter();
    sub_100018198(v9, &qword_100CC4158);
  }
}

uint64_t sub_10093B244@<X0>(uint64_t a1@<X8>)
{
  v2 = LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)(v2, v4, v3 & 1, v5, 0, 0, 0, "Message in alert view when deleting a location", 46, 2);
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_10093B2EC(uint64_t a1)
{
  v1 = LocationModel.id.getter();
  v3 = v2;
  if (v1 == LocationModel.id.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_10093B384(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_10022C350(&qword_100CAB980, &qword_100A3A800);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 32) = a2;
  v9[1] = v7;
  sub_10093F860(&qword_100CE6DB8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10022C350(&qword_100CE6DC0, &qword_100A9A378);
  sub_10023FBF4(&qword_100CE6DC8, &qword_100CE6DC0, &qword_100A9A378, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100650604();
  return (*(v4 + 8))(v6, v3);
}

void sub_10093B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_1000302D8(v23, &a9 - v34, &qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10011C0F0(v35, v25, &qword_100CA6028, &qword_100A40610);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    sub_10000C918();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_10000536C();
}

void sub_10093B704()
{
  sub_10000C778();
  v51 = v1;
  v50 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_1000039BC();
  v47 = v3;
  active = type metadata accessor for ActiveLocationModel(0);
  v5 = sub_100003810(active);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v46 = v7 - v6;
  v8 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v10;
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE6F10, &unk_100A9A4E0);
  sub_1000037C4();
  v48 = v13;
  v49 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v52 = v16;
  v17 = static Color.clear.getter();
  v42 = v0;
  v43 = v17;
  v45 = type metadata accessor for ListView.VFXPlaybackCoordinatorView;
  sub_100941A20(v0, v12);
  v39 = *(v9 + 80);
  v18 = (v39 + 16) & ~v39;
  v44 = v11;
  v19 = swift_allocObject();
  v40 = v19;
  v41 = type metadata accessor for ListView.VFXPlaybackCoordinatorView;
  sub_1009423C8(v12, v19 + v18);
  v53 = v17;
  v54 = sub_100944FD4;
  v55 = v19;
  v56 = 0;
  v57 = 0;
  v20 = v46;
  sub_1000E7B34();
  sub_100941A20(v0, v12);
  v21 = swift_allocObject();
  sub_1009423C8(v12, v21 + v18);
  v22 = sub_10022C350(&qword_100CA5A98, &qword_100A2FFA8);
  v23 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  v24 = sub_1000A4F28();
  v25 = sub_10014F7C8();
  View.onChange<A>(of:initial:_:)();

  v26 = sub_100018198(v20, &qword_100CADBA0);
  v27 = v47;
  v28 = v42;
  sub_10093B554(v26, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  sub_100941A20(v28, v12);
  v36 = swift_allocObject();
  sub_1009423C8(v12, v36 + v18);
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1000F1EAC();
  v37 = v48;
  v38 = v52;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v27, &qword_100CA6028);
  (*(v49 + 8))(v38, v37);
  sub_10000536C();
}

void sub_10093BB44()
{
  v1 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v1 - 8);
  v55 = &v53 - v2;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v53 - v10;
  v12 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  sub_10093B554(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, v0, v56, v57, v58, v59, v60, v61, v62, v63);
  v29 = v6;
  (*(v6 + 104))(v17, enum case for UserInterfaceSizeClass.compact(_:), v5);
  sub_10001B350(v17, 0, 1, v5);
  v30 = *(v9 + 56);
  sub_1000302D8(v20, v11, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v17, &v11[v30], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v11, 1, v5) != 1)
  {
    sub_1000302D8(v11, v14, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v11[v30], 1, v5) != 1)
    {
      v32 = v53;
      (*(v29 + 32))(v53, &v11[v30], v5);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v32, v5);
      sub_100018198(v17, &qword_100CA6028);
      sub_100018198(v20, &qword_100CA6028);
      v33(v14, v5);
      sub_100018198(v11, &qword_100CA6028);
      goto LABEL_8;
    }

    sub_100018198(v17, &qword_100CA6028);
    sub_100018198(v20, &qword_100CA6028);
    (*(v29 + 8))(v14, v5);
    goto LABEL_6;
  }

  sub_100018198(v17, &qword_100CA6028);
  sub_100018198(v20, &qword_100CA6028);
  if (sub_100024D10(&v11[v30], 1, v5) != 1)
  {
LABEL_6:
    sub_100018198(v11, &qword_100CA64E8);
    v31 = 0;
    goto LABEL_8;
  }

  sub_100018198(v11, &qword_100CA6028);
  v31 = 1;
LABEL_8:
  type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  v34 = v54;
  sub_1000E7B34();
  v35 = v34;
  v36 = v55;
  sub_10011C0F0(v35, v55, &qword_100CADBA0, &qword_100A3D250);
  v37 = type metadata accessor for Location.Identifier();
  v38 = sub_100024D10(v36, 1, v37);
  sub_100018198(v36, &qword_100CADBA0);
  swift_getObjectType();
  v39 = dispatch thunk of WeatherConditionPlaybackCoordinatorType.isPlaybackBlocked()();
  v40 = v39;
  if ((v31 & 1) != 0 && v38 != 1)
  {
    if ((v39 & 1) == 0)
    {
      if (qword_100CA26E8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000703C(v41, qword_100D90B20);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109632;
        *(v44 + 4) = 1;
        *(v44 + 8) = 1024;
        *(v44 + 10) = 1;
        *(v44 + 14) = 1024;
        *(v44 + 16) = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Pausing and blocking VFX playback; isWindowCompact=%{BOOL}d, isLocationSelected=%{BOOL}d, isPlaybackBlocked=%{BOOL}d", v44, 0x14u);
      }

      dispatch thunk of WeatherConditionPlaybackCoordinatorType.setPlaybackBlocked(_:)();
      WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
      return;
    }

    goto LABEL_22;
  }

  if ((v39 & 1) == 0)
  {
LABEL_22:
    if (qword_100CA26E8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000703C(v49, qword_100D90B20);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109632;
      *(v52 + 4) = v31 & 1;
      *(v52 + 8) = 1024;
      *(v52 + 10) = v38 != 1;
      *(v52 + 14) = 1024;
      *(v52 + 16) = v40 & 1;
      _os_log_impl(&_mh_execute_header, v50, v51, "No update needed to VFX playback; isWindowCompact=%{BOOL}d, isLocationSelected=%{BOOL}d, isPlaybackBlocked=%{BOOL}d", v52, 0x14u);
    }

    return;
  }

  if (qword_100CA26E8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000703C(v45, qword_100D90B20);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 67109632;
    *(v48 + 4) = v31 & 1;
    *(v48 + 8) = 1024;
    *(v48 + 10) = v38 != 1;
    *(v48 + 14) = 1024;
    *(v48 + 16) = 1;
    _os_log_impl(&_mh_execute_header, v46, v47, "Unblocking and resuming VFX playback; isWindowCompact=%{BOOL}d, isLocationSelected=%{BOOL}d, isPlaybackBlocked=%{BOOL}d", v48, 0x14u);
  }

  dispatch thunk of WeatherConditionPlaybackCoordinatorType.setPlaybackBlocked(_:)();
  dispatch thunk of WeatherConditionPlaybackCoordinatorType.play(_:)();
}

void sub_10093C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  __chkstk_darwin(v12 - 8);
  v14 = v19 - v13;
  v16 = *(v15 + 56);
  sub_1000302D8(a1, v19 - v13, &qword_100CADBA0, &qword_100A3D250);
  sub_1000302D8(a2, &v14[v16], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v14, 1, v5) == 1)
  {
    if (sub_100024D10(&v14[v16], 1, v5) == 1)
    {
      sub_100018198(v14, &qword_100CADBA0);
      return;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v14, v11, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v14[v16], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_100018198(v14, &qword_100CADD58);
LABEL_7:
    sub_10093BB44();
    return;
  }

  (*(v6 + 32))(v8, &v14[v16], v5);
  sub_10093F860(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  sub_100018198(v14, &qword_100CADBA0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_10093C6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v12 - 8);
  v14 = v19 - v13;
  v16 = *(v15 + 56);
  sub_1000302D8(a1, v19 - v13, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(a2, &v14[v16], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v14, 1, v5) == 1)
  {
    if (sub_100024D10(&v14[v16], 1, v5) == 1)
    {
      sub_100018198(v14, &qword_100CA6028);
      return;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v14, v11, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v14[v16], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_100018198(v14, &qword_100CA64E8);
LABEL_7:
    sub_10093BB44();
    return;
  }

  (*(v6 + 32))(v8, &v14[v16], v5);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  sub_100018198(v14, &qword_100CA6028);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10093C9AC@<X0>(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100988558();
  v5 = v4[10];
  result = sub_10093F8A8(v4, type metadata accessor for ListViewModel);
  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    sub_100988558();
    v8 = v4[10];
    result = sub_10093F8A8(v4, type metadata accessor for ListViewModel);
    v7 = v8 == 2;
  }

  *a1 = v7;
  return result;
}

BOOL sub_10093CA94()
{
  v0 = sub_1000038D8();
  v1 = type metadata accessor for ListViewModel(v0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_100988558();
  sub_100988558();
  v8 = sub_1006AB7D8(v7, v4);
  sub_10093F8A8(v4, type metadata accessor for ListViewModel);
  sub_10093F8A8(v7, type metadata accessor for ListViewModel);
  return v8;
}

uint64_t sub_10093CB7C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for SwipeActionsStyle();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE71B8, &qword_100A9A788);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v30 = sub_10022C350(&qword_100CE71C0, &qword_100A9A790);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v30 - v9;
  sub_10093D4E8(v1, v7);
  v11 = v1 + *(type metadata accessor for ListRowView(0) + 56);
  v12 = *v11;
  v13 = *(v11 + 8);
  v39 = v12;
  v40 = v13;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  v29 = sub_100945C9C();
  View.swipeActions<A>(edge:allowsFullSwipe:isPresented:content:)();

  sub_100018198(v7, &qword_100CE71B8);
  static SwipeActionsStyle.rounded(radius:)();
  v34 = v1;
  sub_10022C350(&qword_100CE7270, &qword_100A9A7E0);
  v35 = v5;
  v36 = &type metadata for EmptyView;
  v37 = v29;
  v14 = v31;
  v38 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  sub_100946500();
  v15 = v30;
  v16 = 1;
  View.swipeActions<A>(edge:allowsFullSwipe:style:content:)();
  (*(v32 + 8))(v4, v33);
  (*(v8 + 8))(v10, v15);
  LocationModel.kind.getter();
  v17 = Location.Identifier.Kind.rawValue.getter();
  v19 = v18;
  if (v17 != Location.Identifier.Kind.rawValue.getter() || v19 != v20)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v14 + *(sub_10022C350(&qword_100CE7280, &qword_100A9A7E8) + 36)) = v16 & 1;
  LocationModel.kind.getter();
  v22 = Location.Identifier.Kind.rawValue.getter();
  v24 = v23;
  v25 = 1;
  if (v22 != Location.Identifier.Kind.rawValue.getter() || v24 != v26)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  result = sub_10022C350(&qword_100CE7288, &qword_100A9A7F0);
  *(v14 + *(result + 36)) = v25 & 1;
  return result;
}

uint64_t sub_10093CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for ListRowView(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_10022C350(&unk_100CE1740, &unk_100A31E70);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CB5FE0, &qword_100A49A08);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  LocationModel.kind.getter();
  v14 = Location.Identifier.Kind.rawValue.getter();
  v16 = v15;
  if (v14 == Location.Identifier.Kind.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      static ButtonRole.destructive.getter();
      v20 = type metadata accessor for ButtonRole();
      sub_10001B350(v7, 0, 1, v20);
      sub_100941A20(a1, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v22 = swift_allocObject();
      sub_1009423C8(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      Button.init(role:action:label:)();
      v23 = [objc_opt_self() mainBundle];
      v37._object = 0x8000000100AE6B90;
      v24._countAndFlagsBits = 0x6574656C6544;
      v24._object = 0xE600000000000000;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v37._countAndFlagsBits = 0xD00000000000003CLL;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v37);

      v35 = v26;
      sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70, &protocol conformance descriptor for Button<A>);
      sub_10002D5A4();
      v27 = v33;
      View.accessibilityLabel<A>(_:)();

      (*(v32 + 8))(v10, v27);
      v28 = v34;
      sub_10011C0F0(v13, v34, &qword_100CB5FE0, &qword_100A49A08);
      return sub_10001B350(v28, 0, 1, v11);
    }
  }

  v30 = v34;

  return sub_10001B350(v30, 1, 1, v11);
}

uint64_t sub_10093D4A8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10093D4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v4 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v131 = *(v4 - 8);
  v132 = v4;
  __chkstk_darwin(v4);
  v130 = &v101[-v5];
  v133 = type metadata accessor for ListLocationViewModel(0);
  *&v106 = *(v133 - 8);
  *&v108 = *(v106 + 64);
  __chkstk_darwin(v133);
  v7 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ListRowView(0);
  v105 = *(v8 - 1);
  v9 = *(v105 + 64);
  __chkstk_darwin(v8);
  v10 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ListLocationRowView(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v107 = sub_10022C350(&qword_100CE7250, &qword_100A9A7D8);
  __chkstk_darwin(v107);
  v112 = &v101[-v15];
  v111 = sub_10022C350(&qword_100CE7240, &qword_100A9A7D0);
  __chkstk_darwin(v111);
  v110 = &v101[-v16];
  v109 = sub_10022C350(&qword_100CE7230, &qword_100A9A7C8);
  __chkstk_darwin(v109);
  v113 = &v101[-v17];
  v116 = sub_10022C350(&qword_100CE7218, &qword_100A9A7C0);
  __chkstk_darwin(v116);
  v115 = &v101[-v18];
  v122 = sub_10022C350(&qword_100CE7290, &qword_100A9A7F8);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = &v101[-v19];
  v114 = sub_10022C350(&qword_100CE7210, &qword_100A9A7B8);
  __chkstk_darwin(v114);
  v118 = &v101[-v20];
  v121 = sub_10022C350(&qword_100CE7200, &qword_100A9A7B0);
  __chkstk_darwin(v121);
  v119 = &v101[-v21];
  v123 = sub_10022C350(&qword_100CE71E0, &qword_100A9A7A0);
  __chkstk_darwin(v123);
  v124 = &v101[-v22];
  v23 = sub_10022C350(&qword_100CE7298, &qword_100A9A800);
  v126 = *(v23 - 8);
  v127 = v23;
  __chkstk_darwin(v23);
  v125 = &v101[-v24];
  v128 = sub_10022C350(&qword_100CE71D8, &qword_100A9A798);
  __chkstk_darwin(v128);
  v129 = &v101[-v25];
  v26 = v8[9];
  v27 = v12[9];
  v136 = *(v2 + v8[6]);
  sub_10042F370(v2 + v26, v14 + v27);
  sub_100941A20(a1, v14 + v12[10]);
  v28 = *(v2 + v8[5]);
  v103 = *(v2 + v8[8]);
  sub_100941A20(v2, v10);
  v134 = a1;
  sub_100941A20(a1, v7);
  v29 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v30 = (v9 + *(v106 + 80) + v29) & ~*(v106 + 80);
  v31 = swift_allocObject();
  sub_1009423C8(v10, v31 + v29);
  sub_1009423C8(v7, v31 + v30);
  *&v106 = v8;
  v32 = v8[14];
  *&v108 = v2;
  v33 = (v2 + v32);
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v140) = v34;
  v141 = v35;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  v36 = v137;
  v37 = v138;
  v102 = v139;
  *v14 = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  swift_storeEnumTagMultiPayload();
  v38 = v14 + v12[7];
  LOBYTE(v140) = 0;

  State.init(wrappedValue:)();
  v39 = v138;
  *v38 = v137;
  *(v38 + 1) = v39;
  *(v14 + v12[8]) = v136;
  v40 = (v14 + v12[11]);
  v41 = sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  v42 = sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  *&v136 = v28;
  v105 = v41;
  v104 = v42;
  *v40 = ObservedObject.init(wrappedValue:)();
  v40[1] = v43;
  *(v14 + v12[12]) = v103;
  v44 = (v14 + v12[13]);
  *v44 = sub_1009465B0;
  v44[1] = v31;
  v45 = v14 + v12[14];
  *v45 = v36;
  *(v45 + 1) = v37;
  v45[16] = v102;
  LOBYTE(v38) = static Edge.Set.leading.getter();
  v46 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  v47 = *(v108 + *(v106 + 48));
  v49 = v133;
  v48 = v134;
  v50 = *(v134 + *(v133 + 36)) ^ 1;
  v47(1, v50 & 1);
  v52 = v51;
  v53 = 0uLL;
  v54 = 0uLL;
  if ((v51 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v54 + 1) = v55;
    *(&v53 + 1) = v56;
  }

  v106 = v54;
  v108 = v53;
  v57 = v14;
  v58 = v112;
  sub_1009423C8(v57, v112);
  v59 = &v58[*(v107 + 36)];
  *v59 = v46;
  *(v59 + 24) = v106;
  *(v59 + 8) = v108;
  v59[40] = v52 & 1;
  v60 = static Edge.Set.trailing.getter();
  v61 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v60)
  {
    v61 = Edge.Set.init(rawValue:)();
  }

  v47(3, v50 & 1);
  v63 = v62;
  v64 = 0uLL;
  v65 = 0uLL;
  if ((v62 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v65 + 1) = v66;
    *(&v64 + 1) = v67;
  }

  v107 = v65;
  v108 = v64;
  v68 = v110;
  sub_10011C0F0(v58, v110, &qword_100CE7250, &qword_100A9A7D8);
  v69 = &v68[*(v111 + 36)];
  *v69 = v61;
  *(v69 + 24) = v107;
  *(v69 + 8) = v108;
  v69[40] = v63 & 1;
  v70 = v113;
  sub_10011C0F0(v68, v113, &qword_100CE7240, &qword_100A9A7D0);
  v71 = &v70[*(v109 + 36)];
  v71[32] = 0;
  *v71 = 0u;
  *(v71 + 1) = 0u;
  v137 = static Color.clear.getter();
  v72 = AnyView.init<A>(_:)();
  v73 = v115;
  sub_10011C0F0(v70, v115, &qword_100CE7230, &qword_100A9A7C8);
  *&v73[*(v116 + 36)] = v72;
  static VerticalEdge.Set.all.getter();
  sub_100946140();
  v74 = v117;
  View.listRowSeparator(_:edges:)();
  sub_100018198(v73, &qword_100CE7218);
  LOBYTE(v73) = *(v48 + *(v49 + 84));
  KeyPath = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v73;
  v77 = v118;
  (*(v120 + 32))(v118, v74, v122);
  v78 = (v77 + *(v114 + 36));
  *v78 = KeyPath;
  v78[1] = sub_100168F20;
  v78[2] = v76;
  v79 = static Color.primary.getter();
  v80 = swift_getKeyPath();
  v81 = v119;
  sub_10011C0F0(v77, v119, &qword_100CE7210, &qword_100A9A7B8);
  v82 = &v81[*(v121 + 36)];
  *v82 = v80;
  v82[1] = v79;
  sub_100945F94();
  v83 = v124;
  View.accessibilityRemoveTraits(uiTraits:)();
  sub_100018198(v81, &qword_100CE7200);
  Solarium.init()();
  v84 = v130;
  static ViewInputPredicate.! prefix(_:)();
  sub_10022C350(&qword_100CE71E8, &qword_100A9A7A8);
  sub_100945ED8();
  v137 = &type metadata for Solarium;
  v138 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1009463F8();
  v85 = v125;
  v86 = v132;
  View.staticIf<A, B>(_:then:)();
  (*(v131 + 8))(v84, v86);
  sub_100018198(v83, &qword_100CE71E0);
  v87 = v129;
  v88 = &v129[*(v128 + 36)];
  LocationModel.identifier.getter();
  IsListLocationGeometryEffectSourceModifier = type metadata accessor for DetermineWhetherRowIsListLocationGeometryEffectSourceModifier(0);
  v90 = &v88[*(IsListLocationGeometryEffectSourceModifier + 20)];
  *v90 = ObservedObject.init(wrappedValue:)();
  v90[1] = v91;
  v92 = &v88[*(IsListLocationGeometryEffectSourceModifier + 24)];
  type metadata accessor for ListLocationGeometryEffectSourceState(0);
  v93 = swift_allocObject();
  v94 = OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID;
  v95 = type metadata accessor for Location.Identifier();
  sub_10001B350(v93 + v94, 1, 1, v95);
  v140 = v93;
  State.init(wrappedValue:)();
  v96 = v138;
  *v92 = v137;
  v92[1] = v96;
  (*(v126 + 32))(v87, v85, v127);
  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_100A2C3F0;
  v98 = (v48 + *(v49 + 24));
  v99 = v98[1];
  *(v97 + 32) = *v98;
  *(v97 + 40) = v99;
  sub_100945D58();
  sub_10002D5A4();

  View.accessibilityInputLabels<A>(_:)();

  return sub_100018198(v87, &qword_100CE71D8);
}

uint64_t sub_10093E3E0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v36 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v34[-v6];
  v8 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v8 - 8);
  v38 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v34[-v11];
  __chkstk_darwin(v13);
  v15 = &v34[-v14];
  v16 = type metadata accessor for OSSignpostID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static os_signpost_type_t.event.getter();
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v20 = OS_os_log.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  v21 = v37;
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v17 + 8))(v19, v16);
  type metadata accessor for ListRowView(0);
  sub_10009D114();
  (*(v21 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v2);
  sub_10001B350(v12, 0, 1, v2);
  v22 = *(v5 + 56);
  sub_1000302D8(v15, v7, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v12, &v7[v22], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v7, 1, v2) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    if (sub_100024D10(&v7[v22], 1, v2) == 1)
    {
      sub_100018198(v7, &qword_100CA6028);
LABEL_9:
      v30 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
      [v30 ts_settlingDuration];
      v32 = v31;

      v24 = v32;
      v23 = v39;
      v25 = 0;
      return sub_10064F628(v23, v24, v25);
    }

    goto LABEL_6;
  }

  sub_1000302D8(v7, v38, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v7[v22], 1, v2) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    (*(v21 + 8))(v38, v2);
LABEL_6:
    sub_100018198(v7, &qword_100CA64E8);
    goto LABEL_7;
  }

  v26 = &v7[v22];
  v27 = v36;
  (*(v21 + 32))(v36, v26, v2);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v28 = v38;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v21 + 8);
  v29(v27, v2);
  sub_100018198(v12, &qword_100CA6028);
  sub_100018198(v15, &qword_100CA6028);
  v29(v28, v2);
  sub_100018198(v7, &qword_100CA6028);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = v39;
  v24 = 0;
  v25 = 1;
  return sub_10064F628(v23, v24, v25);
}

uint64_t sub_10093E9A0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000302D8(a1, a3, &qword_100CE71E0, &qword_100A9A7A0);
  result = sub_10022C350(&qword_100CE71E8, &qword_100A9A7A8);
  v7 = a3 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_10093EA40(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  EnvironmentValues.subscript.getter();
  return v3;
}

uint64_t sub_10093EAF0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for DetermineWhetherRowIsListLocationGeometryEffectSourceModifier(0);
  sub_10022C350(&qword_100CE7430, &qword_100A9AB70);
  State.wrappedValue.getter();
  v7 = sub_10093EDEC(v3);

  v8 = sub_10022C350(&qword_100CE7438, &qword_100A9AB78);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = sub_10022C350(&qword_100CE7440, &unk_100A9AB80);
  v10 = a3 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = v7 & 1;
  return result;
}

uint64_t sub_10093EC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v16[15];
  }

  if (a2)
  {
    v13 = 2.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = sub_10022C350(&qword_100CE7420, &qword_100A9AB60);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  result = sub_10022C350(&qword_100CE7428, &qword_100A9AB68);
  *(a4 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_10093EDEC(uint64_t a1)
{
  v38 = a1;
  v1 = type metadata accessor for Location.Identifier();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  __chkstk_darwin(v37);
  v4 = &v33 - v3;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  sub_1000E7B34();
  sub_10011C0F0(v10, v18, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v18, 1, v1) == 1)
  {
    v22 = OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID;
    v23 = v36;
    swift_beginAccess();
    sub_1000302D8(v23 + v22, v21, &qword_100CADBA0, &qword_100A3D250);
    v24 = sub_100024D10(v18, 1, v1);
    v25 = v35;
    if (v24 != 1)
    {
      sub_100018198(v18, &qword_100CADBA0);
    }
  }

  else
  {
    v25 = v35;
    (*(v35 + 32))(v21, v18, v1);
    sub_10001B350(v21, 0, 1, v1);
    v23 = v36;
  }

  sub_1000E7B34();
  v26 = OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID;
  swift_beginAccess();
  sub_10007DEA8(v7, v23 + v26);
  swift_endAccess();
  (*(v25 + 16))(v15, v38, v1);
  sub_10001B350(v15, 0, 1, v1);
  v27 = *(v37 + 48);
  sub_1000302D8(v15, v4, &qword_100CADBA0, &qword_100A3D250);
  sub_1000302D8(v21, &v4[v27], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v4, 1, v1) != 1)
  {
    v29 = v34;
    sub_1000302D8(v4, v34, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v4[v27], 1, v1) != 1)
    {
      v30 = v33;
      (*(v25 + 32))(v33, &v4[v27], v1);
      sub_10093F860(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v25 + 8);
      v31(v30, v1);
      sub_100018198(v15, &qword_100CADBA0);
      sub_100018198(v21, &qword_100CADBA0);
      v31(v29, v1);
      sub_100018198(v4, &qword_100CADBA0);
      return v28 & 1;
    }

    sub_100018198(v15, &qword_100CADBA0);
    sub_100018198(v21, &qword_100CADBA0);
    (*(v25 + 8))(v29, v1);
    goto LABEL_10;
  }

  sub_100018198(v15, &qword_100CADBA0);
  sub_100018198(v21, &qword_100CADBA0);
  if (sub_100024D10(&v4[v27], 1, v1) != 1)
  {
LABEL_10:
    sub_100018198(v4, &qword_100CADD58);
    v28 = 0;
    return v28 & 1;
  }

  sub_100018198(v4, &qword_100CADBA0);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_10093F39C()
{
  sub_100018198(v0 + OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID, &qword_100CADBA0);

  return swift_deallocClassInstance();
}

void sub_10093F438(uint64_t a1)
{
  sub_100009D20(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10093F514()
{
  result = qword_100CE6788;
  if (!qword_100CE6788)
  {
    result = swift_getWitnessTable(asc_100A9A154, &_s48IsListLocationGeometryEffectSourceEnvironmentKeyVN, v0, v1);
    atomic_store(result, &qword_100CE6788);
  }

  return result;
}

unint64_t sub_10093F5B0()
{
  result = qword_100CA6070;
  if (!qword_100CA6070)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10022E824(&qword_100CA6078, &unk_100A30870);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CA6070);
  }

  return result;
}

unint64_t sub_10093F644()
{
  result = qword_100CE67D0;
  if (!qword_100CE67D0)
  {
    v5[14] = v0;
    v5[15] = v1;
    v3 = sub_10022E824(&qword_100CE67A8, &qword_100A99DD0);
    v4 = sub_10022E824(&qword_100CE67A0, &qword_100A99DC8);
    sub_10022E824(&qword_100CE6798, &qword_100A99DC0);
    sub_10022E824(&qword_100CA6078, &unk_100A30870);
    sub_10022E824(&qword_100CE6790, &qword_100A99DB8);
    sub_10023FBF4(&qword_100CE67C0, &qword_100CE6790, &qword_100A99DB8, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10093F5B0();
    v5[2] = v4;
    v5[3] = &type metadata for Bool;
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = &protocol witness table for Bool;
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CE67D0);
  }

  return result;
}

uint64_t sub_10093F860(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10093F8A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10093F91C(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  type metadata accessor for ListViewTipStyleModifier(0);
  sub_10009D114();
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v1);
  sub_10001B350(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1000302D8(v16, v7, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v13, &v7[v17], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v7, 1, v1) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    if (sub_100024D10(&v7[v17], 1, v1) == 1)
    {
      sub_100018198(v7, &qword_100CA6028);
LABEL_9:
      swift_beginAccess();
      v18 = sub_1004966B0();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v7, v10, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v7[v17], 1, v1) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_100018198(v7, &qword_100CA64E8);
    goto LABEL_7;
  }

  v19 = &v7[v17];
  v20 = v25;
  (*(v2 + 32))(v25, v19, v1);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v2 + 8);
  v22(v20, v1);
  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  v22(v10, v1);
  sub_100018198(v7, &qword_100CA6028);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  swift_beginAccess();
  v18 = sub_100496624();
LABEL_10:
  v23 = v18;
  swift_endAccess();
  *v26 = v23;
}

uint64_t sub_10093FD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v64 = a1;
  v76 = a2;
  *&v63 = sub_10022C350(&qword_100CE72A0, &qword_100A9A8D0);
  __chkstk_darwin(v63);
  v5 = &v61 - v4;
  *&v65 = sub_10022C350(&qword_100CE72A8, &qword_100A9A8D8);
  __chkstk_darwin(v65);
  v7 = &v61 - v6;
  v70 = sub_10022C350(&qword_100CE72B0, &qword_100A9A8E0);
  __chkstk_darwin(v70);
  v9 = &v61 - v8;
  v10 = sub_10022C350(&qword_100CE72B8, &qword_100A9A8E8);
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v61 - v11;
  v66 = sub_10022C350(&qword_100CE72C0, &qword_100A9A8F0);
  __chkstk_darwin(v66);
  v13 = &v61 - v12;
  v14 = sub_10022C350(&qword_100CE72C8, &qword_100A9A8F8);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_10022C350(&qword_100CE72D0, &qword_100A9A900);
  v72 = *(v17 - 8);
  __chkstk_darwin(v17);
  v71 = &v61 - v18;
  v19 = sub_10022C350(&qword_100CE72D8, &qword_100A9A908);
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v73 = &v61 - v20;
  v21 = static Edge.Set.leading.getter();
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  v23 = v3[8];
  v24 = 0uLL;
  v25 = 0uLL;
  if ((v23 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v25 + 1) = v26;
    *(&v24 + 1) = v27;
  }

  v61 = v25;
  v62 = v24;
  v28 = sub_10022C350(&qword_100CE72E0, &qword_100A9A910);
  (*(*(v28 - 8) + 16))(v5, v64, v28);
  v29 = &v5[*(v63 + 36)];
  *v29 = v22;
  *(v29 + 24) = v61;
  *(v29 + 8) = v62;
  v29[40] = v23;
  v30 = static Edge.Set.trailing.getter();
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  v32 = v3[24];
  v33 = 0uLL;
  v34 = 0uLL;
  if ((v32 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v34 + 1) = v35;
    *(&v33 + 1) = v36;
  }

  v63 = v34;
  v64 = v33;
  sub_10011C0F0(v5, v7, &qword_100CE72A0, &qword_100A9A8D0);
  v37 = &v7[*(v65 + 36)];
  *v37 = v31;
  *(v37 + 24) = v63;
  *(v37 + 8) = v64;
  v37[40] = v32;
  v38 = static Edge.Set.bottom.getter();
  v39 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v39 = Edge.Set.init(rawValue:)();
  }

  v40 = v3[40];
  v41 = 0uLL;
  v42 = 0uLL;
  if ((v40 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v42 + 1) = v43;
    *(&v41 + 1) = v44;
  }

  v64 = v42;
  v65 = v41;
  sub_10011C0F0(v7, v9, &qword_100CE72A8, &qword_100A9A8D8);
  v45 = &v9[*(v70 + 36)];
  *v45 = v39;
  v46 = v65;
  *(v45 + 24) = v64;
  *(v45 + 8) = v46;
  v45[40] = v40;
  static VerticalEdge.Set.all.getter();
  sub_1009466DC();
  v47 = v67;
  View.listRowSeparator(_:edges:)();
  sub_100018198(v9, &qword_100CE72B0);
  (*(v68 + 32))(v13, v47, v69);
  v48 = &v13[*(v66 + 36)];
  v48[32] = 0;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v77 = static Color.clear.getter();
  v49 = AnyView.init<A>(_:)();
  sub_10011C0F0(v13, v16, &qword_100CE72C0, &qword_100A9A8F0);
  *&v16[*(v14 + 36)] = v49;
  sub_10093F91C(&v77);
  v81 = v77;
  v50 = sub_1009468AC();
  v51 = v71;
  View.tipBackground<A>(_:)();

  sub_100018198(v16, &qword_100CE72C8);
  Solarium.init()();
  sub_10022C350(&qword_100CE7318, &qword_100A9A918);
  v77 = v14;
  v78 = &type metadata for AnyShapeStyle;
  v79 = v50;
  v80 = &protocol witness table for AnyShapeStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v17;
  v78 = &type metadata for Color;
  v79 = OpaqueTypeConformance2;
  v80 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v53 = v73;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v72 + 8))(v51, v17);
  v54 = sub_10022C350(&qword_100CE7320, &unk_100A9A920);
  v55 = v76;
  v56 = (v76 + *(v54 + 36));
  v57 = *(sub_10022C350(&qword_100CE15A0, &unk_100A6E340) + 28);
  v58 = enum case for ColorScheme.dark(_:);
  v59 = type metadata accessor for ColorScheme();
  (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
  *v56 = swift_getKeyPath();
  return (*(v74 + 32))(v55, v53, v75);
}

uint64_t sub_100940610(uint64_t a1)
{
  static Color.white.getter();
  sub_10022C350(&qword_100CE72D0, &qword_100A9A900);
  sub_10022E824(&qword_100CE72C8, &qword_100A9A8F8);
  sub_1009468AC();
  swift_getOpaqueTypeConformance2();
  View.tipImageStyle<A>(_:)();
}

uint64_t sub_100940708()
{
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1000E7B34();
  sub_10011C0F0(v2, v5, &qword_100CADBA0, &qword_100A3D250);
  v6 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    sub_100018198(v5, &qword_100CADBA0);
    return 0;
  }

  else
  {
    v7 = Location.Identifier.id.getter();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

uint64_t sub_100940880()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for ScrollToActiveLocationModifier(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000302D8(v15, v6, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v12, &v6[v16], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v6, 1, v0) != 1)
  {
    sub_1000302D8(v6, v9, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100018198(v12, &qword_100CA6028);
      sub_100018198(v15, &qword_100CA6028);
      v20(v9, v0);
      sub_100018198(v6, &qword_100CA6028);
      return v17 & 1;
    }

    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_100018198(v12, &qword_100CA6028);
  sub_100018198(v15, &qword_100CA6028);
  if (sub_100024D10(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100018198(v6, &qword_100CA64E8);
    v17 = 0;
    return v17 & 1;
  }

  sub_100018198(v6, &qword_100CA6028);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100940CA0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v2;
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  v7 = *(active - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(active - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CE7198, &qword_100A9A780);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  (*(v11 + 16))(&v20 - v14, a1, v10, v13);
  sub_100941A20(v3, v9);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  result = sub_1009423C8(v9, v18 + v17);
  *a2 = sub_100945AEC;
  a2[1] = v18;
  return result;
}

uint64_t sub_100940EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v20 = a2;
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  v11 = *(active - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(active - 8);
  v21 = sub_100940708();
  v22 = v13;
  v18[3] = sub_100940880();
  sub_100941A20(a3, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1009423C8(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_10022C350(&qword_100CE7198, &qword_100A9A780);
  sub_10022C350(&qword_100CE6EF8, &qword_100A9A4D0);
  sub_10023FBF4(&qword_100CE71A0, &qword_100CE7198, &qword_100A9A780, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100945C18();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10094115C()
{
  result = sub_100940708();
  if (v1)
  {
    if (sub_100940880())
    {
      sub_1000E9170();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100941208(uint64_t a1, char a2, uint64_t a3)
{
  sub_10022C350(&qword_100CE7170, &qword_100A9A740);
  sub_10022C350(&qword_100CE7178, &unk_100A9A748);
  sub_100945964();
  sub_1009459B8();
  sub_10023FBF4(&qword_100CE7190, &qword_100CE7178, &unk_100A9A748, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_100941318@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10022C350(&qword_100CE7178, &unk_100A9A748);
  sub_10023FBF4(&qword_100CE7190, &qword_100CE7178, &unk_100A9A748, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.onScrollPhaseChange(_:)();

  KeyPath = swift_getKeyPath();
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  result = sub_10022C350(&qword_100CE7170, &qword_100A9A740);
  v9 = a3 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v10;
  return result;
}

uint64_t sub_100941464(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  ScrollPhase.isScrolling.getter();
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_1009414CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A24(a1, a2);
  sub_10022C350(v3, v4);
  sub_1000037E8();
  v5 = sub_1000251E0();

  return v6(v5, a1);
}

uint64_t sub_100941538()
{
  v2[3] = &type metadata for WeatherFeatureFlags;
  v2[4] = sub_1000032E4();
  LOBYTE(v2[0]) = 2;
  v0 = isFeatureEnabled(_:)();
  sub_100006F14(v2);
  return v0 & 1;
}

unint64_t sub_1009415AC()
{
  result = qword_100CE6860;
  if (!qword_100CE6860)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6800, &qword_100A99E20);
    v4[0] = sub_100941638();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6860);
  }

  return result;
}

unint64_t sub_100941638()
{
  result = qword_100CE6868;
  if (!qword_100CE6868)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6858, &qword_100A99ED8);
    v4[0] = sub_1009416C4();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6868);
  }

  return result;
}

unint64_t sub_1009416C4()
{
  result = qword_100CE6870;
  if (!qword_100CE6870)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6850, &qword_100A99ED0);
    v4[0] = sub_100941780();
    v4[1] = sub_10093F860(&qword_100CD96C8, type metadata accessor for ActivityModifier, byte_100AA49F4);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6870);
  }

  return result;
}

unint64_t sub_100941780()
{
  result = qword_100CE6878;
  if (!qword_100CE6878)
  {
    v8 = v0;
    v9 = v1;
    v3 = sub_10022E824(&qword_100CE6848, &qword_100A99EC8);
    v4 = sub_10022E824(&qword_100CE67F8, &qword_100A99E18);
    sub_10022E824(&qword_100CE67F0, &qword_100A99E10);
    sub_10022E824(&qword_100CE67E8, &qword_100A99E08);
    sub_10022E824(&qword_100CE67E0, &qword_100A99E00);
    sub_10022E824(&qword_100CE67D8, &qword_100A99DF8);
    type metadata accessor for ListView.ListContentView(255);
    sub_10022E824(&qword_100CE6838, &qword_100A99EC0);
    v5[6] = sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView, byte_100A9A064);
    v5[7] = &protocol witness table for Solarium;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100636EA4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CE6878);
  }

  return result;
}

uint64_t sub_100941A20(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100941AB0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100006F14((v0 + 88));
  swift_unknownObjectRelease();
  sub_100006F14((v0 + 144));

  return swift_deallocObject();
}

_BYTE *sub_100941B38(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    return sub_100650308();
  }

  return result;
}

void sub_100941BA0(uint64_t a1)
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100942078(319, &qword_100CADCE8, &qword_100CA4B60, &qword_100A2EE20, &qword_100CA4B68);
    if (v2 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100941CC4(uint64_t a1)
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100009D20(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_10010F488(319, &qword_100CE69A0, &qword_100CC4158, &qword_100A5D730, &type metadata accessor for State);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_100061D18(319);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_10008173C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_10008173C(319, &qword_100CAD690, &type metadata for CGFloat, &type metadata accessor for State);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_100009D20(319, &unk_100CC9FC8, type metadata accessor for ContentStatusBanner, &type metadata accessor for State);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_10010F488(319, &qword_100CE69A8, &qword_100CE6830, &unk_100A99EB0, &type metadata accessor for State);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  sub_100942078(319, &qword_100CE69B0, &qword_100CA4C50, &qword_100A2EEE0, &qword_100CA4C58);
                  v2 = v18;
                  if (v19 <= 0x3F)
                  {
                    sub_100009994(319);
                    v2 = v20;
                    if (v21 <= 0x3F)
                    {
                      v2 = sub_100081B54(319, &unk_100CE69B8, &protocol descriptor for ListInteractorType, 0);
                      if (v22 <= 0x3F)
                      {
                        v2 = sub_100081B54(319, &qword_100CA5088, &protocol descriptor for ContentStatusBannerViewFactoryType, 1);
                        if (v23 <= 0x3F)
                        {
                          v2 = sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
                          if (v24 <= 0x3F)
                          {
                            v2 = sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
                            if (v25 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
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
      }
    }
  }

  return v2;
}

void sub_100942078(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10022E824(a3, a4);
    sub_10023FBF4(a5, a3, a4, asc_100AA1480);
    sub_1000251E0();
    v9 = type metadata accessor for ObservedObject();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100942138(uint64_t a1)
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000EA080(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100942210(uint64_t a1)
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10008173C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000EA080(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1009423C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10094244C()
{
  sub_1000C87D0();
  v2 = type metadata accessor for ListView.ListContentView(0);
  sub_100003DDC();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100020660(v5))
    {
      sub_100022F14();
      v6 = sub_10000C918();
      v7(v6);
    }
  }

  else
  {
  }

  v8 = v2[5];
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  v10 = v4 + v2[6];
  v11 = type metadata accessor for ListLocationViewModel(0);
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v12 + 8))(v10);
    sub_10001191C();
    v13 = v10 + *(v11 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for Date();
      if (!sub_10002120C(v14))
      {
        sub_100003B20();
        (*(v15 + 8))(v13, v1);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v16 = type metadata accessor for Date();
    if (!sub_100020CF8(v16))
    {
      sub_100003B20();
      v17 = sub_10007165C();
      v18(v17);
    }

    v19 = type metadata accessor for TimeZone();
    if (!sub_100020CF8(v19))
    {
      sub_100003B20();
      v20 = sub_10007165C();
      v21(v20);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v22 = *(v11 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v23 + 8))(v10 + v22);
    sub_10001191C();
  }

  v24 = sub_10022C350(&qword_100CE6930, &unk_100A99FC0);

  sub_100109A60();
  sub_10001673C(v2[8]);

  v25 = v4 + v2[9];
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v26 + 8))(v25);
    sub_10001191C();
    v27 = v25 + *(v11 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = type metadata accessor for Date();
      if (!sub_10006A954(v27))
      {
        sub_100003B20();
        (*(v29 + 8))(v27, v28);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v30 = type metadata accessor for Date();
    if (!sub_100024C48(v30))
    {
      sub_100003B20();
      v31 = sub_100086978();
      v32(v31);
    }

    v33 = type metadata accessor for TimeZone();
    if (!sub_100024C48(v33))
    {
      sub_100003B20();
      v34 = sub_100086978();
      v35(v34);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v36 = *(v11 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v37 + 8))(v25 + v36);
    sub_10001191C();
  }

  sub_10001673C(v2[10]);

  sub_10001673C(v2[11]);

  sub_1000C88F8();
  if (v38)
  {
  }

  v39 = *(type metadata accessor for ContentStatusBanner(0) + 24);
  v40 = type metadata accessor for Date();
  if (!sub_100030484(v24 + v39))
  {
    sub_100022F14();
    (*(v41 + 8))(v24 + v39, v40);
  }

  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);

  sub_10001673C(v2[13]);

  sub_10001673C(v2[15]);

  sub_10001673C(v2[18]);

  swift_unknownObjectRelease();
  sub_100006F14((v4 + v2[22]));
  swift_unknownObjectRelease();
  sub_100006F14((v4 + v2[24]));
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_100942A98(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_100003810(v3);
  sub_10001164C();

  return a2(v2 + v4);
}

unint64_t sub_100942B0C()
{
  result = qword_100CE6C00;
  if (!qword_100CE6C00)
  {
    v9[16] = v0;
    v9[17] = v1;
    v3 = sub_10022E824(&qword_100CE6BB0, &qword_100A9A1E8);
    v4 = sub_10022E824(&qword_100CE6BA0, &qword_100A9A1D8);
    v5 = sub_10022E824(&qword_100CE6BE8, &qword_100A9A220);
    v6 = sub_10022E824(&qword_100CE6BF0, &qword_100A9A228);
    v7 = sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0, &qword_100A9A1D8, &protocol conformance descriptor for ZStack<A>);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v9[2] = v4;
    v9[3] = &type metadata for Solarium;
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v9[7] = &protocol witness table for Solarium;
    v9[8] = swift_getOpaqueTypeConformance2();
    v9[9] = OpaqueTypeConformance2;
    v9[0] = swift_getOpaqueTypeConformance2();
    v9[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v9);
    atomic_store(result, &qword_100CE6C00);
  }

  return result;
}

uint64_t sub_100942CAC()
{
  sub_100004EC4();
  v0 = sub_1000081A4();

  return sub_100932FFC(v0, v1, v2);
}

unint64_t sub_100942D10()
{
  result = qword_100CE6C10;
  if (!qword_100CE6C10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6BB8, &qword_100A9A1F0);
    v4[0] = sub_100942B0C();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6C10);
  }

  return result;
}

unint64_t sub_100942D9C()
{
  result = qword_100CE6C18;
  if (!qword_100CE6C18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE6C08, &unk_100A9A230);
    v4[0] = sub_10093F860(&qword_100CE6C20, type metadata accessor for ListLocationViewModel, asc_100AA03DC);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CE6C18);
  }

  return result;
}

void sub_100942E50()
{
  sub_100004EC4();
  v0 = sub_1000081A4();

  sub_10093341C(v0, v1, v2);
}

unint64_t sub_100942EB4()
{
  result = qword_100CE6C28;
  if (!qword_100CE6C28)
  {
    result = swift_getWitnessTable(byte_100A4B338, &type metadata for ListTipGroupViewModel, v0, v1);
    atomic_store(result, &qword_100CE6C28);
  }

  return result;
}

unint64_t sub_100942F88()
{
  result = qword_100CE6C30;
  if (!qword_100CE6C30)
  {
    v6[14] = v0;
    v6[15] = v1;
    v3 = sub_10022E824(&qword_100CE6BD8, &qword_100A9A210);
    v4 = sub_10022E824(&qword_100CE6BC8, &qword_100A9A200);
    v5 = sub_10022E824(&qword_100CA5010, &unk_100A2F250);
    sub_10022E824(&qword_100CE6BC0, &qword_100A9A1F8);
    sub_10022E824(&qword_100CE6BB8, &qword_100A9A1F0);
    sub_10022E824(&qword_100CE6C08, &unk_100A9A230);
    sub_100942D10();
    sub_100942D9C();
    swift_getOpaqueTypeConformance2();
    sub_100942EB4();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_10010B5B0();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10023FBF4(&qword_100CACCF8, &qword_100CACD00, &unk_100A68CA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE6C30);
  }

  return result;
}

uint64_t sub_100943258()
{
  v1 = &_mh_execute_header;
  if (!*(v0 + 20))
  {
    v1 = 0;
  }

  v2 = *(v0 + 16) | v1;
  v3 = 0x10000000000;
  if (!*(v0 + 21))
  {
    v3 = 0;
  }

  v4 = v2 | v3;
  v5 = 0x100000000000000;
  if (!*(v0 + 23))
  {
    v5 = 0;
  }

  return sub_100933928(v4 | (*(v0 + 22) << 48) | v5, *(v0 + 24));
}

unint64_t sub_100943304()
{
  result = qword_100CE6C78;
  if (!qword_100CE6C78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6C60, &qword_100A9A268);
    v4[0] = sub_10023FBF4(&qword_100CE6C80, &unk_100CE6C88, &unk_100A9A280, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_1004661B0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6C78);
  }

  return result;
}

unint64_t sub_1009433E8()
{
  result = qword_100CE6CA8;
  if (!qword_100CE6CA8)
  {
    v4[14] = v0;
    v4[15] = v1;
    v3 = sub_10022E824(&qword_100CE6C90, &qword_100A9A288);
    v4[2] = sub_10022E824(&qword_100CE6CB0, &unk_100A9A298);
    v4[3] = sub_10022E824(&qword_100CC3AF8, &qword_100A5CEC0);
    v4[4] = &type metadata for Text;
    v4[5] = sub_100943550();
    v4[6] = sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8, &qword_100A5CEC0, &protocol conformance descriptor for TupleView<A>);
    v4[7] = &protocol witness table for Text;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10023FBF4(&qword_100CCA190, &qword_100CCA198, &unk_100A83AF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6CA8);
  }

  return result;
}

unint64_t sub_100943550()
{
  result = qword_100CE6CB8;
  if (!qword_100CE6CB8)
  {
    v9 = v0;
    v10 = v1;
    v3 = sub_10022E824(&qword_100CE6CB0, &unk_100A9A298);
    v4 = sub_10022E824(&qword_100CE6CC0, &qword_100A9A2A8);
    sub_10022E824(&qword_100CE6CC8, &qword_100A9A2B0);
    v5 = sub_10022E824(&qword_100CE6CD0, &qword_100A9A2B8);
    sub_10022E824(&qword_100CE6CD8, &qword_100A9A2C0);
    sub_10022E824(&qword_100CE6CE0, &qword_100A9A2C8);
    sub_10022E824(&qword_100CE6CE8, &qword_100A9A2D0);
    type metadata accessor for SidebarListStyle();
    sub_1009437A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v6[4] = v5;
    v6[5] = v5;
    v6[6] = swift_getOpaqueTypeConformance2();
    v6[7] = &protocol witness table for Solarium;
    v7 = sub_100943AFC();
    v8 = v7;
    v6[2] = v4;
    v6[3] = swift_getOpaqueTypeConformance2();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10023FBF4(&qword_100CE6D50, &qword_100CE6D58, &unk_100A9A2F8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE6CB8);
  }

  return result;
}

unint64_t sub_1009437A0()
{
  result = qword_100CE6CF0;
  if (!qword_100CE6CF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6CE8, &qword_100A9A2D0);
    v4[0] = sub_100943858();
    v4[1] = sub_10023FBF4(&qword_100CBDD68, &qword_100CBDD70, &unk_100A55520, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6CF0);
  }

  return result;
}

unint64_t sub_100943858()
{
  result = qword_100CE6CF8;
  if (!qword_100CE6CF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6D00, &qword_100A9A2D8);
    v4[0] = sub_100943914();
    v4[1] = sub_10093F860(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6CF8);
  }

  return result;
}

unint64_t sub_100943914()
{
  result = qword_100CE6D08;
  if (!qword_100CE6D08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6D10, &qword_100A9A2E0);
    v4[0] = sub_1009439D0();
    v4[1] = sub_10093F860(&qword_100CE6D40, type metadata accessor for ScrollToActiveLocationModifier, aI_2);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6D08);
  }

  return result;
}

unint64_t sub_1009439D0()
{
  result = qword_100CE6D18;
  if (!qword_100CE6D18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6D20, &qword_100A9A2E8);
    v4[0] = sub_10023FBF4(&qword_100CE6D28, &unk_100CE6D30, &unk_100A9A2F0, &protocol conformance descriptor for List<A, B>);
    v4[1] = sub_100943A88();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6D18);
  }

  return result;
}

unint64_t sub_100943A88()
{
  result = qword_100CE6D38;
  if (!qword_100CE6D38)
  {
    result = swift_getWitnessTable(byte_100A9A6F0, &type metadata for TrackListScrollingModifier, v0, v1);
    atomic_store(result, &qword_100CE6D38);
  }

  return result;
}

unint64_t sub_100943AFC()
{
  result = qword_100CE6D48;
  if (!qword_100CE6D48)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CE6CD0, &qword_100A9A2B8);
    v4 = sub_10022E824(&qword_100CE6CD8, &qword_100A9A2C0);
    sub_10022E824(&qword_100CE6CE0, &qword_100A9A2C8);
    sub_10022E824(&qword_100CE6CE8, &qword_100A9A2D0);
    type metadata accessor for SidebarListStyle();
    v5[4] = sub_1009437A0();
    v5[5] = &protocol witness table for SidebarListStyle;
    swift_getOpaqueTypeConformance2();
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_10023FBF4(&qword_100CC2270, &qword_100CC2278, &qword_100A5AAF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CE6D48);
  }

  return result;
}

unint64_t sub_100943C98()
{
  result = qword_100CE6D68;
  if (!qword_100CE6D68)
  {
    v6[17] = v0;
    v6[18] = v1;
    v3 = sub_10022E824(&qword_100CE6C50, &qword_100A9A258);
    v4 = sub_10093F860(&qword_100CE6CA0, &type metadata accessor for IsDeviceSlowViewInputPredicate, &protocol conformance descriptor for IsDeviceSlowViewInputPredicate);
    v5 = sub_1009433E8();
    v6[3] = sub_10022E824(&qword_100CE6CB0, &unk_100A9A298);
    v6[4] = sub_10022E824(&qword_100CC3AF8, &qword_100A5CEC0);
    v6[5] = &type metadata for Text;
    v6[6] = sub_100943550();
    v6[7] = sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8, &qword_100A5CEC0, &protocol conformance descriptor for TupleView<A>);
    v6[8] = &protocol witness table for Text;
    v6[0] = v4;
    v6[1] = v5;
    v6[2] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v6);
    atomic_store(result, &qword_100CE6D68);
  }

  return result;
}

unint64_t sub_100943E18()
{
  result = qword_100CE6D70;
  if (!qword_100CE6D70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6D60, &qword_100A9A308);
    v4[0] = sub_100943C98();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6D70);
  }

  return result;
}

unint64_t sub_100943EC8()
{
  result = qword_100CE6D88;
  if (!qword_100CE6D88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE6D80, &qword_100A9A320);
    v4[0] = sub_10023FBF4(&qword_100CE17D0, &qword_100CE17C0, &qword_100A92480, byte_100A5F580);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE6D88);
  }

  return result;
}

uint64_t sub_100944024(uint64_t a1)
{
  sub_100004EC4();
  sub_10001164C();

  return sub_10093838C(a1, v1 + v3);
}

unint64_t sub_1009440B4()
{
  result = qword_100CE6E50;
  if (!qword_100CE6E50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6E40, &qword_100A9A418);
    v4[0] = sub_10093F860(&qword_100CE6E48, type metadata accessor for ListRowView, byte_100A9A650);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6E50);
  }

  return result;
}

void sub_100944170()
{
  sub_100004EC4();
  v0 = sub_1000081A4();

  sub_100939234(v0, v1, v2);
}

void sub_100944200()
{
  sub_100004EC4();
  sub_10001164C();

  sub_10093979C();
}

unint64_t sub_100944260()
{
  result = qword_100CE6E78;
  if (!qword_100CE6E78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6DD0, &qword_100A9A3B0);
    v4[0] = sub_10023FBF4(&qword_100CE6E80, &unk_100CE6E88, &unk_100A9A438, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60, &unk_100A9A440, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6E78);
  }

  return result;
}

unint64_t sub_100944344()
{
  result = qword_100CE6E90;
  if (!qword_100CE6E90)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CE6DE0, &qword_100A9A3C0);
    v4[2] = sub_10022E824(&qword_100CE6DD0, &qword_100A9A3B0);
    v4[3] = type metadata accessor for PlainButtonStyle();
    v4[4] = sub_100944260();
    v4[5] = sub_10093F860(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6E90);
  }

  return result;
}

unint64_t sub_10094447C()
{
  result = qword_100CE6EC8;
  if (!qword_100CE6EC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6E98, &qword_100A9A470);
    v4[0] = sub_100944534();
    v4[1] = sub_10023FBF4(&qword_100CC2F68, &unk_100CC2F70, &unk_100A5BC50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6EC8);
  }

  return result;
}

unint64_t sub_100944534()
{
  result = qword_100CE6ED0;
  if (!qword_100CE6ED0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6EC0, &qword_100A9A4A8);
    v4[0] = sub_1009445EC();
    v4[1] = sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60, &unk_100A9A440, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6ED0);
  }

  return result;
}

unint64_t sub_1009445EC()
{
  result = qword_100CE6ED8;
  if (!qword_100CE6ED8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6EB8, &qword_100A9A4A0);
    v4[0] = sub_100944678();
    v4[1] = &protocol witness table for _ScaleEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6ED8);
  }

  return result;
}

unint64_t sub_100944678()
{
  result = qword_100CE6EE0;
  if (!qword_100CE6EE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6EB0, &qword_100A9A498);
    v4[0] = sub_100944704();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6EE0);
  }

  return result;
}

unint64_t sub_100944704()
{
  result = qword_100CE6EE8;
  if (!qword_100CE6EE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6EA8, &qword_100A9A490);
    v4[0] = sub_10010B468();
    v4[1] = sub_10023FBF4(&qword_100CC0538, &qword_100CC0540, &unk_100A9A4B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE6EE8);
  }

  return result;
}

void sub_1009447C4(uint64_t a1)
{
  sub_100004EC4();
  sub_10001164C();
  sub_10093AD60(a1);
}

uint64_t sub_100944818(char a1, char a2)
{
  sub_100004EC4();
  sub_10001164C();

  return sub_10093B2C4(a1, a2);
}

uint64_t sub_100944888@<X0>(uint64_t *a1@<X8>)
{
  sub_100004EC4();

  return sub_100934604(a1);
}

uint64_t sub_1009448F0()
{
  sub_1000C87D0();
  v2 = type metadata accessor for ListView.ListContentView(0);
  sub_100003DDC();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v4;
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100020660(v6))
    {
      sub_100022F14();
      v7 = sub_10000C918();
      v8(v7);
    }
  }

  else
  {
  }

  v9 = v2[5];
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  v11 = v5 + v2[6];
  v12 = type metadata accessor for ListLocationViewModel(0);
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v13 + 8))(v11);
    sub_10001191C();
    v14 = v11 + *(v12 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for Date();
      if (!sub_10002120C(v15))
      {
        sub_100003B20();
        (*(v16 + 8))(v14, v1);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v17 = type metadata accessor for Date();
    if (!sub_100020CF8(v17))
    {
      sub_100003B20();
      v18 = sub_10007165C();
      v19(v18);
    }

    v20 = type metadata accessor for TimeZone();
    if (!sub_100020CF8(v20))
    {
      sub_100003B20();
      v21 = sub_10007165C();
      v22(v21);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v23 = *(v12 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v24 + 8))(v11 + v23);
    sub_10001191C();
  }

  v25 = sub_10022C350(&qword_100CE6930, &unk_100A99FC0);

  sub_100109A60();
  sub_10001673C(v2[8]);

  v26 = v5 + v2[9];
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v27 + 8))(v26);
    sub_10001191C();
    v28 = v26 + *(v12 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = type metadata accessor for Date();
      if (!sub_10006A954(v28))
      {
        sub_100003B20();
        (*(v30 + 8))(v28, v29);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v31 = type metadata accessor for Date();
    if (!sub_100024C48(v31))
    {
      sub_100003B20();
      v32 = sub_100086978();
      v33(v32);
    }

    v34 = type metadata accessor for TimeZone();
    if (!sub_100024C48(v34))
    {
      sub_100003B20();
      v35 = sub_100086978();
      v36(v35);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v37 = *(v12 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v38 + 8))(v26 + v37);
    sub_10001191C();
  }

  sub_10001673C(v2[10]);

  sub_10001673C(v2[11]);

  sub_1000C88F8();
  if (v39)
  {
  }

  v40 = *(type metadata accessor for ContentStatusBanner(0) + 24);
  v41 = type metadata accessor for Date();
  if (!sub_100030484(v25 + v40))
  {
    sub_100022F14();
    (*(v42 + 8))(v25 + v40, v41);
  }

  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);

  sub_10001673C(v2[13]);

  sub_10001673C(v2[15]);

  sub_10001673C(v2[18]);

  swift_unknownObjectRelease();
  sub_100006F14((v5 + v2[22]));
  swift_unknownObjectRelease();
  sub_100006F14((v5 + v2[24]));
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_100944F18(uint64_t *a1)
{
  sub_100004EC4();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100934810(a1, v4, v5, v6);
}

unint64_t sub_100944F80()
{
  result = qword_100CE6F08;
  if (!qword_100CE6F08)
  {
    result = swift_getWitnessTable(aI_3, &_s21__Key_isListScrollingVN, v0, v1);
    atomic_store(result, &qword_100CE6F08);
  }

  return result;
}

void sub_100944FD4()
{
  v0 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  sub_100003810(v0);
  sub_10001164C();
  sub_10093BB44();
}

uint64_t sub_100945028()
{
  v0 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  sub_100003DDC();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100020660(v1))
    {
      sub_100022F14();
      v2 = sub_10000C918();
      v3(v2);
    }
  }

  else
  {
  }

  sub_10001673C(*(v0 + 20));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1009451A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v4 = a3(0);
  sub_100003810(v4);
  v5 = sub_1000081A4();

  return a4(v5);
}

void sub_10094525C(uint64_t a1)
{
  sub_100942078(319, &qword_100CADCE8, &qword_100CA4B60, &qword_100A2EE20, &qword_100CA4B68);
  if (v1 <= 0x3F)
  {
    sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100009D20(319, &unk_100CE6F88, &type metadata accessor for ScrollPosition, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1009453AC(uint64_t a1)
{
  type metadata accessor for ListLocationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_100009994(319);
    if (v2 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
      if (v3 <= 0x3F)
      {
        sub_100081B54(319, &unk_100CE69B8, &protocol descriptor for ListInteractorType, 0);
        if (v4 <= 0x3F)
        {
          sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
          if (v5 <= 0x3F)
          {
            sub_10008173C(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_10013DB50();
              if (v7 <= 0x3F)
              {
                sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  sub_10008173C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                  if (v9 <= 0x3F)
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

void sub_1009455B8(uint64_t a1)
{
  sub_10008173C(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10008173C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1009456D0()
{
  result = qword_100CE7128;
  if (!qword_100CE7128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7130, &qword_100A9A5A8);
    v4[0] = sub_10023FBF4(&qword_100CE7138, &unk_100CE7140, &unk_100A9A5B0, &protocol conformance descriptor for ZStack<A>);
    v4[1] = &protocol witness table for _SafeAreaIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7128);
  }

  return result;
}

uint64_t sub_100945788(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100945800()
{
  result = qword_100CE7158;
  if (!qword_100CE7158)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE6B80, &qword_100A9A1B0);
    v4[0] = sub_10023FBF4(&qword_100CE7160, &unk_100CE7168, &unk_100A9A5C0, &protocol conformance descriptor for ZStack<A>);
    v4[1] = &protocol witness table for _SafeAreaIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7158);
  }

  return result;
}

unint64_t sub_100945964()
{
  result = qword_100CE7180;
  if (!qword_100CE7180)
  {
    result = swift_getWitnessTable(byte_100A9AB30, &type metadata for TrackListScrollingPredicate, v0, v1);
    atomic_store(result, &qword_100CE7180);
  }

  return result;
}

unint64_t sub_1009459B8()
{
  result = qword_100CE7188;
  if (!qword_100CE7188)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CE7170, &qword_100A9A740);
    v4[2] = sub_10022E824(&qword_100CE7178, &unk_100A9A748);
    v4[3] = sub_10023FBF4(&qword_100CE7190, &qword_100CE7178, &unk_100A9A748, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10023FBF4(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7188);
  }

  return result;
}

uint64_t sub_100945AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_10022C350(&qword_100CE7198, &qword_100A9A780) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  sub_100003810(active);
  v10 = v2 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100940EA8(a1, v2 + v6, v10, a2);
}

unint64_t sub_100945C18()
{
  result = qword_100CE71A8;
  if (!qword_100CE71A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE6EF8, &qword_100A9A4D0);
    v4[0] = sub_1000E91C8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE71A8);
  }

  return result;
}

unint64_t sub_100945C9C()
{
  result = qword_100CE71C8;
  if (!qword_100CE71C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE71B8, &qword_100A9A788);
    v4[0] = sub_100945D58();
    v4[1] = sub_10093F860(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE71C8);
  }

  return result;
}

unint64_t sub_100945D58()
{
  result = qword_100CE71D0;
  if (!qword_100CE71D0)
  {
    v4[14] = v0;
    v4[15] = v1;
    v3 = sub_10022E824(&qword_100CE71D8, &qword_100A9A798);
    v4[2] = sub_10022E824(&qword_100CE71E0, &qword_100A9A7A0);
    v4[3] = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
    v4[4] = sub_10022E824(&qword_100CE71E8, &qword_100A9A7A8);
    v4[5] = sub_100945ED8();
    v4[6] = swift_getOpaqueTypeConformance2();
    v4[7] = sub_1009463F8();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10093F860(&qword_100CE7268, type metadata accessor for DetermineWhetherRowIsListLocationGeometryEffectSourceModifier, aY_25);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE71D0);
  }

  return result;
}

unint64_t sub_100945ED8()
{
  result = qword_100CE71F0;
  if (!qword_100CE71F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE71E0, &qword_100A9A7A0);
    v4[0] = sub_100945F94();
    v4[1] = sub_10093F860(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE71F0);
  }

  return result;
}

unint64_t sub_100945F94()
{
  result = qword_100CE71F8;
  if (!qword_100CE71F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7200, &qword_100A9A7B0);
    v4[0] = sub_10094604C();
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE71F8);
  }

  return result;
}

unint64_t sub_10094604C()
{
  result = qword_100CE7208;
  if (!qword_100CE7208)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CE7210, &qword_100A9A7B8);
    v4[2] = sub_10022E824(&qword_100CE7218, &qword_100A9A7C0);
    v4[3] = sub_100946140();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10023FBF4(&qword_100CA6F10, &qword_100CA6F18, &qword_100A31E90, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7208);
  }

  return result;
}

unint64_t sub_100946140()
{
  result = qword_100CE7220;
  if (!qword_100CE7220)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7218, &qword_100A9A7C0);
    v4[0] = sub_1009461F8();
    v4[1] = sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60, &unk_100A9A440, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7220);
  }

  return result;
}

unint64_t sub_1009461F8()
{
  result = qword_100CE7228;
  if (!qword_100CE7228)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7230, &qword_100A9A7C8);
    v4[0] = sub_1009462B0();
    v4[1] = sub_10023FBF4(&qword_100CC2F68, &unk_100CC2F70, &unk_100A5BC50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7228);
  }

  return result;
}

unint64_t sub_1009462B0()
{
  result = qword_100CE7238;
  if (!qword_100CE7238)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7240, &qword_100A9A7D0);
    v4[0] = sub_10094633C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7238);
  }

  return result;
}

unint64_t sub_10094633C()
{
  result = qword_100CE7248;
  if (!qword_100CE7248)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7250, &qword_100A9A7D8);
    v4[0] = sub_10093F860(&qword_100CCCE30, type metadata accessor for ListLocationRowView, byte_100A4B750);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7248);
  }

  return result;
}

unint64_t sub_1009463F8()
{
  result = qword_100CE7258;
  if (!qword_100CE7258)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE71E8, &qword_100A9A7A8);
    v4[0] = sub_100945ED8();
    v4[1] = sub_100946484();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7258);
  }

  return result;
}

unint64_t sub_100946484()
{
  result = qword_100CE7260;
  if (!qword_100CE7260)
  {
    result = swift_getWitnessTable(asc_100A9AAE0, &type metadata for EnforceHigherZOrderDuringListLocationGeometryEffectModifier, v0, v1);
    atomic_store(result, &qword_100CE7260);
  }

  return result;
}

unint64_t sub_100946500()
{
  result = qword_100CE7278;
  if (!qword_100CE7278)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE7270, &qword_100A9A7E0);
    v4[0] = sub_1003F3F54();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE7278);
  }

  return result;
}

uint64_t sub_1009465F0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  sub_100003810(v8);
  v10 = v3 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(v3 + v6, v10);
}

unint64_t sub_1009466DC()
{
  result = qword_100CE72E8;
  if (!qword_100CE72E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE72B0, &qword_100A9A8E0);
    v4[0] = sub_100946768();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE72E8);
  }

  return result;
}

unint64_t sub_100946768()
{
  result = qword_100CE72F0;
  if (!qword_100CE72F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE72A8, &qword_100A9A8D8);
    v4[0] = sub_1009467F4();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE72F0);
  }

  return result;
}

unint64_t sub_1009467F4()
{
  result = qword_100CE72F8;
  if (!qword_100CE72F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE72A0, &qword_100A9A8D0);
    v4[0] = sub_10023FBF4(&qword_100CE7300, &qword_100CE72E0, &qword_100A9A910, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE72F8);
  }

  return result;
}

unint64_t sub_1009468AC()
{
  result = qword_100CE7308;
  if (!qword_100CE7308)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE72C8, &qword_100A9A8F8);
    v4[0] = sub_100946964();
    v4[1] = sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60, &unk_100A9A440, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7308);
  }

  return result;
}

unint64_t sub_100946964()
{
  result = qword_100CE7310;
  if (!qword_100CE7310)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CE72C0, &qword_100A9A8F0);
    v4[2] = sub_10022E824(&qword_100CE72B0, &qword_100A9A8E0);
    v4[3] = sub_1009466DC();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10023FBF4(&qword_100CC2F68, &unk_100CC2F70, &unk_100A5BC50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7310);
  }

  return result;
}

void sub_100946A90(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  if (v1 <= 0x3F)
  {
    sub_100942078(319, &qword_100CADCE8, &qword_100CA4B60, &qword_100A2EE20, &qword_100CA4B68);
    if (v2 <= 0x3F)
    {
      sub_100009D20(319, &unk_100CE7390, type metadata accessor for ListLocationGeometryEffectSourceState, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100946B8C()
{
  result = qword_100CE73C8;
  if (!qword_100CE73C8)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CE73D0, &qword_100A9AA70);
    v4[0] = sub_100945964();
    v4[1] = sub_1009459B8();
    v4[2] = sub_10023FBF4(&qword_100CE7190, &qword_100CE7178, &unk_100A9A748, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE73C8);
  }

  return result;
}

unint64_t sub_100946C58()
{
  result = qword_100CE73E8;
  if (!qword_100CE73E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7288, &qword_100A9A7F0);
    v4[0] = sub_100946D10();
    v4[1] = sub_10023FBF4(&qword_100CE7408, &unk_100CE7410, &unk_100A9AA88, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE73E8);
  }

  return result;
}

unint64_t sub_100946D10()
{
  result = qword_100CE73F0;
  if (!qword_100CE73F0)
  {
    v6[10] = v0;
    v6[11] = v1;
    v3 = sub_10022E824(&qword_100CE7280, &qword_100A9A7E8);
    v4 = sub_10022E824(&qword_100CE71C0, &qword_100A9A790);
    v5 = sub_10022E824(&qword_100CE7270, &qword_100A9A7E0);
    sub_10022E824(&qword_100CE71B8, &qword_100A9A788);
    sub_100945C9C();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_100946500();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10023FBF4(&qword_100CE73F8, &unk_100CE7400, &unk_100A9AA80, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE73F0);
  }

  return result;
}

unint64_t sub_100946E80()
{
  result = qword_100CE7418;
  if (!qword_100CE7418)
  {
    v11 = v0;
    v12 = v1;
    v3 = sub_10022E824(&qword_100CE7320, &unk_100A9A920);
    v4 = sub_10022E824(&qword_100CE72D0, &qword_100A9A900);
    v5 = sub_10022E824(&qword_100CE7318, &qword_100A9A918);
    sub_10022E824(&qword_100CE72C8, &qword_100A9A8F8);
    sub_1009468AC();
    v6[2] = v4;
    v6[3] = &type metadata for Solarium;
    v6[4] = v5;
    v6[5] = v4;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v8 = &protocol witness table for Solarium;
    v9 = swift_getOpaqueTypeConformance2();
    v10 = OpaqueTypeConformance2;
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10023FBF4(&qword_100CE1780, &qword_100CE15A0, &unk_100A6E340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE7418);
  }

  return result;
}

unint64_t sub_100947074()
{
  result = qword_100CE7448;
  if (!qword_100CE7448)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7428, &qword_100A9AB68);
    v4[0] = sub_10023FBF4(&qword_100CE7450, &qword_100CE7420, &qword_100A9AB60, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_10023FBF4(&unk_100CE1820, &qword_100CB3618, &qword_100A46110, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7448);
  }

  return result;
}

unint64_t sub_100947158()
{
  result = qword_100CE7458;
  if (!qword_100CE7458)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7440, &unk_100A9AB80);
    v4[0] = sub_10023FBF4(&qword_100CE7460, &qword_100CE7438, &qword_100A9AB78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_10023FBF4(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7458);
  }

  return result;
}

uint64_t sub_100947248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for NewsChannelLogoCollection.LogoTheme();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for NewsChannelLogoCollection();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = type metadata accessor for NewsChannel();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v11 = type metadata accessor for NewsArticle(0);
  v7[20] = v11;
  v7[21] = *(v11 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v12 = type metadata accessor for NewsArticlePlacement(0);
  v7[25] = v12;
  v7[26] = *(v12 - 8);
  v7[27] = swift_task_alloc();
  v13 = type metadata accessor for NewsArticle();
  v7[28] = v13;
  v7[29] = *(v13 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v7[35] = v14;
  v7[36] = *(v14 - 8);
  v7[37] = swift_task_alloc();
  v15 = type metadata accessor for Article();
  v7[38] = v15;
  v7[39] = *(v15 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v16 = type metadata accessor for ArticlePlacement();
  v7[44] = v16;
  v7[45] = *(v16 - 8);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();

  return _swift_task_switch(sub_100947664, 0, 0);
}

uint64_t sub_100947664()
{
  sub_100003B08();
  type metadata accessor for MainActor();
  *(v0 + 384) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009476F4, v2, v1);
}

uint64_t sub_1009476F4()
{
  sub_100003B08();

  type metadata accessor for NewsService();
  *(v0 + 392) = static NewsService.shared.getter();

  return _swift_task_switch(sub_10094776C, 0, 0);
}

uint64_t sub_10094776C(uint64_t a1)
{
  v73 = v1;
  v2 = News.placements.getter();
  v62 = *(v2 + 16);
  if (v62)
  {
    v3 = 0;
    sub_10000C7B8();
    v6 = v2 + v5;
    v7 = v1[39];
    v70 = v7;
    v71 = (v7 + 8);
    v63 = (v7 + 32);
    v59 = (v4 + 8);
    v60 = v2 + v5;
    v61 = v4;
    while (v3 < *(v2 + 16))
    {
      (*(v4 + 16))(v1[47], v6 + *(v4 + 72) * v3, v1[44]);
      v64 = v3 + 1;
      v8 = ArticlePlacement.articles.getter();
      v9 = 0;
      v10 = *(v8 + 16);
      v65 = _swiftEmptyArrayStorage;
      while (v10 != v9)
      {
        if (v9 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v11 = v1[49];
        v12 = v1[43];
        v13 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v14 = *(v70 + 72);
        (*(v70 + 16))(v12, v8 + v13 + v14 * v9, v1[38]);
        if (sub_10094915C(v12, v11))
        {
          v68 = *v63;
          (*v63)(v1[42], v1[43], v1[38]);
          v15 = v65;
          v72 = v65;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1006A8494();
            v15 = v72;
          }

          v17 = *(v15 + 16);
          v16 = *(v15 + 24);
          v18 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            sub_100004EE4(v16);
            v66 = v21;
            sub_1006A8494();
            v18 = v66;
            v15 = v72;
          }

          ++v9;
          v19 = v1[42];
          v20 = v1[38];
          *(v15 + 16) = v18;
          v65 = v15;
          v68(v15 + v13 + v17 * v14, v19, v20);
        }

        else
        {
          (*v71)(v1[43], v1[38]);
          ++v9;
        }
      }

      v22 = v65[2];
      if (v22)
      {
        v58 = v2;
        v23 = sub_100023578(_swiftEmptyArrayStorage);
        sub_10000369C(v23, v24, v25);
        v26 = v72;
        sub_10000C7B8();
        v28 = v65 + v27;
        v67 = *(v29 + 16);
        v69 = *(v29 + 72);
        do
        {
          v30 = v1[41];
          v31 = v1[38];
          v67(v30, v28, v31);
          v32 = Article.id.getter();
          v34 = v33;
          (*v71)(v30, v31);
          v72 = v26;
          v36 = v26[2];
          v35 = v26[3];
          if (v36 >= v35 >> 1)
          {
            v38 = sub_100004EE4(v35);
            sub_10000369C(v38, v36 + 1, 1);
            v26 = v72;
          }

          v26[2] = v36 + 1;
          v37 = &v26[2 * v36];
          v37[4] = v32;
          v37[5] = v34;
          v28 += v69;
          --v22;
        }

        while (v22);
        (*v59)(v1[47], v1[44]);

        v2 = v58;
      }

      else
      {
        v39 = v1[47];
        v40 = v1[44];

        (*v59)(v39, v40);
        v26 = _swiftEmptyArrayStorage;
      }

      sub_10035D984(v26);
      v4 = v61;
      v3 = v64;
      v6 = v60;
      if (v64 == v62)
      {
        goto LABEL_22;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_22:

    v1[50] = _swiftEmptyArrayStorage;
    if (qword_100CA2780 == -1)
    {
      goto LABEL_23;
    }
  }

  sub_100006BC4(&qword_100CA2780);
LABEL_23:
  v41 = type metadata accessor for Logger();
  v1[51] = sub_10000703C(v41, qword_100D90CD8);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v72 = v45;
    *v44 = 136446210;
    v46 = Array.description.getter();
    v48 = sub_100078694(v46, v47, &v72);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Fetching articles, articleIDs=%{public}s", v44, 0xCu);
    sub_100006F14(v45);
    sub_100003884(v45);
    sub_100003884(v44);
  }

  if (qword_100CA25F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NewsDataManager();
  sub_1000E10DC(&qword_100CE7500, v49, type metadata accessor for NewsDataManager, aU_77);
  Configurable.setting<A>(_:)();
  v50 = v1[5];
  if ((v50 & 0x8000000000000000) == 0)
  {
    sub_10074C298(v50);
    static Clock<>.continuous.getter();
    v51 = swift_task_alloc();
    v1[52] = v51;
    *v51 = v1;
    v51[1] = sub_100947E24;
    sub_10004EDC8();

    __asm { BR              X5 }
  }

  v54 = swift_task_alloc();
  v1[54] = v54;
  *v54 = v1;
  sub_100011048(v54);
  sub_10004EDC8();

  return NewsService.fetchArticles(for:)(v55);
}

uint64_t sub_100947E24()
{
  sub_100003B08();
  v2 = *v1;
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_10000CCF8();
  *v5 = v4;
  v2[53] = v0;

  if (v0)
  {
    (*(v2[36] + 8))(v2[37], v2[35]);

    return _swift_task_switch(sub_100947FA4, 0, 0);
  }

  else
  {
    (*(v2[36] + 8))(v2[37], v2[35]);
    v6 = swift_task_alloc();
    v2[54] = v6;
    *v6 = v4;
    sub_100011048(v6);
    v7 = v2[50];

    return NewsService.fetchArticles(for:)(v7);
  }
}

uint64_t sub_100947FA4()
{
  v16 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136446466;
    v5 = Array.description.getter();
    v7 = v6;

    sub_100078694(v5, v7, &v15);

    sub_10001A220();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100078694(v8, v9, &v15);

    *(v3 + 14) = v10;
    sub_100069C80(&_mh_execute_header, v11, v12, "Failed to fetch articles, articleIDs=%{public}s, error=%{public}s");
    swift_arrayDestroy();
    sub_100003884(v4);
    sub_100003884(v3);
  }

  else
  {
  }

  (*(v0 + 72))(_swiftEmptyArrayStorage);

  sub_10001D2D8();

  sub_100003B14();

  return v13();
}

uint64_t sub_10094820C()
{
  sub_100003B08();
  v2 = *v1;
  sub_10000CCF8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v4;
  *(v2 + 448) = v0;

  if (v0)
  {
    v5 = sub_100948EF4;
  }

  else
  {

    v5 = sub_100948320;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100948320()
{
  v154 = v0;
  v1 = v0;
  v150 = *(v0[55] + 16);
  if (v150)
  {
    v2 = 0;
    sub_10000C7B8();
    v145 = v3 + v4;
    v137 = (v5 + 32);
    v6 = &_swiftEmptyDictionarySingleton;
    v147 = v5;
    v135 = (v5 + 40);
    v140 = v3;
    while (v2 < *(v3 + 16))
    {
      v8 = v1[33];
      v7 = v1[34];
      v9 = v1[28];
      v10 = *(v147 + 72);
      v11 = *(v147 + 16);
      v11(v7, v145 + v10 * v2, v9);
      v12 = v6;
      v13 = NewsArticle.id.getter();
      v15 = v14;
      v11(v8, v7, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153[0] = v12;
      v17 = sub_100031B34();
      v19 = *(v12 + 16);
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_53;
      }

      v22 = v17;
      v23 = v18;
      sub_10022C350(&qword_100CE7508, &qword_100A9AC28);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21))
      {
        v24 = sub_100031B34();
        if ((v23 & 1) != (v25 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v22 = v24;
      }

      v26 = v144[33];
      v27 = v144[28];
      if (v23)
      {

        v6 = v153[0];
        (*v135)(*(v153[0] + 56) + v22 * v10, v26, v27);
        v28 = sub_100009300();
        v29(v28);
      }

      else
      {
        v30 = v153[0];
        *(v153[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v31 = (*(v30 + 48) + 16 * v22);
        *v31 = v13;
        v31[1] = v15;
        v6 = v30;
        (*v137)(*(v30 + 56) + v22 * v10, v26, v27);
        v32 = sub_100009300();
        v33(v32);
        v34 = v6[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_54;
        }

        v6[2] = v36;
      }

      ++v2;
      v1 = v144;
      v3 = v140;
      if (v150 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_52;
  }

  v6 = &_swiftEmptyDictionarySingleton;
LABEL_15:

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v153[0] = v40;
    *v39 = 136446210;
    v41 = Dictionary.description.getter();
    v43 = sub_100078694(v41, v42, v153);

    *(v39 + 4) = v43;
    sub_10001363C(&_mh_execute_header, v44, v45, "Received articles, articles=%{public}s");
    sub_100006F14(v40);
    sub_100003884(v40);
    sub_100003884(v39);
  }

  v46 = News.placements.getter();
  v47 = *(v46 + 16);
  if (!v47)
  {

    v52 = _swiftEmptyArrayStorage;
LABEL_43:

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v153[0] = v105;
      *v104 = 136446210;
      v106 = Array.description.getter();
      v108 = sub_100078694(v106, v107, v153);

      *(v104 + 4) = v108;
      sub_10001363C(&_mh_execute_header, v109, v110, "Converted articles into result, result=%{public}s");
      sub_100006F14(v105);
      sub_100003884(v105);
      sub_100003884(v104);
    }

    (v1[9])(v52);

    sub_100003B14();

    v111();
    return;
  }

  v48 = v1[45];
  v49 = v1[39];
  v50 = v1[29];
  v143 = v1[22];
  v124 = v1[20];
  v148 = v1[15];
  v151 = v1[18];
  v51 = v1[12];
  sub_100023578(_swiftEmptyArrayStorage);
  sub_1006A7824();
  v52 = v153[0];
  v112 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v123 = enum case for NewsChannelLogoCollection.LogoTheme.mask(_:);
  v121 = (v51 + 8);
  v122 = (v51 + 104);
  v120 = (v148 + 8);
  v125 = v50;
  v126 = v6;
  v118 = (v50 + 8);
  v119 = (v151 + 8);
  v127 = (v49 + 8);
  v113 = v48;
  v114 = v47;
  v53 = 0;
  v115 = v46;
  while (v53 < *(v46 + 16))
  {
    v117 = v53;
    (*(v113 + 16))(v1[46], v112 + *(v113 + 72) * v53, v1[44]);
    v54 = *(ArticlePlacement.articles.getter() + 16);
    if (v54)
    {
      v116 = v52;
      sub_10000C7B8();
      v57 = v55 + v56;
      v149 = *(v58 + 16);
      v152 = *(v58 + 72);
      v146 = _swiftEmptyArrayStorage;
      v59 = v127;
      while (1)
      {
        v149(v1[40], v57, v1[38]);
        Article.id.getter();
        if (v6[2])
        {
          v60 = sub_100031B34();
          v62 = v61;

          if (v62)
          {
            v63 = v1[31];
            v64 = v1[32];
            v65 = v1[30];
            v66 = v1[28];
            v138 = v1[22];
            v67 = v6[7] + *(v125 + 72) * v60;
            v68 = *(v125 + 16);
            v68(v63, v67, v66);
            (*(v125 + 32))(v64, v63, v66);
            v68(v65, v64, v66);
            v69 = Article.headlineOverride.getter();
            v71 = v70;
            v142 = Article.phenomena.getter();
            v141 = Article.alertIds.getter();
            *v138 = NewsArticle.id.getter();
            v143[1] = v72;
            if (v71)
            {
              v73 = v144;
            }

            else
            {
              v74 = NewsArticle.title.getter();
              v71 = v75;
              v73 = v144;
              v69 = v74;
            }

            v133 = v73[38];
            v134 = v73[40];
            v76 = v73[30];
            v131 = v73[28];
            v132 = v73[32];
            v136 = v73[23];
            v139 = v73[24];
            v77 = v73[22];
            v78 = v73[19];
            v79 = v73[16];
            v80 = v73[13];
            v129 = v73[14];
            v130 = v73[17];
            v128 = v73[11];
            v143[2] = v69;
            v143[3] = v71;
            NewsArticle.thumbnailURL.getter();
            NewsArticle.publishDate.getter();
            NewsArticle.url.getter();
            NewsArticle.channel.getter();
            v81 = (v77 + v124[9]);
            *v81 = NewsChannel.id.getter();
            v81[1] = v82;
            v81[2] = NewsChannel.name.getter();
            v81[3] = v83;
            NewsChannel.logo.getter();
            (*v122)(v80, v123, v128);
            type metadata accessor for NewsChannel(0);
            NewsChannelLogoCollection.url(for:)();
            (*v121)(v80, v128);
            (*v120)(v79, v129);
            (*v119)(v78, v130);
            v84 = *v118;
            (*v118)(v76, v131);
            v84(v132, v131);
            v59 = v127;
            (*v127)(v134, v133);
            *(v77 + v124[10]) = _swiftEmptyArrayStorage;
            *(v77 + v124[11]) = v142;
            *(v77 + v124[12]) = v141;
            sub_100949EA4(v77, v136, type metadata accessor for NewsArticle);
            sub_100949EA4(v136, v139, type metadata accessor for NewsArticle);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v6 = v126;
              v85 = v146;
            }

            else
            {
              sub_1006A0164();
              v85 = v91;
              v6 = v126;
            }

            v86 = v85[2];
            v1 = v144;
            if (v86 >= v85[3] >> 1)
            {
              sub_1006A0164();
              v85 = v92;
            }

            v85[2] = v86 + 1;
            sub_10000C7B8();
            v146 = v87;
            sub_100949EA4(v90, v87 + v88 + *(v89 + 72) * v86, type metadata accessor for NewsArticle);
            goto LABEL_34;
          }
        }

        else
        {
        }

        (*v59)(v1[40], v1[38]);
LABEL_34:
        v57 += v152;
        if (!--v54)
        {

          v52 = v116;
          v93 = v146;
          goto LABEL_38;
        }
      }
    }

    v93 = _swiftEmptyArrayStorage;
LABEL_38:
    v94 = v1[27];
    ArticlePlacement.location.getter();
    v95 = sub_100009300();
    v96(v95);
    *v94 = v93;
    v153[0] = v52;
    v98 = v52[2];
    v97 = v52[3];
    v46 = v115;
    if (v98 >= v97 >> 1)
    {
      sub_100004EE4(v97);
      sub_1006A7824();
      v52 = v153[0];
    }

    v53 = v117 + 1;
    v52[2] = v98 + 1;
    sub_10000C7B8();
    sub_100949EA4(v101, v52 + v99 + *(v100 + 72) * v98, type metadata accessor for NewsArticlePlacement);
    if (v117 + 1 == v114)
    {

      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_100948EF4()
{
  v16 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136446466;
    v5 = Array.description.getter();
    v7 = v6;

    sub_100078694(v5, v7, &v15);

    sub_10001A220();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100078694(v8, v9, &v15);

    *(v3 + 14) = v10;
    sub_100069C80(&_mh_execute_header, v11, v12, "Failed to fetch articles, articleIDs=%{public}s, error=%{public}s");
    swift_arrayDestroy();
    sub_100003884(v4);
    sub_100003884(v3);
  }

  else
  {
  }

  (*(v0 + 72))(_swiftEmptyArrayStorage);

  sub_10001D2D8();

  sub_100003B14();

  return v13();
}

uint64_t sub_10094915C(uint64_t a1, uint64_t (*a2)(char *, char *))
{
  v4 = type metadata accessor for Article();
  v5 = *(v4 - 8);
  v114 = v4;
  v115 = v5;
  __chkstk_darwin(v4);
  v113 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v102 - v8;
  __chkstk_darwin(v9);
  v105 = &v102 - v10;
  __chkstk_darwin(v11);
  v104 = &v102 - v12;
  v13 = type metadata accessor for Locale.Language();
  v106 = *(v13 - 8);
  v107 = v13;
  __chkstk_darwin(v13);
  v110 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  v18 = type metadata accessor for Locale();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v103 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v108 = &v102 - v22;
  __chkstk_darwin(v23);
  v25 = &v102 - v24;
  v26 = sub_10022C350(&qword_100CA3DD8, &qword_100A2DEB0);
  __chkstk_darwin(v26 - 8);
  v109 = (&v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = &v102 - v29;
  v31 = Article.supportedStorefronts.getter();
  v112 = a2;
  v118[0] = NewsService.storeFrontID.getter();
  v118[1] = v32;
  v117 = v118;
  v33 = v119;
  LOBYTE(a2) = sub_100745860(sub_10031EF08, v116, v31);
  v119 = v33;

  if ((a2 & 1) == 0)
  {
    if (qword_100CA2780 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000703C(v40, qword_100D90CD8);
    v42 = v114;
    v41 = v115;
    v43 = *(v115 + 16);
    v44 = v111;
    v43(v111, a1, v114);
    v45 = v113;
    v43(v113, a1, v42);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118[0] = v110;
      *v48 = 136446722;
      LODWORD(v109) = v47;
      v49 = Article.id.getter();
      v51 = v50;
      v52 = *(v41 + 8);
      v52(v44, v42);
      v53 = sub_100078694(v49, v51, v118);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v54 = NewsService.storeFrontID.getter();
      v56 = sub_100078694(v54, v55, v118);

      *(v48 + 14) = v56;
      *(v48 + 22) = 2082;
      v57 = v113;
      Article.supportedStorefronts.getter();
      v58 = Array.description.getter();
      v60 = v59;

      v52(v57, v42);
      v61 = sub_100078694(v58, v60, v118);

      *(v48 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v46, v109, "Filtering article with unsupported storefront, id=%{public}s, storefront=%{public}s, supportedStorefronts=%{public}s", v48, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v68 = *(v41 + 8);
      v68(v45, v42);
      v68(v44, v42);
    }

    return 0;
  }

  v102 = a1;
  Article.locale.getter();
  Locale.language.getter();
  v34 = *(v19 + 8);
  v111 = (v19 + 8);
  v112 = v34;
  v113 = v18;
  v34(v25, v18);
  Locale.Language.languageCode.getter();
  v35 = *(v106 + 8);
  v36 = v107;
  v35(v17);
  v37 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v30, 1, v37) == 1)
  {
    sub_10003FDF4(v30, &qword_100CA3DD8, &qword_100A2DEB0);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v38 = Locale.LanguageCode.identifier.getter();
    v39 = v62;
    (*(*(v37 - 8) + 8))(v30, v37);
  }

  v63 = v108;
  v64 = v109;
  static Locale.current.getter();
  v65 = v110;
  Locale.language.getter();
  v112(v63, v113);
  Locale.Language.languageCode.getter();
  (v35)(v65, v36);
  if (sub_100024D10(v64, 1, v37) == 1)
  {
    sub_10003FDF4(v64, &qword_100CA3DD8, &qword_100A2DEB0);
    v66 = v115;
    v67 = v102;
    if (!v39)
    {
      return 1;
    }

    goto LABEL_23;
  }

  v69 = Locale.LanguageCode.identifier.getter();
  v71 = v70;
  (*(*(v37 - 8) + 8))(v64, v37);
  v66 = v115;
  if (!v39)
  {
    v67 = v102;
    if (!v71)
    {
      return 1;
    }

LABEL_23:

LABEL_24:
    if (qword_100CA2780 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000703C(v74, qword_100D90CD8);
    v75 = *(v66 + 16);
    v76 = v104;
    v77 = v67;
    v78 = v67;
    v79 = v114;
    v75(v104, v77, v114);
    v80 = v105;
    v75(v105, v78, v79);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v118[0] = v115;
      *v83 = 136446722;
      LODWORD(v110) = v82;
      v84 = Article.id.getter();
      v86 = v85;
      v108 = *(v66 + 8);
      (v108)(v76, v79);
      v87 = sub_100078694(v84, v86, v118);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2082;
      v109 = v81;
      v88 = v103;
      Article.locale.getter();
      v107 = sub_1000E10DC(&qword_100CC4CB8, 255, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v89 = v113;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = v112;
      v112(v88, v89);
      (v108)(v80, v114);
      v94 = sub_100078694(v90, v92, v118);

      *(v83 + 14) = v94;
      *(v83 + 22) = 2082;
      static Locale.current.getter();
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v93(v88, v89);
      v98 = sub_100078694(v95, v97, v118);

      *(v83 + 24) = v98;
      v99 = v109;
      _os_log_impl(&_mh_execute_header, v109, v110, "Filtering article with mismatched language, id=%{public}s, article locale=%{public}s, current locale=%{public}s", v83, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v100 = *(v66 + 8);
      v100(v80, v79);
      v100(v76, v79);
    }

    return 0;
  }

  v67 = v102;
  if (!v71)
  {
    goto LABEL_23;
  }

  if (v38 != v69 || v39 != v71)
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      return 1;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_100949C78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for News() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100949DBC;

  return sub_100947248(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100949DBC()
{
  sub_100003B08();
  v1 = *v0;
  sub_10000CCF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_100949EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100949F0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 == 1)
    {
      if (a8 & 0xC0) == 0x40 && (static Image.== infix(_:_:)())
      {
        v14 = a2 == a6 && a3 == a7;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v15 = a8 ^ a4 ^ 1;
          return v15 & 1;
        }
      }

LABEL_23:
      v15 = 0;
      return v15 & 1;
    }

    if ((a8 & 0xC0) != 0x80 || a6 | a5 | a7 || a8 != 128)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = 1;
    return v15 & 1;
  }

  if (a8 >= 0x40u)
  {
    goto LABEL_23;
  }

  if (a1 == a5 && a2 == a6)
  {
    goto LABEL_22;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10094A02C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 25))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_10094A078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10094A0D4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t sub_10094A134@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1[2];
  v13 = a1[1];
  *v14 = v9;
  *&v14[10] = *(a1 + 42);
  v12 = *a1;
  __src[0] = v12;
  __src[1] = v13;
  __src[2] = *v14;
  __src[3] = *&v14[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  memcpy(a4, v4, 0x59uLL);
  memcpy((a4 + 96), __src, 0x50uLL);
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = *v14;
  v16[3] = *&v14[16];
  v17 = a2;
  v18 = a3;
  sub_1000955E0(a1, v11, &qword_100CE7668, &qword_100A9AE60);
  sub_1000955E0(v4, v11, &qword_100CE7660, &qword_100A9AE58);
  sub_1000955E0(__src, v11, &qword_100CE7670, &qword_100A9AE68);
  return sub_1000180EC(v16, &qword_100CE7670, &qword_100A9AE68);
}

uint64_t sub_10094A240@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v15 = a1[1];
  *v16 = v10;
  *&v16[10] = *(a1 + 42);
  v14 = *a1;
  __src[0] = v14;
  __src[1] = v15;
  __src[2] = *v16;
  __src[3] = *&v16[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  sub_1000955E0(v5, a4, &qword_100CE7698, &qword_100A9AE88);
  v11 = sub_10022C350(&qword_100CE76A0, &qword_100A9AE90);
  memcpy((a4 + *(v11 + 36)), __src, 0x50uLL);
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = *v16;
  v18[3] = *&v16[16];
  v19 = a2;
  v20 = a3;
  sub_1000955E0(a1, v13, &qword_100CE7668, &qword_100A9AE60);
  sub_1000955E0(__src, v13, &qword_100CE7670, &qword_100A9AE68);
  return sub_1000180EC(v18, &qword_100CE7670, &qword_100A9AE68);
}

uint64_t sub_10094A358@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  sub_1000037E8();
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  sub_100006BE4();
  *a2 = v9;
  *(a2 + 8) = *(&v9 + 1);
  sub_100006BE4();
  *(a2 + 16) = v9;
  *(a2 + 24) = *(&v9 + 1);
  sub_10022C350(&qword_100CA6078, &unk_100A30870);
  sub_100006BE4();
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  sub_100006BE4();
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  v5 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  type metadata accessor for SyncedData();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  v6 = a2 + *(v5 + 48);
  sub_100006BE4();
  *v6 = v9;
  *(v6 + 16) = v10;
  return sub_100013188(a1, a2 + *(v5 + 52));
}

uint64_t type metadata accessor for DebugLocationSyncingPlaygroundView(uint64_t a1)
{
  result = qword_100CE7570;
  if (!qword_100CE7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10094A598(uint64_t a1)
{
  sub_100081C98();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100082768(319, &qword_100CAD0F0, &qword_100CA6078, &unk_100A30870);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_100082768(319, &qword_100CE7580, &qword_100CCBB98, &unk_100A9AD00);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        v2 = sub_10094A6A4();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_10094A6A4()
{
  result = qword_100CE7588;
  if (!qword_100CE7588)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE7588);
  }

  return result;
}

uint64_t sub_10094A71C(int a1, uint64_t a2, char a3)
{
  v55 = a1;
  v6 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v51 - v10;
  __chkstk_darwin(v11);
  v57 = &v51 - v12;
  __chkstk_darwin(v13);
  v58 = &v51 - v14;
  v62 = type metadata accessor for SyncedData();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v51 - v17;
  __chkstk_darwin(v18);
  v59 = &v51 - v19;
  v20 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v20 - 8);
  v22 = &v51 - v21;
  v23 = type metadata accessor for URL();
  v66 = *(v23 - 8);
  __chkstk_darwin(v23);
  v67 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v25 = *(v60 + 48);
  v65 = v3;
  v26 = (v3 + v25);
  v28 = *v26;
  v27 = v26[1];
  v29 = v26[2];
  v69._countAndFlagsBits = *v26;
  v69._object = v27;
  v70 = v29;
  v68 = 0;
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.setter();
  if (a3)
  {
    goto LABEL_5;
  }

  sub_10002B30C(a2, v22);
  if (sub_100024D10(v22, 1, v23) == 1)
  {
    sub_1000180EC(v22, &qword_100CB3AB0, &unk_100A2FB80);
LABEL_5:
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v31._countAndFlagsBits = 0xD00000000000001CLL;
    v31._object = 0x8000000100AE6BF0;
    String.append(_:)(v31);
    v68._countAndFlagsBits = a2;
    LOBYTE(v68._object) = a3 & 1;
    sub_10022C350(&qword_100CE7600, &unk_100A9ADB8);
    _print_unlocked<A, B>(_:_:)();
    v32 = v69;
    v69._countAndFlagsBits = v28;
    v69._object = v27;
    v70 = v29;
    v68 = v32;
    return State.wrappedValue.setter();
  }

  v54 = v8;
  (*(v66 + 32))(v67, v22, v23);
  v30 = Data.init(contentsOf:options:)();
  v53 = v23;
  v34 = v30;
  v36 = v35;
  sub_1006DE088(v30, v35);
  sub_10094FCA0(&qword_100CCBBD0, &type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
  v37 = v59;
  v51 = v34;
  v52 = v36;
  v38 = v62;
  CRDT.init(serializedData:)();
  v39 = URL.path(percentEncoded:)(0);
  v40 = v64;
  if (v55)
  {
    v41 = *(v65 + 72);
    v69 = *(v65 + 56);
  }

  else
  {
    v41 = *(v65 + 48);
    v69 = *(v65 + 32);
  }

  v70 = v41;
  v68 = v39;
  State.wrappedValue.setter();
  v42 = v58;
  (*(v40 + 16))(v58, v37, v38);
  sub_10001B350(v42, 0, 1, v38);
  sub_1000955E0(v42, v57, &qword_100CCBB98, &unk_100A9AD00);
  sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  State.wrappedValue.setter();
  sub_1000180EC(v42, &qword_100CCBB98, &unk_100A9AD00);
  (*(v40 + 8))(v37, v38);
  v43 = v63;
  v44 = v67;
  sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  v45 = v61;
  State.wrappedValue.getter();
  if (sub_100024D10(v45, 1, v38) == 1)
  {
    (*(v66 + 8))(v44, v53);
    sub_10030F778(v51, v52);
    return sub_1000180EC(v45, &qword_100CCBB98, &unk_100A9AD00);
  }

  v46 = *(v40 + 32);
  v46();
  v45 = v54;
  State.wrappedValue.getter();
  if (sub_100024D10(v45, 1, v38) == 1)
  {
    sub_10030F778(v51, v52);
    (*(v40 + 8))(v43, v38);
    (*(v66 + 8))(v44, v53);
    return sub_1000180EC(v45, &qword_100CCBB98, &unk_100A9AD00);
  }

  (v46)(v56, v45, v38);
  v47 = v58;
  SyncedData.uniqueMerging(_:)();
  sub_10001B350(v47, 0, 1, v38);
  v48 = v57;
  sub_1000955E0(v47, v57, &qword_100CCBB98, &unk_100A9AD00);
  State.wrappedValue.setter();
  sub_1000180EC(v47, &qword_100CCBB98, &unk_100A9AD00);
  v49 = v56;
  SyncedData.uniqueMerging(_:)();
  sub_10001B350(v47, 0, 1, v38);
  sub_1000955E0(v47, v48, &qword_100CCBB98, &unk_100A9AD00);
  State.wrappedValue.setter();
  sub_10030F778(v51, v52);
  sub_1000180EC(v47, &qword_100CCBB98, &unk_100A9AD00);
  v50 = *(v40 + 8);
  v50(v49, v38);
  v50(v43, v38);
  return (*(v66 + 8))(v67, v53);
}

uint64_t sub_10094B084@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v11 = v1;
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CE75D8, &qword_100A9AD98);
  sub_10094F710();
  ScrollView.init(_:showsIndicators:content:)();
  sub_10094F7C8(v1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10094F82C(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  result = sub_10022C350(&qword_100CE75F8, &unk_100A9ADA8);
  v9 = (a1 + *(result + 36));
  *v9 = sub_10094F890;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

double sub_10094B1FC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CE7608, &qword_100A9ADC8);
  sub_10094B290(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = static Edge.Set.all.getter();
  v5 = a2 + *(sub_10022C350(&qword_100CE75D8, &qword_100A9AD98) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_10094B290@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v88 = sub_10022C350(&qword_100CE7610, &qword_100A9ADD0);
  __chkstk_darwin(v88);
  v85 = &v75 - v3;
  v4 = sub_10022C350(&qword_100CE7618, &qword_100A9ADD8);
  __chkstk_darwin(v4 - 8);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = (&v75 - v7);
  v8 = type metadata accessor for SyncedData();
  v81 = *(v8 - 8);
  __chkstk_darwin(v8);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v75 - v11;
  v12 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v12 - 8);
  v79 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v75 - v15;
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  __chkstk_darwin(v20);
  v87 = &v75 - v21;
  v22 = sub_10022C350(&qword_100CE7620, &qword_100A9ADE0);
  __chkstk_darwin(v22 - 8);
  v90 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v75 - v25;
  v26 = sub_10022C350(&qword_100CE7628, &qword_100A9ADE8);
  __chkstk_darwin(v26 - 8);
  v89 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v75 - v29;
  v31 = *(type metadata accessor for DebugLocationSyncingPlaygroundView(0) + 48);
  v93 = a1;
  v32 = &a1[v31];
  v33 = *(v32 + 2);
  *v99 = *v32;
  v99[2] = v33;
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.getter();
  if (*&v98[8])
  {
    *v99 = *v98;
    sub_10002D5A4();
    v34 = Text.init<A>(_:)();
    v76 = v35;
    v77 = v34;
    v37 = v36;
    v78 = v19;
    v75 = v38;
    v39 = v30;
    v40 = static Edge.Set.all.getter();
    LOBYTE(v99[0]) = v37 & 1;
    v98[0] = 1;
    static Color.red.getter();
    v41 = v16;
    v42 = Color.opacity(_:)();

    v43 = static Edge.Set.all.getter();
    v100[0] = v77;
    v100[1] = v76;
    v101 = v37 & 1;
    v102 = v75;
    v19 = v78;
    v103 = v40;
    v30 = v39;
    v104 = 0u;
    v105 = 0u;
    v106 = 1;
    v107 = v42;
    v16 = v41;
    v108 = v43;
    v44 = static Color.red.getter();
    sub_10094BDA0(v44, v98);

    sub_1000180EC(v100, &qword_100CE7660, &qword_100A9AE58);
    memcpy(v99, v98, 0xB0uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v109, v99, 0xB0uLL);
  }

  else
  {
    sub_10094F8A8(v109);
  }

  *v30 = static VerticalAlignment.top.getter();
  *(v30 + 1) = 0x4034000000000000;
  v30[16] = 0;
  v45 = sub_10022C350(&qword_100CE7630, &qword_100A9ADF0);
  sub_10094BFB8(v93, &v30[*(v45 + 44)]);
  sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  v46 = v87;
  State.wrappedValue.getter();
  v47 = sub_100024D10(v46, 1, v8);
  sub_1000180EC(v46, &qword_100CCBB98, &unk_100A9AD00);
  if (v47 != 1 || (State.wrappedValue.getter(), v48 = sub_100024D10(v19, 1, v8), sub_1000180EC(v19, &qword_100CCBB98, &unk_100A9AD00), v48 != 1))
  {
    State.wrappedValue.getter();
    if (sub_100024D10(v16, 1, v8) == 1)
    {
      sub_1000180EC(v16, &qword_100CCBB98, &unk_100A9AD00);
    }

    else
    {
      v51 = v81;
      v52 = v82;
      v53 = *(v81 + 32);
      (v53)(v82, v16, v8);
      v54 = v79;
      State.wrappedValue.getter();
      if (sub_100024D10(v54, 1, v8) != 1)
      {
        v53();
        v55 = static HorizontalAlignment.center.getter();
        LOBYTE(v95[0]) = 1;
        sub_10094D434(v52, v93, v99);
        memcpy(v96, v99, 0x60uLL);
        memcpy(v97, v99, 0x60uLL);
        sub_1000955E0(v96, v98, &qword_100CAD230, &qword_100A9AE20);
        sub_1000180EC(v97, &qword_100CAD230, &qword_100A9AE20);
        memcpy(&v94[7], v96, 0x60uLL);
        v56 = v30;
        v57 = v95[0];
        static Font.body.getter();
        v58 = Font.monospaced()();

        KeyPath = swift_getKeyPath();
        v60 = static Edge.Set.all.getter();
        LOBYTE(v99[0]) = 1;
        *v98 = v55;
        *&v98[8] = 0;
        v98[16] = v57;
        v30 = v56;
        memcpy(&v98[17], v94, 0x67uLL);
        *&v98[120] = KeyPath;
        *&v98[128] = v58;
        v98[136] = v60;
        *&v98[137] = v95[0];
        *&v98[140] = *(v95 + 3);
        memset(&v98[144], 0, 32);
        v98[176] = 1;
        LocationSearchEntityFromStringResolver.init()();
        v61 = *(v51 + 8);
        v61(v80, v8);
        v61(v82, v8);
        memcpy(v99, v98, 0xB1uLL);
        goto LABEL_13;
      }

      sub_1000180EC(v54, &qword_100CCBB98, &unk_100A9AD00);
      (*(v51 + 8))(v52, v8);
    }

    sub_10094F8B0(v99);
LABEL_13:
    v62 = static VerticalAlignment.top.getter();
    v63 = v83;
    *v83 = v62;
    *(v63 + 8) = 0x4034000000000000;
    *(v63 + 16) = 0;
    v64 = sub_10022C350(&qword_100CE7648, &qword_100A9AE08);
    sub_10094DFB4(v93, v63 + *(v64 + 44));
    memcpy(v96, v99, 0xB1uLL);
    v65 = v84;
    sub_1000955E0(v63, v84, &qword_100CE7618, &qword_100A9ADD8);
    memcpy(v97, v96, 0xB1uLL);
    v66 = v85;
    memcpy(v85, v96, 0xB1uLL);
    v67 = sub_10022C350(&qword_100CE7650, &qword_100A9AE10);
    sub_1000955E0(v65, v66 + *(v67 + 48), &qword_100CE7618, &qword_100A9ADD8);
    sub_1000955E0(v97, v98, &qword_100CE7658, &qword_100A9AE18);
    sub_1000180EC(v63, &qword_100CE7618, &qword_100A9ADD8);
    sub_1000180EC(v65, &qword_100CE7618, &qword_100A9ADD8);
    memcpy(v98, v96, sizeof(v98));
    sub_1000180EC(v98, &qword_100CE7658, &qword_100A9AE18);
    v68 = v92;
    sub_10002F758(v66, v92, &qword_100CE7610, &qword_100A9ADD0);
    v49 = v68;
    v50 = 0;
    goto LABEL_14;
  }

  v49 = v92;
  v50 = 1;
LABEL_14:
  sub_10001B350(v49, v50, 1, v88);
  v86 = v30;
  memcpy(v97, v109, 0xB0uLL);
  v69 = v89;
  sub_1000955E0(v30, v89, &qword_100CE7628, &qword_100A9ADE8);
  v70 = v92;
  v71 = v90;
  sub_1000955E0(v92, v90, &qword_100CE7620, &qword_100A9ADE0);
  memcpy(v98, v97, 0xB0uLL);
  v72 = v91;
  memcpy(v91, v97, 0xB0uLL);
  v73 = sub_10022C350(&qword_100CE7638, &qword_100A9ADF8);
  sub_1000955E0(v69, v72 + *(v73 + 48), &qword_100CE7628, &qword_100A9ADE8);
  sub_1000955E0(v71, v72 + *(v73 + 64), &qword_100CE7620, &qword_100A9ADE0);
  sub_1000955E0(v98, v99, &qword_100CE7640, &qword_100A9AE00);
  sub_1000180EC(v70, &qword_100CE7620, &qword_100A9ADE0);
  sub_1000180EC(v86, &qword_100CE7628, &qword_100A9ADE8);
  sub_1000180EC(v71, &qword_100CE7620, &qword_100A9ADE0);
  sub_1000180EC(v69, &qword_100CE7628, &qword_100A9ADE8);
  memcpy(v99, v97, 0xB0uLL);
  return sub_1000180EC(v99, &qword_100CE7640, &qword_100A9AE00);
}

uint64_t sub_10094BDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v7 = static Alignment.center.getter();
  *&v16 = v10 * 0.5;
  *(&v16 + 1) = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = a1;
  v23 = 256;
  sub_10094A134(&v16, v7, v8, a2);
  v24[0] = v10 * 0.5;
  v24[1] = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = a1;
  v31 = 256;
  return sub_1000180EC(v24, &qword_100CE7668, &qword_100A9AE60);
}

uint64_t sub_10094BEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v7 = static Alignment.center.getter();
  *&v16 = v10 * 0.5;
  *(&v16 + 1) = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = a1;
  v23 = 256;
  sub_10094A240(&v16, v7, v8, a2);
  v24[0] = v10 * 0.5;
  v24[1] = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = a1;
  v31 = 256;
  return sub_1000180EC(v24, &qword_100CE7668, &qword_100A9AE60);
}

uint64_t sub_10094BFB8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE7708, &qword_100A9AF40);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10022C350(&qword_100CE7710, &qword_100A9AF48);
  sub_10094C1B4(a1, &v15[*(v16 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_10094CB24(a1, &v12[*(v16 + 44)]);
  sub_1000955E0(v15, v9, &qword_100CE7708, &qword_100A9AF40);
  sub_1000955E0(v12, v6, &qword_100CE7708, &qword_100A9AF40);
  sub_1000955E0(v9, a2, &qword_100CE7708, &qword_100A9AF40);
  v17 = sub_10022C350(&qword_100CE7718, &qword_100A9AF50);
  sub_1000955E0(v6, a2 + *(v17 + 48), &qword_100CE7708, &qword_100A9AF40);
  sub_1000180EC(v12, &qword_100CE7708, &qword_100A9AF40);
  sub_1000180EC(v15, &qword_100CE7708, &qword_100A9AF40);
  sub_1000180EC(v6, &qword_100CE7708, &qword_100A9AF40);
  return sub_1000180EC(v9, &qword_100CE7708, &qword_100A9AF40);
}

uint64_t sub_10094C1B4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = type metadata accessor for PlainButtonStyle();
  v31 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v30 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CE7720, &qword_100A9AF58);
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v27 - v10;
  v12 = sub_10022C350(&qword_100CE7728, &qword_100A9AF60);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  __chkstk_darwin(v12);
  v28 = a1;
  v29 = &v27 - v14;
  sub_10094F7C8(a1, v8);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_10094F82C(v8, v16 + v15);
  v37 = a1;
  sub_10022C350(&qword_100CE76A0, &qword_100A9AE90);
  sub_10094F9EC();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v17 = sub_100006F64(&qword_100CE7768, &qword_100CE7720, &qword_100A9AF58, &protocol conformance descriptor for Button<A>);
  v18 = sub_10094FCA0(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v20 = v35;
  v19 = v36;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v4, v19);
  (*(v9 + 8))(v11, v20);
  v21 = v28;
  v22 = *(v28 + 1);
  v42 = *v28;
  v43 = v22;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  LODWORD(v31) = v40;
  sub_10022C350(&qword_100CE7770, &qword_100A9AF70);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UTType.data.getter();
  sub_10094F7C8(v21, v8);
  v23 = swift_allocObject();
  sub_10094F82C(v8, v23 + v15);
  v38 = v35;
  v39 = v36;
  v40 = v17;
  v41 = v18;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v29;
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  return (*(v33 + 8))(v25, v24);
}

uint64_t sub_10094C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_10022C350(&qword_100CE7688, &qword_100A9AE78);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_10022C350(&qword_100CE7690, &qword_100A9AE80);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v27 = &v26 - v9;
  v28 = sub_10022C350(&qword_100CE7698, &qword_100A9AE88) - 8;
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  State.wrappedValue.getter();
  v15 = *(a1 + 48);
  __src[0] = *(a1 + 32);
  *&__src[1] = v15;
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.getter();
  v17 = v30;
  v16 = v31;
  v18 = static Color.blue.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = sub_10022C350(&qword_100CE76A8, &qword_100A9AE98);
  sub_10094E894(0xD000000000000011, 0x8000000100AE6CB0, v14, v17, v16, &v6[*(v19 + 44)]);

  v20 = static Edge.Set.all.getter();
  v21 = &v6[*(v4 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v27;
  sub_10002F758(v6, v27, &qword_100CE7688, &qword_100A9AE78);
  memcpy((v22 + *(v8 + 44)), __src, 0x70uLL);
  v23 = Color.opacity(_:)();
  LOBYTE(v17) = static Edge.Set.all.getter();
  sub_10002F758(v22, v11, &qword_100CE7690, &qword_100A9AE80);
  v24 = &v11[*(v28 + 44)];
  *v24 = v23;
  v24[8] = v17;
  sub_10094BEAC(v18, v29);

  sub_1000180EC(v11, &qword_100CE7698, &qword_100A9AE88);
  return sub_1000180EC(v14, &qword_100CCBB98, &unk_100A9AD00);
}

uint64_t sub_10094CB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = type metadata accessor for PlainButtonStyle();
  v31 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v30 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CE7720, &qword_100A9AF58);
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v27 - v10;
  v12 = sub_10022C350(&qword_100CE7728, &qword_100A9AF60);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  __chkstk_darwin(v12);
  v28 = a1;
  v29 = &v27 - v14;
  sub_10094F7C8(a1, v8);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_10094F82C(v8, v16 + v15);
  v37 = a1;
  sub_10022C350(&qword_100CE76A0, &qword_100A9AE90);
  sub_10094F9EC();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v17 = sub_100006F64(&qword_100CE7768, &qword_100CE7720, &qword_100A9AF58, &protocol conformance descriptor for Button<A>);
  v18 = sub_10094FCA0(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v20 = v35;
  v19 = v36;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v4, v19);
  (*(v9 + 8))(v11, v20);
  v21 = v28;
  v22 = *(v28 + 24);
  v42 = *(v28 + 16);
  v43 = v22;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  LODWORD(v31) = v40;
  sub_10022C350(&qword_100CE7770, &qword_100A9AF70);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UTType.data.getter();
  sub_10094F7C8(v21, v8);
  v23 = swift_allocObject();
  sub_10094F82C(v8, v23 + v15);
  v38 = v35;
  v39 = v36;
  v40 = v17;
  v41 = v18;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v29;
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  return (*(v33 + 8))(v25, v24);
}