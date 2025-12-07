id sub_1012538FC(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_sidePadding] = 0x4028000000000000;
  v4 = OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_backgroundColor;
  *&v1[v4] = [objc_allocWithZone(CRLColor) initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  swift_unknownObjectWeakAssign();
  v5 = *&v1[v3];
  *&v1[v3] = 0;

  v1[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type] = sub_101252D2C(a1);
  v32.receiver = v1;
  v32.super_class = type metadata accessor for CRLUndownloadedAssetDrawingHelper();
  v6 = objc_msgSendSuper2(&v32, "init");
  type metadata accessor for CRLImageUndownloadedAssetDrawingHelper();
  if (([v6 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0 && *(v6 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type) == 2)
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31, "Image undownloaded asset should be handled by CRLImageUndownloadedAssetDrawingHelper.", 85, 2u);
    StaticString.description.getter("init(rep:)", 10, 2);
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUndownloadedAssetDrawingHelper.swift", 104, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 123;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "Image undownloaded asset should be handled by CRLImageUndownloadedAssetDrawingHelper.", 85, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(rep:)", 10, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUndownloadedAssetDrawingHelper.swift", 104, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Image undownloaded asset should be handled by CRLImageUndownloadedAssetDrawingHelper.", 85, 2);
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:123 isFatal:0 format:v29 args:v26];
  }

  return v6;
}

uint64_t sub_101253D7C()
{
  v0 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD9468);
  sub_1005EB3DC(v10, qword_101AD9468);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_101254070()
{
  v0 = sub_1005B981C(&qword_1019F8B00, "Ι%");
  __chkstk_darwin(v0 - 8);
  v79 = v60 - v1;
  v2 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v2 - 8);
  v72 = v60 - v3;
  v68 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v68 - 8);
  __chkstk_darwin(v68);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for LocalizedStringResource();
  v80 = *(v77 - 8);
  __chkstk_darwin(v77);
  sub_1005B981C(&qword_101A2ED78, &qword_1014D6368);
  v13 = sub_1005B981C(&qword_101A14748, &unk_1014D6370);
  v81 = v13;
  v14 = *(v13 - 8);
  v73 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101488C80;
  v17 = v16 + v15;
  v18 = *(v13 + 48);
  v63 = v16;
  v64 = v18;
  *(v16 + v15) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v78 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v74 = *(v4 + 104);
  v74(v6);
  v71 = v4 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69 = *(v80 + 56);
  v80 += 56;
  v19 = v72;
  v69(v72, 1, 1, v77);
  v67 = type metadata accessor for DisplayRepresentation.Image();
  v20 = *(v67 - 8);
  v76 = *(v20 + 56);
  v70 = v20 + 56;
  v76(v79, 1, 1, v67);
  v75 = v17;
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = *(v81 + 48);
  *(v17 + v73) = 1;
  v21 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v65 = v6;
  v22 = v6;
  v23 = v68;
  v24 = v74;
  (v74)(v22, v78, v68);
  v25 = v9;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v19;
  v27 = v77;
  v69(v19, 1, 1, v77);
  v28 = v67;
  v76(v79, 1, 1, v67);
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = v73;
  v64 = 2 * v73;
  v61 = (v75 + 2 * v73);
  v62 = *(v81 + 48);
  *v61 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  v66 = v25;
  static Locale.current.getter();
  v30 = v65;
  (v24)(v65, v78, v23);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69(v26, 1, 1, v27);
  v76(v79, 1, 1, v28);
  DisplayRepresentation.init(title:subtitle:image:)();
  v31 = v75;
  v62 = v75 + v64 + v29;
  v64 = *(v81 + 48);
  *v62 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = v78;
  v33 = v74;
  (v74)(v30, v78, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34 = v69;
  v69(v26, 1, 1, v77);
  v76(v79, 1, 1, v67);
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = 4 * v73;
  v61 = (v31 + 4 * v73);
  v62 = *(v81 + 48);
  *(v31 + v64) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v65;
  v33(v65, v32, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34(v72, 1, 1, v77);
  v36 = v79;
  v37 = v67;
  v38 = v76;
  v76(v79, 1, 1, v67);
  DisplayRepresentation.init(title:subtitle:image:)();
  v62 = v75 + v64 + v73;
  v64 = *(v81 + 48);
  *v62 = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = v78;
  v40 = v68;
  (v74)(v35, v78, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v41 = v77;
  v69(v72, 1, 1, v77);
  v38(v36, 1, 1, v37);
  DisplayRepresentation.init(title:subtitle:image:)();
  v42 = v75;
  v62 = v75 + 6 * v73;
  v64 = *(v81 + 48);
  *v62 = 6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v43 = v65;
  (v74)(v65, v39, v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v44 = v69;
  v69(v72, 1, 1, v41);
  v45 = v79;
  v46 = v67;
  v76(v79, 1, 1, v67);
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = 8 * v73;
  v61 = (v42 + 7 * v73);
  v62 = *(v81 + 48);
  *v61 = 7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = v68;
  (v74)(v43, v78, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v48 = v77;
  v44(v72, 1, 1, v77);
  v49 = v46;
  v50 = v76;
  v76(v45, 1, 1, v49);
  DisplayRepresentation.init(title:subtitle:image:)();
  v61 = (v75 + v64);
  v62 = *(v81 + 48);
  *v61 = 8;
  v60[1] = v21;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = v65;
  (v74)(v65, v78, v47);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v52 = v72;
  v53 = v69;
  v69(v72, 1, 1, v48);
  v54 = v79;
  v55 = v67;
  v50(v79, 1, 1, v67);
  v56 = v54;
  DisplayRepresentation.init(title:subtitle:image:)();
  v57 = (v75 + v64 + v73);
  v73 = *(v81 + 48);
  *v57 = 9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v74)(v51, v78, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v52, 1, 1, v77);
  v76(v56, 1, 1, v55);
  DisplayRepresentation.init(title:subtitle:image:)();
  v58 = sub_100BDA260(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD9480 = v58;
  return result;
}

unint64_t sub_101254F58()
{
  result = qword_101A2ED08;
  if (!qword_101A2ED08)
  {
    result = swift_getWitnessTable(asc_1014D60B0, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED08);
  }

  return result;
}

Swift::Int sub_101254FAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D6380[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_101255034(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D6380[v2]);
  return Hasher._finalize()();
}

uint64_t sub_101255080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101255980(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1012550C8()
{
  result = qword_101A2ED10;
  if (!qword_101A2ED10)
  {
    result = swift_getWitnessTable(byte_1014D6190, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED10);
  }

  return result;
}

unint64_t sub_101255120()
{
  result = qword_101A2ED18;
  if (!qword_101A2ED18)
  {
    result = swift_getWitnessTable(byte_1014D61C8, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED18);
  }

  return result;
}

unint64_t sub_101255178()
{
  result = qword_101A2ED20;
  if (!qword_101A2ED20)
  {
    result = swift_getWitnessTable(byte_1014D6118, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED20);
  }

  return result;
}

unint64_t sub_1012551DC()
{
  result = qword_101A2ED28;
  if (!qword_101A2ED28)
  {
    result = swift_getWitnessTable(aQ_29, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED28);
  }

  return result;
}

unint64_t sub_101255230()
{
  result = qword_101A2ED30;
  if (!qword_101A2ED30)
  {
    result = swift_getWitnessTable(aY_29, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED30);
  }

  return result;
}

unint64_t sub_101255284()
{
  result = qword_101A2ED38;
  if (!qword_101A2ED38)
  {
    result = swift_getWitnessTable(aI_30, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED38);
  }

  return result;
}

unint64_t sub_1012552DC()
{
  result = qword_101A2ED40;
  if (!qword_101A2ED40)
  {
    result = swift_getWitnessTable(aA_17, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED40);
  }

  return result;
}

uint64_t sub_101255330@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2B90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD9468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_101255428()
{
  result = qword_101A2ED48;
  if (!qword_101A2ED48)
  {
    result = swift_getWitnessTable(aI_31, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED48);
  }

  return result;
}

uint64_t sub_10125547C(uint64_t a1)
{
  v2 = sub_101255428();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1012554CC()
{
  result = qword_101A2ED50;
  if (!qword_101A2ED50)
  {
    result = swift_getWitnessTable(byte_1014D62E0, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED50);
  }

  return result;
}

unint64_t sub_101255524()
{
  result = qword_101A2ED58;
  if (!qword_101A2ED58)
  {
    result = swift_getWitnessTable(aI_32, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED58);
  }

  return result;
}

unint64_t sub_10125557C()
{
  result = qword_101A2ED60;
  if (!qword_101A2ED60)
  {
    result = swift_getWitnessTable(aY_30, &type metadata for CRLFontSizeEntity, v0, v1);
    atomic_store(result, &qword_101A2ED60);
  }

  return result;
}

double sub_1012555D0()
{
  if (qword_1019F2B98 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10125562C(uint64_t a1)
{
  v2 = sub_1012552DC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10125567C()
{
  result = qword_101A2ED68;
  if (!qword_101A2ED68)
  {
    v3 = sub_1005C4E5C(&qword_101A2ED70, &qword_1014D6308);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A2ED68);
  }

  return result;
}

uint64_t sub_1012556E0(char a1)
{
  v1 = &byte_101873038;
  if (qword_1014D6380[a1] == 10)
  {
    return v1[1];
  }

  v1 = &byte_101873039;
  if (qword_1014D6380[a1] == 12)
  {
    return v1[1];
  }

  v1 = &byte_10187303A;
  if (qword_1014D6380[a1] == 14)
  {
    return v1[1];
  }

  v1 = &byte_10187303B;
  if (qword_1014D6380[a1] == 18)
  {
    return v1[1];
  }

  v1 = &byte_10187303C;
  if (qword_1014D6380[a1] == 24)
  {
    return v1[1];
  }

  v1 = &byte_10187303D;
  if (qword_1014D6380[a1] == 36)
  {
    return v1[1];
  }

  v1 = &byte_10187303E;
  if (qword_1014D6380[a1] == 48)
  {
    return v1[1];
  }

  v1 = &byte_10187303F;
  if (qword_1014D6380[a1] == 72)
  {
    return v1[1];
  }

  v1 = &byte_101873040;
  if (qword_1014D6380[a1] == 96)
  {
    return v1[1];
  }

  else
  {
    return 10;
  }
}

uint64_t sub_101255824(char a1)
{
  v1 = &byte_101873038;
  v2 = qword_1014D6380[a1];
  if ((v2 == 10 || (v1 = &byte_101873039, qword_1014D6380[a1] == 12) || (v1 = &byte_10187303A, qword_1014D6380[a1] == 14) || (v1 = &byte_10187303B, qword_1014D6380[a1] == 18) || (v1 = &byte_10187303C, qword_1014D6380[a1] == 24) || (v1 = &byte_10187303D, qword_1014D6380[a1] == 36) || (v1 = &byte_10187303E, qword_1014D6380[a1] == 48) || (v1 = &byte_10187303F, qword_1014D6380[a1] == 72) || (v1 = &byte_101873040, qword_1014D6380[a1] == 96) || (v1 = &byte_101873041, qword_1014D6380[a1] == 144)) && v2 != 10)
  {
    return *(v1 - 1);
  }

  else
  {
    return 10;
  }
}

uint64_t sub_101255980(uint64_t a1)
{
  if (a1 > 35)
  {
    if (a1 <= 71)
    {
      if (a1 == 36)
      {
        return 5;
      }

      if (a1 == 48)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 72:
          return 7;
        case 96:
          return 8;
        case 144:
          return 9;
      }
    }
  }

  else if (a1 <= 13)
  {
    if (a1 == 10)
    {
      return 0;
    }

    if (a1 == 12)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 14:
        return 2;
      case 18:
        return 3;
      case 24:
        return 4;
    }
  }

  return 10;
}

id sub_101255B58(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_id;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  if (a2)
  {
    a2 = a2;
    [a2 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A0C7F0, off_10182F998);
    swift_dynamicCast();
    *&v6[OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_stroke] = v12;
  }

  else
  {
    *&v6[OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_stroke] = 0;
  }

  v13.receiver = v6;
  v13.super_class = v3;
  v10 = objc_msgSendSuper2(&v13, "init");

  (*(v9 + 8))(a1, v8);
  return v10;
}

void sub_101255EE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLStyledItem(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        v13 = *(v5 + OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_stroke);
        v14 = *((swift_isaMask & *v11) + 0x4E0);
        v15 = v13;
        v14(v13);
        v16 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, v6);
      }

      return;
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 _atomicIncrementAssertCount];
  v42 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v42, "Unable to retrieve styled board item.", 37, 2u);
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetStroke.swift", 91, 2);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v20 lastPathComponent];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v18;
  v27 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v27;
  v28 = sub_1005CF04C();
  *(inited + 104) = v28;
  *(inited + 72) = v19;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v22;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 31;
  v30 = v42;
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v30;
  v31 = v19;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "Unable to retrieve styled board item.", 37, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve styled board item.");
  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetStroke.swift", 91, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to retrieve styled board item.", 37, 2);
  v39 = String._bridgeToObjectiveC()();

  [v17 handleFailureInFunction:v37 file:v38 lineNumber:31 isFatal:1 format:v39 args:v36];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v40, v41);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1012563F4()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_stroke);
}

id sub_10125646C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetStroke(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetStroke(uint64_t a1)
{
  result = qword_101A2EDA8;
  if (!qword_101A2EDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101256574(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

id sub_10125660C(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_id;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  if (a2)
  {
    v8 = a2;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A0C7F0, off_10182F998);
    swift_dynamicCast();
    *&v2[OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_stroke] = v11;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_stroke] = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for CRLCommandSetStroke(0);
  v9 = objc_msgSendSuper2(&v12, "init");
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t sub_101256780()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLTableCellEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  sub_1011C3CD4();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [*(v5 + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) selectionForEditor:v5];
  if (!v8)
  {

LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  v9 = v8;
  type metadata accessor for CRLTableCellSelection(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    sub_1011DEDEC(v10);
    v12 = v11;

    swift_unknownObjectRelease();
    return v12;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1012568A0()
{
  v1 = _s13StyleCRDTDataVMa(0);
  __chkstk_darwin(v1);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v4 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v57 - v5;
  v70 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v70);
  v69 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A2C590, &unk_1014D6430);
  __chkstk_darwin(v7 - 8);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v57 - v11);
  v75 = _s12CellContentsVMa(0);
  v13 = *(v75 - 8);
  __chkstk_darwin(v75);
  v68 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v57 - v16);
  v18 = _s6CellIDVMa(0);
  v74 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v67 = &v57 - v22;
  v23 = sub_101256780();
  if (v23)
  {
    v62 = v1;
    v73 = v23;
    v24 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (type metadata accessor for CRLTableCellEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v26 = [v24 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    sub_1011C3CD4();
    v28 = v27;
    swift_unknownObjectRelease();
    if (v28)
    {
      v61 = v4;
      if (!*(v73 + 16))
      {

        return;
      }

      v66 = *(v73 + 16);
      v64 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v29 = v67;
      sub_1012572B0(v64, v67, _s6CellIDVMa);
      v30 = v28;

      sub_1011E2704(v29, v12);
      v31 = *(v13 + 48);
      v65 = v13 + 48;
      v63 = v31;
      if (v31(v12, 1, v75) == 1)
      {
        sub_10000CAAC(v12, &unk_101A2C590, &unk_1014D6430);
        v32 = sub_1011DD9E4();
      }

      else
      {
        sub_101257318(v12, v17);
        v32 = *v17;
        v33 = *v17;
        sub_10125737C(v17, _s12CellContentsVMa);
      }

      v34 = v61;
      v60 = v3;
      v35 = *(v73 + 16);

      v36 = v66;
      if (v35 >= v66)
      {
        if (v66 == 1)
        {
LABEL_17:

          sub_10125737C(v67, _s6CellIDVMa);

          return;
        }

        v58 = (v34 + 8);
        v59 = (v34 + 16);
        v37 = 1;
        v61 = v30;
        while (1)
        {
          if (v36 == v37)
          {
            __break(1u);
            goto LABEL_40;
          }

          sub_1012572B0(v64 + *(v74 + 72) * v37, v20, _s6CellIDVMa);
          sub_1011E2704(v20, v9);
          if (v63(v9, 1, v75) != 1)
          {
            break;
          }

          sub_10000CAAC(v9, &unk_101A2C590, &unk_1014D6430);
          type metadata accessor for CRLTableItemData(0);
          v38 = swift_dynamicCastClassUnconditional();
          v39 = qword_101AD9268;
          swift_beginAccess();
          v40 = v38 + v39;
          v41 = v71;
          v42 = v72;
          (*v59)(v71, v40, v72);
          v43 = v69;
          Capsule.root.getter();
          (*v58)(v41, v42);
          v44 = v60;
          sub_1012572B0(v43 + *(v70 + 32), v60, _s13StyleCRDTDataVMa);
          sub_10125737C(v43, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&unk_101A10690, &qword_101472520);
          CRRegister.wrappedValue.getter();
          sub_10125737C(v44, _s13StyleCRDTDataVMa);
          v83 = v76;
          v84 = v77;
          v87 = v80;
          v88 = v81;
          v85 = v78;
          v86 = v79;
          v91[0] = v77;
          v91[1] = v78;
          v89 = v82;
          v90 = v76;
          v91[4] = v81;
          v91[5] = v82;
          v91[2] = v79;
          v91[3] = v80;
          if (v82)
          {
            sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
            v92[2] = v86;
            v92[3] = v87;
            v92[4] = v88;
            v93 = v89;
            v92[0] = v84;
            v92[1] = v85;
            sub_10074A990(v91, &v76);
            v45 = sub_1008B0490(v92);
            if (BYTE8(v90))
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v46 = static OS_os_log.persistence;
              v47 = static os_log_type_t.info.getter();
              sub_100005404(v46, &_mh_execute_header, v47, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
            }

            v48 = [objc_allocWithZone(CRLColorFill) initWithColor:v45];

            sub_10000CAAC(&v83, &qword_1019FFF80, &qword_101489000);
            sub_10125737C(v20, _s6CellIDVMa);
            v49 = v48;
LABEL_31:
            v53 = v49;
            if (!v32)
            {
              v56 = v61;

              sub_10125737C(v67, _s6CellIDVMa);

              return;
            }

            sub_100006370(0, &qword_101A2BF30, off_10182F808);
            v54 = v32;
            v55 = static NSObject.== infix(_:_:)();

            v30 = v61;
            if ((v55 & 1) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_20;
          }

          sub_10125737C(v20, _s6CellIDVMa);
          if (v32)
          {
            v30 = v61;
            goto LABEL_17;
          }

          v30 = v61;
LABEL_20:
          ++v37;
          v36 = v66;
          if (v66 == v37)
          {
            goto LABEL_17;
          }
        }

        v50 = v68;
        sub_101257318(v9, v68);
        v51 = *v50;
        v52 = *v50;
        sub_10125737C(v50, _s12CellContentsVMa);
        sub_10125737C(v20, _s6CellIDVMa);
        if (!v51)
        {
          if (v32)
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        }

        v49 = v52;
        goto LABEL_31;
      }

LABEL_40:
      __break(1u);
    }

    else
    {
    }
  }
}

id sub_101257258(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLMiniFormatterCellDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1012572B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101257318(uint64_t a1, uint64_t a2)
{
  v4 = _s12CellContentsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10125737C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1012574EC(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform30CRLCommandSetAspectRatioLocked_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR____TtC8Freeform30CRLCommandSetAspectRatioLocked_aspectRatioLocked] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_101257854(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    v10 = v9;
    sub_1012E0400(v10, &off_10188FE10);

    if (v4)
    {
    }

    else
    {
      (*((swift_isaMask & *v10) + 0x198))(*(v5 + OBJC_IVAR____TtC8Freeform30CRLCommandSetAspectRatioLocked_aspectRatioLocked));
      v11 = v10;
      sub_1012CF6CC(v11, &off_10188FE10, v6);
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "Unable to retrieve board item", 29, 2u);
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetAspectRatioLocked.swift", 102, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 27;
    v25 = v37;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetAspectRatioLocked.swift", 102, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to retrieve board item", 29, 2);
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:27 isFatal:1 format:v34 args:v31];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v35, v36);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_101257D28()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLCommandSetAspectRatioLocked_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_101257D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetAspectRatioLocked(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetAspectRatioLocked(uint64_t a1)
{
  result = qword_101A2EE08;
  if (!qword_101A2EE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101257E88(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_101257F80()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for CRLWPiOSUserDefaults();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_101AD94A8 = result;
  return result;
}

double sub_101258000@<D0>(void *a1@<X8>)
{
  if (qword_1019F2BA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_101AD94A8;

  return result;
}

uint64_t sub_1012580B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v83 = a3;
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v76[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v79 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v80 = &v76[-v11];
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = &v76[-v13];
  v15 = type metadata accessor for CRLAssetData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = v3;
  type metadata accessor for CRLFileItem(0);
  sub_100BEFB3C(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_1006008F0(v14, v18);
    v21 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v23 = *(v22 + 16);
    v24 = v21;
    os_unfair_lock_lock(v23);
    v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    v27 = v18;
    if (v26)
    {
      v28 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v30 = v24;
      v31 = sub_10001F1A0(v30);

      v32 = *&v24[v25];
      *&v24[v25] = v31;
      v28 = v31;

      v26 = 0;
    }

    v33 = v80;
    v19 = v81;
    v34 = *(v22 + 16);
    v35 = v26;
    os_unfair_lock_unlock(v34);
    sub_10108CAF4(v18, 0, 3, 0, 0, v6);

    v20 = v82;
    if ((*(v82 + 48))(v6, 1, v19) == 1)
    {
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
      goto LABEL_8;
    }

    (*(v20 + 32))(v33, v6, v19);
    URL.deletingLastPathComponent()();
    if (v77)
    {
      v41 = objc_opt_self();
      v42 = [v41 defaultManager];
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      v46 = [v42 crl_directoryExistsAt:v44];

      if ((v46 & 1) == 0)
      {
        v47 = [v41 defaultManager];
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        v84 = 0;
        v51 = [v47 createDirectoryAtURL:v49 withIntermediateDirectories:0 attributes:0 error:&v84];

        v52 = v84;
        if ((v51 & 1) == 0)
        {
LABEL_19:
          v66 = v79;
          v81 = v27;
          v67 = v52;
          v68 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v69 = *(v20 + 8);
          v69(v66, v19);
          if (qword_1019F2098 != -1)
          {
            swift_once();
          }

          v70 = static OS_os_log.crlDefault;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v84 = v68;
          swift_errorRetain();
          sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
          v72 = String.init<A>(describing:)();
          v74 = v73;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v72;
          *(inited + 40) = v74;
          v75 = static os_log_type_t.error.getter();
          sub_100005404(v70, &_mh_execute_header, v75, "Unable to copy asset to a temp location: %@. ", 47, 2, inited);

          swift_setDeallocating();
          sub_100005070((inited + 32));
          v69(v80, v19);
          sub_10061A168(v81, type metadata accessor for CRLAssetData);
          goto LABEL_11;
        }

        v53 = v84;
      }
    }

    v54 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    v58 = v78;
    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    v84 = 0;
    v62 = [v54 copyItemAtURL:v57 toURL:v60 error:&v84];

    v52 = v84;
    if (v62)
    {
      v63 = *(v20 + 8);
      v64 = v84;
      v63(v79, v19);
      v63(v33, v19);
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      v65 = v83;
      (*(v20 + 16))(v83, v58, v19);
      v39 = v65;
      v38 = 0;
      return (*(v20 + 56))(v39, v38, 1, v19);
    }

    goto LABEL_19;
  }

  sub_10000CAAC(v14, &unk_101A1B880, &unk_10147AB00);
  v19 = v81;
  v20 = v82;
LABEL_8:
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlDefault;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v37, "Unable to make cache a preview item from backing asset because the asset is missing", 83, 2, _swiftEmptyArrayStorage);
LABEL_11:
  v38 = 1;
  v39 = v83;
  return (*(v20 + 56))(v39, v38, 1, v19);
}

uint64_t sub_101258868@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v83 = a3;
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v76[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v79 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v80 = &v76[-v11];
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = &v76[-v13];
  v15 = type metadata accessor for CRLAssetData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = v3;
  type metadata accessor for CRLUSDZItem(0);
  sub_100802624(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_1006008F0(v14, v18);
    v21 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v23 = *(v22 + 16);
    v24 = v21;
    os_unfair_lock_lock(v23);
    v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    v27 = v18;
    if (v26)
    {
      v28 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v30 = v24;
      v31 = sub_10001F1A0(v30);

      v32 = *&v24[v25];
      *&v24[v25] = v31;
      v28 = v31;

      v26 = 0;
    }

    v33 = v80;
    v19 = v81;
    v34 = *(v22 + 16);
    v35 = v26;
    os_unfair_lock_unlock(v34);
    sub_10108CAF4(v18, 0, 3, 0, 0, v6);

    v20 = v82;
    if ((*(v82 + 48))(v6, 1, v19) == 1)
    {
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
      goto LABEL_8;
    }

    (*(v20 + 32))(v33, v6, v19);
    URL.deletingLastPathComponent()();
    if (v77)
    {
      v41 = objc_opt_self();
      v42 = [v41 defaultManager];
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      v46 = [v42 crl_directoryExistsAt:v44];

      if ((v46 & 1) == 0)
      {
        v47 = [v41 defaultManager];
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        v84 = 0;
        v51 = [v47 createDirectoryAtURL:v49 withIntermediateDirectories:0 attributes:0 error:&v84];

        v52 = v84;
        if ((v51 & 1) == 0)
        {
LABEL_19:
          v66 = v79;
          v81 = v27;
          v67 = v52;
          v68 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v69 = *(v20 + 8);
          v69(v66, v19);
          if (qword_1019F2098 != -1)
          {
            swift_once();
          }

          v70 = static OS_os_log.crlDefault;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v84 = v68;
          swift_errorRetain();
          sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
          v72 = String.init<A>(describing:)();
          v74 = v73;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v72;
          *(inited + 40) = v74;
          v75 = static os_log_type_t.error.getter();
          sub_100005404(v70, &_mh_execute_header, v75, "Unable to copy asset to a temp location: %@. ", 47, 2, inited);

          swift_setDeallocating();
          sub_100005070((inited + 32));
          v69(v80, v19);
          sub_10061A168(v81, type metadata accessor for CRLAssetData);
          goto LABEL_11;
        }

        v53 = v84;
      }
    }

    v54 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    v58 = v78;
    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    v84 = 0;
    v62 = [v54 copyItemAtURL:v57 toURL:v60 error:&v84];

    v52 = v84;
    if (v62)
    {
      v63 = *(v20 + 8);
      v64 = v84;
      v63(v79, v19);
      v63(v33, v19);
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      v65 = v83;
      (*(v20 + 16))(v83, v58, v19);
      v39 = v65;
      v38 = 0;
      return (*(v20 + 56))(v39, v38, 1, v19);
    }

    goto LABEL_19;
  }

  sub_10000CAAC(v14, &unk_101A1B880, &unk_10147AB00);
  v19 = v81;
  v20 = v82;
LABEL_8:
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlDefault;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v37, "Unable to make cache a preview item from backing asset because the asset is missing", 83, 2, _swiftEmptyArrayStorage);
LABEL_11:
  v38 = 1;
  v39 = v83;
  return (*(v20 + 56))(v39, v38, 1, v19);
}

uint64_t sub_101259020@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v83 = a3;
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v76[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v79 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v80 = &v76[-v11];
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = &v76[-v13];
  v15 = type metadata accessor for CRLAssetData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = v3;
  type metadata accessor for CRLMovieItem(0);
  sub_100D9CEE0(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_1006008F0(v14, v18);
    v21 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v23 = *(v22 + 16);
    v24 = v21;
    os_unfair_lock_lock(v23);
    v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    v27 = v18;
    if (v26)
    {
      v28 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v30 = v24;
      v31 = sub_10001F1A0(v30);

      v32 = *&v24[v25];
      *&v24[v25] = v31;
      v28 = v31;

      v26 = 0;
    }

    v33 = v80;
    v19 = v81;
    v34 = *(v22 + 16);
    v35 = v26;
    os_unfair_lock_unlock(v34);
    sub_10108CAF4(v18, 0, 3, 0, 0, v6);

    v20 = v82;
    if ((*(v82 + 48))(v6, 1, v19) == 1)
    {
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
      goto LABEL_8;
    }

    (*(v20 + 32))(v33, v6, v19);
    URL.deletingLastPathComponent()();
    if (v77)
    {
      v41 = objc_opt_self();
      v42 = [v41 defaultManager];
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      v46 = [v42 crl_directoryExistsAt:v44];

      if ((v46 & 1) == 0)
      {
        v47 = [v41 defaultManager];
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        v84 = 0;
        v51 = [v47 createDirectoryAtURL:v49 withIntermediateDirectories:0 attributes:0 error:&v84];

        v52 = v84;
        if ((v51 & 1) == 0)
        {
LABEL_19:
          v66 = v79;
          v81 = v27;
          v67 = v52;
          v68 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v69 = *(v20 + 8);
          v69(v66, v19);
          if (qword_1019F2098 != -1)
          {
            swift_once();
          }

          v70 = static OS_os_log.crlDefault;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v84 = v68;
          swift_errorRetain();
          sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
          v72 = String.init<A>(describing:)();
          v74 = v73;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v72;
          *(inited + 40) = v74;
          v75 = static os_log_type_t.error.getter();
          sub_100005404(v70, &_mh_execute_header, v75, "Unable to copy asset to a temp location: %@. ", 47, 2, inited);

          swift_setDeallocating();
          sub_100005070((inited + 32));
          v69(v80, v19);
          sub_10061A168(v81, type metadata accessor for CRLAssetData);
          goto LABEL_11;
        }

        v53 = v84;
      }
    }

    v54 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    v58 = v78;
    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    v84 = 0;
    v62 = [v54 copyItemAtURL:v57 toURL:v60 error:&v84];

    v52 = v84;
    if (v62)
    {
      v63 = *(v20 + 8);
      v64 = v84;
      v63(v79, v19);
      v63(v33, v19);
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      v65 = v83;
      (*(v20 + 16))(v83, v58, v19);
      v39 = v65;
      v38 = 0;
      return (*(v20 + 56))(v39, v38, 1, v19);
    }

    goto LABEL_19;
  }

  sub_10000CAAC(v14, &unk_101A1B880, &unk_10147AB00);
  v19 = v81;
  v20 = v82;
LABEL_8:
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlDefault;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v37, "Unable to make cache a preview item from backing asset because the asset is missing", 83, 2, _swiftEmptyArrayStorage);
LABEL_11:
  v38 = 1;
  v39 = v83;
  return (*(v20 + 56))(v39, v38, 1, v19);
}

uint64_t sub_1012597D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v83 = a3;
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v76[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v79 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v80 = &v76[-v11];
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = &v76[-v13];
  v15 = type metadata accessor for CRLAssetData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = v3;
  type metadata accessor for CRLImageItem(0);
  sub_100BBECE4(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_1006008F0(v14, v18);
    v21 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v23 = *(v22 + 16);
    v24 = v21;
    os_unfair_lock_lock(v23);
    v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    v27 = v18;
    if (v26)
    {
      v28 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v30 = v24;
      v31 = sub_10001F1A0(v30);

      v32 = *&v24[v25];
      *&v24[v25] = v31;
      v28 = v31;

      v26 = 0;
    }

    v33 = v80;
    v19 = v81;
    v34 = *(v22 + 16);
    v35 = v26;
    os_unfair_lock_unlock(v34);
    sub_10108CAF4(v18, 0, 3, 0, 0, v6);

    v20 = v82;
    if ((*(v82 + 48))(v6, 1, v19) == 1)
    {
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
      goto LABEL_8;
    }

    (*(v20 + 32))(v33, v6, v19);
    URL.deletingLastPathComponent()();
    if (v77)
    {
      v41 = objc_opt_self();
      v42 = [v41 defaultManager];
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      v46 = [v42 crl_directoryExistsAt:v44];

      if ((v46 & 1) == 0)
      {
        v47 = [v41 defaultManager];
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        v84 = 0;
        v51 = [v47 createDirectoryAtURL:v49 withIntermediateDirectories:0 attributes:0 error:&v84];

        v52 = v84;
        if ((v51 & 1) == 0)
        {
LABEL_19:
          v66 = v79;
          v81 = v27;
          v67 = v52;
          v68 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v69 = *(v20 + 8);
          v69(v66, v19);
          if (qword_1019F2098 != -1)
          {
            swift_once();
          }

          v70 = static OS_os_log.crlDefault;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v84 = v68;
          swift_errorRetain();
          sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
          v72 = String.init<A>(describing:)();
          v74 = v73;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v72;
          *(inited + 40) = v74;
          v75 = static os_log_type_t.error.getter();
          sub_100005404(v70, &_mh_execute_header, v75, "Unable to copy asset to a temp location: %@. ", 47, 2, inited);

          swift_setDeallocating();
          sub_100005070((inited + 32));
          v69(v80, v19);
          sub_10061A168(v81, type metadata accessor for CRLAssetData);
          goto LABEL_11;
        }

        v53 = v84;
      }
    }

    v54 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    v58 = v78;
    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    v84 = 0;
    v62 = [v54 copyItemAtURL:v57 toURL:v60 error:&v84];

    v52 = v84;
    if (v62)
    {
      v63 = *(v20 + 8);
      v64 = v84;
      v63(v79, v19);
      v63(v33, v19);
      sub_10061A168(v27, type metadata accessor for CRLAssetData);
      v65 = v83;
      (*(v20 + 16))(v83, v58, v19);
      v39 = v65;
      v38 = 0;
      return (*(v20 + 56))(v39, v38, 1, v19);
    }

    goto LABEL_19;
  }

  sub_10000CAAC(v14, &unk_101A1B880, &unk_10147AB00);
  v19 = v81;
  v20 = v82;
LABEL_8:
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlDefault;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v37, "Unable to make cache a preview item from backing asset because the asset is missing", 83, 2, _swiftEmptyArrayStorage);
LABEL_11:
  v38 = 1;
  v39 = v83;
  return (*(v20 + 56))(v39, v38, 1, v19);
}

void *sub_101259F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v5 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = &v72 - v17;
  __chkstk_darwin(v18);
  v82 = &v72 - v19;
  v84 = v3;
  v87 = v3;
  v20 = objc_allocWithZone(CRLTemporaryDirectory);
  v86 = 0;
  v21 = [v20 initWithError:&v86];
  v22 = v86;
  v80 = v21;
  if (v21)
  {
    v85 = v21;
  }

  else
  {
    v23 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v85 = 0;
  }

  v83 = v14;
  v24 = *(v14 + 56);
  v24(a1, 1, 1, v13);
  type metadata accessor for CRLFileItem(0);
  sub_100BEFB3C(v7);
  v25 = type metadata accessor for CRLAssetData(0);
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_10000CAAC(v7, &unk_101A1B880, &unk_10147AB00);
    v24(v12, 1, 1, v13);
    v26 = v85;
LABEL_10:
    sub_10000CAAC(v12, &unk_1019F33C0, &unk_101468A60);
    return v26;
  }

  v27 = *(v84 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v28 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v29 = *(v28 + 16);
  v30 = v27;
  os_unfair_lock_lock(v29);
  v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v32 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v32)
  {
    v33 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v34 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v35 = v30;
    v36 = sub_10001F1A0(v35);

    v37 = *&v30[v31];
    *&v30[v31] = v36;
    v33 = v36;

    v32 = 0;
  }

  v38 = *(v28 + 16);
  v39 = v32;
  os_unfair_lock_unlock(v38);
  sub_10108CAF4(v7, 0, 3, 0, 0, v12);

  sub_10061A168(v7, type metadata accessor for CRLAssetData);
  v40 = v83;
  v41 = (*(v83 + 48))(v12, 1, v13);
  v26 = v85;
  if (v41 == 1)
  {
    goto LABEL_10;
  }

  v43 = v82;
  (*(v40 + 32))(v82, v12, v13);
  if (v26)
  {
    v44 = v26;
    v45 = [v44 URL];
    v46 = v81;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.absoluteString.getter();
    v47 = *(v40 + 8);
    v47(v46, v13);
    v48 = String.count.getter();

    if (v48 < 1024)
    {
      v83 = a1;
      v49 = URL.pathExtension.getter();
      v74 = v44;
      v50 = [v44 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      v75 = v47;
      v47(v46, v13);
      v51 = String.count.getter();

      v52 = 1024 - v51;
      if (__OFSUB__(1024, v51))
      {
        __break(1u);
      }

      else
      {
        v53 = 255;
        if (v52 < 255)
        {
          v53 = 1024 - v51;
        }

        v73 = v53;
        v54 = String._bridgeToObjectiveC()();
        v55 = [v54 pathExtension];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {

          v60 = &selRef_setSizeClassParameters_;
        }

        else
        {
          v61 = String._bridgeToObjectiveC()();
          v62 = String._bridgeToObjectiveC()();

          v63 = [v61 stringByAppendingPathExtension:v62];

          v60 = &selRef_setSizeClassParameters_;
          if (v63)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
          }
        }

        v64 = String._bridgeToObjectiveC()();

        if ((v52 & 0x8000000000000000) == 0)
        {
          v65 = [v64 crl_filenameTruncatedToCharacterLimit:v73];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = [v74 v60[281]];
          v67 = v76;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v68 = v81;
          URL.appendingPathComponent(_:)();

          v69 = v75;
          v75(v67, v13);
          v70 = v77;
          sub_1012580B0(v68, 0, v77);

          v69(v68, v13);
          v69(v82, v13);
          v71 = v83;
          sub_10000CAAC(v83, &unk_1019F33C0, &unk_101468A60);
          sub_100044B68(v70, v71);
          return v26;
        }
      }

      __break(1u);
    }

    v47(v43, v13);
  }

  else
  {
    (*(v40 + 8))(v43, v13);
  }

  return v26;
}

void *sub_10125A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v5 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = &v72 - v17;
  __chkstk_darwin(v18);
  v82 = &v72 - v19;
  v84 = v3;
  v87 = v3;
  v20 = objc_allocWithZone(CRLTemporaryDirectory);
  v86 = 0;
  v21 = [v20 initWithError:&v86];
  v22 = v86;
  v80 = v21;
  if (v21)
  {
    v85 = v21;
  }

  else
  {
    v23 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v85 = 0;
  }

  v83 = v14;
  v24 = *(v14 + 56);
  v24(a1, 1, 1, v13);
  type metadata accessor for CRLUSDZItem(0);
  sub_100802624(v7);
  v25 = type metadata accessor for CRLAssetData(0);
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_10000CAAC(v7, &unk_101A1B880, &unk_10147AB00);
    v24(v12, 1, 1, v13);
    v26 = v85;
LABEL_10:
    sub_10000CAAC(v12, &unk_1019F33C0, &unk_101468A60);
    return v26;
  }

  v27 = *(v84 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v28 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v29 = *(v28 + 16);
  v30 = v27;
  os_unfair_lock_lock(v29);
  v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v32 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v32)
  {
    v33 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v34 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v35 = v30;
    v36 = sub_10001F1A0(v35);

    v37 = *&v30[v31];
    *&v30[v31] = v36;
    v33 = v36;

    v32 = 0;
  }

  v38 = *(v28 + 16);
  v39 = v32;
  os_unfair_lock_unlock(v38);
  sub_10108CAF4(v7, 0, 3, 0, 0, v12);

  sub_10061A168(v7, type metadata accessor for CRLAssetData);
  v40 = v83;
  v41 = (*(v83 + 48))(v12, 1, v13);
  v26 = v85;
  if (v41 == 1)
  {
    goto LABEL_10;
  }

  v43 = v82;
  (*(v40 + 32))(v82, v12, v13);
  if (v26)
  {
    v44 = v26;
    v45 = [v44 URL];
    v46 = v81;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.absoluteString.getter();
    v47 = *(v40 + 8);
    v47(v46, v13);
    v48 = String.count.getter();

    if (v48 < 1024)
    {
      v83 = a1;
      v49 = URL.pathExtension.getter();
      v74 = v44;
      v50 = [v44 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      v75 = v47;
      v47(v46, v13);
      v51 = String.count.getter();

      v52 = 1024 - v51;
      if (__OFSUB__(1024, v51))
      {
        __break(1u);
      }

      else
      {
        v53 = 255;
        if (v52 < 255)
        {
          v53 = 1024 - v51;
        }

        v73 = v53;
        v54 = String._bridgeToObjectiveC()();
        v55 = [v54 pathExtension];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {

          v60 = &selRef_setSizeClassParameters_;
        }

        else
        {
          v61 = String._bridgeToObjectiveC()();
          v62 = String._bridgeToObjectiveC()();

          v63 = [v61 stringByAppendingPathExtension:v62];

          v60 = &selRef_setSizeClassParameters_;
          if (v63)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
          }
        }

        v64 = String._bridgeToObjectiveC()();

        if ((v52 & 0x8000000000000000) == 0)
        {
          v65 = [v64 crl_filenameTruncatedToCharacterLimit:v73];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = [v74 v60[281]];
          v67 = v76;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v68 = v81;
          URL.appendingPathComponent(_:)();

          v69 = v75;
          v75(v67, v13);
          v70 = v77;
          sub_101258868(v68, 0, v77);

          v69(v68, v13);
          v69(v82, v13);
          v71 = v83;
          sub_10000CAAC(v83, &unk_1019F33C0, &unk_101468A60);
          sub_100044B68(v70, v71);
          return v26;
        }
      }

      __break(1u);
    }

    v47(v43, v13);
  }

  else
  {
    (*(v40 + 8))(v43, v13);
  }

  return v26;
}

void *sub_10125AF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v5 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = &v72 - v17;
  __chkstk_darwin(v18);
  v82 = &v72 - v19;
  v84 = v3;
  v87 = v3;
  v20 = objc_allocWithZone(CRLTemporaryDirectory);
  v86 = 0;
  v21 = [v20 initWithError:&v86];
  v22 = v86;
  v80 = v21;
  if (v21)
  {
    v85 = v21;
  }

  else
  {
    v23 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v85 = 0;
  }

  v83 = v14;
  v24 = *(v14 + 56);
  v24(a1, 1, 1, v13);
  type metadata accessor for CRLMovieItem(0);
  sub_100D9CEE0(v7);
  v25 = type metadata accessor for CRLAssetData(0);
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_10000CAAC(v7, &unk_101A1B880, &unk_10147AB00);
    v24(v12, 1, 1, v13);
    v26 = v85;
LABEL_10:
    sub_10000CAAC(v12, &unk_1019F33C0, &unk_101468A60);
    return v26;
  }

  v27 = *(v84 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v28 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v29 = *(v28 + 16);
  v30 = v27;
  os_unfair_lock_lock(v29);
  v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v32 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v32)
  {
    v33 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v34 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v35 = v30;
    v36 = sub_10001F1A0(v35);

    v37 = *&v30[v31];
    *&v30[v31] = v36;
    v33 = v36;

    v32 = 0;
  }

  v38 = *(v28 + 16);
  v39 = v32;
  os_unfair_lock_unlock(v38);
  sub_10108CAF4(v7, 0, 3, 0, 0, v12);

  sub_10061A168(v7, type metadata accessor for CRLAssetData);
  v40 = v83;
  v41 = (*(v83 + 48))(v12, 1, v13);
  v26 = v85;
  if (v41 == 1)
  {
    goto LABEL_10;
  }

  v43 = v82;
  (*(v40 + 32))(v82, v12, v13);
  if (v26)
  {
    v44 = v26;
    v45 = [v44 URL];
    v46 = v81;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.absoluteString.getter();
    v47 = *(v40 + 8);
    v47(v46, v13);
    v48 = String.count.getter();

    if (v48 < 1024)
    {
      v83 = a1;
      v49 = URL.pathExtension.getter();
      v74 = v44;
      v50 = [v44 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      v75 = v47;
      v47(v46, v13);
      v51 = String.count.getter();

      v52 = 1024 - v51;
      if (__OFSUB__(1024, v51))
      {
        __break(1u);
      }

      else
      {
        v53 = 255;
        if (v52 < 255)
        {
          v53 = 1024 - v51;
        }

        v73 = v53;
        v54 = String._bridgeToObjectiveC()();
        v55 = [v54 pathExtension];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {

          v60 = &selRef_setSizeClassParameters_;
        }

        else
        {
          v61 = String._bridgeToObjectiveC()();
          v62 = String._bridgeToObjectiveC()();

          v63 = [v61 stringByAppendingPathExtension:v62];

          v60 = &selRef_setSizeClassParameters_;
          if (v63)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
          }
        }

        v64 = String._bridgeToObjectiveC()();

        if ((v52 & 0x8000000000000000) == 0)
        {
          v65 = [v64 crl_filenameTruncatedToCharacterLimit:v73];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = [v74 v60[281]];
          v67 = v76;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v68 = v81;
          URL.appendingPathComponent(_:)();

          v69 = v75;
          v75(v67, v13);
          v70 = v77;
          sub_101259020(v68, 0, v77);

          v69(v68, v13);
          v69(v82, v13);
          v71 = v83;
          sub_10000CAAC(v83, &unk_1019F33C0, &unk_101468A60);
          sub_100044B68(v70, v71);
          return v26;
        }
      }

      __break(1u);
    }

    v47(v43, v13);
  }

  else
  {
    (*(v40 + 8))(v43, v13);
  }

  return v26;
}

void *sub_10125B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v5 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = &v72 - v17;
  __chkstk_darwin(v18);
  v82 = &v72 - v19;
  v84 = v3;
  v87 = v3;
  v20 = objc_allocWithZone(CRLTemporaryDirectory);
  v86 = 0;
  v21 = [v20 initWithError:&v86];
  v22 = v86;
  v80 = v21;
  if (v21)
  {
    v85 = v21;
  }

  else
  {
    v23 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v85 = 0;
  }

  v83 = v14;
  v24 = *(v14 + 56);
  v24(a1, 1, 1, v13);
  type metadata accessor for CRLImageItem(0);
  sub_100BBECE4(v7);
  v25 = type metadata accessor for CRLAssetData(0);
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_10000CAAC(v7, &unk_101A1B880, &unk_10147AB00);
    v24(v12, 1, 1, v13);
    v26 = v85;
LABEL_10:
    sub_10000CAAC(v12, &unk_1019F33C0, &unk_101468A60);
    return v26;
  }

  v27 = *(v84 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v28 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v29 = *(v28 + 16);
  v30 = v27;
  os_unfair_lock_lock(v29);
  v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v32 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v32)
  {
    v33 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v34 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v35 = v30;
    v36 = sub_10001F1A0(v35);

    v37 = *&v30[v31];
    *&v30[v31] = v36;
    v33 = v36;

    v32 = 0;
  }

  v38 = *(v28 + 16);
  v39 = v32;
  os_unfair_lock_unlock(v38);
  sub_10108CAF4(v7, 0, 3, 0, 0, v12);

  sub_10061A168(v7, type metadata accessor for CRLAssetData);
  v40 = v83;
  v41 = (*(v83 + 48))(v12, 1, v13);
  v26 = v85;
  if (v41 == 1)
  {
    goto LABEL_10;
  }

  v43 = v82;
  (*(v40 + 32))(v82, v12, v13);
  if (v26)
  {
    v44 = v26;
    v45 = [v44 URL];
    v46 = v81;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.absoluteString.getter();
    v47 = *(v40 + 8);
    v47(v46, v13);
    v48 = String.count.getter();

    if (v48 < 1024)
    {
      v83 = a1;
      v49 = URL.pathExtension.getter();
      v74 = v44;
      v50 = [v44 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      v75 = v47;
      v47(v46, v13);
      v51 = String.count.getter();

      v52 = 1024 - v51;
      if (__OFSUB__(1024, v51))
      {
        __break(1u);
      }

      else
      {
        v53 = 255;
        if (v52 < 255)
        {
          v53 = 1024 - v51;
        }

        v73 = v53;
        v54 = String._bridgeToObjectiveC()();
        v55 = [v54 pathExtension];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {

          v60 = &selRef_setSizeClassParameters_;
        }

        else
        {
          v61 = String._bridgeToObjectiveC()();
          v62 = String._bridgeToObjectiveC()();

          v63 = [v61 stringByAppendingPathExtension:v62];

          v60 = &selRef_setSizeClassParameters_;
          if (v63)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
          }
        }

        v64 = String._bridgeToObjectiveC()();

        if ((v52 & 0x8000000000000000) == 0)
        {
          v65 = [v64 crl_filenameTruncatedToCharacterLimit:v73];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = [v74 v60[281]];
          v67 = v76;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v68 = v81;
          URL.appendingPathComponent(_:)();

          v69 = v75;
          v75(v67, v13);
          v70 = v77;
          sub_1012597D8(v68, 0, v77);

          v69(v68, v13);
          v69(v82, v13);
          v71 = v83;
          sub_10000CAAC(v83, &unk_1019F33C0, &unk_101468A60);
          sub_100044B68(v70, v71);
          return v26;
        }
      }

      __break(1u);
    }

    v47(v43, v13);
  }

  else
  {
    (*(v40 + 8))(v43, v13);
  }

  return v26;
}

void sub_10125BF90()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v3 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 crl_errorWithDomain:v2 code:53277 alertTitle:v8 alertMessage:v13];

  v19 = _convertErrorToNSError(_:)();
  v15 = [v0 interactiveCanvasController];
  if (v15)
  {
    v16 = v15;
    v17 = v19;
    v18 = _convertErrorToNSError(_:)();

    [v16 presentError:v18 completionHandler:0];
  }
}

void sub_10125C220()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v3 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 crl_errorWithDomain:v2 code:53277 alertTitle:v8 alertMessage:v13];

  v19 = _convertErrorToNSError(_:)();
  v15 = [v0 interactiveCanvasController];
  if (v15)
  {
    v16 = v15;
    v17 = v19;
    v18 = _convertErrorToNSError(_:)();

    [v16 presentError:v18 completionHandler:0];
  }
}

void sub_10125C4B4()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v3 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 crl_errorWithDomain:v2 code:53277 alertTitle:v8 alertMessage:v13];

  v19 = _convertErrorToNSError(_:)();
  v15 = [v0 interactiveCanvasController];
  if (v15)
  {
    v16 = v15;
    v17 = v19;
    v18 = _convertErrorToNSError(_:)();

    [v16 presentError:v18 completionHandler:0];
  }
}

void sub_10125C744()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v3 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 crl_errorWithDomain:v2 code:53277 alertTitle:v8 alertMessage:v13];

  v19 = _convertErrorToNSError(_:)();
  v15 = [v0 interactiveCanvasController];
  if (v15)
  {
    v16 = v15;
    v17 = v19;
    v18 = _convertErrorToNSError(_:)();

    [v16 presentError:v18 completionHandler:0];
  }
}

void sub_10125C9D4()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v3 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 crl_errorWithDomain:v2 code:53277 alertTitle:v8 alertMessage:v13];

  v19 = _convertErrorToNSError(_:)();
  v15 = [v0 interactiveCanvasController];
  if (v15)
  {
    v16 = v15;
    v17 = v19;
    v18 = _convertErrorToNSError(_:)();

    [v16 presentError:v18 completionHandler:0];
  }
}

void sub_10125CCF4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  objc_allocWithZone(a1(0));
  v7 = v4;
  v8 = a2();
  v9 = objc_allocWithZone(type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController());
  v10 = sub_10125E4AC(v8, v9);
  v11 = [v7 interactiveCanvasController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 layerHost];

    if (v13)
    {
      if ([v13 respondsToSelector:"asiOSCVC"])
      {
        v14 = [v13 asiOSCVC];
        swift_unknownObjectRelease();
        v49 = v14;
        v15 = [v49 presentedViewController];
        if (v15)
        {
          v16 = v15;
          [v15 dismissViewControllerAnimated:1 completion:0];
        }

        v17 = [v49 view];

        if (v17)
        {
          [v7 layerFrameInScaledCanvas];
          v22 = [objc_allocWithZone(UIView) initWithFrame:{v18, v19, v20, v21}];
          [v17 addSubview:v22];

          v23 = *&v10[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView];
          *&v10[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView] = v22;

          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v25 = &v10[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_onDismiss];
          *v25 = a4;
          *(v25 + 1) = v24;

          [v49 presentViewController:v10 animated:1 completion:0];
        }

        else
        {
          __break(1u);
        }

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  v26 = objc_opt_self();
  v27 = [v26 _atomicIncrementAssertCount];
  v50 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v50, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("showQLPreview()", 15, 2);
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/BoardItemPreview/CRLPreviewableCanvasRep.swift", 116, 2);
  v29 = String._bridgeToObjectiveC()();

  v30 = [v29 lastPathComponent];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v27;
  v36 = sub_1005CF000();
  *(inited + 96) = v36;
  v37 = sub_1005CF04C();
  *(inited + 104) = v37;
  *(inited + 72) = v28;
  *(inited + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 112) = v31;
  *(inited + 120) = v33;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v38;
  *(inited + 152) = 86;
  v39 = v50;
  *(inited + 216) = v36;
  *(inited + 224) = v37;
  *(inited + 192) = v39;
  v40 = v28;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter("showQLPreview()", 15, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/BoardItemPreview/CRLPreviewableCanvasRep.swift", 116, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v48 = String._bridgeToObjectiveC()();

  [v26 handleFailureInFunction:v46 file:v47 lineNumber:86 isFatal:0 format:v48 args:v45];
}

void sub_10125D32C()
{
  v1 = objc_allocWithZone(type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController());
  v2 = v0;
  v3 = sub_10125E4AC(v2, v1);
  v4 = [v2 interactiveCanvasController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layerHost];

    if (v6)
    {
      if ([v6 respondsToSelector:"asiOSCVC"])
      {
        v7 = [v6 asiOSCVC];
        swift_unknownObjectRelease();
        v42 = v7;
        v8 = [v42 presentedViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }

        v10 = [v42 view];

        if (v10)
        {
          [v2 layerFrameInScaledCanvas];
          v15 = [objc_allocWithZone(UIView) initWithFrame:{v11, v12, v13, v14}];
          [v10 addSubview:v15];

          v16 = *&v3[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView];
          *&v3[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView] = v15;

          v17 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v18 = &v3[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_onDismiss];
          *v18 = sub_10125E5DC;
          v18[1] = v17;

          [v42 presentViewController:v3 animated:1 completion:0];
        }

        else
        {
          __break(1u);
        }

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  v19 = objc_opt_self();
  v20 = [v19 _atomicIncrementAssertCount];
  v43 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v43, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("showQLPreview()", 15, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/BoardItemPreview/CRLPreviewableCanvasRep.swift", 116, 2);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 lastPathComponent];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v20;
  v29 = sub_1005CF000();
  *(inited + 96) = v29;
  v30 = sub_1005CF04C();
  *(inited + 104) = v30;
  *(inited + 72) = v21;
  *(inited + 136) = &type metadata for String;
  v31 = sub_1000053B0();
  *(inited + 112) = v24;
  *(inited + 120) = v26;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v31;
  *(inited + 152) = 86;
  v32 = v43;
  *(inited + 216) = v29;
  *(inited + 224) = v30;
  *(inited + 192) = v32;
  v33 = v21;
  v34 = v32;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v37 = swift_allocObject();
  v37[2] = 8;
  v37[3] = 0;
  v37[4] = 0;
  v37[5] = 0;
  v38 = __VaListBuilder.va_list()();
  StaticString.description.getter("showQLPreview()", 15, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/BoardItemPreview/CRLPreviewableCanvasRep.swift", 116, 2);
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v41 = String._bridgeToObjectiveC()();

  [v19 handleFailureInFunction:v39 file:v40 lineNumber:86 isFatal:0 format:v41 args:v38];
}

void sub_10125D944(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong interactiveCanvasController];

    [v3 didExitPreviewMode];
  }
}

uint64_t sub_10125DB30()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 info];
  type metadata accessor for CRLUSDZItem(0);
  result = swift_dynamicCastClassUnconditional();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00, qword_101485680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    swift_unknownObjectRelease();
    sub_1008786E0(v3, v7);
    sub_10061A168(v3, type metadata accessor for CRLUSDZAssetDataStruct);
    v10 = *&v7[*(v4 + 20)];

    sub_10061A168(v7, type metadata accessor for CRLAssetData);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10125E08C(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtC8Freeform21CRLUSDZRepPlaceholder_previewItemURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = &v2[OBJC_IVAR____TtC8Freeform21CRLUSDZRepPlaceholder_previewItemTitle];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLUSDZRepPlaceholder_usdzRep] = a1;
  v10 = a1;
  *v9 = sub_10125DB30();
  v9[1] = v11;

  v12 = [v10 info];
  type metadata accessor for CRLUSDZItem(0);
  swift_dynamicCastClassUnconditional();
  if (v9[1])
  {
    v13 = *v9;
    v14 = v9[1];
  }

  else
  {
    v14 = 0xE400000000000000;
    v13 = 2053403509;
  }

  v15 = sub_10125A790(v6, v13, v14);
  swift_unknownObjectRelease();

  swift_beginAccess();
  sub_10067DE0C(v6, &v2[v7]);
  swift_endAccess();
  v16 = type metadata accessor for CRLUSDZRepPlaceholder(0);
  v22.receiver = v2;
  v22.super_class = v16;
  v17 = objc_msgSendSuper2(&v22, "init");
  v18 = v17;
  if (v15)
  {
    [v15 setAssociatedLifetimeObject:v10];

    sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
  }

  else
  {
    v19 = v17;
    sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
  }

  return v18;
}

id sub_10125E308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZRepPlaceholder(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLUSDZRepPlaceholder(uint64_t a1)
{
  result = qword_101A2EEE8;
  if (!qword_101A2EEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10125E404(uint64_t a1)
{
  sub_10084E720(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_10125E4AC(uint64_t a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewItem] = 0;
  a2[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_shouldSaveMarkedUpItem] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_itemProvider] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView] = 0;
  v3 = &a2[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_onDismiss];
  *v3 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v3[1] = 0;
  v6.receiver = a2;
  v6.super_class = type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  [v4 setDelegate:v4];
  [v4 setDataSource:v4];
  [v4 setModalPresentationStyle:0];
  *&v4[OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewItem] = a1;

  swift_unknownObjectRelease();
  return v4;
}

uint64_t type metadata accessor for CRLRealTimeMessengerConfiguration(uint64_t a1)
{
  result = qword_101A2EF68;
  if (!qword_101A2EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10125E654(uint64_t a1)
{
  result = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DispatchTimeInterval();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10125E6F0()
{
  *(v1 + 352) = v0;
  v2 = swift_task_alloc();
  *(v1 + 360) = v2;
  *v2 = v1;
  v2[1] = sub_10125E788;

  return sub_10125EDB8(v1 + 16);
}

uint64_t sub_10125E788()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v3[46] = v0;
  v13 = *(v3 + 1);
  v14 = *(v3 + 2);
  v5 = v2[6];
  v6 = v2[7];
  v7 = *(v3 + 64);
  v12 = *(v3 + 9);
  v8 = v2[11];
  v9 = v2[12];
  v3[47] = v9;

  if (v0)
  {
    v10 = v4[1];

    return v10();
  }

  else
  {
    *(v3 + 13) = v13;
    *(v3 + 15) = v14;
    v3[17] = v5;
    v3[18] = v6;
    *(v3 + 152) = v7;
    *(v3 + 10) = v12;
    v3[22] = v8;
    v3[23] = v9;

    return _swift_task_switch(sub_10125E96C, 0, 0);
  }
}

__objc2_class *sub_10125E96C()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v3);
  if ((v8 & 0x10000) == 0)
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 376);
    v11 = *(v0 + 352);
    sub_101263318(v0 + 104);
    type metadata accessor for CRLBoardItemData();
    v12 = swift_dynamicCastClassUnconditional();
    v13 = *(v11 + 32);
    swift_unknownObjectRetain();
    v14 = sub_100B6D698(v12, v13);
    swift_unknownObjectRelease();
    type metadata accessor for CRLBoardItemBase(0);
    v15 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v16 = *(v10 + 32);
    v17 = v14;

    sub_1012607C4(v15, v16);
    if (!v9)
    {
      v18 = &off_10188FDF0;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v6 | v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v8 == 0;
  }

  if (!v19)
  {
    sub_101263318(v0 + 104);
    result = object_getClass(v2);
    if (result != _TtC8Freeform23CRLPasteboardObjectData)
    {
      __break(1u);
      return result;
    }

    v21 = *(v0 + 368);
    v22 = *(v0 + 376);
    v23 = *(*(v0 + 352) + 40);
    v24 = type metadata accessor for CRLPasteboardObject();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject__boardItems] = 0;
    *&v25[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData] = v2;
    *&v25[OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_context] = v23;
    *(v0 + 336) = v25;
    *(v0 + 344) = v24;
    swift_unknownObjectRetain();
    v26 = v23;
    v27 = objc_msgSendSuper2((v0 + 336), "init");
    v28 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v29 = *(v22 + 32);
    v17 = v27;

    sub_10126146C(v28, v29);
    if (!v21)
    {
      v18 = &off_10188A428;
      goto LABEL_19;
    }

LABEL_14:

    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v30 = *(v0 + 368);
  v31 = *(v0 + 352);
  v32 = *(v0 + 120);
  v33 = *(v0 + 152);
  *(v0 + 224) = *(v0 + 136);
  *(v0 + 240) = v33;
  *(v0 + 256) = *(v0 + 168);
  *(v0 + 192) = *(v0 + 104);
  *(v0 + 208) = v32;
  type metadata accessor for CRLBoardData(0);
  v34 = swift_dynamicCastClassUnconditional();
  v35 = *(v31 + 32);
  swift_unknownObjectRetain();
  v36 = sub_100B6E41C(v0 + 192, v34, v35);
  v37 = *(v0 + 376);
  if (!v30)
  {
    v38 = v36;
    swift_unknownObjectRelease();
    sub_101263318(v0 + 104);
    type metadata accessor for CRLBoard(0);
    v39 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v40 = *(v37 + 32);
    v17 = v38;

    sub_1012609D0(v39, v40);
    v18 = &off_1018A7590;
LABEL_19:
    swift_unknownObjectRelease();

    v42 = *(v0 + 8);

    return v42(v17, v18);
  }

  swift_unknownObjectRelease();
  sub_101263318(v0 + 104);
  swift_unknownObjectRelease();
LABEL_15:
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10125ED78()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10125EDB8(uint64_t a1)
{
  v2[101] = v1;
  v2[100] = a1;
  v3 = type metadata accessor for UUID();
  v2[102] = v3;
  v2[103] = *(v3 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = type metadata accessor for CRLBoardCRDTData(0);
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();

  return _swift_task_switch(sub_10125EEC4, 0, 0);
}

uint64_t sub_10125EEC4()
{
  v1 = *(*(v0 + 808) + 16);

  v2 = swift_task_alloc();
  *(v0 + 872) = v2;
  *v2 = v0;
  v2[1] = sub_10125EF70;

  return sub_10126336C(v0 + 424, v1);
}

uint64_t sub_10125EF70()
{
  v2 = *v1;
  *(v2 + 880) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    *(v2 + 888) = *(v2 + 424);
    v5 = *(v2 + 448);
    *(v2 + 896) = *(v2 + 432);
    *(v2 + 912) = v5;
    *(v2 + 928) = *(v2 + 464);
    *(v2 + 1068) = *(v2 + 472);
    *(v2 + 936) = *(v2 + 480);
    *(v2 + 952) = *(v2 + 496);

    return _swift_task_switch(sub_10125F110, 0, 0);
  }
}

uint64_t sub_10125F110()
{
  v119 = v0;
  v1 = (v0 + 504);
  v2 = *(v0 + 472);
  *(v0 + 536) = *(v0 + 456);
  *(v0 + 552) = v2;
  *(v0 + 568) = *(v0 + 488);
  v3 = *(v0 + 440);
  *(v0 + 504) = *(v0 + 424);
  *(v0 + 520) = v3;
  v4 = sub_100A0557C(*(v0 + 536), *(v0 + 544), *(v0 + 552));
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = v6;
  if ((v6 & 0x10000) == 0)
  {
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v11 = *v1;
    if (sub_1002BC910(*v1))
    {
      goto LABEL_9;
    }

    if ((v9 & 0x10000) == 0)
    {
LABEL_11:
      v13 = *(v0 + 880);
      v14 = sub_100B6E0C0((v0 + 504));
      if (!v13)
      {
        v107 = v0 + 424;
        v15 = &off_101884FE0;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v7 | v8)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v4 | v5 || v6)
  {
    goto LABEL_8;
  }

  v11 = *v1;
  if (!sub_1002BC910(*v1))
  {
LABEL_14:
    if (!v10)
    {
      v16 = *(v0 + 560);
      if (!*(v16 + 16) || (v17 = sub_1007C8330(0), (v18 & 1) == 0))
      {
        sub_1006B305C();
        swift_allocError();
        *v25 = 10;
        swift_willThrow();
        v24 = v0 + 424;
        goto LABEL_69;
      }

      v19 = *(v0 + 880);
      v20 = (*(v16 + 56) + 16 * v17);
      v21 = *v20;
      v22 = v20[1];
      sub_100024E98(*v20, v22);
      sub_100024E98(v21, v22);
      sub_101265B9C(&unk_101A22E10, 255, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);
      CRDT.init(serializedData:)();
      if (v19)
      {
        sub_10002640C(v21, v22);
LABEL_20:
        v24 = v0 + 424;
LABEL_69:
        sub_101263318(v24);
        goto LABEL_70;
      }

      v107 = v0 + 424;
      v26 = *(v0 + 864);
      v27 = *(v0 + 856);
      v28 = *(v0 + 512);
      v29 = *(v0 + 520);
      sub_1000500D4(v26, v27, type metadata accessor for CRLBoardCRDTData);
      sub_10002640C(v21, v22);
      type metadata accessor for CRLBoardData(0);
      v30 = swift_allocObject();
      sub_10003D8DC(v26, type metadata accessor for CRLBoardCRDTData);
      *(v30 + 16) = 7;
      *(v30 + 24) = v11;
      *(v30 + 32) = v28;
      *(v30 + 40) = v29;
      *(v30 + 48) = 0;
      *(v30 + 56) = 1;
      sub_101265C38(v27, v30 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
      v14 = v30;
      v31 = (v30 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v31 = 0;
      v31[1] = 0xE000000000000000;
      v15 = &off_1018BC218;
LABEL_24:
      *(v0 + 968) = v15;
      *(v0 + 960) = v14;
      v32 = *(v0 + 840);
      v115 = *(v0 + 824);
      v111 = *(v0 + 816);
      v33 = v14;
      type metadata accessor for CRLSerializableObjectReader.ReadObjectDataResult();
      v34 = swift_allocObject();
      *(v0 + 976) = v34;
      v34[3] = v15;
      v34[4] = _swiftEmptyArrayStorage;
      v34[2] = v33;
      *(v0 + 984) = swift_getObjectType();
      v35 = v15[5];
      v109 = v35;
      swift_unknownObjectRetain_n();

      v35();
      swift_unknownObjectRelease();
      swift_beginAccess();
      v113 = sub_1008BC70C(v34, v32);
      *(v0 + 992) = v113;
      swift_endAccess();
      v36 = *(v115 + 8);
      *(v0 + 1000) = v36;
      *(v0 + 1008) = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37 = v111;
      v36(v32, v111);
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v109();
      v39 = inited;
      swift_unknownObjectRelease();
      sub_101265B9C(&qword_101A02180, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = v32;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v36(v32, v111);
      *(inited + 56) = &type metadata for String;
      v44 = sub_1000053B0();
      *(inited + 32) = v41;
      v45 = inited + 32;
      *(inited + 64) = v44;
      *(inited + 40) = v43;
      if (!v113)
      {
        goto LABEL_52;
      }

      v40 = v44;
      v113 = objc_opt_self();
      LODWORD(v43) = [v113 _atomicIncrementAssertCount];
      v118 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v118, "Object UUID has already been added to the set: %@", 49, 2u);
      StaticString.description.getter("readNextObjectData()", 20, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectReader.swift", 99, 2);
      v46 = String._bridgeToObjectiveC()();

      v47 = [v46 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_80;
      }

      while (1)
      {
        v116 = static OS_os_log.crlAssert;
        v50 = swift_initStackObject();
        *(v50 + 16) = xmmword_10146CA70;
        *(v50 + 56) = &type metadata for Int32;
        *(v50 + 64) = &protocol witness table for Int32;
        *(v50 + 32) = v43;
        v51 = sub_1005CF000();
        *(v50 + 96) = v51;
        v52 = sub_101265B9C(&qword_1019F52E0, 255, sub_1005CF000, &protocol conformance descriptor for NSObject);
        v53 = v37;
        *(v50 + 72) = v37;
        *(v50 + 136) = &type metadata for String;
        *(v50 + 144) = v40;
        *(v50 + 104) = v52;
        *(v50 + 112) = v41;
        *(v50 + 120) = v49;
        *(v50 + 176) = &type metadata for UInt;
        *(v50 + 184) = &protocol witness table for UInt;
        *(v50 + 152) = 100;
        v54 = v118;
        *(v50 + 216) = v51;
        *(v50 + 224) = v52;
        *(v50 + 192) = v54;
        v55 = v53;
        v56 = v54;
        v57 = static os_log_type_t.error.getter();
        v37 = v116;
        sub_100005404(v116, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v50);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v58 = static os_log_type_t.error.getter();
        sub_100005404(v116, &_mh_execute_header, v58, "Object UUID has already been added to the set: %@", 49, 2, v39);

        type metadata accessor for __VaListBuilder();
        v59 = swift_allocObject();
        v59[2] = 8;
        v59[3] = 0;
        v49 = v59 + 3;
        v59[4] = 0;
        v59[5] = 0;
        v43 = *(v39 + 16);
        if (v43)
        {
          break;
        }

LABEL_51:
        v40 = __VaListBuilder.va_list()();
        StaticString.description.getter("readNextObjectData()", 20, 2);
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectReader.swift", 99, 2);
        v75 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Object UUID has already been added to the set: %@", 49, 2);
        v39 = v76;
        v77 = String._bridgeToObjectiveC()();

        [v113 handleFailureInFunction:v41 file:v75 lineNumber:100 isFatal:0 format:v77 args:v40];

LABEL_52:

        v78 = *(v0 + 496);
        *(v0 + 1016) = v78;
        *(v0 + 792) = v78;
        v79 = *(v78 + 16);
        *(v0 + 1024) = v79;
        v49 = _swiftEmptyArrayStorage;
        if (!v79)
        {
LABEL_66:
          v97 = *(*(v0 + 808) + 24);
          if ((*(v97 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) & 1) != 0 || (v98 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap, swift_beginAccess(), *(*(v97 + v98) + 16)))
          {
            v99 = *(v0 + 984);
            v100 = *(v0 + 968);
            v101 = *(v100 + 48);
            swift_unknownObjectRetain();
            v101(v97, v99, v100);
            swift_unknownObjectRelease();
          }

          v114 = *(v0 + 952);
          v117 = *(v0 + 976);
          v103 = *(v0 + 1068);
          v104 = *(v0 + 928);
          v105 = *(v0 + 920);
          v106 = *(v0 + 800);
          v108 = *(v0 + 904);
          v110 = *(v0 + 888);
          v112 = *(v0 + 936);
          swift_unknownObjectRelease();

          *v106 = v110;
          *(v106 + 16) = v108;
          *(v106 + 32) = v105;
          *(v106 + 40) = v104;
          *(v106 + 48) = v103 & 1;
          *(v106 + 56) = v112;
          *(v106 + 72) = v114;
          *(v106 + 80) = v117;
          v102 = *(v0 + 8);
          goto LABEL_71;
        }

        *(v0 + 1064) = *(*(v0 + 824) + 80);

        v80 = 0;
        while (1)
        {
          *(v0 + 1032) = v80;
          v81 = *(v0 + 1016);
          if (v80 >= *(v81 + 16))
          {
            break;
          }

          v82 = *(v0 + 808);
          (*(*(v0 + 824) + 16))(*(v0 + 832), v81 + ((*(v0 + 1064) + 32) & ~*(v0 + 1064)) + *(*(v0 + 824) + 72) * v80, *(v0 + 816));
          swift_beginAccess();
          v83 = *(v82 + 56);
          if (!*(v83 + 16) || (v84 = sub_10003E994(*(v0 + 832)), (v85 & 1) == 0))
          {
            v92 = *(v0 + 1000);
            v93 = *(v0 + 832);
            v94 = *(v0 + 816);
            swift_endAccess();
            v92(v93, v94);
            v95 = swift_task_alloc();
            *(v0 + 1040) = v95;
            *v95 = v0;
            v95[1] = sub_10126005C;

            return sub_10125EDB8(v0 + 248);
          }

          v37 = *(v0 + 1008);
          v86 = *(v0 + 1000);
          v39 = *(v0 + 832);
          v87 = *(v0 + 816);
          v41 = *(*(v83 + 56) + 8 * v84);
          swift_endAccess();

          v86(v39, v87);
          v40 = v41[2];
          type metadata accessor for CRLBoardItemData();
          v88 = swift_dynamicCastClass();
          if (v88)
          {
            v39 = v88;
            v37 = *(v0 + 976);
            type metadata accessor for CRLBoardItemDatabaseResult();
            v89 = swift_allocObject();
            *(v89 + 24) = _swiftEmptyArrayStorage;
            v90 = (v89 + 24);
            *(v89 + 16) = v39;
            swift_unknownObjectRetain();
            swift_beginAccess();
            v91 = v41[4];
            swift_beginAccess();
            *v90 = v91;
            swift_beginAccess();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v37 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v37 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v37 = *((*(v37 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v40 = *(v0 + 976) + 32;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
          }

          v80 = *(v0 + 1032) + 1;
          if (v80 == *(v0 + 1024))
          {
            sub_10000CAAC(v0 + 792, &qword_101A0A360, qword_101489F20);
            goto LABEL_66;
          }
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
      }

      v39 = 0;
      v37 = 40;
      while (1)
      {
        v60 = (v45 + 40 * v39);
        v41 = v60[3];
        v40 = sub_100020E58(v60, v41);
        v61 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v62 = *v49;
        v63 = *(v61 + 16);
        v64 = __OFADD__(*v49, v63);
        v65 = *v49 + v63;
        if (v64)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v40 = v59[4];
        if (v40 >= v65)
        {
          goto LABEL_43;
        }

        if (v40 + 0x4000000000000000 < 0)
        {
          goto LABEL_78;
        }

        v41 = v59[5];
        if (2 * v40 > v65)
        {
          v65 = 2 * v40;
        }

        v59[4] = v65;
        if ((v65 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_79;
        }

        v66 = v45;
        v67 = v61;
        v68 = swift_slowAlloc();
        v69 = v68;
        v59[5] = v68;
        if (v41)
        {
          break;
        }

        v61 = v67;
        v45 = v66;
        v37 = 40;
        if (!v69)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_44:
        v71 = *(v61 + 16);
        if (v71)
        {
          v72 = (v61 + 32);
          v73 = *v49;
          while (1)
          {
            v74 = *v72++;
            v69[v73] = v74;
            v73 = *v49 + 1;
            if (__OFADD__(*v49, 1))
            {
              break;
            }

            *v49 = v73;
            if (!--v71)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_76;
        }

LABEL_28:

        if (++v39 == v43)
        {
          goto LABEL_51;
        }
      }

      if (v68 != v41 || v68 >= &v41[v62])
      {
        memmove(v68, v41, 8 * v62);
      }

      v40 = v59;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v61 = v67;
      v45 = v66;
      v37 = 40;
LABEL_43:
      v69 = v59[5];
      if (!v69)
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }

LABEL_19:
    v23 = *(v0 + 880);
    v14 = sub_100B6E310(v0 + 504, *(*(v0 + 808) + 40));
    if (v23)
    {
      goto LABEL_20;
    }

    v107 = v0 + 424;
    v15 = &off_10188A3F0;
    goto LABEL_24;
  }

LABEL_9:
  sub_101263318(v0 + 424);
  sub_1006B305C();
  swift_allocError();
  *v12 = 14;
  swift_willThrow();
LABEL_70:

  v102 = *(v0 + 8);
LABEL_71:

  return v102();
}

uint64_t sub_10126005C()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1048) = v0;
  v11 = *(v3 + 264);
  v12 = *(v3 + 248);
  v4 = *(v2 + 280);
  v5 = *(v2 + 288);
  v6 = *(v3 + 296);
  v9 = *(v3 + 320);
  v10 = *(v3 + 304);

  if (v0)
  {
    sub_10000CAAC(v3 + 792, &qword_101A0A360, qword_101489F20);
    sub_101263318(v3 + 424);
    v7 = sub_101260714;
  }

  else
  {
    *(v3 + 336) = v12;
    *(v3 + 352) = v11;
    *(v3 + 368) = v4;
    *(v3 + 376) = v5;
    *(v3 + 384) = v6;
    *(v3 + 392) = v10;
    *(v3 + 408) = v9;
    sub_101263318(v3 + 336);
    *(v3 + 1056) = *(v3 + 416);
    v7 = sub_101260218;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_101260218()
{
  v1 = *(v0 + 1056);
  type metadata accessor for CRLBoardItemData();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

    v4 = *(v0 + 1048);
    goto LABEL_8;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = *(v0 + 1048);
LABEL_4:
  v5 = *(v0 + 976);
  type metadata accessor for CRLBoardItemDatabaseResult();
  v6 = swift_allocObject();
  *(v6 + 24) = _swiftEmptyArrayStorage;
  v7 = (v6 + 24);
  *(v6 + 16) = v3;
  swift_beginAccess();
  v8 = *(v1 + 32);
  swift_beginAccess();
  *v7 = v8;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v5 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  while (1)
  {

LABEL_8:
    v9 = *(v0 + 1032) + 1;
    if (v9 == *(v0 + 1024))
    {
      break;
    }

    *(v0 + 1032) = v9;
    v10 = *(v0 + 1016);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
      return;
    }

    v11 = *(v0 + 808);
    (*(*(v0 + 824) + 16))(*(v0 + 832), v10 + ((*(v0 + 1064) + 32) & ~*(v0 + 1064)) + *(*(v0 + 824) + 72) * v9, *(v0 + 816));
    swift_beginAccess();
    v12 = *(v11 + 56);
    if (!*(v12 + 16) || (v13 = sub_10003E994(*(v0 + 832)), (v14 & 1) == 0))
    {
      v19 = *(v0 + 1000);
      v20 = *(v0 + 832);
      v21 = *(v0 + 816);
      swift_endAccess();
      v19(v20, v21);
      v22 = swift_task_alloc();
      *(v0 + 1040) = v22;
      *v22 = v0;
      v22[1] = sub_10126005C;

      sub_10125EDB8(v0 + 248);
      return;
    }

    v15 = *(v0 + 1000);
    v16 = *(v0 + 832);
    v17 = *(v0 + 816);
    v1 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();

    v15(v16, v17);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v3 = v18;
      swift_unknownObjectRetain();
      goto LABEL_4;
    }
  }

  sub_10000CAAC(v0 + 792, &qword_101A0A360, qword_101489F20);
  v23 = *(*(v0 + 808) + 24);
  if ((*(v23 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) & 1) == 0)
  {
    v24 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
    swift_beginAccess();
    if (!*(*(v23 + v24) + 16))
    {
      goto LABEL_22;
    }
  }

  v25 = *(v0 + 984);
  v26 = *(v0 + 968);
  v27 = *(v26 + 48);
  swift_unknownObjectRetain();
  v27(v23, v25, v26);
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v35 = *(v0 + 952);
    v36 = *(v0 + 976);
    v29 = *(v0 + 1068);
    v30 = *(v0 + 928);
    v31 = *(v0 + 920);
    v32 = *(v0 + 800);
    v33 = *(v0 + 904);
    v34 = *(v0 + 888);
    v37 = *(v0 + 936);
    swift_unknownObjectRelease();

    *v32 = v34;
    *(v32 + 16) = v33;
    *(v32 + 32) = v31;
    *(v32 + 40) = v30;
    *(v32 + 48) = v29 & 1;
    *(v32 + 56) = v37;
    *(v32 + 72) = v35;
    *(v32 + 80) = v36;
    v28 = *(v0 + 8);
    goto LABEL_23;
  }

  swift_unknownObjectRelease_n();

  sub_101263318(v0 + 424);

  v28 = *(v0 + 8);
LABEL_23:

  v28();
}

uint64_t sub_101260714()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1012607C4(unint64_t a1, unint64_t a2)
{
  type metadata accessor for CRLSerializableObjectReader.PartialTreeOwner();
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  strcpy((v5 + 24), "Partial Tree");
  *(v5 + 37) = 0;
  *(v5 + 38) = -5120;

  v7 = sub_100EDA5E4(v6);

  sub_1010F9A7C(a1, 2, v7);
  if (a2 >> 62)
  {
LABEL_16:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = a2 & 0xC000000000000001;
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      v18 = v8;
      do
      {
        if (v19)
        {
          v11 = a2;
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            goto LABEL_20;
          }
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v11 = a2;
          v12 = *(a2 + 8 * v9 + 32);

          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_13;
          }
        }

        v14 = v7;
        v15 = sub_1012625CC(v12, v7);
        if (v2)
        {
          goto LABEL_14;
        }

        v16 = v15;

        ++v9;
        v17 = v13 == v18;
        v7 = v14;
        a2 = v11;
      }

      while (!v17);
    }
  }

  (*(*v7 + 720))();
  if (!v2)
  {

    sub_1012627DC();
  }

LABEL_20:
}

void sub_1012609D0(char *a1, unint64_t a2)
{
  v82 = a2;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v80 = *(v7 - 8);
  v81 = v7;
  __chkstk_darwin(v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v71 - v11;
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 24);
  LOBYTE(v17) = *(v19 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs);
  v83 = v9;
  v84 = v12;
  v85 = v18;
  if ((v17 & 1) != 0 || (v20 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap, swift_beginAccess(), *(*(v19 + v20) + 16)))
  {
    v21 = *(**(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 704);

    v22 = v86;
    v21(v19);

    if (v22)
    {
      return;
    }

    v23 = *(**(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 704);

    v23(v19);

    v86 = 0;
    v9 = v83;
    v12 = v84;
    v18 = v85;
  }

  v79 = a1;
  v77 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v24 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v25 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1000500D4(v24 + v25, v6, type metadata accessor for CRLBoardCRDTData);

  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D8DC(v6, type metadata accessor for CRLBoardCRDTData);
  v27 = *(v24 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v26 = *(v24 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  sub_10084BD4C(v15, v27, v26, v18);

  v29 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  v30 = (*(**(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v28);
  v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer;
  v32 = (*(**(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v30);
  v92 = _swiftEmptyArrayStorage;
  v91 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v71 - 4) = v12;
  *(&v71 - 3) = &v92;
  *(&v71 - 2) = v9;
  *(&v71 - 1) = &v91;
  v33 = v86;
  sub_1012E34D0(sub_101265B7C, (&v71 - 6), v82);
  v86 = v33;
  v72 = *&a1[v29];
  v74 = *(v72 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v34 = v74;
  type metadata accessor for CRLBoardItemDatabaseResult();
  v35 = swift_allocObject();
  v75 = v35;
  *(v35 + 24) = _swiftEmptyArrayStorage;
  v36 = (v35 + 24);
  *(v35 + 16) = v34;
  v37 = v92;
  v78 = v92;
  swift_beginAccess();
  *v36 = v37;
  v38 = *(*&a1[v31] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v73 = v38;
  v39 = swift_allocObject();
  v82 = v39;
  *(v39 + 24) = _swiftEmptyArrayStorage;
  v40 = (v39 + 24);
  *(v39 + 16) = v38;
  v41 = v91;
  swift_beginAccess();
  *v40 = v41;
  type metadata accessor for CRLBoardDatabaseFetchResult();
  inited = swift_initStackObject();
  v76 = inited;
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  v43 = (inited + 16);
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v44 = (inited + 24);
  *(inited + 32) = _swiftEmptyDictionarySingleton;
  v45 = (inited + 32);
  *(inited + 40) = _swiftEmptyDictionarySingleton;
  v71 = *&v79[v77];
  type metadata accessor for CRLContainerItemData(0);
  v77 = swift_dynamicCastClassUnconditional();
  v46 = swift_dynamicCastClassUnconditional();
  v47 = v79[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported];
  swift_beginAccess();

  v74 = v41;

  v48 = v71;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v43;
  v88[0] = v48;
  v88[1] = v77;
  v88[2] = v46;
  v88[3] = 0;
  v50 = v75;
  v89 = v47;
  v51 = v82;
  sub_100A9DAE0(v88, v85, isUniquelyReferenced_nonNull_native);
  v52 = v90;
  *v43 = v90;
  v53 = v85;
  swift_endAccess();
  swift_beginAccess();

  v54 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v44;
  sub_100A9D8A0(v50, v53, v54);
  v55 = v90;
  *v44 = v90;
  swift_endAccess();
  swift_beginAccess();

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v45;
  v57 = v51;
  v58 = v79;
  sub_100A9D8A0(v57, v53, v56);
  *v45 = v90;
  swift_endAccess();
  v59 = sub_100822664(v58, 1);
  v60 = v86;
  sub_100EBA548(v76, v59, 0, 2u);
  if (v60)
  {
    sub_10003D8DC(v53, type metadata accessor for CRLBoardIdentifier);

    v61 = v81;
    v62 = *(v80 + 8);
    v62(v83, v81);
    v62(v84, v61);
  }

  else
  {
    v76 = v55;
    v77 = v52;
    (*(*v59 + 720))();
    v86 = 0;

    [v58 fixUp];
    v63 = *&v58[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
    v64 = *(v63 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
    v65 = swift_allocObject();
    *(v65 + 16) = v59;
    *(v65 + 24) = v63;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_100798CD8;
    *(v66 + 24) = v65;
    v87[4] = sub_10002AAE4;
    v87[5] = v66;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = *"";
    v87[2] = sub_10002AAB8;
    v87[3] = &unk_1018B9980;
    v67 = _Block_copy(v87);

    dispatch_sync(v64, v67);
    _Block_release(v67);
    LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

    v68 = v85;
    if (v64)
    {
      __break(1u);
    }

    else
    {

      sub_10003D8DC(v68, type metadata accessor for CRLBoardIdentifier);

      v69 = v81;
      v70 = *(v80 + 8);
      v70(v83, v81);
      v70(v84, v69);
    }
  }
}

void sub_10126146C(uint64_t a1, unint64_t a2)
{
  isUniquelyReferenced_nonNull_native = v2;
  v33[0] = a1;
  v41 = type metadata accessor for UUID();
  v34 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLSerializableObjectReader.PartialTreeOwner();
  v6 = swift_allocObject();
  *(v6 + 2) = _swiftEmptyDictionarySingleton;
  strcpy(v6 + 24, "Partial Tree");
  v6[37] = 0;
  *(v6 + 19) = -5120;

  v8 = sub_100EDA5E4(v7);

  if (a2 >> 62)
  {
LABEL_35:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v9;
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33[1] = v6;
  v11 = isUniquelyReferenced_nonNull_native;
  if (v10)
  {
    v12 = 0;
    v39 = a2 & 0xFFFFFFFFFFFFFF8;
    v40 = a2 & 0xC000000000000001;
    v33[2] = v34 + 16;
    v38 = (v34 + 8);
    v13 = _swiftEmptyDictionarySingleton;
    v36 = a2;
    v37 = v8;
    v35 = v10;
    while (1)
    {
      if (v40)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        isUniquelyReferenced_nonNull_native = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v12 >= *(v39 + 16))
        {
          goto LABEL_32;
        }

        v15 = *(a2 + 8 * v12 + 32);

        isUniquelyReferenced_nonNull_native = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v16 = sub_1012625CC(v15, v8);
      if (v11)
      {

        goto LABEL_30;
      }

      v19 = v16;
      v42 = isUniquelyReferenced_nonNull_native;
      a2 = 0;
      v20 = v43;
      (*((swift_isaMask & *v16) + 0x88))(v16, v17, v18);
      v8 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      v6 = v13;
      v22 = sub_10003E994(v20);
      v23 = v13[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_33;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v13 = v44;
          if (v21)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v6 = &v44;
          sub_100AA4030();
          v13 = v44;
          if (v26)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_100A89368(v25, isUniquelyReferenced_nonNull_native);
        v6 = v44;
        v27 = sub_10003E994(v43);
        if ((v26 & 1) != (v28 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v22 = v27;
        v13 = v44;
        if (v26)
        {
LABEL_5:
          v14 = v13[7];
          isUniquelyReferenced_nonNull_native = *(v14 + 8 * v22);
          *(v14 + 8 * v22) = v8;

          v9 = (*v38)(v43, v41);
          goto LABEL_6;
        }
      }

      v13[(v22 >> 6) + 8] |= 1 << v22;
      v6 = v34;
      v29 = v43;
      isUniquelyReferenced_nonNull_native = v41;
      (*(v34 + 16))(v13[6] + *(v34 + 72) * v22, v43, v41);
      *(v13[7] + 8 * v22) = v8;

      v9 = (*(v6 + 1))(v29, isUniquelyReferenced_nonNull_native);
      v30 = v13[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_34;
      }

      v13[2] = v32;
LABEL_6:
      ++v12;
      v11 = 0;
      a2 = v36;
      v8 = v37;
      if (v42 == v35)
      {
        goto LABEL_26;
      }
    }
  }

  v13 = _swiftEmptyDictionarySingleton;
LABEL_26:
  (*(*v8 + 720))(v9);
  if (v11)
  {
  }

  else
  {

    sub_1012627DC();
    sub_10087B224(v13);

LABEL_30:
  }
}

uint64_t sub_101261914()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1012619B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v77 = a4;
  v72 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v10);
  v78 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v68[-v13];
  v15 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v15 - 8);
  v71 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v80 = &v68[-v18];
  __chkstk_darwin(v19);
  v82 = &v68[-v20];
  __chkstk_darwin(v21);
  v23 = &v68[-v22];
  v25 = __chkstk_darwin(v24);
  v27 = &v68[-v26];
  v73 = *a1;
  (*(**(v73 + 16) + 272))(v25);
  v75 = v8[2];
  v75(v23, a2, v7);
  v74 = v8[7];
  v74(v23, 0, 1, v7);
  v76 = v10;
  v28 = *(v10 + 48);
  v83 = v27;
  sub_10000BE14(v27, v14, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v23, &v14[v28], &qword_1019F6990, &qword_10146D2F0);
  v81 = v8;
  v29 = v8[6];
  if (v29(v14, 1, v7) == 1)
  {
    sub_10000CAAC(v23, &qword_1019F6990, &qword_10146D2F0);
    if (v29(&v14[v28], 1, v7) == 1)
    {
      sub_10000CAAC(v14, &qword_1019F6990, &qword_10146D2F0);
LABEL_17:

      v59 = &v85;
LABEL_20:
      v66 = *(v59 - 32);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return sub_10000CAAC(v83, &qword_1019F6990, &qword_10146D2F0);
    }

    goto LABEL_6;
  }

  sub_10000BE14(v14, v82, &qword_1019F6990, &qword_10146D2F0);
  if (v29(&v14[v28], 1, v7) == 1)
  {
    sub_10000CAAC(v23, &qword_1019F6990, &qword_10146D2F0);
    (v81[1])(v82, v7);
LABEL_6:
    sub_10000CAAC(v14, &unk_101A0AFE0, &unk_10146F3C0);
    goto LABEL_7;
  }

  v57 = v81;
  (v81[4])(v79, &v14[v28], v7);
  sub_101265B9C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = v57[1];
  v58(v79, v7);
  sub_10000CAAC(v23, &qword_1019F6990, &qword_10146D2F0);
  v58(v82, v7);
  sub_10000CAAC(v14, &qword_1019F6990, &qword_10146D2F0);
  if (v69)
  {
    goto LABEL_17;
  }

LABEL_7:
  v30 = v80;
  v75(v80, v77, v7);
  v74(v30, 0, 1, v7);
  v31 = *(v76 + 48);
  v32 = v78;
  sub_10000BE14(v83, v78, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v30, &v32[v31], &qword_1019F6990, &qword_10146D2F0);
  if (v29(v32, 1, v7) == 1)
  {
    sub_10000CAAC(v30, &qword_1019F6990, &qword_10146D2F0);
    if (v29(&v32[v31], 1, v7) == 1)
    {
      sub_10000CAAC(v32, &qword_1019F6990, &qword_10146D2F0);
LABEL_19:

      v59 = &v84;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v33 = v71;
  sub_10000BE14(v32, v71, &qword_1019F6990, &qword_10146D2F0);
  if (v29(&v32[v31], 1, v7) == 1)
  {
    sub_10000CAAC(v30, &qword_1019F6990, &qword_10146D2F0);
    (v81[1])(v33, v7);
LABEL_12:
    sub_10000CAAC(v32, &unk_101A0AFE0, &unk_10146F3C0);
    goto LABEL_13;
  }

  v60 = v81;
  v61 = &v32[v31];
  v62 = v79;
  (v81[4])(v79, v61, v7);
  sub_101265B9C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v63 = v33;
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = v60[1];
  v65(v62, v7);
  sub_10000CAAC(v80, &qword_1019F6990, &qword_10146D2F0);
  v65(v63, v7);
  sub_10000CAAC(v32, &qword_1019F6990, &qword_10146D2F0);
  if (v64)
  {
    goto LABEL_19;
  }

LABEL_13:
  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v86 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v86, "Encountered an item with unexpected parent", 42, 2u);
  StaticString.description.getter("prepareBoard(_:childItemResults:)", 33, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectReader.swift", 99, 2);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v35;
  v44 = sub_1005CF000();
  *(inited + 96) = v44;
  v45 = sub_101265B9C(&qword_1019F52E0, 255, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v45;
  *(inited + 72) = v36;
  *(inited + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v46;
  *(inited + 152) = 157;
  v47 = v86;
  *(inited + 216) = v44;
  *(inited + 224) = v45;
  *(inited + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Encountered an item with unexpected parent", 42, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter("prepareBoard(_:childItemResults:)", 33, 2);
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectReader.swift", 99, 2);
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Encountered an item with unexpected parent", 42, 2);
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:157 isFatal:0 format:v56 args:v53];

  return sub_10000CAAC(v83, &qword_1019F6990, &qword_10146D2F0);
}

void *sub_1012625CC(uint64_t a1, uint64_t a2)
{
  v6 = sub_100B6D698(*(a1 + 16), *(v2 + 32));
  sub_1010F8AD4(v6, 2, a2);
  v14 = v6;

  swift_beginAccess();
  v7 = *(a1 + 24);
  if (v7 >> 62)
  {
LABEL_17:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_13;
        }
      }

      v12 = sub_1012625CC(v10, a2);

      if (v3)
      {
        goto LABEL_14;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  return v14;
}

uint64_t sub_10126273C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_10003E994(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 16 * v4);
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1012627DC()
{
  v1 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v1 - 8);
  v3 = v24 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v28 = v0;
  v8 = *(v0 + 16);
  v9 = *(v8 + 64);
  v29 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v31 = (v5 + 48);
  v25 = (v5 + 8);
  v26 = (v5 + 32);

  v14 = 0;
  v27 = v7;
  v30 = v8;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(v8 + 56) + ((v14 << 10) | (16 * v16)));
    type metadata accessor for CRLBoardItem(0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = *((swift_isaMask & *v18) + 0xB8);
      v21 = swift_unknownObjectRetain();
      v20(v21);
      if ((*v31)(v3, 1, v4) == 1)
      {
        swift_unknownObjectRelease();
        sub_10000CAAC(v3, &qword_1019F6990, &qword_10146D2F0);
        v8 = v30;
      }

      else
      {
        v22 = v27;
        (*v26)(v27, v3, v4);
        if (!*(*(v28 + 16) + 16))
        {
          goto LABEL_17;
        }

        sub_10003E994(v22);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          (*v25)(v22, v4);
          goto LABEL_18;
        }

        v24[1] = v17;
        swift_unknownObjectRetain();

        type metadata accessor for CRLContainerItem(0);
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
          sub_10096E1AC(v19, 1);
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          (*v25)(v22, v4);
          v8 = v30;
        }

        else
        {
          swift_unknownObjectRelease();
          (*v25)(v22, v4);
LABEL_18:
          swift_unknownObjectRelease();
          v8 = v30;
        }
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v29 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_101262B94()
{

  return swift_deallocClassInstance();
}

unint64_t sub_101262C0C()
{
  result = qword_101A2F220;
  if (!qword_101A2F220)
  {
    result = swift_getWitnessTable(byte_1014D6644, &type metadata for CRLSerializableObjectReaderOptions, v0, v1);
    atomic_store(result, &qword_101A2F220);
  }

  return result;
}

unint64_t sub_101262C64()
{
  result = qword_101A2F228;
  if (!qword_101A2F228)
  {
    result = swift_getWitnessTable(byte_1014D6614, &type metadata for CRLSerializableObjectReaderOptions, v0, v1);
    atomic_store(result, &qword_101A2F228);
  }

  return result;
}

unint64_t sub_101262CBC()
{
  result = qword_101A2F230;
  if (!qword_101A2F230)
  {
    result = swift_getWitnessTable(asc_1014D666C, &type metadata for CRLSerializableObjectReaderOptions, v0, v1);
    atomic_store(result, &qword_101A2F230);
  }

  return result;
}

unint64_t sub_101262D14()
{
  result = qword_101A2F238;
  if (!qword_101A2F238)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for CRLSerializableObjectReaderOptions, v0, v1);
    atomic_store(result, &qword_101A2F238);
  }

  return result;
}

uint64_t sub_101262D6C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_100A9A968(a1, a2, v8, isUniquelyReferenced_nonNull_native);
  (*(v6 + 8))(v8, v5);
  *(v2 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_101262ED0()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_101262F04(uint64_t a1, uint64_t a2)
{
  result = sub_101265B9C(&qword_101A2F240, a2, type metadata accessor for CRLSerializableObjectReader.PartialTreeOwner, byte_1014D67A4);
  *(a1 + 8) = result;
  return result;
}

void sub_101262F5C()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25, "PartialTreeOwner.removeTransactable() not expected to be called ever.", 69, 2u);
  StaticString.description.getter("removeTransactable(_:deletedNewlyCreated:)", 42, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectReader.swift", 99, 2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_1005CF000();
  *(inited + 96) = v10;
  v11 = sub_101265B9C(&qword_1019F52E0, 255, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 235;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "PartialTreeOwner.removeTransactable() not expected to be called ever.", 69, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "PartialTreeOwner.removeTransactable() not expected to be called ever.");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("removeTransactable(_:deletedNewlyCreated:)", 42, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectReader.swift", 99, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("PartialTreeOwner.removeTransactable() not expected to be called ever.", 69, 2);
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:235 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10126336C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v2[14] = *(type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0) - 8);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  sub_1005B981C(&qword_101A21DF8, &unk_1014B6770);
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for CRLProto_Data(0);
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v7 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  v2[34] = v7;
  v2[35] = *(v7 - 8);
  v2[36] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v2[37] = swift_task_alloc();
  v2[38] = type metadata accessor for CRLProto_ObjectInfo(0);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1012636FC, 0, 0);
}

void sub_1012636FC()
{
  v2 = *(v0 + 104);
  v3 = *(v2 + 24);
  if (__OFADD__(v3, 8))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v3 + 8;
    ObjectType = swift_getObjectType();
    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = sub_1012637CC;

    sub_100872830(v3, 8, 1, ObjectType);
  }
}

uint64_t sub_1012637CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = v2;

  if (v2)
  {
    v5 = sub_101263B9C;
  }

  else
  {
    v5 = sub_1012638E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1012638E4(uint64_t a1)
{
  v2 = v1 + 41;
  v3 = v1[42] >> 62;
  if (v3 <= 1)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = *v2;
    if (v4 > *v2 >> 32)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = __DataStorage._bytes.getter();
    if (!v5)
    {
LABEL_25:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v6 = v5;
    v7 = __DataStorage._offset.getter();
    if (__OFSUB__(v4, v7))
    {
      goto LABEL_22;
    }

    v2 = (v4 - v7 + v6);
    __DataStorage._length.getter();
    if (v2)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v8 = *(*v2 + 16);
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_23:
    __DataStorage._length.getter();
    goto LABEL_24;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  if (__OFSUB__(v8, v11))
  {
    goto LABEL_21;
  }

  v2 = (v8 - v11 + v10);
  __DataStorage._length.getter();
  if (!v2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_12:
  v12 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v12 = 0;
LABEL_15:
  v13 = v1[13];
  v14 = *(v13 + 24);
  if (__OFADD__(v14, v12))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v13 + 24) = v14 + v12;
  ObjectType = swift_getObjectType();
  v16 = swift_task_alloc();
  v1[44] = v16;
  *v16 = v1;
  v16[1] = sub_101263A84;

  return sub_100872830(v14, v12, 1, ObjectType);
}

uint64_t sub_101263A84(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {
    v5 = sub_101265024;
  }

  else
  {
    v5 = sub_101263CC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101263B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101263CC0()
{
  v1 = v0[47];
  sub_100024E98(v0[45], v0[46]);
  BinaryDecodingOptions.init()();
  sub_101265B9C(&qword_1019F69B0, 255, type metadata accessor for CRLProto_ObjectInfo, byte_1014B4180);
  Message.init(serializedData:extensions:partial:options:)();
  if (v1)
  {
    v3 = v0[41];
    v2 = v0[42];
    sub_10002640C(v0[45], v0[46]);
    sub_10002640C(v3, v2);

    goto LABEL_94;
  }

  v4 = *(v0[39] + 24);
  v5 = Dictionary.init(minimumCapacity:)();
  v180 = *(v4 + 16);
  v184 = v0;
  if (v180)
  {
    v6 = 0;
    v7 = v0[36];
    v165 = v0[28];
    v166 = v0[26];
    v177 = v0[35];
    v174 = (v0[24] + 48);
    v175 = v4 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
    v163 = (v0[20] + 56);
    v8 = *(v0[34] + 24);
    v168 = v7;
    v170 = v4;
    v172 = v8;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v0 = v184;
      v13 = v184[36];
      v14 = v184[33];
      v15 = v184[23];
      v185 = v6;
      sub_1000500D4(v175 + *(v177 + 72) * v6, v13, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      sub_10000BE14(v7 + v8, v14, &qword_1019F67C0, &unk_10146F3E0);
      v16 = v8;
      v17 = *v174;
      LODWORD(v15) = (*v174)(v14, 1, v15);
      sub_10000CAAC(v14, &qword_1019F67C0, &unk_10146F3E0);
      v18 = v7;
      v19 = *(v7 + 8);
      if (v15 == 1)
      {
        v20 = sub_10000BE7C(*v13, v19);
        if (v21)
        {
          v22 = v20;
          v7 = v168;
          v4 = v170;
          v8 = v172;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_100AA4A54();
          }

          v10 = v184;
          v23 = v184[22];

          sub_10063FD1C(v5[7] + *(v165 + 72) * v22, v23);
          sub_100BCEBEC(v22, v5, v24);
          v9 = 0;
        }

        else
        {
          v9 = 1;
          v7 = v168;
          v4 = v170;
          v8 = v172;
          v10 = v184;
        }

        v11 = v10[36];
        v12 = v10[22];
        (*(v165 + 56))(v12, v9, 1, v10[27]);
        sub_10000CAAC(v12, &qword_101A21DF8, &unk_1014B6770);
        sub_10003D8DC(v11, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
        goto LABEL_7;
      }

      v167 = *v13;
      v25 = v184[32];
      v26 = v184[23];
      sub_10000BE14(v18 + v16, v25, &qword_1019F67C0, &unk_10146F3E0);
      v27 = v17(v25, 1, v26);
      v28 = v184[32];
      v29 = v184[26];
      if (v27 == 1)
      {
        v30 = v184[23];
        *v29 = 0;
        *(v166 + 8) = 0xC000000000000000;
        UnknownStorage.init()();
        if (v17(v28, 1, v30) != 1)
        {
          sub_10000CAAC(v184[32], &qword_1019F67C0, &unk_10146F3E0);
        }
      }

      else
      {
        sub_101265C38(v184[32], v29, type metadata accessor for CRLProto_Data);
      }

      v31 = v184[26];
      v32 = *v31;
      v33 = *(v166 + 8);
      sub_100024E98(*v31, v33);
      sub_10003D8DC(v31, type metadata accessor for CRLProto_Data);
      v34 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_83;
        }

        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_126;
        }

        if (v38 != 16)
        {
          goto LABEL_83;
        }
      }

      else if (v34)
      {
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_125;
        }

        if (HIDWORD(v32) - v32 != 16)
        {
LABEL_83:
          v109 = v184[45];
          v183 = v184[46];
          v111 = v184[41];
          v110 = v184[42];
          v112 = v184[39];
          v188 = v184[36];
          sub_10070A7DC();
          swift_allocError();
          swift_willThrow();
          sub_10002640C(v111, v110);
          sub_10002640C(v32, v33);

          sub_10002640C(v109, v183);
          sub_10003D8DC(v188, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
          sub_10003D8DC(v112, type metadata accessor for CRLProto_ObjectInfo);
          goto LABEL_93;
        }
      }

      else if (BYTE6(v33) != 16)
      {
        goto LABEL_83;
      }

      if (v34 == 2)
      {
        v44 = *(v32 + 16);
        v45 = __DataStorage._bytes.getter();
        if (!v45)
        {
          goto LABEL_136;
        }

        v46 = v45;
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v44, v47))
        {
          goto LABEL_128;
        }

        v48 = v44 - v47 + v46;
        __DataStorage._length.getter();
        if (!v48)
        {
          goto LABEL_137;
        }
      }

      else if (v34 == 1)
      {
        if (v32 > v32 >> 32)
        {
          goto LABEL_127;
        }

        v39 = __DataStorage._bytes.getter();
        if (!v39)
        {
          goto LABEL_138;
        }

        v40 = v39;
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v32, v41))
        {
          goto LABEL_129;
        }

        v42 = v32 - v41 + v40;
        result = __DataStorage._length.getter();
        if (!v42)
        {
          goto LABEL_139;
        }
      }

      v50 = v184[29];
      v49 = v184[30];
      v51 = v184[19];
      UUID.init(uuid:)();
      sub_10002640C(v32, v33);
      (*v163)(v49, 0, 1, v51);
      sub_10063FD1C(v49, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = sub_10000BE7C(v167, v19);
      v55 = v5[2];
      v56 = (v54 & 1) == 0;
      v37 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (v37)
      {
        goto LABEL_117;
      }

      v58 = v54;
      if (v5[3] < v57)
      {
        break;
      }

      v4 = v170;
      v8 = v172;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_43;
      }

      v61 = v53;
      sub_100AA4A54();
      v53 = v61;
      v8 = v172;
      v60 = v184[29];
      if ((v58 & 1) == 0)
      {
LABEL_46:
        v5[(v53 >> 6) + 8] |= 1 << v53;
        v62 = (v5[6] + 16 * v53);
        *v62 = v167;
        v62[1] = v19;
        sub_10063FD1C(v60, v5[7] + *(v165 + 72) * v53);
        v63 = v5[2];
        v37 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v37)
        {
          goto LABEL_119;
        }

        v5[2] = v64;

        goto LABEL_48;
      }

LABEL_44:
      sub_100803880(v60, v5[7] + *(v165 + 72) * v53);
LABEL_48:
      sub_10003D8DC(v184[36], type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      v7 = v168;
LABEL_7:
      v6 = v185 + 1;
      if (v180 == v185 + 1)
      {
        goto LABEL_49;
      }
    }

    sub_100A8A448(v57, isUniquelyReferenced_nonNull_native);
    v53 = sub_10000BE7C(v167, v19);
    v4 = v170;
    v8 = v172;
    if ((v58 & 1) != (v59 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_43:
    v60 = v184[29];
    if ((v58 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

LABEL_49:
  v0 = v184;
  v184[48] = v5;
  v65 = v184[39];
  v66 = *(v65 + 16);
  v67 = *(v66 + 16);
  if (v67)
  {
    v68 = v184[24];
    v189 = v184[25];
    v69 = v184[20];
    v70 = v184[17];
    v181 = v184[16];
    sub_100776524(0, v67, 0);
    v71 = 0;
    v186 = v70;
    v178 = v66 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v72 = v67;
    v73 = (v68 + 48);
    v173 = v69;
    v169 = v72;
    v171 = v66;
    v74 = v72;
    v176 = (v68 + 48);
    while (1)
    {
      if (v71 >= *(v66 + 16))
      {
        goto LABEL_116;
      }

      v75 = v184[31];
      v76 = v184[23];
      v77 = v184[18];
      sub_1000500D4(v178 + *(v186 + 72) * v71, v77, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
      sub_10000BE14(v77 + *(v181 + 20), v75, &qword_1019F67C0, &unk_10146F3E0);
      v78 = *v73;
      v79 = (*v73)(v75, 1, v76);
      v80 = v184[31];
      v81 = v184[25];
      if (v79 == 1)
      {
        v82 = v184[23];
        *v81 = 0;
        *(v189 + 8) = 0xC000000000000000;
        UnknownStorage.init()();
        v83 = v74;
        if (v78(v80, 1, v82) != 1)
        {
          sub_10000CAAC(v184[31], &qword_1019F67C0, &unk_10146F3E0);
        }
      }

      else
      {
        sub_101265C38(v184[31], v81, type metadata accessor for CRLProto_Data);
        v83 = v74;
      }

      v84 = v184[25];
      v85 = *v84;
      v86 = *(v189 + 8);
      sub_100024E98(*v84, v86);
      sub_10003D8DC(v84, type metadata accessor for CRLProto_Data);
      v87 = v86 >> 62;
      if ((v86 >> 62) > 1)
      {
        if (v87 != 2)
        {
          goto LABEL_82;
        }

        v89 = *(v85 + 16);
        v88 = *(v85 + 24);
        v37 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v37)
        {
          goto LABEL_120;
        }

        if (v90 != 16)
        {
          goto LABEL_82;
        }
      }

      else if (v87)
      {
        if (__OFSUB__(HIDWORD(v85), v85))
        {
          goto LABEL_121;
        }

        if (HIDWORD(v85) - v85 != 16)
        {
LABEL_82:
          v179 = v184[45];
          v182 = v184[46];
          v106 = v184[41];
          v107 = v184[42];
          v108 = v184[39];
          v187 = v184[18];
          sub_10070A7DC();
          swift_allocError();
          swift_willThrow();
          sub_10002640C(v106, v107);
          sub_10002640C(v85, v86);

          sub_10002640C(v179, v182);
          sub_10003D8DC(v187, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
          sub_10003D8DC(v108, type metadata accessor for CRLProto_ObjectInfo);

          goto LABEL_93;
        }
      }

      else if (BYTE6(v86) != 16)
      {
        goto LABEL_82;
      }

      if (v87 == 2)
      {
        break;
      }

      if (v87 == 1)
      {
        if (v85 > v85 >> 32)
        {
          goto LABEL_122;
        }

        v91 = __DataStorage._bytes.getter();
        if (!v91)
        {
          goto LABEL_134;
        }

        v92 = v91;
        v93 = __DataStorage._offset.getter();
        if (__OFSUB__(v85, v93))
        {
          goto LABEL_124;
        }

        v94 = v85 - v93 + v92;
        __DataStorage._length.getter();
        if (!v94)
        {
          goto LABEL_135;
        }

        goto LABEL_76;
      }

LABEL_77:
      v100 = v184[18];
      UUID.init(uuid:)();
      sub_10002640C(v85, v86);
      sub_10003D8DC(v100, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
      v102 = _swiftEmptyArrayStorage[2];
      v101 = _swiftEmptyArrayStorage[3];
      if (v102 >= v101 >> 1)
      {
        sub_100776524((v101 > 1), v102 + 1, 1);
      }

      ++v71;
      v103 = v184[21];
      v104 = v184[19];
      _swiftEmptyArrayStorage[2] = v102 + 1;
      (*(v173 + 32))(_swiftEmptyArrayStorage + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v102, v103, v104);
      v74 = v83;
      v105 = v83 == v71;
      v73 = v176;
      if (v105)
      {
        v65 = v184[39];
        goto LABEL_84;
      }
    }

    v95 = *(v85 + 16);
    v96 = __DataStorage._bytes.getter();
    if (!v96)
    {
      goto LABEL_132;
    }

    v97 = v96;
    v98 = __DataStorage._offset.getter();
    if (__OFSUB__(v95, v98))
    {
      goto LABEL_123;
    }

    v99 = v95 - v98 + v97;
    __DataStorage._length.getter();
    if (!v99)
    {
      goto LABEL_133;
    }

LABEL_76:
    v83 = v169;
    v66 = v171;
    goto LABEL_77;
  }

LABEL_84:
  v184[49] = _swiftEmptyArrayStorage;
  v113 = *(v65 + 32);
  v184[50] = v113;
  sub_101265BE4();
  v114 = Dictionary.init(minimumCapacity:)();
  v115 = *(v113 + 16);
  v184[51] = v115;
  if (!v115)
  {
LABEL_91:

    v128 = sub_101286364(v127);
    v129 = v184[49];
    v131 = v184[45];
    v130 = v184[46];
    v133 = v184[41];
    v132 = v184[42];
    v134 = v184[39];
    if ((v135 & 1) == 0)
    {
      v157 = v184[46];
      v164 = v184[48];
      v138 = v184[12];
      v139 = (v134 + *(v184[38] + 52));
      v159 = *v139;
      v160 = v128;
      v158 = *(v139 + 4);
      v162 = *v134;

      v161 = v129;
      v141 = sub_101286364(v140);
      v143 = v142;
      v144 = 0x2000400000000;

      v146 = sub_101286364(v145);
      v105 = (v147 & 1) == 0;
      v148 = v132;
      if (v105)
      {
        v149 = v146;
      }

      else
      {
        v149 = 0x1000000000000;
      }

      sub_10002640C(v133, v148);

      sub_10002640C(v131, v157);
      if ((v143 & 1) == 0)
      {
        v144 = v141;
      }

      if (v158)
      {
        v150 = 0;
      }

      else
      {
        v150 = v159;
      }

      v151 = *(v134 + 5);
      sub_10003D8DC(v134, type metadata accessor for CRLProto_ObjectInfo);
      *v138 = v160;
      *(v138 + 8) = v144;
      *(v138 + 16) = v149;
      *(v138 + 24) = v151;
      *(v138 + 32) = v162;
      *(v138 + 40) = v150;
      *(v138 + 48) = v158;
      *(v138 + 56) = v114;
      *(v138 + 64) = v164;
      *(v138 + 72) = v161;

      v137 = v184[1];
      goto LABEL_95;
    }

    sub_1006B305C();
    swift_allocError();
    *v136 = 11;
    swift_willThrow();
    sub_10002640C(v133, v132);

    sub_10002640C(v131, v130);
    sub_10003D8DC(v134, type metadata accessor for CRLProto_ObjectInfo);
LABEL_93:

LABEL_94:

    v137 = v0[1];
LABEL_95:

    return v137();
  }

  v116 = 0;
  *(v184 + 118) = *(v184[14] + 80);
  while (1)
  {
    v184[53] = v116;
    v184[54] = v114;
    v184[52] = v114;
    v117 = v184[50];
    if (v116 >= *(v117 + 16))
    {
      break;
    }

    v118 = v184[15];
    sub_1000500D4(v117 + ((*(v184 + 472) + 32) & ~*(v184 + 472)) + *(v184[14] + 72) * v116, v118, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v120 = *v118;
    v119 = v118[1];

    v121._countAndFlagsBits = v120;
    v121._object = v119;
    v122 = _findStringSwitchCase(cases:string:)(&off_101873F70, v121);

    if (v122 < 6)
    {
      *(v184 + 476) = v122;
      v152 = *(v184[15] + 16);
      if (v152 < 0)
      {
        goto LABEL_130;
      }

      v153 = v184[13];
      v154 = *(v153 + 24);
      if (!__OFADD__(v154, v152))
      {
        *(v153 + 24) = v154 + v152;
        ObjectType = swift_getObjectType();
        v156 = swift_task_alloc();
        v184[55] = v156;
        *v156 = v184;
        v156[1] = sub_101265158;

        return sub_100872830(v154, v152, 1, ObjectType);
      }

      goto LABEL_131;
    }

    if (qword_1019F20E8 != -1)
    {
      swift_once();
    }

    v123 = v184[15];
    v124 = static OS_os_log.crlSerializableObject;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v120;
    *(inited + 40) = v119;

    v126 = static os_log_type_t.default.getter();
    sub_100005404(v124, &_mh_execute_header, v126, "Skipping unknown entry type for the data dictionary of an object data representation. entryName=%@", 98, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_10003D8DC(v123, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v116 = v184[53] + 1;
    if (v116 == v184[51])
    {
      goto LABEL_91;
    }
  }

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
  __DataStorage._length.getter();
LABEL_133:
  __break(1u);
LABEL_134:
  __DataStorage._length.getter();
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __DataStorage._length.getter();
LABEL_137:
  __break(1u);
LABEL_138:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_101265024()
{
  v1 = v0[41];
  v2 = v0[42];

  sub_10002640C(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_101265158(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  if (v2)
  {
    v5 = sub_101265270;
  }

  else
  {
    v5 = sub_101265414;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101265270()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[15];

  sub_10002640C(v4, v3);

  sub_10002640C(v2, v1);
  sub_10003D8DC(v6, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
  sub_10003D8DC(v5, type metadata accessor for CRLProto_ObjectInfo);

  v7 = v0[1];

  return v7();
}

unint64_t sub_101265414()
{
  v1 = *(v0 + 416);
  inited = *(v0 + 476);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 88) = v1;
  v4 = v0 + 88;
  result = sub_1007C8330(inited);
  v7 = *(v1 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v63 = result;
    sub_100AA4F94();
    result = v63;
    goto LABEL_8;
  }

  LOBYTE(inited) = v6;
  if (*(*(v0 + 416) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  v11 = *(v0 + 476);
  sub_100A8AC10(v10, isUniquelyReferenced_nonNull_native);
  result = sub_1007C8330(v11);
  if ((inited & 1) != (v12 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v13 = *(v0 + 88);
  v14 = *(v0 + 448);
  if (inited)
  {
    inited = *(v0 + 120);
    v15 = (v13[7] + 16 * result);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v14;
    sub_10002640C(v16, v17);
    result = sub_10003D8DC(inited, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
  }

  else
  {
    v18 = *(v0 + 476);
    v19 = *(v0 + 120);
    v13[(result >> 6) + 8] |= 1 << result;
    *(v13[6] + result) = v18;
    *(v13[7] + 16 * result) = v14;
    result = sub_10003D8DC(v19, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v20 = v13[2];
    v9 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v9)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13[2] = v21;
  }

  v22 = *(v0 + 424) + 1;
  if (v22 == *(v0 + 408))
  {
LABEL_13:

    v24 = sub_101286364(v23);
    v25 = *(v0 + 392);
    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 328);
    v28 = *(v0 + 336);
    v30 = *(v0 + 312);
    if (v31)
    {

      sub_1006B305C();
      swift_allocError();
      *v32 = 11;
      swift_willThrow();
      sub_10002640C(v29, v28);

      sub_10002640C(v27, v26);
      sub_10003D8DC(v30, type metadata accessor for CRLProto_ObjectInfo);

      v33 = *(v0 + 8);
    }

    else
    {
      v64 = *(v0 + 368);
      v70 = *(v0 + 384);
      v43 = *(v0 + 96);
      v44 = (v30 + *(*(v0 + 304) + 52));
      v66 = *v44;
      v67 = v24;
      v65 = *(v44 + 4);
      v69 = *v30;

      v68 = v25;
      v46 = sub_101286364(v45);
      v48 = v47;
      v49 = 0x2000400000000;

      v51 = sub_101286364(v50);
      v53 = (v52 & 1) == 0;
      v54 = v28;
      if (v53)
      {
        v55 = v51;
      }

      else
      {
        v55 = 0x1000000000000;
      }

      sub_10002640C(v29, v54);

      sub_10002640C(v27, v64);
      if ((v48 & 1) == 0)
      {
        v49 = v46;
      }

      if (v65)
      {
        v56 = 0;
      }

      else
      {
        v56 = v66;
      }

      v57 = *(v30 + 5);
      sub_10003D8DC(v30, type metadata accessor for CRLProto_ObjectInfo);
      *v43 = v67;
      *(v43 + 8) = v49;
      *(v43 + 16) = v55;
      *(v43 + 24) = v57;
      *(v43 + 32) = v69;
      *(v43 + 40) = v56;
      *(v43 + 48) = v65;
      *(v43 + 56) = v13;
      *(v43 + 64) = v70;
      *(v43 + 72) = v68;

      v33 = *(v0 + 8);
    }

    return v33();
  }

  v4 -= 72;
  while (1)
  {
    *(v0 + 424) = v22;
    *(v0 + 432) = v13;
    *(v0 + 416) = v13;
    v34 = *(v0 + 400);
    if (v22 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v35 = *(v0 + 120);
    sub_1000500D4(v34 + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(*(v0 + 112) + 72) * v22, v35, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v36 = *v35;
    v37 = v35[1];

    v38._countAndFlagsBits = v36;
    v38._object = v37;
    v39 = _findStringSwitchCase(cases:string:)(&off_101873F70, v38);

    if (v39 < 6)
    {
      break;
    }

    if (qword_1019F20E8 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 120);
    v41 = static OS_os_log.crlSerializableObject;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v36;
    *(inited + 40) = v37;

    v42 = static os_log_type_t.default.getter();
    sub_100005404(v41, &_mh_execute_header, v42, "Skipping unknown entry type for the data dictionary of an object data representation. entryName=%@", 98, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    result = sub_10003D8DC(v40, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v22 = *(v0 + 424) + 1;
    if (v22 == *(v0 + 408))
    {
      goto LABEL_13;
    }
  }

  *(v0 + 476) = v39;
  v58 = *(*(v0 + 120) + 16);
  if (v58 < 0)
  {
    goto LABEL_43;
  }

  v59 = *(v0 + 104);
  v60 = *(v59 + 24);
  if (__OFADD__(v60, v58))
  {
LABEL_44:
    __break(1u);
    return result;
  }

  *(v59 + 24) = v60 + v58;
  ObjectType = swift_getObjectType();
  v62 = swift_task_alloc();
  *(v0 + 440) = v62;
  *v62 = v0;
  v62[1] = sub_101265158;

  return sub_100872830(v60, v58, 1, ObjectType);
}

uint64_t sub_101265B9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101265BE4()
{
  result = qword_101A2F248;
  if (!qword_101A2F248)
  {
    result = swift_getWitnessTable("q{5", &type metadata for CRLSerializableObjectDataRepresentation.DataDictionaryKey, v0, v1);
    atomic_store(result, &qword_101A2F248);
  }

  return result;
}

uint64_t sub_101265C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_101265CC4()
{
  sub_100043E40(_swiftEmptyArrayStorage);
  v0 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v0, 0xD000000000000019, 0x80000001015C86C0, isUniquelyReferenced_nonNull_native);
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  sub_1006364DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 sendEventInDomain:v3 lazily:1 eventPayload:isa];
}

uint64_t sub_101265DE8()
{

  return swift_deallocClassInstance();
}

id sub_101265E6C()
{
  v1 = *(v0 + 424);
  v22 = *(v0 + 408);
  v23 = v1;
  v2 = *(v0 + 456);
  v24 = *(v0 + 440);
  v25 = v2;
  v3 = *(v0 + 360);
  v18 = *(v0 + 344);
  v19 = v3;
  v4 = *(v0 + 392);
  v20 = *(v0 + 376);
  v21 = v4;
  if (sub_10074A978(&v18) == 1)
  {
    return 0;
  }

  v26[2] = v20;
  v26[3] = v21;
  v26[4] = v22;
  v27 = v23;
  v26[0] = v18;
  v26[1] = v19;
  v6 = *(&v23 + 1);
  v7 = v24;
  v8 = *(&v24 + 2);
  v9 = v25;
  sub_100CE5068();
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  sub_10074A990(v26, v15);
  v10 = sub_1008B0490(v16);
  v11 = *&v6;
  v12 = *(&v6 + 1);
  if (v9)
  {
    v13 = [objc_allocWithZone(CRLCurvedShadow) initWithOffset:v10 angle:1 radius:v12 curve:v11 opacity:*&v7 color:v8 enabled:*(&v7 + 1)];
  }

  else
  {
    v13 = [objc_allocWithZone(CRLDropShadow) initWithAngle:v10 offset:1 radius:v11 opacity:v12 color:*&v7 enabled:*(&v7 + 1)];
  }

  v14 = v13;

  return v14;
}

uint64_t sub_101266004(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2F508, &qword_1014D6EE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100020E58(a1, a1[3]);
  sub_10126690C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v3, 0x370uLL);
  memcpy(v12, v3, sizeof(v12));
  v13[903] = 0;
  sub_1010A10E4(v13, v11);
  sub_10109D61C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v11, v12, sizeof(v11));
  sub_1009CCD88(v11);
  if (!v2)
  {
    v10 = v3[110];
    v13[902] = 1;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101266204()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x5365706168537077;
  }
}

uint64_t sub_10126624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5365706168537077 && a2 == 0xEC000000656C7974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101266344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012668B4();
  v5 = sub_10126690C();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_10126639C(uint64_t a1)
{
  v2 = sub_10126690C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1012663D8(uint64_t a1)
{
  v2 = sub_10126690C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10126641C(uint64_t a1)
{

  *(v1 + 880) = a1;
  return result;
}

uint64_t sub_101266448(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_101266000(v4) & 1;
}

void *sub_1012664A0@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_101266C8C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x378uLL);
  }

  return result;
}

uint64_t sub_101266504(uint64_t a1, uint64_t a2)
{
  v4 = sub_101266F7C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101266558(uint64_t a1, uint64_t a2)
{
  v4 = sub_101266F7C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012665AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EF8C();
  v7 = sub_101266FD0();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10126661C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101266F7C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_101266700(uint64_t a1)
{
  v2 = sub_101266A7C();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_101266754()
{
  result = qword_101A2F4A0;
  if (!qword_101A2F4A0)
  {
    result = swift_getWitnessTable(byte_1014D6C7C, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F4A0);
  }

  return result;
}

unint64_t sub_1012667AC()
{
  result = qword_101A2F4A8;
  if (!qword_101A2F4A8)
  {
    result = swift_getWitnessTable(byte_1014D6C54, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F4A8);
  }

  return result;
}

unint64_t sub_101266804()
{
  result = qword_101A2F4B0;
  if (!qword_101A2F4B0)
  {
    result = swift_getWitnessTable(byte_1014D6CEC, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F4B0);
  }

  return result;
}

unint64_t sub_10126685C()
{
  result = qword_101A2F4B8;
  if (!qword_101A2F4B8)
  {
    result = swift_getWitnessTable(byte_1014D6E08, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F4B8);
  }

  return result;
}

unint64_t sub_1012668B4()
{
  result = qword_101A2F4C0;
  if (!qword_101A2F4C0)
  {
    result = swift_getWitnessTable(byte_1014D6DD0, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F4C0);
  }

  return result;
}

unint64_t sub_10126690C()
{
  result = qword_101A2F4C8;
  if (!qword_101A2F4C8)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F4C8);
  }

  return result;
}

unint64_t sub_101266964()
{
  result = qword_101A2F4D0;
  if (!qword_101A2F4D0)
  {
    result = swift_getWitnessTable(byte_1014D6D9C, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F4D0);
  }

  return result;
}

unint64_t sub_1012669BC()
{
  result = qword_101A2F4D8;
  if (!qword_101A2F4D8)
  {
    result = swift_getWitnessTable(byte_1014D6D74, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F4D8);
  }

  return result;
}

unint64_t sub_101266A14()
{
  result = qword_101A2F4E0;
  if (!qword_101A2F4E0)
  {
    v3 = sub_1005C4E5C(&qword_101A2F4E8, &qword_1014D6DC8);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A2F4E0);
  }

  return result;
}

unint64_t sub_101266A7C()
{
  result = qword_101A2F4F0;
  if (!qword_101A2F4F0)
  {
    result = swift_getWitnessTable(byte_1014D6CA4, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F4F0);
  }

  return result;
}

uint64_t sub_101266AD0(char *__src, uint64_t a2)
{
  v4 = *(__src + 212);
  v5 = *(__src + 109);
  v6 = *(a2 + 848);
  v7 = *(a2 + 872);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v28, a2, sizeof(v28));
  if ((sub_10109DC5C() & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = *(__src + 105);
  v8 = *(__src + 808);
  v29[12] = *(__src + 792);
  v29[13] = v8;
  v29[14] = *(__src + 824);
  v9 = *(__src + 744);
  v29[8] = *(__src + 728);
  v29[9] = v9;
  v10 = *(__src + 776);
  v29[10] = *(__src + 760);
  v29[11] = v10;
  v11 = *(__src + 680);
  v29[4] = *(__src + 664);
  v29[5] = v11;
  v12 = *(__src + 712);
  v29[6] = *(__src + 696);
  v29[7] = v12;
  v13 = *(__src + 616);
  v29[0] = *(__src + 600);
  v29[1] = v13;
  v14 = *(__src + 648);
  v29[2] = *(__src + 632);
  v29[3] = v14;
  v15 = *(a2 + 808);
  v26[12] = *(a2 + 792);
  v26[13] = v15;
  v26[14] = *(a2 + 824);
  v27 = *(a2 + 840);
  v16 = *(a2 + 744);
  v26[8] = *(a2 + 728);
  v26[9] = v16;
  v17 = *(a2 + 776);
  v26[10] = *(a2 + 760);
  v26[11] = v17;
  v18 = *(a2 + 680);
  v26[4] = *(a2 + 664);
  v26[5] = v18;
  v19 = *(a2 + 712);
  v26[6] = *(a2 + 696);
  v26[7] = v19;
  v20 = *(a2 + 616);
  v26[0] = *(a2 + 600);
  v26[1] = v20;
  v21 = *(a2 + 648);
  v26[2] = *(a2 + 632);
  v26[3] = v21;
  v22 = sub_100A1A23C(v29, v26);
  v23 = 0;
  if ((v22 & 1) != 0 && v4 == v6)
  {
    sub_100695068();
    if (static CRExtensible.== infix(_:_:)())
    {
      sub_100B3216C(v5, v7);
      if (v24)
      {
        sub_100B3216C(*(__src + 110), *(a2 + 880));
        return v23 & 1;
      }
    }

LABEL_7:
    v23 = 0;
  }

  return v23 & 1;
}

void *sub_101266C8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v4 = sub_1005B981C(&qword_101A2F500, &unk_1014D6ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100020E58(a1, a1[3]);
  sub_10126690C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v8 = v12;
  v18[903] = 0;
  sub_10109D5C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(v18, v17, 0x370uLL);
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v18[902] = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  v9 = v16;
  memcpy(v13, v18, 0x370uLL);
  v13[110] = v16;
  sub_101266F14(v13, v14);
  sub_100005070(a1);
  memcpy(v14, v18, sizeof(v14));
  v15 = v9;
  sub_101266F4C(v14);
  return memcpy(v8, v13, 0x378uLL);
}

unint64_t sub_101266F7C()
{
  result = qword_101A2F510;
  if (!qword_101A2F510)
  {
    result = swift_getWitnessTable(byte_1014D6E58, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F510);
  }

  return result;
}

unint64_t sub_101266FD0()
{
  result = qword_101A2F518;
  if (!qword_101A2F518)
  {
    result = swift_getWitnessTable(byte_1014D6E30, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F518);
  }

  return result;
}

unint64_t sub_101267038()
{
  result = qword_101A2F520;
  if (!qword_101A2F520)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for CRLWPStickyNotePresetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A2F520);
  }

  return result;
}

void *sub_10126708C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = v1;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      type metadata accessor for CRLBoardItem(0);
      v6 = v4;
      sub_1005B981C(&qword_101A2F5A0, &qword_1014D7088);
      if (swift_dynamicCast())
      {
        v7 = *(&v34 + 1);
        v8 = v35;
        sub_100020E58(&v33, *(&v34 + 1));
        v9 = (*(v8 + 8))(v7, v8);
        sub_100005070(&v33);
      }

      else
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
        sub_10000CAAC(&v33, &qword_101A2F5A8, &unk_1014D7090);

        v9 = _swiftEmptyArrayStorage;
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v32 = v3;
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *(v14 + 24) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_23;
      }

      if (v12)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v31 = v11;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v16 >> 1) - v15) < v31)
          {
            goto LABEL_45;
          }

          v18 = v14 + 8 * v15 + 32;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_10001A2F8(&qword_1019F5748, &qword_1019F5740, &unk_101479D10, &protocol conformance descriptor for [A]);
            for (i = 0; i != v17; ++i)
            {
              sub_1005B981C(&qword_1019F5740, &unk_101479D10);
              v20 = sub_100777974(&v33, i, v9);
              v22 = *v21;
              (v20)(&v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          if (v31 >= 1)
          {
            v23 = *(v14 + 16);
            v5 = __OFADD__(v23, v31);
            v24 = v23 + v31;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v14 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_28;
        }
      }

      if (v31 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v3 = v32;
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return _swiftEmptyArrayStorage;
}

id sub_101267490()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = [objc_allocWithZone(type metadata accessor for CRLImagePlaygroundViewControllerDelegate()) init];
  *&v1[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_gpDelegate] = v2;
  type metadata accessor for ImagePlaygroundViewController();
  v3 = v2;
  v4 = ImagePlaygroundViewController.__allocating_init()();
  *&v1[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] = v4;
  v5 = v3;
  v6 = v4;
  dispatch thunk of ImagePlaygroundViewController.delegate.setter();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLGenerativePlaygroundHelper();
  v7 = objc_msgSendSuper2(&v9, "init");

  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_101267668(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v23 = *(v11 - 8);
  v24 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 generateImage];
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1012709DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018B9BF8;
  v18 = _Block_copy(aBlock);
  v19 = v15;
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005D91D8();
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v10, v8);
  return (*(v23 + 8))(v14, v24);
}

uint64_t sub_101267968(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v4 = [a1 UIImage];
    dispatch thunk of ImagePlaygroundViewController.sourceImage.setter();
  }

  return a3();
}

double sub_1012679DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a5;
  v15[5] = a6;

  sub_10067F2EC(a5, a6);
  static TaskPriority.userInitiated.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a4;
  v18[5] = a1;
  v18[6] = 0;
  v18[7] = sub_1012709E8;
  v18[8] = v15;
  sub_10064191C(0, 0, v14, &unk_1014D70A0, v18);

  return result;
}

uint64_t sub_101267B90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v70 = a4;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UUID();
  v10 = *(v71 - 1);
  __chkstk_darwin(v71);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for URL();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v66 = a1;
  v62 = URL.lastPathComponent.getter();
  v68 = v20;
  v21 = [a2 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v10 + 8))(v12, v71);
  v78 = v22;
  v79 = v24;
  v60 = *(v7 + 104);
  v60(v9, enum case for URL.DirectoryHint.isDirectory(_:), v6);
  v61 = sub_100017CD8();
  URL.appending<A>(path:directoryHint:)();
  v25 = *(v7 + 8);
  v63 = v9;
  v65 = v6;
  v64 = v7 + 8;
  v25(v9, v6);

  v26 = v73 + 8;
  v27 = v69;
  v71 = *(v73 + 8);
  v71(v16, v74);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v78 = 0;
  LODWORD(v16) = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v78];

  v31 = v78;
  if (v16)
  {
    v59 = v26;
    v78 = v62;
    v79 = v68;
    v32 = v63;
    v33 = v65;
    v60(v63, enum case for URL.DirectoryHint.notDirectory(_:), v65);
    v34 = v31;
    v35 = v67;
    URL.appending<A>(component:directoryHint:)();
    v25(v32, v33);

    URL._bridgeToObjectiveC()(&v80);
    v37 = v36;
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v78 = 0;
    LODWORD(v32) = [v27 copyItemAtURL:v37 toURL:v39 error:&v78];

    if (v32)
    {
      v41 = v78;
      v42 = v74;
      v71(v19, v74);
      v43 = v73;
      v44 = v70;
      (*(v73 + 32))(v70, v35, v42);
      v45 = v44;
      v46 = 0;
      return (*(v43 + 56))(v45, v46, 1, v42);
    }

    v69 = v19;
    v48 = v78;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v71(v35, v74);
  }

  else
  {
    v69 = v19;
    v47 = v78;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v72 = 0;
  if (qword_1019F21A0 != -1)
  {
    swift_once();
  }

  v49 = static OS_os_log.crlInsertMedia;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v51 = Error.publicDescription.getter(v76, v77);
  v53 = v52;
  *(inited + 56) = &type metadata for String;
  v54 = sub_1000053B0();
  *(inited + 64) = v54;
  *(inited + 32) = v51;
  *(inited + 40) = v53;
  swift_getErrorValue();
  v55 = Error.fullDescription.getter(v75);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v54;
  *(inited + 72) = v55;
  *(inited + 80) = v56;
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v57, "Error copying asset to temporary directory: %{public}@ <%@>", 59, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v42 = v74;
  v71(v69, v74);
  v46 = 1;
  v45 = v70;
  v43 = v73;
  return (*(v43 + 56))(v45, v46, 1, v42);
}

id sub_10126855C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_101268704(uint64_t a1)
{
  v2 = _swiftEmptyArrayStorage;
  if (((*((swift_isaMask & *v1) + 0x688))() & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v4 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
    if (!v4)
    {
      sub_10096C7D4();
      v4 = *(v1 + v3);
    }

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    if (v5 >> 62)
    {
      goto LABEL_39;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    while (v6)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        type metadata accessor for CRLBoardItem(0);
        v11 = v9;
        sub_1005B981C(&qword_101A2F5A0, &qword_1014D7088);
        if (swift_dynamicCast())
        {
          v13 = *(&v26 + 1);
          v12 = v27;
          sub_100020E58(&v25, *(&v26 + 1));
          v14 = (*(v12 + 16))(a1, v13, v12);
          sub_100005070(&v25);
        }

        else
        {
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          sub_10000CAAC(&v25, &qword_101A2F5A8, &unk_1014D7090);

          v14 = _swiftEmptyArrayStorage;
        }

        v15 = v14[2];
        v16 = *(v2 + 2);
        v17 = v16 + v15;
        if (__OFADD__(v16, v15))
        {
          goto LABEL_35;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v17 <= *(v2 + 3) >> 1)
        {
          if (v14[2])
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v16 <= v17)
          {
            v19 = v16 + v15;
          }

          else
          {
            v19 = v16;
          }

          v2 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v19, 1, v2);
          if (v14[2])
          {
LABEL_28:
            if ((*(v2 + 3) >> 1) - *(v2 + 2) < v15)
            {
              goto LABEL_37;
            }

            swift_arrayInitWithCopy();

            if (v15)
            {
              v20 = *(v2 + 2);
              v21 = __OFADD__(v20, v15);
              v22 = v20 + v15;
              if (v21)
              {
                goto LABEL_38;
              }

              *(v2 + 2) = v22;
            }

            goto LABEL_11;
          }
        }

        if (v15)
        {
          goto LABEL_36;
        }

LABEL_11:
        ++v7;
        if (v10 == v6)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_40:
  }

  return v2;
}

void sub_101268AF8(void *a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v15)
    {
      (*(*v15 + 896))(v11);
      sub_101270900(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
      v16 = v14;
      sub_101270968(v9, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v4 + 16))(v6, v13, v3);
      sub_101270968(v13, type metadata accessor for CRLWPStorageCRDTData);
      v17 = CRAttributedString.attributedString.getter();
      (*(v4 + 8))(v6, v3);
      v18 = [v17 string];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        sub_100006370(0, &qword_1019FFDF0, off_10182F9F8);
        v23 = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
        if (!v23)
        {
LABEL_10:
          sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_10146C6B0;
          *(v27 + 32) = v19;
          *(v27 + 40) = v21;
          return;
        }

        v24 = v23;
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (!v25 || ([v25 range], Range<>.init(_:in:)(), (v26 & 1) != 0))
        {

          goto LABEL_10;
        }

        v28 = String.subscript.getter();
        v30 = v29;

        if ((v28 ^ v30) >> 14)
        {
          sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_10146C6B0;
          v32 = static String._fromSubstring(_:)();
          v34 = v33;

          *(v31 + 32) = v32;
          *(v31 + 40) = v34;

          return;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Class sub_101268F18(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_101268F9C(uint64_t a1)
{
  v2 = [*v1 generativePlaygroundStringsFor:a1];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_101268FF0(void *a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v14)
  {
    (*(*v14 + 896))(v11);
    sub_101270900(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_101270968(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v13, v3);
    sub_101270968(v13, type metadata accessor for CRLWPStorageCRDTData);
    v15 = CRAttributedString.attributedString.getter();
    (*(v4 + 8))(v6, v3);
    v16 = [v15 string];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_10;
    }

    sub_100006370(0, &qword_1019FFDF0, off_10182F9F8);
    v21 = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
    if (!v21)
    {
LABEL_9:
      sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10146C6B0;
      *(v25 + 32) = v17;
      *(v25 + 40) = v19;
      return;
    }

    v22 = v21;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23 || ([v23 range], Range<>.init(_:in:)(), (v24 & 1) != 0))
    {

      goto LABEL_9;
    }

    v26 = String.subscript.getter();
    v28 = v27;

    if (!((v26 ^ v28) >> 14))
    {

LABEL_10:

      return;
    }

    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10146C6B0;
    v30 = static String._fromSubstring(_:)();
    v32 = v31;

    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10126948C()
{
  v1 = [*v0 generativePlaygroundImageItems];
  type metadata accessor for CRLBoardItem(0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_1012694E4(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v207 = a2;
  v8 = type metadata accessor for ImagePlaygroundStyle();
  __chkstk_darwin(v8 - 8);
  v198 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImagePlaygroundConcept();
  v11 = *(v10 - 8);
  v222 = v10;
  v223 = v11;
  __chkstk_darwin(v10);
  v224 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v206 = &v191 - v14;
  v15 = type metadata accessor for PKDrawing();
  v196 = *(v15 - 8);
  v197 = v15;
  __chkstk_darwin(v15);
  v205 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v203 = *(v17 - 8);
  v204 = v17;
  __chkstk_darwin(v17);
  v201 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for DispatchQoS();
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v194 = *(v20 - 8);
  v195 = v20;
  __chkstk_darwin(v20);
  v193 = &v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;

  v23 = a4;
  v24 = [a1 editorController];
  v210 = v22;
  v211 = v24;
  v208 = v23;
  v209 = a3;
  if (!v24)
  {
    v66 = objc_opt_self();
    LODWORD(v67) = [v66 _atomicIncrementAssertCount];
    *&v227 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v227, "No editor controller", 20, 2u);
    StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
    v69 = String._bridgeToObjectiveC()();

    v70 = [v69 lastPathComponent];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_136;
    }

    goto LABEL_30;
  }

  v25 = [a1 selectionModelTranslator];
  if (!v25)
  {
    v89 = objc_opt_self();
    v90 = [v89 _atomicIncrementAssertCount];
    *&v227 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v227, "No selection model translator", 29, 2u);
    StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
    v92 = String._bridgeToObjectiveC()();

    v93 = [v92 lastPathComponent];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v97 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v90;
    v99 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v99;
    v100 = sub_1005CF04C();
    *(inited + 104) = v100;
    *(inited + 72) = v91;
    *(inited + 136) = &type metadata for String;
    v101 = sub_1000053B0();
    *(inited + 112) = v94;
    *(inited + 120) = v96;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v101;
    *(inited + 152) = 151;
    v102 = v227;
    *(inited + 216) = v99;
    *(inited + 224) = v100;
    *(inited + 192) = v102;
    v103 = v91;
    v104 = v102;
    v105 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v106 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v106, "No selection model translator", 29, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v107 = swift_allocObject();
    v107[2] = 8;
    v107[3] = 0;
    v107[4] = 0;
    v107[5] = 0;
    v108 = __VaListBuilder.va_list()();
    StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No selection model translator", 29, 2);
    v87 = String._bridgeToObjectiveC()();

    [v89 handleFailureInFunction:v85 file:v86 lineNumber:151 isFatal:0 format:v87 args:v108];

    goto LABEL_35;
  }

  v26 = v25;
  v27 = [v211 selectionPath];
  v192 = v26;
  v212 = v27;
  v28 = [v26 infosForSelectionPath:?];
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Set._bridgeToObjectiveC()().super.isa;
  v31 = [a1 topLevelZOrderedSiblingsOfInfos:isa];

  v221 = sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  v240 = _swiftEmptyArrayStorage;
  if (v32 >> 62)
  {
    goto LABEL_88;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v35 = _swiftEmptyArrayStorage;
  v218 = a1;
  if (v34)
  {
    v4 = 0;
    a1 = v33 & 0xC000000000000001;
    v36 = v33 & 0xFFFFFFFFFFFFFF8;
    v191 = v33;
    v220 = v33 + 32;
    v226 = (v29 + 56);
    v213 = xmmword_10146CA70;
    v216 = v34;
    v217 = v29;
    v214 = v33 & 0xFFFFFFFFFFFFFF8;
    v215 = v33 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v225 = v33;
        v37 = __OFADD__(v4++, 1);
        if (v37)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v4 >= *(v36 + 16))
        {
          goto LABEL_84;
        }

        v225 = *(v220 + 8 * v4);
        v33 = swift_unknownObjectRetain();
        v37 = __OFADD__(v4++, 1);
        if (v37)
        {
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v130 = v33;
          v34 = _CocoaArrayWrapper.endIndex.getter();
          v33 = v130;
          goto LABEL_5;
        }
      }

      v236 = v225;
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v235 = 0;
        v233 = 0u;
        v234 = 0u;
        v219 = objc_opt_self();
        v38 = [v219 _atomicIncrementAssertCount];
        v232 = [objc_allocWithZone(NSString) init];
        sub_100604538(v35, &v232, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v40 = String._bridgeToObjectiveC()();

        v41 = [v40 lastPathComponent];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v45 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v46 = swift_initStackObject();
        *(v46 + 16) = v213;
        *(v46 + 56) = &type metadata for Int32;
        *(v46 + 64) = &protocol witness table for Int32;
        *(v46 + 32) = v38;
        v47 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v46 + 96) = v47;
        v48 = sub_1005CF04C();
        *(v46 + 104) = v48;
        *(v46 + 72) = v39;
        *(v46 + 136) = &type metadata for String;
        v49 = sub_1000053B0();
        *(v46 + 112) = v42;
        *(v46 + 120) = v44;
        *(v46 + 176) = &type metadata for UInt;
        *(v46 + 144) = v49;
        *(v46 + 152) = 162;
        v50 = v232;
        *(v46 + 216) = v47;
        *(v46 + 224) = v48;
        *(v46 + 184) = &protocol witness table for UInt;
        *(v46 + 192) = v50;
        v51 = v39;
        v52 = v50;
        v53 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v54 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v55 = swift_allocObject();
        v55[2] = 8;
        v55[3] = 0;
        v55[4] = 0;
        v55[5] = 0;
        v56 = __VaListBuilder.va_list()();
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v57 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v58 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v59 = String._bridgeToObjectiveC()();

        [v219 handleFailureInFunction:v57 file:v58 lineNumber:162 isFatal:0 format:v59 args:v56];

        v34 = v216;
        v29 = v217;
        v36 = v214;
        a1 = v215;
        v35 = _swiftEmptyArrayStorage;
      }

      v237 = v233;
      v238 = v234;
      v239 = v235;
      if (*(&v234 + 1))
      {
        v227 = v237;
        v228 = v238;
        v229 = v239;
        if (*(v29 + 16))
        {
          v60 = v35;
          v61 = AnyHashable._rawHashValue(seed:)(*(v29 + 40));
          v62 = -1 << *(v29 + 32);
          v63 = v61 & ~v62;
          if ((*&v226[(v63 >> 3) & 0xFFFFFFFFFFFFFF8] >> v63))
          {
            v64 = ~v62;
            while (1)
            {
              sub_100064110(*(v29 + 48) + 40 * v63, &v237);
              v65 = static AnyHashable.== infix(_:_:)();
              sub_100064234(&v237);
              if (v65)
              {
                break;
              }

              v63 = (v63 + 1) & v64;
              if (((*&v226[(v63 >> 3) & 0xFFFFFFFFFFFFFF8] >> v63) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            sub_100064234(&v227);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v33 = specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_22:
            swift_unknownObjectRelease();
            v33 = sub_100064234(&v227);
          }

          v35 = v60;
        }

        else
        {
          swift_unknownObjectRelease();
          v33 = sub_100064234(&v227);
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v33 = sub_10000CAAC(&v237, &unk_101A27F50, &unk_1014C1B70);
      }

      if (v4 == v34)
      {
        v88 = v240;
        goto LABEL_39;
      }
    }
  }

  v88 = _swiftEmptyArrayStorage;
LABEL_39:

  *&v227 = _swiftEmptyArrayStorage;
  *&v237 = _swiftEmptyArrayStorage;
  if ((v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v111 = v33;
  }

  else
  {
    v111 = *(v88 + 16);
  }

  a1 = _swiftEmptyArrayStorage;
  if (!v111)
  {
    v122 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  a1 = 0;
  v112 = v88 & 0xC000000000000001;
  v113 = &off_1018DC000;
  v225 = v111;
  v226 = v88;
  v220 = v88 & 0xC000000000000001;
  while (v112)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v116 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_56;
    }

LABEL_50:
    v231 = v113[463];
    v117 = swift_dynamicCastObjCProtocolConditional();
    if (v117)
    {
      v4 = v117;
      swift_getObjectType();
      v118 = swift_conformsToProtocol2();
      if (v118)
      {
        v119 = v118;
        ObjectType = swift_getObjectType();
        *&v233 = v4;
        v121 = (*(v119 + 8))(ObjectType, v119);
        if (v121 >> 62)
        {
          v114 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v114 = v121;
        }

        sub_10079AD4C(v114);
        *&v233 = v4;
        v115 = (*(v119 + 16))(v212, ObjectType, v119);
        sub_100798D48(v115);
        v111 = v225;
        v88 = v226;
        v112 = v220;
        v113 = &off_1018DC000;
      }
    }

    v33 = swift_unknownObjectRelease();
    ++a1;
    if (v116 == v111)
    {
      goto LABEL_57;
    }
  }

  if (a1 >= *(v88 + 16))
  {
    goto LABEL_85;
  }

  v29 = *(v88 + 8 * a1 + 32);
  swift_unknownObjectRetain();
  v116 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_50;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  v72 = v227;
  v122 = v237;
  a1 = _swiftEmptyArrayStorage;
LABEL_59:

  *&v213 = *(v207 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController);
  dispatch thunk of ImagePlaygroundViewController.sourceImage.setter();
  v123 = v122[2];
  if (v123)
  {
    *&v227 = _swiftEmptyArrayStorage;
    sub_100776924(0, v123, 0);
    v124 = v227;
    v125 = v122 + 5;
    do
    {

      static ImagePlaygroundConcept.text(_:)();

      *&v227 = v124;
      v4 = *(v124 + 2);
      v126 = *(v124 + 3);
      if (v4 >= v126 >> 1)
      {
        sub_100776924((v126 > 1), v4 + 1, 1);
        v124 = v227;
      }

      *(v124 + 2) = v4 + 1;
      (*(v223 + 32))(&v124[((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v4], v224, v222);
      v125 += 2;
      --v123;
    }

    while (v123);

    a1 = _swiftEmptyArrayStorage;
  }

  else
  {

    v124 = _swiftEmptyArrayStorage;
  }

  *&v227 = _swiftEmptyArrayStorage;
  v207 = v72 >> 62;
  if (v72 >> 62)
  {
    v225 = v72 & 0xFFFFFFFFFFFFFF8;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v127 = v33;
    v224 = v124;
    if (v33)
    {
      goto LABEL_68;
    }

    goto LABEL_91;
  }

  v225 = v72 & 0xFFFFFFFFFFFFFF8;
  v127 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v224 = v124;
  if (!v127)
  {
LABEL_91:
    v214 = _swiftEmptyArrayStorage;
    goto LABEL_92;
  }

LABEL_68:
  v128 = 0;
  v29 = v72 & 0xC000000000000001;
  v214 = _swiftEmptyArrayStorage;
  do
  {
    v129 = v128;
    while (1)
    {
      if (v29)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v128 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v129 >= *(v225 + 16))
        {
          goto LABEL_87;
        }

        v33 = swift_unknownObjectRetain();
        v128 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_86;
        }
      }

      type metadata accessor for CRLFreehandDrawingItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      v33 = swift_unknownObjectRelease();
      ++v129;
      if (v128 == v127)
      {
        goto LABEL_92;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v33 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v214 = v227;
  }

  while (v128 != v127);
LABEL_92:
  *&v227 = _swiftEmptyArrayStorage;
  v131 = v214;
  if (v214 >> 62)
  {
    v184 = v214;
    v68 = _CocoaArrayWrapper.endIndex.getter();
    v131 = v184;
  }

  else
  {
    v68 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v218;
  v220 = v72;
  LODWORD(v67) = v224;
  if (!v68)
  {
    v139 = _swiftEmptyArrayStorage;
LABEL_120:

    if (v207)
    {
      v140 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v140 = *(v225 + 16);
    }

    if ((v139 & 0x8000000000000000) != 0 || (v139 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < v140)
      {
        goto LABEL_126;
      }

      v141 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v141 = *(v139 + 16);
      if (v141 < v140)
      {
LABEL_126:

        v142 = v213;
        dispatch thunk of ImagePlaygroundViewController.concepts.setter();
        v143 = [v66 board];
        if (v143)
        {
          v144 = v143;
          v145 = [objc_allocWithZone(CRLCanvasImager) initWithBoard:v143];
          v146 = [objc_opt_self() whiteColor];
          v226 = v144;
          v147 = v146;
          [v145 setBackgroundColor:v146];

          v148 = Array._bridgeToObjectiveC()().super.isa;

          [v145 setInfos:v148];

          sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
          v150 = v193;
          v149 = v194;
          v151 = v195;
          (*(v194 + 104))(v193, enum case for DispatchQoS.QoSClass.default(_:), v195);
          v225 = static OS_dispatch_queue.global(qos:)();
          (*(v149 + 8))(v150, v151);
          v152 = swift_allocObject();
          v152[2] = v145;
          v152[3] = v142;
          v153 = v210;
          v152[4] = sub_101270A30;
          v152[5] = v153;
          v229 = sub_101270A4C;
          v230 = v152;
          *&v227 = _NSConcreteStackBlock;
          *(&v227 + 1) = *"";
          *&v228 = sub_100007638;
          *(&v228 + 1) = &unk_1018B9CE8;
          v154 = _Block_copy(&v227);
          v155 = v145;
          v156 = v142;

          v157 = v199;
          static DispatchQoS.unspecified.getter();
          *&v237 = _swiftEmptyArrayStorage;
          sub_1005D91D8();
          sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
          sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
          v158 = v201;
          v159 = v204;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v160 = v225;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v154);
          (*(v203 + 8))(v158, v159);
          (*(v200 + 8))(v157, v202);

          goto LABEL_128;
        }

        v161 = objc_opt_self();
        v162 = [v161 _atomicIncrementAssertCount];
        *&v227 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v227, "No board", 8, 2u);
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v163 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v164 = String._bridgeToObjectiveC()();

        v165 = [v164 lastPathComponent];

        v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v167;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v169 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_10146CA70;
        *(v170 + 56) = &type metadata for Int32;
        *(v170 + 64) = &protocol witness table for Int32;
        *(v170 + 32) = v162;
        v171 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v170 + 96) = v171;
        v172 = sub_1005CF04C();
        *(v170 + 104) = v172;
        *(v170 + 72) = v163;
        *(v170 + 136) = &type metadata for String;
        v173 = sub_1000053B0();
        *(v170 + 112) = v166;
        *(v170 + 120) = v168;
        *(v170 + 176) = &type metadata for UInt;
        *(v170 + 184) = &protocol witness table for UInt;
        *(v170 + 144) = v173;
        *(v170 + 152) = 201;
        v174 = v227;
        *(v170 + 216) = v171;
        *(v170 + 224) = v172;
        *(v170 + 192) = v174;
        v175 = v163;
        v176 = v174;
        v177 = static os_log_type_t.error.getter();
        sub_100005404(v169, &_mh_execute_header, v177, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v170);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v178 = static os_log_type_t.error.getter();
        sub_100005404(v169, &_mh_execute_header, v178, "No board", 8, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v179 = swift_allocObject();
        v179[2] = 8;
        v179[3] = 0;
        v179[4] = 0;
        v179[5] = 0;
        v180 = __VaListBuilder.va_list()();
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v181 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v182 = String._bridgeToObjectiveC()();

        StaticString.description.getter("No board", 8, 2);
        v183 = String._bridgeToObjectiveC()();

        [v161 handleFailureInFunction:v181 file:v182 lineNumber:201 isFatal:0 format:v183 args:v180];

        goto LABEL_148;
      }
    }

    if (v141)
    {
      type metadata accessor for CRLFreehandDrawingItem(0);
      sub_100B434D0(v139);

      static ImagePlaygroundConcept.drawing(_:)();
      v185 = v224;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_100B36FD0(0, v185[2] + 1, 1, v185);
      }

      v187 = v185[2];
      v186 = v185[3];
      v188 = v185;
      if (v187 >= v186 >> 1)
      {
        v188 = sub_100B36FD0((v186 > 1), v187 + 1, 1, v185);
      }

      v188[2] = v187 + 1;
      (*(v223 + 32))(v188 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v187, v206, v222);
      static ImagePlaygroundStyle.sketch.getter();
      dispatch thunk of ImagePlaygroundViewController.selectedGenerationStyle.setter();
      (*(v196 + 8))(v205, v197);
    }

    else
    {
    }

    dispatch thunk of ImagePlaygroundViewController.concepts.setter();

LABEL_148:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v190 = Strong;
      [Strong presentViewController:*&v208[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] animated:1 completion:0];
    }

    else
    {
    }

    return;
  }

  v132 = 0;
  v219 = (v131 & 0xC000000000000001);
  v216 = v131 + 32;
  v217 = v131 & 0xFFFFFFFFFFFFFF8;
  v215 = v68;
  while (1)
  {
    if (v219)
    {
      v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v132 >= *(v217 + 16))
      {
        goto LABEL_135;
      }

      v133 = *(v216 + 8 * v132);
    }

    v67 = v133;
    v37 = __OFADD__(v132++, 1);
    if (v37)
    {
      break;
    }

    v134 = sub_1005F387C();
    v4 = v134;
    v226 = v67;
    if (v134 >> 62)
    {
      v135 = _CocoaArrayWrapper.endIndex.getter();
      if (v135)
      {
LABEL_104:
        v136 = 0;
        v68 = (v4 & 0xC000000000000001);
        v72 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v68)
          {
            v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v136 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_133;
            }

            v137 = *(v4 + 8 * v136 + 32);
          }

          v66 = v137;
          v138 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
            break;
          }

          type metadata accessor for CRLFreehandDrawingShapeItem(0);
          if (swift_dynamicCastClass())
          {
            LODWORD(v67) = sub_100C34D80();

            if (v67)
            {

              goto LABEL_97;
            }
          }

          else
          {
          }

          ++v136;
          if (v138 == v135)
          {
            goto LABEL_96;
          }
        }

        __break(1u);
LABEL_133:
        __break(1u);
        break;
      }
    }

    else
    {
      v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v135)
      {
        goto LABEL_104;
      }
    }

LABEL_96:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_97:
    v68 = v215;
    v66 = v218;
    v72 = v220;
    LODWORD(v67) = v224;
    if (v132 == v215)
    {
      v139 = v227;
      goto LABEL_120;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  swift_once();
LABEL_30:
  v73 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_10146CA70;
  *(v74 + 56) = &type metadata for Int32;
  *(v74 + 64) = &protocol witness table for Int32;
  *(v74 + 32) = v67;
  v75 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v74 + 96) = v75;
  v76 = sub_1005CF04C();
  *(v74 + 104) = v76;
  *(v74 + 72) = v68;
  *(v74 + 136) = &type metadata for String;
  v77 = sub_1000053B0();
  *(v74 + 112) = v4;
  *(v74 + 120) = v72;
  *(v74 + 176) = &type metadata for UInt;
  *(v74 + 184) = &protocol witness table for UInt;
  *(v74 + 144) = v77;
  *(v74 + 152) = 150;
  v78 = v227;
  *(v74 + 216) = v75;
  *(v74 + 224) = v76;
  *(v74 + 192) = v78;
  v79 = v68;
  v80 = v78;
  v81 = static os_log_type_t.error.getter();
  sub_100005404(v73, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v74);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v82 = static os_log_type_t.error.getter();
  sub_100005404(v73, &_mh_execute_header, v82, "No editor controller", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v83 = swift_allocObject();
  v83[2] = 8;
  v83[3] = 0;
  v83[4] = 0;
  v83[5] = 0;
  v84 = __VaListBuilder.va_list()();
  StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
  v85 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
  v86 = String._bridgeToObjectiveC()();

  StaticString.description.getter("No editor controller", 20, 2);
  v87 = String._bridgeToObjectiveC()();

  [v66 handleFailureInFunction:v85 file:v86 lineNumber:150 isFatal:0 format:v87 args:v84];
LABEL_35:

  swift_beginAccess();
  v109 = swift_unknownObjectWeakLoadStrong();
  if (v109)
  {
    v110 = v109;
    [v109 presentViewController:*&v208[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] animated:1 completion:0];

    return;
  }

LABEL_128:
}

double sub_10126B4EC(uint64_t a1, void (*a2)(char *, Freeform::SyncEvent::FetchedRecordZoneChanges::Deletion (__swiftcall *)(CKRecordID recordID, Swift::String recordType), uint64_t), uint64_t a3)
{
  v72 = a3;
  v5 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v5 - 8);
  v7 = &v68 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v68 - v12;
  __chkstk_darwin(v13);
  v73 = &v68 - v14;
  __chkstk_darwin(v15);
  v81 = &v68 - v16;
  v18 = __chkstk_darwin(v17);
  v20 = &v68 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v74 = v7;
    v70 = a2;
    v69 = v9;
    v24 = *(v9 + 16);
    v22 = v9 + 16;
    v23 = v24;
    v80 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v25 = a1 + v80;
    v26 = *(v22 + 56);
    v75 = (v22 - 8);
    v83 = (v22 + 16);
    v82 = _swiftEmptyArrayStorage;
    v27 = v25;
    v28 = v21;
    v76 = v22;
    v79 = v24;
    v78 = v26;
    v24(v20, v25, v8, v18);
    while (1)
    {
      if (URL.startAccessingSecurityScopedResource()())
      {
        v30 = *v83;
        (*v83)(v81, v20, v8);
        v31 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776944(0, v31[2] + 1, 1);
          v31 = v87;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          sub_100776944((v33 > 1), v34 + 1, 1);
          v31 = v87;
        }

        v31[2] = v34 + 1;
        v82 = v31;
        v26 = v78;
        v30(v31 + v80 + v34 * v78, v81, v8);
        v23 = v79;
      }

      else
      {
        (*v75)(v20, v8);
      }

      v27 += v26;
      if (!--v28)
      {
        break;
      }

      v23(v20, v27, v8, v29);
    }

    v35 = objc_allocWithZone(CRLTemporaryDirectory);
    v36 = String._bridgeToObjectiveC()();
    v87 = 0;
    v37 = [v35 initWithSignature:v36 error:&v87];

    v38 = v87;
    if (v37)
    {
      v39 = objc_opt_self();
      v40 = v38;
      v81 = [v39 defaultManager];
      v41 = (v69 + 48);
      v42 = _swiftEmptyArrayStorage;
      v43 = v74;
      do
      {
        sub_101267B90(v25, v37, v81, v43);
        if ((*v41)(v43, 1, v8) == 1)
        {
          sub_10000CAAC(v43, &unk_1019F33C0, &unk_101468A60);
        }

        else
        {
          v44 = v43;
          v45 = *v83;
          v46 = v73;
          (*v83)(v73, v44, v8);
          v45(v77, v46, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_100B364FC(0, *(v42 + 2) + 1, 1, v42);
          }

          v48 = *(v42 + 2);
          v47 = *(v42 + 3);
          if (v48 >= v47 >> 1)
          {
            v42 = sub_100B364FC((v47 > 1), v48 + 1, 1, v42);
          }

          *(v42 + 2) = v48 + 1;
          v26 = v78;
          v45(&v42[v80 + v48 * v78], v77, v8);
          v23 = v79;
          v43 = v74;
        }

        v25 += v26;
        --v21;
      }

      while (v21);
      v49 = swift_allocObject();
      *(v49 + 16) = v37;
      v50 = v37;
      v70(v42, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), v49);

      v51 = v71;
    }

    else
    {
      v55 = v87;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v51 = v71;
      if (qword_1019F21A0 != -1)
      {
        swift_once();
      }

      v56 = static OS_os_log.crlInsertMedia;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      swift_getErrorValue();
      v58 = Error.publicDescription.getter(v85, v86);
      v60 = v59;
      *(inited + 56) = &type metadata for String;
      v61 = sub_1000053B0();
      *(inited + 64) = v61;
      *(inited + 32) = v58;
      *(inited + 40) = v60;
      swift_getErrorValue();
      v62 = Error.fullDescription.getter(v84);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v61;
      *(inited + 72) = v62;
      *(inited + 80) = v63;
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v56, &_mh_execute_header, v64, "Error creating temporary directory: %{public}@ <%@>", 51, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v70(_swiftEmptyArrayStorage, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);

      v23 = v79;
      v26 = v78;
    }

    v65 = v82[2];
    v66 = v75;
    if (v65)
    {
      v67 = v82 + v80;
      do
      {
        (v23)(v51, v67, v8);
        URL.stopAccessingSecurityScopedResource()();
        (*v66)(v51, v8);
        v67 += v26;
        --v65;
      }

      while (v65);
    }
  }

  else
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.crlInsertMedia;
    v53 = static os_log_type_t.default.getter();
    sub_100005404(v52, &_mh_execute_header, v53, "No URLs.", 8, 2, _swiftEmptyArrayStorage);
    a2(_swiftEmptyArrayStorage, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
  }

  return result;
}

unint64_t sub_10126BDEC@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = CGImageSourceCreateWithURL(v1, 0);

  if (v3)
  {
    v4 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
    if (v4)
    {
      v5 = v4;
      if ([(__CFDictionary *)v4 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCDictionary])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      v15[0] = v13;
      v15[1] = v14;
      if (*(&v14 + 1))
      {
        v6 = sub_100006370(0, &unk_101A2F5C0, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          sub_1005B981C(&qword_101A12AA8, &unk_10149FAD0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 72) = v6;
          *(inited + 40) = v8;
          *(inited + 48) = v12;
          v9 = v12;
          v10 = sub_10000BCE4(inited);
          swift_setDeallocating();
          sub_10000CAAC(inited + 32, &qword_101A2F5D0, &qword_10149E8C0);

          return v10;
        }
      }

      else
      {
        sub_10000CAAC(v15, &unk_1019F4D00, &unk_10146E7F0);
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10126BFAC(uint64_t a1)
{
  v2 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_101270900(v4, v7, type metadata accessor for CRLAssetData);
    sub_101270968(v4, type metadata accessor for CRLImageItemAssetData);
    v15 = *(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v16 = *&v15[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v16 + 16));
    v17 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v18 = *&v15[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v18)
    {
      v19 = *&v15[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v20 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v21 = v15;
      v22 = sub_10001F1A0(v21);

      v23 = *&v15[v17];
      *&v15[v17] = v22;
      v19 = v22;

      v18 = 0;
    }

    v24 = *(v16 + 16);
    v25 = v18;
    os_unfair_lock_unlock(v24);
    sub_10108CAF4(v7, 0, 3, 0, 0, v10);

    sub_101270968(v7, type metadata accessor for CRLAssetData);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000CAAC(v10, &unk_1019F33C0, &unk_101468A60);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_10126BDEC(v26);
      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10126C374(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v209 = a2;
  v8 = type metadata accessor for ImagePlaygroundStyle();
  __chkstk_darwin(v8 - 8);
  v200 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImagePlaygroundConcept();
  v11 = *(v10 - 8);
  v224 = v10;
  v225 = v11;
  __chkstk_darwin(v10);
  v226 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v208 = &v193 - v14;
  v15 = type metadata accessor for PKDrawing();
  v198 = *(v15 - 8);
  v199 = v15;
  __chkstk_darwin(v15);
  v207 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v205 = *(v17 - 8);
  v206 = v17;
  __chkstk_darwin(v17);
  v203 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for DispatchQoS();
  v202 = *(v204 - 8);
  __chkstk_darwin(v204);
  v201 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v196 = *(v20 - 8);
  v197 = v20;
  __chkstk_darwin(v20);
  v195 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;

  v23 = a4;
  v24 = [a1 editorController];
  v212 = v22;
  v213 = v24;
  v210 = v23;
  v211 = a3;
  if (!v24)
  {
    v66 = objc_opt_self();
    LODWORD(v67) = [v66 _atomicIncrementAssertCount];
    *&v229 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v229, "No editor controller", 20, 2u);
    StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
    v69 = String._bridgeToObjectiveC()();

    v70 = [v69 lastPathComponent];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_136;
    }

    goto LABEL_30;
  }

  v25 = [a1 selectionModelTranslator];
  if (!v25)
  {
    v89 = objc_opt_self();
    v90 = [v89 _atomicIncrementAssertCount];
    *&v229 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v229, "No selection model translator", 29, 2u);
    StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
    v92 = String._bridgeToObjectiveC()();

    v93 = [v92 lastPathComponent];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v97 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v90;
    v99 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v99;
    v100 = sub_1005CF04C();
    *(inited + 104) = v100;
    *(inited + 72) = v91;
    *(inited + 136) = &type metadata for String;
    v101 = sub_1000053B0();
    *(inited + 112) = v94;
    *(inited + 120) = v96;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v101;
    *(inited + 152) = 151;
    v102 = v229;
    *(inited + 216) = v99;
    *(inited + 224) = v100;
    *(inited + 192) = v102;
    v103 = v91;
    v104 = v102;
    v105 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v106 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v106, "No selection model translator", 29, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v107 = swift_allocObject();
    v107[2] = 8;
    v107[3] = 0;
    v107[4] = 0;
    v107[5] = 0;
    v108 = __VaListBuilder.va_list()();
    StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No selection model translator", 29, 2);
    v87 = String._bridgeToObjectiveC()();

    [v89 handleFailureInFunction:v85 file:v86 lineNumber:151 isFatal:0 format:v87 args:v108];

    goto LABEL_35;
  }

  v26 = v25;
  v27 = [v213 selectionPath];
  v194 = v26;
  v214 = v27;
  v28 = [v26 infosForSelectionPath:?];
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Set._bridgeToObjectiveC()().super.isa;
  v31 = [a1 topLevelZOrderedSiblingsOfInfos:isa];

  v223 = sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  v242 = _swiftEmptyArrayStorage;
  if (v32 >> 62)
  {
    goto LABEL_88;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v35 = _swiftEmptyArrayStorage;
  v220 = a1;
  if (v34)
  {
    v4 = 0;
    a1 = v33 & 0xC000000000000001;
    v36 = v33 & 0xFFFFFFFFFFFFFF8;
    v193 = v33;
    v222 = v33 + 32;
    v228 = (v29 + 56);
    v215 = xmmword_10146CA70;
    v218 = v34;
    v219 = v29;
    v216 = v33 & 0xFFFFFFFFFFFFFF8;
    v217 = v33 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v227 = v33;
        v37 = __OFADD__(v4++, 1);
        if (v37)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v4 >= *(v36 + 16))
        {
          goto LABEL_84;
        }

        v227 = *(v222 + 8 * v4);
        v33 = swift_unknownObjectRetain();
        v37 = __OFADD__(v4++, 1);
        if (v37)
        {
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v131 = v33;
          v34 = _CocoaArrayWrapper.endIndex.getter();
          v33 = v131;
          goto LABEL_5;
        }
      }

      v238 = v227;
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v237 = 0;
        v235 = 0u;
        v236 = 0u;
        v221 = objc_opt_self();
        v38 = [v221 _atomicIncrementAssertCount];
        v234 = [objc_allocWithZone(NSString) init];
        sub_100604538(v35, &v234, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v40 = String._bridgeToObjectiveC()();

        v41 = [v40 lastPathComponent];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v45 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v46 = swift_initStackObject();
        *(v46 + 16) = v215;
        *(v46 + 56) = &type metadata for Int32;
        *(v46 + 64) = &protocol witness table for Int32;
        *(v46 + 32) = v38;
        v47 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v46 + 96) = v47;
        v48 = sub_1005CF04C();
        *(v46 + 104) = v48;
        *(v46 + 72) = v39;
        *(v46 + 136) = &type metadata for String;
        v49 = sub_1000053B0();
        *(v46 + 112) = v42;
        *(v46 + 120) = v44;
        *(v46 + 176) = &type metadata for UInt;
        *(v46 + 144) = v49;
        *(v46 + 152) = 162;
        v50 = v234;
        *(v46 + 216) = v47;
        *(v46 + 224) = v48;
        *(v46 + 184) = &protocol witness table for UInt;
        *(v46 + 192) = v50;
        v51 = v39;
        v52 = v50;
        v53 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v54 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v55 = swift_allocObject();
        v55[2] = 8;
        v55[3] = 0;
        v55[4] = 0;
        v55[5] = 0;
        v56 = __VaListBuilder.va_list()();
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v57 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v58 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v59 = String._bridgeToObjectiveC()();

        [v221 handleFailureInFunction:v57 file:v58 lineNumber:162 isFatal:0 format:v59 args:v56];

        v34 = v218;
        v29 = v219;
        v36 = v216;
        a1 = v217;
        v35 = _swiftEmptyArrayStorage;
      }

      v239 = v235;
      v240 = v236;
      v241 = v237;
      if (*(&v236 + 1))
      {
        v229 = v239;
        v230 = v240;
        v231 = v241;
        if (*(v29 + 16))
        {
          v60 = v35;
          v61 = AnyHashable._rawHashValue(seed:)(*(v29 + 40));
          v62 = -1 << *(v29 + 32);
          v63 = v61 & ~v62;
          if ((*&v228[(v63 >> 3) & 0xFFFFFFFFFFFFFF8] >> v63))
          {
            v64 = ~v62;
            while (1)
            {
              sub_100064110(*(v29 + 48) + 40 * v63, &v239);
              v65 = static AnyHashable.== infix(_:_:)();
              sub_100064234(&v239);
              if (v65)
              {
                break;
              }

              v63 = (v63 + 1) & v64;
              if (((*&v228[(v63 >> 3) & 0xFFFFFFFFFFFFFF8] >> v63) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            sub_100064234(&v229);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v33 = specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_22:
            swift_unknownObjectRelease();
            v33 = sub_100064234(&v229);
          }

          v35 = v60;
        }

        else
        {
          swift_unknownObjectRelease();
          v33 = sub_100064234(&v229);
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v33 = sub_10000CAAC(&v239, &unk_101A27F50, &unk_1014C1B70);
      }

      if (v4 == v34)
      {
        v88 = v242;
        goto LABEL_39;
      }
    }
  }

  v88 = _swiftEmptyArrayStorage;
LABEL_39:

  *&v229 = _swiftEmptyArrayStorage;
  *&v239 = _swiftEmptyArrayStorage;
  if ((v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v112 = v33;
  }

  else
  {
    v112 = *(v88 + 16);
  }

  a1 = _swiftEmptyArrayStorage;
  if (!v112)
  {
    v123 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  a1 = 0;
  v113 = v88 & 0xC000000000000001;
  v114 = &off_1018DC000;
  v227 = v112;
  v228 = v88;
  v222 = v88 & 0xC000000000000001;
  while (v113)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v117 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_56;
    }

LABEL_50:
    v233 = v114[463];
    v118 = swift_dynamicCastObjCProtocolConditional();
    if (v118)
    {
      v4 = v118;
      swift_getObjectType();
      v119 = swift_conformsToProtocol2();
      if (v119)
      {
        v120 = v119;
        ObjectType = swift_getObjectType();
        *&v235 = v4;
        v122 = (*(v120 + 8))(ObjectType, v120);
        if (v122 >> 62)
        {
          v115 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v115 = v122;
        }

        sub_10079AD4C(v115);
        *&v235 = v4;
        v116 = (*(v120 + 16))(v214, ObjectType, v120);
        sub_100798D48(v116);
        v112 = v227;
        v88 = v228;
        v113 = v222;
        v114 = &off_1018DC000;
      }
    }

    v33 = swift_unknownObjectRelease();
    ++a1;
    if (v117 == v112)
    {
      goto LABEL_57;
    }
  }

  if (a1 >= *(v88 + 16))
  {
    goto LABEL_85;
  }

  v29 = *(v88 + 8 * a1 + 32);
  swift_unknownObjectRetain();
  v117 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_50;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  v72 = v229;
  v123 = v239;
  a1 = _swiftEmptyArrayStorage;
LABEL_59:

  *&v215 = *(v209 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController);
  dispatch thunk of ImagePlaygroundViewController.sourceImage.setter();
  v124 = v123[2];
  if (v124)
  {
    *&v229 = _swiftEmptyArrayStorage;
    sub_100776924(0, v124, 0);
    v125 = v229;
    v126 = v123 + 5;
    do
    {

      static ImagePlaygroundConcept.text(_:)();

      *&v229 = v125;
      v4 = *(v125 + 2);
      v127 = *(v125 + 3);
      if (v4 >= v127 >> 1)
      {
        sub_100776924((v127 > 1), v4 + 1, 1);
        v125 = v229;
      }

      *(v125 + 2) = v4 + 1;
      (*(v225 + 32))(&v125[((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v4], v226, v224);
      v126 += 2;
      --v124;
    }

    while (v124);

    a1 = _swiftEmptyArrayStorage;
  }

  else
  {

    v125 = _swiftEmptyArrayStorage;
  }

  *&v229 = _swiftEmptyArrayStorage;
  v209 = v72 >> 62;
  if (v72 >> 62)
  {
    v227 = v72 & 0xFFFFFFFFFFFFFF8;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v128 = v33;
    v226 = v125;
    if (v33)
    {
      goto LABEL_68;
    }

    goto LABEL_91;
  }

  v227 = v72 & 0xFFFFFFFFFFFFFF8;
  v128 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v226 = v125;
  if (!v128)
  {
LABEL_91:
    v216 = _swiftEmptyArrayStorage;
    goto LABEL_92;
  }

LABEL_68:
  v129 = 0;
  v29 = v72 & 0xC000000000000001;
  v216 = _swiftEmptyArrayStorage;
  do
  {
    v130 = v129;
    while (1)
    {
      if (v29)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v129 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v130 >= *(v227 + 16))
        {
          goto LABEL_87;
        }

        v33 = swift_unknownObjectRetain();
        v129 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_86;
        }
      }

      type metadata accessor for CRLFreehandDrawingItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      v33 = swift_unknownObjectRelease();
      ++v130;
      if (v129 == v128)
      {
        goto LABEL_92;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v33 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v216 = v229;
  }

  while (v129 != v128);
LABEL_92:
  *&v229 = _swiftEmptyArrayStorage;
  v132 = v216;
  if (v216 >> 62)
  {
    v185 = v216;
    v68 = _CocoaArrayWrapper.endIndex.getter();
    v132 = v185;
  }

  else
  {
    v68 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v220;
  v222 = v72;
  LODWORD(v67) = v226;
  if (!v68)
  {
    v140 = _swiftEmptyArrayStorage;
LABEL_120:

    if (v209)
    {
      v141 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v141 = *(v227 + 16);
    }

    if ((v140 & 0x8000000000000000) != 0 || (v140 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < v141)
      {
        goto LABEL_126;
      }

      v142 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v142 = *(v140 + 16);
      if (v142 < v141)
      {
LABEL_126:

        v143 = v215;
        dispatch thunk of ImagePlaygroundViewController.concepts.setter();
        v144 = [v66 board];
        if (v144)
        {
          v145 = v144;
          v146 = [objc_allocWithZone(CRLCanvasImager) initWithBoard:v144];
          v147 = [objc_opt_self() whiteColor];
          v228 = v145;
          v148 = v147;
          [v146 setBackgroundColor:v147];

          v149 = Array._bridgeToObjectiveC()().super.isa;

          [v146 setInfos:v149];

          sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
          v151 = v195;
          v150 = v196;
          v152 = v197;
          (*(v196 + 104))(v195, enum case for DispatchQoS.QoSClass.default(_:), v197);
          v227 = static OS_dispatch_queue.global(qos:)();
          (*(v150 + 8))(v151, v152);
          v153 = swift_allocObject();
          v153[2] = v146;
          v153[3] = v143;
          v154 = v212;
          v153[4] = sub_1012709C8;
          v153[5] = v154;
          v231 = sub_1012709D0;
          v232 = v153;
          *&v229 = _NSConcreteStackBlock;
          *(&v229 + 1) = *"";
          *&v230 = sub_100007638;
          *(&v230 + 1) = &unk_1018B9BA8;
          v155 = _Block_copy(&v229);
          v156 = v146;
          v157 = v143;

          v158 = v201;
          static DispatchQoS.unspecified.getter();
          *&v239 = _swiftEmptyArrayStorage;
          sub_1005D91D8();
          sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
          sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
          v159 = v203;
          v160 = v206;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v161 = v227;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v155);
          (*(v205 + 8))(v159, v160);
          (*(v202 + 8))(v158, v204);

          goto LABEL_128;
        }

        v162 = objc_opt_self();
        v163 = [v162 _atomicIncrementAssertCount];
        *&v229 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v229, "No board", 8, 2u);
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v164 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v165 = String._bridgeToObjectiveC()();

        v166 = [v165 lastPathComponent];

        v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v168;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v170 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v171 = swift_allocObject();
        *(v171 + 16) = xmmword_10146CA70;
        *(v171 + 56) = &type metadata for Int32;
        *(v171 + 64) = &protocol witness table for Int32;
        *(v171 + 32) = v163;
        v172 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v171 + 96) = v172;
        v173 = sub_1005CF04C();
        *(v171 + 104) = v173;
        *(v171 + 72) = v164;
        *(v171 + 136) = &type metadata for String;
        v174 = sub_1000053B0();
        *(v171 + 112) = v167;
        *(v171 + 120) = v169;
        *(v171 + 176) = &type metadata for UInt;
        *(v171 + 184) = &protocol witness table for UInt;
        *(v171 + 144) = v174;
        *(v171 + 152) = 201;
        v175 = v229;
        *(v171 + 216) = v172;
        *(v171 + 224) = v173;
        *(v171 + 192) = v175;
        v176 = v164;
        v177 = v175;
        v178 = static os_log_type_t.error.getter();
        sub_100005404(v170, &_mh_execute_header, v178, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v171);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v179 = static os_log_type_t.error.getter();
        sub_100005404(v170, &_mh_execute_header, v179, "No board", 8, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v180 = swift_allocObject();
        v180[2] = 8;
        v180[3] = 0;
        v180[4] = 0;
        v180[5] = 0;
        v181 = __VaListBuilder.va_list()();
        StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
        v182 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
        v183 = String._bridgeToObjectiveC()();

        StaticString.description.getter("No board", 8, 2);
        v184 = String._bridgeToObjectiveC()();

        [v162 handleFailureInFunction:v182 file:v183 lineNumber:201 isFatal:0 format:v184 args:v181];

        goto LABEL_148;
      }
    }

    if (v142)
    {
      type metadata accessor for CRLFreehandDrawingItem(0);
      sub_100B434D0(v140);

      static ImagePlaygroundConcept.drawing(_:)();
      v186 = v226;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_100B36FD0(0, v186[2] + 1, 1, v186);
      }

      v188 = v186[2];
      v187 = v186[3];
      v189 = v186;
      if (v188 >= v187 >> 1)
      {
        v189 = sub_100B36FD0((v187 > 1), v188 + 1, 1, v186);
      }

      v189[2] = v188 + 1;
      (*(v225 + 32))(v189 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v188, v208, v224);
      static ImagePlaygroundStyle.sketch.getter();
      dispatch thunk of ImagePlaygroundViewController.selectedGenerationStyle.setter();
      (*(v198 + 8))(v207, v199);
    }

    else
    {
    }

    dispatch thunk of ImagePlaygroundViewController.concepts.setter();

LABEL_148:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v191 = Strong;
      v192 = *(Strong + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController);

      [v192 presentViewController:*&v210[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] animated:1 completion:0];
    }

    else
    {
    }

    return;
  }

  v133 = 0;
  v221 = (v132 & 0xC000000000000001);
  v218 = v132 + 32;
  v219 = v132 & 0xFFFFFFFFFFFFFF8;
  v217 = v68;
  while (1)
  {
    if (v221)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v133 >= *(v219 + 16))
      {
        goto LABEL_135;
      }

      v134 = *(v218 + 8 * v133);
    }

    v67 = v134;
    v37 = __OFADD__(v133++, 1);
    if (v37)
    {
      break;
    }

    v135 = sub_1005F387C();
    v4 = v135;
    v228 = v67;
    if (v135 >> 62)
    {
      v136 = _CocoaArrayWrapper.endIndex.getter();
      if (v136)
      {
LABEL_104:
        v137 = 0;
        v68 = (v4 & 0xC000000000000001);
        v72 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v68)
          {
            v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v137 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_133;
            }

            v138 = *(v4 + 8 * v137 + 32);
          }

          v66 = v138;
          v139 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            break;
          }

          type metadata accessor for CRLFreehandDrawingShapeItem(0);
          if (swift_dynamicCastClass())
          {
            LODWORD(v67) = sub_100C34D80();

            if (v67)
            {

              goto LABEL_97;
            }
          }

          else
          {
          }

          ++v137;
          if (v139 == v136)
          {
            goto LABEL_96;
          }
        }

        __break(1u);
LABEL_133:
        __break(1u);
        break;
      }
    }

    else
    {
      v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v136)
      {
        goto LABEL_104;
      }
    }

LABEL_96:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_97:
    v68 = v217;
    v66 = v220;
    v72 = v222;
    LODWORD(v67) = v226;
    if (v133 == v217)
    {
      v140 = v229;
      goto LABEL_120;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  swift_once();
LABEL_30:
  v73 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_10146CA70;
  *(v74 + 56) = &type metadata for Int32;
  *(v74 + 64) = &protocol witness table for Int32;
  *(v74 + 32) = v67;
  v75 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v74 + 96) = v75;
  v76 = sub_1005CF04C();
  *(v74 + 104) = v76;
  *(v74 + 72) = v68;
  *(v74 + 136) = &type metadata for String;
  v77 = sub_1000053B0();
  *(v74 + 112) = v4;
  *(v74 + 120) = v72;
  *(v74 + 176) = &type metadata for UInt;
  *(v74 + 184) = &protocol witness table for UInt;
  *(v74 + 144) = v77;
  *(v74 + 152) = 150;
  v78 = v229;
  *(v74 + 216) = v75;
  *(v74 + 224) = v76;
  *(v74 + 192) = v78;
  v79 = v68;
  v80 = v78;
  v81 = static os_log_type_t.error.getter();
  sub_100005404(v73, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v74);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v82 = static os_log_type_t.error.getter();
  sub_100005404(v73, &_mh_execute_header, v82, "No editor controller", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v83 = swift_allocObject();
  v83[2] = 8;
  v83[3] = 0;
  v83[4] = 0;
  v83[5] = 0;
  v84 = __VaListBuilder.va_list()();
  StaticString.description.getter("configureViewController(for:completion:)", 40, 2);
  v85 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGenerativePlaygroundHelper.swift", 96, 2);
  v86 = String._bridgeToObjectiveC()();

  StaticString.description.getter("No editor controller", 20, 2);
  v87 = String._bridgeToObjectiveC()();

  [v66 handleFailureInFunction:v85 file:v86 lineNumber:150 isFatal:0 format:v87 args:v84];
LABEL_35:

  swift_beginAccess();
  v109 = swift_unknownObjectWeakLoadStrong();
  if (v109)
  {
    v110 = v109;
    v111 = *(v109 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController);

    [v111 presentViewController:*&v210[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] animated:1 completion:0];

    return;
  }

LABEL_128:
}