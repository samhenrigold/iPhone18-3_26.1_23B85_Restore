uint64_t sub_10014D6F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10014D840);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return sub_100024D10(((a1 & 0xFFFFFFFFFFFFFFF8) + v7 + 32) & ~v7, v6, v4);
  }

  v18 = *(a1 + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10014D870()
{
  sub_10022E824(&qword_100CC0B20, &qword_100A59658);
  sub_10022E824(&qword_100CA4680, &unk_100A59690);
  sub_10014D91C();
  v0 = type metadata accessor for EmptyVisualEffect();
  sub_100010208();
  v12 = sub_100061A3C(v1, v2, &protocol conformance descriptor for EmptyVisualEffect);
  sub_100005B34();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_1000043A0(OpaqueTypeConformance2, v4, v5, v6, v7, v8, v9, v10, v0, v12, v13, v14);
}

unint64_t sub_10014D91C()
{
  result = qword_100CC0B30;
  if (!qword_100CC0B30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC0B20, &qword_100A59658);
    v4[0] = sub_10023FBF4(&qword_100CC0B38, &unk_100CC0B28, &unk_100A59688, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_10014D9D4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0B30);
  }

  return result;
}

unint64_t sub_10014D9D4()
{
  result = qword_100CC0B40;
  if (!qword_100CC0B40)
  {
    result = swift_getWitnessTable(byte_100AA0A08, &type metadata for OptionalMatchedGeometryEffectModifier, v0, v1);
    atomic_store(result, &qword_100CC0B40);
  }

  return result;
}

unint64_t sub_10014DA48()
{
  result = qword_100CEB190;
  if (!qword_100CEB190)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CEAFB8, &unk_100AA0A60);
    v4[0] = sub_100006F64(&qword_100CEB198, &qword_100CEAFB0, &qword_100AA0A58, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB3460, &qword_100CB3468, &qword_100A45EA8, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CEB190);
  }

  return result;
}

unint64_t sub_10014DB4C()
{
  result = qword_100CDA230;
  if (!qword_100CDA230)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA028, &qword_100A85088);
    v4[0] = sub_100006F64(&qword_100CDA238, &qword_100CDA020, &qword_100A85080, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA230);
  }

  return result;
}

uint64_t sub_10014DC48()
{
  sub_1000164CC();
  v0 = type metadata accessor for VStack();
  sub_1000164CC();
  v1 = type metadata accessor for LazyVStack();
  v2 = type metadata accessor for _ConditionalContent();
  v4[0] = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v0);
  v4[1] = swift_getWitnessTable(&protocol conformance descriptor for LazyVStack<A>, v1);
  return swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v2, v4);
}

uint64_t sub_10014DD0C()
{
  sub_10000FE4C();
  v0 = sub_10014DD34();
  return sub_100005F94(v0);
}

unint64_t sub_10014DD54()
{
  result = qword_100CA60C8;
  if (!qword_100CA60C8)
  {
    result = swift_getWitnessTable(byte_100A30BEC, &type metadata for IsBackgroundDarkKey, v0, v1);
    atomic_store(result, &qword_100CA60C8);
  }

  return result;
}

void *sub_10014DDEC()
{
  v0 = sub_10014DE2C();
  sub_1000054C8(v0, &type metadata for ForegroundEffectKey);

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_10014DE2C()
{
  result = qword_100CA60F0;
  if (!qword_100CA60F0)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for ForegroundEffectKey, v0, v1);
    atomic_store(result, &qword_100CA60F0);
  }

  return result;
}

uint64_t sub_10014DE80@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1EB8 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
  v3 = sub_10000703C(v2, qword_100CA6010);
  return sub_100060DE0(v3, a1, &qword_100CA60E8, &unk_100A5A9F0);
}

uint64_t sub_10014DF40(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  sub_1000302D8(a1, &v7 - v4, &qword_100CA60E8, &unk_100A5A9F0);
  return sub_10014DFE0(v5);
}

unint64_t sub_10014E010()
{
  result = qword_100CB6E10;
  if (!qword_100CB6E10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerticalSizingBehaviorKey, &type metadata for VerticalSizingBehaviorKey, v0, v1);
    atomic_store(result, &qword_100CB6E10);
  }

  return result;
}

uint64_t sub_10014E064()
{
  sub_10014E010();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10014E0E0@<X0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1004F18A4();
  v5 = v4;
  sub_10022C350(&qword_100CC09E8, &qword_100A593E8);
  sub_1000037E8();
  v6 = sub_1000053B8();
  v7(v6);
  result = sub_10022C350(&qword_100CC09F0, &unk_100A593F0);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

uint64_t sub_10014E1B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC19A0, &qword_100A5A440);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC14A8, &qword_100A5A0D0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC19A8, &qword_100A5A448);
      sub_100018198(v39, &qword_100CC19A8);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC14B8, &qword_100A5A0D8);
      sub_1001BBAA4();
      sub_10023FBF4(&qword_100CC14B0, &qword_100CC14B8, &qword_100A5A0D8, &protocol conformance descriptor for VStack<A>);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC19A8, &qword_100A5A448);
  sub_100018198(v39, &qword_100CC19A8);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC14A8, &qword_100A5A0D0);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC14B8, &qword_100A5A0D8);
  sub_1001BBAA4();
  sub_10023FBF4(&qword_100CC14B0, &qword_100CC14B8, &qword_100A5A0D8, &protocol conformance descriptor for VStack<A>);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC14A8);
}

double sub_10014E74C()
{
  sub_10014E788();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10014E788()
{
  result = qword_100CC0758;
  if (!qword_100CC0758)
  {
    result = swift_getWitnessTable(asc_100A59124, &_s63LocationComponentContainerBackgroundPinningOffsetEnvironmentKeyVN, v0, v1);
    atomic_store(result, &qword_100CC0758);
  }

  return result;
}

unint64_t sub_10014E86C()
{
  result = qword_100CA6100;
  if (!qword_100CA6100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CompressedLocationHeaderHeightKey, &type metadata for CompressedLocationHeaderHeightKey, v0, v1);
    atomic_store(result, &qword_100CA6100);
  }

  return result;
}

double sub_10014E8C0()
{
  sub_10014E86C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10014E940(uint64_t a1)
{
  if (EnvironmentValues.accessibilityVoiceOverEnabled.getter())
  {
    return 1;
  }

  return EnvironmentValues.accessibilitySwitchControlEnabled.getter();
}

uint64_t sub_10014E978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v46 = type metadata accessor for PinnedScrollableViews();
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for LazyVStack();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v40 - v10;
  v50 = v6;
  v51 = v5;
  v11 = type metadata accessor for VStack();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v40 - v15;
  v54 = type metadata accessor for _ConditionalContent();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v40 - v16;
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 48);
  memcpy(__dst, (v2 + v21), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v57, (v2 + v21), sizeof(v57));
  }

  else
  {
    v41 = __dst[0];

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v18 + 8))(v20, v17);
  }

  v23 = v2 + *(a1 + 44);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = v17;
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v18 + 8))(v20, v41);
    if (LOBYTE(v57[0]) != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v11);
    v34 = v42;
    sub_1000833D8(v13, v11, WitnessTable);
    v28 = *(v44 + 8);
    v28(v13, v11);
    sub_1000833D8(v34, v11, WitnessTable);
    swift_getWitnessTable(&protocol conformance descriptor for LazyVStack<A>, v7);
    v29 = v52;
    sub_1003E8038();
    v28(v13, v11);
    v30 = v34;
    v31 = v11;
    goto LABEL_9;
  }

  if (v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  (*(v43 + 16))(v45, v2 + *(a1 + 36), v46);
  v25 = v48;
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  v26 = swift_getWitnessTable(&protocol conformance descriptor for LazyVStack<A>, v7);
  v27 = v47;
  sub_1000833D8(v25, v7, v26);
  v28 = *(v49 + 8);
  v28(v25, v7);
  sub_1000833D8(v27, v7, v26);
  swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v11);
  v29 = v52;
  sub_10012D09C();
  v28(v25, v7);
  v30 = v27;
  v31 = v7;
LABEL_9:
  v28(v30, v31);
  v35 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v11);
  v36 = swift_getWitnessTable(&protocol conformance descriptor for LazyVStack<A>, v7);
  v56[0] = v35;
  v56[1] = v36;
  v37 = v54;
  v38 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v54, v56);
  sub_1000833D8(v29, v37, v38);
  return (*(v53 + 8))(v29, v37);
}

uint64_t sub_10014F17C()
{
  v0 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  type metadata accessor for LocationContentView(0);
  sub_10009ECC8();
  (*(v4 + 32))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 != enum case for ContentSizeCategory.extraSmall(_:) && v10 != enum case for ContentSizeCategory.small(_:) && v10 != enum case for ContentSizeCategory.medium(_:) && v10 != enum case for ContentSizeCategory.large(_:) && v10 != enum case for ContentSizeCategory.extraLarge(_:) && v10 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v10 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v10 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v10 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      sub_100140210();
      sub_1007C7794();
      v22 = v21;
LABEL_40:
      sub_100147C14(v2, type metadata accessor for LocationViewModel);
      return v22;
    }

    (*(v4 + 8))(v6, v3);
  }

  if (qword_100CA2820 != -1)
  {
    swift_once();
  }

  v23 = byte_100CD9418;
  sub_100140210();
  if (v23 != 1)
  {
    v22 = *&v2[*(v0 + 28)];

    goto LABEL_40;
  }

  v24 = *&v2[*(v0 + 32)];

  sub_100147C14(v2, type metadata accessor for LocationViewModel);
  sub_10049BA50(v24);
  v22 = v25;

  return v22;
}

void sub_10014F4C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    type metadata accessor for LocationFooterViewModel(0);
    sub_100003928();
    if (*(v10 + 84) != a3)
    {
      *(v5 + a4[7]) = (v4 - 1);
      return;
    }

    v9 = a4[6];
  }

  v11 = sub_1000039EC(v9);

  sub_10001B350(v11, v12, v4, v13);
}

uint64_t sub_10014F5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    type metadata accessor for LocationFooterViewModel(0);
    sub_100003928();
    if (*(v7 + 84) != v3)
    {
      return sub_100005B00();
    }

    v6 = *(a3 + 24);
  }

  v8 = sub_1000039EC(v6);

  return sub_100024D10(v8, v9, v10);
}

uint64_t sub_10014F6D0()
{
  sub_10022E824(&qword_100CADD30, &unk_100A3D310);
  sub_10022E824(&qword_100CADD28, &qword_100A3D308);
  sub_10022E824(&qword_100CADBA0, &qword_100A3D250);
  sub_10000579C();
  sub_100006F64(v0, &qword_100CADD28, &qword_100A3D308, v1);
  sub_10014F7C8();
  swift_getOpaqueTypeConformance2();
  sub_10014F87C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10014F7C8()
{
  result = qword_100CADD48;
  if (!qword_100CADD48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CADBA0, &qword_100A3D250);
    v4[0] = sub_100067294(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CADD48);
  }

  return result;
}

unint64_t sub_10014F87C()
{
  result = qword_100CADD50;
  if (!qword_100CADD50)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for LocationViewModel.ContentStatus, v0, v1);
    atomic_store(result, &qword_100CADD50);
  }

  return result;
}

uint64_t type metadata accessor for LocationHeaderViewLargeText(uint64_t a1)
{
  result = qword_100CD50E8;
  if (!qword_100CD50E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014F91C(uint64_t a1)
{
  sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_1000612C8(319);
    if (v2 <= 0x3F)
    {
      sub_10009BE44(319, &unk_100CA41F0, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_10014F9F8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10014F9F8(uint64_t a1)
{
  if (!qword_100CA4348)
  {
    type metadata accessor for Font.Context();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA4348);
    }
  }
}

unint64_t sub_10014FA70()
{
  result = qword_100CDA120;
  if (!qword_100CDA120)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9FD8, &qword_100A85038);
    v4[0] = sub_10008152C(&qword_100CD9FF8, type metadata accessor for LocationHeaderView, asc_100A2DD34);
    v4[1] = sub_10008152C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA120);
  }

  return result;
}

unint64_t sub_10014FB5C()
{
  result = qword_100CDA118;
  if (!qword_100CDA118)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9FE0, &qword_100A85040);
    v4[0] = sub_10014FA70();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA118);
  }

  return result;
}

uint64_t sub_10014FC2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_100003940();
  v5 = sub_10022E824(v3, v4);
  sub_1000164CC();
  v12[1] = v5;
  v12[2] = &type metadata for String;
  v12[3] = v1;
  v12[4] = sub_100006F64(v6, v7, v8, v9);
  v12[5] = &protocol witness table for String;
  v10 = type metadata accessor for ForEach();
  v12[0] = v2;
  return swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v10, v12);
}

uint64_t sub_10014FCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v4 - 8);
  v199 = &v182 - v5;
  v6 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v6 - 8);
  v197 = &v182 - v7;
  v8 = type metadata accessor for Text.Measurements.Context();
  v200 = *(v8 - 8);
  v201 = v8;
  __chkstk_darwin(v8);
  v198 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for LocationHeaderView(0);
  __chkstk_darwin(v203);
  v202 = (&v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = sub_10022C350(&qword_100CD9FD8, &qword_100A85038);
  __chkstk_darwin(v204);
  v205 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v219 = &v182 - v13;
  v218 = sub_10022C350(&qword_100CD9FE0, &qword_100A85040);
  __chkstk_darwin(v218);
  v206 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v207 = &v182 - v16;
  v216 = sub_10022C350(&qword_100CDA0C0, &qword_100A85160);
  __chkstk_darwin(v216);
  v217 = &v182 - v17;
  v18 = type metadata accessor for AccessibilityTraits();
  v212 = *(v18 - 8);
  v213 = v18;
  __chkstk_darwin(v18);
  v211 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for LocationHeaderViewLargeText(0);
  __chkstk_darwin(v187);
  v188 = (&v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10022C350(&qword_100CDA0C8, &qword_100A85168);
  __chkstk_darwin(v21 - 8);
  v196 = &v182 - v22;
  v190 = sub_10022C350(&qword_100CDA0D0, &qword_100A85170);
  __chkstk_darwin(v190);
  v191 = &v182 - v23;
  v189 = sub_10022C350(&qword_100CDA0D8, &qword_100A85178);
  __chkstk_darwin(v189);
  v208 = &v182 - v24;
  v215 = sub_10022C350(&qword_100CDA0E0, &qword_100A85180);
  __chkstk_darwin(v215);
  v192 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v193 = &v182 - v27;
  v28 = type metadata accessor for ContentSizeCategory();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v210 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v209 = &v182 - v32;
  v220 = sub_10022C350(&qword_100CDA0E8, &qword_100A85188);
  __chkstk_darwin(v220);
  v214 = &v182 - v33;
  v34 = type metadata accessor for EnvironmentValues();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LocationContentScrollingHeaderView(0);
  v39 = v1 + v38[12];
  v40 = *v39;
  LODWORD(v39) = *(v39 + 8);
  v221 = a1;
  v222 = v2;
  if (v39 != 1)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a1 = v221;
    v2 = v222;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v35 + 8))(v37, v34);
    if (v226[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v195 = v37;
    v43 = v2;
    v44 = v209;
    sub_10009ECC8();
    v45 = v210;
    (*(v29 + 32))(v210, v44, v28);
    v46 = (*(v29 + 88))(v45, v28);
    v52 = v46 == enum case for ContentSizeCategory.extraSmall(_:) || v46 == enum case for ContentSizeCategory.small(_:) || v46 == enum case for ContentSizeCategory.medium(_:) || v46 == enum case for ContentSizeCategory.large(_:) || v46 == enum case for ContentSizeCategory.extraLarge(_:) || v46 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v46 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    v186 = v34;
    v194 = v35;
    if (!v52)
    {
      if (v46 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v46 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v46 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v46 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v46 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v57 = type metadata accessor for LocationViewModel(0);
        memcpy(v226, (v2 + *(v57 + 24)), 0x9AuLL);
        KeyPath = swift_getKeyPath();
        v60 = v187;
        v59 = v188;
        *v188 = KeyPath;
        *(v59 + 8) = 0;
        v61 = v60[5];
        *(v59 + v61) = swift_getKeyPath();
        sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
        swift_storeEnumTagMultiPayload();
        v62 = v59 + v60[6];
        *v62 = swift_getKeyPath();
        *(v62 + 8) = 0;
        v63 = v60[7];
        *(v59 + v63) = swift_getKeyPath();
        sub_10022C350(&qword_100CA3EE8, &qword_100A5D3F0);
        swift_storeEnumTagMultiPayload();
        memcpy((v59 + v60[8]), v226, 0x9AuLL);
        sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
        v64 = v212;
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100A2C3F0;
        sub_100151784(v226, v225);
        static AccessibilityTraits.isHeader.getter();
        v225[0] = v65;
        sub_10008152C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
        sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
        v66 = v38;
        v67 = v222;
        sub_100006F64(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
        v68 = v211;
        v69 = v213;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_10008152C(&qword_100CDA110, type metadata accessor for LocationHeaderViewLargeText, asc_100A7D438);
        View.accessibilityAddTraits(_:)();
        (*(v64 + 8))(v68, v69);
        sub_100147C14(v59, type metadata accessor for LocationHeaderViewLargeText);
        v70 = v66[9];
        memcpy(v225, (v67 + v70), 0x49uLL);
        if (v225[9])
        {
          v71 = v195;
          memcpy(v224, (v67 + v70), 0x48uLL);
          v72 = v214;
          v73 = v194;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v156 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v67 = v222;
          v157 = v195;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018144(v225, &qword_100CB71A8, &unk_100A4C930);
          v73 = v194;
          v71 = v157;
          (*(v194 + 8))(v157, v186);
          v72 = v214;
        }

        memcpy(__dst, v224, sizeof(__dst));
        sub_1000EF898();
        v158 = [objc_opt_self() currentDevice];
        v159 = [v158 userInterfaceIdiom];

        a1 = v221;
        if (v159)
        {
          memcpy(v224, (v67 + v70), 0x49uLL);
          if (v224[9])
          {
            memcpy(v223, (v67 + v70), sizeof(v223));
          }

          else
          {

            static os_log_type_t.fault.getter();
            v160 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_100018144(v224, &qword_100CB71A8, &unk_100A4C930);
            (*(v73 + 8))(v71, v186);
          }
        }

        static Alignment.leading.getter();
        _FrameLayout.init(width:height:alignment:)();
        v161 = v191;
        sub_10011C0F0(v196, v191, &qword_100CDA0C8, &qword_100A85168);
        v162 = (v161 + *(v190 + 36));
        v163 = v228;
        *v162 = v227;
        v162[1] = v163;
        v162[2] = v229;
        v164 = v161;
        v165 = v208;
        sub_10011C0F0(v164, v208, &qword_100CDA0D0, &qword_100A85170);
        *(v165 + *(v189 + 36)) = 256;
        sub_10022C350(&qword_100CA4060, &qword_100A2E120);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_100A2D320;
        v167 = static Edge.Set.leading.getter();
        *(v166 + 32) = v167;
        v168 = static Edge.Set.trailing.getter();
        *(v166 + 33) = v168;
        v169 = Edge.Set.init(rawValue:)();
        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v167)
        {
          v169 = Edge.Set.init(rawValue:)();
        }

        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v168)
        {
          v169 = Edge.Set.init(rawValue:)();
        }

        memcpy(v224, (v222 + v70), 0x49uLL);
        if (v224[9])
        {
          memcpy(v223, (v222 + v70), sizeof(v223));
        }

        else
        {

          static os_log_type_t.fault.getter();
          v170 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018144(v224, &qword_100CB71A8, &unk_100A4C930);
          (*(v73 + 8))(v71, v186);
        }

        EdgeInsets.init(_all:)();
        v172 = v171;
        v174 = v173;
        v176 = v175;
        v178 = v177;
        v179 = v192;
        sub_10011C0F0(v208, v192, &qword_100CDA0D8, &qword_100A85178);
        v180 = v179 + *(v215 + 36);
        *v180 = v169;
        *(v180 + 8) = v172;
        *(v180 + 16) = v174;
        *(v180 + 24) = v176;
        *(v180 + 32) = v178;
        *(v180 + 40) = 0;
        v153 = &qword_100CDA0E0;
        v154 = &qword_100A85180;
        v155 = v193;
        sub_10011C0F0(v179, v193, &qword_100CDA0E0, &qword_100A85180);
        sub_1000302D8(v155, v217, &qword_100CDA0E0, &qword_100A85180);
        swift_storeEnumTagMultiPayload();
        sub_1007E9F74();
        sub_10014FB5C();
        goto LABEL_68;
      }

      (*(v29 + 8))(v45, v28);
    }

    v74 = type metadata accessor for LocationViewModel(0);
    memcpy(v226, (v2 + *(v74 + 24)), 0x9AuLL);
    v75 = v38[6];
    v76 = v2 + v38[5];
    v77 = *v76;
    v209 = *(v76 + 8);
    v210 = v77;
    LODWORD(v196) = *(v76 + 16);
    v208 = *(v76 + 24);
    v78 = v2 + v75;
    v79 = *(v2 + v75);
    v80 = *(v2 + v75 + 8);
    v81 = *(v2 + v75 + 16);
    v82 = v2;
    v83 = *(v78 + 24);
    v84 = (v43 + v38[7]);
    v86 = *v84;
    v85 = v84[1];
    v88 = v84[2];
    v87 = v84[3];
    v192 = v79;
    v193 = v87;
    v89 = v82 + v38[10];
    v90 = *v89;
    LODWORD(v89) = *(v89 + 8);
    v191 = v80;
    LODWORD(v190) = v81;
    v188 = v86;
    v189 = v83;
    v187 = v85;
    v184 = v90;
    v185 = v88;
    if (v89 == 1)
    {
      v223[0] = v90 & 1;
      sub_100151784(v226, v225);
      sub_10010CD54(v210, v209, v196);

      sub_10010CD54(v79, v80, v81);

      sub_100148118(v86, v85, v88, v193);
      v91 = v184;
    }

    else
    {
      sub_100151784(v226, v225);
      sub_10010CD54(v210, v209, v196);

      sub_10010CD54(v79, v80, v81);

      sub_100148118(v86, v85, v88, v193);
      v92 = v184;
      sub_10022BF9C(v184, 0);
      static os_log_type_t.fault.getter();
      v93 = v38;
      v94 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v38 = v93;
      v95 = v195;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v92, 0);
      (*(v194 + 8))(v95, v34);
      v91 = v223[0];
    }

    v183 = v38;
    sub_100149314(v91 & 1);
    v96 = Text.font(_:)();
    v98 = v97;
    v100 = v99;

    v101 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v197, 1, 1, v101);
    v102 = type metadata accessor for Text.Suffix();
    sub_10001B350(v199, 1, 1, v102);
    v103 = v198;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v104 = v222;
    Text.Measurements.size(of:in:context:)();
    v106 = v105;
    sub_10010CD64(v96, v98, v100 & 1);

    (*(v200 + 8))(v103, v201);
    v107 = v183[9];
    memcpy(v225, (v104 + v107), 0x49uLL);
    if (v225[9])
    {
      memcpy(v224, (v104 + v107), 0x48uLL);
      v108 = v194;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v109 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v110 = v195;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(v225, &qword_100CB71A8, &unk_100A4C930);
      v108 = v194;
      (*(v194 + 8))(v110, v186);
    }

    v111 = v191;
    v113 = v188;
    v112 = v189;
    v114 = v187;
    v115 = v224[7];
    v116 = swift_getKeyPath();
    v117 = v202;
    *v202 = v116;
    *(v117 + 8) = 0;
    *(v117 + 16) = swift_getKeyPath();
    *(v117 + 24) = 0;
    v118 = v203;
    v119 = *(v203 + 24);
    *(v117 + v119) = swift_getKeyPath();
    sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
    swift_storeEnumTagMultiPayload();
    v120 = v118[7];
    *(v117 + v120) = swift_getKeyPath();
    sub_10022C350(&qword_100CAD618, &qword_100A4C660);
    swift_storeEnumTagMultiPayload();
    v121 = v117 + v118[8];
    *v121 = swift_getKeyPath();
    *(v121 + 8) = 0;
    v122 = v117 + v118[9];
    *v122 = swift_getKeyPath();
    *(v122 + 8) = 0;
    v123 = v118[10];
    *(v117 + v123) = swift_getKeyPath();
    sub_10022C350(&qword_100CB3278, &qword_100A70D50);
    swift_storeEnumTagMultiPayload();
    v124 = v117 + v118[11];
    *v124 = swift_getKeyPath();
    *(v124 + 8) = 0;
    v125 = v117 + v118[12];
    *v125 = swift_getKeyPath();
    *(v125 + 8) = 0;
    *(v125 + 16) = 0;
    *(v125 + 24) = 0;
    *(v125 + 32) = 0;
    v126 = v117 + v118[13];
    *v126 = swift_getKeyPath();
    *(v126 + 8) = 0u;
    *(v126 + 24) = 0u;
    *(v126 + 33) = 0u;
    Text.Measurements.init()();
    v224[0] = 0x4046800000000000;
    sub_10014AB54();
    ScaledMetric.init(wrappedValue:)();
    memcpy((v117 + v118[14]), v226, 0x9AuLL);
    v127 = v117 + v118[15];
    v128 = v209;
    *v127 = v210;
    *(v127 + 8) = v128;
    *(v127 + 16) = v196;
    *(v127 + 24) = v208;
    v129 = v117 + v118[16];
    *v129 = v192;
    *(v129 + 8) = v111;
    *(v129 + 16) = v190;
    *(v129 + 24) = v112;
    v130 = (v117 + v118[17]);
    *v130 = v113;
    v130[1] = v114;
    v131 = v193;
    v130[2] = v185;
    v130[3] = v131;
    *(v117 + v118[18]) = v106;
    *(v117 + v118[20]) = v115;
    *(v117 + v118[21]) = 0;
    sub_10008152C(&qword_100CD9FF8, type metadata accessor for LocationHeaderView, asc_100A2DD34);
    v132 = v205;
    View.accessibilityIdentifier(_:)();
    sub_100147C14(v117, type metadata accessor for LocationHeaderView);
    sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
    v133 = v212;
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isHeader.getter();
    v224[0] = v134;
    sub_10008152C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
    sub_100006F64(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
    v135 = v211;
    v136 = v213;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v133 + 8))(v135, v136);
    sub_100018144(v132, &qword_100CD9FD8, &qword_100A85038);
    sub_10022C350(&qword_100CA4060, &qword_100A2E120);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_100A2D320;
    LOBYTE(v111) = static Edge.Set.leading.getter();
    *(v137 + 32) = v111;
    v138 = static Edge.Set.trailing.getter();
    *(v137 + 33) = v138;
    v139 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v111)
    {
      v139 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v140 = Edge.Set.init(rawValue:)();
    a1 = v221;
    v72 = v214;
    if (v140 != v138)
    {
      v139 = Edge.Set.init(rawValue:)();
    }

    memcpy(v224, (v222 + v107), 0x49uLL);
    if (v224[9])
    {
      memcpy(__dst, (v222 + v107), sizeof(__dst));
    }

    else
    {

      static os_log_type_t.fault.getter();
      v141 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v142 = v195;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(v224, &qword_100CB71A8, &unk_100A4C930);
      (*(v108 + 8))(v142, v186);
    }

    EdgeInsets.init(_all:)();
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v151 = v206;
    sub_10011C0F0(v219, v206, &qword_100CD9FD8, &qword_100A85038);
    v152 = v151 + *(v218 + 36);
    *v152 = v139;
    *(v152 + 8) = v144;
    *(v152 + 16) = v146;
    *(v152 + 24) = v148;
    *(v152 + 32) = v150;
    *(v152 + 40) = 0;
    v153 = &qword_100CD9FE0;
    v154 = &qword_100A85040;
    v155 = v207;
    sub_10011C0F0(v151, v207, &qword_100CD9FE0, &qword_100A85040);
    sub_1000302D8(v155, v217, &qword_100CD9FE0, &qword_100A85040);
    swift_storeEnumTagMultiPayload();
    sub_1007E9F74();
    sub_10014FB5C();
LABEL_68:
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v155, v153, v154);
    sub_10011C0F0(v72, a1, &qword_100CDA0E8, &qword_100A85188);
    v41 = 0;
    return sub_10001B350(a1, v41, 1, v220);
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v41 = 1;
  return sub_10001B350(a1, v41, 1, v220);
}

void sub_100151820(uint64_t a1)
{
  sub_10013D7AC(319, &qword_100CA41E0, type metadata accessor for LocationHeaderViewFrameCoordinator);
  if (v1 <= 0x3F)
  {
    sub_10013D7AC(319, &qword_100CA41E8, type metadata accessor for LocationHeaderViewMeasurements);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100151940(uint64_t a1)
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

void sub_1001519FC(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100151B14(uint64_t a1)
{
  sub_10013D7AC(319, &qword_100CA41E0, type metadata accessor for LocationHeaderViewFrameCoordinator);
  if (v1 <= 0x3F)
  {
    sub_10013D7AC(319, &qword_100CA41E8, type metadata accessor for LocationHeaderViewMeasurements);
    if (v2 <= 0x3F)
    {
      sub_10009BDF4(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t storeEnumTagSinglePayload for PerformanceTestFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerformanceTestFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100151CE8()
{
  result = qword_100CA4638;
  if (!qword_100CA4638)
  {
    result = swift_getWitnessTable(byte_100A2E638, &type metadata for HostsLocationHeaderFrameCoordinatorViewModifier, v0, v1);
    atomic_store(result, &qword_100CA4638);
  }

  return result;
}

uint64_t sub_100151D58()
{
  v0 = sub_100003940();
  v2 = sub_10022E824(v0, v1);
  type metadata accessor for LocationHeaderViewFrameCoordinator(255);
  sub_100007EB8();
  sub_10023FBF4(v3, &unk_100CA46A8, &unk_100A2E870, v4);
  sub_1000166F0();
  v15 = sub_100151E08(v5, v6, byte_100A2DCD8);
  return sub_100017540(v15, v7, v8, v9, v10, v11, v12, v13, v2);
}

uint64_t sub_100151E08(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100151E50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v320 = a1;
  v319 = type metadata accessor for OpacityTransition();
  sub_1000037C4();
  v318 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  v7 = sub_100003918(v289 - v6);
  v8 = type metadata accessor for AutomationInfo(v7);
  v9 = sub_10001BA94(v8, &v346);
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v290 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v289[3] = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v301 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v300 = v14;
  __chkstk_darwin(v15);
  sub_1000038E4();
  sub_100003990(v16);
  v17 = sub_10022C350(&qword_100CA3D18, &qword_100A2DD88);
  sub_10001BA94(v17, &v328);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100003990(v19);
  v305 = sub_10022C350(&qword_100CA3D20, &qword_100A2DD90);
  sub_1000037C4();
  v304 = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  sub_100003990(v22);
  v23 = sub_10022C350(&qword_100CA3D28, &qword_100A2DD98);
  v24 = sub_10001BA94(v23, &v331);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003990(v289 - v26);
  v27 = sub_10022C350(&qword_100CA3D30, &qword_100A2DDA0);
  sub_10001BA94(v27, &v333);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CA3D38, &qword_100A2DDA8);
  sub_10001BA94(v30, &v336);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA3D40, &qword_100A2DDB0);
  sub_10001BA94(v33, &v335);
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CA3D48, &qword_100A2DDB8);
  sub_10001BA94(v36, &v338);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  sub_100003990(v38);
  v39 = sub_10022C350(&qword_100CA3D50, &qword_100A2DDC0);
  sub_10001BA94(v39, &v342);
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  sub_100003990(v41);
  v42 = sub_10022C350(&qword_100CA3D58, &qword_100A2DDC8);
  sub_10001BA94(v42, v341);
  sub_100003828();
  __chkstk_darwin(v43);
  sub_1000039BC();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  sub_100003810(v45);
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  sub_100003810(v48);
  sub_100003828();
  __chkstk_darwin(v49);
  sub_1000039BC();
  sub_100003918(v50);
  v329 = type metadata accessor for Text.Measurements.Context();
  sub_1000037C4();
  v340 = v51;
  __chkstk_darwin(v52);
  sub_1000038E4();
  sub_100003918(v53);
  v337 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v335 = v54;
  __chkstk_darwin(v55);
  sub_1000038E4();
  sub_100003918(v56);
  v328 = type metadata accessor for Text.Measurements();
  sub_1000037C4();
  v327 = v57;
  __chkstk_darwin(v58);
  sub_1000038E4();
  v60 = sub_100003918(v59);
  v61 = type metadata accessor for DisplayMetrics(v60);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_1000038E4();
  v64 = sub_100003918(v63);
  v65 = type metadata accessor for LocationHeaderViewMeasurements(v64);
  v66 = sub_10001BA94(v65, &v352);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  v69 = sub_100003918(v289 - v68);
  v70 = type metadata accessor for LocationHeaderView(v69);
  v71 = (v1 + v70[14]);
  v72 = v71[9];
  *&v356 = v71[8];
  *(&v356 + 1) = v72;
  v73 = sub_10002D5A4();

  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  sub_10023B2E8();
  v348 = Text.font(_:)();
  v347 = v79;
  v341[1] = v80;
  v351 = v81;

  sub_10010CD64(v74, v76, v78 & 1);

  v83 = v71[6];
  v82 = v71[7];
  v336 = v71;
  *&v356 = v83;
  *(&v356 + 1) = v82;

  v297 = v73;
  v84 = Text.init<A>(_:)();
  v86 = v85;
  v88 = v87;
  sub_1001536E8();
  v350 = Text.font(_:)();
  v349 = v89;
  v341[0] = v90;
  v346 = v91;

  sub_10010CD64(v84, v86, v88 & 1);

  v344 = sub_100153A64();
  v343 = v92;
  v330 = v93;
  v345 = v94;
  sub_1000FC9C8();
  (*(v327 + 16))(v342, v2 + v70[19], v328);
  static Font.largeTitle.getter();
  v324 = Text.font(_:)();
  v323 = v95;
  v325 = v96;

  v296 = v70;
  v97 = v70[17];
  v332 = v2;
  v98 = (v2 + v97);
  v99 = v98[1];
  v100 = v98[2];
  if (v98[3])
  {
    v101 = v335;
    v102 = v334;
    v103 = v337;
    (*(v335 + 104))(v334, enum case for Font.TextStyle.footnote(_:), v337);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v101 + 8))(v102, v103);
    LOBYTE(v356) = v100 & 1;
    v333 = Text.font(_:)();
    v334 = v104;
    LOBYTE(v103) = v105;
    v107 = v106;

    v335 = v103 & 1;
  }

  else
  {
    v333 = *v98;
    v335 = v100;
    v334 = v99;
    v107 = 0;
  }

  sub_1000A3C14(v339, v326 + *(v338 + 32), type metadata accessor for DisplayMetrics);
  v108 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v293, 1, 1, v108);
  v322 = type metadata accessor for Text.Suffix();
  sub_10001B350(v295, 1, 1, v322);

  sub_10002FD4C();
  v109 = sub_1000280A4();
  LODWORD(v338) = v110;
  sub_10010CD54(v109, v111, v110);
  sub_10002FD4C();
  v112 = sub_100022728();
  LODWORD(v337) = v113;
  sub_10010CD54(v112, v114, v113);
  sub_10002FD4C();
  v115 = sub_100041870();
  v292 = v116;
  sub_10010CD54(v115, v117, v116);
  v118 = v294;
  sub_100031418();
  v119 = sub_100037070();
  *(v121 - 256) = v120;
  sub_10001624C(v119, v122, v120, v325, v123, v124);
  v126 = v125;
  v128 = v127;
  v130 = v340 + 8;
  v129 = *(v340 + 8);
  v131 = v329;
  v129(v118, v329);
  v291 = v107;
  v321 = v129;
  if (v107)
  {
    v132 = sub_100019184();
    sub_10001B350(v132, v133, v134, v322);
    v135 = v335;
    v289[1] = v108;
    v136 = v130;
    v137 = v333;
    v138 = v334;
    sub_10010CD54(v333, v334, v335 & 1);

    sub_100031418();
    v139.n128_u64[0] = 0x7FF0000000000000;
    sub_10001624C(v137, v138, v135 & 1, v107, v139, v140);
    v142 = v141;
    v144 = v143;
    v335 = v135;
    v145 = v137;
    v130 = v136;
    v334 = v138;
    sub_10010CD64(v145, v138, v135 & 1);

    v146 = v321;
    v321(v118, v131);
    if (v126 <= v142)
    {
      v126 = v142;
    }

    v128 = v128 + v144;
  }

  else
  {
    v146 = v129;
  }

  v147 = v131;
  v148 = v326;
  *v326 = v126;
  *(v148 + 8) = v128;
  v149 = sub_100019184();
  v150 = v322;
  sub_10001B350(v149, v151, v152, v322);
  sub_100031418();
  sub_1000280A4();
  sub_100025060();
  v153 = v342;
  Text.Measurements.size(of:in:context:)();
  v155 = v154;
  v157 = v156;
  v146(v118, v147);
  *(v148 + 16) = v155;
  *(v148 + 24) = v157;
  v158 = sub_100019184();
  sub_10001B350(v158, v159, v160, v150);
  sub_100031418();
  sub_100022728();
  v340 = v130;
  sub_100025060();
  Text.Measurements.size(of:in:context:)();
  v162 = v161;
  v164 = v163;
  v146(v118, v147);
  *(v148 + 32) = v162;
  *(v148 + 40) = v164;
  v165 = sub_100019184();
  sub_10001B350(v165, v166, v167, v150);
  sub_100031418();
  v168 = v344;
  v169 = v343;
  v170 = v292;
  v171 = v345;
  sub_100025060();
  Text.Measurements.size(of:in:context:)();
  v173 = v172;
  v175 = v174;
  sub_10010CD64(v168, v169, v170);

  v176 = sub_100022728();
  sub_10010CD64(v176, v177, v337);
  v178 = v346;

  v179 = v348;
  v180 = v347;
  sub_10010CD64(v348, v347, v338);

  v181 = sub_100037070();
  sub_10010CD64(v181, v183, *(v182 - 256));

  sub_10014A53C(v333, v334, v335, v291);
  v321(v118, v329);
  sub_10000E73C();
  v184(v153, v328);
  sub_1000DFD78(v339, type metadata accessor for DisplayMetrics);
  *(v148 + 48) = v173;
  *(v148 + 56) = v175;
  sub_1001540E8(v148, v331, type metadata accessor for LocationHeaderViewMeasurements);
  v185 = static VerticalAlignment.center.getter();
  v186 = v298;
  *v298 = v185;
  *(v186 + 8) = 0;
  *(v186 + 16) = 1;
  v187 = sub_10022C350(&qword_100CA3D78, &qword_100A2DDE0);
  v284 = v178;
  v188 = v332;
  sub_100154144(v332, v179, v180, v338, v351, v350, v349, v337, v186 + *(v187 + 44), v284, v168, v169, v170, v171);
  LOBYTE(v168) = sub_100156C00();
  v189 = type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  sub_1000166F0();
  v192 = sub_100151E08(v190, v191, byte_100A2DCD8);
  v342 = v189;
  v340 = v192;
  v193 = Environment.init<A>(_:)();
  LOBYTE(v169) = v194;
  KeyPath = swift_getKeyPath();
  v354 = v169 & 1;
  v352 = 0;
  v196 = v303;
  v197 = v186 + *(v303 + 36);
  *v197 = v168 & 1;
  *(v197 + 1) = *v355;
  *(v197 + 4) = *&v355[3];
  *(v197 + 8) = v193;
  *(v197 + 16) = v169 & 1;
  *(v197 + 17) = *v353;
  *(v197 + 20) = *&v353[3];
  *(v197 + 24) = KeyPath;
  *(v197 + 32) = 0;
  *(v197 + 40) = 0;
  *(v197 + 48) = 0;
  *(v197 + 56) = v352;
  v198 = v299;
  static AccessibilityChildBehavior.combine.getter();
  v199 = sub_10023E40C();
  v200 = v302;
  View.accessibilityElement(children:)();
  sub_10000E73C();
  v201(v198, v301);
  sub_10003FDA0(v186, &qword_100CA3D18);
  sub_100031BCC();
  v203 = v188 + v202;
  v204 = *v203;
  if (*(v203 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v205 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v206 = v289[2];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v204, 0);
    sub_10000E73C();
    v207(v206, v290);
  }

  v208 = v306;
  *&v356 = v196;
  *(&v356 + 1) = v199;
  swift_getOpaqueTypeConformance2();
  v209 = v305;
  View.accessibilityRespondsToUserInteraction(_:)();
  sub_10000E73C();
  v210(v200, v209);
  sub_10022C350(&qword_100CA3DA8, &unk_100A3F3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v212 = v336;
  v213 = v336[1];
  *(inited + 32) = *v336;
  *(inited + 40) = v213;
  v214 = v212[3];
  v215 = *(v212 + 40) >> 6;
  if (v215)
  {
    if (v215 != 1)
    {
      v214 = 0;
      v216 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v214 = v336[2];
  }

LABEL_17:
  *(inited + 48) = v214;
  *(inited + 56) = v216;

  v217 = 0;
  v218 = _swiftEmptyArrayStorage;
LABEL_18:
  v219 = (inited + 40 + 16 * v217);
  while (++v217 != 3)
  {
    v220 = v219 + 2;
    v221 = *v219;
    v219 += 2;
    if (v221)
    {
      v222 = *(v220 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v218 = v225;
      }

      v223 = v218[2];
      if (v223 >= v218[3] >> 1)
      {
        sub_100109810();
        v218 = v226;
      }

      v218[2] = v223 + 1;
      v224 = &v218[2 * v223];
      v224[4] = v222;
      v224[5] = v221;
      goto LABEL_18;
    }
  }

  swift_setDeallocating();
  sub_10015A594();
  v227 = v307;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_10003FDA0(v208, &qword_100CA3D28);
  v228 = sub_10015A5A8();
  v230 = v229;
  v231 = sub_100156C00();
  v288 = v345;
  LODWORD(v339) = v330 & 1;
  v287 = v330 & 1;
  v286 = v343;
  v285 = v344;
  sub_10002FD4C();
  v232 = sub_1000280A4();
  sub_10015A7FC(v232, v233, v234, v351, v350, v349, v235, v346, v285, v286, v287, v288);
  v237 = v236;
  v238 = sub_10023B124();
  sub_100031BCC();
  v239 = v308;
  v241 = v308 + v240;
  *v241 = Environment.init<A>(_:)();
  *(v241 + 8) = v242 & 1;
  v243 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v244 = v243[5];
  *(v241 + v244) = swift_getKeyPath();
  sub_10022C350(&qword_100CA3DB0, &qword_100A2DE48);
  swift_storeEnumTagMultiPayload();
  v245 = v241 + v243[6];
  *v245 = swift_getKeyPath();
  *(v245 + 8) = 0;
  v246 = v241 + v243[7];
  *v246 = v228;
  *(v246 + 8) = v230 & 1;
  *(v241 + v243[8]) = v231 & 1;
  *(v241 + v243[9]) = v237;
  *(v241 + v243[10]) = v238;
  sub_10011C0F0(v227, v239, &qword_100CA3D28, &qword_100A2DD98);
  sub_10015AE2C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v247 = v311;
  sub_10011C0F0(v239, v311, &qword_100CA3D30, &qword_100A2DDA0);
  sub_100031BCC();
  v249 = (v247 + v248);
  v250 = v357;
  *v249 = v356;
  v249[1] = v250;
  v249[2] = v358;
  v251 = v315;
  *v315 = 0;
  *(v251 + 8) = 0;
  *(v251 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  sub_100031BCC();
  v252 = v310;
  v254 = v310 + v253;
  v255 = type metadata accessor for AutomationInfoProperty(0);
  sub_1000A3C14(v251, v254 + *(v255 + 24), type metadata accessor for AutomationInfo);
  sub_1000DFD78(v251, type metadata accessor for AutomationInfo);
  *v254 = 0;
  *(v254 + 8) = 0xE000000000000000;
  *(v254 + 16) = swift_getKeyPath();
  *(v254 + 24) = 0;
  sub_10011C0F0(v247, v252, &qword_100CA3D38, &qword_100A2DDA8);
  LOBYTE(v254) = *(v336 + 129);
  v256 = v312;
  sub_10011C0F0(v252, v312, &qword_100CA3D40, &qword_100A2DDB0);
  *(v256 + *(v309 + 52)) = v254;
  v257 = v317;
  OpacityTransition.init()();
  v258 = v318;
  v259 = v319;
  (*(v318 + 16))(v316, v257, v319);
  sub_100151E08(&qword_100CA3DB8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v260 = AnyTransition.init<A>(_:)();
  (*(v258 + 8))(v257, v259);
  v261 = v313;
  sub_10011C0F0(v256, v313, &qword_100CA3D48, &qword_100A2DDB8);
  sub_100031BCC();
  *(v261 + v262) = v260;
  v263 = swift_getKeyPath();
  sub_100031BCC();
  v264 = v314;
  v266 = (v314 + v265);
  v267 = sub_10022C350(&qword_100CA3DC0, &qword_100A2DEA0);
  v268 = v331;
  sub_1000A3C14(v331, v266 + *(v267 + 28), type metadata accessor for LocationHeaderViewMeasurements);
  *v266 = v263;
  sub_10011C0F0(v261, v264, &qword_100CA3D50, &qword_100A2DDC0);
  v269 = sub_10023B68C();
  v271 = v270;
  v272 = sub_100041870();
  sub_10010CD64(v272, v273, v339);

  sub_10002FD4C();
  v274 = sub_100022728();
  sub_10010CD64(v274, v275, v276);

  sub_10002FD4C();
  v277 = sub_1000280A4();
  sub_10010CD64(v277, v278, v279);

  sub_1000DFD78(v268, type metadata accessor for LocationHeaderViewMeasurements);
  v280 = v264;
  v281 = v320;
  sub_10011C0F0(v280, v320, &qword_100CA3D58, &qword_100A2DDC8);
  result = sub_10022C350(&qword_100CA3DC8, &qword_100A2DEA8);
  v283 = (v281 + *(result + 36));
  *v283 = v269;
  v283[1] = v271;
  return result;
}

uint64_t sub_1001536E8()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for LocationHeaderView(0) + 56) + 128) != 1)
  {
    v22 = v2;
    v14 = *v0;
    if (*(v0 + 8) == 1)
    {
      if ((v14 & 1) == 0)
      {
LABEL_5:
        v15 = &enum case for Font.TextStyle.title3(_:);
LABEL_8:
        (*(v10 + 104))(v12, *v15, v9);
        static Font.Weight.medium.getter();
        static Font.system(_:weight:)();
        (*(v10 + 8))(v12, v9);
        v18 = v22;
        (*(v22 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
        v13 = Font.leading(_:)();

        (*(v18 + 8))(v4, v1);
        return v13;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      v21 = v1;
      v17 = v16;
      os_log(_:dso:log:_:_:)();

      v1 = v21;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v14, 0);
      (*(v6 + 8))(v8, v5);
      if (v23 != 1)
      {
        goto LABEL_5;
      }
    }

    v15 = &enum case for Font.TextStyle.body(_:);
    goto LABEL_8;
  }

  (*(v10 + 104))(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.semibold.getter();
  v13 = static Font.system(_:weight:)();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_100153A64()
{
  v1 = v0 + *(type metadata accessor for LocationHeaderView(0) + 56);
  if (*(v1 + 128) == 1)
  {
    sub_10002D5A4();
    v2 = Text.init<A>(_:)();
    v4 = v3;
    v6 = v5;
    sub_10023B80C();
    v7 = Text.font(_:)();

    v8 = v6 & 1;
    v9 = v2;
    v10 = v4;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
    v30._object = 0x8000000100ABBCC0;
    v12._countAndFlagsBits = 0x3A4C202040253A48;
    v13._object = 0x8000000100ABBC90;
    v30._countAndFlagsBits = 0xD00000000000003CLL;
    v13._countAndFlagsBits = 0xD000000000000024;
    v12._object = 0xEA00000000004025;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v11, v12, v30);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100A2D320;
    v16 = *(v1 + 96);
    v15 = *(v1 + 104);
    *(v14 + 56) = &type metadata for String;
    v17 = sub_100035744();
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;
    v18 = *(v1 + 112);
    v19 = *(v1 + 120);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v17;
    *(v14 + 64) = v17;
    *(v14 + 72) = v18;
    *(v14 + 80) = v19;

    static String.localizedStringWithFormat(_:_:)();

    sub_10002D5A4();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    LOBYTE(v19) = v23;
    sub_100153D5C();
    v24 = Text.font(_:)();
    v26 = v25;
    v28 = v27;

    sub_10010CD64(v20, v22, v19 & 1);

    static Color.black.getter();
    Color.opacity(_:)();

    v7 = Text.shadow(color:radius:x:y:)();

    v8 = v28 & 1;
    v9 = v24;
    v10 = v26;
  }

  sub_10010CD64(v9, v10, v8);

  return v7;
}

uint64_t sub_100153D5C()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v28 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = v7;
    v23 = v1;
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v1 = v23;
    v7 = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v21, 0);
    (*(v16 + 8))(v20, v14);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v9 + 104))(v13, *v22, v7);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v9 + 8))(v13, v7);
  (*(v28 + 104))(v6, enum case for Font.Leading.tight(_:), v1);
  v25 = Font.leading(_:)();

  (*(v28 + 8))(v6, v1);
  return v25;
}

uint64_t sub_100154038(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100154090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001540E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100154144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, unsigned __int8 a13, uint64_t a14)
{
  v56 = a8;
  v59 = a6;
  v60 = a7;
  v57 = a3;
  v58 = a5;
  v54 = a4;
  v55 = a2;
  v49 = a13;
  v52 = a11;
  v53 = a12;
  v50 = a14;
  v51 = a10;
  v16 = type metadata accessor for ContentSizeCategory();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v48[-v21];
  v23 = sub_10022C350(&qword_100CA3DE0, &qword_100A2DEB8);
  __chkstk_darwin(v23 - 8);
  v25 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v48[-v27];
  __chkstk_darwin(v29);
  v31 = &v48[-v30];
  type metadata accessor for LocationHeaderView(0);
  sub_10009ECC8();
  (*(v17 + 32))(v19, v22, v16);
  v32 = (*(v17 + 88))(v19, v16);
  if (v32 == enum case for ContentSizeCategory.extraSmall(_:) || v32 == enum case for ContentSizeCategory.small(_:) || v32 == enum case for ContentSizeCategory.medium(_:) || v32 == enum case for ContentSizeCategory.large(_:) || v32 == enum case for ContentSizeCategory.extraLarge(_:) || v32 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v32 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_35;
  }

  if (v32 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v32 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v32 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v32 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v32 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v17 + 8))(v19, v16);
LABEL_35:
    v43 = static HorizontalAlignment.center.getter();
    goto LABEL_36;
  }

  v43 = static HorizontalAlignment.leading.getter();
LABEL_36:
  *v28 = v43;
  *(v28 + 1) = 0;
  v28[16] = 0;
  v44 = sub_10022C350(&qword_100CA3DE8, &qword_100A2DEC0);
  sub_100154548(a1, v55, v57, v54 & 1, v58, v59, v60, v56 & 1, &v28[*(v44 + 44)], v51, v52, v53, v49 & 1, v50);
  sub_10011C0F0(v28, v31, &qword_100CA3DE0, &qword_100A2DEB8);
  sub_1000302D8(v31, v25, &qword_100CA3DE0, &qword_100A2DEB8);
  *a9 = 0;
  *(a9 + 8) = 1;
  v45 = sub_10022C350(&qword_100CA3DF0, &qword_100A2DEC8);
  sub_1000302D8(v25, a9 + *(v45 + 48), &qword_100CA3DE0, &qword_100A2DEB8);
  v46 = a9 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_10003FDA0(v31, &qword_100CA3DE0);
  return sub_10003FDA0(v25, &qword_100CA3DE0);
}

uint64_t sub_100154548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char *a12, unsigned __int8 a13, uint64_t a14)
{
  LODWORD(v160) = a8;
  v163 = a6;
  v164 = a7;
  v161 = a3;
  v162 = a5;
  v158 = a4;
  v159 = a2;
  v168 = a9;
  v15 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v15 - 8);
  v125 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for EnvironmentValues();
  v122 = *(v17 - 8);
  v123 = v17;
  __chkstk_darwin(v17);
  v121 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for AccessibilityChildBehavior();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v147 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10022C350(&qword_100CA3DF8, &qword_100A2DED0);
  __chkstk_darwin(v149);
  v146 = (&v120 - v20);
  v153 = sub_10022C350(&qword_100CA3E00, &qword_100A2DED8);
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v148 = &v120 - v21;
  v22 = sub_10022C350(&qword_100CA3E08, &qword_100A2DEE0);
  __chkstk_darwin(v22 - 8);
  v167 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v171 = &v120 - v25;
  v26 = type metadata accessor for ContentSizeCategory();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v144 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v120 - v30;
  __chkstk_darwin(v31);
  v136 = &v120 - v32;
  __chkstk_darwin(v33);
  v35 = &v120 - v34;
  v36 = sub_10022C350(&qword_100CA3E10, &qword_100A2DEE8);
  v37 = v36 - 8;
  __chkstk_darwin(v36);
  v39 = &v120 - v38;
  v140 = sub_10022C350(&qword_100CA3E18, &qword_100A2DEF0);
  __chkstk_darwin(v140);
  v142 = &v120 - v40;
  v141 = sub_10022C350(&qword_100CA3E20, &qword_100A2DEF8);
  __chkstk_darwin(v141);
  v165 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v139 = &v120 - v43;
  __chkstk_darwin(v44);
  v170 = &v120 - v45;
  sub_10015532C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v156 = v179;
  v157 = v177;
  v154 = v182;
  v155 = v181;
  v195 = 1;
  v194 = v178;
  v193 = v180;
  sub_100155620(v39);
  sub_100156774();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = &v39[*(v37 + 44)];
  v47 = v184;
  v48 = v185;
  *v46 = v183;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  v145 = type metadata accessor for LocationHeaderView(0);
  v49 = *(v145 + 28);
  v166 = a1;
  v138 = a1 + v49;
  sub_10009ECC8();
  v50 = v136;
  v137 = *(v27 + 32);
  v137(v136, v35, v26);
  v124 = v27;
  v51 = *(v27 + 88);
  v169 = v26;
  v133 = v51;
  v52 = v51(v50, v26);
  v53 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v54 = enum case for ContentSizeCategory.extraSmall(_:);
  v131 = enum case for ContentSizeCategory.medium(_:);
  v132 = enum case for ContentSizeCategory.small(_:);
  v56 = v52 == enum case for ContentSizeCategory.extraSmall(_:) || v52 == enum case for ContentSizeCategory.small(_:) || v52 == enum case for ContentSizeCategory.medium(_:);
  v128 = enum case for ContentSizeCategory.extraLarge(_:);
  v129 = enum case for ContentSizeCategory.large(_:);
  v58 = v56 || v52 == enum case for ContentSizeCategory.large(_:) || v52 == enum case for ContentSizeCategory.extraLarge(_:);
  v127 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  if (!v58 && v52 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v52 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v52 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v52 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v52 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v52 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v52 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      static Alignment.leading.getter();
      goto LABEL_36;
    }

    (*(v124 + 8))(v50, v169);
  }

  static Alignment.center.getter();
LABEL_36:
  v130 = a14;
  v126 = a13;
  v136 = a12;
  v135 = a11;
  v134 = a10;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v65 = v142;
  sub_10011C0F0(v39, v142, &qword_100CA3E10, &qword_100A2DEE8);
  memcpy((v65 + *(v140 + 36)), v186, 0x70uLL);
  v66 = v166;
  v67 = sub_100156C00();
  sub_10015751C();
  v69 = v68;
  v70 = v139;
  sub_10011C0F0(v65, v139, &qword_100CA3E18, &qword_100A2DEF0);
  v71 = v70 + *(v141 + 36);
  *v71 = v67 & 1;
  *(v71 + 8) = v69;
  sub_10011C0F0(v70, v170, &qword_100CA3E20, &qword_100A2DEF8);
  v72 = v143;
  sub_10009ECC8();
  v73 = v144;
  v74 = v169;
  v137(v144, v72, v169);
  v75 = v133(v73, v74);
  if (v75 != v54 && v75 != v132 && v75 != v131 && v75 != v129 && v75 != v128 && v75 != v127 && v75 != v53)
  {
    if (v75 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v75 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v75 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v75 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v75 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v86 = static Alignment.topLeading.getter();
      goto LABEL_71;
    }

    (*(v124 + 8))(v73, v169);
  }

  v86 = static Alignment.top.getter();
LABEL_71:
  v88 = v146;
  *v146 = v86;
  *(v88 + 8) = v87;
  v89 = sub_10022C350(&qword_100CA3E28, &qword_100A2DF00);
  sub_100157928(v66, v159, v161, v158 & 1, v162, v163, v164, v160 & 1, v88 + *(v89 + 44), v134, v135, v136, v126 & 1, v130);
  v90 = v147;
  static AccessibilityChildBehavior.ignore.getter();
  v91 = sub_10023FBF4(&qword_100CA3E30, &qword_100CA3DF8, &qword_100A2DED0, &protocol conformance descriptor for ZStack<A>);
  v93 = v148;
  v92 = v149;
  View.accessibilityElement(children:)();
  (*(v150 + 8))(v90, v152);
  sub_10003FDA0(v88, &qword_100CA3DF8);
  v94 = v145;
  v95 = v66 + *(v145 + 56);
  v96 = *(v95 + 144);
  v187 = *(v95 + 136);
  v188 = v96;
  v175 = v92;
  v176 = v91;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v97 = v153;
  View.accessibilityLabel<A>(_:)();
  (*(v151 + 8))(v93, v97);
  if ((*(v95 + 130) & 1) == 0)
  {
    v99 = v66 + *(v94 + 44);
    v100 = *v99;
    if (*(v99 + 8) == 1)
    {
      if ((v100 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v101 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v102 = v121;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v100, 0);
      (*(v122 + 8))(v102, v123);
      if ((v187 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    v169 = 0;
    v163 = 0;
    v164 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    LODWORD(v166) = 1;
    goto LABEL_78;
  }

LABEL_72:
  v98 = v125;
  sub_1000FC9C8();
  sub_10015A420(v98, *(v66 + *(v94 + 68) + 24) != 0);
  sub_1000DFD78(v98, type metadata accessor for DisplayMetrics);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v166) = 0;
  v169 = v187;
  v163 = v191;
  v164 = v189;
  v174 = 1;
  v173 = v188;
  v172 = v190;
  v159 = 1;
  v160 = v188;
  v161 = v190;
  v162 = v192;
  LOBYTE(v175) = 0;
LABEL_78:
  v103 = v195;
  v104 = v194;
  v105 = v193;
  v106 = v170;
  v107 = v165;
  sub_1000302D8(v170, v165, &qword_100CA3E20, &qword_100A2DEF8);
  v108 = v171;
  v109 = v167;
  sub_1000302D8(v171, v167, &qword_100CA3E08, &qword_100A2DEE0);
  v110 = v168;
  *v168 = 0;
  *(v110 + 8) = v103;
  v111 = v156;
  v110[2] = v157;
  *(v110 + 24) = v104;
  v110[4] = v111;
  *(v110 + 40) = v105;
  v112 = v154;
  v110[6] = v155;
  v110[7] = v112;
  v113 = sub_10022C350(&qword_100CA3E38, &qword_100A2DF08);
  sub_1000302D8(v107, v110 + v113[12], &qword_100CA3E20, &qword_100A2DEF8);
  sub_1000302D8(v109, v110 + v113[16], &qword_100CA3E08, &qword_100A2DEE0);
  v114 = v110 + v113[20];
  v115 = v159;
  *v114 = 0;
  *(v114 + 1) = v115;
  v116 = v160;
  *(v114 + 2) = v169;
  *(v114 + 3) = v116;
  v117 = v161;
  *(v114 + 4) = v164;
  *(v114 + 5) = v117;
  v118 = v162;
  *(v114 + 6) = v163;
  *(v114 + 7) = v118;
  v114[64] = v166;
  sub_10003FDA0(v108, &qword_100CA3E08);
  sub_10003FDA0(v106, &qword_100CA3E20);
  sub_10003FDA0(v109, &qword_100CA3E08);
  return sub_10003FDA0(v107, &qword_100CA3E20);
}

uint64_t sub_10015532C()
{
  v1 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LocationHeaderView(0);
  if (*(v0 + *(v8 + 56) + 130))
  {
    goto LABEL_2;
  }

  v10 = v0 + *(v8 + 44);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if (v11)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v11, 0);
    (*(v5 + 8))(v7, v4);
    if (v14[15])
    {
      return 0;
    }
  }

LABEL_2:
  sub_1000FC9C8();
  v9 = sub_100155544(v3);
  sub_1000DFD78(v3, type metadata accessor for DisplayMetrics);
  return v9;
}

uint64_t sub_100155544(uint64_t *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    return 0x4034000000000000;
  }

  if (v3 != 1)
  {
    return 0;
  }

  v4 = sub_1004CF4D0(*a1);
  v5 = a1[1];
  if (!v4)
  {
    if (v5 == 1)
    {
      return 0x4050000000000000;
    }

    return 0x4034000000000000;
  }

  if (v5 == 1)
  {
    return 0x4053800000000000;
  }

  else
  {
    return 0x4041000000000000;
  }
}

uint64_t sub_100155620@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for ContentSizeCategory();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v62 - v5;
  v6 = sub_10022C350(&qword_100CA4030, &qword_100A2E090);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = sub_10022C350(&qword_100CA4038, &qword_100A2E098);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = sub_10022C350(&qword_100CA4040, &qword_100A2E0A0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v17 = sub_10022C350(&qword_100CA4048, &qword_100A2E0A8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v62 - v19;
  v63 = sub_10022C350(&qword_100CA4050, &qword_100A2E0B0);
  __chkstk_darwin(v63);
  v22 = &v62 - v21;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v23 = sub_10022C350(&qword_100CA4058, &qword_100A2E0B8);
  sub_100155C24(&v8[*(v23 + 44)]);
  if (*(v1 + *(type metadata accessor for LocationHeaderView(0) + 68) + 24))
  {
    v24 = 0.0;
  }

  else
  {
    v24 = -5.0;
  }

  sub_10011C0F0(v8, v12, &qword_100CA4030, &qword_100A2E090);
  v25 = &v12[*(v10 + 44)];
  *v25 = 0;
  *(v25 + 1) = v24;
  KeyPath = swift_getKeyPath();
  sub_10011C0F0(v12, v16, &qword_100CA4038, &qword_100A2E098);
  v27 = &v16[*(v14 + 44)];
  *v27 = KeyPath;
  v27[1] = 0x3FE0000000000000;
  v28 = swift_getKeyPath();
  sub_10011C0F0(v16, v20, &qword_100CA4040, &qword_100A2E0A0);
  v29 = &v20[*(v18 + 44)];
  *v29 = v28;
  *(v29 + 1) = 1;
  v29[16] = 0;
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v31 = static Edge.Set.leading.getter();
  *(inited + 32) = v31;
  v32 = static Edge.Set.trailing.getter();
  *(inited + 33) = v32;
  v33 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  v34 = v64;
  v35 = v65;
  sub_10009ECC8();
  v36 = v66;
  v37 = v34;
  v38 = v67;
  (*(v66 + 32))(v35, v37, v67);
  v39 = (*(v36 + 88))(v35, v38);
  if (v39 != enum case for ContentSizeCategory.extraSmall(_:) && v39 != enum case for ContentSizeCategory.small(_:) && v39 != enum case for ContentSizeCategory.medium(_:) && v39 != enum case for ContentSizeCategory.large(_:) && v39 != enum case for ContentSizeCategory.extraLarge(_:) && v39 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v39 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v40.n128_u64[0] = 0;
    if (v39 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v39 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v39 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v39 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v39 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      (*(v36 + 8))(v35, v38, v40);
    }
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_10011C0F0(v20, v22, &qword_100CA4048, &qword_100A2E0A8);
  v59 = &v22[*(v63 + 36)];
  *v59 = v33;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = v68;
  sub_10011C0F0(v22, v68, &qword_100CA4050, &qword_100A2E0B0);
  result = sub_10022C350(&qword_100CA4068, &qword_100A2E128);
  *(v60 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_100155C24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA4070, &qword_100A2E130);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_10022C350(&qword_100CA4078, &qword_100A2E138);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_100155E10(&v16 - v12);
  sub_100156410();
  sub_1000302D8(v13, v10, &qword_100CA4078, &qword_100A2E138);
  sub_1000302D8(v7, v4, &qword_100CA4070, &qword_100A2E130);
  sub_1000302D8(v10, a1, &qword_100CA4078, &qword_100A2E138);
  v14 = sub_10022C350(&qword_100CA4080, &qword_100A2E140);
  sub_1000302D8(v4, a1 + *(v14 + 48), &qword_100CA4070, &qword_100A2E130);
  sub_10003FDA0(v7, &qword_100CA4070);
  sub_10003FDA0(v13, &qword_100CA4078);
  sub_10003FDA0(v4, &qword_100CA4070);
  return sub_10003FDA0(v10, &qword_100CA4078);
}

uint64_t sub_100155E10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA40B8, &qword_100A2E160);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v51 - v11;
  v12 = sub_10022C350(&qword_100CA40C0, &qword_100A2E168);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for LocationHeaderView(0);
  v19 = *(v18 + 68);
  v67 = v1;
  v20 = v1 + v19;
  v21 = *(v20 + 24);
  if (v21)
  {
    v57 = v17;
    v58 = v14;
    v59 = v10;
    v60 = v9;
    v61 = v12;
    v62 = a1;
    v22 = *v20;
    v23 = *(v20 + 8);
    v24 = *(v20 + 16);
    v25 = *(v6 + 104);
    v52 = v18;
    v25(v8, enum case for Font.TextStyle.footnote(_:), v5);

    sub_10010CD54(v22, v23, v24 & 1);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v6 + 8))(v8, v5);
    v53 = v24;
    v55 = v22;
    v54 = v23;
    v56 = v21;
    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v31 = Text.shadow(color:radius:x:y:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_10010CD64(v26, v28, v30 & 1);

    v70 = v31;
    v71 = v33;
    v72 = v35 & 1;
    v73 = v37;
    v38 = v64;
    static AccessibilityChildBehavior.ignore.getter();
    v39 = v63;
    View.accessibilityElement(children:)();
    (*(v65 + 8))(v38, v66);
    sub_10010CD64(v31, v33, v35 & 1);

    v40 = v67 + *(v52 + 56);
    v41 = *(v40 + 24);
    v42 = *(v40 + 40) >> 6;
    if (v42)
    {
      if (v42 != 1)
      {
        v41 = 0;
        v43 = 0xE000000000000000;
        v46 = v61;
        v45 = v62;
        v48 = v59;
        v47 = v60;
        v50 = v57;
        v49 = v58;
        goto LABEL_11;
      }

      v43 = *(v40 + 32);
    }

    else
    {
      v43 = *(v40 + 24);
      v41 = *(v40 + 16);
    }

    v46 = v61;
    v45 = v62;
    v48 = v59;
    v47 = v60;
    v50 = v57;
    v49 = v58;

LABEL_11:
    v70 = v41;
    v71 = v43;
    v68 = &type metadata for Text;
    v69 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_10002D5A4();
    View.accessibilityLabel<A>(_:)();

    (*(v48 + 8))(v39, v47);
    ModifiedContent<>.accessibilityIdentifier(_:)();
    sub_10010CD64(v55, v54, v53 & 1);

    sub_10003FDA0(v49, &qword_100CA40C0);
    sub_10011C0F0(v50, v45, &qword_100CA40C0, &qword_100A2E168);
    return sub_10001B350(v45, 0, 1, v46);
  }

  return sub_10001B350(a1, 1, 1, v12);
}

uint64_t sub_100156410()
{
  v0 = type metadata accessor for LocationHeaderView(0);
  static Font.largeTitle.getter();
  v1 = Text.font(_:)();
  v3 = v2;
  v5 = v4;

  static Color.black.getter();
  sub_100156608();
  Color.opacity(_:)();

  sub_100156634();
  sub_10015667C();
  sub_100156658();
  v6 = Text.shadow(color:radius:x:y:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_10010CD64(v1, v3, v5 & 1);

  if (*(v15 + *(v0 + 68) + 24))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 4.0;
  }

  v21 = v10 & 1;
  *&v16 = v6;
  *(&v16 + 1) = v8;
  LOBYTE(v17) = v10 & 1;
  *(&v17 + 1) = v12;
  *&v18 = 0;
  *(&v18 + 1) = v13;
  *&v19 = swift_getKeyPath();
  *(&v19 + 1) = 0x3FC999999999999ALL;
  sub_10022C350(&qword_100CA4088, &qword_100A2E148);
  sub_10015669C();
  View.accessibilityIdentifier(_:)();
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v19;
  return sub_10003FDA0(v20, &qword_100CA4088);
}

double sub_100156608()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x3FD3333333333333;
  v0[8] = 0;
  return 0.3;
}

double sub_100156634()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4014000000000000;
  *(v0 + 24) = 0;
  return 5.0;
}

double sub_100156658()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  *(v0 + 48) = 0x4000000000000000;
  *(v0 + 56) = 0;
  return 2.0;
}

double sub_10015667C()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return 0.0;
}

unint64_t sub_10015669C()
{
  result = qword_100CA4090;
  if (!qword_100CA4090)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA4088, &qword_100A2E148);
    v4[0] = sub_10023EBBC(&qword_100CA4098, &qword_100CA40A0, &unk_100A2E150, &protocol witness table for _OffsetEffect);
    v4[1] = sub_10023FBF4(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA4090);
  }

  return result;
}

double sub_100156774()
{
  v0 = type metadata accessor for Font.TextStyle();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v40 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v45 = type metadata accessor for Text.Measurements.Context();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationHeaderView(0);
  v44 = *(v10 + 76);
  static Font.largeTitle.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  v16 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v7, 1, 1, v16);
  v38 = type metadata accessor for Text.Suffix();
  sub_10001B350(v4, 1, 1, v38);
  v39 = v7;
  v43 = v4;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v17 = v46;
  Text.Measurements.size(of:in:context:)();
  v19 = v18;
  sub_10010CD64(v11, v13, v15 & 1);

  v20 = *(v47 + 8);
  v47 += 8;
  v20(v9, v45);
  v21 = v17 + *(v10 + 68);
  if (*(v21 + 24))
  {
    v22 = *(v21 + 16);
    v23 = *v21;
    v24 = *(v21 + 8);
    v26 = v40;
    v25 = v41;
    v27 = v42;
    (*(v41 + 104))(v40, enum case for Font.TextStyle.footnote(_:), v42);
    v36 = v22;
    v35 = v24;
    sub_10010CD54(v23, v24, v22 & 1);

    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    v37 = v20;
    (*(v25 + 8))(v26, v27);
    v28 = Text.font(_:)();
    v30 = v29;
    LOBYTE(v24) = v31;

    sub_10001B350(v39, 1, 1, v16);
    sub_10001B350(v43, 1, 1, v38);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v33 = v32;
    sub_10010CD64(v28, v30, v24 & 1);

    sub_10010CD64(v23, v35, v36 & 1);

    v37(v9, v45);
  }

  else
  {
    v33 = 0.0;
  }

  return v19 + v33;
}

uint64_t sub_100156C00()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100156D84())
  {
    v5 = type metadata accessor for LocationHeaderView(0);
    if (*(v0 + *(v5 + 56) + 130))
    {
      v6 = 1;
    }

    else
    {
      v7 = v0 + *(v5 + 44);
      v8 = *v7;
      if (*(v7 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v9 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000EBD74(v8, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v8) = v11[15];
      }

      v6 = v8 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100156D84()
{
  v1 = v0;
  v2 = type metadata accessor for Locale.Language();
  v61 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA3DD8, &qword_100A2DEB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for ContentSizeCategory();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v60 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 16);
  LODWORD(v16) = *(v1 + 24);
  v65 = v8;
  if (v16 == 1)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v60 = v10;
    v20 = v17;
    v21 = v2;
    v22 = v1;
    v23 = v15;
    v24 = v14;
    v25 = v19;
    os_log(_:dso:log:_:_:)();

    v14 = v24;
    v15 = v23;
    v1 = v22;
    v2 = v21;
    v17 = v20;
    v10 = v60;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v15 + 8))(v20, v14);
    if (v71 != 1)
    {
      goto LABEL_62;
    }
  }

  v26 = type metadata accessor for LocationHeaderView(0);
  v27 = v67;
  sub_10009ECC8();
  v28 = v68;
  (*(v10 + 32))(v68, v27, v9);
  v29 = (*(v10 + 88))(v28, v9);
  if (v29 != enum case for ContentSizeCategory.extraSmall(_:) && v29 != enum case for ContentSizeCategory.small(_:) && v29 != enum case for ContentSizeCategory.medium(_:) && v29 != enum case for ContentSizeCategory.large(_:) && v29 != enum case for ContentSizeCategory.extraLarge(_:) && v29 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v29 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v29 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v29 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v29 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v29 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v29 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      goto LABEL_62;
    }

    (*(v10 + 8))(v28, v9);
  }

  v40 = v1 + *(v26 + 32);
  v41 = *v40;
  if (*(v40 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v41, 0);
    (*(v15 + 8))(v17, v14);
    if ((v70 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_62:
    v58 = 0;
    return v58 & 1;
  }

  if (v41)
  {
    goto LABEL_62;
  }

LABEL_42:
  v43 = v62;
  static Locale.current.getter();
  v44 = v66;
  Locale.language.getter();
  (*(v63 + 8))(v43, v64);
  v45 = v65;
  Locale.Language.languageCode.getter();
  (*(v61 + 8))(v44, v2);
  v46 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v45, 1, v46) == 1)
  {
    sub_10003FDA0(v45, &qword_100CA3DD8);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v49 = Locale.LanguageCode.identifier.getter();
    v50 = v45;
    v47 = v49;
    v48 = v51;
    (*(*(v46 - 8) + 8))(v50, v46);
  }

  v52 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v52 & 1) == 0)
    {
LABEL_47:

LABEL_60:
      v58 = 1;
      return v58 & 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v53 = v14;
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v52, 0);
    (*(v15 + 8))(v17, v53);
    if (v69 != 1)
    {
      goto LABEL_47;
    }
  }

  if (!v48)
  {
    goto LABEL_60;
  }

  v55 = v47 == 29281 && v48 == 0xE200000000000000;
  if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v47 == 26984 ? (v56 = v48 == 0xE200000000000000) : (v56 = 0), v56))
  {

    goto LABEL_62;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v58 = v57 ^ 1;
  return v58 & 1;
}

uint64_t sub_10015751C()
{
  v1 = v0;
  v2 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationHeaderView(0);
  v10 = v1 + v9[12];
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  if (*(v1 + v9[14] + 130) == 1)
  {
    if (!v15)
    {
      v30 = v13;

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      v31 = v5;
      v17 = v16;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v11, v12, v30, v14, 0);
      (*(v6 + 8))(v8, v31);
    }
  }

  else
  {
    if (!v15)
    {
      v30 = v13;

      static os_log_type_t.fault.getter();
      v31 = v12;
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v11, v31, v30, v14, 0);
      (*(v6 + 8))(v8, v5);
    }

    v19 = v1 + v9[13];
    v20 = *(v19 + 16);
    if (*(v19 + 48) != 1)
    {
      v31 = v5;
      v22 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 32);
      v29 = *(v19 + 24);
      v30 = v21;
      v28 = v23;
      v24 = *(v19 + 40);

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A54(v22, v30, v20, v29, v28, v24, 0);
      (*(v6 + 8))(v8, v31);
    }
  }

  sub_1000FC9C8();
  v26 = *(v4 + 1);
  sub_1000DFD78(v4, type metadata accessor for DisplayMetrics);
  if (v26 == 1)
  {
    sub_1001494E4();
  }

  result = static Solarium.isEnabled.getter();
  if (result)
  {
    sub_1000FC9C8();
    return sub_1000DFD78(v4, type metadata accessor for DisplayMetrics);
  }

  return result;
}

uint64_t sub_100157928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v110 = a8;
  v111 = a4;
  v109 = a7;
  v114 = a5;
  v115 = a6;
  v112 = a2;
  v113 = a3;
  v119 = a9;
  v102 = sub_10022C350(&qword_100CA3E40, &qword_100A2DF10);
  __chkstk_darwin(v102);
  v93 = (&v93 - v15);
  v103 = sub_10022C350(&qword_100CA3E48, &qword_100A2DF18);
  __chkstk_darwin(v103);
  v105 = &v93 - v16;
  v104 = sub_10022C350(&qword_100CA3E50, &qword_100A2DF20);
  __chkstk_darwin(v104);
  v94 = (&v93 - v17);
  v117 = sub_10022C350(&qword_100CA3E58, &qword_100A2DF28);
  __chkstk_darwin(v117);
  v120 = &v93 - v18;
  v19 = sub_10022C350(&qword_100CA3E60, &qword_100A2DF30);
  __chkstk_darwin(v19 - 8);
  v118 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v93 - v22;
  v24 = sub_10022C350(&qword_100CA3E68, &qword_100A2DF38);
  __chkstk_darwin(v24);
  v106 = &v93 - v25;
  v26 = sub_10022C350(&qword_100CA3E70, &qword_100A2DF40);
  __chkstk_darwin(v26 - 8);
  v28 = &v93 - v27;
  v29 = sub_10022C350(&qword_100CA3E78, &qword_100A2DF48);
  __chkstk_darwin(v29);
  v108 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v107 = &v93 - v32;
  v97 = type metadata accessor for EnvironmentValues();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10022C350(&qword_100CA3E80, &qword_100A2DF50);
  __chkstk_darwin(v34 - 8);
  v116 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v93 - v37;
  v39 = type metadata accessor for LocationHeaderView(0);
  v40 = v39;
  v100 = *(a1 + *(v39 + 56) + 130);
  if ((v100 & 1) == 0)
  {
    v54 = a1 + *(v39 + 44);
    v55 = *v54;
    if (*(v54 + 8) == 1)
    {
      if ((v55 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v56 = v29;
      v57 = v40;
      v58 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v40 = v57;
      v59 = v95;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v55, 0);
      v60 = v59;
      v29 = v56;
      (*(v96 + 8))(v60, v97);
      if ((v122 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v53 = 1;
    goto LABEL_11;
  }

LABEL_2:
  v99 = v40;
  v101 = v38;
  v98 = a12;
  v41 = v106;
  sub_100158570(a1);
  v42 = sub_100158804();
  v43 = v41 + *(v24 + 36);
  *v43 = 0;
  *(v43 + 8) = v42;
  sub_10015751C();
  v45 = v44;
  *v28 = static HorizontalAlignment.center.getter();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v46 = sub_10022C350(&qword_100CA3E88, &qword_100A2DF58);
  v38 = v101;
  sub_100158888(a1, v112, v113, v111 & 1, v114, v41, v115, v109, &v28[*(v46 + 44)], v45, v110 & 1, a10, a11, v98, a13 & 1, a14);
  v47 = v41;
  v40 = v99;
  sub_10003FDA0(v47, &qword_100CA3E68);
  if (*(a1 + *(v40 + 68) + 24))
  {
    v48 = -14.0;
  }

  else
  {
    v48 = -12.0;
  }

  v49 = v108;
  sub_10011C0F0(v28, v108, &qword_100CA3E70, &qword_100A2DF40);
  v50 = v49 + *(v29 + 36);
  *v50 = 0;
  *(v50 + 8) = v48;
  v51 = v49;
  v52 = v107;
  sub_10011C0F0(v51, v107, &qword_100CA3E78, &qword_100A2DF48);
  sub_10011C0F0(v52, v38, &qword_100CA3E78, &qword_100A2DF48);
  v53 = 0;
LABEL_11:
  sub_10001B350(v38, v53, 1, v29);
  if ((sub_100156D84() & 1) == 0)
  {
    if ((v100 & 1) == 0)
    {
      v89 = a1 + *(v40 + 44);
      v90 = *v89;
      if (*(v89 + 8) == 1)
      {
        if (v90)
        {
          goto LABEL_12;
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v91 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v92 = v95;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000EBD74(v90, 0);
        (*(v96 + 8))(v92, v97);
        if (v121 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    v77 = 1;
    goto LABEL_18;
  }

LABEL_12:
  v61 = sub_100156C00();
  v62 = static VerticalAlignment.center.getter();
  if (v61)
  {
    v63 = v94;
    *v94 = v62;
    *(v63 + 8) = 0x4024000000000000;
    *(v63 + 16) = 0;
    v64 = sub_10022C350(&qword_100CA3E98, &qword_100A2DF68);
    sub_10023BE88(a1, (v63 + *(v64 + 44)));
    v65 = static HierarchicalShapeStyle.secondary.getter();
    *(v63 + *(sub_10022C350(&qword_100CA3EA0, &qword_100A2DF70) + 36)) = v65;
    v66 = *(v102 + 36);
    v67 = enum case for BlendMode.plusLighter(_:);
    v68 = type metadata accessor for BlendMode();
    (*(*(v68 - 8) + 104))(v63 + v66, v67, v68);
    LOBYTE(v67) = sub_100156C00();
    sub_10015751C();
    v70 = v69 + sub_100156774() + 0.0;
    v71 = v63 + *(v104 + 36);
    type metadata accessor for LocationHeaderViewFrameCoordinator(0);
    sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator, byte_100A2DCD8);
    *v71 = Environment.init<A>(_:)();
    *(v71 + 8) = v72 & 1;
    v73 = type metadata accessor for ConditionSummaryModifier(0);
    v74 = v73[5];
    *(v71 + v74) = swift_getKeyPath();
    sub_10022C350(&qword_100CA3DB0, &qword_100A2DE48);
    swift_storeEnumTagMultiPayload();
    *(v71 + v73[6]) = v67 & 1;
    *(v71 + v73[7]) = v70;
    *(v71 + v73[8]) = 0x3FE999999999999ALL;
    *(v71 + v73[9]) = 0x3FF0000000000000;
    v75 = &qword_100CA3E50;
    sub_1000302D8(v63, v105, &qword_100CA3E50, &qword_100A2DF20);
    swift_storeEnumTagMultiPayload();
    sub_10023E4C4();
    sub_10023E580();
    _ConditionalContent<>.init(storage:)();
    v76 = v63;
  }

  else
  {
    v78 = v93;
    *v93 = v62;
    *(v78 + 8) = 0x4024000000000000;
    *(v78 + 16) = 0;
    v79 = sub_10022C350(&qword_100CA3E98, &qword_100A2DF68);
    sub_10023BE88(a1, (v78 + *(v79 + 44)));
    v80 = static HierarchicalShapeStyle.secondary.getter();
    *(v78 + *(sub_10022C350(&qword_100CA3EA0, &qword_100A2DF70) + 36)) = v80;
    v81 = *(v102 + 36);
    v82 = enum case for BlendMode.plusLighter(_:);
    v83 = type metadata accessor for BlendMode();
    (*(*(v83 - 8) + 104))(v78 + v81, v82, v83);
    v75 = &qword_100CA3E40;
    sub_1000302D8(v78, v105, &qword_100CA3E40, &qword_100A2DF10);
    swift_storeEnumTagMultiPayload();
    sub_10023E4C4();
    sub_10023E580();
    _ConditionalContent<>.init(storage:)();
    v76 = v78;
  }

  sub_10003FDA0(v76, v75);
  sub_10011C0F0(v120, v23, &qword_100CA3E58, &qword_100A2DF28);
  v77 = 0;
LABEL_18:
  sub_10001B350(v23, v77, 1, v117);
  v84 = v116;
  sub_1000302D8(v38, v116, &qword_100CA3E80, &qword_100A2DF50);
  v85 = v118;
  sub_1000302D8(v23, v118, &qword_100CA3E60, &qword_100A2DF30);
  v86 = v119;
  sub_1000302D8(v84, v119, &qword_100CA3E80, &qword_100A2DF50);
  v87 = sub_10022C350(&qword_100CA3E90, &qword_100A2DF60);
  sub_1000302D8(v85, v86 + *(v87 + 48), &qword_100CA3E60, &qword_100A2DF30);
  sub_10003FDA0(v23, &qword_100CA3E60);
  sub_10003FDA0(v38, &qword_100CA3E80);
  sub_10003FDA0(v85, &qword_100CA3E60);
  return sub_10003FDA0(v84, &qword_100CA3E80);
}

uint64_t sub_100158570(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA4028, &qword_100A2E088);
  __chkstk_darwin(v2);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TemperatureHighLowTextVertical();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for LocationHeaderView(0) + 56) + 128) == 1)
  {

    TemperatureHighLowTextVertical.init(highTemperature:lowTemperature:showNumericOnlyHighLow:scaleFactor:additionalSpacing:)();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_100151E08(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical, &protocol conformance descriptor for TemperatureHighLowTextVertical);
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    *v4 = sub_100153A64();
    *(v4 + 1) = v10;
    v4[16] = v11 & 1;
    *(v4 + 3) = v12;
    swift_storeEnumTagMultiPayload();
    sub_100151E08(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical, &protocol conformance descriptor for TemperatureHighLowTextVertical);
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_100158804()
{
  v1 = type metadata accessor for LocationHeaderView(0);
  result = -10.0;
  if (*(v0 + *(v1 + 56) + 128) == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    result = -23.0;
    if (v4 == 1)
    {
      return -20.0;
    }
  }

  return result;
}

uint64_t sub_100158888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  v127 = a8;
  v126 = a7;
  v125 = a6;
  v145 = a5;
  v17 = a4;
  v120 = a4;
  v119 = a3;
  v118 = a2;
  v138 = a9;
  v140 = a12;
  v139 = a11;
  v137 = sub_10022C350(&qword_100CA3EF8, &qword_100A2DFC8);
  __chkstk_darwin(v137);
  v117 = &v116 - v21;
  v132 = sub_10022C350(&qword_100CA3F00, &qword_100A2DFD0);
  __chkstk_darwin(v132);
  v135 = &v116 - v22;
  v134 = sub_10022C350(&qword_100CA3F08, &qword_100A2DFD8);
  __chkstk_darwin(v134);
  v116 = &v116 - v23;
  v124 = sub_10022C350(&qword_100CA3F10, &qword_100A2DFE0);
  __chkstk_darwin(v124);
  v131 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v142 = &v116 - v26;
  v27 = sub_10022C350(&qword_100CA3F18, &qword_100A2DFE8);
  __chkstk_darwin(v27 - 8);
  v129 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v141 = &v116 - v30;
  v31 = sub_10022C350(&qword_100CA3F20, &qword_100A2DFF0);
  __chkstk_darwin(v31 - 8);
  v136 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v133 = &v116 - v34;
  v35 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v35 - 8);
  v146 = &v116 - v36;
  v37 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v37 - 8);
  v143 = &v116 - v38;
  v39 = type metadata accessor for Text.Measurements.Context();
  v40 = *(v39 - 8);
  v147 = v39;
  v148 = v40;
  __chkstk_darwin(v39);
  v144 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TemperatureModifier(0);
  v43 = (v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v116 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10022C350(&qword_100CA3F28, &qword_100A2DFF8);
  __chkstk_darwin(v46 - 8);
  v48 = &v116 - v47;
  v49 = sub_10022C350(&qword_100CA3F30, &qword_100A2E000);
  __chkstk_darwin(v49);
  v51 = &v116 - v50;
  v52 = sub_10022C350(&qword_100CA3F38, &qword_100A2E008);
  __chkstk_darwin(v52 - 8);
  v130 = &v116 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v116 - v55;
  sub_10023B9F4(a2, a3, v17 & 1, v145, v48);
  v57 = sub_100156C00();
  v58 = sub_100156774();
  v59 = type metadata accessor for LocationHeaderView(0);
  v60 = v58 + a10;
  if (*(a1 + v59[17] + 24))
  {
    v61 = -14.0;
  }

  else
  {
    v61 = -12.0;
  }

  v62 = v60 + v61;
  v63 = type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  v64 = sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator, byte_100A2DCD8);
  v122 = v63;
  v121 = v64;
  *v45 = Environment.init<A>(_:)();
  v45[8] = v65 & 1;
  v66 = v43[7];
  *&v45[v66] = swift_getKeyPath();
  v123 = sub_10022C350(&qword_100CA3DB0, &qword_100A2DE48);
  swift_storeEnumTagMultiPayload();
  v45[v43[8]] = v57 & 1;
  *&v45[v43[9]] = v62;
  *&v45[v43[10]] = 0x3FE3333333333333;
  *&v45[v43[11]] = 0x3FE999999999999ALL;
  sub_10011C0F0(v48, v51, &qword_100CA3F28, &qword_100A2DFF8);
  sub_1001540E8(v45, &v51[*(v49 + 36)], type metadata accessor for TemperatureModifier);
  sub_10023E710();
  v128 = v56;
  v67 = a1;
  View.accessibilityIdentifier(_:)();
  sub_10003FDA0(v51, &qword_100CA3F30);
  v68 = v61 + sub_100156774() + a10;
  v69 = a1 + v59[19];
  v70 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v143, 1, 1, v70);
  v71 = type metadata accessor for Text.Suffix();
  sub_10001B350(v146, 1, 1, v71);
  v72 = v144;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v145 = v69;
  Text.Measurements.size(of:in:context:)();
  v74 = v73;
  v75 = *(v148 + 8);
  v148 += 8;
  v75(v72, v147);
  v76 = v68 + v74;
  if (*(v67 + v59[14] + 128) == 1)
  {
    sub_100159F24(v125, 1, v141, v76);
    sub_10001B350(v143, 1, 1, v70);
    sub_10001B350(v146, 1, 1, v71);
    v77 = v144;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v79 = v78;
    v75(v77, v147);
    v80 = v142;
    sub_100159AD8(v142);
    v81 = sub_100156C00();
    v82 = v80 + *(v124 + 36);
    *v82 = Environment.init<A>(_:)();
    *(v82 + 8) = v83 & 1;
    v84 = type metadata accessor for ConditionModifier(0);
    v85 = v84[5];
    *(v82 + v85) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v82 + v84[6]) = v81 & 1;
    *(v82 + v84[7]) = v76 + v79;
    *(v82 + v84[8]) = 0x3FC999999999999ALL;
    *(v82 + v84[9]) = 0x3FD999999999999ALL;
    v86 = v141;
    v87 = v129;
    sub_1000302D8(v141, v129, &qword_100CA3F18, &qword_100A2DFE8);
    v88 = v131;
    sub_1000302D8(v80, v131, &qword_100CA3F10, &qword_100A2DFE0);
    v89 = v116;
    sub_1000302D8(v87, v116, &qword_100CA3F18, &qword_100A2DFE8);
    v90 = sub_10022C350(&qword_100CA3F98, &qword_100A2E028);
    v91 = v89 + *(v90 + 48);
    *v91 = 0x4024000000000000;
    *(v91 + 8) = 0;
    sub_1000302D8(v88, v89 + *(v90 + 64), &qword_100CA3F10, &qword_100A2DFE0);
    sub_10003FDA0(v88, &qword_100CA3F10);
    sub_10003FDA0(v87, &qword_100CA3F18);
    sub_1000302D8(v89, v135, &qword_100CA3F08, &qword_100A2DFD8);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CA3F80, &qword_100CA3F08, &qword_100A2DFD8, &protocol conformance descriptor for TupleView<A>);
    sub_10023FBF4(&qword_100CA3F88, &qword_100CA3EF8, &qword_100A2DFC8, &protocol conformance descriptor for TupleView<A>);
    v92 = v133;
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v89, &qword_100CA3F08);
    sub_10003FDA0(v80, &qword_100CA3F10);
    v93 = v86;
    v94 = &qword_100CA3F18;
  }

  else
  {
    v95 = v142;
    sub_100159AD8(v142);
    v96 = sub_100156C00();
    v97 = v95 + *(v124 + 36);
    *v97 = Environment.init<A>(_:)();
    *(v97 + 8) = v98 & 1;
    v99 = type metadata accessor for ConditionModifier(0);
    v100 = v99[5];
    *(v97 + v100) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v97 + v99[6]) = v96 & 1;
    *(v97 + v99[7]) = v76;
    *(v97 + v99[8]) = 0x3FD999999999999ALL;
    *(v97 + v99[9]) = 0x3FE3333333333333;
    sub_10001B350(v143, 1, 1, v70);
    sub_10001B350(v146, 1, 1, v71);
    v101 = v144;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v103 = v102;
    v75(v101, v147);
    v104 = v141;
    sub_100159F24(v125, 0, v141, v76 + v103);
    v105 = v142;
    v106 = v131;
    sub_1000302D8(v142, v131, &qword_100CA3F10, &qword_100A2DFE0);
    v107 = v129;
    sub_1000302D8(v104, v129, &qword_100CA3F18, &qword_100A2DFE8);
    v108 = v117;
    sub_1000302D8(v106, v117, &qword_100CA3F10, &qword_100A2DFE0);
    v109 = sub_10022C350(&qword_100CA3F78, &qword_100A2E018);
    sub_1000302D8(v107, v108 + *(v109 + 48), &qword_100CA3F18, &qword_100A2DFE8);
    sub_10003FDA0(v107, &qword_100CA3F18);
    sub_10003FDA0(v106, &qword_100CA3F10);
    sub_1000302D8(v108, v135, &qword_100CA3EF8, &qword_100A2DFC8);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CA3F80, &qword_100CA3F08, &qword_100A2DFD8, &protocol conformance descriptor for TupleView<A>);
    sub_10023FBF4(&qword_100CA3F88, &qword_100CA3EF8, &qword_100A2DFC8, &protocol conformance descriptor for TupleView<A>);
    v92 = v133;
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v108, &qword_100CA3EF8);
    sub_10003FDA0(v104, &qword_100CA3F18);
    v93 = v105;
    v94 = &qword_100CA3F10;
  }

  sub_10003FDA0(v93, v94);
  v110 = v128;
  v111 = v130;
  sub_1000302D8(v128, v130, &qword_100CA3F38, &qword_100A2E008);
  v112 = v136;
  sub_1000302D8(v92, v136, &qword_100CA3F20, &qword_100A2DFF0);
  v113 = v138;
  sub_1000302D8(v111, v138, &qword_100CA3F38, &qword_100A2E008);
  v114 = sub_10022C350(&qword_100CA3F90, &qword_100A2E020);
  sub_1000302D8(v112, v113 + *(v114 + 48), &qword_100CA3F20, &qword_100A2DFF0);
  sub_10003FDA0(v92, &qword_100CA3F20);
  sub_10003FDA0(v110, &qword_100CA3F38);
  sub_10003FDA0(v112, &qword_100CA3F20);
  return sub_10003FDA0(v111, &qword_100CA3F38);
}

double sub_100159880()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0 + *(type metadata accessor for LocationHeaderView(0) + 56);
  v11 = 0.0;
  v12 = *(v10 + 8) == 11565 && *(v10 + 9) == 0xE200000000000000;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10023AF44(v9);
    LayoutDirection.temperatureOffsetDirection.getter();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v15 = *v0;
    if (*(v1 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v15, 0);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v15) = v19[15];
    }

    v17 = 12.0;
    if (v15)
    {
      v17 = 6.0;
    }

    return v14 * v17;
  }

  return v11;
}

uint64_t sub_100159AD8@<X0>(uint64_t a5@<X8>)
{
  v32 = a5;
  v31 = sub_10022C350(&qword_100CA3FF0, &qword_100A2E058);
  __chkstk_darwin(v31);
  v6 = &v29 - v5;
  v7 = sub_10022C350(&qword_100CA3FF8, &unk_100A2E060);
  __chkstk_darwin(v7 - 8);
  v30 = &v29 - v8;
  static Color.black.getter();
  Color.opacity(_:)();

  v9 = Text.shadow(color:radius:x:y:)();
  v11 = v10;
  v13 = v12;

  v33[0] = static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10010CD64(v9, v11, v13 & 1);

  v21 = *(sub_10022C350(&qword_100CA4000, &qword_100A4AB20) + 36);
  v22 = enum case for BlendMode.plusLighter(_:);
  v23 = type metadata accessor for BlendMode();
  (*(*(v23 - 8) + 104))(&v6[v21], v22, v23);
  *v6 = v14;
  *(v6 + 1) = v16;
  v6[16] = v18 & 1;
  *(v6 + 3) = v20;
  v24 = sub_100159DF4();
  v25 = &v6[*(v31 + 36)];
  *v25 = 0;
  *(v25 + 1) = v24;
  type metadata accessor for LocationHeaderView(0);
  sub_100159E78();
  v26 = v30;
  View.accessibilityIdentifier(_:)();

  sub_10003FDA0(v6, &qword_100CA3FF0);
  v27 = v32;
  sub_10011C0F0(v26, v32, &qword_100CA3FF8, &unk_100A2E060);
  result = sub_10022C350(&qword_100CA4018, &unk_100A2E070);
  *(v27 + *(result + 36)) = 257;
  return result;
}

double sub_100159DF4()
{
  v1 = type metadata accessor for LocationHeaderView(0);
  result = -10.0;
  if (*(v0 + *(v1 + 56) + 128) == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    result = -24.0;
    if (v4 == 1)
    {
      return -12.0;
    }
  }

  return result;
}

unint64_t sub_100159E78()
{
  result = qword_100CA4008;
  if (!qword_100CA4008)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA3FF0, &qword_100A2E058);
    v4[0] = sub_10023EBBC(&qword_100CA4010, &qword_100CA4000, &qword_100A4AB20, &protocol witness table for _BlendModeEffect);
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA4008);
  }

  return result;
}

uint64_t sub_100159F24@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v35 = a2;
  v9 = type metadata accessor for HighLowModifier(0);
  __chkstk_darwin(v9);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10022C350(&qword_100CA3FA0, &qword_100A2E030);
  __chkstk_darwin(v12);
  v14 = &v34[-v13];
  v15 = sub_10022C350(&qword_100CA3FA8, &qword_100A2E038);
  __chkstk_darwin(v15 - 8);
  v17 = &v34[-v16];
  v18 = sub_10022C350(&qword_100CA3FB0, &qword_100A2E040);
  __chkstk_darwin(v18);
  v20 = &v34[-v19];
  v21 = (v5 + *(type metadata accessor for LocationHeaderView(0) + 56));
  v22 = v21[13];
  v23 = v21[12] & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (v23 && ((v25 = v21[14], v24 = v21[15], v26 = v25 & 0xFFFFFFFFFFFFLL, (v24 & 0x2000000000000000) != 0) ? (v27 = HIBYTE(v24) & 0xF) : (v27 = v26), v27))
  {
    sub_1000302D8(a1, v14, &qword_100CA3E68, &qword_100A2DF38);
    *&v14[*(v12 + 36)] = xmmword_100A2DC30;
    sub_10023E964();
    View.accessibilityIdentifier(_:)();
    sub_10003FDA0(v14, &qword_100CA3FA0);
    v28 = sub_100156C00();
    if (v35)
    {
      v29 = 0.6;
    }

    else
    {
      v29 = 0.4;
    }

    if (v35)
    {
      v30 = 0.4;
    }

    else
    {
      v30 = 0.2;
    }

    type metadata accessor for LocationHeaderViewFrameCoordinator(0);
    sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator, byte_100A2DCD8);
    *v11 = Environment.init<A>(_:)();
    v11[8] = v31 & 1;
    v32 = v9[5];
    *&v11[v32] = swift_getKeyPath();
    sub_10022C350(&qword_100CA3DB0, &qword_100A2DE48);
    swift_storeEnumTagMultiPayload();
    v11[v9[6]] = v28 & 1;
    *&v11[v9[7]] = a4;
    *&v11[v9[8]] = v30;
    *&v11[v9[9]] = v29;
    sub_10011C0F0(v17, v20, &qword_100CA3FA8, &qword_100A2E038);
    sub_1001540E8(v11, &v20[*(v18 + 36)], type metadata accessor for HighLowModifier);
    sub_10011C0F0(v20, a3, &qword_100CA3FB0, &qword_100A2E040);
    return sub_10001B350(a3, 0, 1, v18);
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v18);
  }
}

uint64_t sub_10015A33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AutomationInfo(0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10015A3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationInfoProperty(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10015A420(uint64_t *a1, char a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    if (a2)
    {
      *&result = 22.0;
    }

    else
    {
      *&result = 40.0;
    }
  }

  else if (v5 == 1)
  {
    if (sub_1004CF4D0(*a1))
    {
      v6 = 94.0;
      if (a2)
      {
        v6 = 80.0;
      }

      v7 = a1[1];
      v8 = 0.0;
      if (v7 <= 2)
      {
        v8 = dbl_100A57C10[v7];
      }

      *&result = v6 + v8;
    }

    else if (a1[1] == 1)
    {
      *&result = 20.0;
    }

    else
    {
      *&result = 64.0;
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

unint64_t sub_10015A530()
{
  result = qword_100CA3DA0;
  if (!qword_100CA3DA0)
  {
    result = swift_getWitnessTable(aY_36, &type metadata for RecordLocationHeaderFrameViewModifier, v0, v1);
    atomic_store(result, &qword_100CA3DA0);
  }

  return result;
}

uint64_t sub_10015A5A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100156D84();
  v6 = type metadata accessor for LocationHeaderView(0);
  if (v5)
  {
    if (*(v0 + *(v6 + 56) + 130))
    {
      return 1;
    }

    v8 = v0 + *(v6 + 44);
    v9 = *v8;
    if (*(v8 + 8) == 1)
    {
      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v9, 0);
      (*(v2 + 8))(v4, v1);
      if ((v14[14] & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(v0 + *(v6 + 56) + 130))
  {
    return sub_10023B6F8();
  }

  v10 = v0 + *(v6 + 44);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      return sub_10023B6F8();
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v11, 0);
    (*(v2 + 8))(v4, v1);
    if ((v14[15] & 1) == 0)
    {
      return sub_10023B6F8();
    }
  }

  return 0;
}

void sub_10015A7FC(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, double), uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  v58 = a7;
  v61 = a5;
  v62 = a6;
  v56 = a2;
  v57 = a4;
  v54 = a3;
  v55 = a1;
  v15 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v21 - 8);
  v23 = &v46 - v22;
  v24 = type metadata accessor for Text.Measurements.Context();
  v59 = *(v24 - 8);
  v60 = v24;
  __chkstk_darwin(v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EnvironmentValues();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015AE2C();
  if (v31)
  {
    v52 = v17;
    v32 = type metadata accessor for LocationHeaderView(0);
    v33 = v32;
    v34 = *(v12 + *(v32 + 56) + 130);
    v53 = a8;
    if (v34)
    {
LABEL_3:
      v51 = a12;
      v48 = a11;
      v50 = a10;
      v49 = a9;
      sub_100156774();
      v35 = type metadata accessor for Text.WritingMode();
      v47 = v35;
      sub_10001B350(v23, 1, 1, v35);
      v36 = type metadata accessor for Text.Suffix();
      sub_10001B350(v20, 1, 1, v36);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v57 = *(v59 + 8);
      v59 = v33;
      v37 = v60;
      (v57)(v26, v60);
      sub_10001B350(v23, 1, 1, v35);
      sub_10001B350(v20, 1, 1, v36);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v38 = v57;
      (v57)(v26, v37);
      sub_10001B350(v23, 1, 1, v47);
      sub_10001B350(v20, 1, 1, v36);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      (v38)(v26, v37);
      v39 = v59;
      v40 = v52;
      sub_1000FC9C8();
      sub_10015A420(v40, *(v13 + *(v39 + 68) + 24) != 0);
      sub_1000DFD78(v40, type metadata accessor for DisplayMetrics);
      return;
    }

    v41 = v12 + *(v32 + 44);
    v42 = *v41;
    if (*(v41 + 8) == 1)
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {

      LODWORD(v51) = static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v42, 0);
      (*(v28 + 8))(v30, v27);
      if (v63 != 1)
      {
        goto LABEL_3;
      }
    }

    sub_100156774();
    v44 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v23, 1, 1, v44);
    v45 = type metadata accessor for Text.Suffix();
    sub_10001B350(v20, 1, 1, v45);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    (*(v59 + 8))(v26, v60);
    sub_100149554();
  }
}

uint64_t sub_10015AE2C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *&result = 0.0;
  if (v6 != 1)
  {
    v8 = type metadata accessor for LocationHeaderView(0);
    v9 = *(v8 + 52);
    if (*(v0 + *(v8 + 56) + 128))
    {
      v10 = 0.4;
    }

    else
    {
      v10 = 0.36;
    }

    v11 = (v0 + v9);
    v12 = *(v0 + v9 + 8);
    v13 = *(v0 + v9 + 16);
    v14 = *(v0 + v9 + 32);
    if (*(v0 + v9 + 48) == 1)
    {
      v15 = *(v0 + v9 + 8);
      v16 = *(v0 + v9 + 16);
      v17 = *(v0 + v9 + 32);
    }

    else
    {
      v18 = *v11;
      v19 = v11[3];
      v31 = v11[5];
      v32 = v12;
      v28 = v14;
      v33 = v2;
      v20 = v12;

      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v22 = v20;
      v30 = v19;
      v23 = v28;
      v24 = v31;
      sub_100109A54(v18, v22, v13, v19, v28, v31, 0);
      v29 = *(v33 + 8);
      v33 += 8;
      v29(v4, v1);
      v15 = v34;

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A54(v18, v32, v13, v19, v23, v24, 0);
      v26 = v29;
      v29(v4, v1);
      v16 = v35;

      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A54(v18, v32, v13, v30, v23, v31, 0);
      v26(v4, v1);
      v17 = v36;
    }

    *&result = v10 * (v16 + v15 + v17);
  }

  return result;
}

uint64_t sub_10015B1AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_10015B1E8()
{
  result = qword_100CA47E0;
  if (!qword_100CA47E0)
  {
    result = swift_getWitnessTable(byte_100A2EA08, &type metadata for LocationHeaderViewBackgroundLayout, v0, v1);
    atomic_store(result, &qword_100CA47E0);
  }

  return result;
}

uint64_t sub_10015B264()
{
  sub_100003A00();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for DisplayMetrics(0);

  return sub_10001B350(v1 + v3, v0, v0, v4);
}

uint64_t sub_10015B2CC()
{
  sub_100003A00();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for DisplayMetrics(0);

  return sub_100024D10(v1 + v3, v0, v4);
}

uint64_t sub_10015B338()
{
  v0 = sub_10022E824(&qword_100CA46B8, &qword_100A2E878);
  sub_10022E824(&qword_100CA46D0, &qword_100A2E888);
  sub_10022E824(&qword_100CA46D8, &qword_100A2E890);
  v1 = sub_10022E824(&qword_100CA46C0, &qword_100A2E880);
  sub_10022E824(&qword_100CA4680, &unk_100A59690);
  sub_100007EB8();
  sub_10023FBF4(v2, &qword_100CA46C0, &qword_100A2E880, v3);
  type metadata accessor for EmptyVisualEffect();
  sub_10004E330();
  v6 = sub_100151E08(v4, v5, &protocol conformance descriptor for EmptyVisualEffect);
  v14 = sub_1000495A0(v6, v7, v8, v9, v10, v11, v12, v13, v30, v31);
  sub_100069384(v14, v15, v16, v17, v18, v19, v20, v21, v1);
  sub_10023F554();
  v32 = sub_10015B4B0();
  return sub_100017540(v32, v22, v23, v24, v25, v26, v27, v28, v0);
}

unint64_t sub_10015B4B0()
{
  result = qword_100CA46F8;
  if (!qword_100CA46F8)
  {
    v7[12] = v0;
    v7[13] = v1;
    v3 = sub_10022E824(&qword_100CA46D8, &qword_100A2E890);
    v4 = sub_10022E824(&qword_100CA46C0, &qword_100A2E880);
    v5 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
    v6 = sub_10023FBF4(&qword_100CA46C8, &qword_100CA46C0, &qword_100A2E880, &protocol conformance descriptor for _ViewModifier_Content<A>);
    type metadata accessor for EmptyVisualEffect();
    sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    v7[5] = swift_getOpaqueTypeConformance2();
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = sub_10023FBF4(&qword_100CA4700, &qword_100CA4708, &qword_100A2E8A0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v7);
    atomic_store(result, &qword_100CA46F8);
  }

  return result;
}

uint64_t sub_10015B6F0()
{
  sub_10022C350(&qword_100CA46A0, &qword_100A2E868);
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CA46A8, &qword_100A2E870);
  type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  sub_10023FBF4(&qword_100CA46B0, &qword_100CA46A8, &qword_100A2E870, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator, byte_100A2DCD8);
  View.environment<A>(_:)();
}

void *sub_10015B818()
{
  sub_10015B860();

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_10015B860()
{
  result = qword_100CA3DD0;
  if (!qword_100CA3DD0)
  {
    result = swift_getWitnessTable(asc_100A2E778, &_s44LocationHeaderViewMeasurementsEnvironmentKeyVN, v0, v1);
    atomic_store(result, &qword_100CA3DD0);
  }

  return result;
}

double sub_10015B8B4@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for LocationHeaderViewMeasurements(0);
  sub_1000336E4(a1 + *(v2 + 32));
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10015B8F8(uint64_t a1)
{
  v2 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C14(a1, v4, type metadata accessor for LocationHeaderViewMeasurements);
  return sub_10015B994(v4);
}

uint64_t sub_10015B994(uint64_t a1)
{
  v2 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v2 - 8);
  sub_1000A3C14(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationHeaderViewMeasurements);
  sub_10015B860();
  EnvironmentValues.subscript.setter();
  return sub_1000DFD78(a1, type metadata accessor for LocationHeaderViewMeasurements);
}

__n128 sub_10015BA5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10015BA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  v33 = *(v2 + 56);
  v10 = *(v2 + 40);
  v31 = v9;
  v32 = v10;
  if (v33 == 1)
  {
    v27 = v32;
    v11 = __PAIR128__(*(&v31 + 1), v9);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDA0(&v31, &qword_100CA4640);
    (*(v6 + 8))(v8, v5);
    v27 = v28[1];
    v11 = v28[0];
  }

  v26 = v11;
  v13 = static Alignment.center.getter();
  v15 = v14;
  if (*v2)
  {
    v16 = static Color.clear.getter();
    v17 = swift_allocObject();
    v18 = v27;
    *(v17 + 16) = v26;
    *(v17 + 32) = v18;
    v29 = *(v2 + 8);
    v30 = *(v2 + 16);
    v19 = swift_allocObject();
    v20 = *(v2 + 16);
    v19[1] = *v2;
    v19[2] = v20;
    v19[3] = *(v2 + 32);
    *(v19 + 57) = *(v2 + 41);
    sub_1000302D8(&v31, v28, &qword_100CA4640, &qword_100A2E800);
    sub_1000302D8(&v29, v28, &qword_100CA4658, &qword_100A2E818);
    v21 = sub_10023F3B0;
    v22 = sub_10023F3A4;
  }

  else
  {
    v16 = 0;
    v22 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  v23 = sub_10022C350(&qword_100CA4648, &qword_100A2E808);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  result = sub_10022C350(&qword_100CA4650, &qword_100A2E810);
  v25 = (a2 + *(result + 36));
  *v25 = v16;
  v25[1] = v22;
  v25[2] = v17;
  v25[3] = v21;
  v25[4] = v19;
  v25[5] = v13;
  v25[6] = v15;
  return result;
}

uint64_t sub_10015BD90()
{

  sub_100109A48(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

unint64_t sub_10015BE3C()
{
  result = qword_100CA47C0;
  if (!qword_100CA47C0)
  {
    v7[12] = v0;
    v7[13] = v1;
    v3 = sub_10022E824(&qword_100CA4788, &qword_100A2E920);
    v4 = sub_10022E824(&qword_100CA4778, &qword_100A2E918);
    v5 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
    v6 = sub_10023FBF4(&qword_100CA4780, &qword_100CA4778, &qword_100A2E918, &protocol conformance descriptor for _ViewModifier_Content<A>);
    type metadata accessor for EmptyVisualEffect();
    sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    v7[5] = swift_getOpaqueTypeConformance2();
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0, &unk_100A2EA00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v7);
    atomic_store(result, &qword_100CA47C0);
  }

  return result;
}

uint64_t sub_10015C028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = sub_100003A24(a1, a2);
  v9 = sub_10022E824(v7, v8);
  sub_10022E824(&qword_100CA4670, &unk_100A2E850);
  sub_100007EB8();
  sub_10023FBF4(a4, a2, a3, v10);
  v11 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  type metadata accessor for EmptyVisualEffect();
  sub_10004E330();
  v14 = sub_100151E08(v12, v13, &protocol conformance descriptor for EmptyVisualEffect);
  v22 = sub_1000495A0(v14, v15, v16, v17, v18, v19, v20, v21, v38, v39);
  v40 = sub_100017540(v22, v23, v24, v25, v26, v27, v28, v29, v11);
  return sub_100069384(v40, v30, v31, v32, v33, v34, v35, v36, v9);
}

uint64_t sub_10015C1A0()
{
  sub_10022E824(&qword_100CCB800, &unk_100A6AE70);
  sub_10022E824(&qword_100CCB818, &qword_100A6AE88);
  sub_10022E824(&qword_100CCB7F8, &qword_100A6AE68);
  sub_10022E824(&qword_100CCB808, &qword_100A6AE80);
  sub_10022E824(&qword_100CADBA0, &qword_100A3D250);
  sub_10015C2CC();
  sub_10014F7C8();
  swift_getOpaqueTypeConformance2();
  sub_10013E1CC();
  sub_100010558();
  swift_getOpaqueTypeConformance2();
  sub_10015C358();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10015C2CC()
{
  result = qword_100CCB810;
  if (!qword_100CCB810)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCB808, &qword_100A6AE80);
    v4[0] = sub_1000A4F28();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCB810);
  }

  return result;
}

unint64_t sub_10015C358()
{
  result = qword_100CCB820;
  if (!qword_100CCB820)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCB818, &qword_100A6AE88);
    v4[0] = sub_10015C3DC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CCB820);
  }

  return result;
}

unint64_t sub_10015C3DC()
{
  result = qword_100CCB828;
  if (!qword_100CCB828)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCB7A0, qword_100A6AE00);
    v4[0] = sub_100006F64(&qword_100CCB830, &qword_100CBD760, &unk_100A6AE90, &protocol conformance descriptor for Range<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCB828);
  }

  return result;
}

uint64_t sub_10015C4D0(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&qword_100CB5B20, &qword_100A49390);
  sub_10014D3D8();
  return View.staticIf<A, B, C>(_:then:else:)();
}

uint64_t sub_10015C5A0()
{
  type metadata accessor for LocationViewObserverViewState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10015C5CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocationViewObserverViewState();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10015C60C@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v73 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v72 = &v57 - v5;
  v6 = type metadata accessor for LocationViewObserverView(0);
  v7 = *(v6 - 8);
  v82 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10022C350(&qword_100CADD28, &qword_100A3D308);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  sub_10022C350(&qword_100CADD30, &unk_100A3D310);
  sub_1000037C4();
  v75 = v13;
  v76 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v83 = &v57 - v16;
  v71 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v70 = v89;
  v17 = v90;
  v64 = v90;
  v69 = v91;
  v18 = v92;
  v65 = v92;
  v68 = v93;
  v67 = v94;
  v59 = v1;
  sub_100339B38(v1, v9, type metadata accessor for LocationViewObserverView);
  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v66 = swift_allocObject();
  sub_10015CED4(v9, v66 + v20, type metadata accessor for LocationViewObserverView);
  LOBYTE(v84) = v17;
  v88[0] = v18;
  v80 = type metadata accessor for LocationViewObserverView;
  sub_100339B38(v1, v9, type metadata accessor for LocationViewObserverView);
  v79 = v19;
  v63 = swift_allocObject();
  v60 = type metadata accessor for LocationViewObserverView;
  sub_10015CED4(v9, v63 + v20, type metadata accessor for LocationViewObserverView);
  v62 = objc_opt_self();
  v21 = [v62 defaultCenter];
  v22 = sub_10022C350(&qword_100CADD38, &unk_100A3D320);
  NSNotificationCenter.publisher(for:object:)();

  v23 = v59;
  sub_100339B38(v59, v9, type metadata accessor for LocationViewObserverView);
  v24 = v8;
  v25 = swift_allocObject();
  sub_10015CED4(v9, v25 + v20, type metadata accessor for LocationViewObserverView);
  v26 = v70;
  *v12 = v71;
  *(v12 + 1) = v26;
  v12[16] = v64;
  *(v12 + 3) = v69;
  v12[32] = v65;
  v27 = v67;
  *(v12 + 5) = v68;
  *(v12 + 6) = v27;
  v28 = v66;
  *(v12 + 7) = sub_10016834C;
  *(v12 + 8) = v28;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  v29 = v63;
  *(v12 + 13) = sub_10033A300;
  *(v12 + 14) = v29;
  v30 = &v12[*(v22 + 56)];
  *v30 = sub_10033A318;
  v30[1] = v25;
  v31 = [v62 defaultCenter];
  v32 = v81;
  NSNotificationCenter.publisher(for:object:)();

  v33 = v80;
  sub_100339B38(v23, v9, v80);
  v61 = v24;
  v78 = v20;
  v34 = swift_allocObject();
  v35 = v34 + v20;
  v36 = v9;
  v37 = v9;
  v38 = v60;
  sub_10015CED4(v36, v35, v60);
  v39 = &v12[*(v32 + 56)];
  *v39 = sub_10033A330;
  v39[1] = v34;
  v40 = v73;
  sub_1000E7B34();
  v41 = v72;
  sub_1000E90D8(v40, v72);
  v58 = v37;
  sub_100339B38(v23, v37, v33);
  v42 = v78;
  v43 = swift_allocObject();
  sub_10015CED4(v37, v43 + v42, v38);
  sub_10000579C();
  v46 = sub_100006F64(v44, &qword_100CADD28, &qword_100A3D308, v45);
  v47 = sub_10014F7C8();
  v48 = v81;
  v49 = v74;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v41, &qword_100CADBA0, &qword_100A3D250);
  sub_100018144(v12, &qword_100CADD28, &qword_100A3D308);
  v50 = v23 + *(v82 + 32);
  v88[0] = *(v50 + *(type metadata accessor for LocationViewModel(0) + 56));
  v51 = v58;
  sub_100339B38(v23, v58, v80);
  v52 = v78;
  v53 = swift_allocObject();
  sub_10015CED4(v51, v53 + v52, v38);
  v84 = v48;
  v85 = v49;
  v86 = v46;
  v87 = v47;
  swift_getOpaqueTypeConformance2();
  sub_10014F87C();
  v54 = v75;
  v55 = v83;
  View.onChange<A>(of:initial:_:)();

  return (*(v76 + 8))(v55, v54);
}

uint64_t sub_10015CDC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10015CE24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10015CE7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10015CED4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10015CF34@<X0>(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  sub_10022C350(&qword_100CA4778, &qword_100A2E918);
  sub_10022C350(&qword_100CA4680, &unk_100A59690);
  sub_10023FBF4(&qword_100CA4780, &qword_100CA4778, &qword_100A2E918, &protocol conformance descriptor for _ViewModifier_Content<A>);
  type metadata accessor for EmptyVisualEffect();
  sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  result = sub_10022C350(&qword_100CA4788, &qword_100A2E920);
  *(a2 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

double sub_10015D134@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &__dst[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(v2 + 72))
  {
    v10 = *(v2 + 24);
    *&__src[8] = *(v2 + 8);
    *&__src[24] = v10;
    v11 = *(v2 + 56);
    *&__src[40] = *(v2 + 40);
    *&__src[56] = v11;
    *__src = v9;
  }

  else
  {
    sub_1007E9BFC(v2, __dst);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9C34(v2);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(__dst, __src, 0x48uLL);
  sub_1000FD520();
  sub_1000FDB68();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CDA020, &qword_100A85080);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = (a2 + *(sub_10022C350(&qword_100CDA028, &qword_100A85088) + 36));
  v15 = *&__src[16];
  *v14 = *__src;
  v14[1] = v15;
  result = *&__src[32];
  v14[2] = *&__src[32];
  return result;
}

uint64_t sub_10015D39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v25 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022E824(&qword_100CDA0B0, &qword_100A85130);
  v27 = v6;
  v7 = *(a1 + 16);
  v26 = sub_100006F64(&qword_100CDA0B8, &qword_100CDA0B0, &qword_100A85130, &protocol conformance descriptor for [A]);
  v31 = v6;
  v32 = &type metadata for String;
  v33 = v7;
  v34 = v26;
  v35 = &protocol witness table for String;
  v8 = type metadata accessor for ForEach();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &KeyPath - v12;
  sub_10015D880(a1);
  sub_10015DA7C();
  v15 = v14;

  v31 = v15;
  KeyPath = swift_getKeyPath();
  v16 = v25;
  (*(v4 + 16))(v25, v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = *(a1 + 24);
  *(v18 + 16) = v7;
  *(v18 + 24) = v19;
  (*(v4 + 32))(v18 + v17, v16, a1);
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = v19;
  v20[4] = sub_1001CB3D4;
  v20[5] = v18;
  ForEach<>.init(_:id:content:)();
  v30 = v19;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v8, &v30);
  sub_1000833D8(v10, v8, WitnessTable);
  v22 = *(v28 + 8);
  v22(v10, v8);
  sub_1000833D8(v13, v8, WitnessTable);
  return (v22)(v13, v8);
}

uint64_t sub_10015D6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationStackView(0, *(v5 + 16), *(v5 + 24), a4);
  sub_100003A0C();
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v8 = v7 + v4[10];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v10 + 8))(v8 + v9);
  }

  else
  {
  }

  v11 = v7 + v4[11];
  sub_100168B1C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72));
  sub_100028448(v4[12]);
  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_10015D844()
{

  return swift_deallocObject();
}

uint64_t sub_10015D880(uint64_t a1)
{
  v2 = *v1;
  v4[1] = *(a1 + 16);

  return sub_10015D8E8(sub_1007E9F2C, v4, v2);
}

uint64_t sub_10015D8E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = result;
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = (a3 + 48);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v18 == v5)
    {
      goto LABEL_15;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v19[0] = v9;
    v19[1] = v8;
    v19[2] = v10;

    v11 = v17(v19);
    if (v3)
    {

LABEL_15:

      return v7;
    }

    if (v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1006A82F4(0, v7[2] + 1, 1);
        v7 = v20;
      }

      v13 = v7[2];
      v12 = v7[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = sub_1006A82F4((v12 > 1), v13 + 1, 1);
        v14 = v13 + 1;
        v7 = v20;
      }

      v7[2] = v14;
      v15 = &v7[3 * v13];
      v15[4] = v9;
      v15[5] = v8;
      v15[6] = v10;
      v4 = a3;
    }

    else
    {
    }

    v6 += 3;
    ++v5;
  }

  __break(1u);
  return result;
}

void sub_10015DA7C()
{
  sub_10000C778();
  v0 = 0;
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v4 = *(v3 + 16);
  v5 = &_swiftEmptyArrayStorage[4];
  for (i = (v3 + 48); ; i += 3)
  {
    if (v4 == v1)
    {
      if (v2[3] >= 2uLL)
      {
        sub_10002FDC0();
        if (v18)
        {
          goto LABEL_24;
        }

        v2[2] = v19;
      }

      sub_10000536C();
      return;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    if (v0)
    {

      v10 = v2;
    }

    else
    {
      sub_100017680();
      if (v11)
      {
        goto LABEL_23;
      }

      sub_100069480();
      sub_10022C350(&qword_100CABAA0, &qword_100A3A8E0);
      v10 = swift_allocObject();
      j__malloc_size(v10);
      v12 = sub_100051D7C();
      v5 = &v12[32 * v13];
      v0 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);
      if (v16)
      {
        if (v10 != v2 || v12 >= &v2[4 * v13 + 4])
        {
          memmove(v12, v2 + 4, 32 * v13);
        }

        v2[2] = 0;
      }

      else
      {
      }
    }

    v18 = __OFSUB__(v0--, 1);
    if (v18)
    {
      break;
    }

    *v5 = v1;
    *(v5 + 1) = v8;
    *(v5 + 2) = v7;
    *(v5 + 3) = v9;
    v5 += 32;
    ++v1;
    v2 = v10;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_10015DBE8@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v2 = sub_10022C350(&qword_100CDF858, &qword_100A8EFB8);
  __chkstk_darwin(v2 - 8);
  v36[0] = v36 - v3;
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v36 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v15 - 8);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v36 - v19;
  type metadata accessor for LocationViewAppEntityView(0);
  sub_1000E7B34();
  sub_1000E90D8(v14, v20);
  v21 = type metadata accessor for LocationViewModel(0);
  v22 = *(v9 + 56);
  sub_1000952C4(v1 + v21[5], v11);
  sub_1000952C4(v20, &v11[v22]);
  sub_10000C814(v11);
  if (v24)
  {
    sub_10000C814(&v11[v22]);
    if (v24)
    {
      sub_10003FDF4(v11, &qword_100CADBA0, &qword_100A3D250);
      v23 = v36[0];
      goto LABEL_11;
    }

LABEL_9:
    sub_10003FDF4(v11, &qword_100CADD58, &unk_100A3E650);
    v23 = v36[0];
LABEL_12:
    v27 = *(v1 + v21[17]);
    goto LABEL_13;
  }

  sub_1000952C4(v11, v17);
  sub_10000C814(&v11[v22]);
  if (v24)
  {
    (*(v5 + 8))(v17, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v11[v22], v4);
  sub_1000E8FAC();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v17, v4);
  sub_10003FDF4(v11, &qword_100CADBA0, &qword_100A3D250);
  v23 = v36[0];
  if ((v25 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (*(v1 + v21[17]) == 1)
  {
    goto LABEL_12;
  }

  v27 = 1;
LABEL_13:
  v38 = static Color.clear.getter();
  if (v27)
  {
    v28 = (v1 + v21[29]);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
    LOBYTE(v28) = *(v28 + 32);
    v36[2] = v29;
    v36[3] = v30;
    v36[4] = v31;
    v36[5] = v32;
    v37 = v28;
    sub_10015E074();

    EntityIdentifier.init<A>(for:)();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = type metadata accessor for EntityIdentifier();
  sub_10001B350(v23, v33, 1, v34);
  View.appEntityIdentifier(_:)();
  sub_10003FDF4(v23, &qword_100CDF858, &qword_100A8EFB8);

  return sub_10003FDF4(v20, &qword_100CADBA0, &qword_100A3D250);
}

unint64_t sub_10015E074()
{
  result = qword_100CA2D90;
  if (!qword_100CA2D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CA2D90);
  }

  return result;
}

unint64_t sub_10015E0C8()
{
  result = qword_100CCC428;
  if (!qword_100CCC428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC428);
  }

  return result;
}

unint64_t sub_10015E120()
{
  result = qword_100CCC458;
  if (!qword_100CCC458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC458);
  }

  return result;
}

unint64_t sub_10015E180()
{
  result = qword_100CCC450;
  if (!qword_100CCC450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC450);
  }

  return result;
}

unint64_t sub_10015E1DC()
{
  result = qword_100CADA30;
  if (!qword_100CADA30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CADA30);
  }

  return result;
}

unint64_t sub_10015E230()
{
  result = qword_100CCC430;
  if (!qword_100CCC430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC430);
  }

  return result;
}

unint64_t sub_10015E288()
{
  result = qword_100CCC448;
  if (!qword_100CCC448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC448);
  }

  return result;
}

unint64_t sub_10015E2E0()
{
  result = qword_100CCC460;
  if (!qword_100CCC460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC460);
  }

  return result;
}

unint64_t sub_10015E338()
{
  result = qword_100CCC438;
  if (!qword_100CCC438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntity, &type metadata for LocationSearchEntity, v0, v1);
    atomic_store(result, &qword_100CCC438);
  }

  return result;
}

double sub_10015E390@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_10015E3AC()
{
  v1 = sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
  __chkstk_darwin(v1 - 8);
  v3 = v7 - v2;
  v7[1] = static Color.clear.getter();
  if (sub_10015E4C8())
  {
    v4 = type metadata accessor for LocationViewModel(0);
    sub_100060DE0(v0 + *(v4 + 80), v3, &qword_100CA60E8, &unk_100A5A9F0);
  }

  else
  {
    v5 = type metadata accessor for ForegroundEffect();
    sub_10001B350(v3, 1, 1, v5);
  }

  View.setForegroundEffect(_:)();
  sub_10003FDF4(v3, &qword_100CA60E8, &unk_100A5A9F0);
}

uint64_t sub_10015E4C8()
{
  v1 = type metadata accessor for Location.Identifier();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v23 - v16;
  (*(v2 + 16))(&v23 - v16, v0, v1, v15);
  sub_10001B350(v17, 0, 1, v1);
  type metadata accessor for ForegroundEffectConfigurationView(0);
  v24 = v0;
  sub_1000E7B34();
  v18 = *(v5 + 56);
  sub_100060DE0(v17, v7, &qword_100CADBA0, &qword_100A3D250);
  sub_1000E90D8(v10, &v7[v18]);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_100060DE0(v7, v13, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v7[v18], 1, v1) != 1)
    {
      v20 = v23;
      (*(v2 + 32))(v23, &v7[v18], v1);
      sub_1000E8FAC();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_10003FDF4(v17, &qword_100CADBA0, &qword_100A3D250);
      v22(v13, v1);
      sub_10003FDF4(v7, &qword_100CADBA0, &qword_100A3D250);
      if (v21)
      {
        return 1;
      }

      return *(v24 + *(type metadata accessor for LocationViewModel(0) + 68));
    }

    sub_10003FDF4(v17, &qword_100CADBA0, &qword_100A3D250);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_10003FDF4(v7, &qword_100CADD58, &unk_100A3E650);
    return *(v24 + *(type metadata accessor for LocationViewModel(0) + 68));
  }

  sub_10003FDF4(v17, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v7[v18], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_10003FDF4(v7, &qword_100CADBA0, &qword_100A3D250);
  return 1;
}

uint64_t sub_10015E8AC()
{
  sub_10000FE4C();
  v0 = sub_100103418();
  return sub_100005F94(v0);
}

uint64_t sub_10015E8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v36 = v6;
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = __chkstk_darwin(v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable(byte_100A77D88, a2, v9);
  v11 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v11);
  v37 = v11;
  v42 = v11;
  v43 = &type metadata for Bool;
  v44 = WitnessTable;
  v45 = &protocol witness table for Bool;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v35 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v38 = &v30 - v16;
  v17 = *(v3 + 16);
  if (*(v3 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    v31 = v7;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    v7 = v31;
    v20 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v17, 0);
    (*(v33 + 8))(v20, v34);
    LOBYTE(v17) = v42;
  }

  LOBYTE(v42) = v17 & 1;
  (*(v5 + 16))(v7, v3, a2);
  v21 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v22 = swift_allocObject();
  v23 = *(a2 + 32);
  *(v22 + 16) = *(a2 + 16);
  *(v22 + 32) = v23;
  (*(v5 + 32))(v22 + v21, v7, a2);
  v24 = swift_checkMetadataState();
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v25 = v35;
  View.onChange<A>(of:initial:_:)();

  v42 = v24;
  v43 = &type metadata for Bool;
  v44 = WitnessTable;
  v45 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v38;
  sub_1000833D8(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = *(v41 + 8);
  v28(v25, OpaqueTypeMetadata2);
  sub_1000833D8(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v28)(v27, OpaqueTypeMetadata2);
}

void sub_10015ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_10004E348();
  a31 = v34;
  a32 = v35;
  v36 = v32[3];
  v38 = v32[4];
  v39 = v32[5];
  a17 = v32[2];
  v37 = a17;
  a18 = v36;
  a19 = v38;
  a20 = v39;
  v40 = sub_10000ECFC();
  v42 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(v40, v41);
  sub_100003DDC();
  v44 = v32 + ((*(v43 + 80) + 48) & ~*(v43 + 80));

  sub_1000E4DF8(*(v44 + 2), v44[24]);
  v55 = *(*(v36 - 8) + 8);
  v45 = v55(&v44[*(v42 + 56)], v36);
  v46 = &v44[*(v42 + 60)];
  a17 = v37;
  a18 = v36;
  a19 = v38;
  a20 = v39;
  if (!sub_10004E928(v45, &a17))
  {
    sub_100003B20();
    v54 = *(v47 + 8);
    v48 = sub_100003A80();
    v50 = v49(v48);
    a17 = v37;
    a18 = v36;
    a19 = v38;
    a20 = v39;
    v51 = sub_100069878(v50, &a17);
    v55(v51, v36);
    v52 = &v46[*(v33 + 52)];
    v53 = sub_100003A80();
    v54(v53);
    v55(&v52[*(v38 + 52)], v36);
  }

  swift_deallocObject();
  sub_100013454();
}

uint64_t sub_10015EEFC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a2;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v16 = a3 + *(type metadata accessor for LegacyLazyPageAnimatableTabView(0, v21) + 108);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v18 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v17, 0);
  (*(v13 + 8))(v15, v12);
  if (LOBYTE(v21[0]) == 1)
  {
LABEL_5:
    ScrollTransitionPhase.isIdentity.getter();
  }

LABEL_6:
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.opacity(_:)();
}

void sub_10015F118(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for CoordinateSpace.global(_:), v2, v4);
  GeometryProxy.frameClippedToScrollViews(in:)();
  v7 = *&v11[3];
  v8 = *&v11[4];
  (*(v3 + 8))(v6, v2);
  GeometryProxy.size.getter();
  *a1 = v7 * v8 / (v9 * v10) == 1.0;
}

uint64_t sub_10015F244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_10015F498(v3, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_10015F4FC(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = sub_10022C350(&qword_100CED328, &qword_100AA4A48);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = sub_10022C350(&qword_100CED330, &unk_100AA4A50);
  v13 = (a2 + *(result + 36));
  *v13 = sub_100165B28;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_10015F3A8()
{
  v1 = *(type metadata accessor for ActivityModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Location.Identifier();
  if (!sub_100024D10(v0 + v2, 2, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10015F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015F4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015F560@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v51 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v50 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100003990(v6 - v5);
  active = type metadata accessor for ActiveLocationModel(0);
  v8 = sub_100003810(active);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v66 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003990(&v49 - v12);
  v13 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v59 = sub_10022C350(&qword_100CCB7F8, &qword_100A6AE68);
  sub_1000037C4();
  v57 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003990(&v49 - v18);
  v62 = sub_10022C350(&qword_100CCB800, &unk_100A6AE70);
  sub_1000037C4();
  v61 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_100003990(&v49 - v21);
  v22 = static Color.clear.getter();
  v52 = v22;
  sub_10015FD34(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v14 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_10015FD98(&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_10015FD34(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_10015FD98(&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24);
  __dst[0] = v22;
  __dst[1] = sub_100166B74;
  __dst[2] = v25;
  memset(&__dst[3], 0, 32);
  __dst[7] = sub_100600FF8;
  __dst[8] = v26;
  v27 = v64;
  sub_1000E7B34();
  v28 = v27;
  v29 = v53;
  sub_1000E90D8(v28, v53);
  sub_10015FD34(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v15;
  v64 = v23;
  v30 = swift_allocObject();
  v56 = v24;
  v31 = v30 + v24;
  v32 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015FD98(v32, v31);
  v33 = sub_10022C350(&qword_100CCB808, &qword_100A6AE80);
  v34 = sub_10015C2CC();
  v35 = sub_10014F7C8();
  v55 = v34;
  v54 = v35;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v29, &qword_100CADBA0, &qword_100A3D250);

  v36 = v1;
  memcpy(__dst, v1, 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, v1, sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v49;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v50 + 8))(v38, v51);
  }

  memcpy(v69, __src, sizeof(v69));
  v67 = sub_1000EF898();
  sub_10015FD34(v2, v32);
  v39 = v56;
  v40 = sub_100022EC8(&unk_100C62588);
  sub_10015FD98(v32, v40 + v39);
  __src[0] = v33;
  __src[1] = v66;
  __src[2] = v55;
  __src[3] = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_10013E1CC();
  v43 = v60;
  v44 = v59;
  v45 = v65;
  View.onChange<A>(of:initial:_:)();

  (*(v57 + 8))(v45, v44);
  v67 = *(v36 + 80);
  sub_10015FD34(v36, v32);
  v46 = sub_100022EC8(&unk_100C625B0);
  sub_10015FD98(v32, v46 + v39);

  sub_10022C350(&qword_100CCB818, &qword_100A6AE88);
  __src[0] = v44;
  __src[1] = &type metadata for CGFloat;
  __src[2] = OpaqueTypeConformance2;
  __src[3] = v42;
  sub_100010558();
  swift_getOpaqueTypeConformance2();
  sub_10015C358();
  v47 = v62;
  View.onChange<A>(of:initial:_:)();

  return (*(v61 + 8))(v43, v47);
}

uint64_t sub_10015FD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015FD98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10015FDFC()
{
  sub_100040DC8();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CC0B20, &qword_100A59658);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000426CC();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v32 = *(v0 + 48);
  v13 = *(v0 + 40);
  v31 = v13;
  if (v32 == 1)
  {
    v14 = v13;
  }

  else
  {
    v29 = v9;

    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v31, &qword_100CC09F8);
    (*(v7 + 8))(v12, v29);
    v14 = v30;
  }

  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 8);
  static UnitPoint.top.getter();
  v21 = v20;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  sub_10022C350(&qword_100CC0B28, &qword_100A59688);
  sub_1000037E8();
  (*(v25 + 16))(v1, v3);
  v26 = v1 + *(v4 + 36);
  *v26 = v17;
  *(v26 + 8) = v18;
  *(v26 + 16) = v19;
  *(v26 + 24) = 0;
  *(v26 + 32) = v21;
  *(v26 + 40) = v23;
  *(v26 + 48) = 1;
  *(v26 + 56) = KeyPath;
  *(v26 + 64) = 0;
  *(swift_allocObject() + 16) = v14;

  sub_10022C350(&qword_100CA4680, &unk_100A59690);
  sub_10014D91C();
  type metadata accessor for EmptyVisualEffect();
  sub_100010208();
  sub_100061A3C(v27, v28, &protocol conformance descriptor for EmptyVisualEffect);
  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_100018198(v1, &qword_100CC0B20);
  sub_100040CB4();
}

uint64_t sub_100160134()
{
  sub_10000FE4C();
  v0 = sub_10013E9DC();
  return sub_100005F94(v0);
}

uint64_t sub_1001601B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];

  if (sub_1009B706C())
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 6);
  }

  v8 = v2[2];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + 48);
  v12 = sub_10022C350(&qword_100CEAFB0, &qword_100AA0A58);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = sub_10022C350(&qword_100CEAFB8, &unk_100AA0A60);
  v14 = a2 + *(result + 36);
  *v14 = v6;
  *(v14 + 8) = v5;
  *(v14 + 16) = v8;
  *(v14 + 24) = v7;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11 & 1;
  return result;
}

uint64_t sub_1001602AC(double a1)
{
  v1 = type metadata accessor for NamedCoordinateSpace();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v2 + 8))(v4, v1);
  if ((v8 & 1) == 0)
  {
    CGRectGetMinY(v7);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_100160460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v50 = a2;
  v4 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = v5;
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA46B8, &qword_100A2E878);
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v47 = &v42 - v7;
  v8 = type metadata accessor for LocationHeaderViewMeasurements(0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v42 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3 + *(v4 + 24);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = *v17;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v16, v13);
    v19 = v52;
  }

  v21 = *v3;
  v22 = *(v3 + 8);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v21 = v52;
  }

  v24 = v51;
  sub_100160D94();
  v25 = v45;
  sub_1000A3C14(v3, v45, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  sub_1000A3C14(v24, v10, type metadata accessor for LocationHeaderViewMeasurements);
  v26 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v27 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v42 + 80) + v28 + 8) & ~*(v42 + 80);
  v30 = swift_allocObject();
  sub_1001540E8(v25, v30 + v26, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  *(v30 + v27) = v21;
  *(v30 + v28) = v19;
  sub_1001540E8(v10, v30 + v29, type metadata accessor for LocationHeaderViewMeasurements);

  v31 = sub_10022C350(&qword_100CA46C0, &qword_100A2E880);
  v32 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v33 = sub_10023FBF4(&qword_100CA46C8, &qword_100CA46C0, &qword_100A2E880, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v34 = type metadata accessor for EmptyVisualEffect();
  v35 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v52 = v34;
  v53 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v47;
  View.visualEffect<A>(_:)();

  v38 = Solarium.init()();
  v46 = &v42;
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  sub_10022C350(&qword_100CA46D0, &qword_100A2E888);
  sub_10022C350(&qword_100CA46D8, &qword_100A2E890);
  v52 = v31;
  v53 = v32;
  v54 = v33;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10023F554();
  sub_10015B4B0();
  v40 = v49;
  View.staticIf<A, B, C>(_:then:else:)();

  (*(v48 + 8))(v37, v40);
  return sub_1000DFD78(v51, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_100160B84()
{
  type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for LocationHeaderViewMeasurements(0);
  sub_1000037C4();
  v8 = *(v7 + 80);

  v9 = v1 + v3 + *(v0 + 20);
  sub_10022C350(&qword_100CA3DB0, &qword_100A2DE48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v6 + 32);
    v11 = v10 + *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v12 + 8))(v9 + v11);
  }

  else
  {
  }

  sub_1000EBD74(*(v1 + v3 + *(v0 + 24)), *(v1 + v3 + *(v0 + 24) + 8));

  v13 = v1 + *(v6 + 32);
  v14 = v13 + *(type metadata accessor for DisplayMetrics(0) + 36);
  type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  (*(v15 + 8))(v14 + ((((((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8));

  return swift_deallocObject();
}

unint64_t sub_100160DBC()
{
  result = qword_100CA4730;
  if (!qword_100CA4730)
  {
    result = swift_getWitnessTable(byte_100A2EAD0, &type metadata for LocationHeaderViewGradientBackground, v0, v1);
    atomic_store(result, &qword_100CA4730);
  }

  return result;
}

uint64_t sub_100160E10()
{
  v3 = sub_100021300();
  v4 = *(type metadata accessor for TranslationAndGradientBackgroundViewModifier(v3) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for LocationHeaderViewMeasurements(0);
  sub_100003810(v7);
  v8 = *(v1 + v6);

  return sub_100160F10(v8, v2, v0, v1 + v5);
}

uint64_t sub_100160F10(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NamedCoordinateSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + *(type metadata accessor for TranslationAndGradientBackgroundViewModifier(0) + 32)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    v10 = (*(v7 + 8))(v9, v6);
    if ((v18 & 1) == 0)
    {
      CGRectGetMinY(v17);
    }

    sub_10023DE64(v10, v11);
    if (v14 - a1 > 0.0)
    {
      sub_10023DE64(v12, v13);
      sub_10016AFE8();
    }
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_1001610F4(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for NamedCoordinateSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v6 + 8))(v8, v5);
    if ((v12 & 1) == 0)
    {
      CGRectGetMinY(v11);
    }
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_100161298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for ConditionSummaryModifier(0);
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v34);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for EnvironmentValues();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v32;

    (*(v8 + 8))(v10, v33);
  }

  sub_100160D94();
  v15 = sub_10023DE64(v13, v14);
  sub_10023DE64(v16, v17);
  v19 = v18;
  *&v20 = COERCE_DOUBLE(sub_100155544((v7 + *(v34 + 32))));
  if (v21)
  {
    v22 = (v19 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v22 = *&v20;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for ConditionSummaryModifier);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1001540E8(v5, v25 + v23, type metadata accessor for ConditionSummaryModifier);
  *(v25 + v24) = v15;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_10022C350(&qword_100CA4668, &qword_100A2E848);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  sub_10023FBF4(&qword_100CA4678, &qword_100CA4668, &qword_100A2E848, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v26 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v37 = v27;
  v38 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v26;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_10016175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, __n128, __n128))
{
  v7 = sub_100021300();
  v9 = *(v8(v7) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12.n128_u64[0] = *(v5 + v11);
  v13.n128_u64[0] = *(v5 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a4(v6, v4, v5 + v10, v12, v13);
}

uint64_t sub_100161854(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = type metadata accessor for NamedCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for ConditionSummaryModifier(0);
  v13 = type metadata accessor for EmptyVisualEffect();
  v14 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v16[1] = v13;
  v16[2] = v14;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100161B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for ConditionModifier(0);
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v34);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for EnvironmentValues();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v32;

    (*(v8 + 8))(v10, v33);
  }

  sub_100160D94();
  v15 = sub_10023DE64(v13, v14);
  sub_10023DE64(v16, v17);
  v19 = v18;
  *&v20 = COERCE_DOUBLE(sub_100155544((v7 + *(v34 + 32))));
  if (v21)
  {
    v22 = (v19 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v22 = *&v20;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for ConditionModifier);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1001540E8(v5, v25 + v23, type metadata accessor for ConditionModifier);
  *(v25 + v24) = v15;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_10022C350(&qword_100CA4758, &qword_100A2E908);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  sub_10023FBF4(&qword_100CA4760, &qword_100CA4758, &qword_100A2E908, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v26 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v37 = v27;
  v38 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v26;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_100162010@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v5 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = type metadata accessor for NamedCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ConditionModifier(0) + 24)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView(axis:)();
    GeometryProxy.bounds(of:)();
    (*(v10 + 8))(v12, v9);
  }

  v13 = type metadata accessor for EmptyVisualEffect();
  v14 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v16[1] = v13;
  v16[2] = v14;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001622DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for TemperatureModifier(0);
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v34);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for EnvironmentValues();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v32;

    (*(v8 + 8))(v10, v33);
  }

  sub_100160D94();
  v15 = sub_10023DE64(v13, v14);
  sub_10023DE64(v16, v17);
  v19 = v18;
  *&v20 = COERCE_DOUBLE(sub_100155544((v7 + *(v34 + 32))));
  if (v21)
  {
    v22 = (v19 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v22 = *&v20;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for TemperatureModifier);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1001540E8(v5, v25 + v23, type metadata accessor for TemperatureModifier);
  *(v25 + v24) = v15;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_10022C350(&qword_100CA4690, &qword_100A2E860);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  sub_10023FBF4(&qword_100CA4698, &qword_100CA4690, &qword_100A2E860, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v26 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v37 = v27;
  v38 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v26;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_1001627CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v5 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = type metadata accessor for NamedCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for TemperatureModifier(0) + 24)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v10 + 8))(v12, v9);
    if ((v18 & 1) == 0)
    {
      CGRectGetMinY(v17);
    }
  }

  v13 = type metadata accessor for EmptyVisualEffect();
  v14 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v16[1] = v13;
  v16[2] = v14;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v6 + 8))(v8, v5);
}

double sub_100162AAC(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    result = 10.0;
  }

  if (result > 256.0)
  {
    return 256.0;
  }

  return result;
}

uint64_t sub_100162B64(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = sub_10022C350(&qword_100CA47F0, &qword_100A2EB28);
  __chkstk_darwin(v17 - 8);
  v19 = &v25[-v18];
  v20 = type metadata accessor for LayoutSubview();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v25[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100162D9C();
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    return sub_10003FDA0(v19, &qword_100CA47F0);
  }

  (*(v21 + 32))(v23, v19, v20);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMinX(v26);
  if (a12)
  {
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetMinY(v27);
  }

  static UnitPoint.topLeading.getter();
  v25[8] = 0;
  v25[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_100162D9C()
{
  type metadata accessor for LayoutSubviews();
  v1 = sub_100068374(&qword_100CAD308, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000283CC(v1);
  sub_100022AF4();
  sub_10004E548();
  if (v3)
  {
    type metadata accessor for LayoutSubview();
    v6 = sub_100007E1C();
  }

  else
  {
    sub_100019690(v2);
    sub_10007496C();
    type metadata accessor for LayoutSubview();
    sub_1000037E8();
    v4 = sub_1000168F4();
    v5(v4);
    v0(v11, 0);
    v6 = sub_100008500();
  }

  return sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_100162E84()
{
  sub_10000FE4C();
  v0 = sub_100121D30();
  return sub_100005F94(v0);
}

__n128 sub_100162EB8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a1, 0);
    (*(v7 + 8))(v9, v6);
    if (v17 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100A2D320;
    static Color.black.getter();
    v14 = Color.opacity(_:)();

    *(v13 + 32) = v14;
    v11 = (v13 + 40);
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2C3F0;
  v11 = (v10 + 32);
LABEL_6:
  *v11 = static Color.clear.getter();
  static UnitPoint.center.getter();
  EllipticalGradient.init(colors:center:startRadiusFraction:endRadiusFraction:)();
  *a3 = v17;
  result = v19;
  *(a3 + 8) = v18;
  *(a3 + 24) = result;
  *(a3 + 40) = 256;
  return result;
}

uint64_t sub_100163114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NamedCoordinateSpace();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v12 + 8))(v14, v11);
    if ((v21 & 1) == 0)
    {
      CGRectGetMinY(v20);
    }

    return type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  }

  if (!a3)
  {
    return type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  }

  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v12 + 8))(v14, v11);
  if ((v21 & 1) == 0)
  {
    CGRectGetMinY(v20);
  }

  result = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v16 = a2 + *(result + 24);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v17, 0);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_100163420()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for LocationViewPage(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  sub_10016347C(v2, v3);
}

void sub_10016347C(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewPage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  if (*a1 == 1)
  {
    sub_1005F1770(a2, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    sub_100103E40(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    asyncMain(block:)();
  }
}

uint64_t sub_1001635BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001635D8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1001635F8(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  if (a1[6] != a2[6] || a1[7] != a2[7])
  {
    return 0;
  }

  v9 = *(type metadata accessor for LocationHeaderViewMeasurements(0) + 32);

  return sub_1000BB930(a1 + v9, a2 + v9);
}

uint64_t sub_100163744(uint64_t a1)
{
  v3 = type metadata accessor for LocationModel();
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1001637B0(a1, v5);
}

uint64_t sub_1001637B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for LocationModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100109514(a1, v12);
  if (swift_dynamicCast())
  {
    sub_10001B350(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
    sub_100007A54(&qword_100CAA848, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_10001B350(v5, 1, 1, v6);
    sub_1000180EC(v5, &unk_100CE2F20, &unk_100A2D7D0);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100163A04()
{
  v0 = sub_1000038D8();
  v1 = type metadata accessor for LocationViewModel(v0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_100140210();
  sub_100140210();
  v8 = sub_100163AEC(v7, v4);
  sub_100147C14(v4, type metadata accessor for LocationViewModel);
  sub_100147C14(v7, type metadata accessor for LocationViewModel);
  return v8 & 1;
}

uint64_t sub_100163AEC(uint64_t a1, uint64_t a2)
{
  v114 = type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v112 = v10;
  v113 = sub_10022C350(&qword_100CB8F90, &qword_100A4D570);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v115 = v12;
  sub_1000038CC();
  v120 = type metadata accessor for ForegroundEffect();
  sub_1000037C4();
  v117 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v116 = v16 - v15;
  v17 = sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v119 = v19;
  v118 = sub_10022C350(&qword_100CD8BE0, &qword_100A82B68);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v121 = v21;
  v22 = sub_1000038CC();
  v125 = type metadata accessor for LocationFooterViewModel(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v122 = (v25 - v24);
  v26 = sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000039BC();
  v123 = v28;
  v124 = sub_10022C350(&qword_100CD8BE8, &unk_100A82B70);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  v126 = v30;
  sub_1000038CC();
  v31 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_1000037D8();
  v37 = v36 - v35;
  v38 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v38);
  sub_100003828();
  __chkstk_darwin(v39);
  v41 = &v108 - v40;
  v42 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = &v108 - v44;
  if ((static Location.Identifier.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  v109 = v7;
  v46 = type metadata accessor for LocationViewModel(0);
  v127 = a2;
  v47 = *(v46 + 20);
  v48 = *(v42 + 48);
  v110 = v46;
  v111 = a1;
  sub_100035AD0(a1 + v47, v45, &qword_100CADBA0, &qword_100A3D250);
  v49 = sub_10003C808();
  sub_100035AD0(v49, v50, &qword_100CADBA0, &qword_100A3D250);
  sub_1000038B4(v45, 1, v31);
  if (v51)
  {
    sub_100049CDC();
    if (v51)
    {
      sub_1000180EC(v45, &qword_100CADBA0, &qword_100A3D250);
      goto LABEL_14;
    }

LABEL_10:
    v52 = &qword_100CADD58;
    v53 = &unk_100A3E650;
LABEL_11:
    v54 = v45;
LABEL_12:
    sub_1000180EC(v54, v52, v53);
    goto LABEL_58;
  }

  sub_100035AD0(v45, v41, &qword_100CADBA0, &qword_100A3D250);
  sub_100049CDC();
  if (v51)
  {
    (*(v33 + 8))(v41, v31);
    goto LABEL_10;
  }

  (*(v33 + 32))(v37, &v45[v48], v31);
  sub_100164738(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v33 + 8);
  v56(v37, v31);
  v56(v41, v31);
  sub_1000180EC(v45, &qword_100CADBA0, &qword_100A3D250);
  if ((v55 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_14:
  v58 = v110;
  v57 = v111;
  memcpy(v132, (v111 + v110[6]), 0x9AuLL);
  memcpy(__dst, (v47 + v110[6]), 0x9AuLL);
  if ((sub_100164780(v132, __dst) & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_1001649E8();
  if ((v59 & 1) == 0 || !sub_100164B1C(*(v57 + v58[8]), *(v47 + v58[8])))
  {
    goto LABEL_58;
  }

  v60 = v58[9];
  v61 = *(v124 + 48);
  v45 = v126;
  sub_100035AD0(v57 + v60, v126, &qword_100CD8AB8, &qword_100A83DF0);
  v62 = sub_10003C808();
  sub_100035AD0(v62, v63, &qword_100CD8AB8, &qword_100A83DF0);
  sub_1000038B4(v45, 1, v125);
  if (v51)
  {
    sub_100049CDC();
    if (v51)
    {
      sub_1000180EC(v45, &qword_100CD8AB8, &qword_100A83DF0);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v64 = v123;
  sub_100035AD0(v45, v123, &qword_100CD8AB8, &qword_100A83DF0);
  sub_100049CDC();
  if (v65)
  {
    sub_100141B3C(v64, type metadata accessor for LocationFooterViewModel);
LABEL_25:
    v52 = &qword_100CD8BE8;
    v53 = &unk_100A82B70;
    goto LABEL_11;
  }

  v66 = &v45[v61];
  v67 = v122;
  sub_100187654(v66, v122);
  v68 = sub_10018775C(v64, v67);
  sub_100141B3C(v67, type metadata accessor for LocationFooterViewModel);
  sub_100141B3C(v64, type metadata accessor for LocationFooterViewModel);
  sub_1000180EC(v45, &qword_100CD8AB8, &qword_100A83DF0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_27:
  v69 = v111;
  sub_100019F38();
  if (!v51)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v51)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v51)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v51)
  {
    goto LABEL_58;
  }

  if ((sub_100164ED0(*(v69 + v58[14]), *(v60 + v58[14])) & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10000C70C(0, &qword_100CA52E0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v51)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v51)
  {
    goto LABEL_58;
  }

  sub_100008F08();
  if (!v51 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  v70 = *(v118 + 48);
  v71 = v121;
  sub_100035AD0(v111 + v110[20], v121, &qword_100CA60E8, &unk_100A5A9F0);
  sub_100017DD0();
  sub_1000038B4(v71, 1, v120);
  if (v51)
  {
    sub_1000038B4(v121 + v70, 1, v120);
    if (v51)
    {
      sub_1000180EC(v121, &qword_100CA60E8, &unk_100A5A9F0);
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v72 = v121;
  sub_100035AD0(v121, v119, &qword_100CA60E8, &unk_100A5A9F0);
  sub_1000038B4(v72 + v70, 1, v120);
  if (v73)
  {
    (*(v117 + 8))(v119, v120);
LABEL_52:
    v52 = &qword_100CD8BE0;
    v53 = &qword_100A82B68;
    v54 = v121;
    goto LABEL_12;
  }

  v75 = v116;
  v74 = v117;
  v76 = v121;
  v77 = v121 + v70;
  v78 = v120;
  (*(v117 + 32))(v116, v77, v120);
  sub_100164738(&qword_100CA6150, &type metadata accessor for ForegroundEffect, &protocol conformance descriptor for ForegroundEffect);
  v79 = v119;
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = *(v74 + 8);
  v81(v75, v78);
  v81(v79, v78);
  sub_1000180EC(v76, &qword_100CA60E8, &unk_100A5A9F0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  sub_100008F08();
  if (!v51)
  {
    goto LABEL_58;
  }

  sub_10016504C();
  if ((v82 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100008F08();
  if (!v51)
  {
    goto LABEL_58;
  }

  v85 = v110[24];
  v86 = *(v111 + v85);
  v87 = *(v127 + v85);
  if (v86 == 25)
  {
    if (v87 != 25)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (v87 == 25)
    {
      goto LABEL_58;
    }

    v88 = sub_10030D368(v86);
    v90 = v89;
    if (v88 == sub_10030D368(v87) && v90 == v91)
    {
    }

    else
    {
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v93 & 1) == 0)
      {
        goto LABEL_58;
      }
    }
  }

  sub_100008F08();
  if (!v51)
  {
    goto LABEL_58;
  }

  v94 = *(v113 + 48);
  v95 = v115;
  sub_100035AD0(v111 + v110[26], v115, &qword_100CA65C8, &unk_100A31670);
  sub_100017DD0();
  sub_1000038B4(v95, 1, v114);
  if (!v51)
  {
    v96 = v115;
    sub_100035AD0(v115, v112, &qword_100CA65C8, &unk_100A31670);
    sub_1000038B4(v96 + v94, 1, v114);
    if (!v97)
    {
      v98 = v115;
      v99 = v115 + v94;
      v100 = v109;
      sub_100187654(v99, v109);
      v101 = v112;
      sub_1006E6E98();
      v103 = v102;
      sub_100141B3C(v100, type metadata accessor for PreviewLocation);
      sub_100141B3C(v101, type metadata accessor for PreviewLocation);
      sub_1000180EC(v98, &qword_100CA65C8, &unk_100A31670);
      if ((v103 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_83;
    }

    sub_100141B3C(v112, type metadata accessor for PreviewLocation);
    goto LABEL_81;
  }

  sub_1000038B4(v115 + v94, 1, v114);
  if (!v51)
  {
LABEL_81:
    v52 = &qword_100CB8F90;
    v53 = &qword_100A4D570;
    v54 = v115;
    goto LABEL_12;
  }

  sub_1000180EC(v115, &qword_100CA65C8, &unk_100A31670);
LABEL_83:
  sub_100008F08();
  if (v51)
  {
    sub_100008F08();
    if (v51)
    {
      v104 = v110[29];
      v105 = *(v111 + v104 + 16);
      v128[0] = *(v111 + v104);
      v128[1] = v105;
      v129 = *(v111 + v104 + 32);
      v106 = v127 + v104;
      v107 = *(v106 + 16);
      v130[0] = *v106;
      v130[1] = v107;
      v131 = *(v106 + 32);
      v83 = static LocationSearchEntity.== infix(_:_:)(v128, v130);
      return v83 & 1;
    }
  }

LABEL_58:
  v83 = 0;
  return v83 & 1;
}

uint64_t sub_100164738(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100164780(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_67;
  }

  v5 = a1[3];
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  if (!(v6 >> 6))
  {
    if (v9 >= 0x40)
    {
      goto LABEL_67;
    }

    v15 = a1[2] == v7 && v5 == v8;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_29;
  }

  v10 = *(a2 + 32);
  if (v6 >> 6 == 1)
  {
    if ((v9 & 0xC0) != 0x40)
    {
      goto LABEL_67;
    }

    v11 = a1[4];
    if ((static Image.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v5 == v8 && v11 == v10)
    {
      if ((v6 ^ v9))
      {
        goto LABEL_67;
      }
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = 0;
      if (v13 & 1) == 0 || ((v6 ^ v9))
      {
        return v14 & 1;
      }
    }

    goto LABEL_29;
  }

  if ((v9 & 0xC0) != 0x80)
  {
    goto LABEL_67;
  }

  v14 = 0;
  if (!(v8 | v7 | v10) && v9 == 128)
  {
LABEL_29:
    v16 = a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    v17 = a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    v18 = a1[11];
    v19 = *(a2 + 88);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_67;
      }

      v20 = a1[10] == *(a2 + 80) && v18 == v19;
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_48:
      v21 = a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104);
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = a1[14] == *(a2 + 112) && a1[15] == *(a2 + 120);
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0 && ((*(a1 + 129) ^ *(a2 + 129)) & 1) == 0 && ((*(a1 + 130) ^ *(a2 + 130)) & 1) == 0)
        {
          v23 = a1[17] == *(a2 + 136) && a1[18] == *(a2 + 144);
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 152) ^ *(a2 + 152)) & 1) == 0)
          {
            v14 = *(a1 + 153) ^ *(a2 + 153) ^ 1;
            return v14 & 1;
          }
        }
      }

      goto LABEL_67;
    }

    if (!v19)
    {
      goto LABEL_48;
    }

LABEL_67:
    v14 = 0;
  }

  return v14 & 1;
}

void sub_1001649E8()
{
  sub_10000C778();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 48);
    v4 = (v1 + 48);
    while (1)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_1000053B8();
      sub_1009EED68();
      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v11 = sub_100014268();
        v13 = sub_10017221C(v11, v12, v7);

        if ((v13 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v3 += 3;
      v4 += 3;
      if (!--v2)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  sub_10000536C();
}

BOOL sub_100164B1C(unint64_t a1, unint64_t a2)
{
  v4 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (v4 != 1)
      {
        return 0;
      }

      v21 = sub_10001C320();
      type metadata accessor for NoAqiNewsContent._Storage(v21);
      v22 = sub_10001EE00();
      sub_1002D3B8C(v22, v23);
      return v5 & 1;
    case 2uLL:
      if (v4 != 2)
      {
        return 0;
      }

      v15 = sub_10001C320();
      type metadata accessor for SevereContent._Storage(v15);
      sub_10001EE00();
      sub_1002D93A4();
      return v5 & 1;
    case 3uLL:
      if (v4 != 3)
      {
        return 0;
      }

      v19 = sub_10001C320();
      type metadata accessor for NhpContent._Storage(v19);
      sub_10001EE00();
      sub_1002D2A5C();
      return v5 & 1;
    case 4uLL:
      if (v4 != 4)
      {
        return 0;
      }

      v9 = sub_10001C320();
      type metadata accessor for ElevatedAqiSevereContent._Storage(v9);
      sub_10001EE00();
      sub_1002BEE34();
      return v5 & 1;
    case 5uLL:
      if (v4 != 5)
      {
        return 0;
      }

      v28 = sub_10001C320();
      type metadata accessor for DefaultNewsContent._Storage(v28);
      v29 = sub_10001EE00();
      sub_1002BDFDC(v29, v30);
      return v5 & 1;
    case 6uLL:
      if (v4 != 6)
      {
        return 0;
      }

      v33 = sub_10001C320();
      type metadata accessor for DefaultTrendNewsContent._Storage(v33);
      v34 = sub_10001EE00();
      sub_1002BE220(v34, v35);
      return v5 & 1;
    case 7uLL:
      if (v4 != 7)
      {
        return 0;
      }

      v20 = sub_10001C320();
      type metadata accessor for ElevatedAqiNewsContent._Storage(v20);
      sub_10001EE00();
      sub_1002BECCC();
      return v5 & 1;
    case 8uLL:
      if (v4 != 8)
      {
        return 0;
      }

      v40 = sub_10001C320();
      type metadata accessor for NoAqiSevereNewsContent._Storage(v40);
      sub_10001EE00();
      sub_1002D4390();
      return v5 & 1;
    case 9uLL:
      if (v4 != 9)
      {
        return 0;
      }

      v11 = sub_10001C320();
      type metadata accessor for NoAqiSevereNhpContent._Storage(v11);
      sub_10001EE00();
      sub_1002D44F8();
      return v5 & 1;
    case 0xAuLL:
      if (v4 != 10)
      {
        return 0;
      }

      v39 = sub_10001C320();
      type metadata accessor for NoAqiNhpNewsContent._Storage(v39);
      sub_10001EE00();
      sub_1002D3DA8();
      return v5 & 1;
    case 0xBuLL:
      if (v4 != 11)
      {
        return 0;
      }

      v8 = sub_10001C320();
      type metadata accessor for SevereNhpContent._Storage(v8);
      sub_10001EE00();
      sub_1002D99AC();
      return v5 & 1;
    case 0xCuLL:
      if (v4 != 12)
      {
        return 0;
      }

      v10 = sub_10001C320();
      type metadata accessor for SevereNhpAqiContent._Storage(v10);
      sub_10001EE00();
      sub_1002D979C();
      return v5 & 1;
    case 0xDuLL:
      if (v4 != 13)
      {
        return 0;
      }

      v32 = sub_10001C320();
      type metadata accessor for SevereNewsContent._Storage(v32);
      sub_10001EE00();
      sub_1002D958C();
      return v5 & 1;
    case 0xEuLL:
      if (v4 != 14)
      {
        return 0;
      }

      v7 = sub_10001C320();
      type metadata accessor for NhpNewsContent._Storage(v7);
      sub_10001EE00();
      sub_1002D3458();
      return v5 & 1;
    case 0xFuLL:
      if (v4 != 15)
      {
        return 0;
      }

      v16 = sub_10001C320();
      type metadata accessor for ElevatedAqiSevereNewsContent._Storage(v16);
      v17 = sub_10001EE00();
      sub_1002BEF7C(v17, v18);
      return v5 & 1;
    case 0x10uLL:
      if (v4 != 16)
      {
        return 0;
      }

      v6 = sub_10001C320();
      type metadata accessor for NoAqiSevereNhpNewsContent._Storage(v6);
      sub_10001EE00();
      sub_1002D4688();
      return v5 & 1;
    case 0x11uLL:
      if (v4 != 17)
      {
        return 0;
      }

      v24 = sub_10001C320();
      type metadata accessor for ElevatedAqiContent._Storage(v24);
      v25 = sub_10001EE00();
      sub_1002BE910(v25, v26);
      return v5 & 1;
    case 0x12uLL:
      if (v4 != 18)
      {
        return 0;
      }

      v36 = sub_10001C320();
      type metadata accessor for NoAqiSevereContent._Storage(v36);
      v37 = sub_10001EE00();
      sub_1002D3F08(v37, v38);
      return v5 & 1;
    case 0x13uLL:
      if (v4 != 19)
      {
        return 0;
      }

      v42 = sub_10001C320();
      type metadata accessor for NoAqiNhpContent._Storage(v42);
      v43 = sub_10001EE00();
      sub_1002D3CA8(v43, v44);
      return v5 & 1;
    case 0x14uLL:
      if (v4 != 20)
      {
        return 0;
      }

      v27 = sub_10001C320();
      type metadata accessor for NoAqiContent._Storage(v27);
      sub_10001EE00();
      sub_1002D36A8();
      return v5 & 1;
    case 0x15uLL:
      if (v4 != 21)
      {
        return 0;
      }

      v31 = sub_10001C320();
      type metadata accessor for SevereNhpNewsContent._Storage(v31);
      sub_10001EE00();
      sub_1002D9C80();
      return v5 & 1;
    case 0x16uLL:
      if (v4 != 22)
      {
        return 0;
      }

      v41 = sub_10001C320();
      type metadata accessor for MinorAlertContent._Storage(v41);
      sub_10001EE00();
      sub_1002D28F4();
      return v5 & 1;
    case 0x17uLL:
      if (v4 != 23)
      {
        return 0;
      }

      v45 = sub_10001C320();
      type metadata accessor for NhpMinorAlertContent._Storage(v45);
      v46 = sub_10001EE00();
      sub_1002D2CD8(v46, v47);
      return v5 & 1;
    case 0x18uLL:
      if (v4 != 24)
      {
        return 0;
      }

      v14 = sub_10001C320();
      type metadata accessor for ElevatedAqiMinorAlertContent._Storage(v14);
      sub_10001EE00();
      sub_1002BEB64();
      return v5 & 1;
    case 0x19uLL:
      return v4 == 25 && a2 == 0xC000000000000004;
    default:
      if (v4)
      {
        return 0;
      }

      type metadata accessor for DefaultContent._Storage(0);
      sub_1002BDE88(a1, a2);
      return v5 & 1;
  }
}

uint64_t sub_100164ED0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7974706D65;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7974706D65;
  switch(v4)
  {
    case 1:
      v5 = 0x7469577974706D65;
      v3 = 0xED0000656D614E68;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x656E696C66666FLL;
      break;
    case 3:
      v5 = 0x6574616C75706F70;
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7469577974706D65;
      v6 = 0xED0000656D614E68;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x656E696C66666FLL;
      break;
    case 3:
      v2 = 0x6574616C75706F70;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v5, a2, v2);
  }

  return v8 & 1;
}

void sub_10016504C()
{
  sub_1000B7B64();
  if (v2 != v3 && (sub_1000131F4(), v4))
  {
    v5 = 0;
    sub_1002E4F88();
    sub_100030378();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      sub_1002E587C();
LABEL_12:
      v15 = (*(v0 + 56) + 32 * (v11 | (v5 << 6)));
      v19 = v15[1];
      v20 = *v15;

      sub_10000C918();
      v16 = sub_100031B34();
      v18 = v17;

      if ((v18 & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(*(v1 + 56) + 32 * v16), v20), vceqq_s64(*(*(v1 + 56) + 32 * v16 + 16), v19)))) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_14;
      }

      ++v12;
      if (*(v0 + 64 + 8 * v5))
      {
        sub_1000C825C();
        v8 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1000426D8();
  }
}

uint64_t static LocationSearchEntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    EntityProperty.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();

    sub_10000C70C(0, &qword_100CA52E0, NSObject_ptr);
    EntityProperty.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();
    v3 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1001652B4()
{
  v1 = type metadata accessor for LocationViewPage(0);
  sub_100003810(v1);
  sub_10001164C();
  return sub_100165300(v0 + v2);
}

uint64_t sub_100165300(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *(a1 + *(type metadata accessor for LocationViewPage(0) + 44) + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v8, v2);
  }

  sub_10016544C();
}

uint64_t sub_10016544C()
{
  if (*(v0 + 17) == 1)
  {
    return sub_1005EB058();
  }

  return result;
}

id sub_10016546C()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for WeatherActivity(0);
  __chkstk_darwin(v8 - 8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_100165E88();
  v12 = sub_100165E14();
  [v12 setEligibleForHandoff:1];
  sub_100165ECC(v0, v11);
  v13 = sub_100024D10(v11, 2, v1);
  if (v13)
  {
    if (v13 == 1)
    {
      sub_100165F30(0);
      v14 = objc_opt_self();
      v15 = [v14 mainBundle];
      sub_100008414(0xD00000000000001DLL, 0x8000000100AC51E0, v16, v17, v18, v19, v20, 0xD000000000000052);
      sub_100008478();

      sub_1003C1790("at the user's current location", 0x8000000100AC5200, v12);
      sub_10022C350(&qword_100CA7300, &qword_100A51110);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      v22 = [v14 mainBundle];
      v75._object = 0x8000000100AC5130;
      sub_100014500();
      sub_1000080F4();
      v75._countAndFlagsBits = 0xD000000000000036;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v25, v26, v75);
      sub_100008478();

      *(inited + 32) = 0x8000000100AC5130;
      *(inited + 40) = 0x8000000100AC5200;
      sub_100166668(inited);
      Set._bridgeToObjectiveC()();
      sub_100004088();

      sub_1000177C4(v27, "setKeywords:");
    }

    else
    {
      sub_100165F30(1);
      v30 = objc_opt_self();
      v31 = [v30 mainBundle];
      sub_100008414(0xD00000000000001BLL, 0x8000000100AC50C0, v32, v33, v34, v35, v36, 0xD000000000000048);
      sub_100008478();

      sub_1003C1790("com.apple.weather.useractivity", 0x8000000100AC50E0, v12);
      sub_10022C350(&qword_100CA7300, &qword_100A51110);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_100A2D320;
      v38 = [v30 mainBundle];
      v76._object = 0x8000000100AC5130;
      v39._countAndFlagsBits = sub_100014500();
      v39._object = 0xE700000000000000;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v76._countAndFlagsBits = 0xD000000000000036;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v76);

      *(v37 + 32) = v41;
      v42 = [v30 mainBundle];
      v77._object = 0x8000000100AC5170;
      sub_1000080F4();
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v45, v46, v77);
      sub_100008478();

      *(v37 + 48) = 0x8000000100AC5170;
      *(v37 + 56) = v41._countAndFlagsBits;
      sub_100166668(v37);
      Set._bridgeToObjectiveC()();
      sub_100004088();

      sub_1000177C4(v47, "setKeywords:");

      if (qword_100CA2950 != -1)
      {
        swift_once();
      }

      v48 = static WeatherLocation.currentLocationID;
      v49 = *algn_100D911C8;
      swift_bridgeObjectRetain_n();
      sub_100014514();
      sub_1001667EC(v48, v49, v50, 0xEA00000000004449);
      sub_10000FE74();
      sub_1001667EC(v48, v49, v51, v52);
    }
  }

  else
  {
    (*(v3 + 32))(v7, v11, v1);
    sub_100165F30(1);
    sub_1001664CC(v7);
    if (v28)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    [v12 setTitle:v29];

    sub_10022C350(&qword_100CA7300, &qword_100A51110);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_100A2D320;
    v54 = [objc_opt_self() mainBundle];
    v78._object = 0x8000000100AC5130;
    sub_100014500();
    sub_1000080F4();
    v78._countAndFlagsBits = 0xD000000000000036;
    v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v57, v58, v78);

    *(v53 + 32) = v59;
    *(v53 + 48) = Location.Identifier.name.getter();
    *(v53 + 56) = v60;
    sub_100166668(v53);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v12 setKeywords:isa];

    Location.Identifier.coordinate.getter();
    v63 = v62;
    v65 = v64;
    Double.write<A>(to:)();
    v66._countAndFlagsBits = 44;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    Double.write<A>(to:)();
    sub_100014514();
    sub_1001667EC(v67, v68, v69, 0xEA00000000004449);
    Location.Identifier.name.getter();
    sub_10000FE74();
    sub_1001667EC(v70, v71, v72, v73);
    sub_100166974(v63, 0, 7627116, 0xE300000000000000);
    sub_100166974(v65, 0, 1735290732, 0xE400000000000000);
    (*(v3 + 8))(v7, v1);
  }

  return v12;
}

void sub_100165B28()
{
  v1 = *(type metadata accessor for ActivityModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100165B88(v2);
}

void sub_100165B88(uint64_t a1)
{
  v2 = type metadata accessor for ActivityModifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  if (qword_100CA2760 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000703C(v8, qword_100D90C78);
  sub_10015F498(a1, v7);
  sub_10015F498(a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315651;
    v12 = sub_1003C0FB8();
    v14 = v13;
    sub_1009E2E78(v7);
    v15 = sub_100078694(v12, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v16 = sub_1003C0E58();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1701736302;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    sub_1009E2E78(v4);
    v20 = sub_100078694(v18, v19, &v23);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[ActivityModifier.onAppear] Marking activity as current: %s, Arg=%{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1009E2E78(v4);
    sub_1009E2E78(v7);
  }

  v21 = sub_10016546C();
  [v21 becomeCurrent];
}

id sub_100165E14()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithActivityType:v1];

  return v2;
}

unint64_t sub_100165E88()
{
  result = qword_100CB3D90;
  if (!qword_100CB3D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB3D90);
  }

  return result;
}

uint64_t sub_100165ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100165F30(void *a1)
{
  if (sub_100166104(v1))
  {
    sub_100019628();
    *&v47 = v3;
    *(&v47 + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (a1 == 2)
    {
      sub_100166298(v49);
      if (v5)
      {
        sub_100004088();
        swift_isUniquelyReferenced_nonNull_native();
        sub_100074948();
        v6 = sub_10022C350(&qword_100CA3A98, &qword_100A2DA30);
        v14 = sub_10002836C(v6, v7, v8, v9, v10, v11, v12, v13, v42, v44, v46[0]);
        v22 = sub_100022AAC(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, v46[0]);
        v28 = sub_10006953C(v22, v23, v24, v25, v26, v27);
        sub_10004E500(v28, v29, &type metadata for AnyHashable, v30, &protocol witness table for AnyHashable);
      }

      else
      {
        sub_10003C3F4();
      }

      sub_100166478(v49);
      sub_1003C1574(&v47);
    }

    else
    {
      v34 = 0x7473694C79746963;
      if (a1)
      {
        v34 = 0x6174654479746963;
      }

      v35 = 0xEC00000077656956;
      v48 = &type metadata for String;
      if (a1)
      {
        v35 = 0xEE00776569566C69;
      }

      *&v47 = v34;
      *(&v47 + 1) = v35;
      sub_100166170(&v47, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100005A60(isUniquelyReferenced_nonNull_native, v37, v38, v39, v40);
      v41 = sub_100166478(v49);
      if (!v44)
      {
        a1 = 0;
        goto LABEL_17;
      }
    }

    Dictionary._bridgeToObjectiveC()();
    sub_100004088();

LABEL_17:
    sub_1000177C4(v41, "setUserInfo:");

    sub_10000CA28();
    return;
  }

  sub_10000CA28();

  [v31 v32];
}

uint64_t sub_100166104(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_OWORD *sub_100166170(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_100166180(uint64_t a1, uint64_t a2)
{
  v5 = sub_100074624(a1, a2);
  sub_100166298(v5);
  sub_10001E5DC();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10022C350(&qword_100CA3A98, &qword_100A2DA30);
  v11 = sub_100017530();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    v13 = sub_100037064();
    sub_100166298(v13);
    sub_100013444();
    if (!v15)
    {
      goto LABEL_12;
    }

    v9 = v14;
  }

  v16 = *v3;
  if (v10)
  {
    v17 = (v16[7] + 32 * v9);
    sub_100006F14(v17);

    return sub_100166170(v2, v17);
  }

  else
  {
    sub_1001663A0(a2, v19);
    return sub_1001663FC(v9, v19, v2, v16);
  }
}

unint64_t sub_100166298(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001662DC(a1, v4);
}

unint64_t sub_1001662DC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001663A0(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100166478(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1001663FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100166170(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1001664CC(uint64_t a1)
{
  v1 = Location.Identifier.kind.getter();
  v2 = [objc_opt_self() mainBundle];
  if (v1)
  {
    v13._object = 0x8000000100AC50E0;
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x8000000100AC50C0;
    v13._countAndFlagsBits = 0xD000000000000048;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v13)._countAndFlagsBits;
  }

  else
  {
    v14._object = 0x8000000100AC5280;
    v6._object = 0x8000000100AC5260;
    v14._countAndFlagsBits = 0xD000000000000040;
    v6._countAndFlagsBits = 0xD000000000000012;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v2, v7, v14);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100A2C3F0;
    v9 = Location.Identifier.name.getter();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100035744();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  return countAndFlagsBits;
}

uint64_t sub_100166668(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_10022C350(&qword_100CACD28, &qword_100A3C130);
  result = sub_100028228();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1001667EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_10001372C())
  {
    *&v48 = a3;
    *(&v48 + 1) = a4;
    AnyHashable.init<A>(_:)();
    if (v4)
    {
      v49 = &type metadata for String;
      *&v48 = v5;
      *(&v48 + 1) = v4;
      sub_100166170(&v48, &v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100005A60(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12);
      v13 = sub_100166478(v50);
      if (!v45)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      sub_100166298(v50);
      if (v17)
      {
        sub_100004088();
        swift_isUniquelyReferenced_nonNull_native();
        sub_100074948();
        v18 = sub_10022C350(&qword_100CA3A98, &qword_100A2DA30);
        v26 = sub_10002836C(v18, v19, v20, v21, v22, v23, v24, v25, v43, v45, v47);
        v34 = sub_100022AAC(v26, v27, v28, v29, v30, v31, v32, v33, v44, v46, v47);
        v40 = sub_10006953C(v34, v35, v36, v37, v38, v39);
        sub_10004E500(v40, v41, &type metadata for AnyHashable, v42, &protocol witness table for AnyHashable);
      }

      else
      {
        sub_10003C3F4();
      }

      sub_100166478(v50);
      sub_1003C1574(&v48);
    }

    Dictionary._bridgeToObjectiveC()();
    sub_100004088();

LABEL_13:
    sub_1000177C4(v13, "setUserInfo:");

    sub_10000CA28();
    return;
  }

  sub_10000CA28();

  [v14 v15];
}

void sub_100166974(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100004088();
  if (sub_100166104(v8))
  {
    *&v50 = a3;
    *(&v50 + 1) = a4;
    AnyHashable.init<A>(_:)();
    if (a2)
    {
      sub_100166298(v52);
      if (v9)
      {
        sub_100004088();
        swift_isUniquelyReferenced_nonNull_native();
        sub_100074948();
        v10 = sub_10022C350(&qword_100CA3A98, &qword_100A2DA30);
        v18 = sub_10002836C(v10, v11, v12, v13, v14, v15, v16, v17, v45, v47, v49);
        v26 = sub_100022AAC(v18, v19, v20, v21, v22, v23, v24, v25, v46, v48, v49);
        v32 = sub_10006953C(v26, v27, v28, v29, v30, v31);
        sub_10004E500(v32, v33, &type metadata for AnyHashable, v34, &protocol witness table for AnyHashable);
      }

      else
      {
        sub_10003C3F4();
      }

      sub_100166478(v52);
      sub_1003C1574(&v50);
    }

    else
    {
      v51 = &type metadata for String;
      *&v50 = Double.description.getter();
      *(&v50 + 1) = v38;
      sub_100166170(&v50, &v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100005A60(isUniquelyReferenced_nonNull_native, v40, v41, v42, v43);
      v44 = sub_100166478(v52);
      if (!v47)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    Dictionary._bridgeToObjectiveC()();
    sub_100004088();

LABEL_13:
    sub_1000177C4(v44, "setUserInfo:");

    sub_10000CA28();
    return;
  }

  sub_10000CA28();

  [v35 v36];
}

uint64_t sub_100166B04(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_100166B8C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = (a1 + *(type metadata accessor for LocationViewCollisionOptionsUpdatingView(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v16 = *v5;
  v17 = v7;
  sub_10022C350(&qword_100CCB838, &qword_100A6AEA0);
  v8 = State.wrappedValue.getter();
  v10 = sub_100166CDC(v8, v9);

  if ((v10 & 1) == 0)
  {
    v16 = v6;
    v17 = v7;
    State.wrappedValue.getter();
    sub_100166DD4(1, v12);

    v13 = *(a1 + 80);
    v14 = type metadata accessor for Location.Identifier();
    sub_10001B350(v4, 1, 1, v14);
    sub_100166F44(v13, v4);
    return sub_1000180EC(v4, &qword_100CADBA0, &qword_100A3D250);
  }

  return result;
}

uint64_t sub_100166CDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100061E3C(&qword_100CCB840, type metadata accessor for LocationViewCollisionOptionsUpdatingViewState, byte_100A6ADA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 16);
}

uint64_t sub_100166D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100166CDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100166DD4(uint64_t result, uint64_t a2)
{
  v3 = result & 1;
  if (*(v2 + 16) == (result & 1))
  {
    *(v2 + 16) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[2] = v2;
    v7 = v3;
    sub_100166E7C(v5, sub_100166F34, v6);
  }

  return result;
}

uint64_t sub_100166F44(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v69 = a1;
  v73 = type metadata accessor for LayoutDirection();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v70 = &v63 - v4;
  v67 = type metadata accessor for EnvironmentValues();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Location.Identifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v15 - 8);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_100035AD0(v74, v22, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v22, 1, v6) == 1)
  {
    v26 = v7;
    type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
    v27 = v75;
    sub_1000E7B34();
    sub_1000E90D8(v14, v25);
    if (sub_100024D10(v22, 1, v6) != 1)
    {
      sub_1000180EC(v22, &qword_100CADBA0, &qword_100A3D250);
    }
  }

  else
  {
    v26 = v7;
    (*(v7 + 32))(v25, v22, v6);
    sub_10001B350(v25, 0, 1, v6);
    v27 = v75;
  }

  v28 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  v29 = v26;
  (*(v26 + 16))(v19, &v27[v28[6]], v6);
  sub_10001B350(v19, 0, 1, v6);
  v30 = *(v9 + 48);
  sub_100035AD0(v19, v11, &qword_100CADBA0, &qword_100A3D250);
  v75 = v25;
  sub_100035AD0(v25, &v11[v30], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v11, 1, v6) == 1)
  {
    sub_1000180EC(v19, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v11[v30], 1, v6) == 1)
    {
      sub_1000180EC(v11, &qword_100CADBA0, &qword_100A3D250);
      goto LABEL_14;
    }
  }

  else
  {
    v31 = v68;
    sub_100035AD0(v11, v68, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v11[v30], 1, v6) != 1)
    {
      v32 = &v11[v30];
      v33 = v64;
      (*(v29 + 32))(v64, v32, v6);
      sub_100061E3C(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      LODWORD(v74) = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v29 + 8);
      v34(v33, v6);
      sub_1000180EC(v19, &qword_100CADBA0, &qword_100A3D250);
      v34(v31, v6);
      sub_1000180EC(v11, &qword_100CADBA0, &qword_100A3D250);
      if (v74)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_1000180EC(v19, &qword_100CADBA0, &qword_100A3D250);
    (*(v29 + 8))(v31, v6);
  }

  sub_1000180EC(v11, &qword_100CADD58, &unk_100A3E650);
LABEL_11:
  if (v27[v28[7]] != 1)
  {
    goto LABEL_26;
  }

LABEL_14:
  memcpy(__dst, v27, 0x49uLL);
  if (__dst[9])
  {
    memcpy(v76, v27, sizeof(v76));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8, &unk_100A4C930);
    v35.n128_f64[0] = (*(v66 + 8))(v37, v67);
  }

  v38 = *&v76[5];
  sub_100167998(0, v69, v35);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

  v76[0] = v40;

  sub_1001679E4(v76);

  v42 = v76[0];
  __chkstk_darwin(v41);
  *(&v63 - 2) = v27;
  v43 = sub_100167DC4(sub_1001681B4, (&v63 - 4), v42);

  v44 = v70;
  sub_1006007F0(v70);
  v45 = v72;
  v46 = v71;
  v47 = v73;
  (*(v72 + 104))(v71, enum case for LayoutDirection.rightToLeft(_:), v73);
  LOBYTE(v42) = static LayoutDirection.== infix(_:_:)();
  v48 = *(v45 + 8);
  v48(v46, v47);
  v48(v44, v47);
  if (v42)
  {
    sub_1002EC244(v43);
    v43 = v49;
  }

  if (*&v27[v28[11]])
  {
    v50 = v38;

    v53 = sub_10011BE3C(v51, v52);
    v55 = v54;
    v56 = v53;

    if (v55 == v50)
    {
      v57 = sub_10013D334(v56, v43);

      if (v57)
      {

LABEL_26:
        v58 = v75;
        return sub_1000180EC(v58, &qword_100CADBA0, &qword_100A3D250);
      }
    }

    else
    {
    }

    v59 = sub_1001681FC(v43, v50);
    v60 = v75;
    if (v59 > 0.0)
    {

      sub_100168264(v43, v61, v50);

      v58 = v60;
      return sub_1000180EC(v58, &qword_100CADBA0, &qword_100A3D250);
    }

    sub_1000180EC(v75, &qword_100CADBA0, &qword_100A3D250);
  }

  else
  {
    type metadata accessor for LocationViewCollisionOptions(0);
    sub_100061E3C(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);

    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100167998(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a2 + 16))
  {
    v3 = sub_1000D5F5C(a1, a3);
    if (v4)
    {
      sub_100015064(v3);
    }
  }
}

Swift::Int sub_1001679E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100167B18();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100167B30(v6);
  *a1 = v2;
  return result;
}

void sub_100167A50()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CAC480, &qword_100A76580);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B0EB8();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

Swift::Int sub_100167B30(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10022C350(&qword_100CBD760, &unk_100A6AE90);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100601100(v7, v8, a1, v4);
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
    return sub_100167C34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100167C34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_100167CA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1508, &qword_100A76978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_100167DA4(char *a1, int64_t a2, char a3)
{
  result = sub_100167CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100167DC4(void (*a1)(int *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v21 = _swiftEmptyArrayStorage;
  v9 = sub_100071ECC();
  sub_100167DA4(v9, v10, v11);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    a1(&v20, &v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v20;
    v21 = v6;
    v14 = v6[2];
    if (v14 >= v6[3] >> 1)
    {
      sub_100120158();
      sub_100167DA4(v15, v16, v17);
      v6 = v21;
    }

    v6[2] = v14 + 1;
    *(v6 + v14 + 8) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_100167ED4(void *a1@<X0>, const void *a2@<X1>, float *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = a1[1];
  if (__OFSUB__(v10, *a1))
  {
    __break(1u);
  }

  else
  {
    v24 = v10 - *a1;
    memcpy(__dst, a2, 0x49uLL);
    if (__dst[9])
    {
      memcpy(v21, a2, 0x48uLL);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      v19 = v7;
      v12 = v11;
      os_log(_:dso:log:_:_:)();

      v7 = v19;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000180EC(__dst, &qword_100CB71A8, &unk_100A4C930);
      (*(v7 + 8))(v9, v6);
    }

    v13 = *&v21[5];
    memcpy(v21, a2, 0x49uLL);
    if (v21[9])
    {
      memcpy(v20, a2, sizeof(v20));
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000180EC(v21, &qword_100CB71A8, &unk_100A4C930);
      (*(v7 + 8))(v9, v6);
    }

    v16 = v24 + -1.0;
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v17 = v16 * v13;
    memcpy(v22, v20, sizeof(v22));
    v15 = v24;
    v18 = v17 + sub_10014B28C() * v15;
    *a3 = v18;
  }
}

float sub_1001681FC(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = v3 - 1;
  Array<A>.total.getter();
  return v6 + (v4 * a2);
}

uint64_t sub_100168264(uint64_t a1, uint64_t a2, float a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001682E4(uint64_t (*a1)(uint64_t))
{
  sub_100019410();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100168364(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v2 - 8);
  v59 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ScenePhase();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v51 = &v48[-v7];
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v48[-v13];
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v57);
  v55 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v48[-v20];
  __chkstk_darwin(v22);
  v24 = &v48[-v23];
  v25 = type metadata accessor for LocationViewObserverView(0);
  v26 = *(v25 + 24);
  v56 = v9;
  v27 = v9;
  v28 = v25;
  v29 = *(v27 + 16);
  v58 = v26;
  v29(v24, a1 + v26, v8);
  sub_10001B350(v24, 0, 1, v8);
  v60 = a1;
  sub_1000E7B34();
  sub_1000E90D8(v17, v21);
  v30 = *(v12 + 56);
  sub_100035AD0(v24, v14, &qword_100CADBA0, &qword_100A3D250);
  sub_100035AD0(v21, &v14[v30], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v14, 1, v8) == 1)
  {
    sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
    sub_100018144(v24, &qword_100CADBA0, &qword_100A3D250);
    v31 = sub_100024D10(&v14[v30], 1, v8);
    v32 = v60;
    if (v31 == 1)
    {
      sub_100018144(v14, &qword_100CADBA0, &qword_100A3D250);
LABEL_9:
      v40 = v51;
      sub_100337728(v51);
      v42 = v52;
      v41 = v53;
      v43 = v54;
      (*(v53 + 104))(v52, enum case for ScenePhase.background(_:), v54);
      sub_100067294(&qword_100CE11D0, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v41 + 8);
      v45(v42, v43);
      v45(v40, v43);
      v34 = v44 ^ 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v33 = v55;
  sub_100035AD0(v14, v55, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v14[v30], 1, v8) == 1)
  {
    sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
    sub_100018144(v24, &qword_100CADBA0, &qword_100A3D250);
    (*(v56 + 8))(v33, v8);
    v32 = v60;
LABEL_6:
    sub_100018144(v14, &qword_100CADD58, &unk_100A3E650);
    goto LABEL_7;
  }

  v35 = v56;
  v36 = &v14[v30];
  v37 = v50;
  (*(v56 + 32))(v50, v36, v8);
  sub_100067294(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = v33;
  v39 = *(v35 + 8);
  v39(v37, v8);
  sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
  sub_100018144(v24, &qword_100CADBA0, &qword_100A3D250);
  v39(v38, v8);
  sub_100018144(v14, &qword_100CADBA0, &qword_100A3D250);
  v32 = v60;
  if (v49)
  {
    goto LABEL_9;
  }

LABEL_7:
  v34 = 0;
LABEL_10:
  v46 = v59;
  sub_10001B350(v59, 1, 4, v57);
  type metadata accessor for LocationViewObserverViewState();
  sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState, byte_100A3D210);
  StateObject.wrappedValue.getter();
  sub_100338B6C(v34 & 1, v32 + v58, *(v32 + *(v28 + 28)), *(v32 + *(v28 + 28) + 8), *(v32 + *(v28 + 36)), v46);

  return sub_100339ADC(v46);
}

uint64_t sub_100168A78(uint64_t a1, uint64_t a2)
{
  v2 = sub_10011BE3C(a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = sub_10011BE3C(v2, v6);
  if (v4 == v8)
  {
    v9 = sub_10013D334(v5, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100168B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100168B2C()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CA6F08, &qword_100A31E88);
  __chkstk_darwin(v2);
  v4 = v14 - v3;
  sub_10010E5F4(v1, v14);
  v5 = swift_allocObject();
  v6 = v14[1];
  v5[1] = v14[0];
  v5[2] = v6;
  v5[3] = v14[2];
  Button.init(action:label:)();
  v7 = *v1;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  v10 = &v4[*(v2 + 36)];
  *v10 = KeyPath;
  v10[1] = sub_100168F20;
  v10[2] = v9;
  sub_10022C350(&qword_100CB2D40, &unk_100A453C0);
  sub_10012E508();
  sub_100005A00();
  sub_100006F64(v11, &qword_100CB2D40, &unk_100A453C0, v12);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_100168EAC(v4);
}