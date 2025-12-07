uint64_t sub_1000F1084@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000F10EC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000F1164@<X0>(uint64_t (*a1)(__n128)@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v44 = a6;
  v45 = a7;
  v41 = a5;
  v42 = a2;
  v10 = type metadata accessor for EnvironmentValues();
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a4 - 8);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v37 - v24;
  a1(v23);
  static Edge.Set.bottom.getter();
  v27 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a3, v41, v26);
  v28 = &v42[*(v27 + 52)];
  v29 = *v28;
  v30 = v28[8];

  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = v25;
    v31 = static Log.runtimeIssuesLog.getter();
    v25 = v42;
    os_log(_:dso:log:_:_:)();

    v32 = v38;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v39 + 8))(v32, v40);
    v29 = v51[0];
  }

  sub_1000D3EAC(v29);

  v33 = v44;
  View.padding(_:_:)();
  (*(v43 + 8))(v14, a4);
  v51[2] = v33;
  v51[3] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v21, v15, WitnessTable);
  v35 = *(v16 + 8);
  v35(v21, v15);
  v49 = 0;
  v50 = 0;
  v51[0] = &v49;
  (*(v16 + 16))(v18, v25, v15);
  v51[1] = v18;
  v48[0] = &type metadata for Spacer;
  v48[1] = v15;
  v46 = &protocol witness table for Spacer;
  v47 = WitnessTable;
  sub_100022AFC(v51, 2uLL, v48);
  v35(v25, v15);
  return (v35)(v18, v15);
}

double sub_1000F1598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000048C8(v10, qword_100160D38);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Swap button tapped", v13, 2u);
  }

  v15 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v14);
  v16 = (a1 + *(v15 + 44));
  v17 = *v16;
  v18 = *(v16 + 8);

  if (v18)
  {

    sub_1000D9280();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);

    sub_1000D9280();

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v17 = v24;
  }

  swift_getKeyPath();
  v24 = v17;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v17 + 54) != 11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v23 - 2) = v17;
    *(&v23 - 8) = 11;
    v24 = v17;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1000EF450(v15);
}

void sub_1000F19B8(uint64_t a1@<X8>)
{
  v25 = a1;
  v22 = sub_10003AE84(&qword_100158AC8, &unk_1001134A0);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v24 = sub_10003AE84(&qword_100158AD0, &unk_1001152D0);
  __chkstk_darwin(v24);
  v14 = &v21 - v13;
  if (qword_100154430 != -1)
  {
    swift_once();
  }

  v15 = qword_100160968;
  v26 = qword_100160968;
  v16 = v7[13];
  v16(v12, enum case for DynamicTypeSize.xLarge(_:), v6);
  v16(v9, enum case for DynamicTypeSize.accessibility5(_:), v6);
  sub_100006698(&qword_100158AF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v23 = v15;

  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v17 = v7[4];
    v17(v5, v12, v6);
    v18 = v22;
    v17(&v5[*(v22 + 48)], v9, v6);
    sub_100008E68(v5, v2, &qword_100158AC8, &unk_1001134A0);
    v19 = *(v18 + 48);
    v17(v14, v2, v6);
    v20 = v7[1];
    v20(&v2[v19], v6);
    sub_1000F4084(v5, v2);
    v17(&v14[*(v24 + 36)], &v2[*(v18 + 48)], v6);
    v20(v2, v6);
    sub_100004880(&qword_100158B00, &qword_100158AD0, &unk_1001152D0, &protocol conformance descriptor for ClosedRange<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_1000035CC(v14, &qword_100158AD0, &unk_1001152D0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F1D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, a4);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000F1E08@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100159AF8, &qword_100114EE8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_10003AE84(&qword_100159B48, &qword_100114F90);
  sub_1000F2048(&v8[*(v9 + 44)]);
  (*(v3 + 104))(v5, enum case for DynamicTypeSize.small(_:), v2);
  sub_100004880(&qword_100159B00, &qword_100159AF8, &qword_100114EE8, &protocol conformance descriptor for HStack<A>);
  View.dynamicTypeSize(_:)();
  (*(v3 + 8))(v5, v2);
  sub_1000035CC(v8, &qword_100159AF8, &qword_100114EE8);
  KeyPath = swift_getKeyPath();
  v11 = a1 + *(sub_10003AE84(&qword_100159AF0, &qword_100114EE0) + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 1;
  *(v11 + 16) = 0;
  v12 = swift_getKeyPath();
  result = sub_10003AE84(&qword_100159AD8, &qword_100114ED8);
  v14 = (a1 + *(result + 36));
  *v14 = v12;
  v14[1] = 0x3FE6666666666666;
  return result;
}

uint64_t sub_1000F2048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AE84(&qword_100159B50, &unk_100114FF8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v21 - v6);
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v22 = v11;
  v13 = v12;
  if (qword_100154400 != -1)
  {
    swift_once();
  }

  v14 = qword_100160938;
  v15 = (v7 + *(v2 + 36));
  v16 = *(sub_10003AE84(&qword_1001580E8, &qword_100112700) + 28);
  v17 = enum case for ControlSize.small(_:);
  v18 = type metadata accessor for ControlSize();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  sub_100008E68(v7, v4, &qword_100159B50, &unk_100114FF8);
  *a1 = v8;
  *(a1 + 8) = v10;
  LOBYTE(v16) = v22 & 1;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v13;
  v19 = sub_10003AE84(&qword_100159B58, &qword_100115038);
  sub_100008E68(v4, a1 + *(v19 + 48), &qword_100159B50, &unk_100114FF8);

  sub_10006564C(v8, v10, v16);

  sub_1000035CC(v7, &qword_100159B50, &unk_100114FF8);
  sub_1000035CC(v4, &qword_100159B50, &unk_100114FF8);
  sub_10000C6AC(v8, v10, v16);
}

uint64_t sub_1000F234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100008E68(a1, &v11 - v8, &qword_100154948, qword_1001130B0);
  return a5(v9);
}

uint64_t sub_1000F23FC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000F2484(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.controlSize.setter();
}

unint64_t sub_1000F2580()
{
  result = qword_100159A70;
  if (!qword_100159A70)
  {
    sub_10003AECC(&qword_100159A50, &qword_100114E60);
    sub_100004880(&qword_100159A78, &qword_100159A80, &qword_100114E88, &protocol conformance descriptor for VStack<A>);
    sub_100004880(&qword_100159A88, &qword_100159A60, &unk_100114E70, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159A70);
  }

  return result;
}

uint64_t sub_1000F2674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CalculatorUnitConversionDisplayView(0, v6, v7, a4) - 8);
  return sub_1000F1D94(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

unint64_t sub_1000F26F4()
{
  result = qword_100159AE0;
  if (!qword_100159AE0)
  {
    sub_10003AECC(&qword_100159AD8, &qword_100114ED8);
    sub_1000F27AC();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159AE0);
  }

  return result;
}

unint64_t sub_1000F27AC()
{
  result = qword_100159AE8;
  if (!qword_100159AE8)
  {
    sub_10003AECC(&qword_100159AF0, &qword_100114EE0);
    sub_10003AECC(&qword_100159AF8, &qword_100114EE8);
    sub_100004880(&qword_100159B00, &qword_100159AF8, &qword_100114EE8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159AE8);
  }

  return result;
}

uint64_t sub_1000F28D4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 44));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v8 = v15;
  }

  swift_getKeyPath();
  v15 = v8;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v8 + 53);

  if (v11 == 1)
  {
    if (qword_100154550 != -1)
    {
      swift_once();
    }

    v12 = &qword_100160B78;
  }

  else
  {
    if (qword_100154548 != -1)
    {
      swift_once();
    }

    v12 = &qword_100160B70;
  }

  return *v12;
}

unint64_t sub_1000F2B14()
{
  result = qword_100159B10;
  if (!qword_100159B10)
  {
    sub_10003AECC(&qword_100159AB8, &qword_100114EB8);
    sub_1000F2BCC();
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B10);
  }

  return result;
}

unint64_t sub_1000F2BCC()
{
  result = qword_100159B18;
  if (!qword_100159B18)
  {
    sub_10003AECC(&qword_100159B08, &qword_100114F20);
    sub_100004880(&qword_100159B20, &qword_100159B28, &unk_100114F58, &protocol conformance descriptor for Button<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B18);
  }

  return result;
}

unint64_t sub_1000F2CB0()
{
  result = qword_100159B30;
  if (!qword_100159B30)
  {
    sub_10003AECC(&qword_100159AC0, &qword_100114EC0);
    sub_10003AECC(&qword_100159AB8, &qword_100114EB8);
    type metadata accessor for PlainButtonStyle();
    sub_1000F2B14();
    sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000F2DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B30);
  }

  return result;
}

unint64_t sub_1000F2DC8()
{
  result = qword_100159B38;
  if (!qword_100159B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B38);
  }

  return result;
}

uint64_t sub_1000F2E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    sub_100006698(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F2EE8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CalculatorUnitConversionDisplayView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void *sub_1000F2F98(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CalculatorUnitConversionDisplayView(0, *(v4 + 16), *(v4 + 24), a4);
  if (*a2 == 1)
  {
    return sub_1000EF2D4(result);
  }

  return result;
}

unint64_t sub_1000F3008()
{
  result = qword_100159B90;
  if (!qword_100159B90)
  {
    sub_10003AECC(&qword_100159B60, &qword_100115068);
    sub_1000F3094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B90);
  }

  return result;
}

unint64_t sub_1000F3094()
{
  result = qword_100159B98;
  if (!qword_100159B98)
  {
    sub_10003AECC(&qword_100159B88, &qword_100115090);
    sub_100004880(&qword_100159BA0, &qword_100159BA8, &qword_1001150C0, &protocol conformance descriptor for Grid<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B98);
  }

  return result;
}

unint64_t sub_1000F31C4()
{
  result = qword_1001551E0;
  if (!qword_1001551E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001551E0);
  }

  return result;
}

uint64_t sub_1000F3228(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for CalculatorUnitConversionDisplayView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a3(a1, a2, v10, v7, v8);
}

double sub_1000F32D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CalculatorUnitConversionDisplayView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000F0118(a1, v9, v6, v7);
}

unint64_t sub_1000F33B4()
{
  result = qword_100159BD0;
  if (!qword_100159BD0)
  {
    sub_10003AECC(&qword_100159BC8, &qword_100115180);
    sub_100004880(&qword_100159BD8, &qword_100159BE0, &qword_100115188, &unk_100110F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159BD0);
  }

  return result;
}

uint64_t sub_1000F3484(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CalculatorUnitConversionDisplayView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9.n128_u64[0] = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4 + v8, v5, v6, v9);
}

uint64_t sub_1000F3550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CalculatorUnitConversionDisplayView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  v7 = v5[9];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v5[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v5[19];
  v14 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v14 - 8) + 8))(v6 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_1000F385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for CalculatorUnitConversionDisplayView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000EE91C(v3 + v9, *(v3 + v10), v6, v7, a1, a3, *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1000F393C()
{
  result = qword_100159BF8;
  if (!qword_100159BF8)
  {
    sub_10003AECC(&qword_100159BF0, &qword_100115198);
    sub_100006698(&qword_100159C00, type metadata accessor for InputAccessoryView, &unk_10010D1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159BF8);
  }

  return result;
}

uint64_t sub_1000F3ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CalculatorUnitConversionDisplayView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  v7 = v5[9];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v5[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v5[19];
  v14 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v14 - 8) + 8))(v6 + v13, v14);

  return swift_deallocObject();
}

double sub_1000F3DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for CalculatorUnitConversionDisplayView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = v4 + v6;
  v8 = *(v4 + ((*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  ViewDimensions.height.getter();
  return v9 - v8 * (*(v7 + v5[19]) / *(v7 + v5[20]));
}

unint64_t sub_1000F3E70()
{
  result = qword_100159C58;
  if (!qword_100159C58)
  {
    sub_10003AECC(&qword_100159C60, &qword_1001152A8);
    sub_10003AECC(&qword_100159C68, &qword_1001152B0);
    type metadata accessor for PlainButtonStyle();
    sub_1000F3F88();
    sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000F2DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159C58);
  }

  return result;
}

unint64_t sub_1000F3F88()
{
  result = qword_100159C70;
  if (!qword_100159C70)
  {
    sub_10003AECC(&qword_100159C68, &qword_1001152B0);
    sub_100004880(&qword_100159C78, &qword_100159C80, &unk_1001152B8, &protocol conformance descriptor for Button<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159C70);
  }

  return result;
}

uint64_t sub_1000F4084(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100158AC8, &unk_1001134A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CalculatorConfigSnapshot(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CalculatorConfigSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1000F4214(int a1)
{
  _StringGuts.grow(_:)(47);
  v2._countAndFlagsBits = 0x203A65646F6DLL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x8000000100109520;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0x6F4D4E5052736920;
  v7._object = 0xEC000000203A6564;
  String.append(_:)(v7);
  if ((a1 & 0x10000) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  return 0;
}

uint64_t sub_1000F4354()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000F4214(v2 | *v0 | v1);
}

void sub_1000F43CC(uint64_t a1)
{
  sub_10001B8B8();
  if (v1 <= 0x3F)
  {
    sub_100010420(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = type metadata accessor for AccessibilityTraits();
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnitConversionCategoryButtonStyle(0);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnitConversionCategoryButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10003AE84(&qword_100159D40, &qword_1001153E8);
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_10003AE84(&qword_100159D58, &qword_1001153F0);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v37 = sub_10003AE84(&qword_100159D30, &qword_1001153E0);
  __chkstk_darwin(v37);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v36 = &v35 - v20;
  sub_1000F4F3C(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_1000F4FA0(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v45 = a1;
  sub_10003AE84(&qword_100159D60, &qword_1001153F8);
  sub_1000F5070();
  Button.init(action:label:)();
  LODWORD(v21) = *(a1 + 16);
  *v6 = v21;
  v46 = 0x4031000000000000;
  sub_1000103CC();
  ScaledMetric.init(wrappedValue:)();
  v23 = sub_100004880(&qword_100159D48, &qword_100159D40, &qword_1001153E8, &protocol conformance descriptor for Button<A>);
  v24 = sub_1000F4EF4(&qword_100159D50, type metadata accessor for UnitConversionCategoryButtonStyle, &unk_100115450);
  View.buttonStyle<A>(_:)();
  sub_1000F5180(v6);
  (*(v38 + 8))(v12, v10);
  v26 = *a1;
  v25 = *(a1 + 8);
  v46 = v10;
  v47 = v4;
  v48 = v23;
  v49 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v39;
  View.accessibilityIdentifier(_:)();
  (*(v40 + 8))(v16, v27);
  v46 = v26;
  v47 = v25;
  v28 = v36;
  sub_10006345C();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_100039B40(v18);
  if (v21 == 1)
  {
    sub_10003AE84(&qword_100157A80, &unk_100115410);
    v29 = v41;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10010BDE0;
    static AccessibilityTraits.isSelected.getter();
    v46 = v30;
    sub_1000F4EF4(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
    v31 = v42;
    v32 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v29;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
    sub_1000F4EF4(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
    v31 = v42;
    v32 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v41;
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v33 + 8))(v31, v32);
  return sub_100039B40(v28);
}

void sub_1000F4B88(uint64_t a2@<X8>)
{
  sub_10006345C();

  v24 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.vertical.getter();
  type metadata accessor for UnitConversionCategoryButton(0);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v6 & 1;
  v19 = static Edge.Set.horizontal.getter();
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  *a2 = v24;
  *(a2 + 8) = v4;
  *(a2 + 16) = v18;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = v17;
  *(a2 + 72) = 0;
  *(a2 + 80) = v19;
  *(a2 + 88) = v20;
  *(a2 + 96) = v21;
  *(a2 + 104) = v22;
  *(a2 + 112) = v23;
  *(a2 + 120) = 0;
}

uint64_t sub_1000F4CD8()
{
  sub_10003AE84(&qword_100159D30, &qword_1001153E0);
  sub_1000F4D58();
  return GlassEffectContainer.init(spacing:content:)();
}

unint64_t sub_1000F4D58()
{
  result = qword_100159D38;
  if (!qword_100159D38)
  {
    sub_10003AECC(&qword_100159D30, &qword_1001153E0);
    sub_10003AECC(&qword_100159D40, &qword_1001153E8);
    type metadata accessor for UnitConversionCategoryButtonStyle(255);
    sub_100004880(&qword_100159D48, &qword_100159D40, &qword_1001153E8, &protocol conformance descriptor for Button<A>);
    sub_1000F4EF4(&qword_100159D50, type metadata accessor for UnitConversionCategoryButtonStyle, &unk_100115450);
    swift_getOpaqueTypeConformance2();
    sub_1000F4EF4(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159D38);
  }

  return result;
}

uint64_t sub_1000F4EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F4F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionCategoryButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F4FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionCategoryButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000F5070()
{
  result = qword_100159D68;
  if (!qword_100159D68)
  {
    sub_10003AECC(&qword_100159D60, &qword_1001153F8);
    sub_1000F50FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159D68);
  }

  return result;
}

unint64_t sub_1000F50FC()
{
  result = qword_100159D70;
  if (!qword_100159D70)
  {
    sub_10003AECC(&qword_100159D78, &unk_100115400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159D70);
  }

  return result;
}

uint64_t sub_1000F5180(uint64_t a1)
{
  v2 = type metadata accessor for UnitConversionCategoryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000F5204(uint64_t a1)
{
  sub_100010420(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000F529C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100158400, &qword_100112CF8);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_10003AE84(&qword_100159E20, &qword_100115490);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10003AE84(&qword_100159E28, &qword_100115498);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  ButtonStyleConfiguration.label.getter();
  if (qword_1001546B0 != -1)
  {
    swift_once();
  }

  v13 = qword_100160D10;
  KeyPath = swift_getKeyPath();
  v15 = &v6[*(sub_10003AE84(&qword_100158448, &qword_100112D70) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = swift_getKeyPath();
  v17 = &v6[*(sub_10003AE84(&qword_100158450, &qword_100112DA8) + 36)];
  *v17 = v16;
  v17[1] = 0x3FB999999999999ALL;
  v18 = swift_getKeyPath();
  v19 = &v6[*(v4 + 36)];
  *v19 = v18;
  *(v19 + 1) = 1;
  v19[16] = 0;
  v20 = *v2;
  if (v20 == 1)
  {
    v21 = qword_100154560;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = &qword_100160B88;
  }

  else
  {
    v23 = qword_100154558;

    if (v23 != -1)
    {
      swift_once();
    }

    v22 = &qword_100160B80;
  }

  v24 = *v22;

  v25 = swift_getKeyPath();
  sub_10000D5B8(v6, v9, &qword_100158400, &qword_100112CF8);
  v26 = &v9[*(v7 + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = &v12[*(v10 + 36)];
  sub_10003AE84(&qword_100158460, &qword_100115570);
  static ButtonBorderShape.capsule.getter();
  *v27 = swift_getKeyPath();
  sub_10000D5B8(v9, v12, &qword_100159E20, &qword_100115490);
  sub_10000D5B8(v12, a1, &qword_100159E28, &qword_100115498);
  result = sub_10003AE84(&qword_100159E30, &qword_1001155A8);
  *(a1 + *(result + 36)) = v20;
  return result;
}

void *sub_1000F5614@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_10003AE84(&qword_100159E58, &qword_100115640);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for DefaultGlassEffectShape();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Glass();
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_10003AE84(&qword_100159E60, &qword_100115648);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  if (a2)
  {
    v33 = v17;
    v34 = v4;
    v35 = v16;
    v36 = v6;
    v20 = v7;
    static Glass.regular.getter();
    if (qword_100154568 != -1)
    {
      swift_once();
    }

    Glass.tint(_:)();
    v32 = *(v10 + 8);
    v21 = v37;
    v32(v12, v37);
    DefaultGlassEffectShape.init()();
    v22 = sub_10003AE84(&qword_100159E68, &qword_100115650);
    v23 = sub_100004880(&qword_100159E70, &qword_100159E68, &qword_100115650, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v24 = sub_1000F4EF4(&qword_100159E78, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
    View.glassEffect<A>(_:in:)();
    (*(v38 + 8))(v9, v20);
    v32(v15, v21);
    v25 = v33;
    v26 = v35;
    (*(v33 + 16))(v36, v19, v35);
    swift_storeEnumTagMultiPayload();
    v41 = v22;
    v42 = v20;
    v43 = v23;
    v44 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v25 + 8))(v19, v26);
  }

  else
  {
    v28 = sub_10003AE84(&qword_100159E68, &qword_100115650);
    (*(*(v28 - 8) + 16))(v6, v39, v28);
    swift_storeEnumTagMultiPayload();
    v29 = sub_100004880(&qword_100159E70, &qword_100159E68, &qword_100115650, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v30 = sub_1000F4EF4(&qword_100159E78, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
    v41 = v28;
    v42 = v7;
    v43 = v29;
    v44 = v30;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000F5B74(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues._buttonBorderShape.setter();
}

unint64_t sub_1000F5C4C()
{
  result = qword_100159E38;
  if (!qword_100159E38)
  {
    sub_10003AECC(&qword_100159E30, &qword_1001155A8);
    sub_1000F5CD8();
    sub_1000F5E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E38);
  }

  return result;
}

unint64_t sub_1000F5CD8()
{
  result = qword_100159E40;
  if (!qword_100159E40)
  {
    sub_10003AECC(&qword_100159E28, &qword_100115498);
    sub_1000F5D90();
    sub_100004880(&qword_1001584E8, &qword_100158460, &qword_100115570, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E40);
  }

  return result;
}

unint64_t sub_1000F5D90()
{
  result = qword_100159E48;
  if (!qword_100159E48)
  {
    sub_10003AECC(&qword_100159E20, &qword_100115490);
    sub_100026C34();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E48);
  }

  return result;
}

unint64_t sub_1000F5E48()
{
  result = qword_100159E50;
  if (!qword_100159E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E50);
  }

  return result;
}

unint64_t sub_1000F5EB8()
{
  result = qword_100159E80;
  if (!qword_100159E80)
  {
    sub_10003AECC(&qword_100159E88, &qword_100115658);
    sub_10003AECC(&qword_100159E68, &qword_100115650);
    type metadata accessor for DefaultGlassEffectShape();
    sub_100004880(&qword_100159E70, &qword_100159E68, &qword_100115650, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000F4EF4(&qword_100159E78, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E80);
  }

  return result;
}

id sub_1000F5FFC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumberFormatter) init];
    [v3 setNumberStyle:1];
    [v3 setMaximumIntegerDigits:10];
    [v3 setMaximumFractionDigits:3];
    swift_getKeyPath();
    sub_100003EAC();
    v4 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v3 setUsesGroupingSeparator:*(v0 + 16)];
    sub_1000F71E4(v3);
    v5 = *(v0 + 56);
    *(v4 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1000F6110()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumberFormatter) init];
    [v3 setNumberStyle:5];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000F6190()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

uint64_t sub_1000F6200()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 73);
}

void sub_1000F6270(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 17) != v4)
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v5 = qword_100160D68;
    v6 = a1 & 1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v5 setValue:isa forKey:v8];

    if (*(v2 + 17) == v6)
    {
      *(v2 + 17) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_100003758();
    v10 = [objc_opt_self() defaultCenter];
    if (qword_1001544F8 != -1)
    {
      swift_once();
    }

    [v10 postNotificationName:qword_100160B20 object:0];
  }
}

uint64_t sub_1000F64A0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v5 = qword_100160D68;
  sub_1000F786C(a1, v4);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1000035CC(v4, &qword_100155210, &qword_100111700);
    v8 = 0;
  }

  else
  {
    v14[0] = Locale.identifier.getter();
    v14[1] = v9;
    (*(v7 + 8))(v4, v6);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_1000500D8(v14);
  }

  v10 = String._bridgeToObjectiveC()();
  [v5 setObject:v8 forKey:v10];
  swift_unknownObjectRelease();

  v11 = sub_100003D58();
  sub_1000F71E4(v11);

  v12 = sub_1000F5FFC();
  sub_1000F71E4(v12);

  sub_100003758();
  return sub_1000035CC(a1, &qword_100155210, &qword_100111700);
}

uint64_t sub_1000F66B0()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1000F6720(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void sub_1000F67C0(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000F68A0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = sub_100003D58();
    [v4 setUsesGroupingSeparator:v2];

    v5 = sub_1000F5FFC();
    [v5 setUsesGroupingSeparator:v2];

    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v6 = qword_100160D68;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKey:v8];
  }
}

uint64_t sub_1000F6A78()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

void sub_1000F6AE8(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000F6BC8(char a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000F6CA8(char a1)
{
  if (*(v1 + 73) == (a1 & 1))
  {
    *(v1 + 73) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000F6D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000048C8(v5, qword_100160D38);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      return a3(a2);
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prompt to unlock failed: %@", v8, 0xCu);
    sub_1000035CC(v9, &qword_100154BE8, &qword_10010C010);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000048C8(v11, qword_100160D38);
    v6 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, v12, "Prompt to unlock succeeded", v13, 2u);
    }
  }

  return a3(a2);
}

void sub_1000F6FCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000F7058(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 73);
}

uint64_t sub_1000F70F8()
{
  v1 = OBJC_IVAR____TtC10Calculator11AppSettings___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1000F71C4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000F71E4(void *a1)
{
  v2 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v9 = qword_100160D68;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 stringForKey:v10];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    static Locale.current.getter();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_1000035CC(v4, &qword_100155210, &qword_100111700);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  [a1 setLocale:isa];

  return (*(v6 + 8))(v8, v5);
}

void sub_1000F7484(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v4)
  {
    v5 = v4;
    sub_10003AE84(&qword_100159FA0, &unk_1001157D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BDE0;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v7;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_100076F38(inited);
    swift_setDeallocating();
    sub_1000035CC(inited + 32, &qword_100156050, &qword_10010E408);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [objc_opt_self() optionsWithDictionary:isa];

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000048C8(v10, qword_100160D38);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Will attempt to open Calculator application for prompt to unlock", v13, 2u);
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v25 = sub_1000F785C;
    v26 = v15;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000F6FCC;
    v24 = &unk_10014E040;
    v16 = _Block_copy(&aBlock);

    [v5 openApplication:v14 withOptions:v9 completion:v16];
    _Block_release(v16);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000048C8(v17, qword_100160D38);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "Unable to create the FrontBoard open application service", v19, 2u);
    }
  }
}

uint64_t sub_1000F786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155210, &qword_100111700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1000F7974(uint64_t a1)
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v1 = *(v6 + 24);
  type metadata accessor for AnalyticsTimeStampInfo(0);
  v2 = swift_allocObject();
  Date.init()();
  Date.init()();
  *(v1 + 16) = v2;

  sub_1000613EC(v6, *(v6 + 24));

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v3 = qword_100160D98;
  sub_10000362C();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 72) == 1)
  {
    v5 = Transaction.disablesAnimations.setter();
    __chkstk_darwin(v5);
    withTransaction<A>(_:_:)();
  }

  return result;
}

void sub_1000F7B58()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v8 + 48);

  if (v0 == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  LazyState2.wrappedValue.getter();
  sub_1000560A8(0);

LABEL_5:
  type metadata accessor for CalculatorAppScene(0);
  sub_10003AE84(&qword_10015A058, &unk_100115850);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v8 + 16);

  if (v2 == 1)
  {
    LazyState2.wrappedValue.getter();
    if (qword_100154728 != -1)
    {
      swift_once();
    }

    sub_10000362C();
    sub_100091C5C(0);
  }

  LazyState2.wrappedValue.getter();
  v3 = *(v8 + 16);
  swift_getKeyPath();
  v9 = v3;
  sub_1000029DC(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 41) == 1)
  {

    goto LABEL_11;
  }

  sub_10001B0D8();

  CalculateExpression.rich.getter();
  v6 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

  if (v6)
  {

LABEL_15:

    return;
  }

  CalculateExpression.rich.getter();
  v7 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

  if ((v7 & 1) == 0)
  {
LABEL_11:
    LazyState2.wrappedValue.getter();
    v4 = *(v9 + 16);

    sub_10001B0D8();

    CalculateExpression.clearAll()();

    sub_1000DBEAC();

    CalculateExpression.clearAll()();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + 41) == 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

    goto LABEL_15;
  }
}

double sub_1000F8070()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v0 = *(v4 + 16);
  swift_getKeyPath();
  v5 = v0;
  sub_1000029DC(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 41) == 1)
  {
  }

  else
  {
    sub_10001B0D8();

    CalculateExpression.rich.getter();
    v1 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

    if (v1)
    {

      goto LABEL_6;
    }

    CalculateExpression.rich.getter();
    v3 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

    if (v3)
    {
      goto LABEL_7;
    }
  }

  LazyState2.wrappedValue.getter();
  sub_10005CA30();
LABEL_6:

LABEL_7:
  LazyState2.wrappedValue.getter();
  sub_1000616E8(0, v5, *(v5 + 24));

  LazyState2.wrappedValue.getter();
  sub_100061B94(0, v5, *(v5 + 24));

  return result;
}

uint64_t sub_1000F8240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v47 = sub_10003AE84(&qword_10015A190, &qword_100115908);
  __chkstk_darwin(v47);
  v51 = v44 - v3;
  v4 = sub_10003AE84(&qword_10015A198, &qword_100115910);
  __chkstk_darwin(v4 - 8);
  v6 = v44 - v5;
  v7 = sub_10003AE84(&qword_10015A1A0, &qword_100115918);
  __chkstk_darwin(v7 - 8);
  v9 = v44 - v8;
  v10 = sub_10003AE84(&qword_10015A1A8, &qword_100115920);
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = v44 - v11;
  v13 = type metadata accessor for CommandGroupPlacement();
  __chkstk_darwin(v13 - 8);
  v54 = sub_10003AE84(&qword_10015A1B0, &qword_100115928);
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = v44 - v14;
  static CommandGroupPlacement.newItem.getter();
  v53 = v15;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  v55 = a1;
  sub_10003AE84(&qword_10015A1B8, &qword_100115930);
  sub_100004880(&qword_10015A1C0, &qword_10015A1B8, &qword_100115930, &protocol conformance descriptor for TupleView<A>);
  v16 = v12;
  CommandGroup.init(before:addition:)();
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v17 = v56;
  swift_getKeyPath();
  v56 = v17;
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + 48);

  if (v18 == 2)
  {

    v19 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      v19 = 1;
    }

    else
    {
      v21 = static CommandGroupPlacement.sidebar.getter();
      __chkstk_darwin(v21);
      *&v44[-4] = a1;
      sub_10003AE84(&qword_10015A1C8, &qword_100115960);
      sub_10000EEB8();
      CommandGroup.init(replacing:addition:)();
      v19 = 0;
    }
  }

  v22 = sub_10003AE84(&qword_10015A1E8, &qword_100115978);
  v23 = 1;
  v24 = v9;
  (*(*(v22 - 8) + 56))(v9, v19, 1, v22);
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v25 = qword_100160D68;
    v26 = String._bridgeToObjectiveC()();
    LODWORD(v25) = [v25 BOOLForKey:v26];

    if (v25)
    {
      v27 = LocalizedStringKey.init(stringLiteral:)();
      v45 = v29;
      v46 = v28;
      v44[3] = v30;
      __chkstk_darwin(v27);
      *&v44[-4] = a1;
      sub_10003AE84(&qword_10015A1F8, &unk_100115988);
      v31 = sub_10003AECC(&qword_1001558A0, &qword_10010F440);
      v32 = sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
      v56 = v31;
      v57 = v32;
      swift_getOpaqueTypeConformance2();
      CommandMenu.init(_:content:)();
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }
  }

  v33 = sub_10003AE84(&qword_10015A1F0, &qword_100115980);
  (*(*(v33 - 8) + 56))(v6, v23, 1, v33);
  v34 = v48;
  v35 = v47[12];
  v36 = v47[16];
  v46 = v47[20];
  v37 = v51;
  (*(v48 + 16))(v51, v53, v54);
  v38 = v49;
  v39 = &v37[v35];
  v40 = v16;
  v41 = v16;
  v42 = v50;
  (*(v49 + 16))(v39, v41, v50);
  sub_100008E68(v24, &v37[v36], &qword_10015A1A0, &qword_100115918);
  sub_100008E68(v6, &v37[v46], &qword_10015A198, &qword_100115910);
  TupleCommandContent.init(_:)();
  sub_1000035CC(v6, &qword_10015A198, &qword_100115910);
  sub_1000035CC(v24, &qword_10015A1A0, &qword_100115918);
  (*(v38 + 8))(v40, v42);
  return (*(v34 + 8))(v53, v54);
}

uint64_t sub_1000F8A9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v197 = a2;
  v3 = type metadata accessor for CalculatorAppScene(0);
  v188 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v189 = v4;
  v190 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10003AE84(&qword_10015A218, &qword_100115A60);
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v158 - v5;
  v192 = sub_10003AE84(&qword_10015A220, &unk_100115A68);
  __chkstk_darwin(v192);
  v218 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v191 = &v158 - v8;
  __chkstk_darwin(v9);
  v215 = &v158 - v10;
  v217 = type metadata accessor for Divider();
  v196 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v223 = &v158 - v13;
  v208 = type metadata accessor for Locale.LanguageCode();
  v202 = *(v208 - 8);
  __chkstk_darwin(v208);
  v159 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_10003AE84(&qword_100157A68, &unk_100112020);
  __chkstk_darwin(v186);
  v203 = &v158 - v15;
  v163 = type metadata accessor for Locale.Language();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for Locale();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v160 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v18 - 8);
  v182 = (&v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v183 = &v158 - v21;
  v22 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  __chkstk_darwin(v22 - 8);
  v167 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v201 = &v158 - v25;
  __chkstk_darwin(v26);
  v187 = &v158 - v27;
  v28 = sub_10003AE84(&qword_10015A228, &unk_100115A78);
  __chkstk_darwin(v28 - 8);
  v214 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v213 = &v158 - v31;
  v200 = type metadata accessor for KeyEquivalent();
  v220 = *(v200 - 8);
  __chkstk_darwin(v200);
  v166 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v178 = &v158 - v34;
  v199 = sub_10003AE84(&qword_100157A58, &qword_100112010);
  v219 = *(v199 - 8);
  __chkstk_darwin(v199);
  v165 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v204 = &v158 - v37;
  v198 = sub_10003AE84(&qword_10015A230, &qword_100115A88);
  v207 = *(v198 - 8);
  __chkstk_darwin(v198);
  v164 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v181 = &v158 - v40;
  v180 = sub_10003AE84(&qword_10015A238, &qword_100115A90);
  __chkstk_darwin(v180);
  v212 = &v158 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v179 = &v158 - v43;
  __chkstk_darwin(v44);
  v222 = &v158 - v45;
  v205 = type metadata accessor for InlinePickerStyle();
  v206 = *(v205 - 8);
  __chkstk_darwin(v205);
  v173 = &v158 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_10003AE84(&qword_10015A240, &qword_100115A98);
  v175 = *(v174 - 8);
  __chkstk_darwin(v174);
  v48 = &v158 - v47;
  v176 = sub_10003AE84(&qword_10015A248, &qword_100115AA0);
  v177 = *(v176 - 8);
  __chkstk_darwin(v176);
  v50 = &v158 - v49;
  v211 = sub_10003AE84(&qword_10015A250, &qword_100115AA8);
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v209 = &v158 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v221 = &v158 - v53;
  v171 = LocalizedStringKey.init(stringLiteral:)();
  v170 = v54;
  v168 = v55;
  v169 = v56;
  v57 = sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.projectedValue.getter();
  v58 = v225;
  v59 = v226;
  v60 = v227;
  swift_getKeyPath();
  v225 = v58;
  v226 = v59;
  v227 = v60;
  v172 = sub_10003AE84(&qword_10015A258, &qword_100115AD8);
  Binding.subscript.getter();

  v61 = v232;
  v62 = v233;
  v63 = v234;

  v229 = v61;
  v230 = v62;
  v64 = a1;
  v231 = v63;
  v224 = a1;
  sub_10003AE84(&qword_10015A260, &qword_100115AE0);
  sub_1000083B8();
  sub_100004880(&qword_10015A268, &qword_10015A260, &qword_100115AE0, &protocol conformance descriptor for _TuplePickerContent<A, B>);
  Picker<>.init<A>(_:selection:content:)();
  v65 = v173;
  InlinePickerStyle.init()();
  v66 = sub_100004880(&qword_10015A270, &qword_10015A240, &qword_100115A98, &protocol conformance descriptor for Picker<A, B, C>);
  v67 = v174;
  v68 = v205;
  View.pickerStyle<A>(_:)();
  (*(v206 + 8))(v65, v68);
  v69 = v48;
  v70 = v178;
  (*(v175 + 8))(v69, v67);
  v225 = v67;
  v226 = v68;
  v227 = v66;
  v228 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v71 = v176;
  View.labelsHidden()();
  (*(v177 + 8))(v50, v71);
  v205 = v57;
  v206 = v64;
  LazyState2.projectedValue.getter();
  v72 = v225;
  v73 = v226;
  v74 = v227;
  swift_getKeyPath();
  v225 = v72;
  v226 = v73;
  v227 = v74;
  Binding.subscript.getter();

  v75 = sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  v76 = sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
  v177 = v75;
  v176 = v76;
  Toggle.init(isOn:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_10003AE84(&qword_100155958, &qword_1001159D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v78 = static EventModifiers.command.getter();
  *(inited + 32) = v78;
  v79 = static EventModifiers.option.getter();
  *(inited + 40) = v79;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v78)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v79)
  {
    EventModifiers.init(rawValue:)();
  }

  v80 = v203;
  v81 = v198;
  v82 = v201;
  v83 = v185;
  v84 = v182;
  v85 = sub_100004880(&qword_100157A78, &qword_100157A58, &qword_100112010, &protocol conformance descriptor for Toggle<A>);
  v86 = v181;
  v87 = v199;
  v185 = v85;
  v88 = v204;
  View.keyboardShortcut(_:modifiers:)();
  v89 = *(v220 + 8);
  v220 += 8;
  v182 = v89;
  v89(v70, v200);
  v90 = *(v219 + 8);
  v219 += 8;
  v204 = v90;
  (v90)(v88, v87);
  LazyState2.wrappedValue.getter();
  LOBYTE(v87) = sub_10000EBC8();

  KeyPath = swift_getKeyPath();
  v92 = swift_allocObject();
  *(v92 + 16) = (v87 & 1) == 0;
  v93 = *(v207 + 32);
  v94 = v179;
  v181 = (v207 + 32);
  v178 = v93;
  (v93)(v179, v86, v81);
  v95 = (v94 + *(v180 + 36));
  *v95 = KeyPath;
  v95[1] = sub_1000E5BB0;
  v95[2] = v92;
  sub_10003A200(v94, v222);
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v96 = sub_100003D58();
  v97 = [v96 locale];

  v98 = v183;
  v99 = v202;
  if (v97)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = 0;
  }

  else
  {
    v100 = 1;
  }

  v101 = v208;
  v102 = v184;
  (*(v184 + 56))(v84, v100, 1, v83);
  sub_10000D5B8(v84, v98, &qword_100155210, &qword_100111700);
  if ((*(v102 + 48))(v98, 1, v83))
  {
    sub_1000035CC(v98, &qword_100155210, &qword_100111700);
    v103 = v187;
    (*(v99 + 56))(v187, 1, 1, v101);
  }

  else
  {
    v104 = v160;
    (*(v102 + 16))(v160, v98, v83);
    sub_1000035CC(v98, &qword_100155210, &qword_100111700);
    v105 = v161;
    Locale.language.getter();
    (*(v102 + 8))(v104, v83);
    v103 = v187;
    Locale.Language.languageCode.getter();
    (*(v162 + 8))(v105, v163);
  }

  Locale.LanguageCode.init(stringLiteral:)();
  (*(v99 + 56))(v82, 0, 1, v101);
  v106 = *(v186 + 48);
  sub_100008E68(v103, v80, &qword_100157A70, &unk_100112030);
  v107 = v208;
  sub_100008E68(v82, v80 + v106, &qword_100157A70, &unk_100112030);
  v108 = *(v99 + 48);
  if (v108(v80, 1, v107) != 1)
  {
    v111 = v167;
    sub_100008E68(v80, v167, &qword_100157A70, &unk_100112030);
    if (v108(v80 + v106, 1, v107) != 1)
    {
      v113 = v103;
      v114 = v202;
      v115 = v80 + v106;
      v116 = v159;
      (*(v202 + 32))(v159, v115, v107);
      sub_1000029DC(&qword_100157A88, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
      v117 = v80;
      v118 = v107;
      v119 = dispatch thunk of static Equatable.== infix(_:_:)();
      v120 = *(v114 + 8);
      v120(v116, v118);
      sub_1000035CC(v201, &qword_100157A70, &unk_100112030);
      sub_1000035CC(v113, &qword_100157A70, &unk_100112030);
      v120(v111, v118);
      v81 = v198;
      sub_1000035CC(v117, &qword_100157A70, &unk_100112030);
      v110 = v213;
      if (v119)
      {
        goto LABEL_21;
      }

LABEL_19:
      v112 = 1;
      goto LABEL_22;
    }

    sub_1000035CC(v201, &qword_100157A70, &unk_100112030);
    sub_1000035CC(v103, &qword_100157A70, &unk_100112030);
    (*(v202 + 8))(v111, v107);
    v110 = v213;
LABEL_18:
    sub_1000035CC(v80, &qword_100157A68, &unk_100112020);
    goto LABEL_19;
  }

  sub_1000035CC(v82, &qword_100157A70, &unk_100112030);
  v80 = v203;
  sub_1000035CC(v103, &qword_100157A70, &unk_100112030);
  v109 = v108(v80 + v106, 1, v107);
  v110 = v213;
  if (v109 != 1)
  {
    goto LABEL_18;
  }

  sub_1000035CC(v80, &qword_100157A70, &unk_100112030);
LABEL_21:
  type metadata accessor for MainActor();
  v121 = static MainActor.shared.getter();
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = &protocol witness table for MainActor;
  v123 = static MainActor.shared.getter();
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v125 = v165;
  Toggle.init(isOn:label:)();
  v126 = v166;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v127 = v164;
  v128 = v199;
  View.keyboardShortcut(_:modifiers:)();
  v182(v126, v200);
  (v204)(v125, v128);
  (v178)(v110, v127, v81);
  v112 = 0;
LABEL_22:
  v129 = 1;
  (*(v207 + 56))(v110, v112, 1, v81);
  Divider.init()();
  v130 = v190;
  sub_1000082F0(v206, v190);
  v131 = (*(v188 + 80) + 16) & ~*(v188 + 80);
  v132 = swift_allocObject();
  v133 = sub_100008354(v130, v132 + v131);
  __chkstk_darwin(v133);
  sub_10003AE84(&qword_100156370, &qword_10010F348);
  sub_10000A948();
  v134 = v193;
  Button.init(action:label:)();
  LazyState2.wrappedValue.getter();
  v135 = v225;
  swift_getKeyPath();
  v225 = v135;
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v135 + 48) != 2)
  {
    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v136 = swift_getKeyPath();
  v137 = swift_allocObject();
  *(v137 + 16) = v129 & 1;
  v138 = v191;
  (*(v194 + 32))(v191, v134, v195);
  v139 = (v138 + *(v192 + 36));
  *v139 = v136;
  v139[1] = sub_1000E5BB0;
  v139[2] = v137;
  v140 = v215;
  sub_10000D5B8(v138, v215, &qword_10015A220, &unk_100115A68);
  v141 = *(v210 + 16);
  v142 = v209;
  v143 = v211;
  v141(v209, v221, v211);
  v144 = v212;
  sub_100008E68(v222, v212, &qword_10015A238, &qword_100115A90);
  v145 = v214;
  sub_100008E68(v110, v214, &qword_10015A228, &unk_100115A78);
  v146 = v196;
  v147 = *(v196 + 16);
  v147(v216, v223, v217);
  sub_100008E68(v140, v218, &qword_10015A220, &unk_100115A68);
  v148 = v197;
  v141(v197, v142, v143);
  v149 = sub_10003AE84(&qword_10015A278, &qword_100115B18);
  sub_100008E68(v144, &v148[v149[12]], &qword_10015A238, &qword_100115A90);
  sub_100008E68(v145, &v148[v149[16]], &qword_10015A228, &unk_100115A78);
  v150 = v216;
  v151 = v217;
  v147(&v148[v149[20]], v216, v217);
  v152 = v218;
  sub_100008E68(v218, &v148[v149[24]], &qword_10015A220, &unk_100115A68);
  sub_1000035CC(v215, &qword_10015A220, &unk_100115A68);
  v153 = *(v146 + 8);
  v154 = v151;
  v153(v223, v151);
  sub_1000035CC(v213, &qword_10015A228, &unk_100115A78);
  sub_1000035CC(v222, &qword_10015A238, &qword_100115A90);
  v155 = *(v210 + 8);
  v156 = v211;
  v155(v221, v211);
  sub_1000035CC(v152, &qword_10015A220, &unk_100115A68);
  v153(v150, v154);
  sub_1000035CC(v214, &qword_10015A228, &unk_100115A78);
  sub_1000035CC(v212, &qword_10015A238, &qword_100115A90);
  return (v155)(v209, v156);
}

uint64_t sub_1000FA860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v89 = a2;
  v2 = sub_10003AE84(&qword_10015A288, &qword_100115BA0);
  __chkstk_darwin(v2 - 8);
  v88 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = v76 - v5;
  v92 = sub_10003AE84(&qword_10015A290, &qword_100115BA8);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v85 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = v76 - v8;
  __chkstk_darwin(v9);
  v96 = v76 - v10;
  v11 = type metadata accessor for KeyEquivalent();
  v98 = *(v11 - 8);
  __chkstk_darwin(v11);
  v79 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v76 - v14;
  v16 = sub_10003AE84(&qword_100157AB8, &qword_100115BB0);
  v97 = *(v16 - 8);
  __chkstk_darwin(v16);
  v80 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v76 - v19;
  v94 = sub_10003AE84(&qword_10015A298, &qword_100115BB8);
  v100 = *(v94 - 8);
  __chkstk_darwin(v94);
  v83 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v86 = v76 - v23;
  __chkstk_darwin(v24);
  v26 = v76 - v25;
  LOBYTE(v101) = 0;
  v91 = sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  v90 = sub_1000083B8();
  v27 = sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
  PickerOption.init(value:content:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v28 = sub_100004880(&qword_100157AC0, &qword_100157AB8, &qword_100115BB0, &protocol conformance descriptor for PickerOption<A, B>);
  v95 = v26;
  v29 = v11;
  v30 = v98;
  v31 = v16;
  PickerContent.keyboardShortcut(_:modifiers:)();
  v32 = *(v30 + 1);
  v32(v15, v29);
  v34 = v97 + 8;
  v33 = *(v97 + 8);
  v33(v20, v31);
  LOBYTE(v101) = 1;
  v76[1] = v27;
  PickerOption.init(value:content:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v35 = v86;
  v78 = v28;
  PickerContent.keyboardShortcut(_:modifiers:)();
  v81 = v29;
  v36 = v29;
  v37 = v94;
  v77 = v32;
  v98 = v30 + 8;
  v32(v15, v36);
  v38 = v33;
  v82 = v31;
  v97 = v34;
  v33(v20, v31);
  v39 = (v87 + *(type metadata accessor for CalculatorAppScene(0) + 36));
  v40 = *v39;
  v41 = v39[1];
  v101 = *v39;
  v102 = v41;
  v42 = sub_10003AE84(&qword_10015A2A0, &qword_100115BC0);
  State.wrappedValue.getter();
  v43 = v105;
  swift_getKeyPath();
  v101 = v43;
  v87 = sub_1000029DC(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v44 = 1;

  v45 = sub_100004880(&qword_10015A2A8, &qword_10015A298, &qword_100115BB8, &protocol conformance descriptor for _KeyboardShortcutPickerContent<A>);
  v46 = v35;
  PickerContent.disabled(_:)();
  v47 = *(v100 + 8);
  v100 += 8;
  v47(v46, v37);
  v103 = &type metadata for NotesFeatureFlags;
  v104 = sub_10000840C();
  LOBYTE(v46) = isFeatureEnabled(_:)();
  sub_100003F80(&v101);
  if (v46)
  {
    v76[0] = v42;
    v86 = v45;
    LOBYTE(v101) = 2;
    v48 = v80;
    PickerOption.init(value:content:)();
    v49 = v79;
    KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
    sub_10003AE84(&qword_100155958, &qword_1001159D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010DBE0;
    v51 = static EventModifiers.command.getter();
    *(inited + 32) = v51;
    v52 = static EventModifiers.option.getter();
    *(inited + 40) = v52;
    EventModifiers.init(rawValue:)();
    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v51)
    {
      EventModifiers.init(rawValue:)();
    }

    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v52)
    {
      EventModifiers.init(rawValue:)();
    }

    v53 = v83;
    v54 = v82;
    PickerContent.keyboardShortcut(_:modifiers:)();
    v77(v49, v81);
    v38(v48, v54);
    v101 = v40;
    v102 = v41;
    State.wrappedValue.getter();
    v55 = v105;
    swift_getKeyPath();
    v101 = v55;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v54) = v55[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed];

    if (v54)
    {
      v56 = objc_allocWithZone(LSApplicationRecord);
      v57 = sub_100008474(0xD000000000000015, 0x80000001001072A0, 0);
      v58 = v92;
      v59 = v93;
      v37 = v94;
      if (v57)
      {
        v75 = v57;
        if (qword_100154380 != -1)
        {
          swift_once();
        }

        [qword_100154FD0 requiresPreflightForApplicationRecord:v75];
      }
    }

    else
    {
      v58 = v92;
      v59 = v93;
      v37 = v94;
    }

    v60 = v84;
    PickerContent.disabled(_:)();
    v47(v53, v37);
    (*(v59 + 32))(v99, v60, v58);
    v44 = 0;
  }

  v98 = v47;
  v61 = v93;
  v62 = v99;
  v63 = v92;
  (*(v93 + 56))(v99, v44, 1, v92);
  v64 = v89;
  dispatch thunk of PickerContent._identifiedView.getter();
  v65 = sub_10003AE84(&qword_10015A2B0, &qword_100115BF0);
  sub_100004880(&qword_10015A2B8, &qword_10015A290, &qword_100115BA8, &protocol conformance descriptor for _DisabledPickerContent<A>);
  v66 = v96;
  dispatch thunk of PickerContent._identifiedView.getter();
  v67 = *(v65 + 64);
  v68 = v88;
  sub_100008E68(v62, v88, &qword_10015A288, &qword_100115BA0);
  v69 = (*(v61 + 48))(v68, 1, v63);
  v70 = v61;
  v71 = 1;
  if (v69 != 1)
  {
    v72 = v85;
    (*(v70 + 32))(v85, v68, v63);
    dispatch thunk of PickerContent._identifiedView.getter();
    (*(v70 + 8))(v72, v63);
    v71 = 0;
  }

  v73 = sub_10003AE84(&qword_10015A2C0, &qword_100115BF8);
  (*(*(v73 - 8) + 56))(v64 + v67, v71, 1, v73);
  sub_1000035CC(v99, &qword_10015A288, &qword_100115BA0);
  (*(v70 + 8))(v66, v63);
  return (v98)(v95, v37);
}

void sub_1000FB560(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73) == 1)
  {
    if (qword_1001543B0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1001543A8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
}

void sub_1000FB744(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73))
  {
    if (qword_1001543C0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1001543B8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
}

void sub_1000FB91C(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73))
  {
    if (qword_1001543D0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1001543C8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
}

void sub_1000FBAF0(_BYTE *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v2 + 17);
}

double sub_1000FBC4C(uint64_t a1)
{
  type metadata accessor for CalculatorAppScene(0);
  sub_10003AE84(&qword_10015A280, &qword_100115B48);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000F68A0((*(v2 + 16) & 1) == 0);

  return result;
}

double sub_1000FBD40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v5 + 1) = *(a1 + *(type metadata accessor for CalculatorAppScene(0) + 24) + 8);
  sub_10003AE84(&qword_10015A280, &qword_100115B48);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v5 = v4;
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = v4;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000FBF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for KeyEquivalent();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorAppScene(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10003AE84(&qword_10015A1D8, &unk_100115968);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_10003AE84(&qword_10015A200, &qword_1001159C0);
  v27 = *(v13 - 8);
  v28 = v13;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  sub_1000082F0(a1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_100008354(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v31 = a1;
  v33 = a1;
  sub_10003AE84(&qword_10015A208, &qword_1001159C8);
  sub_100004880(&qword_10015A210, &qword_10015A208, &qword_1001159C8, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_10003AE84(&qword_100155958, &qword_1001159D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v19 = static EventModifiers.command.getter();
  *(inited + 32) = v19;
  v20 = static EventModifiers.control.getter();
  *(inited + 40) = v20;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v19)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v20)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100004880(&qword_10015A1E0, &qword_10015A1D8, &unk_100115968, &protocol conformance descriptor for Button<A>);
  View.keyboardShortcut(_:modifiers:)();
  (*(v29 + 8))(v5, v30);
  (*(v10 + 8))(v12, v9);
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v21 = sub_10000AA04();

  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = !v21;
  v24 = v32;
  (*(v27 + 32))(v32, v15, v28);
  result = sub_10003AE84(&qword_10015A1C8, &qword_100115960);
  v26 = (v24 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = sub_1000296E4;
  v26[2] = v23;
  return result;
}

double sub_1000FC3F4(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_1000FC460()
{
  type metadata accessor for CalculatorAppScene(0);
  sub_10003AE84(&qword_10015A058, &unk_100115850);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v5 + 16);
  v1 = v0 ^ 1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  sub_10000362C();
  if ((v0 & 1) != 0 || (swift_getKeyPath(), sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v2 + 72) != 1))
  {
    sub_100091C5C(v1);
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v5;
    *(v3 + 24) = v1;

    sub_1000F7484(sub_10006C1F4, v3);
  }

  return result;
}

uint64_t sub_1000FC664(uint64_t a1)
{
  sub_10003AE84(&qword_100156370, &qword_10010F348);
  sub_10000A948();
  return Label.init(title:icon:)();
}

double sub_1000FC6FC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CalculatorAppScene(0);
  sub_10003AE84(&qword_10015A058, &unk_100115850);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000FC8FC(uint64_t a1)
{
  v17 = type metadata accessor for KeyEquivalent();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalculatorAppScene(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_1000082F0(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100008354(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v14 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v14)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
  View.keyboardShortcut(_:modifiers:)();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v11, v8);
}

double sub_1000FCBF4()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v1 + 51) = (*(v1 + 51) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_1000FCD30@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000FCDD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CalculatorToolbarViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 256;
  result = ObservationRegistrar.init()();
  *a1 = v2;
  return result;
}

double *sub_1000FCE24@<X0>(double **a1@<X8>)
{
  type metadata accessor for CalculatorLayout(0);
  swift_allocObject();
  result = sub_10000C6BC();
  *a1 = result;
  return result;
}

uint64_t sub_1000FCEAC()
{
  v1 = (type metadata accessor for CalculatorAppScene(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_10003AE84(&qword_10015A140, &qword_1001158D0);
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_10003AE84(&qword_10015A148, &qword_1001158D8);

  v4 = v2 + v1[9];
  v5 = sub_10003AE84(&qword_10015A150, &qword_1001158E0);
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_10003AE84(&qword_10015A158, &qword_1001158E8);

  return swift_deallocObject();
}

uint64_t sub_1000FD0B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculatorAppScene(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000FD1D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v31 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v12 = *(v11 + 64);
  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  v17 = *(v11 + 80) & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_35;
  }

  v18 = ((v12 + ((v12 + v17 + ((v15 + v17 + (v16 & ~v14)) & ~v17) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 <= 3)
  {
    v19 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = a1[v18];
    if (!a1[v18])
    {
      goto LABEL_35;
    }

LABEL_31:
    v24 = (v22 - 1) << (8 * v18);
    if (v18 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v13 + (v25 | v24) + 1;
  }

  if (v21 == 2)
  {
    v22 = *&a1[v18];
    if (*&a1[v18])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = *&a1[v18];
    if (v22)
    {
      goto LABEL_31;
    }
  }

LABEL_35:
  if (v7 == v13)
  {
    v26 = *(v6 + 48);
    v27 = a1;
    v28 = v7;
    v29 = v5;
  }

  else
  {
    v27 = (&a1[v16] & ~v14);
    if (v9 != v13)
    {
      v30 = *((&v27[v15 + v17] & ~v17) + v12);
      if (v30 >= 2)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v26 = *(v8 + 48);
    v28 = v9;
    v29 = v31;
  }

  return v26(v27, v28, v29);
}

void sub_1000FD4AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v41 = *(a4 + 16);
  v7 = *(v41 - 8);
  v39 = *(a4 + 24);
  v40 = v7;
  v8 = *(v7 + 84);
  v9 = *(v39 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 84);
  v15 = *(v12 + 64);
  if (v11 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v11;
  }

  v17 = v14 == 0;
  v18 = *(v9 + 80);
  v19 = *(v7 + 64) + v18;
  v20 = *(v9 + 64);
  v21 = v13 & 0xF8 | 7;
  if (v17)
  {
    v22 = v15 + 1;
  }

  else
  {
    v22 = v15;
  }

  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = ((v22 + ((v22 + v21 + ((v20 + v21 + (v19 & ~v18)) & ~v21) + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 >= a3)
  {
    v26 = 0;
    if (v16 >= a2)
    {
      goto LABEL_25;
    }

LABEL_30:
    v27 = ~v16 + a2;
    bzero(a1, v23);
    if (v23 <= 3)
    {
      v28 = (v27 >> 8) + 1;
    }

    else
    {
      v28 = 1;
    }

    if (v23 <= 3)
    {
      *a1 = v27;
      if (v26 > 1)
      {
LABEL_35:
        if (v26 == 2)
        {
          *&a1[v23] = v28;
        }

        else
        {
          *&a1[v23] = v28;
        }

        return;
      }
    }

    else
    {
      *a1 = v27;
      if (v26 > 1)
      {
        goto LABEL_35;
      }
    }

    if (v26)
    {
      a1[v23] = v28;
    }

    return;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v16 + 255) >> 8) + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v16 < a2)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v23] = 0;
  }

  else if (v26)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v8 == v16)
  {
    v29 = v41;
    v30 = *(v40 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v8;
LABEL_47:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&a1[v19] & ~v18);
  if (v10 == v16)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v39;
    goto LABEL_47;
  }

  v34 = &v31[v20 + v21] & ~v21;
  if (a2 > 0xFE)
  {
    v35 = (v22 + 1);
    if (v35 <= 3)
    {
      v36 = ~(-1 << (8 * (v22 + 1)));
    }

    else
    {
      v36 = -1;
    }

    if (v22 != -1)
    {
      v37 = v36 & (a2 - 255);
      if (v35 <= 3)
      {
        v38 = v22 + 1;
      }

      else
      {
        v38 = 4;
      }

      bzero((&v31[v20 + v21] & ~v21), v35);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          *v34 = v37;
          *(v34 + 2) = BYTE2(v37);
        }

        else
        {
          *v34 = v37;
        }
      }

      else if (v38 == 1)
      {
        *v34 = v37;
      }

      else
      {
        *v34 = v37;
      }
    }
  }

  else
  {
    *(v34 + v22) = -a2;
  }
}

uint64_t sub_1000FD840@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22 = a3;
  v4 = type metadata accessor for ModifiedContent();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v25 = a2;
  v26 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v23 = v4;
  v24 = WitnessTable;
  v20[0] = WitnessTable;
  v20[1] = &opaque type descriptor for <<opaque return type of View.presentationDetents(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  static Edge.Set.horizontal.getter();
  View.padding(_:_:)();
  sub_10003AE84(&qword_10015A3C8, &qword_100115E38);
  type metadata accessor for PresentationDetent();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10010DBE0;
  static PresentationDetent.medium.getter();
  static PresentationDetent.large.getter();
  sub_1000D32D8(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = v20[0];
  View.presentationDetents(_:)();

  (*(v21 + 8))(v6, v4);
  v23 = v4;
  v24 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100020EE8(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v18 = *(v9 + 8);
  v18(v11, OpaqueTypeMetadata2);
  sub_100020EE8(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v18)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1000FDBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v16 = (a3 + *(type metadata accessor for CalculatorPresentationView(0, v21) + 68));
  v17 = *v16;
  LOBYTE(a6) = *(v16 + 8);

  if ((a6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v17 = v21[0];
  }

  swift_getKeyPath();
  v21[0] = v17;
  sub_1000FF17C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v17 + 16);

  if (v19 == 1)
  {
    return static NavigationSplitViewVisibility.all.getter();
  }

  else
  {
    return static NavigationSplitViewVisibility.detailOnly.getter();
  }
}

double sub_1000FDDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a1;
  v28 = type metadata accessor for NavigationSplitViewVisibility();
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = a5;
  v29[1] = a6;
  v29[2] = a7;
  v29[3] = a8;
  v20 = (a4 + *(type metadata accessor for CalculatorPresentationView(0, v29) + 68));
  v21 = *v20;
  LOBYTE(a8) = *(v20 + 8);

  if ((a8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v21 = v29[0];
  }

  static NavigationSplitViewVisibility.all.getter();
  v23 = static NavigationSplitViewVisibility.== infix(_:_:)();
  (*(v13 + 8))(v15, v28);
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v24 = qword_100160D98;
  sub_10000362C();
  if ((v23 & 1) != 0 && (swift_getKeyPath(), v29[0] = v24, sub_1000FF17C(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v24 + 72) == 1))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = 1;

    sub_1000F7484(sub_10006C1F4, v25);
  }

  else
  {
    sub_100091C5C(v23 & 1);
  }

  return result;
}

uint64_t sub_1000FE0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SidebarViewStyle(255);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  sub_1000FE2B4(a2, a4);
  v13 = sub_1000FF17C(&qword_10015A398, type metadata accessor for SidebarViewStyle, &unk_100115FA4);
  v17[0] = a4;
  v17[1] = v13;
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v9, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_100020EE8(v12, v6, WitnessTable);
  return (v15)(v12, v6);
}

uint64_t sub_1000FE2B4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SidebarViewStyle(0);
  __chkstk_darwin(v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v5 = *(v2 + 20);
  *(v4 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = v4 + *(v2 + 24);
  type metadata accessor for CalculatorLayout(0);
  sub_1000FF17C(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  *v6 = Environment.init<A>(_:)();
  v6[8] = v7 & 1;
  View.modifier<A>(_:)();
  return sub_1000FF1C4(v4, type metadata accessor for SidebarViewStyle);
}

uint64_t sub_1000FE438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a2;
  v37 = a4;
  v40 = a6;
  v45[0] = a2;
  v45[1] = a3;
  v45[2] = a4;
  v45[3] = a5;
  v9 = type metadata accessor for CalculatorPresentationView(0, v45);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - v11;
  v12 = type metadata accessor for ModifiedContent();
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v32 = &v31 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v34 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v35 = &v31 - v17;
  v18 = a3;
  View.modifier<A>(_:)();
  v19 = v33;
  (*(v10 + 16))(v33, a1, v9);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = v37;
  *(v21 + 2) = v36;
  *(v21 + 3) = v18;
  *(v21 + 4) = v22;
  *(v21 + 5) = a5;
  (*(v10 + 32))(&v21[v20], v19, v9);
  v23 = sub_100010D54();
  v43 = a5;
  v44 = v23;
  WitnessTable = swift_getWitnessTable();
  v25 = v34;
  v26 = v32;
  View.onAppear(perform:)();

  (*(v38 + 8))(v26, v12);
  v41 = WitnessTable;
  v42 = &protocol witness table for _AppearanceActionModifier;
  v27 = swift_getWitnessTable();
  v28 = v35;
  sub_100020EE8(v25, v14, v27);
  v29 = *(v39 + 8);
  v29(v25, v14);
  sub_100020EE8(v28, v14, v27);
  return (v29)(v28, v14);
}

double sub_1000FE7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v14 = (a1 + *(type metadata accessor for CalculatorPresentationView(0, v20) + 68));
  v15 = *v14;
  LOBYTE(a4) = *(v14 + 8);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v15 = v20[0];
  }

  if (*(v15 + 17) == 1)
  {
    *(v15 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v19[-16] = v15;
    v19[-8] = 1;
    v20[0] = v15;
    sub_1000FF17C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FEA3C()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v10[0] = v0[4];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v5 = *(type metadata accessor for CalculatorPresentationView(0, v10) - 8);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_1000FDBA0(v6, v7, v8, v1, v2, v3, v4);
}

double sub_1000FEAEC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v12[0] = v1[4];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v7 = *(type metadata accessor for CalculatorPresentationView(0, v12) - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1000FDDB0(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_1000FEBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7[0] = v1[2];
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  type metadata accessor for CalculatorPresentationView(0, v7);

  return sub_1000FD840(v4, a1);
}

uint64_t sub_1000FEC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static SafeAreaRegions.keyboard.getter();
  v5 = static Edge.Set.all.getter();
  v6 = sub_10003AE84(&qword_10015A470, &qword_100115FF8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10003AE84(&qword_10015A478, &qword_100116000);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1000FED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.black.getter();
  v5 = static Edge.Set.all.getter();
  v6 = sub_10003AE84(&qword_10015A480, &qword_100116008);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(sub_10003AE84(&qword_10015A488, &qword_100116010) + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  v8 = static SafeAreaRegions.keyboard.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  result = sub_10003AE84(&qword_10015A490, &qword_100116018);
  v10 = a2 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = v4;
  return result;
}

uint64_t sub_1000FEE14()
{
  v2 = *(v0 + 40);
  v13 = *(v0 + 16);
  v1 = v13;
  v14 = *(v0 + 24);
  v12 = v14;
  v15 = v2;
  v3 = type metadata accessor for CalculatorPresentationView(0, &v13);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v12 - 8) + 8))(v4 + v3[13]);
  v5 = v3[14];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v4 + v8, 1, v9))
    {
      (*(v10 + 8))(v4 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1000FF0D8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for CalculatorPresentationView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1000FE7DC(v6, v1, v2, v3, v4);
}

uint64_t sub_1000FF17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FF1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000FF24C(uint64_t a1)
{
  sub_100002B70(319);
  if (v1 <= 0x3F)
  {
    sub_100010648(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000FF324()
{
  result = qword_10015A498;
  if (!qword_10015A498)
  {
    sub_10003AECC(&qword_10015A478, &qword_100116000);
    sub_100004880(&qword_10015A4A0, &qword_10015A470, &qword_100115FF8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A498);
  }

  return result;
}

unint64_t sub_1000FF3DC()
{
  result = qword_10015A4A8;
  if (!qword_10015A4A8)
  {
    sub_10003AECC(&qword_10015A490, &qword_100116018);
    sub_1000FF468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A4A8);
  }

  return result;
}

unint64_t sub_1000FF468()
{
  result = qword_10015A4B0;
  if (!qword_10015A4B0)
  {
    sub_10003AECC(&qword_10015A488, &qword_100116010);
    sub_100004880(&qword_10015A4B8, &qword_10015A480, &qword_100116008, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A4B0);
  }

  return result;
}

uint64_t sub_1000FF564@<X0>(uint64_t a1@<X8>)
{
  sub_10003AE84(&qword_10015A580, &qword_1001160C0);
  Binding.projectedValue.getter();
  v2 = *(sub_10003AE84(&qword_10015A588, &qword_100116128) + 36);
  v3 = enum case for ColorScheme.dark(_:);
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  (*(v5 + 104))(a1 + v2, v3, v4);
  (*(v5 + 56))(a1 + v2, 0, 1, v4);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  v6 = static SafeAreaRegions.all.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  result = sub_10003AE84(&qword_10015A590, &unk_100116130);
  v8 = a1 + *(result + 36);
  *v8 = v6;
  *(v8 + 8) = v4;
  return result;
}

uint64_t sub_1000FF6B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000FF71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FFC18();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FF780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FFC18();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000FF7E4(uint64_t a1)
{
  sub_1000FFC18();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_1000FF80C()
{
  v0 = [objc_allocWithZone(type metadata accessor for MathNotesHostingViewController()) init];
  type metadata accessor for MathPaperViewWrapper.Coordinator();
  sub_1000FFC6C();
  sub_10003AE84(&qword_10015A5C0, qword_100116208);
  UIViewControllerRepresentableContext.coordinator.getter();
  dispatch thunk of MathNotesHostingViewController.delegate.setter();
  return v0;
}

uint64_t sub_1000FF894@<X0>(uint64_t *a1@<X8>)
{
  sub_10003AE84(&qword_10015A580, &qword_1001160C0);
  Binding.projectedValue.getter();
  type metadata accessor for MathPaperViewWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 32) = v5;
  *a1 = result;
  return result;
}

unint64_t sub_1000FF984(unint64_t result)
{
  if (result <= 1)
  {
    sub_10003AE84(&qword_10015A580, &qword_1001160C0);
    return Binding.wrappedValue.setter();
  }

  return result;
}

unint64_t sub_1000FFA44()
{
  result = qword_10015A598;
  if (!qword_10015A598)
  {
    sub_10003AECC(&qword_10015A590, &unk_100116130);
    sub_1000FFAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A598);
  }

  return result;
}

unint64_t sub_1000FFAD0()
{
  result = qword_10015A5A0;
  if (!qword_10015A5A0)
  {
    sub_10003AECC(&qword_10015A588, &qword_100116128);
    sub_1000FFB5C();
    sub_1000FFBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5A0);
  }

  return result;
}

unint64_t sub_1000FFB5C()
{
  result = qword_10015A5A8;
  if (!qword_10015A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5A8);
  }

  return result;
}

unint64_t sub_1000FFBB0()
{
  result = qword_1001596E0;
  if (!qword_1001596E0)
  {
    sub_10003AECC(&qword_1001596E8, &qword_1001147E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001596E0);
  }

  return result;
}

unint64_t sub_1000FFC18()
{
  result = qword_10015A5B0;
  if (!qword_10015A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5B0);
  }

  return result;
}

unint64_t sub_1000FFC6C()
{
  result = qword_10015A5B8;
  if (!qword_10015A5B8)
  {
    type metadata accessor for MathPaperViewWrapper.Coordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5B8);
  }

  return result;
}

BOOL sub_1000FFCC8(int a1, int a2, int a3)
{
  if (qword_100160860 == -1)
  {
    v3 = dword_100160850 < a1;
    if (dword_100160850 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_100100250();
    a2 = v6;
    a3 = v5;
    v3 = dword_100160850 < a1;
    if (dword_100160850 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100160854 > a2)
  {
    return 1;
  }

  if (dword_100160854 < a2)
  {
    return 0;
  }

  return dword_100160858 >= a3;
}

uint64_t sub_1000FFD88(int a1, int a2, int a3, int a4)
{
  if (qword_100160868 == -1)
  {
    if (qword_100160870)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100100268();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100160870)
    {
      return _availability_version_check();
    }
  }

  if (qword_100160860 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100100250();
    a3 = v10;
    a4 = v9;
    v8 = dword_100160850 < v11;
    if (dword_100160850 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100160854 > a3)
      {
        return 1;
      }

      if (dword_100160854 >= a3)
      {
        return dword_100160858 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100160850 < a2;
  if (dword_100160850 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000FFF1C(uint64_t result)
{
  v1 = qword_100160870;
  if (qword_100160870)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100160870 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100160850, &dword_100160854, &dword_100160858);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String_optional __swiftcall Locale.localizedString(forIdentifier:)(Swift::String forIdentifier)
{
  v1 = Locale.localizedString(forIdentifier:)(forIdentifier._countAndFlagsBits, forIdentifier._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  v1 = Locale.localizedString(forLanguageCode:)(forLanguageCode._countAndFlagsBits, forLanguageCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t AccessibilityNotification.Announcement.init(_:)()
{
  return AccessibilityNotification.Announcement.init(_:)();
}

{
  return AccessibilityNotification.Announcement.init(_:)();
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)()
{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
}

uint64_t List.init(selection:content:)()
{
  return List.init(selection:content:)();
}

{
  return List.init(selection:content:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.accessibilityLabel(_:)()
{
  return View.accessibilityLabel(_:)();
}

{
  return View.accessibilityLabel(_:)();
}

uint64_t View.help(_:)()
{
  return View.help(_:)();
}

{
  return View.help(_:)();
}

uint64_t View.alert<A, B>(_:isPresented:actions:message:)()
{
  return View.alert<A, B>(_:isPresented:actions:message:)();
}

{
  return View.alert<A, B>(_:isPresented:actions:message:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t CalculateExpression.label(for:fontSize:)()
{
  return CalculateExpression.label(for:fontSize:)();
}

{
  return CalculateExpression.label(for:fontSize:)();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}