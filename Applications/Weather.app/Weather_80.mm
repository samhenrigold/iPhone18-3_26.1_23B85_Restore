double sub_100871A30@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (AsyncImagePhase.image.getter())
  {
    v9 = enum case for Image.TemplateRenderingMode.template(_:);
    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    sub_10001B350(v8, 0, 1, v10);
    Image.renderingMode(_:)();
    sub_1000180EC(v8, &qword_100CBB908, &unk_100A511B0);
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v11 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    sub_10068CE44();
    v12 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v18 = v11;
    v19 = KeyPath;
    v20 = v12;
    v21 = 0;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_10022C350(&qword_100CAD9C8, &unk_100A3CD28);
    sub_1003325F0();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14 = static Color.clear.getter();
    v19 = 0;
    v20 = 0;
    v18 = v14;
    v21 = 1;
    sub_10022C350(&qword_100CAD9C8, &unk_100A3CD28);
    sub_1003325F0();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v22;
  v16 = v23;
  v17 = v24;
  *a1 = v22;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100871D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreAttributorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100871DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreAttributorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100871E50()
{
  result = qword_100CDFAC0;
  if (!qword_100CDFAC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDFAA8, &qword_100A8F2B8);
    v4[0] = sub_100871F08();
    v4[1] = sub_100006F64(&qword_100CA54F8, &qword_100CA5500, &qword_100A5C030, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDFAC0);
  }

  return result;
}

unint64_t sub_100871F08()
{
  result = qword_100CDFAC8;
  if (!qword_100CDFAC8)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CDFAD0, &qword_100A8F2C0);
    v4[2] = sub_10022E824(&qword_100CDFAD8, &unk_100A8F2C8);
    v4[3] = type metadata accessor for PlainButtonStyle();
    v4[4] = sub_100006F64(&qword_100CDFAE0, &qword_100CDFAD8, &unk_100A8F2C8, &protocol conformance descriptor for Link<A>);
    v4[5] = sub_10087240C(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10087240C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDFAC8);
  }

  return result;
}

unint64_t sub_1008720B4()
{
  result = qword_100CDFAF8;
  if (!qword_100CDFAF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDFAF0, &qword_100A8F2E0);
    v4[0] = sub_100872170();
    v4[1] = sub_10087240C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDFAF8);
  }

  return result;
}

unint64_t sub_100872170()
{
  result = qword_100CDFB00;
  if (!qword_100CDFB00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDFB08, &qword_100A8F2E8);
    v4[0] = sub_100006F64(&qword_100CDFB10, &qword_100CDFB18, &qword_100A8F2F0, &protocol conformance descriptor for AsyncImage<A>);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDFB00);
  }

  return result;
}

uint64_t sub_100872240(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for LearnMoreAttributorView(0);
  sub_100003810(v2);
  v3 = sub_100005614();

  return a2(v3);
}

double sub_1008722C0()
{
  v0 = type metadata accessor for LearnMoreAttributorView(0);
  sub_100003810(v0);
  sub_100005614();

  return sub_100871A30(v1);
}

unint64_t sub_10087232C()
{
  result = qword_100CDFB28;
  if (!qword_100CDFB28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDFB20, &unk_100A8F330);
    v4[0] = sub_1003325F0();
    v4[1] = &protocol witness table for Color;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDFB28);
  }

  return result;
}

unint64_t sub_1008723B8()
{
  result = qword_100CDFB38;
  if (!qword_100CDFB38)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.UIKitAttributes.ParagraphStyleAttribute, &type metadata for AttributeScopes.UIKitAttributes.ParagraphStyleAttribute, v0, v1);
    atomic_store(result, &qword_100CDFB38);
  }

  return result;
}

uint64_t sub_10087240C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100872454()
{
  result = qword_100CDFB40;
  if (!qword_100CDFB40)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, v0, v1);
    atomic_store(result, &qword_100CDFB40);
  }

  return result;
}

unint64_t sub_1008724A8()
{
  result = qword_100CDFB48;
  if (!qword_100CDFB48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDFA78, &qword_100A8F268);
    v4[0] = sub_100006F64(&qword_100CDFB50, &qword_100CDFB58, &qword_100A8F378, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDFB48);
  }

  return result;
}

uint64_t sub_10087258C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v39 = a4;
  v40 = a7;
  v35 = a2;
  v36 = a6;
  v37 = a5;
  v38 = a3;
  v13 = sub_10022C350(&qword_100CB4B98, &qword_100A48100);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = [v16 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  v21 = sub_100872C50(v20 != 0);
  v22 = sub_100872CC4(a11, v20 != 0, a1, v15);
  v23 = a10;
  if (!a10)
  {
    v41 = sub_10043D444(v22);
    v23 = v24;
  }

  if (v18)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_10043CD34();
    v26 = v27;
  }

  v28 = v20 != 0;
  v29 = v35 & v36 & (v18 == 0);
  v30 = type metadata accessor for LocationFooterViewModel(0);
  sub_10011145C(v37, a9 + v30[9], type metadata accessor for LearnMoreAttributorViewModel);
  sub_1000302D8(a11, a9 + v30[11], &qword_100CA3588, &unk_100A4F350);
  *a9 = v29;
  *(a9 + 1) = v38 & 1;
  v31 = v40;
  *(a9 + 2) = v39 & 1;
  *(a9 + 8) = v41;
  *(a9 + 16) = v23;
  *(a9 + 24) = v25;
  *(a9 + 32) = v26;
  v32 = a9 + v30[10];
  *(v32 + 2) = BYTE2(v31);
  *v32 = v31;
  *(a9 + v30[12]) = v28;
  *(a9 + v30[13]) = v21;
  return sub_10011C0F0(v15, a9 + v30[14], &qword_100CB4B98, &qword_100A48100);
}

uint64_t sub_1008727D8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = static Image.locationIntelligenceSymbol.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  return v2;
}

uint64_t sub_10087291C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v2 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TemperatureDifferenceThresholdDetector();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TemperatureDifferenceThresholdDetector.init()();
  CurrentWeather.apparentTemperature.getter();
  CurrentWeather.temperature.getter();
  v13 = [objc_opt_self() fahrenheit];
  v14 = TemperatureDifferenceThresholdDetector.areTemperaturesSignificantlyDifferent(_:_:threshold:thresholdUnit:)();

  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  (*(v10 + 8))(v12, v9);
  v16 = 0;
  if (v14)
  {
    v17 = [objc_opt_self() mainBundle];
    v26._object = 0x8000000100AE21F0;
    v18._countAndFlagsBits = 0x694C20736C656546;
    v18._object = 0xEE004025203A656BLL;
    v19._object = 0x8000000100AE21D0;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    v26._countAndFlagsBits = 0x1000000000000351;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v17, v18, v26);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100A2C3F0;
    v22 = *(v25 + 32);
    v21 = *(v25 + 40);
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100035744();
    *(v20 + 32) = v22;
    *(v20 + 40) = v21;

    v16 = static String.localizedStringWithFormat(_:_:)();
  }

  return v16;
}

uint64_t sub_100872C50(unsigned __int8 a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (((v3 == 0) & a1) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100872CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for LocationOfInterest();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a1, v10, &qword_100CA3588, &unk_100A4F350);
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_1000180EC(v10, &qword_100CA3588, &unk_100A4F350);
    v15 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    v16 = a4;
    v17 = 1;
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v14, v10, v11);
    v19 = sub_100872EF4();
    v20 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    v21 = v20[5];
    v22 = type metadata accessor for Location();
    (*(*(v22 - 8) + 16))(&a4[v21], a3, v22);
    v18(&a4[v20[6]], v14, v11);
    *a4 = a2 & 1;
    a4[v20[7]] = v19;
    v16 = a4;
    v17 = 0;
    v15 = v20;
  }

  return sub_10001B350(v16, v17, 1, v15);
}

BOOL sub_100872EF4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

void *sub_100872F50()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);
  sub_100006F14(v0 + 27);
  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 37);
  sub_100006F14(v0 + 42);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData, &qword_100CA3898, &qword_100A314D0);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastNewsData, &qword_100CA74F8, &qword_100A32528);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastViewModel, &qword_100CA4B78, &qword_100A2EE30);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastPreprocessedDataUuid, &qword_100CC2B20, &unk_100A6A1C0);

  return v0;
}

uint64_t sub_100873068()
{
  sub_100872F50();

  return swift_deallocClassInstance();
}

BOOL sub_1008730C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  result = (v2 | v3) == 0;
  if (v2)
  {
    if (v3)
    {

      v5 = static Image.== infix(_:_:)();

      return v5 & 1;
    }
  }

  return result;
}

uint64_t sub_100873228()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0, &unk_100A416A0);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v1 + 32))(v6 + v5, v4, v0);
  v7 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v7;
}

uint64_t sub_1008733A8()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)(v4, v6, v5 & 1, v7, 0, 0, 0, "Title of an action in a tip that redirect user to settings app.", 63, 2);
  v10 = v9;
  v12 = v11;
  (*(v1 + 104))(v3, enum case for Font.TextStyle.body(_:), v0);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v1 + 8))(v3, v0);
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v8, v10, v12 & 1);

  swift_beginAccess();
  sub_100496768();
  swift_endAccess();
  v18 = Text.foregroundColor(_:)();

  sub_10010CD64(v13, v15, v17 & 1);

  return v18;
}

uint64_t sub_1008735E0()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100873A94()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D911D0);
  sub_10000703C(v0, qword_100D911D0);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100873BE4()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2958 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D911D0);
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100873E40@<X0>(uint64_t *a2@<X8>)
{
  sub_1002358F8();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100873E84()
{
  result = qword_100CDFD88;
  if (!qword_100CDFD88)
  {
    result = swift_getWitnessTable(asc_100A8F508, &type metadata for AddWeatherMenuListTip, v0, v1);
    atomic_store(result, &qword_100CDFD88);
  }

  return result;
}

uint64_t sub_100873ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 88);
  v10 = *(v2 + 16);
  sub_100035B30(v2 + 48, a2 + 56);
  v9 = *(v2 + 96);
  sub_100035B30(v2 + 112, a2 + 112);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10022C350(&qword_100CA4C50, &qword_100A2EEE0);
  sub_1008742CC();
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 48) = a1;
  *(a2 + 96) = v9;
  State.init(wrappedValue:)();
  *(a2 + 152) = v11;
  *(a2 + 168) = v12;
  result = State.init(wrappedValue:)();
  *(a2 + 176) = v11;
  *(a2 + 184) = *(&v11 + 1);
  return result;
}

void *sub_100874018()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 48));

  swift_unknownObjectRelease();
  sub_100006F14((v0 + 112));
  return v0;
}

uint64_t sub_100874068()
{
  sub_100874018();

  return swift_deallocClassInstance();
}

void *sub_1008740C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a11;
  v33 = a13;
  v21 = sub_100042FB0(v31);
  (*(*(a11 - 8) + 32))(v21, a5, a11);
  v22 = swift_allocObject();
  sub_10002D7F8(v31, v32);
  v29 = &type metadata for ContentStatusBannerViewFactory;
  v30 = &off_100C78818;
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000703C(v23, qword_100D90A48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Initializing List module", v26, 2u);
  }

  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  sub_100013188(&v28, (v22 + 6));
  v22[11] = a6;
  v22[12] = a7;
  v22[13] = a12;
  sub_100013188(a8, (v22 + 14));
  sub_100006F14(v31);
  return v22;
}

unint64_t sub_1008742CC()
{
  result = qword_100CA4C58;
  if (!qword_100CA4C58)
  {
    v3 = sub_10022E824(&qword_100CA4C50, &qword_100A2EEE0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4C58);
  }

  return result;
}

uint64_t sub_100874330(uint64_t a1)
{
  type metadata accessor for Measurement();
  v1 = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    v3 = sub_10013DB50();
    if (v4 > 0x3F)
    {
      return v3;
    }

    swift_getTupleTypeMetadata2();
    v3 = type metadata accessor for Array();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1008744B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Measurement();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v26 - v5;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v26 - v12;
  v14 = *(a1 + 28);
  v15 = *(a1 + 40);
  v17 = *(v16 + 48);
  v28 = v7;
  v18 = *(v7 + 16);
  v18(v13, v2 + v14, v6, v11);
  (v18)(&v13[v17], v2 + v15, v6);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v17], 1, v4) == 1)
    {
      (*(v28 + 8))(v13, v6);
LABEL_9:
      countAndFlagsBits = v2->_countAndFlagsBits;

      return countAndFlagsBits;
    }

    goto LABEL_6;
  }

  (v18)(v9, v13, v6);
  if (sub_100024D10(&v13[v17], 1, v4) == 1)
  {
    (*(v29 + 8))(v9, v4);
LABEL_6:
    (*(v27 + 8))(v13, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v20 = v29;
  v21 = &v13[v17];
  v22 = v26;
  (*(v29 + 32))(v26, v21, v4);
  swift_getWitnessTable(&protocol conformance descriptor for Measurement<A>, v4);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v20 + 8);
  v24(v22, v4);
  v24(v9, v4);
  (*(v28 + 8))(v13, v6);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = 42;
  v31 = 0xE100000000000000;
  String.append(_:)(*v2);
  return v30;
}

uint64_t sub_100874850(uint64_t a1)
{
  v3 = type metadata accessor for Measurement();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = *(v3 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = v24 - v11;
  (*(v5 + 16))(v7, v1 + *(a1 + 40), v4, v10);
  if (sub_100024D10(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 63;
  }

  else
  {
    (*(v8 + 32))(v12, v7, v3);
    Measurement.value.getter();
    v24[0] = Double.description.getter();
    v24[1] = v14;
    v15._countAndFlagsBits = 10272;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16 = Measurement.unit.getter();
    v17 = [v16 symbol];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v13 = v24[0];
    (*(v8 + 8))(v12, v3);
  }

  return v13;
}

void sub_100874AAC()
{
  sub_10000C778();
  v2 = v1;
  v40 = *(v1 + 16);
  v41 = v3;
  type metadata accessor for Measurement();
  sub_100013B04();
  v4 = type metadata accessor for Optional();
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v33 - v8;
  v12 = type metadata accessor for MeasurementEditorView(0, v40, v10, v11);
  v37 = v12;
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v13);
  v38 = v33 - v14;
  v15 = sub_10022E824(&qword_100CD0638, &unk_100A8F6E0);
  v36 = v15;
  sub_100008B1C();
  v18 = sub_100006F64(v16, &qword_100CD0638, &unk_100A8F6E0, v17);
  v35 = v18;
  v19 = sub_10001A098();
  WitnessTable = swift_getWitnessTable(v19, v12);
  v44 = v15;
  v45 = v12;
  v46 = v18;
  v47 = WitnessTable;
  v20 = type metadata accessor for NavigationLink();
  sub_1000037C4();
  v39 = v21;
  __chkstk_darwin(v22);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = v33 - v27;
  v33[1] = *v0;
  (*(v6 + 16))(v9, &v0[*(v2 + 40)], v4, v26);

  v29 = v40;
  sub_100874DAC();
  v42 = v29;
  v43 = v0;
  NavigationLink.init(destination:label:)();
  v30 = sub_1000233FC();
  v31 = swift_getWitnessTable(v30, v20);
  sub_1000833D8(v24, v20, v31);
  v32 = *(v39 + 8);
  v32(v24, v20);
  sub_1000833D8(v28, v20, v31);
  v32(v28, v20);
  sub_10000536C();
}

void sub_100874DAC()
{
  sub_10000C778();
  v1 = v0;
  v37 = v2;
  v38 = v3;
  v35 = v4;
  v36 = v5;
  v7 = v6;
  v34 = v8;
  v10 = v9;
  v11 = type metadata accessor for Measurement();
  v12 = type metadata accessor for Optional();
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  *v10 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for MeasurementEditorView(0, v1, v18, v19);
  v21 = v20[8];
  sub_10001B350(v10 + v21, 1, 1, v11);
  v22 = v20[11];
  sub_10001B350(v17, 1, 1, v11);
  v23 = sub_10000EB30();
  sub_1008753BC(v23, v24);
  v25 = (v10 + v20[7]);
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  (*(v14 + 24))(v10 + v21, v7, v12);
  (*(v14 + 16))(v17, v7, v12);
  type metadata accessor for State();
  sub_1000037E8();
  (*(v27 + 8))(v10 + v22);
  v28 = sub_10000EB30();
  sub_1008753BC(v28, v29);
  (*(v14 + 8))(v7, v12);
  v30 = v37;
  *(v10 + v20[9]) = v36;
  v31 = (v10 + v20[10]);
  v32 = v38;
  *v31 = v30;
  v31[1] = v32;
  sub_10000536C();
}

void *sub_100874FB4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static VerticalAlignment.center.getter();
  v13 = 1;
  sub_100875098(a2, v6, v7, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_100035AD0(__dst, &v10, &qword_100CD0628, &unk_100A75190);
  sub_1000180EC(v15, &qword_100CD0628, &unk_100A75190);
  memcpy(&v12[7], __dst, 0x50uLL);
  v8 = v13;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v8;
  return memcpy((a3 + 17), v12, 0x57uLL);
}

uint64_t sub_100875098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for MeasurementEditorRowView(0, a1, a2, a3);
  sub_1008744B4(v5);
  sub_10002D5A4();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100874850(v5);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16 & 1;
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *(a4 + 64) = v16 & 1;
  *(a4 + 72) = v18;
  sub_10010CD54(v6, v8, v10 & 1);

  sub_10010CD54(v13, v15, v17);

  sub_10010CD64(v13, v15, v17);

  sub_10010CD64(v6, v8, v10 & 1);
}

void sub_1008751F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_100035AD0(v23, &a9 - v33, &qword_100CA54B0, &qword_100A2F8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100463960(v34, v25);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v31, v26);
  }

  sub_10000536C();
}

uint64_t sub_1008753BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Measurement();
  sub_100013B04();
  v3 = type metadata accessor for Optional();
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  v7 = __chkstk_darwin(v6);
  (*(v5 + 16))(&v10 - v8, a1, v3, v7);
  State.init(wrappedValue:)();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1008754A8@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Measurement();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  type metadata accessor for MeasurementEditorView(0, a1, v13, v14);
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v8, 1, v4) == 1)
  {
    result = (*(v6 + 8))(v8, v5);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v9 + 32))(v12, v8, v4);
    Measurement.value.getter();
    v16 = Double.description.getter();
    v17 = v18;
    result = (*(v9 + 8))(v12, v4);
  }

  *a2 = v16;
  a2[1] = v17;
  return result;
}

void *sub_10087569C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Measurement();
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v18 = v43 - v17;
  __chkstk_darwin(v19);
  v22 = *a1;
  v23 = a1[1];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v36 = v43 - v20;
    sub_10001B350(v43 - v20, 1, 1, v8);
    type metadata accessor for MeasurementEditorView(0, a5, v37, v38);
    (*(v12 + 16))(v18, v36, v11);
    type metadata accessor for State();
    State.wrappedValue.setter();
    return (*(v12 + 8))(v36, v11);
  }

  v44 = v21;
  v45 = v43 - v20;

  result = sub_10022F9A0(v22, v23);
  if ((v28 & 1) == 0)
  {
    v43[1] = result;
    v43[4] = a5;
    v29 = type metadata accessor for MeasurementEditorView(0, a5, v26, v27);
    v30 = *(v29 + 44);
    v31 = v11;
    v43[2] = type metadata accessor for State();
    v43[3] = v30;
    State.wrappedValue.getter();
    if (sub_100024D10(v14, 1, v8))
    {
      v32 = v12;
      v33 = *(v12 + 8);
      v33(v14, v11);
      v48 = *(a4 + *(v29 + 36));
      swift_getTupleTypeMetadata2();
      v34 = type metadata accessor for Array();
      swift_getWitnessTable(&protocol conformance descriptor for [A], v34);
      result = Collection.first.getter();
      if (!v47)
      {
        __break(1u);
        return result;
      }

      v35 = v11;
    }

    else
    {
      v39 = v46;
      (*(v46 + 16))(v10, v14, v8);
      v40 = v12;
      v33 = *(v12 + 8);
      v33(v14, v31);
      Measurement.unit.getter();
      v41 = v10;
      v32 = v40;
      (*(v39 + 8))(v41, v8);
      v35 = v31;
    }

    v42 = v44;
    Measurement.init(value:unit:)();
    sub_10001B350(v42, 0, 1, v8);
    (*(v32 + 16))(v45, v42, v35);
    State.wrappedValue.setter();
    return (v33)(v42, v35);
  }

  return result;
}

void sub_100875AEC()
{
  sub_10000C778();
  v25 = v1;
  v26 = v2;
  v23 = v0;
  v24 = v3;
  v5 = v4;
  sub_1000037C4();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v10);
  v22 = *(v7 + 16);
  v22(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  v21 = *(v5 + 16);
  *(v14 + 4) = v21;
  v20 = *(v7 + 32);
  v20(&v14[v13], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  (v22)(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  v17 = v20;
  v18 = v21;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v18;
  v17(&v16[v13], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  Binding.init(get:set:)();
  sub_10000536C();
}

uint64_t sub_100875CA4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24[0] = a3;
  v5 = type metadata accessor for Measurement();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - v8;
  v10 = *(v5 - 8);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  v16 = type metadata accessor for MeasurementEditorView(0, a2, v14, v15);
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v9, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = (*(v10 + 32))(v13, v9, v5);
    v24[2] = *(a1 + *(v16 + 36));
    __chkstk_darwin(v18);
    v24[-2] = a2;
    v24[-1] = v13;

    swift_getTupleTypeMetadata2();
    v19 = type metadata accessor for Array();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v19);
    Sequence.first(where:)();

    if (v25)
    {
      v21 = v26;
      v20 = v27;

      v22 = v24[0];
      *v24[0] = v21;
      *(v22 + 8) = v20;
      return (*(v10 + 8))(v13, v5);
    }

    result = (*(v10 + 8))(v13, v5);
  }

  v23 = v24[0];
  *v24[0] = 0x6E776F6E6B6E55;
  *(v23 + 8) = 0xE700000000000000;
  return result;
}

uint64_t sub_100875F90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1004CF8E0();
  type metadata accessor for Measurement();
  v3 = Measurement.unit.getter();
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

uint64_t sub_100876010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Measurement();
  v9 = type metadata accessor for Optional();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  __chkstk_darwin(v14);
  v16 = v31 - v15;
  v18 = *a1;
  v17 = a1[1];
  v21 = type metadata accessor for MeasurementEditorView(0, a5, v19, v20);
  v37 = *(a4 + *(v21 + 36));
  v34 = a5;
  v35 = v18;
  v36 = v17;

  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v22);
  Sequence.first(where:)();

  v24 = v38;
  if (v38)
  {

    v25 = *(v21 + 44);
    type metadata accessor for State();
    v31[1] = v25;
    State.wrappedValue.getter();
    v26 = sub_100024D10(v13, 1, v8);
    v31[0] = a4;
    if (!v26)
    {
      Measurement.value.getter();
    }

    v27 = v8;
    v28 = v33;
    v29 = *(v33 + 8);
    v29(v13, v9);
    v30 = v24;
    Measurement.init(value:unit:)();
    sub_10001B350(v16, 0, 1, v27);
    (*(v28 + 16))(v32, v16, v9);
    State.wrappedValue.setter();

    return (v29)(v16, v9);
  }

  return result;
}

uint64_t sub_1008762E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == a2 && *(a1 + 16) == a3)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_100876340()
{
  sub_10000C778();
  v81 = v1;
  v82 = v0;
  v88 = v2;
  v3 = v1;
  sub_100007FD0();
  v84 = v4;
  v86 = *(v5 + 64);
  __chkstk_darwin(v6);
  v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v75 = v8;
  sub_100007FD0();
  v87 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v85 = &v68 - v11;
  sub_10022E824(&qword_100CDFF60, &qword_100A8F7A8);
  v89 = *(v3 + 16);
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  v12 = type metadata accessor for Array();
  v13 = sub_10022E824(&qword_100CDFF68, &qword_100A8F7B0);
  v14 = sub_100016D5C();
  WitnessTable = swift_getWitnessTable(v14, v12);
  v92 = v12;
  v93 = &type metadata for String;
  v94 = v13;
  v95 = WitnessTable;
  v96 = &protocol witness table for String;
  v16 = type metadata accessor for ForEach();
  v92 = &type metadata for Text;
  v93 = &type metadata for String;
  v94 = &protocol witness table for Text;
  v95 = &protocol witness table for String;
  sub_100004CD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_100008C6C();
  v18 = swift_getWitnessTable(v17, v16, &OpaqueTypeConformance2);
  v92 = &type metadata for Text;
  v93 = &type metadata for String;
  v94 = v16;
  v95 = &protocol witness table for Text;
  v96 = &protocol witness table for String;
  v97 = v18;
  type metadata accessor for Picker();
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  v19 = type metadata accessor for TupleView();
  v20 = sub_1000065AC();
  v21 = swift_getWitnessTable(v20, v19);
  v92 = &type metadata for Never;
  v93 = v19;
  v94 = &protocol witness table for Never;
  v95 = v21;
  v22 = type metadata accessor for List();
  v23 = type metadata accessor for InlinePickerStyle();
  v24 = sub_10000694C();
  v25 = swift_getWitnessTable(v24, v22);
  v92 = v22;
  v93 = v23;
  v94 = v25;
  v95 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = v22;
  v93 = v23;
  v94 = v25;
  v95 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v26 = type metadata accessor for VStack();
  sub_1000037C4();
  v79 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = &v68 - v29;
  v31 = sub_100008CF4();
  v32 = swift_getWitnessTable(v31, v26);
  v33 = sub_10002D5A4();
  v92 = v26;
  v93 = &type metadata for String;
  v94 = v32;
  v95 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v76 = v34;
  sub_100007FD0();
  v80 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  v69 = &v68 - v37;
  v92 = v26;
  v93 = &type metadata for String;
  v94 = v32;
  v95 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v74 = v38;
  sub_100005DCC();
  v73 = sub_100006F64(v39, &qword_100CA5528, &qword_100A2F940, v40);
  v92 = v34;
  v93 = v8;
  v94 = v38;
  v95 = v73;
  v77 = &opaque type descriptor for <<opaque return type of View.navigationBarItems<A>(trailing:)>>;
  v41 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v78 = v42;
  __chkstk_darwin(v43);
  v70 = &v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v72 = &v68 - v46;
  v47 = v82;
  v90 = v89;
  v91 = v82;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ(OpaqueTypeMetadata2);
  VStack.init(alignment:spacing:content:)();
  v48 = v81;
  v49 = (v47 + *(v81 + 28));
  v51 = *v49;
  v50 = v49[1];
  v92 = v51;
  v93 = v50;
  View.navigationTitle<A>(_:)();
  (*(v79 + 8))(v30, v26);
  LocalizedStringKey.init(stringLiteral:)();
  v52 = v83;
  v53 = v84;
  (*(v84 + 16))(v83, v47, v48);
  v54 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v89;
  (*(v53 + 32))(v55 + v54, v52, v48);
  v56 = v85;
  Button<>.init(_:action:)();
  v57 = v76;
  v58 = v75;
  v59 = v74;
  v60 = v73;
  v61 = v69;
  View.navigationBarItems<A>(trailing:)();
  (*(v87 + 8))(v56, v58);
  (*(v80 + 8))(v61, v57);
  v92 = v57;
  v93 = v58;
  v94 = v59;
  v95 = v60;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v72;
  v64 = sub_10000EB30();
  sub_1000833D8(v64, v65, v62);
  v66 = *(v78 + 8);
  v67 = sub_10000EB30();
  v66(v67);
  sub_1000833D8(v63, v41, v62);
  (v66)(v63, v41);
  sub_10000536C();
}

uint64_t sub_100876AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a1;
  v36 = a3;
  v3 = type metadata accessor for InlinePickerStyle();
  v30 = v3;
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022E824(&qword_100CDFF60, &qword_100A8F7A8);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Array();
  v7 = sub_10022E824(&qword_100CDFF68, &qword_100A8F7B0);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v6);
  v39 = v6;
  v40 = &type metadata for String;
  v41 = v7;
  v42 = WitnessTable;
  v43 = &protocol witness table for String;
  v9 = type metadata accessor for ForEach();
  v39 = &type metadata for Text;
  v40 = &type metadata for String;
  v41 = &protocol witness table for Text;
  v42 = &protocol witness table for String;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v9, &OpaqueTypeConformance2);
  v39 = &type metadata for Text;
  v40 = &type metadata for String;
  v41 = v9;
  v42 = &protocol witness table for Text;
  v43 = &protocol witness table for String;
  v44 = v10;
  type metadata accessor for Picker();
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for TupleView();
  v12 = swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v11);
  v39 = &type metadata for Never;
  v40 = v11;
  v41 = &protocol witness table for Never;
  v42 = v12;
  v13 = type metadata accessor for List();
  v32 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = swift_getWitnessTable(&protocol conformance descriptor for List<A, B>, v13, v14);
  v39 = v13;
  v40 = v3;
  v41 = v17;
  v42 = &protocol witness table for InlinePickerStyle;
  v31 = &opaque type descriptor for <<opaque return type of View.pickerStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;
  v37 = v33;
  v38 = v34;
  List<>.init(content:)();
  InlinePickerStyle.init()();
  v25 = v30;
  View.pickerStyle<A>(_:)();
  (*(v35 + 8))(v5, v25);
  (*(v32 + 8))(v16, v13);
  v39 = v13;
  v40 = v25;
  v41 = v17;
  v42 = &protocol witness table for InlinePickerStyle;
  v26 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v21, OpaqueTypeMetadata2, v26);
  v27 = *(v19 + 8);
  v27(v21, OpaqueTypeMetadata2);
  sub_1000833D8(v24, OpaqueTypeMetadata2, v26);
  return (v27)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_100876F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v47 = a3;
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Array();
  sub_10022E824(&qword_100CDFF68, &qword_100A8F7B0);
  swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
  v45 = type metadata accessor for ForEach();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v45, &OpaqueTypeConformance2);
  v57 = &type metadata for Text;
  v58 = &type metadata for String;
  v59 = v45;
  v60 = &protocol witness table for Text;
  v61 = &protocol witness table for String;
  v62 = WitnessTable;
  v6 = type metadata accessor for Picker();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v41 - v10;
  v46 = sub_10022C350(&qword_100CDFF60, &qword_100A8F7A8);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = LocalizedStringKey.init(stringLiteral:)();
  v57 = Text.init(_:tableName:bundle:comment:)(v16, v18, v17 & 1, v19, 0, 0, 0, 0, 0, 256);
  v58 = v20;
  LOBYTE(v59) = v21 & 1;
  v60 = v22;
  v51 = a2;
  v52 = a1;
  sub_10022C350(&qword_100CDFF70, &qword_100A8F7B8);
  v23 = sub_10022E824(&qword_100CDFF78, &qword_100A8F7C0);
  v24 = sub_100006F64(&qword_100CDFF80, &qword_100CDFF78, &qword_100A8F7C0, &protocol conformance descriptor for TextField<A>);
  v55 = v23;
  v56 = v24;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MeasurementEditorView(0, a2, v25, v26);
  v27 = v41;
  sub_100875AEC();
  v57 = v28;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v49 = a2;
  v50 = v27;
  Picker<>.init(_:selection:content:)();
  v32 = swift_getWitnessTable(&protocol conformance descriptor for Picker<A, B, C>, v6);
  v33 = v44;
  sub_1000833D8(v8, v6, v32);
  v34 = v43;
  v35 = *(v43 + 8);
  v35(v8, v6);
  v36 = v12;
  v37 = v12;
  v38 = v46;
  (*(v48 + 16))(v37, v15, v46);
  v57 = v36;
  (*(v34 + 16))(v8, v33, v6);
  v58 = v8;
  v55 = v38;
  v56 = v6;
  v53 = sub_100877F90();
  v54 = v32;
  sub_10012E24C(&v57, 2, &v55);
  v35(v33, v6);
  v39 = *(v48 + 8);
  v39(v15, v38);
  v35(v8, v6);
  return (v39)(v36, v38);
}

uint64_t sub_10087757C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CDFF78, &qword_100A8F7C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MeasurementEditorView(0, a2, v7, v8);
  sub_100875AEC();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  sub_100006F64(&qword_100CDFF80, &qword_100CDFF78, &qword_100A8F7C0, &protocol conformance descriptor for TextField<A>);
  View.keyboardType(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100877770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for Array();
  v23 = &type metadata for String;
  v24 = sub_10022E824(&qword_100CDFF68, &qword_100A8F7B0);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v22, v24, v19);
  v26 = &protocol witness table for String;
  v5 = type metadata accessor for ForEach();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v21[1] = *(a1 + *(type metadata accessor for MeasurementEditorView(0, a2, v12, v13) + 36));
  v20 = a2;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;

  v22 = &type metadata for Text;
  v23 = &type metadata for String;
  v24 = &protocol witness table for Text;
  WitnessTable = &protocol witness table for String;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v21[0] = OpaqueTypeConformance2;
  v14 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v5, v21);
  sub_1000833D8(v8, v5, v14);
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_1000833D8(v11, v5, v14);
  return (v15)(v11, v5);
}

double sub_100877A40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = v6;
  v8._object = v5;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v8);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10 = LocalizedStringKey.init(stringInterpolation:)();
  *a2 = Text.init(_:tableName:bundle:comment:)(v10, v12, v11 & 1, v13, 0, 0, 0, 0, 0, 256);
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 1;

  return result;
}

uint64_t sub_100877B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v5);
  v7 = var50 - v6;
  type metadata accessor for Measurement();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = var50 - v10;
  v14 = *(a1 + *(type metadata accessor for MeasurementEditorView(0, a2, v12, v13) + 40));
  type metadata accessor for State();
  State.wrappedValue.getter();
  v14(v11);
  v15 = (*(v9 + 8))(v11, v8);
  sub_1008751F0(v15, v16, v17, v18, v19, v20, v21, v22, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v7, &qword_100CA6D28, &qword_100A4CEA0);
}

uint64_t sub_100877D5C(uint64_t a1)
{
  sub_100081BC8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for Measurement();
    v2 = type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeMetadata2();
      v5 = type metadata accessor for Array();
      if (v6 > 0x3F)
      {
        return v5;
      }

      v5 = sub_10013DB50();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        v2 = type metadata accessor for State();
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

uint64_t sub_100877F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for MeasurementEditorView(0, v5, a3, a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_100877B50(v7, v5);
}

unint64_t sub_100877F90()
{
  result = qword_100CDFF88;
  if (!qword_100CDFF88)
  {
    v4[9] = v0;
    v4[10] = v1;
    v3 = sub_10022E824(&qword_100CDFF60, &qword_100A8F7A8);
    v4[3] = sub_10022E824(&qword_100CDFF78, &qword_100A8F7C0);
    v4[4] = sub_100006F64(&qword_100CDFF80, &qword_100CDFF78, &qword_100A8F7C0, &protocol conformance descriptor for TextField<A>);
    v4[0] = &protocol witness table for Text;
    v4[1] = swift_getOpaqueTypeConformance2();
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CDFF88);
  }

  return result;
}

uint64_t sub_10087812C(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = *(type metadata accessor for MeasurementEditorView(0, v5, a3, a4) - 8);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return a1(v7, v8, v9, v5);
}

uint64_t sub_1008781C8()
{
  v2 = *(v1 + 32);
  v3 = sub_10003C9C4();
  type metadata accessor for MeasurementEditorView(v3, v4, v5, v6);
  sub_100003A0C();
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  v9 = v1 + v8;
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v11 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v12 + 8))(v9 + v11);
  }

  sub_10001673C(v0[7]);

  v13 = v0[8];
  sub_10003C9C4();
  v14 = type metadata accessor for Measurement();
  if (!sub_1000187E0(v14))
  {
    sub_100003B20();
    (*(v15 + 8))(v9 + v13, v2);
  }

  sub_10001673C(v0[10]);

  if (!sub_100024B74())
  {
    sub_100003B20();
    (*(v16 + 8))(v0, v2);
  }

  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_1008783C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = *(type metadata accessor for MeasurementEditorView(0, v6, a3, a4) - 8);
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v9, v10, v6);
}

uint64_t sub_100878464(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000011;
  }

  else
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t sub_1008784C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v96 = a5;
  *&v97 = a1;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_100003848();
  v93 = v12;
  __chkstk_darwin(v13);
  v90 = &v85 - v14;
  v15 = type metadata accessor for SevereMessage(0);
  __chkstk_darwin(v15);
  sub_100003848();
  v92 = v16;
  __chkstk_darwin(v17);
  if (!a4)
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570(&qword_100CA26F0);
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90B38);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v10;
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Attempted to parse APSMessage without channel identifier";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v22, v23, v26, v25, 2u);
      sub_100003884(v25);

      (*(v11 + 8))(v96, v24);
LABEL_46:
      v76 = 1;
      return sub_10001B350(a6, v76, 1, v15);
    }

LABEL_45:

    v73 = sub_100006964();
    v75(v73, v74);
    goto LABEL_46;
  }

  v89 = &v85 - v18;
  v98 = 0x6E6F6973726576;
  v99 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10001CFCC();
  sub_100166478(&v100);
  v94 = v11;
  v95 = v15;
  if (!v105)
  {
    sub_1003C1574(v104);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v20 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_12;
  }

  v19 = v98;
  if ((v98 - 1) > 1)
  {
    v59 = v11;

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570(&qword_100CA26F0);
    }

    v60 = type metadata accessor for Logger();
    sub_10000703C(v60, qword_100D90B38);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v10;
      v64 = swift_slowAlloc();
      v65 = a6;
      v66 = swift_slowAlloc();
      v100 = v66;
      *v64 = 136446210;
      v104[0] = v19;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = sub_100078694(v67, v68, &v100);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "Attempted to parse APSMessage with unsupported version %{public}s", v64, 0xCu);
      sub_100006F14(v66);
      v70 = v66;
      a6 = v65;
      sub_100003884(v70);
      sub_100003884(v64);

      (*(v59 + 8))(v96, v63);
    }

    else
    {

      v82 = sub_100006964();
      v84(v82, v83);
    }

    v76 = 1;
    v15 = v95;
    return sub_10001B350(a6, v76, 1, v15);
  }

  LOBYTE(v15) = 0;
  v20 = v98;
LABEL_12:
  v91 = v10;
  if (qword_100CA26F0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v27 = type metadata accessor for Logger();
    v88 = sub_10000703C(v27, qword_100D90B38);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v87 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v86 = a3;
      v33 = v32;
      v100 = v32;
      *v31 = 136446210;
      v34 = sub_100878464(v20, v15);
      v85 = v20;
      v36 = v15;
      v15 = a6;
      v37 = sub_100078694(v34, v35, &v100);
      v20 = v85;

      *(v31 + 4) = v37;
      a6 = v15;
      LOBYTE(v15) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Parse APSMessage with version %{public}s", v31, 0xCu);
      sub_100006F14(v33);
      v38 = v33;
      a3 = v86;
      sub_100003884(v38);
      v39 = v31;
      a2 = v87;
      sub_100003884(v39);
    }

    v40 = v20 == 2 ? v15 : 1;
    v41 = v91;
    if ((v40 & 1) == 0)
    {
      break;
    }

    v98 = 0x73746E657665;
    v99 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    sub_10001CFCC();

    sub_100166478(&v100);
    v42 = v94;
    v15 = v95;
    if (!v105)
    {
      v57 = sub_100006964();
      v58(v57);

      sub_1003C1574(v104);
      goto LABEL_46;
    }

    sub_10022C350(&qword_100CDFF90, &qword_100A8F810);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v71 = sub_100006964();
      v72(v71);

      goto LABEL_46;
    }

    v90 = a6;
    v43 = v98;
    (*(v42 + 16))(v93, v96, v41);
    v20 = 0;
    v44 = v92;
    *v92 = v97;
    v44[1] = a2;
    v44[2] = a3;
    v44[3] = a4;
    a6 = *(v43 + 16);
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (a6 == v20)
      {

        v78 = v94;
        v79 = v91;
        (*(v94 + 8))(v96, v91);
        v81 = v92;
        v80 = v93;
        v92[4] = v45;
        v15 = v95;
        (*(v78 + 32))(&v81[*(v95 + 28)], v80, v79);
        v55 = v89;
        sub_1003B3344(v81, v89);
        a6 = v90;
        goto LABEL_49;
      }

      if (v20 >= *(v43 + 16))
      {
        break;
      }

      v104[0] = *(v43 + 8 * v20 + 32);
      sub_1008796C0(&v100);
      v46 = v101;
      if (v101)
      {
        a4 = v100;
        a3 = v102;
        v97 = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069F2BC();
          v45 = v48;
        }

        a2 = v45[2];
        v15 = a2 + 1;
        if (a2 >= v45[3] >> 1)
        {
          sub_10069F2BC();
          v45 = v49;
        }

        v45[2] = v15;
        v47 = &v45[5 * a2];
        v47[4] = a4;
        v47[5] = v46;
        v47[6] = a3;
        *(v47 + 7) = v97;
      }

      ++v20;
    }

    __break(1u);
LABEL_53:
    sub_10001F570(&qword_100CA26F0);
  }

  v98 = 0x737472656C61;
  v99 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_10001CFCC();

  sub_100166478(&v100);
  v11 = v94;
  v15 = v95;
  if (!v105)
  {

    sub_1003C1574(v104);
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_42:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v41;
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Attempted to parse APSMessage with version 2, without binary alert payload";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v92 = v99;
  v93 = v98;
  v50 = v90;
  v51 = a6;
  v52 = a3;
  v53 = a2;
  v54 = v96;
  (*(v11 + 16))(v90, v96, v41);
  v55 = v89;
  v56 = v52;
  a6 = v51;
  sub_100878E68(v97, v53, v56, a4, v93, v92, v50, v89);
  (*(v11 + 8))(v54, v41);
LABEL_49:
  sub_1003B3344(v55, a6);
  v76 = 0;
  return sub_10001B350(a6, v76, 1, v15);
}

uint64_t sub_100878E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v55 = a8;
  v56 = a7;
  v53 = a3;
  v54 = a4;
  v65 = a2;
  v62 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v61 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a5;
  v68 = a6;
  sub_1006DE088(a5, a6);
  v13 = 0;
  v60 = (v11 + 8);
  v14 = _swiftEmptyArrayStorage;
  *(&v15 + 1) = 8;
  v59 = xmmword_100A3B020;
  *&v15 = 136315394;
  v57 = v15;
  v52 = a6;
  v51 = a5;
  v58 = v10;
  while (2)
  {
    v16 = v61;
    switch(a6 >> 62)
    {
      case 1uLL:
        v17 = a5;
        v18 = a5 >> 32;
        goto LABEL_7;
      case 2uLL:
        v17 = *(a5 + 16);
        v18 = *(a5 + 24);
LABEL_7:
        if (v17 != v18)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      case 3uLL:
        goto LABEL_19;
      default:
        if ((a6 & 0xFF000000000000) == 0)
        {
LABEL_19:
          sub_10030F778(v51, v52);
          v39 = v55;
          v38 = v56;
          v41 = v53;
          v40 = v54;
          goto LABEL_20;
        }

LABEL_8:
        if (v13 != 500)
        {
          static FixedSizeTypeBinaryCodable.read(from:)();
          v19 = UUID.uuidString.getter();
          v21 = v20;
          (*v60)(v16, v10);
          sub_10022C350(&qword_100CAB9C0, &unk_100A3A830);
          v22 = swift_allocObject();
          *(v22 + 16) = v59;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 32) = (bswap32(v66[0]) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 40) = (bswap32(v66[0]) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 48) = (bswap32(v66[0]) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 56) = (bswap32(v66[0]) >> 16) / 100.0;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10069F2BC();
            v14 = v36;
          }

          v24 = v14[2];
          if (v24 >= v14[3] >> 1)
          {
            sub_10069F2BC();
            v14 = v37;
          }

          v14[2] = v24 + 1;
          v64 = v14;
          v25 = &v14[5 * v24];
          v25[4] = v19;
          v25[5] = v21;
          v26 = v65;
          v25[6] = v62;
          v25[7] = v26;
          v25[8] = v22;
          if (qword_100CA26F0 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_10000703C(v27, qword_100D90B38);

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v66 = swift_slowAlloc();
            *v30 = v57;
            v31 = sub_100078694(v19, v21, v66);

            *(v30 + 4) = v31;
            *(v30 + 12) = 2080;
            v32 = Array.description.getter();
            v34 = v33;

            v35 = sub_100078694(v32, v34, v66);

            *(v30 + 14) = v35;
            _os_log_impl(&_mh_execute_header, v28, v29, "Received weather alert: %s - %s", v30, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v14 = v64;
          v13 = v63 + 1;
          a5 = v67;
          a6 = v68;
          v10 = v58;
          continue;
        }

        if (qword_100CA26F0 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000703C(v46, qword_100D90B38);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        v49 = os_log_type_enabled(v47, v48);
        v41 = v53;
        v40 = v54;
        if (v49)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Breaking out of SevereMessage parsing", v50, 2u);
        }

        sub_10030F778(v51, v52);

        v39 = v55;
        v38 = v56;
LABEL_20:
        sub_10030F778(v67, v68);
        v42 = v65;
        *v39 = v62;
        *(v39 + 1) = v42;
        *(v39 + 2) = v41;
        *(v39 + 3) = v40;
        *(v39 + 4) = v14;
        v43 = *(type metadata accessor for SevereMessage(0) + 28);
        v44 = type metadata accessor for Date();
        return (*(*(v44 - 8) + 32))(&v39[v43], v38, v44);
    }
  }
}

double sub_1008796C0@<D0>(void *a1@<X8>)
{
  v2 = sub_10087A800();
  if (!v2 || (v12 = v2, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100CA26F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000703C(v4, qword_100D90B38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Message event payload did not include identifier";
    goto LABEL_14;
  }

  if (sub_10087A800())
  {
    sub_10022C350(&qword_100CCF578, &qword_100A88020);
    if (swift_dynamicCast())
    {
      *a1 = v10;
      a1[1] = v11;
      a1[2] = v10;
      a1[3] = v11;
      a1[4] = v12;

      return result;
    }
  }

  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90B38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Message event payload did not include bounding box";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);
  }

LABEL_15:

  a1[4] = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t sub_100879918()
{
  _StringGuts.grow(_:)(25);

  strcpy(v15, "Identifier: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A737472656C410ALL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v3 = *(countAndFlagsBits + 16);
  if (v3)
  {
    sub_10000369C(0, v3, 0);
    v4 = (countAndFlagsBits + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_10000369C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

uint64_t type metadata accessor for SevereMessage(uint64_t a1)
{
  result = qword_100CDFFF0;
  if (!qword_100CDFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100879B2C(uint64_t a1)
{
  sub_100879BC0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100879BC0()
{
  if (!qword_100CE0000)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0000);
    }
  }
}

uint64_t sub_100879C58()
{
  sub_100049E20();
  if (v3 && (v4 = v2, v5 = sub_10023819C(v1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for Tips.Status();
    sub_1000037E8();
    (*(v10 + 16))(v0, v8 + *(v10 + 72) * v7, v9);
    v11 = sub_10000FEF4();
    v14 = v9;
  }

  else
  {
    type metadata accessor for Tips.Status();
    v11 = sub_100007E1C();
  }

  return sub_10001B350(v11, v12, v13, v14);
}

double sub_100879D00()
{
  sub_100075174();
  if (v2 && (v3 = v1, v4 = sub_100031B34(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_100109514(v6, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_100879D60()
{
  sub_100049E20();
  if (v2 && (v3 = v1, sub_100237FB4(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for CalendarMoonPhaseData(0);
    sub_1000037E8();
    sub_1001AF774(v7 + *(v9 + 72) * v6, v0, type metadata accessor for CalendarMoonPhaseData);
    v10 = sub_10000FEF4();
    v13 = v8;
  }

  else
  {
    type metadata accessor for CalendarMoonPhaseData(0);
    v10 = sub_100007E1C();
  }

  return sub_10001B350(v10, v11, v12, v13);
}

uint64_t sub_100879E04(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_100238288();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 16 * v2);

  return v4;
}

uint64_t sub_100879E5C()
{
  sub_100049E20();
  if (v4 && (v5 = v2, v6 = sub_1000D5F5C(v1, v3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for HourTemperatureStatistics();
    sub_1000037E8();
    (*(v11 + 16))(v0, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_10000FEF4();
    v15 = v10;
  }

  else
  {
    type metadata accessor for HourTemperatureStatistics();
    v12 = sub_100007E1C();
  }

  return sub_10001B350(v12, v13, v14, v15);
}

double sub_100879F04()
{
  sub_100049E20();
  if (v3 && (v4 = v2, v5 = sub_100166298(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;

    sub_100109514(v7, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_100879F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100031B34();
  if (v4)
  {
    return sub_100015064(v3);
  }

  else
  {
    return 0;
  }
}

void sub_100879FFC()
{
  sub_100075174();
  v2 = 0uLL;
  if (v3)
  {
    v4 = v1;
    v5 = sub_100031B34();
    if (v6)
    {
      v7 = 0;
      v8 = (*(v4 + 56) + 32 * v5);
      v2 = *v8;
      v9 = v8[1];
    }

    else
    {
      v7 = 1;
      v9 = 0uLL;
      v2 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v9 = 0uLL;
  }

  *v0 = v2;
  *(v0 + 16) = v9;
  *(v0 + 32) = v7;
}

uint64_t sub_10087A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100075174();
  if (v7 && (v8 = v6, v9 = sub_100031B34(), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = a4(0);
    sub_1000037E8();
    (*(v14 + 16))(v4, v12 + *(v14 + 72) * v11, v13);
    v15 = sub_10000FEF4();
    v18 = v13;
  }

  else
  {
    a4(0);
    v15 = sub_100007E1C();
  }

  return sub_10001B350(v15, v16, v17, v18);
}

uint64_t sub_10087A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100031B34();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100015064(v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_10087A168(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1002382E8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100015064(v2);
}

uint64_t sub_10087A1B4(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000D5F5C(a1, a3);
  if (v4)
  {
    return sub_100015064(v3);
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10087A208(uint64_t a1)
{
  Hasher.init(_seed:)();
  StubLocalSearchRequestService.Errors.hash(into:)();
  return Hasher._finalize()();
}

uint64_t StubLocalSearchRequestService.__allocating_init(locations:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t StubLocalSearchRequestService.performLocalSearch(with:)()
{
  v2 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v2 - 8);
  sub_100017038();
  sub_10000548C();
  __chkstk_darwin(v3);
  sub_1000088C0();
  __chkstk_darwin(v4);
  sub_100006970();
  if (sub_100024D10(v1, 1, v0) == 1)
  {
    sub_10087A430(v1);
    sub_10087A498();
    swift_allocError();
    v5 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    sub_100003B6C(v5);
    return Promise.init(error:)();
  }

  else
  {
    v7 = sub_10001A0B0();
    v8(v7);
    v9 = sub_100004CEC();
    v10(v9);
    v11 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    v6 = sub_100003B6C(v11);
    Promise.init(value:)();
    v12 = sub_100028CA8();
    v13(v12);
  }

  return v6;
}

uint64_t sub_10087A430(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10087A498()
{
  result = qword_100CE0038;
  if (!qword_100CE0038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StubLocalSearchRequestService.Errors, &type metadata for StubLocalSearchRequestService.Errors, v0, v1);
    atomic_store(result, &qword_100CE0038);
  }

  return result;
}

uint64_t StubLocalSearchRequestService.performLocalSearch(with:calloutTitle:)()
{
  v2 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v2 - 8);
  sub_100017038();
  sub_10000548C();
  __chkstk_darwin(v3);
  sub_1000088C0();
  __chkstk_darwin(v4);
  sub_100006970();
  if (sub_100024D10(v1, 1, v0) == 1)
  {
    sub_10087A430(v1);
    sub_10087A498();
    swift_allocError();
    v5 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    sub_100003B6C(v5);
    return Promise.init(error:)();
  }

  else
  {
    v7 = sub_10001A0B0();
    v8(v7);
    v9 = sub_100004CEC();
    v10(v9);
    v11 = sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    v6 = sub_100003B6C(v11);
    Promise.init(value:)();
    v12 = sub_100028CA8();
    v13(v12);
  }

  return v6;
}

uint64_t StubLocalSearchRequestService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10087A6D4()
{
  result = qword_100CE0040;
  if (!qword_100CE0040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StubLocalSearchRequestService.Errors, &type metadata for StubLocalSearchRequestService.Errors, v0, v1);
    atomic_store(result, &qword_100CE0040);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StubLocalSearchRequestService.Errors(_BYTE *result, int a2, int a3)
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

uint64_t sub_10087A804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10087A844(uint64_t result, int a2, int a3)
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

uint64_t sub_10087A8A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6D614E68746E6F6DLL && a2 == 0xED0000676E6F4C65;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E68746E6F6DLL && a2 == 0xEE0074726F685365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54657369726E7573 && a2 == 0xEB00000000656D69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69547465736E7573 && a2 == 0xEA0000000000656DLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6874646957726162 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000100AE2920 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10087AAB4(char a1)
{
  result = 0x6D614E68746E6F6DLL;
  switch(a1)
  {
    case 2:
      result = 0x54657369726E7573;
      break;
    case 3:
      result = 0x69547465736E7573;
      break;
    case 4:
      result = 0x6874646957726162;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10087AB80(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 2) == *(a2 + 16) ? (v5 = *(a1 + 3) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 4) == *(a2 + 32) ? (v6 = *(a1 + 5) == *(a2 + 40)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 6) == *(a2 + 48) ? (v7 = *(a1 + 7) == *(a2 + 56)) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a1[8] == *(a2 + 64)))))
  {
    return a1[9] == *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10087AC50(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE00F8, &qword_100A8FA88);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10087B2D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  sub_10001CFE8(v11, v12);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    sub_10001CFE8(v13, v14);
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 2;
    sub_10001CFE8(v15, v16);
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v27) = 3;
    sub_10001CFE8(v17, v18);
    v27 = v3[8];
    HIBYTE(v26) = 4;
    v19 = sub_10048F96C();
    v22 = sub_1000069B0(v19, v20, v21, &type metadata for CGFloat);
    v27 = v3[9];
    HIBYTE(v26) = 5;
    sub_1000069B0(v22, v23, v24, &type metadata for CGFloat);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10087AE08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10022C350(&qword_100CE00E8, &qword_100A8FA80);
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000161C0(a1, a1[3]);
  sub_10087B2D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v6 = sub_100010DEC();
  v8 = v7;
  v20 = sub_100010DEC();
  v23 = v9;
  v10 = sub_100010DEC();
  v21 = v11;
  v19 = v10;
  LOBYTE(v25[0]) = 3;
  v18 = sub_100010DEC();
  v22 = v12;
  LOBYTE(__src[0]) = 4;
  sub_10048F8C0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v25[0];
  v26[0] = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = sub_1000102B8();
  v15(v14);
  v16 = v27;
  __src[0] = v6;
  __src[1] = v8;
  __src[2] = v20;
  __src[3] = v23;
  __src[4] = v19;
  __src[5] = v21;
  __src[6] = v18;
  __src[7] = v22;
  __src[8] = v13;
  __src[9] = v27;
  sub_1007C12F4(__src, v25);
  sub_100006F14(a1);
  v25[0] = v6;
  v25[1] = v8;
  v25[2] = v20;
  v25[3] = v23;
  v25[4] = v19;
  v25[5] = v21;
  v25[6] = v18;
  v25[7] = v22;
  v25[8] = v13;
  v25[9] = v16;
  sub_100688F50(v25);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_10087B1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10087A8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10087B1F0(uint64_t a1)
{
  v2 = sub_10087B2D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10087B22C(uint64_t a1)
{
  v2 = sub_10087B2D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10087B26C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10087AE08(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_10087B2D0()
{
  result = qword_100CE00F0;
  if (!qword_100CE00F0)
  {
    result = swift_getWitnessTable(byte_100A8FB54, &type metadata for SunriseSunsetMonthlyAverageRowViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE00F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetMonthlyAverageRowViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10087B404()
{
  result = qword_100CE0100;
  if (!qword_100CE0100)
  {
    result = swift_getWitnessTable(asc_100A8FB2C, &type metadata for SunriseSunsetMonthlyAverageRowViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0100);
  }

  return result;
}

unint64_t sub_10087B45C()
{
  result = qword_100CE0108;
  if (!qword_100CE0108)
  {
    result = swift_getWitnessTable(aE_12, &type metadata for SunriseSunsetMonthlyAverageRowViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0108);
  }

  return result;
}

unint64_t sub_10087B4B4()
{
  result = qword_100CE0110;
  if (!qword_100CE0110)
  {
    result = swift_getWitnessTable(asc_100A8FAC4, &type metadata for SunriseSunsetMonthlyAverageRowViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0110);
  }

  return result;
}

uint64_t sub_10087B508(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10087B54C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_10087B590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1000FE8B0();
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return sub_10001B350(v18, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

uint64_t sub_10087B7CC()
{
  v1 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LocationViewAction(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050FF0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_100053318(v12, type metadata accessor for LocationViewAction);
  }

  sub_100073140();
  sub_100050FF0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for BannerStateComputer(0);
    if (*(v0 + *(v13 + 28)) == 1)
    {
      v14 = *(v0 + *(v13 + 20));
      v15 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      if ((*(v14 + v15 + *(type metadata accessor for ViewState(0) + 40) + 1) & 0xC0) == 0x40)
      {
        v16 = v14 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        if (*(v16 + *(type metadata accessor for EnvironmentState(0) + 68)))
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v18 = type metadata accessor for ContentStatusBanner(0);
        v19 = *(v18 + 24);
        v20 = type metadata accessor for Date();
        sub_10001B350(&v3[v19], 1, 1, v20);
        *v3 = v17;
        *(v3 + 8) = xmmword_100A3BBB0;
        sub_10001B350(v3, 0, 1, v18);
        sub_1000B8080();
      }
    }

    sub_100053318(v9, type metadata accessor for LocationComponentAction);
    v21 = type metadata accessor for WeatherMapOverlayKind();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else
  {
    sub_100053318(v9, type metadata accessor for LocationComponentAction);
    sub_100053318(v6, type metadata accessor for LocationComponentAction);
  }

  v23 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
  return sub_1000180EC(&v12[*(v23 + 64)], &unk_100CB2CF0, &unk_100A2D7F0);
}

uint64_t sub_10087BB70(uint64_t a1, unint64_t a2)
{
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v5 - 8);
  v51 = &v50 - v6;
  v7 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_10022C350(&qword_100CE0118, &unk_100A8FBB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v22 = *(type metadata accessor for BannerStateComputer(0) + 20);
  v52 = v2;
  v23 = *(*(v2 + v22) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  sub_1000864C0(a1, a2, v23);

  v24 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v12, 1, v24) == 1)
  {
    v25 = &qword_100CA37B0;
    v26 = &unk_100A2D740;
    v27 = v12;
LABEL_5:
    sub_1000180EC(v27, v25, v26);
    v29 = type metadata accessor for CurrentWeather();
    sub_10001B350(v21, 1, 1, v29);
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000703C(v30, qword_100D90D08);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_100078694(a1, a2, &v53);
      _os_log_impl(&_mh_execute_header, v31, v32, "Not displaying slow connection banner - location has no data. ID=%{private,mask.hash}s", v33, 0x16u);
      sub_100006F14(v34);
    }

    return sub_1000180EC(v21, &qword_100CE0118, &unk_100A8FBB0);
  }

  sub_1001A0D3C();
  sub_100053318(v12, type metadata accessor for LocationWeatherDataState);
  v28 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v15, 1, v28) == 1)
  {
    v25 = &qword_100CA3898;
    v26 = &qword_100A314D0;
    v27 = v15;
    goto LABEL_5;
  }

  WeatherDataModel.currentWeather.getter();
  sub_100053318(v15, type metadata accessor for WeatherData);
  v35 = type metadata accessor for CurrentWeather();
  sub_10001B350(v21, 0, 1, v35);
  if (qword_100CA2790 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000703C(v36, qword_100D90D08);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  v39 = os_log_type_enabled(v37, v38);
  v50 = a1;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = a1;
    v43 = v41;
    v53 = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    *(v40 + 14) = sub_100078694(v42, a2, &v53);
    _os_log_impl(&_mh_execute_header, v37, v38, "Displaying slow connection banner. ID=%{private,mask.hash}s", v40, 0x16u);
    sub_100006F14(v43);
  }

  v44 = v51;
  sub_100095588();
  if (sub_100024D10(v18, 1, v35) == 1)
  {
    sub_1000180EC(v18, &qword_100CE0118, &unk_100A8FBB0);
    v45 = 1;
  }

  else
  {
    CurrentWeather.date.getter();
    (*(*(v35 - 8) + 8))(v18, v35);
    v45 = 0;
  }

  v46 = v50;
  v47 = type metadata accessor for Date();
  sub_10001B350(v44, v45, 1, v47);
  *v9 = 3;
  *(v9 + 1) = v46;
  *(v9 + 2) = a2;
  v48 = type metadata accessor for ContentStatusBanner(0);
  sub_100051BBC();
  sub_10001B350(v9, 0, 1, v48);
  swift_bridgeObjectRetain_n();
  sub_1000B8080();
  return sub_1000180EC(v21, &qword_100CE0118, &unk_100A8FBB0);
}

void sub_10087C244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v6 - 8);
  v122 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v123 = &v111[-v9];
  __chkstk_darwin(v10);
  v116 = &v111[-v11];
  __chkstk_darwin(v12);
  v14 = &v111[-v13];
  v15 = type metadata accessor for CurrentWeather();
  v119 = *(v15 - 8);
  v120 = v15;
  __chkstk_darwin(v15);
  v118 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v17 - 8);
  v114 = &v111[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v111[-v20];
  __chkstk_darwin(v22);
  v24 = &v111[-v23];
  v25 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v25 - 8);
  v27 = &v111[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v111[-v29];
  __chkstk_darwin(v31);
  v33 = &v111[-v32];
  v34 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v34 - 8);
  v115 = &v111[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v38 = &v111[-v37];
  if (static Location.currentLocationID.getter() == a1 && v39 == a2)
  {

    goto LABEL_12;
  }

  v117 = a1;
  v121 = a2;
  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_12:
    v52 = a3;
    v44 = v124;
    sub_10087DAC0(v52);
    goto LABEL_13;
  }

  v42 = type metadata accessor for BannerStateComputer(0);
  v43 = v42;
  v44 = v124;
  if (*(v124 + *(v42 + 28)) == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000703C(v45, qword_100D90D08);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    v48 = os_log_type_enabled(v46, v47);
    v113 = v43;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v125[0] = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      v51 = v117;
      *(v49 + 14) = sub_100078694(v117, v121, v125);
      _os_log_impl(&_mh_execute_header, v46, v47, "Showing no connection banner (loaded from cache). ID=%{private,mask.hash}s", v49, 0x16u);
      sub_100006F14(v50);
      v43 = v113;
    }

    else
    {

      v51 = v117;
    }

    v69 = *(v44 + *(v43 + 20));
    v70 = *(v69 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    sub_1000864C0(v51, v121, v70);

    v71 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v24, 1, v71) == 1)
    {
      v72 = &qword_100CA37B0;
      v73 = &unk_100A2D740;
      v74 = v24;
    }

    else
    {
      sub_1001A0D3C();
      sub_100053318(v24, type metadata accessor for LocationWeatherDataState);
      v84 = type metadata accessor for WeatherData(0);
      if (sub_100024D10(v33, 1, v84) != 1)
      {
        v98 = v118;
        WeatherDataModel.currentWeather.getter();
        sub_100053318(v33, type metadata accessor for WeatherData);
        CurrentWeather.date.getter();
        (*(v119 + 8))(v98, v120);
        v85 = 0;
        goto LABEL_45;
      }

      v72 = &qword_100CA3898;
      v73 = &qword_100A314D0;
      v74 = v33;
    }

    sub_1000180EC(v74, v72, v73);
    v85 = 1;
LABEL_45:
    v99 = type metadata accessor for Date();
    sub_10001B350(v38, v85, 1, v99);
    v100 = v69 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v100 + *(type metadata accessor for EnvironmentState(0) + 68)))
    {
      v101 = 2;
    }

    else
    {
      v101 = 1;
    }

    v102 = type metadata accessor for ContentStatusBanner(0);
LABEL_49:
    sub_100095588();
    *v14 = v101;
    v103 = v121;
    *(v14 + 1) = v117;
    *(v14 + 2) = v103;
    sub_10001B350(v14, 0, 1, v102);
    swift_bridgeObjectRetain_n();
    sub_1000B8080();
    sub_1000180EC(v38, &unk_100CB2CF0, &unk_100A2D7F0);
    goto LABEL_13;
  }

  v63 = *(v124 + *(v42 + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v64 = *(v63 + 16);

  sub_1000864C0(v117, v121, v64);

  v65 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v21, 1, v65) != 1)
  {
    sub_1001A0D3C();
    sub_100053318(v21, type metadata accessor for LocationWeatherDataState);
    v75 = type metadata accessor for WeatherData(0);
    if (sub_100024D10(v30, 1, v75) == 1)
    {
      v66 = &qword_100CA3898;
      v67 = &qword_100A314D0;
      v68 = v30;
      goto LABEL_30;
    }

    sub_1001A5104();
    v88 = v87;
    v90 = v89;
    sub_100053318(v30, type metadata accessor for WeatherData);
    v76 = v121;
    if (!v88)
    {
      goto LABEL_31;
    }

    v112 = v90;
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_10000703C(v91, qword_100D90D08);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();

    v94 = os_log_type_enabled(v92, v93);
    v113 = v43;
    if (v94)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v125[0] = v96;
      *v95 = 141558275;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      v97 = v117;
      *(v95 + 14) = sub_100078694(v117, v121, v125);
      _os_log_impl(&_mh_execute_header, v92, v93, "Showing weather unavailable banner (showing dynamic lookup data). ID=%{private,mask.hash}s", v95, 0x16u);
      sub_100006F14(v96);

      v76 = v121;
    }

    else
    {

      v97 = v117;
    }

    v104 = *(v63 + 16);

    v105 = v114;
    sub_1000864C0(v97, v76, v104);

    if (sub_100024D10(v105, 1, v65) == 1)
    {
      sub_1000180EC(v105, &qword_100CA37B0, &unk_100A2D740);
      v106 = 1;
      v44 = v124;
    }

    else
    {
      sub_1001A0D3C();
      sub_100053318(v105, type metadata accessor for LocationWeatherDataState);
      v107 = sub_100024D10(v27, 1, v75);
      v44 = v124;
      if (v107 != 1)
      {
        v108 = v118;
        WeatherDataModel.currentWeather.getter();
        sub_100053318(v27, type metadata accessor for WeatherData);
        v38 = v115;
        CurrentWeather.date.getter();
        (*(v119 + 8))(v108, v120);
        v106 = 0;
        goto LABEL_57;
      }

      sub_1000180EC(v27, &qword_100CA3898, &qword_100A314D0);
      v106 = 1;
    }

    v38 = v115;
LABEL_57:
    v109 = v112;
    v110 = type metadata accessor for Date();
    sub_10001B350(v38, v106, 1, v110);

    if (v109)
    {
      v101 = 0;
    }

    else
    {
      v101 = 6;
    }

    v102 = type metadata accessor for ContentStatusBanner(0);
    v14 = v116;
    goto LABEL_49;
  }

  v66 = &qword_100CA37B0;
  v67 = &unk_100A2D740;
  v68 = v21;
LABEL_30:
  sub_1000180EC(v68, v66, v67);
  v76 = v121;
LABEL_31:
  if (qword_100CA2790 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  sub_10000703C(v77, qword_100D90D08);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  v80 = os_log_type_enabled(v78, v79);
  v44 = v124;
  v81 = v76;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v125[0] = v83;
    *v82 = 141558275;
    *(v82 + 4) = 1752392040;
    *(v82 + 12) = 2081;
    *(v82 + 14) = sub_100078694(v117, v81, v125);
    _os_log_impl(&_mh_execute_header, v78, v79, "Removing banner (successfully loaded new data). ID=%{private,mask.hash}s", v82, 0x16u);
    sub_100006F14(v83);
  }

  v86 = type metadata accessor for ContentStatusBanner(0);
  sub_10001B350(v123, 1, 1, v86);

  sub_1000B8080();
LABEL_13:
  v53 = type metadata accessor for BannerStateComputer(0);
  if (*(v44 + *(v53 + 28)) == 1)
  {
    v54 = *(v44 + *(v53 + 20));
    v55 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    if (*(v54 + v55 + *(type metadata accessor for ViewState(0) + 36) + 8) != 1)
    {
      return;
    }

    v56 = v54 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v56 + *(type metadata accessor for EnvironmentState(0) + 68)))
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    v58 = type metadata accessor for ContentStatusBanner(0);
    v59 = v122;
    sub_10087ECB4(&v122[*(v58 + 24)]);
    *v59 = v57;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    sub_10001B350(v59, 0, 1, v58);
  }

  else
  {
    sub_100183848();
    if (v60)
    {
      return;
    }

    v61 = type metadata accessor for ContentStatusBanner(0);
    v62 = v123;
    sub_10001B350(v123, 1, 1, v61);
    sub_1000B8080();
    sub_10001B350(v62, 1, 1, v61);
  }

  sub_1000B8080();
}

void sub_10087CFF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = a3;
  v7 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v7 - 8);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v74 - v10;
  v81 = type metadata accessor for Date();
  v77 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - v14;
  v16 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v79 = type metadata accessor for CurrentWeather();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v82 = &v74 - v22;
  v23 = type metadata accessor for BannerStateComputer(0);
  v78 = *(v4 + *(v23 + 20));
  v24 = *(v78 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v25 = a1;
  sub_1000864C0(a1, a2, v24);

  v26 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v15, 1, v26) == 1)
  {
    v27 = &qword_100CA37B0;
    v28 = &unk_100A2D740;
    v29 = v15;
    goto LABEL_5;
  }

  sub_1001A0D3C();
  sub_100053318(v15, type metadata accessor for LocationWeatherDataState);
  v30 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v18, 1, v30) == 1)
  {
    v27 = &qword_100CA3898;
    v28 = &qword_100A314D0;
    v29 = v18;
LABEL_5:
    sub_1000180EC(v29, v27, v28);
    if (*(v4 + *(v23 + 28)) == 1)
    {
      if (qword_100CA2790 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000703C(v31, qword_100D90D08);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v85[0] = v35;
        *v34 = 141558275;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        *(v34 + 14) = sub_100078694(a1, a2, v85);
        _os_log_impl(&_mh_execute_header, v32, v33, "Removing banner (failed loading new data, no data in cache - modal takes precedence). ID=%{private,mask.hash}s", v34, 0x16u);
        sub_100006F14(v35);
      }

      v36 = type metadata accessor for ContentStatusBanner(0);
      sub_10001B350(v84, 1, 1, v36);

      sub_1000B8080();
    }

    goto LABEL_33;
  }

  WeatherDataModel.currentWeather.getter();
  sub_100053318(v18, type metadata accessor for WeatherData);
  v37 = v79;
  (*(v83 + 32))(v82, v20, v79);
  v38 = v80;
  CurrentWeather.date.getter();
  if (static Location.currentLocationID.getter() == v25 && v39 == a2)
  {

    goto LABEL_26;
  }

  v41 = v25;
  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
LABEL_26:
    sub_10087DAC0(v76);
    (*(v77 + 8))(v38, v81);
    (*(v83 + 8))(v82, v37);
    goto LABEL_33;
  }

  if (*(v4 + *(v23 + 28)) == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000703C(v43, qword_100D90D08);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    v46 = os_log_type_enabled(v44, v45);
    v75 = v25;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85[0] = v48;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      *(v47 + 14) = sub_100078694(v25, a2, v85);
      _os_log_impl(&_mh_execute_header, v44, v45, "Showing no connection banner (failed loading new data while offline). ID=%{private,mask.hash}s", v47, 0x16u);
      sub_100006F14(v48);
    }

    v49 = v78 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v49 + *(type metadata accessor for EnvironmentState(0) + 68)))
    {
      v50 = 2;
    }

    else
    {
      v50 = 1;
    }

    v51 = type metadata accessor for ContentStatusBanner(0);
    v52 = *(v51 + 24);
    v53 = v77;
    v54 = v80;
    v55 = v81;
    (*(v77 + 16))(&v11[v52], v80, v81);
    sub_10001B350(&v11[v52], 0, 1, v55);
    *v11 = v50;
    *(v11 + 1) = v75;
    *(v11 + 2) = a2;
    sub_10001B350(v11, 0, 1, v51);
    swift_bridgeObjectRetain_n();
    sub_1000B8080();
    (*(v53 + 8))(v54, v55);
  }

  else
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000703C(v56, qword_100D90D08);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v85[0] = v60;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      *(v59 + 14) = sub_100078694(v25, a2, v85);
      _os_log_impl(&_mh_execute_header, v57, v58, "Showing weather unavailable banner (failed loading new data while presenting data). ID=%{private,mask.hash}s", v59, 0x16u);
      sub_100006F14(v60);
    }

    v61 = type metadata accessor for ContentStatusBanner(0);
    v62 = *(v61 + 24);
    v63 = v77;
    v64 = v84;
    v66 = v80;
    v65 = v81;
    (*(v77 + 16))(v84 + v62, v80, v81);
    sub_10001B350(v64 + v62, 0, 1, v65);
    *v64 = 0;
    *(v64 + 8) = v41;
    *(v64 + 16) = a2;
    sub_10001B350(v64, 0, 1, v61);
    swift_bridgeObjectRetain_n();
    sub_1000B8080();
    (*(v63 + 8))(v66, v65);
  }

  (*(v83 + 8))(v82, v79);
LABEL_33:
  if ((*(v4 + *(v23 + 28)) & 1) == 0)
  {
    sub_100183848();
    if (v67)
    {
      v68 = v78 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      v69 = type metadata accessor for ViewState(0);
      if (*(v68 + *(v69 + 36) + 8) == 1)
      {
        v70 = type metadata accessor for ContentStatusBanner(0);
        v71 = v84;
        sub_10087ECB4(v84 + *(v70 + 24));
        *v71 = 0;
        *(v71 + 8) = 0;
        *(v71 + 16) = 0;
        sub_10001B350(v71, 0, 1, v70);
        sub_1000B8080();
      }

      if ((*(v68 + *(v69 + 40) + 1) & 0xC0) == 0x40)
      {
        v72 = type metadata accessor for ContentStatusBanner(0);
        v73 = v84;
        sub_10001B350(v84 + *(v72 + 24), 1, 1, v81);
        *v73 = 0;
        *(v73 + 8) = xmmword_100A3BBB0;
        sub_10001B350(v73, 0, 1, v72);
        sub_1000B8080();
      }
    }
  }
}

uint64_t sub_10087DAC0(uint64_t a1)
{
  v124 = a1;
  v125 = type metadata accessor for WeatherDataAction(0);
  __chkstk_darwin(v125);
  v120 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v122 = &v116 - v4;
  v5 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v5);
  v121 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v7 - 8);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v116 - v10;
  __chkstk_darwin(v11);
  v128 = &v116 - v12;
  v13 = type metadata accessor for CurrentWeather();
  v126 = *(v13 - 8);
  v127 = v13;
  __chkstk_darwin(v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v16 - 8);
  v133 = &v116 - v17;
  v18 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v18 - 8);
  v20 = &v116 - v19;
  v21 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v130 = &v116 - v25;
  v26 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v26 - 8);
  v28 = &v116 - v27;
  v29 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v29);
  v129 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v116 - v32;
  v131 = type metadata accessor for BannerStateComputer(0);
  v132 = v1;
  v34 = *(v1 + *(v131 + 20));
  sub_100095588();
  if (sub_100024D10(v28, 1, v29) == 1)
  {
    return sub_1000180EC(v28, &unk_100CE49F0, &unk_100A3AFA0);
  }

  v36 = v33;
  sub_100073140();
  v37 = static Location.currentLocationID.getter();
  v38 = v34;
  v40 = v39;
  v117 = v38;
  v41 = *(v38 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v118 = v37;
  v42 = v37;
  v43 = v40;
  sub_1000864C0(v42, v40, v41);

  v44 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v20, 1, v44) == 1)
  {
    sub_1000180EC(v20, &qword_100CA37B0, &unk_100A2D740);
    v45 = v130;
    sub_10001B350(v130, 1, 1, v5);
  }

  else
  {
    v45 = v130;
    sub_1001A0D3C();
    sub_100053318(v20, type metadata accessor for LocationWeatherDataState);
  }

  v46 = v133;
  sub_100095588();
  if (sub_100024D10(v23, 1, v5) == 1)
  {
    sub_1000180EC(v23, &qword_100CA3898, &qword_100A314D0);
    v47 = 1;
  }

  else
  {
    WeatherDataModel.currentWeather.getter();
    sub_100053318(v23, type metadata accessor for WeatherData);
    CurrentWeather.date.getter();
    (*(v126 + 8))(v15, v127);
    v47 = 0;
  }

  v48 = type metadata accessor for Date();
  sub_10001B350(v46, v47, 1, v48);
  v49 = v36;
  v50 = v129;
  sub_100050FF0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000703C(v63, qword_100D90D08);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = v45;
      v68 = swift_slowAlloc();
      v134[0] = v68;
      *v66 = 141558275;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v69 = v118;
      *(v66 + 14) = sub_100078694(v118, v43, v134);
      _os_log_impl(&_mh_execute_header, v64, v65, "Restoring uncertain location banner (loaded from cache). ID=%{private,mask.hash}s", v66, 0x16u);
      sub_100006F14(v68);
      v45 = v67;
      v46 = v133;
    }

    else
    {

      v69 = v118;
    }

    v79 = type metadata accessor for ContentStatusBanner(0);
    v80 = v128;
    sub_100095588();
    *v80 = 4;
    *(v80 + 8) = v69;
    *(v80 + 16) = v43;
    sub_10001B350(v80, 0, 1, v79);

    goto LABEL_46;
  }

  v52 = v43;
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000703C(v53, qword_100D90D08);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v118;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = v45;
      v60 = swift_slowAlloc();
      v134[0] = v60;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      *(v58 + 14) = sub_100078694(v57, v52, v134);
      _os_log_impl(&_mh_execute_header, v54, v55, "Restoring old location banner (loaded from cache). ID=%{private,mask.hash}s", v58, 0x16u);
      sub_100006F14(v60);
      v45 = v59;
      v46 = v133;
    }

    v61 = type metadata accessor for ContentStatusBanner(0);
    v62 = v128;
    sub_100095588();
    *v62 = 5;
  }

  else if (*(v132 + *(v131 + 28)) == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000703C(v70, qword_100D90D08);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    v73 = os_log_type_enabled(v71, v72);
    v57 = v118;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = v45;
      v76 = swift_slowAlloc();
      v134[0] = v76;
      *v74 = 141558275;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2081;
      *(v74 + 14) = sub_100078694(v57, v52, v134);
      _os_log_impl(&_mh_execute_header, v71, v72, "Showing no connection banner. ID=%{private,mask.hash}s", v74, 0x16u);
      sub_100006F14(v76);
      v45 = v75;
      v46 = v133;
    }

    v77 = v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v77 + *(type metadata accessor for EnvironmentState(0) + 68)))
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    v61 = type metadata accessor for ContentStatusBanner(0);
    v62 = v123;
    sub_100095588();
    *v62 = v78;
  }

  else
  {
    v81 = v122;
    sub_100050FF0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      v82 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
      v83 = *(v82 + 64);
      v84 = *(v82 + 80);
      v85 = v121;
      sub_100073140();
      sub_100053318(&v81[v84], type metadata accessor for NewsDataModel);
      sub_100053318(&v81[v83], type metadata accessor for PreprocessedWeatherData);
      sub_1001A5104();
      if (v87)
      {
        v88 = v86;
        v89 = v45;
        if (qword_100CA2790 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000703C(v90, qword_100D90D08);

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v134[0] = v94;
          *v93 = 141558275;
          *(v93 + 4) = 1752392040;
          *(v93 + 12) = 2081;
          LODWORD(v128) = v88;
          v95 = v118;
          *(v93 + 14) = sub_100078694(v118, v43, v134);
          _os_log_impl(&_mh_execute_header, v91, v92, "Showing weather unavailable banner (showing dynamic lookup data). ID=%{private,mask.hash}s", v93, 0x16u);
          sub_100006F14(v94);

          v52 = v43;
          v45 = v130;

          LOBYTE(v88) = v128;
        }

        else
        {

          v95 = v118;
          v45 = v89;
        }

        if (v88)
        {
          v113 = 0;
        }

        else
        {
          v113 = 6;
        }

        v114 = type metadata accessor for ContentStatusBanner(0);
        v115 = v119;
        sub_100095588();
        *v115 = v113;
        *(v115 + 8) = v95;
        *(v115 + 16) = v52;
        sub_10001B350(v115, 0, 1, v114);

        sub_1000B8080();
        sub_100053318(v121, type metadata accessor for WeatherData);
        goto LABEL_47;
      }

      v96 = type metadata accessor for WeatherData;
      v97 = v85;
    }

    else
    {
      v96 = type metadata accessor for WeatherDataAction;
      v97 = v81;
    }

    sub_100053318(v97, v96);
    v98 = v120;
    sub_100050FF0();
    v99 = swift_getEnumCaseMultiPayload();
    sub_100053318(v98, type metadata accessor for WeatherDataAction);
    v57 = v118;
    if (v99 != 2)
    {
      if (qword_100CA2790 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      sub_10000703C(v106, qword_100D90D08);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = v45;
        v111 = swift_slowAlloc();
        v134[0] = v111;
        *v109 = 141558275;
        *(v109 + 4) = 1752392040;
        *(v109 + 12) = 2081;
        *(v109 + 14) = sub_100078694(v57, v52, v134);
        _os_log_impl(&_mh_execute_header, v107, v108, "Removing banner (successfully loaded new data). ID=%{private,mask.hash}s", v109, 0x16u);
        sub_100006F14(v111);
        v45 = v110;
        v46 = v133;
      }

      v112 = type metadata accessor for ContentStatusBanner(0);
      sub_10001B350(v128, 1, 1, v112);
      goto LABEL_46;
    }

    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_10000703C(v100, qword_100D90D08);

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = v45;
      v105 = swift_slowAlloc();
      v134[0] = v105;
      *v103 = 141558275;
      *(v103 + 4) = 1752392040;
      *(v103 + 12) = 2081;
      *(v103 + 14) = sub_100078694(v57, v52, v134);
      _os_log_impl(&_mh_execute_header, v101, v102, "Showing weather unavailable banner (failed loading new data). ID=%{private,mask.hash}s", v103, 0x16u);
      sub_100006F14(v105);
      v45 = v104;
      v46 = v133;
    }

    v61 = type metadata accessor for ContentStatusBanner(0);
    v62 = v128;
    sub_100095588();
    *v62 = 0;
  }

  *(v62 + 8) = v57;
  *(v62 + 16) = v52;
  sub_10001B350(v62, 0, 1, v61);

LABEL_46:
  sub_1000B8080();
LABEL_47:
  sub_1000180EC(v46, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v45, &qword_100CA3898, &qword_100A314D0);
  sub_100053318(v49, &type metadata accessor for CurrentLocation);
  return sub_100053318(v50, &type metadata accessor for CurrentLocation);
}

uint64_t sub_10087ECB4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v66 = type metadata accessor for CurrentWeather();
  v53 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Date();
  v67 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = &qword_100CA3898;
  v5 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v51 - v9;
  v10 = type metadata accessor for WeatherData(0);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v63 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v51 - v13;
  v14 = type metadata accessor for LocationWeatherDataState(0);
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v62 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = *(*(v1 + *(type metadata accessor for BannerStateComputer(0) + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v60 = v19;
  result = swift_bridgeObjectRetain_n();
  v26 = 0;
  v57 = _swiftEmptyArrayStorage;
  while (1)
  {
    v27 = v26;
    if (!v23)
    {
      break;
    }

LABEL_8:
    v23 &= v23 - 1;
    sub_100050FF0();
    v28 = v18;
    sub_100050FF0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v61;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v31 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
        v56 = *(v31 + 48);
        v32 = v4;
        v33 = *(v31 + 64);
        v34 = v62;
        sub_100073140();
        sub_10001B350(v7, 0, 1, v10);
        v35 = v34 + v33;
        v4 = v32;
        v30 = v61;
        sub_100053318(v35, type metadata accessor for NewsDataModel);
        sub_100053318(v34 + v56, type metadata accessor for PreprocessedWeatherData);
        break;
      case 3:
        goto LABEL_10;
      default:
        sub_100053318(v62, type metadata accessor for LocationWeatherDataState);
LABEL_10:
        sub_10001B350(v7, 1, 1, v10);
        break;
    }

    sub_100051BBC();
    v18 = v28;
    sub_100053318(v28, type metadata accessor for LocationWeatherDataState);
    if (sub_100024D10(v30, 1, v10) == 1)
    {
      result = sub_1000180EC(v30, v4, &qword_100A314D0);
    }

    else
    {
      sub_100073140();
      v36 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FC64();
        v36 = v39;
      }

      v38 = v36[2];
      v37 = v36[3];
      v57 = v36;
      if (v38 >= v37 >> 1)
      {
        sub_10069FC64();
        v57 = v40;
      }

      v57[2] = v38 + 1;
      result = sub_100073140();
      v4 = &qword_100CA3898;
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v27;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  v41 = v57;
  v42 = v57[2];
  if (v42)
  {
    v62 = v10;
    v68 = _swiftEmptyArrayStorage;
    sub_1006A79AC();
    v43 = v41 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v44 = *(v54 + 72);
    v45 = v52;
    v46 = (v53 + 8);
    v47 = v68;
    do
    {
      v48 = v63;
      sub_100050FF0();
      v49 = v65;
      WeatherDataModel.currentWeather.getter();
      CurrentWeather.date.getter();
      (*v46)(v49, v66);
      sub_100053318(v48, type metadata accessor for WeatherData);
      v68 = v47;
      v50 = v47[2];
      if (v50 >= v47[3] >> 1)
      {
        sub_1006A79AC();
        v47 = v68;
      }

      v47[2] = v50 + 1;
      (*(v67 + 32))(v47 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v50, v45, v64);
      v43 += v44;
      --v42;
    }

    while (v42);
  }

  else
  {

    v47 = _swiftEmptyArrayStorage;
  }

  sub_10087B590(v47, v55);
}

void sub_10087F478()
{
  v0 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v0 - 8);
  v2 = &v37[-v1];
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v7 - 8);
  v9 = &v37[-v8];
  v10 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37[-v11];
  v13 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37[-v14];
  v16 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v16);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100050FF0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = 5;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      goto LABEL_8;
    case 2:
      v20 = 4;
      goto LABEL_8;
    case 3:
      goto LABEL_6;
    default:
      v21 = *(v39 + *(type metadata accessor for BannerStateComputer(0) + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      if (*(v21 + 3) != 4)
      {
LABEL_6:
        sub_100053318(v18, &type metadata accessor for CurrentLocation);
        static Location.currentLocationID.getter();
        v22 = type metadata accessor for ContentStatusBanner(0);
        sub_10001B350(v2, 1, 1, v22);
        type metadata accessor for BannerStateComputer(0);
        sub_1000B8080();
        return;
      }

      if (*(v21 + *(type metadata accessor for EnvironmentState(0) + 68)))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

LABEL_8:
      v38 = v20;
      sub_100053318(v18, &type metadata accessor for CurrentLocation);
      v23 = *(*(v39 + *(type metadata accessor for BannerStateComputer(0) + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

      v24 = static Location.currentLocationID.getter();
      sub_1000864C0(v24, v25, v23);

      v26 = type metadata accessor for LocationWeatherDataState(0);
      if (sub_100024D10(v9, 1, v26) == 1)
      {
        v27 = &qword_100CA37B0;
        v28 = &unk_100A2D740;
        v29 = v9;
LABEL_12:
        sub_1000180EC(v29, v27, v28);
        v31 = 1;
        goto LABEL_14;
      }

      sub_1001A0D3C();
      sub_100053318(v9, type metadata accessor for LocationWeatherDataState);
      v30 = type metadata accessor for WeatherData(0);
      if (sub_100024D10(v12, 1, v30) == 1)
      {
        v27 = &qword_100CA3898;
        v28 = &qword_100A314D0;
        v29 = v12;
        goto LABEL_12;
      }

      WeatherDataModel.currentWeather.getter();
      sub_100053318(v12, type metadata accessor for WeatherData);
      CurrentWeather.date.getter();
      (*(v4 + 8))(v6, v3);
      v31 = 0;
LABEL_14:
      v32 = type metadata accessor for Date();
      sub_10001B350(v15, v31, 1, v32);
      static Location.currentLocationID.getter();
      v33 = static Location.currentLocationID.getter();
      v35 = v34;
      v36 = type metadata accessor for ContentStatusBanner(0);
      sub_100095588();
      *v2 = v38;
      *(v2 + 1) = v33;
      *(v2 + 2) = v35;
      sub_10001B350(v2, 0, 1, v36);
      sub_1000B8080();
      sub_1000180EC(v15, &unk_100CB2CF0, &unk_100A2D7F0);
      return;
  }
}

uint64_t sub_10087FA60(uint64_t a1)
{
  result = type metadata accessor for CurrentWeather();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10087FAD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v21 = v4;
  __chkstk_darwin(v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE0270, &qword_100A8FCA0);
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for HumidityComponent(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10087FFFC();
  v16 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v21;
    sub_1004499CC(&qword_100CBA7E8, &protocol conformance descriptor for CurrentWeather);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_100880050(v15, v20);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10087FD24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165)
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

uint64_t sub_10087FDC8(void *a1)
{
  v2 = sub_10022C350(&qword_100CE0280, &qword_100A8FCA8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10087FFFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CurrentWeather();
  sub_1004499CC(&qword_100CBA800, &protocol conformance descriptor for CurrentWeather);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10087FF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10087FD24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10087FF50(uint64_t a1)
{
  v2 = sub_10087FFFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10087FF8C(uint64_t a1)
{
  v2 = sub_10087FFFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10087FFFC()
{
  result = qword_100CE0278;
  if (!qword_100CE0278)
  {
    result = swift_getWitnessTable(asc_100A8FD74, &type metadata for HumidityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0278);
  }

  return result;
}

uint64_t sub_100880050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumidityComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for HumidityComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_100880164()
{
  result = qword_100CE0288;
  if (!qword_100CE0288)
  {
    result = swift_getWitnessTable(byte_100A8FD4C, &type metadata for HumidityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0288);
  }

  return result;
}

unint64_t sub_1008801BC()
{
  result = qword_100CE0290;
  if (!qword_100CE0290)
  {
    result = swift_getWitnessTable(asc_100A8FCBC, &type metadata for HumidityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0290);
  }

  return result;
}

unint64_t sub_100880214()
{
  result = qword_100CE0298;
  if (!qword_100CE0298)
  {
    result = swift_getWitnessTable(byte_100A8FCE4, &type metadata for HumidityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MainViewModel.PrimaryModule(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100880364(_BYTE *result, int a2, int a3)
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

unint64_t sub_100880414()
{
  result = qword_100CE04C0;
  if (!qword_100CE04C0)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for MainViewModel.ModalModule.SecondaryModalModule, v0, v1);
    atomic_store(result, &qword_100CE04C0);
  }

  return result;
}

unint64_t sub_10088046C()
{
  result = qword_100CE13A0;
  if (!qword_100CE13A0)
  {
    result = swift_getWitnessTable(asc_100A8FEF8, &type metadata for MainViewModel.PrimaryModule, v0, v1);
    atomic_store(result, &qword_100CE13A0);
  }

  return result;
}

unint64_t sub_1008804C4()
{
  result = qword_100CE04C8;
  if (!qword_100CE04C8)
  {
    result = swift_getWitnessTable(byte_100A8FF58, &type metadata for MainViewModel.StackModule, v0, v1);
    atomic_store(result, &qword_100CE04C8);
  }

  return result;
}

unint64_t sub_10088051C()
{
  result = qword_100CE04D0;
  if (!qword_100CE04D0)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for MainViewModel.StackModule, v0, v1);
    atomic_store(result, &qword_100CE04D0);
  }

  return result;
}

unint64_t sub_100880574()
{
  result = qword_100CE04D8;
  if (!qword_100CE04D8)
  {
    result = swift_getWitnessTable(byte_100A90000, &type metadata for MainViewModel.SecondaryViewOverlayModule, v0, v1);
    atomic_store(result, &qword_100CE04D8);
  }

  return result;
}

BOOL sub_1008805C8()
{
  type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_1008819AC();
  sub_100021048();
  swift_getEnumCaseMultiPayload();
  sub_100024B98();
  if (!v2)
  {
    return 1;
  }

  if (v1)
  {
    type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
    v3 = swift_getEnumCaseMultiPayload() != 6;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_100003940();
  sub_100881900(v4, v5);
  return v3;
}

BOOL sub_1008806B4()
{
  type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_100003C38();
  v3 = (v1 - v2);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_10001D008();
  sub_1008819AC();
  sub_100021048();
  v7 = 0;
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_100003940();
    sub_1008819AC();
    if (*v3 != 1)
    {
      v7 = 1;
    }
  }

  sub_100881900(v6, type metadata accessor for MainViewModel.ModalModule);
  return v7;
}

void sub_1008807AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003C38();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  __chkstk_darwin(v33);
  sub_10003C868();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_10001D008();
  sub_1008819AC();
  swift_getEnumCaseMultiPayload();
  sub_100024B98();
  if (v38)
  {
    if (v37)
    {
      sub_10001FB08();
      sub_100881958();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_100010E0C();
        sub_100881900(v28, v40);
        goto LABEL_16;
      }
    }

    else if (*v36)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    sub_10001D008();
    sub_1008819AC();
    swift_getEnumCaseMultiPayload();
    sub_100024B98();
    if (!v38)
    {
      goto LABEL_16;
    }

    if (v39)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100010E0C();
      sub_100881900(v20, v43);
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1000069F0();
      sub_100881900(v20, v41);
    }
  }

  sub_10001D008();
  sub_1008819AC();
  sub_100021048();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_10001D008();
    sub_1008819AC();
  }

  sub_1000069F0();
  sub_100881900(v32, v44);
LABEL_16:
  sub_10000536C();
}

uint64_t sub_1008809CC()
{
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100069BAC();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = (v4 - v3);
  sub_10001D008();
  sub_1008819AC();
  swift_getEnumCaseMultiPayload();
  sub_100024B98();
  if (v7)
  {
    if (!v6)
    {
      v8 = *v5 ^ 1;
      return v8 & 1;
    }

    sub_10001FB08();
    sub_100881958();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_100010E0C();
      sub_100881900(v0, v10);
      v8 = 0;
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_100880AE0()
{
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100069BAC();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10001D008();
  sub_1008819AC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0;
  }

  sub_10001FB08();
  sub_100881958();
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return 0;
  }

  sub_100010E0C();
  sub_100881900(v0, v3);
  return 1;
}

void sub_100880E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_100069BAC();
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_100003C38();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v30 = sub_10022C350(&qword_100CE04F0, &qword_100A90128);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  sub_1008819AC();
  sub_1008819AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001D008();
      sub_100021048();
      sub_1008819AC();
      if (sub_10004EC3C() != 1)
      {
        sub_100010E0C();
        sub_100881900(v28, v36);
        goto LABEL_17;
      }

      sub_100881958();
      sub_100881120();
      sub_100881900(v20, type metadata accessor for MainViewModel.ModalModule.LocationDetailModule);
      sub_100881900(v28, type metadata accessor for MainViewModel.ModalModule.LocationDetailModule);
      sub_1000069F0();
      sub_100881900(v33, v35);
      goto LABEL_18;
    case 2u:
      if (sub_10004EC3C() == 2)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    case 3u:
      if (sub_10004EC3C() != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 4u:
      if (sub_10004EC3C() != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 5u:
      if (sub_10004EC3C() != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 6u:
      if (sub_10004EC3C() == 6)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    default:
      sub_10001D008();
      sub_1008819AC();
      if (sub_10004EC3C())
      {
LABEL_17:
        sub_1000180EC(v33, &qword_100CE04F0, &qword_100A90128);
      }

      else
      {
LABEL_3:
        sub_1000069F0();
        sub_100881900(v33, v34);
      }

LABEL_18:
      sub_10000536C();
      return;
  }
}

void sub_100881120()
{
  sub_10000C778();
  v49 = v1;
  v50 = v2;
  v3 = type metadata accessor for URL();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v44 = v5 - v4;
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v45 = (v7 - v8);
  __chkstk_darwin(v9);
  v46 = &v43 - v10;
  __chkstk_darwin(v11);
  v13 = (&v43 - v12);
  __chkstk_darwin(v14);
  v16 = (&v43 - v15);
  __chkstk_darwin(v17);
  v19 = (&v43 - v18);
  __chkstk_darwin(v20);
  sub_10003C868();
  __chkstk_darwin(v21);
  v23 = (&v43 - v22);
  __chkstk_darwin(v24);
  v26 = (&v43 - v25);
  v27 = sub_10022C350(&qword_100CE04F8, &unk_100A90130);
  sub_100003810(v27);
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = &v43 - v29;
  v32 = (&v43 + *(v31 + 56) - v29);
  sub_1008819AC();
  sub_1008819AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 1)
      {
        goto LABEL_21;
      }

      v33 = v23[2];
      v34 = v23[3];
      v35 = *v23;
      v36 = v23[1];
      goto LABEL_16;
    case 2u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 2)
      {
        goto LABEL_21;
      }

      v33 = v0[2];
      v34 = v0[3];
      v35 = *v0;
      v36 = v0[1];
      goto LABEL_16;
    case 3u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 3)
      {
        goto LABEL_21;
      }

      v33 = v19[2];
      v34 = v19[3];
      v35 = *v19;
      v36 = v19[1];
      goto LABEL_16;
    case 4u:
      sub_10001FB08();
      sub_100021048();
      sub_1008819AC();
      if (sub_100023414() != 4)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    case 5u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 5)
      {
        goto LABEL_21;
      }

      v33 = v13[2];
      v34 = v13[3];
      v35 = *v13;
      v36 = v13[1];
      goto LABEL_16;
    case 6u:
      sub_10001FB08();
      v38 = v46;
      sub_1008819AC();
      if (sub_100023414() == 6)
      {
        v40 = v47;
        v39 = v48;
        v41 = v44;
        (*(v47 + 32))(v44, v32, v48);
        static URL.== infix(_:_:)();
        v42 = *(v40 + 8);
        v42(v41, v39);
        v42(v38, v39);
LABEL_17:
        sub_100010E0C();
        sub_100881900(v30, v37);
      }

      else
      {
        (*(v47 + 8))(v38, v48);
LABEL_21:
        sub_1000180EC(v30, &qword_100CE04F8, &unk_100A90130);
      }

      sub_10000536C();
      return;
    case 7u:
      sub_10001FB08();
      v16 = v45;
      sub_1008819AC();
      if (sub_100023414() != 7)
      {
        goto LABEL_21;
      }

LABEL_11:
      v33 = v16[2];
      v34 = v16[3];
      v35 = *v16;
      v36 = v16[1];
      goto LABEL_16;
    default:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414())
      {
        goto LABEL_21;
      }

      v33 = v26[2];
      v34 = v26[3];
      v35 = *v26;
      v36 = v26[1];
LABEL_16:
      CGRectEqualToRect(*&v35, *v32);
      goto LABEL_17;
  }
}

uint64_t sub_100881584@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  strcpy((inited + 32), "primaryModule");
  *(inited + 46) = -4864;
  *(inited + 48) = *v1;
  *(inited + 72) = &type metadata for MainViewModel.PrimaryModule;
  strcpy((inited + 80), "stackModules");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v8 = *(v1 + 8);
  v9 = sub_10022C350(&qword_100CE0500, &qword_100A90140);
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x646F4D6C61646F6DLL;
  *(inited + 136) = 0xEB00000000656C75;
  v10 = type metadata accessor for MainViewModel(0);
  sub_100881890(v1 + *(v10 + 24), v6);
  v11 = type metadata accessor for MainViewModel.ModalModule(0);
  if (sub_100024D10(v6, 1, v11) == 1)
  {

    sub_1000180EC(v6, &qword_100CCF2F8, &unk_100A8FDD0);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 7104878;
    *(inited + 152) = 0xE300000000000000;
  }

  else
  {
    v14 = v11;
    sub_100043010(&v13);
    sub_10001D008();
    sub_100881958();
    sub_100166170(&v13, (inited + 144));
  }

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CE0508, &qword_100A90148);
  a1[4] = sub_100881A00();
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100881804(uint64_t a1)
{
  sub_100881A64(&qword_100CE0518, asc_100A90050);

  return ShortDescribable.description.getter();
}

uint64_t sub_100881890(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100881900(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100881958()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1008819AC()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

unint64_t sub_100881A00()
{
  result = qword_100CE0510;
  if (!qword_100CE0510)
  {
    v3 = sub_10022E824(&qword_100CE0508, &qword_100A90148);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE0510);
  }

  return result;
}

uint64_t sub_100881A64(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MainViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100881AC0()
{
  result = qword_100CE0520;
  if (!qword_100CE0520)
  {
    result = swift_getWitnessTable(byte_100A90254, &type metadata for ReportWeatherEntrySource, v0, v1);
    atomic_store(result, &qword_100CE0520);
  }

  return result;
}

uint64_t sub_100881B14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
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

uint64_t sub_100881BE4(char a1)
{
  if (a1)
  {
    return 1970169197;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_100881C18(void *a1, int a2)
{
  v24 = a2;
  sub_10022C350(&qword_100CE0560, &qword_100A902F0);
  sub_1000037C4();
  v22 = v4;
  v23 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v21 = sub_10022C350(&qword_100CE0568, &qword_100A902F8);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_10022C350(&qword_100CE0570, &unk_100A90300);
  sub_1000037C4();
  v15 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v21 - v17;
  sub_1000161C0(a1, a1[3]);
  sub_1008826F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_100882744();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_100882798();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_100881EA4(unint64_t a1)
{
  v40 = sub_10022C350(&qword_100CE0530, &qword_100A902D0);
  sub_1000037C4();
  v38 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = sub_10022C350(&qword_100CE0538, &qword_100A902D8);
  sub_1000037C4();
  v37 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10022C350(&qword_100CE0540, &unk_100A902E0);
  sub_1000037C4();
  v39 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_1000161C0(a1, *(a1 + 24));
  sub_1008826F0();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v35 = v6;
  v36 = v10;
  v41 = a1;
  v17 = v40;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v28 = &type metadata for ReportWeatherEntrySource;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v15, v11);
    a1 = v41;
LABEL_8:
    sub_100006F14(a1);
    return a1;
  }

  v34 = 0;
  if (v20 < (v21 >> 1))
  {
    a1 = *(v19 + v20);
    sub_100618E7C();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (a1)
      {
        LODWORD(v37) = a1;
        v43 = 1;
        sub_100882744();
        sub_1000059C4(&type metadata for ReportWeatherEntrySource.MenuCodingKeys, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v5, v17);
        v30 = sub_100014474();
        v31(v30);
        a1 = v37;
      }

      else
      {
        v42 = 0;
        sub_100882798();
        v29 = v36;
        sub_1000059C4(&type metadata for ReportWeatherEntrySource.ComponentCodingKeys, &v42);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v29, v35);
        v32 = sub_100014474();
        v33(v32);
      }

      sub_100006F14(v41);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100882330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100881B14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100882358(uint64_t a1)
{
  v2 = sub_1008826F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882394(uint64_t a1)
{
  v2 = sub_1008826F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008823D0(uint64_t a1)
{
  v2 = sub_100882798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088240C(uint64_t a1)
{
  v2 = sub_100882798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882448(uint64_t a1)
{
  v2 = sub_100882744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882484(uint64_t a1)
{
  v2 = sub_100882744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008824C0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100881EA4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10088250C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CB73D8, &unk_100A4B030);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LocationViewAction(0);
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_1004100C4();
  v9 = sub_100042FB0(a2);
  return (*(v5 + 32))(v9, v8, v3);
}

uint64_t sub_10088265C(uint64_t a1)
{
  sub_1008827EC();

  return ShortDescribable.description.getter();
}

unint64_t sub_10088269C()
{
  result = qword_100CE0528;
  if (!qword_100CE0528)
  {
    result = swift_getWitnessTable(asc_100A901AC, &type metadata for ReportWeatherEntrySource, v0, v1);
    atomic_store(result, &qword_100CE0528);
  }

  return result;
}

unint64_t sub_1008826F0()
{
  result = qword_100CE0548;
  if (!qword_100CE0548)
  {
    result = swift_getWitnessTable(byte_100A9053C, &type metadata for ReportWeatherEntrySource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0548);
  }

  return result;
}

unint64_t sub_100882744()
{
  result = qword_100CE0550;
  if (!qword_100CE0550)
  {
    result = swift_getWitnessTable(byte_100A904EC, &type metadata for ReportWeatherEntrySource.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0550);
  }

  return result;
}

unint64_t sub_100882798()
{
  result = qword_100CE0558;
  if (!qword_100CE0558)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for ReportWeatherEntrySource.ComponentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0558);
  }

  return result;
}

unint64_t sub_1008827EC()
{
  result = qword_100CE0578;
  if (!qword_100CE0578)
  {
    result = swift_getWitnessTable(byte_100A901D4, &type metadata for ReportWeatherEntrySource, v0, v1);
    atomic_store(result, &qword_100CE0578);
  }

  return result;
}

_BYTE *sub_100882840(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100882940()
{
  result = qword_100CE0580;
  if (!qword_100CE0580)
  {
    result = swift_getWitnessTable(byte_100A90474, &type metadata for ReportWeatherEntrySource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0580);
  }

  return result;
}

unint64_t sub_100882998()
{
  result = qword_100CE0588;
  if (!qword_100CE0588)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for ReportWeatherEntrySource.ComponentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0588);
  }

  return result;
}

unint64_t sub_1008829F0()
{
  result = qword_100CE0590;
  if (!qword_100CE0590)
  {
    result = swift_getWitnessTable(byte_100A903BC, &type metadata for ReportWeatherEntrySource.ComponentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0590);
  }

  return result;
}

unint64_t sub_100882A48()
{
  result = qword_100CE0598;
  if (!qword_100CE0598)
  {
    result = swift_getWitnessTable(byte_100A90344, &type metadata for ReportWeatherEntrySource.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0598);
  }

  return result;
}

unint64_t sub_100882AA0()
{
  result = qword_100CE05A0;
  if (!qword_100CE05A0)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for ReportWeatherEntrySource.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE05A0);
  }

  return result;
}

unint64_t sub_100882AF8()
{
  result = qword_100CE05A8;
  if (!qword_100CE05A8)
  {
    result = swift_getWitnessTable(byte_100A903E4, &type metadata for ReportWeatherEntrySource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE05A8);
  }

  return result;
}

unint64_t sub_100882B50()
{
  result = qword_100CE05B0;
  if (!qword_100CE05B0)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for ReportWeatherEntrySource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE05B0);
  }

  return result;
}

uint64_t sub_100882BD0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  sub_100015070();
  sub_100886A40();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1008869E8(v5, type metadata accessor for WeatherData.WeatherStatisticsState);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    type metadata accessor for WeatherStatisticsModel();
    sub_100003934();
    return sub_10001B350(v10, v11, v12, v13);
  }

  v7 = type metadata accessor for WeatherStatisticsModel();
  sub_1000037E8();
  v8 = sub_100003940();
  v9(v8);
  v10 = a1;
  v11 = 0;
  v12 = 1;
  v13 = v7;
  return sub_10001B350(v10, v11, v12, v13);
}

void sub_100882CE0(uint64_t a1)
{
  String.write(to:)();
  if (!v1)
  {
    type metadata accessor for WeatherData(0);
    v2 = sub_100013AD0();
    WeatherDataModel.write(to:)(v2);
    sub_100013AD0();
    sub_100785D30();
    sub_100013AD0();
    sub_1007857C8();
  }
}

void sub_100882D6C()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = type metadata accessor for WeatherData.CachingState(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100021D38();
  v12 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000203B8();
  v14 = static String.read(from:)();
  if (!v0)
  {
    v43 = v14;
    v49 = v15;
    type metadata accessor for Locale();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    v20 = sub_1000203B8();
    static WeatherDataModel.read(from:)(v20, v21, v22, v23, v24, v25, v26, v27, v41, v43);
    sub_1000203B8();
    sub_100785EF8();
    v28 = sub_1000203B8();
    sub_100785A70(v28, v29, v30, v31, v32, v33, v34, v35, v42, v44, v46, v47, v48);
    v36 = type metadata accessor for WeatherData(0);
    type metadata accessor for WeatherDataOverrides(0);
    sub_100003934();
    sub_10001B350(v37, v38, v39, v40);
    *v3 = v45;
    *(v3 + 1) = v49;
    sub_100051BBC();
    (*(v10 + 32))(&v3[*(v36 + 24)], v1, v8);
    sub_10001D020();
    sub_100886A98();
    sub_100010E24();
    sub_100886A98();
  }

  sub_10000C8F4();
}

uint64_t sub_100883064(void *a1, void *a2)
{
  v5 = type metadata accessor for Locale();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = sub_10022C350(&qword_100CAA9F8, &qword_100A35390);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000426CC();
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v29 = v7;
    v28 = type metadata accessor for WeatherData(0);
    v21 = *(v16 + 48);
    sub_100095588();
    sub_100095588();
    sub_1000038B4(v2, 1, v5);
    if (v18)
    {
      sub_1000038B4(v2 + v21, 1, v5);
      if (v18)
      {
        sub_1000180EC(v2, &qword_100CAA9F0, qword_100A44F50);
LABEL_19:
        v19 = static WeatherDataModel.== infix(_:_:)();
        return v19 & 1;
      }
    }

    else
    {
      sub_100095588();
      sub_1000038B4(v2 + v21, 1, v5);
      if (!v22)
      {
        v23 = v29;
        (*(v29 + 32))(v11, v2 + v21, v5);
        sub_10002342C();
        sub_1008869A0(v24, v25, &protocol conformance descriptor for Locale);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v23 + 8);
        v27(v11, v5);
        v27(v15, v5);
        sub_1000180EC(v2, &qword_100CAA9F0, qword_100A44F50);
        if (v26)
        {
          goto LABEL_19;
        }

LABEL_17:
        v19 = 0;
        return v19 & 1;
      }

      (*(v29 + 8))(v15, v5);
    }

    sub_1000180EC(v2, &qword_100CAA9F8, &qword_100A35390);
    goto LABEL_17;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_100883384(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for WeatherDataRelevancy(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v64 = v5 - v4;
  v65 = sub_10022C350(&qword_100CE07B8, &qword_100A90878);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v66 = v7;
  v8 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  v67 = v10 - v11;
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  __chkstk_darwin(v15);
  v69 = &v64 - v16;
  sub_1000038CC();
  v17 = type metadata accessor for Date();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for WeatherData.CachingState(0);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  sub_1000426CC();
  v26 = sub_10022C350(&qword_100CE07C0, &qword_100A90880);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v64 - v28;
  v31 = &v64 + *(v30 + 56) - v28;
  sub_100886A40();
  sub_100886A40();
  v32 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  sub_1000038B4(v29, 1, v32);
  if (v36)
  {
    sub_1000038B4(v31, 1, v32);
    if (v36)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_10000CF88();
    sub_100886A40();
    v35 = *(v32 + 48);
    sub_1000038B4(v31, 1, v32);
    if (!v36)
    {
      (*(v19 + 32))(v23, v31, v17);
      sub_100051BBC();
      sub_100051BBC();
      v37 = static Date.== infix(_:_:)();
      v38 = *(v19 + 8);
      v38(v2, v17);
      if ((v37 & 1) == 0)
      {
        sub_1000211F0();
        v45 = sub_100018800();
        sub_1000180EC(v45, v46, &qword_100A905E0);
        v47 = sub_10000EB30();
        (v38)(v47);
LABEL_22:
        sub_10001A0C8();
        sub_1008869E8(v29, v54);
        return 0;
      }

      v39 = v66;
      v40 = *(v65 + 48);
      sub_100095588();
      sub_100095588();
      v41 = v68;
      sub_1000038B4(v39, 1, v68);
      if (v36)
      {
        sub_1000211F0();
        v42 = sub_100018800();
        sub_1000180EC(v42, v43, &qword_100A905E0);
        v44 = sub_10000EB30();
        (v38)(v44);
        sub_1000038B4(v39 + v40, 1, v68);
        if (v36)
        {
          sub_1000180EC(v39, &qword_100CC8178, &qword_100A905E0);
          goto LABEL_5;
        }
      }

      else
      {
        sub_100095588();
        sub_1000038B4(v39 + v40, 1, v41);
        if (!v48)
        {
          v55 = v64;
          sub_100886A98();
          v56 = static Date.== infix(_:_:)();
          sub_1000180EC(v14, &qword_100CC8178, &qword_100A905E0);
          sub_1000180EC(v69, &qword_100CC8178, &qword_100A905E0);
          v57 = sub_10000EB30();
          (v38)(v57);
          if (v56)
          {
            v58 = v67;
            v59 = *(v68 + 20);
            v60 = *(v67 + v59);
            v61 = *(v55 + v59);
            sub_100013DE0();
            sub_1008869E8(v55, v62);
            sub_1008869E8(v58, v56);
            sub_1000180EC(v39, &qword_100CC8178, &qword_100A905E0);
            if (v60 != v61)
            {
              goto LABEL_22;
            }

LABEL_5:
            sub_10001A0C8();
            sub_1008869E8(v29, v33);
            return 1;
          }

          sub_100013DE0();
          sub_1008869E8(v55, v63);
          sub_1008869E8(v67, v56);
          v52 = &qword_100CC8178;
          v53 = &qword_100A905E0;
          goto LABEL_21;
        }

        sub_1000211F0();
        v49 = sub_100018800();
        sub_1000180EC(v49, v50, &qword_100A905E0);
        v51 = sub_10000EB30();
        (v38)(v51);
        sub_1008869E8(v67, type metadata accessor for WeatherDataRelevancy);
      }

      v52 = &qword_100CE07B8;
      v53 = &qword_100A90878;
LABEL_21:
      sub_1000180EC(v39, v52, v53);
      goto LABEL_22;
    }

    sub_1000180EC(v2 + v35, &qword_100CC8178, &qword_100A905E0);
    (*(v19 + 8))(v2, v17);
  }

  sub_1000180EC(v29, &qword_100CE07C0, &qword_100A90880);
  return 0;
}

uint64_t sub_1008839BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000100AE2970 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xE900000000000079)
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

uint64_t sub_100883A94(char a1)
{
  if (a1)
  {
    return 0x636E6176656C6572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_100883AD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6873657266 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646568636163 && a2 == 0xE600000000000000)
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

uint64_t sub_100883B94(char a1)
{
  if (a1)
  {
    return 0x646568636163;
  }

  else
  {
    return 0x6873657266;
  }
}

uint64_t sub_100883BC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C696166 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000)
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

uint64_t sub_100883CCC(char a1)
{
  if (!a1)
  {
    return 0x64656C696166;
  }

  if (a1 == 1)
  {
    return 0x676E6964616F6CLL;
  }

  return 0x646564616F6CLL;
}

uint64_t sub_100883D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008839BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883D4C(uint64_t a1)
{
  v2 = sub_100886B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883D88(uint64_t a1)
{
  v2 = sub_100886B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100883AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883DF4(uint64_t a1)
{
  v2 = sub_100886B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883E30(uint64_t a1)
{
  v2 = sub_100886B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883E6C(uint64_t a1)
{
  v2 = sub_100886BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883EA8(uint64_t a1)
{
  v2 = sub_100886BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100883BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883F14(uint64_t a1)
{
  v2 = sub_100886C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883F50(uint64_t a1)
{
  v2 = sub_100886C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883F8C(uint64_t a1)
{
  v2 = sub_100886D3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883FC8(uint64_t a1)
{
  v2 = sub_100886D3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100884004(uint64_t a1)
{
  v2 = sub_100886C94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100884040(uint64_t a1)
{
  v2 = sub_100886C94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10088407C(uint64_t a1)
{
  v2 = sub_100886CE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008840B8(uint64_t a1)
{
  v2 = sub_100886CE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008840F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x53676E6968636163 && a2 == 0xEC00000065746174;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1008842F0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x53676E6968636163;
      break;
    case 4:
      result = 0x6974736974617473;
      break;
    case 5:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008843B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008840F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008843D8(uint64_t a1)
{
  v2 = sub_100886AF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100884414(uint64_t a1)
{
  v2 = sub_100886AF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100884454(void *a1)
{
  v3 = sub_10022C350(&qword_100CE07F8, &qword_100A90890);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100886AF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for WeatherData(0);
    sub_100017810();
    type metadata accessor for Locale();
    sub_10002342C();
    sub_1008869A0(v9, v10, &protocol conformance descriptor for Locale);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[13] = 2;
    type metadata accessor for WeatherDataModel();
    sub_100020C40();
    sub_1008869A0(v11, v12, &protocol conformance descriptor for WeatherDataModel);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[12] = 3;
    type metadata accessor for WeatherData.CachingState(0);
    sub_100024BA4();
    sub_1008869A0(v13, v14, byte_100A90780);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[11] = 4;
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    sub_10003C9D0();
    sub_1008869A0(v15, v16, aA_67);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[10] = 5;
    type metadata accessor for WeatherDataOverrides(0);
    sub_100069BC8();
    sub_1008869A0(v17, v18, byte_100A55178);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_100884730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  v29 = v28;
  v30 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v32 = sub_1000038CC();
  type metadata accessor for WeatherData.WeatherStatisticsState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_1000037D8();
  v34 = sub_1000038CC();
  type metadata accessor for WeatherData.CachingState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000037D8();
  v63 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v60 = v36;
  __chkstk_darwin(v37);
  sub_1000037D8();
  v40 = v39 - v38;
  v41 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_100021D38();
  v61 = sub_10022C350(&qword_100CE07C8, &qword_100A90888);
  sub_1000037C4();
  v44 = v43;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_100014230();
  v62 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  v64 = (v48 - v47);
  sub_1000161C0(v29, v29[3]);
  sub_100886AF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    sub_100006F14(v29);
  }

  else
  {
    *v64 = KeyedDecodingContainer.decode(_:forKey:)();
    v64[1] = v49;
    type metadata accessor for Locale();
    sub_100017810();
    sub_10002342C();
    sub_1008869A0(v50, v51, &protocol conformance descriptor for Locale);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100051BBC();
    sub_100020C40();
    sub_1008869A0(v52, v53, &protocol conformance descriptor for WeatherDataModel);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v60 + 32))(v64 + *(v62 + 24), v40, v63);
    sub_100024BA4();
    sub_1008869A0(v54, v55, asc_100A907A8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100010E24();
    sub_100886A98();
    sub_10003C9D0();
    sub_1008869A0(v56, v57, asc_100A90758);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001D020();
    sub_100886A98();
    type metadata accessor for WeatherDataOverrides(0);
    sub_100069BC8();
    sub_1008869A0(v58, v59, byte_100A551A0);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v44 + 8))(v27, v61);
    sub_100051BBC();
    sub_100886A40();
    sub_100006F14(v29);
    sub_1008869E8(v64, type metadata accessor for WeatherData);
  }

  sub_10000C8F4();
}

void sub_100884E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  v71 = v25;
  v69 = v24;
  v29 = v28;
  sub_10022C350(&qword_100CE0850, &qword_100A908B8);
  sub_1000037C4();
  v66 = v31;
  v67 = v30;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  v68 = v33;
  v34 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v72 = v36;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v64 = v38;
  v65 = v37;
  __chkstk_darwin(v37);
  sub_1000037D8();
  v70 = v40 - v39;
  v63 = sub_10022C350(&qword_100CE0858, &qword_100A908C0);
  sub_1000037C4();
  v42 = v41;
  sub_100003828();
  __chkstk_darwin(v43);
  sub_100014230();
  v44 = type metadata accessor for WeatherData.CachingState(0);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_1000037D8();
  sub_1000426CC();
  v46 = sub_10022C350(&qword_100CE0860, &qword_100A908C8);
  sub_1000037C4();
  v48 = v47;
  sub_100003828();
  __chkstk_darwin(v49);
  v51 = &v63 - v50;
  sub_1000161C0(v29, v29[3]);
  sub_100886B44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000CF88();
  sub_100886A40();
  v52 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  if (sub_100024D10(v26, 1, v52) == 1)
  {
    sub_100886BEC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v42 + 8))(v27, v63);
    (*(v48 + 8))(v51, v46);
  }

  else
  {
    v53 = v64;
    v54 = v65;
    (*(v64 + 32))(v70, v26, v65);
    sub_100051BBC();
    sub_100886B98();
    v55 = v68;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10004EC54();
    sub_1008869A0(v56, v57, &protocol conformance descriptor for Date);
    v58 = v67;
    v59 = v71;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v59)
    {
      (*(v66 + 8))(v55, v58);
    }

    else
    {
      type metadata accessor for WeatherDataRelevancy(0);
      sub_100017058();
      sub_1008869A0(v60, v61, byte_100A8B3F0);
      v62 = v68;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v66 + 8))(v62, v58);
    }

    sub_1000180EC(v72, &qword_100CC8178, &qword_100A905E0);
    (*(v53 + 8))(v70, v54);
    (*(v48 + 8))(v51, v46);
  }

  sub_10000C8F4();
}

void sub_100885324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10000E8AC();
  v94 = v25;
  v27 = v26;
  v90 = v28;
  v93 = sub_10022C350(&qword_100CE0818, &qword_100A90898);
  sub_1000037C4();
  v87 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v89 = v31;
  v91 = sub_10022C350(&qword_100CE0820, &qword_100A908A0);
  sub_1000037C4();
  v86 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v88 = v34;
  v35 = sub_10022C350(&qword_100CE0828, &unk_100A908A8);
  sub_1000037C4();
  v92 = v36;
  sub_100003828();
  __chkstk_darwin(v37);
  v39 = &v83 - v38;
  v40 = type metadata accessor for WeatherData.CachingState(0);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_100003C38();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  v47 = &v83 - v46;
  sub_1000161C0(v27, v27[3]);
  sub_100886B44();
  v48 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v48)
  {
    v94 = v40;
    v83 = v47;
    v84 = v44;
    v49 = v93;
    KeyedDecodingContainer.allKeys.getter();
    sub_100618E80();
    v85 = v27;
    if (v51 != v50 >> 1)
    {
      sub_100021758();
      if (v54 == v55)
      {
        __break(1u);
        return;
      }

      v95 = *(v53 + v52);
      v56 = sub_100618E7C();
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      v61 = v91;
      if (v58 == v60 >> 1)
      {
        if (v95)
        {
          sub_100886B98();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v94 = v39;
          type metadata accessor for Date();
          sub_10004EC54();
          sub_1008869A0(v70, v71, &protocol conformance descriptor for Date);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v91 = v56;
          v88 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
          type metadata accessor for WeatherDataRelevancy(0);
          sub_100017058();
          sub_1008869A0(v76, v77, aI_64);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v78 = sub_10003A3F8();
          v79(v78, v49);
          v80 = sub_100018800();
          v81(v80);
          sub_10001B350(v84, 0, 1, v88);
          sub_100010E24();
          sub_100886A98();
        }

        else
        {
          sub_100886BEC();
          v67 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v68 = v35;
          v69 = v92;
          swift_unknownObjectRelease();
          (*(v86 + 8))(v67, v61);
          (*(v69 + 8))(v39, v68);
          sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
          sub_100003934();
          sub_10001B350(v72, v73, v74, v75);
        }

        v82 = v85;
        sub_100010E24();
        sub_100886A98();
        v66 = v82;
        goto LABEL_10;
      }
    }

    v62 = type metadata accessor for DecodingError();
    swift_allocError();
    v64 = v63;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v64 = v94;
    v65 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v65);
    (*(*(v62 - 8) + 104))(v64, enum case for DecodingError.typeMismatch(_:), v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v92 + 8))(v39, v35);
    v27 = v85;
  }

  v66 = v27;
LABEL_10:
  sub_100006F14(v66);
  sub_10000C8F4();
}

void sub_100885A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  v81 = v25;
  v78 = v24;
  v28 = v27;
  sub_10022C350(&qword_100CE08B8, &qword_100A908F0);
  sub_1000037C4();
  v76 = v30;
  v77 = v29;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v73 = v32;
  sub_1000038CC();
  type metadata accessor for WeatherStatisticsModel();
  sub_1000037C4();
  v74 = v34;
  v75 = v33;
  __chkstk_darwin(v33);
  sub_1000037D8();
  v72 = v36 - v35;
  sub_10022C350(&qword_100CE08C0, &qword_100A908F8);
  sub_1000037C4();
  v70 = v38;
  v71 = v37;
  sub_100003828();
  __chkstk_darwin(v39);
  v41 = &v68 - v40;
  v42 = sub_10022C350(&qword_100CE08C8, &qword_100A90900);
  sub_1000037C4();
  v69 = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  v46 = &v68 - v45;
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000037D8();
  sub_100021D38();
  sub_10022C350(&qword_100CE08D0, &qword_100A90908);
  sub_1000037C4();
  v79 = v49;
  v80 = v48;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_100014230();
  sub_1000161C0(v28, v28[3]);
  sub_100886C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100015070();
  sub_100886A40();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = v74;
      v52 = v75;
      v54 = v72;
      (*(v74 + 32))(v72, v26, v75);
      sub_100886C94();
      v55 = v73;
      v56 = v80;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100017F70();
      sub_1008869A0(v57, v58, &protocol conformance descriptor for WeatherStatisticsModel);
      v59 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v76 + 8))(v55, v59);
      (*(v53 + 8))(v54, v52);
      v60 = sub_100011890();
      v61(v60, v56);
    }

    else
    {
      sub_100017810();
      sub_100886CE8();
      v65 = v80;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v70 + 8))(v41, v71);
      v66 = sub_100011890();
      v67(v66, v65);
    }
  }

  else
  {
    sub_100886D3C();
    v62 = v80;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v69 + 8))(v46, v42);
    v63 = sub_100011890();
    v64(v63, v62);
  }

  sub_10000C8F4();
}

void sub_100885ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v26;
  a24 = v27;
  v113 = v24;
  v29 = v28;
  v107 = v30;
  sub_10022C350(&qword_100CE0870, &qword_100A908D0);
  sub_1000037C4();
  v109 = v32;
  v110 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v108 = v34;
  v104 = sub_10022C350(&qword_100CE0878, &qword_100A908D8);
  sub_1000037C4();
  v102 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v106 = v37;
  v103 = sub_10022C350(&qword_100CE0880, &qword_100A908E0);
  sub_1000037C4();
  v101 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  v105 = v40;
  sub_10022C350(&qword_100CE0888, &qword_100A908E8);
  sub_1000037C4();
  v111 = v42;
  v112 = v41;
  sub_100003828();
  __chkstk_darwin(v43);
  sub_100021D38();
  v44 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003C38();
  v48 = v46 - v47;
  __chkstk_darwin(v49);
  v51 = (&v96 - v50);
  __chkstk_darwin(v52);
  v54 = &v96 - v53;
  sub_1000161C0(v29, v29[3]);
  sub_100886C40();
  v55 = v113;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v55)
  {
    goto LABEL_12;
  }

  v97 = v51;
  v98 = v48;
  v99 = v54;
  v100 = v44;
  v113 = v29;
  v56 = v111;
  v57 = v112;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v59 != v58 >> 1)
  {
    sub_100021758();
    if (v64 == v65)
    {
      __break(1u);
      return;
    }

    v66 = *(v63 + v62);
    v67 = sub_100618E7C();
    v69 = v68;
    v71 = v70;
    swift_unknownObjectRelease();
    v96 = v67;
    v72 = v69 == v71 >> 1;
    v73 = v109;
    v74 = v110;
    if (!v72)
    {
      v60 = v56;
      v61 = v100;
      goto LABEL_11;
    }

    if (v66)
    {
      if (v66 == 1)
      {
        sub_100017810();
        sub_100886CE8();
        v75 = v106;
        sub_100052188(&type metadata for WeatherData.WeatherStatisticsState.LoadingCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v102 + 8))(v75, v104);
        v76 = sub_100049E2C();
        v77(v76);
        swift_storeEnumTagMultiPayload();
LABEL_17:
        sub_10001D020();
        sub_100003940();
        sub_100886A98();
        v82 = v113;
        goto LABEL_13;
      }

      a14 = 2;
      sub_100886C94();
      sub_100052188(&type metadata for WeatherData.WeatherStatisticsState.LoadedCodingKeys, &a14);
      type metadata accessor for WeatherStatisticsModel();
      sub_100017F70();
      sub_1008869A0(v84, v85, &protocol conformance descriptor for WeatherStatisticsModel);
      v86 = v108;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v73 + 8))(v86, v74);
      v94 = sub_100049E2C();
      v95(v94);
      swift_storeEnumTagMultiPayload();
      sub_10001D020();
    }

    else
    {
      a12 = 0;
      sub_100886D3C();
      sub_100052188(&type metadata for WeatherData.WeatherStatisticsState.FailedCodingKeys, &a12);
      v83 = KeyedDecodingContainer.decode(_:forKey:)();
      v88 = v87;
      swift_unknownObjectRelease();
      v89 = sub_100071EB8();
      v90(v89);
      v91 = sub_100049E2C();
      v92(v91);
      v93 = v97;
      *v97 = v83;
      v93[1] = v88;
      swift_storeEnumTagMultiPayload();
      sub_10001D020();
    }

    sub_100886A98();
    goto LABEL_17;
  }

  v60 = v56;
  v61 = v100;
LABEL_11:
  v78 = type metadata accessor for DecodingError();
  swift_allocError();
  v80 = v79;
  sub_10022C350(&qword_100CA7610, &qword_100A327C0);
  *v80 = v61;
  v81 = KeyedDecodingContainer.codingPath.getter();
  sub_10000E98C(v81);
  (*(*(v78 - 8) + 104))(v80, enum case for DecodingError.typeMismatch(_:), v78);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v60 + 8))(v25, v57);
  v29 = v113;
LABEL_12:
  v82 = v29;
LABEL_13:
  sub_100006F14(v82);
  sub_10000C8F4();
}

uint64_t sub_100886690@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_1000426CC();
  v4 = sub_10022C350(&qword_100CE08E0, &unk_100A90910);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_100015070();
  sub_100886A40();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = *v1;
    v13 = v1[1];
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    Dictionary.init(dictionaryLiteral:)();
LABEL_6:
    ShortDescription.init(name:_:)();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    Dictionary.init(dictionaryLiteral:)();
    goto LABEL_6;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  sub_100004D04();
  sub_1008869E8(v1, v11);
LABEL_7:
  a1[3] = v4;
  a1[4] = sub_100886D90();
  v15 = sub_100042FB0(a1);
  return (*(v6 + 32))(v15, v9, v4);
}

uint64_t sub_1008868EC(uint64_t a1)
{
  sub_1008869A0(&qword_100CE08F0, type metadata accessor for WeatherData.WeatherStatisticsState, aI_65);

  return ShortDescribable.description.getter();
}

uint64_t sub_1008869A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1008869E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100886A40()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100886A98()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100886AF0()
{
  result = qword_100CE07D0;
  if (!qword_100CE07D0)
  {
    result = swift_getWitnessTable(byte_100A910D4, &type metadata for WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE07D0);
  }

  return result;
}

unint64_t sub_100886B44()
{
  result = qword_100CE0830;
  if (!qword_100CE0830)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for WeatherData.CachingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0830);
  }

  return result;
}

unint64_t sub_100886B98()
{
  result = qword_100CE0838;
  if (!qword_100CE0838)
  {
    result = swift_getWitnessTable(byte_100A91034, &type metadata for WeatherData.CachingState.CachedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0838);
  }

  return result;
}

unint64_t sub_100886BEC()
{
  result = qword_100CE0848;
  if (!qword_100CE0848)
  {
    result = swift_getWitnessTable(asc_100A90FE4, &type metadata for WeatherData.CachingState.FreshCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0848);
  }

  return result;
}

unint64_t sub_100886C40()
{
  result = qword_100CE0890;
  if (!qword_100CE0890)
  {
    result = swift_getWitnessTable(asc_100A90F94, &type metadata for WeatherData.WeatherStatisticsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0890);
  }

  return result;
}

unint64_t sub_100886C94()
{
  result = qword_100CE0898;
  if (!qword_100CE0898)
  {
    result = swift_getWitnessTable(byte_100A90F44, &type metadata for WeatherData.WeatherStatisticsState.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0898);
  }

  return result;
}

unint64_t sub_100886CE8()
{
  result = qword_100CE08A8;
  if (!qword_100CE08A8)
  {
    result = swift_getWitnessTable(byte_100A90EF4, &type metadata for WeatherData.WeatherStatisticsState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE08A8);
  }

  return result;
}

unint64_t sub_100886D3C()
{
  result = qword_100CE08B0;
  if (!qword_100CE08B0)
  {
    result = swift_getWitnessTable(aM_7, &type metadata for WeatherData.WeatherStatisticsState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE08B0);
  }

  return result;
}

unint64_t sub_100886D90()
{
  result = qword_100CE08E8;
  if (!qword_100CE08E8)
  {
    v3 = sub_10022E824(&qword_100CE08E0, &unk_100A90910);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE08E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherData.WeatherStatisticsState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100886EF0(_BYTE *result, int a2, int a3)
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

_BYTE *sub_100886FBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100887178()
{
  result = qword_100CE08F8;
  if (!qword_100CE08F8)
  {
    result = swift_getWitnessTable(byte_100A90A44, &type metadata for WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE08F8);
  }

  return result;
}

unint64_t sub_1008871D0()
{
  result = qword_100CE0900;
  if (!qword_100CE0900)
  {
    result = swift_getWitnessTable(byte_100A90AFC, &type metadata for WeatherData.CachingState.CachedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0900);
  }

  return result;
}

unint64_t sub_100887228()
{
  result = qword_100CE0908;
  if (!qword_100CE0908)
  {
    result = swift_getWitnessTable(byte_100A90C04, &type metadata for WeatherData.CachingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0908);
  }

  return result;
}

unint64_t sub_100887280()
{
  result = qword_100CE0910;
  if (!qword_100CE0910)
  {
    result = swift_getWitnessTable(aE_14, &type metadata for WeatherData.WeatherStatisticsState.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0910);
  }

  return result;
}

unint64_t sub_1008872D8()
{
  result = qword_100CE0918;
  if (!qword_100CE0918)
  {
    result = swift_getWitnessTable(asc_100A90DC4, &type metadata for WeatherData.WeatherStatisticsState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0918);
  }

  return result;
}

unint64_t sub_100887330()
{
  result = qword_100CE0920;
  if (!qword_100CE0920)
  {
    result = swift_getWitnessTable(byte_100A90E7C, &type metadata for WeatherData.WeatherStatisticsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0920);
  }

  return result;
}

unint64_t sub_100887388()
{
  result = qword_100CE0928;
  if (!qword_100CE0928)
  {
    result = swift_getWitnessTable(byte_100A90D34, &type metadata for WeatherData.WeatherStatisticsState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0928);
  }

  return result;
}

unint64_t sub_1008873E0()
{
  result = qword_100CE0930;
  if (!qword_100CE0930)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for WeatherData.WeatherStatisticsState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0930);
  }

  return result;
}

unint64_t sub_100887438()
{
  result = qword_100CE0938;
  if (!qword_100CE0938)
  {
    result = swift_getWitnessTable(byte_100A90CE4, &type metadata for WeatherData.WeatherStatisticsState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0938);
  }

  return result;
}

unint64_t sub_100887490()
{
  result = qword_100CE0940;
  if (!qword_100CE0940)
  {
    result = swift_getWitnessTable(aU_13, &type metadata for WeatherData.WeatherStatisticsState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0940);
  }

  return result;
}

unint64_t sub_1008874E8()
{
  result = qword_100CE0948;
  if (!qword_100CE0948)
  {
    result = swift_getWitnessTable(byte_100A90C2C, &type metadata for WeatherData.WeatherStatisticsState.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0948);
  }

  return result;
}

unint64_t sub_100887540()
{
  result = qword_100CE0950;
  if (!qword_100CE0950)
  {
    result = swift_getWitnessTable(asc_100A90C54, &type metadata for WeatherData.WeatherStatisticsState.LoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0950);
  }

  return result;
}

unint64_t sub_100887598()
{
  result = qword_100CE0958;
  if (!qword_100CE0958)
  {
    result = swift_getWitnessTable(byte_100A90DEC, &type metadata for WeatherData.WeatherStatisticsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0958);
  }

  return result;
}

unint64_t sub_1008875F0()
{
  result = qword_100CE0960;
  if (!qword_100CE0960)
  {
    result = swift_getWitnessTable(byte_100A90E14, &type metadata for WeatherData.WeatherStatisticsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0960);
  }

  return result;
}

unint64_t sub_100887648()
{
  result = qword_100CE0968;
  if (!qword_100CE0968)
  {
    result = swift_getWitnessTable(byte_100A90B24, &type metadata for WeatherData.CachingState.FreshCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0968);
  }

  return result;
}

unint64_t sub_1008876A0()
{
  result = qword_100CE0970;
  if (!qword_100CE0970)
  {
    result = swift_getWitnessTable(byte_100A90B4C, &type metadata for WeatherData.CachingState.FreshCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0970);
  }

  return result;
}

unint64_t sub_1008876F8()
{
  result = qword_100CE0978;
  if (!qword_100CE0978)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for WeatherData.CachingState.CachedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0978);
  }

  return result;
}

unint64_t sub_100887750()
{
  result = qword_100CE0980;
  if (!qword_100CE0980)
  {
    result = swift_getWitnessTable(asc_100A90A94, &type metadata for WeatherData.CachingState.CachedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0980);
  }

  return result;
}

unint64_t sub_1008877A8()
{
  result = qword_100CE0988;
  if (!qword_100CE0988)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for WeatherData.CachingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0988);
  }

  return result;
}

unint64_t sub_100887800()
{
  result = qword_100CE0990;
  if (!qword_100CE0990)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for WeatherData.CachingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0990);
  }

  return result;
}

unint64_t sub_100887858()
{
  result = qword_100CE0998;
  if (!qword_100CE0998)
  {
    result = swift_getWitnessTable(asc_100A909B4, &type metadata for WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE0998);
  }

  return result;
}

unint64_t sub_1008878B0()
{
  result = qword_100CE09A0[0];
  if (!qword_100CE09A0[0])
  {
    result = swift_getWitnessTable(byte_100A909DC, &type metadata for WeatherData.CodingKeys, v0, v1);
    atomic_store(result, qword_100CE09A0);
  }

  return result;
}

uint64_t sub_10088791C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a1, a2, a3);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, a4);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a4, v7, 1, v8);
}

uint64_t sub_1008879F0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a3;
  v66 = a4;
  v53 = a2;
  v54 = a1;
  v63 = a7;
  v64 = a2 & 1;
  v52 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v51 = v9;
  __chkstk_darwin(v10);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v79 = a6;
  v13 = sub_10000898C();
  swift_getWitnessTable(v13, v12, &v79);
  v14 = type metadata accessor for ZStack();
  sub_1000037C4();
  v60 = v15;
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for PlaceholderContentView();
  v20 = type metadata accessor for ModifiedContent();
  v21 = sub_100006A08();
  WitnessTable = swift_getWitnessTable(v21, v14);
  v23 = sub_10001D038();
  v78[0] = swift_getWitnessTable(v23, v19);
  v78[1] = &protocol witness table for _OpacityEffect;
  v24 = sub_100007E30();
  v25 = swift_getWitnessTable(v24, v20, v78);
  v74 = v14;
  v75 = v20;
  v56 = v20;
  v58 = WitnessTable;
  v76 = WitnessTable;
  v77 = v25;
  v55 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v57 = v27;
  __chkstk_darwin(v28);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f64[0] = __chkstk_darwin(v31);
  v34 = &v49 - v33;
  v61 = a5;
  v62 = a6;
  v67 = a5;
  v68 = a6;
  v35 = v54;
  v69 = v54;
  v70 = v64;
  LOBYTE(a5) = v53;
  v36 = (v53 >> 8) & 1;
  v71 = BYTE1(v53) & 1;
  v72 = v65;
  v73 = v66;
  j___s7SwiftUI9AlignmentV6centerACvgZ(v32);
  v59 = v18;
  ZStack.init(alignment:content:)();

  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v50;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v51 + 8))(v38, v52);
  }

  __chkstk_darwin(v39);
  v40 = v62;
  *(&v49 - 6) = v61;
  *(&v49 - 5) = v40;
  *(&v49 - 4) = v35;
  *(&v49 - 24) = v64;
  *(&v49 - 23) = v36;
  v41 = v66;
  *(&v49 - 2) = v65;
  *(&v49 - 1) = v41;
  v42 = swift_checkMetadataState();
  v43 = v58;
  v44 = v55;
  v45 = v59;
  View.animation<A>(_:body:)();

  (*(v60 + 8))(v45, v14);
  v74 = v14;
  v75 = v42;
  v76 = v43;
  v77 = v44;
  sub_100010E3C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v47 = *(v57 + 8);
  v47(v30, OpaqueTypeMetadata2);
  sub_1000833D8(v34, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v47)(v34, OpaqueTypeMetadata2);
}

uint64_t sub_100887F10@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v42 = a7;
  v38 = a4;
  v39 = a3;
  v37 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v36 = type metadata accessor for EnvironmentValues();
  v14 = *(v36 - 8);
  __chkstk_darwin(v36);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v40 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = __chkstk_darwin(v20);
  v23 = v35 - v22;
  if ((a2 & 0x100) == 0)
  {
    goto LABEL_5;
  }

  if ((a2 & 1) == 0)
  {
    v35[1] = static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v24 = (*(v14 + 8))(v16, v36);
  }

  v27 = sub_100611110(v24, v25);

  if ((v27 & 1) == 0)
  {
    v31 = 1;
    v28 = v41;
  }

  else
  {
LABEL_5:
    v39(v21);
    v28 = v41;
    sub_1000833D8(v10, a5, v41);
    v29 = v37;
    v30 = *(v37 + 8);
    v30(v10, a5);
    sub_1000833D8(v13, a5, v28);
    v30(v13, a5);
    (*(v29 + 32))(v19, v10, a5);
    v31 = 0;
  }

  sub_10001B350(v19, v31, 1, a5);
  sub_1003E7FD4(v19, v23);
  v32 = *(v40 + 8);
  v32(v19, v17);
  v43 = v28;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v17, &v43);
  sub_1000833D8(v23, v17, WitnessTable);
  return (v32)(v23, v17);
}

uint64_t sub_1008882D4@<X0>(uint64_t a1@<X0>, char a3@<W2>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v31 = a1;
  v32 = a6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v34 = a5;
  swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v12, &v34);
  type metadata accessor for ZStack();
  v13 = type metadata accessor for PlaceholderContentView();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    v30 = v8;
    v24 = v23;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v21 = (*(v9 + 8))(v11, v30);
  }

  sub_100611110(v21, v22);

  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for PlaceholderContentView<A>, v13);
  View.opacity(_:)();
  v33[0] = WitnessTable;
  v33[1] = &protocol witness table for _OpacityEffect;
  v26 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v33);
  sub_1000833D8(v17, v14, v26);
  v27 = *(v15 + 8);
  v27(v17, v14);
  sub_1000833D8(v20, v14, v26);
  return (v27)(v20, v14);
}

uint64_t sub_10088860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1008879F0(*v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24), a2);
}

uint64_t sub_100888640@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100887F10(*(v1 + 32), v2 | *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24), a1);
}

_BYTE *storeEnumTagSinglePayload for WireframedContentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100888780()
{
  result = qword_100CE0A28;
  if (!qword_100CE0A28)
  {
    result = swift_getWitnessTable(asc_100A912D8, &type metadata for WireframedContentStyle, v0, v1);
    atomic_store(result, &qword_100CE0A28);
  }

  return result;
}

uint64_t sub_1008887D4(uint64_t a1)
{
  sub_1000D60EC(qword_100CE0AF8, asc_100A91350);

  return ShortDescribable.description.getter();
}

uint64_t sub_10088882C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if ((v10 & 0x80000000) != 0)
      {
        v25 = (a1 + v11 + 16) & ~v11;
        if (v7 != v14)
        {
          v25 = (v25 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return sub_100024D10(v25, v7, v5);
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_100888A40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if ((v13 & 0x80000000) != 0)
          {
            v28 = &a1[v15 + 16] & ~v15;
            if (v9 != v14)
            {
              v28 = (v28 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            sub_10001B350(v28, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        break;
      case 2:
        *&a1[v18] = v24;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v18] = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100888D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a10;
  v18[5] = a11;
  v16 = type metadata accessor for StatePersistenceData(0, v18);
  (*(*(a5 - 8) + 32))(&a9[*(v16 + 68)], a3, a5);
  return (*(*(a6 - 8) + 32))(&a9[*(v16 + 72)], a4, a6);
}

unint64_t sub_100888E58()
{
  result = qword_100CE0B80;
  if (!qword_100CE0B80)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for CalendarWeekdayViewModel, v0, v1);
    atomic_store(result, &qword_100CE0B80);
  }

  return result;
}

uint64_t static LocationWeatherRelevancyInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

Swift::Int sub_100888F30(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100888FCC(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100889048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE0B88, &unk_100A91530);
  __chkstk_darwin(v4);
  v6 = v8 - v5;
  if (a1)
  {
    *v6 = 0;
    v6[8] = 1;
    v8[1] = a1;
    swift_getKeyPath();

    sub_10022C350(&qword_100CE0B90, &qword_100A91558);
    sub_100006F64(&qword_100CE0B98, &qword_100CE0B90, &qword_100A91558, &protocol conformance descriptor for [A]);
    sub_100889424();
    ForEach<>.init(_:id:content:)();
    sub_100889478(v6, a2);
    return sub_10001B350(a2, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

uint64_t sub_100889208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  HIDWORD(v28) = *(a1 + 16);
  v30 = v7;
  v31 = v8;
  sub_10002D5A4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.caption2(_:), v3);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v4 + 8))(v6, v3);
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10010CD64(v9, v11, v13 & 1);

  if (HIDWORD(v28) == 1)
  {
    static Color.secondary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10010CD64(v14, v16, v18 & 1);

  v27 = v29;
  *v29 = v19;
  v27[1] = v21;
  *(v27 + 16) = v23 & 1;
  v27[3] = v25;
  return result;
}

unint64_t sub_100889424()
{
  result = qword_100CE0BA0;
  if (!qword_100CE0BA0)
  {
    result = swift_getWitnessTable(byte_100A91474, &type metadata for CalendarWeekdayViewModel, v0, v1);
    atomic_store(result, &qword_100CE0BA0);
  }

  return result;
}

uint64_t sub_100889478(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE0B88, &unk_100A91530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008894E8()
{
  result = qword_100CE0BA8;
  if (!qword_100CE0BA8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE0BB0, &qword_100A91560);
    v4[0] = sub_100006F64(&qword_100CE0BB8, &qword_100CE0B88, &unk_100A91530, &protocol conformance descriptor for GridRow<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE0BA8);
  }

  return result;
}

uint64_t sub_100889598()
{
  type metadata accessor for DemoPresetMiddleware();

  return swift_allocObject();
}

uint64_t sub_1008895CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = a5;
  v12[5] = a6;

  sub_10022C350(&qword_100CE1320, &qword_100A91C28);
  sub_100892224();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();
}