uint64_t sub_1001AA448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000CE6B8(&qword_101910350, &qword_1011EE1A0);
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_1000CE6B8(&qword_101910358, &qword_1011EE1A8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  if ((*(v1 + *(_s9DelimiterVMa(0) + 24)) & 1) == 0)
  {
    sub_1000CE6B8(&qword_10190F6E0, &unk_1012015A0);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = v56;
    v21 = BYTE8(v56);
    v22 = v57;
    v23 = BYTE8(v57);
    LOBYTE(v49) = 1;
    v65 = BYTE8(v56);
    v64 = BYTE8(v57);
    *v8 = 0;
    v8[8] = 1;
    *(v8 + 2) = v20;
    v8[24] = v21;
    *(v8 + 4) = v22;
    v8[40] = v23;
    *(v8 + 3) = v58;
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_101910370, &qword_10120B380);
    sub_1001C9B90();
    sub_1001C9C14();
    return _ConditionalContent<>.init(storage:)();
  }

  v45 = v5;
  v46 = v6;
  v47 = v3;
  v48 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  static Font.subheadline.getter();
  v14 = Text.font(_:)();
  v43 = v15;
  v44 = v16;
  v42 = v17;

  sub_1000F0A40(v9, v11, v13 & 1);

  v18 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    static Published.subscript.getter();

    if (v56)
    {
      if (qword_101906598 == -1)
      {
        goto LABEL_8;
      }
    }

    else if (qword_1019065A0 == -1)
    {
LABEL_8:

      v25 = v42;
      v26 = v43;
      v27 = Text.foregroundColor(_:)();
      v40 = v28;
      v41 = v27;
      v30 = v29;
      v39 = v31;

      sub_1000F0A40(v14, v26, v25 & 1);

      KeyPath = swift_getKeyPath();
      v33 = static Edge.Set.horizontal.getter();
      sub_1000CE6B8(&qword_10190F6E0, &unk_1012015A0);
      ScaledMetric.wrappedValue.getter();
      EdgeInsets.init(_all:)();
      v65 = v30 & 1;
      v64 = 0;
      v63 = 0;
      *&v49 = v41;
      *(&v49 + 1) = v40;
      LOBYTE(v50) = v30 & 1;
      *(&v50 + 1) = v39;
      *&v51 = KeyPath;
      *(&v51 + 1) = 1;
      LOBYTE(v52) = 0;
      BYTE8(v52) = v33;
      *&v53 = v34;
      *(&v53 + 1) = v35;
      *&v54 = v36;
      *(&v54 + 1) = v37;
      v55 = 0;
      sub_1000CE6B8(&qword_101910360, &unk_1011EE1B0);
      sub_1001C9B04();
      v38 = v45;
      View.accessibilityHidden(_:)();
      v60 = v53;
      v61 = v54;
      v62 = v55;
      v56 = v49;
      v57 = v50;
      v58 = v51;
      v59 = v52;
      sub_100024F64(&v56, &qword_101910360, &unk_1011EE1B0);
      sub_1000D2DFC(v38, v8, &qword_101910350, &qword_1011EE1A0);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_101910370, &qword_10120B380);
      sub_1001C9B90();
      sub_1001C9C14();
      _ConditionalContent<>.init(storage:)();
      return sub_100024F64(v38, &qword_101910350, &qword_1011EE1A0);
    }

    swift_once();
    goto LABEL_8;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001AA9CC@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v68 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s26MultipleCuratedCollectionsVMa(0);
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = v5;
  v78 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000CE6B8(&qword_10190FFC8, &qword_1011EDED0);
  __chkstk_darwin(v75);
  v66 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = v59 - v8;
  __chkstk_darwin(v9);
  v71 = v59 - v10;
  __chkstk_darwin(v11);
  v72 = v59 - v12;
  v13 = sub_1000CE6B8(&qword_10190FFD0, &qword_1011EDED8);
  __chkstk_darwin(v13);
  v15 = v59 - v14;
  v16 = sub_1000CE6B8(&qword_10190FFD8, &qword_1011EDEE0);
  __chkstk_darwin(v16);
  v18 = v59 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v1;
  v26 = *(v1 + *(v4 + 40));
  v73 = v13;
  v74 = v27;
  if (v26 == 1)
  {
    v28 = *v1;
    if (!*v1)
    {
LABEL_11:
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    if (*(v28 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2)
    {
      v78 = v59 - v24;
      v29 = v1 + *(v4 + 36);
      v30 = v25;
      v31 = *&v29[*(type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0) + 20)];
      v32 = (v31 - 1);
      if (!__OFSUB__(v31, 1))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v33 = v28;
        static Published.subscript.getter();

        v34 = v78;
        sub_1001AB4D8(v32, LOBYTE(v93._countAndFlagsBits), v78);
        *v18 = static VerticalAlignment.bottom.getter();
        *(v18 + 1) = 0x4000000000000000;
        v18[16] = 0;
        sub_1001AC15C(v30, v34, &v18[*(v16 + 44)]);
        sub_1000D2DFC(v18, v15, &qword_10190FFD8, &qword_1011EDEE0);
        swift_storeEnumTagMultiPayload();
        sub_1001C85C0();
        sub_1001C86A4();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v18, &qword_10190FFD8, &qword_1011EDEE0);
        return (*(v20 + 8))(v34, v74);
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  v62 = v16;
  v63 = v20;
  v64 = v15;
  v36 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  v37 = *v1;
  if (!*v1)
  {
    goto LABEL_11;
  }

  v38 = *(v1 + *(v4 + 36) + *(v36 + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v37;
  static Published.subscript.getter();

  sub_1001AB4D8(v38, LOBYTE(v93._countAndFlagsBits), v22);
  v40 = v78;
  sub_1001C48C0(v1, v78, _s26MultipleCuratedCollectionsVMa);
  v41 = (v65[80] + 16) & ~v65[80];
  v59[1] = v65[80];
  v42 = swift_allocObject();
  v60 = v41;
  sub_1001C4928(v40, v42 + v41, _s26MultipleCuratedCollectionsVMa);
  v43 = static VerticalAlignment.center.getter();
  v83 = 0;
  v61 = v1;
  v65 = v22;
  sub_1001AE108(v1, v22, &v93);
  v88 = v97;
  v89 = v98;
  v90[0] = v99[0];
  *(v90 + 9) = *(v99 + 9);
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v91[0] = v93;
  v91[1] = v94;
  v91[2] = v95;
  v91[3] = v96;
  v91[4] = v97;
  v91[5] = v98;
  v92[0] = v99[0];
  *(v92 + 9) = *(v99 + 9);
  sub_1000D2DFC(&v84, &v79, &qword_10190FFE0, &qword_1011EDEE8);
  sub_100024F64(v91, &qword_10190FFE0, &qword_1011EDEE8);
  *(&v82[4] + 7) = v88;
  *(&v82[5] + 7) = v89;
  *(&v82[6] + 7) = v90[0];
  v82[7] = *(v90 + 9);
  *(v82 + 7) = v84;
  *(&v82[1] + 7) = v85;
  *(&v82[2] + 7) = v86;
  *(&v82[3] + 7) = v87;
  *&v81[65] = v82[4];
  *&v81[81] = v82[5];
  *&v81[97] = v82[6];
  *&v81[113] = *(v90 + 9);
  *&v81[1] = v82[0];
  *&v81[17] = v82[1];
  *&v81[33] = v82[2];
  v79._countAndFlagsBits = sub_1001CD044;
  v79._object = v42;
  *&v80 = v43;
  *(&v80 + 1) = 0x4010000000000000;
  v81[0] = v83;
  *&v81[49] = v82[3];
  sub_1000CE6B8(&qword_10190FFE8, &qword_1011EDEF0);
  sub_1000414C8(&unk_10190FFF0, &qword_10190FFE8, &qword_1011EDEF0, &unk_1011EEA38);
  v44 = v66;
  View.accessibility(identifier:)();
  v99[2] = *&v81[96];
  v99[3] = *&v81[112];
  v100 = v81[128];
  v97 = *&v81[32];
  v98 = *&v81[48];
  v99[0] = *&v81[64];
  v99[1] = *&v81[80];
  v93 = v79;
  v94 = v80;
  v95 = *v81;
  v96 = *&v81[16];
  sub_100024F64(&v93, &qword_10190FFE8, &qword_1011EDEF0);
  v45 = v67;
  ModifiedContent<>.accessibilityAutomationType(_:)();
  sub_100024F64(v44, &qword_10190FFC8, &qword_1011EDED0);
  v46 = v68;
  static AccessibilityTraits.isButton.getter();
  v47 = v71;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v69 + 8))(v46, v70);
  sub_100024F64(v45, &qword_10190FFC8, &qword_1011EDED0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v101._object = 0x8000000101222060;
  v48._countAndFlagsBits = 0x69754720776F6853;
  v48._object = 0xEB00000000736564;
  v49._object = 0x8000000101222040;
  v101._countAndFlagsBits = 0xD00000000000004FLL;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, qword_1019600D8, v48, v101);
  sub_1000E5580();
  v50 = Text.init<A>(_:)();
  v52 = v51;
  v54 = v53;
  v55 = v78;
  sub_1001C48C0(v61, v78, _s26MultipleCuratedCollectionsVMa);
  v56 = v60;
  v57 = swift_allocObject();
  sub_1001C4928(v55, v57 + v56, _s26MultipleCuratedCollectionsVMa);
  v58 = v72;
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_1000F0A40(v50, v52, v54 & 1);

  sub_100024F64(v47, &qword_10190FFC8, &qword_1011EDED0);
  sub_1000D2DFC(v58, v64, &qword_10190FFC8, &qword_1011EDED0);
  swift_storeEnumTagMultiPayload();
  sub_1001C85C0();
  sub_1001C86A4();
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v58, &qword_10190FFC8, &qword_1011EDED0);
  return (*(v63 + 8))(v65, v74);
}

uint64_t sub_1001AB4D8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v85 = a1;
  *&v78 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v78);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - v10;
  v12 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v70 - v15;
  v16 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v80 = *(v16 - 8);
  __chkstk_darwin(v16);
  v73 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v70 - v19;
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  __chkstk_darwin(v23);
  v70 = &v70 - v24;
  v25 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v25 - 8);
  v26 = type metadata accessor for AttributedString();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v84 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v70 - v30;
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v82 = v26;
  v83 = a3;
  v75 = a2;
  v81 = v27;
  if (!IsEnabled_SearchAndDiscovery)
  {
    goto LABEL_8;
  }

  if (*v74)
  {
    if (*(*v74 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2)
    {
      v77 = v22;
      v79 = v11;
      v84 = v16;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v33 = qword_1019600D8;
      v34 = String._bridgeToObjectiveC()();
      v35 = String._bridgeToObjectiveC()();
      v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
      v37 = swift_allocObject();
      v78 = xmmword_1011E1D30;
      *(v37 + 16) = xmmword_1011E1D30;
      *(v37 + 56) = &type metadata for Int;
      *(v37 + 64) = &protocol witness table for Int;
      v38 = v85;
      *(v37 + 32) = v85;
      static String.localizedStringWithFormat(_:_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v39 = String._bridgeToObjectiveC()();
      v40 = String._bridgeToObjectiveC()();
      v41 = [v33 localizedStringForKey:v39 value:v40 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = swift_allocObject();
      *(v42 + 16) = v78;
      *(v42 + 56) = &type metadata for Int;
      *(v42 + 64) = &protocol witness table for Int;
      *(v42 + 32) = v38;
      v43 = static String.localizedStringWithFormat(_:_:)();
      v45 = v44;

      v86 = v43;
      v87 = v45;
      v46 = type metadata accessor for Locale();
      v47 = v79;
      (*(*(v46 - 8) + 56))(v79, 1, 1, v46);
      sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_1000E5580();
      v48 = v71;
      v49 = v82;
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_100024F64(v47, &unk_10190D5F0, &unk_1011E78A0);

      if ((*(v80 + 48))(v48, 1, v84) == 1)
      {
        v50 = &qword_10190B850;
        v51 = &unk_10120B950;
        v52 = v48;
LABEL_19:
        sub_100024F64(v52, v50, v51);
        return (*(v81 + 32))(v83, v31, v49);
      }

      v63 = v70;
      sub_1000F11C4(v48, v70, &unk_10190D600, &qword_1011E78B0);
      v64 = v77;
      sub_1000D2DFC(v63, v77, &unk_10190D600, &qword_1011E78B0);
      if (v75)
      {
        v67 = static Color.white.getter();
      }

      else
      {
        v67 = static Color.blue.getter();
      }

      v66 = v67;
      sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
LABEL_18:
      v68 = AttributedString.subscript.modify();
      v88 = v66;
      sub_10016EB80();
      AttributedSubstring.subscript.setter();
      v68(&v86, 0);
      sub_100024F64(v64, &unk_10190D600, &qword_1011E78B0);
      v52 = v63;
      v50 = &unk_10190D600;
      v51 = &qword_1011E78B0;
      goto LABEL_19;
    }

LABEL_8:
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53._countAndFlagsBits = 0x6465727574616546;
    v53._object = 0xEC000000206E6920;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
    v86 = v85;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v54._countAndFlagsBits = 0x73656469754720;
    v54._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
    String.LocalizationValue.init(stringInterpolation:)();
    v55 = type metadata accessor for Locale();
    v56 = *(*(v55 - 8) + 56);
    v56(v11, 1, 1, v55);
    v86 = _swiftEmptyArrayStorage;
    sub_1001C3C48(&qword_1019100E8, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
    v57 = v11;
    sub_1000CE6B8(&qword_1019100F0, &qword_1011EDFB8);
    v58 = v16;
    sub_1000414C8(&qword_1019100F8, &qword_1019100F0, &qword_1011EDFB8, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v59 = v84;
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
    v88 = v85;
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v87 = v60;
    v61._countAndFlagsBits = 0x73656469754720;
    v61._object = 0xE700000000000000;
    String.append(_:)(v61);
    v56(v11, 1, 1, v55);
    v49 = v82;
    sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_1000E5580();
    v62 = v79;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100024F64(v57, &unk_10190D5F0, &unk_1011E78A0);

    if ((*(v80 + 48))(v62, 1, v58) == 1)
    {
      sub_100024F64(v62, &qword_10190B850, &unk_10120B950);
      v31 = v59;
      return (*(v81 + 32))(v83, v31, v49);
    }

    v63 = v72;
    sub_1000F11C4(v62, v72, &unk_10190D600, &qword_1011E78B0);
    v64 = v73;
    sub_1000D2DFC(v63, v73, &unk_10190D600, &qword_1011E78B0);
    if (v75)
    {
      v65 = static Color.white.getter();
    }

    else
    {
      v65 = static Color.blue.getter();
    }

    v66 = v65;
    sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
    v31 = v84;
    goto LABEL_18;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001AC15C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v159 = a3;
  v156 = sub_1000CE6B8(&qword_101910030, &qword_1011EDF08);
  __chkstk_darwin(v156);
  v154 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v155 = &v126 - v6;
  __chkstk_darwin(v7);
  v158 = &v126 - v8;
  __chkstk_darwin(v9);
  v157 = &v126 - v10;
  v11 = type metadata accessor for AccessibilityTraits();
  v163 = *(v11 - 8);
  v164 = v11;
  __chkstk_darwin(v11);
  v162 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s26MultipleCuratedCollectionsVMa(0);
  v14 = v13 - 8;
  v161 = *(v13 - 8);
  __chkstk_darwin(v13);
  v142 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v15;
  __chkstk_darwin(v16);
  v165 = &v126 - v17;
  v144 = sub_1000CE6B8(&qword_101910038, &qword_1011EDF10);
  __chkstk_darwin(v144);
  v143 = (&v126 - v18);
  v166 = sub_1000CE6B8(&unk_101910040, &qword_1011EDF18);
  v151 = *(v166 - 8);
  __chkstk_darwin(v166);
  v141 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v145 = &v126 - v21;
  __chkstk_darwin(v22);
  v24 = &v126 - v23;
  v25 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v25 - 8);
  v148 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000CE6B8(&qword_10190D5A0, &qword_1011EDF20);
  __chkstk_darwin(v27 - 8);
  v29 = &v126 - v28;
  v30 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v140 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v149 = v35;
  v150 = &v126 - v34;
  __chkstk_darwin(v36);
  v38 = &v126 - v37;
  v39 = sub_1000CE6B8(&qword_101910050, &qword_1011EDF28);
  __chkstk_darwin(v39 - 8);
  v153 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v167 = &v126 - v42;
  v43 = *(v14 + 44);
  v44 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  sub_1000D2DFC(a1 + *(v44 + 28) + v43, v29, &qword_10190D5A0, &qword_1011EDF20);
  v138 = v31;
  v45 = (*(v31 + 48))(v29, 1, v30);
  v169 = a1;
  if (v45 == 1)
  {
    sub_100024F64(v29, &qword_10190D5A0, &qword_1011EDF20);
    v46 = 1;
    v47 = v167;
    v49 = v165;
    v48 = v166;
    v50 = v161;
  }

  else
  {
    v146 = v24;
    sub_1001C4928(v29, v38, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1011E1D30;
    v52 = *(v30 + 24);
    v160 = v38;
    v53 = &v38[v52];
    v54 = a1;
    v55 = *v53;
    v56 = *(v53 + 1);
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_1000DA61C();
    *(v51 + 32) = v55;
    *(v51 + 40) = v56;

    v57 = static String.localizedStringWithFormat(_:_:)();
    v59 = v58;

    *&v180[0] = v57;
    *(&v180[0] + 1) = v59;
    sub_1000E5580();
    v60 = Text.init<A>(_:)();
    v63 = *v54;
    if (!*v54)
    {
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v64 = v60;
    v65 = v61;
    v66 = v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v63;
    static Published.subscript.getter();

    if (v180[0])
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v139 = Text.foregroundColor(_:)();
    v134 = v68;
    v135 = v69;
    v133 = v70;

    sub_1000F0A40(v64, v65, v66 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
    LocalizedStringKey.init(stringInterpolation:)();
    v147 = Text.init(_:tableName:bundle:comment:)();
    v136 = v73;
    v137 = v74;
    LODWORD(v148) = v75;
    v76 = v169;
    v77 = v165;
    v126 = _s26MultipleCuratedCollectionsVMa;
    sub_1001C48C0(v169, v165, _s26MultipleCuratedCollectionsVMa);
    v78 = v150;
    v127 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
    sub_1001C48C0(v160, v150, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    v79 = *(v161 + 80);
    v80 = *(v138 + 80);
    v81 = (v79 + 16) & ~v79;
    v132 = v81;
    v82 = (v168 + v80 + v81) & ~v80;
    v138 = v79 | v80;
    v128 = v82;
    v83 = swift_allocObject();
    v131 = _s26MultipleCuratedCollectionsVMa;
    sub_1001C4928(v77, v83 + v81, _s26MultipleCuratedCollectionsVMa);
    v129 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
    sub_1001C4928(v78, v83 + v82, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    v84 = v140;
    sub_1001C48C0(v160, v140, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    v85 = v142;
    sub_1001C48C0(v76, v142, _s26MultipleCuratedCollectionsVMa);
    v86 = v143;
    v87 = v144;
    *v143 = sub_1001CD048;
    *(v86 + 8) = v83;
    v88 = v86 + *(v87 + 36);

    *v88 = static VerticalAlignment.center.getter();
    *(v88 + 8) = 0x4010000000000000;
    *(v88 + 16) = 0;
    v89 = sub_1000CE6B8(&qword_101910070, &unk_1011EDF48);
    sub_1001AD2A4(v84, v85, v147, v136, v148 & 1, v137, v88 + *(v89 + 44));

    v130 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
    sub_1001C4CC4(v84, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    sub_1001C4CC4(v85, _s26MultipleCuratedCollectionsVMa);
    sub_1000414C8(&unk_101910078, &qword_101910038, &qword_1011EDF10, &unk_1011EEA38);
    v90 = v141;
    View.accessibility(identifier:)();
    sub_100024F64(v86, &qword_101910038, &qword_1011EDF10);
    v91 = v145;
    ModifiedContent<>.accessibilityAutomationType(_:)();
    sub_100024F64(v90, &unk_101910040, &qword_1011EDF18);
    v92 = v162;
    static AccessibilityTraits.isButton.getter();
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v163 + 8))(v92, v164);
    sub_100024F64(v91, &unk_101910040, &qword_1011EDF18);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v93._countAndFlagsBits = 0x20776F6853;
    v93._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v93);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v94);
    LocalizedStringKey.init(stringInterpolation:)();
    v95 = Text.init(_:tableName:bundle:comment:)();
    v145 = v96;
    LOBYTE(v85) = v97;
    v49 = v165;
    sub_1001C48C0(v169, v165, v126);
    v98 = v150;
    sub_1001C48C0(v160, v150, v127);
    v99 = v128;
    v100 = swift_allocObject();
    sub_1001C4928(v49, v100 + v132, v131);
    sub_1001C4928(v98, v100 + v99, v129);
    v47 = v167;
    v101 = v145;
    v102 = v146;
    ModifiedContent<>.accessibilityAction(named:_:)();
    v50 = v161;

    v103 = v101;
    a1 = v169;
    sub_1000F0A40(v95, v103, v85 & 1);

    sub_1000F0A40(v139, v134, v133 & 1);

    sub_1000F0A40(v147, v136, v148 & 1);

    sub_100024F64(v102, &unk_101910040, &qword_1011EDF18);
    sub_1001C4CC4(v160, v130);
    v48 = v166;
    v46 = 0;
  }

  (*(v151 + 56))(v47, v46, 1, v48);
  sub_1001C48C0(a1, v49, _s26MultipleCuratedCollectionsVMa);
  v104 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v105 = swift_allocObject();
  v166 = v104;
  sub_1001C4928(v49, v105 + v104, _s26MultipleCuratedCollectionsVMa);
  v177._countAndFlagsBits = sub_1001C878C;
  v177._object = v105;
  sub_1001ADD0C(v152, a1, v178);
  v174 = v178[3];
  v175 = v178[4];
  v176[0] = v179[0];
  *(v176 + 9) = *(v179 + 9);
  v170 = v177;
  v171 = v178[0];
  v172 = v178[1];
  v173 = v178[2];
  sub_1000CE6B8(&qword_101910058, &qword_1011EDF30);
  sub_1000414C8(&qword_101910060, &qword_101910058, &qword_1011EDF30, &unk_1011EEA38);
  v106 = v154;
  View.accessibility(identifier:)();
  v180[4] = v174;
  v180[5] = v175;
  v181[0] = v176[0];
  *(v181 + 9) = *(v176 + 9);
  v180[0] = v170;
  v180[1] = v171;
  v180[2] = v172;
  v180[3] = v173;
  sub_100024F64(v180, &qword_101910058, &qword_1011EDF30);
  v107 = v155;
  v108 = v49;
  ModifiedContent<>.accessibilityAutomationType(_:)();
  sub_100024F64(v106, &qword_101910030, &qword_1011EDF08);
  v109 = v162;
  static AccessibilityTraits.isButton.getter();
  v110 = v158;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v163 + 8))(v109, v164);
  sub_100024F64(v107, &qword_101910030, &qword_1011EDF08);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v182._object = 0x8000000101222060;
  v111._countAndFlagsBits = 0x69754720776F6853;
  v111._object = 0xEB00000000736564;
  v112._object = 0x8000000101222040;
  v182._countAndFlagsBits = 0xD00000000000004FLL;
  v112._countAndFlagsBits = 0xD00000000000001BLL;
  v170 = NSLocalizedString(_:tableName:bundle:value:comment:)(v112, 0, qword_1019600D8, v111, v182);
  sub_1000E5580();
  v113 = Text.init<A>(_:)();
  v115 = v114;
  v117 = v116;
  sub_1001C48C0(v169, v108, _s26MultipleCuratedCollectionsVMa);
  v118 = v166;
  v119 = swift_allocObject();
  sub_1001C4928(v108, v119 + v118, _s26MultipleCuratedCollectionsVMa);
  v120 = v157;
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_1000F0A40(v113, v115, v117 & 1);

  sub_100024F64(v110, &qword_101910030, &qword_1011EDF08);
  v121 = v167;
  v122 = v153;
  sub_1000D2DFC(v167, v153, &qword_101910050, &qword_1011EDF28);
  sub_1000D2DFC(v120, v110, &qword_101910030, &qword_1011EDF08);
  v123 = v159;
  sub_1000D2DFC(v122, v159, &qword_101910050, &qword_1011EDF28);
  v124 = sub_1000CE6B8(&qword_101910068, &unk_1011EDF38);
  sub_1000D2DFC(v110, v123 + *(v124 + 48), &qword_101910030, &qword_1011EDF08);
  sub_100024F64(v120, &qword_101910030, &qword_1011EDF08);
  sub_100024F64(v121, &qword_101910050, &qword_1011EDF28);
  sub_100024F64(v110, &qword_101910030, &qword_1011EDF08);
  return sub_100024F64(v122, &qword_101910050, &qword_1011EDF28);
}

uint64_t sub_1001AD2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a4;
  v75 = a6;
  v72 = a5;
  v73 = a3;
  v70 = a2;
  v77 = a7;
  v9 = type metadata accessor for RoundedRectangle();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000CE6B8(&qword_101910088, &qword_1011EDF58) - 8;
  __chkstk_darwin(v71);
  v76 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  v20 = *(a1 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 20));
  Image.init(uiImage:)();
  (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
  v68 = Image.resizable(capInsets:resizingMode:)();

  (*(v13 + 8))(v15, v12);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v67 = v88;
  v66 = v89;
  v21 = v91;
  v64 = v92;
  v65 = v90;
  v63 = v93;
  v22 = *(a2 + *(_s26MultipleCuratedCollectionsVMa(0) + 44));
  v23 = &v19[*(sub_1000CE6B8(&qword_101910090, &qword_1011EDF60) + 36)];
  v24 = *(v10 + 28);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  v27 = *(*(v26 - 8) + 104);
  v27(&v23[v24], v25, v26);
  *v23 = v22;
  *(v23 + 1) = v22;
  v28 = sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0);
  *&v23[*(v28 + 36)] = 256;
  v29 = v67;
  *v19 = v68;
  *(v19 + 1) = v29;
  v19[16] = v66;
  v30 = v64;
  *(v19 + 3) = v65;
  v19[32] = v21;
  v31 = v63;
  *(v19 + 5) = v30;
  *(v19 + 6) = v31;
  v32 = &v19[*(sub_1000CE6B8(&qword_101910098, &qword_1011EDF68) + 36)];
  v27(&v32[*(v10 + 28)], v25, v26);
  *v32 = v22;
  *(v32 + 1) = v22;
  *&v32[*(v28 + 36)] = 256;
  v33 = *(v10 + 28);
  v34 = v69;
  v27(&v69[v33], v25, v26);
  *v34 = v22;
  v34[1] = v22;
  v35 = v34;
  v36 = [objc_opt_self() secondarySystemFillColor];
  v37 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v38 = &v19[*(sub_1000CE6B8(&qword_1019100A0, &unk_1011EDF70) + 36)];
  sub_1001C48C0(v35, v38, &type metadata accessor for RoundedRectangle);
  v39 = v38 + *(sub_1000CE6B8(&qword_1019100A8, &unk_1011F79E0) + 36);
  v40 = v95;
  *v39 = v94;
  *(v39 + 16) = v40;
  *(v39 + 32) = v96;
  v41 = sub_1000CE6B8(&qword_1019100B0, &unk_1011EDF80);
  *(v38 + *(v41 + 52)) = v37;
  *(v38 + *(v41 + 56)) = 256;
  v42 = static Alignment.center.getter();
  v44 = v43;
  sub_1001C4CC4(v35, &type metadata accessor for RoundedRectangle);
  v45 = (v38 + *(sub_1000CE6B8(&qword_1019100B8, &qword_1011F79F0) + 36));
  *v45 = v42;
  v45[1] = v44;
  v46 = static Alignment.center.getter();
  v48 = v47;
  v49 = (v38 + *(sub_1000CE6B8(&qword_1019100C0, &qword_1011EDF90) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = v70;
  v19[*(v71 + 44)] = 1;
  v51 = *v50;
  if (*v50)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v51;
    static Published.subscript.getter();

    sub_1001AD984(v86[0], v73, v74, v72 & 1, v75, &v78);
    v53 = v76;
    sub_1000D2DFC(v19, v76, &qword_101910088, &qword_1011EDF58);
    v54 = v77;
    sub_1000D2DFC(v53, v77, &qword_101910088, &qword_1011EDF58);
    v55 = v54 + *(sub_1000CE6B8(&qword_1019100C8, &qword_1011EDF98) + 48);
    v57 = v81;
    v56 = v82;
    v84[3] = v81;
    v84[4] = v82;
    v58 = v83;
    v85 = v83;
    v59 = v79;
    v84[1] = v79;
    v84[2] = v80;
    v60 = v78;
    v84[0] = v78;
    *(v55 + 32) = v80;
    *(v55 + 48) = v57;
    *(v55 + 64) = v56;
    *(v55 + 80) = v58;
    *v55 = v60;
    *(v55 + 16) = v59;
    sub_1000D2DFC(v84, v86, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v19, &qword_101910088, &qword_1011EDF58);
    v86[2] = v80;
    v86[3] = v81;
    v86[4] = v82;
    v87 = v83;
    v86[0] = v78;
    v86[1] = v79;
    sub_100024F64(v86, &qword_1019100D0, &qword_1011EDFA0);
    return sub_100024F64(v53, &qword_101910088, &qword_1011EDF58);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AD984@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  sub_1001C8AFC(a2, a3, a4 & 1);
  if (a1)
  {
    v14 = qword_101906598;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = &qword_10195FBA8;
  }

  else
  {
    v16 = qword_1019065A0;

    if (v16 != -1)
    {
      swift_once();
    }

    v15 = &qword_10195FBB0;
  }

  v17 = *v15;

  v18 = swift_getKeyPath();
  v19 = a4 & 1;
  v36 = v19;
  *&v25 = a2;
  *(&v25 + 1) = a3;
  LOBYTE(v26) = v19;
  *(&v26 + 1) = a5;
  *&v27 = KeyPath;
  *(&v27 + 1) = v12;
  *&v28 = v18;
  *(&v28 + 1) = v17;
  v20 = swift_getKeyPath();
  v21 = v26;
  *a6 = v25;
  *(a6 + 16) = v21;
  v22 = v28;
  *(a6 + 32) = v27;
  *(a6 + 48) = v22;
  *(a6 + 64) = v20;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  v29[0] = a2;
  v29[1] = a3;
  v30 = v19;
  v31 = a5;
  v32 = KeyPath;
  v33 = v12;
  v34 = v18;
  v35 = v17;
  sub_1000D2DFC(&v25, v24, &unk_1019100D8, &unk_1011EDFA8);
  return sub_100024F64(v29, &unk_1019100D8, &unk_1011EDFA8);
}

uint64_t sub_1001ADB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(v9, v8, 0);
    (*(v5 + 8))(v7, v4);
    v9 = v15;
  }

  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E47B0;
  v12 = *(a2 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 32));
  *(v11 + 32) = v12;
  v15 = v11;
  v13 = v12;
  v9(&v15);
}

uint64_t sub_1001ADD0C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = static VerticalAlignment.center.getter();
  v31 = 0;
  (*(v7 + 16))(v9, a1, v6);
  v11 = Text.init(_:)();
  v15 = *a2;
  if (*a2)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v15;
    static Published.subscript.getter();

    sub_1001AD984(v27[15], v16, v17, v18 & 1, v19, v28);
    sub_1000F0A40(v16, v17, v18 & 1);

    *&v30[7] = v28[0];
    *&v30[23] = v28[1];
    v30[87] = v29;
    *&v30[71] = v28[4];
    *&v30[55] = v28[3];
    *&v30[39] = v28[2];
    v22 = v31;
    *a3 = v10;
    *(a3 + 8) = 0x4010000000000000;
    *(a3 + 16) = v22;
    v23 = *v30;
    *(a3 + 33) = *&v30[16];
    *(a3 + 17) = v23;
    v24 = *&v30[32];
    v25 = *&v30[48];
    v26 = *&v30[64];
    *(a3 + 97) = *&v30[80];
    *(a3 + 81) = v26;
    *(a3 + 65) = v25;
    *(a3 + 49) = v24;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001ADF70(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(v7, v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  v9 = a1 + *(_s26MultipleCuratedCollectionsVMa(0) + 36);
  v11 = *(v9 + *(type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0) + 24));
  v7(&v11);
}

uint64_t sub_1001AE108@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = Image.init(systemName:)();
  v39 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v9 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    static Published.subscript.getter();

    if (v50[0])
    {
      v11 = static Color.white.getter();
    }

    else
    {
      v11 = static Color.secondary.getter();
    }

    v37 = v11;
    v36 = swift_getKeyPath();
    (*(v6 + 16))(v8, v35, v5);
    v12 = Text.init(_:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v10;
    static Published.subscript.getter();

    sub_1001AD984(v50[0], v12, v14, v16 & 1, v18, &v42);
    sub_1000F0A40(v12, v14, v16 & 1);

    v20 = v45;
    v21 = v45;
    v22 = v44;
    v23 = v44;
    v48[2] = v44;
    v48[3] = v45;
    v24 = v46;
    v48[4] = v46;
    *(a3 + 104) = v46;
    *(a3 + 88) = v20;
    *(a3 + 72) = v22;
    v25 = v43;
    v26 = v42;
    v27 = v42;
    v48[0] = v42;
    v48[1] = v43;
    *(a3 + 56) = v43;
    *(a3 + 40) = v26;
    v28 = v47;
    v49 = v47;
    v29 = v39;
    v31 = v37;
    v30 = KeyPath;
    *a3 = v40;
    *(a3 + 8) = v30;
    v32 = v36;
    *(a3 + 16) = v29;
    *(a3 + 24) = v32;
    *(a3 + 32) = v31;
    *(a3 + 120) = v28;
    v50[0] = v27;
    v50[1] = v25;
    v51 = v47;
    v50[3] = v21;
    v50[4] = v24;
    v50[2] = v23;

    sub_1000D2DFC(v48, &v41, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v50, &qword_1019100D0, &qword_1011EDFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AE4AC@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v95 = type metadata accessor for AccessibilityTraits();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s18SingleCuratedGuideVMa(0);
  v87 = *(v3 - 8);
  __chkstk_darwin(v3);
  v89 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v4;
  __chkstk_darwin(v5);
  v107 = &v81 - v6;
  v91 = sub_1000CE6B8(&qword_101910038, &qword_1011EDF10);
  __chkstk_darwin(v91);
  v90 = (&v81 - v7);
  v96 = sub_1000CE6B8(&unk_101910040, &qword_1011EDF18);
  __chkstk_darwin(v96);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v81 - v10;
  __chkstk_darwin(v11);
  v109 = &v81 - v12;
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v110 = v3;
  v14 = v1 + *(v3 + 32);
  v15 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v16 = *(v15 + 28);
  v101 = v14;
  v17 = &v14[v16];
  v18 = v17[1];
  v112 = *v17;
  v113 = v18;
  v19 = sub_1000E5580();

  v104 = v19;
  v20 = Text.init<A>(_:)();
  v111 = v1;
  v23 = *v1;
  if (*v1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v23;
    static Published.subscript.getter();

    if (v112)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v105 = Text.foregroundColor(_:)();
    v106 = v28;
    v103 = v29;
    v102 = v30;

    sub_1000F0A40(v24, v25, v26 & 1);

    sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1011E1D30;
    v32 = &v101[*(v15 + 24)];
    v33 = *v32;
    v34 = v32[1];
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_1000DA61C();
    *(v31 + 32) = v33;
    *(v31 + 40) = v34;

    v35 = static String.localizedStringWithFormat(_:_:)();
    v37 = v36;

    v112 = v35;
    v113 = v37;
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v27;
    static Published.subscript.getter();

    if (v112 == 1)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v44 = Text.foregroundColor(_:)();
    v99 = v45;
    v100 = v44;
    v98 = v46;
    v101 = v47;

    sub_1000F0A40(v38, v40, v42 & 1);

    if (*(v111 + *(v110 + 36)) == 1 && *(v43 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2)
    {
      v48 = v98;
      v49 = v99;
      v50 = v100;
      sub_1001C8AFC(v100, v99, v98 & 1);

      v110 = v49;
      v86 = v51;
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v52);
      v53._countAndFlagsBits = v33;
      v53._object = v34;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v53);
      v54._countAndFlagsBits = 8250;
      v54._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v54);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v55);
      LocalizedStringKey.init(stringInterpolation:)();
      v50 = Text.init(_:tableName:bundle:comment:)();
      v110 = v56;
      v48 = v57;
      v86 = v58;
    }

    v59 = v111;
    v60 = v107;
    v83 = _s18SingleCuratedGuideVMa;
    sub_1001C48C0(v111, v107, _s18SingleCuratedGuideVMa);
    v87 = *(v87 + 80);
    v61 = (v87 + 16) & ~v87;
    v84 = v61;
    v62 = swift_allocObject();
    v85 = _s18SingleCuratedGuideVMa;
    sub_1001C4928(v60, v62 + v61, _s18SingleCuratedGuideVMa);
    v63 = v89;
    sub_1001C48C0(v59, v89, _s18SingleCuratedGuideVMa);
    v64 = v90;
    *v90 = sub_1001CD04C;
    *(v64 + 8) = v62;
    v65 = v64 + *(v91 + 36);

    *v65 = static VerticalAlignment.center.getter();
    *(v65 + 8) = 0x4010000000000000;
    *(v65 + 16) = 0;
    v66 = v65 + *(sub_1000CE6B8(&qword_101910070, &unk_1011EDF48) + 44);
    LODWORD(v104) = v48;
    sub_1001AEF94(v63, v50, v110, v48 & 1, v86, v66);

    sub_1001C4CC4(v63, _s18SingleCuratedGuideVMa);
    sub_1000414C8(&unk_101910078, &qword_101910038, &qword_1011EDF10, &unk_1011EEA38);
    v82 = v50;
    v67 = v88;
    View.accessibility(identifier:)();
    sub_100024F64(v64, &qword_101910038, &qword_1011EDF10);
    v68 = v92;
    ModifiedContent<>.accessibilityAutomationType(_:)();
    sub_100024F64(v67, &unk_101910040, &qword_1011EDF18);
    v69 = v93;
    static AccessibilityTraits.isButton.getter();
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v94 + 8))(v69, v95);
    sub_100024F64(v68, &unk_101910040, &qword_1011EDF18);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v70._countAndFlagsBits = 0x20776F6853;
    v70._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
    LocalizedStringKey.init(stringInterpolation:)();
    v72 = Text.init(_:tableName:bundle:comment:)();
    v74 = v73;
    LOBYTE(v68) = v75;
    v76 = v107;
    sub_1001C48C0(v111, v107, v83);
    v77 = v84;
    v78 = swift_allocObject();
    sub_1001C4928(v76, v78 + v77, v85);
    v79 = v109;
    ModifiedContent<>.accessibilityAction(named:_:)();

    sub_1000F0A40(v72, v74, v68 & 1);

    sub_1000F0A40(v105, v103, v102 & 1);

    sub_1000F0A40(v82, v110, v104 & 1);

    sub_1000F0A40(v100, v99, v98 & 1);

    return sub_100024F64(v79, &unk_101910040, &qword_1011EDF18);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AEF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a3;
  v73 = a5;
  v70 = a4;
  v71 = a2;
  v75 = a6;
  v7 = type metadata accessor for RoundedRectangle();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000CE6B8(&qword_101910088, &qword_1011EDF58) - 8;
  __chkstk_darwin(v69);
  v74 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = _s18SingleCuratedGuideVMa(0);
  v19 = a1 + *(v18 + 32);
  v67 = a1;
  v20 = *(v19 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 20));
  Image.init(uiImage:)();
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  v66 = Image.resizable(capInsets:resizingMode:)();

  (*(v11 + 8))(v13, v10);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v86;
  v64 = v87;
  v63 = v88;
  v62 = v89;
  v60 = v91;
  v61 = v90;
  v21 = *(a1 + *(v18 + 40));
  v22 = &v17[*(sub_1000CE6B8(&qword_101910090, &qword_1011EDF60) + 36)];
  v23 = *(v8 + 28);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  v26 = *(*(v25 - 8) + 104);
  v26(&v22[v23], v24, v25);
  *v22 = v21;
  *(v22 + 1) = v21;
  v27 = sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0);
  *&v22[*(v27 + 36)] = 256;
  v28 = v65;
  *v17 = v66;
  *(v17 + 1) = v28;
  v17[16] = v64;
  *(v17 + 3) = v63;
  v17[32] = v62;
  v29 = v60;
  *(v17 + 5) = v61;
  *(v17 + 6) = v29;
  v30 = &v17[*(sub_1000CE6B8(&qword_101910098, &qword_1011EDF68) + 36)];
  v26(&v30[*(v8 + 28)], v24, v25);
  *v30 = v21;
  *(v30 + 1) = v21;
  *&v30[*(v27 + 36)] = 256;
  v31 = v68;
  v26(&v68[*(v8 + 28)], v24, v25);
  *v31 = v21;
  v31[1] = v21;
  v32 = v31;
  v33 = [objc_opt_self() secondarySystemFillColor];
  v34 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v35 = &v17[*(sub_1000CE6B8(&qword_1019100A0, &unk_1011EDF70) + 36)];
  sub_1001C48C0(v32, v35, &type metadata accessor for RoundedRectangle);
  v36 = v35 + *(sub_1000CE6B8(&qword_1019100A8, &unk_1011F79E0) + 36);
  v37 = v93;
  *v36 = v92;
  *(v36 + 16) = v37;
  *(v36 + 32) = v94;
  v38 = sub_1000CE6B8(&qword_1019100B0, &unk_1011EDF80);
  *(v35 + *(v38 + 52)) = v34;
  *(v35 + *(v38 + 56)) = 256;
  v39 = static Alignment.center.getter();
  v41 = v40;
  sub_1001C4CC4(v32, &type metadata accessor for RoundedRectangle);
  v42 = (v35 + *(sub_1000CE6B8(&qword_1019100B8, &qword_1011F79F0) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = static Alignment.center.getter();
  v45 = v44;
  v46 = sub_1000CE6B8(&qword_1019100C0, &qword_1011EDF90);
  v47 = v67;
  v48 = (v35 + *(v46 + 36));
  *v48 = v43;
  v48[1] = v45;
  v17[*(v69 + 44)] = 1;
  v49 = *v47;
  if (*v47)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v49;
    static Published.subscript.getter();

    sub_1001AD984(v84[0], v71, v72, v70 & 1, v73, &v76);
    v51 = v74;
    sub_1000D2DFC(v17, v74, &qword_101910088, &qword_1011EDF58);
    v52 = v75;
    sub_1000D2DFC(v51, v75, &qword_101910088, &qword_1011EDF58);
    v53 = v52 + *(sub_1000CE6B8(&qword_1019100C8, &qword_1011EDF98) + 48);
    v55 = v79;
    v54 = v80;
    v82[3] = v79;
    v82[4] = v80;
    v56 = v81;
    v83 = v81;
    v57 = v77;
    v82[1] = v77;
    v82[2] = v78;
    v58 = v76;
    v82[0] = v76;
    *(v53 + 32) = v78;
    *(v53 + 48) = v55;
    *(v53 + 64) = v54;
    *(v53 + 80) = v56;
    *v53 = v58;
    *(v53 + 16) = v57;
    sub_1000D2DFC(v82, v84, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v17, &qword_101910088, &qword_1011EDF58);
    v84[2] = v78;
    v84[3] = v79;
    v84[4] = v80;
    v85 = v81;
    v84[0] = v76;
    v84[1] = v77;
    sub_100024F64(v84, &qword_1019100D0, &qword_1011EDFA0);
    return sub_100024F64(v51, &qword_101910088, &qword_1011EDF58);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AF684(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(v7, v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E47B0;
  v10 = a1 + *(_s18SingleCuratedGuideVMa(0) + 32);
  v11 = *(v10 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 32));
  *(v9 + 32) = v11;
  v14 = v9;
  v12 = v11;
  v7(&v14);
}

uint64_t sub_1001AF860@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityTraits();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s18UserGeneratedGuideVMa(0);
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v7;
  v61 = sub_1000CE6B8(&qword_10190FFC8, &qword_1011EDED0);
  __chkstk_darwin(v61);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v47 - v10;
  __chkstk_darwin(v11);
  v62 = &v47 - v12;
  v13 = type metadata accessor for AttributedString();
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  v17 = *v1;
  if (*v1)
  {
    v18 = (v1 + *(v6 + 28) + *(v16 + 20));
    v19 = v18[1];
    v47._countAndFlagsBits = *v18;
    countAndFlagsBits = v47._countAndFlagsBits;
    v47._object = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v1;
    v22 = v17;
    static Published.subscript.getter();

    sub_1001B004C(countAndFlagsBits, v19, v80, v15);
    v23 = Text.init(_:)();
    v52 = v24;
    v53 = v23;
    v25 = v24;
    LOBYTE(countAndFlagsBits) = v26;
    v54 = v26;
    v28 = v27;
    v50 = _s18UserGeneratedGuideVMa;
    v51 = v27;
    v29 = v21;
    v30 = v64;
    sub_1001C48C0(v21, v64, _s18UserGeneratedGuideVMa);
    v49 = *(v49 + 80);
    v31 = (v49 + 16) & ~v49;
    v32 = swift_allocObject();
    v48 = _s18UserGeneratedGuideVMa;
    sub_1001C4928(v30, v32 + v31, _s18UserGeneratedGuideVMa);

    v33 = static VerticalAlignment.center.getter();
    v70 = 0;
    sub_1001B0584(v29, v23, v25, countAndFlagsBits & 1, v28, &v80);
    v75 = v84;
    v76 = v85;
    v77[0] = v86[0];
    *(v77 + 9) = *(v86 + 9);
    v71 = v80;
    v72 = v81;
    v73 = v82;
    v74 = v83;
    v78[0] = v80;
    v78[1] = v81;
    v78[2] = v82;
    v78[3] = v83;
    v78[4] = v84;
    v78[5] = v85;
    v79[0] = v86[0];
    *(v79 + 9) = *(v86 + 9);
    sub_1000D2DFC(&v71, &v66, &qword_10190FFE0, &qword_1011EDEE8);
    sub_100024F64(v78, &qword_10190FFE0, &qword_1011EDEE8);

    *(&v69[4] + 7) = v75;
    *(&v69[5] + 7) = v76;
    *(&v69[6] + 7) = v77[0];
    v69[7] = *(v77 + 9);
    *(v69 + 7) = v71;
    *(&v69[1] + 7) = v72;
    *(&v69[2] + 7) = v73;
    *(&v69[3] + 7) = v74;
    *(&v68[4] + 1) = v69[4];
    *(&v68[5] + 1) = v69[5];
    *(&v68[6] + 1) = v69[6];
    *(&v68[7] + 1) = *(v77 + 9);
    *(v68 + 1) = v69[0];
    *(&v68[1] + 1) = v69[1];
    *(&v68[2] + 1) = v69[2];
    *&v66 = sub_1001CD050;
    *(&v66 + 1) = v32;
    *&v67 = v33;
    *(&v67 + 1) = 0x4010000000000000;
    LOBYTE(v68[0]) = v70;
    *(&v68[3] + 1) = v69[3];
    sub_1000CE6B8(&qword_10190FFE8, &qword_1011EDEF0);
    sub_1000414C8(&unk_10190FFF0, &qword_10190FFE8, &qword_1011EDEF0, &unk_1011EEA38);
    v34 = v55;
    View.accessibility(identifier:)();
    v86[2] = v68[6];
    v86[3] = v68[7];
    v87 = v68[8];
    v84 = v68[2];
    v85 = v68[3];
    v86[0] = v68[4];
    v86[1] = v68[5];
    v80 = v66;
    v81 = v67;
    v82 = v68[0];
    v83 = v68[1];
    sub_100024F64(&v80, &qword_10190FFE8, &qword_1011EDEF0);
    v35 = v56;
    ModifiedContent<>.accessibilityAutomationType(_:)();
    sub_100024F64(v34, &qword_10190FFC8, &qword_1011EDED0);
    v36 = v58;
    static AccessibilityTraits.isButton.getter();
    v37 = v62;
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v59 + 8))(v36, v60);
    sub_100024F64(v35, &qword_10190FFC8, &qword_1011EDED0);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0x20776F6853;
    v38._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
    LocalizedStringKey.init(stringInterpolation:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v42 = v41;
    LOBYTE(v25) = v43;
    v44 = v64;
    sub_1001C48C0(v29, v64, v50);
    v45 = swift_allocObject();
    sub_1001C4928(v44, v45 + v31, v48);
    ModifiedContent<>.accessibilityAction(named:_:)();

    sub_1000F0A40(v40, v42, v25 & 1);

    sub_1000F0A40(v53, v52, v54 & 1);

    return sub_100024F64(v37, &qword_10190FFC8, &qword_1011EDED0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v36 = a4;
  v6 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = &v30 - v15;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v39._object = 0x800000010121F660;
  v17._countAndFlagsBits = 0x4025206E49;
  v18._countAndFlagsBits = 0xD00000000000002BLL;
  v18._object = 0x800000010121F630;
  v17._object = 0xE500000000000000;
  v39._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v39);
  sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1011E1D30;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000DA61C();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v38[0] = a1;
  v38[1] = a2;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  type metadata accessor for AttributedString();
  sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_1000E5580();

  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_100024F64(v8, &unk_10190D5F0, &unk_1011E78A0);

  if ((*(v34 + 48))(v11, 1, v35) == 1)
  {
    v21 = &qword_10190B850;
    v22 = &unk_10120B950;
    v23 = v11;
  }

  else
  {
    v24 = v31;
    sub_1000F11C4(v11, v31, &unk_10190D600, &qword_1011E78B0);
    v25 = v32;
    sub_1000D2DFC(v24, v32, &unk_10190D600, &qword_1011E78B0);
    if (v33)
    {
      v26 = static Color.white.getter();
    }

    else
    {
      v26 = static Color.blue.getter();
    }

    v27 = v26;
    sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
    v28 = AttributedString.subscript.modify();
    v37 = v27;
    sub_10016EB80();
    AttributedSubstring.subscript.setter();
    v28(v38, 0);
    sub_100024F64(v25, &unk_10190D600, &qword_1011E78B0);
    v23 = v24;
    v21 = &unk_10190D600;
    v22 = &qword_1011E78B0;
  }

  return sub_100024F64(v23, v21, v22);
}

uint64_t sub_1001B0584@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = Image.init(systemName:)();
  v11 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  if (*a1)
  {
    v14 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    static Published.subscript.getter();

    if (v40[0])
    {
      v16 = static Color.white.getter();
    }

    else
    {
      v16 = static Color.secondary.getter();
    }

    v17 = v16;
    v18 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v15;
    static Published.subscript.getter();

    sub_1001AD984(v40[0], a2, a3, a4 & 1, a5, &v32);
    v20 = v35;
    v21 = v33;
    v22 = v34;
    v38[2] = v34;
    v38[3] = v35;
    v23 = v35;
    v38[4] = v36;
    *(a6 + 104) = v36;
    *(a6 + 88) = v20;
    *(a6 + 72) = v22;
    v24 = v34;
    v25 = v32;
    v26 = v32;
    v38[0] = v32;
    v38[1] = v33;
    *(a6 + 56) = v33;
    v27 = v37;
    v39 = v37;
    *a6 = v10;
    *(a6 + 8) = v14;
    *(a6 + 16) = v11;
    *(a6 + 24) = v18;
    *(a6 + 32) = v17;
    *(a6 + 120) = v27;
    *(a6 + 40) = v25;
    v40[0] = v26;
    v40[1] = v21;
    v41 = v37;
    v40[3] = v23;
    v40[4] = v36;
    v40[2] = v24;

    sub_1000D2DFC(v38, v31, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v40, &qword_1019100D0, &qword_1011EDFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B0860(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(v7, v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  v9 = a1 + *(_s18UserGeneratedGuideVMa(0) + 28);
  v11 = *(v9 + *(type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0) + 24));
  v7(&v11);
}

uint64_t sub_1001B09FC@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v126 = sub_1000CE6B8(&qword_101910148, &qword_1011EDFF8);
  __chkstk_darwin(v126);
  v109 = (&v103 - v2);
  v122 = sub_1000CE6B8(&qword_101910150, &qword_1011EE000);
  __chkstk_darwin(v122);
  v125 = &v103 - v3;
  v124 = sub_1000CE6B8(&qword_101910158, &qword_1011EE008);
  __chkstk_darwin(v124);
  v108 = (&v103 - v4);
  v5 = sub_1000CE6B8(&qword_101910160, &qword_1011EE010);
  __chkstk_darwin(v5 - 8);
  v123 = &v103 - v6;
  v119 = sub_1000CE6B8(&qword_101910168, &qword_1011EE018);
  __chkstk_darwin(v119);
  v107 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v121 = (&v103 - v9);
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1000CE6B8(&qword_101910170, &qword_1011EE020);
  __chkstk_darwin(v118);
  v117 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v103 - v14;
  v15 = sub_1000CE6B8(&qword_101910140, &qword_1011EDFF0);
  __chkstk_darwin(v15 - 8);
  v131 = &v103 - v16;
  v17 = sub_1000CE6B8(&qword_101910178, &qword_1011EE028);
  __chkstk_darwin(v17 - 8);
  v106 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v103 - v20;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v21 = qword_1019600D8;
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
  v26 = swift_allocObject();
  v129 = xmmword_1011E1D30;
  *(v26 + 16) = xmmword_1011E1D30;
  v27 = _s17ThirdPartyRatingsVMa(0);
  v28 = v1 + *(v27 + 28);
  v29 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  v30 = *&v28[v29[7]];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v30;
  v115 = static String.localizedStringWithFormat(_:_:)();
  v116 = v31;

  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v21 localizedStringForKey:v32 value:v33 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = v129;
  v36 = *&v28[v29[5]];
  *(v35 + 56) = &type metadata for Float;
  *(v35 + 64) = &protocol witness table for Float;
  *(v35 + 32) = v36;
  v112 = static String.localizedStringWithFormat(_:_:)();
  v38 = v37;

  Image.init(systemName:)();
  v39 = enum case for Image.TemplateRenderingMode.template(_:);
  v40 = type metadata accessor for Image.TemplateRenderingMode();
  v41 = *(v40 - 8);
  v42 = v131;
  (*(v41 + 104))(v131, v39, v40);
  (*(v41 + 56))(v42, 0, 1, v40);
  v43 = Image.renderingMode(_:)();

  sub_100024F64(v42, &qword_101910140, &qword_1011EDFF0);
  v114 = v27;
  LODWORD(v131) = *(v1 + *(v27 + 32));
  v128 = v1;
  v113 = v38;
  v105 = v28;
  v104 = v29;
  if (v131 == 1)
  {
    v44 = *v1;
    if (!*v1)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v44;
    static Published.subscript.getter();

    if (v132)
    {
      v46 = v43;
      if (qword_101906598 != -1)
      {
        swift_once();
      }

      v48 = qword_10195FBA8;
    }

    else
    {
      v46 = v43;
      if (qword_1019065A0 != -1)
      {
        swift_once();
      }

      v48 = qword_10195FBB0;
    }
  }

  else
  {
    v46 = v43;
    v47 = *&v28[v29[6]];
    v48 = Color.init(uiColor:)();
  }

  KeyPath = swift_getKeyPath();
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v50 = Font.weight(_:)();

  v51 = swift_getKeyPath();
  v132 = v46;
  v133 = KeyPath;
  v134 = v48;
  v135 = v51;
  v136 = v50;
  v137 = 0x4059000000000000;
  v144 = 0xD000000000000010;
  v145 = 0x8000000101222170;
  v52._countAndFlagsBits = 0x6567616D49;
  v52._object = 0xE500000000000000;
  String.append(_:)(v52);
  sub_1000CE6B8(&qword_101910180, &qword_1011EE030);
  sub_1001C8E44();
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
  v54 = swift_allocObject();
  *(v54 + 16) = v129;
  *(v54 + 56) = &type metadata for Float;
  *(v54 + 64) = &protocol witness table for Float;
  *(v54 + 32) = v36;
  v55._countAndFlagsBits = String.init(format:_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v55);

  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v56);
  LocalizedStringKey.init(stringInterpolation:)();
  v57 = Text.init(_:tableName:bundle:comment:)();
  v59 = v58;
  v61 = v60;
  if (v131)
  {
    v62 = *v128;
    if (*v128)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v63 = v62;
      static Published.subscript.getter();

      if (v132)
      {
        if (qword_101906598 == -1)
        {
          goto LABEL_21;
        }
      }

      else if (qword_1019065A0 == -1)
      {
LABEL_21:

        goto LABEL_22;
      }

      swift_once();
      goto LABEL_21;
    }

LABEL_30:
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v64 = *&v105[v104[6]];
  Color.init(uiColor:)();
LABEL_22:
  v65 = Text.foregroundColor(_:)();
  v67 = v66;
  v69 = v68;

  sub_1000F0A40(v57, v59, v61 & 1);

  static Font.subheadline.getter();
  if (v131)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  v70 = v130;
  Font.weight(_:)();

  v71 = Text.font(_:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;

  sub_1000F0A40(v65, v67, v69 & 1);

  v78 = swift_getKeyPath();
  v143 = v75 & 1;
  v142 = 0;
  v132 = v71;
  v133 = v73;
  LOBYTE(v134) = v75 & 1;
  *(&v134 + 1) = v144;
  HIDWORD(v134) = *(&v144 + 3);
  v135 = v77;
  v136 = v78;
  v137 = 1;
  v138 = 0;
  *v139 = *v141;
  *&v139[3] = *&v141[3];
  v140 = 0x4059000000000000;
  sub_1000CE6B8(&qword_1019101C0, &qword_1011EE050);
  sub_1001C906C();
  v79 = v117;
  View.accessibilityIdentifier(_:)();
  sub_1000F0A40(v71, v73, v75 & 1);

  v132 = v112;
  v133 = v113;
  sub_1000E5580();
  v80 = v120;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_100024F64(v79, &qword_101910170, &qword_1011EE020);

  sub_1000CE6B8(&qword_10190F6E0, &unk_1012015A0);
  v81 = v128;
  ScaledMetric.wrappedValue.getter();
  v82 = v132;
  v83 = static VerticalAlignment.center.getter();
  v84 = v121;
  *v121 = v83;
  *(v84 + 8) = v82;
  *(v84 + 16) = 0;
  v85 = sub_1000CE6B8(&qword_1019101D0, &qword_1011EE058);
  v86 = v115;
  v87 = v116;
  sub_1001B1B20(v80, v81, v115, v116, v84 + *(v85 + 44));
  *(v84 + *(v119 + 36)) = 0;
  if (v131)
  {
    v88 = static VerticalAlignment.center.getter();
    v89 = v108;
    *v108 = v88;
    *(v89 + 8) = 0x4008000000000000;
    *(v89 + 16) = 0;
    v90 = sub_1000CE6B8(&qword_101910218, &qword_1011EE080);
    sub_1001B22AC(v70, v80, v81, v86, v87, v89 + *(v90 + 44));

    *(v89 + *(v124 + 36)) = 0x4024000000000000;
    v91 = &qword_101910158;
    v92 = &qword_1011EE008;
    sub_1000D2DFC(v89, v125, &qword_101910158, &qword_1011EE008);
  }

  else
  {

    v94 = static VerticalAlignment.center.getter();
    v89 = v109;
    *v109 = v94;
    *(v89 + 8) = 0x4008000000000000;
    *(v89 + 16) = 0;
    v95 = v89 + *(sub_1000CE6B8(&qword_1019101D8, &qword_1011EE060) + 44);
    v96 = v70;
    v97 = v106;
    sub_1000D2DFC(v96, v106, &qword_101910178, &qword_1011EE028);
    v98 = v107;
    sub_1000D2DFC(v84, v107, &qword_101910168, &qword_1011EE018);
    sub_1000D2DFC(v97, v95, &qword_101910178, &qword_1011EE028);
    v99 = sub_1000CE6B8(&qword_1019101E0, &qword_1011EE068);
    sub_1000D2DFC(v98, v95 + *(v99 + 48), &qword_101910168, &qword_1011EE018);
    sub_100024F64(v98, &qword_101910168, &qword_1011EE018);
    v100 = v97;
    v70 = v130;
    sub_100024F64(v100, &qword_101910178, &qword_1011EE028);
    v101 = v89 + *(v126 + 36);
    *v101 = 0xD000000000000016;
    *(v101 + 8) = 0x80000001012221B0;
    *(v101 + 16) = 9;
    v91 = &qword_101910148;
    v92 = &qword_1011EDFF8;
    sub_1000D2DFC(v89, v125, &qword_101910148, &qword_1011EDFF8);
  }

  swift_storeEnumTagMultiPayload();
  sub_1001C9124();
  sub_1001C9208();
  v93 = v123;
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v89, v91, v92);
  sub_1000F11C4(v93, v127, &qword_101910160, &qword_1011EE010);
  sub_100024F64(v84, &qword_101910168, &qword_1011EE018);
  sub_100024F64(v80, &qword_101910170, &qword_1011EE020);
  return sub_100024F64(v70, &qword_101910178, &qword_1011EE028);
}

uint64_t sub_1001B1B20@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v76 = a3;
  *(&v76 + 1) = a4;
  v74 = a5;
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v75 = sub_1000CE6B8(&qword_101910250, &qword_1011EE0B8);
  __chkstk_darwin(v75);
  v80 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v65 - v10;
  __chkstk_darwin(v11);
  v77 = &v65 - v12;
  v13 = sub_1000CE6B8(&qword_101910170, &qword_1011EE020);
  __chkstk_darwin(v13 - 8);
  v79 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v78 = &v65 - v16;
  sub_1000D2DFC(a1, &v65 - v16, &qword_101910170, &qword_1011EE020);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v18 = a2 + *(_s17ThirdPartyRatingsVMa(0) + 28);
  v71 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  v72 = v18;
  *&v93[0] = *&v18[*(v71 + 28)];
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  LocalizedStringKey.init(stringInterpolation:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v24 = *a2;
  if (*a2)
  {
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v24;
    static Published.subscript.getter();

    sub_1001AD984(v93[0], v25, v26, v27 & 1, v28, &v95);
    sub_1000F0A40(v25, v26, v27 & 1);

    v93[0] = v95;
    v93[1] = v96;
    LOBYTE(v94) = v100;
    v93[3] = v98;
    v93[4] = v99;
    v93[2] = v97;
    *(&v94 + 1) = 0x4059000000000000;
    v89 = v97;
    v90 = v98;
    v91 = v99;
    v92 = v94;
    v87 = v95;
    v88 = v96;
    sub_1000CE6B8(&qword_101910288, &qword_1011EE0D8);
    sub_1001C94E8();
    v30 = v73;
    View.accessibilityIdentifier(_:)();
    sub_100024F64(v93, &qword_101910288, &qword_1011EE0D8);
    v87 = v76;
    sub_1000E5580();
    v31 = v77;
    ModifiedContent<>.accessibilityLabel<A>(_:)();
    sub_100024F64(v30, &qword_101910250, &qword_1011EE0B8);
    v32 = &v72[*(v71 + 32)];
    v33 = v32[1];
    if (!v33)
    {
      goto LABEL_7;
    }

    v34 = *v32;
    v35 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v35 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._countAndFlagsBits = 2125423;
      v36._object = 0xE300000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
      v37._countAndFlagsBits = v34;
      v37._object = v33;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v37);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
      LocalizedStringKey.init(stringInterpolation:)();
      v39 = Text.init(_:tableName:bundle:comment:)();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      v46 = v29;
      static Published.subscript.getter();

      sub_1001AD984(v87, v39, v41, v43 & 1, v45, &v87);
      sub_1000F0A40(v39, v41, v43 & 1);

      v72 = *(&v87 + 1);
      v73 = v87;
      v70 = *(&v88 + 1);
      v71 = v88;
      v68 = *(&v89 + 1);
      v69 = v89;
      v66 = *(&v90 + 1);
      v67 = v90;
      v65 = v91;
      v75 = 0x4024000000000000;
      *&v76 = v92;
      *(&v76 + 1) = *(&v91 + 1);
    }

    else
    {
LABEL_7:
      v72 = 0;
      v73 = 0;
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v76 = 0uLL;
      v75 = 0;
    }

    v47 = v79;
    sub_1000D2DFC(v78, v79, &qword_101910170, &qword_1011EE020);
    v48 = v80;
    sub_1000D2DFC(v31, v80, &qword_101910250, &qword_1011EE0B8);
    v49 = v74;
    sub_1000D2DFC(v47, v74, &qword_101910170, &qword_1011EE020);
    v50 = sub_1000CE6B8(&qword_101910298, &qword_1011EE0E0);
    sub_1000D2DFC(v48, v49 + *(v50 + 48), &qword_101910250, &qword_1011EE0B8);
    v51 = (v49 + *(v50 + 64));
    v52 = v72;
    v53 = v73;
    *&v81 = v73;
    *(&v81 + 1) = v72;
    v54 = v70;
    v55 = v71;
    *&v82 = v71;
    *(&v82 + 1) = v70;
    v57 = v68;
    v56 = v69;
    *&v83 = v69;
    *(&v83 + 1) = v68;
    v59 = v66;
    v58 = v67;
    *&v84 = v67;
    *(&v84 + 1) = v66;
    v60 = v65;
    *&v85 = v65;
    *(&v85 + 1) = *(&v76 + 1);
    *&v86 = v76;
    *(&v86 + 1) = v75;
    v61 = v84;
    v51[2] = v83;
    v51[3] = v61;
    v62 = v82;
    *v51 = v81;
    v51[1] = v62;
    v63 = v86;
    v51[4] = v85;
    v51[5] = v63;
    sub_1000D2DFC(&v81, &v87, &qword_101910138, &qword_1011EDFE8);
    sub_100024F64(v77, &qword_101910250, &qword_1011EE0B8);
    sub_100024F64(v78, &qword_101910170, &qword_1011EE020);
    *&v87 = v53;
    *(&v87 + 1) = v52;
    *&v88 = v55;
    *(&v88 + 1) = v54;
    *&v89 = v56;
    *(&v89 + 1) = v57;
    *&v90 = v58;
    *(&v90 + 1) = v59;
    *&v91 = v60;
    *(&v91 + 1) = *(&v76 + 1);
    *&v92 = v76;
    *(&v92 + 1) = v75;
    sub_100024F64(&v87, &qword_101910138, &qword_1011EDFE8);
    sub_100024F64(v80, &qword_101910250, &qword_1011EE0B8);
    return sub_100024F64(v79, &qword_101910170, &qword_1011EE020);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B22AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v82 = a4;
  *(&v82 + 1) = a5;
  v84 = a3;
  v85 = a2;
  v83 = a1;
  v88 = a6;
  v6 = sub_1000CE6B8(&qword_101910220, &qword_1011EE088);
  __chkstk_darwin(v6 - 8);
  v89 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v80 - v9;
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v90 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_101910228, &qword_1011EE090);
  __chkstk_darwin(v12 - 8);
  v87 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v91 = &v80 - v15;
  v16 = sub_1000CE6B8(&qword_101910170, &qword_1011EE020);
  __chkstk_darwin(v16 - 8);
  v18 = &v80 - v17;
  v19 = sub_1000CE6B8(&qword_101910178, &qword_1011EE028);
  __chkstk_darwin(v19 - 8);
  v21 = &v80 - v20;
  v22 = sub_1000CE6B8(&qword_101910230, &qword_1011EE098);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v86 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  *v27 = static VerticalAlignment.center.getter();
  *(v27 + 1) = 0x4008000000000000;
  v27[16] = 0;
  v28 = &v27[*(sub_1000CE6B8(&qword_101910238, &qword_1011EE0A0) + 44)];
  sub_1000D2DFC(v83, v21, &qword_101910178, &qword_1011EE028);
  sub_1000D2DFC(v85, v18, &qword_101910170, &qword_1011EE020);
  sub_1000D2DFC(v21, v28, &qword_101910178, &qword_1011EE028);
  v29 = sub_1000CE6B8(&qword_101910240, &qword_1011EE0A8);
  sub_1000D2DFC(v18, v28 + *(v29 + 48), &qword_101910170, &qword_1011EE020);
  v30 = v18;
  v31 = v84;
  sub_100024F64(v30, &qword_101910170, &qword_1011EE020);
  sub_100024F64(v21, &qword_101910178, &qword_1011EE028);
  *&v27[*(sub_1000CE6B8(&qword_101910248, &qword_1011EE0B0) + 36)] = 0x4059000000000000;
  v32 = *(v23 + 44);
  v85 = v27;
  v33 = &v27[v32];
  *v33 = 0xD000000000000016;
  *(v33 + 1) = 0x80000001012221B0;
  v33[16] = 9;
  v34 = v31 + *(_s17ThirdPartyRatingsVMa(0) + 28);
  v35 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  if (*(v34 + v35[9]) == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._countAndFlagsBits = 40;
    v36._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
    v81 = v35;
    v37 = v35[7];
    v83 = v34;
    *&v99 = *(v34 + v37);
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    LocalizedStringKey.init(stringInterpolation:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v43 = *v31;
    if (!*v31)
    {
      goto LABEL_13;
    }

    v44 = v39;
    v45 = v40;
    v46 = v41;
    v47 = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v43;
    static Published.subscript.getter();

    sub_1001AD984(v99, v44, v45, v46 & 1, v47, v105);
    sub_1000F0A40(v44, v45, v46 & 1);

    v95 = v105[2];
    v96 = v105[3];
    v97 = v105[4];
    LOBYTE(v98) = v106;
    v93 = v105[0];
    v94 = v105[1];
    *(&v98 + 1) = 0x4024000000000000;
    v107 = v82;
    sub_1000CE6B8(&qword_101910288, &qword_1011EE0D8);
    sub_1001C94E8();
    sub_1000E5580();
    v49 = v91;
    View.accessibilityLabel<A>(_:)();
    v101 = v95;
    v102 = v96;
    v103 = v97;
    v104 = v98;
    v99 = v93;
    v100 = v94;
    sub_100024F64(&v99, &qword_101910288, &qword_1011EE0D8);
    v50 = sub_1000CE6B8(&qword_101910250, &qword_1011EE0B8);
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v34 = v83;
    v35 = v81;
  }

  else
  {
    v51 = sub_1000CE6B8(&qword_101910250, &qword_1011EE0B8);
    v49 = v91;
    (*(*(v51 - 8) + 56))(v91, 1, 1, v51);
  }

  v52 = (v34 + v35[8]);
  v53 = v52[1];
  if (!v53)
  {
    goto LABEL_11;
  }

  v54 = *v52;
  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
LABEL_11:
    v71 = sub_1000CE6B8(&qword_101910258, &qword_1011EE0C0);
    (*(*(v71 - 8) + 56))(v92, 1, 1, v71);
    goto LABEL_12;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v56);
  v57._countAndFlagsBits = v54;
  v57._object = v53;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v57);
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v58);
  LocalizedStringKey.init(stringInterpolation:)();
  v59 = Text.init(_:tableName:bundle:comment:)();
  v63 = *v31;
  if (*v31)
  {
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v67 = v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v63;
    static Published.subscript.getter();

    sub_1001AD984(v99, v64, v65, v66 & 1, v67, &v99);
    sub_1000F0A40(v64, v65, v66 & 1);

    v95 = v101;
    v96 = v102;
    v97 = v103;
    LOBYTE(v98) = v104;
    v93 = v99;
    v94 = v100;
    v109 = v101;
    v110 = v102;
    v111 = v103;
    v112 = v104;
    v107 = v99;
    v108 = v100;
    sub_1000CE6B8(&qword_1019100D0, &qword_1011EDFA0);
    sub_1001C92C0();
    v69 = v92;
    View.accessibilityIdentifier(_:)();
    sub_100024F64(&v93, &qword_1019100D0, &qword_1011EDFA0);
    v70 = sub_1000CE6B8(&qword_101910258, &qword_1011EE0C0);
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
LABEL_12:
    v72 = v85;
    v73 = v86;
    sub_1000D2DFC(v85, v86, &qword_101910230, &qword_1011EE098);
    v74 = v87;
    sub_1000D2DFC(v49, v87, &qword_101910228, &qword_1011EE090);
    v75 = v92;
    v76 = v89;
    sub_1000D2DFC(v92, v89, &qword_101910220, &qword_1011EE088);
    v77 = v88;
    sub_1000D2DFC(v73, v88, &qword_101910230, &qword_1011EE098);
    v78 = sub_1000CE6B8(&qword_101910260, &qword_1011EE0C8);
    sub_1000D2DFC(v74, v77 + *(v78 + 48), &qword_101910228, &qword_1011EE090);
    sub_1000D2DFC(v76, v77 + *(v78 + 64), &qword_101910220, &qword_1011EE088);
    sub_100024F64(v75, &qword_101910220, &qword_1011EE088);
    sub_100024F64(v91, &qword_101910228, &qword_1011EE090);
    sub_100024F64(v72, &qword_101910230, &qword_1011EE098);
    sub_100024F64(v76, &qword_101910220, &qword_1011EE088);
    sub_100024F64(v74, &qword_101910228, &qword_1011EE090);
    return sub_100024F64(v73, &qword_101910230, &qword_1011EE098);
  }

LABEL_13:
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B2D48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v17 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101910108, &qword_1011EDFC0);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  _s17FirstPartyRatingsVMa(0);
  sub_1000CE6B8(&qword_10190F6E0, &unk_1012015A0);
  ScaledMetric.wrappedValue.getter();
  v10 = v40;
  v11 = static VerticalAlignment.center.getter();
  v24 = 0;
  sub_1001B31AC(v2, &v40);
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v25 = v40;
  v26 = v41;
  v39[10] = v50;
  v39[11] = v51;
  v39[12] = v52;
  v39[13] = v53;
  v39[6] = v46;
  v39[7] = v47;
  v39[8] = v48;
  v39[9] = v49;
  v39[2] = v42;
  v39[3] = v43;
  v39[4] = v44;
  v39[5] = v45;
  v39[0] = v40;
  v39[1] = v41;
  sub_1000D2DFC(&v25, &v21, &qword_101910110, &qword_1011EDFC8);
  sub_100024F64(v39, &qword_101910110, &qword_1011EDFC8);
  *&v23[167] = v35;
  *&v23[183] = v36;
  *&v23[199] = v37;
  *&v23[215] = v38;
  *&v23[103] = v31;
  *&v23[119] = v32;
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[39] = v27;
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v22[177] = *&v23[176];
  *&v22[193] = *&v23[192];
  *&v22[209] = *&v23[208];
  *&v22[113] = *&v23[112];
  *&v22[129] = *&v23[128];
  *&v22[145] = *&v23[144];
  *&v22[161] = *&v23[160];
  *&v22[49] = *&v23[48];
  *&v22[65] = *&v23[64];
  *&v22[81] = *&v23[80];
  *&v22[97] = *&v23[96];
  *&v22[1] = *v23;
  *&v22[17] = *&v23[16];
  *&v21 = v11;
  *(&v21 + 1) = v10;
  v22[0] = v24;
  *&v22[224] = *(&v38 + 1);
  *&v22[33] = *&v23[32];
  static AccessibilityChildBehavior.combine.getter();
  v12 = sub_1000CE6B8(&qword_101910118, &qword_1011EDFD0);
  v13 = sub_1000414C8(&qword_101910120, &qword_101910118, &qword_1011EDFD0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v17);
  v52 = *&v22[176];
  v53 = *&v22[192];
  v54 = *&v22[208];
  v55 = *&v22[224];
  v48 = *&v22[112];
  v49 = *&v22[128];
  v50 = *&v22[144];
  v51 = *&v22[160];
  v44 = *&v22[48];
  v45 = *&v22[64];
  v46 = *&v22[80];
  v47 = *&v22[96];
  v40 = v21;
  v41 = *v22;
  v42 = *&v22[16];
  v43 = *&v22[32];
  sub_100024F64(&v40, &qword_101910118, &qword_1011EDFD0);
  *&v21 = v12;
  *(&v21 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v18;
  View.accessibility(identifier:)();
  return (*(v19 + 8))(v9, v14);
}

uint64_t sub_1001B31AC@<X0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v54[0]) = 0;
  sub_1001B35E4(a1, &v55);
  v62 = *&v56[48];
  v63 = *&v56[64];
  v64 = *&v56[80];
  v58 = v55;
  v59 = *v56;
  v60 = *&v56[16];
  v61 = *&v56[32];
  v65[0] = v55;
  v65[1] = *v56;
  v65[2] = *&v56[16];
  v65[3] = *&v56[32];
  v65[4] = *&v56[48];
  v65[5] = *&v56[64];
  v66 = *&v56[80];
  sub_1000D2DFC(&v58, &v46, &qword_101910128, &qword_1011EDFD8);
  sub_100024F64(v65, &qword_101910128, &qword_1011EDFD8);
  *&v57[55] = v61;
  *&v57[71] = v62;
  *&v57[87] = v63;
  *&v57[7] = v58;
  *&v57[23] = v59;
  *&v57[103] = v64;
  *&v57[39] = v60;
  v5 = v54[0];
  PartyRatingsVMa = _s17FirstPartyRatingsVMa(0);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (*(a1 + *(PartyRatingsVMa + 36)))
  {
    goto LABEL_4;
  }

  v33 = v4;
  v19 = (a1 + *(PartyRatingsVMa + 24));
  v20 = v19[1];
  *&v55 = *v19;
  *(&v55 + 1) = v20;
  sub_1000E5580();

  v21 = Text.init<A>(_:)();
  v25 = *a1;
  if (*a1)
  {
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v25;
    static Published.subscript.getter();

    sub_1001AD984(v55, v26, v27, v28 & 1, v29, &v55);
    sub_1000F0A40(v26, v27, v28 & 1);

    v8 = *(&v55 + 1);
    v7 = v55;
    v9 = *v56;
    v10 = *&v56[8];
    v11 = *&v56[16];
    v12 = *&v56[24];
    v13 = *&v56[32];
    v14 = *&v56[40];
    v15 = *&v56[48];
    v16 = *&v56[56];
    v18 = 0xBFF0000000000000;
    v17 = v56[64];
    v4 = v33;
LABEL_4:
    *&v46 = v4;
    *(&v46 + 1) = 0x4010000000000000;
    LOBYTE(v47[0]) = v5;
    *(v47 + 1) = *v57;
    *(&v47[1] + 1) = *&v57[16];
    *(&v47[2] + 1) = *&v57[32];
    *(&v47[5] + 1) = *&v57[80];
    *(&v47[4] + 1) = *&v57[64];
    *(&v47[3] + 1) = *&v57[48];
    v47[6] = *&v57[95];
    v34 = v47[1];
    v35 = v47[2];
    v38 = v47[5];
    v39 = *&v57[95];
    v36 = v47[3];
    v37 = v47[4];
    *&v48 = v7;
    *(&v48 + 1) = v8;
    *&v49 = v9;
    *(&v49 + 1) = v10;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    *&v51 = v13;
    *(&v51 + 1) = v14;
    *&v52 = v15;
    *(&v52 + 1) = v16;
    *&v53 = v17;
    *(&v53 + 1) = v18;
    v40 = v48;
    v41 = v49;
    v44 = v52;
    v45 = v53;
    v42 = v50;
    v43 = v51;
    v31 = v47[0];
    *a2 = v46;
    a2[1] = v31;
    a2[4] = v36;
    a2[5] = v37;
    a2[2] = v34;
    a2[3] = v35;
    a2[8] = v40;
    a2[9] = v41;
    a2[6] = v38;
    a2[7] = v39;
    a2[12] = v44;
    a2[13] = v45;
    a2[10] = v42;
    a2[11] = v43;
    v54[0] = v7;
    v54[1] = v8;
    v54[2] = v9;
    v54[3] = v10;
    v54[4] = v11;
    v54[5] = v12;
    v54[6] = v13;
    v54[7] = v14;
    v54[8] = v15;
    v54[9] = v16;
    v54[10] = v17;
    v54[11] = v18;
    sub_1000D2DFC(&v46, &v55, &qword_101910130, &qword_1011EDFE0);
    sub_1000D2DFC(&v48, &v55, &qword_101910138, &qword_1011EDFE8);
    sub_100024F64(v54, &qword_101910138, &qword_1011EDFE8);
    *&v56[49] = *&v57[48];
    *&v56[65] = *&v57[64];
    *&v56[81] = *&v57[80];
    *&v56[96] = *&v57[95];
    *&v56[1] = *v57;
    *&v56[17] = *&v57[16];
    *&v55 = v4;
    *(&v55 + 1) = 0x4010000000000000;
    v56[0] = v5;
    *&v56[33] = *&v57[32];
    return sub_100024F64(&v55, &qword_101910130, &qword_1011EDFE0);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B35E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000CE6B8(&qword_101910140, &qword_1011EDFF0);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - v5;
  Image.init(systemName:)();
  v7 = enum case for Image.TemplateRenderingMode.template(_:);
  v8 = type metadata accessor for Image.TemplateRenderingMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = Image.renderingMode(_:)();

  sub_100024F64(v6, &qword_101910140, &qword_1011EDFF0);
  PartyRatingsVMa = _s17FirstPartyRatingsVMa(0);
  v12 = PartyRatingsVMa;
  v13 = *(a1 + *(PartyRatingsVMa + 36));
  if (v13 == 1)
  {
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_27;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    static Published.subscript.getter();

    if (v56)
    {
      if (qword_101906598 != -1)
      {
        swift_once();
      }

      v16 = &qword_10195FBA8;
    }

    else
    {
      if (qword_1019065A0 != -1)
      {
        swift_once();
      }

      v16 = &qword_10195FBB0;
    }
  }

  else
  {
    v16 = (a1 + *(PartyRatingsVMa + 28));
  }

  v53 = *v16;

  KeyPath = swift_getKeyPath();
  static Font.caption.getter();
  static Font.Weight.bold.getter();
  v51 = Font.weight(_:)();

  v50 = swift_getKeyPath();
  v54 = v10;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v56 = *(a1 + *(v12 + 32));
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  if (v13)
  {
    v18 = 37;
    v19 = 0xE100000000000000;
  }

  else
  {
    v18 = 9504;
    v19 = 0xE200000000000000;
  }

  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v18);
  LocalizedStringKey.init(stringInterpolation:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  if (v13)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  Font.weight(_:)();

  v48[0] = Text.font(_:)();
  v48[1] = v25;
  v27 = v26;
  v29 = v28;

  sub_1000F0A40(v20, v22, v24 & 1);

  if (!v13)
  {
    goto LABEL_24;
  }

  v30 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v30;
    static Published.subscript.getter();

    if (v56)
    {
      if (qword_101906598 == -1)
      {
        goto LABEL_24;
      }
    }

    else if (qword_1019065A0 == -1)
    {
LABEL_24:

      v32 = v48[0];
      v33 = Text.foregroundColor(_:)();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      sub_1000F0A40(v32, v27, v29 & 1);

      v40 = swift_getKeyPath();
      v41 = v37 & 1;
      LOBYTE(v56) = v37 & 1;
      v55 = 0;
      v42 = v53;
      v43 = v49;
      v44 = v50;
      v46 = v51;
      v45 = KeyPath;
      *v49 = v54;
      v43[1] = v45;
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v46;
      v43[5] = v33;
      v43[6] = v35;
      *(v43 + 56) = v41;
      v43[8] = v39;
      v43[9] = v40;
      v43[10] = 1;
      *(v43 + 88) = 0;
      v43[12] = 0x3FF0000000000000;

      sub_1001C8AFC(v33, v35, v41);

      sub_1000F0A40(v33, v35, v41);
    }

    swift_once();
    goto LABEL_24;
  }

LABEL_27:
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B3CB4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_1000CE6B8(&qword_1019102A0, &qword_1011EE0E8);
  __chkstk_darwin(v27);
  v3 = &v19 - v2;
  v25 = sub_1000CE6B8(&qword_1019102A8, &qword_1011EE0F0);
  __chkstk_darwin(v25);
  v26 = &v19 - v4;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_1019102B0, &qword_1011EE0F8);
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v24 = sub_1000CE6B8(&qword_1019102B8, &qword_1011EE100);
  __chkstk_darwin(v24);
  v12 = &v19 - v11;
  if (*(v1 + 48))
  {
    v13 = static VerticalAlignment.center.getter();
    v33 = 0;
    sub_1001B43C8(v1, &v48);
    v38 = v52;
    v39 = v53;
    v40[0] = *v54;
    *(v40 + 9) = *&v54[9];
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47[0] = *v54;
    *(v47 + 9) = *&v54[9];
    v20 = v8;
    sub_1000D2DFC(&v34, &v30, &qword_1019102C0, &qword_1011EE108);
    sub_100024F64(&v41, &qword_1019102C0, &qword_1011EE108);
    *(&v29[4] + 7) = v38;
    *(&v29[5] + 7) = v39;
    *(&v29[6] + 7) = v40[0];
    v29[7] = *(v40 + 9);
    *(v29 + 7) = v34;
    *(&v29[1] + 7) = v35;
    *(&v29[2] + 7) = v36;
    *(&v29[3] + 7) = v37;
    *&v31[65] = v29[4];
    *&v31[81] = v29[5];
    *&v31[97] = v29[6];
    *&v31[113] = *(v40 + 9);
    *&v31[1] = v29[0];
    *&v31[17] = v29[1];
    *&v31[33] = v29[2];
    *&v30 = v13;
    *(&v30 + 1) = 0x4010000000000000;
    v31[0] = v33;
    *&v31[49] = v29[3];
    static AccessibilityChildBehavior.combine.getter();
    v14 = sub_1000CE6B8(&qword_1019102C8, &qword_1011EE110);
    v15 = sub_1000414C8(&qword_1019102D0, &qword_1019102C8, &qword_1011EE110, &protocol conformance descriptor for HStack<A>);
    View.accessibilityElement(children:)();
    (*(v21 + 8))(v7, v22);
    *v54 = *&v31[80];
    *&v54[16] = *&v31[96];
    v55 = *&v31[112];
    v56 = v31[128];
    v50 = *&v31[16];
    v51 = *&v31[32];
    v52 = *&v31[48];
    v53 = *&v31[64];
    v48 = v30;
    v49 = *v31;
    sub_100024F64(&v48, &qword_1019102C8, &qword_1011EE110);
    *&v30 = v14;
    *(&v30 + 1) = v15;
    swift_getOpaqueTypeConformance2();
    v16 = v20;
    View.accessibility(identifier:)();
    (*(v23 + 8))(v10, v16);
    sub_1000D2DFC(v12, v26, &qword_1019102B8, &qword_1011EE100);
    swift_storeEnumTagMultiPayload();
    sub_1001C95A0();
    sub_1001C96CC();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v12, &qword_1019102B8, &qword_1011EE100);
  }

  else
  {
    v18 = static VerticalAlignment.center.getter();
    v33 = 0;
    sub_1001B4798(v1, &v48);
    v38 = v52;
    v39 = v53;
    v40[0] = *v54;
    *(v40 + 9) = *&v54[9];
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47[0] = *v54;
    *(v47 + 9) = *&v54[9];
    sub_1000D2DFC(&v34, &v30, &qword_1019102C0, &qword_1011EE108);
    sub_100024F64(&v41, &qword_1019102C0, &qword_1011EE108);
    *(&v32[4] + 7) = v38;
    *(&v32[5] + 7) = v39;
    *(&v32[6] + 7) = v40[0];
    v32[7] = *(v40 + 9);
    *(v32 + 7) = v34;
    *(&v32[1] + 7) = v35;
    *(&v32[2] + 7) = v36;
    *(&v32[3] + 7) = v37;
    *&v31[65] = v32[4];
    *&v31[81] = v32[5];
    *&v31[97] = v32[6];
    *&v31[113] = *(v40 + 9);
    *&v31[1] = v32[0];
    *&v31[17] = v32[1];
    *&v31[33] = v32[2];
    *&v30 = v18;
    *(&v30 + 1) = 0x4010000000000000;
    v31[0] = v33;
    *&v31[49] = v32[3];
    sub_1000CE6B8(&qword_1019102C8, &qword_1011EE110);
    sub_1000414C8(&qword_1019102D0, &qword_1019102C8, &qword_1011EE110, &protocol conformance descriptor for HStack<A>);
    View.accessibility(identifier:)();
    *v54 = *&v31[80];
    *&v54[16] = *&v31[96];
    v55 = *&v31[112];
    v56 = v31[128];
    v50 = *&v31[16];
    v51 = *&v31[32];
    v52 = *&v31[48];
    v53 = *&v31[64];
    v48 = v30;
    v49 = *v31;
    sub_100024F64(&v48, &qword_1019102C8, &qword_1011EE110);
    sub_1000D2DFC(v3, v26, &qword_1019102A0, &qword_1011EE0E8);
    swift_storeEnumTagMultiPayload();
    sub_1001C95A0();
    sub_1001C96CC();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v3, &qword_1019102A0, &qword_1011EE0E8);
  }
}

uint64_t sub_1001B43C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910140, &qword_1011EDFF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  Image.init(systemName:)();
  v7 = enum case for Image.TemplateRenderingMode.template(_:);
  v8 = type metadata accessor for Image.TemplateRenderingMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v39 = Image.renderingMode(_:)();

  sub_100024F64(v6, &qword_101910140, &qword_1011EDFF0);
  v38 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  static Font.caption.getter();
  static Font.Weight.bold.getter();
  v36 = Font.weight(_:)();

  v35 = swift_getKeyPath();
  v10 = *(a1 + 24);
  *&v43[0] = *(a1 + 16);
  *(&v43[0] + 1) = v10;
  sub_1000E5580();

  v11 = Text.init<A>(_:)();
  v15 = *a1;
  if (*a1)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v15;
    static Published.subscript.getter();

    sub_1001AD984(v43[0], v16, v17, v18 & 1, v19, &v45);
    sub_1000F0A40(v16, v17, v18 & 1);

    v22 = v46;
    v21 = v47;
    v24 = v47;
    v23 = v48;
    v41[2] = v47;
    v41[3] = v48;
    v25 = v48;
    v41[4] = v49;
    *(a2 + 104) = v49;
    *(a2 + 88) = v23;
    *(a2 + 72) = v21;
    v41[0] = v45;
    v27 = v45;
    v26 = v45;
    v41[1] = v46;
    *(a2 + 56) = v46;
    v28 = v50;
    v42 = v50;
    v29 = v38;
    v31 = v36;
    v30 = KeyPath;
    *a2 = v39;
    *(a2 + 8) = v30;
    v32 = v35;
    *(a2 + 16) = v29;
    *(a2 + 24) = v32;
    *(a2 + 32) = v31;
    *(a2 + 120) = v28;
    *(a2 + 40) = v26;
    v43[0] = v27;
    v43[1] = v22;
    v44 = v50;
    v43[3] = v25;
    v43[4] = v49;
    v43[2] = v24;

    sub_1000D2DFC(v41, &v40, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v43, &qword_1019100D0, &qword_1011EDFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910140, &qword_1011EDFF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  Image.init(systemName:)();
  v7 = enum case for Image.TemplateRenderingMode.template(_:);
  v8 = type metadata accessor for Image.TemplateRenderingMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v40 = Image.renderingMode(_:)();

  sub_100024F64(v6, &qword_101910140, &qword_1011EDFF0);
  v10 = [objc_opt_self() _maps_systemGrayColor];
  v39 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v37 = static Font.caption.getter();
  v36 = swift_getKeyPath();
  v11 = *(a1 + 40);
  *&v44[0] = *(a1 + 32);
  *(&v44[0] + 1) = v11;
  sub_1000E5580();

  v12 = Text.init<A>(_:)();
  v16 = *a1;
  if (*a1)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v16;
    static Published.subscript.getter();

    sub_1001AD984(v44[0], v17, v18, v19 & 1, v20, &v46);
    sub_1000F0A40(v17, v18, v19 & 1);

    v23 = v47;
    v22 = v48;
    v25 = v48;
    v24 = v49;
    v42[2] = v48;
    v42[3] = v49;
    v26 = v49;
    v42[4] = v50;
    *(a2 + 104) = v50;
    *(a2 + 88) = v24;
    *(a2 + 72) = v22;
    v42[0] = v46;
    v28 = v46;
    v27 = v46;
    v42[1] = v47;
    *(a2 + 56) = v47;
    v29 = v51;
    v43 = v51;
    v30 = v39;
    v32 = v37;
    v31 = KeyPath;
    *a2 = v40;
    *(a2 + 8) = v31;
    v33 = v36;
    *(a2 + 16) = v30;
    *(a2 + 24) = v33;
    *(a2 + 32) = v32;
    *(a2 + 120) = v29;
    *(a2 + 40) = v27;
    v44[0] = v28;
    v44[1] = v23;
    v45 = v51;
    v44[3] = v26;
    v44[4] = v50;
    v44[2] = v25;

    sub_1000D2DFC(v42, &v41, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v44, &qword_1019100D0, &qword_1011EDFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_1019102E8, &qword_1011EE118);
  __chkstk_darwin(v4);
  v6 = v88 - v5;
  v107 = sub_1000CE6B8(&qword_1019102F0, &qword_1011EE120);
  __chkstk_darwin(v107);
  v8 = v88 - v7;
  v105 = sub_1000CE6B8(&qword_1019102F8, &qword_1011EE128);
  __chkstk_darwin(v105);
  v106 = v88 - v9;
  v10 = type metadata accessor for AccessibilityTraits();
  v101 = *(v10 - 1);
  v102 = v10;
  __chkstk_darwin(v10);
  v100 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1000CE6B8(&qword_101910300, &qword_1011EE130);
  __chkstk_darwin(v108);
  v98 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = v88 - v14;
  __chkstk_darwin(v15);
  v103 = v88 - v16;
  __chkstk_darwin(v17);
  v104 = v88 - v18;
  v19 = type metadata accessor for AttributedString();
  __chkstk_darwin(v19 - 8);
  v97 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v21 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = *&v123[0];
  if (!*&v123[0])
  {
    goto LABEL_7;
  }

  v23 = [*&v123[0] name];
  if (!v23)
  {

LABEL_7:
    AttributedString.init(stringLiteral:)();
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    v39 = EnvironmentObject.init()();
    v41 = v40;
    KeyPath = swift_getKeyPath();
    v43 = _s5LabelVMa(0);
    *&v6[v43[12]] = KeyPath;
    sub_1000CE6B8(&qword_10190A1A0, &unk_1011E53B0);
    swift_storeEnumTagMultiPayload();
    v44 = &v6[v43[5]];
    *v44 = 0;
    *(v44 + 1) = 0;
    *&v6[v43[6]] = 0;
    *&v6[v43[7]] = 0;
    *&v6[v43[8]] = 0;
    *&v6[v43[9]] = 0;
    v45 = &v6[v43[10]];
    *v45 = 1;
    v45[8] = 0;
    v46 = &v6[v43[11]];
    *v46 = v39;
    v46[1] = v41;
    v47 = static Color.clear.getter();
    v48 = swift_getKeyPath();
    v49 = &v6[*(v4 + 36)];
    *v49 = v48;
    v49[1] = v47;
    sub_1001C97B4();
    View.accessibilityHidden(_:)();
    sub_100024F64(v6, &qword_1019102E8, &qword_1011EE118);
    sub_1000D2DFC(v8, v106, &qword_1019102F0, &qword_1011EE120);
    swift_storeEnumTagMultiPayload();
    sub_1001C989C();
    sub_1001C9984();
    _ConditionalContent<>.init(storage:)();
    v50 = v8;
    v51 = &qword_1019102F0;
    v52 = &qword_1011EE120;
    return sub_100024F64(v50, v51, v52);
  }

  v90 = v22;
  v91 = a1;
  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  v92._countAndFlagsBits = v25;
  v92._object = v27;
  v29._countAndFlagsBits = v25;
  v29._object = v27;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v29);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
  LocalizedStringKey.init(stringInterpolation:)();
  v31 = Text.init(_:tableName:bundle:comment:)();
  v34 = *v2;
  if (*v2)
  {
    v35 = v31;
    v36 = v32;
    v37 = v33;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v34;
    static Published.subscript.getter();

    if (v123[0])
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v53 = Text.foregroundColor(_:)();
    v94 = v54;
    v95 = v53;
    v93 = v55;
    v96 = v56;

    sub_1000F0A40(v35, v36, v37 & 1);

    if (*(v2 + 88))
    {
      v57 = v38[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase];

      object = v92._object;
      if (v57 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        sub_1001B5810(v92._countAndFlagsBits, object, LOBYTE(v123[0]), v97);
        v59 = Text.init(_:)();
LABEL_14:
        v65 = v59;
        v97 = v60;
        v66 = v61;
        v67 = v62;
        v88[0] = v59;
        v88[1] = v62;
        v68 = swift_allocObject();
        v69 = *(v2 + 48);
        *(v68 + 48) = *(v2 + 32);
        *(v68 + 64) = v69;
        *(v68 + 80) = *(v2 + 64);
        *(v68 + 89) = *(v2 + 73);
        v70 = *(v2 + 16);
        *(v68 + 16) = *v2;
        *(v68 + 32) = v70;
        v71 = v90;
        *(v68 + 112) = v90;
        *&v120 = sub_1001CD070;
        *(&v120 + 1) = v68;
        sub_1001C4D78(v2, v123);
        v90 = v71;

        v89 = v66;
        sub_1001B5D44(v2, v65, v97, v66 & 1, v67, v121);

        v117 = v121[7];
        v118 = v121[8];
        v119 = v122;
        v113 = v121[3];
        v114 = v121[4];
        v115 = v121[5];
        v116 = v121[6];
        v109 = v120;
        v110 = v121[0];
        v111 = v121[1];
        v112 = v121[2];
        sub_1000CE6B8(&qword_101910320, &qword_1011EE180);
        sub_1000414C8(&qword_101910318, &qword_101910320, &qword_1011EE180, &unk_1011EEA38);
        v72 = v98;
        View.accessibility(identifier:)();
        v123[8] = v117;
        v123[9] = v118;
        v124 = v119;
        v123[4] = v113;
        v123[5] = v114;
        v123[6] = v115;
        v123[7] = v116;
        v123[0] = v109;
        v123[1] = v110;
        v123[2] = v111;
        v123[3] = v112;
        sub_100024F64(v123, &qword_101910320, &qword_1011EE180);
        v73 = v99;
        ModifiedContent<>.accessibilityAutomationType(_:)();
        sub_100024F64(v72, &qword_101910300, &qword_1011EE130);
        v74 = v100;
        static AccessibilityTraits.isButton.getter();
        v75 = v103;
        ModifiedContent<>.accessibilityRemoveTraits(_:)();
        (*(v101 + 8))(v74, v102);
        sub_100024F64(v73, &qword_101910300, &qword_1011EE130);
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v76._countAndFlagsBits = 0x206F74206F47;
        v76._object = 0xE600000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v76);
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v92);

        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v77);
        LocalizedStringKey.init(stringInterpolation:)();
        v78 = Text.init(_:tableName:bundle:comment:)();
        v80 = v79;
        LOBYTE(v74) = v81;
        v82 = swift_allocObject();
        v83 = *(v2 + 48);
        *(v82 + 48) = *(v2 + 32);
        *(v82 + 64) = v83;
        *(v82 + 80) = *(v2 + 64);
        *(v82 + 89) = *(v2 + 73);
        v84 = *(v2 + 16);
        *(v82 + 16) = *v2;
        *(v82 + 32) = v84;
        v85 = v90;
        *(v82 + 112) = v90;
        sub_1001C4D78(v2, &v109);
        v102 = v85;
        v86 = v104;
        ModifiedContent<>.accessibilityAction(named:_:)();

        sub_1000F0A40(v78, v80, v74 & 1);

        sub_100024F64(v75, &qword_101910300, &qword_1011EE130);
        sub_1000D2DFC(v86, v106, &qword_101910300, &qword_1011EE130);
        swift_storeEnumTagMultiPayload();
        sub_1001C989C();
        sub_1001C9984();
        _ConditionalContent<>.init(storage:)();
        sub_1000F0A40(v95, v94, v93 & 1);

        sub_1000F0A40(v88[0], v97, v89 & 1);

        v50 = v86;
        v51 = &qword_101910300;
        v52 = &qword_1011EE130;
        return sub_100024F64(v50, v51, v52);
      }
    }

    else
    {
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v63._countAndFlagsBits = 0x6E6F697461636F4CLL;
    v63._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
    LocalizedStringKey.init(stringInterpolation:)();
    v59 = Text.init(_:tableName:bundle:comment:)();
    goto LABEL_14;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B5810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v36 = a4;
  v6 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = &v30 - v15;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v39._object = 0x8000000101222280;
  v17._countAndFlagsBits = 0x4025206E49;
  v18._object = 0x8000000101222250;
  v39._countAndFlagsBits = 0xD000000000000023;
  v18._countAndFlagsBits = 0xD000000000000022;
  v17._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v39);
  sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1011E1D30;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000DA61C();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v38[0] = a1;
  v38[1] = a2;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  type metadata accessor for AttributedString();
  sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_1000E5580();

  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_100024F64(v8, &unk_10190D5F0, &unk_1011E78A0);

  if ((*(v34 + 48))(v11, 1, v35) == 1)
  {
    v21 = &qword_10190B850;
    v22 = &unk_10120B950;
    v23 = v11;
  }

  else
  {
    v24 = v31;
    sub_1000F11C4(v11, v31, &unk_10190D600, &qword_1011E78B0);
    v25 = v32;
    sub_1000D2DFC(v24, v32, &unk_10190D600, &qword_1011E78B0);
    if (v33)
    {
      v26 = static Color.white.getter();
    }

    else
    {
      v26 = static Color.blue.getter();
    }

    v27 = v26;
    sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
    v28 = AttributedString.subscript.modify();
    v37 = v27;
    sub_10016EB80();
    AttributedSubstring.subscript.setter();
    v28(v38, 0);
    sub_100024F64(v25, &unk_10190D600, &qword_1011E78B0);
    v23 = v24;
    v21 = &unk_10190D600;
    v22 = &qword_1011E78B0;
  }

  return sub_100024F64(v23, v21, v22);
}

uint64_t sub_1001B5D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 88))
  {
    v12 = static VerticalAlignment.center.getter();
    LOBYTE(v30[0]) = 0;
    sub_1001B60A4(a1, a2, a3, a4 & 1, a5, &v34);
    v25 = v38;
    v26 = v39;
    v27[0] = *v40;
    *(v27 + 9) = *&v40[9];
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v28[0] = v34;
    v28[1] = v35;
    v28[2] = v36;
    v28[3] = v37;
    v28[4] = v38;
    v28[5] = v39;
    v29[0] = *v40;
    *(v29 + 9) = *&v40[9];
    sub_1000D2DFC(&v21, &v32, &qword_10190FFE0, &qword_1011EDEE8);
    sub_100024F64(v28, &qword_10190FFE0, &qword_1011EDEE8);
    *&v20[71] = v25;
    *&v20[87] = v26;
    *&v20[103] = v27[0];
    *&v20[7] = v21;
    *&v20[23] = v22;
    *&v20[39] = v23;
    *&v20[55] = v24;
    *&v33[1] = *v20;
    *&v33[17] = *&v20[16];
    *&v33[33] = *&v20[32];
    *&v33[113] = *(v27 + 9);
    *&v33[97] = *&v20[96];
    *&v33[81] = *&v20[80];
    *&v33[65] = *&v20[64];
    *&v32 = v12;
    *(&v32 + 1) = 0x4010000000000000;
    v33[0] = v30[0];
    *&v33[49] = *&v20[48];
    sub_1001C9AD0(&v32);
LABEL_5:
    v30[6] = *&v33[80];
    v30[7] = *&v33[96];
    v30[8] = *&v33[112];
    v31 = *&v33[128];
    v30[2] = *&v33[16];
    v30[3] = *&v33[32];
    v30[4] = *&v33[48];
    v30[5] = *&v33[64];
    v30[0] = v32;
    v30[1] = *v33;
    sub_1000CE6B8(&qword_101910338, &qword_1011EE190);
    sub_1000CE6B8(&qword_1019100D0, &qword_1011EDFA0);
    sub_1000414C8(&qword_101910340, &qword_101910338, &qword_1011EE190, &protocol conformance descriptor for HStack<A>);
    sub_1001C92C0();
    result = _ConditionalContent<>.init(storage:)();
    v16 = *&v40[16];
    *(a6 + 96) = *v40;
    *(a6 + 112) = v16;
    *(a6 + 128) = v41;
    *(a6 + 144) = v42;
    v17 = v37;
    *(a6 + 32) = v36;
    *(a6 + 48) = v17;
    v18 = v39;
    *(a6 + 64) = v38;
    *(a6 + 80) = v18;
    v19 = v35;
    *a6 = v34;
    *(a6 + 16) = v19;
    return result;
  }

  v13 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    static Published.subscript.getter();

    sub_1001AD984(v34, a2, a3, a4 & 1, a5, &v32);
    sub_1001C9AC4(&v32);
    goto LABEL_5;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B60A4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = Image.init(_internalSystemName:)();
  v11 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  if (*a1)
  {
    v14 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    static Published.subscript.getter();

    if (v39[0])
    {
      v16 = static Color.white.getter();
    }

    else
    {
      v16 = static Color.secondary.getter();
    }

    v17 = v16;
    v18 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001AD984(v39[0], a2, a3, a4 & 1, a5, &v31);
    v19 = v34;
    v20 = v32;
    v21 = v33;
    v37[2] = v33;
    v37[3] = v34;
    v22 = v34;
    v37[4] = v35;
    *(a6 + 104) = v35;
    *(a6 + 88) = v19;
    *(a6 + 72) = v21;
    v23 = v33;
    v24 = v31;
    v25 = v31;
    v37[0] = v31;
    v37[1] = v32;
    *(a6 + 56) = v32;
    v26 = v36;
    v38 = v36;
    *a6 = v10;
    *(a6 + 8) = v14;
    *(a6 + 16) = v11;
    *(a6 + 24) = v18;
    *(a6 + 32) = v17;
    *(a6 + 120) = v26;
    *(a6 + 40) = v24;
    v39[0] = v25;
    v39[1] = v20;
    v40 = v36;
    v39[3] = v22;
    v39[4] = v35;
    v39[2] = v23;

    sub_1000D2DFC(v37, v30, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v39, &qword_1019100D0, &qword_1011EDFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B6380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 16);
  v8 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v12, &qword_101910330, &qword_1011EE188);
    (*(v5 + 8))(v7, v4);
    v8 = v11;
  }

  v11 = a2;
  v8(&v11);
}

uint64_t sub_1001B6564(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(v7, v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  v9 = a1 + *(_s13TappableEntryVMa(0) + 24);
  v11 = *(v9 + *(type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0) + 24));
  v7(&v11);
}

uint64_t sub_1001B66FC@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190F380, &qword_1011F2120);
  __chkstk_darwin(v4 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v54 = type metadata accessor for AttributedString();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    static Published.subscript.getter();

    if ((v56 & 1) == 0 || (v13 = _s13TappableEntryVMa(0), v14 = a1 + *(v13 + 24), v15 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0), v16 = *(v15 + 20), v17 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0), v18 = v16 + v17[12], v51 = v14, sub_1000D2DFC(&v14[v18], v8, &qword_10190F380, &qword_1011F2120), v19 = *(v9 + 48), v20 = v19(v8, 1, v54), v52 = a1, v21 = v20, sub_100024F64(v8, &qword_10190F380, &qword_1011F2120), v22 = v21 == 1, a1 = v52, v22))
    {
      v13 = _s13TappableEntryVMa(0);
      v23 = a1 + *(v13 + 24);
      v15 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
      v24 = *(v15 + 20);
      v17 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v25 = v9;
      v26 = v9;
      v27 = a1;
      v28 = *(v25 + 16);
      v29 = &v23[v24 + v17[5]];
      v31 = v54;
      v30 = v55;
      v28(v55, v29, v54);
LABEL_8:
      v28(a2, v30, v31);
      _s13TappableEntryVMa(0);
      v34 = v27 + *(v13 + 24);
      type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
      v35 = &v34[*(v15 + 20)];
      type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v36 = v17[7];
      v37 = &v35[v17[6]];
      v38 = v37[1];
      v52 = *v37;
      v39 = *&v35[v36];
      v40 = *&v35[v17[8]];
      v41 = &v35[v17[11]];
      v54 = *v41;
      LODWORD(v53) = v41[8];
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);

      v42 = EnvironmentObject.init()();
      v44 = v43;
      (*(v26 + 8))(v55, v31);
      KeyPath = swift_getKeyPath();
      v46 = _s5LabelVMa(0);
      *&a2[v46[12]] = KeyPath;
      sub_1000CE6B8(&qword_10190A1A0, &unk_1011E53B0);
      result = swift_storeEnumTagMultiPayload();
      v48 = &a2[v46[5]];
      *v48 = v52;
      *(v48 + 1) = v38;
      *&a2[v46[6]] = v39;
      *&a2[v46[7]] = v40;
      *&a2[v46[8]] = 0;
      *&a2[v46[9]] = 0;
      v49 = &a2[v46[10]];
      *v49 = v54;
      v49[8] = v53;
      v50 = &a2[v46[11]];
      *v50 = v42;
      *(v50 + 1) = v44;
      return result;
    }

    v32 = v53;
    sub_1000D2DFC(&v51[v18], v53, &qword_10190F380, &qword_1011F2120);
    v33 = v54;
    if (v19(v32, 1, v54) != 1)
    {
      v30 = v55;
      (*(v9 + 32))(v55, v32, v33);
      v28 = *(v9 + 16);
      v31 = v33;
      v26 = v9;
      v27 = v52;
      goto LABEL_8;
    }

    __break(1u);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B6C1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1001C48C0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s13TappableEntryVMa);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001C4928(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, _s13TappableEntryVMa);
  *a2 = sub_1001C9AD8;
  *(a2 + 1) = v7;
  v8 = sub_1000CE6B8(&qword_101910348, &qword_1011EE198);
  return sub_1001B66FC(v2, &a2[*(v8 + 36)]);
}

uint64_t sub_1001B6D54()
{
  v1 = _s5LabelVMa(0);
  v2 = (v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_101910388, &qword_1011EE1C0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 16))(v4, v0, v8);
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  v9 = EnvironmentObject.init()();
  v11 = v10;
  *&v4[v2[14]] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0, &unk_1011E53B0);
  swift_storeEnumTagMultiPayload();
  v12 = &v4[v2[7]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[v2[8]] = 0;
  *&v4[v2[9]] = 0;
  *&v4[v2[10]] = 0;
  *&v4[v2[11]] = 0;
  v13 = &v4[v2[12]];
  *v13 = 1;
  v13[8] = 0;
  v14 = &v4[v2[13]];
  *v14 = v9;
  v14[1] = v11;
  if (*(v0 + *(_s5HoursVMa(0) + 20)))
  {
    v15 = 10.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_1001C4928(v4, v7, _s5LabelVMa);
  *&v7[*(v5 + 36)] = v15;
  sub_1001C9CD0();
  View.accessibility(identifier:)();
  return sub_100024F64(v7, &qword_101910388, &qword_1011EE1C0);
}

uint64_t sub_1001B6FE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Button();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  v14 = v2;
  v15 = v3;
  v16 = v1;

  Button.init(action:label:)();
  swift_getWitnessTable();
  sub_10010ADFC();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10010ADFC();
  return (v11)(v10, v4);
}

uint64_t sub_1001B7188(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16BorderlessButtonVMa(0, v6, v7, v8);
  sub_10010ADFC();
  sub_10010ADFC();
  return (*(v3 + 8))(v5, a2);
}

void sub_1001B7284(uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v30 = 0;
  sub_1001B7490(v2, &v18);
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v42[8] = v26;
  v42[9] = v27;
  v42[10] = v28;
  v42[4] = v22;
  v42[5] = v23;
  v42[6] = v24;
  v42[7] = v25;
  v42[0] = v18;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v21;
  sub_1000D2DFC(&v31, &v17, &qword_101910398, &qword_1011EE1C8);
  sub_100024F64(v42, &qword_101910398, &qword_1011EE1C8);
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[167] = v41;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v29[39] = v33;
  v5 = v30;
  v6 = static Edge.Set.leading.getter();
  _s28RealTimeAvailableChargerViewVMa(0);
  sub_1000CE6B8(&qword_10191DA40, &unk_1012012A0);
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v7 = *&v29[144];
  *(a2 + 145) = *&v29[128];
  *(a2 + 161) = v7;
  *(a2 + 177) = *&v29[160];
  v8 = *&v29[80];
  *(a2 + 81) = *&v29[64];
  *(a2 + 97) = v8;
  v9 = *&v29[112];
  *(a2 + 113) = *&v29[96];
  *(a2 + 129) = v9;
  v10 = *&v29[16];
  *(a2 + 17) = *v29;
  *(a2 + 33) = v10;
  v11 = *&v29[48];
  *(a2 + 49) = *&v29[32];
  *a2 = v4;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = v5;
  v12 = *&v29[175];
  *(a2 + 65) = v11;
  *(a2 + 192) = v12;
  *(a2 + 200) = 0xD000000000000018;
  *(a2 + 208) = 0x80000001012222D0;
  *(a2 + 216) = 13;
  *(a2 + 224) = v6;
  *(a2 + 232) = v13;
  *(a2 + 240) = v14;
  *(a2 + 248) = v15;
  *(a2 + 256) = v16;
  *(a2 + 264) = 0;
}

uint64_t sub_1001B7490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);

  v34 = Image.init(systemName:)();
  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v33 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v31 = static Color.secondary.getter();
  v30 = swift_getKeyPath();
  v5 = *(a1 + *(_s28RealTimeAvailableChargerViewVMa(0) + 32));
  static UnitPoint.center.getter();
  v7 = v6;
  v9 = v8;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v52);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.init(stringInterpolation:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v28 = v13;
  v29 = v14;
  v16 = v15;
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  v27 = Font.weight(_:)();

  v26 = swift_getKeyPath();
  v17 = v16 & 1;
  LOBYTE(v52._countAndFlagsBits) = v16 & 1;
  v24 = sub_100220C10();
  v25 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LODWORD(v52._countAndFlagsBits))
  {

    v18 = Image.init(systemName:)();
    static Font.subheadline.getter();
    static Font.Weight.medium.getter();
    v19 = Font.weight(_:)();

    v20 = swift_getKeyPath();
    v21 = sub_100220C10();
    v22 = swift_getKeyPath();
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v22 = 0;
    v21 = 0;
  }

  *&v43 = v34;
  *(&v43 + 1) = KeyPath;
  *&v44 = v33;
  *(&v44 + 1) = v30;
  *&v45 = v31;
  *(&v45 + 1) = v5;
  *&v46 = v7;
  *(&v46 + 1) = v9;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  *&v47 = v12;
  *(&v47 + 1) = v28;
  LOBYTE(v48) = v17;
  DWORD1(v48) = *(v66 + 3);
  *(&v48 + 1) = v66[0];
  *(&v48 + 1) = v29;
  LOWORD(v49) = 256;
  WORD3(v49) = v65;
  *(&v49 + 2) = v64;
  *(&v49 + 1) = v26;
  *&v50 = v27;
  *(&v50 + 1) = v25;
  v51 = v24;
  v41 = v49;
  v42 = v50;
  v39 = v47;
  v40 = v48;
  sub_1000D2DFC(&v43, &v52, &qword_1019103A0, &qword_1011EE260);
  sub_1000D2DFC(&v47, &v52, &qword_10190FEF0, &unk_1011EDE60);
  sub_1001C9DB8(v18, v20, v19, v22, v21);
  sub_1001C9E28(v18, v20, v19, v22, v21);
  *(a2 + 96) = v41;
  *(a2 + 112) = v42;
  *(a2 + 32) = v37;
  *(a2 + 48) = v38;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  *a2 = v35;
  *(a2 + 16) = v36;
  *(a2 + 128) = v24;
  *(a2 + 136) = v18;
  *(a2 + 144) = v20;
  *(a2 + 152) = v19;
  *(a2 + 160) = v22;
  *(a2 + 168) = v21;
  sub_1001C9E28(v18, v20, v19, v22, v21);
  v52._countAndFlagsBits = v12;
  v52._object = v28;
  v53 = v17;
  *v54 = v66[0];
  *&v54[3] = *(v66 + 3);
  v55 = v29;
  v56 = 256;
  v57 = v64;
  v58 = v65;
  v59 = v26;
  v60 = v27;
  v61 = v25;
  v62 = v24;
  sub_100024F64(&v52, &qword_10190FEF0, &unk_1011EDE60);
  v63[0] = v34;
  v63[1] = KeyPath;
  v63[2] = v33;
  v63[3] = v30;
  v63[4] = v31;
  v63[5] = v5;
  v63[6] = v7;
  v63[7] = v9;
  return sub_100024F64(v63, &qword_1019103A0, &qword_1011EE260);
}

uint64_t sub_1001B79B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_1000CE6B8(&qword_1019103A8, &qword_1011EE268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - v5;
  v7 = sub_1000CE6B8(&qword_1019103B0, &qword_1011EE270);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v61 - v9;
  v62 = sub_1000CE6B8(&qword_1019103B8, &qword_1011EE278);
  __chkstk_darwin(v62);
  v65 = &v61 - v11;
  v63 = sub_1000CE6B8(&qword_1019103C0, &qword_1011EE280);
  __chkstk_darwin(v63);
  v68 = &v61 - v12;
  v64 = sub_1000CE6B8(&qword_1019103C8, &qword_1011EE288);
  __chkstk_darwin(v64);
  v67 = &v61 - v13;
  v66 = sub_1000CE6B8(&qword_1019103D0, &qword_1011EE290);
  __chkstk_darwin(v66);
  v69 = &v61 - v14;
  static Axis.Set.horizontal.getter();
  v71 = v2;
  sub_1000CE6B8(&qword_1019103D8, &qword_1011EE298);
  sub_1000414C8(&qword_1019103E0, &qword_1019103D8, &qword_1011EE298, &protocol conformance descriptor for LazyHStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v15 = swift_allocObject();
  v16 = v2[3];
  v15[3] = v2[2];
  v15[4] = v16;
  v15[5] = v2[4];
  v17 = v2[1];
  v15[1] = *v2;
  v15[2] = v17;
  sub_1001C4C5C(v2, v72);
  sub_1000414C8(&qword_1019103E8, &qword_1019103A8, &qword_1011EE268, &protocol conformance descriptor for ScrollView<A>);
  View.onScrollPhaseChange(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = &v10[*(sub_1000CE6B8(&qword_1019103F0, qword_1011EE2A0) + 36)];
  *v18 = 0x6C6C6F726373;
  *(v18 + 1) = 0xE600000000000000;
  v19 = &v10[*(v8 + 44)];
  *v19 = xmmword_1011EC710;
  v19[16] = 13;
  v20 = *(v2 + 2);
  if (v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v22 = v65;
    sub_1000F11C4(v10, v65, &qword_1019103B0, &qword_1011EE270);
    v23 = (v22 + *(v62 + 36));
    v24 = v72[5];
    v23[4] = v72[4];
    v23[5] = v24;
    v23[6] = v72[6];
    v25 = v72[1];
    *v23 = v72[0];
    v23[1] = v25;
    v26 = v72[3];
    v23[2] = v72[2];
    v23[3] = v26;
    static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v78 = v27;
    v79 = v28;
    v80 = v29;
    v81 = v30;
    v82 = 0;
    v31 = v68;
    SafeAreaPaddingModifier.init(edges:insets:)();
    sub_1000F11C4(v22, v31, &qword_1019103B8, &qword_1011EE278);
    static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v73 = v32;
    v74 = v33;
    v75 = v34;
    v76 = v35;
    v77 = 0;
    v36 = v67;
    SafeAreaPaddingModifier.init(edges:insets:)();
    sub_1000F11C4(v31, v36, &qword_1019103C0, &qword_1011EE280);
    v37 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v69;
    sub_1000F11C4(v36, v69, &qword_1019103C8, &qword_1011EE288);
    v47 = v46 + *(v66 + 36);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    v48 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v46;
    v58 = v70;
    sub_1000F11C4(v57, v70, &qword_1019103D0, &qword_1011EE290);
    result = sub_1000CE6B8(&qword_1019103F8, &qword_1011EE300);
    v60 = v58 + *(result + 36);
    *v60 = v48;
    *(v60 + 8) = v50;
    *(v60 + 16) = v52;
    *(v60 + 24) = v54;
    *(v60 + 32) = v56;
    *(v60 + 40) = 0;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B8144(uint64_t a1)
{
  v1 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v1);
  static VerticalAlignment.center.getter();
  sub_1001C3C48(&qword_10190F488, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1000CE6B8(&qword_101910410, &qword_1011EE318);
  sub_1001C9EAC();
  return LazyHStack.init(alignment:spacing:pinnedViews:content:)();
}

id sub_1001B827C(uint64_t a1)
{
  result = [*(*(a1 + 8) + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) _searchResultPhotoCarousel];
  if (result)
  {
    v3 = result;
    sub_1000CE6B8(&qword_10190ABA0, qword_1011E4C20);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else if (((v5 - 1) & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v5 - 1;
      swift_getKeyPath();
      v6 = swift_allocObject();
      v7 = *(a1 + 48);
      v6[3] = *(a1 + 32);
      v6[4] = v7;
      v6[5] = *(a1 + 64);
      v8 = *(a1 + 16);
      v6[1] = *a1;
      v6[2] = v8;
      sub_1001C4C5C(a1, v9);
      sub_1000CE6B8(&qword_101910458, &qword_1011EE358);
      sub_1000CE6B8(&qword_101910428, &qword_1011EE320);
      sub_1001CA0AC();
      sub_1001C9F30();
      return ForEach<>.init(_:id:content:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B8424(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101910438, &qword_1011EE328);
  __chkstk_darwin(v8);
  v10 = (&v19 - v9);
  v11 = sub_1000CE6B8(&qword_101910428, &qword_1011EE320);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = *a1;
  *v10 = static Alignment.leading.getter();
  v10[1] = v15;
  v16 = sub_1000CE6B8(&qword_101910470, &qword_1011EE360);
  sub_1001B865C(a2, v14, v10 + *(v16 + 44));
  v17 = v10 + *(v8 + 36);
  *v17 = xmmword_1011EC720;
  v17[16] = 3;
  sub_1001C9FEC();
  View.accessibilityAutomationType(_:)();
  sub_100024F64(v10, &qword_101910438, &qword_1011EE328);
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v5 + 8))(v7, v4);
  return sub_100024F64(v13, &qword_101910428, &qword_1011EE320);
}

uint64_t sub_1001B865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v94 = a3;
  v4 = type metadata accessor for Image.ResizingMode();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101910478, &qword_1011EE368);
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v84 = &v74 - v7;
  v8 = sub_1000CE6B8(&qword_101910480, &qword_1011EE370);
  __chkstk_darwin(v8 - 8);
  v93 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v74 - v11;
  v12 = type metadata accessor for Color.RGBColorSpace();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_101910488, &qword_1011EE378);
  __chkstk_darwin(v16);
  v89 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  v24 = [objc_opt_self() tertiarySystemFillColor];
  v87 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  (*(v13 + 104))(v15, enum case for Color.RGBColorSpace.sRGBLinear(_:), v12);
  v25 = Color.init(_:white:opacity:)();
  v88 = a1;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v26;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v105 = 1;
    v29 = &v20[*(v16 + 36)];
    v80 = type metadata accessor for RoundedRectangle();
    v30 = *(v80 + 20);
    v31 = enum case for RoundedCornerStyle.continuous(_:);
    v32 = type metadata accessor for RoundedCornerStyle();
    v33 = *(v32 - 8);
    v34 = *(v33 + 104);
    v79 = v31;
    v77 = v33 + 104;
    v78 = v34;
    v34(&v29[v30], v31, v32);
    __asm { FMOV            V0.2D, #6.0 }

    v76 = _Q0;
    *v29 = _Q0;
    v40 = sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0);
    *&v29[*(v40 + 36)] = 256;
    v41 = v87;
    *v20 = KeyPath;
    *(v20 + 1) = v41;
    *(v20 + 2) = v27;
    *(v20 + 24) = xmmword_1011EC730;
    *(v20 + 5) = 0x4010000000000000;
    v42 = v103;
    *(v20 + 3) = v102;
    *(v20 + 4) = v42;
    *(v20 + 5) = v104;
    *(v20 + 12) = 0;
    *(v20 + 52) = 257;
    sub_1000F11C4(v20, v23, &qword_101910488, &qword_1011EE378);
    v43 = v88;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v44 = v95[0];
    v45 = v23;
    if (v95[0])
    {
      if (*(v95[0] + 16))
      {
        v46 = sub_100298E64(v85);
        if (v47)
        {
          v48 = *(*(v44 + 56) + 8 * v46);
          if (v48)
          {
            v75 = v48;

            Image.init(uiImage:)();
            v50 = v82;
            v49 = v83;
            v51 = *(v82 + 104);
            KeyPath = v40;
            v52 = v81;
            v51(v81, enum case for Image.ResizingMode.stretch(_:), v83);
            v53 = Image.resizable(capInsets:resizingMode:)();

            (*(v50 + 8))(v52, v49);
            swift_getKeyPath();
            v87 = v45;
            swift_getKeyPath();
            static Published.subscript.getter();

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)();
            v99 = 1;
            *&v98[22] = v107;
            *&v98[38] = v108;
            *&v98[6] = v106;
            v96 = v53;
            *v97 = 257;
            *&v97[2] = *v98;
            *&v97[18] = *&v98[16];
            *&v97[34] = *&v98[32];
            *&v97[48] = *(&v108 + 1);
            v54 = swift_allocObject();
            v55 = v43[3];
            *(v54 + 48) = v43[2];
            *(v54 + 64) = v55;
            *(v54 + 80) = v43[4];
            v56 = v43[1];
            *(v54 + 16) = *v43;
            *(v54 + 32) = v56;
            v57 = v85;
            *(v54 + 96) = v85;
            sub_1001C4C5C(v43, v95);
            sub_1000CE6B8(&qword_101910498, &unk_1011EE3D0);
            sub_1001CA1F8();
            v58 = v84;
            v45 = v87;
            View.onTapGesture(count:perform:)();

            v100[1] = *v97;
            v100[2] = *&v97[16];
            v100[3] = *&v97[32];
            v101 = *&v97[48];
            v100[0] = v96;
            sub_100024F64(v100, &qword_101910498, &unk_1011EE3D0);
            v59 = swift_allocObject();
            *(v59 + 16) = v57;
            v60 = *v43;
            *(v59 + 40) = v43[1];
            v61 = v43[3];
            *(v59 + 56) = v43[2];
            *(v59 + 72) = v61;
            *(v59 + 88) = v43[4];
            *(v59 + 24) = v60;
            v62 = &v58[*(sub_1000CE6B8(&qword_1019104B8, &qword_1011EE3E0) + 36)];
            *v62 = sub_1001CA308;
            v62[1] = v59;
            v62[2] = 0;
            v62[3] = 0;
            v63 = &v58[*(sub_1000CE6B8(&qword_1019104C0, &qword_1011EE3E8) + 36)];
            *v63 = 0;
            *(v63 + 4) = 257;
            v64 = &v58[*(sub_1000CE6B8(&qword_1019104C8, &qword_1011EE3F0) + 36)];
            v78(&v64[*(v80 + 20)], v79, v32);
            *v64 = v76;
            *&v64[*(KeyPath + 36)] = 256;
            v65 = v91;
            v58[*(v91 + 36)] = 1;
            v66 = v58;
            v67 = v92;
            sub_1000F11C4(v66, v92, &qword_101910478, &qword_1011EE368);
            (*(v90 + 56))(v67, 0, 1, v65);
            sub_1001C4C5C(v43, v95);
LABEL_9:
            v68 = v89;
            sub_1000D2DFC(v45, v89, &qword_101910488, &qword_1011EE378);
            v69 = v93;
            sub_1000D2DFC(v67, v93, &qword_101910480, &qword_1011EE370);
            v70 = v45;
            v71 = v94;
            sub_1000D2DFC(v68, v94, &qword_101910488, &qword_1011EE378);
            v72 = sub_1000CE6B8(&qword_101910490, &qword_1011EE3C8);
            sub_1000D2DFC(v69, v71 + *(v72 + 48), &qword_101910480, &qword_1011EE370);
            sub_100024F64(v67, &qword_101910480, &qword_1011EE370);
            sub_100024F64(v70, &qword_101910488, &qword_1011EE378);
            sub_100024F64(v69, &qword_101910480, &qword_1011EE370);
            return sub_100024F64(v68, &qword_101910488, &qword_1011EE378);
          }
        }
      }
    }

    v67 = v92;
    (*(v90 + 56))(v92, 1, 1, v91);
    goto LABEL_9;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

id sub_1001B91C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  v8 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v12, &qword_1019104D0, &qword_1011EE3F8);
    (*(v5 + 8))(v7, v4);
    v8 = v11;
  }

  v11 = a2;
  v8(&v11);

  return [objc_opt_self() didTapPhotoCarouselPhoto:a2];
}

id sub_1001B9374(uint64_t a1, uint64_t a2)
{
  result = [*(*(a2 + 8) + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) _searchResultPhotoCarousel];
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = result;
  sub_1000CE6B8(&qword_10190ABA0, qword_1011E4C20);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 - 1 == a1)
  {
    v7 = objc_opt_self();

    return [v7 didScrollPhotoCarouselToEnd];
  }

  return result;
}

uint64_t sub_1001B9470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScrollGeometry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static ScrollPhase.== infix(_:_:)();
  if (result)
  {
    result = static ScrollPhase.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      v24 = *(a4 + 56);
      v25 = *(a4 + 72);
      v26 = v25;
      v22 = *(a4 + 56);
      v23 = *(a4 + 72);
      sub_1000D2DFC(&v26, &v19, &qword_101910400, &qword_1011EE308);
      sub_1000CE6B8(&qword_101910408, &qword_1011EE310);
      State.wrappedValue.getter();
      v10 = *&v19;
      ScrollPhaseChangeContext.geometry.getter();
      ScrollGeometry.contentOffset.getter();
      v12 = v11;
      v13 = *(v6 + 8);
      v13(v8, v5);
      v14 = objc_opt_self();
      v15 = &selRef_didScrollPhotoCarouselToRight;
      if (v10 >= v12)
      {
        v15 = &selRef_didScrollPhotoCarouselToLeft;
      }

      [v14 *v15];
      ScrollPhaseChangeContext.geometry.getter();
      ScrollGeometry.contentOffset.getter();
      v17 = v16;
      v13(v8, v5);
      v22 = v24;
      v23 = v25;
      State.wrappedValue.getter();
      v19 = v24;
      v20 = v25;
      v18[0] = v17;
      v18[1] = v21;
      State.wrappedValue.setter();
      return sub_100024F64(&v24, &qword_101910408, &qword_1011EE310);
    }
  }

  return result;
}

uint64_t sub_1001B96F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessibilityTraits();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_1019104D8, &qword_1011EE400);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v79 = &v61 - v13;
  v14 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v94 != 1)
  {
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v68 = v11;
  v69 = v7;
  v70 = v6;
  v71 = a1;
  v15 = *(v1 + 80);
  *&v94 = *(v1 + 72);
  *(&v94 + 1) = v15;
  v16 = sub_1000E5580();

  v67 = v16;
  v17 = Text.init<A>(_:)();
  LODWORD(v65) = v19;
  v20 = *v1;
  if (*v1)
  {
    v21 = v17;
    v22 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v20;
    static Published.subscript.getter();

    if (v94)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v25 = v65;
    v26 = Text.foregroundColor(_:)();
    v72 = v27;
    v73 = v26;
    v66 = v28;
    v74 = v29;

    sub_1000F0A40(v21, v22, v25 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v1 + 56));
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
    LocalizedStringKey.init(stringInterpolation:)();
    v33 = Text.init(_:tableName:bundle:comment:)();
    v62 = v34;
    v63 = v33;
    v35 = v34;
    v37 = v36;
    v64 = v36;
    v39 = v38;
    v65 = v38;
    v40 = swift_allocObject();
    v41 = *(v2 + 80);
    *(v40 + 80) = *(v2 + 64);
    *(v40 + 96) = v41;
    *(v40 + 112) = *(v2 + 96);
    v42 = *(v2 + 16);
    *(v40 + 16) = *v2;
    *(v40 + 32) = v42;
    v43 = *(v2 + 48);
    *(v40 + 48) = *(v2 + 32);
    *(v40 + 64) = v43;
    sub_1001C4BF4(v2, &v94);

    v44 = static VerticalAlignment.center.getter();
    v84 = 0;
    sub_1001B9F48(v2, v33, v35, v37 & 1, v39, &v94);
    v89 = v98;
    v90 = v99;
    v91[0] = v100[0];
    *(v91 + 9) = *(v100 + 9);
    v85 = v94;
    v86 = v95;
    v87 = v96;
    v88 = v97;
    v92[0] = v94;
    v92[1] = v95;
    v92[2] = v96;
    v92[3] = v97;
    v92[4] = v98;
    v92[5] = v99;
    v93[0] = v100[0];
    *(v93 + 9) = *(v100 + 9);
    sub_1000D2DFC(&v85, &v80, &qword_10190FFE0, &qword_1011EDEE8);
    sub_100024F64(v92, &qword_10190FFE0, &qword_1011EDEE8);

    *(&v83[4] + 7) = v89;
    *(&v83[5] + 7) = v90;
    *(&v83[6] + 7) = v91[0];
    v83[7] = *(v91 + 9);
    *(v83 + 7) = v85;
    *(&v83[1] + 7) = v86;
    *(&v83[2] + 7) = v87;
    *(&v83[3] + 7) = v88;
    *(&v82[4] + 1) = v83[4];
    *(&v82[5] + 1) = v83[5];
    *(&v82[6] + 1) = v83[6];
    *(&v82[7] + 1) = *(v91 + 9);
    *(v82 + 1) = v83[0];
    *(&v82[1] + 1) = v83[1];
    *(&v82[2] + 1) = v83[2];
    *&v80 = sub_1001CD034;
    *(&v80 + 1) = v40;
    *&v81 = v44;
    *(&v81 + 1) = 0x4010000000000000;
    LOBYTE(v82[0]) = v84;
    *(&v82[3] + 1) = v83[3];
    *(&v82[8] + 8) = xmmword_1011EC740;
    BYTE8(v82[9]) = 0;
    sub_1000CE6B8(&qword_1019104E0, &qword_1011EE450);
    sub_1001CA314();
    v45 = v75;
    View.accessibilityAutomationType(_:)();
    v100[2] = v82[6];
    v100[3] = v82[7];
    v101[0] = v82[8];
    *(v101 + 9) = *(&v82[8] + 9);
    v98 = v82[2];
    v99 = v82[3];
    v100[0] = v82[4];
    v100[1] = v82[5];
    v94 = v80;
    v95 = v81;
    v96 = v82[0];
    v97 = v82[1];
    sub_100024F64(&v94, &qword_1019104E0, &qword_1011EE450);
    v46 = v76;
    static AccessibilityTraits.isButton.getter();
    v47 = v68;
    v48 = v70;
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v77 + 8))(v46, v78);
    sub_100024F64(v45, &qword_1019104D8, &qword_1011EE400);
    v49 = *(v2 + 96);
    *&v80 = *(v2 + 88);
    *(&v80 + 1) = v49;

    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    v55 = swift_allocObject();
    v56 = *(v2 + 80);
    *(v55 + 80) = *(v2 + 64);
    *(v55 + 96) = v56;
    *(v55 + 112) = *(v2 + 96);
    v57 = *(v2 + 16);
    *(v55 + 16) = *v2;
    *(v55 + 32) = v57;
    v58 = *(v2 + 48);
    *(v55 + 48) = *(v2 + 32);
    *(v55 + 64) = v58;
    sub_1001C4BF4(v2, &v80);
    v59 = v79;
    ModifiedContent<>.accessibilityAction(named:_:)();

    sub_1000F0A40(v50, v52, v54 & 1);

    sub_1000F0A40(v73, v72, v66 & 1);

    sub_1000F0A40(v63, v62, v64 & 1);

    sub_100024F64(v47, &qword_1019104D8, &qword_1011EE400);
    v60 = v71;
    sub_1000F11C4(v59, v71, &qword_1019104D8, &qword_1011EE400);
    return (*(v69 + 56))(v60, 0, 1, v48);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B9F48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = Image.init(systemName:)();
  v11 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  if (*a1)
  {
    v14 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    static Published.subscript.getter();

    if (v39[0])
    {
      v16 = static Color.white.getter();
    }

    else
    {
      v16 = static Color.secondary.getter();
    }

    v17 = v16;
    v18 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001AD984(v39[0], a2, a3, a4 & 1, a5, &v31);
    v19 = v34;
    v20 = v32;
    v21 = v33;
    v37[2] = v33;
    v37[3] = v34;
    v22 = v34;
    v37[4] = v35;
    *(a6 + 104) = v35;
    *(a6 + 88) = v19;
    *(a6 + 72) = v21;
    v23 = v33;
    v24 = v31;
    v25 = v31;
    v37[0] = v31;
    v37[1] = v32;
    *(a6 + 56) = v32;
    v26 = v36;
    v38 = v36;
    *a6 = v10;
    *(a6 + 8) = v14;
    *(a6 + 16) = v11;
    *(a6 + 24) = v18;
    *(a6 + 32) = v17;
    *(a6 + 120) = v26;
    *(a6 + 40) = v24;
    v39[0] = v25;
    v39[1] = v20;
    v40 = v36;
    v39[3] = v22;
    v39[4] = v35;
    v39[2] = v23;

    sub_1000D2DFC(v37, v30, &qword_1019100D0, &qword_1011EDFA0);
    sub_100024F64(v39, &qword_1019100D0, &qword_1011EDFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BA224(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 16);
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v10, &qword_101910330, &qword_1011EE188);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = *(*(a1 + 48) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary_mapItem);
  v6(&v9);
}

uint64_t sub_1001BA418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000CE6B8(&qword_1019104F0, &qword_1011EE458);
  __chkstk_darwin(v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  __chkstk_darwin(v11);
  v28 = &v28 - v12;
  v13 = swift_allocObject();
  v14 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 64);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  *&v40 = sub_1001CD038;
  *(&v40 + 1) = v13;
  sub_1001C4990(v1, v43);

  sub_1001BA830(v1, v41);

  v37 = v41[3];
  v38 = v41[4];
  v39 = v42;
  v33 = v40;
  v34 = v41[0];
  v35 = v41[1];
  v36 = v41[2];
  sub_1000CE6B8(&qword_1019104F8, &qword_1011EE460);
  sub_1000414C8(&qword_101910500, &qword_1019104F8, &qword_1011EE460, &unk_1011EEA38);
  View.accessibility(identifier:)();
  v43[4] = v37;
  v43[5] = v38;
  v44 = v39;
  v43[0] = v33;
  v43[1] = v34;
  v43[2] = v35;
  v43[3] = v36;
  sub_100024F64(v43, &qword_1019104F8, &qword_1011EE460);
  ModifiedContent<>.accessibilityAutomationType(_:)();
  sub_100024F64(v7, &qword_1019104F0, &qword_1011EE458);
  v16 = v5;
  static AccessibilityTraits.isButton.getter();
  v17 = v28;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v30 + 8))(v16, v31);
  sub_100024F64(v10, &qword_1019104F0, &qword_1011EE458);
  v18 = *(v1 + 64);
  *&v33 = *(v2 + 56);
  *(&v33 + 1) = v18;
  sub_1000E5580();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_1001C4990(v2, &v33);
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_1000F0A40(v19, v21, v23 & 1);

  return sub_100024F64(v17, &qword_1019104F0, &qword_1011EE458);
}

uint64_t sub_1001BA830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  String.append(_:)(*(*(a1 + 48) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote));

  v4._countAndFlagsBits = 10322146;
  v4._object = 0xA300000000000000;
  String.append(_:)(v4);

  sub_1000E5580();
  v5 = Text.init<A>(_:)();
  v9 = *a1;
  if (*a1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v9;
    static Published.subscript.getter();

    sub_1001AD984(226, v10, v11, v12 & 1, v13, v18);
    sub_1000F0A40(v10, v11, v12 & 1);

    v16 = v18[3];
    *(a2 + 32) = v18[2];
    *(a2 + 48) = v16;
    *(a2 + 64) = v18[4];
    *(a2 + 80) = v19;
    v17 = v18[1];
    *a2 = v18[0];
    *(a2 + 16) = v17;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BAA0C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 16);
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v10, &qword_101910330, &qword_1011EE188);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = *(*(a1 + 48) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_mapItem);
  v6(&v9);
}

uint64_t sub_1001BABF8@<X0>(uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = type metadata accessor for AccessibilityTraits();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = _s5LabelVMa(0);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101910508, &qword_1011EE468);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v32 == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v33._object = 0x800000010121F4E0;
    v15._countAndFlagsBits = 0x64657469736956;
    v16._object = 0x800000010121F4C0;
    v33._countAndFlagsBits = 0xD00000000000002CLL;
    v16._countAndFlagsBits = 0xD000000000000018;
    v15._object = 0xE700000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v15, v33);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    v17 = EnvironmentObject.init()();
    v19 = v18;
    *&v7[v5[12]] = swift_getKeyPath();
    sub_1000CE6B8(&qword_10190A1A0, &unk_1011E53B0);
    swift_storeEnumTagMultiPayload();
    v20 = &v7[v5[5]];
    *v20 = 0xD00000000000001BLL;
    *(v20 + 1) = 0x80000001012222F0;
    *&v7[v5[6]] = 0;
    *&v7[v5[7]] = 0;
    *&v7[v5[8]] = 0;
    *&v7[v5[9]] = 0;
    v21 = &v7[v5[10]];
    *v21 = 1;
    v21[8] = 0;
    v22 = &v7[v5[11]];
    *v22 = v17;
    v22[1] = v19;
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa, &unk_1011EDCD8);
    View.accessibility(identifier:)();
    sub_1001C4CC4(v7, _s5LabelVMa);
    v23 = v28;
    static AccessibilityTraits.isButton.getter();
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v29 + 8))(v23, v30);
    sub_100024F64(v11, &qword_101910508, &qword_1011EE468);
    v24 = v31;
    sub_1000F11C4(v14, v31, &qword_101910508, &qword_1011EE468);
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v24 = v31;
  }

  return (*(v9 + 56))(v24, v25, 1, v8);
}

uint64_t sub_1001BB110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v281 = a2;
  v266 = sub_1000CE6B8(&qword_10190F390, &qword_1011ECCD0);
  __chkstk_darwin(v266);
  v269 = (&v246 - v3);
  v287 = sub_1000CE6B8(&qword_10190F398, &qword_1011ECCD8);
  __chkstk_darwin(v287);
  v271 = &v246 - v4;
  v265 = sub_1000CE6B8(&qword_10190F3A0, &qword_1011ECCE0);
  __chkstk_darwin(v265);
  v270 = &v246 - v5;
  v251 = sub_1000CE6B8(&qword_10190F3A8, &qword_1011ECCE8);
  __chkstk_darwin(v251);
  v252 = (&v246 - v6);
  v7 = sub_1000CE6B8(&qword_10190F3B0, &qword_1011ECCF0);
  __chkstk_darwin(v7);
  v254 = &v246 - v8;
  v249 = sub_1000CE6B8(&qword_10190F3B8, &qword_1011ECCF8);
  __chkstk_darwin(v249);
  v250 = &v246 - v9;
  v10 = sub_1000CE6B8(&qword_10190F3C0, &qword_1011ECD00);
  __chkstk_darwin(v10);
  v253 = &v246 - v11;
  v260 = sub_1000CE6B8(&qword_10190F3C8, &qword_1011ECD08);
  __chkstk_darwin(v260);
  v261 = &v246 - v12;
  v257 = sub_1000CE6B8(&qword_10190F3D0, &qword_1011ECD10);
  __chkstk_darwin(v257);
  v259 = &v246 - v13;
  v258 = sub_1000CE6B8(&qword_10190F3D8, &qword_1011ECD18);
  __chkstk_darwin(v258);
  v248 = &v246 - v14;
  v15 = sub_1000CE6B8(&qword_10190F3E0, &unk_1011ECD20);
  __chkstk_darwin(v15);
  v263 = a1;
  v264 = &v246 - v16;
  v17 = *(a1 + 16);
  v255 = *(a1 + 24);
  v19 = _s9ImageViewVMa(255, v17, v255, v18);
  type metadata accessor for AccessibilityAttachmentModifier();
  v20 = type metadata accessor for ModifiedContent();
  v21 = type metadata accessor for _ConditionalContent();
  v268 = *(v21 - 8);
  __chkstk_darwin(v21);
  v267 = &v246 - v22;
  v286 = v23;
  v274 = v10;
  v24 = type metadata accessor for _ConditionalContent();
  v273 = *(v24 - 8);
  __chkstk_darwin(v24);
  v272 = &v246 - v25;
  v284 = v26;
  v275 = v7;
  v27 = type metadata accessor for _ConditionalContent();
  v277 = *(v27 - 8);
  __chkstk_darwin(v27);
  v276 = &v246 - v28;
  v262 = *(v17 - 8);
  __chkstk_darwin(v29);
  v31 = &v246 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = v19;
  v32 = *(v19 - 8);
  __chkstk_darwin(v33);
  v35 = &v246 - v34;
  v285 = v20;
  v36 = *(v20 - 8);
  __chkstk_darwin(v37);
  v39 = &v246 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v246 - v41;
  __chkstk_darwin(v43);
  v45 = &v246 - v44;
  v282 = v46;
  v280 = type metadata accessor for _ConditionalContent();
  __chkstk_darwin(v280);
  v283 = &v246 - v47;
  v48 = *v278;
  v49 = *v278 >> 61;
  v279 = v50;
  if (v49 > 1)
  {
    if (v49 == 2)
    {
      v92 = qword_101906768;
      v93 = v48;

      v68 = v283;
      if (v92 != -1)
      {
        swift_once();
      }

      v387._countAndFlagsBits = 0xD00000000000001FLL;
      v387._object = 0x800000010121F530;
      v94._countAndFlagsBits = 0x706F745320646441;
      v94._object = 0xEE005D52504D5B20;
      v95._countAndFlagsBits = 6579265;
      v95._object = 0xE300000000000000;
      v96 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, qword_1019600D8, v95, v387);
      KeyPath = swift_getKeyPath();
      LOBYTE(v353) = 0;
      v364 = KeyPath;
      LOBYTE(v365) = 0;
      v366[0] = 0xD000000000000010;
      v366[1] = 0x8000000101221D50;
      v367 = v96;
      v368 = v93;
      sub_1001C4F6C();

      v98 = v93;
      v99 = v270;
      View.accessibility(identifier:)();

      v256 = v98;
      sub_10013BD88(v98);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v100 = v364;
      v101 = swift_getKeyPath();
      v102 = swift_allocObject();
      *(v102 + 16) = (v100 & 1) == 0;
      v103 = (v99 + *(v265 + 36));
      *v103 = v101;
      v103[1] = sub_100109DD8;
      v103[2] = v102;
      sub_1000D2DFC(v99, v269, &qword_10190F3A0, &qword_1011ECCE0);
      swift_storeEnumTagMultiPayload();
      sub_1001C4DF8();
      sub_1001C4FC0();
      v104 = v271;
      _ConditionalContent<>.init(storage:)();
      WitnessTable = swift_getWitnessTable();
      v106 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
      v362 = WitnessTable;
      v363 = v106;
      v107 = swift_getWitnessTable();
      v108 = sub_1001C5014();
      v360 = v107;
      v361 = v108;
      v109 = swift_getWitnessTable();
      v110 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
      v358 = v109;
      v359 = v110;
      v111 = swift_getWitnessTable();
      v112 = sub_1001C51B0();
      v356 = v111;
      v357 = v112;
      v113 = v282;
      v114 = swift_getWitnessTable();
      v115 = sub_1001C539C();
      sub_1001A2480(v104, v113, v287, v114, v115);
      sub_10013BD88(v256);
      sub_100024F64(v104, &qword_10190F398, &qword_1011ECCD8);
      v116 = v270;
      v117 = &qword_10190F3A0;
      v118 = &qword_1011ECCE0;
    }

    else
    {
      v51 = v284;
      if (v49 == 3)
      {
        v52 = v48;
        sub_10013BAE8(v48);
        type metadata accessor for HikeRouteSnapshotViewModel(0);
        sub_1001C3C48(&qword_10190F3E8, type metadata accessor for HikeRouteSnapshotViewModel, &unk_1011F24F8);

        v53 = ObservedObject.init(wrappedValue:)();
        v54 = v269;
        *v269 = v53;
        v54[1] = v55;
        v278 = v55;
        swift_storeEnumTagMultiPayload();
        sub_1001C4DF8();
        sub_1001C4FC0();

        v56 = v271;
        _ConditionalContent<>.init(storage:)();
        v57 = swift_getWitnessTable();
        v58 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
        v385 = v57;
        v386 = v58;
        v59 = swift_getWitnessTable();
        v60 = sub_1001C5014();
        v383 = v59;
        v384 = v60;
        v61 = swift_getWitnessTable();
        v62 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
        v381 = v61;
        v382 = v62;
        v63 = swift_getWitnessTable();
        v64 = sub_1001C51B0();
        v379 = v63;
        v380 = v64;
        v65 = v282;
        v66 = swift_getWitnessTable();
        v67 = sub_1001C539C();
        v68 = v283;
        sub_1001A2480(v56, v65, v287, v66, v67);

        sub_10013BD88(v52);
        sub_100024F64(v56, &qword_10190F398, &qword_1011ECCD8);
        v69 = v280;
        goto LABEL_31;
      }

      v119 = v282;
      v68 = v283;
      v120 = __ROR8__(v48 ^ 0x8000000000000000, 3);
      if (v120 > 2)
      {
        if (v120 != 3)
        {
          v143 = v284;
          if (v120 == 4)
          {
            v353 = swift_getKeyPath();
            v278 = v353;
            v354 = 0;
            v355 = 0;
            sub_1001C52F4();
            sub_1001C5348();

            _ConditionalContent<>.init(storage:)();
            v144 = v365;
            v145 = BYTE1(v365);
            v146 = v252;
            *v252 = v364;
            *(v146 + 16) = v144;
            *(v146 + 17) = v145;
            swift_storeEnumTagMultiPayload();
            sub_1000CE6B8(&qword_10190F458, &qword_1011ECD30);
            v147 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
            sub_1001C5268();
            v148 = v254;
            _ConditionalContent<>.init(storage:)();
            v149 = swift_getWitnessTable();
            v150 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
            v343 = v149;
            v344 = v150;
            v151 = swift_getWitnessTable();
            v152 = sub_1001C5014();
            v341 = v151;
            v342 = v152;
            v339 = swift_getWitnessTable();
            v340 = v147;
            v153 = swift_getWitnessTable();
            v154 = sub_1001C51B0();
            v155 = v276;
            sub_1001A2480(v148, v51, v275, v153, v154);
            sub_100024F64(v148, &qword_10190F3B0, &qword_1011ECCF0);
            v337 = v153;
            v338 = v154;
            v156 = swift_getWitnessTable();
            v157 = sub_1001C539C();
            sub_1001A2388(v155, v119, v287, v156, v157);

            (*(v277 + 8))(v155, v119);
          }

          else
          {
            v354 = 0;
            v353 = 0;
            v355 = 256;
            sub_1001C52F4();
            sub_1001C5348();
            _ConditionalContent<>.init(storage:)();
            v232 = v365;
            v233 = BYTE1(v365);
            v234 = v252;
            *v252 = v364;
            *(v234 + 16) = v232;
            *(v234 + 17) = v233;
            swift_storeEnumTagMultiPayload();
            sub_1000CE6B8(&qword_10190F458, &qword_1011ECD30);
            v235 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
            sub_1001C5268();
            v236 = v254;
            _ConditionalContent<>.init(storage:)();
            v237 = swift_getWitnessTable();
            v238 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
            v351 = v237;
            v352 = v238;
            v239 = swift_getWitnessTable();
            v240 = sub_1001C5014();
            v349 = v239;
            v350 = v240;
            v347 = swift_getWitnessTable();
            v348 = v235;
            v241 = swift_getWitnessTable();
            v242 = sub_1001C51B0();
            v243 = v276;
            sub_1001A2480(v236, v143, v275, v241, v242);
            sub_100024F64(v236, &qword_10190F3B0, &qword_1011ECCF0);
            v345 = v241;
            v346 = v242;
            v244 = swift_getWitnessTable();
            v245 = sub_1001C539C();
            sub_1001A2388(v243, v119, v287, v244, v245);
            (*(v277 + 8))(v243, v119);
          }

          goto LABEL_30;
        }

        v194 = v48;
        v195 = swift_getKeyPath();
        LOBYTE(v353) = 0;
        v364 = v195;
        LOBYTE(v365) = 0;
        v366[0] = 0x697261666173;
        v366[1] = 0xE600000000000000;
        v367 = 0uLL;
        v368 = v194;
        sub_1001C4F6C();
        v196 = v261;
        View.accessibility(identifier:)();

        sub_1000D2DFC(v196, v250, &qword_10190F3C8, &qword_1011ECD08);
        swift_storeEnumTagMultiPayload();
        sub_1001C4EB0();
        v197 = v253;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v197, v252, &qword_10190F3C0, &qword_1011ECD00);
        swift_storeEnumTagMultiPayload();
        sub_1000CE6B8(&qword_10190F458, &qword_1011ECD30);
        v198 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
        sub_1001C5268();
        v199 = v254;
        v200 = v284;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v197, &qword_10190F3C0, &qword_1011ECD00);
        v201 = swift_getWitnessTable();
        v202 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
        v335 = v201;
        v336 = v202;
        v203 = swift_getWitnessTable();
        v204 = sub_1001C5014();
        v333 = v203;
        v334 = v204;
        v331 = swift_getWitnessTable();
        v332 = v198;
        v205 = swift_getWitnessTable();
        v206 = sub_1001C51B0();
        v135 = v276;
        sub_1001A2480(v199, v200, v275, v205, v206);
        sub_100024F64(v199, &qword_10190F3B0, &qword_1011ECCF0);
        v329 = v205;
        v330 = v206;
        v193 = v282;
      }

      else
      {
        v121 = v48;
        if (v120)
        {
          if (v120 == 1)
          {
            v122 = swift_getKeyPath();
            LOBYTE(v353) = 0;
            v364 = v122;
            LOBYTE(v365) = 0;
            v366[0] = 0x616C75636F6E6962;
            v366[1] = 0xEF6C6C69662E7372;
            v367 = 0uLL;
            v368 = v121;
            sub_1001C4F6C();
            v123 = v261;
            View.accessibility(identifier:)();

            sub_1000D2DFC(v123, v250, &qword_10190F3C8, &qword_1011ECD08);
            swift_storeEnumTagMultiPayload();
            sub_1001C4EB0();
            v124 = v253;
            _ConditionalContent<>.init(storage:)();
            v125 = swift_getWitnessTable();
            v126 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
            v319 = v125;
            v320 = v126;
            v127 = swift_getWitnessTable();
            v128 = sub_1001C5014();
            v317 = v127;
            v318 = v128;
            v129 = swift_getWitnessTable();
            v130 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
            v131 = v272;
            sub_1001A2480(v124, v286, v274, v129, v130);
            sub_100024F64(v124, &qword_10190F3C0, &qword_1011ECD00);
            v315 = v129;
            v316 = v130;
            v68 = v283;
            v132 = v284;
            v133 = swift_getWitnessTable();
            v134 = sub_1001C51B0();
            v135 = v276;
            sub_1001A2388(v131, v132, v275, v133, v134);
            (*(v273 + 8))(v131, v132);
            v313 = v133;
            v314 = v134;
          }

          else
          {
            v207 = swift_getKeyPath();
            LOBYTE(v353) = 0;
            v364 = v207;
            LOBYTE(v365) = 0;
            strcpy(v366, "phone.fill");
            BYTE3(v366[1]) = 0;
            HIDWORD(v366[1]) = -369098752;
            v367 = 0uLL;
            v368 = v121;
            sub_1001C4F6C();
            v208 = v261;
            View.accessibility(identifier:)();

            sub_1000D2DFC(v208, v250, &qword_10190F3C8, &qword_1011ECD08);
            swift_storeEnumTagMultiPayload();
            sub_1001C4EB0();
            v209 = v253;
            _ConditionalContent<>.init(storage:)();
            sub_1000D2DFC(v209, v252, &qword_10190F3C0, &qword_1011ECD00);
            swift_storeEnumTagMultiPayload();
            sub_1000CE6B8(&qword_10190F458, &qword_1011ECD30);
            v210 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
            sub_1001C5268();
            v211 = v254;
            _ConditionalContent<>.init(storage:)();
            sub_100024F64(v209, &qword_10190F3C0, &qword_1011ECD00);
            v212 = swift_getWitnessTable();
            v213 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
            v327 = v212;
            v328 = v213;
            v214 = swift_getWitnessTable();
            v215 = sub_1001C5014();
            v325 = v214;
            v326 = v215;
            v323 = swift_getWitnessTable();
            v324 = v210;
            v216 = v284;
            v217 = swift_getWitnessTable();
            v218 = sub_1001C51B0();
            v135 = v276;
            sub_1001A2480(v211, v216, v275, v217, v218);
            sub_100024F64(v211, &qword_10190F3B0, &qword_1011ECCF0);
            v321 = v217;
            v322 = v218;
          }

          v193 = v282;
        }

        else
        {
          v180 = swift_getKeyPath();
          LOBYTE(v353) = 0;
          v364 = v180;
          LOBYTE(v365) = 0;
          strcpy(v366, "buildings.3d");
          BYTE5(v366[1]) = 0;
          HIWORD(v366[1]) = -5120;
          v367 = 0uLL;
          v368 = v121;
          sub_1001C4F6C();
          v181 = v261;
          View.accessibility(identifier:)();

          sub_1000D2DFC(v181, v250, &qword_10190F3C8, &qword_1011ECD08);
          swift_storeEnumTagMultiPayload();
          sub_1001C4EB0();
          v182 = v253;
          _ConditionalContent<>.init(storage:)();
          v183 = swift_getWitnessTable();
          v184 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
          v311 = v183;
          v312 = v184;
          v185 = swift_getWitnessTable();
          v186 = sub_1001C5014();
          v309 = v185;
          v310 = v186;
          v187 = swift_getWitnessTable();
          v188 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
          v189 = v272;
          sub_1001A2480(v182, v286, v274, v187, v188);
          v190 = v284;
          sub_100024F64(v182, &qword_10190F3C0, &qword_1011ECD00);
          v307 = v187;
          v308 = v188;
          v68 = v283;
          v191 = swift_getWitnessTable();
          v192 = sub_1001C51B0();
          v135 = v276;
          sub_1001A2388(v189, v190, v275, v191, v192);
          (*(v273 + 8))(v189, v190);
          v305 = v191;
          v306 = v192;
          v193 = v282;
        }
      }

      v219 = swift_getWitnessTable();
      v220 = sub_1001C539C();
      sub_1001A2388(v135, v193, v287, v219, v220);
      (*(v277 + 8))(v135, v193);
      v116 = v261;
      v117 = &qword_10190F3C8;
      v118 = &qword_1011ECD08;
    }

    sub_100024F64(v116, v117, v118);
LABEL_30:
    v69 = v280;
    goto LABEL_31;
  }

  v246 = v45;
  v247 = v39;
  v270 = v36;
  v271 = v15;
  v256 = v48;
  if (!v49)
  {
    if (*(v48 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8))
    {
      v70 = 0.0;
    }

    else
    {
      v70 = *(v48 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius);
    }

    (*(v262 + 16))(v31, v278 + *(v263 + 36), v17);
    swift_retain_n();
    sub_1001A3DF8(v31, v17, v255, v35, v70);
    v71 = v288;
    v72 = swift_getWitnessTable();
    View.accessibility(identifier:)();
    (*(v32 + 8))(v35, v71);
    v73 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v295 = v72;
    v296 = v73;
    v74 = v285;
    v75 = swift_getWitnessTable();
    sub_10010ADFC();
    v278 = *(v270 + 1);
    (v278)(v42, v74);
    v76 = v247;
    sub_10010ADFC();
    v77 = sub_1001C5014();
    v78 = v267;
    sub_1001A2388(v76, v74, v271, v75, v77);
    v293 = v75;
    v294 = v77;
    v79 = v286;
    v80 = swift_getWitnessTable();
    v81 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
    v82 = v272;
    sub_1001A2388(v78, v79, v274, v80, v81);
    (*(v268 + 8))(v78, v79);
    v291 = v80;
    v292 = v81;
    v83 = v284;
    v84 = swift_getWitnessTable();
    v85 = sub_1001C51B0();
    v86 = v276;
    sub_1001A2388(v82, v83, v275, v84, v85);
    (*(v273 + 8))(v82, v83);
    v289 = v84;
    v290 = v85;
    v87 = v282;
    v88 = swift_getWitnessTable();
    v89 = sub_1001C539C();
    v90 = v283;
    sub_1001A2388(v86, v87, v287, v88, v89);
    sub_10013BD88(v256);
    (*(v277 + 8))(v86, v87);
    v91 = v278;
    (v278)(v247, v74);
    v68 = v90;
    (v91)(v246, v74);
    goto LABEL_30;
  }

  v136 = v48;
  if (*((v48 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA))
  {
    sub_10013BAE8(v48);
    sub_10013BAE8(v136);
    type metadata accessor for DirectionsETAModel(0);
    sub_1001C3C48(&qword_10190F478, type metadata accessor for DirectionsETAModel, &unk_1011F25B8);

    *&v364 = ObservedObject.init(wrappedValue:)();
    *(&v364 + 1) = v137;
    v365 = v136;
    v366[0] = 0xD000000000000028;
    v366[1] = 0x8000000101221E60;
    sub_1001C515C();
    v138 = v248;
    View.accessibility(identifier:)();

    sub_10013BD88(v136);
    v139 = &qword_10190F3D8;
    v140 = &qword_1011ECD18;
    sub_1000D2DFC(v138, v259, &qword_10190F3D8, &qword_1011ECD18);
    swift_storeEnumTagMultiPayload();
    sub_1001C50A0();
    sub_1001C4EB0();
    v141 = v264;
    _ConditionalContent<>.init(storage:)();
    v142 = v138;
  }

  else
  {
    v158 = swift_getKeyPath();
    LOBYTE(v353) = 0;
    v364 = v158;
    LOBYTE(v365) = 0;
    v366[0] = 0xD000000000000028;
    v366[1] = 0x8000000101221E60;
    v367 = 0uLL;
    v368 = v136;
    sub_10013BAE8(v136);
    sub_1001C4F6C();

    v159 = v261;
    View.accessibility(identifier:)();

    sub_10013BD88(v136);
    v139 = &qword_10190F3C8;
    v140 = &qword_1011ECD08;
    sub_1000D2DFC(v159, v259, &qword_10190F3C8, &qword_1011ECD08);
    swift_storeEnumTagMultiPayload();
    sub_1001C50A0();
    sub_1001C4EB0();
    v141 = v264;
    _ConditionalContent<>.init(storage:)();
    v142 = v159;
  }

  sub_100024F64(v142, v139, v140);
  v160 = v285;
  v161 = v286;
  v68 = v283;
  v162 = v284;
  v163 = v282;
  v164 = v267;
  v165 = v271;
  v166 = swift_getWitnessTable();
  v167 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v303 = v166;
  v304 = v167;
  v168 = swift_getWitnessTable();
  v169 = sub_1001C5014();
  v170 = v160;
  v171 = v169;
  sub_1001A2480(v141, v170, v165, v168, v169);
  v301 = v168;
  v302 = v171;
  v172 = swift_getWitnessTable();
  v173 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
  v174 = v272;
  sub_1001A2388(v164, v161, v274, v172, v173);
  (*(v268 + 8))(v164, v161);
  v299 = v172;
  v300 = v173;
  v175 = swift_getWitnessTable();
  v176 = sub_1001C51B0();
  v177 = v276;
  sub_1001A2388(v174, v162, v275, v175, v176);
  (*(v273 + 8))(v174, v162);
  v297 = v175;
  v298 = v176;
  v178 = swift_getWitnessTable();
  v179 = sub_1001C539C();
  sub_1001A2388(v177, v163, v287, v178, v179);
  sub_10013BD88(v256);
  (*(v277 + 8))(v177, v163);
  sub_100024F64(v264, &qword_10190F3E0, &unk_1011ECD20);
  v69 = v280;
LABEL_31:
  v221 = swift_getWitnessTable();
  v222 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v377 = v221;
  v378 = v222;
  v223 = swift_getWitnessTable();
  v224 = sub_1001C5014();
  v375 = v223;
  v376 = v224;
  v225 = swift_getWitnessTable();
  v226 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
  v373 = v225;
  v374 = v226;
  v227 = swift_getWitnessTable();
  v228 = sub_1001C51B0();
  v371 = v227;
  v372 = v228;
  v229 = swift_getWitnessTable();
  v230 = sub_1001C539C();
  v369 = v229;
  v370 = v230;
  swift_getWitnessTable();
  sub_10010ADFC();
  return (*(v279 + 8))(v68, v69);
}

uint64_t sub_1001BD838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = *(a1 + 16);
  type metadata accessor for AccessibilityAttachmentModifier();
  v6 = type metadata accessor for ModifiedContent();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v50 - v9;
  sub_1000D6664(&qword_1019105E0, &qword_1011EE5E8);
  sub_1000D6664(&qword_1019105E8, &qword_1011EE5F0);
  v50 = a1;
  v10 = *(a1 + 24);
  v57 = v5;
  v62 = v10;
  _s12ContactBadgeVMa(255, v5, v10, v11);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for ZStack();
  v55 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v61 = v15;
  v16 = type metadata accessor for ModifiedContent();
  v56 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v63 = v6;
  v22 = type metadata accessor for _ConditionalContent();
  v58 = *(v22 - 8);
  __chkstk_darwin(v22);
  v60 = &v50 - v23;
  v24 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v25 = v78;
  if (v78)
  {
    v26 = static Alignment.bottomTrailing.getter();
    __chkstk_darwin(v26);
    v27 = v57;
    v57 = v22;
    v28 = v62;
    *(&v50 - 4) = v27;
    *(&v50 - 3) = v28;
    *(&v50 - 2) = v25;
    *(&v50 - 1) = v24;
    ZStack.init(alignment:content:)();
    v29 = v61;
    v30 = swift_getWitnessTable();
    View.accessibility(identifier:)();
    (*(v55 + 8))(v14, v29);
    v31 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v66 = v30;
    v67 = v31;
    v32 = swift_getWitnessTable();
    sub_10010ADFC();
    v33 = *(v56 + 8);
    v33(v18, v16);
    sub_10010ADFC();
    v64 = v28;
    v65 = v31;
    v22 = v57;
    v34 = v63;
    v35 = swift_getWitnessTable();
    sub_1001A2388(v18, v16, v34, v32, v35);

    v33(v18, v16);
    v33(v21, v16);
  }

  else
  {
    v36 = v52;
    v37 = v62;
    View.accessibility(identifier:)();
    v38 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v76 = v37;
    v77 = v38;
    v39 = v63;
    v40 = swift_getWitnessTable();
    v41 = v51;
    sub_10010ADFC();
    v42 = *(v53 + 8);
    v42(v36, v39);
    sub_10010ADFC();
    v74 = swift_getWitnessTable();
    v75 = v38;
    v43 = swift_getWitnessTable();
    sub_1001A2480(v36, v16, v39, v43, v40);
    v42(v36, v39);
    v42(v41, v39);
  }

  v44 = swift_getWitnessTable();
  v45 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v72 = v44;
  v73 = v45;
  v46 = swift_getWitnessTable();
  v70 = v62;
  v71 = v45;
  v47 = swift_getWitnessTable();
  v68 = v46;
  v69 = v47;
  swift_getWitnessTable();
  v48 = v60;
  sub_10010ADFC();
  return (*(v58 + 8))(v48, v22);
}

uint64_t sub_1001BE098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a2;
  v109 = a1;
  v106 = a5;
  v91 = *(a3 - 8);
  __chkstk_darwin(a1);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s12ContactBadgeVMa(0, v8, v9, v9);
  v94 = *(v10 - 8);
  __chkstk_darwin(v10);
  v90 = &v87 - v11;
  v112 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v95 = *(v13 - 8);
  __chkstk_darwin(v13);
  v92 = &v87 - v14;
  v111 = v15;
  v16 = type metadata accessor for ModifiedContent();
  v98 = *(v16 - 8);
  __chkstk_darwin(v16);
  v97 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v96 = &v87 - v19;
  v99 = sub_1000D6664(&qword_1019105E8, &qword_1011EE5F0);
  v110 = v16;
  v107 = type metadata accessor for _ConditionalContent();
  v20 = type metadata accessor for Optional();
  v104 = *(v20 - 8);
  v105 = v20;
  __chkstk_darwin(v20);
  v101 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v103 = &v87 - v23;
  v24 = type metadata accessor for Image.ResizingMode();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000CE6B8(&qword_101910140, &qword_1011EDFF0);
  __chkstk_darwin(v28 - 8);
  v30 = &v87 - v29;
  v108 = sub_1000CE6B8(&qword_1019105E0, &qword_1011EE5E8);
  __chkstk_darwin(v108);
  v102 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v87 - v33;
  v93 = a3;
  v88 = _s9ImageViewVMa(0, a3, a4, v35);
  v36 = v100;

  sub_10021FE34(v30);

  v37 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v37 - 8) + 56))(v30, 0, 1, v37);
  Image.renderingMode(_:)();
  sub_100024F64(v30, &qword_101910140, &qword_1011EDFF0);
  (*(v25 + 104))(v27, enum case for Image.ResizingMode.stretch(_:), v24);
  v109 = Image.resizable(capInsets:resizingMode:)();

  (*(v25 + 8))(v27, v24);
  v38 = [objc_opt_self() tertiaryLabelColor];
  v39 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v41 = v36;

  v42 = sub_10022003C();

  LOBYTE(v36) = static Edge.Set.all.getter();
  LOBYTE(v114) = 1;
  v43 = *(v41 + 16);
  v44 = v41;
  v45 = &v34[*(sub_1000CE6B8(&qword_1019105F0, &qword_1011EE640) + 36)];
  v46 = *(type metadata accessor for RoundedRectangle() + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  *v45 = v43;
  *(v45 + 1) = v43;
  *&v45[*(sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0) + 36)] = 256;
  *v34 = v109;
  *(v34 + 1) = 0;
  *(v34 + 8) = 257;
  *(v34 + 3) = KeyPath;
  *(v34 + 4) = v39;
  *(v34 + 5) = v42;
  v34[48] = v36;
  v49 = *(v108 + 36);
  v109 = v34;
  v34[v49] = 1;

  LOBYTE(v39) = sub_10021FAB4();

  if (v39)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v121[0]) = v125;
    v114 = v122[6];
    LOBYTE(v115) = v123;
    v116 = v124;
    v117 = v125;
    __asm { FMOV            V1.2D, #4.0 }

    v118 = v126;
    v119 = _Q1;
    v55 = sub_1001CA6E8();
    v113[4] = swift_getWitnessTable();
    v113[5] = &protocol witness table for _FrameLayout;
    v113[2] = swift_getWitnessTable();
    v113[3] = &protocol witness table for _OffsetEffect;
    v56 = v110;
    WitnessTable = swift_getWitnessTable();
    v58 = v101;
    sub_1001A2388(&v114, v99, v56, v55, WitnessTable);
    (*(*(v107 - 8) + 56))(v58, 0, 1, v107);
    v113[0] = v55;
    v59 = v113;
  }

  else
  {
    v61 = v110;
    v60 = v111;
    v62 = v112;

    v63 = sub_10021FC78();

    if (v63)
    {
      v64 = v91;
      v65 = v44 + *(v88 + 40);
      v66 = v89;
      v67 = v93;
      (*(v91 + 16))(v89, v65, v93);
      v68 = v90;
      *v90 = v63;
      (*(v64 + 32))(&v68[*(v62 + 36)], v66, v67);

      static Alignment.center.getter();
      v69 = swift_getWitnessTable();
      v70 = v92;
      View.frame(width:height:alignment:)();
      (*(v94 + 8))(v68, v62);
      v120[4] = v69;
      v120[5] = &protocol witness table for _FrameLayout;
      v71 = swift_getWitnessTable();
      v72 = v97;
      View.offset(x:y:)();
      (*(v95 + 8))(v70, v60);
      v120[2] = v71;
      v120[3] = &protocol witness table for _OffsetEffect;
      WitnessTable = swift_getWitnessTable();
      v73 = v96;
      sub_10010ADFC();
      v74 = *(v98 + 8);
      v74(v72, v61);
      sub_10010ADFC();
      v75 = sub_1001CA6E8();
      v76 = v101;
      sub_1001A2480(v72, v99, v61, v75, WitnessTable);

      v74(v72, v61);
      v58 = v76;
      v74(v73, v61);
      (*(*(v107 - 8) + 56))(v76, 0, 1, v107);
      v120[0] = v75;
      v59 = v120;
    }

    else
    {
      v58 = v101;
      (*(*(v107 - 8) + 56))(v101, 1, 1, v107);
      v77 = sub_1001CA6E8();
      v122[4] = swift_getWitnessTable();
      v122[5] = &protocol witness table for _FrameLayout;
      v122[2] = swift_getWitnessTable();
      v122[3] = &protocol witness table for _OffsetEffect;
      WitnessTable = swift_getWitnessTable();
      v122[0] = v77;
      v59 = v122;
    }
  }

  v59[1] = WitnessTable;
  v101 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  swift_getWitnessTable();
  v79 = v103;
  v78 = v104;
  v80 = *(v104 + 16);
  v81 = v105;
  v80(v103, v58, v105);
  v82 = *(v78 + 8);
  v82(v58, v81);
  v83 = v102;
  sub_1000D2DFC(v109, v102, &qword_1019105E0, &qword_1011EE5E8);
  v114 = v83;
  v80(v58, v79, v81);
  v115 = v58;
  v121[0] = v108;
  v121[1] = v81;
  v120[13] = sub_1001CA854();
  v84 = sub_1001CA6E8();
  v120[11] = swift_getWitnessTable();
  v120[12] = &protocol witness table for _FrameLayout;
  v120[9] = swift_getWitnessTable();
  v120[10] = &protocol witness table for _OffsetEffect;
  v85 = swift_getWitnessTable();
  v120[7] = v84;
  v120[8] = v85;
  v120[6] = swift_getWitnessTable();
  v120[14] = swift_getWitnessTable();
  sub_1001A21B8(&v114, 2uLL, v121);
  v82(v79, v81);
  sub_100024F64(v109, &qword_1019105E0, &qword_1011EE5E8);
  v82(v58, v81);
  return sub_100024F64(v83, &qword_1019105E0, &qword_1011EE5E8);
}

uint64_t sub_1001BEDE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_1019109C0, &qword_1011EEA90);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = objc_opt_self();
  v6 = [v5 _maps_systemGrayColor];
  *(&v34 + 1) = Color.init(uiColor:)();
  *&v34 = swift_getKeyPath();
  v7 = [v5 systemBackgroundColor];
  v8 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = v35;
  v11 = v36;
  v10 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = static Alignment.center.getter();
  *&v41 = v9;
  *(&v41 + 1) = __PAIR64__(v10, v11);
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v8;
  LOWORD(v44) = 256;
  *(&v44 + 1) = v15;
  *&v45 = v17;
  *(&v45 + 1) = v18;
  v46 = v19;
  v64 = v19;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v59 = v41;
  v60 = v42;
  v47 = v9;
  v48 = v11;
  v49 = v10;
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v8;
  v54 = 256;
  v55 = v15;
  v56 = v17;
  v57 = v18;
  v58 = v19;
  sub_1000D2DFC(&v41, v67, &qword_1019109C8, &qword_1011EEA98);
  sub_100024F64(&v47, &qword_1019109C8, &qword_1011EEA98);
  v20 = Image.init(systemName:)();
  v21 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Font.Weight.semibold.getter();
  v23 = type metadata accessor for Font.Design();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = static Font.system(size:weight:design:)();
  sub_100024F64(v4, &qword_1019109C0, &qword_1011EEA90);
  v25 = swift_getKeyPath();
  v26 = v34;
  v65[0] = v34;
  v27 = v59;
  v65[1] = v59;
  v65[2] = v60;
  v29 = v62;
  v28 = v63;
  v65[4] = v62;
  v65[5] = v63;
  v30 = v61;
  v65[3] = v61;
  v31 = v64;
  v66 = v64;
  *(a1 + 32) = v60;
  *(a1 + 48) = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v28;
  *a1 = v65[0];
  *(a1 + 16) = v27;
  *(a1 + 96) = v31;
  *(a1 + 104) = v20;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = v21;
  *(a1 + 128) = v25;
  *(a1 + 136) = v24;
  *(a1 + 144) = xmmword_1011EC750;
  sub_1000D2DFC(v65, v67, &qword_1019109D0, &qword_1011EEAA0);
  v67[0] = v26;
  v67[3] = v61;
  v67[4] = v62;
  v67[5] = v63;
  v68 = v64;
  v67[1] = v59;
  v67[2] = v60;
  return sub_100024F64(v67, &qword_1019109D0, &qword_1011EEAA0);
}

double sub_1001BF148@<D0>(uint64_t a2@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  sub_1001BEDE8(&v13);
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v23 = v13;
  v24 = v14;
  v33[6] = v19;
  v33[7] = v20;
  v33[8] = v21;
  v33[9] = v22;
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v33[5] = v18;
  v33[0] = v13;
  v33[1] = v14;
  sub_1000D2DFC(&v23, &v12, &qword_1019109B8, &qword_1011EEA88);
  sub_100024F64(v33, &qword_1019109B8, &qword_1011EEA88);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v30;
  *(a2 + 112) = v29;
  *(a2 + 128) = v6;
  v7 = v32;
  *(a2 + 144) = v31;
  *(a2 + 160) = v7;
  v8 = v26;
  *(a2 + 48) = v25;
  *(a2 + 64) = v8;
  v9 = v28;
  *(a2 + 80) = v27;
  *(a2 + 96) = v9;
  result = *&v23;
  v11 = v24;
  *(a2 + 16) = v23;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_1001BF244(uint64_t a1)
{
  sub_1000D6664(&qword_1019109D0, &qword_1011EEAA0);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s9ImageViewVMa(255, v3, v4, v5);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v15[-v11];
  static Alignment.center.getter();
  v16 = v3;
  v17 = v4;
  v18 = v1;
  ZStack.init(alignment:content:)();
  swift_getWitnessTable();
  sub_10010ADFC();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_10010ADFC();
  return (v13)(v12, v6);
}

uint64_t sub_1001BF44C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v47 = a4;
  v44 = *(a2 - 8);
  v45 = a1;
  __chkstk_darwin(a1);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s9ImageViewVMa(0, v5, v6, v7);
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v42 = &v39 - v12;
  v13 = objc_opt_self();
  v14 = [v13 _maps_systemGrayColor];
  *(&v39 + 1) = Color.init(uiColor:)();
  *&v39 = swift_getKeyPath();
  v15 = [v13 systemBackgroundColor];
  v16 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v17 = v58[2];
  v18 = v59;
  v19 = v60;
  v20 = v61;
  v21 = v62;
  v22 = v63;
  v23 = static Alignment.center.getter();
  v25 = v24;
  v26 = static Alignment.center.getter();
  *&v64 = v17;
  *(&v64 + 1) = __PAIR64__(v19, v18);
  *&v65 = v20;
  *(&v65 + 1) = v21;
  *&v66 = v22;
  *(&v66 + 1) = v16;
  LOWORD(v67) = 256;
  *(&v67 + 1) = v23;
  *&v68 = v25;
  *(&v68 + 1) = v26;
  v69 = v27;
  *&v94 = v27;
  v91 = v66;
  v92 = v67;
  v93 = v68;
  v89 = v64;
  v90 = v65;
  v70 = v17;
  v71 = v18;
  v72 = v19;
  v73 = v20;
  v74 = v21;
  v75 = v22;
  v76 = v16;
  v77 = 256;
  v78 = v23;
  v79 = v25;
  v80 = v26;
  v81 = v27;
  sub_1000D2DFC(&v64, &v82, &qword_1019109C8, &qword_1011EEA98);
  sub_100024F64(&v70, &qword_1019109C8, &qword_1011EEA98);
  v82 = v39;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v88 = v94;
  v83 = v89;
  v84 = v90;
  v28 = v45;
  v30 = v40;
  v29 = v41;
  v32 = v28 + *(_s12ContactBadgeVMa(0, v40, v41, v31) + 36);
  v33 = v43;
  (*(v44 + 16))(v43, v32, v30);

  sub_1001A3DF8(v33, v30, v29, v10, 0.0);
  WitnessTable = swift_getWitnessTable();
  v35 = v42;
  sub_10010ADFC();
  v36 = v46;
  v37 = *(v46 + 8);
  v37(v10, v8);
  v55 = v86;
  v56 = v87;
  v57 = v88;
  v51 = v82;
  v52 = v83;
  v53 = v84;
  v54 = v85;
  v58[0] = &v51;
  (*(v36 + 16))(v10, v35, v8);
  v58[1] = v10;
  sub_1000D2DFC(&v82, &v89, &qword_1019109D0, &qword_1011EEAA0);
  v50[0] = sub_1000CE6B8(&qword_1019109D0, &qword_1011EEAA0);
  v50[1] = v8;
  v48 = sub_1001CCB28();
  v49 = WitnessTable;
  sub_1001A21B8(v58, 2uLL, v50);
  sub_100024F64(&v82, &qword_1019109D0, &qword_1011EEAA0);
  v37(v35, v8);
  v37(v10, v8);
  v93 = v55;
  v94 = v56;
  v95 = v57;
  v89 = v51;
  v90 = v52;
  v91 = v53;
  v92 = v54;
  return sub_100024F64(&v89, &qword_1019109D0, &qword_1011EEAA0);
}

uint64_t sub_1001BF8F8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000CE6B8(&qword_101910A10, &qword_1011EEAD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9[1])
  {
    sub_1000CE6B8(&qword_101910A18, &qword_1011EEB20);
    type metadata accessor for UUID();
    sub_1000CE6B8(&qword_101910A20, &qword_1011EEB28);
    sub_1000414C8(&qword_101910A28, &qword_101910A18, &qword_1011EEB20, &protocol conformance descriptor for [A]);
    sub_1001CCBE0();
    sub_1001C3C48(&qword_101910A48, type metadata accessor for PlaceSummaryImageViewModel, &unk_1011F23D8);
    ForEach<>.init(_:content:)();
    (*(v4 + 32))(a2, v6, v3);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return (*(v4 + 56))(a2, v7, 1, v3);
}

double sub_1001BFB48@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for PlaceSummaryImageViewModel(0);
  sub_1001C3C48(&qword_10190F480, type metadata accessor for PlaceSummaryImageViewModel, &unk_1011F2438);

  v3 = ObservedObject.init(wrappedValue:)();
  v5 = v4;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  result = *&v9;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_1001BFC1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.lastTextBaseline.getter();
  *(a1 + 8) = 0xC014000000000000;
  *(a1 + 16) = 0;
  v2 = sub_1000CE6B8(&qword_101910A08, &qword_1011EEAC8);
  return sub_1001BF8F8(a1 + *(v2 + 44));
}

double sub_1001BFC80@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10013BAE8(v3);
  static Published.subscript.getter();

  swift_getKeyPath();
  *(swift_allocObject() + 16) = (v5 & 1) == 0;
  sub_1000CE6B8(&qword_101910660, &qword_1011EE6F8);
  sub_1001CAB5C();
  _ConditionalContent<>.init(storage:)();
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = *v9;
  *(a1 + 73) = *&v9[9];
  result = *&v5;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_1001BFF30(__int128 *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v10 = *a1;
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v10, &unk_101910518, &unk_1011EE4C0);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = *(a1 + 7);
  v6(&v9);
}

uint64_t sub_1001C00C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000CE6B8(&qword_101910558, &qword_1011EE4E0);
  sub_1001C01B8(a1, (a2 + *(v5 + 44)));
  v6 = a2 + *(sub_1000CE6B8(&qword_101910528, &qword_1011EE4D0) + 36);
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #6.0 }

  *v6 = _Q0;
  result = sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0);
  *&v6[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1001C01B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910560, &qword_1011EE4E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = [objc_opt_self() tertiarySystemFillColor];
  v11 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4014000000000000;
  v9[16] = 0;
  v13 = sub_1000CE6B8(&qword_101910568, &qword_1011EE4F0);
  sub_1001C0360(a1, &v9[*(v13 + 44)]);
  sub_1000D2DFC(v9, v6, &qword_101910560, &qword_1011EE4E8);
  *a2 = KeyPath;
  a2[1] = v11;
  v14 = sub_1000CE6B8(&qword_101910570, &qword_1011EE4F8);
  sub_1000D2DFC(v6, a2 + *(v14 + 48), &qword_101910560, &qword_1011EE4E8);

  sub_100024F64(v9, &qword_101910560, &qword_1011EE4E8);
  sub_100024F64(v6, &qword_101910560, &qword_1011EE4E8);
}

uint64_t sub_1001C0360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_1000CE6B8(&qword_101910578, &qword_1011EE500);
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v72 = &v65 - v4;
  v5 = sub_1000CE6B8(&qword_101910580, &qword_1011EE508);
  __chkstk_darwin(v5 - 8);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v65 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_101910588, &qword_1011EE510);
  v78 = *(v13 - 8);
  v79 = v13;
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v77 = sub_1000CE6B8(&qword_101910590, &qword_1011EE518);
  __chkstk_darwin(v77);
  v76 = &v65 - v16;
  v75 = sub_1000CE6B8(&qword_101910598, &qword_1011EE520);
  __chkstk_darwin(v75);
  v80 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v65 - v19;
  __chkstk_darwin(v20);
  v86 = &v65 - v21;

  v22 = Image.init(_internalSystemName:)();
  v23 = a1[6];
  v66 = a1[5];
  v74 = v23;
  if (v23)
  {

    static Font.headline.getter();
  }

  else
  {
    static Font.title3.getter();
  }

  static Font.Weight.semibold.getter();
  v24 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v26 = static Color.blue.getter();
  *&v91 = v22;
  *(&v91 + 1) = KeyPath;
  *&v92 = v24;
  *(&v92 + 1) = v26;
  v27 = *(v10 + 104);
  v69 = enum case for DynamicTypeSize.medium(_:);
  v70 = v10 + 104;
  v68 = v27;
  v27(v12);
  sub_1000CE6B8(&qword_1019105A0, &unk_1011EE528);
  sub_1001CA60C();
  View.dynamicTypeSize(_:)();
  v28 = *(v10 + 8);
  v65 = v12;
  v71 = v10 + 8;
  v67 = v28;
  v28(v12, v9);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = v76;
  (*(v78 + 32))(v76, v15, v79);
  v30 = &v29[*(v77 + 36)];
  v31 = v92;
  *v30 = v91;
  *(v30 + 1) = v31;
  *(v30 + 2) = v93;
  v32 = v29;
  v33 = v73;
  sub_1000F11C4(v32, v73, &qword_101910590, &qword_1011EE518);
  v34 = v33 + *(v75 + 36);
  *v34 = 0;
  v35 = 1;
  *(v34 + 8) = 1;
  sub_1000F11C4(v33, v86, &qword_101910598, &qword_1011EE520);
  if (v74)
  {
    v87 = v66;
    v88 = v74;
    sub_1000E5580();
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    static Font.caption2.getter();
    v41 = v9;
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_1000F0A40(v36, v38, v40 & 1);

    v87 = v42;
    v88 = v44;
    v89 = v46 & 1;
    v90 = v48;
    v49 = v65;
    v68(v65, v69, v41);
    v50 = v72;
    View.dynamicTypeSize(_:)();
    v67(v49, v41);
    sub_1000F0A40(v42, v44, v46 & 1);

    v51 = static Color.blue.getter();
    *(v50 + *(sub_1000CE6B8(&qword_1019105C8, &qword_1011EE540) + 36)) = v51;
    LOBYTE(v51) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v52 = v82;
    v53 = v83;
    v54 = v50 + *(v82 + 36);
    *v54 = v51;
    *(v54 + 8) = v55;
    *(v54 + 16) = v56;
    *(v54 + 24) = v57;
    *(v54 + 32) = v58;
    *(v54 + 40) = 0;
    sub_1000F11C4(v50, v53, &qword_101910578, &qword_1011EE500);
    v35 = 0;
  }

  else
  {
    v52 = v82;
    v53 = v83;
  }

  (*(v81 + 56))(v53, v35, 1, v52);
  v59 = v86;
  v60 = v80;
  sub_1000D2DFC(v86, v80, &qword_101910598, &qword_1011EE520);
  v61 = v84;
  sub_1000D2DFC(v53, v84, &qword_101910580, &qword_1011EE508);
  v62 = v85;
  sub_1000D2DFC(v60, v85, &qword_101910598, &qword_1011EE520);
  v63 = sub_1000CE6B8(&qword_1019105C0, &qword_1011EE538);
  sub_1000D2DFC(v61, v62 + *(v63 + 48), &qword_101910580, &qword_1011EE508);
  sub_100024F64(v53, &qword_101910580, &qword_1011EE508);
  sub_100024F64(v59, &qword_101910598, &qword_1011EE520);
  sub_100024F64(v61, &qword_101910580, &qword_1011EE508);
  return sub_100024F64(v60, &qword_101910598, &qword_1011EE520);
}

uint64_t sub_1001C0B80()
{
  v1 = type metadata accessor for DefaultButtonStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000CE6B8(&qword_101910510, &qword_1011EE4B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = v0[1];
  v19[0] = *v0;
  v19[1] = v9;
  v10 = v0[3];
  v19[2] = v0[2];
  v20 = v10;
  v21 = v19[0];
  v22 = *(v0 + 16);
  v11 = *(v0 + 40);
  v23 = *(v0 + 24);
  v24 = v11;
  v25 = *(&v20 + 1);
  v12 = swift_allocObject();
  v13 = v0[1];
  v12[1] = *v0;
  v12[2] = v13;
  v14 = v0[3];
  v12[3] = v0[2];
  v12[4] = v14;
  v17 = v19;
  sub_1000D2DFC(&v21, v18, &unk_101910518, &unk_1011EE4C0);
  sub_100147688(&v23, v18);
  sub_1000D2DFC(&v24, v18, &unk_10190D010, &unk_1011E94A0);
  sub_1001CA4CC(&v25, v18);
  sub_1000CE6B8(&qword_101910528, &qword_1011EE4D0);
  sub_1001CA528();
  Button.init(action:label:)();
  DefaultButtonStyle.init()();
  sub_1000414C8(&qword_101910548, &qword_101910510, &qword_1011EE4B8, &protocol conformance descriptor for Button<A>);
  sub_1001C3C48(&qword_101910550, &type metadata accessor for DefaultButtonStyle, &protocol conformance descriptor for DefaultButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001C0E8C(void (*a1)(void *), uint64_t a2, char a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(a1, a2, 0);
    (*(v7 + 8))(v9, v6);
    a1 = v12;
  }

  v12 = 0x8000000000000020;
  a1(&v12);
}

double sub_1001C1008@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v20;
  LOBYTE(v3) = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v18 = v3;
  v17 = v8;
  v19 = 1;
  v13 = static Edge.Set.all.getter();
  *a1 = v16;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v11;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = v13;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1001C11E8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1000CDA08(v1, v2, v3);
  sub_1000CE6B8(&qword_101910670, &qword_1011EE700);
  sub_1001CAC20();

  return Button.init(action:label:)();
}

uint64_t sub_1001C12B8@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_1019106B8, &qword_1011EE728);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v27 = v26 - v8;
  v9 = [objc_opt_self() systemGray5Color];
  v29 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v10 = Image.init(systemName:)();
  v26[1] = v10;
  v11 = static Color.blue.getter();
  v12 = swift_getKeyPath();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v13 = Font.weight(_:)();

  v14 = swift_getKeyPath();
  v34 = v10;
  v35 = v12;
  v36 = v11;
  v37 = v14;
  v38 = v13;
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.medium(_:), v1);
  sub_1000CE6B8(&qword_101910198, &qword_1011EE038);
  sub_1001C8EFC();
  v15 = v27;
  View.dynamicTypeSize(_:)();
  (*(v2 + 8))(v4, v1);

  v16 = v30;
  v17 = v31;
  v18 = *(v31 + 16);
  v19 = v32;
  v18(v30, v15, v32);
  v20 = v33;
  v21 = v29;
  *v33 = KeyPath;
  v20[1] = v21;
  v22 = v20;
  v23 = sub_1000CE6B8(&qword_1019106C0, &qword_1011EE730);
  v18(v22 + *(v23 + 48), v16, v19);
  v24 = *(v17 + 8);

  v24(v15, v19);
  v24(v16, v19);
}

uint64_t sub_1001C1618@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v3;
  v4 = sub_1000CE6B8(&qword_1019106B0, &qword_1011EE720);
  return sub_1001C12B8((a2 + *(v4 + 44)));
}

uint64_t sub_1001C1660@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101910140, &qword_1011EDFF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v45 = sub_1000CE6B8(&qword_1019105D8, &qword_1011EE550);
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v41 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v48)
  {
    return (*(v10 + 56))(a2, 1, 1, v45);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = a2;
  static Published.subscript.getter();

  v15 = v46;
  v16 = type metadata accessor for Image.TemplateRenderingMode();
  v17 = *(v16 - 8);
  v18 = &enum case for Image.TemplateRenderingMode.template(_:);
  if (!v15)
  {
    v18 = &enum case for Image.TemplateRenderingMode.original(_:);
  }

  (*(*(v16 - 8) + 104))(v9, *v18, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  Image.renderingMode(_:)();
  sub_100024F64(v9, &qword_101910140, &qword_1011EDFF0);
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v42 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  v19 = objc_opt_self();
  v20 = [v19 tertiaryLabelColor];
  v41 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v22 = [v19 systemGray5Color];
  v23 = Color.init(uiColor:)();
  v24 = static Edge.Set.all.getter();

  v47 = 1;
  v25 = v45;
  v26 = &v12[*(v45 + 36)];
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #6.0 }

  *v26 = _Q0;
  *&v26[*(sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0) + 36)] = 256;
  v35 = v41;
  *v12 = v42;
  *(v12 + 1) = KeyPath;
  *(v12 + 2) = v35;
  *(v12 + 3) = v23;
  v12[32] = v24;
  *(v12 + 5) = 0;
  *(v12 + 24) = 1;
  v36 = v12;
  v37 = v44;
  sub_1000F11C4(v36, v44, &qword_1019105D8, &qword_1011EE550);
  v38 = v37;
  v39 = v43;
  sub_1000F11C4(v38, v43, &qword_1019105D8, &qword_1011EE550);
  return (*(v10 + 56))(v39, 0, 1, v25);
}

uint64_t sub_1001C1B58@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = sub_1000CE6B8(&qword_1019105D0, &qword_1011EE548);
  return sub_1001C1660(v4, a2 + *(v6 + 44));
}

uint64_t sub_1001C1BB4()
{
  v0 = sub_1000CE6B8(&unk_10190F560, &unk_1011ECE98);
  __chkstk_darwin(v0);
  v2 = (&v16 - v1);
  v3 = [objc_opt_self() systemGray5Color];
  v4 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v6 = v2 + *(v0 + 36);
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  *&v6[*(sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0) + 36)] = 256;
  *v2 = KeyPath;
  v2[1] = v4;
  sub_1001C5A08();
  View.accessibility(identifier:)();
  return sub_100024F64(v2, &unk_10190F560, &unk_1011ECE98);
}

uint64_t sub_1001C1D74()
{
  v0 = [objc_opt_self() systemGray5Color];
  Color.init(uiColor:)();
  swift_getKeyPath();
  sub_1000CE6B8(&qword_10190F538, &qword_1011ECE88);
  sub_1001C58FC();
  View.accessibility(identifier:)();
}

uint64_t sub_1001C1E5C@<X0>(uint64_t a2@<X8>)
{
  v3 = static Color.clear.getter();
  result = static Edge.Set.all.getter();
  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001C1E90@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v5);
  sub_1001C5428(a1);
  static HorizontalAlignment.center.getter();
  sub_1001C3C48(&qword_10190F488, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1000CE6B8(&qword_10190F490, &qword_1011ECDD8);
  sub_1001C5688();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  result = sub_1000CE6B8(&qword_10190F4A8, &qword_1011ECDE0);
  v7 = a3 + *(result + 36);
  *v7 = 0xD00000000000001DLL;
  *(v7 + 8) = 0x8000000101221F30;
  *(v7 + 16) = 9;
  return result;
}

uint64_t sub_1001C2020(uint64_t a1, uint64_t a2)
{

  sub_1000CE6B8(&qword_10190F4B0, &qword_1011ECDE8);
  type metadata accessor for UUID();
  _s12ActionButtonVMa(0);
  sub_1000414C8(&qword_10190F4B8, &qword_10190F4B0, &qword_1011ECDE8, &protocol conformance descriptor for [A]);
  sub_1001C3C48(&qword_10190F4A0, _s12ActionButtonVMa, &unk_1011ED5F8);
  sub_1001C3C48(&qword_10190F4C0, type metadata accessor for PlaceSummaryViewModelActionButtons.Button, &unk_1011F2D70);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001C2170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ActionButtonVMa(0);
  sub_1001C48C0(a1, a2 + *(v4 + 20), type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1001C21DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = _s12ActionButtonVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1000CE6B8(&qword_1019106C8, &qword_1011EE738);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_1000CE6B8(&qword_1019106D0, &qword_1011EE740);
  v11 = *(v10 - 8);
  v21 = v10;
  v22 = v11;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  sub_1001C48C0(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s12ActionButtonVMa);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1001C4928(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s12ActionButtonVMa);
  v24 = v2;
  sub_1000CE6B8(&qword_1019106D8, &qword_1011EE748);
  sub_1001CAEA0();
  Button.init(action:label:)();
  v16 = sub_1000414C8(&qword_1019106F8, &qword_1019106C8, &qword_1011EE738, &protocol conformance descriptor for Button<A>);
  v17 = sub_1001CAF58();
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v25 = v6;
  v26 = &_s17ActionButtonStyleVN;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  View.accessibility(identifier:)();
  return (*(v22 + 8))(v13, v18);
}

uint64_t sub_1001C2540(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(v7, v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v15;
  }

  v9 = a1 + *(_s12ActionButtonVMa(0) + 20);
  v10 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  v11 = *(v9 + *(v10 + 24));
  v14 = *(v9 + *(v10 + 28));
  v15 = v11;
  v7(&v15, &v14);
}

__n128 sub_1001C26E0@<Q0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v16 = 1;
  sub_1001C28B0(&v18);
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v32[0] = v18;
  v32[1] = v19;
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v32[5] = v23;
  v33 = v24;
  sub_1000D2DFC(&v25, v14, qword_101910708, &qword_1011EE758);
  sub_100024F64(v32, qword_101910708, &qword_1011EE758);
  *&v15[55] = v28;
  *&v15[71] = v29;
  *&v15[87] = v30;
  *&v15[7] = v25;
  *&v15[23] = v26;
  v15[103] = v31;
  *&v15[39] = v27;
  v4 = v16;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v17[55] = v21;
  *&v17[71] = v22;
  *&v17[87] = v23;
  *&v17[103] = v24;
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  v5 = *&v15[32];
  *(a2 + 65) = *&v15[48];
  v6 = *&v15[80];
  *(a2 + 81) = *&v15[64];
  *(a2 + 97) = v6;
  *(a2 + 113) = *&v15[96];
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  *(a2 + 33) = v7;
  *(a2 + 49) = v5;
  v8 = *v17;
  v9 = *&v17[16];
  v10 = *&v17[32];
  *(a2 + 169) = *&v17[48];
  *(a2 + 153) = v10;
  *(a2 + 137) = v9;
  *(a2 + 121) = v8;
  result = *&v17[64];
  v12 = *&v17[80];
  v13 = *&v17[96];
  *(a2 + 232) = *&v17[111];
  *(a2 + 217) = v13;
  *(a2 + 201) = v12;
  *(a2 + 185) = result;
  return result;
}

uint64_t sub_1001C28B0@<X0>(uint64_t a2@<X8>)
{
  _s12ActionButtonVMa(0);
  type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  sub_1000E5580();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1000F0A40(v3, v5, v7 & 1);

  LOBYTE(v3) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v3;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v22;
  *(a2 + 72) = 0;
  *(a2 + 80) = result;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_1001C2A38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_1019109E8, &qword_1011EEAA8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  v6 = sub_1000CE6B8(&qword_1019109F0, &qword_1011EEAB0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  ButtonStyleConfiguration.label.getter();
  v10 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v12 = &v5[*(sub_1000CE6B8(&qword_1019109F8, &qword_1011EEAB8) + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  v13 = [objc_opt_self() tertiarySystemFillColor];
  v14 = Color.init(uiColor:)();
  v15 = static Edge.Set.all.getter();
  v16 = &v5[*(v3 + 44)];
  *v16 = v14;
  v16[8] = v15;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v17 = 0.85;
  }

  else
  {
    v17 = 1.0;
  }

  sub_1000F11C4(v5, v9, &qword_1019109E8, &qword_1011EEAA8);
  *&v9[*(v7 + 44)] = v17;
  v18 = (a1 + *(sub_1000CE6B8(&qword_101910A00, &qword_1011EEAC0) + 36));
  v19 = *(type metadata accessor for RoundedRectangle() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  *&v18[*(sub_1000CE6B8(&qword_10191E590, &qword_1011E85F0) + 36)] = 256;
  return sub_1000F11C4(v9, a1, &qword_1019109F0, &qword_1011EEAB0);
}

uint64_t sub_1001C2C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0x4018000000000000;
  *(a5 + 16) = 0;
  v10 = sub_1000CE6B8(&qword_10190F4E8, &qword_1011ECE28);
  return sub_1001C2D24(a1, a2, a3 & 1, a4, (a5 + *(v10 + 44)));
}

uint64_t sub_1001C2D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1000CE6B8(&qword_10190F4F0, &qword_1011ECE30);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin(v10);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v37 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v36 = KeyPath;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53[0] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  a3 &= 1u;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_bridgeObjectRetain_n();
  sub_1000CDA08(a1, a2, a3);
  sub_1000CE6B8(&qword_10190F4F8, &qword_1011ECE68);
  type metadata accessor for UUID();
  sub_1000CE6B8(&qword_10190F500, &qword_1011ECE70);
  sub_1000414C8(&qword_10190F508, &qword_10190F4F8, &qword_1011ECE68, &protocol conformance descriptor for [A]);
  sub_1001C578C();
  sub_1001C3C48(&qword_10190F520, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button, &unk_1011F2DA8);
  v35 = v15;
  ForEach<>.init(_:content:)();
  v18 = static Color.clear.getter();
  v19 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = *(v40 + 16);
  v21 = v38;
  v22 = v15;
  v23 = v39;
  v20(v38, v22, v39);
  *&v47[0] = KeyPath;
  v24 = v37;
  *(&v47[0] + 1) = v37;
  v25 = v44;
  v47[1] = v44;
  v47[2] = v45;
  v26 = v46;
  v47[3] = v46;
  *(a5 + 2) = v45;
  *(a5 + 3) = v26;
  *a5 = v47[0];
  *(a5 + 1) = v25;
  v27 = sub_1000CE6B8(&qword_10190F528, &qword_1011ECE78);
  v20(&a5[*(v27 + 48)], v21, v23);
  v28 = &a5[*(v27 + 64)];
  *&v48[0] = v19;
  *(&v48[0] + 1) = v18;
  v29 = v41;
  v30 = v42;
  v48[1] = v41;
  v48[2] = v42;
  v31 = v43;
  v48[3] = v43;
  *v28 = v48[0];
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  sub_1000D2DFC(v47, v53, &qword_10190F530, &qword_1011ECE80);
  sub_1000D2DFC(v48, v53, &qword_10190F530, &qword_1011ECE80);
  v32 = *(v40 + 8);
  v32(v35, v23);
  v49[0] = v19;
  v49[1] = v18;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  sub_100024F64(v49, &qword_10190F530, &qword_1011ECE80);
  v32(v21, v23);
  v53[0] = v36;
  v53[1] = v24;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  return sub_100024F64(v53, &qword_10190F530, &qword_1011ECE80);
}

uint64_t sub_1001C315C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v28 = a3;
  v26 = a2;
  v8 = type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RefinementBarButton(0);
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = (a1 + *(v9 + 28));
  v17 = *v16;
  v18 = v16[1];
  v27 = *(a1 + *(v9 + 36));
  sub_1001C48C0(a1, v12, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = v28;
  *(v20 + 24) = v28;
  LOBYTE(v9) = v29 & 1;
  *(v20 + 32) = v29 & 1;
  *(v20 + 40) = v30;
  sub_1001C4928(v12, v20 + v19, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
  v22 = &v15[v13[5]];
  *v22 = v17;
  *(v22 + 1) = v18;
  v23 = &v15[v13[6]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v15[v13[7]] = v27;
  v15[v13[8]] = 0;
  v24 = &v15[v13[9]];
  *v24 = sub_1001C5878;
  v24[1] = v20;

  sub_1000CDA08(v26, v21, v9);
  sub_1001C3C48(&qword_10190F518, type metadata accessor for RefinementBarButton, &unk_1011F7944);

  View.accessibility(identifier:)();
  return sub_1001C4CC4(v15, type metadata accessor for RefinementBarButton);
}

uint64_t sub_1001C3404(uint64_t a1, void (*a2)(void *), uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4(a2, a3, 0);
    (*(v11 + 8))(v13, v10);
    a2 = v16;
  }

  v16 = *(a6 + *(type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0) + 24));
  a2(&v16);
}

uint64_t sub_1001C358C()
{
  v1 = sub_1000CE6B8(&qword_10190F4C8, &qword_1011ECE18);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  v8 = v0[3];
  static Axis.Set.horizontal.getter();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1000CE6B8(&qword_10190F4D0, &qword_1011ECE20);
  sub_1000414C8(&qword_10190F4D8, &qword_10190F4D0, &qword_1011ECE20, &protocol conformance descriptor for HStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  sub_1000414C8(&qword_10190F4E0, &qword_10190F4C8, &qword_1011ECE18, &protocol conformance descriptor for ScrollView<A>);
  View.accessibility(identifier:)();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1001C3850()
{
  result = qword_10190F0F0;
  if (!qword_10190F0F0)
  {
    sub_1000D6664(&qword_10190F0D0, &qword_1011ECA68);
    sub_1001C38DC();
    sub_1001C46D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F0F0);
  }

  return result;
}

unint64_t sub_1001C38DC()
{
  result = qword_10190F0F8;
  if (!qword_10190F0F8)
  {
    sub_1000D6664(&qword_10190F100, &qword_1011ECA80);
    sub_1001C3968();
    sub_1001C40C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F0F8);
  }

  return result;
}

unint64_t sub_1001C3968()
{
  result = qword_10190F108;
  if (!qword_10190F108)
  {
    sub_1000D6664(&qword_10190F110, &qword_1011ECA88);
    sub_1001C39F4();
    sub_1001C3DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F108);
  }

  return result;
}

unint64_t sub_1001C39F4()
{
  result = qword_10190F118;
  if (!qword_10190F118)
  {
    sub_1000D6664(&qword_10190F120, &qword_1011ECA90);
    sub_1001C3A80();
    sub_1001C3CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F118);
  }

  return result;
}

unint64_t sub_1001C3A80()
{
  result = qword_10190F128;
  if (!qword_10190F128)
  {
    sub_1000D6664(&qword_10190F130, &qword_1011ECA98);
    sub_1001C3B3C();
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa, &unk_1011EDCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F128);
  }

  return result;
}

unint64_t sub_1001C3B3C()
{
  result = qword_10190F138;
  if (!qword_10190F138)
  {
    sub_1000D6664(&qword_10190F140, &qword_1011ECAA0);
    sub_1001C3C48(&qword_10190F148, _s10TitleLabelVMa, &unk_1011EDD28);
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa, &unk_1011EDCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F138);
  }

  return result;
}

uint64_t sub_1001C3C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001C3CB0()
{
  result = qword_10190F158;
  if (!qword_10190F158)
  {
    sub_1000D6664(&qword_10190F160, &qword_1011ECAA8);
    sub_1001C3C48(&qword_10190F168, _s26MultipleCuratedCollectionsVMa, &unk_1011EDC88);
    sub_1001C3C48(&qword_10190F170, _s18SingleCuratedGuideVMa, &unk_1011EDC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F158);
  }

  return result;
}

unint64_t sub_1001C3DDC()
{
  result = qword_10190F178;
  if (!qword_10190F178)
  {
    sub_1000D6664(&qword_10190F180, &qword_1011ECAB0);
    sub_1001C3E68();
    sub_1001C3F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F178);
  }

  return result;
}

unint64_t sub_1001C3E68()
{
  result = qword_10190F188;
  if (!qword_10190F188)
  {
    sub_1000D6664(&qword_10190F190, &qword_1011ECAB8);
    sub_1001C3C48(&qword_10190F198, _s18UserGeneratedGuideVMa, &unk_1011EDBE8);
    sub_1001C3C48(&qword_10190F1A0, _s17FirstPartyRatingsVMa, &unk_1011EDB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F188);
  }

  return result;
}

unint64_t sub_1001C3F94()
{
  result = qword_10190F1A8;
  if (!qword_10190F1A8)
  {
    sub_1000D6664(&qword_10190F1B0, &qword_1011ECAC0);
    sub_1001C3C48(&qword_10190F1B8, _s17ThirdPartyRatingsVMa, &unk_1011EDB48);
    sub_1001C4070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1A8);
  }

  return result;
}

unint64_t sub_1001C4070()
{
  result = qword_10190F1C0;
  if (!qword_10190F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1C0);
  }

  return result;
}

unint64_t sub_1001C40C4()
{
  result = qword_10190F1C8;
  if (!qword_10190F1C8)
  {
    sub_1000D6664(&qword_10190F1D0, &qword_1011ECAC8);
    sub_1001C4150();
    sub_1001C43E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1C8);
  }

  return result;
}

unint64_t sub_1001C4150()
{
  result = qword_10190F1D8;
  if (!qword_10190F1D8)
  {
    sub_1000D6664(&qword_10190F1E0, &qword_1011ECAD0);
    sub_1001C41DC();
    sub_1001C42BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1D8);
  }

  return result;
}

unint64_t sub_1001C41DC()
{
  result = qword_10190F1E8;
  if (!qword_10190F1E8)
  {
    sub_1000D6664(&unk_10190F1F0, &qword_1011ECAD8);
    sub_10016E9EC();
    sub_1001C4268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1E8);
  }

  return result;
}

unint64_t sub_1001C4268()
{
  result = qword_10190F200;
  if (!qword_10190F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F200);
  }

  return result;
}

unint64_t sub_1001C42BC()
{
  result = qword_10190F208;
  if (!qword_10190F208)
  {
    sub_1000D6664(&qword_10190F210, &qword_1011ECAE0);
    sub_1001C3C48(&qword_10190F218, _s13TappableEntryVMa, &unk_1011EDA58);
    sub_1001C3C48(&qword_10190F220, _s9DelimiterVMa, &unk_1011EDA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F208);
  }

  return result;
}

unint64_t sub_1001C43E8()
{
  result = qword_10190F228;
  if (!qword_10190F228)
  {
    sub_1000D6664(&qword_10190F230, &qword_1011ECAE8);
    sub_1001C4474();
    sub_1001C45A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F228);
  }

  return result;
}

unint64_t sub_1001C4474()
{
  result = qword_10190F238;
  if (!qword_10190F238)
  {
    sub_1000D6664(&qword_10190F240, &qword_1011ECAF0);
    sub_1001C3C48(&qword_10190F248, _s5HoursVMa, &unk_1011ED9B8);
    sub_1001C3C48(&qword_10190F250, _s28RealTimeAvailableChargerViewVMa, &unk_1011ED968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F238);
  }

  return result;
}

unint64_t sub_1001C45A0()
{
  result = qword_10190F258;
  if (!qword_10190F258)
  {
    sub_1000D6664(&qword_10190F260, &qword_1011ECAF8);
    sub_1001C462C();
    sub_1001C4680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F258);
  }

  return result;
}

unint64_t sub_1001C462C()
{
  result = qword_10190F268;
  if (!qword_10190F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F268);
  }

  return result;
}

unint64_t sub_1001C4680()
{
  result = qword_10190F270;
  if (!qword_10190F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F270);
  }

  return result;
}

unint64_t sub_1001C46D4()
{
  result = qword_10190F278;
  if (!qword_10190F278)
  {
    sub_1000D6664(&qword_10190F280, &qword_1011ECB00);
    sub_1001C4760();
    sub_1001C47B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F278);
  }

  return result;
}

unint64_t sub_1001C4760()
{
  result = qword_10190F288;
  if (!qword_10190F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F288);
  }

  return result;
}

unint64_t sub_1001C47B4()
{
  result = qword_10190F290;
  if (!qword_10190F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F290);
  }

  return result;
}

unint64_t sub_1001C4808()
{
  result = qword_10190F2A0;
  if (!qword_10190F2A0)
  {
    sub_1000D6664(&qword_10190F0C0, &qword_1011ECA58);
    sub_1000414C8(&qword_10190F2A8, &unk_10190F2B0, &qword_1011ECB08, &protocol conformance descriptor for HStack<A>);
    sub_10013C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F2A0);
  }

  return result;
}

uint64_t sub_1001C48C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C4928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C49F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a7@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary(0);
  sub_1001C3C48(&qword_10190F388, type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary, &unk_1011F26D8);
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v12.super.isa = qword_1019600D8;
  v27._object = 0x800000010121F6F0;
  v13._countAndFlagsBits = 0x6F74206465646441;
  v13._object = 0xE800000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000022;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, qword_1019600D8, v14, v27);
  v28._object = 0x800000010121F6F0;
  v16._countAndFlagsBits = 0x736563616C50;
  v16._object = 0xE600000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000022;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v12, v17, v28);
  v29._object = 0x8000000101221D10;
  v19._countAndFlagsBits = 0x616C5020776F6853;
  v19._object = 0xEB00000000736563;
  v29._countAndFlagsBits = 0xD00000000000003ELL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v12, v20, v29);
  result = v22._countAndFlagsBits;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 40) = v9;
  *(a7 + 48) = v11;
  *(a7 + 56) = v15;
  *(a7 + 72) = v18;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_1001C4CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C4D24()
{
  result = qword_10190F360;
  if (!qword_10190F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F360);
  }

  return result;
}

unint64_t sub_1001C4DF8()
{
  result = qword_10190F3F0;
  if (!qword_10190F3F0)
  {
    sub_1000D6664(&qword_10190F3A0, &qword_1011ECCE0);
    sub_1001C4EB0();
    sub_1000414C8(&unk_10190F410, &qword_101915760, &qword_1011F4C20, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F3F0);
  }

  return result;
}

unint64_t sub_1001C4EB0()
{
  result = qword_10190F3F8;
  if (!qword_10190F3F8)
  {
    sub_1000D6664(&qword_10190F3C8, &qword_1011ECD08);
    sub_1001C4F6C();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F3F8);
  }

  return result;
}

unint64_t sub_1001C4F6C()
{
  result = qword_10190F400;
  if (!qword_10190F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F400);
  }

  return result;
}

unint64_t sub_1001C4FC0()
{
  result = qword_10190F420;
  if (!qword_10190F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F420);
  }

  return result;
}

unint64_t sub_1001C5014()
{
  result = qword_10190F428;
  if (!qword_10190F428)
  {
    sub_1000D6664(&qword_10190F3E0, &unk_1011ECD20);
    sub_1001C50A0();
    sub_1001C4EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F428);
  }

  return result;
}

unint64_t sub_1001C50A0()
{
  result = qword_10190F430;
  if (!qword_10190F430)
  {
    sub_1000D6664(&qword_10190F3D8, &qword_1011ECD18);
    sub_1001C515C();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F430);
  }

  return result;
}

unint64_t sub_1001C515C()
{
  result = qword_10190F438;
  if (!qword_10190F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F438);
  }

  return result;
}

unint64_t sub_1001C51B0()
{
  result = qword_10190F448;
  if (!qword_10190F448)
  {
    sub_1000D6664(&qword_10190F3B0, &qword_1011ECCF0);
    sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &qword_1011ECD00, sub_1001C4EB0);
    sub_1001C5268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F448);
  }

  return result;
}

unint64_t sub_1001C5268()
{
  result = qword_10190F450;
  if (!qword_10190F450)
  {
    sub_1000D6664(&qword_10190F458, &qword_1011ECD30);
    sub_1001C52F4();
    sub_1001C5348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F450);
  }

  return result;
}

unint64_t sub_1001C52F4()
{
  result = qword_10190F460;
  if (!qword_10190F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F460);
  }

  return result;
}

unint64_t sub_1001C5348()
{
  result = qword_10190F468;
  if (!qword_10190F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F468);
  }

  return result;
}

unint64_t sub_1001C539C()
{
  result = qword_10190F470;
  if (!qword_10190F470)
  {
    sub_1000D6664(&qword_10190F398, &qword_1011ECCD8);
    sub_1001C4DF8();
    sub_1001C4FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F470);
  }

  return result;
}

void *sub_1001C5428(uint64_t a1)
{
  v16 = type metadata accessor for GridItem.Size();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for GridItem();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v13.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = enum case for GridItem.Size.adaptive(_:);
  v8 = *(v2 + 104);
  v9 = _swiftEmptyArrayStorage;
  v13 = vdupq_n_s64(0x7FF0000000000000uLL);
  do
  {
    *v4 = v13;
    v8(v4, v14, v16);
    GridItem.init(_:spacing:alignment:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003570AC(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1003570AC((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v15);
    --a1;
  }

  while (a1);
  return v9;
}

unint64_t sub_1001C5688()
{
  result = qword_10190F498;
  if (!qword_10190F498)
  {
    sub_1000D6664(&qword_10190F490, &qword_1011ECDD8);
    sub_1001C3C48(&qword_10190F4A0, _s12ActionButtonVMa, &unk_1011ED5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F498);
  }

  return result;
}

unint64_t sub_1001C578C()
{
  result = qword_10190F510;
  if (!qword_10190F510)
  {
    sub_1000D6664(&qword_10190F500, &qword_1011ECE70);
    sub_1001C3C48(&qword_10190F518, type metadata accessor for RefinementBarButton, &unk_1011F7944);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F510);
  }

  return result;
}

uint64_t sub_1001C5878(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001C3404(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1001C58FC()
{
  result = qword_10190F540;
  if (!qword_10190F540)
  {
    sub_1000D6664(&qword_10190F538, &qword_1011ECE88);
    sub_1001C59B4();
    sub_1000414C8(&unk_10190F550, &qword_10191E550, &qword_1011ECE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F540);
  }

  return result;
}

unint64_t sub_1001C59B4()
{
  result = qword_10190F548;
  if (!qword_10190F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F548);
  }

  return result;
}

unint64_t sub_1001C5A08()
{
  result = qword_10190F570;
  if (!qword_10190F570)
  {
    sub_1000D6664(&unk_10190F560, &unk_1011ECE98);
    sub_1001C5AC0();
    sub_1000414C8(&unk_10190F590, &qword_10191E590, &qword_1011E85F0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F570);
  }

  return result;
}

unint64_t sub_1001C5AC0()
{
  result = qword_10190F578;
  if (!qword_10190F578)
  {
    sub_1000D6664(&qword_10190F580, &qword_1011ECEA8);
    sub_1001C5B78();
    sub_1000414C8(&unk_10190F550, &qword_10191E550, &qword_1011ECE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F578);
  }

  return result;
}

unint64_t sub_1001C5B78()
{
  result = qword_10190F588;
  if (!qword_10190F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F588);
  }

  return result;
}

uint64_t sub_1001C5BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001C5C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C5C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5CAC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_1001C5D0C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001C5D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C5DE8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001C5E04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001C5E4C(uint64_t result, int a2, int a3)
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

void sub_1001C5ED8(uint64_t a1)
{
  sub_1001C5F98(319);
  if (v1 <= 0x3F)
  {
    sub_1001C63DC(319, &unk_10190F610, sub_1001C4D24, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C5F98(uint64_t a1)
{
  if (!qword_10190F608)
  {
    type metadata accessor for PlaceSummaryEVChargerViewModel(255);
    sub_1001C3C48(&unk_101918A60, type metadata accessor for PlaceSummaryEVChargerViewModel, &unk_1011F2308);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10190F608);
    }
  }
}

uint64_t sub_1001C6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001C6124(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001C61F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001C6298(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C6348(uint64_t a1)
{
  if (!qword_10190F750[0])
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(255);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate, &unk_1011F2770);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, qword_10190F750);
    }
  }
}

void sub_1001C63DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ScaledMetric();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1001C6464(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190F7F8, &unk_10190F800, &qword_1011ED128);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1001C6518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1001C653C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C6584(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_1001C65EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001C6608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1001C6650(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1001C66D8(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C67D0(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C68CC(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190F9E0, &unk_10190F9E8, &qword_1011ED288);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C69B0(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190FA88, &unk_10190FA90, &qword_1011ED2A8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C6AB4(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190FA88, &unk_10190FA90, &qword_1011ED2A8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C6BB4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    sub_1001C6D88(319, &qword_10190FBF0, &type metadata for String);
    if (v3 <= 0x3F)
    {
      sub_1001C6D88(319, &qword_10190FBF8, &type metadata for Color);
      if (v4 <= 0x3F)
      {
        sub_1001C6EC8(319, &qword_10190FC00, type metadata accessor for PlaceSummaryImageViewModel, &type metadata accessor for Optional);
        if (v5 <= 0x3F)
        {
          sub_1001C6EC8(319, &qword_10190FC08, type metadata accessor for PlaceSummaryStackedImageViewModel, &type metadata accessor for Optional);
          if (v6 <= 0x3F)
          {
            sub_1001C6D88(319, qword_10190FC10, &type metadata for Int);
            if (v7 <= 0x3F)
            {
              sub_1001C6348(319);
              if (v8 <= 0x3F)
              {
                sub_1001C6EC8(319, &qword_10190A258, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
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

void sub_1001C6D88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001C6DFC(uint64_t a1)
{
  sub_1001C6348(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      sub_1001C6EC8(319, &unk_10190FCD0, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C6EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1001C6F5C(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1001C6F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C6FC0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1001C7030(uint64_t a1)
{
  sub_1001C74A4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001C70C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}