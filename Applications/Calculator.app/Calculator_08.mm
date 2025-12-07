uint64_t sub_1000D40BC(double a1)
{
  v1 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    v7 = [v4 currentDevice];
    [v7 userInterfaceIdiom];
  }

  static Font.Weight.regular.getter();
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_1000D4254(v3);
  return v9;
}

uint64_t sub_1000D4254(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for UnitConversionUnitButton(uint64_t a1)
{
  result = qword_100159058;
  if (!qword_100159058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D4330(uint64_t a1)
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

uint64_t sub_1000D4408@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UnitConversionUnitButton(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_10003AE84(&qword_1001590C0, &qword_100113B90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v44 = sub_10003AE84(&qword_1001590C8, &qword_100113B98);
  __chkstk_darwin(v44);
  v18 = &v43 - v17;
  v51 = sub_10003AE84(&qword_1001590D0, &qword_100113BA0);
  __chkstk_darwin(v51);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v45 = &v43 - v22;
  __chkstk_darwin(v23);
  v52 = &v43 - v24;
  sub_1000D5334(v1, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_1000D5398(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v53 = v1;
  sub_10003AE84(&qword_1001590D8, &qword_100113BA8);
  sub_1000D5468();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100004880(&qword_100159118, &qword_1001590C0, &qword_100113B90, &protocol conformance descriptor for Button<A>);
  sub_1000D5BA0(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v27 = v46;
  View.buttonStyle<A>(_:)();
  (*(v47 + 8))(v9, v27);
  (*(v14 + 8))(v16, v13);
  KeyPath = swift_getKeyPath();
  v29 = &v18[*(sub_10003AE84(&qword_100159120, &qword_100113C00) + 36)];
  *v29 = KeyPath;
  v29[1] = 0x3FB999999999999ALL;
  v30 = swift_getKeyPath();
  v31 = &v18[*(v44 + 36)];
  *v31 = v30;
  *(v31 + 1) = 2;
  v31[16] = 0;
  countAndFlagsBits = v1->_countAndFlagsBits;
  object = v1->_object;
  sub_1000D5664();
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v18, &qword_1001590C8, &qword_100113B98);
  v54 = countAndFlagsBits;
  v55 = object;
  sub_10006345C();
  v34 = v45;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000035CC(v20, &qword_1001590D0, &qword_100113BA0);
  v54 = countAndFlagsBits;
  v55 = object;

  v35._countAndFlagsBits = 10272;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  String.append(_:)(v1[1]);
  v36._countAndFlagsBits = 41;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();

  sub_1000035CC(v34, &qword_1001590D0, &qword_100113BA0);
  LocalizedStringKey.init(stringLiteral:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  LOBYTE(v54) = 1;
  sub_1000D5894();
  AttributedString.subscript.setter();
  v37 = Text.init(_:)();
  v39 = v38;
  LOBYTE(v13) = v40;
  v41 = v52;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)();
  sub_10000C6AC(v37, v39, v13 & 1);

  return sub_1000035CC(v41, &qword_1001590D0, &qword_100113BA0);
}

uint64_t sub_1000D4B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100159100, &qword_100113BB8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  v8 = sub_10003AE84(&qword_1001590F0, &qword_100113BB0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v20[-v10];
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = sub_10003AE84(&qword_100159140, &qword_100113C38);
  sub_1000D4D80(a1, &v7[*(v12 + 44)]);
  type metadata accessor for UnitConversionUnitButton(0);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = &v7[*(v5 + 44)];
  v14 = v21;
  *v13 = *&v20[8];
  v13[1] = v14;
  v13[2] = v22;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v7, v11, &qword_100159100, &qword_100113BB8);
  v15 = &v11[*(v9 + 44)];
  v16 = v28;
  v15[4] = v27;
  v15[5] = v16;
  v15[6] = v29;
  v17 = v24;
  *v15 = v23;
  v15[1] = v17;
  v18 = v26;
  v15[2] = v25;
  v15[3] = v18;
  sub_10000D5B8(v11, a2, &qword_1001590F0, &qword_100113BB0);
  result = sub_10003AE84(&qword_1001590D8, &qword_100113BA8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000D4D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_10003AE84(&qword_100159148, &qword_100113C40);
  __chkstk_darwin(v3 - 8);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  if (qword_1001543F8 != -1)
  {
    swift_once();
  }

  v8 = qword_100160930;
  v9 = *(a1 + 88);
  KeyPath = swift_getKeyPath();

  v11 = Font.bold()();
  v12 = swift_getKeyPath();
  v13 = 0.0;
  if (*(a1 + 32))
  {
    v13 = 1.0;
  }

  v31 = v8;
  v32 = KeyPath;
  *v33 = v9;
  *&v33[8] = v12;
  *&v33[16] = v11;
  *&v33[24] = v13;
  sub_10003AE84(&qword_100159150, &qword_100113CA8);
  sub_1000D58E8();
  View.accessibilityHidden(_:)();

  v14 = static HorizontalAlignment.leading.getter();
  LOBYTE(v31) = 0;
  sub_1000D50A0(v28);
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *&v27[55] = v28[3];
  v15 = v31;
  v16 = v26;
  sub_100008E68(v7, v26, &qword_100159148, &qword_100113C40);
  v17 = v25;
  sub_100008E68(v16, v25, &qword_100159148, &qword_100113C40);
  v18 = v17 + *(sub_10003AE84(&qword_100159180, &qword_100113CC0) + 48);
  v29[0] = v14;
  v29[1] = 0;
  v30[0] = v15;
  *&v30[1] = *v27;
  *&v30[17] = *&v27[16];
  *&v30[33] = *&v27[32];
  *&v30[49] = *&v27[48];
  v19 = *&v27[63];
  *&v30[64] = *&v27[63];
  v20 = *v30;
  *v18 = v14;
  *(v18 + 16) = v20;
  v21 = *&v30[16];
  v22 = *&v30[32];
  v23 = *&v30[48];
  *(v18 + 80) = v19;
  *(v18 + 48) = v22;
  *(v18 + 64) = v23;
  *(v18 + 32) = v21;
  sub_100008E68(v29, &v31, &qword_100159188, qword_100113CC8);
  sub_1000035CC(v7, &qword_100159148, &qword_100113C40);
  v31 = v14;
  v32 = 0;
  v33[0] = v15;
  *&v33[17] = *&v27[16];
  v34 = *&v27[32];
  *v35 = *&v27[48];
  *&v35[15] = *&v27[63];
  *&v33[1] = *v27;
  sub_1000035CC(&v31, &qword_100159188, qword_100113CC8);
  return sub_1000035CC(v16, &qword_100159148, &qword_100113C40);
}

uint64_t sub_1000D50A0@<X0>(uint64_t a2@<X8>)
{
  sub_10006345C();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;

  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000C6AC(v2, v4, v6 & 1);

  v12 = Text.font(_:)();
  v33 = v13;
  v34 = v12;
  v32 = v14;
  v31 = v15;
  sub_10000C6AC(v7, v9, v11 & 1);

  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(v9) = v19;

  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  LOBYTE(v4) = v23;

  sub_10000C6AC(v16, v18, v9 & 1);

  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v18) = v27;
  v29 = v28;
  sub_10000C6AC(v20, v22, v4 & 1);

  *a2 = v34;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v18 & 1;
  *(a2 + 56) = v29;
  sub_10006564C(v34, v32, v31 & 1);

  sub_10006564C(v24, v26, v18 & 1);

  sub_10000C6AC(v24, v26, v18 & 1);

  sub_10000C6AC(v34, v32, v31 & 1);
}

uint64_t sub_1000D5334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionUnitButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D5398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionUnitButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D5468()
{
  result = qword_1001590E0;
  if (!qword_1001590E0)
  {
    sub_10003AECC(&qword_1001590D8, &qword_100113BA8);
    sub_1000D5520();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001590E0);
  }

  return result;
}

unint64_t sub_1000D5520()
{
  result = qword_1001590E8;
  if (!qword_1001590E8)
  {
    sub_10003AECC(&qword_1001590F0, &qword_100113BB0);
    sub_1000D55AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001590E8);
  }

  return result;
}

unint64_t sub_1000D55AC()
{
  result = qword_1001590F8;
  if (!qword_1001590F8)
  {
    sub_10003AECC(&qword_100159100, &qword_100113BB8);
    sub_100004880(&qword_100159108, &qword_100159110, &unk_100113BC0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001590F8);
  }

  return result;
}

unint64_t sub_1000D5664()
{
  result = qword_100159128;
  if (!qword_100159128)
  {
    sub_10003AECC(&qword_1001590C8, &qword_100113B98);
    sub_1000D571C();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159128);
  }

  return result;
}

unint64_t sub_1000D571C()
{
  result = qword_100159130;
  if (!qword_100159130)
  {
    sub_10003AECC(&qword_100159120, &qword_100113C00);
    sub_10003AECC(&qword_1001590C0, &qword_100113B90);
    type metadata accessor for PlainButtonStyle();
    sub_100004880(&qword_100159118, &qword_1001590C0, &qword_100113B90, &protocol conformance descriptor for Button<A>);
    sub_1000D5BA0(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159130);
  }

  return result;
}

unint64_t sub_1000D5894()
{
  result = qword_100159138;
  if (!qword_100159138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159138);
  }

  return result;
}

unint64_t sub_1000D58E8()
{
  result = qword_100159158;
  if (!qword_100159158)
  {
    sub_10003AECC(&qword_100159150, &qword_100113CA8);
    sub_1000D5974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159158);
  }

  return result;
}

unint64_t sub_1000D5974()
{
  result = qword_100159160;
  if (!qword_100159160)
  {
    sub_10003AECC(&qword_100159168, &qword_100113CB0);
    sub_1000D5A2C();
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159160);
  }

  return result;
}

unint64_t sub_1000D5A2C()
{
  result = qword_100159170;
  if (!qword_100159170)
  {
    sub_10003AECC(&qword_100159178, &qword_100113CB8);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159170);
  }

  return result;
}

unint64_t sub_1000D5AE4()
{
  result = qword_100159190;
  if (!qword_100159190)
  {
    sub_10003AECC(&qword_1001590D0, &qword_100113BA0);
    sub_1000D5664();
    sub_1000D5BA0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159190);
  }

  return result;
}

uint64_t sub_1000D5BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D5BE8()
{
  sub_100023C6C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000D5C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000D5CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000D5D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6 = [a4 displayName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);
  }

  else
  {
  }

  sub_10003AE84(&qword_1001591A8, &unk_100113E20);
  sub_1000D5E4C();
  sub_10006345C();
  View.help<A>(_:)();
}

unint64_t sub_1000D5E4C()
{
  result = qword_1001591B0;
  if (!qword_1001591B0)
  {
    sub_10003AECC(&qword_1001591A8, &unk_100113E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001591B0);
  }

  return result;
}

uint64_t sub_1000D5EB0()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 41);
}

double sub_1000D5F50()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1000D5FF4()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1000D6098(char a1)
{
  sub_10001B0D8();

  v3 = CalculateExpression.activeError.getter();

  if (v3 || (sub_1000DBEAC(), , v4 = CalculateExpression.activeError.getter(), , v4))
  {
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      sub_1000DBEAC();

      sub_10001B0D8();

      CalculateExpression.expression.getter();

      CalculateExpression.expression.setter();
    }

    sub_10001B0D8();

    CalculateExpression.inlineEvaluate()();

    swift_getKeyPath();
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + 41) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_1000D62AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalculateExpression.Base();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v39 = v1;
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[40] == 1)
  {
    v10 = sub_100072148();
  }

  else
  {
    v10 = sub_100072328();
  }

  v11 = v10;
  swift_getKeyPath();
  v39 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[40] == 1)
  {
    v12 = sub_100072328();
  }

  else
  {
    v12 = sub_100072148();
  }

  v13 = v12;
  swift_getKeyPath();
  v39 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v1[43] & 1) == 0)
  {
    swift_getKeyPath();
    v39 = a1;
    sub_100018364(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ([*(a1 + 32) unitType] == 16)
    {
      type metadata accessor for StocksKitCurrencyCache();
      if (static StocksKitCurrencyCache.isEnabled.getter())
      {
        v14 = static StocksKitCurrencyCache.shared.getter();
        v15 = dispatch thunk of StocksKitCurrencyCache.needsRefresh.getter();

        v16 = &unk_100113FA8;
        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v31 = [objc_opt_self() shared];
      v32 = [v31 needsRefresh];

      v16 = &unk_100113FA0;
      if (v32)
      {
LABEL_11:
        sub_1000D9540(v16, 0, v2);
      }
    }
  }

LABEL_12:
  sub_10001B0D8();

  v17 = CalculateExpression.result.getter();

  if (v17)
  {
    v18 = v9;
    v34[1] = v6;

    sub_10001B0D8();

    v19 = CalculateExpression.expression.getter();
    v21 = v20;

    v22 = v11;
    v23 = v11;
    v24 = v13;
    v26 = sub_1000D8E8C(v19, v21, 1, v22, v13, v25);

    v35 = v23;

    v36 = v24;
    if (v26)
    {
      sub_1000DBEAC();
      type metadata accessor for CalculateExpression();
      v34[0] = v26;

      sub_1000DBEAC();

      CalculateExpression.options.getter();

      (*(v37 + 104))(v18, enum case for CalculateExpression.Base.base10(_:), v38);
      UUID.init()();
      CalculateExpression.__allocating_init(result:error:options:base:id:)();
      CalculateExpression.inlineEvaluate(_:)();

      sub_10001B0D8();

      v27 = CalculateExpression.result.getter();

      if (v27)
      {
        v28 = [v27 isPartialExpression];
      }

      else
      {
        v28 = 0;
      }

      swift_getKeyPath();
      v39 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v28 != v2[42])
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v34[-2] = v2;
        LOBYTE(v34[-1]) = v28;
        v39 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
      swift_getKeyPath();
      v39 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v2[42] != 1)
      {
        v33 = swift_getKeyPath();
        __chkstk_darwin(v33);
        v34[-2] = v2;
        LOBYTE(v34[-1]) = 1;
        v39 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  else
  {
    sub_1000DBEAC();

    sub_10001B0D8();

    CalculateExpression.inlineEvaluate(_:)();

    swift_getKeyPath();
    v39 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2[42])
    {
      v29 = swift_getKeyPath();
      __chkstk_darwin(v29);
      v34[-2] = v2;
      LOBYTE(v34[-1]) = 0;
      v39 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1000D6A68()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void sub_1000D6B08(uint64_t a1, char a2)
{
  v3 = v2;
  v49 = 0;
  v6 = type metadata accessor for AccessibilityNotification.Announcement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v44 - v17;
  if ((a2 & 1) == 0)
  {
    if (a1 == 1)
    {
      sub_10001B0D8();

      CalculateExpression.clearAll()();

      sub_1000DBEAC();

      CalculateExpression.clearAll()();

      swift_getKeyPath();
      v50 = v3;
      sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v3 + 41) == 1)
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v44[-2] = v3;
        LOBYTE(v44[-1]) = 0;
        v50 = v3;
        v20 = v49;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v49 = v20;
      }

LABEL_9:
      swift_getKeyPath();
      v50 = v3;
      sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v3 + 41) == 1)
      {
        if (a1 > 0x2Fu || ((1 << a1) & 0x800017000000) == 0 && (a1 != 27 || (swift_getKeyPath(), v50 = v3, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v3 + 48))))
        {
          swift_getKeyPath();
          v50 = v3;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v3 + 41) == 1)
          {
            v21 = swift_getKeyPath();
            __chkstk_darwin(v21);
            v44[-2] = v3;
            LOBYTE(v44[-1]) = 0;
            v50 = v3;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }
      }

      return;
    }

    if ((a1 & 0xFC) == 0x18)
    {
      if (a1 > 0x19u)
      {
        if (a1 == 27)
        {
          swift_getKeyPath();
          v50 = v3;
          sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v30 = *(v3 + 48);
          if (v30)
          {
            v31 = v30;
            sub_10001B0D8();
            type metadata accessor for CalculateExpression.CustomOperandOperation();
            v32 = v31;

            CalculateExpression.CustomOperandOperation.__allocating_init(_:)();
            CalculateExpression.update(_:)();
          }
        }

        else
        {
          sub_10001B0D8();

          CalculateExpression.inlineEvaluate()();

          sub_1000D88D8(7941496, sub_1000DC3D8);
        }
      }

      else if (a1 == 24)
      {
        if (*(v3 + 48))
        {
          v22 = swift_getKeyPath();
          __chkstk_darwin(v22);
          v44[-2] = v3;
          v44[-1] = 0;
          v50 = v3;
          sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
          v23 = v49;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          v49 = v23;
        }
      }

      else
      {
        sub_10001B0D8();

        CalculateExpression.inlineEvaluate()();

        sub_1000D88D8(7940984, sub_1000DC3D8);
      }

      goto LABEL_9;
    }

    v45 = v16;
    v48 = a1;
    v24 = sub_100025E90(a1);
    if (!v24)
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000048C8(v33, qword_100160D38);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v48;
      if (v36)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50 = v39;
        *v38 = 136315138;
        sub_10007DBB4(v37);
        v42 = sub_100006E5C(v40, v41, &v50);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "Error Unrecognized calculator button pressed: %s", v38, 0xCu);
        sub_100003F80(v39);
      }

      goto LABEL_40;
    }

    v25 = v24;
    sub_10001B0D8();

    v47 = CalculateExpression.update(_:)();

    sub_10001B0D8();
    v46 = v25;

    v26 = CalculateExpression.removed.getter();

    if (v26)
    {
      v27 = dispatch thunk of CalculateExpression.RichExpression.tokens.getter();

      if (v27 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_25;
        }
      }

      else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        sub_1000D8C40(v27);
        v44[1] = v28;

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v50 = 0xBFF0000000000000;
        v51 = 0;
        sub_1000DC384();
        AttributedString.subscript.setter();
        v29 = v45;
        (*(v12 + 16))(v14, v18, v45);
        AccessibilityNotification.Announcement.init(_:)();
        _AccessibilityNotifications.post()();

        (*(v7 + 8))(v9, v6);
        (*(v12 + 8))(v18, v29);
        goto LABEL_39;
      }
    }

LABEL_39:
    LOBYTE(a1) = v48;
    if (v47)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  if (a1 == 53 || a1 == 2)
  {
    sub_10001B0D8();

    CalculateExpression.clearAll()();

    sub_1000DBEAC();

    CalculateExpression.clearAll()();

    swift_getKeyPath();
    v50 = v3;
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + 41) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_40:
  v43 = [objc_opt_self() defaultCenter];
  if (qword_1001544D8 != -1)
  {
    swift_once();
  }

  [v43 postNotificationName:qword_100160B00 object:0];
}

double sub_1000D7638()
{
  sub_10001B0D8();

  CalculateExpression.clearAll()();

  sub_1000DBEAC();

  CalculateExpression.clearAll()();

  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 41) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_1000D77A4()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

double sub_1000D784C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);

  return result;
}

double sub_1000D7924(uint64_t a1)
{
  type metadata accessor for CalculateExpression();
  sub_100018364(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000D7A98@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);

  return result;
}

double sub_1000D7B70(uint64_t a1)
{
  type metadata accessor for CalculateExpression();
  sub_100018364(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000D7CE4(char a1)
{
  if (*(v1 + 40) == (a1 & 1))
  {
    *(v1 + 40) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000D7DF4(char a1)
{
  if (*(v1 + 41) == (a1 & 1))
  {
    *(v1 + 41) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000D7F04(char a1)
{
  if (*(v1 + 42) == (a1 & 1))
  {
    *(v1 + 42) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000D8014(char a1)
{
  if (*(v1 + 43) == (a1 & 1))
  {
    *(v1 + 43) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000D8124(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = qword_100154728;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    sub_100018364(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    CalculateExpression.allowsArabicMath.setter();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    CalculateExpression.allowsArabicMath.setter();
  }

  return result;
}

uint64_t sub_1000D8360()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 42);
}

void sub_1000D8400(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 42);
}

uint64_t sub_1000D84D8()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 43);
}

void sub_1000D8578(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 43);
}

id sub_1000D8620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1000D86D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000D8708(v1);
}

void sub_1000D8708(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_1001592E8, CalculateResult_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void sub_1000D88D8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v2 + 48))
  {
    sub_1000DC17C(_swiftEmptyArrayStorage);
    v3 = evaluate(_:options:)();

    sub_1000D8708(v3);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 48);
  if (!v4)
  {
LABEL_8:
    *(v2 + 48) = 0;
    return;
  }

  v5 = v4;
  sub_10001B0D8();

  v6 = CalculateExpression.activeError.getter();

  if (v6)
  {

    goto LABEL_6;
  }

  sub_10001B0D8();

  v8 = CalculateExpression.result.getter();

  if (!v8)
  {
LABEL_6:

    if (*(v2 + 48))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

    goto LABEL_8;
  }

  sub_10003AE84(&qword_100156488, &qword_10010F548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BDE0;
  v10 = CalculateKeyVariables;
  *(inited + 32) = CalculateKeyVariables;
  sub_10003AE84(&qword_1001592C8, &qword_1001140C0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10010DBE0;
  *(v11 + 32) = 120;
  *(v11 + 40) = 0xE100000000000000;
  *(v11 + 48) = v5;
  *(v11 + 56) = 121;
  *(v11 + 64) = 0xE100000000000000;
  *(v11 + 72) = v8;
  v12 = v5;
  v13 = v10;
  v14 = v8;
  v16 = sub_100076F24(v11, v15);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001592D0, &qword_1001140C8);
  swift_arrayDestroy();
  *(inited + 64) = sub_10003AE84(&qword_1001592D8, &qword_1001140D0);
  *(inited + 40) = v16;
  sub_100008E44(inited);
  swift_setDeallocating();
  sub_1000035CC(inited + 32, &qword_100156018, &qword_10010E3A0);
  v17 = evaluate(_:options:)();

  sub_1000D8708(v17);
}

void sub_1000D8C40(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return;
  }

  while ((v1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v3 < 1)
    {
      goto LABEL_32;
    }

LABEL_6:
    if (!v2)
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_35;
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:
    if (v5 < v3)
    {
      goto LABEL_34;
    }

    if ((v1 & 0xC000000000000001) == 0 || v3 == 1)
    {

      if (!v2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      type metadata accessor for CalculateExpression.RichToken();

      v6 = 1;
      do
      {
        v7 = v6 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v6);
        v6 = v7;
      }

      while (v3 != v7);
      if (!v2)
      {
LABEL_17:
        v8 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        v9 = 1;
        goto LABEL_20;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v8 = v10;
    v9 = v11;
    v3 = v12 >> 1;
LABEL_20:
    swift_unknownObjectRetain();
    v1 = v4;
    v13 = sub_1000DA214();
    v2 = v14;
    v15 = v3 - v9;
    if (v3 == v9)
    {
LABEL_27:
      swift_unknownObjectRelease_n();

      return;
    }

    if (v3 <= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v3;
    }

    v17 = v16 - v9;
    v18 = v8 + 8 * v9;
    while (v17)
    {
      v18 += 8;

      v19 = sub_1000DA214();
      v21 = v20;
      v23 = v13;
      v24 = v2;

      v1 = &v23;
      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v13 = v23;
      v2 = v24;
      --v17;
      if (!--v15)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v4 = *(v1 + 32);

  if (v3 >= 1)
  {
    goto LABEL_6;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1000D8E8C(uint64_t a1, unint64_t a2, char a3, void *a4, void *a5, __n128 a6)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    swift_getKeyPath();
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    CalculateExpression.options.getter();

    if ((a3 & 1) != 0 && a4 && a5)
    {
      v10 = a4;
      v11 = a5;
      v14 = evaluateError(_:options:)();

      [v14 setSynchronous:0];
      v15 = CalculateResult.converted(to:from:)();
    }

    else
    {
      v15 = evaluate(_:options:)();
    }

    return v15;
  }

  else
  {
    sub_1000DC17C(_swiftEmptyArrayStorage);
    v12 = evaluate(_:options:)();

    return v12;
  }
}

uint64_t sub_1000D91BC()
{

  v1 = OBJC_IVAR____TtC10Calculator27CalculatorExpressionManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1000D9280()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) == 1)
  {
    sub_10001B0D8();

    CalculateExpression.expression.getter();

    sub_10001B0D8();

    sub_1000DBEAC();

    CalculateExpression.expression.getter();

    CalculateExpression.expression.setter();

    sub_1000DBEAC();
  }

  else
  {
    sub_1000DBEAC();

    CalculateExpression.expression.getter();

    sub_1000DBEAC();

    sub_10001B0D8();

    CalculateExpression.expression.getter();

    CalculateExpression.expression.setter();

    sub_10001B0D8();
  }

  CalculateExpression.expression.setter();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 == *(v0 + 40))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000D9540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  if (*(a3 + 43) == 1)
  {
    *(a3 + 43) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v17[-2] = a3;
    LOBYTE(v17[-1]) = 1;
    v17[1] = a3;
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

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
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating currency", v13, 2u);
  }

  static TaskPriority.background.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;

  sub_1000502A0(0, 0, v8, &unk_100113FC0, v15);

  return sub_1000035CC(v8, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_1000D9824(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v6[3] = swift_task_alloc();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1000D9950;

  return v10();
}

uint64_t sub_1000D9950(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000D9A50, 0, 0);
}

uint64_t sub_1000D9A50()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  sub_100050560(0, 0, v2, &unk_100113FD0, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000D9B70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9C0C, v7, v6);
}

uint64_t sub_1000D9C0C()
{
  v1 = *(v0 + 40);

  if (v1 == 1)
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000048C8(v2, qword_100160D38);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Updated currency";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000048C8(v7, qword_100160D38);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Failed to update currency";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 24);

  if (*(v8 + 43))
  {
    v9 = *(v0 + 24);
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v0 + 16) = v9;
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v8 + 43) = 0;
  }

  if (*(v0 + 40) != 1)
  {
    goto LABEL_24;
  }

  if (qword_100154378 != -1)
  {
    swift_once();
  }

  v11 = qword_100160888;
  type metadata accessor for StocksKitCurrencyCache();
  if (static StocksKitCurrencyCache.isEnabled.getter())
  {
    if (dispatch thunk of StocksKitCurrencyCache.needsRefresh.getter())
    {
      goto LABEL_24;
    }
  }

  else if ([*(v11 + 16) needsRefresh])
  {
    goto LABEL_24;
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_1001544E0 != -1)
  {
    swift_once();
  }

  [v12 postNotificationName:qword_100160B08 object:0];

LABEL_24:
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D9F98()
{
  type metadata accessor for StocksKitCurrencyCache();
  *(v0 + 16) = static StocksKitCurrencyCache.shared.getter();
  v3 = (&async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh() + async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000DA050;

  return v3();
}

uint64_t sub_1000DA050(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000DA180()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 refreshIfNeeded];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000DA214()
{
  v95 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v95);
  v94 = v85 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for AttributedString();
  v92 = *(v1 - 8);
  v93 = v1;
  __chkstk_darwin(v1);
  v91 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v90 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalculateExpression.Base();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v7 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  __chkstk_darwin(v8 - 8);
  v10 = v85 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v85 - v16;
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v18 - 8);
  v85[1] = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v99 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v22 - 8);
  v98 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CalculateExpression.TokenType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v86 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v87 = v85 - v28;
  __chkstk_darwin(v29);
  v31 = v85 - v30;
  CalculateExpression.RichToken.type.getter();
  v96 = v25;
  v97 = v24;
  v32 = (*(v25 + 88))(v31, v24);
  if (v32 == enum case for CalculateExpression.TokenType.exponentiate(_:))
  {
    if (dispatch thunk of CalculateExpression.RichToken.right.getter())
    {
      v24 = dispatch thunk of CalculateExpression.RichExpression.tokens.getter();

      v33 = v24 >> 62;
      if (v24 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v24 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v34 = v24 & 0xFFFFFFFFFFFFFF8;
          if (!v33)
          {
LABEL_8:
            if (*(v34 + 16) != 1)
            {
              goto LABEL_52;
            }

LABEL_43:
            if (dispatch thunk of CalculateExpression.RichToken.text.getter() == 50 && v57 == 0xE100000000000000)
            {
              goto LABEL_45;
            }

            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v58)
            {
              goto LABEL_53;
            }

            if (dispatch thunk of CalculateExpression.RichToken.text.getter() == 51 && v59 == 0xE100000000000000)
            {
LABEL_45:

LABEL_53:

              String.LocalizationValue.init(stringLiteral:)();
              static Locale.current.getter();
LABEL_56:
              v39 = String.init(localized:table:bundle:locale:comment:)();

              return v39;
            }

            v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v60)
            {
              goto LABEL_53;
            }

LABEL_52:
            v61 = v87;
            CalculateExpression.RichToken.type.getter();
            v63 = v96;
            v62 = v97;
            v64 = v86;
            (*(v96 + 104))(v86, enum case for CalculateExpression.TokenType.placeholder(_:), v97);
            v65 = static CalculateExpression.TokenType.== infix(_:_:)();
            v66 = *(v63 + 8);
            v66(v64, v62);
            v66(v61, v62);
            if (v65)
            {
              goto LABEL_53;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v67 = 0x656874206F742058;
LABEL_55:
            v68 = 0xE900000000000020;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v67);
            sub_1000D8C40(v24);
            v70 = v69;
            v72 = v71;

            v73._countAndFlagsBits = v70;
            v73._object = v72;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v73);

            v74._countAndFlagsBits = 0;
            v74._object = 0xE000000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v74);
            String.LocalizationValue.init(stringInterpolation:)();
            static Locale.current.getter();
            goto LABEL_56;
          }

LABEL_42:
          if (_CocoaArrayWrapper.endIndex.getter() != 1)
          {
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          v34 = v24 & 0xFFFFFFFFFFFFFF8;
          if (!v33)
          {
            goto LABEL_8;
          }

          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_59;
      }
    }

LABEL_40:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v32 != enum case for CalculateExpression.TokenType.function(_:))
  {
    (*(v96 + 8))(v31, v97);
    goto LABEL_22;
  }

  if (dispatch thunk of CalculateExpression.RichToken.isRoot.getter())
  {
    v35 = dispatch thunk of CalculateExpression.RichToken.left.getter();
    if (v35)
    {
      v33 = v35;
      v7 = dispatch thunk of CalculateExpression.RichExpression.tokens.getter();

      if (!(v7 >> 62))
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_60:

          goto LABEL_40;
        }

        goto LABEL_15;
      }

LABEL_59:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_60;
      }

LABEL_15:
      if ((v7 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_18;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_18:
        if (dispatch thunk of CalculateExpression.RichToken.text.getter() == 51 && v36 == 0xE100000000000000)
        {
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {
            v44 = v87;
            CalculateExpression.RichToken.type.getter();
            v46 = v96;
            v45 = v97;
            v47 = v86;
            (*(v96 + 104))(v86, enum case for CalculateExpression.TokenType.placeholder(_:), v97);
            v48 = static CalculateExpression.TokenType.== infix(_:_:)();
            v49 = *(v46 + 8);
            v49(v47, v45);
            v49(v44, v45);
            if ((v48 & 1) == 0)
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v50._countAndFlagsBits = 0;
              v50._object = 0xE000000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
              sub_1000D8C40(v7);
              v52 = v51;
              v54 = v53;

              v55._countAndFlagsBits = v52;
              v55._object = v54;
              String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v55);

              v56._object = 0xEA00000000005820;
              v56._countAndFlagsBits = 0x666F20746F6F7220;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
              String.LocalizationValue.init(stringInterpolation:)();
              goto LABEL_35;
            }
          }
        }

        String.LocalizationValue.init(stringLiteral:)();
LABEL_35:
        static Locale.current.getter();
        v43 = String.init(localized:table:bundle:locale:comment:)();

        return v43;
      }

      __break(1u);
LABEL_64:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_65;
      }

      goto LABEL_29;
    }

    goto LABEL_40;
  }

  if ((dispatch thunk of CalculateExpression.RichToken.isLog.getter() & 1) == 0)
  {
LABEL_22:
    sub_1000DB148(v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000035CC(v10, &qword_100156EF8, &qword_100110CA8);
      dispatch thunk of CalculateExpression.RichToken.text.getter();
      sub_1000DC17C(_swiftEmptyArrayStorage);
      (*(v88 + 104))(v7, enum case for CalculateExpression.Base.base10(_:), v89);
      UUID.init()();
      type metadata accessor for CalculateExpression();
      swift_allocObject();
      CalculateExpression.init(_:options:base:id:)();
      v37 = v91;
      CalculateExpression.accessibilityMathEquationDescription.getter();

      AttributedString.characters.getter();
      (*(v92 + 8))(v37, v93);
      sub_100018364(&qword_1001592E0, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
      return String.init<A>(_:)();
    }

    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    v39 = String.init(localized:)();
    (*(v12 + 8))(v17, v11);
    return v39;
  }

  if (!dispatch thunk of CalculateExpression.RichToken.right.getter())
  {
    goto LABEL_40;
  }

  v24 = dispatch thunk of CalculateExpression.RichExpression.tokens.getter();

  v33 = v24 >> 62;
  if (v24 >> 62)
  {
    goto LABEL_64;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_65:

    goto LABEL_40;
  }

LABEL_29:
  if ((v24 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v40 = v24 & 0xFFFFFFFFFFFFFF8;
    if (!v33)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v40 = v24 & 0xFFFFFFFFFFFFFF8;
    if (!v33)
    {
LABEL_32:
      v41 = *(v40 + 16);
      goto LABEL_69;
    }

LABEL_68:
    v41 = _CocoaArrayWrapper.endIndex.getter();
LABEL_69:
    if (v41 == 1)
    {
      if (dispatch thunk of CalculateExpression.RichToken.text.getter() == 50 && v75 == 0xE100000000000000)
      {
        goto LABEL_45;
      }

      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v76)
      {
        goto LABEL_53;
      }

      if (dispatch thunk of CalculateExpression.RichToken.text.getter() == 12337 && v77 == 0xE200000000000000)
      {
        goto LABEL_45;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v78)
      {
        goto LABEL_53;
      }
    }

    v79 = v87;
    CalculateExpression.RichToken.type.getter();
    v81 = v96;
    v80 = v97;
    v82 = v86;
    (*(v96 + 104))(v86, enum case for CalculateExpression.TokenType.placeholder(_:), v97);
    v83 = static CalculateExpression.TokenType.== infix(_:_:)();
    v84 = *(v81 + 8);
    v84(v82, v80);
    v84(v79, v80);
    if (v83)
    {
      goto LABEL_53;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v67 = 0x6573614220676F4CLL;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DB148@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CalculateExpression.TokenType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.RichToken.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != enum case for CalculateExpression.TokenType.add(_:) && v6 != enum case for CalculateExpression.TokenType.subtract(_:) && v6 != enum case for CalculateExpression.TokenType.multiply(_:) && v6 != enum case for CalculateExpression.TokenType.divide(_:) && v6 != enum case for CalculateExpression.TokenType.factorial(_:) && v6 != enum case for CalculateExpression.TokenType.percent(_:) && v6 != enum case for CalculateExpression.TokenType.comma(_:) && v6 != enum case for CalculateExpression.TokenType.pi(_:) && v6 != enum case for CalculateExpression.TokenType.eulerNumber(_:) && v6 != enum case for CalculateExpression.TokenType.openParenthesis(_:) && v6 != enum case for CalculateExpression.TokenType.closeParenthesis(_:) && v6 != enum case for CalculateExpression.TokenType.or(_:) && v6 != enum case for CalculateExpression.TokenType.nor(_:) && v6 != enum case for CalculateExpression.TokenType.xor(_:) && v6 != enum case for CalculateExpression.TokenType.leftShift(_:) && v6 != enum case for CalculateExpression.TokenType.rightShift(_:) && v6 != enum case for CalculateExpression.TokenType.leftRotate(_:) && v6 != enum case for CalculateExpression.TokenType.rightRotate(_:) && v6 != enum case for CalculateExpression.TokenType.not(_:) && v6 != enum case for CalculateExpression.TokenType.neg(_:) && v6 != enum case for CalculateExpression.TokenType.equal(_:))
  {
    (*(v3 + 8))(v5, v2);
    v11 = dispatch thunk of CalculateExpression.RichToken.text.getter();
    v12 = v10;
    if (v11 == 40 && v10 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 46 && v12 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 28268 && v12 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 7235955 && v12 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 7565155 && v12 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 7233908 && v12 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 1752066419 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 1752395619 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 1752064372 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 1852404577 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 1936679777 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 1851880545 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x686E697361 && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x68736F6361 && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x686E617461 && v12 == 0xE500000000000000)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v7 = 1;
        goto LABEL_5;
      }
    }
  }

  LocalizedStringResource.init(stringLiteral:)();
  v7 = 0;
LABEL_5:
  v8 = type metadata accessor for LocalizedStringResource();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

void sub_1000DBB74(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
}

uint64_t sub_1000DBC44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1000DBC90(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100008F70(a1, v2);
}

uint64_t sub_1000DBD4C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100006E5C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1000DBDA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_1001592B0, &qword_100114010);
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

_BYTE **sub_1000DBE9C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000DBEAC()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = 32;
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = 24;
  }

  return *(v0 + v1);
}

uint64_t sub_1000DBFF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030CEC;

  return sub_1000D9824(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000DC0B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_1000D9B70(a1, v4, v5, v6, v7);
}

unint64_t sub_1000DC17C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100156010, &unk_100114000);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000DC284(v4, &v11);
      v5 = v11;
      result = sub_1000DBC90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100008F60(&v12, (v3[7] + 32 * result));
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

uint64_t sub_1000DC284(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100156018, &qword_10010E3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000DC328()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

unint64_t sub_1000DC384()
{
  result = qword_1001592C0;
  if (!qword_1001592C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001592C0);
  }

  return result;
}

void sub_1000DC460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000DC4C4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F378(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 49);
}

void sub_1000DC594(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for CalculatorAppContentView(0) + 28));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v14;
  }

  swift_getKeyPath();
  v14 = v9;
  sub_10000F378(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v9 + 49);

  *a2 = v12;
}

double sub_1000DC76C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = (a4 + *(type metadata accessor for CalculatorAppContentView(0) + 28));
  v12 = *v11;
  LOBYTE(a1) = *(v11 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v12 = v17;
  }

  if (*(v12 + 49) != v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v16 - 2) = v12;
    *(&v16 - 8) = v10;
    v17 = v12;
    sub_10000F378(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000DC9B0(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for CalculatorAppContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1000DC594(v4, a1);
}

double sub_1000DCA24(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for CalculatorAppContentView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000DC76C(a1, v4, v5, v6);
}

uint64_t sub_1000DCAA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1000DCB00()
{
  result = qword_1001593B8;
  if (!qword_1001593B8)
  {
    sub_10003AECC(&qword_1001593B0, &qword_100114180);
    type metadata accessor for CalculatorLayout(255);
    sub_10000D530();
    sub_10000F378(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    swift_getOpaqueTypeConformance2();
    sub_10000AF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001593B8);
  }

  return result;
}

uint64_t sub_1000DCC08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000DCC50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DCCA0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1000DCE84;
  }

  else
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1000DCDC8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000DCDC8()
{
  v1 = *(v0 + 96);

  *(swift_task_alloc() + 16) = v1;
  withAnimation<A>(_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DCE84()
{
  v1 = *(v0 + 96);

  *(swift_task_alloc() + 16) = v1;
  withAnimation<A>(_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000DCF9C()
{
  result = qword_1001593F8;
  if (!qword_1001593F8)
  {
    sub_10003AECC(&qword_1001593D8, &qword_100114288);
    sub_100004880(&qword_1001593F0, &qword_1001593E8, &qword_100114298, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001593F8);
  }

  return result;
}

uint64_t sub_1000DD054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001593D8, &qword_100114288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD0C4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001593D8, &qword_100114288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DD12C()
{
  result = qword_100159400;
  if (!qword_100159400)
  {
    sub_10003AECC(&qword_1001593D0, &qword_100114280);
    sub_1000DD1B8();
    sub_10000EA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159400);
  }

  return result;
}

unint64_t sub_1000DD1B8()
{
  result = qword_100159408;
  if (!qword_100159408)
  {
    sub_10003AECC(&qword_1001593C8, &qword_100114268);
    sub_1000DD270();
    sub_100004880(&qword_1001576B8, &qword_1001576C0, &qword_100111B50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159408);
  }

  return result;
}

unint64_t sub_1000DD270()
{
  result = qword_100159410;
  if (!qword_100159410)
  {
    sub_10003AECC(&qword_100159418, &unk_1001142A0);
    sub_100004880(&qword_1001593F0, &qword_1001593E8, &qword_100114298, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000DCF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159410);
  }

  return result;
}

void sub_1000DD350(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  v5 = String._bridgeToObjectiveC()();
  [v4 setDateFormat:v5];

  *a3 = v4;
}

id sub_1000DD404(uint64_t a1, Class *a2, SEL *a3, uint64_t a4, void *a5)
{
  v8 = [objc_allocWithZone(*a2) init];
  result = [v8 *a3];
  *a5 = v8;
  return result;
}

void sub_1000DD45C(uint64_t a1@<X8>)
{
  v2 = sub_10003AE84(&qword_100159450, &qword_1001144E8);
  __chkstk_darwin(v2 - 8);
  v69 = &v66 - v3;
  v82 = type metadata accessor for Locale.Language();
  v4 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  __chkstk_darwin(v6 - 8);
  v80 = &v66 - v7;
  v8 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v8 - 8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v79 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v66 - v15;
  __chkstk_darwin(v16);
  v71 = &v66 - v17;
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  type metadata accessor for CalculatorViewModel(0);
  sub_1000E5A70(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v24 & 1;
  v87 = 808464433;
  v88 = 0xE400000000000000;
  State.init(wrappedValue:)();
  v25 = v90;
  *(a1 + 16) = v89;
  *(a1 + 32) = v25;
  LOBYTE(v87) = 1;
  State.init(wrappedValue:)();
  v26 = *(&v89 + 1);
  *(a1 + 40) = v89;
  *(a1 + 48) = v26;
  LOBYTE(v87) = 1;
  State.init(wrappedValue:)();
  v27 = *(&v89 + 1);
  *(a1 + 56) = v89;
  *(a1 + 64) = v27;
  v28 = type metadata accessor for DebugMenu(0);
  Locale.init(identifier:)();
  (*(v12 + 16))(v20, v23, v11);
  State.init(wrappedValue:)();
  v73 = v12;
  v29 = *(v12 + 8);
  v70 = v23;
  v84 = v29;
  v85 = v12 + 8;
  v29(v23, v11);
  v67 = v28;
  v30 = a1 + *(v28 + 36);
  LOBYTE(v87) = 0;
  State.init(wrappedValue:)();
  v31 = *(&v89 + 1);
  *v30 = v89;
  *(v30 + 8) = v31;
  *&v89 = static Locale.availableIdentifiers.getter();

  sub_1000E31F0(&v89);
  v68 = a1;

  v32 = v89;
  v78 = *(v89 + 16);
  if (v78)
  {
    v33 = 0;
    v34 = v72;
    v83 = (v73 + 32);
    v75 = (v73 + 56);
    v76 = (v4 + 8);
    v74 = (v73 + 48);
    v35 = v89 + 40;
    v86 = _swiftEmptyArrayStorage;
    v77 = v89;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
        __break(1u);

        __break(1u);
        return;
      }

      swift_bridgeObjectRetain_n();
      Locale.init(identifier:)();
      v36 = v81;
      Locale.language.getter();
      v37 = v80;
      Locale.Language.languageCode.getter();
      v38 = v37;
      (*v76)(v36, v82);
      v39 = type metadata accessor for Locale.LanguageCode();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        break;
      }

      v44 = v10;
      v45 = Locale.LanguageCode.identifier.getter();
      v47 = v46;
      (*(v40 + 8))(v38, v39);
      v48 = v70;
      static Locale.current.getter();
      v49._countAndFlagsBits = v45;
      v10 = v44;
      v34 = v72;
      v49._object = v47;
      object = Locale.localizedString(forIdentifier:)(v49).value._object;

      v84(v48, v11);
      if (object)
      {

        v51 = v69;
        Locale.region.getter();
        v52 = type metadata accessor for Locale.Region();
        v53 = *(v52 - 8);
        if ((*(v53 + 48))(v51, 1, v52) == 1)
        {
          v41 = v51;
          v42 = &qword_100159450;
          v43 = &qword_1001144E8;
          goto LABEL_11;
        }

        Locale.Region.icuDisplayName.getter();
        v61 = v60;
        (*(v53 + 8))(v51, v52);
        if (v61)
        {

          (*v83)(v10, v34, v11);
          v54 = 0;
          goto LABEL_13;
        }
      }

LABEL_12:
      v84(v34, v11);
      v54 = 1;
LABEL_13:
      (*v75)(v10, v54, 1, v11);

      if ((*v74)(v10, 1, v11) == 1)
      {
        sub_1000035CC(v10, &qword_100155210, &qword_100111700);
      }

      else
      {
        v55 = *v83;
        v56 = v71;
        (*v83)(v71, v10, v11);
        v55(v79, v56, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1000AC3A4(0, *(v86 + 2) + 1, 1, v86);
        }

        v58 = *(v86 + 2);
        v57 = *(v86 + 3);
        if (v58 >= v57 >> 1)
        {
          v86 = sub_1000AC3A4((v57 > 1), v58 + 1, 1, v86);
        }

        v59 = v86;
        *(v86 + 2) = v58 + 1;
        v55(&v59[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v58], v79, v11);
      }

      ++v33;
      v35 += 16;
      v32 = v77;
      if (v78 == v33)
      {
        goto LABEL_22;
      }
    }

    v41 = v38;
    v42 = &qword_100157A70;
    v43 = &unk_100112030;
LABEL_11:
    sub_1000035CC(v41, v42, v43);
    goto LABEL_12;
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_22:

  v62 = v67;
  v63 = v68;
  *(v68 + *(v67 + 40)) = v86;
  v64 = v63 + *(v62 + 44);
  LOBYTE(v87) = 0;
  State.init(wrappedValue:)();
  v65 = *(&v89 + 1);
  *v64 = v89;
  *(v64 + 8) = v65;
}

void sub_1000DDD64(uint64_t a1)
{
  sub_100019A64();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_1000DDDE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10CalculatorP33_975093CEE8F9D0E989FB2156FC3C1A8C38CalculatorAppDebugMenuGestureProxyView_action);
    v4 = Strong;

    v3();
  }

  return result;
}

id sub_1000DDE98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalculatorAppDebugMenuGestureProxyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000DDEF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v3 - 8);
  v73 = &v68 - v4;
  v74 = sub_10003AE84(&qword_100159628, &qword_100114700);
  __chkstk_darwin(v74);
  v70 = &v68 - v5;
  v6 = sub_10003AE84(&qword_100159630, &qword_100114708);
  __chkstk_darwin(v6 - 8);
  v86 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v68 - v9;
  v10 = type metadata accessor for DebugMenu(0);
  v72 = *(v10 - 8);
  v71 = *(v72 + 64);
  __chkstk_darwin(v10 - 8);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v75 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v68 - v14;
  v69 = sub_10003AE84(&qword_100159638, &qword_100114710) - 8;
  __chkstk_darwin(v69);
  v84 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v87 = &v68 - v17;
  v18 = sub_10003AE84(&qword_100159640, &qword_100114718);
  v82 = *(v18 - 8);
  v83 = v18;
  __chkstk_darwin(v18);
  v81 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v88 = &v68 - v21;
  v22 = sub_10003AE84(&qword_100159648, &qword_100114720);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v68 - v24;
  v80 = sub_10003AE84(&qword_100159650, &unk_100114728);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  LocalizedStringKey.init(stringLiteral:)();
  v30 = *(a1 + 32);
  v95 = *(a1 + 16);
  v96 = v30;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.projectedValue.getter();
  v31 = v87;
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  sub_100004880(&qword_100159658, &qword_100159648, &qword_100114720, &protocol conformance descriptor for TextField<A>);
  v77 = v29;
  v32 = v68;
  View.keyboardType(_:)();
  v33 = v25;
  v34 = v70;
  (*(v23 + 8))(v33, v22);
  v35 = *(a1 + 48);
  LOBYTE(v95) = *(a1 + 40);
  LOBYTE(v23) = v95;
  *(&v95 + 1) = v35;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  Toggle.init(isOn:label:)();
  v36 = *(a1 + 64);
  LOBYTE(v95) = *(a1 + 56);
  *(&v95 + 1) = v36;
  State.projectedValue.getter();
  Toggle.init(isOn:label:)();
  LOBYTE(v93) = v23;
  v94 = v35;
  State.wrappedValue.getter();
  LOBYTE(v23) = v95;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = (v23 & 1) == 0;
  v39 = (v31 + *(v69 + 44));
  *v39 = KeyPath;
  v39[1] = sub_1000E5BB0;
  v39[2] = v38;
  sub_1000E5564(a1, v32);
  v40 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v41 = swift_allocObject();
  sub_1000E55C8(v32, v41 + v40);
  v92 = a1;
  Button.init(action:label:)();
  v42 = v73;
  static ButtonRole.destructive.getter();
  v43 = type metadata accessor for ButtonRole();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_1000E5564(a1, v32);
  v44 = swift_allocObject();
  sub_1000E55C8(v32, v44 + v40);
  Button.init(role:action:label:)();
  if (qword_100154500 != -1)
  {
    swift_once();
  }

  sub_1000E5564(a1, v32);
  v45 = swift_allocObject();
  sub_1000E55C8(v32, v45 + v40);
  sub_1000050A0(0, &qword_100159660, NSDistributedNotificationCenter_ptr);
  v46 = [swift_getObjCClassFromMetadata() defaultCenter];
  v47 = v74;
  NSNotificationCenter.publisher(for:object:)();

  v48 = swift_allocObject();
  *(v48 + 16) = sub_1000E5BAC;
  *(v48 + 24) = v45;
  v49 = (v34 + v47[14]);
  *v49 = sub_1000E58D0;
  v49[1] = v48;
  sub_100004880(&qword_100159668, &qword_100159628, &qword_100114700, &protocol conformance descriptor for SubscriptionView<A, B>);
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v34, &qword_100159628, &qword_100114700);
  v50 = *(v79 + 16);
  v51 = v78;
  v52 = v80;
  v50(v78, v77, v80);
  v74 = *(v82 + 16);
  v53 = v81;
  (v74)(v81, v88, v83);
  v54 = v84;
  sub_100008E68(v87, v84, &qword_100159638, &qword_100114710);
  v55 = v75;
  v73 = *(v75 + 16);
  (v73)(v85, v89, v91);
  sub_100008E68(v90, v86, &qword_100159630, &qword_100114708);
  v56 = v76;
  v50(v76, v51, v52);
  v57 = sub_10003AE84(&qword_100159670, &qword_100114738);
  v58 = v53;
  v59 = v83;
  (v74)(&v56[v57[12]], v58, v83);
  sub_100008E68(v54, &v56[v57[16]], &qword_100159638, &qword_100114710);
  v60 = v85;
  v61 = v91;
  (v73)(&v56[v57[20]], v85, v91);
  v62 = v86;
  sub_100008E68(v86, &v56[v57[24]], &qword_100159630, &qword_100114708);
  sub_1000035CC(v90, &qword_100159630, &qword_100114708);
  v63 = *(v55 + 8);
  v63(v89, v61);
  sub_1000035CC(v87, &qword_100159638, &qword_100114710);
  v64 = *(v82 + 8);
  v64(v88, v59);
  v65 = *(v79 + 8);
  v66 = v80;
  v65(v77, v80);
  sub_1000035CC(v62, &qword_100159630, &qword_100114708);
  v63(v60, v91);
  sub_1000035CC(v84, &qword_100159638, &qword_100114710);
  v64(v81, v59);
  return (v65)(v78, v66);
}

void sub_1000DEBE4(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x8000000100109240;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1000DEC14(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x8000000100109220;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1000DEC44(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v46 = *(a1 + 1);
  v47 = v10;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v46 = v45;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10006345C();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  (*(v7 + 8))(v9, v6);

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_64;
  }

  if ((v13 & 0x1000000000000000) == 0)
  {
    if ((v13 & 0x2000000000000000) != 0)
    {
      *&v46 = v11;
      *(&v46 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;
      if (v11 == 43)
      {
        if (v14)
        {
          if (--v14)
          {
            v19 = 0;
            v29 = &v46 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v14)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_74:
        __break(1u);
        return;
      }

      if (v11 != 45)
      {
        if (v14)
        {
          v19 = 0;
          v34 = &v46;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v14)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v14)
      {
        if (--v14)
        {
          v19 = 0;
          v23 = &v46 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v14)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v17 = _StringObject.sharedUTF8.getter();
      }

      v18 = *v17;
      if (v18 == 43)
      {
        if (v15 >= 1)
        {
          v14 = v15 - 1;
          if (v15 != 1)
          {
            v19 = 0;
            if (v17)
            {
              v26 = v17 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_61;
                }

                v28 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  goto LABEL_61;
                }

                v19 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_61;
                }

                ++v26;
                if (!--v14)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_73;
      }

      if (v18 != 45)
      {
        if (v15)
        {
          v19 = 0;
          if (v17)
          {
            while (1)
            {
              v32 = *v17 - 48;
              if (v32 > 9)
              {
                goto LABEL_61;
              }

              v33 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_61;
              }

              v19 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v15)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v19 = 0;
        LOBYTE(v14) = 1;
        goto LABEL_62;
      }

      if (v15 >= 1)
      {
        v14 = v15 - 1;
        if (v15 != 1)
        {
          v19 = 0;
          if (v17)
          {
            v20 = v17 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_61;
              }

              v19 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                goto LABEL_61;
              }

              ++v20;
              if (!--v14)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v14) = 0;
LABEL_62:
          LOBYTE(v45) = v14;
          v37 = v14;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  LOBYTE(v45) = 0;
  v19 = sub_10006FF4C(v11, v13, 10);
  v37 = v43;
LABEL_63:

  if (v37)
  {
LABEL_64:
    v19 = 1000;
  }

  v38 = *(a1 + 8);

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v40 = a1[6];
  LOBYTE(v46) = *(a1 + 40);
  *(&v46 + 1) = v40;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.getter();
  v41 = v45;
  v42 = a1[8];
  LOBYTE(v46) = *(a1 + 56);
  *(&v46 + 1) = v42;
  State.wrappedValue.getter();
  sub_1000E3C28(v19, v41, v45);
}

void sub_1000DF1C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v44 = 0x20657461657243;
  v45 = 0xE700000000000000;
  v8 = *(a1 + 32);
  v42 = *(a1 + 16);
  v43 = v8;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v42 = v41;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10006345C();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  v12 = HIBYTE(v11) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_64;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    LOBYTE(v41) = 0;
    v17 = sub_10006FF4C(v9, v11, 10);
    v35 = v39;
LABEL_63:

    if ((v35 & 1) == 0)
    {
LABEL_65:
      *&v42 = v17;
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 0x79726F7473694820;
      v37._object = 0xEE00736D65744920;
      String.append(_:)(v37);
      v38 = v45;
      *a2 = v44;
      *(a2 + 8) = v38;
      *(a2 + 16) = 0;
      *(a2 + 24) = _swiftEmptyArrayStorage;
      return;
    }

LABEL_64:
    v17 = 1000;
    goto LABEL_65;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v15 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v15 = _StringObject.sharedUTF8.getter();
    }

    v16 = *v15;
    if (v16 == 43)
    {
      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v17 = 0;
          if (v15)
          {
            v24 = v15 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_61;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_61;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_61;
              }

              ++v24;
              if (!--v12)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v16 != 45)
    {
      if (v13)
      {
        v17 = 0;
        if (v15)
        {
          while (1)
          {
            v30 = *v15 - 48;
            if (v30 > 9)
            {
              goto LABEL_61;
            }

            v31 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_61;
            }

            v17 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v13)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v17 = 0;
      LOBYTE(v12) = 1;
      goto LABEL_62;
    }

    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v17 = 0;
        if (v15)
        {
          v18 = v15 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_61;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_61;
            }

            ++v18;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v12) = 0;
LABEL_62:
        LOBYTE(v41) = v12;
        v35 = v12;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *&v42 = v9;
  *(&v42 + 1) = v11 & 0xFFFFFFFFFFFFFFLL;
  if (v9 != 43)
  {
    if (v9 != 45)
    {
      if (v12)
      {
        v17 = 0;
        v32 = &v42;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        v17 = 0;
        v21 = &v42 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v12)
  {
    if (--v12)
    {
      v17 = 0;
      v27 = &v42 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v12)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
}

void sub_1000DF660(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000100109200;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000DF690(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8[1] = *a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  if (qword_100154370 != -1)
  {
    swift_once();
  }

  return sub_100044EA4();
}

uint64_t sub_1000DF828@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v59 = sub_10003AE84(&qword_1001595C8, &qword_100114668);
  __chkstk_darwin(v59);
  v69 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v55 - v5;
  v6 = type metadata accessor for DebugMenu(0);
  v7 = v6 - 8;
  v57 = *(v6 - 8);
  v66 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v55 - v12;
  v13 = sub_10003AE84(&qword_1001595D0, &qword_100114670);
  __chkstk_darwin(v13 - 8);
  v68 = sub_10003AE84(&qword_1001595D8, &qword_100114678);
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  LocalizedStringKey.init(stringLiteral:)();
  v55 = v18;
  sub_10003AE84(&qword_100159458, &qword_100114528);
  State.projectedValue.getter();
  v72 = a1;
  type metadata accessor for Locale();
  sub_10003AE84(&qword_1001595E0, &qword_100114680);
  sub_1000E5A70(&qword_1001595E8, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  sub_1000E5708();
  v19 = v64;
  v65 = v17;
  v20 = v56;
  Picker<>.init(_:selection:content:)();
  sub_1000E5564(a1, v20);
  v21 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v22 = swift_allocObject();
  sub_1000E55C8(v20, v22 + v21);
  v71 = a1;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v23 = (a1 + *(v7 + 52));
  v24 = *v23;
  v25 = *(v23 + 1);
  v74 = v24;
  v75 = v25;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.getter();
  v26 = v73;
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v19;
  v30 = (v19 + *(sub_10003AE84(&qword_100159608, &qword_1001146C0) + 36));
  *v30 = KeyPath;
  v30[1] = sub_1000296E4;
  v30[2] = v28;
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  sub_1000E5564(a1, v20);
  v31 = v20;
  v32 = swift_allocObject();
  sub_1000E55C8(v31, v32 + v21);
  v33 = [objc_opt_self() defaultCenter];
  v34 = sub_10003AE84(&qword_100159610, &qword_1001146C8);
  NSNotificationCenter.publisher(for:object:)();

  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000E5828;
  *(v35 + 24) = v32;
  v36 = (v29 + *(v34 + 56));
  *v36 = sub_10008D47C;
  v36[1] = v35;
  sub_1000E5564(a1, v31);
  v37 = swift_allocObject();
  sub_1000E55C8(v31, v37 + v21);
  v38 = (v29 + *(v59 + 36));
  *v38 = sub_1000E5840;
  v38[1] = v37;
  v38[2] = 0;
  v38[3] = 0;
  v39 = v58;
  v40 = *(v58 + 16);
  v41 = v67;
  v40(v67, v65, v68);
  v42 = v61;
  v43 = v62;
  v44 = *(v61 + 16);
  v45 = v60;
  v44(v60, v70, v62);
  sub_100008E68(v29, v69, &qword_1001595C8, &qword_100114668);
  v46 = v63;
  v47 = v41;
  v48 = v68;
  v40(v63, v47, v68);
  v49 = sub_10003AE84(&qword_100159618, &unk_1001146D0);
  v44(&v46[*(v49 + 48)], v45, v43);
  v50 = &v46[*(v49 + 64)];
  v51 = v69;
  sub_100008E68(v69, v50, &qword_1001595C8, &qword_100114668);
  sub_1000035CC(v64, &qword_1001595C8, &qword_100114668);
  v52 = *(v42 + 8);
  v52(v70, v43);
  v53 = *(v39 + 8);
  v53(v65, v48);
  sub_1000035CC(v51, &qword_1001595C8, &qword_100114668);
  v52(v45, v43);
  return (v53)(v67, v48);
}

double sub_1000E0078(uint64_t a1)
{
  type metadata accessor for DebugMenu(0);
  swift_getKeyPath();

  sub_10003AE84(&qword_100156498, &qword_10010F558);
  sub_10003AE84(&qword_100159600, &qword_100114688);
  sub_100004880(&qword_100159620, &qword_100156498, &qword_10010F558, &protocol conformance descriptor for [A]);
  sub_1000E5A70(&qword_1001595E8, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  sub_1000E578C();
  ForEach<>.init(_:id:content:)();
  return result;
}

uint64_t sub_1000E01BC@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v42[1] = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003AE84(&qword_100159450, &qword_1001144E8);
  __chkstk_darwin(v3 - 8);
  v5 = v42 - v4;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  __chkstk_darwin(v10 - 8);
  v12 = v42 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v6);
  v17 = type metadata accessor for Locale.LanguageCode();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_1000035CC(v12, &qword_100157A70, &unk_100112030);
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v21 = Locale.LanguageCode.identifier.getter();
    v20 = v22;
    (*(v18 + 8))(v12, v17);
    v19 = v21;
  }

  v23 = v20;
  v24 = Locale.localizedString(forLanguageCode:)(*&v19);

  (*(v14 + 8))(v16, v13);
  Locale.region.getter();
  v25 = type metadata accessor for Locale.Region();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v5, 1, v25) == 1)
  {

    sub_1000035CC(v5, &qword_100159450, &qword_1001144E8);
LABEL_10:
    result = 0;
    v37 = 0;
    v40 = 0;
    v38 = 0;
    goto LABEL_11;
  }

  v27 = Locale.Region.icuDisplayName.getter();
  v29 = v28;
  (*(v26 + 8))(v5, v25);
  if (!v29 || !v24.value._object)
  {

    goto LABEL_10;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v27;
  v31._object = v29;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 8250;
  v32._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24.value);

  v33._countAndFlagsBits = 10272;
  v33._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
  v34._countAndFlagsBits = Locale.identifier.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v34);

  v35._countAndFlagsBits = 41;
  v35._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  v40 = v39 & 1;
LABEL_11:
  v41 = v43;
  *v43 = result;
  v41[1] = v37;
  v41[2] = v40;
  v41[3] = v38;
  return result;
}

id sub_1000E06A0()
{
  v0 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugMenu(0);
  sub_10003AE84(&qword_100159458, &qword_100114528);
  State.wrappedValue.getter();
  v3 = type metadata accessor for Locale();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_1000F64A0(v2);
  if (qword_100154370 != -1)
  {
    swift_once();
  }

  sub_1000412FC();
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_100160B10 object:0];

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  return [qword_100160D68 synchronize];
}

uint64_t sub_1000E08BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v12 = 0xD00000000000001DLL;
  v13 = 0x80000001001091C0;
  type metadata accessor for DebugMenu(0);
  sub_10003AE84(&qword_100159458, &qword_100114528);
  State.wrappedValue.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v11 = v13;
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1000E0A34()
{
  v0 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Locale();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1000F64A0(v2);
  if (qword_100154370 != -1)
  {
    swift_once();
  }

  sub_1000412FC();
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_100160B10 object:0];
}

uint64_t sub_1000E0BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v12 = 0xD00000000000001FLL;
  v13 = 0x80000001001091A0;
  static Locale.current.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v11 = v13;
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1000E0D20(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3];
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v5 = qword_100160D68;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringForKey:v6];

  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  sub_1000035CC(v4, &qword_100155210, &qword_100111700);
  v10 = (a1 + *(type metadata accessor for DebugMenu(0) + 44));
  v11 = *v10;
  v12 = *(v10 + 1);
  v13[16] = v11;
  v14 = v12;
  v13[15] = v7 == 0;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.setter();
  sub_100003758();
}

uint64_t sub_1000E0F60(uint64_t a1)
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100160D68;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
  }

  type metadata accessor for DebugMenu(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000E1064@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_10003AE84(&qword_1001595B8, &qword_100114650);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v34 - v5;
  v6 = type metadata accessor for DebugMenu(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v39 = &v34 - v14;
  sub_1000E5564(a1, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1000E55C8(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  Button.init(action:label:)();
  sub_1000E5564(a1, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_1000E55C8(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  Button.init(action:label:)();
  v18 = (a1 + *(v7 + 44));
  v19 = *v18;
  v20 = *(v18 + 1);
  v42 = v19;
  v43 = v20;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
  v21 = v10;
  v22 = v40;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  v23 = v41;
  v34 = *(v41 + 8);
  v34(v12, v10);
  v24 = *(v23 + 16);
  v41 = v23 + 16;
  v24(v12, v39, v10);
  v25 = v35;
  v26 = v36;
  v27 = *(v35 + 16);
  v28 = v37;
  v27(v36, v22, v37);
  v29 = v38;
  v24(v38, v12, v21);
  v30 = sub_10003AE84(&qword_1001595C0, &unk_100114658);
  v27(&v29[*(v30 + 48)], v26, v28);
  v31 = *(v25 + 8);
  v31(v40, v28);
  v32 = v34;
  v34(v39, v21);
  v31(v26, v28);
  return v32(v12, v21);
}

uint64_t sub_1000E1578(uint64_t a1)
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100160D68;
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  type metadata accessor for DebugMenu(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

double sub_1000E1668@<D0>(uint64_t a1@<X8>)
{
  result = 2.40719549e199;
  *a1 = xmmword_1001142B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000E1688(uint64_t a1)
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100160D68;
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  type metadata accessor for DebugMenu(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

void sub_1000E1778(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x8000000100109160;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000E17A8()
{
  v0 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  static ButtonRole.destructive.getter();
  v3 = type metadata accessor for ButtonRole();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return Button.init(role:action:label:)();
}

void sub_1000E18AC()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 terminateWithSuccess];
}

double sub_1000E190C@<D0>(uint64_t a1@<X8>)
{
  result = 1.81982557e-306;
  *a1 = xmmword_1001142C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000E192C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v36 = sub_10003AE84(&qword_100159568, &qword_100114618);
  v46 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v31 - v5;
  v6 = sub_10003AE84(&qword_100159570, &qword_100114620);
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v42 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v31 - v9;
  v41 = sub_10003AE84(&qword_100159578, &qword_100114628);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  *&v50 = 0xD000000000000014;
  *(&v50 + 1) = 0x8000000100109120;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  v49 = a1;
  sub_10003AE84(&qword_100159580, &qword_100114630);
  sub_100004880(&qword_100159588, &qword_100159580, &qword_100114630, &protocol conformance descriptor for TupleView<A>);
  v34 = v13;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v48 = a1;
  sub_10003AE84(&qword_100159590, &qword_100114638);
  sub_100004880(&qword_100159598, &qword_100159590, &qword_100114638, &protocol conformance descriptor for TupleView<A>);
  v14 = v38;
  Section<>.init(_:content:)();
  v50 = xmmword_1001142D0;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  v47 = a1;
  sub_10003AE84(&qword_1001595A0, &qword_100114640);
  sub_100004880(&qword_1001595A8, &qword_1001595A0, &qword_100114640, &protocol conformance descriptor for TupleView<A>);
  v15 = v43;
  Section<>.init(header:content:)();
  v16 = *(v40 + 16);
  v17 = v39;
  v18 = v41;
  v16(v39, v13, v41);
  v33 = *(v44 + 16);
  v19 = v42;
  v33(v42, v14, v45);
  v32 = *(v46 + 16);
  v20 = v35;
  v21 = v15;
  v22 = v36;
  v32(v35, v21, v36);
  v23 = v37;
  v16(v37, v17, v18);
  v24 = sub_10003AE84(&qword_1001595B0, &qword_100114648);
  v25 = v45;
  v33(&v23[*(v24 + 48)], v19, v45);
  v32(&v23[*(v24 + 64)], v20, v22);
  v26 = *(v46 + 8);
  v26(v43, v22);
  v27 = *(v44 + 8);
  v27(v38, v25);
  v28 = *(v40 + 8);
  v29 = v41;
  v28(v34, v41);
  v26(v20, v22);
  v27(v42, v25);
  return (v28)(v39, v29);
}

void sub_1000E1F74()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v10 = qword_100160D68;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    (*(v1 + 32))(v9, v6, v0);
    type metadata accessor for DebugMenu(0);
    (*(v1 + 16))(v3, v9, v0);
    sub_10003AE84(&qword_100159458, &qword_100114528);
    State.wrappedValue.setter();
    (*(v1 + 8))(v9, v0);
  }
}

uint64_t sub_1000E21CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10003AE84(&qword_100159678, &qword_100114740);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = sub_10003AE84(&qword_100159680, &qword_100114748);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v34 - v8;
  v10 = sub_10003AE84(&qword_100159688, &qword_100114750);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v34 - v12;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_10003AE84(&qword_100159690, &qword_100114758);
  Label.init(title:icon:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v5, v9, &qword_100159678, &qword_100114740);
  v14 = &v9[*(v7 + 44)];
  v15 = v34[5];
  *(v14 + 4) = v34[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v34[6];
  v16 = v34[1];
  *v14 = v34[0];
  *(v14 + 1) = v16;
  v17 = v34[3];
  *(v14 + 2) = v34[2];
  *(v14 + 3) = v17;
  v18 = static Alignment.trailing.getter();
  v20 = v19;
  v21 = &v13[*(v11 + 44)];
  sub_1000E2538(v1, v21);
  v22 = &v21[*(sub_10003AE84(&qword_100159698, &unk_100114760) + 36)];
  *v22 = v18;
  v22[1] = v20;
  sub_10000D5B8(v9, v13, &qword_100159680, &qword_100114748);
  v23 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_100038F54(v13, a1);
  result = sub_10003AE84(&qword_100159538, &qword_100114600);
  v33 = a1 + *(result + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

double sub_1000E24D0@<D0>(uint64_t a1@<X8>)
{
  result = 9.44228059e179;
  *a1 = xmmword_1001142E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000E24F0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000E2538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugMenu(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10003AE84(&qword_100158350, &qword_100112900);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = sub_10003AE84(&qword_1001596A0, &qword_100114770);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  static ButtonRole.confirm.getter();
  sub_1000E5564(a1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  sub_1000E55C8(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  Button<>.init(role_v1:action:)();
  v23 = v34;
  BorderlessButtonStyle.init()();
  sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900, &protocol conformance descriptor for Button<A>);
  sub_1000E5A70(&qword_1001596A8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v24 = v32;
  v25 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v23, v25);
  (*(v33 + 8))(v13, v24);
  v26 = *(v15 + 16);
  v26(v17, v20, v14);
  v27 = v37;
  *v37 = 0;
  *(v27 + 8) = 1;
  v28 = v27;
  v29 = sub_10003AE84(&qword_1001596B0, &qword_100114778);
  v26(&v28[*(v29 + 48)], v17, v14);
  v30 = *(v15 + 8);
  v30(v20, v14);
  return (v30)(v17, v14);
}

double sub_1000E299C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v11;
  }

  if (*(v6 + 51))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v10 - 2) = v6;
    *(&v10 - 8) = 0;
    v11 = v6;
    sub_1000E5A70(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v6 + 51) = 0;
  }

  return result;
}

uint64_t sub_1000E2BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMenu(0);
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupedFormStyle();
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10003AE84(&qword_100159528, &qword_1001145F0);
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v34 - v10;
  v12 = sub_10003AE84(&qword_100159530, &qword_1001145F8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_10003AE84(&qword_100159538, &qword_100114600);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  v35 = a1;
  sub_1000E21CC(&v34 - v22);
  v44 = a1;
  sub_10003AE84(&qword_100159540, &qword_100114608);
  sub_100004880(&qword_100159548, &qword_100159540, &qword_100114608, &protocol conformance descriptor for TupleView<A>);
  Form.init(content:)();
  static FormStyle<>.grouped.getter();
  sub_100004880(&qword_100159550, &qword_100159528, &qword_1001145F0, &protocol conformance descriptor for Form<A>);
  sub_1000E5A70(&qword_100159558, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  v24 = v36;
  v25 = v38;
  View.formStyle<A>(_:)();
  (*(v39 + 8))(v8, v25);
  (*(v9 + 8))(v11, v24);
  v26 = v40;
  sub_1000E5564(v35, v40);
  v27 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v28 = swift_allocObject();
  sub_1000E55C8(v26, v28 + v27);
  v29 = &v17[*(v13 + 44)];
  *v29 = sub_1000E562C;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  sub_100008E68(v23, v20, &qword_100159538, &qword_100114600);
  v30 = v37;
  sub_100008E68(v17, v37, &qword_100159530, &qword_1001145F8);
  v31 = v43;
  sub_100008E68(v20, v43, &qword_100159538, &qword_100114600);
  v32 = sub_10003AE84(&qword_100159560, &qword_100114610);
  sub_100008E68(v30, v31 + *(v32 + 48), &qword_100159530, &qword_1001145F8);
  sub_1000035CC(v17, &qword_100159530, &qword_1001145F8);
  sub_1000035CC(v23, &qword_100159538, &qword_100114600);
  sub_1000035CC(v30, &qword_100159530, &qword_1001145F8);
  return sub_1000035CC(v20, &qword_100159538, &qword_100114600);
}

uint64_t sub_1000E30E4@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10003AE84(&qword_100159518, &qword_1001145E0);
  sub_1000E2BC0(v2, a2 + *(v4 + 44));
  v5 = *(sub_10003AE84(&qword_100159520, &qword_1001145E8) + 36);
  v6 = enum case for ColorScheme.dark(_:);
  v7 = type metadata accessor for ColorScheme();
  v10 = *(v7 - 8);
  (*(v10 + 104))(a2 + v5, v6, v7);
  v8 = *(v10 + 56);

  return v8(a2 + v5, 0, 1, v7);
}

Swift::Int sub_1000E31F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000ADFA0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000E325C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000E325C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000E3424(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000E3354(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E3354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E3424(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000ADD08(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000E3A00((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AC57C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000AC57C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000E3A00((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000ADD08(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000ADC7C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000E3A00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000E3C28(unint64_t a1, int a2, char a3)
{
  LOBYTE(v3) = a3;
  v118 = a2;
  v134 = type metadata accessor for Date();
  v5 = *(v134 - 8);
  __chkstk_darwin(v134);
  v117 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = v91 - v8;
  __chkstk_darwin(v9);
  v132 = v91 - v10;
  v116 = type metadata accessor for UUID();
  v11 = *(v116 - 8);
  __chkstk_darwin(v116);
  v131 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for CalculateExpression.Base();
  p_name = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546A0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v15 = qword_100160D00;
    swift_getKeyPath();
    v136 = v15;
    sub_1000E5A70(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = [*(v15 + 16) categories];
    sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3)
    {
      break;
    }

    v136 = _swiftEmptyArrayStorage;
    v18 = v17;
    if (v17 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
LABEL_20:
        v17 = _swiftEmptyArrayStorage;
LABEL_21:

        break;
      }
    }

    else
    {
      v3 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    v127 = p_name;
    v133 = v11;
    v135 = v5;
    v125 = a1;
    v19 = 0;
    a1 = v17 & 0xC000000000000001;
    v5 = v17 & 0xFFFFFFFFFFFFFF8;
    p_name = &stru_100152FF8.name;
    while (1)
    {
      if (a1)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ([v20 unitType] == 16)
      {
      }

      else
      {
        v11 = v18;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v19;
      if (v22 == v3)
      {
        v17 = v136;
        a1 = v125;
        v5 = v135;
        v11 = v133;
        p_name = v127;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v141 = _swiftEmptyArrayStorage;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v94 = v17;
  if (!a1)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_58:

    swift_arrayDestroy();
    if (qword_100154370 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  v23 = 0;
  v113 = 0;
  LODWORD(v127) = enum case for CalculateExpression.Base.base10(_:);
  v126 = (p_name + 13);
  v124 = (v5 + 16);
  v114 = (v11 + 1);
  v123 = (v5 + 8);
  v24 = v17 & 0xFFFFFFFFFFFFFF8;
  v115 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 < 0)
  {
    v24 = v17;
  }

  v91[1] = v24;
  v93 = v17 & 0xC000000000000001;
  v135 = &unk_1001490A0;
  v25 = &unk_1001490A8;
  v92 = v17 + 32;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    v140 = v23;
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v137 = v27;
    v28 = v135[-10 * (v23 / 5uLL)];
    v133 = v25;
    v29 = v25[-10 * (v23 / 5uLL)];

    v30._countAndFlagsBits = v28;
    v30._object = v29;
    String.append(_:)(v30);

    v140 = a1;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = *v126;
    (*v126)(v128, v127, v129);
    UUID.init()();
    type metadata accessor for CalculateExpression();
    swift_allocObject();
    v33 = CalculateExpression.init(_:options:base:id:)();
    v34 = CalculateExpression.result.getter();
    if (v34)
    {
      break;
    }

    v26 = v133;
LABEL_28:
    v135 += 2;
    v25 = v26 + 2;
    ++v23;
    if (!--a1)
    {
      goto LABEL_58;
    }
  }

  v35 = v34;
  Date.init(timeIntervalSinceNow:)();
  v125 = a1;
  v122 = v33;
  v121 = v35;
  if (v118 & 1) == 0 || (v23)
  {
    LODWORD(v109) = CalculateExpression.assumeDegrees.getter();
    v111 = CalculateExpression.expression.getter();
    v110 = v47;
    v48 = [v35 formattedResult];
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v49;

    v120 = *v124;
    v120(v130, v132, v134);
    v50 = v131;
    UUID.init()();
    v51 = UUID.uuidString.getter();
    v53 = v52;
    (*v114)(v50, v116);
    v54 = type metadata accessor for SchemaV1.HistoryRecord(0);
    v55 = swift_allocObject();
    *(v55 + 48) = sub_10003AE84(&qword_100156228, &qword_100114350);
    v56 = sub_1000E5A70(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    v136 = v54;
    v137 = v54;
    v138 = v56;
    v139 = v56;
    *(v55 + 56) = swift_getOpaqueTypeConformance2();
    sub_100019850((v55 + 24));
    static PersistentModel.createBackingData<A>()();
    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    v136 = 0x6369736162;
    v137 = 0xE500000000000000;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v55 + 16) = 257;
    ObservationRegistrar.init()();
    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    v136 = v51;
    v137 = v53;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    v136 = 0x6669746E65696373;
    v137 = 0xEA00000000006369;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = v109 & 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v57 = sub_100080254(v111, v110);
    v59 = v58;

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    v136 = v57;
    v137 = v59;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v60 = sub_100080254(v119, v112);
    v62 = v61;

    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    v136 = v60;
    v137 = v62;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v63 = v117;
    v64 = v130;
    v65 = v134;
    v120(v117, v130, v134);
    sub_100017F20((v55 + 24), *(v55 + 48));
    swift_getKeyPath();
    sub_1000E5A70(&qword_100155650, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v66 = *v123;
    (*v123)(v63, v65);
    v66(v64, v65);
LABEL_48:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = v125;
    v26 = v133;
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v66(v132, v134);
    v5 = v141;
    goto LABEL_28;
  }

  if (!(v94 >> 62))
  {
    v36 = *(v115 + 16);
    if (!v36)
    {
      goto LABEL_60;
    }

    goto LABEL_34;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (v36)
  {
LABEL_34:
    v37 = v23 % v36;
    if (v93)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v115 + 16))
      {
        goto LABEL_62;
      }

      v38 = *(v92 + 8 * v37);
    }

    v39 = v38;
    v40 = [v38 units];
    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v41 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v5 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_61;
      }
    }

    v112 = v39;
    v42 = v23 % v5;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42 >= v43)
      {
        goto LABEL_63;
      }

      v5 = (v23 + 1) % v5;
      v120 = *(v41 + 32 + 8 * v42);
      if (v5 >= v43)
      {
        goto LABEL_64;
      }

      v119 = *(v41 + 32 + 8 * v5);
    }

    v44 = [v120 category];
    v108 = v23;
    if (v44)
    {
      v45 = v44;
      v46 = [v44 unitType];

      v101 = v46 == 16;
    }

    else
    {
      v101 = 0;
    }

    [v35 setSynchronous:1];
    v111 = CalculateResult.converted(to:from:)();
    CalculateExpression.error.getter();
    sub_1000DC17C(_swiftEmptyArrayStorage);
    v32(v128, v127, v129);
    v67 = v131;
    UUID.init()();
    v110 = CalculateExpression.__allocating_init(result:error:options:base:id:)();
    v98 = CalculateExpression.assumeDegrees.getter();
    v100 = CalculateExpression.expression.getter();
    v99 = v68;
    v103 = CalculateExpression.expression.getter();
    v102 = v69;
    v104 = *v124;
    v104(v130, v132, v134);
    v106 = CalculateUnit.id.getter();
    v96 = v70;
    v107 = CalculateUnit.id.getter();
    v109 = v71;
    UUID.init()();
    v95 = UUID.uuidString.getter();
    v73 = v72;
    (*v114)(v67, v116);
    v74 = type metadata accessor for SchemaV1.HistoryRecord(0);
    v75 = swift_allocObject();
    *(v75 + 48) = sub_10003AE84(&qword_100156228, &qword_100114350);
    v105 = type metadata accessor for SchemaV1.HistoryRecord;
    v76 = sub_1000E5A70(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    v136 = v74;
    v137 = v74;
    v138 = v76;
    v139 = v76;
    *(v75 + 56) = swift_getOpaqueTypeConformance2();
    sub_100019850((v75 + 24));
    static PersistentModel.createBackingData<A>()();
    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    v136 = 0x6369736162;
    v137 = 0xE500000000000000;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v75 + 16) = 257;
    v97 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
    ObservationRegistrar.init()();
    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    v136 = v95;
    v137 = v73;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    v136 = 0x6669746E65696373;
    v137 = 0xEA00000000006369;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = v101;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    LOBYTE(v136) = v98 & 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v77 = sub_100080254(v100, v99);
    v79 = v78;

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    v136 = v77;
    v137 = v79;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v80 = sub_100080254(v103, v102);
    v82 = v81;

    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    v136 = v80;
    v137 = v82;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v83 = v117;
    v84 = v134;
    v104(v117, v130, v134);
    sub_100017F20((v75 + 24), *(v75 + 48));
    swift_getKeyPath();
    sub_1000E5A70(&qword_100155650, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v66 = *v123;
    (*v123)(v83, v84);
    v136 = v75;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v86 = v106;
    v91[-4] = v75;
    v91[-3] = v86;
    v91[-2] = v96;
    sub_1000E5A70(&qword_100154BC0, v105, &unk_10010EB38);
    v87 = v113;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v136 = v75;
    v88 = swift_getKeyPath();
    __chkstk_darwin(v88);
    v89 = v107;
    v91[-4] = v75;
    v91[-3] = v89;
    v91[-2] = v109;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v113 = v87;

    v66(v130, v134);
    v23 = v108;
    goto LABEL_48;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_59:
  sub_100047678(v5, 1);
}

uint64_t sub_1000E5564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenu(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E55C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5674(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DebugMenu(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000E5708()
{
  result = qword_1001595F0;
  if (!qword_1001595F0)
  {
    sub_10003AECC(&qword_1001595E0, &qword_100114680);
    sub_1000E578C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001595F0);
  }

  return result;
}

unint64_t sub_1000E578C()
{
  result = qword_1001595F8;
  if (!qword_1001595F8)
  {
    sub_10003AECC(&qword_100159600, &qword_100114688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001595F8);
  }

  return result;
}

uint64_t sub_1000E58F8()
{
  v1 = (type metadata accessor for DebugMenu(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[10];
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10003AE84(&qword_100159458, &qword_100114528);

  return swift_deallocObject();
}

uint64_t sub_1000E5A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E5AB8()
{
  result = qword_1001596C8;
  if (!qword_1001596C8)
  {
    sub_10003AECC(&qword_100159520, &qword_1001145E8);
    sub_100004880(&qword_1001596D0, &qword_1001596D8, &qword_1001147E0, &protocol conformance descriptor for VStack<A>);
    sub_100004880(&qword_1001596E0, &qword_1001596E8, &qword_1001147E8, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001596C8);
  }

  return result;
}

uint64_t sub_1000E5BD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E5BF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000E5C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v25 = a1;
  v28 = a2;
  v10 = type metadata accessor for HighlightHoverEffect();
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10003AE84(&qword_1001597B8, &qword_100114978);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  sub_10003AE84(&qword_100158470, &qword_100114980);
  type metadata accessor for ContentShapeKinds();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10010F520;
  static ContentShapeKinds.interaction.getter();
  static ContentShapeKinds.accessibility.getter();
  static ContentShapeKinds.hoverEffect.getter();
  v29 = v17;
  v18 = &v16[*(v14 + 36)];
  sub_10003AE84(&qword_1001597C0, &qword_100114988);
  sub_1000E60DC(&qword_100158480, &type metadata accessor for ContentShapeKinds, &protocol conformance descriptor for ContentShapeKinds);
  sub_10003AE84(&qword_100158488, &qword_100114990);
  sub_100004880(&qword_100158490, &qword_100158488, &qword_100114990, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static UnitPoint.center.getter();
  *v18 = a6;
  *(v18 + 1) = a3;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a5;
  *(v18 + 5) = v19;
  *(v18 + 6) = v20;
  v18[56] = 0;
  v21 = sub_10003AE84(&qword_1001597C8, &qword_100114998);
  (*(*(v21 - 8) + 16))(v16, v25, v21);
  static CustomHoverEffect<>.highlight.getter();
  sub_1000E5FF8();
  sub_1000E60DC(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v22 = v26;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v27 + 8))(v13, v22);
  return sub_1000E6124(v16);
}

unint64_t sub_1000E5FF8()
{
  result = qword_1001597D0;
  if (!qword_1001597D0)
  {
    sub_10003AECC(&qword_1001597B8, &qword_100114978);
    sub_100004880(&qword_1001597D8, &qword_1001597C8, &qword_100114998, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100004880(&qword_1001597E0, &qword_1001597C0, &qword_100114988, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001597D0);
  }

  return result;
}

uint64_t sub_1000E60DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E6124(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001597B8, &qword_100114978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableRoundendRectangle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InsettableRoundendRectangle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

double sub_1000E623C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = type metadata accessor for RoundedCornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectInset(v21, -*(v5 + 8), -*(v5 + 16));
  (*(v12 + 104))(v14, enum case for RoundedCornerStyle.circular(_:), v11);
  Path.init(roundedRect:cornerRadius:style:)();
  result = *&v18;
  v16 = v19;
  *a1 = v18;
  *(a1 + 16) = v16;
  *(a1 + 32) = v20;
  return result;
}

void (*sub_1000E63C0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100081EC0;
}

uint64_t sub_1000E6448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E660C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E64AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E660C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E6510(uint64_t a1)
{
  v2 = sub_1000E660C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_1000E6560()
{
  result = qword_100159800;
  if (!qword_100159800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159800);
  }

  return result;
}

unint64_t sub_1000E65B8()
{
  result = qword_100159808;
  if (!qword_100159808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159808);
  }

  return result;
}

unint64_t sub_1000E660C()
{
  result = qword_100159810[0];
  if (!qword_100159810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159810);
  }

  return result;
}

void sub_1000E6660()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() iconWithSystemImageName:v0];

  qword_100160D90 = v1;
}

void sub_1000E66D0(uint64_t a1)
{
  sub_10001B8B8();
  if (v1 <= 0x3F)
  {
    sub_100002B70(319);
    if (v2 <= 0x3F)
    {
      sub_100013FF4(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
      if (v3 <= 0x3F)
      {
        sub_100013FF4(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
        if (v4 <= 0x3F)
        {
          sub_10001BA80(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 sub_1000E67FC@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006650(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = v3[6];
  *a2 = result;
  return result;
}

uint64_t sub_1000E68CC(uint64_t a1)
{
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.projectedValue.getter();
  return v2;
}

uint64_t sub_1000E6930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v45 = a5;
  v39 = a2;
  v40 = a3;
  v8 = type metadata accessor for CalculatorStandardDisplayView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v36 = *(v9 + 64);
  __chkstk_darwin(v8);
  v37 = &v36 - v10;
  v42 = type metadata accessor for TapGesture();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10003AE84(&qword_100159998, &qword_100114D40);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v36 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 44);
  v38 = a1;
  v20 = (a1 + v19);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v51 = *v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    v21 = v51;
  }

  v23 = *(v21 + 16);
  swift_getKeyPath();
  *&v49[0] = v23;
  sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + 32);

  if (qword_100154538 != -1)
  {
    swift_once();
  }

  v25 = qword_100160B60;
  type metadata accessor for CalculatorViewModel(0);
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);

  v26 = Environment.init<A>(_:)();
  v52 = v27 & 1;
  *&v46 = v26;
  BYTE8(v46) = v27 & 1;
  v47 = v24;
  *v48 = v25;
  v48[8] = 0;
  *&v48[16] = a6;
  v48[24] = 0;
  TapGesture.init(count:)();
  v28 = v37;
  (*(v9 + 16))(v37, v38, v8);
  v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = swift_allocObject();
  v31 = v40;
  *(v30 + 16) = v39;
  *(v30 + 24) = v31;
  (*(v9 + 32))(v30 + v29, v28, v8);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000E7AB0;
  *(v32 + 24) = v30;
  v33 = v42;
  Gesture.onEnded(_:)();

  (*(v41 + 8))(v12, v33);
  static GestureMask.all.getter();
  sub_10003AE84(&qword_1001599A0, &qword_100114D48);
  sub_1000E7B60();
  sub_100004880(qword_1001599B8, &qword_100159998, &qword_100114D40, &protocol conformance descriptor for _EndedGesture<A>);
  v34 = v44;
  View.simultaneousGesture<A>(_:including:)();
  (*(v43 + 8))(v14, v34);
  v49[0] = v46;
  v49[1] = v47;
  v50[0] = *v48;
  *(v50 + 9) = *&v48[9];
  return sub_1000035CC(v49, &qword_1001599A0, &qword_100114D48);
}

double sub_1000E6F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Animation.easeOut.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_1000E7004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for CalculatorStandardDisplayView(0, a2, a3, v10) + 44));
  v12 = *v11;
  v13 = *(v11 + 8);

  if (v13 == 1)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v15 = *(v7 + 8);
    v15(v9, v6);

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v15(v9, v6);
    v12 = v22;
  }

  v17 = *(v12 + 16);
  swift_getKeyPath();
  v22 = v17;
  sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = CalculateExpression.expression.getter();
  sub_100056D2C(v18, v19, 0, 0, 0, 0);
}

double sub_1000E72CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for CalculatorStandardDisplayView(0, a2, a3, v10) + 44));
  v12 = *v11;
  LOBYTE(a2) = *(v11 + 8);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v12 = v17;
  }

  swift_getKeyPath();
  v17 = v12;
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + 54) != 11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v16 - 2) = v12;
    *(&v16 - 8) = 11;
    v17 = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000E7568@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = v5;
  v21 = a5;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003AE84(a1, a2);
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  sub_100008E68(v10, &v20 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000D5B8(v17, v21, a3, a4);
  }

  static os_log_type_t.fault.getter();
  v19 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1000E775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CalculatorStandardDisplayView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 36);
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

  v10 = *(v5 + 40);
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

  return swift_deallocObject();
}

uint64_t sub_1000E79E4(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CalculatorStandardDisplayView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9.n128_u64[0] = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4 + v8, v5, v6, v9);
}

uint64_t sub_1000E7AC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CalculatorStandardDisplayView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_1000E7B60()
{
  result = qword_1001599A8;
  if (!qword_1001599A8)
  {
    sub_10003AECC(&qword_1001599A0, &qword_100114D48);
    sub_100023954();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001599A8);
  }

  return result;
}

uint64_t sub_1000E7CA4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(a1 + 48) + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v9 = sub_100074054();

  return v9;
}

BOOL sub_1000E7E04(uint64_t a1)
{
  v1 = sub_1000E7CA4(a1);
  swift_getKeyPath();
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  v3 = [v2 unitType];

  return v3 == 16;
}

uint64_t sub_1000E7ED8(uint64_t a1)
{
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.wrappedValue.getter();
  return v2;
}

uint64_t sub_1000E7F9C(uint64_t a1)
{
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.projectedValue.getter();
  return v2;
}

uint64_t sub_1000E8000(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100154538 != -1)
  {
    swift_once();
  }

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
    v8 = v14;
  }

  v11 = *(v8 + 16);

  swift_getKeyPath();
  v14 = v11;
  sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return Color.opacity(_:)();
}

double sub_1000E822C()
{
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  return v1;
}

double sub_1000E8278()
{
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  return v1 / 100.0;
}

uint64_t sub_1000E82D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v90 = a2;
  sub_10003AECC(&qword_100159A40, &unk_100114DF8);
  v89 = *(a1 + 16);
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10003AECC(&qword_100159A48, &qword_100114E08);
  swift_getTupleTypeMetadata2();
  v81 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for HStack();
  v85 = *(v5 - 8);
  __chkstk_darwin(v5);
  v82 = v78 - v6;
  v86 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v83 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = v78 - v11;
  v12 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v12 - 8);
  v93 = (v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v92 = (v78 - v15);
  v91 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v91);
  v17 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v78 - v19;
  v21 = type metadata accessor for EnvironmentValues();
  v96 = *(v21 - 8);
  v97 = v21;
  __chkstk_darwin(v21);
  v95 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2 + *(a1 + 52);
  v24 = *v23;
  v25 = *(v23 + 8);

  v26 = v24;
  v94 = v25;
  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v28 = v95;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v96 + 8))(v28, v97);
    v26 = *&v102;
  }

  v78[2] = *(a1 + 36);
  v29 = v92;
  sub_10000D594(v92);
  v98 = a1;
  v99 = v3;
  v78[1] = *(a1 + 40);
  v30 = v93;
  sub_10000D594(v93);
  v31 = type metadata accessor for UserInterfaceSizeClass();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v33(v20, 1, 1, v31);
  v35 = *(v91 + 20);
  v79 = v33;
  v78[4] = v34;
  v33(&v20[v35], 1, 1, v31);
  sub_10006E758(v29, v20);
  sub_10006E758(v30, &v20[v35]);
  sub_1000D3FB8(v26, 1, v20);
  v37 = v36;

  sub_10006E7C8(v20);

  v38 = v24;
  if ((v94 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v40 = v95;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v96 + 8))(v40, v97);
    *&v38 = v102;
  }

  v41 = v99 + *(v98 + 44);
  v42 = *v41;
  v43 = *(v41 + 8);

  if ((v43 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v95;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v96 + 8))(v45, v97);
    v42 = v102;
  }

  swift_getKeyPath();
  v102 = v42;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(*&v42 + 48);

  v78[3] = v24;
  if (v46)
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v47 = 1;
  }

  v48 = v99;
  v49 = v92;
  sub_10000D594(v92);
  v50 = v93;
  sub_10000D594(v93);
  v51 = v79;
  v79(v17, 1, 1, v31);
  v52 = *(v91 + 20);
  v51(&v17[v52], 1, 1, v31);
  sub_10006E758(v49, v17);
  sub_10006E758(v50, &v17[v52]);
  v53 = sub_1000D3C58(v38, v47 & 1, v17);
  v54 = sub_10003C9A0(v17);
  swift_getKeyPath();
  v102 = *&v38;
  sub_100006698(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(v38 + 96);

  sub_10006E7C8(v17);
  v56 = v98;
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  v57 = v102;

  if ((v94 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v59 = v95;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v96 + 8))(v59, v97);
  }

  v60 = 70.0;
  if (v53 >= 70.0)
  {
    v60 = v53;
  }

  v61 = 60.0;
  if (v53 >= 60.0)
  {
    v61 = v53;
  }

  if ((v54 & 1) == 0)
  {
    v60 = v61;
  }

  v62 = (v60 - v37) * 0.5;
  if (v55 * 0.25 >= v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v55 * 0.25;
  }

  v64 = sub_1000D40BC(v63 * (v57 / 100.0));

  v66 = __chkstk_darwin(v65).n128_u64[0];
  v67 = *(v56 + 24);
  v78[-8] = v89;
  v78[-7] = v67;
  v78[-6] = v48;
  v78[-5] = v68;
  *&v78[-4] = v63;
  v78[-3] = v64;
  v78[-2] = v66;
  static VerticalAlignment.center.getter();
  v69 = v82;
  HStack.init(alignment:spacing:content:)();
  v70 = v86;
  v71 = swift_getWitnessTable();
  v72 = v83;
  View.fixedSize(horizontal:vertical:)();

  (*(v85 + 8))(v69, v70);
  v100 = v71;
  v101 = &protocol witness table for _FixedSizeLayout;
  v73 = v88;
  v74 = swift_getWitnessTable();
  v75 = v84;
  sub_100020EE8(v72, v73, v74);
  v76 = *(v87 + 8);
  v76(v72, v73);
  sub_100020EE8(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_1000E8F20@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v89 = a2;
  v99 = a5;
  v14 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v14 - 8);
  v84 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v83 = (&v77 - v17);
  v82 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v82);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for EnvironmentValues();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10003AE84(&qword_100159A50, &qword_100114E60);
  __chkstk_darwin(v100);
  v94 = (&v77 - v21);
  v98 = sub_10003AE84(&qword_100159A48, &qword_100114E08);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v95 = &v77 - v24;
  sub_10003AECC(&qword_100159A40, &unk_100114DF8);
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v25 = type metadata accessor for ZStack();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v77 - v30;
  static Alignment.leading.getter();
  v101 = a3;
  v102 = a4;
  v103 = a1;
  v104 = a6;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  v88 = v31;
  v81 = WitnessTable;
  sub_100020EE8(v28, v25, WitnessTable);
  v85 = v26;
  v33 = *(v26 + 8);
  v90 = v28;
  v91 = v25;
  v87 = v26 + 8;
  v86 = v33;
  v33(v28, v25);
  v80 = static HorizontalAlignment.trailing.getter();
  v92 = a3;
  v93 = a4;
  v35 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a3, a4, v34);
  v36 = a1 + *(v35 + 52);
  v37 = *v36;
  LOBYTE(v25) = *(v36 + 8);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v39 = v77;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v78 + 8))(v39, v79);
    v37 = v105;
  }

  v40 = v83;
  sub_10000D594(v83);
  v41 = v84;
  sub_10000D594(v84);
  v42 = type metadata accessor for UserInterfaceSizeClass();
  v43 = *(*(v42 - 8) + 56);
  v43(v19, 1, 1, v42);
  v44 = *(v82 + 5);
  v43(&v19[v44], 1, 1, v42);
  sub_10006E758(v40, v19);
  sub_10006E758(v41, &v19[v44]);
  sub_1000D3FB8(v37, 1, v19);
  v46 = v45;

  sub_10006E7C8(v19);
  v47 = v94;
  *v94 = v80;
  *(v47 + 8) = v46;
  *(v47 + 16) = 0;
  v48 = sub_10003AE84(&qword_100159A58, &qword_100114E68);
  v49 = v92;
  v50 = v93;
  sub_1000EAC24(a1, v89, v92, v93, v47 + *(v48 + 44), a7, a8);
  v51 = static Alignment.center.getter();
  v53 = v52;
  v54 = v47 + *(v100 + 36);
  sub_1000F021C(a1, v49, v50, v54);
  v55 = (v54 + *(sub_10003AE84(&qword_100159A60, &unk_100114E70) + 36));
  *v55 = v51;
  v55[1] = v53;
  v89 = LocalizedStringKey.init(stringLiteral:)();
  v84 = v56;
  LODWORD(v83) = v57;
  v58 = (a1 + *(v35 + 60));
  v59 = *v58;
  v60 = *(v58 + 1);
  LOBYTE(v114) = v59;
  v115 = v60;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  v61 = State.projectedValue.getter();
  v82 = &v77;
  LODWORD(v80) = v107;
  __chkstk_darwin(v61);
  v93 = sub_10003AE84(&qword_100159A68, &qword_100114E80);
  v62 = sub_1000F2580();
  v63 = sub_10003AECC(&qword_1001558A0, &qword_10010F440);
  v64 = sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
  v105 = v63;
  v106 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v100;
  v66 = v95;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_1000035CC(v47, &qword_100159A50, &qword_100114E60);
  v67 = v90;
  v68 = v88;
  v69 = v91;
  (*(v85 + 16))(v90, v88, v91);
  v114 = v67;
  v70 = v97;
  v71 = v96;
  v72 = v98;
  (*(v97 + 16))(v96, v66, v98);
  v115 = v71;
  v113[0] = v69;
  v113[1] = v72;
  v111 = v81;
  v105 = v65;
  v106 = v93;
  v107 = &type metadata for Text;
  v108 = v62;
  v109 = OpaqueTypeConformance2;
  v110 = &protocol witness table for Text;
  v112 = swift_getOpaqueTypeConformance2();
  sub_100022AFC(&v114, 2uLL, v113);
  v73 = *(v70 + 8);
  v73(v66, v72);
  v74 = v86;
  v86(v68, v69);
  v73(v71, v72);
  return v74(v67, v69);
}

uint64_t sub_1000E9A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v40 = a4;
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v36 - v14;
  v42 = sub_10003AE84(&qword_100159A40, &unk_100114DF8);
  v39 = *(v42 - 8);
  v15 = v39;
  __chkstk_darwin(v42);
  v43 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v21 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v20);
  v38 = v19;
  sub_1000E9F10(v21, v19);
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v47 = a5;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v22 = v41;
  sub_100020EE8(v12, v9, WitnessTable);
  v23 = *(v10 + 8);
  v23(v12, v9);
  v24 = v43;
  v25 = v19;
  v26 = v42;
  (*(v15 + 16))(v43, v25, v42);
  v53[0] = v24;
  (*(v10 + 16))(v12, v22, v9);
  v53[1] = v12;
  v52[0] = v26;
  v52[1] = v9;
  v27 = sub_10003AECC(&qword_100159C40, &qword_100115298);
  v28 = type metadata accessor for HighlightHoverEffect();
  v29 = sub_10003AECC(&qword_100159C48, &qword_1001152A0);
  v30 = sub_1000F2E1C(&qword_100159C50, &qword_100159C48, &qword_1001152A0, sub_1000F3E70);
  v48 = v29;
  v49 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_100006698(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v48 = v27;
  v49 = v28;
  v50 = OpaqueTypeConformance2;
  v51 = v32;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = WitnessTable;
  sub_100022AFC(v53, 2uLL, v52);
  v23(v41, v9);
  v33 = *(v39 + 8);
  v34 = v42;
  v33(v38, v42);
  v23(v12, v9);
  return (v33)(v43, v34);
}

uint64_t sub_1000E9F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = type metadata accessor for HighlightHoverEffect();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlainButtonStyle();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = sub_10003AE84(&qword_100159C68, &qword_1001152B0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = sub_10003AE84(&qword_100159C60, &qword_1001152A8);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v57 = sub_10003AE84(&qword_100159C48, &qword_1001152A0);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v52 - v21;
  v22 = sub_10003AE84(&qword_100159C40, &qword_100115298);
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = __chkstk_darwin(v22);
  v58 = &v52 - v24;
  (*(v10 + 16))(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v23);
  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = *(a1 + 16);
  (*(v10 + 32))(v26 + v25, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_10003AE84(&qword_100159C88, &qword_1001152C8);
  v27 = sub_10003AECC(&qword_100158AD0, &unk_1001152D0);
  v28 = sub_100004880(&qword_100158B00, &qword_100158AD0, &unk_1001152D0, &protocol conformance descriptor for ClosedRange<A>);
  v65 = &type metadata for Image;
  v66 = v27;
  v67 = &protocol witness table for Image;
  v68 = v28;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  if (qword_1001545D8 != -1)
  {
    swift_once();
  }

  v29 = qword_100160C00;
  KeyPath = swift_getKeyPath();
  v31 = &v15[*(v13 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;

  PlainButtonStyle.init()();
  sub_1000F3F88();
  sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v32 = v54;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v9, v32);
  sub_1000035CC(v15, &qword_100159C68, &qword_1001152B0);
  v33 = &v18[*(v16 + 36)];
  __asm { FMOV            V0.2D, #8.0 }

  *v33 = _Q0;
  *(v33 + 1) = xmmword_100114D50;
  sub_1000F3E70();
  v39 = v55;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v18, &qword_100159C60, &qword_1001152A8);
  LocalizedStringKey.init(stringLiteral:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v42 = v41;
  LOBYTE(v32) = v43;
  v45 = v56;
  v44 = v57;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v40, v42, v32 & 1);

  sub_1000035CC(v39, &qword_100159C48, &qword_1001152A0);
  LocalizedStringKey.init(stringLiteral:)();
  v46 = sub_1000F2E1C(&qword_100159C50, &qword_100159C48, &qword_1001152A0, sub_1000F3E70);
  v47 = v58;
  View.help(_:)();

  sub_1000035CC(v45, &qword_100159C48, &qword_1001152A0);
  v48 = v61;
  static CustomHoverEffect<>.highlight.getter();
  v65 = v44;
  v66 = v46;
  swift_getOpaqueTypeConformance2();
  sub_100006698(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v49 = v60;
  v50 = v64;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v63 + 8))(v48, v50);
  return (*(v59 + 8))(v47, v49);
}

uint64_t sub_1000EA710@<X0>(uint64_t (**a1)(__n128)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v7 - 8);
  v37 = &v36 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  v16 = type metadata accessor for ModifiedContent();
  v39 = *(v16 - 8);
  __chkstk_darwin(v16);
  v40 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v22 = __chkstk_darwin(v21);
  v36 = &v36 - v23;
  (*a1)(v22);
  static Edge.Set.bottom.getter();
  v47[6] = a3;
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v10 + 8))(v12, v9);
  v25 = type metadata accessor for Font.Design();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  static Font.system(size:weight:design:)();
  sub_1000035CC(v26, &qword_1001567E0, &qword_10010F970);
  v47[4] = WitnessTable;
  v47[5] = &protocol witness table for _PaddingLayout;
  v27 = swift_getWitnessTable();
  View.font(_:)();

  (*(v38 + 8))(v15, v13);
  v28 = sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v47[2] = v27;
  v47[3] = v28;
  v29 = swift_getWitnessTable();
  v30 = v36;
  sub_100020EE8(v20, v16, v29);
  v31 = v39;
  v32 = *(v39 + 8);
  v32(v20, v16);
  v45 = 0;
  v46 = 1;
  v47[0] = &v45;
  v33 = *(v31 + 16);
  v34 = v40;
  v33(v40, v30, v16);
  v47[1] = v34;
  v44[0] = &type metadata for Spacer;
  v44[1] = v16;
  v42 = &protocol witness table for Spacer;
  v43 = v29;
  sub_100022AFC(v47, 2uLL, v44);
  v32(v30, v16);
  return (v32)(v34, v16);
}

uint64_t sub_1000EAC24@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v118 = a2;
  v104 = a5;
  v114 = a3;
  v120 = a4;
  v10 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a3, a4, a4);
  v119 = *(v10 - 8);
  v116 = *(v119 + 64);
  __chkstk_darwin(v10);
  v117 = &v97 - v11;
  v115 = type metadata accessor for EnvironmentValues();
  v12 = *(v115 - 8);
  __chkstk_darwin(v115);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10003AE84(&qword_100159B60, &qword_100115068);
  __chkstk_darwin(v111);
  v16 = &v97 - v15;
  v99 = sub_10003AE84(&qword_100159B68, &qword_100115070);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v108 = &v97 - v17;
  v101 = sub_10003AE84(&qword_100159B70, &qword_100115078);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v109 = &v97 - v18;
  v103 = sub_10003AE84(&qword_100159B78, &qword_100115080);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v110 = &v97 - v19;
  v20 = static Alignment.bottomTrailing.getter();
  v22 = v21;
  v23 = v10;
  v24 = *(v10 + 52);
  v113 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  LOBYTE(a1) = *(v25 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v115);
    v26 = v122;
  }

  sub_1000D3DA0(v26);
  v29 = v28;

  *v16 = v20;
  *(v16 + 1) = v22;
  *(v16 + 2) = v29;
  v16[24] = 0;
  *(v16 + 4) = 0;
  v16[40] = 1;
  v30 = &v16[*(sub_10003AE84(&qword_100159B80, &qword_100115088) + 44)];
  OpaqueTypeConformance2 = v16;
  v31 = v113;
  v32 = v114;
  v33 = v120;
  sub_1000EBA08(v113, v118, v114, v120, v30, a6, a7);
  v34 = v119;
  v35 = v119 + 16;
  v118 = *(v119 + 16);
  v36 = v117;
  v118(v117, v31, v23);
  v37 = *(v34 + 80);
  v38 = (v37 + 32) & ~v37;
  v115 = v116 + v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v32;
  *(v39 + 24) = v33;
  v40 = *(v34 + 32);
  v40(v39 + v38, v36, v23);
  v41 = sub_10003AE84(&qword_100159B88, &qword_100115090);
  v42 = OpaqueTypeConformance2;
  v43 = (OpaqueTypeConformance2 + *(v41 + 36));
  *v43 = sub_1000F2ED0;
  v43[1] = v39;
  v43[2] = 0;
  v43[3] = 0;
  v44 = v31;
  v45 = v23;
  v112 = v35;
  v118(v36, v44, v23);
  v46 = v37;
  v47 = v38;
  v48 = v46;
  v49 = swift_allocObject();
  v50 = v34 + 32;
  v51 = v120;
  *(v49 + 16) = v114;
  *(v49 + 24) = v51;
  v116 = v40;
  v40(v49 + v47, v36, v45);
  v52 = (v42 + v111[9]);
  *v52 = 0;
  v52[1] = 0;
  v52[2] = sub_1000F2F80;
  v52[3] = v49;
  v53 = v51;
  if (qword_1001546C8 != -1)
  {
    swift_once();
  }

  v54 = qword_100160D28;
  swift_getKeyPath();
  v122 = v54;
  sub_100006698(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v122) = *(v54 + 16);
  v55 = v36;
  v56 = v36;
  v57 = v113;
  (v118)(v55);
  v58 = swift_allocObject();
  v59 = v114;
  *(v58 + 16) = v114;
  *(v58 + 24) = v53;
  v116(v58 + v47, v56, v45);
  v97 = sub_1000F3008();
  v60 = v47;
  v105 = v47;
  v61 = OpaqueTypeConformance2;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v61, &qword_100159B60, &qword_100115068);
  v62 = *(sub_1000E7CA4(v45) + 24);

  swift_getKeyPath();
  v122 = v62;
  sub_100006698(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v63 = v62[OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded];

  LOBYTE(v121) = v63;
  v64 = v117;
  v65 = v57;
  v66 = v57;
  v107 = v48;
  v67 = v118;
  v119 = v50;
  v118(v117, v66, v45);
  v68 = swift_allocObject();
  v69 = v120;
  *(v68 + 16) = v59;
  *(v68 + 24) = v69;
  v116(v68 + v60, v64, v45);
  v122 = v111;
  v123 = &type metadata for Bool;
  v124 = v97;
  v125 = &protocol witness table for Bool;
  v70 = v59;
  v111 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v99;
  v72 = v108;
  View.onChange<A>(of:initial:_:)();

  (*(v98 + 8))(v72, v71);
  v73 = sub_1000E7CA4(v45);
  swift_getKeyPath();
  v122 = v73;
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v73 + 32);
  v108 = v74;

  v121 = v74;
  v75 = v117;
  v67(v117, v65, v45);
  v76 = swift_allocObject();
  v77 = v120;
  *(v76 + 16) = v70;
  *(v76 + 24) = v77;
  v78 = v105;
  v116(v76 + v105, v75, v45);
  v98 = sub_1000F31C4();
  v122 = v71;
  v123 = &type metadata for Bool;
  v124 = OpaqueTypeConformance2;
  v125 = &protocol witness table for Bool;
  v111 = swift_getOpaqueTypeConformance2();
  v79 = sub_100006698(&qword_100159BB0, sub_1000F31C4, &protocol conformance descriptor for NSObject);
  v80 = v101;
  v81 = v109;
  View.onChange<A>(of:initial:_:)();

  (*(v100 + 8))(v81, v80);
  v82 = v113;
  LOBYTE(v121) = sub_1000E7ED8(v45);
  v83 = v117;
  v118(v117, v82, v45);
  v84 = swift_allocObject();
  v85 = v120;
  *(v84 + 16) = v70;
  *(v84 + 24) = v85;
  v116(v84 + v78, v83, v45);
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v122 = v80;
  v123 = v98;
  v124 = v111;
  v125 = v79;
  swift_getOpaqueTypeConformance2();
  sub_10001BAF0(&qword_100156AC0, sub_10001B814, &protocol conformance descriptor for <A> A?);
  v86 = v104;
  v87 = v103;
  v88 = v110;
  View.onChange<A>(of:initial:_:)();

  (*(v102 + 8))(v88, v87);
  v89 = [objc_opt_self() defaultCenter];
  v90 = v113;
  if (qword_1001544E0 != -1)
  {
    swift_once();
  }

  v91 = sub_10003AE84(&qword_100159BB8, &qword_1001150F0);
  NSNotificationCenter.publisher(for:object:)();

  v92 = v117;
  v118(v117, v90, v45);
  v93 = swift_allocObject();
  v94 = v120;
  *(v93 + 16) = v114;
  *(v93 + 24) = v94;
  result = (v116)(v93 + v105, v92, v45);
  v96 = (v86 + *(v91 + 56));
  *v96 = sub_1000F32D8;
  v96[1] = v93;
  return result;
}

uint64_t sub_1000EBA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v87 = a2;
  v83 = a5;
  v12 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a3, a4, a4);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v86 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v18 = sub_10003AE84(&qword_100159BC0, &qword_100115178);
  __chkstk_darwin(v18 - 8);
  v82 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v81 = &v69 - v21;
  __chkstk_darwin(v22);
  v80 = &v69 - v23;
  v25 = __chkstk_darwin(v24);
  v89 = &v69 - v26;
  v27 = *(v13 + 16);
  v85 = v13 + 16;
  v88 = v27;
  v77 = v17;
  v71 = a1;
  (v27)(v17, a1, v12, v25);
  v28 = *(v13 + 80);
  v90 = (v28 + 32) & ~v28;
  v29 = (v14 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v84 = a3;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v31 = a4;
  v72 = a4;
  v32 = *(v13 + 32);
  v33 = v30;
  v70 = v30;
  v32(v30 + ((v28 + 32) & ~v28), v17, v12);
  v74 = v13 + 32;
  v73 = v32;
  *(v33 + v29) = a6;
  v34 = v86;
  v88(v86, a1, v12);
  v78 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = v31;
  v32(v35 + v90, v34, v12);
  *(v35 + v29) = v87;
  *(v35 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v79 = a6;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v117 = v105;
  v115 = v107;
  v93 = sub_1000F3384;
  v94 = v70;
  v95 = sub_1000F339C;
  v96 = v35;
  v97 = v104;
  v98 = v105;
  *v99 = *v116;
  *&v99[3] = *&v116[3];
  v100 = v106;
  v101 = v107;
  *v102 = *v114;
  *&v102[3] = *&v114[3];
  v103 = v108;
  v109 = 0;
  v110 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v109 = 0xD000000000000019;
  v110 = 0x8000000100109480;
  v36 = v71;
  sub_1000E7CA4(v12);
  v37 = sub_100072148();

  v38 = [v37 name];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v76 = sub_10003AE84(&qword_100159BC8, &qword_100115180);
  v75 = sub_1000F33B4();
  View.accessibilityIdentifier(_:)();

  v43 = v77;
  v44 = v12;
  v45 = v88;
  v88(v77, v36, v12);
  v46 = v29;
  v69 = v29;
  v47 = swift_allocObject();
  v48 = v72;
  *(v47 + 16) = v84;
  *(v47 + 24) = v48;
  v49 = v12;
  v50 = v73;
  v73(v47 + v90, v43, v49);
  *(v47 + v46) = a6;
  v51 = v86;
  v45(v86, v36, v44);
  v52 = v78;
  v53 = swift_allocObject();
  *(v53 + 16) = v84;
  *(v53 + 24) = v48;
  v50(v53 + v90, v51, v44);
  *(v53 + v69) = v87;
  *(v53 + v52) = a7;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v121 = v110;
  v119 = v112;
  v93 = sub_1000F346C;
  v94 = v47;
  v95 = sub_1000F3844;
  v96 = v53;
  v97 = v109;
  v98 = v110;
  *v99 = *v120;
  *&v99[3] = *&v120[3];
  v100 = v111;
  v101 = v112;
  *v102 = *v118;
  *&v102[3] = *&v118[3];
  v103 = v113;
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v91 = 0xD00000000000001ALL;
  v92 = 0x80000001001094A0;
  sub_1000E7CA4(v44);
  v54 = sub_100072328();

  v55 = [v54 name];

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59._countAndFlagsBits = v56;
  v59._object = v58;
  String.append(_:)(v59);

  v60 = v80;
  View.accessibilityIdentifier(_:)();

  v61 = v89;
  v62 = v81;
  sub_100008E68(v89, v81, &qword_100159BC0, &qword_100115178);
  v63 = v60;
  v64 = v60;
  v65 = v82;
  sub_100008E68(v63, v82, &qword_100159BC0, &qword_100115178);
  v66 = v83;
  sub_100008E68(v62, v83, &qword_100159BC0, &qword_100115178);
  v67 = sub_10003AE84(&qword_100159BE8, &qword_100115190);
  sub_100008E68(v65, v66 + *(v67 + 48), &qword_100159BC0, &qword_100115178);
  sub_1000035CC(v64, &qword_100159BC0, &qword_100115178);
  sub_1000035CC(v61, &qword_100159BC0, &qword_100115178);
  sub_1000035CC(v65, &qword_100159BC0, &qword_100115178);
  return sub_1000035CC(v62, &qword_100159BC0, &qword_100115178);
}

uint64_t sub_1000EC358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v110 = a4;
  v109 = type metadata accessor for AccessibilityTraits();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AccessibilityChildBehavior();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a2;
  v119 = a3;
  v12 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v11);
  v120 = *(v12 - 8);
  v94 = *(v120 + 64);
  __chkstk_darwin(v12);
  v117 = &v85 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v111 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10003AE84(&qword_100159C10, &qword_100115208);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v89 = &v85 - v17;
  v115 = sub_10003AE84(&qword_100159C18, &qword_100115210);
  v98 = *(v115 - 8);
  __chkstk_darwin(v115);
  v96 = &v85 - v18;
  v103 = sub_10003AE84(&qword_100159C20, &qword_100115218);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v114 = &v85 - v19;
  v20 = sub_10003AE84(&qword_100159C28, &qword_100115220);
  __chkstk_darwin(v20 - 8);
  v105 = &v85 - v21;
  v104 = sub_10003AE84(&qword_100159C30, &qword_100115228);
  __chkstk_darwin(v104);
  v106 = &v85 - v22;
  v23 = a1 + *(v12 + 44);
  v24 = *v23;
  LODWORD(a3) = *(v23 + 8);

  v25 = v24;
  v113 = a3;
  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v111 + 8))(v16, v14);
    v25 = v125;
  }

  v116 = v24;
  Kind = v25[1].Kind;
  swift_getKeyPath();
  v125 = Kind;
  v112 = sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v116;
  Description = Kind[1].Description;

  v30 = sub_1000E7CA4(v12);

  v31 = v28;
  if ((v113 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v111 + 8))(v16, v14);
    v31 = v125;
  }

  v33 = v31[1].Kind;

  swift_getKeyPath();
  v125 = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + 40);

  v86 = v14;
  v85 = v16;
  if (v34 == 1)
  {
    if (qword_100154530 != -1)
    {
      swift_once();
    }

    v35 = qword_100160B58;
  }

  else
  {
    v35 = sub_1000E8000(v12);
  }

  type metadata accessor for CalculatorViewModel(0);
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  v93 = Environment.init<A>(_:)();
  v125 = v93;
  LOBYTE(v126) = v36 & 1;
  v92 = Description;
  v127 = Description;
  v128 = v30;
  v129 = v35;
  v130 = 1;
  v131 = a5;
  v122 = sub_1000E7F9C(v12);
  v123 = v37;
  v124 = v38;
  v121 = 1;
  v39 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v40 = sub_100023954();
  v87 = sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
  v41 = v89;
  View.focused<A>(_:equals:)();

  v42 = v120;
  v43 = v117;
  v44 = a1;
  v92 = *(v120 + 16);
  v88 = v120 + 16;
  v92(v117, a1, v12);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v93 = *(v42 + 80);
  v90 = v45 + v94;
  v46 = swift_allocObject();
  v47 = v119;
  *(v46 + 16) = v118;
  *(v46 + 24) = v47;
  v48 = *(v42 + 32);
  v94 = v45;
  v49 = v46 + v45;
  v50 = v12;
  v120 = v42 + 32;
  v91 = v48;
  v48(v49, v43, v12);
  v125 = &type metadata for InputTextView;
  v126 = v39;
  v127 = v40;
  v128 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v96;
  v53 = v97;
  View.onTapGesture(count:perform:)();

  (*(v95 + 8))(v41, v53);
  if (_AXSAutomationEnabled())
  {
    v54 = v99;
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    v54 = v99;
    static AccessibilityChildBehavior.ignore.getter();
  }

  v55 = v109;
  v125 = v53;
  v126 = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v115;
  View.accessibilityElement(children:)();
  (*(v100 + 8))(v54, v101);
  (*(v98 + 8))(v52, v57);
  v58 = v50;
  v59 = v44;
  if (sub_1000E7ED8(v50) == 1)
  {
    sub_10003AE84(&qword_100157A80, &unk_100115410);
    v60 = v108;
  }

  else
  {
    v61 = sub_1000E7ED8(v50);
    v60 = v108;
    if (v61 == 2)
    {
      v125 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    sub_10003AE84(&qword_100157A80, &unk_100115410);
  }

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10010BDE0;
  static AccessibilityTraits.isSelected.getter();
  v125 = v62;
LABEL_19:
  sub_100006698(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_10003AE84(&qword_100156A70, &qword_100112040);
  sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
  v63 = v107;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v125 = v115;
  v126 = v56;
  swift_getOpaqueTypeConformance2();
  v64 = v105;
  v65 = v103;
  v66 = v114;
  View.accessibilityAddTraits(_:)();
  (*(v60 + 8))(v63, v55);
  (*(v102 + 8))(v66, v65);
  v67 = v116;

  if ((v113 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v68 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v69 = v85;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v111 + 8))(v69, v86);
    v67 = v125;
  }

  v70 = v67[1].Kind;
  swift_getKeyPath();
  v125 = v70;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v71 = v70[1].Description;

  v72 = sub_1000E7ED8(v58);
  if (v72 == 2)
  {
    v73 = 0x746C75736552;
  }

  else
  {
    v73 = 0x7475706E49;
  }

  if (v72 == 2)
  {
    v74 = 0xE600000000000000;
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  v75 = v106;
  sub_10000D5B8(v64, v106, &qword_100159C28, &qword_100115220);
  v76 = (v75 + *(v104 + 36));
  *v76 = v71;
  v76[1] = v73;
  v76[2] = v74;
  v77 = static VerticalAlignment.firstTextBaseline.getter();
  v78 = v117;
  v92(v117, v59, v58);
  v79 = (v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v119;
  *(v80 + 16) = v118;
  *(v80 + 24) = v81;
  v91(v80 + v94, v78, v58);
  *(v80 + v79) = a5;
  v82 = v110;
  sub_10000D5B8(v75, v110, &qword_100159C30, &qword_100115228);
  result = sub_10003AE84(&qword_100159C38, &unk_100115260);
  v84 = (v82 + *(result + 36));
  *v84 = v77;
  v84[1] = sub_1000F40F4;
  v84[2] = v80;
  return result;
}

__n128 sub_1000ED2A0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v56 = a1;
  v57 = a4;
  v7 = type metadata accessor for InputAccessoryView(0);
  __chkstk_darwin(v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v10);
  sub_1000E7CA4(v11);
  v12 = sub_100072148();

  v13 = [v12 shortName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v15;
  v55 = v14;

  if (sub_1000E7ED8(v11) != 1)
  {
    sub_1000E7ED8(v11);
  }

  v53 = LocalizedStringKey.init(stringLiteral:)();
  v52 = v16;
  v51 = v17;
  v50 = v18;
  v49 = 0x80000001001094E0;
  sub_1000E7CA4(v11);
  v19 = sub_100072148();

  v20 = [v19 displayName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = LocalizedStringKey.init(stringLiteral:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  *v9 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v31 = v7[5];
  *(v9 + v31) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = v9 + v7[6];
  LOBYTE(v58) = 0;
  State.init(wrappedValue:)();
  v33 = *(&v59 + 1);
  *v32 = v59;
  *(v32 + 1) = v33;
  v34 = (v9 + v7[7]);
  v58 = static Color.clear.getter();
  State.init(wrappedValue:)();
  v35 = *(&v59 + 1);
  *v34 = v59;
  v34[1] = v35;
  v36 = (v9 + v7[8]);
  v37 = v54;
  *v36 = v55;
  v36[1] = v37;
  *(v9 + v7[9]) = v56;
  *(v9 + v7[10]) = 1;
  v38 = (v9 + v7[11]);
  *v38 = 0xD000000000000013;
  v38[1] = v49;
  v39 = v9 + v7[12];
  v40 = v52;
  *v39 = v53;
  *(v39 + 1) = v40;
  v39[16] = v51 & 1;
  *(v39 + 3) = v50;
  v41 = (v9 + v7[13]);
  *v41 = v21;
  v41[1] = v23;
  v42 = v9 + v7[14];
  *v42 = v24;
  *(v42 + 1) = v26;
  v42[16] = v28 & 1;
  *(v42 + 3) = v30;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v57;
  sub_100064ED0(v9, v57);
  v44 = v43 + *(sub_10003AE84(&qword_100159BF0, &qword_100115198) + 36);
  v45 = v64;
  *(v44 + 64) = v63;
  *(v44 + 80) = v45;
  *(v44 + 96) = v65;
  v46 = v60;
  *v44 = v59;
  *(v44 + 16) = v46;
  result = v62;
  *(v44 + 32) = v61;
  *(v44 + 48) = result;
  return result;
}

uint64_t sub_1000ED72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  v24 = a6;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v17 = *(a3 + 24);
  v25 = *(a3 + 16);
  v26 = a4;
  v27 = v17;
  v28 = v22;
  v29 = a1;
  v30 = a2;
  v31 = v23;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v13, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_100020EE8(v16, v10, WitnessTable);
  return (v19)(v16, v10);
}

uint64_t sub_1000ED948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v113 = a4;
  v9 = type metadata accessor for AccessibilityTraits();
  v111 = *(v9 - 8);
  __chkstk_darwin(v9);
  v110 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AccessibilityChildBehavior();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a2;
  v122 = a3;
  v13 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v12);
  v123 = *(v13 - 8);
  v97 = *(v123 + 64);
  __chkstk_darwin(v13);
  v120 = &v88 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v114 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10003AE84(&qword_100159C10, &qword_100115208);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v88 - v18;
  v118 = sub_10003AE84(&qword_100159C18, &qword_100115210);
  v101 = *(v118 - 8);
  __chkstk_darwin(v118);
  v99 = &v88 - v19;
  v106 = sub_10003AE84(&qword_100159C20, &qword_100115218);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v117 = &v88 - v20;
  v21 = sub_10003AE84(&qword_100159C28, &qword_100115220);
  __chkstk_darwin(v21 - 8);
  v108 = &v88 - v22;
  v107 = sub_10003AE84(&qword_100159C30, &qword_100115228);
  __chkstk_darwin(v107);
  v109 = &v88 - v23;
  v24 = a1 + *(v13 + 44);
  v25 = *v24;
  LODWORD(a2) = *(v24 + 8);

  v26 = v25;
  v116 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v28 = v114;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v28, v15);
    v26 = v128;
  }

  Kind = v26[1].Kind;
  swift_getKeyPath();
  v119 = v25;
  v128 = Kind;
  v115 = sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v30 = v119;

  v31 = Kind[2].Kind;

  v32 = sub_1000E7CA4(v13);

  v33 = v30;
  if ((v116 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v114;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v35, v15);
    v33 = v128;
  }

  v36 = v33[1].Kind;

  swift_getKeyPath();
  v128 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v36 + 40);

  v112 = v9;
  v90 = v15;
  v89 = v16;
  if (v37 == 1)
  {
    v38 = sub_1000E8000(v13);
  }

  else
  {
    if (qword_100154530 != -1)
    {
      swift_once();
    }

    v38 = qword_100160B58;
  }

  v93 = v38;
  type metadata accessor for CalculatorViewModel(0);
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  v95 = Environment.init<A>(_:)();
  v128 = v95;
  LOBYTE(v129) = v39 & 1;
  v130 = v31;
  v131 = v32;
  v132 = v38;
  v133 = 1;
  v134 = a5;
  v40 = sub_1000E7F9C(v13);
  v94 = v31;
  v125 = v40;
  v126 = v41;
  v127 = v42;
  v124 = 2;
  v43 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v44 = sub_100023954();
  v45 = sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
  v46 = v96;
  View.focused<A>(_:equals:)();

  v47 = v123;
  v48 = v120;
  v49 = a1;
  v94 = *(v123 + 16);
  v91 = v123 + 16;
  v94(v120, a1, v13);
  v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v95 = *(v47 + 80);
  v92 = v50 + v97;
  v51 = swift_allocObject();
  v52 = v122;
  *(v51 + 16) = v121;
  *(v51 + 24) = v52;
  v53 = *(v47 + 32);
  v97 = v50;
  v54 = v51 + v50;
  v55 = v13;
  v123 = v47 + 32;
  v93 = v53;
  v53(v54, v48, v13);
  v128 = &type metadata for InputTextView;
  v129 = v43;
  v130 = v44;
  v131 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v99;
  v58 = v100;
  View.onTapGesture(count:perform:)();

  (*(v98 + 8))(v46, v58);
  if (_AXSAutomationEnabled())
  {
    v59 = v102;
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    v59 = v102;
    static AccessibilityChildBehavior.ignore.getter();
  }

  v128 = v58;
  v129 = OpaqueTypeConformance2;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v118;
  View.accessibilityElement(children:)();
  (*(v103 + 8))(v59, v104);
  (*(v101 + 8))(v57, v61);
  if (sub_1000E7ED8(v55) == 2)
  {
    sub_10003AE84(&qword_100157A80, &unk_100115410);
    v62 = v111;
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10010BDE0;
    static AccessibilityTraits.isSelected.getter();
    v128 = v63;
    sub_100006698(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
    v64 = v110;
    v65 = v112;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v128 = _swiftEmptyArrayStorage;
    sub_100006698(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
    v64 = v110;
    v65 = v112;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v62 = v111;
  }

  v128 = v118;
  v129 = v60;
  swift_getOpaqueTypeConformance2();
  v66 = v108;
  v67 = v106;
  v68 = v117;
  View.accessibilityAddTraits(_:)();
  (*(v62 + 8))(v64, v65);
  (*(v105 + 8))(v68, v67);
  v69 = v119;

  if ((v116 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v71 = v114;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v89 + 8))(v71, v90);
    v69 = v128;
  }

  v72 = v69[1].Kind;
  swift_getKeyPath();
  v128 = v72;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = v72[2].Kind;

  v74 = sub_1000E7ED8(v55);
  if (v74 == 2)
  {
    v75 = 0x7475706E49;
  }

  else
  {
    v75 = 0x746C75736552;
  }

  if (v74 == 2)
  {
    v76 = 0xE500000000000000;
  }

  else
  {
    v76 = 0xE600000000000000;
  }

  v77 = v66;
  v78 = v109;
  sub_10000D5B8(v77, v109, &qword_100159C28, &qword_100115220);
  v79 = (v78 + *(v107 + 36));
  *v79 = v73;
  v79[1] = v75;
  v79[2] = v76;
  v80 = static VerticalAlignment.firstTextBaseline.getter();
  v81 = v120;
  v94(v120, v49, v55);
  v82 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v122;
  *(v83 + 16) = v121;
  *(v83 + 24) = v84;
  v93(v83 + v97, v81, v55);
  *(v83 + v82) = a5;
  v85 = v113;
  sub_10000D5B8(v78, v113, &qword_100159C30, &qword_100115228);
  result = sub_10003AE84(&qword_100159C38, &unk_100115260);
  v87 = (v85 + *(result + 36));
  *v87 = v80;
  v87[1] = sub_1000F3A14;
  v87[2] = v83;
  return result;
}

uint64_t sub_1000EE91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;
  *&v14[6] = a7;
  v9 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a3, a4, a4);
  v10 = sub_10003AE84(&qword_100159BF0, &qword_100115198);
  v11 = sub_1000F393C();
  sub_1000ED72C(a5, v14, v9, v10, v11, a6);
  v12 = sub_10003AE84(&qword_100159C08, &qword_1001151A0);
  return (*(*(v12 - 8) + 56))(a6, 0, 1, v12);
}

__n128 sub_1000EEA00@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v56 = a1;
  v57 = a4;
  v7 = type metadata accessor for InputAccessoryView(0);
  __chkstk_darwin(v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v10);
  sub_1000E7CA4(v11);
  v12 = sub_100072328();

  v13 = [v12 shortName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v15;
  v55 = v14;

  sub_1000E7ED8(v11);
  v53 = LocalizedStringKey.init(stringLiteral:)();
  v52 = v16;
  v51 = v17;
  v50 = v18;
  v49 = 0x80000001001094C0;
  sub_1000E7CA4(v11);
  v19 = sub_100072328();

  v20 = [v19 displayName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = LocalizedStringKey.init(stringLiteral:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  *v9 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v31 = v7[5];
  *(v9 + v31) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = v9 + v7[6];
  LOBYTE(v58) = 0;
  State.init(wrappedValue:)();
  v33 = *(&v59 + 1);
  *v32 = v59;
  *(v32 + 1) = v33;
  v34 = (v9 + v7[7]);
  v58 = static Color.clear.getter();
  State.init(wrappedValue:)();
  v35 = *(&v59 + 1);
  *v34 = v59;
  v34[1] = v35;
  v36 = (v9 + v7[8]);
  v37 = v54;
  *v36 = v55;
  v36[1] = v37;
  *(v9 + v7[9]) = v56;
  *(v9 + v7[10]) = 0;
  v38 = (v9 + v7[11]);
  *v38 = 0xD000000000000014;
  v38[1] = v49;
  v39 = v9 + v7[12];
  v40 = v52;
  *v39 = v53;
  *(v39 + 1) = v40;
  v39[16] = v51 & 1;
  *(v39 + 3) = v50;
  v41 = (v9 + v7[13]);
  *v41 = v21;
  v41[1] = v23;
  v42 = v9 + v7[14];
  *v42 = v24;
  *(v42 + 1) = v26;
  v42[16] = v28 & 1;
  *(v42 + 3) = v30;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v57;
  sub_100064ED0(v9, v57);
  v44 = v43 + *(sub_10003AE84(&qword_100159BF0, &qword_100115198) + 36);
  v45 = v64;
  *(v44 + 64) = v63;
  *(v44 + 80) = v45;
  *(v44 + 96) = v65;
  v46 = v60;
  *v44 = v59;
  *(v44 + 16) = v46;
  result = v62;
  *(v44 + 32) = v61;
  *(v44 + 48) = result;
  return result;
}

double sub_1000EEE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v10);
  v12 = sub_1000E7CA4(v11);
  swift_getKeyPath();
  v30 = v12;
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 32);

  v14 = [v13 unitType];

  if (v14 == 16)
  {
    v15 = *(a1 + *(v11 + 44) + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
    }

    sub_10001B0D8();

    v17 = CalculateExpression.expression.getter();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v20 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = a1 + *(v11 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v23 = v30;
  }

  v26 = *(v23 + 16);

  swift_getKeyPath();
  v30 = v26;
  sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v21 != *(v26 + 42))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v29 - 2) = v26;
    *(&v29 - 8) = v21;
    v30 = v26;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000EF2D4(v11);
  return sub_1000EF450(v11);
}

void *sub_1000EF2D4(uint64_t a1)
{
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  result = State.wrappedValue.getter();
  if ((v3 & 1) == 0)
  {
    sub_1000E7CA4(a1);

    sub_100051FD4();

    sub_1000E7CA4(a1);

    swift_getKeyPath();
    sub_100006698(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return State.wrappedValue.setter();
  }

  return result;
}

double sub_1000EF450(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(a1 + 44) + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v9 = sub_1000E7CA4(a1);
  sub_1000D62AC(v9);

  return result;
}

double sub_1000EF5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v10) + 44));
  v12 = *v11;
  v13 = *(v11 + 8);

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v14 = v21;
  }

  if (*(v14 + 53))
  {
    KeyPath = swift_getKeyPath();
    v20[1] = v20;
    __chkstk_darwin(KeyPath);
    v20[-2] = v14;
    LOBYTE(v20[-1]) = 0;
    v21 = v14;
    sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v14 + 53) = 0;
  }

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v12 = v21;
  }

  swift_getKeyPath();
  v21 = v12;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + 54) != 11)
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v20[-2] = v12;
    LOBYTE(v20[-1]) = 11;
    v21 = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000EF9F8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  *&result = __chkstk_darwin(v9).n128_u64[0];
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v15 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a4, a5, v11);
    v16 = *(a3 + *(v15 + 44) + 8);

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v10 + 8))(v14, v9);
    }

    sub_10001B0D8();

    CalculateExpression.expression.getter();

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v10 + 8))(v14, v9);
    }

    sub_10001B0D8();

    CalculateExpression.expression.setter();

    return sub_1000EF450(v15);
  }

  return result;
}

double sub_1000EFC98(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  *&result = __chkstk_darwin(v9).n128_u64[0];
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a2;
  if (v16 != 11 && (v16 - 1) <= 1)
  {
    v29 = v11;
    v17 = (a3 + *(type metadata accessor for CalculatorUnitConversionDisplayView(0, a4, a5, v12) + 44));
    v18 = *v17;
    v19 = *(v17 + 8);

    v20 = v18;
    v28 = v19;
    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v10 + 8))(v15, v29);
      v20 = v30;
    }

    v22 = *(v20 + 16);

    swift_getKeyPath();
    v30 = v22;
    sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (((v16 == 1) ^ *(v22 + 40)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v27[-16] = v22;
      v27[-8] = v16 == 1;
      v30 = v22;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if ((v28 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v10 + 8))(v15, v29);
      v18 = v30;
    }

    swift_getKeyPath();
    v30 = v18;
    sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v18 + 54);
    if (v25 == 11 || v25 != v16)
    {
      v26 = swift_getKeyPath();
      __chkstk_darwin(v26);
      *&v27[-16] = v18;
      v27[-8] = v16;
      v30 = v18;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
    }
  }

  return result;
}

double sub_1000F0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a3, a4, a4);
  v5 = sub_1000E7CA4(v4);
  swift_getKeyPath();
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 32);

  v7 = [v6 unitType];

  if (v7 == 16)
  {
    return sub_1000EF450(v4);
  }

  return result;
}

uint64_t sub_1000F021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4024000000000000;
  *(a4 + 16) = 0;
  v8 = sub_10003AE84(&qword_100159A90, &qword_100114E90);
  return sub_1000F028C(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_1000F028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10003AE84(&qword_100159A98, &qword_100114E98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_10003AE84(&qword_100159AA0, &qword_100114EA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v19 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, v18);
  sub_1000F0594(v39);
  if (sub_1000E7E04(v19) && (v20 = (a1 + *(v19 + 56)), v21 = *v20, v22 = *(v20 + 1), LOBYTE(v37[0]) = v21, *(&v37[0] + 1) = v22, sub_10003AE84(&qword_1001553F0, &unk_10010D260), State.wrappedValue.getter(), (v35[0] & 1) == 0))
  {
    sub_1000F0668(v19, v11);
    (*(v9 + 32))(v17, v11, v8);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v9 + 56))(v17, v23, 1, v8);
  v32 = v39[2];
  v33 = v39[3];
  v34 = v40;
  v30 = v39[0];
  v31 = v39[1];
  sub_100008E68(v17, v14, &qword_100159AA0, &qword_100114EA0);
  v24 = v33;
  v35[2] = v32;
  v35[3] = v33;
  v25 = v34;
  v36 = v34;
  v27 = v30;
  v26 = v31;
  v35[0] = v30;
  v35[1] = v31;
  *(a4 + 32) = v32;
  *(a4 + 48) = v24;
  *(a4 + 64) = v25;
  *a4 = v27;
  *(a4 + 16) = v26;
  v28 = sub_10003AE84(&qword_100159AA8, &qword_100114EA8);
  sub_100008E68(v14, a4 + *(v28 + 48), &qword_100159AA0, &qword_100114EA0);
  sub_100008E68(v35, v37, &qword_100159AB0, &qword_100114EB0);
  sub_1000035CC(v17, &qword_100159AA0, &qword_100114EA0);
  sub_1000035CC(v14, &qword_100159AA0, &qword_100114EA0);
  v37[2] = v32;
  v37[3] = v33;
  v38 = v34;
  v37[0] = v30;
  v37[1] = v31;
  return sub_1000035CC(v37, &qword_100159AB0, &qword_100114EB0);
}

double sub_1000F0594@<D0>(uint64_t a2@<X8>)
{
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  v3 = qword_100160C08;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 64) = 0;

  return result;
}

uint64_t sub_1000F0668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = type metadata accessor for HighlightHoverEffect();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlainButtonStyle();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v12 = sub_10003AE84(&qword_100159AB8, &qword_100114EB8);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v53 = sub_10003AE84(&qword_100159AC0, &qword_100114EC0);
  __chkstk_darwin(v53);
  v16 = &v53 - v15;
  v58 = sub_10003AE84(&qword_100159AC8, &qword_100114EC8);
  __chkstk_darwin(v58);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v57 = &v53 - v19;
  v20 = sub_10003AE84(&qword_100159AD0, &qword_100114ED0);
  v60 = *(v20 - 8);
  v61 = v20;
  v21 = __chkstk_darwin(v20);
  v59 = &v53 - v22;
  (*(v9 + 16))(&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v21);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = *(a1 + 16);
  (*(v9 + 32))(v24 + v23, &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_10003AE84(&qword_100159AD8, &qword_100114ED8);
  sub_1000F26F4();
  Button.init(action:label:)();
  v25 = sub_1000F28D4(a1);
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(sub_10003AE84(&qword_100159B08, &qword_100114F20) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = qword_1001546A8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_100160D08;
  v30 = swift_getKeyPath();
  v31 = &v14[*(v12 + 36)];
  *v31 = v30;
  v31[1] = v29;

  PlainButtonStyle.init()();
  sub_1000F2B14();
  sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v32 = v55;
  View.buttonStyle<A>(_:)();
  (*(v54 + 8))(v8, v32);
  sub_1000035CC(v14, &qword_100159AB8, &qword_100114EB8);
  v33 = &v16[*(v53 + 36)];
  __asm { FMOV            V0.2D, #8.0 }

  *v33 = _Q0;
  *(v33 + 1) = xmmword_100114D50;
  sub_1000F2CB0();
  v39 = v56;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v16, &qword_100159AC0, &qword_100114EC0);
  LocalizedStringKey.init(stringLiteral:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v42 = v41;
  v44 = v43;
  v45 = v57;
  v46 = v58;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v40, v42, v44 & 1);

  sub_1000035CC(v39, &qword_100159AC8, &qword_100114EC8);
  LocalizedStringKey.init(stringLiteral:)();
  v47 = sub_1000F2E1C(&qword_100159B40, &qword_100159AC8, &qword_100114EC8, sub_1000F2CB0);
  v48 = v59;
  View.help(_:)();

  sub_1000035CC(v45, &qword_100159AC8, &qword_100114EC8);
  v49 = v62;
  static CustomHoverEffect<>.highlight.getter();
  v66 = v46;
  v67 = v47;
  swift_getOpaqueTypeConformance2();
  sub_100006698(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v50 = v61;
  v51 = v65;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v64 + 8))(v49, v51);
  return (*(v60 + 8))(v48, v50);
}

uint64_t sub_1000F0E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[0] = a3;
  v20[1] = a5;
  v7 = type metadata accessor for CalculatorUnitConversionDisplayView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v11 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v20 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = v20[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v8 + 32))(v17 + v16, v10, v7);
  Button.init(action:label:)();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
  View.allowsSecureDrawing(_:)();
  return (*(v12 + 8))(v15, v11);
}