uint64_t type metadata accessor for ProofreadingView(uint64_t a1)
{
  result = qword_10025C548;
  if (!qword_10025C548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for ProofreadingView(0);
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000341C(&qword_10025C6C8, &qword_1001D1738);
  __chkstk_darwin(v5);
  v7 = (&v17 - v6);
  v8 = sub_10000341C(&qword_10025C490, &qword_1001D1158);
  __chkstk_darwin(v8);
  v10 = (&v17 - v9);
  v11 = *(a1 + 24);
  v21 = *(a1 + 16);
  v22 = v11;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v12 = v20;
  swift_getKeyPath();
  v21 = v12;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  if (v13 == 1)
  {
    sub_10003EC34(v10);
    sub_1000081F8(v10, v7, &qword_10025C490, &qword_1001D1158);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025C4C0, &unk_1001D1168);
    sub_10003EA68();
    sub_100007120(&qword_10025C4B8, &qword_10025C4C0, &unk_1001D1168, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v10, &qword_10025C490, &qword_1001D1158);
  }

  else
  {
    sub_10003F030(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v16 = swift_allocObject();
    sub_100048F74(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ProofreadingView);
    *v7 = sub_1000483D0;
    v7[1] = v16;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025C4C0, &unk_1001D1168);
    sub_10003EA68();
    sub_100007120(&qword_10025C4B8, &qword_10025C4C0, &unk_1001D1168, &protocol conformance descriptor for GeometryReader<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t sub_10003E92C()
{
  result = qword_10025C470;
  if (!qword_10025C470)
  {
    sub_100003E34(&qword_10025C450, &qword_1001D1130);
    sub_10003E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C470);
  }

  return result;
}

unint64_t sub_10003E9B0()
{
  result = qword_10025C478;
  if (!qword_10025C478)
  {
    sub_100003E34(&qword_10025C480, &qword_1001D1150);
    sub_10003EA68();
    sub_100007120(&qword_10025C4B8, &qword_10025C4C0, &unk_1001D1168, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C478);
  }

  return result;
}

unint64_t sub_10003EA68()
{
  result = qword_10025C488;
  if (!qword_10025C488)
  {
    sub_100003E34(&qword_10025C490, &qword_1001D1158);
    sub_10003EB20();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C488);
  }

  return result;
}

unint64_t sub_10003EB20()
{
  result = qword_10025C498;
  if (!qword_10025C498)
  {
    sub_100003E34(&qword_10025C4A0, &qword_1001D1160);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0, &protocol conformance descriptor for ZStack<A>);
    sub_1000493CC(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C498);
  }

  return result;
}

uint64_t sub_10003EC34@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_10000341C(&qword_10025C6D0, &unk_1001D7C70);
  sub_10003F1CC(v2, a2 + *(v5 + 44));
  v23 = *(v2 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  type metadata accessor for ProofreadingView(0);
  v6 = a2 + *(sub_10000341C(&qword_10025C4A0, &qword_1001D1160) + 36);
  v7 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v23) = 0;
  static Binding.constant(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v6 + 4) = 1;
  v8 = &v6[v7[8]];
  *v8 = v25;
  *(v8 + 1) = v26;
  v8[16] = v27;
  v9 = &v6[v7[9]];
  *v9 = 0xD00000000000001CLL;
  *(v9 + 1) = 0x80000001001E3EF0;
  v10 = &v6[v7[10]];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *v10 = v23;
  *(v10 + 2) = v24;
  v11 = &v6[v7[11]];
  State.init(wrappedValue:)();
  *v11 = 0;
  *(v11 + 1) = *(&v23 + 1);
  v12 = &v6[v7[12]];
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  *v12 = v23;
  v12[8] = BYTE8(v23);
  *(v12 + 2) = v24;
  v13 = &v6[v7[13]];
  State.init(wrappedValue:)();
  *v13 = 0;
  *(v13 + 1) = *(&v23 + 1);
  v14 = &v6[v7[14]];
  type metadata accessor for PresentationModel(0);
  sub_1000493CC(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v14 = Environment.init<A>(_:)();
  v14[8] = v15 & 1;
  v16 = Environment.init<A>(_:)();
  LOBYTE(v6) = v17;
  v18 = static Alignment.center.getter();
  v20 = v19;
  result = sub_10000341C(&qword_10025C490, &qword_1001D1158);
  v22 = a2 + *(result + 36);
  *v22 = v16;
  v22[8] = v6 & 1;
  *(v22 + 9) = 1;
  *(v22 + 2) = v18;
  *(v22 + 3) = v20;
  return result;
}

uint64_t sub_10003EF4C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10003DCB4();
  swift_getKeyPath();
  sub_1000493CC(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 81);

  if (v2 != v4)
  {
    sub_10003DCB4();
    sub_1001537FC(v2);
  }

  return result;
}

uint64_t sub_10003F030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProofreadingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F098(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for ProofreadingView(0);

  return sub_10003EF4C(a1, a2);
}

uint64_t sub_10003F118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v3 = sub_1001A1610();

  if (v3)
  {
  }

  type metadata accessor for ProofreadingView(0);
  sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_10003F1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_10000341C(&qword_10025C6D8, &unk_1001D7C80);
  __chkstk_darwin(v22);
  v5 = &v19 - v4;
  v6 = sub_10000341C(&qword_10025C6E0, &unk_1001D1770);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v21 = static Color.clear.getter();
  v20 = static Edge.Set.vertical.getter();
  v19 = static SafeAreaRegions.all.getter();
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v13 = sub_10000341C(&qword_10025C6E8, &unk_1001D7C90);
  sub_10003F4C4(&v5[*(v13 + 44)]);
  v23 = a1;
  sub_10000341C(&qword_10025C6F0, &unk_1001D1780);
  sub_100007120(&qword_10025C6F8, &qword_10025C6D8, &unk_1001D7C80, &protocol conformance descriptor for VStack<A>);
  sub_100007120(&qword_10025C700, &qword_10025C6F0, &unk_1001D1780, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  sub_10000F500(v5, &qword_10025C6D8, &unk_1001D7C80);
  v14 = *(v7 + 16);
  v14(v10, v12, v6);
  v15 = v19;
  *a2 = v21;
  *(a2 + 8) = v15;
  *(a2 + 16) = v20;
  v16 = sub_10000341C(&qword_10025C708, &unk_1001D7CA0);
  v14((a2 + *(v16 + 48)), v10, v6);
  v17 = *(v7 + 8);

  v17(v12, v6);
  v17(v10, v6);
}

uint64_t sub_10003F4C4@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v1 - 8);
  v82 = v1;
  v83 = v2;
  __chkstk_darwin(v1);
  v80 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v81 = sub_10000341C(&qword_10025C760, &unk_1001D1830) - 8;
  v7 = __chkstk_darwin(v81);
  v77 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v76 = v74 - v10;
  v11 = __chkstk_darwin(v9);
  v75 = v74 - v12;
  __chkstk_darwin(v11);
  v79 = v74 - v13;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2065736F706D6F43;
  v14._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v84 = String.init(localized:table:bundle:locale:comment:)();
  v85 = v17;
  v74[3] = sub_10002AC34();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v23 = Text.bold()();
  v25 = v24;
  v27 = v26;
  sub_10002A984(v18, v20, v22 & 1);

  LODWORD(v84) = static HierarchicalShapeStyle.primary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  LOBYTE(v18) = v31;
  v33 = v32;
  sub_10002A984(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v84 = v28;
  v85 = v30;
  v86 = v18 & 1;
  v87 = v33;
  v88 = KeyPath;
  v89 = 1;
  v35 = v80;
  static ParagraphTypesetting.balanced.getter();
  v74[2] = sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  v74[1] = sub_10004882C();
  v36 = v79;
  View.paragraphTypesetting(_:isEnabled:)();
  v37 = *(v83 + 8);
  v83 += 8;
  v37(v35, v82);
  sub_10002A984(v28, v30, v18 & 1);

  LOBYTE(v25) = static Edge.Set.bottom.getter();
  v38 = EdgeInsets.init(_all:)();
  v39 = v36 + *(v81 + 44);
  *v39 = v25;
  *(v39 + 8) = v40;
  *(v39 + 16) = v41;
  *(v39 + 24) = v42;
  *(v39 + 32) = v43;
  *(v39 + 40) = 0;
  v84 = sub_100149E4C(v38);
  v85 = v44;
  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  LODWORD(v84) = static HierarchicalShapeStyle.secondary.getter();
  v50 = Text.foregroundStyle<A>(_:)();
  v52 = v51;
  LOBYTE(v30) = v53;
  sub_10002A984(v45, v47, v49 & 1);

  static Font.callout.getter();
  v54 = Text.font(_:)();
  v56 = v55;
  LOBYTE(v47) = v57;
  v59 = v58;

  sub_10002A984(v50, v52, v30 & 1);

  v60 = swift_getKeyPath();
  v84 = v54;
  v85 = v56;
  v86 = v47 & 1;
  v87 = v59;
  v88 = v60;
  v89 = 1;
  v61 = v80;
  static ParagraphTypesetting.balanced.getter();
  v62 = v75;
  View.paragraphTypesetting(_:isEnabled:)();
  v37(v61, v82);
  sub_10002A984(v54, v56, v47 & 1);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v63 = v62 + *(v81 + 44);
  *v63 = v45;
  *(v63 + 8) = v64;
  *(v63 + 16) = v65;
  *(v63 + 24) = v66;
  *(v63 + 32) = v67;
  *(v63 + 40) = 0;
  v68 = v79;
  v69 = v76;
  sub_1000081F8(v79, v76, &qword_10025C760, &unk_1001D1830);
  v70 = v77;
  sub_1000081F8(v62, v77, &qword_10025C760, &unk_1001D1830);
  v71 = v78;
  sub_1000081F8(v69, v78, &qword_10025C760, &unk_1001D1830);
  v72 = sub_10000341C(&qword_10025C770, &qword_1001D1840);
  sub_1000081F8(v70, v71 + *(v72 + 48), &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v62, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v68, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v70, &qword_10025C760, &unk_1001D1830);
  return sub_10000F500(v69, &qword_10025C760, &unk_1001D1830);
}

uint64_t sub_10003FB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_10000341C(&qword_10025C710, &unk_1001D1790);
  __chkstk_darwin(v23);
  v21 = &v19 - v3;
  v22 = sub_10000341C(&qword_10025C718, &unk_1001D7CB0);
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v20 = sub_10000341C(&qword_10025C720, &unk_1001D17A0);
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = &v19 - v9;
  static ToolbarItemPlacement.cancellationAction.getter();
  v26 = a1;
  sub_10000341C(&qword_10025C728, &unk_1001D7CC0);
  sub_100007120(&qword_10025C730, &qword_10025C728, &unk_1001D7CC0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v25 = a1;
  sub_10000341C(&qword_10025C738, &unk_1001D17B0);
  v11 = sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  v12 = sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v27 = v11;
  v28 = v12;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v23 + 48);
  v15 = v20;
  v14 = v21;
  (*(v8 + 16))(v21, v10, v20);
  v16 = &v14[v13];
  v17 = v22;
  (*(v4 + 16))(v16, v6, v22);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v17);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_10003FF38(uint64_t a1)
{
  v2 = type metadata accessor for ProofreadingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10003F030(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100048F74(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ProofreadingView);
  v9 = a1;
  sub_10000341C(&qword_10025C740, &qword_1001DCDD0);
  sub_10004876C();
  return Button.init(action:label:)();
}

uint64_t sub_100040094(char a1)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v15 = v7;
  v16 = v8;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  if (a1)
  {
    v15 = v7;
    v16 = v8;
    State.wrappedValue.getter();
    v9 = v14[1];
    swift_getKeyPath();
    v15 = v9;
    sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

    sub_1001A7A44((v10 & 1) == 0, 0, 0);
  }

  else
  {
    sub_1001A7A44(0, 0, 0);

    type metadata accessor for ProofreadingView(0);
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v11 = NavigationPath.count.getter();
    (*(v4 + 8))(v6, v3);
    if (v11 >= 1)
    {
      Binding.wrappedValue.getter();
      NavigationPath.removeLast(_:)(1);
      return Binding.wrappedValue.setter();
    }
  }

  v15 = v7;
  v16 = v8;
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_10004033C@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ProofreadingView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v6 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
    v26 = v8 & 1;
    v14[8] = 1;
    v18 = v7;
    v19 = v9;
    v20 = v8 & 1;
    *v21 = v17[0];
    *&v21[3] = *(v17 + 3);
    v22 = v10;
    v23 = v15;
    v24 = v16;
    v25 = 1;
  }

  else
  {
    v11 = static VerticalAlignment.center.getter();
    sub_1000405A4(v27);
    LOBYTE(v17[0]) = 1;
    v26 = v27[24];
    LOBYTE(v15) = 0;
    v18 = v11;
    v19 = 0;
    v20 = 1;
    v22 = *v27;
    v23 = *&v27[8];
    LOBYTE(v24) = v27[24];
    *(&v24 + 1) = v28;
    v25 = 0;
  }

  sub_10000341C(&qword_10025C758, &qword_1001D1800);
  sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800, &protocol conformance descriptor for HStack<A>);
  _ConditionalContent<>.init(storage:)();
  v12 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v12;
  *(a1 + 64) = v30;
  result = *&v27[16];
  *a1 = *v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000405A4@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_100007D98(v3, v5, v7);

  sub_10002A984(v3, v5, v7);
}

uint64_t sub_10004069C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 543519573;
  v7._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v8);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  String.LocalizationValue.init(stringInterpolation:)();
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  static Locale.current.getter();
  v46 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v12;
  v13 = type metadata accessor for ProofreadingView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10003F030(a1, &v37 - v16);
  v17 = *(v14 + 80);
  v18 = swift_allocObject();
  sub_100048F74(&v37 - v16, v18 + ((v17 + 16) & ~v17), type metadata accessor for ProofreadingView);
  sub_10002AC34();
  v41 = v5;
  v19 = Button<>.init<A>(_:action:)();
  __chkstk_darwin(v19);
  sub_10003F030(a1, &v37 - v16);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_100048F74(&v37 - v16, v21 + ((v17 + 32) & ~v17), type metadata accessor for ProofreadingView);
  v22 = type metadata accessor for TaskPriority();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v39 = type metadata accessor for _TaskModifier2();
    v40 = &v37;
    v38 = *(v39 - 8);
    __chkstk_darwin(v39);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v46 = 0xD000000000000039;
    v47 = 0x80000001001E3F10;
    v45 = 106;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    __chkstk_darwin(v29);
    (*(v23 + 16))(&v37 - v25, &v37 - v25, v22);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v23 + 8))(&v37 - v25, v22);
    v30 = v44;
    (*(v42 + 32))(v44, v41, v43);
    v31 = sub_10000341C(&qword_10025A980, &qword_1001CE160);
    return (*(v38 + 32))(v30 + *(v31 + 36), v27, v39);
  }

  else
  {
    v33 = sub_10000341C(&qword_10025A988, &qword_1001CE168);
    v34 = v44;
    v35 = (v44 + *(v33 + 36));
    v36 = type metadata accessor for _TaskModifier();
    (*(v23 + 32))(&v35[*(v36 + 20)], &v37 - v25, v22);
    *v35 = &unk_1001D17C8;
    *(v35 + 1) = v21;
    return (*(v42 + 32))(v34, v41, v43);
  }
}

uint64_t sub_100040D10(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  v16[0] = *(a1 + 16);
  v17 = v16[0];
  v18 = v6;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  sub_1001A7A44(0, 0, 0);

  v7 = type metadata accessor for ProofreadingView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v8 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    result = Binding.wrappedValue.setter();
  }

  v10 = *(a1 + *(v7 + 36));
  if (v10)
  {
    v17 = v16[0];
    v18 = v6;
    State.wrappedValue.getter();
    v11 = v16[1];
    swift_getKeyPath();
    v17 = v11;
    sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v11 + 96);
    if (v12 == 255)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v14 = *(v11 + 72);
      v13 = *(v11 + 80);
      v15 = *(v11 + 88);
      sub_10000F3F4(v14, v13, v15, *(v11 + 96));

      if (v12)
      {
        sub_1000278C0(v14, v13, v15, v12);
        v13 = 0;
        v15 = 0;
      }

      v10(v13, v15);
    }
  }

  return result;
}

uint64_t sub_100041004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004109C, v5, v4);
}

uint64_t sub_10004109C(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];

  v4 = *(v3 + 24);
  v2[2] = *(v3 + 16);
  v2[3] = v4;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"resetPresentationSelectedDetent"])
    {
      [Strong resetPresentationSelectedDetent];
    }

    swift_unknownObjectRelease();
  }

  v6 = v2[1];

  return v6();
}

uint64_t sub_100041170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_10000341C(&qword_10025C778, &qword_1001D1848);
  sub_100041490(a2, a1, (a3 + *(v7 + 44)));
  v25 = *(a2 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  type metadata accessor for ProofreadingView(0);
  v8 = a3 + *(sub_10000341C(&qword_10025C780, &qword_1001D1850) + 36);
  v9 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v25) = 1;
  static Binding.constant(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v8 + 4) = 1;
  v10 = &v8[v9[8]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v10[16] = v29;
  v11 = &v8[v9[9]];
  *v11 = 0xD000000000000010;
  *(v11 + 1) = 0x80000001001D11F0;
  v12 = &v8[v9[10]];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *v12 = v25;
  *(v12 + 2) = v26;
  v13 = &v8[v9[11]];
  State.init(wrappedValue:)();
  *v13 = 1;
  *(v13 + 1) = *(&v25 + 1);
  v14 = &v8[v9[12]];
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  *v14 = v25;
  v14[8] = BYTE8(v25);
  *(v14 + 2) = v26;
  v15 = &v8[v9[13]];
  State.init(wrappedValue:)();
  *v15 = 1;
  *(v15 + 1) = *(&v25 + 1);
  v16 = &v8[v9[14]];
  type metadata accessor for PresentationModel(0);
  sub_1000493CC(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v16 = Environment.init<A>(_:)();
  v16[8] = v17 & 1;
  v18 = Environment.init<A>(_:)();
  LOBYTE(v8) = v19;
  v20 = static Alignment.center.getter();
  v22 = v21;
  result = sub_10000341C(&qword_10025C788, &qword_1001D1858);
  v24 = a3 + *(result + 36);
  *v24 = v18;
  v24[8] = v8 & 1;
  *(v24 + 9) = 1;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  return result;
}

uint64_t sub_100041490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v37 = sub_10000341C(&qword_10025C790, &qword_1001D1860);
  __chkstk_darwin(v37);
  v6 = &v35 - v5;
  v38 = sub_10000341C(&qword_10025C798, &qword_1001D1868);
  __chkstk_darwin(v38);
  v8 = &v35 - v7;
  v9 = sub_10000341C(&qword_10025C7A0, &qword_1001D1870);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  __chkstk_darwin(v9);
  v36 = &v35 - v11;
  v39 = sub_10000341C(&qword_10025C7A8, &qword_1001D1878) - 8;
  v12 = __chkstk_darwin(v39);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v42 = static Color.clear.getter();
  v41 = static Edge.Set.vertical.getter();
  v40 = static SafeAreaRegions.all.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v16 = sub_10000341C(&qword_10025C7B0, &unk_1001D1880);
  sub_10004199C(a1, a2, &v6[*(v16 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  sub_100007120(&qword_10025C7B8, &qword_10025C790, &qword_1001D1860, &protocol conformance descriptor for VStack<A>);
  View.navigationTitle(_:)();

  sub_10000F500(v6, &qword_10025C790, &qword_1001D1860);
  v17 = *(a1 + 40);
  v18 = a1;
  v51 = *(a1 + 32);
  v52 = v17;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v19 = v50;
  v20 = sub_1000488E4();
  v21 = v36;
  v22 = v38;
  View.inlineFeedback(controller:completion:)();

  sub_10000F500(v8, &qword_10025C798, &qword_1001D1868);
  v47 = v18;
  sub_10000341C(&qword_10025C7D8, &qword_1001D1890);
  v48 = v22;
  v49 = v20;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_10025C7E0, &qword_10025C7D8, &qword_1001D1890, &protocol conformance descriptor for TupleToolbarContent<A>);
  v23 = v44;
  View.toolbar<A>(content:)();
  (*(v45 + 8))(v21, v23);
  LOBYTE(v23) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = &v15[*(v39 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = v43;
  sub_1000081F8(v15, v43, &qword_10025C7A8, &qword_1001D1878);
  v30 = v46;
  v31 = v40;
  *v46 = v42;
  v30[1] = v31;
  *(v30 + 16) = v41;
  v32 = v30;
  v33 = sub_10000341C(&qword_10025C7E8, &qword_1001D1898);
  sub_1000081F8(v29, v32 + *(v33 + 48), &qword_10025C7A8, &qword_1001D1878);

  sub_10000F500(v15, &qword_10025C7A8, &qword_1001D1878);
  sub_10000F500(v29, &qword_10025C7A8, &qword_1001D1878);
}

void sub_10004199C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v202 = a2;
  v210 = a3;
  v211 = type metadata accessor for FeedbackView(0);
  v208 = *(v211 - 8);
  v4 = __chkstk_darwin(v211);
  v192 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v191 = &v191 - v6;
  v7 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v8 = __chkstk_darwin(v7 - 8);
  v209 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v212 = &v191 - v10;
  v206 = sub_10000341C(&qword_10025C828, &qword_1001D1910);
  __chkstk_darwin(v206);
  *(&v203 + 1) = &v191 - v11;
  v201 = sub_10000341C(&qword_10025C830, &qword_1001D1918);
  v12 = __chkstk_darwin(v201);
  *(&v202 + 1) = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  *&v203 = &v191 - v14;
  v197 = sub_10000341C(&qword_10025C838, &qword_1001D1920);
  __chkstk_darwin(v197);
  v199 = (&v191 - v15);
  v198 = sub_10000341C(&qword_10025C840, &qword_1001D1928);
  __chkstk_darwin(v198);
  v195 = &v191 - v16;
  v17 = sub_10000341C(&qword_10025C848, &qword_1001D1930);
  v18 = __chkstk_darwin(v17 - 8);
  v193 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v194 = (&v191 - v20);
  v21 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v21 - 8);
  v196 = &v191 - v22;
  v23 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v24 = __chkstk_darwin(v23 - 8);
  __chkstk_darwin(v24);
  v25 = sub_10000341C(&qword_10025C850, &qword_1001D1938);
  v26 = __chkstk_darwin(v25 - 8);
  v200 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v218 = &v191 - v28;
  v204 = sub_10000341C(&qword_10025C858, &qword_1001D1940);
  __chkstk_darwin(v204);
  v205 = (&v191 - v29);
  v30 = sub_10000341C(&qword_10025C860, &qword_1001D1948);
  v31 = __chkstk_darwin(v30 - 8);
  v207 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v216 = &v191 - v33;
  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  v214 = a1;
  *&v241 = v35;
  *(&v241 + 1) = v34;
  v36 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v37 = v234;
  swift_getKeyPath();
  *&v241 = v37;
  v215 = sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a1) = *(v37 + 112);

  v219 = v34;
  v217 = v35;
  v213 = v36;
  if ((a1 & 1) != 0 || ((*&v241 = v35, *(&v241 + 1) = v34, State.wrappedValue.getter(), v38 = v234, swift_getKeyPath(), *&v241 = v38, sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v39 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions, swift_beginAccess(), v40 = *(v38 + v39), , , v40 >> 62) ? (v41 = _CocoaArrayWrapper.endIndex.getter()) : (v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v34 = v219, v41))
  {
    *&v241 = v35;
    *(&v241 + 1) = v34;
    State.wrappedValue.getter();
    v42 = sub_1001A1610();

    if (!v42)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v96);
      *&v241 = v35;
      *(&v241 + 1) = v34;
      State.wrappedValue.getter();
      v97 = sub_10019F9C4();

      if (v97 >> 62)
      {
        v98 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *&v241 = v98;
      LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v99._countAndFlagsBits = 0x65676E61686320;
      v99._object = 0xE700000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v99);
      LocalizedStringKey.init(stringInterpolation:)();
      v100 = Text.init(_:tableName:bundle:comment:)();
      v102 = v101;
      v104 = v103;
      v105 = type metadata accessor for Font.Design();
      v106 = v196;
      (*(*(v105 - 8) + 56))(v196, 1, 1, v105);
      static Font.system(size:weight:design:)();
      sub_10000F500(v106, &qword_10025C5D0, &qword_1001D15A0);
      v107 = Text.font(_:)();
      v195 = v108;
      v196 = v107;
      v110 = v109;
      v194 = v111;

      sub_10002A984(v100, v102, v104 & 1);

      v112 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;
      LOBYTE(v220) = v110 & 1;
      LOBYTE(v251[0]) = 0;
      v121 = static Edge.Set.bottom.getter();
      LOBYTE(v227) = 1;
      *&v241 = v217;
      *(&v241 + 1) = v219;
      State.wrappedValue.getter();
      v122 = v234;
      swift_getKeyPath();
      *&v241 = v122;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v123 = *(v122 + 112);

      if (v123 == 1)
      {
        v124 = static HierarchicalShapeStyle.secondary.getter();
      }

      else
      {
        v124 = static HierarchicalShapeStyle.primary.getter();
      }

      v95 = v214;
      v130 = v199;
      v131 = v195;
      *v199 = v196;
      v130[1] = v131;
      *(v130 + 16) = v110 & 1;
      v130[3] = v194;
      *(v130 + 32) = v112;
      v130[5] = v114;
      v130[6] = v116;
      v130[7] = v118;
      v130[8] = v120;
      *(v130 + 72) = 0;
      *(v130 + 80) = v121;
      *(v130 + 11) = 0u;
      *(v130 + 13) = 0u;
      *(v130 + 120) = 1;
      *(v130 + 31) = v124;
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_10025C868, &qword_1001D1978);
      sub_100007120(&qword_10025C870, &qword_10025C840, &qword_1001D1928, &protocol conformance descriptor for TupleView<A>);
      sub_100048C78();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_20;
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
    *&v241 = v35;
    *(&v241 + 1) = v34;
    State.wrappedValue.getter();
    v44 = sub_1001A1610();
    if (v44)
    {

      v45 = sub_10019F9C4();
      v46 = sub_1001A1610();
      if (!v46)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v47 = v46;
      v48 = sub_100048038(v46, v45);
      v50 = v49;

      if ((v50 & 1) == 0)
      {

        if (__OFADD__(v48, 1))
        {
          __break(1u);
        }

        else
        {
          *&v241 = v48 + 1;
          LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v51._countAndFlagsBits = 543584032;
          v51._object = 0xE400000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
          *&v241 = v217;
          *(&v241 + 1) = v219;
          State.wrappedValue.getter();
          v52 = sub_10019F9C4();

          if (!(v52 >> 62))
          {
            v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

            *&v241 = v53;
            LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v54._countAndFlagsBits = 0;
            v54._object = 0xE000000000000000;
            LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v54);
            LocalizedStringKey.init(stringInterpolation:)();
            v55 = Text.init(_:tableName:bundle:comment:)();
            v57 = v56;
            v59 = v58;
            v60 = type metadata accessor for Font.Design();
            v61 = v196;
            (*(*(v60 - 8) + 56))(v196, 1, 1, v60);
            static Font.system(size:weight:design:)();
            sub_10000F500(v61, &qword_10025C5D0, &qword_1001D15A0);
            v62 = Text.font(_:)();
            v64 = v63;
            v66 = v65;
            v68 = v67;

            sub_10002A984(v55, v57, v59 & 1);

            v69 = static Edge.Set.top.getter();
            EdgeInsets.init(_all:)();
            v71 = v70;
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v249 = v66 & 1;
            v248 = 0;
            LOBYTE(v55) = static Edge.Set.bottom.getter();
            EdgeInsets.init(_all:)();
            v252 = 0;
            *&v227 = v62;
            *(&v227 + 1) = v64;
            LOBYTE(v228) = v66 & 1;
            *(&v228 + 1) = v68;
            LOBYTE(v229) = v69;
            *(&v229 + 1) = v71;
            *&v230 = v73;
            *(&v230 + 1) = v75;
            *&v231 = v77;
            BYTE8(v231) = 0;
            *(&v231 + 9) = v251[0];
            HIDWORD(v231) = *(v251 + 3);
            LOBYTE(v232) = v55;
            DWORD1(v232) = *(v250 + 3);
            *(&v232 + 1) = v250[0];
            *(&v232 + 1) = v78;
            *&v233[0] = v79;
            *(&v233[0] + 1) = v80;
            *&v233[1] = v81;
            BYTE8(v233[1]) = 0;
            v82 = static HorizontalAlignment.leading.getter();
            v83 = v194;
            *v194 = v82;
            *(v83 + 8) = 0x4020000000000000;
            *(v83 + 16) = 0;
            v84 = sub_10000341C(&qword_10025C8E8, &qword_1001D1AE8);
            sub_1000434C8(v214, v83 + *(v84 + 44));
            v224 = v231;
            v225 = v232;
            v226[0] = v233[0];
            *(v226 + 9) = *(v233 + 9);
            v220 = v227;
            v221 = v228;
            v222 = v229;
            v223 = v230;
            v85 = v193;
            sub_1000081F8(v83, v193, &qword_10025C848, &qword_1001D1930);
            v86 = v224;
            v87 = v225;
            v238 = v224;
            v239 = v225;
            v88 = v226[0];
            v240[0] = v226[0];
            *(v240 + 9) = *(v226 + 9);
            v89 = v220;
            v90 = v221;
            v234 = v220;
            v235 = v221;
            v91 = v222;
            v92 = v223;
            v236 = v222;
            v237 = v223;
            v93 = v195;
            *(v195 + 105) = *(v226 + 9);
            v93[5] = v87;
            v93[6] = v88;
            v93[3] = v92;
            v93[4] = v86;
            v93[1] = v90;
            v93[2] = v91;
            *v93 = v89;
            v94 = sub_10000341C(&qword_10025C8F0, &qword_1001D1AF0);
            sub_1000081F8(v85, v93 + *(v94 + 48), &qword_10025C848, &qword_1001D1930);
            sub_1000081F8(&v227, &v241, &qword_100264240, &unk_1001D1980);
            sub_1000081F8(&v234, &v241, &qword_100264240, &unk_1001D1980);
            sub_10000F500(v85, &qword_10025C848, &qword_1001D1930);
            v245 = v224;
            v246 = v225;
            v247[0] = v226[0];
            *(v247 + 9) = *(v226 + 9);
            v241 = v220;
            v242 = v221;
            v243 = v222;
            v244 = v223;
            sub_10000F500(&v241, &qword_100264240, &unk_1001D1980);
            sub_1000081F8(v93, v199, &qword_10025C840, &qword_1001D1928);
            swift_storeEnumTagMultiPayload();
            sub_10000341C(&qword_10025C868, &qword_1001D1978);
            sub_100007120(&qword_10025C870, &qword_10025C840, &qword_1001D1928, &protocol conformance descriptor for TupleView<A>);
            sub_100048C78();
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(&v227, &qword_100264240, &unk_1001D1980);
            sub_10000F500(v93, &qword_10025C840, &qword_1001D1928);
            v95 = v214;
            sub_10000F500(v83, &qword_10025C848, &qword_1001D1930);
LABEL_20:
            v132 = static VerticalAlignment.center.getter();
            v133 = v203;
            *v203 = v132;
            *(v133 + 8) = 0;
            *(v133 + 16) = 0;
            v134 = sub_10000341C(&qword_10025C8A8, &qword_1001D1998);
            sub_1000446A0(v95, v133 + *(v134 + 44));
            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)(&v234);
            v135 = (v133 + *(sub_10000341C(&qword_10025C8B0, &qword_1001D19A0) + 36));
            v136 = v235;
            *v135 = v234;
            v135[1] = v136;
            v135[2] = v236;
            *&v241 = v217;
            *(&v241 + 1) = v219;
            State.wrappedValue.getter();
            v137 = v227;
            swift_getKeyPath();
            *&v241 = v137;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v138 = *(v137 + 112);

            KeyPath = swift_getKeyPath();
            v140 = swift_allocObject();
            *(v140 + 16) = v138;
            v141 = v200;
            v142 = (v133 + *(v201 + 36));
            *v142 = KeyPath;
            v142[1] = sub_100035DEC;
            v142[2] = v140;
            sub_1000081F8(v218, v141, &qword_10025C850, &qword_1001D1938);
            v143 = *(&v202 + 1);
            sub_1000081F8(v133, *(&v202 + 1), &qword_10025C830, &qword_1001D1918);
            v144 = *(&v203 + 1);
            sub_1000081F8(v141, *(&v203 + 1), &qword_10025C850, &qword_1001D1938);
            v145 = sub_10000341C(&qword_10025C8B8, &qword_1001D19A8);
            sub_1000081F8(v143, v144 + *(v145 + 48), &qword_10025C830, &qword_1001D1918);
            sub_10000F500(v143, &qword_10025C830, &qword_1001D1918);
            sub_10000F500(v141, &qword_10025C850, &qword_1001D1938);
            sub_1000081F8(v144, v205, &qword_10025C828, &qword_1001D1910);
            swift_storeEnumTagMultiPayload();
            sub_10000341C(&qword_10025C8C0, &qword_1001D19B0);
            sub_100048E64(&qword_10025C8C8, &qword_10025C8C0, &qword_1001D19B0, sub_100048EE8);
            sub_100007120(&qword_10025C8D8, &qword_10025C828, &qword_1001D1910, &protocol conformance descriptor for TupleView<A>);
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(v144, &qword_10025C828, &qword_1001D1910);
            sub_10000F500(v133, &qword_10025C830, &qword_1001D1918);
            sub_10000F500(v218, &qword_10025C850, &qword_1001D1938);
            goto LABEL_21;
          }
        }

        v53 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v125 = Text.init(_:tableName:bundle:comment:)();
  v126 = v205;
  *v205 = v125;
  v126[1] = v127;
  *(v126 + 16) = v128 & 1;
  v126[3] = v129;
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_10025C8C0, &qword_1001D19B0);
  sub_100048E64(&qword_10025C8C8, &qword_10025C8C0, &qword_1001D19B0, sub_100048EE8);
  sub_100007120(&qword_10025C8D8, &qword_10025C828, &qword_1001D1910, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();
LABEL_21:
  static Alignment.center.getter();
  v146 = 1;
  _FrameLayout.init(width:height:alignment:)(&v241);
  v218 = v241;
  v205 = v243;
  v206 = v242;
  v204 = *(&v243 + 1);
  LOBYTE(v251[0]) = 1;
  LOBYTE(v250[0]) = BYTE8(v241);
  v252 = BYTE8(v242);
  v147 = type metadata accessor for FeedbackFeatureFlags();
  *(&v228 + 1) = v147;
  *&v229 = sub_1000493CC(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v148 = sub_10002DB6C(&v227);
  (*(*(v147 - 8) + 104))(v148, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v147);
  LOBYTE(v147) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v227);
  if (v147)
  {
    v149 = v217;
    *&v227 = v217;
    *(&v227 + 1) = v219;
    v150 = v219;
    State.wrappedValue.getter();
    v151 = v220;
    swift_getKeyPath();
    *&v227 = v151;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v152 = *(v151 + 40);
    *&v203 = *(v151 + 32);
    *(&v203 + 1) = v152;

    *&v227 = v149;
    *(&v227 + 1) = v150;
    State.wrappedValue.getter();
    v153 = v220;
    swift_getKeyPath();
    *&v227 = v153;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v154 = *(v153 + 56);
    *&v202 = *(v153 + 48);
    *(&v202 + 1) = v154;

    *&v227 = v149;
    *(&v227 + 1) = v150;
    State.wrappedValue.getter();
    v155 = v220;
    swift_getKeyPath();
    *&v227 = v155;
    sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v156 = *(v155 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);
    v200 = *(v155 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);
    v201 = v156;

    *&v227 = v149;
    *(&v227 + 1) = v150;
    State.wrappedValue.getter();
    v157 = sub_1001A2480();
    v198 = v158;
    v199 = v157;

    *&v227 = v149;
    *(&v227 + 1) = v150;
    v159 = v150;
    State.wrappedValue.getter();
    v160 = v220;
    swift_getKeyPath();
    *&v227 = v160;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v161 = *(v160 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);
    v197 = *(v160 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);

    v162 = *(v214 + 40);
    *&v227 = *(v214 + 32);
    *(&v227 + 1) = v162;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v214 = v220;
    v163 = v149;
    *&v227 = v149;
    *(&v227 + 1) = v159;
    v164 = v159;
    State.wrappedValue.getter();
    v165 = v220;
    swift_getKeyPath();
    *&v227 = v165;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v166 = *(v165 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);

    if (v166)
    {
      *&v227 = v163;
      *(&v227 + 1) = v159;
      State.wrappedValue.getter();
      v167 = v220;
      swift_getKeyPath();
      *&v227 = v167;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v168 = *(v167 + 112);
    }

    else
    {
      v168 = 1;
    }

    *&v227 = v163;
    *(&v227 + 1) = v164;
    State.wrappedValue.getter();
    v169 = v220;
    swift_getKeyPath();
    *&v227 = v169;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v171 = *(v169 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
    v170 = *(v169 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

    v172 = v192;
    *(v192 + 25) = 0;
    v173 = *(v211 + 92);
    *(v172 + v173) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v172 + 136) = 0;
    *(v172 + 144) = 0;
    *(v172 + 128) = 1;
    *(v172 + 152) = 2;
    v174 = v203;
    *(v172 + 24) = v202;
    *(v172 + 8) = v174;
    v175 = v201;
    *(v172 + 40) = v200;
    *(v172 + 48) = v175;
    *(v172 + 56) = 0;
    *(v172 + 64) = 0;
    v176 = v198;
    *(v172 + 72) = v199;
    *(v172 + 80) = v176;
    *(v172 + 88) = v197;
    *(v172 + 96) = v161;
    *v172 = v214;
    *(v172 + 153) = v168;
    *(v172 + 154) = 1;
    *(v172 + 156) = 0;
    *&v220 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v177 = *(&v227 + 1);
    *(v172 + 208) = v227;
    *(v172 + 160) = 0u;
    *(v172 + 176) = 0u;
    *(v172 + 192) = 0;
    *(v172 + 104) = _swiftEmptyArrayStorage;
    *(v172 + 112) = _swiftEmptyArrayStorage;
    *(v172 + 120) = _swiftEmptyArrayStorage;
    *(v172 + 216) = v177;
    *(v172 + 224) = v171;
    *(v172 + 232) = v170;
    v178 = v191;
    sub_100048F74(v172, v191, type metadata accessor for FeedbackView);
    sub_100048F74(v178, v212, type metadata accessor for FeedbackView);
    v146 = 0;
  }

  v179 = v212;
  (*(v208 + 56))(v212, v146, 1, v211);
  v180 = v216;
  v181 = v207;
  sub_1000081F8(v216, v207, &qword_10025C860, &qword_1001D1948);
  v182 = v251[0];
  v183 = v250[0];
  v184 = v252;
  v185 = v209;
  sub_1000081F8(v179, v209, &qword_10025DFB0, &qword_1001D33E0);
  v186 = v210;
  sub_1000081F8(v181, v210, &qword_10025C860, &qword_1001D1948);
  v187 = sub_10000341C(&qword_10025C8E0, &qword_1001D19B8);
  v188 = v186 + *(v187 + 48);
  *v188 = 0;
  *(v188 + 8) = v182;
  *(v188 + 16) = v218;
  *(v188 + 24) = v183;
  v189 = v205;
  *(v188 + 32) = v206;
  *(v188 + 40) = v184;
  v190 = v204;
  *(v188 + 48) = v189;
  *(v188 + 56) = v190;
  sub_1000081F8(v185, v186 + *(v187 + 64), &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v179, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v180, &qword_10025C860, &qword_1001D1948);
  sub_10000F500(v185, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v181, &qword_10025C860, &qword_1001D1948);
}

uint64_t sub_1000434C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v58 = type metadata accessor for Divider();
  v62 = *(v58 - 8);
  v3 = __chkstk_darwin(v58);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v55 - v5;
  v7 = sub_10000341C(&qword_10025C8F8, &qword_1001D1AF8);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10000341C(&qword_10025C900, &qword_1001D1B00);
  sub_100043934(a1, &v13[*(v14 + 44)]);
  v15 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = &v13[*(v8 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v57 = v6;
  Divider.init()();
  sub_10004446C(&v66);
  v55 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v78[0]) = 0;
  v56 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v59 = v11;
  sub_1000081F8(v13, v11, &qword_10025C8F8, &qword_1001D1AF8);
  v37 = v61;
  v38 = *(v62 + 16);
  v39 = v6;
  v40 = v58;
  v38(v61, v39, v58);
  v41 = v11;
  v42 = v60;
  sub_1000081F8(v41, v60, &qword_10025C8F8, &qword_1001D1AF8);
  v43 = sub_10000341C(&qword_10025C908, &qword_1001D1B08);
  v38((v42 + *(v43 + 48)), v37, v40);
  v44 = (v42 + *(v43 + 64));
  v70[0] = v66;
  v70[1] = v67;
  v71 = v68;
  v72 = v69;
  v45 = v55;
  LOBYTE(v38) = v56;
  LOBYTE(v73) = v55;
  *(&v73 + 1) = *v65;
  DWORD1(v73) = *&v65[3];
  *(&v73 + 1) = v22;
  *&v74 = v24;
  *(&v74 + 1) = v26;
  *&v75 = v28;
  BYTE8(v75) = 0;
  *(&v75 + 9) = *v64;
  HIDWORD(v75) = *&v64[3];
  LOBYTE(v76) = v56;
  DWORD1(v76) = *&v63[3];
  *(&v76 + 1) = *v63;
  *(&v76 + 1) = v30;
  *&v77[0] = v32;
  *(&v77[0] + 1) = v34;
  *&v77[1] = v36;
  BYTE8(v77[1]) = 0;
  v46 = v67;
  *v44 = v66;
  v44[1] = v46;
  v47 = v71;
  v48 = v72;
  v49 = v74;
  v50 = v75;
  v44[4] = v73;
  v44[5] = v49;
  v44[2] = v47;
  v44[3] = v48;
  v51 = v76;
  v52 = v77[0];
  *(v44 + 137) = *(v77 + 9);
  v44[7] = v51;
  v44[8] = v52;
  v44[6] = v50;
  sub_1000081F8(v70, v78, &qword_10025C910, &qword_1001D1B10);
  v53 = *(v62 + 8);
  v53(v57, v40);
  sub_10000F500(v13, &qword_10025C8F8, &qword_1001D1AF8);
  v78[0] = v66;
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v69;
  v79 = v45;
  *v80 = *v65;
  *&v80[3] = *&v65[3];
  v81 = v22;
  v82 = v24;
  v83 = v26;
  v84 = v28;
  v85 = 0;
  *&v86[3] = *&v64[3];
  *v86 = *v64;
  v87 = v38;
  *&v88[3] = *&v63[3];
  *v88 = *v63;
  v89 = v30;
  v90 = v32;
  v91 = v34;
  v92 = v36;
  v93 = 0;
  sub_10000F500(v78, &qword_10025C910, &qword_1001D1B10);
  v53(v61, v40);
  return sub_10000F500(v59, &qword_10025C8F8, &qword_1001D1AF8);
}

uint64_t sub_100043934@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v57 = type metadata accessor for ProofreadingView(0);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v59 = v3;
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_10025C918, &qword_1001D1B18);
  v5 = __chkstk_darwin(v4 - 8);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v56 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_10025C920, &qword_1001D1B20);
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = __chkstk_darwin(v12);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v56 - v15;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v60 = a1;
  v69 = v16;
  v70 = v17;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v18 = v73;
  v69 = v16;
  v70 = v17;
  State.wrappedValue.getter();
  v19 = sub_1001A1610();

  if (!v19)
  {
    goto LABEL_8;
  }

  v21 = [v19 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  v69 = v18;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
  swift_beginAccess();
  v23 = *(v18 + v22);

  if (!*(v23 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100005044(v11);
  if ((v24 & 1) == 0)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = [*(*(v23 + 56) + 8 * result) attributedText];
  v69 = v16;
  v70 = v17;
  State.wrappedValue.getter();
  v26 = sub_1001A1610();

  if (v26)
  {
    (*(v9 + 8))(v11, v8);

    v27 = [v26 originalRange];
    v29 = v28;

    v30 = [v25 attributedSubstringFromRange:{v27, v29}];
    v31 = [v30 string];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v69 = v32;
    v70 = v34;
    sub_10002AC34();
    v35 = Text.init<A>(_:)();
    v37 = v36;
    v56 = v38;
    v69 = v35;
    v70 = v36;
    v40 = v39 & 1;
    v71 = v39 & 1;
    v72 = v38;
    sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
    v41 = v60;
    AccessibilityFocusState.projectedValue.getter();
    sub_10000341C(&qword_10025C928, &unk_1001D1B50);
    sub_100048E64(&qword_10025C930, &qword_10025C928, &unk_1001D1B50, sub_100048FE4);
    View.accessibilityFocused(_:)();

    sub_10002A984(v35, v37, v40);

    v42 = v61;
    sub_10003F030(v41, v61);
    v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v44 = swift_allocObject();
    sub_100048F74(v42, v44 + v43, type metadata accessor for ProofreadingView);
    sub_10000341C(&qword_10025C940, &qword_1001DE880);
    sub_100007120(&qword_10025C948, &qword_10025C940, &qword_1001DE880, &protocol conformance descriptor for TupleView<A>);
    v45 = v65;
    Button.init(action:label:)();
    v47 = v62;
    v46 = v63;
    v48 = *(v63 + 16);
    v49 = v68;
    v50 = v64;
    v48(v62, v68, v64);
    v51 = v66;
    sub_1000081F8(v45, v66, &qword_10025C918, &qword_1001D1B18);
    v52 = v67;
    v48(v67, v47, v50);
    v53 = sub_10000341C(&qword_10025C950, &qword_1001D1B60);
    v54 = &v52[*(v53 + 48)];
    *v54 = 0;
    v54[8] = 1;
    sub_1000081F8(v51, &v52[*(v53 + 64)], &qword_10025C918, &qword_1001D1B18);
    sub_10000F500(v45, &qword_10025C918, &qword_1001D1B18);
    v55 = *(v46 + 8);
    v55(v49, v50);
    sub_10000F500(v51, &qword_10025C918, &qword_1001D1B18);
    return (v55)(v47, v50);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000440C8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12 = v6;
  v13 = v7;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v8 = sub_1001A1610();

  if (v8)
  {
    v12 = v6;
    v13 = v7;
    State.wrappedValue.getter();
    sub_1001A8490();

    v12 = v6;
    v13 = v7;
    State.wrappedValue.getter();
    v10 = [v8 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(3, v5);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004425C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  sub_100125454(2);
  v18 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  static Font.system(size:weight:design:)();
  sub_10000F500(v4, &qword_10025C5D0, &qword_1001D15A0);
  v11 = Text.font(_:)();
  v13 = v12;
  LOBYTE(v4) = v14;
  v16 = v15;

  sub_10002A984(v5, v7, v9 & 1);

  *a1 = v18;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  LOBYTE(v4) = v4 & 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v16;

  sub_100007D98(v11, v13, v4);

  sub_10002A984(v11, v13, v4);
}

uint64_t sub_10004446C@<X0>(uint64_t a2@<X8>)
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v3 = sub_1001A1610();

  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = [v3 suggestionCategory];

  if (v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10002AC34();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  State.wrappedValue.getter();
  v13 = sub_1001A1610();

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [v13 suggestionDescription];

  if (v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v18 = v10 & 1;
  v22 = v10 & 1;
  v20 = v19 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v18;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19 & 1;
  *(a2 + 56) = v21;
  sub_100007D98(v6, v8, v18);

  sub_100007D98(v15, v17, v20);

  sub_10002A984(v15, v17, v20);

  sub_10002A984(v6, v8, v22);
}

uint64_t sub_1000446A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v78 = type metadata accessor for IconOnlyLabelStyle();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10000341C(&qword_10025C958, &qword_1001D1B68);
  __chkstk_darwin(v71);
  v72 = &v61 - v4;
  v5 = sub_10000341C(&qword_10025C960, &qword_1001D1B70);
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = __chkstk_darwin(v5);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v61 - v8;
  v9 = type metadata accessor for PrimaryButtonStyle(0);
  __chkstk_darwin(v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProofreadingView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_10000341C(&qword_10025C968, &qword_1001D1B78);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v66 = sub_10000341C(&qword_10025C970, &qword_1001D1B80);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v61 - v18;
  v69 = sub_10000341C(&qword_10025C978, &qword_1001D1B88);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v61 - v19;
  v20 = sub_10000341C(&qword_10025C980, &qword_1001D1B90);
  v21 = __chkstk_darwin(v20 - 8);
  v70 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v82 = &v61 - v23;
  sub_10003F030(a1, &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v25 = swift_allocObject();
  sub_100048F74(&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ProofreadingView);
  sub_10000341C(&qword_10025C988, &unk_1001D1B98);
  sub_1000490DC();
  Button.init(action:label:)();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v88);
  v26 = v15;
  v27 = &v17[*(v15 + 36)];
  v28 = v88[1];
  *v27 = v88[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v88[2];
  v63 = *(a1 + 16);
  v73 = a1;
  v62 = *(a1 + 24);
  v83 = v63;
  v84 = v62;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v29 = v87;
  swift_getKeyPath();
  v83 = v29;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v15) = *(v29 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  KeyPath = swift_getKeyPath();
  *v11 = 0;
  v11[1] = v15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0x4008000000000000;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 20) = 1;
  v31 = *(v9 + 40);
  *&v11[v31] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v32 = &v11[*(v9 + 44)];
  *v32 = KeyPath;
  v32[8] = 0;
  v33 = sub_1000491F8();
  v34 = sub_1000493CC(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
  v35 = v65;
  View.buttonStyle<A>(_:)();
  sub_100049414(v11, type metadata accessor for PrimaryButtonStyle);
  sub_10000F500(v17, &qword_10025C968, &qword_1001D1B78);
  v83 = v26;
  v84 = v9;
  v85 = v33;
  v86 = v34;
  v36 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1000492B0();
  v39 = v66;
  View.labelStyle<A>(_:)();
  (*(v67 + 8))(v35, v39);
  v83 = v63;
  v84 = v62;
  State.wrappedValue.getter();
  v40 = v87;
  swift_getKeyPath();
  v83 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();
  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  LOBYTE(v14) = v44;
  v83 = v39;
  v84 = &type metadata for HorizontalIconTitleLabelStyle;
  v85 = OpaqueTypeConformance2;
  v86 = v38;
  swift_getOpaqueTypeConformance2();
  v45 = v82;
  v46 = v69;
  View.accessibilityLabel(_:)();
  sub_10002A984(v41, v43, v14 & 1);

  (*(v68 + 8))(v36, v46);
  v47 = v72;
  sub_10004547C(v73, v72);
  v48 = v75;
  IconOnlyLabelStyle.init()();
  sub_100049304();
  sub_1000493CC(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v49 = v74;
  v50 = v78;
  View.labelStyle<A>(_:)();
  (*(v76 + 8))(v48, v50);
  sub_10000F500(v47, &qword_10025C958, &qword_1001D1B68);
  v51 = v70;
  sub_1000081F8(v45, v70, &qword_10025C980, &qword_1001D1B90);
  v53 = v79;
  v52 = v80;
  v54 = *(v79 + 16);
  v55 = v77;
  v54(v77, v49, v80);
  v56 = v81;
  sub_1000081F8(v51, v81, &qword_10025C980, &qword_1001D1B90);
  v57 = sub_10000341C(&qword_10025C9D8, &unk_1001D1C20);
  v58 = v56 + *(v57 + 48);
  *v58 = 0x4024000000000000;
  *(v58 + 8) = 0;
  v54((v56 + *(v57 + 64)), v55, v52);
  v59 = *(v53 + 8);
  v59(v49, v52);
  sub_10000F500(v82, &qword_10025C980, &qword_1001D1B90);
  v59(v55, v52);
  return sub_10000F500(v51, &qword_10025C980, &qword_1001D1B90);
}

uint64_t sub_1000451E4(uint64_t a1)
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  v2 = (v1 ^ 1) & 1;
  if (v2 == *(v5 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal))
  {
    sub_1001A0F3C(v2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100045408@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10004547C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v81 = a2;
  v3 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  __chkstk_darwin(v3);
  v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ProofreadingView(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v75 = v8;
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v84 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v82 = sub_10000341C(&qword_10025C9E0, &qword_1001D1C30);
  v77 = *(v82 - 8);
  __chkstk_darwin(v82);
  v61 = &v61 - v13;
  v14 = sub_10000341C(&qword_10025C9E8, &qword_1001D1C38);
  v15 = __chkstk_darwin(v14 - 8);
  v80 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v79 = &v61 - v18;
  v19 = __chkstk_darwin(v17);
  v78 = &v61 - v20;
  __chkstk_darwin(v19);
  v83 = &v61 - v21;
  v71 = v9;
  sub_10003F030(a1, v9);
  v74 = *(v7 + 80);
  v22 = (v74 + 16) & ~v74;
  v72 = v22;
  v23 = swift_allocObject();
  v73 = type metadata accessor for ProofreadingView;
  sub_100048F74(v9, v23 + v22, type metadata accessor for ProofreadingView);
  v70 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v69 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  *v5 = 1;
  v25 = v3;
  v26 = *(v3 + 24);
  *(v5 + v26) = swift_getKeyPath();
  v68 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v27 = v5 + *(v25 + 28);
  *v27 = KeyPath;
  v27[8] = 0;
  v28 = sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
  v29 = sub_1000493CC(&qword_10025C9F0, type metadata accessor for UnevenCornerPrimaryButtonStyle, &unk_1001DAC48);
  v62 = v25;
  v64 = v28;
  v30 = v12;
  View.buttonStyle<A>(_:)();
  v67 = type metadata accessor for UnevenCornerPrimaryButtonStyle;
  sub_100049414(v5, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  v31 = *(v84 + 8);
  v84 += 8;
  v66 = v31;
  v32 = v10;
  v63 = v10;
  v31(v12, v10);
  LocalizedStringKey.init(stringLiteral:)();
  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  LOBYTE(KeyPath) = v36;
  v85 = v32;
  v86 = v25;
  v87 = v28;
  v88 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v82;
  v38 = v61;
  View.accessibilityLabel(_:)();
  sub_10002A984(v33, v35, KeyPath & 1);

  v77 = *(v77 + 8);
  v39 = v38;
  (v77)(v38, v37);
  v40 = v71;
  sub_10003F030(v76, v71);
  v41 = v72;
  v42 = swift_allocObject();
  sub_100048F74(v40, v42 + v41, v73);
  Button.init(action:label:)();
  v43 = swift_getKeyPath();
  *v5 = 256;
  v44 = v62;
  v45 = *(v62 + 24);
  *(v5 + v45) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v46 = v5 + *(v44 + 28);
  *v46 = v43;
  v46[8] = 0;
  v47 = v63;
  View.buttonStyle<A>(_:)();
  sub_100049414(v5, v67);
  v66(v30, v47);
  LocalizedStringKey.init(stringLiteral:)();
  v48 = Text.init(_:tableName:bundle:comment:)();
  v50 = v49;
  LOBYTE(v44) = v51;
  v52 = v78;
  v53 = v82;
  View.accessibilityLabel(_:)();
  sub_10002A984(v48, v50, v44 & 1);

  (v77)(v39, v53);
  v54 = v83;
  v55 = v79;
  sub_1000081F8(v83, v79, &qword_10025C9E8, &qword_1001D1C38);
  v56 = v80;
  sub_1000081F8(v52, v80, &qword_10025C9E8, &qword_1001D1C38);
  v57 = v81;
  sub_1000081F8(v55, v81, &qword_10025C9E8, &qword_1001D1C38);
  v58 = sub_10000341C(&qword_10025C9F8, &unk_1001D1C40);
  v59 = v57 + *(v58 + 48);
  *v59 = 0x3FF0000000000000;
  *(v59 + 8) = 0;
  sub_1000081F8(v56, v57 + *(v58 + 64), &qword_10025C9E8, &qword_1001D1C38);
  sub_10000F500(v52, &qword_10025C9E8, &qword_1001D1C38);
  sub_10000F500(v54, &qword_10025C9E8, &qword_1001D1C38);
  sub_10000F500(v56, &qword_10025C9E8, &qword_1001D1C38);
  return sub_10000F500(v55, &qword_10025C9E8, &qword_1001D1C38);
}

uint64_t sub_100045D94(uint64_t a1, void (*a2)(void *))
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_100045E24(uint64_t a1, uint64_t a2)
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_100045E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_10000341C(&qword_10025C7F0, &qword_1001D18A0);
  __chkstk_darwin(v19);
  v17 = &v17 - v3;
  v18 = sub_10000341C(&qword_10025C7F8, &qword_1001D18A8);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000341C(&qword_10025C800, &unk_1001D18B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  static ToolbarItemPlacement.cancellationAction.getter();
  v22 = a1;
  sub_10000341C(&qword_10025C808, &unk_1001D3340);
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v21 = a1;
  sub_10000341C(&qword_10025C810, &unk_1001D18C0);
  sub_100048A4C(&qword_10025C818, &qword_10025C810, &unk_1001D18C0, sub_100048B00);
  ToolbarItem<>.init(placement:content:)();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000461F0(uint64_t a1)
{
  v2 = type metadata accessor for ProofreadingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v5 - 8);
  static ButtonRole.cancel.getter();
  sub_10003F030(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100048F74(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ProofreadingView);
  return Button<>.init(role:action:)();
}

uint64_t sub_100046358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProofreadingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v9 - 8);
  v32 = sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
  __chkstk_darwin(v32);
  v11 = &v31 - v10;
  v33 = sub_10000341C(&qword_10025C810, &unk_1001D18C0);
  v12 = __chkstk_darwin(v33);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  static ButtonRole.confirm.getter();
  sub_10003F030(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_100048F74(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ProofreadingView);
  Button<>.init(role:action:)();
  v19 = *(a1 + 24);
  v38 = *(a1 + 16);
  v39 = v19;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v20 = v37;
  swift_getKeyPath();
  v38 = v20;
  sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a1) = *(v20 + 112);

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v23 = &v11[*(v32 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_10002AAC0;
  v23[2] = v22;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  LOBYTE(v8) = v27;
  sub_100048B00();
  View.accessibilityLabel(_:)();
  sub_10002A984(v24, v26, v8 & 1);

  sub_10000F500(v11, &qword_10025C820, &qword_1001D9AE0);
  static AccessibilityTraits.isSelected.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v28 = v35;
  v29 = *(v34 + 8);
  v29(v5, v35);
  sub_10000F500(v14, &qword_10025C810, &unk_1001D18C0);
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v29(v5, v28);
  return sub_10000F500(v16, &qword_10025C810, &unk_1001D18C0);
}

double sub_100046858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_10025C670, &qword_1001D1698);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v13 = sub_10000341C(&qword_10025C678, &qword_1001D16A0);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  v14 = &v10[*(sub_10000341C(&qword_10025C680, &qword_1001D16A8) + 36)];
  *v14 = KeyPath;
  v14[1] = v11;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v10[*(sub_10000341C(&qword_10025C688, &qword_1001D16B0) + 36)];
  *v23 = a1;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = swift_getKeyPath();
  v25 = &v10[*(sub_10000341C(&qword_10025C690, &qword_1001D16E8) + 36)];
  *v25 = v24;
  v25[8] = 1;
  if (qword_10025A7C8 != -1)
  {
    swift_once();
  }

  *&v10[*(v8 + 36)] = qword_100277178;

  static AccessibilityTraits.isHeader.getter();
  sub_100048140();
  View.accessibility(addTraits:)();
  (*(v5 + 8))(v7, v4);
  sub_10000F500(v10, &qword_10025C670, &qword_1001D1698);
  v26 = static Edge.Set.all.getter();
  v27 = a2 + *(sub_10000341C(&qword_10025C6C0, &qword_1001D1708) + 36);
  *v27 = v26;
  result = 0.0;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 40) = 1;
  return result;
}

uint64_t sub_100046B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = static Font.system(size:weight:design:)();
  sub_10000F500(v6, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v10 = sub_10000341C(&qword_10025C650, &qword_1001D1678);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10000341C(&qword_10025C658, &qword_1001D1680) + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  *(a2 + *(sub_10000341C(&qword_10025C660, &qword_1001D1688) + 36)) = a1;
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = sub_10000341C(&qword_10025C668, &qword_1001D1690);
  v21 = a2 + *(result + 36);
  *v21 = a1;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_100046D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_10025C618, &qword_1001D1610);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_10025C620, &qword_1001D1618) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10000341C(&qword_10025C628, &qword_1001D1620) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = (a2 + *(sub_10000341C(&qword_10025C630, &qword_1001D1628) + 36));
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #14.0 }

  *v24 = _Q0;
  if (qword_10025A7F0 != -1)
  {
    swift_once();
  }

  v33 = qword_1002771A0;
  v34 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v24[*(v34 + 52)] = v33;
  *&v24[*(v34 + 56)] = 256;

  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = &v24[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v38 = v35;
  v38[1] = v37;
  v39 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v41 = (a2 + *(sub_10000341C(&qword_10025C638, &qword_1001D1660) + 36));
  *v41 = KeyPath;
  v41[1] = v39;
  LOBYTE(v39) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = a2 + *(sub_10000341C(&qword_10025C640, &qword_1001D1668) + 36);
  *v50 = v39;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  LOBYTE(v39) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  result = sub_10000341C(&qword_10025C648, &qword_1001D1670);
  v60 = a2 + *(result + 36);
  *v60 = v39;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  return result;
}

uint64_t sub_10004705C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  sub_10000341C(&qword_10025C5F8, &qword_1001D15F8);
  sub_100007120(&qword_10025C600, &qword_10025C5F8, &qword_1001D15F8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.bold(_:)();
  v5 = type metadata accessor for Font.Design();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = static Font.system(size:weight:design:)();
  sub_10000F500(v4, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(sub_10000341C(&qword_10025C608, &qword_1001D1600) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  LOBYTE(v6) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_10000341C(&qword_10025C610, &qword_1001D1608);
  v18 = a1 + *(result + 36);
  *v18 = v6;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_100047240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_10000341C(&qword_10025C5D8, &qword_1001D15A8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + *(sub_10000341C(&qword_10025C5E0, &qword_1001D15B0) + 36)) = 256;
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_10000F500(v6, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(sub_10000341C(&qword_10025C5E8, &qword_1001D15E8) + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = sub_10000341C(&qword_10025C5F0, &qword_1001D15F0);
  v21 = a2 + *(result + 36);
  *v21 = KeyPath;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_100047428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_10025C5B0, &qword_1001D1578);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_10025C5B8, &qword_1001D1580) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  if (qword_10025A7B0 != -1)
  {
    swift_once();
  }

  v15 = qword_100277160;
  v16 = (a2 + *(sub_10000341C(&qword_10025C5C0, &qword_1001D1588) + 36));
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  v16[1] = v15;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v20 = qword_100277188;
  v21 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *(v16 + *(v21 + 52)) = v20;
  *(v16 + *(v21 + 56)) = 256;

  v22 = static Alignment.center.getter();
  v24 = v23;
  result = sub_10000341C(&qword_10025C5C8, &qword_1001DC380);
  v26 = (v16 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  return result;
}

uint64_t sub_100047638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5A8, &qword_1001D1570);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000476B0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ProofreadingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003F118(a1, a2, v6);
}

unint64_t sub_100047730()
{
  result = qword_10025C4D8;
  if (!qword_10025C4D8)
  {
    sub_100003E34(&qword_10025C4D0, &qword_1001D11B0);
    sub_1000493CC(&qword_10025C4E0, sub_1000477E4, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C4D8);
  }

  return result;
}

unint64_t sub_1000477E4()
{
  result = qword_10025C4E8;
  if (!qword_10025C4E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025C4E8);
  }

  return result;
}

uint64_t sub_100047860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000479B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100047AEC(uint64_t a1)
{
  sub_100047C90(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100047C90(319, &qword_10025B4C8, type metadata accessor for ProofreadingModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100047C90(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100047C90(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_100047CF4();
          if (v5 <= 0x3F)
          {
            sub_100047D4C(319);
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

void sub_100047C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100047CF4()
{
  if (!qword_10025C558)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10025C558);
    }
  }
}

void sub_100047D4C(uint64_t a1)
{
  if (!qword_10025C560)
  {
    sub_100003E34(&unk_10025C568, &unk_1001D7870);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10025C560);
    }
  }
}

uint64_t sub_100047DB0()
{
  sub_100003E34(&qword_10025C468, &qword_1001D1148);
  sub_100003E34(&qword_10025C4D0, &qword_1001D11B0);
  sub_100003E34(&qword_10025C460, &qword_1001D1140);
  sub_100003E34(&qword_10025C458, &qword_1001D1138);
  sub_100003E34(&qword_10025C450, &qword_1001D1130);
  sub_10003E92C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100047730();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100048038(uint64_t a1, unint64_t a2)
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
    sub_1000477E4();
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

unint64_t sub_100048140()
{
  result = qword_10025C698;
  if (!qword_10025C698)
  {
    sub_100003E34(&qword_10025C670, &qword_1001D1698);
    sub_1000481F8();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C698);
  }

  return result;
}

unint64_t sub_1000481F8()
{
  result = qword_10025C6A0;
  if (!qword_10025C6A0)
  {
    sub_100003E34(&qword_10025C690, &qword_1001D16E8);
    sub_100048D5C(&qword_10025C6A8, &qword_10025C688, &qword_1001D16B0, sub_1000482DC);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C6A0);
  }

  return result;
}

unint64_t sub_1000482DC()
{
  result = qword_10025C6B0;
  if (!qword_10025C6B0)
  {
    sub_100003E34(&qword_10025C680, &qword_1001D16A8);
    sub_100007120(&qword_10025C6B8, &qword_10025C678, &qword_1001D16A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C6B0);
  }

  return result;
}

uint64_t sub_1000483D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ProofreadingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041170(a1, v6, a2);
}

uint64_t sub_100048480()
{
  v1 = type metadata accessor for ProofreadingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[7];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v0 + v3 + v1[8];
  v9 = type metadata accessor for AccessibilityTechnologies();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);

  if (*(v0 + v3 + v1[9]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048680()
{
  v2 = *(type metadata accessor for ProofreadingView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100028688;

  return sub_100041004(v4, v5, v0 + v3);
}

unint64_t sub_10004876C()
{
  result = qword_10025C748;
  if (!qword_10025C748)
  {
    sub_100003E34(&qword_10025C740, &qword_1001DCDD0);
    sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C748);
  }

  return result;
}

unint64_t sub_10004882C()
{
  result = qword_100262E50;
  if (!qword_100262E50)
  {
    sub_100003E34(&qword_10025C768, &unk_1001D9F80);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E50);
  }

  return result;
}

unint64_t sub_1000488E4()
{
  result = qword_10025C7C8;
  if (!qword_10025C7C8)
  {
    sub_100003E34(&qword_10025C798, &qword_1001D1868);
    sub_100003E34(&qword_10025C790, &qword_1001D1860);
    sub_100007120(&qword_10025C7B8, &qword_10025C790, &qword_1001D1860, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C7C8);
  }

  return result;
}

unint64_t sub_1000489E0()
{
  result = qword_10025C7D0;
  if (!qword_10025C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C7D0);
  }

  return result;
}

uint64_t sub_100048A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1000493CC(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048B00()
{
  result = qword_100262BF0;
  if (!qword_100262BF0)
  {
    sub_100003E34(&qword_10025C820, &qword_1001D9AE0);
    sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262BF0);
  }

  return result;
}

unint64_t sub_100048C78()
{
  result = qword_10025C878;
  if (!qword_10025C878)
  {
    sub_100003E34(&qword_10025C868, &qword_1001D1978);
    sub_100048D5C(&qword_10025C880, &qword_100264240, &unk_1001D1980, sub_100048DE0);
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C878);
  }

  return result;
}

uint64_t sub_100048D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048DE0()
{
  result = qword_10025C888;
  if (!qword_10025C888)
  {
    sub_100003E34(&qword_10025C890, &qword_1001DEC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C888);
  }

  return result;
}

uint64_t sub_100048E64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048EE8()
{
  result = qword_10025C8D0;
  if (!qword_10025C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C8D0);
  }

  return result;
}

uint64_t sub_100048F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100048FE4()
{
  result = qword_10025C938;
  if (!qword_10025C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C938);
  }

  return result;
}

uint64_t sub_100049050(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ProofreadingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000490DC()
{
  result = qword_10025C990;
  if (!qword_10025C990)
  {
    sub_100003E34(&qword_10025C988, &unk_1001D1B98);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    sub_100049194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C990);
  }

  return result;
}

unint64_t sub_100049194()
{
  result = qword_10025C998;
  if (!qword_10025C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C998);
  }

  return result;
}

unint64_t sub_1000491F8()
{
  result = qword_10025C9A0;
  if (!qword_10025C9A0)
  {
    sub_100003E34(&qword_10025C968, &qword_1001D1B78);
    sub_100007120(&qword_10025C9A8, &qword_10025C9B0, &qword_1001D1C10, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C9A0);
  }

  return result;
}

unint64_t sub_1000492B0()
{
  result = qword_100263650;
  if (!qword_100263650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263650);
  }

  return result;
}

unint64_t sub_100049304()
{
  result = qword_10025C9C0;
  if (!qword_10025C9C0)
  {
    sub_100003E34(&qword_10025C958, &qword_1001D1B68);
    sub_100007120(&qword_10025C9C8, &qword_10025C9D0, &qword_1001D1C18, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C9C0);
  }

  return result;
}

uint64_t sub_1000493CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100049414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100049474()
{
  v1 = type metadata accessor for ProofreadingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v0 + v3 + v1[8];
  v9 = type metadata accessor for AccessibilityTechnologies();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);

  if (*(v0 + v3 + v1[9]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000497F8()
{
  result = qword_10025CA08;
  if (!qword_10025CA08)
  {
    sub_100003E34(&qword_10025C5C0, &qword_1001D1588);
    sub_1000498B0();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA08);
  }

  return result;
}

unint64_t sub_1000498B0()
{
  result = qword_10025CA10;
  if (!qword_10025CA10)
  {
    sub_100003E34(&qword_10025C5B8, &qword_1001D1580);
    sub_100007120(&qword_10025CA18, &qword_10025C5B0, &qword_1001D1578, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA10);
  }

  return result;
}

unint64_t sub_1000499AC()
{
  result = qword_10025CA30;
  if (!qword_10025CA30)
  {
    sub_100003E34(&qword_10025C5E8, &qword_1001D15E8);
    sub_100049A64();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA30);
  }

  return result;
}

unint64_t sub_100049A64()
{
  result = qword_10025CA38;
  if (!qword_10025CA38)
  {
    sub_100003E34(&qword_10025C5E0, &qword_1001D15B0);
    sub_100007120(&qword_10025CA40, &qword_10025C5D8, &qword_1001D15A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA38);
  }

  return result;
}

unint64_t sub_100049B60()
{
  result = qword_10025CA50;
  if (!qword_10025CA50)
  {
    sub_100003E34(&qword_10025C608, &qword_1001D1600);
    sub_100003E34(&qword_10025C5F8, &qword_1001D15F8);
    sub_100007120(&qword_10025C600, &qword_10025C5F8, &qword_1001D15F8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA50);
  }

  return result;
}

unint64_t sub_100049CFC()
{
  result = qword_10025CA68;
  if (!qword_10025CA68)
  {
    sub_100003E34(&qword_10025C638, &qword_1001D1660);
    sub_100049DB4();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA68);
  }

  return result;
}

unint64_t sub_100049DB4()
{
  result = qword_10025CA70;
  if (!qword_10025CA70)
  {
    sub_100003E34(&qword_10025C630, &qword_1001D1628);
    sub_100048D5C(&qword_10025CA78, &qword_10025C628, &qword_1001D1620, sub_100049E98);
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA70);
  }

  return result;
}

unint64_t sub_100049E98()
{
  result = qword_10025CA80;
  if (!qword_10025CA80)
  {
    sub_100003E34(&qword_10025C620, &qword_1001D1618);
    sub_100007120(&qword_10025CA88, &qword_10025C618, &qword_1001D1610, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA80);
  }

  return result;
}

unint64_t sub_100049F94()
{
  result = qword_10025CAA0;
  if (!qword_10025CAA0)
  {
    sub_100003E34(&qword_10025C660, &qword_1001D1688);
    sub_10004A04C();
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CAA0);
  }

  return result;
}

unint64_t sub_10004A04C()
{
  result = qword_10025CAA8;
  if (!qword_10025CAA8)
  {
    sub_100003E34(&qword_10025C658, &qword_1001D1680);
    sub_100007120(&qword_10025CAB0, &qword_10025C650, &qword_1001D1678, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CAA8);
  }

  return result;
}

unint64_t sub_10004A134()
{
  result = qword_10025CAB8;
  if (!qword_10025CAB8)
  {
    sub_100003E34(&qword_10025C6C0, &qword_1001D1708);
    sub_100048A4C(&qword_10025CAC0, &qword_10025CAC8, &unk_1001D1C50, sub_100048140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CAB8);
  }

  return result;
}

void sub_10004A2CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService34OpenEndedAdjustmentViewCoordinator_owner + 24);
  v2 = IntelligenceUI.PromptEntryView.textView.getter();
  v3 = [v2 text];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v1(v4, v6);

    sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
    FocusState.Binding.wrappedValue.getter();
    FocusState.Binding.wrappedValue.setter();

    v7 = IntelligenceUI.PromptEntryView.textView.getter();
    v8 = String._bridgeToObjectiveC()();
    [v7 setText:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004A430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewSelectionDidChange(_:)(a1, ObjectType, a3);
}

uint64_t sub_10004A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:didUnresolveAmbiguity:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10004A4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewShouldBeginEditing(_:)(a1, ObjectType, a3);
}

uint64_t sub_10004A528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewDidBeginEditing(_:)(a1, ObjectType, a3);
}

uint64_t sub_10004A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewDidEndEditing(_:)(a1, ObjectType, a3);
}

UIMenu sub_10004A5C8()
{
  sub_10004A7A4();
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v3, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v2);
}

uint64_t sub_10004A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:customAppearanceFor:resolved:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10004A698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:didToggleLeadingButtonState:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10004A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:insert:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10004A74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:didTransitionToPonderingState:)(a1, a2, ObjectType, a4);
}

unint64_t sub_10004A7A4()
{
  result = qword_100262910;
  if (!qword_100262910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100262910);
  }

  return result;
}

__n128 sub_10004A7FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10004A830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10004A878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004A904()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10004AA60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v97 = a2;
  v95 = sub_10000341C(&qword_10025CB10, &qword_1001D1E30);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v74[0] = v74 - v3;
  v4 = sub_10000341C(&qword_10025CB18, &qword_1001D1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v96 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = v74 - v7;
  v8 = type metadata accessor for SubmitTriggers();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SubmitLabel();
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  __chkstk_darwin(v11);
  v75 = v74 - v13;
  v82 = sub_10000341C(&qword_10025CB28, &qword_1001D1E48);
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v98 = v74 - v14;
  v15 = sub_10000341C(&qword_10025CB30, &qword_1001D1E50);
  v84 = *(v15 - 8);
  v85 = v15;
  __chkstk_darwin(v15);
  v81 = v74 - v16;
  v17 = sub_10000341C(&qword_10025CB38, &qword_1001D1E58);
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = __chkstk_darwin(v17);
  v90 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v89 = v74 - v20;
  v21 = *(a1 + 32);
  v22 = *(a1 + 64);
  v110 = *(a1 + 48);
  v111 = v22;
  v23 = *(a1 + 64);
  v112 = *(a1 + 80);
  v24 = *(a1 + 32);
  v108 = *(a1 + 16);
  v109 = v24;
  v105 = v110;
  v106 = v23;
  v107 = *(a1 + 80);
  v104[0] = v108;
  v104[1] = v21;
  v25 = sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v26 = v113[0];
  v27 = v113[1];

  sub_10004C65C(v113);
  v105 = v110;
  v106 = v111;
  v107 = v112;
  v104[0] = v108;
  v104[1] = v109;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v105 = v114[2];
  v106 = v114[3];
  v107 = v114[4];
  v104[0] = v114[0];
  v104[1] = v114[1];
  v74[1] = v25;
  Binding.subscript.getter();

  sub_10000F500(v114, &qword_10025CB40, &qword_1001D1E60);
  v99[0] = v26;
  v99[1] = v27;
  sub_10002AC34();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  v104[0] = *(a1 + 96);
  *(v104 + 9) = *(a1 + 105);
  sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
  FocusState.Binding.projectedValue.getter();
  v104[0] = v100;
  *&v104[1] = v101;
  BYTE8(v104[1]) = v102;
  *&v100 = *(a1 + 128);
  v28 = v100;
  BYTE8(v100) = 0;
  v29 = sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  v30 = sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
  v31 = sub_10004C6B0();
  v32 = v75;
  v33 = v76;
  View.focused<A>(_:equals:)();

  (*(v77 + 8))(v32, v33);
  v34 = sub_10004A904();
  swift_getKeyPath();
  *&v104[0] = v34;
  sub_10004C858(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v36 = *(v34 + v35);

  v37 = *(v36 + 16);

  if (v28 == v37 - 1)
  {
    v38 = v79;
    static SubmitLabel.done.getter();
  }

  else
  {
    v38 = v79;
    static SubmitLabel.next.getter();
  }

  *&v104[0] = v33;
  *(&v104[0] + 1) = v29;
  *&v104[1] = v30;
  *(&v104[1] + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v81;
  v40 = v82;
  v42 = v98;
  View.submitLabel(_:)();
  (*(v80 + 8))(v38, v83);
  (*(v78 + 8))(v42, v40);
  v43 = swift_allocObject();
  v44 = *(a1 + 112);
  *(v43 + 112) = *(a1 + 96);
  *(v43 + 128) = v44;
  *(v43 + 144) = *(a1 + 128);
  v45 = *(a1 + 48);
  *(v43 + 48) = *(a1 + 32);
  *(v43 + 64) = v45;
  v46 = *(a1 + 80);
  *(v43 + 80) = *(a1 + 64);
  *(v43 + 96) = v46;
  v47 = *(a1 + 16);
  *(v43 + 16) = *a1;
  *(v43 + 32) = v47;
  sub_10004C740(a1, v104);
  v48 = v86;
  static SubmitTriggers.text.getter();
  *&v104[0] = v40;
  *(&v104[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = v89;
  v50 = v85;
  View.onSubmit(of:_:)();

  (*(v87 + 8))(v48, v88);
  (*(v84 + 8))(v41, v50);
  *(&v104[1] + 1) = &type metadata for WritingTools;
  *&v105 = sub_10002AC88();
  LOBYTE(v104[0]) = 5;
  LOBYTE(v42) = isFeatureEnabled(_:)();
  sub_10000F4B4(v104);
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  v105 = v110;
  v106 = v111;
  v107 = v112;
  v104[0] = v108;
  v104[1] = v109;
  Binding.wrappedValue.getter();
  v51 = v103;

  sub_10004C65C(&v100);
  v52 = *(v51 + 16);

  if (!v52)
  {
    goto LABEL_9;
  }

  v105 = v110;
  v106 = v111;
  v107 = v112;
  v104[0] = v108;
  v104[1] = v109;
  Binding.wrappedValue.getter();
  v54 = v99[5];
  v53 = v99[6];

  sub_10004C65C(v99);

  v56 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
    __chkstk_darwin(v55);
    sub_10000341C(&qword_10025CB68, &qword_1001D1EB8);
    sub_10000341C(&qword_10025CB70, &qword_1001D1EC0);
    v67 = sub_100003E34(&qword_10025CB78, &qword_1001D1EC8);
    v68 = type metadata accessor for IconOnlyLabelStyle();
    v69 = sub_100007120(&qword_10025CB80, &qword_10025CB78, &qword_1001D1EC8, &protocol conformance descriptor for Label<A, B>);
    v70 = sub_10004C858(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    *&v104[0] = v67;
    *(&v104[0] + 1) = v68;
    *&v104[1] = v69;
    *(&v104[1] + 1) = v70;
    swift_getOpaqueTypeConformance2();
    sub_10004C8A0();
    v71 = v74[0];
    Menu.init(content:label:)();
    v72 = v93;
    v57 = v94;
    v73 = v95;
    (*(v93 + 32))(v94, v71, v95);
    (*(v72 + 56))(v57, 0, 1, v73);
  }

  else
  {
LABEL_9:
    v57 = v94;
    (*(v93 + 56))(v94, 1, 1, v95);
  }

  v59 = v90;
  v58 = v91;
  v60 = *(v91 + 16);
  v61 = v92;
  v60(v90, v49, v92);
  v62 = v96;
  sub_10004C778(v57, v96);
  v63 = v97;
  v60(v97, v59, v61);
  v64 = sub_10000341C(&qword_10025CB60, &qword_1001D1EB0);
  sub_10004C778(v62, &v63[*(v64 + 48)]);
  sub_10004C7E8(v57);
  v65 = *(v58 + 8);
  v65(v49, v61);
  sub_10004C7E8(v62);
  return (v65)(v59, v61);
}

uint64_t sub_10004B6DC(uint64_t a1)
{
  sub_10004A904();
  swift_getKeyPath();
  sub_10004C858(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
  return FocusState.Binding.wrappedValue.setter();
}

uint64_t sub_10004B838(uint64_t a1)
{
  v2 = *(a1 + 64);
  v11[2] = *(a1 + 48);
  v11[3] = v2;
  v11[4] = *(a1 + 80);
  v3 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v3;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v4 = v14;

  sub_10004C65C(v13);
  v12 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 112);
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(a1 + 128);
  v7 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v7;
  v8 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v8;
  v9 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v9;
  sub_10004C740(a1, v11);
  sub_10000341C(&qword_10025CBD8, &qword_1001D1F90);
  sub_10000341C(&qword_10025CB98, &qword_1001D1ED0);
  sub_100007120(&qword_10025CBE0, &qword_10025CBD8, &qword_1001D1F90, &protocol conformance descriptor for [A]);
  sub_10004CAC4();
  sub_100007120(&qword_10025CB90, &qword_10025CB98, &qword_1001D1ED0, &protocol conformance descriptor for Button<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10004BA08(_OWORD *a1, uint64_t a2)
{
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  v11 = a1[1];
  *(v6 + 152) = *a1;
  *(v6 + 168) = v11;
  v12 = a1[3];
  *(v6 + 184) = a1[2];
  *(v6 + 144) = *(a2 + 128);
  *(v6 + 200) = v12;
  sub_10004C740(a2, v14);
  sub_10004CBCC(v15, v14);
  sub_10000341C(&qword_10025CBF0, &qword_1001D1F98);
  sub_100007120(&qword_10025CBF8, &qword_10025CBF0, &qword_1001D1F98, &protocol conformance descriptor for TupleView<A>);
  return Button.init(action:label:)();
}

uint64_t sub_10004BB58(_OWORD *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a1[4];
  v14 = a1[3];
  v15 = v4;
  v16 = a1[5];
  v17 = v3;
  v5 = a1[2];
  v12 = a1[1];
  v13 = v5;
  sub_10004CC28(&v17, v18);
  sub_1000081F8(&v12, v18, &qword_10025CB40, &qword_1001D1E60);
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();

  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  Binding.wrappedValue.setter();
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v11;
  v18[0] = v7;
  v18[1] = v8;
  sub_10000F500(v18, &qword_10025CB40, &qword_1001D1E60);
  sub_10004A904();
  sub_10008BE38(*(a2 + 3));
}

uint64_t sub_10004BCAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0x6E776F6E6B6E55;
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v36 = *a1;
  sub_10002AC34();

  v6 = Text.init<A>(_:)();
  v33 = v7;
  v34 = v6;
  v32 = v8;
  v35 = v9;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[4];
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
    v13 = a1[2];
    if (v13[2])
    {
      v4 = v13[4];
      v14 = v13[5];
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    v17._countAndFlagsBits = v4;
    v17._object = v14;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17);

    v18._countAndFlagsBits = 2108704;
    v18._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    v19._countAndFlagsBits = v11;
    v19._object = v10;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v19);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
    LocalizedStringKey.init(stringInterpolation:)();
    v21 = Text.init(_:tableName:bundle:comment:)();
    v23 = v22;
    v25 = v24;
    static Font.subheadline.getter();
    Text.font(_:)();

    sub_10002A984(v21, v23, v25 & 1);
  }

  else
  {
    v15 = a1[2];
    if (*(v15 + 16))
    {
      v4 = *(v15 + 32);
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    *&v36 = v4;
    *(&v36 + 1) = v16;
    v26 = Text.init<A>(_:)();
    v28 = v27;
    v30 = v29;
    static Font.subheadline.getter();
    Text.font(_:)();

    sub_10002A984(v26, v28, v30 & 1);
  }

  _ConditionalContent<>.init(storage:)();
  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  *(a2 + 64) = v38;
  sub_100007D98(v34, v33, v32 & 1);

  sub_1000353E8(v36, *(&v36 + 1), v37, *(&v37 + 1));
  sub_100035424(v36, *(&v36 + 1), v37, *(&v37 + 1));
  sub_10002A984(v34, v33, v32 & 1);
}

uint64_t sub_10004C024()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_10025CB78, &qword_1001D1EC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_10000341C(&qword_10025CBA0, &qword_1001D1ED8);
  sub_10004C950();
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&qword_10025CB80, &qword_10025CB78, &qword_1001D1EC8, &protocol conformance descriptor for Label<A, B>);
  sub_10004C858(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10004C28C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10004C30C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = sub_10000341C(&qword_10025CBC0, &qword_1001D1EF0);
  sub_10004C3DC((a2 + *(v3 + 44)));
  if (qword_10025A7C8 != -1)
  {
    swift_once();
  }

  v4 = qword_100277178;
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(sub_10000341C(&qword_10025CBA0, &qword_1001D1ED8) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
}

uint64_t sub_10004C3DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025CBC8, &qword_1001D1F28);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v17 - v7);
  v9 = Image.init(systemName:)();
  v10 = Image.init(systemName:)();
  v11 = (v8 + *(v3 + 44));
  v12 = *(sub_10000341C(&qword_100263550, &qword_1001D1F30) + 28);
  v13 = enum case for Image.Scale.small(_:);
  v14 = type metadata accessor for Image.Scale();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v8 = v10;
  sub_1000081F8(v8, v6, &qword_10025CBC8, &qword_1001D1F28);
  *a1 = v9;
  v15 = sub_10000341C(&qword_10025CBD0, &unk_1001D1F68);
  sub_1000081F8(v6, a1 + *(v15 + 48), &qword_10025CBC8, &qword_1001D1F28);

  sub_10000F500(v8, &qword_10025CBC8, &qword_1001D1F28);
  sub_10000F500(v6, &qword_10025CBC8, &qword_1001D1F28);
}

uint64_t sub_10004C5D8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 112);
  v10[6] = *(v2 + 96);
  v10[7] = v4;
  v11 = *(v2 + 128);
  v5 = *(v2 + 48);
  v10[2] = *(v2 + 32);
  v10[3] = v5;
  v6 = *(v2 + 80);
  v10[4] = *(v2 + 64);
  v10[5] = v6;
  v7 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v7;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = sub_10000341C(&qword_10025CB08, &qword_1001D1E28);
  return sub_10004AA60(v10, (a2 + *(v8 + 44)));
}

unint64_t sub_10004C6B0()
{
  result = qword_10025CB58;
  if (!qword_10025CB58)
  {
    sub_100003E34(&qword_100262BB0, &unk_1001D0280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CB58);
  }

  return result;
}

uint64_t sub_10004C778(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025CB18, &qword_1001D1E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C7E8(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025CB18, &qword_1001D1E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004C8A0()
{
  result = qword_10025CB88;
  if (!qword_10025CB88)
  {
    sub_100003E34(&qword_10025CB70, &qword_1001D1EC0);
    sub_100007120(&qword_10025CB90, &qword_10025CB98, &qword_1001D1ED0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CB88);
  }

  return result;
}

unint64_t sub_10004C950()
{
  result = qword_10025CBA8;
  if (!qword_10025CBA8)
  {
    sub_100003E34(&qword_10025CBA0, &qword_1001D1ED8);
    sub_100007120(&qword_10025CBB0, &qword_10025CBB8, &unk_1001D1EE0, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CBA8);
  }

  return result;
}

uint64_t sub_10004CA44(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 152, 7);
}

unint64_t sub_10004CAC4()
{
  result = qword_10025CBE8;
  if (!qword_10025CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CBE8);
  }

  return result;
}

uint64_t sub_10004CB18(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 216, 7);
}

unint64_t sub_10004CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 48))
  {
    if (*(v6 + 48) == 1)
    {
      return sub_10019B3D4();
    }

    else
    {
      return sub_10004CE2C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
    }
  }

  else
  {
    v8 = *v6;

    return v8;
  }
}

uint64_t sub_10004CD44()
{
  type metadata accessor for ChatMessageRole();
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 8250;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2 = v0 + *(type metadata accessor for PromptExampleBuilder.ExampleMessage(0) + 20);
  v3 = *(v2 + 8);
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      v4 = sub_10019B3D4();
    }

    else
    {
      v4 = sub_10004CE2C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    }

    v3 = v5;
  }

  else
  {
    v6 = *v2;

    v4 = v6;
  }

  v7 = v3;
  String.append(_:)(*&v4);

  return 0;
}

unint64_t sub_10004CE2C(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v29 = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10000341C(&qword_10025CC18, &qword_1001D1FB8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001CF9E0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v35 = v9;
  sub_10004DBA0();
  sub_10000341C(&qword_10025CC28, &unk_1001D1FC0);
  sub_100007120(&qword_10025CC30, &qword_10025CC28, &unk_1001D1FC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v5 + 104))(v7, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  if (v28)
  {
    v35 = v29;
    if (v28 == 1)
    {
      sub_10004DD5C();
    }

    else
    {
      sub_10004DBF8();
    }

    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;
    sub_10004DC4C(v16, v17);
    v19 = sub_100097014(v16, v18);
    if (!v20)
    {
      v33 = v16;
      v34 = v18;
      sub_10004DC4C(v16, v18);
      sub_10000341C(&qword_10025F350, &unk_1001D40F0);
      if (swift_dynamicCast())
      {
        sub_100008198(&v30, &v35);
        sub_100027874(&v35, v38);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10004DD08(v16, v18);
          sub_100027874(&v35, v38);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v21 = *(&v30 + 1);
          v22 = v30;
          sub_10000F4B4(&v35);
LABEL_19:
          v35 = 0xD000000000000016;
          v36 = 0x80000001001E4180;
          v24._countAndFlagsBits = v22;
          v24._object = v21;
          String.append(_:)(v24);

          sub_10004DD08(v16, v18);

          return v35;
        }

        sub_10000F4B4(&v35);
      }

      else
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        sub_10004DCA0(&v30);
      }

      v19 = sub_100095E84(v16, v18);
    }

    v22 = v19;
    v21 = v20;
    sub_10004DD08(v16, v18);
    goto LABEL_19;
  }

  v35 = v29;
  v36 = v26;
  v37 = v27;
  sub_10004DDB0();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  sub_10004DC4C(v10, v11);
  v13 = sub_100097014(v10, v12);
  if (v14)
  {
    v15 = v13;
    sub_10004DD08(v10, v12);
LABEL_22:

    sub_10004DD08(v10, v12);
    return v15;
  }

  v33 = v10;
  v34 = v12;
  sub_10004DC4C(v10, v12);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if (!swift_dynamicCast())
  {
    sub_10004DD08(v10, v12);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_10004DCA0(&v30);
LABEL_21:
    v15 = sub_100095E84(v10, v12);
    goto LABEL_22;
  }

  sub_100008198(&v30, &v35);
  sub_100027874(&v35, v38);
  HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
  sub_10004DD08(v10, v12);
  if ((HasContiguous & 1) == 0)
  {
    sub_10000F4B4(&v35);
    goto LABEL_21;
  }

  sub_100027874(&v35, v38);
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

  sub_10004DD08(v10, v12);
  v15 = v30;
  sub_10000F4B4(&v35);
  return v15;
}

void *sub_10004D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30 = a3;
  v31 = a5;
  v12 = type metadata accessor for PromptExampleBuilder.ExampleMessage(0);
  v32 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = enum case for ChatMessageRole.user(_:);
  v19 = type metadata accessor for ChatMessageRole();
  v20 = *(*(v19 - 8) + 104);
  if (a4 | a6)
  {
    v20(v15, v18, v19);
    v25 = &v15[*(v12 + 20)];
    *v25 = a1;
    *(v25 + 1) = a2;
    v26 = v31;
    *(v25 + 2) = v30;
    *(v25 + 3) = a4;
    *(v25 + 4) = v26;
    *(v25 + 5) = a6;
    v25[48] = 1;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a7 = sub_10017D920(0, a7[2] + 1, 1, a7);
    }

    v23 = a7[2];
    v27 = a7[3];
    v24 = v23 + 1;
    if (v23 >= v27 >> 1)
    {
      a7 = sub_10017D920((v27 > 1), v23 + 1, 1, a7);
    }

    v17 = v15;
  }

  else
  {
    v20(v17, v18, v19);
    v21 = &v17[*(v12 + 20)];
    *v21 = a1;
    *(v21 + 1) = a2;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    v21[48] = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a7 = sub_10017D920(0, a7[2] + 1, 1, a7);
    }

    v23 = a7[2];
    v22 = a7[3];
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      a7 = sub_10017D920((v22 > 1), v23 + 1, 1, a7);
    }
  }

  a7[2] = v24;
  sub_10004DE04(v17, a7 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23);
  return a7;
}

uint64_t sub_10004D750(unint64_t *a1, uint64_t a2)
{
  v33 = a1;
  v35 = type metadata accessor for PromptExampleBuilder.ExampleMessage(0);
  v3 = *(v35 - 8);
  v4 = __chkstk_darwin(v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100163C20(0, v9, 0);
    v10 = v38;
    v11 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v34 = *(v3 + 72);
    do
    {
      sub_10004DAE0(v11, v8);
      sub_10004DAE0(v8, v6);
      v36 = 0;
      v37 = 0xE000000000000000;
      type metadata accessor for ChatMessageRole();
      _print_unlocked<A, B>(_:_:)();
      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13 = &v6[*(v35 + 20)];
      v15 = *v13;
      v14 = *(v13 + 1);
      if (v13[48])
      {
        v16 = *(v13 + 2);
        v17 = *(v13 + 3);
        if (v13[48] == 1)
        {
          v39 = *v13;
          v40 = v14;
          v41 = v16;
          v42 = v17;
          v43 = *(v13 + 2);
          v18 = sub_10019B3D4();
        }

        else
        {
          v18 = sub_10004CE2C(*v13, *(v13 + 1), v16, v17);
        }

        v15 = v18;
        v14 = v19;
      }

      else
      {
      }

      v20._countAndFlagsBits = v15;
      v20._object = v14;
      String.append(_:)(v20);

      v22 = v36;
      v21 = v37;
      sub_10004DB44(v8);
      sub_10004DB44(v6);
      v38 = v10;
      v24 = v10[2];
      v23 = v10[3];
      if (v24 >= v23 >> 1)
      {
        sub_100163C20((v23 > 1), v24 + 1, 1);
        v10 = v38;
      }

      v10[2] = v24 + 1;
      v25 = &v10[2 * v24];
      v25[4] = v22;
      v25[5] = v21;
      v11 += v34;
      --v9;
    }

    while (v9);
  }

  v36 = v10;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v36 = 0x20656C706D617845;
  v37 = 0xE800000000000000;
  v38 = v33;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 2618;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v26;
  v31._object = v28;
  String.append(_:)(v31);

  return v36;
}

uint64_t type metadata accessor for PromptExampleBuilder.ExampleMessage(uint64_t a1)
{
  result = qword_10025CCB0;
  if (!qword_10025CCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004DAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptExampleBuilder.ExampleMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DB44(uint64_t a1)
{
  v2 = type metadata accessor for PromptExampleBuilder.ExampleMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004DBA0()
{
  result = qword_10025CC20;
  if (!qword_10025CC20)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC20);
  }

  return result;
}

unint64_t sub_10004DBF8()
{
  result = qword_10025CC38;
  if (!qword_10025CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC38);
  }

  return result;
}

uint64_t sub_10004DC4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10004DCA0(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025CC40, &qword_1001D1FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004DD08(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10004DD5C()
{
  result = qword_10025CC48;
  if (!qword_10025CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC48);
  }

  return result;
}

unint64_t sub_10004DDB0()
{
  result = qword_10025CC50;
  if (!qword_10025CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC50);
  }

  return result;
}

uint64_t sub_10004DE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptExampleBuilder.ExampleMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChatMessageRole();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 48);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004DF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChatMessageRole();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 48) = -a2;
  }

  return result;
}

uint64_t sub_10004E018(uint64_t a1)
{
  result = type metadata accessor for ChatMessageRole();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10004E0A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004E0C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004E108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 sub_10004E174(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10004E188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004E1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_10004E230()
{
  result = sub_100006338(_swiftEmptyArrayStorage);
  qword_100277018 = result;
  return result;
}

uint64_t sub_10004E258()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10004E304(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) = a2;
}

uint64_t sub_10004E384()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);

  return v1;
}

uint64_t sub_10004E440(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_10004E5D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
  sub_1000081B0(0, qword_10025D600, TCInputContextHistory_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10004E758(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

void sub_10004E808(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  sub_1000081B0(0, &qword_10025B4A0, WTSmartReplyConfiguration_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004E97C()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10004EA28(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning) = a2;
}

void *sub_10004EA6C()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard);
  if ((*(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32) & 1) == 0)
  {
    v4 = v2[2];
    v3 = v2[3];
    v6 = *v2;
    v5 = v2[1];
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276F20);
    v8 = static os_log_type_t.debug.getter();
    v9 = Logger.logObject.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218752;
      *(v10 + 4) = v6;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v5;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v4;
      *(v10 + 32) = 2048;
      *(v10 + 34) = v3;
      _os_log_impl(&_mh_execute_header, v9, v8, "QuestionnaireModel: didSet questionnaireRectRelativeToInputDashboard (rect: %f, %f; %f, %f)", v10, 0x2Au);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      if ([result respondsToSelector:"showSmartReplyQuestionnaireWithRect:"])
      {
        [v11 showSmartReplyQuestionnaireWithRect:{v6, v5, v4, v3}];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 sub_10004EC58@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32);
  result = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard);
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 16);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_10004ED14@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32);
  result = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard);
  v6 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 16);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

void *sub_10004EDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_10004EE10(v3);
}

void *sub_10004EE10(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if ((*(a1 + 32) & 1) != 0 || !CGRectEqualToRect(*v3, *a1))
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);

  return sub_10004EA6C();
}

void *sub_10004EF7C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a2 + 32);
  return sub_10004EA6C();
}

uint64_t sub_10004EFD8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10004F0A0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004F1B8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

void *sub_10004F294(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v1;
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session;
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session))
  {
    sub_100036BF0(0);
    if (qword_10025A740 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v14 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = *(v1 + v9);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = [result uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = qword_100277018;
    qword_100277018 = 0x8000000000000000;
    sub_1001A9F18(v2, v7, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v7, v4);
    qword_100277018 = v13;
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    if (qword_10025A740 != -1)
    {
      swift_once();
    }

    v12 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_10019D388(0, v7);
  }

  return swift_endAccess();
}

void *sub_10004F574()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  v2 = v1;
  return v1;
}

id sub_10004F624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  *a2 = v4;

  return v4;
}

void sub_10004F6E4(void *a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_10004F294(v10);
}

void sub_10004F8B0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries) = 0;
  v7 = (v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  *v7 = 0;
  v7[1] = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning) = 0;
  v8 = v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session) = 0;
  v9 = v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  ObservationRegistrar.init()();
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) = a1;
  v10 = a1;
  v11 = [v10 inputContextHistory];
  v12 = [objc_allocWithZone(TCInputContextHistory) initWithTIInputContextHistory:v11];

  if (v12)
  {
    *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory) = v12;
    v13 = [v10 inputContextHistory];
    v14 = [v13 threadIdentifier];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = type metadata accessor for SmartReplyAnalytics(0);
    swift_allocObject();
    v19 = sub_10014F2CC(v15, v17);
    sub_10000F500(v9, &unk_10025D568, &unk_1001D23B0);
    *v9 = v19;
    *(v9 + 24) = v18;
    *(v9 + 32) = &off_100250760;
    swift_unknownObjectWeakInit();
    *(v4 + 49) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 72) = 0;
    *(v4 + 96) = -1;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
    *(v4 + 136) = 0;
    *(v4 + 144) = 0;
    swift_unknownObjectRetain();
    ObservationRegistrar.init()();
    sub_100036534(2, 0, 0, 2);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();

    v20 = a3;
    sub_100035E70(a3);
    sub_100056EE8();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004FB60(char *a1)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *&a1[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries];
  if (v3)
  {
    if (v3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return result;
      }
    }

    result = sub_100163CA0(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = 0;
        do
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          swift_getKeyPath();
          sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
          v8 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

          swift_unknownObjectRelease();
          v10 = _swiftEmptyArrayStorage[2];
          v9 = _swiftEmptyArrayStorage[3];
          if (v10 >= v9 >> 1)
          {
            sub_100163CA0((v9 > 1), v10 + 1, 1);
          }

          ++v5;
          _swiftEmptyArrayStorage[2] = v10 + 1;
          v11 = &_swiftEmptyArrayStorage[2 * v10];
          v11[4] = v7;
          v11[5] = v8;
        }

        while (v4 != v5);
      }

      else
      {
        v12 = (v3 + 32);
        do
        {
          v13 = *v12;
          swift_getKeyPath();
          sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v15 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
          v14 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_100163CA0((v16 > 1), v17 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v17 + 1;
          v18 = &_swiftEmptyArrayStorage[2 * v17];
          v18[4] = v15;
          v18[5] = v14;
          ++v12;
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

uint64_t sub_10004FE88(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_10015C9C8(0, 0, v4, &unk_1001D2680, v7);

  v6(v4, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;

  sub_10015C9C8(0, 0, v4, &unk_1001D2690, v8);
}

uint64_t sub_100050010()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100028688;

  return sub_100054C2C();
}

uint64_t sub_1000500C0()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050154, v2, v1);
}

uint64_t sub_100050154(uint64_t a1, uint64_t a2)
{

  withObservationTracking<A>(_:onChange:)();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000501F4()
{
  v1[21] = v0;
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_1000502C8, v3, v2);
}

uint64_t sub_1000502C8()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested session start...", v4, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0];
    v0[28] = v7;
    v8 = v7;
    sub_10004F6E4(v7);
    [v8 setCompositionSessionType:11];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000505C4;
    v9 = swift_continuation_init();
    v0[17] = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10019D8B8;
    v0[13] = &unk_10024C480;
    v0[14] = v9;
    [v6 willBeginWritingToolsSession:v8 requestContexts:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected nil delegate when starting session", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000505C4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_1000506CC, v2, v1);
}

uint64_t sub_1000506CC()
{
  v1 = *(v0 + 168);
  sub_100036728(*(v0 + 144));
  swift_getKeyPath();
  *(v0 + 152) = v1;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 104))
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 168);

    sub_1000081B0(0, &unk_100262480, WTContext_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 didBeginWritingToolsSession:v3 contexts:isa];

    [v4 writingToolsSession:v3 didReceiveAction:3];
    swift_getKeyPath();
    *(v0 + 160) = v5;
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = [*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) baseResponse];
    if (v7)
    {
    }

    else
    {
      if ([*(v0 + 216) respondsToSelector:"beginTextPlaceholder"])
      {
        [*(v0 + 216) beginTextPlaceholder];
      }

      v8 = *(v0 + 216);
      v9 = *(v0 + 176);
      v10 = *(v0 + 168);
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);

      swift_unknownObjectRetain();
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v10;
      v13[5] = v8;
      sub_10015C9C8(0, 0, v9, &unk_1001D2630, v13);
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 176);
    v16 = *(v0 + 168);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v16;
    sub_10015C9C8(0, 0, v15, &unk_1001D2640, v19);

    swift_unknownObjectRelease();

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100050A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[18] = v6;
  *v6 = v5;
  v6[1] = sub_100050B28;

  return sub_1000539AC();
}

uint64_t sub_100050B28(uint64_t a1)
{
  *(*v1 + 152) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050C6C, v3, v2);
}

uint64_t sub_100050C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2[19];

  v4 = *(v3 + 24);
  if (v4 && (v5 = v2[19], (*(v5 + 40) & 1) == 0))
  {
    v13 = *(v3 + 16);
    v14 = *(v5 + 32);
    v15 = [v2[15] respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"];
    v16 = v2[19];
    if (v15)
    {
      v17 = v2[14];
      v23 = v2[15];

      String.text.getter();
      v18 = String.count.getter();

      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v13;
      v19[4] = v4;
      v19[5] = v14;
      v19[6] = v16;
      v2[12] = sub_1000590D8;
      v2[13] = v19;
      v2[8] = _NSConcreteStackBlock;
      v2[9] = 1107296256;
      v2[10] = sub_1001256BC;
      v2[11] = &unk_10024C5E8;
      v20 = _Block_copy(v2 + 8);

      [v23 endTextPlaceholderAndWillInsertText:v18 > 0 completion:v20];
      _Block_release(v20);
    }
  }

  else
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276F20);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unexpected base generation with unset text or warnings", v9, 2u);
    }

    v10 = v2[15];

    if ([v10 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v11 = v2[15];
      v2[6] = nullsub_1;
      v2[7] = 0;
      v2[2] = _NSConcreteStackBlock;
      v2[3] = 1107296256;
      v2[4] = sub_1001256BC;
      v2[5] = &unk_10024C598;
      v12 = _Block_copy(v2 + 2);
      [v11 endTextPlaceholderAndWillInsertText:0 completion:v12];

      _Block_release(v12);
    }
  }

  v21 = v2[1];

  return v21();
}

void sub_100050F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  String.text.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setBaseResponse:v9];

  if (a4 == 2)
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000F34C(v17, qword_100276F20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Ending smart replies due to flagged input", v20, 2u);
    }

    v21 = objc_allocWithZone(NSError);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v21 initWithDomain:v15 code:4 userInfo:0];
    goto LABEL_13;
  }

  if (a4 == 1)
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F20);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Ending smart replies due to flagged output", v13, 2u);
    }

    v14 = objc_allocWithZone(NSError);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithDomain:v15 code:2 userInfo:0];
LABEL_13:
    v22 = v16;

    sub_100036BF0(v22);
    goto LABEL_15;
  }

  sub_100056A34(a5);
LABEL_15:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  if (!v23)
  {
    return;
  }

  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000F34C(v24, qword_100276F20);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Ending questionnaire after longform base reply due to no questions", v27, 2u);
  }

  sub_100051DE8(1, 0, 0, 0);
}

uint64_t sub_100051408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v4[18] = v7;
  *v7 = v4;
  v7[1] = sub_100051570;

  return sub_1000526B8();
}

uint64_t sub_100051570(uint64_t a1)
{
  *(*v1 + 152) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000516B4, v3, v2);
}

uint64_t sub_1000516B4(uint64_t a1, uint64_t a2)
{
  v3 = v2[19];
  v5 = v2[14];
  v4 = v2[15];
  v6 = v2[12];
  v15 = v2[13];
  v7 = v2[10];
  v8 = v2[11];
  v9 = v2[9];

  sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  v2[6] = sub_100058D80;
  v2[7] = v10;
  v2[2] = _NSConcreteStackBlock;
  v2[3] = 1107296256;
  v2[4] = sub_1001256BC;
  v2[5] = &unk_10024C520;
  v11 = _Block_copy(v2 + 2);

  static DispatchQoS.unspecified.getter();
  v2[8] = _swiftEmptyArrayStorage;
  sub_100058D88(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
  sub_100058DD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v4, v15);

  v12 = v2[1];

  return v12();
}

void sub_1000518EC(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((((v4 > 0) ^ *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries)) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries) = v4 > 0;
    if (v4 < 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (v4 >= 1)
  {
LABEL_7:
    sub_100056EE8();
    withObservationTracking<A>(_:onChange:)();
  }

LABEL_8:
  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = [*(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) baseResponse];
  if (v6)
  {

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276F20);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ending questionnaire due to no questions", v10, 2u);
    }

    sub_100051DE8(1, 0, 0, 0);
  }
}

void sub_100051C4C()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested session revert...", v3, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Unexpected nil delegate when reverting", v5, 2u);
    }
  }
}

void sub_100051DE8(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requested session end...", v12, 2u);
  }

  swift_getKeyPath();
  aBlock[0] = v5;
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      swift_getKeyPath();
      aBlock[0] = v5;
      v32 = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress) == 1 && (swift_getKeyPath(), aBlock[0] = v5, ObservationRegistrar.access<A, B>(_:keyPath:)(), , !*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning)))
      {
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Requested session end when update in progress, setting flag", v30, 2u);
        }

        if (*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested) == 1)
        {
          *(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          aBlock[0] = v5;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (a3)
        {
          a3();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Requested session end with pending content", v18, 2u);
        }

        if ([v15 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
        {
          v19 = swift_allocObject();
          *(v19 + 16) = a2;
          *(v19 + 24) = v5;
          *(v19 + 32) = a1;
          *(v19 + 40) = v15;
          *(v19 + 48) = v32;
          *(v19 + 56) = a3;
          *(v19 + 64) = a4;
          aBlock[4] = sub_100058548;
          aBlock[5] = v19;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001256BC;
          aBlock[3] = &unk_10024C458;
          v20 = _Block_copy(aBlock);
          swift_errorRetain();

          sub_100058574(a3, a4);
          [v15 endTextPlaceholderAndWillInsertText:0 completion:v20];
          _Block_release(v20);
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v24 = v13;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unexpected nil delegate when ending session", v27, 2u);
      }

      if (a3)
      {
        a3();
      }
    }
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unexpected nil session when ending session", v23, 2u);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1000523CC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276F20);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ending writing tools with error: %@", v10, 0xCu);
      sub_10000F500(v11, &unk_10025D580, &qword_1001CFA60);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = _convertErrorToNSError(_:)();
      [v14 endWritingToolsWithError:v15];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v18 = a3 == 2;
    if (qword_10025A6E8 != -1)
    {
      v24 = a3;
      swift_once();
      a3 = v24;
    }

    v19 = v18 | a3;
    v20 = type metadata accessor for Logger();
    sub_10000F34C(v20, qword_100276F20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v19 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "Ending session accepted: %{BOOL}d", v23, 8u);
    }

    [a4 didEndWritingToolsSession:a5 accepted:v19 & 1];
    [a4 endWritingTools];
  }

  sub_10004F6E4(0);
  if (a6)
  {
    a6();
  }
}

uint64_t sub_1000526B8()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100052750, v3, v2);
}

uint64_t sub_100052750()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested questionnaire generation...", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10005289C;

  return sub_100052A28();
}

uint64_t sub_10005289C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1000529C4, v4, v3);
}

uint64_t sub_1000529C4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);
  v4 = *(v2 + 56);

  return v3(v4);
}

uint64_t sub_100052A28()
{
  v1[52] = v0;
  v2 = type metadata accessor for DocumentFormat();
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[56] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[57] = v4;
  v1[58] = v3;

  return _swift_task_switch(sub_100052B1C, v4, v3);
}

void *sub_100052B1C()
{
  v1 = v0[52];
  swift_getKeyPath();
  v0[59] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v0[45] = v1;
  v0[60] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) entryPoint];
  if (v2)
  {
    v3 = v2;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v19 = 0;
    v5 = 0xE000000000000000;
  }

  v0[61] = v5;
  v6 = v0[52];
  swift_getKeyPath();
  v0[46] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  v0[62] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  sub_1000585FC(v6 + v7, (v0 + 12));
  if (v0[15])
  {
    sub_100028458((v0 + 12), (v0 + 37));
    sub_10000F500((v0 + 12), &unk_10025D568, &unk_1001D23B0);
    sub_100027874(v0 + 37, v0[40]);
    sub_10014F404(IASignalSmartRepliesQuestionnaireRequested);
    sub_10000F4B4(v0 + 37);
  }

  else
  {
    sub_10000F500((v0 + 12), &unk_10025D568, &unk_1001D23B0);
  }

  v8 = v0[52];
  type metadata accessor for TextComposerClient();
  swift_allocObject();
  v0[63] = TextComposerClient.init()();
  swift_getKeyPath();
  v0[47] = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
  v0[64] = v9;
  v10 = v9;
  static DocumentFormat.mail()();
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  swift_getKeyPath();
  v0[48] = v8;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v8 + 24);
  if (result)
  {
    v14 = [result pid];
    *(inited + 72) = &type metadata for Int32;
    *(inited + 48) = v14;
    v15 = sub_1000057A8(inited);
    v0[65] = v15;
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v18 = (&async function pointer to dispatch thunk of TextComposerClient.requestUserQuestionnaire(with:documentFormat:replyType:options:) + async function pointer to dispatch thunk of TextComposerClient.requestUserQuestionnaire(with:documentFormat:replyType:options:));
    v16 = swift_task_alloc();
    v0[66] = v16;
    *v16 = v0;
    v16[1] = sub_100052F20;
    v17 = v0[55];

    return v18(v10, v17, v19, v5, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052F20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[67] = a1;
  v5[68] = a2;
  v5[69] = v2;

  v6 = v4[64];
  (*(v5[54] + 8))(v5[55], v5[53]);

  if (v2)
  {

    v7 = v5[57];
    v8 = v5[58];
    v9 = sub_1000536F8;
  }

  else
  {
    v7 = v5[57];
    v8 = v5[58];
    v9 = sub_1000530F4;
  }

  return _swift_task_switch(v9, v7, v8);
}

void sub_1000530F4()
{
  v41 = v0;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 536);
  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = v4;
  v3 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.default.getter();
  v38 = v0;
  if (!os_log_type_enabled(v3, v4))
  {

    v3 = *(v0 + 536);
    goto LABEL_9;
  }

  v5 = *(v0 + 536);
  v6 = swift_slowAlloc();
  *v6 = 134217984;
  v7 = [v5 entries];
  if (v7)
  {
    v8 = v7;
    sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v0 = v38;
      v11 = *(v38 + 536);

      *(v6 + 4) = i;

      _os_log_impl(&_mh_execute_header, v3, v4, "Received %ld questions", v6, 0xCu);

LABEL_9:
      v12 = *(v0 + 544);
      v13 = *(v38 + 496);
      v14 = *(v38 + 416);

      v15 = sub_10009D508(v12);
      sub_10004E440(v15, v16);
      swift_getKeyPath();
      *(v38 + 400) = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = v38;
      sub_1000585FC(v14 + v13, v38 + 216);
      if (*(v38 + 240))
      {
        v18 = *(v38 + 544);
        v19 = *(v38 + 536);
        sub_100028458(v38 + 216, v38 + 256);
        sub_10000F500(v38 + 216, &unk_10025D568, &unk_1001D23B0);
        sub_100027874((v38 + 256), *(v38 + 280));
        sub_100151344(v18, v19);
        sub_10000F4B4((v38 + 256));
      }

      else
      {
        sub_10000F500(v38 + 216, &unk_10025D568, &unk_1001D23B0);
      }

      v20 = [*(v38 + 536) entries];
      if (!v20)
      {
        __break(1u);
        goto LABEL_33;
      }

      v21 = v20;

      sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
        if (!v39)
        {
LABEL_26:
          v35 = *(v38 + 536);

          v34 = _swiftEmptyArrayStorage;
          goto LABEL_27;
        }
      }

      else
      {
        v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v39)
        {
          goto LABEL_26;
        }
      }

      v40 = _swiftEmptyArrayStorage;
      v3 = &v40;
      v6 = v39;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v39 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v22 = 0;
    v37 = v4 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v4 + 8 * v22 + 32);
      }

      v24 = v23;
      type metadata accessor for QuestionnaireEntry(0);
      v25 = swift_allocObject();
      UUID.init()();
      v26 = (v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
      *v26 = 0;
      v26[1] = 0;
      v27 = (v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
      *v27 = 0;
      v27[1] = 0;
      v28 = v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
      *v28 = 0;
      *(v28 + 8) = 1;
      *(v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_maxStringLength) = 10;
      ObservationRegistrar.init()();
      *(v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry) = v24;
      v29 = (v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
      if (*(v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
      {
        swift_getKeyPath();
        v30 = swift_task_alloc();
        v30[3] = 0;
        v30[4] = 0;
        v30[2] = v25;
        *(v38 + 408) = v25;
        sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
        v31 = v4;
        v32 = v24;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v4 = v31;
      }

      else
      {
        *v29 = 0;
        v29[1] = 0;
      }

      ++v22;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v39 != v22);
    v17 = v38;
    v33 = *(v38 + 536);

    v34 = v40;
LABEL_27:

    v36 = *(v17 + 8);

    v36(v34);
  }

  else
  {
LABEL_33:

    __break(1u);
  }
}

uint64_t sub_1000536F8(uint64_t a1, uint64_t a2)
{
  v3 = v2[69];

  swift_errorRetain();
  sub_100036BF0(v3);
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F20);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error generating questionnaire: %@", v7, 0xCu);
    sub_10000F500(v8, &unk_10025D580, &qword_1001CFA60);
  }

  v10 = v2[62];
  v11 = v2[52];

  swift_getKeyPath();
  v2[49] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000585FC(v11 + v10, (v2 + 17));
  if (v2[20])
  {
    sub_100028458((v2 + 17), (v2 + 22));
    sub_10000F500((v2 + 17), &unk_10025D568, &unk_1001D23B0);
    sub_100027874(v2 + 22, v2[25]);
    v12 = IASignalSmartRepliesQuestionnaireNotShown;
    v13 = sub_1000057A8(_swiftEmptyArrayStorage);
    sub_10014FE30(v12, v13);

    sub_10000F4B4(v2 + 22);
  }

  else
  {

    sub_10000F500((v2 + 17), &unk_10025D568, &unk_1001D23B0);
  }

  v14 = v2[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1000539AC()
{
  v1[76] = v0;
  v2 = type metadata accessor for Logger();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v3 = type metadata accessor for DocumentFormat();
  v1[80] = v3;
  v1[81] = *(v3 - 8);
  v1[82] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[83] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[84] = v5;
  v1[85] = v4;

  return _swift_task_switch(sub_100053B00, v5, v4);
}

void *sub_100053B00()
{
  v35 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[76];
    swift_unknownObjectRelease();
    swift_getKeyPath();
    v0[86] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
    v0[66] = v1;
    v0[87] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = [*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) entryPoint];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    v0[88] = v6;
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v0[89] = sub_10000F34C(v0[77], qword_100276F20);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = 0xEC000000676E6972;
      v16 = 0x74535F7974706D45;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136380675;
      if ((v4 || v6 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v0[62] = v4;
        v0[63] = v6;
        sub_10002AC34();
        v0[75] = StringProtocol.hash.getter();
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v19;
      }

      v20 = sub_10002510C(v16, v15, &v34);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Requested long form base generation for entry point hash: %{private}s", v17, 0xCu);
      sub_10000F4B4(v18);
    }

    v21 = v0[76];
    sub_10000341C(&qword_10025D598, &qword_1001E1780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9D0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v23;
    swift_getKeyPath();
    v0[74] = v21;
    sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = *(v21 + 24);
    if (result)
    {
      v24 = v0[76];
      v25 = [result pid];
      *(inited + 72) = &type metadata for Int32;
      *(inited + 48) = v25;
      v26 = sub_1000057A8(inited);
      v0[90] = v26;
      swift_setDeallocating();
      sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
      swift_getKeyPath();
      v0[73] = v24;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
      v0[91] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
      swift_beginAccess();
      sub_1000585FC(v24 + v27, (v0 + 17));
      if (v0[20])
      {
        sub_100028458((v0 + 17), (v0 + 22));
        sub_10000F500((v0 + 17), &unk_10025D568, &unk_1001D23B0);
        sub_100027874(v0 + 22, v0[25]);
        sub_10014F404(IASignalSmartRepliesInitialResponseRequested);
        sub_10000F4B4(v0 + 22);
      }

      else
      {
        sub_10000F500((v0 + 17), &unk_10025D568, &unk_1001D23B0);
      }

      v28 = v0[76];
      type metadata accessor for TextComposerClient();
      swift_allocObject();
      v0[92] = TextComposerClient.init()();
      swift_getKeyPath();
      v0[71] = v28;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v29 = *(v28 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
      v0[93] = v29;
      v30 = v29;
      static DocumentFormat.mail()();
      v33 = (&async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:options:) + async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:options:));

      v31 = swift_task_alloc();
      v0[94] = v31;
      *v31 = v0;
      v31[1] = sub_1000541F4;
      v32 = v0[82];

      return v33(v30, v32, v4, v6, v26);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    sub_10000F34C(v0[77], qword_100276F20);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unexpected nil writingToolsDelegate for long form base generation with entries", v9, 2u);
    }

    type metadata accessor for ContentGeneration();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 1;
    *(v10 + 48) = 0;

    v11 = v0[1];

    return v11(v10);
  }

  return result;
}

uint64_t sub_1000541F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 656);
  v7 = *(*v3 + 648);
  v8 = *(*v3 + 640);
  v5[95] = a1;
  v5[96] = a2;
  v5[97] = v2;

  (*(v7 + 8))(v6, v8);
  v9 = v4[93];
  if (v2)
  {
    swift_bridgeObjectRelease_n();

    v10 = v5[85];
    v11 = v5[84];
    v12 = sub_100054920;
  }

  else
  {

    v10 = v5[85];
    v11 = v5[84];
    v12 = sub_1000543F8;
  }

  return _swift_task_switch(v12, v11, v10);
}

id sub_1000543F8()
{
  v1 = *(v0 + 768);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (!*(v1 + 16) || (v5 = v2, , v6 = sub_10000511C(v5, v4), LOBYTE(v5) = v7, , (v5 & 1) == 0))
  {

    goto LABEL_11;
  }

  v8 = (v0 + 576);
  sub_10002B0D0(*(*(v0 + 768) + 56) + 32 * v6, v0 + 416);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v9 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  if (*v8 >= 2)
  {
    v9 = 2 * (*v8 == 2);
  }

  else
  {
    v9 = *v8;
  }

  v10 = *v8 >= 2 && *v8 != 2;
LABEL_12:
  result = [*(v0 + 760) responseTexts];
  if (result)
  {
    v12 = result;

    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];
      swift_bridgeObjectRetain_n();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134283521;
        *(v0 + 512) = v15;
        *(v0 + 520) = v14;
        sub_10002AC34();
        *(v18 + 4) = StringProtocol.hash.getter();

        _os_log_impl(&_mh_execute_header, v16, v17, "Long form base generation with hashed response: %{private}ld", v18, 0xCu);
      }

      else
      {
      }

      v25 = *(v0 + 728);
      v26 = *(v0 + 608);
      swift_getKeyPath();
      *(v0 + 536) = v26;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000585FC(v26 + v25, v0 + 376);
      v27 = *(v0 + 768);
      if (*(v0 + 400))
      {
        sub_100028458(v0 + 376, v0 + 96);
        sub_10000F500(v0 + 376, &unk_10025D568, &unk_1001D23B0);
        sub_100027874((v0 + 96), *(v0 + 120));
        v28 = IASignalSmartRepliesInitialResponseCompleted;

        sub_10014F638(v28, v27, v15, v14);

        sub_10000F4B4((v0 + 96));
      }

      else
      {

        sub_10000F500(v0 + 376, &unk_10025D568, &unk_1001D23B0);
      }

      v29 = *(v0 + 760);
      type metadata accessor for ContentGeneration();
      v30 = swift_allocObject();
      *(v30 + 16) = v15;
      *(v30 + 24) = v14;
      *(v30 + 32) = v9;
      *(v30 + 40) = v10;
    }

    else
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Unexpected nil response for long form base generation", v21, 2u);
      }

      v22 = *(v0 + 728);
      v23 = *(v0 + 608);

      swift_getKeyPath();
      *(v0 + 560) = v23;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000585FC(v23 + v22, v0 + 296);
      v24 = *(v0 + 768);
      if (*(v0 + 320))
      {
        sub_100028458(v0 + 296, v0 + 216);
        sub_10000F500(v0 + 296, &unk_10025D568, &unk_1001D23B0);
        sub_100027874((v0 + 216), *(v0 + 240));
        sub_10014FE30(IASignalSmartRepliesInitialResponseFailed, v24);

        sub_10000F4B4((v0 + 216));
      }

      else
      {

        sub_10000F500(v0 + 296, &unk_10025D568, &unk_1001D23B0);
      }

      v29 = *(v0 + 760);
      type metadata accessor for ContentGeneration();
      v30 = swift_allocObject();
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 16) = 0;
      *(v30 + 40) = 1;
    }

    *(v30 + 48) = 0;

    v31 = *(v0 + 8);

    return v31(v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100054920(uint64_t a1, uint64_t a2)
{
  v3 = v2[97];

  swift_errorRetain();
  swift_errorRetain();
  sub_100036BF0(v3);
  Logger.init()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occurred in long form reply base generation: %@", v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }

  v9 = v2[91];
  v10 = v2[79];
  v11 = v2[78];
  v12 = v2[77];
  v13 = v2[76];

  (*(v11 + 8))(v10, v12);
  swift_getKeyPath();
  v2[69] = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000585FC(v13 + v9, (v2 + 32));
  if (v2[35])
  {
    sub_100028458((v2 + 32), (v2 + 42));
    sub_10000F500((v2 + 32), &unk_10025D568, &unk_1001D23B0);
    sub_100027874(v2 + 42, v2[45]);
    v14 = IASignalSmartRepliesInitialResponseFailed;
    v15 = sub_1000057A8(_swiftEmptyArrayStorage);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_10014FE30(v14, v15);

    sub_10000F4B4(v2 + 42);
  }

  else
  {
    sub_10000F500((v2 + 32), &unk_10025D568, &unk_1001D23B0);
  }

  type metadata accessor for ContentGeneration();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v16 + 40) = 1;
  *(v16 + 48) = v3;

  v17 = v2[1];

  return v17(v16);
}

uint64_t sub_100054C2C()
{
  v1[66] = v0;
  type metadata accessor for MainActor();
  v1[67] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[68] = v3;
  v1[69] = v2;

  return _swift_task_switch(sub_100054CC8, v3, v2);
}

uint64_t sub_100054CC8()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[70] = sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested (re)generation of long form reply with entries", v4, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[71] = Strong;
  if (!Strong)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unexpected nil writingToolsDelegate for long form generation with entries", v27, 2u);
    }

    goto LABEL_26;
  }

  v6 = Strong;
  v7 = v0[66];
  swift_getKeyPath();
  v0[72] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v0[65] = v7;
  v0[73] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  if (v8)
  {
    v9 = v0[66];
    swift_getKeyPath();
    v0[64] = v9;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration;
    v11 = [*(v9 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) entryPoint];
    if (v11)
    {
      v44 = v6;
      v46 = v8;
      v12 = v0[66];
      v13 = v11;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v0[74] = v15;
      swift_getKeyPath();
      v0[63] = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = [*(v9 + v10) baseResponse];
      if (!v16)
      {

        v28 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v28, v32, "Unexpected missing baseResponse for long form generation with entries", v33, 2u);
        }

        goto LABEL_25;
      }

      v17 = v0[66];
      v18 = v16;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v0[75] = v20;
      swift_getKeyPath();
      v0[62] = v17;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
      v0[76] = v21;
      if (v21)
      {
        v22 = v0[66];
        [v44 writingToolsSession:v21 didReceiveAction:3];
        sub_100058778(v46);
        v45 = v23;
        v0[77] = v23;
        v24 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress;
        v0[78] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress;
        if (*(v22 + v24) == 1)
        {
          *(v22 + v24) = 1;
        }

        else
        {
          v36 = v0[66];
          swift_getKeyPath();
          v37 = swift_task_alloc();
          *(v37 + 16) = v36;
          *(v37 + 24) = 1;
          v0[60] = v36;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v0[79] = 0;
        v38 = v0[66];
        sub_100056EE8();
        swift_getKeyPath();
        v0[58] = v38;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v39 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
        v0[80] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
        swift_beginAccess();
        sub_1000585FC(v38 + v39, (v0 + 22));
        if (v0[25])
        {
          sub_100028458((v0 + 22), (v0 + 37));
          sub_10000F500((v0 + 22), &unk_10025D568, &unk_1001D23B0);
          sub_100027874(v0 + 37, v0[40]);
          sub_100150408(v46);

          sub_10000F4B4(v0 + 37);
        }

        else
        {

          sub_10000F500((v0 + 22), &unk_10025D568, &unk_1001D23B0);
        }

        v40 = v0[66];
        swift_getKeyPath();
        v0[52] = v40;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        sub_1000585FC(v38 + v39, (v0 + 32));
        if (v0[35])
        {
          sub_100028458((v0 + 32), (v0 + 7));
          sub_10000F500((v0 + 32), &unk_10025D568, &unk_1001D23B0);
          sub_100027874(v0 + 7, v0[10]);
          sub_10014F404(IASignalSmartRepliesRewriteRequested);
          sub_10000F4B4(v0 + 7);
        }

        else
        {
          sub_10000F500((v0 + 32), &unk_10025D568, &unk_1001D23B0);
        }

        v41 = swift_task_alloc();
        v0[81] = v41;
        *v41 = v0;
        v41[1] = sub_10005553C;

        return sub_100055F90(v43, v15, v42, v20, v45);
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_25;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Unexpected missing session for long form generation with entries";
      goto LABEL_24;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Unexpected missing entryPoint for long form generation with entries";
      goto LABEL_24;
    }
  }

  else
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Unexpected missing entries for long form generation with entries";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);
    }
  }

LABEL_25:

  swift_unknownObjectRelease();
LABEL_26:
  v34 = v0[1];

  return v34();
}

uint64_t sub_10005553C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 656) = a1;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);

  return _swift_task_switch(sub_1000556A4, v4, v3);
}

uint64_t sub_1000556A4(uint64_t a1, uint64_t a2)
{
  v3 = v2[82];

  if (!*(v3 + 24))
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unexpected nil response for long form generation with entries", v6, 2u);
    }

    v7 = v2[80];
    v8 = v2[66];

    swift_getKeyPath();
    v2[49] = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000585FC(v8 + v7, (v2 + 2));
    if (v2[5])
    {
      sub_100028458((v2 + 2), (v2 + 12));
      sub_10000F500((v2 + 2), &unk_10025D568, &unk_1001D23B0);
      sub_100027874(v2 + 12, v2[15]);
      v9 = IASignalSmartRepliesRewriteFailed;
      v10 = sub_1000057A8(_swiftEmptyArrayStorage);
      sub_10014FE30(v9, v10);

      sub_10000F4B4(v2 + 12);
    }

    else
    {
      sub_10000F500((v2 + 2), &unk_10025D568, &unk_1001D23B0);
    }
  }

  v11 = *(v2[82] + 48);
  if (v11)
  {
    swift_errorRetain();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected error during long form generation with entries %@", v14, 0xCu);
      sub_10000F500(v15, &unk_10025D580, &qword_1001CFA60);
    }

    v17 = v2[80];
    v18 = v2[66];

    swift_getKeyPath();
    v2[59] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000585FC(v18 + v17, (v2 + 27));
    if (v2[30])
    {
      sub_100028458((v2 + 27), (v2 + 17));
      sub_10000F500((v2 + 27), &unk_10025D568, &unk_1001D23B0);
      sub_100027874(v2 + 17, v2[20]);
      v19 = IASignalSmartRepliesRewriteFailed;
      v20 = sub_1000057A8(_swiftEmptyArrayStorage);
      swift_getErrorValue();
      Error.localizedDescription.getter();
      sub_10014FE30(v19, v20);

      sub_10000F4B4(v2 + 17);
    }

    else
    {
      sub_10000F500((v2 + 27), &unk_10025D568, &unk_1001D23B0);
    }

    swift_errorRetain();
    sub_100036BF0(v11);
  }

  v21 = v2[66];
  swift_getKeyPath();
  v2[50] = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested;
  if (*(v21 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Ending session mid-regeneration due to session end request", v25, 2u);
    }

    if (*(v21 + v22))
    {
      v26 = v2[66];
      swift_getKeyPath();
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      v2[57] = v26;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v21 + v22) = 0;
    }

    sub_100051DE8(1, 0, 0, 0);
  }

  v28 = v2[82];
  if ((*(v28 + 40) & 1) == 0 && !*(v28 + 32))
  {
    goto LABEL_26;
  }

  v29 = v2[66];
  swift_getKeyPath();
  v2[51] = v29;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v29 + 144) == 1)
  {
    v28 = v2[82];
LABEL_26:
    v30 = v2[78];
    v31 = v2[66];
    sub_100056A34(v28);
    if (*(v31 + v30))
    {
      v32 = v2[66];
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      v2[56] = v32;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2[66] + v2[78]) = 0;
    }

    v36 = v2[77];
    v37 = v2[76];
    sub_100056EE8();

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (*(v28 + 40) == 1)
  {
    v34 = v2[77];
    v35 = v2[76];

    swift_unknownObjectRelease();
  }

  else
  {
    v48 = *(v28 + 32);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Long form regeneration has warnings, holding until allowed...", v40, 2u);
    }

    v41 = v2[82];
    v49 = v2[76];
    v50 = v2[77];
    v42 = v2[66];

    swift_getKeyPath();
    v2[48] = v42;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2[53] = v42;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v43 = *(v42 + 136);
    v44 = v43 | v48;
    sub_100037118(v43 | v48);
    *(v42 + 136) = v44;
    v2[54] = v42;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v45 = swift_task_alloc();
    *(v45 + 16) = v42;
    *(v45 + 24) = v41;
    v2[55] = v42;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

LABEL_35:
  v46 = v2[1];

  return v46();
}

uint64_t sub_100055F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[37] = a5;
  v6[38] = v5;
  v6[35] = a3;
  v6[36] = a4;
  v6[33] = a1;
  v6[34] = a2;
  v7 = type metadata accessor for Logger();
  v6[39] = v7;
  v6[40] = *(v7 - 8);
  v6[41] = swift_task_alloc();
  v8 = type metadata accessor for DocumentFormat();
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[45] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[46] = v10;
  v6[47] = v9;

  return _swift_task_switch(sub_1000560E8, v10, v9);
}

void *sub_1000560E8()
{
  v1 = v0[38];
  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  swift_getKeyPath();
  v0[29] = v1;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v1 + 24);
  if (result)
  {
    v5 = v0[38];
    v6 = [result pid];
    *(inited + 72) = &type metadata for Int32;
    *(inited + 48) = v6;
    v7 = sub_1000057A8(inited);
    v0[48] = v7;
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    type metadata accessor for TextComposerClient();
    swift_allocObject();
    v0[49] = TextComposerClient.init()();
    swift_getKeyPath();
    v0[50] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
    v0[30] = v5;
    v0[51] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
    v0[52] = v8;
    v9 = v8;
    static DocumentFormat.mail()();
    v17 = (&async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:baseResponse:userFilledQuestionnaire:options:) + async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:baseResponse:userFilledQuestionnaire:options:));

    v10 = swift_task_alloc();
    v0[53] = v10;
    *v10 = v0;
    v10[1] = sub_1000563A0;
    v11 = v0[44];
    v12 = v0[36];
    v13 = v0[37];
    v14 = v0[34];
    v15 = v0[35];
    v16 = v0[33];

    return v17(v9, v11, v16, v14, v15, v12, v13, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000563A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 416);
  v6 = *(*v3 + 352);
  v7 = *(*v3 + 344);
  v8 = *(*v3 + 336);
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  (*(v7 + 8))(v6, v8);

  if (v2)
  {

    v9 = v4[46];
    v10 = v4[47];
    v11 = sub_100056878;
  }

  else
  {
    v9 = v4[46];
    v10 = v4[47];
    v11 = sub_10005658C;
  }

  return _swift_task_switch(v11, v9, v10);
}

id sub_10005658C()
{
  result = [*(v0 + 432) responseTexts];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 440);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!*(v6 + 16) || (v10 = v7, , v11 = sub_10000511C(v10, v9), v13 = v12, , (v13 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_10002B0D0(*(*(v0 + 440) + 56) + 32 * v11, v0 + 176);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v14 = *(v0 + 256);
  if (v14 < 2)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v14 != 2;
  v14 = 2 * (v14 == 2);
LABEL_13:
  v16 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 248) = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  sub_1000585FC(v16 + v17, v0 + 96);
  v18 = *(v0 + 440);
  if (*(v0 + 120))
  {
    sub_100028458(v0 + 96, v0 + 136);
    sub_10000F500(v0 + 96, &unk_10025D568, &unk_1001D23B0);
    sub_100027874((v0 + 136), *(v0 + 160));
    sub_10014F638(IASignalSmartRepliesRewriteCompleted, v18, v4, v5);

    sub_10000F4B4((v0 + 136));
  }

  else
  {

    sub_10000F500(v0 + 96, &unk_10025D568, &unk_1001D23B0);
  }

  v19 = *(v0 + 432);
  type metadata accessor for ContentGeneration();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v5;
  *(v20 + 32) = v14;
  *(v20 + 40) = v15;
  *(v20 + 48) = 0;

  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_100056878(uint64_t a1, uint64_t a2)
{

  Logger.init()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred in long form reply with entries generation: %@", v5, 0xCu);
    sub_10000F500(v6, &unk_10025D580, &qword_1001CFA60);
  }

  v8 = v2[56];
  v10 = v2[40];
  v9 = v2[41];
  v11 = v2[39];

  (*(v10 + 8))(v9, v11);
  type metadata accessor for ContentGeneration();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = 1;
  *(v12 + 48) = v8;

  v13 = v2[1];

  return v13(v12);
}

void sub_100056A34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F20);
    v19 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unexpected nil text for performDidReceive";
    goto LABEL_18;
  }

  v3 = v1;
  v4 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10025A6E8 == -1)
    {
LABEL_16:
      v14 = type metadata accessor for Logger();
      sub_10000F34C(v14, qword_100276F20);
      v19 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v11))
      {
LABEL_19:

        return;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Unexpected nil writingToolsDelegate for performDidReceive";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v19, v11, v13, v12, 2u);

      goto LABEL_19;
    }

LABEL_32:
    swift_once();
    goto LABEL_16;
  }

  v6 = Strong;
  swift_getKeyPath();
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + 104);
  if (!v7)
  {
    __break(1u);
    return;
  }

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_9;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
LABEL_9:
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100057F80(v4, v2, v6, v8, 1, v3);
      swift_unknownObjectRelease();

      if (*(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress) = 0;
      }

      sub_100056EE8();
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000F34C(v15, qword_100276F20);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unexpected missing context for performDidReceive", v18, 2u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100056EE8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) baseResponse];
  v3 = v2;
  if (v2)
  {
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress);
    if (v5 == *(v1 + 112))
    {
      return sub_10003689C(v5);
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  LOBYTE(v5) = 1;
  if ((*(v1 + 112) & 1) == 0)
  {
    goto LABEL_9;
  }

  return sub_10003689C(v5);
}

uint64_t sub_10005712C()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Input warning was dismissed", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v1;
  sub_10015C9C8(0, 0, v4, &unk_1001D23C8, v11);
}

uint64_t sub_10005730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000573A4, v6, v5);
}

uint64_t sub_1000573A4(uint64_t a1, uint64_t a2)
{

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Input warning was dismissed, procceeding", v6, 2u);
  }

  sub_1000574C8();
  v7 = *(v2 + 8);

  return v7();
}

void sub_1000574C8()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
  if (v1)
  {
    v2 = qword_10025A6E8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F34C(v3, qword_100276F20);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Proceeding after input content warning", v6, 2u);
    }

    sub_100056A34(v1);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F34C(v8, qword_100276F20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected missing content generation for proceed", v11, 2u);
    }
  }
}

void sub_100057790()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ending session due to content warning cancel", v3, 2u);
  }

  sub_100051DE8(0, 0, 0, 0);
}

uint64_t sub_10005788C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000585FC(v5 + v3, a1);
}

uint64_t sub_100057954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000585FC(v3 + v4, a2);
}

uint64_t sub_100057A1C(uint64_t a1, uint64_t *a2)
{
  sub_1000585FC(a1, v3);
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v3, &unk_10025D568, &unk_1001D23B0);
}

uint64_t sub_100057B0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  sub_100058688(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100057B78()
{

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance, &unk_10025D568, &unk_1001D23B0);
  v1 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_100057C64()
{
  v0 = ToolModel.deinit();

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance, &unk_10025D568, &unk_1001D23B0);
  v1 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100057D50()
{
  sub_100057C64();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QuestionnaireModel(uint64_t a1)
{
  result = qword_10025CD78;
  if (!qword_10025CD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057DF8(uint64_t a1)
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

uint64_t sub_100057ED4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100057F44@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContentGeneration();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100057F80(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  if (v10)
  {
    v33 = a3;
    v11 = objc_allocWithZone(NSMutableAttributedString);
    v32 = v10;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithString:v12];

    v14 = [a4 attributedText];
    v15 = [v14 string];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = [a4 attributedText];
      v21 = [v20 attributesAtIndex:0 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_100058D88(&qword_10025D590, type metadata accessor for Key, &unk_1001CF84C);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 setAttributes:v22.super.isa range:0, String.count.getter()];
      v23 = v33;
    }

    else
    {
      if (qword_10025A6E8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000F34C(v27, qword_100276F20);
      v22.super.isa = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v23 = v33;
      if (os_log_type_enabled(v22.super.isa, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v22.super.isa, v28, "Unexpected empty string in writing tools context", v29, 2u);
      }
    }

    v30 = [a4 range];
    [v23 compositionSession:v32 didReceiveText:v13 replacementRange:v30 inContext:v31 finished:{a4, a5 & 1}];
  }

  else
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000F34C(v24, qword_100276F20);
    v13 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v13, v25, "Unexpected missing session for didReceiveText", v26, 2u);
    }
  }
}

uint64_t sub_1000583B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10005730C(a1, v4, v5, v6);
}

void sub_100058468(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10004F6E4(v1);
}

uint64_t sub_1000584E8()
{

  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100058574(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000585FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025D568, &unk_1001D23B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025D568, &unk_1001D23B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100058778(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v20 = v1;
      v21 = v1 & 0xC000000000000001;
      v19 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v21)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *(v19 + 16))
          {
            goto LABEL_21;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        v6 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);
        swift_getKeyPath();
        sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
        v7 = v6;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v8 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

        v9 = [v7 answerOptions];
        v10 = [v7 question];
        if (v10)
        {
          v11 = v10;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v12 = String._bridgeToObjectiveC()();

          if (v8)
          {
            goto LABEL_12;
          }
        }

        else
        {

          v12 = 0;
          if (v8)
          {
LABEL_12:
            v13 = String._bridgeToObjectiveC()();

            goto LABEL_15;
          }
        }

        v13 = 0;
LABEL_15:
        v14 = [objc_allocWithZone(TCSmartReplyUserQuestionnaireEntry) initWithAnswerOptions:v9 question:v12 selectedOption:v13 defaultOption:0];

        if (!v14)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        v15 = v14;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v3;
        v1 = v20;
      }

      while (v5 != v2);
    }
  }

  v16 = objc_allocWithZone(TCSmartReplyUserQuestionnaire);
  sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = [v16 initWithEntries:isa];

  if (!v18)
  {
    goto LABEL_26;
  }
}

uint64_t sub_100058AEC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning) = *(v0 + 24);
}

uint64_t sub_100058B84()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100050A78(a1, v4, v5, v7, v6);
}

uint64_t sub_100058C8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_100051408(a1, v4, v5, v6);
}

uint64_t sub_100058D40(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_100058D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100058DD0()
{
  result = qword_100262470;
  if (!qword_100262470)
  {
    sub_100003E34(&unk_10025D5E0, &qword_1001DAE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262470);
  }

  return result;
}

uint64_t sub_100058E34()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) = *(v0 + 24);
}

uint64_t sub_100058EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002B2A0;

  return sub_100050010();
}

uint64_t sub_100058F9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_1000500A0(a1, v4, v5, v6);
}

uint64_t sub_100059090(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 56, 7);
}

void sub_1000590E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session) = v1;
  v4 = v1;
  sub_10004F294(v3);
}

void *sub_100059140(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_10004EE10(v3);
}

void *sub_100059180()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  return sub_10004EA6C();
}

void sub_1000591CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) = v2;
  v4 = v2;
}

void sub_10005920C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory) = v2;
  v4 = v2;
}

uint64_t sub_100059254()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100059340(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GeometryProxy();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100059484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GeometryProxy();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000595D4(uint64_t a1)
{
  sub_1000596F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GeometryProxy();
    if (v2 <= 0x3F)
    {
      sub_100060B04(319, &qword_10025D688, type metadata accessor for WritingToolsModel);
      if (v3 <= 0x3F)
      {
        sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          sub_100059744(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1000596F4()
{
  result = qword_10025D680;
  if (!qword_10025D680)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10025D680);
  }

  return result;
}

void sub_100059744(uint64_t a1)
{
  if (!qword_10025B470)
  {
    sub_100003E34(&unk_10025D690, &qword_1001D2750);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10025B470);
    }
  }
}

uint64_t sub_1000597B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000597FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100059860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1000598A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005992C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100059A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for IconTitleLabelStyle(0);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025D7E8, &qword_1001D2B50);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = static Alignment.center.getter();
  v11 = v10;
  v12 = *(v6 + 48);
  *&v8[v12] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  *(v8 + 1) = v9;
  *(v8 + 2) = v11;
  __asm { FMOV            V0.2D, #10.0 }

  *(v8 + 24) = _Q0;
  v8[40] = 0;
  sub_100059D9C(a1, &v8[*(v6 + 44)]);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v30 = *(a1 + 48);
  v31 = v18;
  LOBYTE(v32) = v19;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v20 = v34;
  v21 = v35;
  *v5 = v33;
  *(v5 + 2) = v20;
  v5[24] = v21;
  v22 = *(v3 + 20);
  *&v5[v22] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025D7F0, &qword_10025D7E8, &qword_1001D2B50, &unk_1001DCEDC);
  sub_10005FF28(&qword_10025D7F8, type metadata accessor for IconTitleLabelStyle, &unk_1001DB410);
  v23 = v29;
  View.labelStyle<A>(_:)();
  sub_1000602C4(v5, type metadata accessor for IconTitleLabelStyle);
  sub_10000F500(v8, &qword_10025D7E8, &qword_1001D2B50);
  v33 = 0uLL;
  LOBYTE(v34) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v24 = v30;
  v25 = v32;
  LOBYTE(v33) = v31;
  v26 = v23 + *(sub_10000341C(&qword_10025D7E0, &qword_1001D2B48) + 36);
  *v26 = 0x10000;
  *(v26 + 8) = v24;
  *(v26 + 24) = v33;
  *(v26 + 25) = v30;
  *(v26 + 28) = *(&v30 + 3);
  *(v26 + 32) = v25;
  result = sub_10000341C(&qword_10025D7C8, &qword_1001D2B40);
  *(v23 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100059D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_10000341C(&qword_10025D7A8, &unk_1001D2B28);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_100060324(a1, v23);
  v16 = swift_allocObject();
  sub_100060360(v23, v16 + 16);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v15[*(v4 + 44)] = 0;
  sub_100060324(a1, v23);
  v17 = swift_allocObject();
  sub_100060360(v23, v17 + 16);
  Button.init(action:label:)();
  v13[*(v4 + 44)] = 0;
  sub_1000081F8(v15, v10, &qword_10025D7A8, &unk_1001D2B28);
  sub_1000081F8(v13, v7, &qword_10025D7A8, &unk_1001D2B28);
  v18 = v22;
  sub_1000081F8(v10, v22, &qword_10025D7A8, &unk_1001D2B28);
  v19 = sub_10000341C(&qword_10025D808, &unk_1001D2B60);
  sub_1000081F8(v7, v18 + *(v19 + 48), &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v13, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v15, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v7, &qword_10025D7A8, &unk_1001D2B28);
  return sub_10000F500(v10, &qword_10025D7A8, &unk_1001D2B28);
}

uint64_t sub_10005A11C@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(3);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10005A14C@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_10025D7C8, &qword_1001D2B40);
  sub_1000600EC();
  Section<>.init(content:)();
  sub_10005992C();
  v2 = sub_1000A7C14();

  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v2 & 1) == 0;
  result = sub_10000341C(&qword_10025D800, &qword_1001D2B58);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = sub_100035DEC;
  v6[2] = v4;
  return result;
}

uint64_t sub_10005A260()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10005A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for SmallIconTitleLabelStyle(0);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025D770, &qword_1001D2B18);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = static Alignment.center.getter();
  v11 = v10;
  v12 = *(v6 + 48);
  *&v8[v12] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  *(v8 + 1) = v9;
  *(v8 + 2) = v11;
  __asm { FMOV            V0.2D, #10.0 }

  *(v8 + 24) = _Q0;
  v8[40] = 0;
  sub_10005A6D4(a1, &v8[*(v6 + 44)]);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v30 = *(a1 + 16);
  v31 = v18;
  LOBYTE(v32) = v19;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v20 = v34;
  v21 = v35;
  *v5 = v33;
  *(v5 + 2) = v20;
  v5[24] = v21;
  v22 = *(v3 + 20);
  *&v5[v22] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025D778, &qword_10025D770, &qword_1001D2B18, &unk_1001DCEDC);
  sub_10005FF28(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle, &unk_1001DB568);
  v23 = v29;
  View.labelStyle<A>(_:)();
  sub_1000602C4(v5, type metadata accessor for SmallIconTitleLabelStyle);
  sub_10000F500(v8, &qword_10025D770, &qword_1001D2B18);
  v33 = 0uLL;
  LOBYTE(v34) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v24 = v30;
  v25 = v32;
  LOBYTE(v33) = v31;
  v26 = v23 + *(sub_10000341C(&qword_10025D768, &qword_1001D2B10) + 36);
  *v26 = 16842752;
  *(v26 + 8) = v24;
  *(v26 + 24) = v33;
  *(v26 + 25) = v30;
  *(v26 + 28) = *(&v30 + 3);
  *(v26 + 32) = v25;
  result = sub_10000341C(&qword_10025D750, &qword_1001D2B08);
  *(v23 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10005A6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_10000341C(&qword_10025D7A8, &unk_1001D2B28);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v30 = &v28 - v8;
  v9 = __chkstk_darwin(v7);
  v29 = &v28 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - v15;
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_10005FF70(a1, v33);
  v19 = swift_allocObject();
  sub_10005FFAC(v33, v19 + 16);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v18[*(v4 + 44)] = 1;
  sub_10005FF70(a1, v33);
  v20 = swift_allocObject();
  sub_10005FFAC(v33, v20 + 16);
  Button.init(action:label:)();
  v16[*(v4 + 44)] = 1;
  sub_10005FF70(a1, v33);
  v21 = swift_allocObject();
  sub_10005FFAC(v33, v21 + 16);
  Button.init(action:label:)();
  v13[*(v4 + 44)] = 1;
  v22 = v29;
  sub_1000081F8(v18, v29, &qword_10025D7A8, &unk_1001D2B28);
  v23 = v30;
  sub_1000081F8(v16, v30, &qword_10025D7A8, &unk_1001D2B28);
  v24 = v31;
  sub_1000081F8(v13, v31, &qword_10025D7A8, &unk_1001D2B28);
  v25 = v32;
  sub_1000081F8(v22, v32, &qword_10025D7A8, &unk_1001D2B28);
  v26 = sub_10000341C(&qword_10025D7C0, &qword_1001D2B38);
  sub_1000081F8(v23, v25 + *(v26 + 48), &qword_10025D7A8, &unk_1001D2B28);
  sub_1000081F8(v24, v25 + *(v26 + 64), &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v13, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v16, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v18, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v24, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v23, &qword_10025D7A8, &unk_1001D2B28);
  return sub_10000F500(v22, &qword_10025D7A8, &unk_1001D2B28);
}

uint64_t sub_10005AB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100125454(v3);

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10005AC10@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10005AC74@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(11);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10005ACA4@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_10025D750, &qword_1001D2B08);
  sub_10005FD50();
  Section<>.init(content:)();
  sub_10005A260();
  v2 = sub_1000A7C14();

  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v2 & 1) == 0;
  result = sub_10000341C(&qword_10025D790, &qword_1001D2B20);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = sub_100035DEC;
  v6[2] = v4;
  return result;
}

uint64_t sub_10005ADB8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for TransformSection(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10005AF08@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static HorizontalAlignment.leading.getter();
  v9 = static VerticalAlignment.top.getter();
  v10 = &a1[*(type metadata accessor for TransformSection(0) + 40)];
  v11 = *v10;
  v12 = v10[8];

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v11, 0);
    (*(v5 + 8))(v7, v4);
    v11 = v22[1];
  }

  v14 = sub_10005FBD4(v11);
  v16 = v15;
  v18 = v17;

  v19 = sub_10000341C(&qword_10025D6D8, &qword_1001D29B8);
  v20 = *(v19 + 48);
  *(a2 + v20) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *a2 = 0;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18 & 1;
  return sub_10005B110(a1, a2 + *(v19 + 44));
}

uint64_t sub_10005B110@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v90 = sub_10000341C(&qword_10025D6F8, &unk_1001D2A30);
  v3 = __chkstk_darwin(v90);
  v92 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v76 - v5;
  v87 = type metadata accessor for DynamicTypeSize();
  *&v100 = *(v87 - 8);
  __chkstk_darwin(v87);
  *&v94 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Divider();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  __chkstk_darwin(v82);
  v95 = &v76 - v10;
  v86 = sub_10000341C(&qword_10025D708, &qword_1001D2A40);
  v11 = __chkstk_darwin(v86);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v85 = &v76 - v14;
  __chkstk_darwin(v13);
  v98 = &v76 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v88 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000341C(&qword_10025D710, &qword_1001D2A48);
  v20 = __chkstk_darwin(v19);
  v96 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v97 = &v76 - v22;
  v23 = static HorizontalAlignment.leading.getter();
  v79 = static VerticalAlignment.top.getter();
  v93 = type metadata accessor for TransformSection(0);
  v24 = *(v93 + 40);
  v99 = a1;
  v25 = &a1[v24];
  v26 = *v25;
  LODWORD(a1) = v25[8];

  v27 = v26;
  v81 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v29 = v88;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v26, 0);
    (*(v17 + 8))(v29, v16);
    v27 = *&v102[0];
  }

  v77 = v17;
  v78 = v16;
  v30 = sub_10005FBD4(v27);
  v32 = v31;
  v34 = v33;

  v35 = *(v19 + 48);
  KeyPath = swift_getKeyPath();
  v37 = v97;
  *(v97 + v35) = KeyPath;
  v80 = sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v37 = 0;
  v38 = v79;
  *(v37 + 8) = v23;
  *(v37 + 16) = v38;
  *(v37 + 24) = v30;
  *(v37 + 32) = v32;
  *(v37 + 40) = v34 & 1;
  sub_10005BAB4(v99, v37 + *(v19 + 44));
  Divider.init()();
  v39 = v94;
  sub_10011F024(v94);
  LOBYTE(v32) = DynamicTypeSize.isAccessibilitySize.getter();
  v40 = *(v100 + 8);
  v41 = v39;
  v42 = v87;
  *&v100 = v100 + 8;
  v40(v41, v87);
  if ((v32 & 1) == 0)
  {
    GeometryProxy.size.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v102);
  v43 = v95;
  (*(v83 + 32))(v95, v9, v84);
  v44 = (v43 + *(v82 + 36));
  v45 = v102[1];
  *v44 = v102[0];
  v44[1] = v45;
  v44[2] = v102[2];
  v46 = static Edge.Set.top.getter();
  v47 = v94;
  sub_10011F024(v94);
  v48 = DynamicTypeSize.isAccessibilitySize.getter();
  v40(v47, v42);
  v49 = 0uLL;
  v50 = 0uLL;
  if ((v48 & 1) == 0)
  {
    GeometryProxy.size.getter();
    EdgeInsets.init(_all:)();
    *(&v50 + 1) = v51;
    *(&v49 + 1) = v52;
  }

  v94 = v50;
  v100 = v49;
  v53 = v85;
  sub_10002A894(v95, v85, &qword_10025D700, &unk_1001DE550);
  v54 = v53 + *(v86 + 36);
  *v54 = v46;
  *(v54 + 24) = v94;
  *(v54 + 8) = v100;
  *(v54 + 40) = v48 & 1;
  sub_10002A894(v53, v98, &qword_10025D708, &qword_1001D2A40);
  v55 = static HorizontalAlignment.leading.getter();
  v56 = static VerticalAlignment.top.getter();

  if ((v81 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v57 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v58 = v88;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v26, 0);
    (*(v77 + 8))(v58, v78);
    v26 = v101;
  }

  v59 = sub_10005FBD4(v26);
  v61 = v60;
  v63 = v62;

  v64 = v90;
  v65 = *(v90 + 48);
  *&v6[v65] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v6 = 0;
  *(v6 + 1) = v55;
  *(v6 + 2) = v56;
  *(v6 + 3) = v59;
  *(v6 + 4) = v61;
  v6[40] = v63 & 1;
  sub_10005C04C(v99, &v6[*(v64 + 44)]);
  v66 = v96;
  v67 = v97;
  sub_1000081F8(v97, v96, &qword_10025D710, &qword_1001D2A48);
  v68 = v98;
  v69 = v89;
  sub_1000081F8(v98, v89, &qword_10025D708, &qword_1001D2A40);
  v70 = v92;
  sub_1000081F8(v6, v92, &qword_10025D6F8, &unk_1001D2A30);
  v71 = v66;
  v72 = v6;
  v73 = v91;
  sub_1000081F8(v71, v91, &qword_10025D710, &qword_1001D2A48);
  v74 = sub_10000341C(&qword_10025D718, &qword_1001D2A50);
  sub_1000081F8(v69, v73 + *(v74 + 48), &qword_10025D708, &qword_1001D2A40);
  sub_1000081F8(v70, v73 + *(v74 + 64), &qword_10025D6F8, &unk_1001D2A30);
  sub_10000F500(v72, &qword_10025D6F8, &unk_1001D2A30);
  sub_10000F500(v68, &qword_10025D708, &qword_1001D2A40);
  sub_10000F500(v67, &qword_10025D710, &qword_1001D2A48);
  sub_10000F500(v70, &qword_10025D6F8, &unk_1001D2A30);
  sub_10000F500(v69, &qword_10025D708, &qword_1001D2A40);
  return sub_10000F500(v96, &qword_10025D710, &qword_1001D2A48);
}