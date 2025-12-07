uint64_t sub_1004C3650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v45 = a5;
  v42 = a1;
  v43 = a7;
  v10 = sub_100140278(&qword_1008EF8C8, &unk_1006F7030);
  __chkstk_darwin(v10 - 8);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v38 - v13;
  v14 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v46 = *(v20 - 8);
  v47 = v20;
  __chkstk_darwin(v20);
  v39 = &v38 - v21;
  v22 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v22 - 8);
  v23 = [objc_opt_self() mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 localizedStringForKey:v24 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006D1F70;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_10000A788();
  *(v26 + 32) = v42;
  *(v26 + 40) = a2;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = a3;
  *(v26 + 80) = a4;

  String.init(format:_:)();

  AttributeContainer.init()();
  v28 = v44;
  AttributedString.init(_:attributes:)();
  v48[0] = v45;
  sub_10005F988();

  AttributedString.subscript.setter();
  if (v28)
  {
    v48[0] = v28;
    sub_10005FAB0();

    AttributedString.subscript.setter();
  }

  v48[0] = a3;
  v48[1] = a4;
  v29 = type metadata accessor for Locale();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  type metadata accessor for AttributedString();
  sub_10005FBE4(&qword_1008E1918, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10000FCBC();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v16, &qword_1008EB540, &unk_1006D5E20);
  if ((*(v46 + 48))(v19, 1, v47) == 1)
  {
    v30 = &qword_1008E1900;
    v31 = &unk_1006E8990;
    v32 = v19;
  }

  else
  {
    v33 = v39;
    sub_10007BE08(v19, v39);
    v34 = v41;
    static Text.Scale.secondary.getter();
    v35 = type metadata accessor for Text.Scale();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908, &unk_1006DFC40);
    v36 = AttributedString.subscript.modify();
    sub_10001B104(v34, v40, &qword_1008EF8C8, &unk_1006F7030);
    sub_10007C248();
    AttributedSubstring.subscript.setter();
    sub_10000EA04(v34, &qword_1008EF8C8, &unk_1006F7030);
    v36(v48, 0);
    v32 = v33;
    v30 = &qword_1008E1908;
    v31 = &unk_1006DFC40;
  }

  return sub_10000EA04(v32, v30, v31);
}

uint64_t sub_1004C3C38@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a5;
  v90 = a6;
  v93 = a4;
  v88 = a3;
  v87 = a2;
  v81 = a1;
  v84 = a7;
  v94 = type metadata accessor for AttributedString.Runs();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v8 - 8);
  v96 = &v75 - v9;
  v10 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v10 - 8);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v75 - v13;
  v97 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v101 = *(v97 - 8);
  __chkstk_darwin(v97);
  v75 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v76 = &v75 - v16;
  v17 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v17 - 8);
  v80 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AttributedString();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = &v75 - v21;
  v100 = type metadata accessor for Locale();
  v103 = *(v100 - 8);
  __chkstk_darwin(v100);
  v86 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  __chkstk_darwin(v23 - 8);
  v85 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  __chkstk_darwin(v25 - 8);
  v79 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  __chkstk_darwin(v27 - 8);
  v82 = type metadata accessor for Duration.UnitsFormatStyle();
  v78 = *(v82 - 1);
  __chkstk_darwin(v82);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v75 - v35;
  sub_100140278(&qword_1008EF898, &qword_1006FA620);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1006D1F70;
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  sub_10029CB54(v37);
  swift_setDeallocating();
  v38 = v98;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
  Duration.UnitsFormatStyle.attributed.getter();
  (*(v78 + 8))(v29, v82);
  v39 = v86;
  static Locale.autoupdatingCurrent.getter();
  Duration.UnitsFormatStyle.Attributed.locale(_:)();
  (*(v103 + 8))(v39, v100);
  v40 = *(v31 + 8);
  v86 = (v31 + 8);
  v82 = v40;
  v40(v33, v30);
  sub_10005FBE4(&qword_1008EF8A0, &type metadata accessor for Duration.UnitsFormatStyle.Attributed, &protocol conformance descriptor for Duration.UnitsFormatStyle.Attributed);
  v85 = v36;
  v87 = v30;
  Duration.formatted<A>(_:)();
  v41 = [objc_opt_self() mainBundle];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 localizedStringForKey:v42 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006D46C0;
  v45 = *(v99 + 16);
  v46 = v95;
  v47 = v102;
  v45(v95, v38, v102);
  v48 = String.init(_:)();
  v50 = v49;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = sub_10000A788();
  *(v44 + 32) = v48;
  *(v44 + 40) = v50;
  String.init(format:_:)();

  AttributeContainer.init()();
  v51 = v97;
  v52 = v84;
  AttributedString.init(_:attributes:)();
  v81 = v45;
  v45(v46, v38, v47);
  v105 = String.init(_:)();
  v106 = v53;
  v54 = *(v103 + 56);
  v55 = v96;
  v103 += 56;
  v54(v96, 1, 1, v100);
  sub_10005FBE4(&qword_1008E1918, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  v56 = sub_10000FCBC();
  v57 = v83;
  v80 = v56;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v55, &qword_1008EB540, &unk_1006D5E20);

  v58 = *(v101 + 48);
  v101 += 48;
  v79 = v58;
  if (v58(v57, 1, v51) == 1)
  {
    v59 = &qword_1008E1900;
    v60 = &unk_1006E8990;
    v61 = v57;
  }

  else
  {
    v62 = v76;
    sub_10007BE08(v57, v76);
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908, &unk_1006DFC40);
    AttributedString.replaceSubrange<A, B>(_:with:)();
    v61 = v62;
    v59 = &qword_1008E1908;
    v60 = &unk_1006DFC40;
  }

  sub_10000EA04(v61, v59, v60);
  v105 = v88;
  sub_10005F988();

  AttributedString.subscript.setter();
  v63 = v90;
  if (v89)
  {
    v105 = v89;
    sub_10005FAB0();

    AttributedString.subscript.setter();
  }

  if (v63)
  {
    v81(v95, v38, v102);

    v105 = String.init(_:)();
    v106 = v64;
    v65 = v54;
    v66 = v96;
    v65(v96, 1, 1, v100);
    v67 = v77;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10000EA04(v66, &qword_1008EB540, &unk_1006D5E20);

    if (v79(v67, 1, v97) == 1)
    {

      v68 = &qword_1008E1900;
      v69 = &unk_1006E8990;
      v70 = v67;
    }

    else
    {
      v71 = v75;
      sub_10007BE08(v67, v75);

      sub_1004CAD58(&qword_1008E1920, &qword_1008E1908, &unk_1006DFC40);
      v72 = AttributedString.subscript.modify();
      v104 = v63;
      sub_10005FAB0();
      AttributedSubstring.subscript.setter();
      v72(&v105, 0);

      v70 = v71;
      v68 = &qword_1008E1908;
      v69 = &unk_1006DFC40;
    }

    sub_10000EA04(v70, v68, v69);
    v38 = v98;
  }

  v73 = v91;
  AttributedString.runs.getter();
  sub_1004C1124(v73, v52, v93 & 1);
  (*(v92 + 8))(v73, v94);
  (*(v99 + 8))(v38, v102);
  return v82(v85, v87);
}

uint64_t sub_1004C49F8(uint64_t a1, uint64_t a2, int a3)
{
  v44 = a3;
  v46 = a2;
  v4 = sub_100140278(&qword_1008EF8C8, &unk_1006F7030);
  __chkstk_darwin(v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v35 - v7;
  v42 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v42);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedSubstring();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  __chkstk_darwin(v45);
  v43 = &v35 - v12;
  v13 = sub_100140278(&qword_1008EF8D0, &qword_1006F4890);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
  sub_10005FBE4(&qword_1008EF8D8, &type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute, &protocol conformance descriptor for AttributeScopes.FoundationAttributes.MeasurementAttribute);
  v23 = a1;
  AttributedString.Runs.Run.subscript.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10000EA04(v15, &qword_1008EF8D0, &qword_1006F4890);
  }

  (*(v17 + 32))(v22, v15, v16);
  (*(v17 + 104))(v19, enum case for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component.unit(_:), v16);
  sub_10005FBE4(&qword_1008EF8E0, &type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, &protocol conformance descriptor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v17 + 8);
  v25(v19, v16);
  if (v47[0] != v48)
  {
    return (v25)(v22, v16);
  }

  v36 = v25;
  v26 = v43;
  AttributedString.Runs.Run.range.getter();
  v35 = sub_1004CAD58(&qword_1008E1920, &qword_1008E1908, &unk_1006DFC40);
  AttributedString.subscript.getter();
  sub_10000EA04(v26, &qword_1008E1908, &unk_1006DFC40);
  AttributedSubstring.characters.getter();
  (*(v39 + 8))(v11, v40);
  sub_10005FBE4(&qword_1008EF8E8, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v47[0] = String.init<A>(_:)();
  v47[1] = v27;
  sub_10000FCBC();
  v28 = StringProtocol.localizedUppercase.getter();
  v30 = v29;

  v42 = v23;
  AttributedString.Runs.Run.range.getter();
  v48 = v28;
  v49 = v30;
  v31 = AttributedString.characters.modify();
  sub_1002C18D8();
  AttributedString.CharacterView.replaceSubrange<A>(_:with:)();
  sub_10000EA04(v26, &qword_1008E1908, &unk_1006DFC40);
  v31(v47, 0);

  if ((v44 & 1) == 0)
  {
    AttributedString.Runs.Run.range.getter();
    v32 = v38;
    static Text.Scale.secondary.getter();
    v33 = type metadata accessor for Text.Scale();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = AttributedString.subscript.modify();
    sub_10001B104(v32, v37, &qword_1008EF8C8, &unk_1006F7030);
    sub_10007C248();
    AttributedSubstring.subscript.setter();
    sub_10000EA04(v32, &qword_1008EF8C8, &unk_1006F7030);
    v34(v47, 0);
    sub_10000EA04(v26, &qword_1008E1908, &unk_1006DFC40);
  }

  return v36(v22, v16);
}

id sub_1004C50E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006D64F0;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_10000A788();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v17;
  *(v16 + 64) = v17;
  *(v16 + 72) = a3;
  *(v16 + 80) = a4;
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v17;
  *(v16 + 112) = a5;
  *(v16 + 120) = a6;

  String.init(format:_:)();

  v18 = sub_1004CD164(a7, 33, 0);
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  *(inited + 40) = v18;
  v20 = NSFontAttributeName;
  v21 = v18;
  sub_1004C9888(inited, &qword_1008E2568, qword_1006E3D40, &unk_1008EE730, &unk_1006D8460);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &unk_1008EE730, &unk_1006D8460);
  v22 = objc_allocWithZone(NSMutableAttributedString);
  v23 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FBE4(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  return v25;
}

unint64_t sub_1004C53EC(Swift::UInt a1, char a2)
{
  Hasher.init(_seed:)();
  if ((a2 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_1004C66C0(a1, a2 & 1, v4);
}

unint64_t sub_1004C5470(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1004C6D8C(a1, v2);
}

unint64_t sub_1004C5500(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_1004C79E4(v1, v2);
}

unint64_t sub_1004C5568(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  v2 = Hasher._finalize()();
  return sub_1004C79E4(v1, v2);
}

unint64_t sub_1004C55D4(Swift::UInt a1, Swift::UInt a2, double a3, double a4)
{
  Hasher.init(_seed:)();
  sub_1004148D0(a3, a4, v10, a1, a2);
  v8 = Hasher._finalize()();

  return sub_1004C6784(a1, a2, v8, a3, a4);
}

unint64_t sub_1004C566C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C6818(v1, v2);
}

unint64_t sub_1004C577C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_10005FBE4(&qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100060C00(a1, v3, &type metadata accessor for Date, &qword_1008E1D78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
}

unint64_t sub_1004C5850(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1004C6A18(a1, v4);
}

unint64_t sub_1004C5894(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C6ADC(v1, v2);
}

unint64_t sub_1004C59D4(uint64_t a1)
{
  type metadata accessor for DateComponents();
  sub_10005FBE4(&qword_1008DF090, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100060C00(a1, v2, &type metadata accessor for DateComponents, &qword_1008DF098, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
}

unint64_t sub_1004C5AA8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1004C6CB8(a1, v4);
}

unint64_t sub_1004C5AEC(uint64_t a1)
{
  type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  sub_10005FBE4(&qword_1008EEF78, &type metadata accessor for EffortUtilities.WorkoutAndActivityKey, &protocol conformance descriptor for EffortUtilities.WorkoutAndActivityKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100060C00(a1, v2, &type metadata accessor for EffortUtilities.WorkoutAndActivityKey, &qword_1008EF960, &type metadata accessor for EffortUtilities.WorkoutAndActivityKey, &protocol conformance descriptor for EffortUtilities.WorkoutAndActivityKey);
}

unint64_t sub_1004C5BC0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1004C6EFC(a1, v4);
}

unint64_t sub_1004C5C30(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C7388(a1 & 1, v2);
}

unint64_t sub_1004C5CD4(uint64_t a1)
{
  type metadata accessor for IndexPath();
  sub_10005FBE4(&qword_1008EEE18, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100060C00(a1, v2, &type metadata accessor for IndexPath, &qword_1008EF918, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1004C5DA8(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1004C74CC(v2, a1);
}

unint64_t sub_1004C5DF4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C7534(v1, v2);
}

unint64_t sub_1004C5F10(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_100413CBC(v4, v1);
  v2 = Hasher._finalize()();

  return sub_1004C7738(v1, v2);
}

unint64_t sub_1004C5F7C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_10041401C(*(v1 + 40), a1);

  return sub_1004C7A54(v2, v3);
}

unint64_t sub_1004C5FC0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1004C6E90(a1, v2);
}

unint64_t sub_1004C602C(uint64_t a1, void *a2, unsigned int a3)
{
  Hasher.init(_seed:)();
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_100035B30(v9, a3);
  String.hash(into:)();

  if (!a3 || a3 == 2)
  {
    Hasher._combine(_:)(a1);
  }

  else if (a3 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)((a3 >> 8) & 1);
  v6 = Hasher._finalize()();

  return sub_1004C7CE4(a1, a2, a3 & 0x1FF, v6);
}

unint64_t sub_1004C6118(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C831C(v1, v2);
}

unint64_t sub_1004C6208(Swift::UInt a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v2 & 1;
  }

  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();

  return sub_1004C84CC(a1, v2, v6);
}

unint64_t sub_1004C62B0(Swift::UInt a1, uint64_t a2)
{
  v2 = a2;
  Hasher.init(_seed:)();
  sub_100447AC8(v6, a1, v2);
  v4 = Hasher._finalize()();

  return sub_1004C856C(a1, v2, v4);
}

unint64_t sub_1004C6328(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C86B4(a1 & 1, v2);
}

uint64_t sub_1004C63F0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_1004C648C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C8B58(a1 & 1, v2);
}

unint64_t sub_1004C6528(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C8C60(v1, v2);
}

unint64_t sub_1004C65DC(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1004C8DD8(a1 & 1, v2);
}

unint64_t sub_1004C667C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100414148(*(v1 + 40), a1);

  return sub_1004C8F14(v2, v3);
}

unint64_t sub_1004C66C0(unint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            if ((a2 & (a1 == 1)) != 0)
            {
              return result;
            }
          }

          else if ((a2 & (a1 > 1)) != 0)
          {
            return result;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C6784(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = -1 << *(v5 + 32);
  result = a3 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      v11 = *v10;
      v12 = *(v10 + 8);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = v11 == a4;
      if (v12 != a5)
      {
        v15 = 0;
      }

      v16 = v14 == a1 && v15;
      if (v13 == a2 && v16)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C6818(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v8 = 0xD000000000000012;
          v9 = "VO2MAX_BUCKET_FAIR";
        }

        else if (v6 == 4)
        {
          v8 = 0xD000000000000017;
          v9 = "VO2MAX_BUCKET_GOOD";
        }

        else
        {
          v8 = 0xD000000000000016;
          v9 = "VO2MAX_BUCKET_EXCELLENT";
        }
      }

      else
      {
        if (v6 == 1)
        {
          v7 = "VO2MAX_BUCKET_VERY_POOR";
        }

        else
        {
          v7 = "VO2MAX_BUCKET_POOR";
        }

        if (*(*(v21 + 48) + v4))
        {
          v8 = 0xD000000000000012;
        }

        else
        {
          v8 = 0xD000000000000017;
        }

        if (*(*(v21 + 48) + v4))
        {
          v9 = v7;
        }

        else
        {
          v9 = "tomSplit";
        }
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000017;
      v12 = 0xD000000000000016;
      if (v5 == 4)
      {
        v12 = 0xD000000000000017;
      }

      v13 = "VO2MAX_BUCKET_GOOD";
      if (v5 != 4)
      {
        v13 = "VO2MAX_BUCKET_EXCELLENT";
      }

      if (v5 == 3)
      {
        v12 = 0xD000000000000012;
        v13 = "VO2MAX_BUCKET_FAIR";
      }

      v14 = v5 == 1 ? "VO2MAX_BUCKET_VERY_POOR" : "VO2MAX_BUCKET_POOR";
      if (v5)
      {
        v11 = 0xD000000000000012;
      }

      else
      {
        v14 = "tomSplit";
      }

      v15 = v5 <= 2 ? v11 : v12;
      v16 = v5 <= 2 ? v14 : v13;
      if (v8 == v15 && v10 == (v16 | 0x8000000000000000))
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C6A18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CatalogItemViewModel(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1004C6ADC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v19 + 48) + v4) ? 0x736C616F67 : 7105633;
        v8 = *(*(v19 + 48) + v4) ? 0xE500000000000000 : 0xE300000000000000;
      }

      else if (v6 == 2)
      {
        v8 = 0xE600000000000000;
        v7 = 0x68746C616568;
      }

      else
      {
        v7 = v6 == 3 ? 0x6163696669746F6ELL : 0x7374696E75;
        v8 = v6 == 3 ? 0xED0000736E6F6974 : 0xE500000000000000;
      }

      if (v5 == 3)
      {
        v9 = 0x6163696669746F6ELL;
      }

      else
      {
        v9 = 0x7374696E75;
      }

      if (v5 == 3)
      {
        v10 = 0xED0000736E6F6974;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v9 = 0x68746C616568;
        v10 = 0xE600000000000000;
      }

      v11 = v5 ? 0x736C616F67 : 7105633;
      v12 = v5 ? 0xE500000000000000 : 0xE300000000000000;
      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C6CB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1004C6D8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C6E90(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C6EFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1004CD454(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100282EF8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1004C6FC4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0x43676E696C637963;
            v8 = 0xEE0065636E656461;
          }

          else if (v6 == 10)
          {
            v7 = 0xD000000000000012;
            v8 = 0x8000000100746F70;
          }

          else
          {
            v7 = 0x536D756D6978616DLL;
            v8 = 0xEC00000064656570;
          }
        }

        else if (v6 == 6)
        {
          v8 = 0xE700000000000000;
          v7 = 0x65636E65646163;
        }

        else if (v6 == 7)
        {
          v8 = 0xE600000000000000;
          v7 = 0x796772656E65;
        }

        else
        {
          v8 = 0xE500000000000000;
          v7 = 0x6465657073;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v8 = 0xE400000000000000;
          v7 = 1701011824;
        }

        else if (v6 == 4)
        {
          v7 = 0x7461527472616568;
          v8 = 0xE900000000000065;
        }

        else
        {
          v8 = 0xE500000000000000;
          v7 = 0x7265776F70;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x65636E6174736964;
        }

        else
        {
          v7 = 1701669236;
        }

        if (v6 == 1)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xE400000000000000;
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x72656B72616DLL;
      }

      v9 = 0xD000000000000012;
      if (v5 != 10)
      {
        v9 = 0x536D756D6978616DLL;
      }

      v10 = 0xEC00000064656570;
      if (v5 == 10)
      {
        v10 = 0x8000000100746F70;
      }

      if (v5 == 9)
      {
        v9 = 0x43676E696C637963;
        v10 = 0xEE0065636E656461;
      }

      v11 = 0x796772656E65;
      if (v5 == 7)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v11 = 0x6465657073;
        v12 = 0xE500000000000000;
      }

      if (v5 == 6)
      {
        v11 = 0x65636E65646163;
        v12 = 0xE700000000000000;
      }

      if (v5 <= 8)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x7461527472616568;
      if (v5 != 4)
      {
        v13 = 0x7265776F70;
      }

      v14 = 0xE900000000000065;
      if (v5 != 4)
      {
        v14 = 0xE500000000000000;
      }

      if (v5 == 3)
      {
        v13 = 1701011824;
        v14 = 0xE400000000000000;
      }

      v15 = 0x65636E6174736964;
      if (v5 != 1)
      {
        v15 = 1701669236;
      }

      v16 = 0xE800000000000000;
      if (v5 != 1)
      {
        v16 = 0xE400000000000000;
      }

      if (!v5)
      {
        v15 = 0x72656B72616DLL;
        v16 = 0xE600000000000000;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C7388(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6D6F74737563;
    }

    else
    {
      v6 = 0x647261646E617473;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6D6F74737563 : 0x647261646E617473;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C74CC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C7534(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v7 = 0x61446D6F74737563;
        }

        else
        {
          v7 = 0x796144664F646E65;
        }

        if (*(*(v19 + 48) + v4))
        {
          v8 = 0xEA00000000007379;
        }

        else
        {
          v8 = 0xE800000000000000;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0x656557664F646E65;
        v8 = 0xE90000000000006BLL;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x6E6F4D664F646E65;
        }

        else
        {
          v7 = 0x6369666963657073;
        }

        if (v6 == 3)
        {
          v8 = 0xEA00000000006874;
        }

        else
        {
          v8 = 0xEC00000065746144;
        }
      }

      if (v5 == 3)
      {
        v9 = 0x6E6F4D664F646E65;
      }

      else
      {
        v9 = 0x6369666963657073;
      }

      if (v5 == 3)
      {
        v10 = 0xEA00000000006874;
      }

      else
      {
        v10 = 0xEC00000065746144;
      }

      if (v5 == 2)
      {
        v9 = 0x656557664F646E65;
        v10 = 0xE90000000000006BLL;
      }

      v11 = 0xEA00000000007379;
      if (v5)
      {
        v12 = 0x61446D6F74737563;
      }

      else
      {
        v12 = 0x796144664F646E65;
      }

      if (!v5)
      {
        v11 = 0xE800000000000000;
      }

      v13 = v5 <= 1 ? v12 : v9;
      v14 = v5 <= 1 ? v11 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C7738(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x616473656E646577;
        }

        else
        {
          v9 = 0x7961647372756874;
        }

        if (v6 == 2)
        {
          v10 = 0xE900000000000079;
        }

        else
        {
          v10 = 0xE800000000000000;
        }

        if (*(*(v28 + 48) + v4))
        {
          v11 = 0x79616473657574;
        }

        else
        {
          v11 = 0x7961646E6F6DLL;
        }

        if (*(*(v28 + 48) + v4))
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE600000000000000;
        }

        if (*(*(v28 + 48) + v4) <= 1u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }

        if (*(*(v28 + 48) + v4) <= 1u)
        {
          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*(*(v28 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xE600000000000000;
          v8 = 0x796164697266;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x7961647275746173;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0x7961646E7573;
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
        if (v6 == 7)
        {
          v8 = 0x7961646F74;
        }

        else
        {
          v8 = 0x796C696164;
        }
      }

      v13 = 0x7961646E7573;
      v14 = 0x796C696164;
      if (v5 == 7)
      {
        v14 = 0x7961646F74;
      }

      if (v5 == 6)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v13 = v14;
        v15 = 0xE500000000000000;
      }

      v16 = 0x7961647275746173;
      if (v5 == 4)
      {
        v16 = 0x796164697266;
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v16;
        v15 = v17;
      }

      if (v5 == 2)
      {
        v18 = 0x616473656E646577;
      }

      else
      {
        v18 = 0x7961647372756874;
      }

      if (v5 == 2)
      {
        v19 = 0xE900000000000079;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (v5)
      {
        v20 = 0x79616473657574;
      }

      else
      {
        v20 = 0x7961646E6F6DLL;
      }

      if (v5)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v5 <= 3 ? v18 : v13;
      v23 = v5 <= 3 ? v19 : v15;
      if (v8 == v22 && v7 == v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        v4 = (v4 + 1) & v26;
        if ((*(v27 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C79E4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C7A54(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6F6C614365766F6DLL;
          }

          else
          {
            v8 = 0x6F6C694B65766F6DLL;
          }

          if (v7 == 1)
          {
            v9 = 0xEC00000073656972;
          }

          else
          {
            v9 = 0xEE0073656C756F6ALL;
          }
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 7105633;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE500000000000000;
          v8 = 0x646E617473;
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1819045746;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x756E694D65766F6DLL;
        }

        else
        {
          v8 = 0x6573696372657865;
        }

        if (v7 == 3)
        {
          v9 = 0xEB00000000736574;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      v10 = 0x646E617473;
      if (v6 != 5)
      {
        v10 = 1819045746;
      }

      v11 = 0xE500000000000000;
      if (v6 != 5)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x756E694D65766F6DLL;
      if (v6 != 3)
      {
        v12 = 0x6573696372657865;
      }

      v13 = 0xEB00000000736574;
      if (v6 != 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6F6C694B65766F6DLL;
      if (v6 == 1)
      {
        v14 = 0x6F6C614365766F6DLL;
      }

      v15 = 0xEE0073656C756F6ALL;
      if (v6 == 1)
      {
        v15 = 0xEC00000073656972;
      }

      if (!v6)
      {
        v14 = 7105633;
        v15 = 0xE300000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C7CE4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a1 != 9;
    v14 = a1 != 8;
    v15 = a1 != 7;
    v16 = a1 != 6;
    v17 = a1 != 5;
    v18 = a1 != 4;
    v19 = a1 != 3;
    if (a2)
    {
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 0;
    }

    else
    {
      v20 = a1 == 2;
    }

    if (a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = a1 == 1;
    }

    v45 = v21;
    v46 = (a2 | a1) == 0;
    v22 = a3 != 3 || v13;
    v44 = v22;
    v23 = a3 != 3 || v14;
    v24 = a3 != 3 || v15;
    v42 = v24;
    v43 = v23;
    v25 = a3 != 3 || v16;
    v26 = a3 != 3 || v17;
    v40 = v26;
    v41 = v25;
    v27 = a3 != 3 || v18;
    v28 = a3 != 3 || v19;
    v38 = v28;
    v39 = v27;
    do
    {
      v31 = v12 + 24 * v7;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 17);
      if (*(v31 + 16) > 1u)
      {
        if (*(v31 + 16) == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_32;
          }

          goto LABEL_39;
        }

        if (v32 > 4)
        {
          if (v32 <= 6)
          {
            v29 = v34 ^ ((a3 & 0x100) >> 8);
            if (v32 ^ 5 | v33)
            {
              v30 = v41;
            }

            else
            {
              v30 = v40;
            }
          }

          else if (v32 ^ 7 | v33)
          {
            v29 = v34 ^ ((a3 & 0x100) >> 8);
            if (v32 ^ 8 | v33)
            {
              v30 = v44;
            }

            else
            {
              v30 = v43;
            }
          }

          else
          {
            v29 = v34 ^ ((a3 & 0x100) >> 8);
            v30 = v42;
          }

LABEL_31:
          if (((v30 | v29) & 1) == 0)
          {
            return v7;
          }

          goto LABEL_32;
        }

        if (v32 <= 1)
        {
          v36 = v46;
          if (v32 | v33)
          {
            v36 = v45;
          }
        }

        else
        {
          v36 = v20;
          if (v32 ^ 2 | v33)
          {
            v29 = v34 ^ ((a3 & 0x100) >> 8);
            if (v32 ^ 3 | v33)
            {
              v30 = v39;
            }

            else
            {
              v30 = v38;
            }

            goto LABEL_31;
          }
        }

        if (v36 && a3 == 3)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (!*(v31 + 16))
        {
          if (a3)
          {
            goto LABEL_32;
          }

LABEL_39:
          if (v32 != a1)
          {
            goto LABEL_32;
          }

          goto LABEL_40;
        }

        if (a3 != 1)
        {
          goto LABEL_32;
        }

        if (v32 != a1 || v33 != a2)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_40:
          if (((v34 ^ ((a3 & 0x100) >> 8)) & 1) == 0)
          {
            return v7;
          }

          goto LABEL_32;
        }

        if (v34 == (a3 & 0x100) >> 8)
        {
          return v7;
        }
      }

LABEL_32:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1004C7FFC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE500000000000000;
            v11 = 0x7265776F70;
          }

          else
          {
            v11 = 0x6C6C69686E776F64;
            v12 = 0xEC000000736E7552;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0x70614C6B63617274;
          v12 = 0xE900000000000073;
        }

        else if (v6 == 8)
        {
          v12 = 0xE800000000000000;
          v11 = 0x737465536D697773;
        }

        else
        {
          v12 = 0xE300000000000000;
          v11 = 7364973;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x6C61767265746E69;
        }

        else
        {
          v7 = 0x7461527472616568;
        }

        if (v6 == 3)
        {
          v8 = 0xE900000000000073;
        }

        else
        {
          v8 = 0xE900000000000065;
        }

        if (v6 == 2)
        {
          v7 = 0x73746E656D676573;
          v8 = 0xE800000000000000;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x7374696C7073 : 0x736C6961746564;
        v10 = v6 ? 0xE600000000000000 : 0xE700000000000000;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x737465536D697773;
      if (v5 != 8)
      {
        v13 = 7364973;
      }

      v14 = 0xE300000000000000;
      if (v5 == 8)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 7)
      {
        v13 = 0x70614C6B63617274;
        v14 = 0xE900000000000073;
      }

      v15 = 0x6C6C69686E776F64;
      if (v5 == 5)
      {
        v15 = 0x7265776F70;
      }

      v16 = 0xEC000000736E7552;
      if (v5 == 5)
      {
        v16 = 0xE500000000000000;
      }

      if (v5 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 3)
      {
        v17 = 0x6C61767265746E69;
      }

      else
      {
        v17 = 0x7461527472616568;
      }

      if (v5 == 3)
      {
        v18 = 0xE900000000000073;
      }

      else
      {
        v18 = 0xE900000000000065;
      }

      if (v5 == 2)
      {
        v17 = 0x73746E656D676573;
        v18 = 0xE800000000000000;
      }

      if (v5)
      {
        v19 = 0x7374696C7073;
      }

      else
      {
        v19 = 0x736C6961746564;
      }

      if (v5)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 4 ? v17 : v13;
      v22 = v5 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1004C831C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x746E656D676573 : 0x6C61767265746E69;
      v8 = v6 == 2 ? 0xE700000000000000 : 0xE800000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x70536D6F74737563 : 0x74696C7073;
      v10 = *(*(v23 + 48) + v4) ? 0xEB0000000074696CLL : 0xE500000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x746E656D676573 : 0x6C61767265746E69;
      v14 = v5 == 2 ? 0xE700000000000000 : 0xE800000000000000;
      v15 = v5 ? 0x70536D6F74737563 : 0x74696C7073;
      v16 = v5 ? 0xEB0000000074696CLL : 0xE500000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C84CC(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*v8 == a1)
      {
        v9 = *(v8 + 8);
        if (v9 == 2)
        {
          if (a2 == 2)
          {
            return result;
          }
        }

        else if (a2 != 2 && ((v9 ^ a2) & 1) == 0)
        {
          return result;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C856C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *(v8 + 8);
      v10 = v9 >> 8;
      if (v9 >> 8 <= 3)
      {
        if (v10 == 2)
        {
          if ((a2 & 0xFF00) == 0x200)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v10 == 3)
        {
          if ((a2 & 0xFF00) == 0x300)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v10)
        {
          case 4u:
            if ((a2 & 0xFF00) == 0x400)
            {
              return result;
            }

            goto LABEL_4;
          case 5u:
            if ((a2 & 0xFF00) == 0x500)
            {
              return result;
            }

            goto LABEL_4;
          case 6u:
            if ((a2 & 0xFF00) == 0x600)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (BYTE1(a2) - 7 > 0xFFFFFFFA || *v8 != a1)
      {
        goto LABEL_4;
      }

      if (*(v8 + 8) == 2)
      {
        if (a2 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (a2 == 2 || ((v9 ^ a2) & 1) != 0)
      {
        goto LABEL_4;
      }

      if ((((a2 & 0xFF00 ^ v9) >> 8) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004C86B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x747365776F6C73;
    }

    else
    {
      v6 = 0x74736574736166;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x747365776F6C73 : 0x74736574736166;
      if (v7 == v6)
      {
        break;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1004C87BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    v5 = 0xE900000000000065;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v29 + 48) + v4);
      if (v7 <= 4)
      {
        v10 = 0xE90000000000006ELL;
        if (v7 == 3)
        {
          v11 = 0x65636E65646163;
        }

        else
        {
          v11 = 0x7265776F70;
        }

        if (v7 == 3)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v7 == 2)
        {
          v11 = 0x6F69746176656C65;
        }

        else
        {
          v10 = v12;
        }

        if (*(*(v29 + 48) + v4))
        {
          v13 = 1701011824;
        }

        else
        {
          v13 = 0x7461527472616568;
        }

        if (*(*(v29 + 48) + v4))
        {
          v14 = 0xE400000000000000;
        }

        else
        {
          v14 = 0xE900000000000065;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v8 = v13;
        }

        else
        {
          v8 = v11;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v9 = v14;
        }

        else
        {
          v9 = v10;
        }
      }

      else if (*(*(v29 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v9 = 0xE500000000000000;
          v8 = 0x6465657073;
        }

        else if (v7 == 9)
        {
          v8 = 0x53676E696C637963;
          v9 = 0xEC00000064656570;
        }

        else
        {
          v8 = 0x43676E696C637963;
          v9 = 0xEE0065636E656461;
        }
      }

      else if (v7 == 5)
      {
        v8 = 0xD000000000000011;
        v9 = 0x80000001007474C0;
      }

      else if (v7 == 6)
      {
        v8 = 0x654C656469727473;
        v9 = 0xEC0000006874676ELL;
      }

      else
      {
        v8 = 0xD000000000000013;
        v9 = 0x80000001007474E0;
      }

      v15 = 0x53676E696C637963;
      if (v6 != 9)
      {
        v15 = 0x43676E696C637963;
      }

      v16 = 0xEE0065636E656461;
      if (v6 == 9)
      {
        v16 = 0xEC00000064656570;
      }

      if (v6 == 8)
      {
        v15 = 0x6465657073;
        v16 = 0xE500000000000000;
      }

      v17 = 0xD000000000000013;
      if (v6 == 6)
      {
        v17 = 0x654C656469727473;
      }

      v18 = 0xEC0000006874676ELL;
      if (v6 != 6)
      {
        v18 = 0x80000001007474E0;
      }

      if (v6 == 5)
      {
        v17 = 0xD000000000000011;
        v18 = 0x80000001007474C0;
      }

      if (v6 <= 7)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0xE90000000000006ELL;
      if (v6 == 3)
      {
        v20 = 0x65636E65646163;
      }

      else
      {
        v20 = 0x7265776F70;
      }

      if (v6 == 3)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v20 = 0x6F69746176656C65;
      }

      else
      {
        v19 = v21;
      }

      if (v6)
      {
        v22 = 1701011824;
      }

      else
      {
        v22 = 0x7461527472616568;
      }

      if (v6)
      {
        v5 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v20 = v22;
        v19 = v5;
      }

      v23 = v6 <= 4 ? v20 : v15;
      v24 = v6 <= 4 ? v19 : v16;
      if (v8 == v23 && v9 == v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v4 = (v4 + 1) & v27;
        v5 = 0xE900000000000065;
        if ((*(v28 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C8B58(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x747365676E6F6CLL;
    }

    else
    {
      v6 = 0x746E6572727563;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x747365676E6F6CLL : 0x746E6572727563;
      if (v7 == v6)
      {
        break;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1004C8C60(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE500000000000000;
          v8 = 0x68746E6F6DLL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1918985593;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1801807223)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1801807223;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x68746E6F6DLL;
      }

      else
      {
        v10 = 1918985593;
      }

      if (v9 == 1)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C8DD8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 1953718636;
    }

    else
    {
      v6 = 0x746E6572727563;
    }

    if (a1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 1953718636 : 0x746E6572727563;
      v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C8F14(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v2 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v10 = 0xD000000000000010;
            v11 = 0x800000010075C600;
          }

          else
          {
            v10 = 0x74697465706D6F63;
            v11 = 0xEC000000736E6F69;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v10 = 0x507373656E746966;
          }

          else
          {
            v10 = 0x45646574696D696CLL;
          }

          if (v6 == 4)
          {
            v11 = 0xEB0000000073756CLL;
          }

          else
          {
            v11 = 0xEE006E6F69746964;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x7974697669746361;
        }

        else
        {
          v7 = 0x7374756F6B726F77;
        }

        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x7449726F466F67;
        }

        else
        {
          v8 = 7105633;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v10 = v8;
        }

        else
        {
          v10 = v7;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }

      v12 = 0xD000000000000010;
      if (v5 != 6)
      {
        v12 = 0x74697465706D6F63;
      }

      v13 = 0xEC000000736E6F69;
      if (v5 == 6)
      {
        v13 = 0x800000010075C600;
      }

      v14 = 0x507373656E746966;
      if (v5 != 4)
      {
        v14 = 0x45646574696D696CLL;
      }

      v15 = 0xEE006E6F69746964;
      if (v5 == 4)
      {
        v15 = 0xEB0000000073756CLL;
      }

      if (v5 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 2)
      {
        v16 = 0x7974697669746361;
      }

      else
      {
        v16 = 0x7374756F6B726F77;
      }

      v17 = 0xE800000000000000;
      if (v5)
      {
        v18 = 0x7449726F466F67;
      }

      else
      {
        v18 = 7105633;
      }

      if (v5)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v5 <= 3 ? v16 : v12;
      v21 = v5 <= 3 ? v17 : v13;
      if (v10 == v20 && v11 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1004C9224(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF880, &qword_1006F4878);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF060, &qword_1006F3A18);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF880, &qword_1006F4878);
      v11 = *v5;
      v12 = v5[8];
      result = sub_1004C53EC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 16 * result;
      *v16 = v11;
      *(v16 + 8) = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MetricDetailViewModel(0);
      result = sub_1004CD3F0(&v5[v8], v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

void *sub_1004C93F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100140278(&qword_1008EF050, &qword_1006F3A08);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1004C53EC(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = v4;
    *(v12 + 8) = v5 & 1;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 8);
    v17 = *v11;

    v9 = sub_1004C53EC(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004C9558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100140278(&qword_1008EECA8, &qword_1006F3688);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1004C5500(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1004C5500(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1004C967C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100140278(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100066F20(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1004C9778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF860, &qword_1006F4858);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1004C5470(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1004C9888(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100140278(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_10001B104(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1004C5470(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_1001AA76C(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_1004C99A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF858, &qword_1006F4850);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1004C55D4(v7, v8, v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      *(v12 + 2) = v7;
      *(v12 + 3) = v8;
      *(v3[7] + result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1004C9AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEEF0, &qword_1006F3928);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_1000A72F0(v5, v6);
      result = sub_1004C5850(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1004C9BA8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DDB88, &qword_1006D6EF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EFA18, &qword_1006F4990);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008DDB88, &qword_1006D6EF0);
      v11 = *v5;
      result = sub_1004C5894(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004C9D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF908, &qword_1006F48A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1004C5470(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1004C9E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF968, &qword_1006F48F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1004C5470(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1004C9F78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF910, &qword_1006F48B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1004C5AA8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1004CA070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EA688, qword_1006EBC00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001B104(v4, v13, &qword_1008F4FA0, &qword_1006FDBE0);
      result = sub_1004C5BC0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1001AA76C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1004CA1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEDE0, &qword_1006F3818);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100066F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1004CA2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF878, &qword_1006F4870);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1004C5568(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1004CA388(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E47E0, &qword_1006E28D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EFA10, &qword_1006F4988);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008E47E0, &qword_1006E28D8);
      v11 = *v5;
      result = sub_1004C5C30(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CA570(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF958, &qword_1006F48F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EEF58, &qword_1006F39A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF958, &qword_1006F48F0);
      v11 = *v5;
      result = sub_1004C5998(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ImpressionMetrics();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1004CA74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEF40, &qword_1006F3988);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1004C5500(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1004CA834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEF48, &qword_1006F3990);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 8);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 4);
      result = sub_1004C5500(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1004CA93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100140278(&qword_1008EF928, &qword_1006F48C0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 208);
  *&v35[160] = *(a1 + 192);
  *&v35[176] = v4;
  *&v35[185] = *(a1 + 217);
  v5 = *(a1 + 144);
  *&v35[96] = *(a1 + 128);
  *&v35[112] = v5;
  v6 = *(a1 + 176);
  *&v35[128] = *(a1 + 160);
  *&v35[144] = v6;
  v7 = *(a1 + 80);
  *&v35[32] = *(a1 + 64);
  *&v35[48] = v7;
  v8 = *(a1 + 112);
  *&v35[64] = *(a1 + 96);
  *&v35[80] = v8;
  v9 = *(a1 + 48);
  *v35 = *(a1 + 32);
  *&v35[16] = v9;
  v10 = v35[0];
  result = sub_1004C5500(v35[0]);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_10001B104(v35, v34, &qword_1008EF930, &qword_1006F48C8);
    return v3;
  }

  v13 = (a1 + 240);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v10;
    v14 = v3[7] + 200 * result;
    *v14 = *&v35[8];
    v15 = *&v35[24];
    v16 = *&v35[40];
    v17 = *&v35[72];
    *(v14 + 48) = *&v35[56];
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v18 = *&v35[88];
    v19 = *&v35[104];
    v20 = *&v35[136];
    *(v14 + 112) = *&v35[120];
    *(v14 + 128) = v20;
    *(v14 + 80) = v18;
    *(v14 + 96) = v19;
    v21 = *&v35[152];
    v22 = *&v35[168];
    v23 = *&v35[184];
    *(v14 + 192) = v35[200];
    *(v14 + 160) = v22;
    *(v14 + 176) = v23;
    *(v14 + 144) = v21;
    v24 = v3[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      break;
    }

    v3[2] = v26;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_10001B104(v35, v34, &qword_1008EF930, &qword_1006F48C8);
    v27 = v13[11];
    *&v35[160] = v13[10];
    *&v35[176] = v27;
    *&v35[185] = *(v13 + 185);
    v28 = v13[7];
    *&v35[96] = v13[6];
    *&v35[112] = v28;
    v29 = v13[9];
    *&v35[128] = v13[8];
    *&v35[144] = v29;
    v30 = v13[3];
    *&v35[32] = v13[2];
    *&v35[48] = v30;
    v31 = v13[5];
    *&v35[64] = v13[4];
    *&v35[80] = v31;
    v32 = v13[1];
    *v35 = *v13;
    *&v35[16] = v32;
    v10 = v35[0];
    result = sub_1004C5500(v35[0]);
    v13 += 13;
    if (v33)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1004CAB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEDC8, &qword_1006F37F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1000A72F0(v7, v8);
      result = sub_100066F20(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1004CAC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF850, &qword_1006F4848);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1004C5470(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_1004CAD58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004CADAC(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E61F0, &qword_1006E5AE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EFA08, &qword_1006F4980);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008E61F0, &qword_1006E5AE0);
      v11 = *v5;
      result = sub_1004C5DF4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CAF94(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E6098, &qword_1006E56A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EFA00, &qword_1006F4978);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008E6098, &qword_1006E56A0);
      v11 = *v5;
      result = sub_1004C5F10(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CB17C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF950, &qword_1006F48E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_100066F20(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v8;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1004CB298(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EFA20, qword_1006F4998);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF058, &qword_1006F3A10);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EFA20, qword_1006F4998);
      v11 = *v5;
      result = sub_1004C5500(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for MetricDetailViewModel(0);
      result = sub_1004CD3F0(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1004CB458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF900, &qword_1006F48A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_1004C5470(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1004CB548(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E74E8, qword_1006E7990);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9F8, &qword_1006F4970);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008E74E8, qword_1006E7990);
      v11 = *v5;
      result = sub_1004C5F7C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CB730(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF938, &qword_1006F48D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EB7C8, &unk_1006ED7F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v23 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_10001B104(v8, v5, &qword_1008EF938, &qword_1006F48D0);
      v10 = *v5;
      v11 = *(v5 + 1);
      v12 = v5[16];
      result = sub_10002AB7C(*v5, v11, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 24 * result;
      *v16 = v10;
      *(v16 + 8) = v11;
      *(v16 + 16) = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MetricDetailViewModel(0);
      result = sub_1004CD3F0(&v5[v23], v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

void *sub_1004CB91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100140278(&qword_1008EEF28, &unk_1006F3968);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_10002AB7C(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = v3[6] + 24 * v10;
    *v13 = v4;
    *(v13 + 8) = v5;
    *(v13 + 16) = v6 & 1;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 24);
    v5 = *(v12 - 2);
    v6 = *(v12 - 8);
    v18 = *v12;

    v10 = sub_10002AB7C(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1004CBA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF940, &qword_1006F48D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      sub_10001B104(i, &v11, &qword_1008EF948, &qword_1006F48E0);
      v5 = v11;
      result = sub_1004C5FC0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006260(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1004CBB88(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EC730, &qword_1006EF618);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9F0, &qword_1006F4968);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EC730, &qword_1006EF618);
      v11 = *v5;
      result = sub_1004C63F0(*v5, sub_100402AF0, sub_1004C7FFC);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CBD98(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EC720, &qword_1006EF608);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9E8, &qword_1006F4960);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EC720, &qword_1006EF608);
      v11 = *v5;
      result = sub_1004C6118(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CBF80(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF870, &qword_1006F4868);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EECB0, &qword_1006F3690);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF870, &qword_1006F4868);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100066F20(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CatalogWorkout();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CC16C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EE248, &qword_1006F2148);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9E0, &qword_1006F4958);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EE248, &qword_1006F2148);
      v11 = *v5;
      result = sub_1004C6328(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CC354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEDD0, &qword_1006F3800);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 3)
    {
      v5 = *(i - 8);
      v15 = *(i - 24);
      v16 = v5;
      v17 = *(i + 1);
      v6 = *(i + 2);
      v20 = *(i - 4);
      v18 = *i;
      v19 = v15;
      sub_1004A8DAC(&v19, v14);
      sub_1002CC474(&v18, v14);
      result = sub_1000358C4(&v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v16;
      *v9 = v15;
      *(v9 + 16) = v10;
      *(v9 + 32) = v17;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1004CC4C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_1004CC494(v0);
}

unint64_t sub_1004CC520(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF9B8, &qword_1006F4930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9C0, &qword_1006F4938);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v8, v5, &qword_1008EF9B8, &qword_1006F4930);
      result = sub_1004CC4C0();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CC6EC(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF9C8, &qword_1006F4940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9D0, &qword_1006F4948);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v8, v5, &qword_1008EF9C8, &qword_1006F4940);
      result = sub_1004CC4C0();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_100140278(&qword_1008EF9D8, &qword_1006F4950);
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CC8C8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF9A8, qword_1006F9180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9B0, &qword_1006F4928);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF9A8, qword_1006F9180);
      v11 = *v5;
      result = sub_1004C648C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CCAB0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF998, &qword_1006FC290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF9A0, &qword_1006F4920);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF998, &qword_1006FC290);
      v11 = *v5;
      result = sub_1004C6528(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CCC98(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF988, &qword_1006FC280);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF990, &qword_1006F4918);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF988, &qword_1006FC280);
      v11 = *v5;
      result = sub_1004C65DC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CCE80(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF978, &qword_1006F4908);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EF980, &qword_1006F4910);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF978, &qword_1006F4908);
      v11 = *v5;
      result = sub_1004C667C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1004CD068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF8F8, &qword_1006F4898);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100066F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_1004CD164(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 fontDescriptor];
  sub_100140278(&qword_1008EC0A0, &qword_1006EE440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v7 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v8 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = a2;
  *(inited + 48) = v8;
  *(inited + 56) = a3;
  v9 = v7;
  v10 = v8;
  v11 = sub_1004C9778(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008EC0A8, &qword_1006EE448);
  swift_arrayDestroy();
  sub_100140278(&qword_1008DF6E8, &qword_1006D98F8);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1006D46C0;
  *(v12 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100140278(&qword_1008EC098, &qword_1006EE438);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D46C0;
  *(v13 + 32) = v11;
  *(v12 + 64) = sub_100140278(&qword_1008EA680, &qword_1006EBBF8);
  *(v12 + 40) = v13;
  v14 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1004C9888(v12, &qword_1008EA678, &qword_1006EBBF0, &qword_1008DF708, &qword_1006D9918);
  swift_setDeallocating();
  sub_10000EA04(v12 + 32, &qword_1008DF708, &qword_1006D9918);
  type metadata accessor for AttributeName(0);
  sub_10005FBE4(&qword_1008DBA98, type metadata accessor for AttributeName, &unk_1006D3C40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v5 fontDescriptorByAddingAttributes:isa];

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  return v17;
}

uint64_t sub_1004CD3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricDetailViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CD4B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004CD528()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004CD59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100140278(&qword_1008E1760, &qword_1006D4490);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_1004CD638, 0, 0);
}

uint64_t sub_1004CD638()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  sub_10055AF2C(v1, &unk_1006F4A28, v4);
  sub_10000EA04(v1, &qword_1008E1760, &qword_1006D4490);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004CD780()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004CEE90();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004CD80C(void *a1)
{
  v170 = a1;
  v168 = type metadata accessor for WorkoutChartDataElement(0);
  v151 = *(v168 - 8);
  __chkstk_darwin(v168);
  v149 = &v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v150 = &v146 - v4;
  __chkstk_darwin(v5);
  v147 = &v146 - v6;
  __chkstk_darwin(v7);
  v9 = &v146 - v8;
  __chkstk_darwin(v10);
  v184 = &v146 - v11;
  __chkstk_darwin(v12);
  v148 = &v146 - v13;
  v14 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v14 - 8);
  v164 = &v146 - v15;
  v167 = type metadata accessor for Calendar();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for WorkoutChartViewModel(0);
  v17 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v146 - v23;
  v172 = sub_100140278(&unk_1008F73D0, &unk_1006D5E30);
  v162 = *(v172 - 1);
  __chkstk_darwin(v172);
  v159 = &v146 - v25;
  v26 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v26 - 8);
  v163 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v155 = &v146 - v29;
  __chkstk_darwin(v30);
  v156 = &v146 - v31;
  __chkstk_darwin(v32);
  v34 = &v146 - v33;
  v177 = type metadata accessor for Date();
  v183 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v176 = &v146 - v37;
  __chkstk_darwin(v38);
  v158 = &v146 - v39;
  __chkstk_darwin(v40);
  v157 = &v146 - v41;
  __chkstk_darwin(v42);
  v171 = &v146 - v43;
  __chkstk_darwin(v44);
  v182 = &v146 - v45;
  __chkstk_darwin(v46);
  v178 = &v146 - v47;
  *&v49 = __chkstk_darwin(v48).n128_u64[0];
  v181 = &v146 - v50;
  v51 = v1[8];
  v52 = v1[2];
  v53 = v1[3];
  v179 = v1;
  v54 = [v51 hasAverageCyclingPowerForWorkout:v52 workoutActivity:{v53, v49}];
  v154 = v17;
  v153 = v24;
  v152 = v21;
  v146 = v9;
  v169 = v52;
  if (v54)
  {
    [v51 averageCyclingPowerForWorkout:v52 workoutActivity:v53];
  }

  else
  {
    v55 = sub_10056FFD4(v170);
  }

  v56 = v55;
  v57 = [v51 formattedPowerStringFor:v146];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v160 = v59;

  v60 = [v51 formattedAveragePowerStringFor:@"WorkoutDetailDisplayContext" context:v56];
  swift_getKeyPath();
  swift_getKeyPath();
  v187 = v60;

  static Published.subscript.setter();
  v61 = v177;
  v161 = v58;
  if (v53)
  {
    v62 = [v53 startDate];
    v63 = v178;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v183;
    v65 = v183[4];
    v65(v34, v63, v61);
    v66 = 1;
    v180 = v64[7];
    (v180)(v34, 0, 1, v61);
    v65(v181, v34, v61);
    v67 = [v53 endDate];
    if (v67)
    {
      v68 = v155;
      v69 = v67;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = 0;
      v70 = v156;
    }

    else
    {
      v70 = v156;
      v68 = v155;
    }

    (v180)(v68, v66, 1, v61);
    sub_100015E80(v68, v70, &unk_1008F73A0, &unk_1006DB450);
    v73 = v183[6];
    if (v73(v70, 1, v61) != 1)
    {
      v65(v182, v70, v61);
      goto LABEL_15;
    }
  }

  else
  {
    v71 = v183;
    v180 = v183[7];
    (v180)(v34, 1, 1, v177);
    v72 = [v169 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v71[6];
    if (v73(v34, 1, v61) != 1)
    {
      sub_10000EA04(v34, &unk_1008F73A0, &unk_1006DB450);
    }

    v70 = v156;
    (v180)(v156, 1, 1, v61);
  }

  v74 = [v169 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if (v73(v70, 1, v61) != 1)
  {
    sub_10000EA04(v70, &unk_1008F73A0, &unk_1006DB450);
  }

LABEL_15:
  v75 = v159;
  v76 = v183;
  v77 = v183 + 2;
  v78 = v183[2];
  v79 = v178;
  v78(v178, v181, v61);
  v78(v171, v182, v61);
  type metadata accessor for WorkoutChartProperties(0);
  v80 = swift_allocObject();
  *&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets] = 0x404E000000000000;
  *&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration] = 0x404E000000000000;
  v81 = &v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth];
  v156 = &v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth];
  *v81 = 0;
  v81[8] = 1;
  v82 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
  v187 = 0;
  v188 = 1;
  v155 = sub_100140278(&unk_1008F73E0, &unk_1006D5E40);
  Published.init(initialValue:)();
  v83 = v162;
  (*(v162 + 4))(&v80[v82], v75, v172);
  *&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v169 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  v159 = (v76 + 7);
  (v180)(&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate], 1, 1, v61);
  *&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount] = 0;
  v84 = &v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom];
  *v84 = 0;
  v84[8] = 1;
  v85 = v157;
  v78(v157, v79, v61);
  swift_beginAccess();
  v78(v158, v85, v61);
  Published.init(initialValue:)();
  v86 = v76[1];
  v86(v85, v61);
  swift_endAccess();
  v87 = v178;
  v78(&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate], v178, v61);
  swift_beginAccess();
  (*(v83 + 1))(&v80[v82], v172);
  v185 = 0;
  v186 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v88 = v156;
  *v156 = 0;
  v88[8] = 1;
  v78(&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate], v87, v61);
  v89 = v171;
  v78(&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate], v171, v61);
  Date.timeIntervalSince(_:)();
  *&v80[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration] = v90;
  sub_1002E552C(1, 10.0, 90.0);
  v86(v89, v61);
  v183 = v76 + 1;
  v162 = v86;
  v86(v87, v61);
  v91 = v163;
  (v180)(v163, 1, 1, v61);
  v92 = v169;
  swift_beginAccess();
  sub_100169198(v91, &v92[v80]);
  swift_endAccess();
  v93 = sub_1004D149C(v170, v80);
  v169 = v80;
  v94 = v179;
  v180 = sub_100222D84(v80);
  v95 = [objc_opt_self() mainBundle];
  v96 = String._bridgeToObjectiveC()();
  v97 = [v95 localizedStringForKey:v96 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1006D46C0;
  *(v98 + 56) = &type metadata for String;
  *(v98 + 64) = sub_10000A788();
  v99 = v160;
  *(v98 + 32) = v161;
  *(v98 + 40) = v99;
  String.init(format:_:)();

  v100 = objc_allocWithZone(NSAttributedString);
  v101 = String._bridgeToObjectiveC()();

  v172 = [v100 initWithString:v101];

  v78(v176, v181, v61);
  v170 = v77;
  v78(v175, v182, v61);
  v178 = v94[7];

  v102 = v173;
  UUID.init()();
  v103 = v174;
  v171 = *(v174 + 76);
  v104 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v105 = v165;
  static Calendar.current.getter();
  v106 = v164;
  static Locale.current.getter();
  v107 = type metadata accessor for Locale();
  (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
  Calendar.locale.setter();
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v104 setCalendar:isa];

  [v104 setUnitsStyle:0];
  [v104 setZeroFormattingBehavior:0];
  [v104 setAllowedUnits:224];
  (*(v166 + 8))(v105, v167);
  *&v171[v102] = v104;
  v109 = v103[20];
  v110 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v110 setZeroFormattingBehavior:1];
  [v110 setUnitsStyle:4];
  [v110 setAllowedUnits:224];
  *(v102 + v109) = v110;
  *(v102 + v103[5]) = 4;
  v111 = (v102 + v103[6]);
  *v111 = 0;
  *(v111 + 1) = 0xE000000000000000;
  *(v102 + v103[7]) = v172;
  v187 = v93;

  sub_10056EDEC(&v187);
  v112 = v103[13];
  *(v102 + v103[8]) = v187;
  *(v102 + v103[9]) = 1;
  v113 = v176;
  v114 = v177;
  v78((v102 + v103[10]), v176, v177);
  v115 = v175;
  v78((v102 + v103[11]), v175, v114);
  *(v102 + v103[12]) = v180;
  *(v102 + v112) = 0;
  *(v102 + v103[14]) = v178;
  v116 = v102;
  v117 = *(v93 + 2);
  v118 = v168;
  if (!v117)
  {
    *(v116 + v103[15]) = 0;

    v129 = v162;
    v162(v115, v114);
    v129(v113, v114);
    v126 = 0.0;
    v131 = 0.0;
    v133 = v103;
    v132 = v116;
    v128 = v114;
LABEL_21:
    *(v132 + v133[16]) = v131;
    v134 = (v126 + v131) * 0.5;
    v135 = v134 + -5.0;
    v136 = v134 + 5.0;
    if (v131 - v126 >= 10.0)
    {
      v137 = v126;
    }

    else
    {
      v137 = v135;
    }

    if (v131 - v126 >= 10.0)
    {
      v136 = v131;
    }

    v138 = (v136 - v137) / 44.0;
    *(v132 + v133[18]) = v138;
    v139 = v138 + v138;
    v140 = v137 - v139;
    v141 = v136 + v139;
    if (v140 <= v141)
    {
      v142 = (v132 + v133[17]);
      *v142 = v140;
      v142[1] = v141;
      v143 = v153;
      sub_10002B318(v132, v153, type metadata accessor for WorkoutChartViewModel);
      (*(v154 + 56))(v143, 0, 1, v133);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100169118(v143, v152);

      static Published.subscript.setter();
      sub_10000EA04(v143, &qword_1008DD250, &qword_1006D63D0);
      swift_getKeyPath();
      swift_getKeyPath();
      v187 = v169;

      static Published.subscript.setter();
      v129(v182, v128);
      v129(v181, v128);
      return;
    }

    goto LABEL_42;
  }

  v119 = v151;
  v120 = &v93[(*(v151 + 80) + 32) & ~*(v151 + 80)];
  v121 = v184;
  sub_100169E98(v120, v184, type metadata accessor for WorkoutChartDataElement);
  v122 = v150;
  v123 = v149;
  if (v117 != 1)
  {
    v144 = 1;
    while (v144 < *(v93 + 2))
    {
      sub_100169E98(v120 + *(v119 + 72) * v144, v123, type metadata accessor for WorkoutChartDataElement);
      if (*(v123 + *(v118 + 24)) >= *(v121 + *(v118 + 24)))
      {
        sub_100169F24(v123, type metadata accessor for WorkoutChartDataElement);
      }

      else
      {
        sub_100169F24(v184, type metadata accessor for WorkoutChartDataElement);
        v121 = v184;
        sub_10002B318(v123, v184, type metadata accessor for WorkoutChartDataElement);
      }

      if (v117 == ++v144)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_17:
  v124 = v121;
  v125 = v148;
  sub_10002B318(v124, v148, type metadata accessor for WorkoutChartDataElement);
  v126 = *(v125 + *(v118 + 24));
  sub_100169F24(v125, type metadata accessor for WorkoutChartDataElement);
  *&v173[*(v174 + 60)] = v126;
  if (*(v93 + 2))
  {
    v127 = v147;
    sub_100169E98(v120, v147, type metadata accessor for WorkoutChartDataElement);
    if (v117 == 1)
    {
LABEL_19:

      v128 = v177;
      v129 = v162;
      v162(v175, v177);
      v129(v176, v128);
      v130 = v146;
      sub_10002B318(v127, v146, type metadata accessor for WorkoutChartDataElement);
      v131 = *(v130 + *(v118 + 28));
      sub_100169F24(v130, type metadata accessor for WorkoutChartDataElement);
      v132 = v173;
      v133 = v174;
      goto LABEL_21;
    }

    v145 = 1;
    while (v145 < *(v93 + 2))
    {
      sub_100169E98(v120 + *(v119 + 72) * v145, v122, type metadata accessor for WorkoutChartDataElement);
      if (*(v127 + *(v118 + 28)) >= *(v122 + *(v118 + 28)))
      {
        sub_100169F24(v122, type metadata accessor for WorkoutChartDataElement);
      }

      else
      {
        sub_100169F24(v127, type metadata accessor for WorkoutChartDataElement);
        sub_10002B318(v122, v127, type metadata accessor for WorkoutChartDataElement);
      }

      if (v117 == ++v145)
      {
        goto LABEL_19;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

void sub_1004CEE90()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v1;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v9[4] = sub_1004D1488;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10055B230;
  v9[3] = &unk_10085CDD8;
  v8 = _Block_copy(v9);

  [v2 powerSamplesForWorkout:v3 workoutActivity:v4 completion:v8];
  _Block_release(v8);
}

void sub_1004CEFC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v233 = a1;
  v219 = type metadata accessor for WorkoutChartDataElement(0);
  v236 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v218 = &v182 - v6;
  __chkstk_darwin(v7);
  v234 = &v182 - v8;
  __chkstk_darwin(v9);
  v206 = &v182 - v10;
  __chkstk_darwin(v11);
  v235 = &v182 - v12;
  __chkstk_darwin(v13);
  v15 = &v182 - v14;
  v16 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v16 - 8);
  v213 = &v182 - v17;
  v216 = type metadata accessor for Calendar();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for WorkoutChartViewModel(0);
  v207 = *(v223 - 8);
  v19 = *(v207 + 64);
  __chkstk_darwin(v223);
  v208 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v222 = &v182 - v21;
  __chkstk_darwin(v22);
  v24 = &v182 - v23;
  v25 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v25 - 8);
  v212 = (&v182 - v26);
  v221 = sub_100140278(&unk_1008F73D0, &unk_1006D5E30);
  v211 = *(v221 - 8);
  __chkstk_darwin(v221);
  v209 = &v182 - v27;
  v229 = type metadata accessor for Date();
  v232 = *(v229 - 8);
  __chkstk_darwin(v229);
  v231 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v230 = &v182 - v30;
  __chkstk_darwin(v31);
  v210 = &v182 - v32;
  __chkstk_darwin(v33);
  v35 = &v182 - v34;
  __chkstk_darwin(v36);
  v220 = &v182 - v37;
  __chkstk_darwin(v38);
  v40 = &v182 - v39;
  __chkstk_darwin(v41);
  v228 = &v182 - v42;
  __chkstk_darwin(v43);
  v227 = &v182 - v44;
  v226 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v182 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v224 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v51 = Strong;
  if (a2)
  {
    swift_errorRetain();
    v52 = static os_log_type_t.error.getter();
    v53 = HKLogWorkouts;
    if (!os_log_type_enabled(HKLogWorkouts, v52))
    {

      return;
    }

    v54 = v53;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    swift_getErrorValue();
    v57 = Error.localizedDescription.getter();
    v59 = sub_10000AFDC(v57, v58, &aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v54, v52, "Error getting heart rates: %s", v55, 0xCu);
    sub_100005A40(v56);

    goto LABEL_48;
  }

  if (!v233)
  {
    goto LABEL_48;
  }

  if (v233 >> 62)
  {
    goto LABEL_47;
  }

  if (!*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_48:

    return;
  }

  while (1)
  {
    v185 = v24;
    v60 = *(v51 + 64);
    v61 = v51;
    v62 = *(v51 + 16);
    v205 = v61;
    v63 = v61[3];
    v64 = [v60 hasAverageCyclingPowerForWorkout:v62 workoutActivity:v63];
    v204 = v47;
    v183 = v15;
    v186 = v35;
    if (v64)
    {
      [v60 averageCyclingPowerForWorkout:v62 workoutActivity:v63];
    }

    else
    {
      v65 = sub_10056FFD4(v233);
    }

    v66 = v65;
    v67 = v205[8];
    v68 = v205;

    v69 = [v67 formattedPowerStringFor:v66];
    v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v192 = v70;

    v198 = sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v203 = static OS_dispatch_queue.main.getter();
    v71 = swift_allocObject();
    *(v71 + 16) = v68;
    *(v71 + 24) = v66;
    v243 = sub_1004D1490;
    v244 = v71;
    aBlock = _NSConcreteStackBlock;
    v240 = 1107296256;
    v241 = sub_1000449A8;
    v242 = &unk_10085CE28;
    v72 = _Block_copy(&aBlock);

    v73 = v224;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v74 = sub_100045BD8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v75 = sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    v76 = sub_10002621C();
    v77 = v225;
    v196 = v75;
    v195 = v76;
    v78 = v226;
    v200 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = v203;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v80 = v205;
    _Block_release(v72);

    v81 = *(v45 + 8);
    v202 = v45 + 8;
    v199 = v81;
    v81(v77, v78);
    v82 = v48[1];
    v201 = v48 + 1;
    v197 = v82;
    v82(v73, v204);
    v83 = v80[3];
    v84 = v186;
    v184 = v19;
    if (!v83)
    {
      goto LABEL_16;
    }

    v85 = v83;
    v86 = [v85 endDate];
    if (!v86)
    {

      v80 = v205;
LABEL_16:
      v91 = [v80[2] startDate];
      v90 = v227;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = [v80[2] endDate];
      v87 = v228;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_17;
    }

    v87 = v228;
    v88 = v86;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = [v85 startDate];
    v90 = v227;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
    v92 = v232;
    v94 = v232 + 16;
    v93 = *(v232 + 16);
    v95 = v229;
    v93(v40, v90, v229);
    v93(v220, v87, v95);
    type metadata accessor for WorkoutChartProperties(0);
    v96 = swift_allocObject();
    *(v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = 0x404E000000000000;
    *(v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = 0x404E000000000000;
    v97 = (v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
    v189 = (v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
    *v97 = 0;
    v97[8] = 1;
    v98 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
    v187 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
    aBlock = 0;
    LOBYTE(v240) = 1;
    v188 = sub_100140278(&unk_1008F73E0, &unk_1006D5E40);
    v99 = v209;
    Published.init(initialValue:)();
    v100 = v211;
    (*(v211 + 32))(v96 + v98, v99, v221);
    *(v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v209 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
    v101 = *(v92 + 56);
    v190 = v92 + 56;
    v191 = v101;
    v101((v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate), 1, 1, v95);
    *(v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
    v102 = (v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom);
    *v102 = 0;
    v102[8] = 1;
    v93(v84, v40, v95);
    swift_beginAccess();
    v93(v210, v84, v95);
    Published.init(initialValue:)();
    v103 = *(v92 + 8);
    v103(v84, v95);
    swift_endAccess();
    v93((v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate), v40, v95);
    v104 = v187;
    swift_beginAccess();
    (*(v100 + 8))(v96 + v104, v221);
    v105 = v93;
    v237 = 0;
    v238 = 1;
    Published.init(initialValue:)();
    swift_endAccess();
    v106 = v189;
    *v189 = 0;
    *(v106 + 8) = 1;
    v93((v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate), v40, v95);
    v107 = v220;
    v203 = v94;
    v93((v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate), v220, v95);
    Date.timeIntervalSince(_:)();
    *(v96 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration) = v108;
    sub_1002E552C(1, 10.0, 90.0);
    v103(v107, v95);
    v232 = v92 + 8;
    v220 = v103;
    v103(v40, v95);
    v109 = v212;
    v191(v212, 1, 1, v95);
    v110 = v209;
    swift_beginAccess();
    sub_100169198(v109, &v110[v96]);
    swift_endAccess();
    v111 = v233;
    v233 = v96;
    v48 = sub_1004D149C(v111, v96);
    v112 = v205;
    v114 = v205[2];
    v113 = v205[3];
    type metadata accessor for WorkoutPowerInfo(0);
    swift_allocObject();
    v115 = v113;
    v116 = sub_100611B2C(v114, v113);
    v117 = static OS_dispatch_queue.main.getter();
    v118 = swift_allocObject();
    *(v118 + 16) = v112;
    *(v118 + 24) = v116;
    v243 = sub_1004D2184;
    v244 = v118;
    aBlock = _NSConcreteStackBlock;
    v240 = 1107296256;
    v241 = sub_1000449A8;
    v242 = &unk_10085CE78;
    v119 = _Block_copy(&aBlock);

    v120 = v224;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v121 = v225;
    v122 = v226;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v119);

    v199(v121, v122);
    v197(v120, v204);
    v123 = COERCE_DOUBLE(sub_100611A70());
    v124 = 0;
    v194 = v105;
    if ((v125 & 1) == 0 && v123 > 0.0)
    {
      v124 = sub_10030E6D4();
    }

    v191 = v116;
    v126 = v205;
    v212 = sub_100222D84(v233);
    v127 = objc_opt_self();
    v128 = [v127 mainBundle];
    v129 = String._bridgeToObjectiveC()();
    v130 = [v128 localizedStringForKey:v129 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1006D46C0;
    *(v131 + 56) = &type metadata for String;
    *(v131 + 64) = sub_10000A788();
    v132 = v192;
    *(v131 + 32) = v193;
    *(v131 + 40) = v132;
    String.init(format:_:)();

    v133 = [v127 mainBundle];
    v134 = String._bridgeToObjectiveC()();
    v135 = [v133 localizedStringForKey:v134 value:0 table:0];

    v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v210 = v136;

    v137 = objc_allocWithZone(NSAttributedString);
    v138 = String._bridgeToObjectiveC()();

    v193 = [v137 initWithString:v138];

    v40 = v229;
    v139 = v194;
    v194(v230, v227, v229);
    v139(v231, v228, v40);
    v140 = v126[7];
    v221 = v124;

    v209 = v140;

    v47 = v222;
    UUID.init()();
    v141 = v223;
    v192 = *(v223 + 76);
    v142 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    v143 = v214;
    static Calendar.current.getter();
    v144 = v213;
    static Locale.current.getter();
    v145 = type metadata accessor for Locale();
    (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
    Calendar.locale.setter();
    isa = Calendar._bridgeToObjectiveC()().super.isa;
    [v142 setCalendar:isa];

    [v142 setUnitsStyle:0];
    [v142 setZeroFormattingBehavior:0];
    [v142 setAllowedUnits:224];
    (*(v215 + 8))(v143, v216);
    *(v47 + v192) = v142;
    v147 = v141[20];
    v148 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v148 setZeroFormattingBehavior:1];
    [v148 setUnitsStyle:4];
    [v148 setAllowedUnits:224];
    *(v47 + v147) = v148;
    *(v47 + v141[5]) = 4;
    v149 = (v47 + v141[6]);
    v150 = v210;
    *v149 = v211;
    v149[1] = v150;
    *(v47 + v141[7]) = v193;
    aBlock = v48;

    sub_10056EDEC(&aBlock);
    v151 = v141[13];
    *(v47 + v141[8]) = aBlock;
    *(v47 + v141[9]) = 1;
    v139((v47 + v141[10]), v230, v40);
    v139((v47 + v141[11]), v231, v40);
    *(v47 + v141[12]) = v212;
    *(v47 + v151) = v221;
    *(v47 + v141[14]) = v209;
    v15 = v48[2];
    v152 = v219;
    v19 = v218;
    v24 = v217;
    if (!v15)
    {
      break;
    }

    v35 = v48 + ((*(v236 + 80) + 32) & ~*(v236 + 80));
    v51 = v235;
    sub_100169E98(v35, v235, type metadata accessor for WorkoutChartDataElement);
    if (v15 == 1)
    {
LABEL_22:
      v153 = v183;
      sub_10002B318(v51, v183, type metadata accessor for WorkoutChartDataElement);
      v154 = *(v153 + *(v152 + 24));
      sub_100169F24(v153, type metadata accessor for WorkoutChartDataElement);
      *&v222[*(v223 + 60)] = v154;
      if (!v48[2])
      {
        goto LABEL_51;
      }

      v51 = v234;
      sub_100169E98(v35, v234, type metadata accessor for WorkoutChartDataElement);
      v24 = v231;
      if (v15 == 1)
      {
LABEL_24:

        v155 = v220;
        (v220)(v24, v40);
        v155(v230, v40);
        v156 = v51;
        v157 = v206;
        sub_10002B318(v156, v206, type metadata accessor for WorkoutChartDataElement);
        v158 = *(v157 + *(v152 + 28));
        sub_100169F24(v157, type metadata accessor for WorkoutChartDataElement);
        v141 = v223;
        v159 = v222;
        goto LABEL_26;
      }

      v45 = 1;
      while (v45 < v48[2])
      {
        sub_100169E98(&v35[*(v236 + 72) * v45], v19, type metadata accessor for WorkoutChartDataElement);
        if (*(v51 + *(v152 + 28)) >= *(v19 + *(v152 + 28)))
        {
          sub_100169F24(v19, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v234, type metadata accessor for WorkoutChartDataElement);
          v51 = v234;
          sub_10002B318(v19, v234, type metadata accessor for WorkoutChartDataElement);
        }

        if (v15 == ++v45)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v45 = 1;
      while (v45 < v48[2])
      {
        sub_100169E98(&v35[*(v236 + 72) * v45], v24, type metadata accessor for WorkoutChartDataElement);
        if (*&v24[*(v152 + 24)] >= *(v51 + *(v152 + 24)))
        {
          sub_100169F24(v24, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v235, type metadata accessor for WorkoutChartDataElement);
          v51 = v235;
          sub_10002B318(v24, v235, type metadata accessor for WorkoutChartDataElement);
        }

        if (v15 == ++v45)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_47:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_48;
    }
  }

  *(v47 + v141[15]) = 0;

  v160 = v220;
  (v220)(v231, v40);
  v160(v230, v40);
  v154 = 0.0;
  v158 = 0.0;
  v159 = v47;
LABEL_26:
  *(v159 + v141[16]) = v158;
  v161 = (v154 + v158) * 0.5;
  v162 = v161 + -5.0;
  v163 = v161 + 5.0;
  if (v158 - v154 >= 10.0)
  {
    v164 = v154;
  }

  else
  {
    v164 = v162;
  }

  if (v158 - v154 >= 10.0)
  {
    v163 = v158;
  }

  v165 = (v163 - v164) / 44.0;
  *(v159 + v141[18]) = v165;
  v166 = v165 + v165;
  v167 = v164 - v166;
  v168 = v163 + v166;
  if (v167 <= v168)
  {
    v169 = (v159 + v141[17]);
    *v169 = v167;
    v169[1] = v168;
    v170 = v185;
    sub_10002B318(v159, v185, type metadata accessor for WorkoutChartViewModel);
    v171 = static OS_dispatch_queue.main.getter();
    v172 = v208;
    sub_100169E98(v170, v208, type metadata accessor for WorkoutChartViewModel);
    v173 = (*(v207 + 80) + 24) & ~*(v207 + 80);
    v174 = (v184 + v173 + 7) & 0xFFFFFFFFFFFFFFF8;
    v175 = swift_allocObject();
    *(v175 + 16) = v205;
    sub_10002B318(v172, v175 + v173, type metadata accessor for WorkoutChartViewModel);
    *(v175 + v174) = v233;
    v243 = sub_1004D218C;
    v244 = v175;
    aBlock = _NSConcreteStackBlock;
    v240 = 1107296256;
    v241 = sub_1000449A8;
    v242 = &unk_10085CEC8;
    v176 = _Block_copy(&aBlock);

    v177 = v224;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v178 = v225;
    v179 = v226;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v176);

    v199(v178, v179);
    v197(v177, v204);
    sub_100169F24(v170, type metadata accessor for WorkoutChartViewModel);
    v180 = v229;
    v181 = v220;
    (v220)(v228, v229);
    v181(v227, v180);
    return;
  }

  __break(1u);
LABEL_51:
  __break(1u);

  __break(1u);
}

uint64_t sub_1004D0CE8(uint64_t a1)
{
  [*(a1 + 64) formattedAveragePowerStringFor:@"WorkoutDetailDisplayContext" context:?];
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1004D0D80(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1004D0DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100169E98(a2, &v15 - v10, type metadata accessor for WorkoutChartViewModel);
  v12 = type metadata accessor for WorkoutChartViewModel(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100169118(v11, v8);

  static Published.subscript.setter();
  sub_10000EA04(v11, &qword_1008DD250, &qword_1006D63D0);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a3;

  static Published.subscript.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(a1 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16)
    {
      *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = v14;
      swift_unknownObjectWeakAssign();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004D1048()
{
  v1 = OBJC_IVAR____TtC10FitnessApp27WorkoutDetailPowerDataStore__averagePower;
  v2 = sub_100140278(&qword_1008DD4C0, &qword_1006F4A30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp27WorkoutDetailPowerDataStore__powerInfo;
  v4 = sub_100140278(&qword_1008DD6D8, &qword_1006D63D8);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1004D1108()
{
  v0 = sub_100222AA4();
  v1 = OBJC_IVAR____TtC10FitnessApp27WorkoutDetailPowerDataStore__averagePower;

  v2 = sub_100140278(&qword_1008DD4C0, &qword_1006F4A30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp27WorkoutDetailPowerDataStore__powerInfo;
  v4 = sub_100140278(&qword_1008DD6D8, &qword_1006D63D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDetailPowerDataStore(uint64_t a1)
{
  result = qword_1008EFA60;
  if (!qword_1008EFA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D1264(uint64_t a1)
{
  sub_100168A80(319);
  if (v1 <= 0x3F)
  {
    sub_1004D1330(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004D1330(uint64_t a1)
{
  if (!qword_1008EFA70)
  {
    sub_100141EEC(&qword_1008DD6E0, &unk_1006D63E0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008EFA70);
    }
  }
}

uint64_t sub_1004D1394@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutDetailPowerDataStore(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1004D13D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1004CD760(a1, v4, v5, v6);
}

void *sub_1004D149C(uint64_t a1, void *a2)
{
  v115 = a2;
  v2 = type metadata accessor for NSIndexSetIterator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v93 - v7;
  v9 = type metadata accessor for WorkoutChartDataElement(0);
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v11 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v113 = &v93 - v13;
  v14 = sub_100140278(&qword_1008DD4C8, &qword_1006F4B10);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  v20 = type metadata accessor for Date();
  v101 = *(v20 - 8);
  __chkstk_darwin(v20);
  v112 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v108 = &v93 - v23;
  __chkstk_darwin(v24);
  v111 = &v93 - v25;
  __chkstk_darwin(v26);
  v114 = &v93 - v27;
  __chkstk_darwin(v28);
  v31 = &v93 - v30;
  v119 = &_swiftEmptyDictionarySingleton;
  if (v29 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v92)
  {
    v109 = v5;
    v110 = v8;
    v116 = v20;
    v102 = v11;
    v105 = v16;
    v106 = v19;
    if (i)
    {
      v33 = v29;
      result = objc_opt_self();
      v107 = result;
      if (i < 1)
      {
        __break(1u);
        return result;
      }

      v96 = i;
      v94 = v3;
      v19 = 0;
      v35 = v33;
      v100 = v33 & 0xC000000000000001;
      v99 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration;
      v36 = (v101 + 8);
      v95 = (v101 + 16);
      v98 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration;
      v97 = v33;
      v11 = v31;
      v8 = v114;
      do
      {
        if (v100)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v35 + 8 * v19 + 32);
        }

        v16 = v37;
        v38 = [v37 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getKeyPath();
        swift_getKeyPath();
        v39 = v111;
        static Published.subscript.getter();

        Date.timeIntervalSince(_:)();
        Date.addingTimeInterval(_:)();
        v3 = *v36;
        v40 = v39;
        v31 = v11;
        v41 = v116;
        (*v36)(v40, v116);
        (v3)(v8, v41);
        v42 = [v16 quantity];
        v43 = [v107 wattUnit];
        [v42 doubleValueForUnit:v43];
        v45 = v44;

        if (v45 < 0.0)
        {
          (v3)(v31, v41);

          v20 = v41;
          v11 = v31;
        }

        else
        {
          v5 = v119;
          v11 = v31;
          if (*(v119 + 2) && (v47 = sub_1004C577C(v31, v46), (v48 & 1) != 0))
          {
            v20 = v116;
            if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_67;
            }

            if (v45 <= -9.22337204e18)
            {
              goto LABEL_68;
            }

            if (v45 >= 9.22337204e18)
            {
              goto LABEL_69;
            }

            [*(*(v5 + 7) + 8 * v47) addIndex:v45];
          }

          else
          {
            v20 = v116;
            (*v95)(v108, v31, v116);
            if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_64;
            }

            if (v45 <= -9.22337204e18)
            {
              goto LABEL_65;
            }

            if (v45 >= 9.22337204e18)
            {
              goto LABEL_66;
            }

            v49 = [objc_allocWithZone(NSMutableIndexSet) initWithIndex:v45];
            sub_100559840(v49, v108);
          }

          (v3)(v31, v20);
        }

        ++v19;
        v35 = v97;
      }

      while (v96 != v19);
      v50 = v119;
      v8 = v110;
      v16 = v105;
      v3 = v94;
    }

    else
    {
      v50 = &_swiftEmptyDictionarySingleton;
    }

    v51 = *(v50 + 8);
    v107 = v50 + 64;
    v52 = 1 << v50[32];
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v31 = v53 & v51;
    v97 = (v52 + 63) >> 6;
    v99 = v101 + 16;
    v114 = (v101 + 32);
    v111 = (v3 + 8);
    v100 = v50;

    v54 = 0;
    v115 = _swiftEmptyArrayStorage;
    v11 = &qword_1008DD4D0;
    v98 = v2;
    v55 = v107;
    if (v31)
    {
      break;
    }

LABEL_29:
    if (v97 <= (v54 + 1))
    {
      v59 = (v54 + 1);
    }

    else
    {
      v59 = v97;
    }

    v5 = (v59 - 1);
    while (1)
    {
      v58 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v58 >= v97)
      {
        v90 = sub_100140278(&qword_1008DD4D0, &qword_1006F4B60);
        (*(*(v90 - 8) + 56))(v16, 1, 1, v90);
        v31 = 0;
        v54 = v5;
        goto LABEL_38;
      }

      v31 = v55[v58];
      ++v54;
      if (v31)
      {
        v56 = v16;
        v57 = v20;
        v54 = v58;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v91 = v29;
    v92 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v91;
  }

  while (1)
  {
    v56 = v16;
    v57 = v20;
    v58 = v54;
LABEL_37:
    v60 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v61 = v60 | (v58 << 6);
    v62 = v100;
    v63 = v101;
    v64 = v108;
    (*(v101 + 16))(v108, *(v100 + 48) + *(v101 + 72) * v61, v57);
    v65 = *(*(v62 + 56) + 8 * v61);
    v66 = sub_100140278(&qword_1008DD4D0, &qword_1006F4B60);
    v67 = *(v66 + 48);
    v68 = *(v63 + 32);
    v20 = v57;
    v69 = v64;
    v16 = v56;
    v68(v56, v69, v57);
    *&v56[v67] = v65;
    (*(*(v66 - 8) + 56))(v56, 0, 1, v66);
    v70 = v65;
    v2 = v98;
    v8 = v110;
LABEL_38:
    v71 = v106;
    sub_100015E80(v16, v106, &qword_1008DD4C8, &qword_1006F4B10);
    v72 = v71;
    v73 = sub_100140278(&qword_1008DD4D0, &qword_1006F4B60);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
    {
      break;
    }

    v74 = v20;
    v75 = *(v72 + *(v73 + 48));
    v76 = *v114;
    (*v114)(v112, v72, v74);
    NSIndexSet.makeIterator()();
    v19 = sub_100045BD8(&qword_1008DD4D8, &type metadata accessor for NSIndexSetIterator, &protocol conformance descriptor for NSIndexSetIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v118)
    {
      v77 = *v111;
      (*v111)(v8, v2);
      v78 = 0.0;
    }

    else
    {
      v79 = v117;
      dispatch thunk of IteratorProtocol.next()();
      if ((v118 & 1) == 0)
      {
        do
        {
          if (v117 < v79)
          {
            v79 = v117;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v118 != 1);
      }

      v77 = *v111;
      (*v111)(v8, v2);
      v78 = v79;
    }

    v80 = v109;
    NSIndexSet.makeIterator()();
    dispatch thunk of IteratorProtocol.next()();
    if (v118)
    {
      v77(v80, v2);
      v81 = 0.0;
      v8 = v110;
    }

    else
    {
      v82 = v117;
      dispatch thunk of IteratorProtocol.next()();
      if (v118)
      {
        v83 = v109;
        v8 = v110;
      }

      else
      {
        v83 = v109;
        v8 = v110;
        do
        {
          if (v82 <= v117)
          {
            v82 = v117;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v118 != 1);
      }

      v77(v83, v2);
      v81 = v82;
    }

    v84 = v113;
    v76(v113, v112, v116);
    v85 = v104;
    *(v84 + *(v104 + 24)) = v78;
    *(v84 + *(v85 + 28)) = v81;
    *(v84 + *(v85 + 20)) = (v78 + v81) * 0.5;
    v86 = v102;
    sub_100169E98(v84, v102, type metadata accessor for WorkoutChartDataElement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v105;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v115 = sub_1001A1EB4(0, v115[2] + 1, 1, v115);
    }

    v3 = v115[2];
    v88 = v115[3];
    if (v3 >= v88 >> 1)
    {
      v115 = sub_1001A1EB4((v88 > 1), v3 + 1, 1, v115);
    }

    sub_100169F24(v113, type metadata accessor for WorkoutChartDataElement);
    v89 = v115;
    v115[2] = v3 + 1;
    sub_10002B318(v86, v89 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v3, type metadata accessor for WorkoutChartDataElement);
    v20 = v116;
    v11 = &qword_1008DD4D0;
    v55 = v107;
    if (!v31)
    {
      goto LABEL_29;
    }
  }

  return v115;
}

uint64_t sub_1004D218C()
{
  v1 = *(type metadata accessor for WorkoutChartViewModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004D0DFC(v3, v0 + v2, v4);
}

uint64_t sub_1004D228C(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleBaselineBand.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1004D2320(uint64_t a1)
{
  sub_10031BBA0();
  if (v1 <= 0x3F)
  {
    sub_1004D23BC(319, v1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004D23BC(uint64_t a1, uint64_t a2)
{
  if (!qword_1008EFD38)
  {
    type metadata accessor for Date();
    sub_100018DA4(&qword_1008E4080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v2 = type metadata accessor for ClosedRange();
    if (!v3)
    {
      atomic_store(v2, &qword_1008EFD38);
    }
  }
}

void sub_1004D2450(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  v5 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  type metadata accessor for Date();
  sub_100018DA4(&qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0);
  dispatch thunk of Hashable.hash(into:)();
  Color.hash(into:)();
  v6 = *(v1 + *(v5 + 28));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
}

Swift::Int sub_1004D2578()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
  v4 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  type metadata accessor for Date();
  sub_100018DA4(&qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0);
  dispatch thunk of Hashable.hash(into:)();
  Color.hash(into:)();
  v5 = *(v0 + *(v4 + 28));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

Swift::Int sub_1004D26C4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_1003077F8(*v2, v2[1]);
  type metadata accessor for Date();
  sub_100018DA4(&qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0);
  dispatch thunk of Hashable.hash(into:)();
  Color.hash(into:)();
  v4 = *(v2 + *(a2 + 28));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

uint64_t sub_1004D283C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v45 = a2;
  v2 = type metadata accessor for RoundedCornerStyle();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008E1DE8, &qword_1006DF920);
  __chkstk_darwin(v4 - 8);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v30 - v7;
  v8 = sub_100140278(&qword_1008E1DF0, &qword_1006DEB40);
  __chkstk_darwin(v8 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v33 = &v30 - v11;
  v12 = type metadata accessor for RectangleMark();
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008EFD88, &unk_1006F4CD0);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v35 = &v30 - v18;
  LocalizedStringKey.init(stringLiteral:)();
  v34 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v19 = v31;
  v46 = *v31;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v20 = v19;
  v46 = v19[1];
  static PlottableValue.value(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
  v21 = v34;
  v23 = v42;
  v22 = v43;
  v24 = v44;
  (*(v43 + 104))(v42, enum case for RoundedCornerStyle.continuous(_:), v44);
  v25 = v35;
  v26 = v38;
  ChartContent.cornerRadius(_:style:)();
  (*(v22 + 8))(v23, v24);
  (*(v39 + 8))(v15, v26);
  v27 = *(v20 + *(v21 + 24));
  v47 = &protocol witness table for RectangleMark;
  v48 = v27;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v40;
  ChartContent.foregroundStyle<A>(_:)();
  return (*(v41 + 8))(v25, v28);
}

uint64_t sub_1004D2E00()
{
  v1 = sub_100140278(&qword_1008EFD78, &qword_1006F4CC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v9 = v0;
  sub_100140278(&qword_1008EFD80, &qword_1006F4CC8);
  v5 = sub_100141EEC(&qword_1008EFD88, &unk_1006F4CD0);
  v10 = type metadata accessor for RectangleMark();
  v11 = &protocol witness table for RectangleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = v5;
  v11 = &type metadata for Color;
  v12 = OpaqueTypeConformance2;
  v13 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  Plot.init(content:)();
  sub_1004D2FC8();
  ChartContent.compositingLayer()();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1004D2FC8()
{
  result = qword_1008EFD90;
  if (!qword_1008EFD90)
  {
    sub_100141EEC(&qword_1008EFD78, &qword_1006F4CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EFD90);
  }

  return result;
}

BOOL sub_1004D302C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  type metadata accessor for Date();
  sub_100018DA4(&qword_1008E1D78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0), (dispatch thunk of static Equatable.== infix(_:_:)()) && (static Color.== infix(_:_:)())
  {
    return *(a1 + *(v6 + 28)) == *(a2 + *(v6 + 28));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D315C(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (*(v3[4] + 16) <= a2)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    result = swift_allocObject();
    *(result + 16) = xmmword_1006D46C0;
    if (__OFADD__(v5, 1))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = v5 + 1;

    String.init(format:_:)();

LABEL_10:
    sub_10000FCBC();
    result = Text.init<A>(_:)();
    v10 = v9;
    if (*(v3[5] + 16) > a2)
    {
      v11 = result;
      v12 = v8;
      sub_10006965C(result, v8, v9 & 1);

      Text.foregroundColor(_:)();
      sub_10004642C(v11, v12, v10 & 1);

      v13 = AnyView.init<A>(_:)();
      sub_10004642C(v11, v12, v10 & 1);

      return v13;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(result, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(a3, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v3[4] + 16))
  {
    v6 = (result + 1) / v3[2] * (a3 + 1);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006D46C0;
    *(v7 + 56) = &type metadata for Double;
    *(v7 + 64) = &protocol witness table for Double;
    *(v7 + 32) = v6;

    String.init(format:_:)();

    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004D3400()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004D347C(uint64_t result)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = 8.0 / (result + 1);
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1004D34E0(uint64_t a1)
{
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  result = swift_allocObject();
  *(result + 16) = xmmword_1006D46C0;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = (a1 + 1) / *(v1 + 16);
    *(result + 56) = &type metadata for Double;
    *(result + 64) = &protocol witness table for Double;
    *(result + 32) = v4;

    return String.init(format:_:)();
  }

  return result;
}

unint64_t sub_1004D358C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *(v2 + 24);
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3;

  return v8(a2, v9, v6);
}

uint64_t sub_1004D3640@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutDetailColumnMetricPreviewDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_1004D367C(uint64_t a1)
{
  result = sub_1004D36A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004D36A4()
{
  result = qword_1008EFE88;
  if (!qword_1008EFE88)
  {
    type metadata accessor for WorkoutDetailColumnMetricPreviewDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EFE88);
  }

  return result;
}

void sub_1004D36F8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_100925B88 = v2;
}

double sub_1004D375C()
{
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  result = 1.0 / *&qword_100925B88;
  *&qword_100925B90 = 1.0 / *&qword_100925B88;
  return result;
}

uint64_t sub_1004D37E4(char a1)
{
  if (((1 << a1) & 0x5DDBB8E070) != 0 || ((1 << a1) & 0x2224471F80) != 0)
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    return String.init<A>(_:)();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }
}

id sub_1004D3AD8(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 6:
    case 12:
    case 13:
    case 15:
    case 19:
    case 21:
    case 23:
    case 25:
    case 27:
    case 30:
    case 32:
    case 34:
    case 36:
      v1 = [objc_opt_self() meterUnit];
      goto LABEL_13;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
    case 38:
      v1 = [objc_opt_self() secondUnit];
      goto LABEL_13;
    case 7:
    case 16:
    case 22:
    case 26:
    case 33:
    case 37:
      v2 = [objc_opt_self() secondUnit];
      if (qword_1008DAC98 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    case 8:
    case 17:
      v1 = [objc_opt_self() wattUnit];
      goto LABEL_13;
    case 9:
    case 18:
      v1 = [objc_opt_self() _countPerMinuteUnit];
      goto LABEL_13;
    case 10:
      v1 = [objc_opt_self() secondUnitWithMetricPrefix:4];
      goto LABEL_13;
    case 11:
      v1 = [objc_opt_self() meterUnitWithMetricPrefix:5];
      goto LABEL_13;
    case 29:
      v2 = [objc_opt_self() secondUnit];
      if (qword_1008DAC98 == -1)
      {
        goto LABEL_5;
      }

LABEL_16:
      swift_once();
LABEL_5:
      v3 = [v2 unitDividedByUnit:qword_100925B98];

      result = v3;
      break;
    default:
      v1 = [objc_opt_self() countUnit];
LABEL_13:

      result = v1;
      break;
  }

  return result;
}

uint64_t sub_1004D3DAC(uint64_t a1, uint64_t a2, int a3)
{
  v29 = a3;
  v28 = a2;
  v33 = type metadata accessor for AttributedString.Runs.Index();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AttributedString.Runs.Run();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008EF8A8, &qword_1006F4E30);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  (*(v10 + 16))(v12, a1, v9, v14);
  sub_1004D4DC8(&qword_1008EF8B0, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  dispatch thunk of Sequence.makeIterator()();
  sub_1004D4DC8(&qword_1008EF8B8, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  v30 = (v5 + 8);
  v24 = (v7 + 8);
  v25 = (v7 + 16);
  while (1)
  {
    v17 = v31;
    dispatch thunk of Collection.endIndex.getter();
    sub_1004D4DC8(&qword_1008EF8C0, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v18 = v33;
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v30)(v17, v18);
    if (v19)
    {
      break;
    }

    v20 = dispatch thunk of Collection.subscript.read();
    v21 = v26;
    v22 = v27;
    (*v25)(v26);
    v20(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    sub_1004C49E0(v21, v28, v29 & 1);
    if (v3)
    {
      (*v24)(v21, v22);
      return sub_10000EA04(v16, &qword_1008EF8A8, &qword_1006F4E30);
    }

    (*v24)(v21, v22);
  }

  return sub_10000EA04(v16, &qword_1008EF8A8, &qword_1006F4E30);
}

void sub_1004D41D4(unsigned __int8 a1, double a2)
{
  if (a1 <= 0x25u)
  {
    if (((1 << a1) & 0x2204400080) != 0)
    {
      v4 = 1;
    }

    else if (a1 == 16)
    {
      v4 = 2;
    }

    else
    {
      if (a1 != 29)
      {
        return;
      }

      v4 = 3;
    }

    v5 = FIUIPaceFormatForDistanceType();
    if (v5 == 4)
    {
      if (a2 <= 0.0)
      {
        return;
      }

      v6 = *v2;
      v7 = [objc_opt_self() meterUnit];
      v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:1.0];

      [v6 speedPerHourWithDistance:v8 overDuration:4 paceFormat:v4 distanceType:a2];
    }

    else
    {
      if (a2 == 0.0)
      {
        return;
      }

      v9 = v5;
      v10 = [*v2 unitManager];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = [objc_opt_self() meterUnit];
      v8 = [objc_opt_self() quantityWithUnit:v12 doubleValue:1.0];

      [v11 paceWithDistance:v8 overDuration:v9 paceFormat:v4 distanceType:a2];
    }
  }
}

Swift::Double sub_1004D43AC(char a1, double a2)
{
  v5 = 1;
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 19:
    case 23:
    case 30:
    case 34:
      goto LABEL_4;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
      return Double.dynamicStepRoundUp(minValue:)(10.0) * 60.0;
    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      v5 = 5;
      goto LABEL_4;
    case 13:
      v5 = 2;
      goto LABEL_4;
    case 27:
      v5 = 3;
LABEL_4:
      v7 = *v2;
      v8 = [v7 unitManager];
      if (!v8)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      v9 = v8;
      [v8 distanceInUserDistanceUnitForDistanceInMeters:v5 distanceType:a2];

      result = Double.dynamicStepRoundUp(minValue:)(10.0);
      if (a1 - 1) <= 0x23u && ((0xBB774D06DuLL >> (a1 - 1)))
      {
        v10 = result;
        v11 = qword_1006F4E48[(a1 - 1)];
        v12 = [v7 unitManager];
        if (v12)
        {
          v13 = v12;
          [v12 distanceInMetersForDistanceInUserUnit:v11 distanceType:v10];
          v15 = v14;

          return v15;
        }

        goto LABEL_16;
      }

      return result;
    default:

      return Double.dynamicStepRoundUp(minValue:)(10.0);
  }
}

uint64_t sub_1004D4544(char a1)
{
  if (((1 << a1) & 0x5DDBB8E070) != 0 || ((1 << a1) & 0x2224471F80) != 0)
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    return String.init<A>(_:)();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }
}

uint64_t sub_1004D47D0(char a1, double a2)
{
  v3 = 1;
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 19:
    case 23:
    case 30:
    case 34:
      goto LABEL_2;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
      result = [*v2 stringWithDuration:5 durationFormat:a2];
      if (!result)
      {
        goto LABEL_35;
      }

      v10 = result;
      goto LABEL_29;
    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      v9 = [*v2 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:a2];
      if (!v9)
      {
        return 0;
      }

      goto LABEL_28;
    case 7:
    case 16:
    case 22:
    case 26:
    case 29:
    case 33:
    case 37:
      if (FIUIPaceFormatForDistanceType() != 4)
      {
        v9 = [*v2 stringWithDuration:1 durationFormat:a2];
        if (v9)
        {
          goto LABEL_28;
        }

        return 0;
      }

      v34 = objc_opt_self();
      v23 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
      v24 = [v34 stringWithNumber:v23 decimalPrecision:2 roundingMode:2];
LABEL_23:
      v10 = v24;

      if (!v10)
      {
        return 0;
      }

      goto LABEL_29;
    case 8:
    case 9:
    case 17:
    case 18:
      v19 = objc_opt_self();
      v20 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
      v10 = [v19 localizedStringFromNumber:v20 numberStyle:0];

      goto LABEL_29;
    case 10:
      v22 = objc_opt_self();
      v23 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
      v24 = [v22 stringWithNumber:v23 decimalPrecision:1];
      goto LABEL_23;
    case 11:
      v9 = [*v2 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:a2];
      if (!v9)
      {
        return 0;
      }

      goto LABEL_28;
    case 12:
      v9 = [*v2 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:a2];
      if (v9)
      {
        goto LABEL_28;
      }

      return 0;
    case 13:
      v3 = 2;
      goto LABEL_2;
    case 27:
      v3 = 3;
LABEL_2:
      v5 = *v2;
      result = [*v2 unitManager];
      if (result)
      {
        v7 = result;
        v8 = [result userDistanceUnitForDistanceType:v3];

        v9 = [v5 localizedStringWithDistanceInMeters:v8 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:"defaultPrecisionForDistanceUnit:" roundingMode:v8) decimalTrimmingMode:{3, 1, a2}];
        if (!v9)
        {
          return 0;
        }

LABEL_28:
        v10 = v9;
LABEL_29:
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v17;
      }

      else
      {
        __break(1u);
LABEL_35:
        __break(1u);
      }

      return result;
    case 38:
      v26 = objc_opt_self();
      v27 = [v26 secondUnit];
      v28 = [objc_opt_self() quantityWithUnit:v27 doubleValue:a2];

      v29 = [v26 minuteUnit];
      [v28 doubleValueForUnit:v29];

      v30.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v31 = [objc_opt_self() stringWithNumber:v30.super.super.isa decimalPrecision:1 roundingMode:6];
      if (v31)
      {
        v32 = v31;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        return 48;
      }

      return v17;
    default:
      if (qword_1008DACA0 != -1)
      {
        swift_once();
      }

      v12 = qword_1008EFE90;
      v13 = objc_allocWithZone(NSNumber);
      v14 = v12;
      v15 = [v13 initWithDouble:a2];
      v16 = [v14 stringFromNumber:v15];

      if (v16)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        return 0;
      }

      return v17;
  }
}

id sub_1004D4D14()
{
  result = [objc_opt_self() meterUnit];
  qword_100925B98 = result;
  return result;
}

id sub_1004D4D50()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:1];
  [v0 setGeneratesDecimalNumbers:0];
  result = [v0 setMaximumFractionDigits:0];
  qword_1008EFE90 = v0;
  return result;
}

uint64_t sub_1004D4DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004D4E20(uint64_t result)
{
  if (!*v1 && (static Solarium.isEnabled.getter() & 1) != 0)
  {
    v2 = static Solarium.isEnabled.getter();
    if ((v2 & 1) == 0)
    {
      sub_1004D4E20(v2);
    }
  }
}

void sub_1004D4EE0()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.title2(_:), v7, v9);
  v12 = enum case for Font.Design.rounded(_:);
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static Font.system(_:design:weight:)();
  sub_1000465F8(v6);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  static Font.Weight.semibold.getter();
  v15 = Font.weight(_:)();

  qword_100925BA0 = v15;
}

unint64_t sub_1004D51C8()
{
  result = qword_1008EFF48;
  if (!qword_1008EFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EFF48);
  }

  return result;
}

char *sub_1004D5244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  *&v3[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel] = 0;
  v5 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_insetContentView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v5] = v6;
  v7 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView;
  v8 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = UIView.withContentMode(_:)();

  v10 = [v9 layer];
  [v10 setCornerRadius:3.0];

  [v9 setClipsToBounds:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v7] = v9;
  v11 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageView;
  v12 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = UIView.withContentMode(_:)();

  v14 = [v13 layer];
  [v14 setCornerRadius:3.0];

  [v13 setClipsToBounds:1];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v13;
  v15 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackView;
  v16 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setAxis:1];
  [v16 setDistribution:3];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];
  if (qword_1008DACB0 != -1)
  {
    swift_once();
  }

  v20 = UILabel.withFont(_:)();

  [v20 setLineBreakMode:0];
  [v20 setNumberOfLines:0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v17] = v20;
  v21 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_subtitleLabel;
  v22 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v21] = v22;
  v23 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_dateLabel;
  v24 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DACB8 != -1)
  {
    swift_once();
  }

  v25 = UILabel.withFont(_:)();

  v26 = [objc_opt_self() secondaryLabelColor];
  v27 = UILabel.withTextColor(_:)();

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v23] = v27;
  v28 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint;
  *&v4[v28] = [objc_allocWithZone(NSLayoutConstraint) init];
  v29 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint;
  *&v4[v29] = [objc_allocWithZone(NSLayoutConstraint) init];
  v30 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint;
  *&v4[v30] = [objc_allocWithZone(NSLayoutConstraint) init];
  v31 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint;
  *&v4[v31] = [objc_allocWithZone(NSLayoutConstraint) init];
  v32 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackViewLeadingConstraint;
  *&v4[v32] = [objc_allocWithZone(NSLayoutConstraint) init];
  v33 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint;
  *&v4[v33] = [objc_allocWithZone(NSLayoutConstraint) init];
  v34 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewLeadingConstraint;
  *&v4[v34] = [objc_allocWithZone(NSLayoutConstraint) init];
  if (a3)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  v48.receiver = v4;
  v48.super_class = type metadata accessor for MindfulnessSessionListTableViewCell();
  v36 = objc_msgSendSuper2(&v48, "initWithStyle:reuseIdentifier:", a1, v35);

  v37 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_insetContentView;
  v38 = *&v36[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_insetContentView];
  v39 = v36;
  v40 = v38;
  v41 = sub_1004313A0();
  [v40 setBackgroundColor:v41];

  v42 = [*&v36[v37] layer];
  [v42 setCornerRadius:sub_10013A8DC(v42)];

  [*&v36[v37] addSubview:*&v39[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageView]];
  [*&v36[v37] addSubview:*&v39[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView]];
  v43 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackView;
  [*&v39[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackView] addArrangedSubview:*&v39[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel]];
  [*&v39[v43] addArrangedSubview:*&v39[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_subtitleLabel]];
  [*&v36[v37] addSubview:*&v39[v43]];
  [*&v36[v37] addSubview:*&v39[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_dateLabel]];
  v44 = [v39 contentView];

  [v44 addSubview:*&v36[v37]];
  sub_1004D5904();

  return v39;
}

void sub_1004D5904()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView];
  v3 = [v2 widthAnchor];
  v4 = [v3 constraintEqualToConstant:28.0];

  v94 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint;
  v5 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint];
  *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint] = v4;

  v6 = [v2 heightAnchor];
  v7 = [v6 constraintEqualToConstant:28.0];

  v92 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint;
  v8 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint];
  *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint] = v7;

  v9 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageView];
  v10 = [v9 widthAnchor];
  v11 = [v10 constraintEqualToConstant:48.0];

  v91 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint;
  v12 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint];
  *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint] = v11;

  v88 = v9;
  v13 = [v9 heightAnchor];
  v14 = [v13 constraintEqualToConstant:48.0];

  v90 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint;
  v15 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint];
  *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint] = v14;

  v16 = [v2 centerXAnchor];
  v17 = [v9 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  v89 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint;
  v19 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint];
  *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint] = v18;

  v20 = [v2 leadingAnchor];
  v21 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_insetContentView];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];

  v24 = *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewLeadingConstraint];
  *&v0[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewLeadingConstraint] = v23;

  v93 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006F5010;
  v26 = [v21 topAnchor];
  v27 = [v0 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:sub_1004313D0()];
  *(v25 + 32) = v29;
  v30 = [v21 leadingAnchor];
  v31 = [v0 contentView];
  v32 = [v31 leadingAnchor];

  sub_1004313D0();
  v34 = [v30 constraintEqualToAnchor:v32 constant:v33];

  *(v25 + 40) = v34;
  v35 = [v21 trailingAnchor];
  v36 = [v0 contentView];
  v37 = [v36 trailingAnchor];

  sub_1004313D0();
  v39 = [v35 constraintEqualToAnchor:v37 constant:-v38];

  *(v25 + 48) = v39;
  v40 = [v21 bottomAnchor];
  v41 = [v0 contentView];
  v42 = [v41 bottomAnchor];

  sub_1004313D0();
  v44 = [v40 constraintEqualToAnchor:v42 constant:-v43];

  *(v25 + 56) = v44;
  v45 = [v88 leadingAnchor];
  v46 = [v21 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:16.0];

  *(v25 + 64) = v47;
  v48 = [v88 centerYAnchor];
  v49 = *&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackView];
  v50 = [v49 centerYAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];

  v52 = *&v1[v91];
  *(v25 + 72) = v51;
  *(v25 + 80) = v52;
  v53 = *&v1[v90];
  *(v25 + 88) = v53;
  v54 = v52;
  v55 = v53;
  v56 = [v2 centerYAnchor];
  v57 = [v88 centerYAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  v59 = *&v1[v89];
  *(v25 + 96) = v58;
  *(v25 + 104) = v59;
  v60 = *&v94[v1];
  v61 = *&v1[v92];
  *(v25 + 112) = v60;
  *(v25 + 120) = v61;
  v62 = v59;
  v63 = v60;
  v64 = v61;
  v65 = [v49 topAnchor];
  v66 = [v21 topAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:12.0];

  *(v25 + 128) = v67;
  v68 = [v49 leadingAnchor];
  v69 = [v88 trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:9.0];

  *(v25 + 136) = v70;
  v71 = [v49 trailingAnchor];
  v72 = [v21 trailingAnchor];
  v73 = [v71 constraintLessThanOrEqualToAnchor:v72 constant:-16.0];

  *(v25 + 144) = v73;
  v74 = [v49 bottomAnchor];
  v75 = [v21 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:-12.0];

  *(v25 + 152) = v76;
  v77 = *&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_subtitleLabel];
  v78 = [v77 topAnchor];
  v79 = [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v25 + 160) = v80;
  v81 = *&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_dateLabel];
  v82 = [v81 trailingAnchor];
  v83 = [v21 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:-16.0];

  *(v25 + 168) = v84;
  v85 = [v81 lastBaselineAnchor];
  v86 = [v77 lastBaselineAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v25 + 176) = v87;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v93 activateConstraints:isa];
}

void sub_1004D62AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1003388FC;
    *(v5 + 24) = v4;
    aBlock[4] = sub_10007BD60;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003579C0;
    aBlock[3] = &unk_10085D0C8;
    v6 = _Block_copy(aBlock);
    v7 = v2;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

void sub_1004D643C(void *a1, char *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v78 = a4;
  v77 = a3;
  v83 = a2;
  v82 = type metadata accessor for Date();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&unk_1008E9B20, &qword_1006DC6B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v76 - v12;
  v14 = *(v6 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel);
  *(v6 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel) = a1;
  v15 = a1;

  v16 = type metadata accessor for Trainer();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = sub_1005577DC(v15, v13);
  sub_10000EA04(v13, &unk_1008E9B20, &qword_1006DC6B0);
  v18 = objc_allocWithZone(NSMutableAttributedString);
  v80 = v17;
  v19 = [v18 initWithAttributedString:v17];
  v20 = [v19 length];
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  v22 = qword_1008DACB0;
  v23 = NSFontAttributeName;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1008EFF50;
  *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  *(inited + 40) = v24;
  v25 = v24;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &unk_1008EE730, &unk_1006D8460);
  type metadata accessor for Key(0);
  sub_10005FC2C(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v19 addAttributes:isa range:{0, v20}];

  [*(v6 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel) setAttributedText:v19];
  v27 = *(v6 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_subtitleLabel);
  v29 = sub_1005580BC(v28);
  [v27 setAttributedText:v29];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v15;
  v32 = v15;

  v33 = MindfulnessSessionViewModel.sourceRevision.getter();
  v34 = [v33 source];

  LODWORD(v33) = [v34 _hasFirstPartyBundleID];
  v79 = v19;
  if (v33)
  {
    v36 = sub_1005587DC(v35);
    sub_1004D6F0C(v36, v30, v32);
  }

  else
  {
    v76 = a5;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1004D7C14;
    *(v37 + 24) = v31;

    v38 = MindfulnessSessionViewModel.sourceRevision.getter();
    v39 = [v38 source];

    LOBYTE(v38) = [v39 _isAppleWatch];
    if (v38)
    {
      v36 = sub_1005588A8(28.0);
      v40 = objc_opt_self();
      v88 = sub_1001E9CBC;
      v89 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v86 = sub_100212B08;
      v87 = &unk_10085D190;
      v41 = _Block_copy(&aBlock);

      [v40 fetchWatchIconWithParameters:v36 completion:v41];

      v42 = v41;
    }

    else
    {
      v36 = sub_1005589F8(28.0);
      v43 = objc_opt_self();
      v88 = sub_1001E9CBC;
      v89 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v86 = sub_100212B08;
      v87 = &unk_10085D168;
      v44 = _Block_copy(&aBlock);

      [v43 fetchPhoneIconWithParameters:v36 completion:v44];

      v42 = v44;
    }

    _Block_release(v42);

    a5 = v76;
  }

  v45 = objc_opt_self();
  MindfulnessSessionViewModel.endDate.getter();
  v46.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v81 + 8))(v10, v82);
  v47 = v83;
  if (qword_1008DADD8 != -1)
  {
    swift_once();
  }

  v48 = [v45 formattedListStringForDate:v46.super.isa font:qword_1008F2CD0];

  v49 = [objc_allocWithZone(NSMutableAttributedString) init];
  [v49 appendAttributedString:v48];
  [*(v6 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_dateLabel) setAttributedText:v49];
  v50 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if ((v51 & 1) != 0 || v50 != 3)
  {
    goto LABEL_27;
  }

  v52 = MindfulnessSessionViewModel.mindfulnessSessions.getter();
  if (v52 >> 62)
  {
    v69 = v52;
    v70 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v69;
    if (v70)
    {
      goto LABEL_15;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v53 = *(v52 + 32);
  }

  v54 = v53;

  v55 = [v54 metadata];
  if (v55)
  {
    v56 = v55;
    v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v57 + 16))
    {
      v60 = sub_100066F20(v58, v59);
      v62 = v61;

      if (v62)
      {
        sub_10000B1B4(*(v57 + 56) + 32 * v60, v84);

        sub_1001AA76C(v84, &aBlock);
        *&v84[0] = 0;
        *(&v84[0] + 1) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v63 = *(&v84[0] + 1);
        v82 = *&v84[0];
        v64 = *&v83[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
        v65 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v66 = v32;
        v67 = v77;
        v68 = v78;
        sub_10000B210(v78, a5);
        sub_1004238E4(v82, v63, v64, v65, v66, v67, v68, a5);
        sub_1000245E0(v68, a5);

        sub_100005A40(&aBlock);

        return;
      }

      v47 = v83;
    }

    else
    {
    }
  }

LABEL_27:
  v71 = *&v47[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  if (sub_100698958(v32))
  {
    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = v32;
    v74 = v78;
    sub_10000B210(v78, a5);

    v75 = v47;
    sub_1004242A4(v73, v71, v72, v73, v75, v74, a5);

    sub_1000245E0(v74, a5);
  }

  else
  {
  }
}

void sub_1004D6F0C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      type metadata accessor for MindfulnessSessionViewModel();
      v9 = a3;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        swift_beginAccess();
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          v13 = *(v11 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView);

          [v13 setImage:a1];
        }

        v14 = sub_100433CAC();
        swift_beginAccess();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          v17 = *(v15 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageView);

          v18 = [v14 gradientDarkColor];
          v19 = [v14 gradientDarkColor];
          v20 = FIUICircularGradientImage();

          [v17 setImage:v20];
        }
      }
    }
  }
}

void sub_1004D70DC(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel);
    v12 = Strong;
    v13 = v11;

    if (v11)
    {
      v14 = type metadata accessor for MindfulnessSessionViewModel();
      v15 = a3;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        if (a1)
        {
          v17 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
          v18 = objc_allocWithZone(NSMutableAttributedString);
          v43 = a1;
          v42 = [v18 initWithAttributedString:v17];
          v41 = [v42 length];
          sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1006D1F70;
          *(inited + 32) = NSForegroundColorAttributeName;
          v20 = objc_opt_self();
          v21 = NSForegroundColorAttributeName;
          v22 = [v20 whiteColor];
          v23 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
          *(inited + 40) = v22;
          *(inited + 64) = v23;
          *(inited + 72) = NSFontAttributeName;
          v24 = qword_1008DACB0;
          v25 = NSFontAttributeName;
          if (v24 != -1)
          {
            swift_once();
          }

          v26 = qword_1008EFF50;
          *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
          *(inited + 80) = v26;
          v27 = v26;
          sub_1004C9200(inited);
          swift_setDeallocating();
          sub_100140278(&unk_1008EE730, &unk_1006D8460);
          swift_arrayDestroy();
          type metadata accessor for Key(0);
          sub_10005FC2C(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v42 addAttributes:isa range:{0, v41}];

          swift_beginAccess();
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel);

            [v31 setAttributedText:v42];
          }

          v32 = swift_allocObject();
          swift_beginAccess();
          v33 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v34 = swift_allocObject();
          v34[1].i64[0] = v32;
          v34[1].i64[1] = v15;
          v34[2].i64[0] = a5;
          v34[2].i64[1] = a6;
          v34[3] = vdupq_n_s64(0x4048000000000000uLL);
          v35 = v15;

          sub_10000B210(a5, a6);
          sub_100419358(v43, sub_1004D7F28, v34, 48.0, 48.0);
        }

        else
        {
          v36 = static os_log_type_t.error.getter();
          v37 = HKLogActivity;
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1006D1F70;
          *(v38 + 56) = &type metadata for String;
          *(v38 + 64) = sub_10000A788();
          *(v38 + 32) = 0xD000000000000050;
          *(v38 + 40) = 0x800000010075CBD0;
          *(v38 + 96) = v14;
          *(v38 + 104) = sub_10005FC2C(&qword_1008E0A98, &type metadata accessor for MindfulnessSessionViewModel, &protocol conformance descriptor for NSObject);
          *(v38 + 72) = v15;
          v39 = v15;
          v40 = v37;
          os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v40, "%@ failed to fetch catalog item view model for mindfulness session %@", 69, 2, v38);
        }
      }
    }
  }
}

void sub_1004D75F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel);
    v13 = Strong;
    v14 = v12;

    if (v12)
    {
      type metadata accessor for MindfulnessSessionViewModel();
      v15 = a3;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        if (a1)
        {
          swift_beginAccess();
          v17 = swift_unknownObjectWeakLoadStrong();
          if (v17)
          {
            v18 = v17;
            v19 = *(v17 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint);

            [v19 setConstant:a5];
          }

          swift_beginAccess();
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = *(v20 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint);

            [v22 setConstant:a6];
          }

          swift_beginAccess();
          v23 = swift_unknownObjectWeakLoadStrong();
          if (v23)
          {
            v24 = v23;
            v25 = *(v23 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint);

            [v25 setConstant:a5];
          }

          swift_beginAccess();
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            v28 = *(v26 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint);

            [v28 setConstant:a6];
          }

          swift_beginAccess();
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint);

            [v31 setActive:0];
          }

          swift_beginAccess();
          v32 = swift_unknownObjectWeakLoadStrong();
          if (v32)
          {
            v33 = v32;
            v34 = *(v32 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewLeadingConstraint);

            [v34 setActive:1];
          }

          swift_beginAccess();
          v35 = swift_unknownObjectWeakLoadStrong();
          if (v35)
          {
            v36 = v35;
            v37 = *(v35 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView);

            [v37 setImage:a1];
          }
        }
      }
    }
  }

  if (a4)
  {
    a4();
  }
}

id sub_1004D791C(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MindfulnessSessionListTableViewCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v2 = *&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel];
  *&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel] = 0;

  [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint] setConstant:28.0];
  [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint] setConstant:28.0];
  [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint] setConstant:48.0];
  [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint] setConstant:48.0];
  [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewLeadingConstraint] setActive:0];
  [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint] setActive:1];
  return [*&v1[OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView] setImage:0];
}

id sub_1004D7AA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MindfulnessSessionListTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004D7C1C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v26[1] = a5;
  v27 = a4;
  v28 = a1;
  v6 = sub_100140278(&unk_1008E9B20, &qword_1006DC6B0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for Trainer();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel);
    v18 = Strong;
    v19 = v17;

    if (v17)
    {
      type metadata accessor for MindfulnessSessionViewModel();
      v20 = a3;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        sub_10034C4E0(v28, v11);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {
          sub_10000EA04(v11, &unk_1008E9B20, &qword_1006DC6B0);
        }

        else
        {
          (*(v13 + 32))(v15, v11, v12);
          swift_beginAccess();
          v22 = swift_unknownObjectWeakLoadStrong();
          if (v22)
          {
            v23 = v22;
            v24 = *(v22 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel);

            (*(v13 + 16))(v8, v15, v12);
            (*(v13 + 56))(v8, 0, 1, v12);
            v25 = sub_1005577DC(v20, v8);
            sub_10000EA04(v8, &unk_1008E9B20, &qword_1006DC6B0);
            [v24 setAttributedText:v25];
          }

          if (v27)
          {
            v27();
          }

          (*(v13 + 8))(v15, v12);
        }
      }
    }
  }
}

void sub_1004D7F38()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___CHMindfulnessSessionListTableViewCell_mindfulnessSessionViewModel) = 0;
  v2 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_insetContentView;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageView;
  v5 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = UIView.withContentMode(_:)();

  v7 = [v6 layer];
  [v7 setCornerRadius:3.0];

  [v6 setClipsToBounds:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v4) = v6;
  v8 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageView;
  v9 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = UIView.withContentMode(_:)();

  v11 = [v10 layer];
  [v11 setCornerRadius:3.0];

  [v10 setClipsToBounds:1];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v8) = v10;
  v12 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackView;
  v13 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setAxis:1];
  [v13 setDistribution:3];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v12) = v13;
  v14 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_titleLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];
  if (qword_1008DACB0 != -1)
  {
    swift_once();
  }

  v17 = UILabel.withFont(_:)();

  [v17 setLineBreakMode:0];
  [v17 setNumberOfLines:0];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v14) = v17;
  v18 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_subtitleLabel;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_dateLabel;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DACB8 != -1)
  {
    swift_once();
  }

  v22 = UILabel.withFont(_:)();

  v23 = [objc_opt_self() secondaryLabelColor];
  v24 = UILabel.withTextColor(_:)();

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v20) = v24;
  v25 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewWidthConstraint;
  *(v1 + v25) = [objc_allocWithZone(NSLayoutConstraint) init];
  v26 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_imageViewHeightConstraint;
  *(v1 + v26) = [objc_allocWithZone(NSLayoutConstraint) init];
  v27 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewWidthConstraint;
  *(v1 + v27) = [objc_allocWithZone(NSLayoutConstraint) init];
  v28 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_gradientImageViewHeightConstraint;
  *(v1 + v28) = [objc_allocWithZone(NSLayoutConstraint) init];
  v29 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_labelStackViewLeadingConstraint;
  *(v1 + v29) = [objc_allocWithZone(NSLayoutConstraint) init];
  v30 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewCenterXConstraint;
  *(v1 + v30) = [objc_allocWithZone(NSLayoutConstraint) init];
  v31 = OBJC_IVAR___CHMindfulnessSessionListTableViewCell_iconImageViewLeadingConstraint;
  *(v1 + v31) = [objc_allocWithZone(NSLayoutConstraint) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004D841C(void *a1)
{
  v3 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v3 - 8);
  v62 = &v47 - v4;
  v61 = type metadata accessor for ImpressionMetrics();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v1 + 40) = &_swiftEmptyDictionarySingleton;

  v51 = v1;
  sub_1004D8F08();
  ImpressionsCalculator.removeAllElements()();

  v14 = [a1 indexPathsForVisibleItems];
  v63 = v10;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v54 = v9;
    v20 = *(v11 + 16);
    v18 = v11 + 16;
    v19 = v20;
    v21 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v47 = v16;
    v22 = v16 + v21;
    v23 = *(v18 + 56);
    v56 = (v5 + 48);
    v53 = (v5 + 32);
    v49 = (v5 + 16);
    v52 = (v5 + 8);
    v55 = (v5 + 56);
    v24 = (v18 - 8);
    v58 = v18;
    v57 = v20;
    v59 = v23;
    v60 = (v18 - 8);
    v48 = v13;
    v20(v13, v16 + v21, v63);
    while (1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v26 = [a1 cellForItemAtIndexPath:{isa, v47}];

      if (v26)
      {
        break;
      }

LABEL_7:
      (*v24)(v13, v63);
      v22 += v23;
      if (!--v17)
      {
      }

      v19(v13, v22, v63);
    }

    type metadata accessor for ActivityDashboardCardCell();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
LABEL_6:

      goto LABEL_7;
    }

    v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_card;
    v29 = v27;
    swift_beginAccess();
    sub_1004D9430(v29 + v28, v67);
    if (v68)
    {
      sub_100007C5C(v67, v64);
      sub_10000EA04(v67, &qword_1008DCC60, &qword_1006DEBC0);
      v30 = v13;
      v32 = v65;
      v31 = v66;
      sub_1000066AC(v64, v65);
      v33 = v62;
      v34 = IndexPath.item.getter();
      v35 = v61;
      v36 = v32;
      v13 = v30;
      v19 = v57;
      (*(v31 + 64))(0, 0, v34, v36, v31);
      sub_100005A40(v64);
      v37 = v35;
      v23 = v59;
      if ((*v56)(v33, 1, v37) != 1)
      {
        v38 = v54;
        (*v53)(v54, v62, v61);
        v39 = v13;
        v40 = IndexPath._bridgeToObjectiveC()().super.isa;
        v41 = [a1 layoutAttributesForItemAtIndexPath:v40];

        if (v41)
        {
          [v41 frame];
          v42 = v51;
          swift_beginAccess();
          v43 = v50;
          (*v49)(v50, v38, v61);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64[0] = *(v42 + 40);
          *(v42 + 40) = 0x8000000000000000;
          v45 = v43;
          v19 = v57;
          sub_100490170(v45, v39, isUniquelyReferenced_nonNull_native);
          *(v42 + 40) = v64[0];
          swift_endAccess();
          sub_1004D8F08();
          ImpressionsCalculator.addElement(_:at:)();

          (*v52)(v38, v61);
          v13 = v48;
        }

        else
        {
          (*v52)(v38, v61);
          v13 = v39;
        }

        v23 = v59;
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000EA04(v67, &qword_1008DCC60, &qword_1006DEBC0);
      (*v55)(v62, 1, 1, v61);
    }

    sub_10000EA04(v62, &qword_1008E9A30, &unk_1006F50F0);
LABEL_5:
    v24 = v60;
    goto LABEL_6;
  }
}