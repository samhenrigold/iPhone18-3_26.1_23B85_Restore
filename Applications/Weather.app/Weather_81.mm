uint64_t sub_1008896D8@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  a1();
  v7 = sub_1000053B8();
  v9 = (a4 + *(sub_10022C350(v7, v8) + 36));
  *v9 = a2;
  v9[1] = a3;
  v9[2] = 0;
  v9[3] = 0;
}

uint64_t sub_100889750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10022C350(a5, a6);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v16 - v13;
  sub_1000302D8(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

void sub_1008897F4()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v9 = sub_100013DF8();
  sub_1000178A4(*(v9 + 32));
  sub_100020B28();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    sub_100017884(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  sub_10000536C();
}

void sub_10088998C()
{
  sub_10000C778();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(&qword_100CE1010, &qword_100A8B9B8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100013DF8();
  sub_1000178A4(*(v2 + 36));
  sub_100020B28();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_100025214();
    sub_10011C0F0(v3, v4, v5, v6);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    sub_100017884(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v9 = sub_1000053B8();
    v10(v9);
  }

  sub_10000536C();
}

void sub_100889B04()
{
  sub_10000C778();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100013DF8();
  sub_1000178A4(*(v2 + 40));
  sub_100020B28();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_100025214();
    sub_10011C0F0(v3, v4, v5, v6);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    sub_100017884(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v9 = sub_1000053B8();
    v10(v9);
  }

  sub_10000536C();
}

uint64_t sub_100889C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10022C350(&qword_100CE0FB0, &unk_100A917A0) + 36);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  sub_10001B350(a2 + v4, 0, 1, v6);
  v7 = sub_10022C350(&qword_100CE0EC8, &qword_100A916B8);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_100889D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10022C350(&qword_100CE0FE8, &unk_100A917B8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26[-v12];
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v16 = sub_10022C350(&qword_100CE0ED0, &qword_100A916C0);
  (*(*(v16 - 8) + 16))(v13, a1, v16);
  v17 = &v13[*(v11 + 44)];
  *v17 = KeyPath;
  v17[1] = v14;
  v18 = a2 + *(type metadata accessor for MainView(0) + 44);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v19, 0);
    (*(v7 + 8))(v9, v6);
    if (v26[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = static Color.black.getter();
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = static Color.white.getter();
LABEL_6:
  v22 = v20;
  v23 = swift_getKeyPath();
  sub_10011C0F0(v13, a3, &qword_100CE0FE8, &unk_100A917B8);
  result = sub_10022C350(&qword_100CE0FD0, &qword_100A917B0);
  v25 = (a3 + *(result + 36));
  *v25 = v23;
  v25[1] = v22;
  return result;
}

uint64_t sub_10088A010(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE10D8, &qword_100A91888);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a1, v10);
  sub_10001B350(v9, 0, 1, v10);
  v11(v6, a2, v10);
  sub_10001B350(v6, 0, 1, v10);
  sub_10088A180(v9, v6);
  sub_1000180EC(v6, &qword_100CE10D8, &qword_100A91888);
  return sub_1000180EC(v9, &qword_100CE10D8, &qword_100A91888);
}

uint64_t sub_10088A180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentSizeCategory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CE10D8, &qword_100A91888);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = sub_10022C350(&qword_100CE10E0, &qword_100A91890);
  __chkstk_darwin(v11 - 8);
  v13 = &v19[-v12];
  v15 = *(v14 + 56);
  sub_1000302D8(a1, &v19[-v12], &qword_100CE10D8, &qword_100A91888);
  sub_1000302D8(a2, &v13[v15], &qword_100CE10D8, &qword_100A91888);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v15], 1, v4) == 1)
    {
      return sub_1000180EC(v13, &qword_100CE10D8, &qword_100A91888);
    }
  }

  else
  {
    sub_1000302D8(v13, v10, &qword_100CE10D8, &qword_100A91888);
    if (sub_100024D10(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100061520(&qword_100CE1038, &type metadata accessor for ContentSizeCategory);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      result = sub_1000180EC(v13, &qword_100CE10D8, &qword_100A91888);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_1000180EC(v13, &qword_100CE10E0, &qword_100A91890);
LABEL_7:
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  __dst[0] = 1;
  v19[0] = 1;
  v19[56] = 1;
  v19[48] = 1;
  v19[40] = 1;
  v19[32] = 1;
  v19[24] = 1;
  swift_beginAccess();
  memcpy(__dst, &xmmword_100D90930, 0xA1uLL);
  xmmword_100D90930 = 0u;
  unk_100D90940 = 0u;
  xmmword_100D90950 = 0u;
  unk_100D90960 = 0u;
  byte_100D90970 = 1;
  qword_100D90978 = 0;
  byte_100D90980 = 1;
  qword_100D90988 = 0;
  byte_100D90990 = 1;
  qword_100D90998 = 0;
  byte_100D909A0 = 1;
  qword_100D909A8 = 0;
  byte_100D909B0 = 1;
  qword_100D909B8 = 0;
  byte_100D909C0 = 1;
  qword_100D909C8 = 0;
  byte_100D909D0 = 1;
  return sub_100420BB8(__dst);
}

uint64_t sub_10088A554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegibilityWeight();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CDCD58, &unk_100A8BA20);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = sub_10022C350(&qword_100CE10D0, &qword_100A91880);
  __chkstk_darwin(v11 - 8);
  v13 = &v19[-v12];
  v15 = *(v14 + 56);
  sub_1000302D8(a1, &v19[-v12], &qword_100CDCD58, &unk_100A8BA20);
  sub_1000302D8(a2, &v13[v15], &qword_100CDCD58, &unk_100A8BA20);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v15], 1, v4) == 1)
    {
      return sub_1000180EC(v13, &qword_100CDCD58, &unk_100A8BA20);
    }
  }

  else
  {
    sub_1000302D8(v13, v10, &qword_100CDCD58, &unk_100A8BA20);
    if (sub_100024D10(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100061520(&qword_100CE1048, &type metadata accessor for LegibilityWeight);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      result = sub_1000180EC(v13, &qword_100CDCD58, &unk_100A8BA20);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_1000180EC(v13, &qword_100CE10D0, &qword_100A91880);
LABEL_7:
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  __dst[0] = 1;
  v19[0] = 1;
  v19[56] = 1;
  v19[48] = 1;
  v19[40] = 1;
  v19[32] = 1;
  v19[24] = 1;
  swift_beginAccess();
  memcpy(__dst, &xmmword_100D90930, 0xA1uLL);
  xmmword_100D90930 = 0u;
  unk_100D90940 = 0u;
  xmmword_100D90950 = 0u;
  unk_100D90960 = 0u;
  byte_100D90970 = 1;
  qword_100D90978 = 0;
  byte_100D90980 = 1;
  qword_100D90988 = 0;
  byte_100D90990 = 1;
  qword_100D90998 = 0;
  byte_100D909A0 = 1;
  qword_100D909A8 = 0;
  byte_100D909B0 = 1;
  qword_100D909B8 = 0;
  byte_100D909C0 = 1;
  qword_100D909C8 = 0;
  byte_100D909D0 = 1;
  return sub_100420BB8(__dst);
}

uint64_t sub_10088A928(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MainView(0);

  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  return State.wrappedValue.setter();
}

uint64_t sub_10088AA24(void *a1)
{
  v2 = a1[1];
  sub_100035B30((a1 + 4), v7);
  v3 = a1[2];
  v4 = a1[3];
  v6 = v2;
  v7[5] = v4;
  v7[6] = v3;

  static Color.clear.getter();
  sub_1000A49E4();
  View.presentationBackground<A>(_:)();

  return sub_1008922F0(&v6);
}

uint64_t sub_10088AAD4@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_10022C350(&unk_100CE1220, &qword_100A47778);
  *(a2 + 104) = sub_10071E9C0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 24) = v3;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v5, &unk_100CAF270, &qword_100A31F20);
  if (v6)
  {
    sub_100013188(&v5, a2 + 48);
    *(a2 + 32) = sub_1008940C4;
    *(a2 + 40) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a2 + 88) = _swiftEmptyArrayStorage;
    *(a2 + 96) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088ABFC@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = static Color.clear.getter();

  sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0);
  v6 = ObservedObject.init(wrappedValue:)();
  v8 = v7;
  sub_100891688(v3, v12);
  v9 = swift_allocObject();
  memcpy((v9 + 16), v12, 0x60uLL);
  result = static Alignment.center.getter();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = sub_100891A04;
  a2[4] = v9;
  a2[5] = result;
  a2[6] = v11;
  return result;
}

uint64_t sub_10088AD0C(_BYTE *a1, uint64_t *a2)
{
  if (*a1 == 2)
  {
    sub_100891688(a2, __src);
    v3 = swift_allocObject();
    memcpy((v3 + 16), __src, 0x60uLL);
    __src[0] = sub_100891EAC;
    __src[1] = v3;
    v15 = 0;
    sub_10022C350(&qword_100CE11D8, &qword_100A91B08);
    sub_10006768C(&qword_100CE11E0, &qword_100CE11D8, &qword_100A91B08);
    sub_100891DE0();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    sub_100035B30((a2 + 2), &v18);
    sub_100035B30((a2 + 7), v19);
    sub_100035B30((a2 + 2), __src);
    v7 = sub_10002D7F8(__src, __src[3]);
    v8 = __chkstk_darwin(v7);
    v10 = (__src - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    swift_retain_n();
    v13 = sub_100891C8C(v12, v5);
    sub_100006F14(__src);
    v17[0] = v5;
    v17[1] = v6;
    v16 = v13;
    type metadata accessor for WeatherSplitViewBindingModel(0);
    State.init(wrappedValue:)();
    v19[5] = __src[0];
    v19[6] = __src[1];
    sub_100891DA8(v17, __src);
    v15 = 1;
    sub_10022C350(&qword_100CE11D8, &qword_100A91B08);
    sub_10006768C(&qword_100CE11E0, &qword_100CE11D8, &qword_100A91B08);
    sub_100891DE0();
    _ConditionalContent<>.init(storage:)();
    return sub_100891E34(v17);
  }
}

uint64_t sub_10088AFE0(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CE11F0, &qword_100A91B10);
  sub_100891EBC();
  return NavigationStack.init<>(root:)();
}

void *sub_10088B050@<X0>(char *a2@<X8>)
{
  __src[10] = sub_10071E9C0;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&unk_100CE1220, &qword_100A47778);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270, &qword_100A31F20);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1008940C4;
    __src[2] = 0;
    v4 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v4;
    memcpy(__dst, __src, sizeof(__dst));
    KeyPath = swift_getKeyPath();
    v6 = &a2[*(sub_10022C350(&qword_100CE11F0, &qword_100A91B10) + 36)];
    v7 = *(sub_10022C350(&qword_100CDE310, &qword_100A91B20) + 28);
    sub_10088B21C(&v6[v7]);
    v8 = type metadata accessor for TargetWindowSizeClass();
    sub_10001B350(&v6[v7], 0, 1, v8);
    *v6 = KeyPath;
    return memcpy(a2, __dst, 0x61uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088B21C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA22F8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000703C(v2, qword_100CC96F8);
  (*(v3 + 104))(v5, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v2);
  LOBYTE(v6) = sub_1001497E4(v6, v5);
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    GeometryProxy.size.getter();
    GeometryProxy.safeAreaInsets.getter();
    GeometryProxy.safeAreaInsets.getter();
    GeometryProxy.size.getter();
    GeometryProxy.safeAreaInsets.getter();
    GeometryProxy.safeAreaInsets.getter();
    v7 = CGSize.isLandscape.getter();
    v8 = type metadata accessor for TargetWindowSizeClass();
    if (v7)
    {
      v9 = &enum case for TargetWindowSizeClass.landscapeRegular(_:);
    }

    else
    {
      v9 = &enum case for TargetWindowSizeClass.portraitRegular(_:);
    }

    return (*(*(v8 - 8) + 104))(a1, *v9, v8);
  }

  else
  {
    v10 = enum case for TargetWindowSizeClass.compact(_:);
    v11 = type metadata accessor for TargetWindowSizeClass();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }
}

uint64_t sub_10088B440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  v7 = *v6;
  sub_1000A2E84(v6);
  v8 = sub_10022C350(&qword_100CE1508, &qword_100A91F70);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10022C350(&qword_100CE1510, &qword_100A91F78);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_10088B538@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for BalancedNavigationSplitViewStyle();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE13C8, &qword_100A91E50);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v28 = sub_10022C350(&qword_100CE13D0, &qword_100A91E58);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v28 - v8;
  Solarium.init()();
  v33 = v1;
  v32 = v1;
  sub_10022C350(&qword_100CE13D8, &qword_100A91E60);
  sub_10006768C(&qword_100CE13E0, &qword_100CE13D8, &qword_100A91E60);
  StaticIf<>.init(_:then:else:)();
  v10 = &v7[*(sub_10022C350(&qword_100CE13E8, &qword_100A91E68) + 36)];
  *v10 = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  v12 = v10 + *(v11 + 20);
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v10 + *(v11 + 24);
  LOBYTE(v38) = -2;
  sub_10022C350(&qword_100CE13F0, &qword_100A44738);
  State.init(wrappedValue:)();
  v14 = v35;
  *v13 = v34;
  *(v13 + 1) = v14;
  v15 = *(v1 + 104);
  v34 = *(v1 + 96);
  v35 = v15;

  sub_10022C350(&qword_100CE13F8, &qword_100A91EA0);
  State.wrappedValue.getter();
  v16 = v38;
  sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0);
  v17 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  v20 = &v7[*(sub_10022C350(&qword_100CE1400, &qword_100A91EA8) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v20[2] = v16;
  v21 = &v7[*(v5 + 36)];
  *v21 = sub_10088BAB0;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  static NavigationSplitViewStyle<>.balanced.getter();
  v22 = sub_100892788();
  v23 = sub_100061520(&qword_100CE1440, &type metadata accessor for BalancedNavigationSplitViewStyle);
  View.navigationSplitViewStyle<A>(_:)();
  (*(v29 + 8))(v4, v2);
  sub_1000180EC(v7, &qword_100CE13C8, &qword_100A91E50);
  Solarium.init()();
  sub_10022C350(&qword_100CE1448, &qword_100A91EB8);
  v34 = v5;
  v35 = v2;
  v36 = v22;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v28;
  v34 = v28;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  View.staticIf<A, B>(_:then:)();
  (*(v30 + 8))(v9, v25);
  LOBYTE(v22) = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CE1450, &unk_100A91EC0);
  *(v26 + *(result + 36)) = v22;
  return result;
}

void sub_10088BAB0(uint64_t a1)
{
  if (DeviceIsSlow())
  {
    sub_10000C70C(0, &qword_100CE1458, UINavigationBar_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_10022C350(&qword_100CE14C0, &qword_100A91ED0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100A2C3F0;
    *(v2 + 32) = sub_10000C70C(0, &qword_100CE14C8, UISplitViewController_ptr);
    sub_10022C350(&qword_100CE14D0, &qword_100A91ED8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses:isa];

    sub_100891A0C(_swiftEmptyArrayStorage, v4);
  }
}

uint64_t sub_10088BBD8()
{
  sub_10022C350(&qword_100CE13D0, &qword_100A91E58);
  sub_10022E824(&qword_100CE13C8, &qword_100A91E50);
  type metadata accessor for BalancedNavigationSplitViewStyle();
  sub_100892788();
  sub_100061520(&qword_100CE1440, &type metadata accessor for BalancedNavigationSplitViewStyle);
  swift_getOpaqueTypeConformance2();
  return View.insetFloatingSidebarStyle()();
}

uint64_t sub_10088BCC4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE14F8, &qword_100A91F38);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CE1500, &qword_100A91F40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = *(a1 + 104);
  v16 = *(a1 + 96);
  v17 = v10;
  sub_10022C350(&qword_100CE13F8, &qword_100A91EA0);
  State.wrappedValue.getter();
  type metadata accessor for WeatherSplitViewBindingModel(0);
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  Bindable<A>.init(wrappedValue:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v11 = *(v4 + 8);
  v11(v6, v3);
  v15 = a1;
  v14 = a1;
  sub_10022C350(&qword_100CE14E0, &qword_100A91EE0);
  sub_10006768C(&qword_100CE14E8, &qword_100CE14E0, &qword_100A91EE0);
  sub_100892AAC();
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  return (v11)(v9, v3);
}

uint64_t sub_10088BF90@<X0>(uint64_t x8_0@<X8>)
{
  v3 = static Solarium.isEnabled.getter();
  if (v3)
  {

    return sub_10088CDF8(x8_0);
  }

  else if (sub_10088C80C(v3, v4))
  {

    return static NavigationSplitViewVisibility.doubleColumn.getter();
  }

  else
  {

    return static NavigationSplitViewVisibility.detailOnly.getter();
  }
}

uint64_t sub_10088C010(uint64_t a1)
{
  v3 = type metadata accessor for NavigationSplitViewVisibility();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10088CDF8(v6);
  sub_100061520(&qword_100CE1240, &type metadata accessor for NavigationSplitViewVisibility);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v6, v3);
  (*(v4 + 16))(v6, a1, v3);
  sub_10088C980(v6);
  if ((static Solarium.isEnabled.getter() & 1) != 0 && (v7 & 1) == 0)
  {
    static NavigationSplitViewVisibility.detailOnly.getter();
    v9 = static NavigationSplitViewVisibility.== infix(_:_:)();
    v8(v6, v3);
    sub_1000161C0((v1 + 24), *(v1 + 48));
    if (v9)
    {
      sub_100569398();
    }

    else
    {
      sub_100569390();
    }
  }

  return (v8)(a1, v3);
}

uint64_t sub_10088C1D8(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 104);
  v10 = *(a1 + 96);
  v11 = v5;
  sub_10022C350(&qword_100CE13F8, &qword_100A91EA0);
  State.wrappedValue.getter();
  sub_10088BF90(v4);

  v9 = a1;
  v8 = a1;
  sub_10022C350(&qword_100CE14E0, &qword_100A91EE0);
  sub_10006768C(&qword_100CE14E8, &qword_100CE14E0, &qword_100A91EE0);
  sub_100892AAC();
  return NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
}

uint64_t sub_10088C340@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100891DA8(a1, v9);
  v6 = swift_allocObject();
  memcpy((v6 + 16), v9, 0x70uLL);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = result;
  *(a4 + 24) = 0;
  *(a4 + 32) = a3;
  *(a4 + 40) = v6;
  return result;
}

uint64_t sub_10088C3D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  sub_100035B30(a1 + 16, (a2 + 1));
  result = sub_100035B30(a1 + 56, (a2 + 6));
  *a2 = v4;
  return result;
}

uint64_t sub_10088C424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  v30 = a5;
  v7 = type metadata accessor for MainViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE1540, &qword_100A92150);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v29 = sub_10022C350(&qword_100CE1548, &qword_100A92158);
  v14 = *(v29 - 8);
  __chkstk_darwin(v29);
  v16 = &v27 - v15;
  KeyPath = swift_getKeyPath();
  sub_100095730();
  v18 = v10[*(v8 + 40)];
  sub_1000A2E84(v10);
  v19 = sub_10022C350(&qword_100CE1550, &qword_100A92188);
  (*(*(v19 - 8) + 16))(v13, v27, v19);
  v20 = &v13[*(sub_10022C350(&qword_100CE1558, &qword_100A92190) + 36)];
  *v20 = KeyPath;
  v20[8] = v18;
  v21 = swift_getKeyPath();
  sub_100095730();
  LOBYTE(KeyPath) = v10[*(v8 + 36)];
  sub_1000A2E84(v10);
  v22 = &v13[*(v11 + 36)];
  *v22 = v21;
  v22[8] = (KeyPath & 1) == 0;
  sub_100095730();
  LOBYTE(v21) = v10[*(v8 + 40)];
  sub_1000A2E84(v10);
  LOBYTE(v31) = v21;
  v23 = swift_allocObject();
  v23[2] = v28;
  v23[3] = a3;
  v23[4] = a4;
  v24 = sub_100892F54();

  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v13, &qword_100CE1540, &qword_100A92150);
  type metadata accessor for WeatherSplitViewBindingModel(0);
  v31 = v11;
  v32 = &type metadata for Bool;
  v33 = v24;
  v34 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  v25 = v29;
  View.environment<A>(_:)();
  return (*(v14 + 8))(v16, v25);
}

uint64_t sub_10088C7D0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = sub_10088C80C(a1, a2);
  if (v2 != (result & 1))
  {
    return sub_10088C8AC(v2, v4);
  }

  return result;
}

uint64_t sub_10088C80C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 65);
}

uint64_t sub_10088C8AC(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  if (*(v2 + 65) == (a1 & 1))
  {
    *(v2 + 65) = v3;

    return sub_10088CBA4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v7[2] = v2;
    v8 = v3;
    sub_10088CEF0(v5, sub_100891FA0, v7);
  }
}

uint64_t sub_10088C980(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationSplitViewVisibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_100061520(&qword_100CE1240, &type metadata accessor for NavigationSplitViewVisibility);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v14 - 2) = v2;
    *(&v14 - 1) = a1;
    sub_10088CEF0(v12, sub_100891FF8, (&v14 - 4));
  }

  return (v10)(a1, v4);
}

uint64_t sub_10088CBA4()
{
  v0 = type metadata accessor for NavigationSplitViewVisibility();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  result = static Solarium.isEnabled.getter();
  if (result)
  {
    v9 = sub_10088C80C(result, v8);
    if (v9)
    {
      sub_10088CDF8(v6);
      static NavigationSplitViewVisibility.detailOnly.getter();
      v11 = static NavigationSplitViewVisibility.== infix(_:_:)();
      v12 = *(v1 + 8);
      v12(v3, v0);
      v9 = (v12)(v6, v0);
      if (v11)
      {
        static NavigationSplitViewVisibility.doubleColumn.getter();
        v9 = sub_10088C010(v6);
      }
    }

    result = sub_10088C80C(v9, v10);
    if ((result & 1) == 0)
    {
      sub_10022C350(&qword_100CE1238, &qword_100A91B80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100A2D320;
      static NavigationSplitViewVisibility.all.getter();
      static NavigationSplitViewVisibility.doubleColumn.getter();
      v14 = sub_10088CDF8(v6);
      __chkstk_darwin(v14);
      *&v16[-16] = v6;
      v15 = sub_100745970(sub_100891FD8, &v16[-32], v13);
      swift_setDeallocating();
      sub_1005C204C();
      result = (*(v1 + 8))(v6, v0);
      if (v15)
      {
        static NavigationSplitViewVisibility.detailOnly.getter();
        return sub_10088C010(v6);
      }
    }
  }

  return result;
}

uint64_t sub_10088CDF8@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v7 = v2;
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  return (*(*(v5 - 8) + 16))(a2, v7 + v4, v5);
}

uint64_t sub_10088CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004D1C();
  sub_100061520(v3, v4);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10088CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_100011748();
  type metadata accessor for NavigationSplitViewVisibility();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v5);
  return a5(v10);
}

double sub_10088D054(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  swift_endAccess();
  return result;
}

uint64_t sub_10088D0F0()
{

  sub_100006F14((v0 + 24));
  v1 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10088D1A0()
{
  sub_10088D0F0();

  return swift_deallocClassInstance();
}

uint64_t sub_10088D21C(uint64_t a1)
{
  result = type metadata accessor for NavigationSplitViewVisibility();
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

unint64_t sub_10088D334()
{
  result = qword_100CE0F50;
  if (!qword_100CE0F50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0EC0, &qword_100A916B0);
    v4[0] = sub_100081204();
    v4[1] = sub_100061520(&qword_100CE0FA0, type metadata accessor for MainViewSheetViewModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE0F50);
  }

  return result;
}

unint64_t sub_10088D3F0()
{
  result = qword_100CE0FB8;
  if (!qword_100CE0FB8)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CE0FB0, &unk_100A917A0);
    v4[2] = sub_10022E824(&qword_100CE0EC0, &qword_100A916B0);
    v4[3] = type metadata accessor for VibrantDividerStyle();
    v4[4] = sub_10088D334();
    v4[5] = sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE0FB8);
  }

  return result;
}

unint64_t sub_10088D53C()
{
  result = qword_100CE0FD8;
  if (!qword_100CE0FD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0FD0, &qword_100A917B0);
    v4[0] = sub_10088D5F4();
    v4[1] = sub_10006768C(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE0FD8);
  }

  return result;
}

unint64_t sub_10088D5F4()
{
  result = qword_100CE0FE0;
  if (!qword_100CE0FE0)
  {
    v6[14] = v0;
    v6[15] = v1;
    v3 = sub_10022E824(&qword_100CE0FE8, &unk_100A917B8);
    v4 = sub_10022E824(&qword_100CE0EC8, &qword_100A916B8);
    v5 = sub_10022E824(&qword_100CE0FB0, &unk_100A917A0);
    sub_10022E824(&qword_100CE0EC0, &qword_100A916B0);
    type metadata accessor for VibrantDividerStyle();
    sub_10088D334();
    sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
    v6[2] = v4;
    v6[3] = &type metadata for Solarium;
    v6[4] = v5;
    v6[5] = swift_getOpaqueTypeConformance2();
    v6[6] = &protocol witness table for Solarium;
    v6[7] = sub_10088D3F0();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10006768C(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE0FE0);
  }

  return result;
}

uint64_t sub_10088D7B4@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  sub_10089389C(v1, __src);
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x58uLL);
  v22[10] = sub_10071E998;
  v22[11] = 0;
  LOBYTE(v22[12]) = 0;
  v22[0] = sub_10022C350(&qword_100CCC2D8, &qword_100A91C30);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __src, &unk_100CAF270, &qword_100A31F20);
  if (*&__src[24])
  {
    sub_100013188(__src, &v22[3]);
    v22[1] = sub_1008938D4;
    v22[2] = v2;
    v4 = Dictionary.init(dictionaryLiteral:)();
    v22[8] = _swiftEmptyArrayStorage;
    v22[9] = v4;
    memcpy(__src, v22, sizeof(__src));
    v5 = Solarium.init()();
    v21[2] = v21;
    __chkstk_darwin(v5);
    v6 = sub_10022C350(&qword_100CE16D0, &qword_100A922F8);
    v21[1] = sub_10022C350(&qword_100CE16D8, &qword_100A92300);
    v21[0] = sub_10022C350(&qword_100CE16E0, &qword_100A92308);
    v7 = sub_10006768C(&qword_100CE16E8, &qword_100CE16D0, &qword_100A922F8);
    v8 = sub_10022E824(&qword_100CE16F0, &qword_100A92310);
    v9 = sub_10022E824(&qword_100CE16F8, &qword_100A92318);
    v10 = sub_10022E824(&qword_100CE12F8, &qword_100A91C10);
    v11 = sub_10022E824(&qword_100CE1308, &unk_100A91C18);
    v12 = sub_10006768C(&unk_100CE1310, &qword_100CE1308, &unk_100A91C18);
    v22[0] = v11;
    v22[1] = v12;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22[0] = v6;
    v22[1] = v10;
    v22[2] = v7;
    v22[3] = OpaqueTypeConformance2;
    v14 = swift_getOpaqueTypeConformance2();
    v22[0] = v9;
    v22[1] = &type metadata for Color;
    v22[2] = v14;
    v22[3] = &protocol witness table for Color;
    v15 = swift_getOpaqueTypeConformance2();
    v22[0] = v8;
    v22[1] = v15;
    swift_getOpaqueTypeConformance2();
    v16 = sub_10022E824(&qword_100CE1700, &qword_100A92320);
    v17 = sub_10022E824(&qword_100CE1708, &qword_100A92328);
    v18 = type metadata accessor for Material();
    v22[0] = v6;
    v22[1] = v18;
    v22[2] = v7;
    v22[3] = &protocol witness table for Material;
    v19 = swift_getOpaqueTypeConformance2();
    v20 = sub_10006768C(&unk_100CE1710, &qword_100CE1708, &qword_100A92328);
    v22[0] = v16;
    v22[1] = v17;
    v22[2] = v19;
    v22[3] = v20;
    swift_getOpaqueTypeConformance2();
    View.staticIf<A, B, C>(_:then:else:)();
    return sub_1000180EC(__src, &qword_100CE16D0, &qword_100A922F8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v27 = a2;
  v2 = type metadata accessor for ContainerBackgroundPlacement();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE16F8, &qword_100A92318);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10022C350(&qword_100CE16F0, &qword_100A92310);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = sub_10022C350(&qword_100CE16D0, &qword_100A922F8);
  v13 = sub_10022C350(&qword_100CE12F8, &qword_100A91C10);
  v14 = sub_10006768C(&qword_100CE16E8, &qword_100CE16D0, &qword_100A922F8);
  v15 = sub_10022E824(&qword_100CE1308, &unk_100A91C18);
  v16 = sub_10006768C(&unk_100CE1310, &qword_100CE1308, &unk_100A91C18);
  v28 = v15;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  v32 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  View.containerBackground<A>(_:for:)();
  (*(v25 + 8))(v4, v26);

  (*(v22 + 8))(v7, v5);
  v28 = v5;
  v29 = &type metadata for Color;
  v30 = v18;
  v31 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  View.navigationSplitViewColumnWidth(min:ideal:max:)();
  return (*(v24 + 8))(v11, v19);
}

uint64_t sub_10088E168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = sub_10022C350(&qword_100CE1700, &qword_100A92320);
  v13 = *(v3 - 8);
  v14 = v3;
  __chkstk_darwin(v3);
  v5 = v12 - v4;
  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Material();
  sub_10000703C(v6, qword_100D90600);
  sub_10022C350(&qword_100CB0578, &qword_100A92330);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static ToolbarPlacement.navigationBar.getter();
  v7 = sub_10022C350(&qword_100CE16D0, &qword_100A922F8);
  v8 = sub_10006768C(&qword_100CE16E8, &qword_100CE16D0, &qword_100A922F8);
  View.toolbarBackground<A>(_:for:)();

  __chkstk_darwin(v9);
  v12[-2] = a1;
  sub_10022C350(&qword_100CE1708, &qword_100A92328);
  v15 = v7;
  v16 = v6;
  v17 = v8;
  v18 = &protocol witness table for Material;
  swift_getOpaqueTypeConformance2();
  sub_10006768C(&unk_100CE1710, &qword_100CE1708, &qword_100A92328);
  v10 = v14;
  View.toolbar<A>(content:)();
  return (*(v13 + 8))(v5, v10);
}

uint64_t sub_10088E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_10022C350(&qword_100CE1720, &qword_100A92338);
  __chkstk_darwin(v19);
  v4 = &v17 - v3;
  v18 = sub_10022C350(&qword_100CE1308, &unk_100A91C18);
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10022C350(&qword_100CE1728, &qword_100A92340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  static ToolbarItemPlacement.navigationBarLeading.getter();
  v21 = a1;
  sub_10022C350(&qword_100CE1730, &unk_100A92348);
  sub_1008938F4();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  sub_10022C350(&qword_100CE1340, &unk_100A91C38);
  sub_10006768C(&qword_100CE1348, &qword_100CE1340, &unk_100A91C38);
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v19 + 48);
  (*(v10 + 16))(v4, v12, v9);
  v14 = &v4[v13];
  v15 = v18;
  (*(v5 + 16))(v14, v7, v18);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10088E7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for AutomaticHoverEffect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CE1740, &unk_100A31E70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10022C350(&qword_100CE1758, &qword_100A92358);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  sub_10089389C(a1, __src);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x58uLL);
  Button.init(action:label:)();
  static CustomHoverEffect<>.automatic.getter();
  v16 = sub_10006768C(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70);
  v17 = sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v18 = [objc_opt_self() mainBundle];
  v29._object = 0x8000000100AE2C90;
  v19._countAndFlagsBits = 0x6469732065646948;
  v19._object = 0xEC00000072616265;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000002DLL;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v29);

  v27 = v21;
  __src[0] = v7;
  __src[1] = v3;
  __src[2] = v16;
  __src[3] = v17;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v22 = v24;
  View.accessibilityLabel<A>(_:)();

  return (*(v25 + 8))(v14, v22);
}

uint64_t sub_10088EBF8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10088EC44@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.topTrailing.getter();
  a2[1] = v4;
  v5 = sub_10022C350(&qword_100CE1588, &qword_100A921C8);
  sub_10088ED44(v2, a2 + *(v5 + 44));
  *(a2 + *(sub_10022C350(&qword_100CE1590, &qword_100A921D0) + 36)) = 1;
  v6 = a2 + *(sub_10022C350(&qword_100CE1598, &unk_100A921D8) + 36);
  v7 = *(sub_10022C350(&qword_100CE15A0, &unk_100A6E340) + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = type metadata accessor for ColorScheme();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  result = swift_getKeyPath();
  *v6 = result;
  return result;
}

uint64_t sub_10088ED44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v27 - v3;
  v4 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&qword_100CE15A8, &qword_100A92218);
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v27 - v9;
  v29 = sub_10022C350(&unk_100CE15B0, &unk_100A92220);
  __chkstk_darwin(v29);
  v12 = &v27 - v11;
  v30 = a1;
  sub_1008930F0(a1, __src);
  v13 = swift_allocObject();
  v14 = *&__src[16];
  v13[1] = *__src;
  v13[2] = v14;
  v13[3] = *&__src[32];
  v15 = sub_10022C350(&qword_100CBA978, &unk_100A502D0);
  *&__src[80] = sub_1000ED1D0;
  *&__src[88] = 0;
  __src[96] = 0;
  *__src = v15;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270, &qword_100A31F20);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[24]);
    *&__src[8] = sub_100893128;
    *&__src[16] = v13;
    v17 = Dictionary.init(dictionaryLiteral:)();
    *&__src[64] = _swiftEmptyArrayStorage;
    *&__src[72] = v17;
    memcpy(__dst, __src, sizeof(__dst));
    v18 = static Edge.Set.bottom.getter();
    v19 = static SafeAreaRegions.all.getter();
    memcpy(__src, __dst, sizeof(__src));
    v37 = v19;
    v38 = v18;
    (*(v5 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v4);
    sub_10022C350(&qword_100CE15C0, &unk_100A92230);
    sub_100893130();
    View.navigationBarTitleDisplayMode(_:)();
    (*(v5 + 8))(v7, v4);
    sub_1000180EC(__src, &qword_100CE15C0, &unk_100A92230);
    KeyPath = swift_getKeyPath();
    (*(v8 + 32))(v12, v10, v28);
    v21 = &v12[*(v29 + 36)];
    *v21 = KeyPath;
    v21[8] = 0;
    Solarium.init()();
    v22 = v31;
    v23 = static ViewInputPredicate.! prefix(_:)();
    __chkstk_darwin(v23);
    sub_10022C350(&qword_100CE15E0, &qword_100A92240);
    sub_1008931F0();
    *__src = &type metadata for Solarium;
    *&__src[8] = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    v24 = sub_10022E824(&qword_100CE15F8, &qword_100A92248);
    v25 = sub_10089330C();
    *__src = v24;
    *&__src[8] = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v34;
    View.staticIf<A, B, C>(_:then:else:)();
    (*(v33 + 8))(v22, v26);
    return sub_1000180EC(v12, &unk_100CE15B0, &unk_100A92220);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE15F8, &qword_100A92248);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = static Alignment.topLeading.getter();
  v9 = v8;
  KeyPath = swift_getKeyPath();
  sub_1008930F0(a2, &v19);
  v11 = swift_allocObject();
  v12 = v20;
  v11[1] = v19;
  v11[2] = v12;
  v11[3] = v21;
  v13 = &v6[*(sub_10022C350(&qword_100CE1610, &qword_100A92250) + 36)];
  *v13 = v7;
  v13[1] = v9;
  v13[2] = KeyPath;
  v13[3] = sub_100893450;
  v13[4] = v11;
  v14 = *(sub_10022C350(&qword_100CE1620, &unk_100A92258) + 52);
  *(v13 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CE1628, &unk_100A92280);
  swift_storeEnumTagMultiPayload();
  sub_1000302D8(a1, v6, &unk_100CE15B0, &unk_100A92220);
  sub_1008930F0(a2, &v19);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 1) = v19;
  *(v15 + 2) = v16;
  *(v15 + 3) = v21;
  v17 = &v6[*(v4 + 36)];
  *v17 = sub_100893458;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  sub_10089330C();
  View.navigationBarHidden(_:)();
  return sub_1000180EC(v6, &qword_100CE15F8, &qword_100A92248);
}

uint64_t sub_10088F5A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AutomaticHoverEffect();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CE1638, &qword_100A92290);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v47 = sub_10022C350(&qword_100CE1640, &qword_100A92298);
  __chkstk_darwin(v47);
  v18 = &v45 - v17;
  v19 = sub_10022C350(&qword_100CE1648, &qword_100A922A0);
  __chkstk_darwin(v19);
  v22 = &v45 - v21;
  if (*a1)
  {

    return sub_10001B350(a3, 1, 1, v20);
  }

  else
  {
    v24 = v46;
    v46 = v20;
    sub_1008930F0(v24, v50);
    v25 = swift_allocObject();
    v26 = v50[1];
    v25[1] = v50[0];
    v25[2] = v26;
    v25[3] = v50[2];
    sub_10022C350(&qword_100CE1650, &qword_100A922A8);
    v45 = a3;
    sub_100893470();
    Button.init(action:label:)();
    static CustomHoverEffect<>.automatic.getter();
    sub_10006768C(&qword_100CE16A0, &qword_100CE1638, &qword_100A92290);
    sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
    View.hoverEffect<A>(_:isEnabled:)();
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    v27 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v18[*(sub_10022C350(&qword_100CE16B0, &qword_100A922C0) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v38 = &v18[*(v47 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *&v50[0] = String.init(localized:table:bundle:locale:comment:)();
    *(&v50[0] + 1) = v43;
    sub_1008936C4();
    sub_10002D5A4();
    View.accessibilityLabel<A>(_:)();

    sub_1000180EC(v18, &qword_100CE1640, &qword_100A92298);
    v44 = v45;
    sub_10011C0F0(v22, v45, &qword_100CE1648, &qword_100A922A0);
    return sub_10001B350(v44, 0, 1, v46);
  }
}

uint64_t sub_10088FB68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v2);
  v4 = v30 - v3;
  v30[1] = Image.init(systemName:)();
  v5 = enum case for DynamicTypeSize.xxLarge(_:);
  v6 = type metadata accessor for DynamicTypeSize();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_100061520(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10006768C(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0);
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v4, &unk_100CE1680, &unk_100A450F0);

    v8 = (a1 + *(sub_10022C350(&qword_100CE1678, &qword_100A922B8) + 36));
    v9 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
    v10 = enum case for Image.Scale.large(_:);
    v11 = type metadata accessor for Image.Scale();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    LOBYTE(v10) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = a1 + *(sub_10022C350(&qword_100CE1668, &qword_100A922B0) + 36);
    *v20 = v10;
    *(v20 + 8) = v13;
    *(v20 + 16) = v15;
    *(v20 + 24) = v17;
    *(v20 + 32) = v19;
    *(v20 + 40) = 0;
    LOBYTE(v10) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    result = sub_10022C350(&qword_100CE1650, &qword_100A922A8);
    v29 = a1 + *(result + 36);
    *v29 = v10;
    *(v29 + 8) = v22;
    *(v29 + 16) = v24;
    *(v29 + 24) = v26;
    *(v29 + 32) = v28;
    *(v29 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088FE74(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  sub_1008930F0(a1, v16);
  v9 = swift_allocObject();
  v10 = v16[1];
  v9[1] = v16[0];
  v9[2] = v10;
  v9[3] = v16[2];
  aBlock[4] = sub_100893460;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C72F10;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  *&v16[0] = _swiftEmptyArrayStorage;
  sub_100061520(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_10006768C(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

void sub_100890178()
{
  v0 = sub_100890220();
  if (v0)
  {
    v1 = v0;
    [v0 setPresentsWithGesture:0];
    [v1 setDisplayModeButtonVisibility:1];
  }
}

uint64_t sub_100890220()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = UIApplication.maybeWindow.getter();

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 rootViewController];

  if (!v2)
  {
    return 0;
  }

  sub_1008902B0(v2);
  v4 = v3;

  return v4;
}

void sub_1008902B0(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = a1;
  }

  else
  {
    v3 = [a1 childViewControllers];
    sub_10000C70C(0, &qword_100CE1630, UIViewController_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_100073CDC(v4);
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
LABEL_10:

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1008902B0(v7);
      v10 = v9;

      ++v6;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1008903F4@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v7 + 8))(v9, v6);
  }

  sub_10022C350(&qword_100CE1788, &qword_100A92450);
  sub_10006768C(&qword_100CE1790, &qword_100CE1788, &qword_100A92450);
  View.accessibilityHidden(_:)();
  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = a3 + *(sub_10022C350(&qword_100CE1798, &qword_100A92458) + 36);
  sub_100890608(a1, a2 & 1, v14);
  result = sub_10022C350(&qword_100CE17A0, &qword_100A92460);
  v16 = (v14 + *(result + 36));
  *v16 = v11;
  v16[1] = v13;
  return result;
}

uint64_t sub_100890608@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccessibilityTraits();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CE17A8, &qword_100A92468);
  __chkstk_darwin(v41);
  v10 = &v35 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v12 + 8))(v14, v11);
    if (v45 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    Solarium.init()();
    sub_10022C350(&qword_100CE17B8, &qword_100A92478);
    sub_10022C350(&qword_100CE17C0, &qword_100A92480);
    v39 = v8;
    sub_10006768C(&qword_100CE17C8, &qword_100CE17B8, &qword_100A92478);
    sub_10006768C(&qword_100CE17D0, &qword_100CE17C0, &qword_100A92480);
    StaticIf<>.init(_:then:else:)();
    *&v10[*(sub_10022C350(&qword_100CE17D8, &qword_100A92488) + 36)] = 0x4000000000000000;
    v17 = v10;
    v37 = v10;
    v36 = static HorizontalAlignment.center.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = v45;
    v19 = v46;
    v20 = v47;
    v21 = v48;
    v22 = a3;
    v23 = v40;
    v38 = v6;
    v24 = v49;
    v25 = v50;
    VerticalEdge.rawValue.getter();
    v26 = Edge.init(rawValue:)();
    v27 = static SafeAreaRegions.container.getter();
    LOBYTE(v42) = v19;
    v44 = v21;
    v43 = 1;
    v28 = &v17[*(v41 + 36)];
    *v28 = v18;
    v28[8] = v19;
    *(v28 + 2) = v20;
    v28[24] = v21;
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
    a3 = v22;
    *(v28 + 6) = v27;
    *(v28 + 7) = 0;
    v28[64] = 1;
    v28[65] = v26;
    *(v28 + 9) = v36;
    sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isModal.getter();
    v42 = v29;
    sub_100061520(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
    sub_10006768C(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0);
    v31 = v38;
    v30 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100893C54();
    v32 = v37;
    View.accessibilityAddTraits(_:)();
    (*(v23 + 8))(v30, v31);
    sub_1000180EC(v32, &qword_100CE17A8, &qword_100A92468);
    v15 = 0;
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = 1;
LABEL_6:
  v33 = sub_10022C350(&qword_100CE17B0, &qword_100A92470);
  return sub_10001B350(a3, v15, 1, v33);
}

uint64_t sub_100890C48()
{
  type metadata accessor for ScenePhase();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  v1 = sub_1000053B8();
  v2(v1);
  return EnvironmentValues.scenePhase.setter();
}

unint64_t sub_100890D20()
{
  result = qword_100CE1018;
  if (!qword_100CE1018)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0EE8, &qword_100A916D8);
    v4[0] = sub_100890DDC();
    v4[1] = sub_100061520(&qword_100CE1030, type metadata accessor for MainViewScenePhaseObservationViewModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1018);
  }

  return result;
}

unint64_t sub_100890DDC()
{
  result = qword_100CE1020;
  if (!qword_100CE1020)
  {
    v7[18] = v0;
    v7[19] = v1;
    v3 = sub_10022E824(&qword_100CE0EE0, &qword_100A916D0);
    v4 = sub_10022E824(&qword_100CE0ED0, &qword_100A916C0);
    v5 = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
    v6 = sub_10022E824(&qword_100CE0FD0, &qword_100A917B0);
    sub_10022E824(&qword_100CE0EC8, &qword_100A916B8);
    sub_10022E824(&qword_100CE0FB0, &unk_100A917A0);
    sub_10022E824(&qword_100CE0EC0, &qword_100A916B0);
    type metadata accessor for VibrantDividerStyle();
    sub_10088D334();
    sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
    swift_getOpaqueTypeConformance2();
    sub_10088D3F0();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    v7[5] = swift_getOpaqueTypeConformance2();
    v7[6] = swift_getOpaqueTypeConformance2();
    v7[7] = sub_10088D53C();
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v7);
    atomic_store(result, &qword_100CE1020);
  }

  return result;
}

uint64_t sub_100891018()
{
  v0 = sub_100011748();
  v1 = type metadata accessor for MainView(v0);
  sub_100003810(v1);
  v2 = sub_1000053B8();
  return sub_10088A554(v2, v3);
}

uint64_t sub_100891088(void *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v8);
  v4 = v8;
  v3 = v9;
  v5 = *a1 == v8 && a1[1] == v9;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v4 == 11565 ? (v6 = v3 == 0xE200000000000000) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    *a1 = v4;
    a1[1] = v3;
  }

  return result;
}

unint64_t sub_10089116C()
{
  result = qword_100CE1070;
  if (!qword_100CE1070)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0F20, &qword_100A91710);
    v4[0] = sub_100891228();
    v4[1] = sub_100061520(&unk_100CE10B0, type metadata accessor for MonitorAppLaunchStateViewModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1070);
  }

  return result;
}

unint64_t sub_100891228()
{
  result = qword_100CE1078;
  if (!qword_100CE1078)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0F18, &qword_100A91708);
    v4[0] = sub_1008912E0();
    v4[1] = sub_10006768C(&qword_100CE10A8, &qword_100CE1058, &qword_100A91830);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1078);
  }

  return result;
}

unint64_t sub_1008912E0()
{
  result = qword_100CE1080;
  if (!qword_100CE1080)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0F10, &qword_100A91700);
    v4[0] = sub_10089139C();
    v4[1] = sub_100061520(&qword_100CE10A0, type metadata accessor for WeatherMapStatusBarColorSceneModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1080);
  }

  return result;
}

unint64_t sub_10089139C()
{
  result = qword_100CE1088;
  if (!qword_100CE1088)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0F08, &qword_100A916F8);
    v4[0] = sub_100891454();
    v4[1] = sub_10006768C(&qword_100CB0570, &qword_100CE1050, &qword_100A408F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1088);
  }

  return result;
}

unint64_t sub_100891454()
{
  result = qword_100CE1090;
  if (!qword_100CE1090)
  {
    v6[12] = v0;
    v6[13] = v1;
    v3 = sub_10022E824(&qword_100CE0F00, &qword_100A916F0);
    v4 = sub_10022E824(&qword_100CE0EF0, &qword_100A916E0);
    v5 = sub_10022E824(&qword_100CDCD58, &unk_100A8BA20);
    sub_10022E824(&qword_100CE0EE8, &qword_100A916D8);
    type metadata accessor for ContentSizeCategory();
    sub_100890D20();
    sub_100061520(&qword_100CE1038, &type metadata accessor for ContentSizeCategory);
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_100081338();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE1090);
  }

  return result;
}

uint64_t sub_1008915C8(uint64_t *a1)
{
  v3 = type metadata accessor for MainView(0);
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10088A928(a1, v5);
}

uint64_t sub_100891634()
{
  sub_10000FE4C();
  result = EnvironmentValues.accentColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100891728(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100891768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1008917C0()
{
  result = qword_100CE1198;
  if (!qword_100CE1198)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&unk_100CE10C0, &qword_100A91878);
    v4[0] = sub_10089184C();
    v4[1] = sub_1000812E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1198);
  }

  return result;
}

unint64_t sub_10089184C()
{
  result = qword_100CE11A0;
  if (!qword_100CE11A0)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&unk_100CE0F30, &qword_100A91720);
    v4[2] = sub_10022E824(&qword_100CE0F20, &qword_100A91710);
    v4[3] = &type metadata for String;
    v4[4] = sub_10089116C();
    v4[5] = sub_10002D5A4();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10006768C(&qword_100CE11A8, &qword_100CE11B0, qword_100A919C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE11A0);
  }

  return result;
}

uint64_t sub_100891978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = sub_100011748();
  v6 = v5(v4);
  sub_100003810(v6);
  v7 = sub_1000053B8();

  return a4(v7);
}

void sub_100891A0C(uint64_t a1, void *a2)
{
  sub_10000C70C(0, &qword_100CE14D8, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setBackgroundEffects:isa];
}

uint64_t sub_100891A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MainViewModel(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationSplitViewVisibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21[-1] - v15;
  v21[3] = type metadata accessor for MainInteractor();
  v21[4] = &off_100C5E2C8;
  v21[0] = a1;
  *(a3 + 64) = 0;
  static NavigationSplitViewVisibility.detailOnly.getter();
  (*(v11 + 32))(a3 + OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState, v16, v10);
  ObservationRegistrar.init()();
  sub_100035B30(v21, a3 + 24);
  *(a3 + 16) = a2;

  sub_100095730();
  v17 = v9[*(v7 + 40)];
  if (v17 == 1)
  {
    static NavigationSplitViewVisibility.doubleColumn.getter();
  }

  else
  {
    static NavigationSplitViewVisibility.detailOnly.getter();
  }

  sub_10088C980(v13);
  sub_10088C8AC(v17, v18);

  sub_1000A2E84(v9);
  sub_100006F14(v21);
  return a3;
}

uint64_t sub_100891C8C(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for MainInteractor();
  v15 = &off_100C5E2C8;
  v13[0] = a1;
  type metadata accessor for WeatherSplitViewBindingModel(0);
  v4 = swift_allocObject();
  v5 = sub_10002D7F8(v13, v14);
  v6 = __chkstk_darwin(v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_100891A90(*v8, a2, v4);
  sub_100006F14(v13);
  return v10;
}

unint64_t sub_100891DE0()
{
  result = qword_100CE11E8;
  if (!qword_100CE11E8)
  {
    result = swift_getWitnessTable(aE_15, &type metadata for WeatherSplitView, v0, v1);
    atomic_store(result, &qword_100CE11E8);
  }

  return result;
}

uint64_t sub_100891E64()
{

  sub_100006F14((v0 + 32));
  sub_100006F14((v0 + 72));

  return swift_deallocObject();
}

unint64_t sub_100891EBC()
{
  result = qword_100CE11F8;
  if (!qword_100CE11F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE11F0, &qword_100A91B10);
    v4[0] = sub_10006768C(&qword_100CE1200, &qword_100CE1208, &qword_100A91B18);
    v4[1] = sub_10006768C(&unk_100CE1210, &qword_100CDE310, &qword_100A91B20);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE11F8);
  }

  return result;
}

unint64_t sub_100892014()
{
  result = qword_100CE1288;
  if (!qword_100CE1288)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1268, &qword_100A91BC8);
    v4[0] = &protocol witness table for Never;
    v4[1] = sub_1008920A0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1288);
  }

  return result;
}

unint64_t sub_1008920A0()
{
  result = qword_100CE1290;
  if (!qword_100CE1290)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1270, &qword_100A91BD0);
    v4[0] = sub_100892158();
    v4[1] = sub_10006768C(&qword_100CE12D0, &qword_100CE12D8, &qword_100A91BF8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1290);
  }

  return result;
}

unint64_t sub_100892158()
{
  result = qword_100CE1298;
  if (!qword_100CE1298)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE12A0, &qword_100A91BE0);
    v4[0] = sub_1000A24F4();
    v4[1] = sub_1000A25AC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1298);
  }

  return result;
}

unint64_t sub_100892224()
{
  result = qword_100CE1328;
  if (!qword_100CE1328)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CE1320, &qword_100A91C28);
    v4[2] = &type metadata for MainViewDestinationLocationViewer;
    v4[3] = &type metadata for Color;
    v4[4] = sub_1000A49E4();
    v4[5] = &protocol witness table for Color;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1328);
  }

  return result;
}

uint64_t sub_100892344()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1008923A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1008923E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100892474()
{
  result = qword_100CE1358;
  if (!qword_100CE1358)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1360, &qword_100A91D28);
    v4[0] = sub_10089252C();
    v4[1] = sub_10006768C(&qword_100CE1380, &qword_100CE1388, &qword_100A91D38);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1358);
  }

  return result;
}

unint64_t sub_10089252C()
{
  result = qword_100CE1368;
  if (!qword_100CE1368)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1370, &qword_100A91D30);
    v4[0] = &protocol witness table for Color;
    v4[1] = sub_1008925B8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1368);
  }

  return result;
}

unint64_t sub_1008925B8()
{
  result = qword_100CE1378;
  if (!qword_100CE1378)
  {
    result = swift_getWitnessTable(byte_100A91D48, &type metadata for RecordMainViewPrimaryModuleModifier, v0, v1);
    atomic_store(result, &qword_100CE1378);
  }

  return result;
}

unint64_t sub_10089260C()
{
  result = qword_100CE1390;
  if (!qword_100CE1390)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1398, &qword_100A91D40);
    v4[0] = sub_100892014();
    v4[1] = sub_10006768C(&qword_100CE12E0, &qword_100CE1250, &qword_100A91BB0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1390);
  }

  return result;
}

unint64_t sub_1008926E0(uint64_t a1)
{
  result = sub_100892708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100892708()
{
  result = qword_100CE13C0;
  if (!qword_100CE13C0)
  {
    result = swift_getWitnessTable(asc_100A91D98, &type metadata for MainViewPrimaryModuleModulePreferenceKey, v0, v1);
    atomic_store(result, &qword_100CE13C0);
  }

  return result;
}

unint64_t sub_100892788()
{
  result = qword_100CE1408;
  if (!qword_100CE1408)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE13C8, &qword_100A91E50);
    v4[0] = sub_100892814();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1408);
  }

  return result;
}

unint64_t sub_100892814()
{
  result = qword_100CE1410;
  if (!qword_100CE1410)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1400, &qword_100A91EA8);
    v4[0] = sub_1008928A0();
    v4[1] = sub_100892A18();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1410);
  }

  return result;
}

unint64_t sub_1008928A0()
{
  result = qword_100CE1418;
  if (!qword_100CE1418)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE13E8, &qword_100A91E68);
    v4[0] = sub_10089295C();
    v4[1] = sub_100061520(&qword_100CE1430, type metadata accessor for RecordPinnedMapAnimatingViewModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1418);
  }

  return result;
}

unint64_t sub_10089295C()
{
  result = qword_100CE1420;
  if (!qword_100CE1420)
  {
    v7 = v0;
    v8 = v1;
    v3 = sub_10022E824(&qword_100CE1428, &qword_100A91EB0);
    v4 = &protocol witness table for Solarium;
    v5 = sub_10006768C(&qword_100CE13E0, &qword_100CE13D8, &qword_100A91E60);
    v6 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, &v4);
    atomic_store(result, &qword_100CE1420);
  }

  return result;
}

unint64_t sub_100892A18()
{
  result = qword_100CE1438;
  if (!qword_100CE1438)
  {
    result = swift_getWitnessTable(asc_100A92100, &type metadata for RecordMainStateChangesIntoEnvironmentState, v0, v1);
    atomic_store(result, &qword_100CE1438);
  }

  return result;
}

unint64_t sub_100892AAC()
{
  result = qword_100CE14F0;
  if (!qword_100CE14F0)
  {
    result = swift_getWitnessTable(byte_100A920B0, &type metadata for SplitViewDetailPane, v0, v1);
    atomic_store(result, &qword_100CE14F0);
  }

  return result;
}

uint64_t sub_100892B40()
{

  sub_100006F14((v0 + 32));
  sub_100006F14((v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_100892BB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_100892BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100892C5C()
{
  result = qword_100CE1518;
  if (!qword_100CE1518)
  {
    v6[14] = v0;
    v6[15] = v1;
    v3 = sub_10022E824(&qword_100CE1450, &unk_100A91EC0);
    v4 = sub_10022E824(&qword_100CE13D0, &qword_100A91E58);
    v5 = sub_10022E824(&qword_100CE1448, &qword_100A91EB8);
    sub_10022E824(&qword_100CE13C8, &qword_100A91E50);
    type metadata accessor for BalancedNavigationSplitViewStyle();
    sub_100892788();
    sub_100061520(&qword_100CE1440, &type metadata accessor for BalancedNavigationSplitViewStyle);
    v6[2] = v4;
    v6[3] = &type metadata for Solarium;
    v6[4] = v5;
    v6[5] = swift_getOpaqueTypeConformance2();
    v6[6] = &protocol witness table for Solarium;
    v6[7] = swift_getOpaqueTypeConformance2();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = &protocol witness table for _SafeAreaIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE1518);
  }

  return result;
}

unint64_t sub_100892E10()
{
  result = qword_100CE1520;
  if (!qword_100CE1520)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1510, &qword_100A91F78);
    v4[0] = sub_10006768C(&qword_100CE1528, &qword_100CE1508, &qword_100A91F70);
    v4[1] = sub_10006768C(&qword_100CE1530, &qword_100CE1538, qword_100A92058);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1520);
  }

  return result;
}

unint64_t sub_100892F54()
{
  result = qword_100CE1560;
  if (!qword_100CE1560)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1540, &qword_100A92150);
    v4[0] = sub_10089300C();
    v4[1] = sub_10006768C(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1560);
  }

  return result;
}

unint64_t sub_10089300C()
{
  result = qword_100CE1568;
  if (!qword_100CE1568)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1558, &qword_100A92190);
    v4[0] = sub_10006768C(&unk_100CE1570, &qword_100CE1550, &qword_100A92188);
    v4[1] = sub_10006768C(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1568);
  }

  return result;
}

unint64_t sub_100893130()
{
  result = qword_100CE15C8;
  if (!qword_100CE15C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE15C0, &unk_100A92230);
    v4[0] = sub_10006768C(&unk_100CE15D0, &qword_100CBA9B8, &qword_100A50370);
    v4[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE15C8);
  }

  return result;
}

unint64_t sub_1008931F0()
{
  result = qword_100CE15E8;
  if (!qword_100CE15E8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&unk_100CE15B0, &unk_100A92220);
    v4[2] = sub_10022E824(&qword_100CE15C0, &unk_100A92230);
    v4[3] = sub_100893130();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1008932B8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE15E8);
  }

  return result;
}

unint64_t sub_1008932B8()
{
  result = qword_100CE15F0;
  if (!qword_100CE15F0)
  {
    result = swift_getWitnessTable(asc_100A92400, &type metadata for DetailViewSearchOverlayViewModifier, v0, v1);
    atomic_store(result, &qword_100CE15F0);
  }

  return result;
}

unint64_t sub_10089330C()
{
  result = qword_100CE1600;
  if (!qword_100CE1600)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE15F8, &qword_100A92248);
    v4[0] = sub_100893398();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1600);
  }

  return result;
}

unint64_t sub_100893398()
{
  result = qword_100CE1608;
  if (!qword_100CE1608)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1610, &qword_100A92250);
    v4[0] = sub_1008931F0();
    v4[1] = sub_10006768C(&qword_100CE1618, &qword_100CE1620, &unk_100A92258);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1608);
  }

  return result;
}

unint64_t sub_100893470()
{
  result = qword_100CE1658;
  if (!qword_100CE1658)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1650, &qword_100A922A8);
    v4[0] = sub_1008934FC();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1658);
  }

  return result;
}

unint64_t sub_1008934FC()
{
  result = qword_100CE1660;
  if (!qword_100CE1660)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1668, &qword_100A922B0);
    v4[0] = sub_100893588();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1660);
  }

  return result;
}

unint64_t sub_100893588()
{
  result = qword_100CE1670;
  if (!qword_100CE1670)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CE1678, &qword_100A922B8);
    v4[2] = &type metadata for Image;
    v4[3] = sub_10022E824(&unk_100CE1680, &unk_100A450F0);
    v4[4] = &protocol witness table for Image;
    v4[5] = sub_10006768C(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10006768C(&unk_100CE1690, &qword_100CAF750, &qword_100A57BC0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1670);
  }

  return result;
}

unint64_t sub_1008936C4()
{
  result = qword_100CE16B8;
  if (!qword_100CE16B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1640, &qword_100A92298);
    v4[0] = sub_100893750();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE16B8);
  }

  return result;
}

unint64_t sub_100893750()
{
  result = qword_100CE16C0;
  if (!qword_100CE16C0)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CE16B0, &qword_100A922C0);
    v4[2] = sub_10022E824(&qword_100CE1638, &qword_100A92290);
    v4[3] = type metadata accessor for AutomaticHoverEffect();
    v4[4] = sub_10006768C(&qword_100CE16A0, &qword_100CE1638, &qword_100A92290);
    v4[5] = sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE16C0);
  }

  return result;
}

unint64_t sub_1008938F4()
{
  result = qword_100CE1738;
  if (!qword_100CE1738)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CE1730, &unk_100A92348);
    v4[2] = sub_10022E824(&unk_100CE1740, &unk_100A31E70);
    v4[3] = type metadata accessor for AutomaticHoverEffect();
    v4[4] = sub_10006768C(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70);
    v4[5] = sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100061520(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1738);
  }

  return result;
}

uint64_t sub_100893A70()
{
  sub_100006F14((v0 + 24));
  sub_100006F14((v0 + 64));

  return swift_deallocObject();
}

unint64_t sub_100893AC8()
{
  result = qword_100CE1760;
  if (!qword_100CE1760)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1598, &unk_100A921D8);
    v4[0] = sub_100893B80();
    v4[1] = sub_10006768C(&qword_100CE1780, &qword_100CE15A0, &unk_100A6E340);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1760);
  }

  return result;
}

unint64_t sub_100893B80()
{
  result = qword_100CE1768;
  if (!qword_100CE1768)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1590, &qword_100A921D0);
    v4[0] = sub_10006768C(&qword_100CE1770, &qword_100CE1778, &qword_100A923F8);
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1768);
  }

  return result;
}

unint64_t sub_100893C54()
{
  result = qword_100CE1800;
  if (!qword_100CE1800)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE17A8, &qword_100A92468);
    v4[0] = sub_100893D0C();
    v4[1] = sub_10006768C(&qword_100CE1830, &qword_100CE1838, &unk_100A924A0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1800);
  }

  return result;
}

unint64_t sub_100893D0C()
{
  result = qword_100CE1808;
  if (!qword_100CE1808)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE17D8, &qword_100A92488);
    v4[0] = sub_100893DC4();
    v4[1] = sub_10006768C(&unk_100CE1820, &qword_100CB3618, &qword_100A46110);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1808);
  }

  return result;
}

unint64_t sub_100893DC4()
{
  result = qword_100CE1810;
  if (!qword_100CE1810)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CE1818, &unk_100A92490);
    v4[0] = &protocol witness table for Solarium;
    v4[1] = sub_10006768C(&qword_100CE17C8, &qword_100CE17B8, &qword_100A92478);
    v4[2] = sub_10006768C(&qword_100CE17D0, &qword_100CE17C0, &qword_100A92480);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE1810);
  }

  return result;
}

uint64_t sub_100893EB0()
{

  return swift_deallocObject();
}

unint64_t sub_100893F20()
{
  result = qword_100CE18A0;
  if (!qword_100CE18A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE1798, &qword_100A92458);
    v4[0] = sub_100893FD8();
    v4[1] = sub_10006768C(&qword_100CE18B8, &qword_100CE17A0, &qword_100A92460);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE18A0);
  }

  return result;
}

unint64_t sub_100893FD8()
{
  result = qword_100CE18A8;
  if (!qword_100CE18A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE18B0, &qword_100A924C8);
    v4[0] = sub_10006768C(&qword_100CE1790, &qword_100CE1788, &qword_100A92450);
    v4[1] = sub_100061520(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE18A8);
  }

  return result;
}

uint64_t sub_1008940D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocationPreviewViewAction(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE1970, &qword_100A92548);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10089444C(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      v11 = type metadata accessor for Location();
      (*(*(v11 - 8) + 8))(v6, v11);
      break;
    default:
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      break;
  }

  a1[3] = v7;
  a1[4] = sub_1008944B0();
  v12 = sub_100042FB0(a1);
  return (*(v8 + 32))(v12, v10, v7);
}

uint64_t sub_1008943C0(uint64_t a1)
{
  sub_100894514(&qword_100CE1980, aE_74);

  return ShortDescribable.description.getter();
}

uint64_t sub_10089444C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008944B0()
{
  result = qword_100CE1978;
  if (!qword_100CE1978)
  {
    v3 = sub_10022E824(&qword_100CE1970, &qword_100A92548);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE1978);
  }

  return result;
}

uint64_t sub_100894514(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for LocationPreviewViewAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

double sub_100894558()
{
  v2 = *(v0 + 40);
  sub_100028CBC();
  if (v3)
  {
    sub_1000FDB68();
    sub_10001D07C();
    sub_100023444();
    sub_10001A0E0();
    if (v6)
    {
      v1 = v5;
    }

    else
    {
      v1 = v4;
    }
  }

  v7 = sub_100004D34();
  return v2 * v7 + v1 * v8;
}

BOOL sub_1008945D0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 - 3 < 2)
  {
    return 0;
  }

  return a1 == a2;
}

BOOL sub_100894634(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 8);
  if (*(v1 + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      return 0;
    }

    v4 = v2 == v3 && *(v1 + 16) == *(a1 + 16);
    if (!v4 || *(v1 + 24) != *(a1 + 24))
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    if ((*(a1 + 32) & 1) != 0 || v2 != v3)
    {
      return v6;
    }
  }

  if (*(v1 + 40) != *(a1 + 40) || *(v1 + 48) != *(a1 + 48))
  {
    return 0;
  }

  v7 = *(v1 + 49);
  v8 = *(a1 + 49);
  if (v7 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v7 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if ((v8 - 3) < 2 || v7 != v8)
  {
    return 0;
  }

  if (*(v1 + 56) != *(a1 + 56))
  {
    return 0;
  }

  return *(v1 + 64) == *(a1 + 64);
}

uint64_t sub_100894718(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 3;
  }

  else
  {
    return (0x2030103000303uLL >> (8 * a1));
  }
}

BOOL sub_100894740(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = *&a2 == *&a6;
  if (*&a3 != *&a7)
  {
    v8 = 0;
  }

  if (*&a1 != *&a5)
  {
    v8 = 0;
  }

  if ((a8 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = *&a1 == *&a5;
  if (a8)
  {
    v9 = 0;
  }

  if (a4)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1008947B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100894718(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008947DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100894624(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100894868(double a1)
{
  v2 = *(v1 + 49);
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 == 4)
  {
    v3 = *(v1 + 56) * 0.0;
    sub_1000FD520();
    v5 = v4 + v3 + sub_1000FDB68();
  }

  else
  {
    v8 = 2 * *(v1 + 48) + 2;
    v9 = *(v1 + 40) * ((2 * *(v1 + 48)) | 1uLL);
    v10 = *(v1 + 56) + *(v1 + 56);
    v11 = *(v1 + 8);
    if (*(v1 + 32))
    {
      sub_1000FDB68();
      sub_1000FDE84();
      sub_10001A0E0();
      if (v13)
      {
        v11 = v12;
      }
    }

    v5 = a1 - (v9 + v10 + v11 * v8) + -20.0;
  }

  return *&v5;
}

uint64_t sub_100894968@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  strcpy((inited + 32), "sizingBehavior");
  *(inited + 47) = -18;
  *(inited + 72) = &unk_100C73338;
  v4 = swift_allocObject();
  *(inited + 48) = v4;
  *(v4 + 25) = *(v1 + 17);
  *(v4 + 16) = *(v1 + 8);
  *(inited + 80) = 0x6957726574747567;
  *(inited + 88) = 0xEB00000000687464;
  *(inited + 96) = *(v1 + 56);
  *(inited + 120) = &type metadata for CGFloat;
  *(inited + 128) = 0x69576E696772616DLL;
  *(inited + 136) = 0xEB00000000687464;
  *(inited + 144) = *(v1 + 40);
  *(inited + 168) = &type metadata for CGFloat;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x8000000100AE2D50;
  *(inited + 192) = *(v1 + 48);
  *(inited + 216) = &unk_100C732A8;
  strcpy((inited + 224), "mapPlacement");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v5 = *(v1 + 49);
  *(inited + 264) = &unk_100C73218;
  strcpy((inited + 272), "mapColumnCount");
  *(inited + 287) = -18;
  *(inited + 240) = v5;
  if ((v5 - 3) >= 2)
  {
    v10 = &unk_100C732A8;
    LOBYTE(v9) = v5;
    sub_100166170(&v9, (inited + 288));
  }

  else
  {
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = 0x3E6C696E3CLL;
    *(inited + 296) = 0xE500000000000000;
  }

  sub_10000918C();
  *(inited + 320) = v6 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(inited + 328) = 0xEB00000000687464;
  *(inited + 336) = sub_10014B28C();
  *(inited + 360) = &type metadata for CGFloat;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000100AE2D70;
  v7 = sub_1000EF898();
  *(inited + 408) = &type metadata for CGFloat;
  *(inited + 384) = v7;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CE19A8, &qword_100A92758);
  a1[4] = sub_10012EF24(&qword_100CE19B0, &qword_100CE19A8, &qword_100A92758);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100894C28(uint64_t a1)
{
  sub_1008953E8();

  return ShortDescribable.description.getter();
}

uint64_t sub_100894C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  sub_10022C350(&qword_100CE19D8, &qword_100A92768);
  sub_10000548C();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100005E40();
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  if (a4)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    *(inited + 32) = 0x6874646977;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = a1;
    *(inited + 72) = &type metadata for CGFloat;
    *(inited + 80) = 0x696F706B61657262;
    *(inited + 120) = &unk_100C73180;
    *(inited + 88) = 0xEB0000000073746ELL;
    *(inited + 96) = a2;
    *(inited + 104) = a3;
  }

  else
  {
    *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
    sub_10000918C();
    v17[4] = v16 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
    v17[5] = 0xEC0000003A687464;
    v17[9] = &type metadata for CGFloat;
    v17[6] = a1;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a5[3] = v5;
  a5[4] = sub_10012EF24(&qword_100CE19E0, &qword_100CE19D8, &qword_100A92768);
  v18 = sub_100042FB0(a5);
  return (*(v13 + 32))(v18, v6, v5);
}

uint64_t sub_100894E8C(uint64_t a1)
{
  sub_10089543C();

  return ShortDescribable.description.getter();
}

uint64_t sub_100894EC8@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 0x756F466F546F7774;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for CGFloat;
  *(inited + 80) = 0x69536F5472756F66;
  *(inited + 88) = 0xE900000000000078;
  *(inited + 120) = &type metadata for CGFloat;
  *(inited + 96) = a3;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CE19F0, &qword_100A92770);
  a1[4] = sub_10012EF24(&qword_100CE19F8, &qword_100CE19F0, &qword_100A92770);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10089501C(uint64_t a1)
{
  sub_100895490();

  return ShortDescribable.description.getter();
}

uint64_t sub_100895058@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CE1A08, &qword_100A92778);
  sub_10000548C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005E40();
  if (a1 != 4 && a1 != 3)
  {
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
    sub_10000918C();
    *(v10 + 32) = v9 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    *(v10 + 40) = 0xEB00000000746E75;
    *(v10 + 72) = &unk_100C732A8;
    *(v10 + 48) = a1;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v2;
  a2[4] = sub_10012EF24(&qword_100CE1A10, &qword_100CE1A08, &qword_100A92778);
  v11 = sub_100042FB0(a2);
  return (*(v7 + 32))(v11, v3, v2);
}

uint64_t sub_1008952A0(uint64_t a1)
{
  sub_1008954E4();

  return ShortDescribable.description.getter();
}

unint64_t sub_1008952E4()
{
  result = qword_100CE1988;
  if (!qword_100CE1988)
  {
    result = swift_getWitnessTable(aW_0, &unk_100C73180, v0, v1);
    atomic_store(result, &qword_100CE1988);
  }

  return result;
}

unint64_t sub_10089533C()
{
  result = qword_100CE1990;
  if (!qword_100CE1990)
  {
    result = swift_getWitnessTable(byte_100A92650, &unk_100C73338, v0, v1);
    atomic_store(result, &qword_100CE1990);
  }

  return result;
}

unint64_t sub_100895394()
{
  result = qword_100CE19A0;
  if (!qword_100CE19A0)
  {
    result = swift_getWitnessTable(asc_100A92700, &unk_100C730C0, v0, v1);
    atomic_store(result, &qword_100CE19A0);
  }

  return result;
}

unint64_t sub_1008953E8()
{
  result = qword_100CE19B8;
  if (!qword_100CE19B8)
  {
    result = swift_getWitnessTable(aQ_1, &unk_100C730C0, v0, v1);
    atomic_store(result, &qword_100CE19B8);
  }

  return result;
}

unint64_t sub_10089543C()
{
  result = qword_100CE19E8;
  if (!qword_100CE19E8)
  {
    result = swift_getWitnessTable(byte_100A92678, &unk_100C73338, v0, v1);
    atomic_store(result, &qword_100CE19E8);
  }

  return result;
}

unint64_t sub_100895490()
{
  result = qword_100CE1A00;
  if (!qword_100CE1A00)
  {
    result = swift_getWitnessTable(aY_21, &unk_100C73180, v0, v1);
    atomic_store(result, &qword_100CE1A00);
  }

  return result;
}

unint64_t sub_1008954E4()
{
  result = qword_100CE1A18;
  if (!qword_100CE1A18)
  {
    result = swift_getWitnessTable(byte_100A925C8, &unk_100C73218, v0, v1);
    atomic_store(result, &qword_100CE1A18);
  }

  return result;
}

unsigned __int8 *sub_100895538(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_1008955E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1008956BC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100895788()
{
  result = qword_100CE1A20;
  if (!qword_100CE1A20)
  {
    result = swift_getWitnessTable(aO, &unk_100C732A8, v0, v1);
    atomic_store(result, &qword_100CE1A20);
  }

  return result;
}

uint64_t sub_1008957E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_100895874()
{
  v1 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_label;
  v2 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037E8();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_weatherLabel);
  (v4)(v5);
  v6 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapLabel);
  (v4)(v6);
  v7 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapMetadataLabel);
  (v4)(v7);
  v8 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesLabel);
  (v4)(v8);
  v9 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_overlayTileLabel);
  (v4)(v9);

  return v0;
}

uint64_t sub_1008959AC()
{
  sub_100895874();

  return swift_deallocClassInstance();
}

double sub_100895A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId);
  if (!*(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8))
  {
    *v3 = a2;
    v3[1] = a3;
  }

  return result;
}

uint64_t sub_100895A30(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NetworkActivityCompletion(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_10005ABDC();
  return sub_10005AE3C(v5);
}

uint64_t sub_100895B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v114 = a3;
  v117 = a4;
  v116 = type metadata accessor for NWActivity.CompletionReason();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100[0] = v100 - v8;
  v9 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  __chkstk_darwin(v9 - 8);
  v111 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = v100 - v12;
  v13 = type metadata accessor for WeatherNetworkActivity.Label();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v109 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherNetworkActivity.Domain();
  v101 = *(v15 - 8);
  v102 = v15;
  __chkstk_darwin(v15);
  v105 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherNetworkActivity();
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v106 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WeatherMap.Event();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v100 - v24;
  __chkstk_darwin(v26);
  v28 = v100 - v27;
  v29 = type metadata accessor for WeatherMapPurpose();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = (v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v115 = a1;
  if (!*(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity))
  {
    goto LABEL_12;
  }

  v100[1] = *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity);
  (*(v30 + 16))(v33, a2, v29, v31);
  if ((*(v30 + 88))(v33, v29) != enum case for WeatherMapPurpose.snapshot(_:))
  {
    (*(v30 + 8))(v33, v29);
    goto LABEL_12;
  }

  (*(v30 + 96))(v33, v29);
  v34 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8);
  if (!v34)
  {

    goto LABEL_12;
  }

  if (*v33 == *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) && v34 == v33[1])
  {

    v37 = v19;
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v19;
    if ((v36 & 1) == 0)
    {

LABEL_12:
      v38 = type metadata accessor for NetworkActivityCompletion(0);
      v39 = v117;
      result = sub_10001B350(&v117[*(v38 + 24)], 1, 1, v116);
      *v39 = _swiftEmptyArrayStorage;
      *(v39 + 1) = _swiftEmptyArrayStorage;
      return result;
    }
  }

  v41 = v20;
  v42 = *(v20 + 16);
  v42(v28, v114, v37);
  v43 = (*(v20 + 88))(v28, v37);
  if (v43 == enum case for WeatherMap.Event.didFinishLoading(_:))
  {
    v42(v22, v28, v37);
    (*(v20 + 96))(v22, v37);
    v44 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity);
    if (v44)
    {
      *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity) = 0;
      v46 = v112;
      v45 = v113;
      v47 = &enum case for NWActivity.CompletionReason.success(_:);
      if (!*v22)
      {
        v47 = &enum case for NWActivity.CompletionReason.failure(_:);
      }

      v48 = v116;
      (*(v113 + 104))(v112, *v47, v116);
      sub_100316A04(v44, v46, v117);

      (*(v45 + 8))(v46, v48);
      return (*(v41 + 8))(v28, v37);
    }

    if (qword_100CA2718 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000703C(v72, qword_100D90BA0);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_37;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Map indicated it had finished loading for location activity that wasn't tracked";
    goto LABEL_36;
  }

  if (v43 == enum case for WeatherMap.Event.overlay(_:))
  {
    v42(v25, v28, v37);
    (*(v20 + 96))(v25, v37);
    v49 = type metadata accessor for WeatherMap.Event.Overlay();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 88))(v25, v49);
    if (v51 == enum case for WeatherMap.Event.Overlay.didFinishLoadingTiles(_:))
    {
      (*(v50 + 96))(v25, v49);
      v52 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity);
      if (v52)
      {
        *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity) = 0;
        v53 = v113;
        v54 = &enum case for NWActivity.CompletionReason.success(_:);
        if (!*v25)
        {
          v54 = &enum case for NWActivity.CompletionReason.failure(_:);
        }

        v55 = v100[0];
        v56 = v116;
        (*(v113 + 104))(v100[0], *v54, v116);
        sub_100316A04(v52, v55, v117);

        (*(v53 + 8))(v55, v56);
        return (*(v41 + 8))(v28, v37);
      }

      if (qword_100CA2718 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_10000703C(v93, qword_100D90BA0);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v73, v74))
      {
        goto LABEL_37;
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "Map indicated tiles had finished loading for location activity that wasn't tracked";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v73, v74, v76, v75, 2u);

LABEL_37:

LABEL_48:
      v91 = type metadata accessor for NetworkActivityCompletion(0);
      v92 = v117;
      sub_10001B350(&v117[*(v91 + 24)], 1, 1, v116);
      *v92 = _swiftEmptyArrayStorage;
      *(v92 + 1) = _swiftEmptyArrayStorage;
      return (*(v41 + 8))(v28, v37);
    }

    if (v51 == enum case for WeatherMap.Event.Overlay.willStartLoadingTiles(_:))
    {
      v114 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity;
      v77 = v115;
      v78 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity);
      (*(v101 + 104))(v105, enum case for WeatherNetworkActivity.Domain.weather(_:), v102);
      (*(v103 + 16))(v109, v77 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesLabel, v104);
      v79 = type metadata accessor for UUID();
      sub_10001B350(v110, 1, 1, v79);
      sub_10001B350(v111, 1, 1, v79);

      v80 = v106;
      WeatherNetworkActivity.init(domain:label:token:parentToken:)();
      v81 = WeatherNetworkActivity.createNWActivity()();
      (*(v107 + 8))(v80, v108);

      NWActivity.parentActivity.setter();
      *(v77 + v114) = v81;

      if (v78)
      {
        if (qword_100CA2718 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_10000703C(v82, qword_100D90BA0);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Map indicated snapshot map overlay started loading again while loading", v85, 2u);
        }

        sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
        v86 = swift_allocObject();
        v115 = xmmword_100A3BD20;
        *(v86 + 16) = xmmword_100A3BD20;
        *(v86 + 32) = v81;
        v87 = swift_allocObject();
        *(v87 + 16) = v115;
        *(v87 + 32) = v78;

        v88 = *(type metadata accessor for NetworkActivityCompletion(0) + 24);
        v90 = v116;
        v89 = v117;
        (*(v113 + 104))(&v117[v88], enum case for NWActivity.CompletionReason.cancelled(_:), v116);
        sub_10001B350(&v89[v88], 0, 1, v90);
        *v89 = v86;
        *(v89 + 1) = v87;
      }

      else
      {
        sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_100A3BD20;
        *(v97 + 32) = v81;

        v98 = type metadata accessor for NetworkActivityCompletion(0);
        v99 = v117;
        sub_10001B350(&v117[*(v98 + 24)], 1, 1, v116);
        *v99 = v97;
        *(v99 + 1) = _swiftEmptyArrayStorage;
      }

      return (*(v41 + 8))(v28, v37);
    }

    (*(v50 + 8))(v25, v49);
LABEL_47:

    goto LABEL_48;
  }

  if (v43 != enum case for WeatherMap.Event.willStartLoading(_:))
  {
    goto LABEL_47;
  }

  v114 = v28;
  v57 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity;
  v58 = v115;
  v59 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity);
  (*(v101 + 104))(v105, enum case for WeatherNetworkActivity.Domain.weather(_:), v102);
  (*(v103 + 16))(v109, v58 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapLabel, v104);
  v60 = type metadata accessor for UUID();
  sub_10001B350(v110, 1, 1, v60);
  sub_10001B350(v111, 1, 1, v60);

  v61 = v106;
  WeatherNetworkActivity.init(domain:label:token:parentToken:)();
  v62 = WeatherNetworkActivity.createNWActivity()();
  (*(v107 + 8))(v61, v108);

  NWActivity.parentActivity.setter();
  *(v58 + v57) = v62;

  if (v59)
  {
    if (qword_100CA2718 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000703C(v63, qword_100D90BA0);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Map indicated snapshot map started loading again while loading", v66, 2u);
    }

    sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
    v67 = swift_allocObject();
    v115 = xmmword_100A3BD20;
    *(v67 + 16) = xmmword_100A3BD20;
    *(v67 + 32) = v62;
    v68 = swift_allocObject();
    *(v68 + 16) = v115;
    *(v68 + 32) = v59;

    v69 = *(type metadata accessor for NetworkActivityCompletion(0) + 24);
    v71 = v116;
    v70 = v117;
    (*(v113 + 104))(&v117[v69], enum case for NWActivity.CompletionReason.cancelled(_:), v116);
    sub_10001B350(&v70[v69], 0, 1, v71);
    *v70 = v67;
    *(v70 + 1) = v68;
  }

  else
  {
    sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_100A3BD20;
    *(v94 + 32) = v62;

    v95 = type metadata accessor for NetworkActivityCompletion(0);
    v96 = v117;
    sub_10001B350(&v117[*(v95 + 24)], 1, 1, v116);
    *v96 = v94;
    *(v96 + 1) = _swiftEmptyArrayStorage;
  }

  return (*(v41 + 8))(v114, v37);
}

void sub_100896AF8()
{
  sub_10000C778();
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v46 = v6;
  v7 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v45 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  v44 = &v41 - v11;
  v12 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037C4();
  v42 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v41 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for WeatherMapPurpose();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = (v29 - v28);
  if (!*(v0 + *v3))
  {
    goto LABEL_12;
  }

  (*(v26 + 16))(v30, v5, v24);
  if ((*(v26 + 88))(v30, v24) != enum case for WeatherMapPurpose.snapshot(_:))
  {
    (*(v26 + 8))(v30, v24);
    goto LABEL_12;
  }

  (*(v26 + 96))(v30, v24);
  v31 = *(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8);
  if (!v31)
  {

    goto LABEL_12;
  }

  if (*v30 == *(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) && v31 == v30[1])
  {

    goto LABEL_15;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_15:
    (*(v41 + 104))(v23, enum case for WeatherNetworkActivity.Domain.weather(_:), v18);
    (*(v42 + 16))(v17, v0 + *v43, v12);
    v37 = type metadata accessor for UUID();
    sub_100003934();
    sub_10001B350(v38, v39, v40, v37);
    NWActivity.token.getter();
    sub_10004EC84();
    v35 = v46;
    WeatherNetworkActivity.init(domain:label:token:parentToken:)();

    v34 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v34 = 1;
  v35 = v46;
LABEL_13:
  v36 = type metadata accessor for WeatherNetworkActivity();
  sub_10001B350(v35, v34, 1, v36);
  sub_10000536C();
}

unint64_t sub_100896F08(uint64_t a1)
{
  result = sub_100896F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100896F30()
{
  result = qword_100CE1B80;
  if (!qword_100CE1B80)
  {
    v3 = type metadata accessor for LocationNetworkActivityFlow(255);
    result = swift_getWitnessTable(aO_0, v3, v0, v1);
    atomic_store(result, &qword_100CE1B80);
  }

  return result;
}

uint64_t sub_100896F94(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE1B88, &qword_100A92A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100897008@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, a1);
  v3 = *(type metadata accessor for SearchDismissOverlayView(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1008970CC(uint64_t a1)
{
  sub_100897138(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100897138(uint64_t a1)
{
  if (!qword_100CE1CA0)
  {
    type metadata accessor for HistoricalComparisons();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE1CA0);
    }
  }
}

BOOL sub_100897190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalComparisons();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_10022C350(&qword_100CE1CD0, &qword_100A92B40);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1004709A8(a1, &v24 - v16);
  sub_1004709A8(a2, &v17[v19]);
  sub_100003A40(v17);
  if (!v20)
  {
    sub_1004709A8(v17, v13);
    sub_100003A40(&v17[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v9, &v17[v19], v4);
      sub_100897A1C(&qword_100CE1CD8, &protocol conformance descriptor for HistoricalComparisons);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v9, v4);
      v23(v13, v4);
      sub_10003FDF4(v17, &qword_100CABD10, &qword_100A3ABB0);
      return (v22 & 1) != 0;
    }

    (*(v6 + 8))(v13, v4);
LABEL_9:
    sub_10003FDF4(v17, &qword_100CE1CD0, &qword_100A92B40);
    return 0;
  }

  sub_100003A40(&v17[v19]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_10003FDF4(v17, &qword_100CABD10, &qword_100A3ABB0);
  return 1;
}

uint64_t sub_100897408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_10022C350(&qword_100CE1CE0, &qword_100A92B48);
  sub_1000037C4();
  v21 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for AveragesComponent(0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1008978F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v20;
    type metadata accessor for HistoricalComparisons();
    sub_100897A1C(&qword_100CE1CF0, &protocol conformance descriptor for HistoricalComparisons);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v12, v8);
    sub_100897948(v7, v16);
    sub_1008979B8(v16, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_100897628(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73697261706D6F63 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_1008976C4(void *a1)
{
  v2 = sub_10022C350(&qword_100CE1CF8, &qword_100A92B50);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_1008978F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for HistoricalComparisons();
  sub_100897A1C(&qword_100CE1D00, &protocol conformance descriptor for HistoricalComparisons);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10089781C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100897628(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100897848(uint64_t a1)
{
  v2 = sub_1008978F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100897884(uint64_t a1)
{
  v2 = sub_1008978F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008978F4()
{
  result = qword_100CE1CE8;
  if (!qword_100CE1CE8)
  {
    result = swift_getWitnessTable(asc_100A92C1C, &type metadata for AveragesComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1CE8);
  }

  return result;
}

uint64_t sub_100897948(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008979B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100897A1C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for HistoricalComparisons();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AveragesComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_100897B10()
{
  result = qword_100CE1D08;
  if (!qword_100CE1D08)
  {
    result = swift_getWitnessTable(asc_100A92BF4, &type metadata for AveragesComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1D08);
  }

  return result;
}

unint64_t sub_100897B68()
{
  result = qword_100CE1D10;
  if (!qword_100CE1D10)
  {
    result = swift_getWitnessTable(asc_100A92B64, &type metadata for AveragesComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1D10);
  }

  return result;
}

unint64_t sub_100897BC0()
{
  result = qword_100CE1D18;
  if (!qword_100CE1D18)
  {
    result = swift_getWitnessTable(aE_16, &type metadata for AveragesComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1D18);
  }

  return result;
}

uint64_t sub_100897C14(uint64_t a1)
{
  v7 = a1;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220, &qword_100A4A330);
  sub_10022C350(&qword_100CE1D20, &qword_100A92DE8);
  if (swift_dynamicCast())
  {
    sub_100013188(v5, v8);
    v1 = v9;
    v2 = v10;
    sub_1000161C0(v8, v9);
    v3 = (*(v2 + 8))(v1, v2);

    sub_100006F14(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_10089AF30(v5);
    swift_getErrorValue();
    v3 = Error.domainAndCode.getter();
  }

  return v3;
}

uint64_t sub_100897D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E697373696DLL && a2 == 0xEE00746E65727275;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44676E697373696DLL && a2 == 0xEC000000796C6961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x48676E697373696DLL && a2 == 0xED0000796C72756FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100AE2E80 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000100AE2EA0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000100AE2EC0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x52676E697373696DLL && a2 == 0xEF65736E6F707365;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x8000000100AE2EE0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x8000000100AE2F00 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65736E6F70736572 && a2 == 0xEE0064656C696146;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x8000000100AE2F20 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000017 && 0x8000000100AE2F40 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000022 && 0x8000000100AE2F60 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000020 && 0x8000000100AE2F90 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
  }
}

unint64_t sub_1008981BC(char a1)
{
  result = 0x43676E697373696DLL;
  switch(a1)
  {
    case 1:
      result = 0x44676E697373696DLL;
      break;
    case 2:
      result = 0x48676E697373696DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x52676E697373696DLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x65736E6F70736572;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 14:
      result = 0x6C616E7265747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008983B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    case 7:
      return a4 == 7;
    case 8:
      return a4 == 8;
    case 9:
      return a4 == 9;
    case 10:
      return a4 == 10;
    case 11:
      return a4 == 11;
    case 12:
      return a4 == 12;
    case 13:
      return a4 == 13;
    default:
      if (a4 < 0xE)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
  }
}

uint64_t sub_1008984B4(void *a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v85[2] = a2;
  v4 = sub_10022C350(&qword_100CE1E30, &qword_100A92E80);
  sub_100003E5C(v4, &v95);
  v85[1] = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  sub_10022C350(&qword_100CE1E38, &qword_100A92E88);
  sub_1000037C4();
  v99 = v9;
  v100 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v98 = v11;
  sub_10022C350(&qword_100CE1E40, &qword_100A92E90);
  sub_1000037C4();
  v96 = v13;
  v97 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v95 = v15;
  sub_10022C350(&qword_100CE1E48, &qword_100A92E98);
  sub_1000037C4();
  v93 = v17;
  v94 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v92 = v19;
  sub_10022C350(&qword_100CE1E50, &qword_100A92EA0);
  sub_1000037C4();
  v90 = v21;
  v91 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v89 = v23;
  sub_10022C350(&qword_100CE1E58, &qword_100A92EA8);
  sub_1000037C4();
  v87 = v25;
  v88 = v24;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v86 = v27;
  v28 = sub_10022C350(&qword_100CE1E60, &qword_100A92EB0);
  sub_100003E5C(v28, &v122);
  v85[24] = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CE1E68, &qword_100A92EB8);
  sub_100003E5C(v32, &v121);
  v85[21] = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CE1E70, &qword_100A92EC0);
  sub_100003E5C(v36, &v120);
  v85[18] = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v40 = sub_10022C350(&qword_100CE1E78, &qword_100A92EC8);
  sub_100003E5C(v40, &v112);
  v85[15] = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CE1E80, &qword_100A92ED0);
  sub_100003E5C(v44, &v105);
  v85[12] = v45;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CE1E88, &qword_100A92ED8);
  sub_100003E5C(v48, &v102);
  v85[9] = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CE1E90, &qword_100A92EE0);
  sub_100003E5C(v52, &v99);
  v85[6] = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  v56 = v85 - v55;
  v57 = sub_10022C350(&qword_100CE1E98, &qword_100A92EE8);
  sub_1000037C4();
  v85[5] = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  v60 = sub_10022C350(&qword_100CE1EA0, &qword_100A92EF0);
  sub_1000037C4();
  v85[4] = v61;
  sub_100003828();
  __chkstk_darwin(v62);
  v64 = v85 - v63;
  sub_10022C350(&qword_100CE1EA8, &qword_100A92EF8);
  sub_1000037C4();
  v103 = v65;
  v104 = v66;
  sub_100003828();
  __chkstk_darwin(v67);
  v69 = v85 - v68;
  v70 = sub_1000161C0(a1, a1[3]);
  sub_10089AF98();
  v102 = v69;
  v71 = v101;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v71)
  {
    case 0:
      v106 = 0;
      sub_10089B484();
      v70 = v102;
      v71 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v73 = v64;
      v74 = v60;
      goto LABEL_18;
    case 1:
      v107[0] = 1;
      sub_10089B430();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.MissingDailyCodingKeys, v107);
      v73 = sub_1000197E4();
      v74 = v57;
      goto LABEL_18;
    case 2:
      v107[1] = 2;
      sub_10089B3DC();
      v70 = v102;
      v71 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v73 = v56;
      v78 = &v99;
      goto LABEL_17;
    case 3:
      v108 = 3;
      sub_10089B388();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.InsufficientDaysCodingKeys, &v108);
      v73 = sub_1000197E4();
      v78 = &v102;
      goto LABEL_17;
    case 4:
      v109 = 4;
      sub_10089B334();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.InsufficientHoursCodingKeys, &v109);
      v73 = sub_1000197E4();
      v78 = &v105;
      goto LABEL_17;
    case 5:
      v110 = 5;
      sub_10089B2E0();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.UnexpectedDateFormatCodingKeys, &v110);
      v73 = sub_1000197E4();
      v78 = &v112;
      goto LABEL_17;
    case 6:
      v111 = 6;
      sub_10089B28C();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.MissingResponseCodingKeys, &v111);
      v73 = sub_1000197E4();
      v78 = &v120;
      goto LABEL_17;
    case 7:
      v113 = 7;
      sub_10089B238();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.FailedToCreateResponseModelCodingKeys, &v113);
      v73 = sub_1000197E4();
      v78 = &v121;
      goto LABEL_17;
    case 8:
      v114 = 8;
      sub_10089B1E4();
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.InvalidAuthorizationCodingKeys, &v114);
      v73 = sub_1000197E4();
      v78 = &v122;
LABEL_17:
      v74 = *(v78 - 32);
LABEL_18:
      v72(v73, v74);
      goto LABEL_19;
    case 9:
      v115 = 9;
      sub_10089B190();
      v75 = v86;
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.ResponseFailedCodingKeys, &v115);
      v77 = v87;
      v76 = v88;
      goto LABEL_15;
    case 10:
      v116 = 10;
      sub_10089B13C();
      v75 = v89;
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.InvalidJWTResponseCodingKeys, &v116);
      v77 = v90;
      v76 = v91;
      goto LABEL_15;
    case 11:
      v117 = 11;
      sub_10089B0E8();
      v75 = v92;
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.InvalidBundleIdentifierCodingKeys, &v117);
      v77 = v93;
      v76 = v94;
      goto LABEL_15;
    case 12:
      v118 = 12;
      sub_10089B094();
      v75 = v95;
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.FailedToGenerateSigningRequestDataCodingKeys, &v118);
      v77 = v96;
      v76 = v97;
      goto LABEL_15;
    case 13:
      v119[0] = 13;
      sub_10089B040();
      v75 = v98;
      sub_100004D4C(&type metadata for WeatherFetchErrorKind.InvalidServerResponseForJWTTokenCodingKeys, v119);
      v77 = v99;
      v76 = v100;
LABEL_15:
      (*(v77 + 8))(v75, v76);
LABEL_19:
      result = (*(v104 + 8))(v70, v71);
      break;
    default:
      v119[1] = 14;
      sub_10089AFEC();
      v80 = v85[0];
      v82 = v102;
      v81 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v83 = v85[3];
      KeyedEncodingContainer.encode(_:forKey:)();
      sub_10000E73C();
      v84(v80, v83);
      result = (*(v104 + 8))(v82, v81);
      break;
  }

  return result;
}

uint64_t sub_100899040(void *a1)
{
  sub_10022C350(&qword_100CE1D30, &qword_100A92DF8);
  sub_1000037C4();
  v175 = v3;
  v176 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v184[1] = v5;
  v185 = sub_10022C350(&qword_100CE1D38, &qword_100A92E00);
  sub_1000037C4();
  v174 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v184[0] = v8;
  v173 = sub_10022C350(&qword_100CE1D40, &qword_100A92E08);
  sub_1000037C4();
  v172 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v183[1] = v11;
  v12 = sub_10022C350(&qword_100CE1D48, &qword_100A92E10);
  sub_100003E5C(v12, &v211);
  v170 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v183[0] = v15;
  v16 = sub_10022C350(&qword_100CE1D50, &qword_100A92E18);
  sub_100003E5C(v16, &v210);
  v168 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v182 = v19;
  v20 = sub_10022C350(&qword_100CE1D58, &qword_100A92E20);
  sub_100003E5C(v20, &v209);
  v166 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v181 = v23;
  v24 = sub_10022C350(&qword_100CE1D60, &qword_100A92E28);
  sub_100003E5C(v24, &v208);
  v164 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v188 = v27;
  v28 = sub_10022C350(&qword_100CE1D68, &qword_100A92E30);
  sub_100003E5C(v28, &v199);
  v162 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v187 = v31;
  v32 = sub_10022C350(&qword_100CE1D70, &qword_100A92E38);
  sub_100003E5C(v32, &v191);
  v160 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  v180 = v35;
  v36 = sub_10022C350(&qword_100CE1D78, &qword_100A92E40);
  sub_100003E5C(v36, &v186);
  v159 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v179 = v39;
  v40 = sub_10022C350(&qword_100CE1D80, &qword_100A92E48);
  sub_100003E5C(v40, &v188);
  v157 = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  v186 = v43;
  v44 = sub_10022C350(&qword_100CE1D88, &qword_100A92E50);
  sub_100003E5C(v44, &v185);
  v154 = v45;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  v178 = v47;
  v48 = sub_10022C350(&qword_100CE1D90, &qword_100A92E58);
  sub_100003E5C(v48, v184);
  v152 = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  v177 = v51;
  v52 = sub_10022C350(&qword_100CE1D98, &qword_100A92E60);
  sub_100003E5C(v52, v183);
  v150 = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  v56 = &v143 - v55;
  v57 = sub_10022C350(&qword_100CE1DA0, &qword_100A92E68);
  sub_1000037C4();
  v149 = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  v61 = &v143 - v60;
  v62 = sub_10022C350(&qword_100CE1DA8, &unk_100A92E70);
  sub_1000037C4();
  v64 = v63;
  sub_100003828();
  __chkstk_darwin(v65);
  v67 = &v143 - v66;
  v68 = a1[3];
  v189 = a1;
  sub_1000161C0(a1, v68);
  sub_10089AF98();
  v69 = v190;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v69)
  {
    goto LABEL_8;
  }

  v147 = v61;
  v146 = v57;
  v148 = v56;
  v70 = v186;
  v71 = v187;
  v190 = v64;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v74 == v75 >> 1)
  {
LABEL_7:
    v64 = type metadata accessor for DecodingError();
    swift_allocError();
    v86 = v85;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v86 = &type metadata for WeatherFetchErrorKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v64 - 8) + 104))(v86, enum case for DecodingError.typeMismatch(_:), v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v87 = sub_100010E6C();
    v88(v87);
LABEL_8:
    sub_100006F14(v189);
    return v64;
  }

  v145 = 0;
  if (v74 < (v75 >> 1))
  {
    v144 = *(v73 + v74);
    sub_100618E7C();
    v77 = v76;
    v79 = v78;
    swift_unknownObjectRelease();
    v80 = v185;
    if (v77 == v79 >> 1)
    {
      switch(v144)
      {
        case 1:
          v193 = 1;
          sub_10089B430();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.MissingDailyCodingKeys, &v193);
          swift_unknownObjectRelease();
          v118 = sub_10000424C();
          v119(v118, v151);
          v120 = sub_100010E6C();
          v121(v120);
          v64 = 0;
          goto LABEL_24;
        case 2:
          v194 = 2;
          sub_10089B3DC();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.MissingHourlyCodingKeys, &v194);
          swift_unknownObjectRelease();
          v107 = sub_10000424C();
          v108(v107, v153);
          v109 = sub_100010E6C();
          v110(v109);
          v64 = 0;
          goto LABEL_24;
        case 3:
          v195 = 3;
          sub_10089B388();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.InsufficientDaysCodingKeys, &v195);
          swift_unknownObjectRelease();
          v111 = sub_10000424C();
          v112(v111, v155);
          v113 = sub_100010E6C();
          v114(v113);
          v64 = 0;
          goto LABEL_24;
        case 4:
          v196 = 4;
          sub_10089B334();
          sub_10000919C(&type metadata for WeatherFetchErrorKind.InsufficientHoursCodingKeys, &v196);
          swift_unknownObjectRelease();
          sub_10000E73C();
          v96(v70, v158);
          v97 = sub_100010E6C();
          v98(v97);
          v64 = 0;
          goto LABEL_24;
        case 5:
          v197 = 5;
          sub_10089B2E0();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.UnexpectedDateFormatCodingKeys, &v197);
          swift_unknownObjectRelease();
          v122 = sub_10000424C();
          v123(v122, v156);
          v124 = sub_100010E6C();
          v125(v124);
          v64 = 0;
          goto LABEL_24;
        case 6:
          v198 = 6;
          sub_10089B28C();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.MissingResponseCodingKeys, &v198);
          swift_unknownObjectRelease();
          v129 = sub_10000424C();
          v130(v129, v161);
          v131 = sub_100010E6C();
          v132(v131);
          v64 = 0;
          goto LABEL_24;
        case 7:
          v200 = 7;
          sub_10089B238();
          sub_10000919C(&type metadata for WeatherFetchErrorKind.FailedToCreateResponseModelCodingKeys, &v200);
          swift_unknownObjectRelease();
          sub_10000E73C();
          v115(v71, v163);
          v116 = sub_100010E6C();
          v117(v116);
          v64 = 0;
          goto LABEL_24;
        case 8:
          v201 = 8;
          sub_10089B1E4();
          sub_10000919C(&type metadata for WeatherFetchErrorKind.InvalidAuthorizationCodingKeys, &v201);
          swift_unknownObjectRelease();
          v137 = sub_1000197E4();
          v138(v137, v165);
          v139 = sub_100010E6C();
          v140(v139);
          v64 = 0;
          goto LABEL_24;
        case 9:
          v202 = 9;
          sub_10089B190();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.ResponseFailedCodingKeys, &v202);
          swift_unknownObjectRelease();
          v103 = sub_10000424C();
          v104(v103, v167);
          v105 = sub_100010E6C();
          v106(v105);
          v64 = 0;
          goto LABEL_24;
        case 10:
          v203 = 10;
          sub_10089B13C();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.InvalidJWTResponseCodingKeys, &v203);
          swift_unknownObjectRelease();
          v133 = sub_10000424C();
          v134(v133, v169);
          v135 = sub_100010E6C();
          v136(v135);
          v64 = 0;
          goto LABEL_24;
        case 11:
          v204 = 11;
          sub_10089B0E8();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.InvalidBundleIdentifierCodingKeys, &v204);
          swift_unknownObjectRelease();
          v92 = sub_10000424C();
          v93(v92, v171);
          v94 = sub_100010E6C();
          v95(v94);
          v64 = 0;
          goto LABEL_24;
        case 12:
          v205 = 12;
          sub_10089B094();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.FailedToGenerateSigningRequestDataCodingKeys, &v205);
          swift_unknownObjectRelease();
          v99 = sub_10000424C();
          v100(v99, v173);
          v101 = sub_100010E6C();
          v102(v101);
          v64 = 0;
          goto LABEL_24;
        case 13:
          v206 = 13;
          sub_10089B040();
          v126 = v184[0];
          sub_10000919C(&type metadata for WeatherFetchErrorKind.InvalidServerResponseForJWTTokenCodingKeys, &v206);
          swift_unknownObjectRelease();
          (*(v174 + 8))(v126, v80);
          v127 = sub_100010E6C();
          v128(v127);
          v64 = 0;
          goto LABEL_24;
        case 14:
          v207 = 14;
          sub_10089AFEC();
          sub_10000919C(&type metadata for WeatherFetchErrorKind.ExternalCodingKeys, &v207);
          v89 = KeyedDecodingContainer.decode(_:forKey:)();
          v90 = v189;
          v91 = v190;
          v64 = v89;
          swift_unknownObjectRelease();
          v141 = sub_100017F88();
          v142(v141);
          (*(v91 + 8))(v67, v62);
          goto LABEL_25;
        default:
          v192 = 0;
          sub_10089B484();
          sub_100006A4C(&type metadata for WeatherFetchErrorKind.MissingCurrentCodingKeys, &v192);
          swift_unknownObjectRelease();
          v81 = sub_10000424C();
          v82(v81, v146);
          v83 = sub_100010E6C();
          v84(v83);
          v64 = 0;
LABEL_24:
          v90 = v189;
LABEL_25:
          sub_100006F14(v90);
          break;
      }

      return v64;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10089A0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100897D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10089A0E0(uint64_t a1)
{
  v2 = sub_10089AF98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A11C(uint64_t a1)
{
  v2 = sub_10089AF98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A158(uint64_t a1)
{
  v2 = sub_10089AFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A194(uint64_t a1)
{
  v2 = sub_10089AFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A1D0(uint64_t a1)
{
  v2 = sub_10089B238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A20C(uint64_t a1)
{
  v2 = sub_10089B238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A248(uint64_t a1)
{
  v2 = sub_10089B094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A284(uint64_t a1)
{
  v2 = sub_10089B094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A2C0(uint64_t a1)
{
  v2 = sub_10089B388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A2FC(uint64_t a1)
{
  v2 = sub_10089B388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A338(uint64_t a1)
{
  v2 = sub_10089B334();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A374(uint64_t a1)
{
  v2 = sub_10089B334();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A3B0(uint64_t a1)
{
  v2 = sub_10089B1E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A3EC(uint64_t a1)
{
  v2 = sub_10089B1E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A428(uint64_t a1)
{
  v2 = sub_10089B0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A464(uint64_t a1)
{
  v2 = sub_10089B0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A4A0(uint64_t a1)
{
  v2 = sub_10089B13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A4DC(uint64_t a1)
{
  v2 = sub_10089B13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A518(uint64_t a1)
{
  v2 = sub_10089B040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A554(uint64_t a1)
{
  v2 = sub_10089B040();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A590(uint64_t a1)
{
  v2 = sub_10089B484();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A5CC(uint64_t a1)
{
  v2 = sub_10089B484();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A608(uint64_t a1)
{
  v2 = sub_10089B430();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A644(uint64_t a1)
{
  v2 = sub_10089B430();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A680(uint64_t a1)
{
  v2 = sub_10089B3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A6BC(uint64_t a1)
{
  v2 = sub_10089B3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A6F8(uint64_t a1)
{
  v2 = sub_10089B28C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A734(uint64_t a1)
{
  v2 = sub_10089B28C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A770(uint64_t a1)
{
  v2 = sub_10089B190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A7AC(uint64_t a1)
{
  v2 = sub_10089B190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A7E8(uint64_t a1)
{
  v2 = sub_10089B2E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A824(uint64_t a1)
{
  v2 = sub_10089B2E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A874@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100899040(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10089A8BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100784E4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10089A904()
{
  type metadata accessor for WDSClientErrors();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000101A4();
  v1 = sub_100069BE0();
  v2(v1);
  v3 = sub_1000053B8();
  v5 = v4(v3);
  if (v5 == enum case for WDSClientErrors.networkError(_:))
  {
    v6 = sub_1000053B8();
    v7(v6);
    swift_getErrorValue();
    v8 = Error.domainAndCode.getter();
  }

  else if (v5 == enum case for WDSClientErrors.responseFailed(_:) || v5 == enum case for WDSClientErrors.failedToCreateResponseModel(_:) || v5 == enum case for WDSClientErrors.invalidAuthorization(_:))
  {
    v9 = sub_100017088();
    v10(v9);
    return 0;
  }

  else if (v5 == enum case for WDSClientErrors.unexpectedDateFormat(_:))
  {
    return 0;
  }

  else if (v5 == enum case for WDSClientErrors.missingResponse(_:))
  {
    return 0;
  }

  else
  {
    sub_10089B4D8(&qword_100CE1EC0, &type metadata accessor for WDSClientErrors, &protocol conformance descriptor for WDSClientErrors);
    v8 = Error.domainAndCode.getter();
    v11 = sub_100017088();
    v12(v11);
  }

  return v8;
}

uint64_t sub_10089AB4C()
{
  type metadata accessor for WDSJWTAuthenticatorService.Errors();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000101A4();
  v1 = sub_100069BE0();
  v2(v1);
  v3 = sub_1000053B8();
  v5 = v4(v3);
  if (v5 == enum case for WDSJWTAuthenticatorService.Errors.invalidBundleIdentifier(_:))
  {
    v6 = 0;
  }

  else if (v5 == enum case for WDSJWTAuthenticatorService.Errors.invalidJWTResponse(_:))
  {
    v6 = 0;
  }

  else
  {
    if (v5 == enum case for WDSJWTAuthenticatorService.Errors.failedToGenerateSigningRequestData(_:))
    {
      return 0;
    }

    if (v5 == enum case for WDSJWTAuthenticatorService.Errors.invalidServerResponse(_:))
    {
      return 0;
    }

    sub_10089B4D8(&qword_100CE1EB8, &type metadata accessor for WDSJWTAuthenticatorService.Errors, &protocol conformance descriptor for WDSJWTAuthenticatorService.Errors);
    v6 = Error.domainAndCode.getter();
  }

  v7 = sub_100017088();
  v8(v7);
  return v6;
}

uint64_t sub_10089ACE4()
{
  type metadata accessor for WeatherProduct();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000101A4();
  WeatherModel.MissingProductError.product.getter();
  v1 = sub_1000053B8();
  v3 = v2(v1);
  v4 = 0;
  if (v3 != enum case for WeatherProduct.currentWeather(_:))
  {
    if (v3 == enum case for WeatherProduct.forecastDaily(_:))
    {
      return 0;
    }

    else if (v3 == enum case for WeatherProduct.forecastHourly(_:))
    {
      return 0;
    }

    else
    {
      type metadata accessor for WeatherModel.MissingProductError();
      sub_10089B4D8(&qword_100CE1EB0, &type metadata accessor for WeatherModel.MissingProductError, &protocol conformance descriptor for WeatherModel.MissingProductError);
      v4 = Error.domainAndCode.getter();
      v5 = sub_1000053B8();
      v6(v5);
    }
  }

  return v4;
}

uint64_t sub_10089AE60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10089AE78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF1 && *(a1 + 16))
  {
    return (*a1 + 2147483634);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 13;
  if (v4 >= 0xF)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10089AED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483634;
    if (a3 >= 0x7FFFFFF2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 13;
    }
  }

  return result;
}

uint64_t sub_10089AF30(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE1D28, &qword_100A92DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10089AF98()
{
  result = qword_100CE1DB0;
  if (!qword_100CE1DB0)
  {
    result = swift_getWitnessTable(aM_10, &type metadata for WeatherFetchErrorKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DB0);
  }

  return result;
}

unint64_t sub_10089AFEC()
{
  result = qword_100CE1DB8;
  if (!qword_100CE1DB8)
  {
    result = swift_getWitnessTable(byte_100A93B54, &type metadata for WeatherFetchErrorKind.ExternalCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DB8);
  }

  return result;
}

unint64_t sub_10089B040()
{
  result = qword_100CE1DC0;
  if (!qword_100CE1DC0)
  {
    result = swift_getWitnessTable(byte_100A93B04, &type metadata for WeatherFetchErrorKind.InvalidServerResponseForJWTTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DC0);
  }

  return result;
}

unint64_t sub_10089B094()
{
  result = qword_100CE1DC8;
  if (!qword_100CE1DC8)
  {
    result = swift_getWitnessTable(asc_100A93AB4, &type metadata for WeatherFetchErrorKind.FailedToGenerateSigningRequestDataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DC8);
  }

  return result;
}

unint64_t sub_10089B0E8()
{
  result = qword_100CE1DD0;
  if (!qword_100CE1DD0)
  {
    result = swift_getWitnessTable(byte_100A93A64, &type metadata for WeatherFetchErrorKind.InvalidBundleIdentifierCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DD0);
  }

  return result;
}

unint64_t sub_10089B13C()
{
  result = qword_100CE1DD8;
  if (!qword_100CE1DD8)
  {
    result = swift_getWitnessTable(byte_100A93A14, &type metadata for WeatherFetchErrorKind.InvalidJWTResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DD8);
  }

  return result;
}

unint64_t sub_10089B190()
{
  result = qword_100CE1DE0;
  if (!qword_100CE1DE0)
  {
    result = swift_getWitnessTable(asc_100A939C4, &type metadata for WeatherFetchErrorKind.ResponseFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DE0);
  }

  return result;
}

unint64_t sub_10089B1E4()
{
  result = qword_100CE1DE8;
  if (!qword_100CE1DE8)
  {
    result = swift_getWitnessTable(asc_100A93974, &type metadata for WeatherFetchErrorKind.InvalidAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DE8);
  }

  return result;
}

unint64_t sub_10089B238()
{
  result = qword_100CE1DF0;
  if (!qword_100CE1DF0)
  {
    result = swift_getWitnessTable(byte_100A93924, &type metadata for WeatherFetchErrorKind.FailedToCreateResponseModelCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DF0);
  }

  return result;
}

unint64_t sub_10089B28C()
{
  result = qword_100CE1DF8;
  if (!qword_100CE1DF8)
  {
    result = swift_getWitnessTable(byte_100A938D4, &type metadata for WeatherFetchErrorKind.MissingResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1DF8);
  }

  return result;
}

unint64_t sub_10089B2E0()
{
  result = qword_100CE1E00;
  if (!qword_100CE1E00)
  {
    result = swift_getWitnessTable(aM_11, &type metadata for WeatherFetchErrorKind.UnexpectedDateFormatCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1E00);
  }

  return result;
}

unint64_t sub_10089B334()
{
  result = qword_100CE1E08;
  if (!qword_100CE1E08)
  {
    result = swift_getWitnessTable(byte_100A93834, &type metadata for WeatherFetchErrorKind.InsufficientHoursCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1E08);
  }

  return result;
}

unint64_t sub_10089B388()
{
  result = qword_100CE1E10;
  if (!qword_100CE1E10)
  {
    result = swift_getWitnessTable(asc_100A937E4, &type metadata for WeatherFetchErrorKind.InsufficientDaysCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1E10);
  }

  return result;
}

unint64_t sub_10089B3DC()
{
  result = qword_100CE1E18;
  if (!qword_100CE1E18)
  {
    result = swift_getWitnessTable(asc_100A93794, &type metadata for WeatherFetchErrorKind.MissingHourlyCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1E18);
  }

  return result;
}

unint64_t sub_10089B430()
{
  result = qword_100CE1E20;
  if (!qword_100CE1E20)
  {
    result = swift_getWitnessTable(byte_100A93744, &type metadata for WeatherFetchErrorKind.MissingDailyCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1E20);
  }

  return result;
}

unint64_t sub_10089B484()
{
  result = qword_100CE1E28;
  if (!qword_100CE1E28)
  {
    result = swift_getWitnessTable(byte_100A936F4, &type metadata for WeatherFetchErrorKind.MissingCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1E28);
  }

  return result;
}

uint64_t sub_10089B4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherFetchErrorKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherFetchErrorKind.ExternalCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10089B78C()
{
  result = qword_100CE1EC8;
  if (!qword_100CE1EC8)
  {
    result = swift_getWitnessTable(aM_12, &type metadata for WeatherFetchErrorKind.ExternalCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1EC8);
  }

  return result;
}

unint64_t sub_10089B7E4()
{
  result = qword_100CE1ED0;
  if (!qword_100CE1ED0)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for WeatherFetchErrorKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1ED0);
  }

  return result;
}

unint64_t sub_10089B83C()
{
  result = qword_100CE1ED8;
  if (!qword_100CE1ED8)
  {
    result = swift_getWitnessTable(byte_100A935EC, &type metadata for WeatherFetchErrorKind.MissingCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1ED8);
  }

  return result;
}

unint64_t sub_10089B894()
{
  result = qword_100CE1EE0;
  if (!qword_100CE1EE0)
  {
    result = swift_getWitnessTable(byte_100A93614, &type metadata for WeatherFetchErrorKind.MissingCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1EE0);
  }

  return result;
}

unint64_t sub_10089B8EC()
{
  result = qword_100CE1EE8;
  if (!qword_100CE1EE8)
  {
    result = swift_getWitnessTable(aE_17, &type metadata for WeatherFetchErrorKind.MissingDailyCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1EE8);
  }

  return result;
}

unint64_t sub_10089B944()
{
  result = qword_100CE1EF0;
  if (!qword_100CE1EF0)
  {
    result = swift_getWitnessTable(asc_100A935C4, &type metadata for WeatherFetchErrorKind.MissingDailyCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1EF0);
  }

  return result;
}

unint64_t sub_10089B99C()
{
  result = qword_100CE1EF8;
  if (!qword_100CE1EF8)
  {
    result = swift_getWitnessTable(byte_100A9354C, &type metadata for WeatherFetchErrorKind.MissingHourlyCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1EF8);
  }

  return result;
}

unint64_t sub_10089B9F4()
{
  result = qword_100CE1F00;
  if (!qword_100CE1F00)
  {
    result = swift_getWitnessTable(asc_100A93574, &type metadata for WeatherFetchErrorKind.MissingHourlyCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F00);
  }

  return result;
}

unint64_t sub_10089BA4C()
{
  result = qword_100CE1F08;
  if (!qword_100CE1F08)
  {
    result = swift_getWitnessTable(byte_100A934FC, &type metadata for WeatherFetchErrorKind.InsufficientDaysCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F08);
  }

  return result;
}

unint64_t sub_10089BAA4()
{
  result = qword_100CE1F10;
  if (!qword_100CE1F10)
  {
    result = swift_getWitnessTable(byte_100A93524, &type metadata for WeatherFetchErrorKind.InsufficientDaysCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F10);
  }

  return result;
}

unint64_t sub_10089BAFC()
{
  result = qword_100CE1F18;
  if (!qword_100CE1F18)
  {
    result = swift_getWitnessTable(a5_5, &type metadata for WeatherFetchErrorKind.InsufficientHoursCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F18);
  }

  return result;
}

unint64_t sub_10089BB54()
{
  result = qword_100CE1F20;
  if (!qword_100CE1F20)
  {
    result = swift_getWitnessTable(byte_100A934D4, &type metadata for WeatherFetchErrorKind.InsufficientHoursCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F20);
  }

  return result;
}

unint64_t sub_10089BBAC()
{
  result = qword_100CE1F28;
  if (!qword_100CE1F28)
  {
    result = swift_getWitnessTable(byte_100A9345C, &type metadata for WeatherFetchErrorKind.UnexpectedDateFormatCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F28);
  }

  return result;
}

unint64_t sub_10089BC04()
{
  result = qword_100CE1F30;
  if (!qword_100CE1F30)
  {
    result = swift_getWitnessTable(aM_13, &type metadata for WeatherFetchErrorKind.UnexpectedDateFormatCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F30);
  }

  return result;
}

unint64_t sub_10089BC5C()
{
  result = qword_100CE1F38;
  if (!qword_100CE1F38)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for WeatherFetchErrorKind.MissingResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F38);
  }

  return result;
}

unint64_t sub_10089BCB4()
{
  result = qword_100CE1F40;
  if (!qword_100CE1F40)
  {
    result = swift_getWitnessTable(byte_100A93434, &type metadata for WeatherFetchErrorKind.MissingResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F40);
  }

  return result;
}

unint64_t sub_10089BD0C()
{
  result = qword_100CE1F48;
  if (!qword_100CE1F48)
  {
    result = swift_getWitnessTable(asc_100A933BC, &type metadata for WeatherFetchErrorKind.FailedToCreateResponseModelCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F48);
  }

  return result;
}

unint64_t sub_10089BD64()
{
  result = qword_100CE1F50;
  if (!qword_100CE1F50)
  {
    result = swift_getWitnessTable(byte_100A933E4, &type metadata for WeatherFetchErrorKind.FailedToCreateResponseModelCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F50);
  }

  return result;
}

unint64_t sub_10089BDBC()
{
  result = qword_100CE1F58;
  if (!qword_100CE1F58)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for WeatherFetchErrorKind.InvalidAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F58);
  }

  return result;
}

unint64_t sub_10089BE14()
{
  result = qword_100CE1F60;
  if (!qword_100CE1F60)
  {
    result = swift_getWitnessTable(asc_100A93394, &type metadata for WeatherFetchErrorKind.InvalidAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F60);
  }

  return result;
}

unint64_t sub_10089BE6C()
{
  result = qword_100CE1F68;
  if (!qword_100CE1F68)
  {
    result = swift_getWitnessTable(aN, &type metadata for WeatherFetchErrorKind.ResponseFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F68);
  }

  return result;
}

unint64_t sub_10089BEC4()
{
  result = qword_100CE1F70;
  if (!qword_100CE1F70)
  {
    result = swift_getWitnessTable(byte_100A93344, &type metadata for WeatherFetchErrorKind.ResponseFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F70);
  }

  return result;
}

unint64_t sub_10089BF1C()
{
  result = qword_100CE1F78;
  if (!qword_100CE1F78)
  {
    result = swift_getWitnessTable(byte_100A932CC, &type metadata for WeatherFetchErrorKind.InvalidJWTResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F78);
  }

  return result;
}

unint64_t sub_10089BF74()
{
  result = qword_100CE1F80;
  if (!qword_100CE1F80)
  {
    result = swift_getWitnessTable(asc_100A932F4, &type metadata for WeatherFetchErrorKind.InvalidJWTResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F80);
  }

  return result;
}

unint64_t sub_10089BFCC()
{
  result = qword_100CE1F88;
  if (!qword_100CE1F88)
  {
    result = swift_getWitnessTable(aE_18, &type metadata for WeatherFetchErrorKind.InvalidBundleIdentifierCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F88);
  }

  return result;
}

unint64_t sub_10089C024()
{
  result = qword_100CE1F90;
  if (!qword_100CE1F90)
  {
    result = swift_getWitnessTable(asc_100A932A4, &type metadata for WeatherFetchErrorKind.InvalidBundleIdentifierCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F90);
  }

  return result;
}

unint64_t sub_10089C07C()
{
  result = qword_100CE1F98;
  if (!qword_100CE1F98)
  {
    result = swift_getWitnessTable(byte_100A9322C, &type metadata for WeatherFetchErrorKind.FailedToGenerateSigningRequestDataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1F98);
  }

  return result;
}

unint64_t sub_10089C0D4()
{
  result = qword_100CE1FA0;
  if (!qword_100CE1FA0)
  {
    result = swift_getWitnessTable(asc_100A93254, &type metadata for WeatherFetchErrorKind.FailedToGenerateSigningRequestDataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FA0);
  }

  return result;
}

unint64_t sub_10089C12C()
{
  result = qword_100CE1FA8;
  if (!qword_100CE1FA8)
  {
    result = swift_getWitnessTable(byte_100A931DC, &type metadata for WeatherFetchErrorKind.InvalidServerResponseForJWTTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FA8);
  }

  return result;
}

unint64_t sub_10089C184()
{
  result = qword_100CE1FB0;
  if (!qword_100CE1FB0)
  {
    result = swift_getWitnessTable(asc_100A93204, &type metadata for WeatherFetchErrorKind.InvalidServerResponseForJWTTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FB0);
  }

  return result;
}

unint64_t sub_10089C1DC()
{
  result = qword_100CE1FB8;
  if (!qword_100CE1FB8)
  {
    result = swift_getWitnessTable(byte_100A93124, &type metadata for WeatherFetchErrorKind.ExternalCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FB8);
  }

  return result;
}

unint64_t sub_10089C234()
{
  result = qword_100CE1FC0;
  if (!qword_100CE1FC0)
  {
    result = swift_getWitnessTable(byte_100A9314C, &type metadata for WeatherFetchErrorKind.ExternalCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FC0);
  }

  return result;
}

unint64_t sub_10089C28C()
{
  result = qword_100CE1FC8;
  if (!qword_100CE1FC8)
  {
    result = swift_getWitnessTable(byte_100A9363C, &type metadata for WeatherFetchErrorKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FC8);
  }

  return result;
}

unint64_t sub_10089C2E4()
{
  result = qword_100CE1FD0;
  if (!qword_100CE1FD0)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for WeatherFetchErrorKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE1FD0);
  }

  return result;
}

uint64_t sub_10089C348(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69676562 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 6581861 && a2 == 0xE300000000000000)
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

uint64_t sub_10089C454(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x6E69676562;
  }

  return 6581861;
}

uint64_t sub_10089C498(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CE2020, &qword_100A93D30);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CE2028, &qword_100A93D38);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CE2030, &qword_100A93D40);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CE2038, &qword_100A93D48);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_10089CFF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_10089D0A0();
      sub_10000C88C(&type metadata for TransitionState.BeginCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_10089D04C();
      v24 = v30;
      sub_10000C88C(&type metadata for TransitionState.EndCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10089D0F4();
    sub_10000C88C(&type metadata for TransitionState.NoneCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10089C7B4(void *a1)
{
  v62 = sub_10022C350(&qword_100CE1FE0, &qword_100A93D10);
  sub_1000037C4();
  v60 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v58 = &v52 - v4;
  v59 = sub_10022C350(&qword_100CE1FE8, &qword_100A93D18);
  sub_1000037C4();
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v9 = sub_10022C350(&qword_100CE1FF0, &qword_100A93D20);
  sub_1000037C4();
  v56 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_10022C350(&qword_100CE1FF8, &qword_100A93D28);
  sub_1000037C4();
  v61 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_10089CFF8();
  v18 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_100618E7C();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_10089D0A0();
          v34 = v54;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = sub_100003C88();
            v36(v35);
LABEL_21:
            sub_100006F14(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_10089D04C();
          v17 = v58;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = sub_100003C88();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = sub_100003C88();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_10089D0F4();
        v42 = v53;
        sub_10000803C();
        v43 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = sub_100003C78();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = sub_100003C78();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v39 = &type metadata for TransitionState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_100003C78();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10089CD48(uint64_t a1)
{
  v2 = sub_10089D0A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CD84(uint64_t a1)
{
  v2 = sub_10089D0A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10089C348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10089CDF0(uint64_t a1)
{
  v2 = sub_10089CFF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CE2C(uint64_t a1)
{
  v2 = sub_10089CFF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CE68(uint64_t a1)
{
  v2 = sub_10089D04C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CEA4(uint64_t a1)
{
  v2 = sub_10089D04C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CEE0(uint64_t a1)
{
  v2 = sub_10089D0F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CF1C(uint64_t a1)
{
  v2 = sub_10089D0F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CF58@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10089C7B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10089CFA4()
{
  result = qword_100CE1FD8;
  if (!qword_100CE1FD8)
  {
    result = swift_getWitnessTable(byte_100A93CE8, &type metadata for TransitionState, v0, v1);
    atomic_store(result, &qword_100CE1FD8);
  }

  return result;
}

unint64_t sub_10089CFF8()
{
  result = qword_100CE2000;
  if (!qword_100CE2000)
  {
    result = swift_getWitnessTable(byte_100A94020, &type metadata for TransitionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2000);
  }

  return result;
}

unint64_t sub_10089D04C()
{
  result = qword_100CE2008;
  if (!qword_100CE2008)
  {
    result = swift_getWitnessTable(aY_22, &type metadata for TransitionState.EndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2008);
  }

  return result;
}

unint64_t sub_10089D0A0()
{
  result = qword_100CE2010;
  if (!qword_100CE2010)
  {
    result = swift_getWitnessTable(aQy, &type metadata for TransitionState.BeginCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2010);
  }

  return result;
}

unint64_t sub_10089D0F4()
{
  result = qword_100CE2018;
  if (!qword_100CE2018)
  {
    result = swift_getWitnessTable(byte_100A93F30, &type metadata for TransitionState.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2018);
  }

  return result;
}

_BYTE *sub_10089D148(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10089D258()
{
  result = qword_100CE2040;
  if (!qword_100CE2040)
  {
    result = swift_getWitnessTable(byte_100A93F08, &type metadata for TransitionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2040);
  }

  return result;
}

unint64_t sub_10089D2B0()
{
  result = qword_100CE2048;
  if (!qword_100CE2048)
  {
    result = swift_getWitnessTable(byte_100A93E28, &type metadata for TransitionState.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2048);
  }

  return result;
}

unint64_t sub_10089D308()
{
  result = qword_100CE2050;
  if (!qword_100CE2050)
  {
    result = swift_getWitnessTable(byte_100A93E50, &type metadata for TransitionState.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2050);
  }

  return result;
}

unint64_t sub_10089D360()
{
  result = qword_100CE2058;
  if (!qword_100CE2058)
  {
    result = swift_getWitnessTable(asc_100A93DD8, &type metadata for TransitionState.BeginCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2058);
  }

  return result;
}

unint64_t sub_10089D3B8()
{
  result = qword_100CE2060;
  if (!qword_100CE2060)
  {
    result = swift_getWitnessTable(byte_100A93E00, &type metadata for TransitionState.BeginCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2060);
  }

  return result;
}

unint64_t sub_10089D410()
{
  result = qword_100CE2068;
  if (!qword_100CE2068)
  {
    result = swift_getWitnessTable(aY_23, &type metadata for TransitionState.EndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2068);
  }

  return result;
}

unint64_t sub_10089D468()
{
  result = qword_100CE2070;
  if (!qword_100CE2070)
  {
    result = swift_getWitnessTable(aZ, &type metadata for TransitionState.EndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2070);
  }

  return result;
}

unint64_t sub_10089D4C0()
{
  result = qword_100CE2078;
  if (!qword_100CE2078)
  {
    result = swift_getWitnessTable(aIz, &type metadata for TransitionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2078);
  }

  return result;
}

unint64_t sub_10089D518()
{
  result = qword_100CE2080;
  if (!qword_100CE2080)
  {
    result = swift_getWitnessTable(a1y, &type metadata for TransitionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2080);
  }

  return result;
}

uint64_t sub_10089D570(char a1)
{
  if (a1)
  {
    return 0x30327265746E6977;
  }

  else
  {
    return 0x343230326C6C6166;
  }
}

_BYTE *storeEnumTagSinglePayload for DemoPreset(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10089D688()
{
  result = qword_100CE2088;
  if (!qword_100CE2088)
  {
    result = swift_getWitnessTable(a9s, &type metadata for DemoPreset, v0, v1);
    atomic_store(result, &qword_100CE2088);
  }

  return result;
}

uint64_t sub_10089D700@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000381C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10089D730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10089D570(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10089D76C(uint64_t a1)
{
  v2 = sub_10089D8D8();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_10089D7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10089D8D8();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_10089D81C(uint64_t a1)
{
  v2 = sub_10089D8D8();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

unint64_t sub_10089D874()
{
  result = qword_100CE2090;
  if (!qword_100CE2090)
  {
    v3 = sub_10022E824(&qword_100CE2098, qword_100A94110);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CE2090);
  }

  return result;
}

unint64_t sub_10089D8D8()
{
  result = qword_100CE20A0;
  if (!qword_100CE20A0)
  {
    result = swift_getWitnessTable(byte_100A94150, &type metadata for DemoPreset, v0, v1);
    atomic_store(result, &qword_100CE20A0);
  }

  return result;
}

uint64_t sub_10089D930(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemperatureAveragesHeroChartPeakMarkerModel(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t type metadata accessor for TemperatureAveragesHeroChartPeakMarkerModel(uint64_t a1)
{
  result = qword_100CE2100;
  if (!qword_100CE2100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10089DA3C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10089DAC0(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v36 = a4;
  v37 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v37);
  v35 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2798 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000703C(v12, qword_100D90D20);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = a1;
    v16 = v15;
    v33 = swift_slowAlloc();
    *&v38[0] = v33;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_100078694(a2, a3, v38);
    *(v16 + 22) = 2080;
    Date.init()();
    sub_100066840(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_100078694(v17, v19, v38);

    *(v16 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Location loading interval elapsed - location is loading too slowly. ID=%{private,mask.hash}s, Now=%s", v16, 0x20u);
    swift_arrayDestroy();

    a1 = v34;
  }

  v21 = v36;
  UnfairLock.lock()();
  swift_beginAccess();
  v22 = sub_100086BAC(a2, a3, v21[6]);
  swift_endAccess();
  v23 = a2;
  v24 = a3;
  if (v22)
  {
    sub_1000F6C98();
    v25 = a1;
    v26 = static NSObject.== infix(_:_:)();

    if (v26)
    {
      swift_beginAccess();
      v27 = sub_1000F64AC();
      swift_endAccess();
    }
  }

  UnfairLock.unlock()();
  v28 = v21[3];
  v29 = v21[4];
  v30 = v35;
  *v35 = v23;
  *(v30 + 8) = v24;
  swift_storeEnumTagMultiPayload();
  v39 = 0;
  memset(v38, 0, sizeof(v38));

  sub_10004F034(v30, v38, v28, v29);
  sub_1000E17D8(v38);
  return sub_1000547B8(v30);
}

uint64_t sub_10089DEB8()
{

  return v0;
}

uint64_t sub_10089DEE8()
{
  sub_10089DEB8();

  return swift_deallocClassInstance();
}

void sub_10089DF50(uint64_t a1)
{
  sub_10089E014(319, &unk_100CD23B0, type metadata accessor for ExtendedAppLaunchState);
  if (v1 <= 0x3F)
  {
    sub_10089E014(319, &qword_100CADCC8, &type metadata accessor for ScenePhase);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10089E014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10089E084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10089E144();
  v6 = v2 + *(type metadata accessor for AppStateTransitionModifier(0) + 24);
  v7 = 8;
  if (v5)
  {
    v7 = 0;
  }

  v8 = *(v6 + v7);

  v9 = sub_10022C350(&qword_100CE2290, &qword_100A94388);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = sub_10022C350(&qword_100CE2298, &unk_100A94390);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_10089E144()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  type metadata accessor for AppStateTransitionModifier(0);
  sub_1000E74DC();
  (*(v7 + 104))(v9, enum case for ScenePhase.active(_:), v6);
  v13 = static ScenePhase.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = *(v1 + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v16 = (*(v3 + 8))(v5, v2);
    }

    v19 = sub_1004237C8(v16, v17);

    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_10089E3D0()
{
  result = qword_100CE22A0;
  if (!qword_100CE22A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE2298, &unk_100A94390);
    v4[0] = sub_100006F64(&qword_100CE22A8, &qword_100CE2290, &qword_100A94388, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE22A0);
  }

  return result;
}

unint64_t sub_10089E4B8()
{
  result = qword_100CE22B0;
  if (!qword_100CE22B0)
  {
    result = swift_getWitnessTable(byte_100A943D8, &type metadata for SafeAreaInsetsKey, v0, v1);
    atomic_store(result, &qword_100CE22B0);
  }

  return result;
}

uint64_t sub_10089E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000FF4A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10089E5D0()
{
  sub_1003C0D04();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t sub_10089E61C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  sub_10002D7F8(a1, v9);
  return sub_10089E50C(v9, v10, a2, a3, a4, a5);
}

void sub_10089E688(uint64_t a1@<X8>)
{
  *a1 = sub_10089E5D0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void sub_10089E6F4(uint64_t a1@<X8>)
{
  *a1 = sub_10089E6E0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

unint64_t sub_10089E720()
{
  result = qword_100CE22C0;
  if (!qword_100CE22C0)
  {
    result = swift_getWitnessTable(aY_24, &type metadata for SafeAreaInsetsKey, v0, v1);
    atomic_store(result, &qword_100CE22C0);
  }

  return result;
}

uint64_t sub_10089E774@<X0>(uint64_t a1@<X8>)
{
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v4 = sub_100003810(active);
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  sub_1000BB194(v1, v1);
  v5 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v1, 1, v5) == 1)
  {
    return static CurrentLocation.placeholderIdentifier.getter();
  }

  sub_100003B20();
  return (*(v7 + 32))(a1, v1, v5);
}

uint64_t sub_10089E844(uint64_t a1, char a2, char a3, char a4, char a5, int a6, uint64_t a7)
{
  v26 = a6;
  v14 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v25[-v16];
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  sub_100003B20();
  __chkstk_darwin(v19);
  sub_1000088C0();
  __chkstk_darwin(v20);
  v22 = &v25[-v21];
  sub_1008A1054(a1, v17);
  if (sub_100024D10(v17, 1, active) == 1)
  {
    sub_1000BB194(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v22);
    if (sub_100024D10(v17, 1, active) != 1)
    {
      sub_10002C4AC(v17, &qword_100CA65B8, &unk_100A313D0);
    }
  }

  else
  {
    sub_100349588(v17, v22);
  }

  sub_100349588(v22, v7);
  v23 = v26;
  if (a2 == 3)
  {
    a2 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + a7);
  }

  if (a3 == 2)
  {
    a3 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
  }

  if (a4 == 4)
  {
    a4 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
  }

  if (a5 == 2)
  {
    a5 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
  }

  if (v26 == 3)
  {
    v23 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
  }

  type metadata accessor for LocationViewerViewState._Storage(0);
  swift_allocObject();
  return sub_10003DDB8(v7, a2, a3 & 1, a4, a5 & 1, v23);
}

uint64_t sub_10089EA8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570697773 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEB00000000706154)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10089EBEC(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6570697773;
      break;
    case 2:
      result = 0x636E75614C707061;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10089EC78(uint64_t a1)
{
  v2 = sub_10089F374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089ECB4(uint64_t a1)
{
  v2 = sub_10089F374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10089EA8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10089ED20(uint64_t a1)
{
  v2 = sub_10089F2CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089ED5C(uint64_t a1)
{
  v2 = sub_10089F2CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089ED98(uint64_t a1)
{
  v2 = sub_10089F320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EDD4(uint64_t a1)
{
  v2 = sub_10089F320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EE10(uint64_t a1)
{
  v2 = sub_10089F3C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EE4C(uint64_t a1)
{
  v2 = sub_10089F3C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EE88(uint64_t a1)
{
  v2 = sub_10089F41C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EEC4(uint64_t a1)
{
  v2 = sub_10089F41C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void LocationSessionTrigger.encode(to:)()
{
  sub_10000E8AC();
  v40 = v1;
  v3 = v2;
  sub_10022C350(&qword_100CE22C8, &qword_100A944A0);
  sub_1000037C4();
  v38 = v5;
  v39 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v37 = v7;
  sub_10022C350(&qword_100CE22D0, &qword_100A944A8);
  sub_1000037C4();
  v35 = v9;
  v36 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v34 = v11;
  sub_10022C350(&qword_100CE22D8, &qword_100A944B0);
  sub_1000037C4();
  v32 = v13;
  v33 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v15 = sub_10022C350(&qword_100CE22E0, &qword_100A944B8);
  sub_1000037C4();
  v31 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v20 = sub_10022C350(&qword_100CE22E8, &qword_100A944C0);
  sub_1000037C4();
  v22 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10000C8D8();
  sub_1000161C0(v3, v3[3]);
  sub_10089F2CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v40)
  {
    case 1:
      sub_10089F3C8();
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = sub_1000168C4();
      v29(v27, v28);
      break;
    case 2:
      sub_10089F374();
      v24 = v34;
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v35;
      v25 = v36;
      goto LABEL_5;
    case 3:
      sub_10089F320();
      v24 = v37;
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v38;
      v25 = v39;
LABEL_5:
      (*(v26 + 8))(v24, v25);
      break;
    default:
      sub_10089F41C();
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v19, v15);
      break;
  }

  (*(v22 + 8))(v0, v20);
  sub_10000C8F4();
}

unint64_t sub_10089F2CC()
{
  result = qword_100CE22F0;
  if (!qword_100CE22F0)
  {
    result = swift_getWitnessTable(aQm, &type metadata for LocationSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE22F0);
  }

  return result;
}

unint64_t sub_10089F320()
{
  result = qword_100CE22F8;
  if (!qword_100CE22F8)
  {
    result = swift_getWitnessTable(byte_100A94B30, &type metadata for LocationSessionTrigger.LocationTapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE22F8);
  }

  return result;
}

unint64_t sub_10089F374()
{
  result = qword_100CE2300;
  if (!qword_100CE2300)
  {
    result = swift_getWitnessTable(byte_100A94AE0, &type metadata for LocationSessionTrigger.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2300);
  }

  return result;
}

unint64_t sub_10089F3C8()
{
  result = qword_100CE2308;
  if (!qword_100CE2308)
  {
    result = swift_getWitnessTable(aAn, &type metadata for LocationSessionTrigger.SwipeCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2308);
  }

  return result;
}

unint64_t sub_10089F41C()
{
  result = qword_100CE2310;
  if (!qword_100CE2310)
  {
    result = swift_getWitnessTable(byte_100A94A40, &type metadata for LocationSessionTrigger.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2310);
  }

  return result;
}

void LocationSessionTrigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v25;
  a24 = v26;
  v88 = v24;
  v28 = v27;
  v87 = sub_10022C350(&qword_100CE2318, &qword_100A944C8);
  sub_1000037C4();
  v84 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v86 = v31;
  sub_10022C350(&qword_100CE2320, &qword_100A944D0);
  sub_1000037C4();
  v82 = v33;
  v83 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000091BC(v35, v74);
  sub_10022C350(&qword_100CE2328, &qword_100A944D8);
  sub_1000037C4();
  v80 = v37;
  v81 = v36;
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = &v74 - v39;
  v41 = sub_10022C350(&qword_100CE2330, &qword_100A944E0);
  sub_1000037C4();
  v79 = v42;
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = &v74 - v44;
  v46 = sub_10022C350(&qword_100CE2338, &unk_100A944E8);
  sub_1000037C4();
  v85 = v47;
  sub_100003828();
  __chkstk_darwin(v48);
  v50 = &v74 - v49;
  sub_1000161C0(v28, v28[3]);
  sub_10089F2CC();
  v51 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
    goto LABEL_8;
  }

  v76 = v41;
  v77 = v45;
  v78 = v40;
  v52 = v86;
  v53 = v87;
  v88 = v28;
  v54 = v50;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v56 == v57 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v70 = v69;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v70 = &type metadata for LocationSessionTrigger;
    v71 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v71);
    sub_100003B20();
    (*(v72 + 104))(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v85 + 8))(v54, v46);
    v28 = v88;
LABEL_8:
    sub_100006F14(v28);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  v75 = 0;
  if (v56 < (v57 >> 1))
  {
    v58 = *(v55 + v56);
    sub_100618E7C();
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v63 = v58;
      v65 = v84;
      v64 = v85;
      switch(v63)
      {
        case 1:
          a12 = 1;
          sub_10089F3C8();
          sub_100022A54(&type metadata for LocationSessionTrigger.SwipeCodingKeys, &a12);
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_10089F374();
          sub_100022A54(&type metadata for LocationSessionTrigger.AppLaunchCodingKeys, &a13);
          swift_unknownObjectRelease();
LABEL_15:
          v66 = sub_1000168C4();
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_10089F320();
          v73 = v75;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v73)
          {
            (*(v64 + 8))(v54, v46);
            swift_unknownObjectRelease();
            v28 = v88;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v65 + 8))(v52, v53);
LABEL_17:
          (*(v64 + 8))(v54, v46);
          sub_100006F14(v88);
          break;
        default:
          a11 = 0;
          sub_10089F41C();
          sub_100022A54(&type metadata for LocationSessionTrigger.UnknownCodingKeys, &a11);
          swift_unknownObjectRelease();
          v66 = sub_1000168C4();
          v68 = v76;
LABEL_16:
          v67(v66, v68);
          goto LABEL_17;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_10089FA7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000100ABDD30;
  v5 = 0xE600000000000000;
  if (*(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + a1))
  {
    if (*(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + a1) == 1)
    {
      v6 = 0xEE006465696E6544;
      v7 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v6 = 0x8000000100AD4B70;
      v7 = 0xD000000000000013;
    }
  }

  else
  {
    v7 = 0x6E6564646968;
    v6 = 0xE600000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000100ABE510;
  if (*(a1 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState))
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x6E6564646968;
  }

  if (*(a1 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState))
  {
    v5 = 0x8000000100AE3030;
  }

  *(inited + 96) = v8;
  *(inited + 104) = v5;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x72656767697274;
  *(inited + 136) = 0xE700000000000000;
  v9 = *(a1 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
  *(inited + 168) = &type metadata for LocationSessionTrigger;
  *(inited + 144) = v9;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CE2450, &qword_100A94BD8);
  a2[4] = sub_1008A10C4();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10089FC74(uint64_t a1)
{
  sub_1008A1128();

  return ShortDescribable.description.getter();
}

uint64_t sub_10089FCB0()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v9 = sub_100003810(active);
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_10001365C();
  sub_1000BB194(v0, v0);
  sub_10000554C(v0);
  if (v10)
  {
    return 0x6C616974696E69;
  }

  (*(v3 + 32))(v7, v0, v1);
  v11._countAndFlagsBits = Location.Identifier.id.getter();
  String.append(_:)(v11);

  v12 = 0x6E6F697461636F6CLL;
  (*(v3 + 8))(v7, v1);
  return v12;
}

uint64_t sub_10089FE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10089FEF4(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

void sub_10089FF2C()
{
  sub_10000E8AC();
  v40 = v0;
  v41 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CE2498, &qword_100A94BF8);
  sub_1000037C4();
  v38 = v6;
  v39 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000091BC(v8, v32);
  v9 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v37 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v35 = v13 - v12;
  sub_10022C350(&qword_100CE24A0, &qword_100A94C00);
  sub_1000037C4();
  v33 = v15;
  v34 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v20 = sub_100003810(active);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = sub_10022C350(&qword_100CE24A8, &qword_100A94C08);
  sub_1000037C4();
  v26 = v25;
  sub_100003828();
  __chkstk_darwin(v27);
  sub_10000C8D8();
  sub_1000161C0(v4, v4[3]);
  sub_1008A117C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000BB194(v40, v23);
  if (sub_100024D10(v23, 1, v9) == 1)
  {
    sub_1008A1224();
    sub_100015088();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v18, v34);
  }

  else
  {
    v28 = v37;
    v29 = v35;
    (*(v37 + 32))(v35, v23, v9);
    sub_1008A11D0();
    v30 = v36;
    sub_100015088();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10086FE04(&qword_100CBBED8, &protocol conformance descriptor for Location.Identifier);
    v31 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v30, v31);
    (*(v28 + 8))(v29, v9);
  }

  (*(v26 + 8))(v2, v24);
  sub_10000C8F4();
}

void sub_1008A02E8()
{
  sub_10000E8AC();
  v59 = v0;
  v3 = v2;
  v55 = v4;
  sub_10022C350(&qword_100CE2468, &qword_100A94BE0);
  sub_1000037C4();
  v53 = v5;
  v54 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v58 = v8;
  v57 = sub_10022C350(&qword_100CE2470, &qword_100A94BE8);
  sub_1000037C4();
  v52 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000091BC(v11, v49);
  sub_10022C350(&qword_100CE2478, &qword_100A94BF0);
  sub_1000037C4();
  v56 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_10000C8D8();
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  sub_100003B20();
  __chkstk_darwin(v15);
  sub_1000088C0();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  sub_1000161C0(v3, v3[3]);
  sub_1008A117C();
  v19 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    goto LABEL_8;
  }

  v50 = v18;
  v51 = active;
  v49 = v1;
  v20 = v57;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  v59 = v3;
  if (v22 == v23 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v29 = v51;
    v30 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v30);
    sub_100003B20();
    (*(v31 + 104))(v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_10007485C();
    v33(v32);
    v3 = v59;
LABEL_8:
    sub_100006F14(v3);
    sub_10000C8F4();
    return;
  }

  if (v22 < (v23 >> 1))
  {
    v60 = *(v21 + v22);
    sub_100618E7C();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      if (v60)
      {
        sub_1008A11D0();
        sub_100015088();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = type metadata accessor for Location.Identifier();
        sub_10086FE04(&qword_100CBBDC0, &protocol conformance descriptor for Location.Identifier);
        v35 = v53;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v41 = sub_1000168C4();
        v42(v41, v35);
        v43 = sub_10007485C();
        v44(v43);
        v45 = v49;
        sub_10001B350(v49, 0, 1, v34);
        v46 = v45;
        v47 = v50;
        sub_100349588(v46, v50);
        v3 = v59;
        v48 = v55;
      }

      else
      {
        sub_1008A1224();
        sub_100015088();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v3 = v59;
        v48 = v55;
        swift_unknownObjectRelease();
        v36 = sub_1000168C4();
        v37(v36, v20);
        v38 = sub_10007485C();
        v39(v38);
        v40 = type metadata accessor for Location.Identifier();
        v47 = v50;
        sub_10001B350(v50, 1, 1, v40);
      }

      sub_100349588(v47, v48);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1008A0890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10089FE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008A08B8(uint64_t a1)
{
  v2 = sub_1008A117C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A08F4(uint64_t a1)
{
  v2 = sub_1008A117C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A0930(uint64_t a1)
{
  v2 = sub_1008A1224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A096C(uint64_t a1)
{
  v2 = sub_1008A1224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A09A8(uint64_t a1)
{
  v2 = sub_1008A11D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A09E4(uint64_t a1)
{
  v2 = sub_1008A11D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A0A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E0924();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1008A0AB4()
{
  result = qword_100CE2340;
  if (!qword_100CE2340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSessionTrigger, &type metadata for LocationSessionTrigger, v0, v1);
    atomic_store(result, &qword_100CE2340);
  }

  return result;
}

_BYTE *sub_1008A0B18(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1008A0C38()
{
  result = qword_100CE23E8;
  if (!qword_100CE23E8)
  {
    result = swift_getWitnessTable(aIl, &type metadata for LocationSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE23E8);
  }

  return result;
}

unint64_t sub_1008A0C90()
{
  result = qword_100CE23F0;
  if (!qword_100CE23F0)
  {
    result = swift_getWitnessTable(byte_100A949E8, &type metadata for LocationViewerViewState, v0, v1);
    atomic_store(result, &qword_100CE23F0);
  }

  return result;
}

unint64_t sub_1008A0CE8()
{
  result = qword_100CE23F8;
  if (!qword_100CE23F8)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for LocationSessionTrigger.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE23F8);
  }

  return result;
}

unint64_t sub_1008A0D40()
{
  result = qword_100CE2400;
  if (!qword_100CE2400)
  {
    result = swift_getWitnessTable(byte_100A947E0, &type metadata for LocationSessionTrigger.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2400);
  }

  return result;
}

unint64_t sub_1008A0D98()
{
  result = qword_100CE2408;
  if (!qword_100CE2408)
  {
    result = swift_getWitnessTable(aYq_0, &type metadata for LocationSessionTrigger.SwipeCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2408);
  }

  return result;
}

unint64_t sub_1008A0DF0()
{
  result = qword_100CE2410;
  if (!qword_100CE2410)
  {
    result = swift_getWitnessTable(aAp, &type metadata for LocationSessionTrigger.SwipeCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2410);
  }

  return result;
}

unint64_t sub_1008A0E48()
{
  result = qword_100CE2418;
  if (!qword_100CE2418)
  {
    result = swift_getWitnessTable(byte_100A94718, &type metadata for LocationSessionTrigger.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2418);
  }

  return result;
}

unint64_t sub_1008A0EA0()
{
  result = qword_100CE2420;
  if (!qword_100CE2420)
  {
    result = swift_getWitnessTable(byte_100A94740, &type metadata for LocationSessionTrigger.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2420);
  }

  return result;
}

unint64_t sub_1008A0EF8()
{
  result = qword_100CE2428;
  if (!qword_100CE2428)
  {
    result = swift_getWitnessTable(byte_100A946C8, &type metadata for LocationSessionTrigger.LocationTapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2428);
  }

  return result;
}

unint64_t sub_1008A0F50()
{
  result = qword_100CE2430;
  if (!qword_100CE2430)
  {
    result = swift_getWitnessTable(byte_100A946F0, &type metadata for LocationSessionTrigger.LocationTapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2430);
  }

  return result;
}

unint64_t sub_1008A0FA8()
{
  result = qword_100CE2438;
  if (!qword_100CE2438)
  {
    result = swift_getWitnessTable(byte_100A94808, &type metadata for LocationSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2438);
  }

  return result;
}

unint64_t sub_1008A1000()
{
  result = qword_100CE2440;
  if (!qword_100CE2440)
  {
    result = swift_getWitnessTable(byte_100A94830, &type metadata for LocationSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2440);
  }

  return result;
}

uint64_t sub_1008A1054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008A10C4()
{
  result = qword_100CE2458;
  if (!qword_100CE2458)
  {
    v3 = sub_10022E824(&qword_100CE2450, &qword_100A94BD8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE2458);
  }

  return result;
}

unint64_t sub_1008A1128()
{
  result = qword_100CE2460;
  if (!qword_100CE2460)
  {
    result = swift_getWitnessTable(aIm, &type metadata for LocationViewerViewState, v0, v1);
    atomic_store(result, &qword_100CE2460);
  }

  return result;
}

unint64_t sub_1008A117C()
{
  result = qword_100CE2480;
  if (!qword_100CE2480)
  {
    result = swift_getWitnessTable(aMj, &type metadata for LocationViewerActiveLocationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2480);
  }

  return result;
}

unint64_t sub_1008A11D0()
{
  result = qword_100CE2488;
  if (!qword_100CE2488)
  {
    result = swift_getWitnessTable(byte_100A94E54, &type metadata for LocationViewerActiveLocationState.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2488);
  }

  return result;
}

unint64_t sub_1008A1224()
{
  result = qword_100CE2490;
  if (!qword_100CE2490)
  {
    result = swift_getWitnessTable(byte_100A94E04, &type metadata for LocationViewerActiveLocationState.InitialCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2490);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerActiveLocationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerActiveLocationState.LocationCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1008A1414()
{
  result = qword_100CE24B0;
  if (!qword_100CE24B0)
  {
    result = swift_getWitnessTable(aH_2, &type metadata for LocationViewerActiveLocationState.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24B0);
  }

  return result;
}

unint64_t sub_1008A146C()
{
  result = qword_100CE24B8;
  if (!qword_100CE24B8)
  {
    result = swift_getWitnessTable(aG, &type metadata for LocationViewerActiveLocationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24B8);
  }

  return result;
}

unint64_t sub_1008A14C4()
{
  result = qword_100CE24C0;
  if (!qword_100CE24C0)
  {
    result = swift_getWitnessTable(byte_100A94CFC, &type metadata for LocationViewerActiveLocationState.InitialCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24C0);
  }

  return result;
}

unint64_t sub_1008A151C()
{
  result = qword_100CE24C8;
  if (!qword_100CE24C8)
  {
    result = swift_getWitnessTable(byte_100A94D24, &type metadata for LocationViewerActiveLocationState.InitialCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24C8);
  }

  return result;
}

unint64_t sub_1008A1574()
{
  result = qword_100CE24D0;
  if (!qword_100CE24D0)
  {
    result = swift_getWitnessTable(byte_100A94C44, &type metadata for LocationViewerActiveLocationState.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24D0);
  }

  return result;
}

unint64_t sub_1008A15CC()
{
  result = qword_100CE24D8;
  if (!qword_100CE24D8)
  {
    result = swift_getWitnessTable(aEk, &type metadata for LocationViewerActiveLocationState.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24D8);
  }

  return result;
}

unint64_t sub_1008A1624()
{
  result = qword_100CE24E0;
  if (!qword_100CE24E0)
  {
    result = swift_getWitnessTable(byte_100A94D4C, &type metadata for LocationViewerActiveLocationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24E0);
  }

  return result;
}

unint64_t sub_1008A167C()
{
  result = qword_100CE24E8;
  if (!qword_100CE24E8)
  {
    result = swift_getWitnessTable(aJ_0, &type metadata for LocationViewerActiveLocationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24E8);
  }

  return result;
}

uint64_t sub_1008A16DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1008A171C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1008A17A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274536465657073 && a2 == 0xEB00000000676E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AE3070 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696E556465657073 && a2 == 0xEF676E6972745374;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100AE3090 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6972745374737567 && a2 == 0xEA0000000000676ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x756C615674737567 && a2 == 0xEF676E6972745365;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74696E5574737567 && a2 == 0xEE00676E69727453;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6562614C74737567 && a2 == 0xEF676E697274536CLL;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F69746365726964 && a2 == 0xEF676E697274536ELL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000100AE30B0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000021 && 0x8000000100AE30D0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000100AE3100 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x8000000100AE3120 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x656C676E61 && a2 == 0xE500000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
  }
}