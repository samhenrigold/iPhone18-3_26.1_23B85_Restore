unint64_t sub_1008A1C24(char a1)
{
  result = 0x7274536465657073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x696E556465657073;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6972745374737567;
      break;
    case 5:
      result = 0x756C615674737567;
      break;
    case 6:
      result = 0x74696E5574737567;
      break;
    case 7:
      result = 0x6562614C74737567;
      break;
    case 8:
      result = 0x6F69746365726964;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x656C676E61;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008A1E20(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 4) == *(a2 + 32) && *(a1 + 5) == *(a2 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 8) == *(a2 + 64) && *(a1 + 9) == *(a2 + 72);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 10) == *(a2 + 80) && *(a1 + 11) == *(a2 + 88);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 12) == *(a2 + 96) && *(a1 + 13) == *(a2 + 104);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 14) == *(a2 + 112) && *(a1 + 15) == *(a2 + 120);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 16) == *(a2 + 128) && *(a1 + 17) == *(a2 + 136);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 18) == *(a2 + 144) && *(a1 + 19) == *(a2 + 152);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 20) == *(a2 + 160) && *(a1 + 21) == *(a2 + 168);
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 22) == *(a2 + 176) && *(a1 + 23) == *(a2 + 184);
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 24) == *(a2 + 192) && *(a1 + 25) == *(a2 + 200);
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[26] != *(a2 + 208))
  {
    return 0;
  }

  if (*(a1 + 27) == *(a2 + 216) && *(a1 + 28) == *(a2 + 224))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1008A2038(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE2500, &qword_100A95058);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1008A2BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v48 = 0;
  sub_100004D8C(v11, v12, &v48);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v47 = 1;
    sub_100004D8C(v13, v14, &v47);
    v15 = v3[4];
    v16 = v3[5];
    v46 = 2;
    sub_100004D8C(v15, v16, &v46);
    v17 = v3[6];
    v18 = v3[7];
    v45 = 3;
    sub_100004D8C(v17, v18, &v45);
    v19 = v3[8];
    v20 = v3[9];
    v44 = 4;
    sub_100004D8C(v19, v20, &v44);
    v21 = v3[10];
    v22 = v3[11];
    v43 = 5;
    sub_100004D8C(v21, v22, &v43);
    v23 = v3[12];
    v24 = v3[13];
    v42 = 6;
    sub_100004D8C(v23, v24, &v42);
    v25 = v3[14];
    v26 = v3[15];
    v41 = 7;
    sub_100004D8C(v25, v26, &v41);
    v27 = v3[16];
    v28 = v3[17];
    HIBYTE(v40) = 8;
    sub_100004D8C(v27, v28, &v40 + 7);
    v29 = v3[18];
    v30 = v3[19];
    BYTE6(v40) = 9;
    sub_100004D8C(v29, v30, &v40 + 6);
    v31 = v3[20];
    v32 = v3[21];
    BYTE5(v40) = 10;
    sub_100004D8C(v31, v32, &v40 + 5);
    v33 = v3[22];
    v34 = v3[23];
    BYTE4(v40) = 11;
    sub_100004D8C(v33, v34, &v40 + 4);
    v35 = v3[24];
    v36 = v3[25];
    BYTE3(v40) = 12;
    sub_100004D8C(v35, v36, &v40 + 3);
    BYTE2(v40) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = v3[27];
    v38 = v3[28];
    BYTE1(v40) = 14;
    sub_100004D8C(v37, v38, &v40 + 1);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1008A22F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10022C350(&qword_100CE24F0, &qword_100A95050);
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000161C0(a1, a1[3]);
  sub_1008A2BB4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v55 = a2;
  LOBYTE(v57[0]) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v7;
  sub_10001FB50(1);
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v9;
  sub_10001FB50(2);
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v10;
  sub_10001FB50(3);
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v11;
  sub_10001FB50(4);
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v12;
  sub_10001FB50(5);
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v13;
  sub_10001FB50(6);
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v14;
  sub_10001FB50(7);
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v15;
  sub_10001FB50(8);
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v16;
  sub_10001FB50(9);
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v18;
  v19 = v17;
  sub_10001FB50(10);
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v20;
  sub_10001FB50(11);
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v21;
  sub_10001FB50(12);
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v22;
  sub_10001FB50(13);
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v58[0] = 14;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v26;
  v31 = v25;
  v27 = sub_100015094();
  v28(v27);
  v56[0] = v6;
  v56[1] = v50;
  v56[2] = v8;
  v56[3] = v49;
  v56[4] = v54;
  v56[5] = v48;
  v56[6] = v53;
  v56[7] = v47;
  v56[8] = v52;
  v56[9] = v46;
  v56[10] = v51;
  v56[11] = v45;
  v56[12] = v38;
  v56[13] = v44;
  v56[14] = v37;
  v56[15] = v43;
  v56[16] = v36;
  v56[17] = v42;
  v56[18] = v19;
  v56[19] = v41;
  v56[20] = v35;
  v56[21] = v40;
  v56[22] = v33;
  v56[23] = v34;
  v56[24] = v32;
  v56[25] = v39;
  v56[26] = v24;
  v56[27] = v31;
  v56[28] = v30;
  sub_1001A86C8(v56, v57);
  sub_100006F14(a1);
  v57[0] = v6;
  v57[1] = v50;
  v57[2] = v8;
  v57[3] = v49;
  v57[4] = v54;
  v57[5] = v48;
  v57[6] = v53;
  v57[7] = v47;
  v57[8] = v52;
  v57[9] = v46;
  v57[10] = v51;
  v57[11] = v45;
  v57[12] = v38;
  v57[13] = v44;
  v57[14] = v37;
  v57[15] = v43;
  v57[16] = v36;
  v57[17] = v42;
  v57[18] = v19;
  v57[19] = v41;
  v57[20] = v35;
  v57[21] = v40;
  v57[22] = v33;
  v57[23] = v34;
  v57[24] = v32;
  v57[25] = v39;
  v57[26] = v24;
  v57[27] = v31;
  v57[28] = v30;
  sub_1006826B0(v57);
  return memcpy(v55, v56, 0xE8uLL);
}

uint64_t sub_1008A2AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008A17A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008A2ACC(uint64_t a1)
{
  v2 = sub_1008A2BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A2B08(uint64_t a1)
{
  v2 = sub_1008A2BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008A2B44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1008A22F0(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xE8uLL);
  }

  return result;
}

unint64_t sub_1008A2BB4()
{
  result = qword_100CE24F8;
  if (!qword_100CE24F8)
  {
    result = swift_getWitnessTable(byte_100A95124, &type metadata for WindComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE24F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WindComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008A2CE8()
{
  result = qword_100CE2508;
  if (!qword_100CE2508)
  {
    result = swift_getWitnessTable(byte_100A950FC, &type metadata for WindComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2508);
  }

  return result;
}

unint64_t sub_1008A2D40()
{
  result = qword_100CE2510;
  if (!qword_100CE2510)
  {
    result = swift_getWitnessTable(aUh, &type metadata for WindComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2510);
  }

  return result;
}

unint64_t sub_1008A2D98()
{
  result = qword_100CE2518;
  if (!qword_100CE2518)
  {
    result = swift_getWitnessTable(aG_0, &type metadata for WindComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE2518);
  }

  return result;
}

uint64_t sub_1008A2DEC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, static OpenMoonIntent.title);
  sub_10000703C(v6, static OpenMoonIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

double (*static OpenMoonIntent.title.modify())(uint64_t a1)
{
  if (qword_100CA2960 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  v1 = sub_10000703C(v0, static OpenMoonIntent.title);
  sub_100005E7C(v1);
  return j_j__swift_endAccess_1;
}

uint64_t sub_1008A30F8()
{
  v0 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenMoonIntent.description);
  sub_10000703C(v10, static OpenMoonIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

double (*static OpenMoonIntent.description.modify())(uint64_t a1)
{
  if (qword_100CA2968 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  v1 = sub_10000703C(v0, static OpenMoonIntent.description);
  sub_100005E7C(v1);
  return j__swift_endAccess_1;
}

uint64_t static OpenMoonIntent.parameterSummary.getter()
{
  v0 = sub_10022C350(&qword_100CE2520, &qword_100A95180);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100005E40();
  sub_10022C350(&qword_100CE2528, &qword_100A95188);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_1008A367C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100AE3140;
  v3._countAndFlagsBits = 0xD000000000000016;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE2538, &qword_100A951B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_1008A367C()
{
  result = qword_100CE2530;
  if (!qword_100CE2530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenMoonIntent, &type metadata for OpenMoonIntent, v0, v1);
    atomic_store(result, &qword_100CE2530);
  }

  return result;
}

uint64_t sub_1008A36D0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1008A367C();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BD20;
  *(v3 + 32) = v2;

  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1008A378C()
{
  v1 = sub_10022C350(&qword_100CBCC30, &unk_100A53C40);
  sub_1000037C4();
  v3 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100005E40();
  sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1008A3910(uint64_t a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100005E40();
  sub_1000D47CC(a1, v1);
  IntentParameter.wrappedValue.setter();
  return sub_1001AEDF4(a1);
}

uint64_t sub_1008A3998()
{
  v0 = sub_10022C350(&qword_100CE2598, &qword_100A953D0);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CE2540, &qword_100A951C0);
  sub_100007074(v1, static OpenMoonIntent.urlRepresentation);
  sub_10000703C(v1, static OpenMoonIntent.urlRepresentation);
  sub_1008A367C();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100AE3270;
  v2._countAndFlagsBits = 0xD000000000000026;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE2538, &qword_100A951B8);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x3D6574616426;
  v3._object = 0xE600000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE25A0, &unk_100A95400);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t OpenMoonIntent.urlRepresentation.unsafeMutableAddressor()
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68(&qword_100CA2970);
  }

  v0 = sub_10022C350(&qword_100CE2540, &qword_100A951C0);

  return sub_10000703C(v0, static OpenMoonIntent.urlRepresentation);
}

uint64_t static OpenMoonIntent.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68(&qword_100CA2970);
  }

  v2 = sub_10022C350(&qword_100CE2540, &qword_100A951C0);
  v3 = sub_10000703C(v2, static OpenMoonIntent.urlRepresentation);
  swift_beginAccess();
  sub_100003B20();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static OpenMoonIntent.urlRepresentation.setter(uint64_t a1)
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68(&qword_100CA2970);
  }

  v2 = sub_10022C350(&qword_100CE2540, &qword_100A951C0);
  v3 = sub_10000703C(v2, static OpenMoonIntent.urlRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

double (*static OpenMoonIntent.urlRepresentation.modify())(uint64_t a1)
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68(&qword_100CA2970);
  }

  v0 = sub_10022C350(&qword_100CE2540, &qword_100A951C0);
  v1 = sub_10000703C(v0, static OpenMoonIntent.urlRepresentation);
  sub_100005E7C(v1);
  return j_j__swift_endAccess_1;
}

uint64_t OpenMoonIntent.init()()
{
  sub_10022C350(&qword_100CA2E28, &unk_100A9DAF0);
  sub_1000037C4();
  v54 = v2;
  v55 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v53 = &v41 - v4;
  v56 = type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v58 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v57 = v8 - v7;
  v9 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v52 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v41 - v13;
  v14 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100005E40();
  v16 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = type metadata accessor for Locale();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = type metadata accessor for String.LocalizationValue();
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_1000037D8();
  v27 = type metadata accessor for LocalizedStringResource();
  v50 = v27;
  sub_100003B20();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v41 = v30 - v29;
  v49 = sub_10022C350(&qword_100CA2D78, &qword_100A2C4E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v32 = *(v18 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v16;
  v32(v22, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  v44 = v32;
  v45 = v18 + 104;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v22, v31, v16);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v0, 0, 1, v27);
  static LocationSearchEntity.makeCurrentLocation()();
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v33 = type metadata accessor for IntentDialog();
  v46 = v33;
  v34 = v51;
  sub_10001B350(v51, 1, 1, v33);
  sub_10001B350(v52, 1, 1, v33);
  v47 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v58 + 104);
  v58 += 104;
  v48 = v35;
  v35(v57);
  sub_10022C350(&qword_100CA2D80, &qword_100A2C4E8);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80, &qword_100A2C4E8, &protocol conformance descriptor for ResolverSpecificationBuilder<A>.Specification<A1, Pack{repeat B1}>);
  sub_10015E074();
  v36 = v34;
  v52 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
  v49 = sub_10022C350(&qword_100CA2E30, &qword_100A2C560);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v44(v22, v42, v43);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39(v22, v37, v38);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v0, 0, 1, v50);
  sub_10001B350(v36, 1, 1, v46);
  (*(v54 + 104))(v53, enum case for IntentParameter.DateKind.dateTime<A>(_:), v55);
  v48(v57, v47, v56);
  IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  return v52;
}

uint64_t sub_1008A44B4@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenMoonIntent.urlRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10022C350(&qword_100CE2540, &qword_100A951C0);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

unint64_t sub_1008A4540()
{
  result = qword_100CE2548;
  if (!qword_100CE2548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenMoonIntent, &type metadata for OpenMoonIntent, v0, v1);
    atomic_store(result, &qword_100CE2548);
  }

  return result;
}

unint64_t sub_1008A4598()
{
  result = qword_100CE2550;
  if (!qword_100CE2550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenMoonIntent, &type metadata for OpenMoonIntent, v0, v1);
    atomic_store(result, &qword_100CE2550);
  }

  return result;
}

uint64_t sub_1008A4608@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenMoonIntent.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for LocalizedStringResource();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1008A4688(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1008A5748();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_1008A4734@<X0>(uint64_t *a1@<X8>)
{
  result = OpenMoonIntent.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1008A475C(uint64_t a1)
{
  v2 = sub_1008A367C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1008A4798()
{
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  OpenMoonIntent.init()();
  sub_1008A367C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  static _AssistantIntent.Builder.buildExpression(_:)();
  v2 = sub_100049858();
  v3(v2);
  sub_10022C350(&qword_100CADD98, &qword_100A3D4F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v0;
  v5 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1008A48DC(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10022C350(&qword_100CE2578, &qword_100A953B8);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE2580, &qword_100A953C0);
  v48 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - v4;
  sub_1008A367C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v47 = v6;
  v49 = v3 + 8;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41 = "When is the next full moon?";
  v7._object = 0x8000000100AE3180;
  v7._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v45 = sub_1008A566C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v5, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = (v41 | 0x8000000000000000);
  v9._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v38 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v47;
  v12 = v48;
  v47(v5, v48);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100AE31C0;
  v14._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 63;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v5, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100AE31C0;
  v16._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 63;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v47;
  v19 = v48;
  v47(v5, v48);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD000000000000016;
  v21._object = 0x8000000100AE3250;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  sub_10022C350(&qword_100CE2588, &qword_100A953C8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100A55560;
  v26 = v43;
  *(v25 + 32) = v44;
  *(v25 + 40) = v26;
  v27 = v41;
  *(v25 + 48) = v42;
  *(v25 + 56) = v27;
  v28 = v39;
  *(v25 + 64) = v40;
  *(v25 + 72) = v28;
  v30 = v36;
  v29 = v37;
  *(v25 + 80) = v45;
  *(v25 + 88) = v29;
  v31 = v35;
  *(v25 + 96) = v30;
  *(v25 + 104) = v31;
  *(v25 + 112) = v23;
  *(v25 + 120) = v24;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v32;
}

uint64_t sub_1008A5188(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000D47CC(a1, &v6 - v3);
  return sub_1008A3910(v4);
}

uint64_t sub_1008A521C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1008A367C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1008A566C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10022C350(&qword_100CBCBD8, &qword_100A549E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1008A540C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3B030;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1008A5524()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_1008A367C();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v2 = sub_100049858();
  v3(v2);
  sub_10022C350(&qword_100CADD88, &unk_100A3D4E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v0;
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v5;
}

unint64_t sub_1008A566C()
{
  result = qword_100CE2568;
  if (!qword_100CE2568)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&unk_100CB2CF0, &unk_100A2D7F0);
    v4[0] = sub_1008A56F0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE2568);
  }

  return result;
}

unint64_t sub_1008A56F0()
{
  result = qword_100CE2570;
  if (!qword_100CE2570)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_100CE2570);
  }

  return result;
}

unint64_t sub_1008A5748()
{
  result = qword_100CE2590;
  if (!qword_100CE2590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenMoonIntent, &type metadata for OpenMoonIntent, v0, v1);
    atomic_store(result, &qword_100CE2590);
  }

  return result;
}

uint64_t sub_1008A579C()
{
  v1 = OBJC_IVAR____TtC7Weather28LocationViewCollisionOptions__value;
  v2 = sub_10022C350(&qword_100CE2750, &qword_100A95550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1008A584C(uint64_t a1, uint64_t a2)
{
  sub_10011BE3C(a1, a2);
  _print_unlocked<A, B>(_:_:)();

  return 0;
}

uint64_t sub_1008A58DC(float *a1)
{
  v1 = *a1;

  return sub_100168264(v2, v3, v1);
}

void sub_1008A5918()
{
  v0 = [objc_allocWithZone(LSApplicationWorkspace) init];
  URL._bridgeToObjectiveC()(v1);
  v4 = v2;
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_1008CAC30(v4, v3, v0);
}

double sub_1008A5A04@<D0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A3BBA0;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 32) = Gradient.Stop.init(color:location:)();
  *(v2 + 40) = v3;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 48) = Gradient.Stop.init(color:location:)();
  *(v2 + 56) = v4;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 64) = Gradient.Stop.init(color:location:)();
  *(v2 + 72) = v5;
  Gradient.init(stops:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1008A5B54()
{
  result = qword_100CE27F8;
  if (!qword_100CE27F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for LinearGradient, &type metadata for LinearGradient, v0, v1);
    atomic_store(result, &qword_100CE27F8);
  }

  return result;
}

void sub_1008A5BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_10001E790();
  v26 = type metadata accessor for Location();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_100040690();
  v32 = static OS_dispatch_queue.main.getter();
  firstly<A, B>(on:disposeOn:closure:)();

  sub_100007E8C();
  v33 = swift_allocObject();
  swift_weakInit();
  (*(v28 + 16))(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
  v34 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  (*(v28 + 32))(v35 + v34, &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  *(v35 + v34 + v30) = v23 & 1;
  v36 = zalgo.getter();
  sub_10022C350(&qword_100CD1FC0, &qword_100A77710);
  Promise.then<A>(on:closure:)();

  sub_10000536C();
}

void sub_1008A5DA4(char a1)
{
  sub_10001E790();
  sub_100040690();
  v2 = static OS_dispatch_queue.main.getter();
  sub_1000E5A8C(v2, v3, sub_1008B1648, v4, &type metadata for MainState);

  *(swift_allocObject() + 16) = a1 & 1;
  v5 = zalgo.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1008A5EC4(char a1, char a2)
{
  sub_10001E790();
  sub_100040690();
  v4 = static OS_dispatch_queue.main.getter();
  sub_1000E5A8C(v4, v5, sub_1008B1648, v6, &type metadata for MainState);

  v7 = sub_100086BF4(a1 & 1);
  *(swift_allocObject() + 16) = a2;
  Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1008A5FEC(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Location();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v37 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  v12 = v36 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  result = *(v12 + *(type metadata accessor for LocationsState(0) + 32));
  v14 = *(result + 16);
  if (v14)
  {
    v27[2] = v3;
    v34 = a3;
    v30 = (v36 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v15 = v10 + 16;
    v32 = *(v10 + 16);
    v33 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_time;
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v31 = v8;
    v17 = result + v16;
    v18 = *(v15 + 56);
    v35 = v15;
    v28 = (v15 - 8);
    v29 = v18;
    v27[1] = result;

    v19 = v37;
    do
    {
      v32(v19, v17, v9);
      v20 = v9;
      v21 = v31;
      v23 = *v30;
      v22 = v30[1];
      v25 = v30[2];
      v24 = v30[3];
      sub_1000863F8(v36 + v33, v31);

      v26 = v23;
      v9 = v20;
      sub_100186B34(v37, v26, v22, v25, v24, v21, v34 & 1);

      v19 = v37;

      (*v28)(v19, v20);
      sub_100087544();
      v17 += v29;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1008A62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v8);
  sub_100087544();
  return sub_10018E604(a4);
}

uint64_t sub_1008A6378()
{
  type metadata accessor for LocationsState(0);

  sub_1001919F8();
}

void sub_1008A6458()
{
  sub_1000C87D0();
  v1 = v0;
  sub_10022C350(&qword_100CBEE00, &qword_100A56660);
  v2 = type metadata accessor for Location();
  sub_1000037C4();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v4 + 16))(v6 + v5, v1, v2);
  sub_1001919F8();
  swift_setDeallocating();
  sub_1005C2034();
  sub_100020DD4();
}

uint64_t sub_1008A6574(uint64_t a1)
{
  (*(a1 + 16))(&v2);
  sub_10022C350(&qword_100CE2A18, &unk_100A95938);
  sub_1008B1694();
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_1008A65D8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, BOOL *a5@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v10 = result;
  if (result)
  {
    sub_1008A6674(a3, a4 & 1, v8);
  }

  *a5 = v10 == 0;
  return result;
}

uint64_t sub_1008A6674(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v113) = a2;
  v110 = *v3;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchQoS();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for OSSignpostID();
  v118 = *(v125 - 8);
  __chkstk_darwin(v125);
  v121 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  __chkstk_darwin(v10);
  v126 = v90 - v11;
  v12 = type metadata accessor for AppConfiguration();
  v13 = *(v12 - 8);
  v116 = v12;
  v117 = v13;
  __chkstk_darwin(v12);
  v124 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v14;
  __chkstk_darwin(v15);
  v127 = v90 - v16;
  v17 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v17 - 8);
  v19 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Location();
  v21 = __chkstk_darwin(v20);
  v122 = v22;
  v23 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v25 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v26 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v27 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v128 = v28;
  v29 = *(v28 + 16);
  v123 = v30;
  v119 = v29;
  v120 = v28 + 16;
  (v29)(v23, a1, v21);
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v114 = v23;
  v31 = sub_10005B8AC(2u, v23, 0, v24, v25, v26, v27);
  sub_1000863F8(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v19);
  v32 = a1;
  v33 = a1;
  v34 = v31;
  v35 = v4;
  LOBYTE(v31) = sub_1008A8954(v33, v31, v24, v25, v26, v27, v19);

  v36 = type metadata accessor for Date();
  v37 = (*(*(v36 - 8) + 8))(v19, v36);
  if (v31)
  {
    __chkstk_darwin(v37);
    v90[-4] = v4;
    v90[-3] = v32;
    v38 = v32;
    v99 = v32;
    v112 = v34;
    v90[-2] = v34;
    syncOnMain(_:)();
    sub_1000161C0(v4 + 15, v4[18]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    v98 = v4[56];
    v39 = v126;
    OSSignpostID.init(log:)();
    v103 = v113 & 1;
    v100 = v35;
    v101 = sub_100086BF4(v113 & 1);
    v40 = swift_allocObject();
    v90[1] = v40;
    swift_weakInit();
    v41 = v118;
    v42 = *(v118 + 16);
    v92 = v118 + 16;
    v93 = v42;
    v43 = v121;
    v44 = v39;
    v45 = v125;
    v42(v121, v44, v125);
    v46 = v114;
    v47 = v38;
    v48 = v123;
    v119(v114, v47, v123);
    v91 = *(v41 + 80);
    v49 = v41;
    v50 = (v91 + 32) & ~v91;
    v111 = *(v128 + 80);
    v51 = v128;
    v94 = v102 + v111;
    v52 = (v102 + v111 + v50) & ~v111;
    v102 = v111 | 7;
    v97 = v111 | 7 | v91;
    v53 = swift_allocObject();
    *(v53 + 16) = v40;
    *(v53 + 24) = v112;
    v54 = *(v49 + 32);
    v95 = v49 + 32;
    v96 = v54;
    v54(v53 + v50, v43, v45);
    v55 = *(v51 + 32);
    v128 = v51 + 32;
    v113 = v55;
    v55(v53 + v52, v46, v48);
    aBlock[4] = sub_100086CC8;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C746C8;
    v56 = _Block_copy(aBlock);

    v57 = v104;
    static DispatchQoS.unspecified.getter();
    v129 = _swiftEmptyArrayStorage;
    sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_10006768C(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
    v58 = v106;
    v59 = v109;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);
    (*(v108 + 8))(v58, v59);
    (*(v105 + 8))(v57, v107);

    v60 = v99;
    v61 = v119;
    v119(v46, v99, v48);
    v62 = (v111 + 16) & ~v111;
    v63 = v122;
    v64 = swift_allocObject();
    v113(v64 + v62, v46, v48);
    sub_10022C350(&qword_100CE2960, &unk_100A95800);
    v108 = firstly<A, B>(on:disposeOn:closure:)();

    v107 = swift_allocObject();
    swift_weakInit();
    v65 = v125;
    v93(v121, v126, v125);
    v61(v46, v60, v48);
    v66 = v117;
    v67 = *(v117 + 16);
    v109 = v117 + 16;
    v110 = v67;
    v67(v124, v127, v116);
    v68 = (v91 + 24) & ~v91;
    v69 = (v94 + v68) & ~v111;
    v70 = (v63 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = *(v66 + 80);
    v73 = (v71 + v72 + 8) & ~v72;
    v74 = v73 + v115;
    v75 = swift_allocObject();
    *(v75 + 16) = v98;
    v96(v75 + v68, v121, v65);
    v76 = v114;
    v113(v75 + v69, v114, v123);
    *(v75 + v70) = v112;
    *(v75 + v71) = v107;
    v121 = *(v66 + 32);
    v77 = v124;
    v78 = v116;
    (v121)(v75 + v73, v124, v116);
    *(v75 + v74) = v103;

    v79 = zalgo.getter();
    v107 = Promise.then<A>(on:closure:)();

    v80 = swift_allocObject();
    swift_weakInit();
    v81 = v76;
    v82 = v123;
    v119(v76, v99, v123);
    v83 = v78;
    v110(v77, v127, v78);
    v84 = (v111 + 32) & ~v111;
    v85 = (v84 + v122 + v72) & ~v72;
    v86 = v85 + v115;
    v87 = swift_allocObject();
    *(v87 + 16) = v112;
    *(v87 + 24) = v80;
    v113(v87 + v84, v81, v82);
    (v121)(v87 + v85, v124, v83);
    *(v87 + v86) = v103;

    v88 = zalgo.getter();
    Promise.error(on:closure:)();

    (*(v118 + 8))(v126, v125);
    (*(v117 + 8))(v127, v83);
  }
}

uint64_t sub_1008A743C()
{
  v1 = sub_100017580();
  type metadata accessor for WeatherDataUpdateRequestLog.Event(v1);
  sub_100003D98();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  *(v4 - v3) = v0;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v5);
  sub_100006A88();
  return sub_100087544();
}

uint64_t sub_1008A74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a1;
  v27 = a3;
  v28 = a4;
  v32 = a2;
  v5 = type metadata accessor for NewsDataModel(0);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5 - 8);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location();
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherData(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_10001B350(v17, 1, 1, v18);
  sub_1000863F8(v27, v14);
  (*(v8 + 16))(v10, v28, v7);
  sub_1000863F8(v30, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = (v9 + *(v29 + 80) + v20) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v32;
  *(v22 + 4) = v31;
  *(v22 + 5) = v23;
  sub_100086450(v14, &v22[v19]);
  (*(v8 + 32))(&v22[v20], v10, v25);
  sub_100086450(v26, &v22[v21]);

  sub_1006C0138();
}

uint64_t sub_1008A7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = type metadata accessor for Location();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v8[15] = *(v10 + 64);
  v8[16] = swift_task_alloc();
  v11 = *(type metadata accessor for NewsDataModel(0) - 8);
  v8[17] = v11;
  v8[18] = *(v11 + 64);
  v8[19] = swift_task_alloc();
  v12 = *(type metadata accessor for WeatherData(0) - 8);
  v8[20] = v12;
  v8[21] = *(v12 + 64);
  v8[22] = swift_task_alloc();
  v13 = *(type metadata accessor for PreprocessedWeatherData(0) - 8);
  v8[23] = v13;
  v8[24] = *(v13 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_1008A7A64, 0, 0);
}

uint64_t sub_1008A7A64()
{
  sub_10019225C();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[28];
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v3);
    sub_100006A88();
    sub_100087544();
    sub_1000161C0((v2 + 160), *(v2 + 184));
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_1008A7BD4;
    v5 = v0[26];
    v6 = v0[10];
    v7 = v0[11];

    return sub_1000FF7F4(v5, v6, v7);
  }

  else
  {
    v9 = sub_100192454();
    sub_1005B3D94(v9, v10);
    sub_1000D3C88();

    sub_100003B14();

    return v11();
  }
}

uint64_t sub_1008A7BD4()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_1008A7CC4, 0, 0);
}

uint64_t sub_1008A7CC4()
{
  v26 = v0[29];
  v1 = v0[22];
  v18 = v0[25];
  v2 = v0[19];
  v22 = v0[18];
  v23 = v0[24];
  v21 = v0[17];
  v3 = v0[16];
  v20 = v3;
  v24 = v0[15];
  v5 = v0[13];
  v4 = v0[14];
  v19 = v2;
  v16 = v0[12];
  v17 = v0[11];
  v15 = v0[10];
  v27 = v0[9];
  sub_100007E8C();
  v25 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10003BFF4();
  sub_1000863F8(v15, v1);
  sub_100041BE8();
  v6 = sub_100003940();
  sub_1000863F8(v6, v7);
  sub_100028CC8();
  sub_1000863F8(v16, v2);
  (*(v4 + 16))(v3, v17, v5);
  sub_1008B1680();
  v8 = (v23 + *(v21 + 80) + v1) & ~*(v21 + 80);
  v9 = (v22 + *(v4 + 80) + v8) & ~*(v4 + 80);
  v10 = (v24 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v26;
  sub_100037E28();
  sub_100086450(v1, v12);
  sub_1000306A4();
  sub_100086450(v18, v11 + v1);
  sub_1000243CC();
  sub_100086450(v19, v11 + v8);
  (*(v4 + 32))(v11 + v9, v20, v5);
  *(v11 + v10) = v27;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;

  asyncMain(block:)();

  sub_100025454();
  sub_100087544();

  sub_1000D3C88();

  sub_100003B14();

  return v13();
}

uint64_t sub_1008A7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100188AAC(a2, a3, a4, a5, a6);
  sub_10018E2C0(1, 0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10018E604(a5);
  }

  return result;
}

uint64_t sub_1008A801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v42 = a2;
  v43 = a5;
  v41 = a3;
  v51 = a10;
  v52 = a9;
  v50 = a11;
  v49 = a12;
  v48 = a13;
  v15 = type metadata accessor for WeatherServiceCaching.Options();
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CAD030, &unk_100A3C400);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = sub_10022C350(&qword_100CAD038, &unk_100A95810);
  __chkstk_darwin(v22 - 8);
  v24 = &v40 - v23;
  v25 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v25 - 8);
  v27 = &v40 - v26;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v44 = *(Options - 8);
  v45 = Options;
  __chkstk_darwin(Options);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v33 = (&v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v33 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v33);
  sub_100087544();
  Location.timeZone.getter();
  v34 = type metadata accessor for TimeZone();
  sub_10001B350(v27, 0, 1, v34);
  v35 = type metadata accessor for WeatherServiceLocationOptions();
  (*(*(v35 - 8) + 16))(v24, a4, v35);
  sub_10001B350(v24, 0, 1, v35);
  v36 = AppConfiguration.treatmentIDs.getter();
  v37 = type metadata accessor for WeatherNetworkActivity();
  sub_10001B350(v21, 1, 1, v37);
  v56 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970, &qword_100A95820);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970, &qword_100A95820);
  v38 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10007F81C(0, 0, v27, v24, v18, v36, v21, 0, v30);

  (*(v47 + 8))(v18, v38);
  sub_100018144(v21, &qword_100CAD030, &unk_100A3C400);
  sub_100018144(v24, &qword_100CAD038, &unk_100A95810);
  sub_100018144(v27, &qword_100CACE08, &unk_100A3C1B0);
  sub_10007FB34(v41, v53, v54, v52, v51, v50, v30, v49 & 1, v42);
  return (*(v44 + 8))(v30, v45);
}

void sub_1008A852C()
{
  sub_10000C778();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  sub_100003D98();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v16);
  sub_100006A88();
  sub_100087544();
  *v12 = Location.id.getter();
  *(v12 + 8) = v17;
  *(v12 + 16) = v18;
  *(v12 + 32) = v4;
  *(v12 + 40) = v2;
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = 0;
  memset(v19, 0, sizeof(v19));

  sub_10004F034(v12, v19, v8, v6);
  sub_100018144(v19, &unk_100CD81B0, &unk_100A3B000);
  sub_100031FA8();
  sub_100087544();

  sub_1005B3D94(v4, v2);

  sub_10000536C();
}

uint64_t sub_1008A86C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v7 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v12);
  sub_100087544();
  v13 = Location.id.getter();
  v15 = v14;
  swift_errorRetain();
  v16 = sub_100897C14(a5);
  v18 = v17;
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  v26 = a5;
  sub_10022C350(&qword_100CD8220, &qword_100A4A330);
  _print_unlocked<A, B>(_:_:)();
  v19 = v24[0];
  *v9 = v13;
  *(v9 + 1) = v15;
  *(v9 + 2) = v16;
  *(v9 + 3) = v18;
  *(v9 + 2) = v19;
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_10004F034(v9, v24, a2, v23);
  sub_100018144(v24, &unk_100CD81B0, &unk_100A3B000);
  sub_100087544();
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *&v24[0] = 0xD000000000000019;
  *(&v24[0] + 1) = 0x8000000100AE3700;
  swift_getErrorValue();
  v20._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v20);

  sub_1005B3D94(*&v24[0], *(&v24[0] + 1));
}

uint64_t sub_1008A8954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a7;
  v100 = a5;
  v95 = type metadata accessor for HourTemperatureStatistics();
  v103 = *(v95 - 8);
  __chkstk_darwin(v95);
  v102 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10022C350(&qword_100CB10F8, &qword_100A95930);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v78 - v10;
  v11 = type metadata accessor for Calendar.Component();
  v93 = *(v11 - 8);
  v94 = v11;
  __chkstk_darwin(v11);
  v92 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v78 - v14;
  v15 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v15 - 8);
  v89 = &v78 - v16;
  v84 = type metadata accessor for Calendar();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v97 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TimeZone();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v78 - v20;
  v82 = type metadata accessor for Date();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v99 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v25 - 8);
  v27 = &v78 - v26;
  v28 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v28 - 8);
  v30 = &v78 - v29;
  v31 = sub_10022C350(&qword_100CD4D40, &unk_100A7C928);
  __chkstk_darwin(v31 - 8);
  v33 = &v78 - v32;
  v101 = type metadata accessor for WeatherStatisticsModel();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v37 = &v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Location();
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v107 = a1;
  v104 = v39 + 16;
  v105 = v40;
  v40(v37, a1, v38);
  swift_storeEnumTagMultiPayload();
  v106 = a2;
  sub_10005C1D4(v37);
  sub_100087544();
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.clearDailyStatisticsCacheOnNextLaunch.getter();
  SettingReader.read<A>(_:)();

  if (v112 & 1) != 0 || (static SettingReader.shared.getter(), static Settings.Daemon.clearDailySummaryCacheOnNextLaunch.getter(), SettingReader.read<A>(_:)(), , , (v111) || (static SettingReader.shared.getter(), static Settings.Daemon.clearHourlyStatisticsCacheOnNextLaunch.getter(), SettingReader.read<A>(_:)(), , , (v110) || (static SettingReader.shared.getter(), static Settings.Daemon.clearMonthlyStatisticsCacheOnNextLaunch.getter(), SettingReader.read<A>(_:)(), , , (v109))
  {
    v41 = &v37[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
    v105(v37, v107, v38);
    v42 = 0x8000000100AE37E0;
    v43 = 0xD00000000000001ALL;
    goto LABEL_6;
  }

  static SettingReader.shared.getter();
  static Settings.Daemon.disableStatisticsCaching.getter();
  SettingReader.read<A>(_:)();

  if (v108)
  {
    v41 = &v37[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
    v105(v37, v107, v38);
    v42 = 0x8000000100AE37C0;
    v43 = 0xD00000000000001BLL;
    goto LABEL_6;
  }

  v45 = v107;
  v46 = Location.id.getter();
  sub_1000864C0(v46, v47, v100);

  v48 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v27, 1, v48) == 1)
  {
    v49 = &qword_100CA37B0;
    v50 = &unk_100A2D740;
    v51 = v27;
LABEL_15:
    sub_100018144(v51, v49, v50);
    sub_10001B350(v33, 1, 1, v101);
LABEL_16:
    sub_100018144(v33, &qword_100CD4D40, &unk_100A7C928);
    v41 = &v37[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
    v105(v37, v45, v38);
    v42 = 0x8000000100AE3760;
    v43 = 0xD00000000000001CLL;
LABEL_6:
    *v41 = v43;
    v41[1] = v42;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v37);
    sub_100087544();
    return 1;
  }

  sub_1001A0D3C();
  sub_100087544();
  v52 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v30, 1, v52) == 1)
  {
    v49 = &qword_100CA3898;
    v50 = &qword_100A314D0;
    v51 = v30;
    goto LABEL_15;
  }

  sub_1000863F8(&v30[*(v52 + 32)], v24);
  sub_100087544();
  sub_100882BD0(v33);
  sub_100087544();
  v53 = v101;
  if (sub_100024D10(v33, 1, v101) == 1)
  {
    goto LABEL_16;
  }

  (*(v96 + 32))(v98, v33, v53);
  v54 = v85;
  Location.timeZone.getter();
  Date.startOfDay(timeZone:)();
  v55 = v87;
  v56 = *(v87 + 8);
  v57 = v88;
  v56(v54, v88);
  v58 = v89;
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v58, 1, v57);
  if (result != 1)
  {
    v59 = v86;
    (*(v55 + 32))(v86, v58, v57);
    static Calendar.gregorianCalendar(with:)();
    v56(v59, v57);
    v60 = v93;
    v61 = v94;
    v62 = *(v93 + 104);
    v63 = v91;
    v62(v91, enum case for Calendar.Component.hour(_:), v94);
    v64 = v92;
    v62(v92, enum case for Calendar.Component.year(_:), v61);
    v65 = Calendar.ordinality(of:in:for:)();
    LOBYTE(v62) = v66;
    v67 = *(v60 + 8);
    v67(v64, v61);
    result = (v67)(v63, v61);
    v68 = v95;
    if (v62)
    {
LABEL_26:
      (*(v83 + 8))(v97, v84);
      (*(v81 + 8))(v99, v82);
      (*(v96 + 8))(v98, v101);
      return 0;
    }

    v100 = v65 + 24;
    if (!__OFADD__(v65, 24))
    {
      v69 = v78;
      WeatherStatisticsModel.hourlyTemperatureStatistics.getter();
      v70 = v80;
      v71 = HourlyWeatherStatistics.hours.getter();
      result = (*(v79 + 8))(v69, v70);
      v72 = *(v71 + 16);
      v94 = v103 + 16;
      while (1)
      {
        if (!v72)
        {

          v77 = &v37[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
          v105(v37, v107, v38);
          *v77 = 0xD00000000000001DLL;
          *(v77 + 1) = 0x8000000100AE37A0;
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v37);
          sub_100087544();
          (*(v83 + 8))(v97, v84);
          (*(v81 + 8))(v99, v82);
          (*(v96 + 8))(v98, v101);
          return 1;
        }

        if (v72 > *(v71 + 16))
        {
          break;
        }

        --v72;
        v73 = v102;
        v74 = v103;
        (*(v103 + 16))(v102, v71 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v72, v68);
        v75 = HourTemperatureStatistics.hour.getter();
        result = (*(v74 + 8))(v73, v68);
        if (v75 == v100)
        {

          v76 = &v37[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
          v105(v37, v107, v38);
          *v76 = 0xD00000000000001BLL;
          *(v76 + 1) = 0x8000000100AE3780;
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v37);
          sub_100087544();
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A97F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1008A98B0(a2, v7, a3);
  return sub_100087544();
}

uint64_t sub_1008A98B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v28 = a2;
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = v8;
  v31 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100040690();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    (*(v4 + 16))(&v32, result);
    v26 = sub_1008AB6E8(a1, v32);

    v17 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_1000863F8(v28, v17);
    (*(v7 + 16))(v31, a1, v6);
    v18 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v19 = v18 + v10;
    v20 = (v18 + v10) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v7 + 80);
    v28 = v6;
    v22 = (v21 + v20 + 16) & ~v21;
    v23 = v30;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_100086450(v17, v24 + v18);
    LOBYTE(v17) = v26 & 1;
    *(v24 + v19) = v26 & 1;
    *(v24 + v20 + 8) = v4;
    (*(v7 + 32))(v24 + v22, v31, v28);

    sub_10018C9B4(a1, v17, sub_1008B1014);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008A9C2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v27 = a8;
  v28 = a7;
  v29 = a2;
  v30 = a3;
  v31 = a6;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = a1[1];
  v16 = static os_signpost_type_t.end.getter();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100A2C3F0;
  v26 = a4;
  v18 = Location.name.getter();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100035744();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v16, &_mh_execute_header, v29, "Weather:resolveCountryCode", 26, 2, v30, "location %{private}s", 20, 2, v17);

  *v13 = v14;
  v13[1] = v15;
  swift_storeEnumTagMultiPayload();
  sub_100088528(v14, v15);
  sub_10005C1D4(v13);
  sub_100087544();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v15 == 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = CountryCode.value.getter();
      v23 = v24;
    }

    sub_1008A9E5C(v26, v28, v22, v23, v27 & 1, a5);
  }

  return result;
}

uint64_t sub_1008A9E5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), int a5, uint64_t a6)
{
  v106 = a6;
  LODWORD(v96) = a5;
  v84 = a4;
  v82 = a3;
  v77 = a1;
  v83 = *v6;
  v98 = type metadata accessor for Location();
  v105 = *(v98 - 8);
  v99 = *(v105 + 64);
  __chkstk_darwin(v98);
  v95 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v89 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v92 = *(v9 - 8);
  v93 = v9;
  v94 = *(v92 + 64);
  __chkstk_darwin(v9);
  v91 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = &v73 - v12;
  v13 = type metadata accessor for TimeZone();
  v14 = *(v13 - 8);
  v107 = v13;
  v108 = v14;
  __chkstk_darwin(v13);
  v101 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Calendar();
  v97 = *(v100 - 8);
  __chkstk_darwin(v100);
  v104 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for WeatherServiceCaching.Options();
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CAD030, &unk_100A3C400);
  __chkstk_darwin(v18 - 8);
  v20 = &v73 - v19;
  v21 = sub_10022C350(&qword_100CAD038, &unk_100A95810);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v24 - 8);
  v26 = &v73 - v25;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v87 = *(Options - 8);
  __chkstk_darwin(Options);
  v103 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WeatherServiceLocationOptions();
  v81 = *(v28 - 8);
  v29 = v81;
  __chkstk_darwin(v28);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AppConfiguration();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v6;
  sub_1000161C0(v6 + 15, v6[18]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v79 = v33;
  AppConfiguration.locationDecimalPrecision.getter();
  v34 = v31;
  v80 = v31;
  WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)();
  v35 = v77;
  Location.timeZone.getter();
  sub_10001B350(v26, 0, 1, v107);
  v36 = *(v29 + 16);
  v78 = v28;
  v36(v23, v34, v28);
  sub_10001B350(v23, 0, 1, v28);
  v37 = AppConfiguration.treatmentIDs.getter();
  v38 = type metadata accessor for WeatherNetworkActivity();
  sub_10001B350(v20, 1, 1, v38);
  v109 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970, &qword_100A95820);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970, &qword_100A95820);
  v39 = v74;
  v40 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10007F81C(v82, v84, v26, v23, v39, v37, v20, 0, v103);

  (*(v76 + 8))(v39, v40);
  sub_100018144(v20, &qword_100CAD030, &unk_100A3C400);
  sub_100018144(v23, &qword_100CAD038, &unk_100A95810);
  sub_100018144(v26, &qword_100CACE08, &unk_100A3C1B0);
  v41 = v101;
  v42 = v35;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v43 = *(v108 + 8);
  v108 += 8;
  v84 = v43;
  v43(v41, v107);
  v44 = v73[56];
  v45 = v102;
  OSSignpostID.init(log:)();
  v46 = static os_signpost_type_t.begin.getter();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100A2C3F0;
  v48 = v42;
  v49 = Location.name.getter();
  v51 = v50;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_100035744();
  *(v47 + 32) = v49;
  *(v47 + 40) = v51;
  v72 = 2;
  v52 = v45;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v46, &_mh_execute_header, v44, "Weather:fetchStatistics", 23, 2, v45, "location %{private}s", 20, v72, v47);

  v53 = v89;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v53);
  sub_100087544();
  v96 = sub_1000925AC();
  updated = Location.clLocation.getter();
  v54 = v48;
  Location.timeZone.getter();
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = v105;
  v57 = v95;
  v58 = v54;
  v59 = v98;
  (*(v105 + 16))(v95, v58, v98);
  v60 = v91;
  v61 = v92;
  v62 = v93;
  (*(v92 + 16))(v91, v52, v93);
  v63 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v64 = (v99 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (*(v61 + 80) + v64 + 8) & ~*(v61 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v55;
  (*(v105 + 32))(v66 + v63, v57, v59);
  *(v66 + v64) = v106;
  (*(v61 + 32))(v66 + v65, v60, v62);

  v67 = updated;
  v69 = v103;
  v68 = v104;
  v70 = v101;
  WeatherService.fetchStatistics(for:calendar:options:timeZone:completion:)();

  v84(v70, v107);
  (*(v61 + 8))(v102, v62);
  (*(v97 + 8))(v68, v100);
  (*(v87 + 8))(v69, Options);
  (*(v81 + 8))(v80, v78);
  (*(v85 + 8))(v79, v86);
}

uint64_t sub_1008AAA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v13);
  sub_100087544();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1008A9E5C(a4, a5, 0, 0, a6 & 1, a2);
  }

  return result;
}

void sub_1008AAB6C(void (*a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v84 = a4;
  v81 = a3;
  v76 = a1;
  v6 = type metadata accessor for Location();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v7;
  __chkstk_darwin(v9);
  v80 = &v70 - v10;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for WeatherStatisticsModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v75 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  v20 = sub_10022C350(&qword_100CE2A10, &unk_100A95920);
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  swift_beginAccess();
  v77 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_1000302D8(v76, v22, &qword_100CE2A10, &unk_100A95920);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v74 = v24;
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v22;
      *v13 = *v22;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      sub_10005C1D4(v13);
      sub_100087544();
      v27 = static os_signpost_type_t.end.getter();
      v28 = *(v24 + 448);
      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100A2C3F0;
      v30 = v28;
      v31 = v81;
      v32 = Location.name.getter();
      v34 = v33;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_100035744();
      *(v29 + 32) = v32;
      *(v29 + 40) = v34;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v27, &_mh_execute_header, v30, "Weather:fetchStatistics", 23, 2, v79, "location %{private}s failed", 27, 2, v29);

      v35 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v37 = v82;
      v36 = v83;
      v38 = v80;
      (*(v82 + 16))(v80, v31, v83);
      v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v40 = (v78 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      *(v41 + 16) = v35;
      (*(v37 + 32))(v41 + v39, v38, v36);
      *(v41 + v40) = v26;
      *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;

      swift_errorRetain();

      asyncMain(block:)();
    }

    else
    {
      v53 = *(v15 + 32);
      v72 = v15 + 32;
      v73 = v19;
      v76 = v53;
      v71 = v14;
      v53(v19, v22, v14);
      swift_storeEnumTagMultiPayload();
      sub_10005C1D4(v13);
      sub_100087544();
      v54 = static os_signpost_type_t.end.getter();
      v55 = *(v24 + 448);
      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_100A2C3F0;
      v57 = v55;
      v58 = v81;
      v59 = Location.name.getter();
      v61 = v60;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100035744();
      *(v56 + 32) = v59;
      *(v56 + 40) = v61;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v54, &_mh_execute_header, v57, "Weather:fetchStatistics", 23, 2, v79, "location %{private}s", 20, 2, v56);

      v79 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v63 = v82;
      v62 = v83;
      v64 = v80;
      (*(v82 + 16))(v80, v58, v83);
      v70 = v15;
      v65 = v75;
      v66 = v71;
      (*(v15 + 16))(v75, v73, v71);
      v67 = (*(v63 + 80) + 24) & ~*(v63 + 80);
      v68 = (v78 + *(v15 + 80) + v67) & ~*(v15 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = v79;
      (*(v63 + 32))(v69 + v67, v64, v62);
      v76(v69 + v68, v65, v66);
      *(v69 + ((v16 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v84;

      asyncMain(block:)();

      (*(v70 + 8))(v73, v66);
    }
  }

  else
  {
    if (qword_100CA2730 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000703C(v42, qword_100D90BE8);
    v43 = v82;
    v44 = v83;
    (*(v82 + 16))(v8, v81, v83);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85[0] = v48;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      v49 = Location.id.getter();
      v51 = v50;
      (*(v43 + 8))(v8, v44);
      v52 = sub_100078694(v49, v51, v85);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Lost instance of self while fetching WeatherStatistics. locationID=%{private,mask.hash}s", v47, 0x16u);
      sub_100006F14(v48);
    }

    else
    {

      (*(v43 + 8))(v8, v44);
    }
  }
}

uint64_t sub_1008AB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = type metadata accessor for WeatherStatisticsModel();
    (*(*(v11 - 8) + 16))(v9, a3, v11);
    swift_storeEnumTagMultiPayload();
    sub_1008A98B0(a2, v9, a4);

    return sub_100087544();
  }

  return result;
}

uint64_t sub_1008AB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getErrorValue();
    *v8 = Error.localizedDescription.getter();
    v8[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_1008A98B0(a2, v8, a4);

    return sub_100087544();
  }

  return result;
}

uint64_t sub_1008AB6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  if (sub_10018A0DC(a1, a2))
  {
    v10 = 1;
  }

  else
  {
    sub_1008ABD28(a2, v9);
    sub_1000302D8(v9, v6, &qword_100CADBA0, &qword_100A3D250);
    v11 = type metadata accessor for Location.Identifier();
    if (sub_100024D10(v6, 1, v11) == 1)
    {
      sub_100018144(v6, &qword_100CADBA0, &qword_100A3D250);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = Location.Identifier.id.getter();
      v13 = v14;
      (*(*(v11 - 8) + 8))(v6, v11);
    }

    v15 = Location.id.getter();
    if (v13)
    {
      if (v12 == v15 && v13 == v16)
      {
        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_100018144(v9, &qword_100CADBA0, &qword_100A3D250);
    }

    else
    {
      sub_100018144(v9, &qword_100CADBA0, &qword_100A3D250);

      v10 = 0;
    }
  }

  return v10 & 1;
}

uint64_t sub_1008AB8F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v8 = type metadata accessor for WeatherStatisticsModel();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v40);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v12);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000675AC(&qword_100CE08F0, type metadata accessor for WeatherData.WeatherStatisticsState);
  *v17 = ShortDescribable.description.getter();
  *(v17 + 1) = v18;
  v17[16] = a3;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v17);
  sub_100087544();
  sub_1000863F8(a2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v36;
      v20 = v37;
      v22 = v14;
      v23 = v38;
      (*(v37 + 32))(v36, v22, v38);
      v24 = *(a4 + 48);
      v25 = *(a4 + 56);
      v26 = *(sub_10022C350(&qword_100CAC0B0, &unk_100A41710) + 48);
      *v11 = Location.id.getter();
      v11[1] = v27;
      (*(v20 + 16))(v11 + v26, v21, v23);
      type metadata accessor for WeatherDataAction(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      sub_10004F034(v11, &v41, v24, v25);
      sub_100018144(&v41, &unk_100CD81B0, &unk_100A3B000);
      sub_100087544();
      return (*(v20 + 8))(v21, v23);
    }

    v31 = *(a4 + 48);
    v32 = *(a4 + 56);
    *v11 = Location.id.getter();
    v11[1] = v34;
    type metadata accessor for WeatherDataAction(0);
  }

  else
  {
    v29 = *v14;
    v30 = v14[1];
    v31 = *(a4 + 48);
    v32 = *(a4 + 56);
    *v11 = Location.id.getter();
    v11[1] = v33;
    v11[2] = v29;
    v11[3] = v30;
    type metadata accessor for WeatherDataAction(0);
  }

  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_10004F034(v11, &v41, v31, v32);
  sub_100018144(&v41, &unk_100CD81B0, &unk_100A3B000);
  return sub_100087544();
}

uint64_t sub_1008ABD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AveragesDetailViewState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_1000863F8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v9);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_6;
  }

  sub_100086450(v9, v15);
  sub_1000863F8(v15, v12);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_100087544();
LABEL_6:
    sub_100087544();
    v16 = 1;
    goto LABEL_7;
  }

  sub_100086450(v12, v6);
  Location.identifier.getter();
  sub_100087544();
  sub_100087544();
  v16 = 0;
LABEL_7:
  v17 = type metadata accessor for Location.Identifier();
  return sub_10001B350(a2, v16, 1, v17);
}

void sub_1008ABFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v20 = a8;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v18 = (&v19 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v18);
  sub_100087544();
  sub_10016F998(a4, a5, a6, a7, v20, a9, a10 & 1, 0, 0, a2, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void sub_1008AC0EC(void (*a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = a8;
  v70 = a7;
  v71 = a6;
  v69 = a5;
  v81 = a3;
  v82 = a4;
  v75 = a1;
  v78 = type metadata accessor for OSSignpostID();
  v68 = *(v78 - 8);
  v11 = *(v68 + 64);
  __chkstk_darwin(v78);
  v77 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Location();
  v12 = *(v80 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v80);
  v79 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AvailableDataSets();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v76 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = sub_10022C350(&qword_100CE2A20, &unk_100A95948);
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v67 = a11;
    v66 = a10;
    v73 = a9;
    sub_1000302D8(v75, v22, &qword_100CE2A20, &unk_100A95948);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v22;
      v25 = v79;
      v24 = v80;
      (*(v12 + 16))(v79, v82, v80);
      v26 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v27 = swift_allocObject();
      v28 = v66;
      *(v27 + 2) = v81;
      *(v27 + 3) = v28;
      *(v27 + 4) = v67;
      (*(v12 + 32))(&v27[v26], v25, v24);
      *&v27[(v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;

      swift_errorRetain();
      asyncMain(block:)();

      v29 = static os_signpost_type_t.end.getter();
      v30 = *(Strong + 448);
      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100A2C3F0;
      v32 = v30;
      v33 = Location.name.getter();
      v35 = v34;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100035744();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v29, &_mh_execute_header, v32, "Weather:fetchAvailableDataSets", 30, 2, v73, "location %{private}s failed", 27, 2, v31);

      v83 = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v83 = 0xD00000000000002ALL;
      v84 = 0x8000000100AE3820;
      swift_getErrorValue();
      v36._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v36);

      sub_1005B3D94(v83, v84);
    }

    else
    {
      v37 = v15;
      v38 = *(v15 + 32);
      v63 = v15 + 32;
      v75 = v38;
      v65 = v19;
      v62 = v14;
      v38(v19, v22, v14);
      (*(v12 + 16))(v79, v82, v80);
      v39 = v68;
      (*(v68 + 16))(v77, v73, v78);
      v64 = v37;
      (*(v37 + 16))(v76, v19, v14);
      v40 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v41 = (v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = (v41 + 39) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
      v42 = (*(v39 + 80) + v60 + 8) & ~*(v39 + 80);
      v43 = (v11 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = (*(v37 + 80) + v43 + 16) & ~*(v37 + 80);
      v45 = swift_allocObject();
      (*(v12 + 32))(v45 + v40, v79, v80);
      v46 = (v45 + v41);
      v48 = v71;
      v47 = v72;
      *v46 = v69;
      v46[1] = v48;
      v46[2] = v70;
      v46[3] = v47;
      *(v45 + v61) = v81;
      v49 = Strong;
      *(v45 + v60) = Strong;
      (*(v39 + 32))(v45 + v42, v77, v78);
      v50 = (v45 + v43);
      v51 = v67;
      *v50 = v66;
      v50[1] = v51;
      v52 = v62;
      v75(v45 + v44, v76, v62);

      asyncMain(block:)();

      v53 = static os_signpost_type_t.end.getter();
      v54 = *(v49 + 448);
      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_100A2C3F0;
      v56 = Location.name.getter();
      v58 = v57;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_100035744();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v53, &_mh_execute_header, v54, "Weather:fetchAvailableDataSets", 30, 2, v73, "location %{private}s", 20, 2, v55);

      (*(v64 + 8))(v65, v52);
    }
  }

  else
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
  }
}

void sub_1008AC91C(void (*a1)(_OWORD *__return_ptr), void (*a2)(_OWORD *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t a11)
{
  v54 = a7;
  v55 = a8;
  v66 = a6;
  v63 = a3;
  v64 = a2;
  v65 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v65);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocationCoordinate();
  v58 = *(v17 - 8);
  v59 = v17;
  __chkstk_darwin(v17);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v53 - v20;
  v60 = type metadata accessor for Location();
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v61 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v22 - 8);
  v24 = &v53 - v23;
  v25 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v53 - v32;
  if (Location.kind.getter())
  {
    v53 = updated;
    v64(v67);
    sub_1000863F8(*&v67[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v27);

    sub_1000302D8(v27, v24, &unk_100CE49F0, &unk_100A3AFA0);
    sub_100087544();
    if (sub_100024D10(v24, 1, v28) == 1)
    {
      sub_100018144(v24, &unk_100CE49F0, &unk_100A3AFA0);
    }

    else
    {
      sub_100086450(v24, v33);
      sub_1000863F8(v33, v30);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100087544();
        sub_100087544();
      }

      else
      {
        v34 = v60;
        (*(v62 + 32))();
        Location.coordinate.getter();
        v35 = v56;
        LocationCoordinate.init(_:)();
        v64 = a1;
        Location.coordinate.getter();
        v36 = v57;
        LocationCoordinate.init(_:)();
        sub_1000675AC(&qword_100CAAA28, &type metadata accessor for LocationCoordinate);
        v37 = v59;
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *(v58 + 8);
        v39(v36, v37);
        v39(v35, v37);
        if ((v38 & 1) == 0)
        {
          v44 = v61;
          v43 = v62;
          (*(v62 + 16))(v16, v61, v34);
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v16);
          sub_100087544();
          v45 = static os_signpost_type_t.end.getter();
          v46 = v34;
          v47 = v43;
          v48 = *(v54 + 448);
          sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_100A2C3F0;
          v50 = Location.name.getter();
          v52 = v51;
          *(v49 + 56) = &type metadata for String;
          *(v49 + 64) = sub_100035744();
          *(v49 + 32) = v50;
          *(v49 + 40) = v52;
          os_signpost(_:dso:log:name:signpostID:_:_:)(v45, &_mh_execute_header, v48, "Weather:fetchAvailableDataSets", 30, 2, v55, "location %{private}s", 20, 2, v49);

          (*(v47 + 8))(v44, v46);
          sub_100087544();
          return;
        }

        (*(v62 + 8))(v61, v34);
        sub_100087544();
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v16);
  sub_100087544();
  v40 = *(sub_10022C350(&qword_100CAC0C0, &unk_100A53DF0) + 48);
  *v13 = Location.id.getter();
  v13[1] = v41;
  v42 = type metadata accessor for AvailableDataSets();
  (*(*(v42 - 8) + 16))(v13 + v40, a11, v42);
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  sub_10004F034(v13, v67, a9, a10);
  sub_100018144(v67, &unk_100CD81B0, &unk_100A3B000);
  sub_100087544();
  sub_10018E2C0(1, 0);
}

uint64_t sub_1008AD0F4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v13);
  sub_100087544();
  v14 = Location.id.getter();
  v16 = v15;
  *&v20[0] = a5;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220, &qword_100A4A330);
  v17 = String.init<A>(describing:)();
  *v10 = v14;
  v10[1] = v16;
  v10[2] = v17;
  v10[3] = v18;
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_10004F034(v10, v20, a2, a3);
  sub_100018144(v20, &unk_100CD81B0, &unk_100A3B000);
  return sub_100087544();
}

uint64_t sub_1008AD2CC()
{

  sub_100006F14((v0 + 80));
  sub_100006F14((v0 + 120));
  sub_100006F14((v0 + 160));
  sub_100006F14((v0 + 200));
  sub_100006F14((v0 + 240));
  sub_100006F14((v0 + 280));
  sub_100006F14((v0 + 328));
  sub_100006F14((v0 + 368));
  sub_100006F14((v0 + 408));

  sub_100006F14((v0 + 480));

  return v0;
}

uint64_t sub_1008AD3A8()
{
  sub_1008AD2CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1008AD3DC()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003810(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1008A62A4(v0, v4, v5, v6);
}

uint64_t sub_1008AD448@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v213 = a3;
  v214 = a2;
  v215 = a1;
  v221 = a4;
  v174 = sub_10022C350(&qword_100CE29D8, &qword_100A95880);
  __chkstk_darwin(v174);
  v176 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v177 = &v127 - v6;
  __chkstk_darwin(v7);
  v179 = &v127 - v8;
  __chkstk_darwin(v9);
  v180 = &v127 - v10;
  __chkstk_darwin(v11);
  v181 = &v127 - v12;
  __chkstk_darwin(v13);
  v182 = &v127 - v14;
  __chkstk_darwin(v15);
  v183 = &v127 - v16;
  __chkstk_darwin(v17);
  v184 = &v127 - v18;
  __chkstk_darwin(v19);
  v185 = &v127 - v20;
  __chkstk_darwin(v21);
  v186 = &v127 - v22;
  __chkstk_darwin(v23);
  v175 = (&v127 - v24);
  v25 = sub_10022C350(&qword_100CE2988, &qword_100A95830);
  v211 = *(v25 - 8);
  v212 = v25;
  __chkstk_darwin(v25);
  v225 = (&v127 - v26);
  v27 = sub_10022C350(&qword_100CE2990, &qword_100A95838);
  v209 = *(v27 - 8);
  v210 = v27;
  __chkstk_darwin(v27);
  v224 = &v127 - v28;
  v29 = sub_10022C350(&qword_100CE2998, &qword_100A95840);
  v207 = *(v29 - 8);
  v208 = v29;
  __chkstk_darwin(v29);
  v187 = &v127 - v30;
  v31 = sub_10022C350(&qword_100CE29A0, &qword_100A95848);
  v205 = *(v31 - 8);
  v206 = v31;
  __chkstk_darwin(v31);
  v188 = &v127 - v32;
  v204 = sub_10022C350(&qword_100CE29A8, &qword_100A95850);
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v189 = &v127 - v33;
  v202 = sub_10022C350(&qword_100CE29B0, &qword_100A95858);
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v190 = &v127 - v34;
  v200 = sub_10022C350(&qword_100CAD2A0, &qword_100A3C640);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v191 = &v127 - v35;
  v198 = sub_10022C350(&qword_100CAD290, &qword_100A3C630);
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v192 = &v127 - v36;
  v196 = sub_10022C350(&qword_100CE29B8, &qword_100A95860);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v38 = &v127 - v37;
  v194 = sub_10022C350(&qword_100CE29C0, &unk_100A95868);
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v222 = (&v127 - v39);
  v40 = sub_10022C350(&qword_100CE2A00, &unk_100A958E8);
  __chkstk_darwin(v40 - 8);
  v178 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v220 = &v127 - v43;
  __chkstk_darwin(v44);
  v223 = &v127 - v45;
  ProductRequirementsFactory.AppRequiredProducts.current.getter();
  v46 = v38;
  ProductRequirementsFactory.AppRequiredProducts.minutely.getter();
  ProductRequirementsFactory.AppRequiredProducts.hourly.getter();
  ProductRequirementsFactory.AppRequiredProducts.daily.getter();
  ProductRequirementsFactory.AppRequiredProducts.airQuality.getter();
  ProductRequirementsFactory.AppRequiredProducts.changes.getter();
  ProductRequirementsFactory.AppRequiredProducts.alerts.getter();
  ProductRequirementsFactory.AppRequiredProducts.availability.getter();
  ProductRequirementsFactory.AppRequiredProducts.news.getter();
  ProductRequirementsFactory.AppRequiredProducts.historicalComparisons.getter();
  v47 = type metadata accessor for CurrentWeather();
  sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  v48 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v49 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_10022C350(&qword_100CD00E0, &unk_100A74880);
  v50 = type metadata accessor for WeatherAvailability();
  sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  v218 = v50;
  v217 = v49;
  v219 = v48;
  v216 = v47;
  v51 = v225;
  v52 = v224;
  v53 = v187;
  v54 = v46;
  v55 = v192;
  v56 = v191;
  v57 = v190;
  v58 = v189;
  v59 = v188;
  WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:)();
  v60 = v220;
  (*(v211 + 8))(v51, v212);
  (*(v209 + 8))(v52, v210);
  (*(v207 + 8))(v53, v208);
  (*(v205 + 8))(v59, v206);
  (*(v203 + 8))(v58, v204);
  (*(v201 + 8))(v57, v202);
  (*(v199 + 8))(v56, v200);
  (*(v197 + 8))(v55, v198);
  (*(v195 + 8))(v54, v196);
  (*(v193 + 8))(v222, v194);
  sub_10011C0F0(v223, v60, &qword_100CE2A00, &unk_100A958E8);
  v61 = sub_10022C350(&qword_100CE29E0, &qword_100A95888);
  if (sub_100024D10(v60, 1, v61) != 1)
  {
    v62 = v221;
    v63 = v178;
    sub_1000302D8(v60, v178, &qword_100CE2A00, &unk_100A958E8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v67 = v175;
      sub_10011C0F0(v63, v175, &qword_100CE29D8, &qword_100A95880);
      sub_1000302D8(v67, v186, &qword_100CE29D8, &qword_100A95880);
      v68 = v174;
      v69 = *(v174 + 48);
      v210 = *(v174 + 64);
      v211 = v69;
      v70 = *(v174 + 80);
      v208 = *(v174 + 96);
      v209 = v70;
      v207 = *(v174 + 112);

      v71 = v68[36];
      v205 = v68[40];
      v206 = v71;
      v204 = v68[44];
      sub_1000302D8(v67, v185, &qword_100CE29D8, &qword_100A95880);
      v224 = v68[12];
      v203 = v68[16];
      v202 = v68[20];
      v201 = v68[24];
      v200 = v68[28];

      v199 = v68[36];
      v198 = v68[40];
      v197 = v68[44];
      sub_1000302D8(v67, v184, &qword_100CE29D8, &qword_100A95880);
      v196 = v68[12];
      v223 = v68[16];
      v195 = v68[20];
      v194 = v68[24];
      v193 = v68[28];

      v192 = v68[36];
      v191 = v68[40];
      v190 = v68[44];
      sub_1000302D8(v67, v183, &qword_100CE29D8, &qword_100A95880);
      v189 = v68[12];
      v188 = v68[16];
      v222 = v68[20];
      v187 = v68[24];
      v178 = v68[28];

      v173 = v68[36];
      v172 = v68[40];
      v171 = v68[44];
      sub_1000302D8(v67, v182, &qword_100CE29D8, &qword_100A95880);
      v170 = v68[12];
      v169 = v68[16];
      v168 = v68[20];
      v215 = v68[24];
      v167 = v68[28];

      v166 = v68[36];
      v165 = v68[40];
      v164 = v68[44];
      v72 = v181;
      sub_1000302D8(v67, v181, &qword_100CE29D8, &qword_100A95880);
      v163 = v68[12];
      v162 = v68[16];
      v161 = v68[20];
      v160 = v68[24];
      v213 = v68[28];
      v73 = v72;

      v159 = v68[36];
      v158 = v68[40];
      v157 = v68[44];
      v74 = v180;
      sub_1000302D8(v67, v180, &qword_100CE29D8, &qword_100A95880);
      v156 = v68[12];
      v155 = v68[16];
      v154 = v68[20];
      v153 = v68[24];
      v152 = v68[28];
      v212 = *(v74 + v68[32]);
      v151 = v68[36];
      v150 = v68[40];
      v149 = v68[44];
      v75 = v179;
      sub_1000302D8(v67, v179, &qword_100CE29D8, &qword_100A95880);
      v148 = v68[12];
      v147 = v68[16];
      v146 = v68[20];
      v145 = v68[24];
      v144 = v68[28];
      v76 = v75;

      v131 = v68[36];
      v143 = v68[40];
      v142 = v68[44];
      v77 = v177;
      sub_1000302D8(v67, v177, &qword_100CE29D8, &qword_100A95880);
      v141 = v68[12];
      v140 = v68[16];
      v139 = v68[20];
      v138 = v68[24];
      v137 = v68[28];

      v136 = v68[36];
      v128 = v68[40];
      v135 = v68[44];
      v78 = v176;
      sub_10011C0F0(v67, v176, &qword_100CE29D8, &qword_100A95880);
      v214 = v68[12];
      v134 = v68[16];
      v133 = v68[20];
      v130 = v68[24];
      v132 = v68[28];

      v129 = v68[36];
      v127 = v68[40];
      v174 = v68[44];
      v225 = *(v216 - 8);
      v79 = v62;
      v225[4](v62, v186, v216);
      v80 = type metadata accessor for FetchedForecast(0);
      sub_10011C0F0(&v224[v185], v62 + v80[5], &qword_100CB0BA0, &unk_100A40F70);
      v81 = v80[6];
      v224 = *(v219 - 8);
      (*(v224 + 4))(v62 + v81, v184 + v223, v219);
      v82 = v80[7];
      v83 = v217;
      v223 = *(v217 - 8);
      (*(v223 + 32))(v62 + v82, v222 + v183, v217);
      sub_10011C0F0(v215 + v182, v62 + v80[8], &qword_100CC62B8, &qword_100A61CA0);
      sub_10011C0F0(v73 + v213, v62 + v80[9], &qword_100CACDF8, &unk_100A3E410);
      *(v62 + v80[10]) = v212;
      v84 = v80[11];
      v175 = v80;
      v85 = v218;
      v86 = *(v218 - 8);
      (*(v86 + 32))(v79 + v84, v76 + v131, v218);
      sub_10011C0F0(v77 + v128, v79 + v80[12], &qword_100CE29C8, &qword_100A9AC10);
      sub_10011C0F0(v78 + v174, v79 + v80[13], &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v78 + v127, &qword_100CE29C8, &qword_100A9AC10);
      v87 = *(v86 + 8);
      v87(v78 + v129, v85);
      v212 = v87;
      v213 = v86 + 8;
      sub_100018144(v78 + v132, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v78 + v130, &qword_100CC62B8, &qword_100A61CA0);
      v222 = *(v223 + 8);
      v223 += 8;
      v222(v78 + v133, v83);
      v88 = *(v224 + 1);
      v224 += 8;
      v89 = v219;
      v88(v78 + v134, v219);
      v215 = v88;
      sub_100018144(v214 + v78, &qword_100CB0BA0, &unk_100A40F70);
      v90 = v225[1];
      ++v225;
      v91 = v216;
      v90(v78, v216);
      v92 = v90;
      sub_100018144(v77 + v135, &qword_100CABD10, &qword_100A3ABB0);
      v87(v77 + v136, v85);
      sub_100018144(v77 + v137, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v77 + v138, &qword_100CC62B8, &qword_100A61CA0);
      v93 = v217;
      v94 = v222;
      v222(v77 + v139, v217);
      v95 = v89;
      v88(v77 + v140, v89);
      sub_100018144(v77 + v141, &qword_100CB0BA0, &unk_100A40F70);
      v214 = v92;
      v92(v77, v91);
      v96 = v179;
      sub_100018144(v179 + v142, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v96 + v143, &qword_100CE29C8, &qword_100A9AC10);
      sub_100018144(v96 + v144, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v96 + v145, &qword_100CC62B8, &qword_100A61CA0);
      v94(v96 + v146, v93);
      v97 = v215;
      v215(v96 + v147, v95);
      sub_100018144(v96 + v148, &qword_100CB0BA0, &unk_100A40F70);
      v92(v96, v91);
      v98 = v180;
      sub_100018144(v180 + v149, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v98 + v150, &qword_100CE29C8, &qword_100A9AC10);
      v99 = v212;
      v212(v98 + v151, v218);
      sub_100018144(v98 + v152, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v98 + v153, &qword_100CC62B8, &qword_100A61CA0);
      v100 = v217;
      v101 = v222;
      v222(v98 + v154, v217);
      v102 = v219;
      v97(v98 + v155, v219);
      sub_100018144(v98 + v156, &qword_100CB0BA0, &unk_100A40F70);
      v103 = v214;
      v214(v98, v91);
      v104 = v181;
      sub_100018144(v181 + v157, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v104 + v158, &qword_100CE29C8, &qword_100A9AC10);
      v105 = v218;
      v99(v104 + v159, v218);
      sub_100018144(v104 + v160, &qword_100CC62B8, &qword_100A61CA0);
      v101(v104 + v161, v100);
      v215(v104 + v162, v102);
      sub_100018144(v104 + v163, &qword_100CB0BA0, &unk_100A40F70);
      v103(v104, v216);
      v106 = v182;
      sub_100018144(v182 + v164, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v106 + v165, &qword_100CE29C8, &qword_100A9AC10);
      v107 = v105;
      v108 = v105;
      v109 = v212;
      v212(v106 + v166, v107);
      sub_100018144(v106 + v167, &qword_100CACDF8, &unk_100A3E410);
      v101(v106 + v168, v100);
      v110 = v219;
      v111 = v215;
      v215(v106 + v169, v219);
      sub_100018144(v106 + v170, &qword_100CB0BA0, &unk_100A40F70);
      v112 = v216;
      v113 = v214;
      v214(v106, v216);
      v114 = v183;
      sub_100018144(v183 + v171, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v114 + v172, &qword_100CE29C8, &qword_100A9AC10);
      v109(v114 + v173, v108);
      sub_100018144(v114 + v178, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(&v187[v114], &qword_100CC62B8, &qword_100A61CA0);
      v111(&v188[v114], v110);
      sub_100018144(&v189[v114], &qword_100CB0BA0, &unk_100A40F70);
      v113(v114, v112);
      v115 = v113;
      v116 = v184;
      sub_100018144(&v190[v184], &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(&v191[v116], &qword_100CE29C8, &qword_100A9AC10);
      v117 = v218;
      v118 = v109;
      v109(&v192[v116], v218);
      sub_100018144(v116 + v193, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v116 + v194, &qword_100CC62B8, &qword_100A61CA0);
      v119 = v217;
      v120 = v222;
      v222(v116 + v195, v217);
      sub_100018144(v116 + v196, &qword_100CB0BA0, &unk_100A40F70);
      v115(v116, v112);
      v121 = v185;
      sub_100018144(v185 + v197, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v121 + v198, &qword_100CE29C8, &qword_100A9AC10);
      v118(v121 + v199, v117);
      sub_100018144(v121 + v200, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v121 + v201, &qword_100CC62B8, &qword_100A61CA0);
      v122 = v119;
      v120(v121 + v202, v119);
      v123 = v219;
      v124 = v215;
      v215(v121 + v203, v219);
      v214(v121, v112);
      v125 = v186;
      sub_100018144(v186 + v204, &qword_100CABD10, &qword_100A3ABB0);
      sub_100018144(v125 + v205, &qword_100CE29C8, &qword_100A9AC10);
      v118(v125 + v206, v218);
      sub_100018144(v125 + v207, &qword_100CACDF8, &unk_100A3E410);
      sub_100018144(v125 + v208, &qword_100CC62B8, &qword_100A61CA0);
      v222(v125 + v209, v122);
      v60 = v220;
      v124(v125 + v210, v123);
      sub_100018144(v125 + v211, &qword_100CB0BA0, &unk_100A40F70);
      v65 = v221;
      v66 = 0;
      v64 = v175;
      goto LABEL_6;
    }

    sub_100018144(v63, &qword_100CE29E0, &qword_100A95888);
  }

  v64 = type metadata accessor for FetchedForecast(0);
  v65 = v221;
  v66 = 1;
LABEL_6:
  sub_10001B350(v65, v66, 1, v64);
  return sub_100018144(v60, &qword_100CE2A00, &unk_100A958E8);
}

void sub_1008AF260()
{
  sub_10000C778();
  v3 = v2;
  v24 = v4;
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  sub_10000548C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  v11 = *v1;
  Hasher.init(_seed:)();
  v12 = *v3;
  v13 = v3[1];
  String.hash(into:)();
  v25 = v0;
  type metadata accessor for LocationOfInterestType();
  sub_1000675AC(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v6 + 72);
    while (1)
    {
      sub_1000863F8(*(v11 + 48) + v18 * v16, v10);
      v19 = *v10 == v12 && v10[1] == v13;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static LocationOfInterestType.== infix(_:_:)())
      {
        break;
      }

      sub_10003BC2C();
      v16 = (v16 + 1) & v17;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_10003BC2C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    v26 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A19B8();
      v23 = v26;
    }

    sub_100086450(*(v23 + 48) + v18 * v16, v24);
    sub_1008AFA34(v16);
    *v1 = v26;
    v20 = v24;
    v21 = 0;
  }

  else
  {
LABEL_10:
    v20 = v24;
    v21 = 1;
  }

  sub_10001B350(v20, v21, 1, v25);
  sub_10000536C();
}

void sub_1008AF4D0()
{
  sub_100071768();
  sub_1000B91E8();
  v4 = sub_100542CB0(v2);
  sub_1000164A8(v4, v5, v6);

  Hasher._finalize()();
  sub_100086900();
  if (v7)
  {
    while (1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x73776F626E696172;
      switch(*(*(v3 + 48) + v1))
      {
        case 1:
          v9 = 0x6E696E746867696CLL;
          v8 = 0xE900000000000067;
          break;
        case 2:
          v8 = 0xE400000000000000;
          v9 = 1818845544;
          break;
        case 3:
          v8 = 0xE500000000000000;
          v9 = 0x656B6F6D73;
          break;
        case 4:
          v8 = 0xE300000000000000;
          v9 = 6778726;
          break;
        case 5:
          v8 = 0xE400000000000000;
          v9 = 1702519144;
          break;
        default:
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x73776F626E696172;
      switch(v2)
      {
        case 1:
          v11 = 0x6E696E746867696CLL;
          v10 = 0xE900000000000067;
          break;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1818845544;
          break;
        case 3:
          v10 = 0xE500000000000000;
          v11 = 0x656B6F6D73;
          break;
        case 4:
          v10 = 0xE300000000000000;
          v11 = 6778726;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v11 = 1702519144;
          break;
        default:
          break;
      }

      if (v9 == v11 && v8 == v10)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_22;
      }

      sub_1000F007C();
      if ((v14 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A1DF8();
    }

    v16 = sub_1000B7C30();
    sub_1008AFD38(v16);
    *v0 = v17;
  }

LABEL_25:
  sub_100051A4C();
}

void sub_1008AF6D8()
{
  sub_100071768();
  sub_1000B91E8();
  v4 = sub_100542D8C(v2);
  sub_1000164A8(v4, v5, v6);

  Hasher._finalize()();
  sub_100086900();
  if (v7)
  {
    while (1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x746E617361656C70;
      switch(*(*(v3 + 48) + v1))
      {
        case 1:
          v9 = 0x617361656C706E75;
          v8 = 0xEA0000000000746ELL;
          break;
        case 2:
          v8 = 0xE300000000000000;
          v9 = 7630696;
          break;
        case 3:
          v8 = 0xE600000000000000;
          v9 = 0x796C6C696863;
          break;
        case 4:
          v8 = 0xE500000000000000;
          v10 = 1734833517;
          goto LABEL_10;
        case 5:
          v8 = 0xE300000000000000;
          v9 = 7959140;
          break;
        case 6:
          v8 = 0xE500000000000000;
          v10 = 1684957559;
LABEL_10:
          v9 = v10 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v8 = 0xE400000000000000;
          v9 = 1835819363;
          break;
        default:
          break;
      }

      v11 = 0xE800000000000000;
      v12 = 0x746E617361656C70;
      switch(v2)
      {
        case 1:
          v12 = 0x617361656C706E75;
          v11 = 0xEA0000000000746ELL;
          break;
        case 2:
          v11 = 0xE300000000000000;
          v12 = 7630696;
          break;
        case 3:
          v11 = 0xE600000000000000;
          v12 = 0x796C6C696863;
          break;
        case 4:
          v11 = 0xE500000000000000;
          v13 = 1734833517;
          goto LABEL_19;
        case 5:
          v11 = 0xE300000000000000;
          v12 = 7959140;
          break;
        case 6:
          v11 = 0xE500000000000000;
          v13 = 1684957559;
LABEL_19:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v11 = 0xE400000000000000;
          v12 = 1835819363;
          break;
        default:
          break;
      }

      if (v9 == v12 && v8 == v11)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_28;
      }

      sub_1000F007C();
      if ((v16 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A1E0C();
    }

    v18 = sub_1000B7C30();
    sub_1008AFF80(v18);
    *v0 = v19;
  }

LABEL_31:
  sub_100051A4C();
}

uint64_t sub_1008AF928(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Namespace.ID.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v5 = v3 & v4;
    if (((1 << (v3 & v4)) & *(v2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (static Namespace.ID.== infix(_:_:)())
    {
      break;
    }

    v3 = v5 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v10 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006A204C();
    v8 = v10;
  }

  v6 = *(*(v8 + 48) + 8 * v5);
  sub_1008B01F0(v5);
  *v1 = v10;
  return v6;
}

void sub_1008AFA34(int64_t a1)
{
  v30 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v3 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v31 = *(v3 + 72);
      v13 = v10;
      while (1)
      {
        v14 = v7;
        v15 = v31 * v9;
        sub_1000863F8(*(v6 + 48) + v31 * v9, v5);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v16 = v13;
        type metadata accessor for LocationOfInterestType();
        sub_1000675AC(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
        dispatch thunk of Hashable.hash(into:)();
        v17 = Hasher._finalize()();
        sub_100087544();
        v18 = v17 & v16;
        v13 = v16;
        if (a1 >= v12)
        {
          if (v18 < v12 || a1 < v18)
          {
            goto LABEL_24;
          }
        }

        else if (v18 < v12 && a1 < v18)
        {
          goto LABEL_24;
        }

        v21 = *(v6 + 48);
        v22 = v31 * a1;
        v23 = v21 + v31 * a1;
        v24 = v21 + v15 + v31;
        if (v31 * a1 < v15 || v23 >= v24)
        {
          break;
        }

        a1 = v9;
        if (v22 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v9 = (v9 + 1) & v16;
        v7 = v14;
        if (((*(v14 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v9;
      goto LABEL_24;
    }

LABEL_25:

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v6 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v28;
    ++*(v6 + 36);
  }
}

unint64_t sub_1008AFD38(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1008AFF80(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1008B01F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        Namespace.ID.hash(into:)();
        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1008B038C()
{
  v1 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = type metadata accessor for NewsDataModel(0);
  sub_100003810(v9);
  v10 = sub_100040C54();

  return sub_1008A74CC(v10, v11, v0 + v3, v0 + v8, v0 + v12);
}

uint64_t sub_1008B04A0()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for WeatherServiceLocationOptions();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  sub_100069BF8();
  v15 = type metadata accessor for TimeState(0);
  sub_100003AE8(v15);
  sub_1000FFCA0();
  return sub_1008A801C(v0, v16, v1 + v4, v1 + v9, v1 + v14, v17, v18, v19, v24, v23, v20, v21, v22);
}

uint64_t sub_1008B068C()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}

__n128 sub_1008B0758()
{
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  sub_100049E3C();
  sub_1008A852C();
  return result;
}

uint64_t sub_1008B07E4()
{
  v2 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v2);
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  v4 = type metadata accessor for NewsDataModel(0);
  sub_100003810(v4);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000FDB98;
  sub_1000A7D8C();

  return sub_1008A7838(v7, v8, v9, v10, v5, v11, v12, v13);
}

uint64_t sub_1008B098C()
{
  v0 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v0);
  v1 = type metadata accessor for PreprocessedWeatherData(0);
  sub_100003AE8(v1);
  v2 = type metadata accessor for NewsDataModel(0);
  sub_100003AE8(v2);
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  sub_100049E3C();
  sub_1000A40A4();

  return sub_1008A7F84(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1008B0B20()
{
  sub_100071630();
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  v1 = sub_10001339C();
  return sub_1008A65D8(v1, v2, v3, v4);
}

uint64_t sub_1008B0BB0()
{
  sub_100071630();
  v0 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v2 = sub_1000AF69C();
  sub_100003AE8(v2);
  v3 = sub_10001339C();
  return sub_1008A9C2C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1008B0CF0()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80));
  v13 = *(v12 + *(v9 + 64));

  return sub_1008AAA44(v0, v10, v11, v1 + v4, v12, v13);
}

void sub_1008B0DD4()
{
  sub_100017580();
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  sub_1000203C4();
  v6 = type metadata accessor for OSSignpostID();
  sub_100003810(v6);
  v8 = *(v1 + v2);
  v9 = *(v1 + 16);
  v10 = v1 + ((v2 + *(v7 + 80) + 8) & ~*(v7 + 80));

  sub_1008AAB6C(v0, v9, v1 + v5, v8, v10);
}

uint64_t sub_1008B0EA4()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  sub_100049E3C();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1008AB5CC(v3, v0 + v2, v5, v6);
}

uint64_t sub_1008B0F30()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = type metadata accessor for WeatherStatisticsModel();
  sub_100003AE8(v4);
  sub_100049E3C();
  v6 = *(v0 + 16);
  v8 = *(v0 + v7);

  return sub_1008AB494(v6, v0 + v3, v0 + v5, v8);
}

uint64_t sub_1008B1014()
{
  v1 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003810(v6);
  v7 = sub_1000C8B74();
  v9 = *(v0 + v5);
  v10 = *(v0 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1008AB8F4(v7, v0 + v3, v9, v10, v0 + v8);
}

void sub_1008B1104()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1000203C4();
  v5 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v5);
  sub_10019258C();
  sub_1008ABFC8(v0, v7, v8, v1 + v4, v9, v10, v11, v12, v13, *(v13 + v6));
}

void sub_1008B11EC()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1000203C4();
  v5 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v5);
  sub_100049E3C();
  sub_10019258C();
  sub_1008AC0EC(v0, v7, v8, v1 + v4, v9, v10, v11, v12, v13, *(v1 + v6), *(v1 + v6 + 8));
}

uint64_t sub_1008B12DC()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_1008B13B0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  sub_100049E3C();
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *&v1[v6];
  v8 = *(v1 + 4);

  return a1(v4, v5, v8, &v1[v3], v7);
}

void sub_1008B1448()
{
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_10017080C();
  v5 = (v1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v7);
  v10 = (*(v8 + 80) + v6 + 8) & ~*(v8 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for AvailableDataSets();
  sub_100003810(v12);
  sub_1008AC91C((v0 + v4), *(v0 + v1), *(v0 + v1 + 8), *(v0 + v1 + 16), *(v0 + v1 + 24), *(v0 + v5), *(v0 + v6), v0 + v10, *(v0 + v11), *(v0 + v11 + 8), v0 + ((*(v13 + 80) + v11 + 16) & ~*(v13 + 80)));
}

uint64_t sub_1008B16A0()
{

  return type metadata accessor for WeatherDataModel();
}

uint64_t sub_1008B16C0()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Domain();
  __chkstk_darwin(v7 - 8);
  sub_1000101A4();
  v8 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  (*(v10 + 104))(v14, enum case for FeatureState.default(_:), v8);
  static Domain.weatherInternal.getter();
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = Setting<>.init(_:defaultValue:domain:access:)();
  qword_100D91230 = result;
  return result;
}

uint64_t sub_1008B1898()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100006738();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000101A4();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:));
  v4 = sub_100003F94();
  v5(v4);
  v8 = 0;
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  result = sub_100005908(49, 0x8000000100AE38E0, &v8);
  qword_100D91240 = result;
  return result;
}

uint64_t sub_1008B1A00()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100006738();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000101A4();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:));
  v4 = sub_100003F94();
  v5(v4);
  v8 = 0;
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  result = sub_100005908(66, 0x8000000100AE3890, &v8);
  qword_100D91248 = result;
  return result;
}

uint64_t sub_1008B1B68()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100006738();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000101A4();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:));
  v4 = sub_100003F94();
  v5(v4);
  v8 = 12;
  v6 = sub_10022C350(&qword_100CAFFD0, &unk_100A964A0);
  sub_100003B6C(v6);
  result = sub_100005908(51, 0x8000000100AE3850, &v8);
  qword_100D91250 = result;
  return result;
}

uint64_t sub_1008B1CD4()
{
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___locationAnimationKind, &qword_100CC3788, &qword_100A5C580);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___animationKind, &qword_100CE2C00, &unk_100A95B30);
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory));
  return v0;
}

uint64_t sub_1008B1D3C()
{
  sub_1008B1CD4();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionBackgroundModelInputFactory.BackgroundViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008B1E7C()
{
  result = qword_100CE2BF8;
  if (!qword_100CE2BF8)
  {
    result = swift_getWitnessTable(aZ_0, &type metadata for WeatherConditionBackgroundModelInputFactory.BackgroundViewType, v0, v1);
    atomic_store(result, &qword_100CE2BF8);
  }

  return result;
}

void sub_1008B1ED0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v129 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v121 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v110 - v5;
  v7 = type metadata accessor for WeatherCondition();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  sub_100003918(v9 - v8);
  v120 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v119 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100003918(v13 - v12);
  v14 = type metadata accessor for Condition();
  sub_1000037C4();
  v128 = v15;
  __chkstk_darwin(v16);
  sub_100003848();
  v122 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_100003918(&v110 - v19);
  v144 = type metadata accessor for Date();
  sub_1000037C4();
  v137 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v143 = v23 - v22;
  v142 = type metadata accessor for Calendar();
  sub_1000037C4();
  v133 = v24;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v141 = v27 - v26;
  v139 = sub_10022C350(&qword_100CA7008, &qword_100A31FF0);
  sub_100003828();
  __chkstk_darwin(v28);
  v125 = &v110 - v29;
  v30 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v124 = v31;
  __chkstk_darwin(v32);
  sub_100003848();
  v138 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  v36 = &v110 - v35;
  sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_100003918(&v110 - v38);
  v130 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_100003848();
  v126 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  v140 = &v110 - v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  v131 = &v110 - v46;
  sub_10022C350(&qword_100CB1288, &unk_100A5D770);
  sub_100003828();
  __chkstk_darwin(v47);
  v49 = &v110 - v48;
  v50 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  sub_100727E74(a1, v49);
  if (sub_100024D10(v49, 1, v50) == 1)
  {
    sub_10003FDF4(a1, &qword_100CB1288, &unk_100A5D770);
    v57 = v49;
    v58 = &qword_100CB1288;
    v59 = &unk_100A5D770;
LABEL_12:
    sub_10003FDF4(v57, v58, v59);
    v83 = 1;
    v84 = v132;
LABEL_26:
    v109 = type metadata accessor for LocationConditionData();
    sub_10001B350(v84, v83, 1, v109);
    return;
  }

  v111 = v14;
  v114 = v6;
  v116 = a1;
  v112 = v52;
  (*(v52 + 32))(v56, v49, v50);
  v113 = v56;
  WeatherDataModel.dailyForecast.getter();
  v60 = v124;
  (*(v124 + 16))(v138, v36, v30);
  sub_1008B2B34(&qword_100CA7010, &protocol conformance descriptor for Forecast<A>);
  v61 = v125;
  dispatch thunk of Sequence.makeIterator()();
  v138 = *(v139 + 36);
  v62 = sub_1008B2B34(&qword_100CA7018, &protocol conformance descriptor for Forecast<A>);
  v139 = v40 + 32;
  v134 = v137 + 1;
  v135 = (v40 + 16);
  ++v133;
  v137 = (v40 + 8);
  v63 = v130;
  v115 = v50;
  v64 = v36;
  v65 = v61;
  v66 = v126;
  v136 = v36;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v65 + v138) == v145)
    {
      sub_10003FDF4(v65, &qword_100CA7008, &qword_100A31FF0);
      (*(v60 + 8))(v64, v30);
      v77 = 1;
      v78 = v127;
      goto LABEL_9;
    }

    v67 = dispatch thunk of Collection.subscript.read();
    v68 = v62;
    v69 = v140;
    (*v135)(v140);
    v67(&v145, 0);
    v70 = v65;
    v71 = v30;
    v72 = v68;
    dispatch thunk of Collection.formIndex(after:)();
    v73 = *v139;
    (*v139)(v66, v69, v63);
    v74 = v141;
    static Calendar.current.getter();
    v75 = v143;
    DayWeather.date.getter();
    v76 = Calendar.isDateInToday(_:)();
    (*v134)(v75, v144);
    (*v133)(v74, v142);
    if (v76)
    {
      break;
    }

    (*v137)(v66, v63);
    v30 = v71;
    v64 = v136;
    v65 = v70;
    v62 = v72;
  }

  sub_10003FDF4(v70, &qword_100CA7008, &qword_100A31FF0);
  (*(v60 + 8))(v136, v71);
  v78 = v127;
  v73(v127, v66, v63);
  v77 = 0;
LABEL_9:
  v79 = v115;
  sub_10001B350(v78, v77, 1, v63);
  v102 = sub_100024D10(v78, 1, v63) == 1;
  v80 = v129;
  v81 = v114;
  v82 = v128;
  if (v102)
  {
    sub_10003FDF4(v116, &qword_100CB1288, &unk_100A5D770);
    (*(v112 + 8))(v113, v79);
    v58 = &qword_100CAB9B0;
    v59 = &qword_100A3A820;
    v57 = v78;
    goto LABEL_12;
  }

  (*v139)(v131, v78, v63);
  v85 = v117;
  v86 = v113;
  WeatherDataModel.currentWeather.getter();
  v87 = v118;
  CurrentWeather.condition.getter();
  v88 = *(v119 + 8);
  v89 = v120;
  v88(v85, v120);
  v90 = v123;
  v91 = v87;
  v92 = v86;
  v93 = v82;
  sub_1008B2B84(v91, v123);
  v94 = *(v82 + 16);
  v95 = v111;
  v94(v122, v90, v111);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.temperature.getter();
  v96 = v89;
  v97 = v121;
  v88(v85, v96);
  Measurement.value.getter();
  v99 = v98;
  v100 = *(v97 + 8);
  v100(v81, v80);
  v101 = round(v99);
  sub_1000091D0();
  if (!(v103 ^ v104 | v102))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v101 <= -2147483650.0)
  {
    goto LABEL_27;
  }

  if (v101 >= 2147483650.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  DayWeather.highTemperature.getter();
  Measurement.value.getter();
  v106 = v105;
  v100(v81, v80);
  v107 = round(v106);
  sub_1000091D0();
  if (!(v103 ^ v104 | v102))
  {
    goto LABEL_29;
  }

  if (v107 <= -2147483650.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v107 >= 2147483650.0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  DayWeather.lowTemperature.getter();
  Measurement.value.getter();
  v100(v81, v80);
  sub_1000091D0();
  if (!(v103 ^ v104 | v102))
  {
    goto LABEL_32;
  }

  if (v108 <= -2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v108 < 2147483650.0)
  {
    v84 = v132;
    LocationConditionData.init(locationCondition:temperature:temperatureHigh:temperatureLow:)();
    sub_10003FDF4(v116, &qword_100CB1288, &unk_100A5D770);
    (*(v93 + 8))(v123, v95);
    (*v137)(v131, v130);
    (*(v112 + 8))(v92, v115);
    v83 = 0;
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1008B2B34(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10022E824(&qword_100CA7000, &unk_100A3E7F0);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008B2B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for Condition();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  (*(v6 + 16))(v10, a1, v4);
  v18 = (*(v6 + 88))(v10, v4);
  if (v18 == enum case for WeatherCondition.blizzard(_:))
  {
    v19 = &enum case for Condition.blizzard(_:);
LABEL_67:
    v20 = *v19;
    v21 = *(v13 + 104);
    goto LABEL_68;
  }

  if (v18 == enum case for WeatherCondition.blowingDust(_:))
  {
    v19 = &enum case for Condition.dust(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.blowingSnow(_:))
  {
    v19 = &enum case for Condition.blowingSnow(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.breezy(_:))
  {
    v19 = &enum case for Condition.breezy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.clear(_:))
  {
    v19 = &enum case for Condition.clear(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.cloudy(_:))
  {
    v19 = &enum case for Condition.cloudy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.drizzle(_:))
  {
    v19 = &enum case for Condition.drizzle(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.flurries(_:))
  {
    v19 = &enum case for Condition.flurries(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.foggy(_:))
  {
    v19 = &enum case for Condition.fog(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.freezingDrizzle(_:))
  {
    v19 = &enum case for Condition.freezingDrizzle(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.freezingRain(_:))
  {
    v19 = &enum case for Condition.freezingRain(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.frigid(_:))
  {
    v19 = &enum case for Condition.frigid(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.hail(_:))
  {
    v19 = &enum case for Condition.hail(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.haze(_:))
  {
    v19 = &enum case for Condition.haze(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.heavyRain(_:))
  {
    v19 = &enum case for Condition.heavyRain(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.heavySnow(_:))
  {
    v19 = &enum case for Condition.heavySnow(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.hot(_:))
  {
    v19 = &enum case for Condition.hot(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.hurricane(_:))
  {
    v19 = &enum case for Condition.hurricane(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.isolatedThunderstorms(_:))
  {
    v19 = &enum case for Condition.isolatedThunderstorms(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.mostlyClear(_:))
  {
    v19 = &enum case for Condition.mostlyClear(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.mostlyCloudy(_:))
  {
    v19 = &enum case for Condition.mostlyCloudy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.partlyCloudy(_:))
  {
    v19 = &enum case for Condition.partlyCloudy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.rain(_:))
  {
    v19 = &enum case for Condition.rain(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.scatteredThunderstorms(_:))
  {
    v19 = &enum case for Condition.scatteredThunderstorms(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.sleet(_:))
  {
    v19 = &enum case for Condition.sleet(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.smoky(_:))
  {
    v19 = &enum case for Condition.smoke(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.snow(_:))
  {
    v19 = &enum case for Condition.snow(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.strongStorms(_:))
  {
    v19 = &enum case for Condition.severeThunderstorm(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.sunFlurries(_:))
  {
    v19 = &enum case for Condition.snowShowers(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.sunShowers(_:))
  {
    v19 = &enum case for Condition.showers(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.thunderstorms(_:))
  {
    v19 = &enum case for Condition.thunderstorm(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.tropicalStorm(_:))
  {
    v19 = &enum case for Condition.tropicalStorm(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.windy(_:))
  {
    v19 = &enum case for Condition.windy(_:);
    goto LABEL_67;
  }

  v21 = *(v13 + 104);
  if (v18 != enum case for WeatherCondition.wintryMix(_:))
  {
    v21(v17, enum case for Condition.notAvailable(_:), v11);
    (*(v6 + 8))(v10, v4);
    goto LABEL_69;
  }

  v20 = enum case for Condition.mixedRainAndSnow(_:);
LABEL_68:
  v21(v17, v20, v11);
LABEL_69:
  (*(v13 + 32))(a2, v17, v11);
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_1008B31A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008B323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566BC8(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_newsArticle, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v252, &v340);
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MonthlyAveragesChartInput(uint64_t a1)
{
  result = qword_100CE2CE8;
  if (!qword_100CE2CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008B4AD4(uint64_t a1)
{
  type metadata accessor for Calendar();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TemperatureScaleConfiguration();
      if (v3 <= 0x3F)
      {
        sub_1008B4BB8(319);
        if (v4 <= 0x3F)
        {
          sub_1008B4CBC(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Locale();
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

void sub_1008B4BB8(uint64_t a1)
{
  if (!qword_100CE2CF8)
  {
    type metadata accessor for MonthTemperatureStatistics();
    sub_1008B4DC0(&qword_100CD6890, &type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    sub_1008B4DC0(&qword_100CD6898, &type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    sub_1008B4DC0(&qword_100CD68A0, &type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    v1 = type metadata accessor for MonthlyWeatherStatistics();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE2CF8);
    }
  }
}

void sub_1008B4CBC(uint64_t a1)
{
  if (!qword_100CE2D00)
  {
    type metadata accessor for MonthPrecipitationStatistics();
    sub_1008B4DC0(&qword_100CD6878, &type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    sub_1008B4DC0(&qword_100CD6880, &type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    sub_1008B4DC0(&qword_100CD6888, &type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    v1 = type metadata accessor for MonthlyWeatherStatistics();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE2D00);
    }
  }
}

uint64_t sub_1008B4DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1008B4E08(uint64_t a1, uint64_t a2)
{
  if ((static Calendar.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonthlyAveragesChartInput(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static TemperatureScaleConfiguration.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonthTemperatureStatistics();
  sub_1008B4DC0(&qword_100CD6890, &type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  sub_100010ED8(&qword_100CD6898);
  v2 = sub_100010ED8(&qword_100CD68A0);
  if ((sub_10001D0C8(v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonthPrecipitationStatistics();
  sub_1008B4DC0(&qword_100CD6878, &type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  sub_100010ED8(&qword_100CD6880);
  v3 = sub_100010ED8(&qword_100CD6888);
  if ((sub_10001D0C8(v3) & 1) == 0)
  {
    return 0;
  }

  return static Locale.== infix(_:_:)();
}

uint64_t type metadata accessor for DetailChartsViewModel(uint64_t a1)
{
  result = qword_100CE2D98;
  if (!qword_100CE2D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008B5060(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1008B50E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008B50E4(uint64_t a1)
{
  if (!qword_100CE2DA8)
  {
    type metadata accessor for DetailChartViewModel(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE2DA8);
    }
  }
}

void sub_1008B513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (static Date.== infix(_:_:)())
  {
    v28 = *(type metadata accessor for DetailChartsViewModel(0) + 20);
    v29 = *(a1 + v28);
    v30 = *(a2 + v28);

    sub_1009EBD44(v29, v30, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1008B51D4(uint64_t a1, uint64_t a2)
{
  if ((sub_10074757C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PressureComponentViewModel(0);
  sub_100005824(v4[5]);
  v7 = v7 && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v4[6]);
  v10 = v7 && v8 == v9;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v4[7]);
  v13 = v7 && v11 == v12;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  sub_100005824(v4[9]);
  if (v7 && v14 == v15)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1008B52C0()
{
  v1 = type metadata accessor for ChartDarkeningScrim();
  sub_1008B9FA8(&unk_100CE3010, &type metadata accessor for ChartDarkeningScrim, &protocol conformance descriptor for ChartDarkeningScrim);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(v1 - 8) + 8))(v0, v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1008B9FA8(&qword_100CAC3F0, &type metadata accessor for ChartDarkeningScrim, &protocol conformance descriptor for ChartDarkeningScrim);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1008B53E0(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = sub_10022C350(&unk_100CE3020, &qword_100A95E28);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003848();
  v31 = v5;
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v27 - v17;
  v19 = *(v11 + 16);
  v29 = v2;
  v19(v14, v2, v9, v16);
  v27 = sub_1008B9FA8(&qword_100CB9BD0, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v20 = v30;
  sub_1008B9FA8(&qword_100CE3030, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v11 + 32))(&v8[v22], v18, v9);
  }

  else
  {
    (*(v11 + 8))(v18, v9);
    v23 = v28;
    (v19)(&v8[v22], v28, v9);
    (v19)(v14, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  sub_1008B9F38(v8, v31);
  v25 = *v24;
  (*(v11 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

void sub_1008B5770()
{
  swift_getObjectType();

  ApplicationStateMonitor.applicationDidEnterBackground()();
}

void sub_1008B57AC(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void))
{
  v235 = a4;
  v6 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v6 - 8);
  v213 = &v202 - v7;
  v212 = type metadata accessor for Location.Identifier();
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v210 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v209);
  v208 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for LocationModel();
  v207 = *(v216 - 8);
  __chkstk_darwin(v216);
  v206 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  __chkstk_darwin(v11 - 8);
  v218 = &v202 - v12;
  v217 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v217);
  v205 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v215 = &v202 - v15;
  v16 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v16 - 8);
  v219 = &v202 - v17;
  v221 = type metadata accessor for Location();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v226 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v19 - 8);
  v222 = &v202 - v20;
  v227 = type metadata accessor for TimeZone();
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v223 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v224 = &v202 - v23;
  v231 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v231);
  v25 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for NotificationLocation(0);
  __chkstk_darwin(v233);
  v230 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&unk_100CE2F30, &qword_100A95DC0);
  __chkstk_darwin(v27 - 8);
  v232 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v202 - v30;
  v32 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v32 - 8);
  v214 = &v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v202 - v35;
  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_10000703C(v37, qword_100D90B38);
  v39 = a2;
  v234 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v228 = v25;
    v229 = a3;
    v44 = v36;
    v45 = v31;
    v46 = v43;
    *v42 = 138543362;
    v47 = [v39 notification];
    v48 = [v47 request];

    v49 = [v48 content];
    *(v42 + 4) = v49;
    *v46 = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Received notification with content: %{public}@", v42, 0xCu);
    sub_1000180EC(v46, &qword_100CBE0F8, &qword_100A55780);
    v31 = v45;
    v36 = v44;
    v25 = v228;
    a3 = v229;
  }

  v50 = [v39 notification];
  v51 = [v50 request];

  v52 = [v51 content];
  v53 = [v52 userInfo];

  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1008B913C(v54);
  v56 = v55;

  if (v56)
  {
    sub_100879D00();
    if (*(&v237 + 1))
    {
      v57 = v39;
      if (swift_dynamicCast())
      {
        v59 = v239;
        v58 = v240;
        sub_1008B93F4(v56, v36);
        v204 = v59;
        sub_1008B94B8(v59, v58, v39, v31);
        v60 = v232;
        sub_1005C1F54(v31, v232, &unk_100CE2F30, &qword_100A95DC0);
        if (sub_100024D10(v60, 1, v233) != 1)
        {

          v97 = v230;
          sub_10003D708(v60, v230, type metadata accessor for NotificationLocation);
          v98 = *(a3 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
          v99 = *(a3 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
          v100 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
          sub_1008B9EDC(v97, v25, type metadata accessor for NotificationLocation);
          sub_1005C1F54(v36, &v25[v100], &qword_100CB3AB0, &unk_100A2FB80);
          type metadata accessor for NotificationsAction(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v238 = 0;
          v236 = 0u;
          v237 = 0u;
          sub_10004F034(v25, &v236, v98, v99);
          sub_1000180EC(&v236, &unk_100CD81B0, &unk_100A3B000);
          sub_10004FCA8(v25, type metadata accessor for MainAction);
          sub_10004FCA8(v97, type metadata accessor for NotificationLocation);
          v61 = v235;
LABEL_30:
          v61[2](v61);
          v101 = v31;
LABEL_41:
          sub_1000180EC(v101, &unk_100CE2F30, &qword_100A95DC0);
          sub_1000180EC(v36, &qword_100CB3AB0, &unk_100A2FB80);
          v96 = v61;
LABEL_42:
          _Block_release(v96);
          return;
        }

        sub_1000180EC(v60, &unk_100CE2F30, &qword_100A95DC0);
        sub_100879D00();
        v203 = v31;
        if (*(&v237 + 1))
        {
          if (swift_dynamicCast())
          {
            v228 = v25;
            v229 = a3;
            v232 = v36;
            v61 = v235;
            v63 = v239;
            v62 = v240;
            sub_100879D00();
            if (*(&v237 + 1))
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_36;
              }

              sub_100879D00();
              if (*(&v237 + 1))
              {
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_36;
                }

                sub_100879D00();
                if (*(&v237 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v64 = v222;
                    TimeZone.init(identifier:)();

                    v65 = v227;
                    if (sub_100024D10(v64, 1, v227) == 1)
                    {

                      v66 = &qword_100CACE08;
                      v67 = &unk_100A3C1B0;
                      v68 = v64;
LABEL_35:
                      sub_1000180EC(v68, v66, v67);
LABEL_37:
                      v36 = v232;
                      goto LABEL_38;
                    }

                    v114 = v225;
                    v115 = v64;
                    v116 = v224;
                    (*(v225 + 32))(v224, v115, v65);
                    (*(v114 + 16))(v223, v116, v65);
                    v117 = type metadata accessor for Date();
                    sub_10001B350(v219, 1, 1, v117);

                    v230 = v58;
                    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
                    v118 = (v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder);
                    sub_1000161C0((v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder), *(v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder + 24));
                    Location.coordinate.getter();
                    sub_100589768();
                    if (v119)
                    {

                      v120 = v39;
                      v121 = v230;

                      v122 = Logger.logObject.getter();
                      v123 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v122, v123))
                      {
                        v124 = swift_slowAlloc();
                        *&v236 = swift_slowAlloc();
                        *v124 = 141558531;
                        *(v124 + 4) = 1752392040;
                        *(v124 + 12) = 2081;
                        v125 = sub_100078694(v204, v121, &v236);

                        *(v124 + 14) = v125;
                        *(v124 + 22) = 2082;
                        v126 = [v120 notification];
                        v127 = [v126 request];

                        v128 = [v127 identifier];
                        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v131 = v130;

                        v132 = sub_100078694(v129, v131, &v236);

                        *(v124 + 24) = v132;
                        _os_log_impl(&_mh_execute_header, v122, v123, "Dispatching action to route to current location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v124, 0x20u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

                      v36 = v232;
                      v137 = *(v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                      v138 = *(v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
                      v139 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
                      v140 = v228;
                      swift_storeEnumTagMultiPayload();
                      sub_1005C1F54(v36, v140 + v139, &qword_100CB3AB0, &unk_100A2FB80);
                      type metadata accessor for NotificationsAction(0);
                      swift_storeEnumTagMultiPayload();
                      swift_storeEnumTagMultiPayload();
                      v238 = 0;
                      v236 = 0u;
                      v237 = 0u;
                      sub_10004F034(v140, &v236, v137, v138);
                      sub_1000180EC(&v236, &unk_100CD81B0, &unk_100A3B000);
                      v141 = type metadata accessor for MainAction;
                      v142 = v140;
LABEL_50:
                      sub_10004FCA8(v142, v141);
                      (*(v220 + 8))(v226, v221);
                      (*(v225 + 8))(v224, v227);
                      v31 = v203;
                      goto LABEL_30;
                    }

                    sub_1000161C0(v118, v118[3]);
                    Location.coordinate.getter();
                    v133 = v218;
                    sub_1001A34D0(v63, v62);

                    if (sub_100024D10(v133, 1, v217) == 1)
                    {
                      v134 = &qword_100CA6890;
                      v135 = &qword_100A31680;
                      v136 = v133;
                    }

                    else
                    {
                      v143 = v215;
                      sub_10003D708(v133, v215, &type metadata accessor for SavedLocation);
                      v144 = sub_1000668DC();
                      v145 = v208;
                      sub_1008B9EDC(v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v208, type metadata accessor for LocationsState);

                      v146 = *(v145 + *(v209 + 40));

                      sub_10004FCA8(v145, type metadata accessor for LocationsState);
                      v147 = v210;
                      SavedLocation.identifier.getter();
                      v148 = Location.Identifier.id.getter();
                      v150 = v149;
                      (*(v211 + 8))(v147, v212);
                      v151 = v213;
                      sub_100879FB8(v148, v150, v146);

                      v152 = v216;
                      if (sub_100024D10(v151, 1, v216) != 1)
                      {

                        (*(v207 + 32))(v206, v151, v152);
                        sub_1008B9EDC(v143, v205, &type metadata accessor for SavedLocation);
                        v179 = v39;
                        v180 = Logger.logObject.getter();
                        v181 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v180, v181))
                        {
                          v182 = swift_slowAlloc();
                          *&v236 = swift_slowAlloc();
                          *v182 = 141558531;
                          *(v182 + 4) = 1752392040;
                          *(v182 + 12) = 2081;
                          v183 = v205;
                          v184 = SavedLocation.id.getter();
                          v186 = v185;
                          sub_10004FCA8(v183, &type metadata accessor for SavedLocation);
                          v187 = sub_100078694(v184, v186, &v236);

                          *(v182 + 14) = v187;
                          *(v182 + 22) = 2082;
                          v188 = [v179 notification];
                          v189 = [v188 request];

                          v190 = [v189 identifier];
                          v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v193 = v192;

                          v194 = sub_100078694(v191, v193, &v236);

                          *(v182 + 24) = v194;
                          _os_log_impl(&_mh_execute_header, v180, v181, "Dispatching action to route to location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v182, 0x20u);
                          swift_arrayDestroy();
                        }

                        else
                        {

                          sub_10004FCA8(v205, &type metadata accessor for SavedLocation);
                        }

                        v196 = *(v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                        v195 = *(v229 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
                        v197 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
                        v198 = v207;
                        v199 = v228;
                        v200 = v206;
                        v201 = v216;
                        (*(v207 + 16))(v228, v206, v216);
                        swift_storeEnumTagMultiPayload();
                        v36 = v232;
                        sub_1005C1F54(v232, v199 + v197, &qword_100CB3AB0, &unk_100A2FB80);
                        type metadata accessor for NotificationsAction(0);
                        swift_storeEnumTagMultiPayload();
                        swift_storeEnumTagMultiPayload();
                        v238 = 0;
                        v236 = 0u;
                        v237 = 0u;
                        sub_10004F034(v199, &v236, v196, v195);
                        sub_1000180EC(&v236, &unk_100CD81B0, &unk_100A3B000);
                        sub_10004FCA8(v199, type metadata accessor for MainAction);
                        (*(v198 + 8))(v200, v201);
                        v141 = &type metadata accessor for SavedLocation;
                        v142 = v215;
                        goto LABEL_50;
                      }

                      sub_10004FCA8(v143, &type metadata accessor for SavedLocation);
                      v134 = &unk_100CE2F20;
                      v135 = &unk_100A2D7D0;
                      v136 = v151;
                    }

                    sub_1000180EC(v136, v134, v135);
                    sub_100879D00();

                    if (*(&v237 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v153 = v239;
LABEL_58:
                        v154 = v39;

                        v155 = Logger.logObject.getter();
                        v156 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v155, v156))
                        {
                          v157 = swift_slowAlloc();
                          *&v236 = swift_slowAlloc();
                          *v157 = 141558787;
                          *(v157 + 4) = 1752392040;
                          *(v157 + 12) = 2081;
                          v158 = sub_100078694(v204, v58, &v236);

                          *(v157 + 14) = v158;
                          *(v157 + 22) = 2082;
                          v159 = [v154 notification];
                          v160 = [v159 request];

                          v161 = [v160 identifier];
                          v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v164 = v163;

                          v165 = sub_100078694(v162, v164, &v236);

                          *(v157 + 24) = v165;
                          *(v157 + 32) = 1024;
                          v166 = v153;
                          *(v157 + 34) = v153;
                          _os_log_impl(&_mh_execute_header, v155, v156, "Dispatching action to route to preview location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s, isPredictedLocation=%{BOOL}d", v157, 0x26u);
                          swift_arrayDestroy();
                        }

                        else
                        {

                          v166 = v153;
                        }

                        v167 = v226;
                        v169 = v228;
                        v168 = v229;
                        v170 = v214;
                        if (v166)
                        {
                          v171 = type metadata accessor for URL();
                          sub_10001B350(v170, 1, 1, v171);
                        }

                        else
                        {
                          sub_1005C1F54(v232, v214, &qword_100CB3AB0, &unk_100A2FB80);
                        }

                        v173 = *(v168 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                        v172 = *(v168 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
                        v174 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
                        v175 = *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48);
                        v176 = v220;
                        v177 = v167;
                        v178 = v221;
                        (*(v220 + 16))(v169, v177, v221);
                        *(v169 + v175) = v166;
                        swift_storeEnumTagMultiPayload();
                        sub_1005C1F54(v170, v169 + v174, &qword_100CB3AB0, &unk_100A2FB80);
                        type metadata accessor for NotificationsAction(0);
                        swift_storeEnumTagMultiPayload();
                        swift_storeEnumTagMultiPayload();
                        v238 = 0;
                        v236 = 0u;
                        v237 = 0u;
                        sub_10004F034(v169, &v236, v173, v172);
                        sub_1000180EC(&v236, &unk_100CD81B0, &unk_100A3B000);
                        sub_10004FCA8(v169, type metadata accessor for MainAction);
                        sub_1000180EC(v170, &qword_100CB3AB0, &unk_100A2FB80);
                        (*(v176 + 8))(v226, v178);
                        (*(v225 + 8))(v224, v227);
                        v31 = v203;
                        v36 = v232;
                        goto LABEL_30;
                      }
                    }

                    else
                    {
                      sub_1000180EC(&v236, &qword_100CE2F40, &qword_100A2D880);
                    }

                    v153 = 0;
                    goto LABEL_58;
                  }

LABEL_36:

                  goto LABEL_37;
                }
              }
            }

            v66 = &qword_100CE2F40;
            v67 = &qword_100A2D880;
            v68 = &v236;
            goto LABEL_35;
          }
        }

        else
        {

          sub_1000180EC(&v236, &qword_100CE2F40, &qword_100A2D880);
        }

        v61 = v235;
LABEL_38:
        v102 = v39;
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *&v236 = v106;
          *v105 = 136446210;
          v107 = [v102 notification];
          v108 = [v107 request];

          v109 = [v108 identifier];
          v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v111;

          v113 = sub_100078694(v110, v112, &v236);

          *(v105 + 4) = v113;
          _os_log_impl(&_mh_execute_header, v103, v104, "Unable to find saved location or preview location for notification: %{public}s", v105, 0xCu);
          sub_100006F14(v106);
        }

        v61[2](v61);
        v101 = v203;
        goto LABEL_41;
      }
    }

    else
    {

      sub_1000180EC(&v236, &qword_100CE2F40, &qword_100A2D880);
      v57 = v39;
    }

    v82 = v57;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    v85 = os_log_type_enabled(v83, v84);
    v86 = v235;
    if (v85)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v236 = v88;
      *v87 = 136446210;
      v89 = [v82 notification];
      v90 = [v89 request];

      v91 = [v90 identifier];
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      v95 = sub_100078694(v92, v94, &v236);

      *(v87 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v83, v84, "Missing location identifier for notification: %{public}s", v87, 0xCu);
      sub_100006F14(v88);
    }

    v86[2](v86);
    v96 = v86;
    goto LABEL_42;
  }

  v69 = v39;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v236 = v73;
    *v72 = 136446210;
    v74 = [v69 notification];
    v75 = [v74 request];

    v76 = [v75 identifier];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80 = sub_100078694(v77, v79, &v236);

    *(v72 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v70, v71, "Received unexpected notification user info values for notification: %{public}s", v72, 0xCu);
    sub_100006F14(v73);
  }

  v81 = v235;
  v235[2](v235);

  _Block_release(v81);
}

uint64_t UserNotificationMonitor.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v259 = a4;
  v8 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003918(v10);
  v235 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v234 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = sub_100003918(v14 - v13);
  v232 = type metadata accessor for LocationsState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100003918(v18 - v17);
  v239 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v230 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v229 = v22 - v21;
  v23 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100003918(v25);
  v240 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  v238 = v227 - v28;
  v29 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003918(v31);
  v245 = type metadata accessor for Location();
  sub_1000037C4();
  v244 = v32;
  __chkstk_darwin(v33);
  sub_1000037D8();
  v246 = v35 - v34;
  v36 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v36);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  sub_100003918(v38);
  v251 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v249 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  v248 = v227 - v42;
  v254 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  v256 = type metadata accessor for NotificationLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000037D8();
  v253 = (v49 - v48);
  v50 = sub_10022C350(&unk_100CE2F30, &qword_100A95DC0);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  v255 = v52;
  __chkstk_darwin(v53);
  v55 = v227 - v54;
  v56 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v57 = sub_100003810(v56);
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v58);
  v60 = (v227 - v59);
  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  v62 = sub_10000703C(v61, qword_100D90B38);
  v63 = a2;
  v258 = v62;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = sub_100018264();
    v250 = v5;
    v252 = v46;
    v67 = v60;
    v68 = v55;
    v69 = v66;
    v70 = v63;
    v71 = swift_slowAlloc();
    *v69 = 138543362;
    v72 = a3;
    v73 = [v70 notification];
    v74 = [v73 request];

    v75 = [v74 content];
    *(v69 + 4) = v75;
    *v71 = v75;
    a3 = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "Received notification with content: %{public}@", v69, 0xCu);
    sub_1000180EC(v71, &qword_100CBE0F8, &qword_100A55780);
    v76 = v71;
    v63 = v70;
    sub_100003884(v76);
    v77 = v69;
    v55 = v68;
    v60 = v67;
    v46 = v252;
    v5 = v250;
    sub_100003884(v77);
  }

  v78 = [v63 notification];
  v79 = v63;
  v80 = [v78 request];

  v81 = [v80 content];
  v82 = [v81 userInfo];

  v83 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1008B913C(v83);
  v85 = v84;

  if (!v85)
  {
    v107 = v79;
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v108, v109))
    {
      sub_100018264();
      v110 = sub_10000C940();
      sub_100017F9C(v110);
      *v82 = 136446210;
      v111 = [v107 notification];
      v112 = [v111 request];

      v113 = [v112 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100016DAC();

      sub_1000751D4();
      sub_100020C58();
      *(v82 + 1) = v113;
      v116 = "Received unexpected notification user info values for notification: %{public}s";
LABEL_25:
      sub_1000318C8(&_mh_execute_header, v114, v115, v116);
      sub_100006F14(a3);
      v123 = a3;
      a3 = v60;
      sub_100003884(v123);
      sub_100007E54();
    }

LABEL_26:

    return a3();
  }

  v257 = v79;
  sub_100879D00();
  if (!v261)
  {

    sub_1000180EC(&v260, &qword_100CE2F40, &qword_100A2D880);
    v87 = v257;
    goto LABEL_23;
  }

  v86 = swift_dynamicCast();
  v87 = v257;
  if ((v86 & 1) == 0)
  {

LABEL_23:
    v117 = v87;
    v108 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v108, v118))
    {
      sub_100018264();
      v119 = sub_10000C940();
      sub_100017F9C(v119);
      *v87 = 136446210;
      v120 = [v117 notification];
      v121 = [v120 request];

      v122 = [v121 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100016DAC();

      sub_1000751D4();
      sub_100020C58();
      *(v87 + 1) = v122;
      v116 = "Missing location identifier for notification: %{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v89 = v262;
  v88 = v263;
  sub_1008B93F4(v85, v60);
  v227[1] = v89;
  sub_1008B94B8(v89, v88, v87, v55);
  v90 = v255;
  sub_1005C1F54(v55, v255, &unk_100CE2F30, &qword_100A95DC0);
  if (sub_100024D10(v90, 1, v256) == 1)
  {
    sub_1000180EC(v90, &unk_100CE2F30, &qword_100A95DC0);
    sub_100879D00();
    v227[0] = v55;
    if (v261)
    {
      if (swift_dynamicCast())
      {
        v252 = v46;
        v255 = v60;
        v92 = v262;
        v91 = v263;
        sub_10000EE68();
        sub_100879D00();
        if (v261)
        {
          if ((sub_100049E4C(v93, v94, v95, &type metadata for Double) & 1) == 0)
          {
            goto LABEL_33;
          }

          sub_10000EE68();
          sub_100879D00();
          if (v261)
          {
            if ((sub_100049E4C(v96, v97, v98, &type metadata for Double) & 1) == 0)
            {
              goto LABEL_33;
            }

            sub_10000EE68();
            sub_100879D00();
            if (v261)
            {
              if (sub_100049E4C(v99, v100, v101, &type metadata for String))
              {
                v102 = v247;
                TimeZone.init(identifier:)();

                v103 = v251;
                if (sub_100024D10(v102, 1, v251) == 1)
                {

                  v104 = &qword_100CACE08;
                  v105 = &unk_100A3C1B0;
                  v106 = v102;
LABEL_32:
                  sub_1000180EC(v106, v104, v105);
LABEL_34:
                  v60 = v255;
                  goto LABEL_35;
                }

                v253 = a3;
                v144 = v248;
                v143 = v249;
                (*(v249 + 32))(v248, v102, v103);
                (*(v143 + 16))(v242, v144, v103);
                v145 = type metadata accessor for Date();
                sub_10001B350(v243, 1, 1, v145);

                v146 = v246;
                Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
                v250 = v5;
                v147 = v5 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder;
                sub_1000161C0((v250 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder), *(v250 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder + 24));
                Location.coordinate.getter();
                sub_100589768();
                if (v148)
                {

                  v149 = v257;

                  v150 = Logger.logObject.getter();
                  v151 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v150, v151))
                  {
                    swift_slowAlloc();
                    v152 = sub_1000248B0();
                    v260 = v152;
                    sub_10000CB2C(7.2226e-34);
                    v153 = sub_10001882C();

                    *(v147 + 14) = v153;
                    *(v147 + 22) = 2082;
                    v154 = [v149 notification];
                    v155 = [v154 request];

                    v156 = [v155 identifier];
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    sub_100016DAC();

                    v146 = v246;
                    sub_100078694(v155, v85, &v260);
                    sub_100020C58();
                    *(v147 + 24) = v156;
                    _os_log_impl(&_mh_execute_header, v150, v151, "Dispatching action to route to current location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v147, 0x20u);
                    swift_arrayDestroy();
                    sub_100003884(v152);
                    sub_100007E54();
                  }

                  else
                  {
                  }

                  v60 = v255;
                  v161 = v252;
                  v162 = *(v250 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                  v163 = *(v250 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
                  v164 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
                  swift_storeEnumTagMultiPayload();
                  sub_1005C1F54(v60, v161 + v164, &qword_100CB3AB0, &unk_100A2FB80);
                  type metadata accessor for NotificationsAction(0);
                  swift_storeEnumTagMultiPayload();
                  sub_10001161C(v161);
                  sub_10001997C();
                  sub_10004F034(v161, v165, v162, v163);
                  sub_1000180EC(&v260, &unk_100CD81B0, &unk_100A3B000);
                  sub_10001FBB0();
                  sub_10004FCA8(v161, v166);
                  (*(v244 + 8))(v146, v245);
LABEL_46:
                  v167 = (*(v249 + 8))(v248, v251);
                  v55 = v227[0];
                  (v253)(v167);
                  goto LABEL_28;
                }

                sub_1000161C0(v147, *(v147 + 24));
                Location.coordinate.getter();
                v157 = v241;
                sub_1001A34D0(v92, v91);

                if (sub_100024D10(v157, 1, v240) == 1)
                {
                  v158 = &qword_100CA6890;
                  v159 = &qword_100A31680;
                  v160 = v157;
                }

                else
                {
                  v168 = v238;
                  sub_10003D708(v157, v238, &type metadata accessor for SavedLocation);
                  v169 = sub_1000668DC();
                  v170 = v231;
                  sub_1008B9EDC(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v231, type metadata accessor for LocationsState);

                  v157 = *(v170 + *(v232 + 40));

                  sub_10004FCA8(v170, type metadata accessor for LocationsState);
                  v171 = v233;
                  SavedLocation.identifier.getter();
                  v172 = Location.Identifier.id.getter();
                  v174 = v173;
                  (*(v234 + 8))(v171, v235);
                  v175 = v236;
                  sub_100879FB8(v172, v174, v157);

                  v176 = v239;
                  if (sub_100024D10(v175, 1, v239) != 1)
                  {

                    (*(v230 + 32))(v229, v175, v176);
                    sub_1008B9EDC(v168, v228, &type metadata accessor for SavedLocation);
                    v202 = v257;
                    v203 = Logger.logObject.getter();
                    v204 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v203, v204))
                    {
                      swift_slowAlloc();
                      v205 = sub_1000248B0();
                      v260 = v205;
                      sub_10000CB2C(7.2226e-34);
                      v206 = v228;
                      v207 = SavedLocation.id.getter();
                      v209 = v208;
                      sub_10001D0F0();
                      sub_10004FCA8(v206, v210);
                      v211 = sub_100078694(v207, v209, &v260);

                      *(v157 + 14) = v211;
                      *(v157 + 22) = 2082;
                      v212 = [v202 notification];
                      v213 = [v212 request];

                      v214 = [v213 identifier];
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      sub_100016DAC();

                      v215 = sub_1000751D4();

                      *(v157 + 24) = v215;
                      _os_log_impl(&_mh_execute_header, v203, v204, "Dispatching action to route to location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v157, 0x20u);
                      swift_arrayDestroy();
                      sub_100003884(v205);
                      sub_100007E54();
                    }

                    else
                    {

                      sub_10001D0F0();
                      sub_10004FCA8(v228, v216);
                    }

                    v218 = *(v250 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                    v217 = *(v250 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
                    v219 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
                    v220 = v230;
                    v221 = v252;
                    v222 = v229;
                    v223 = v239;
                    (*(v230 + 16))(v252, v229, v239);
                    swift_storeEnumTagMultiPayload();
                    v60 = v255;
                    sub_1005C1F54(v255, v221 + v219, &qword_100CB3AB0, &unk_100A2FB80);
                    type metadata accessor for NotificationsAction(0);
                    swift_storeEnumTagMultiPayload();
                    sub_10001161C(v221);
                    sub_10001997C();
                    sub_10004F034(v221, v224, v218, v217);
                    sub_1000180EC(&v260, &unk_100CD81B0, &unk_100A3B000);
                    sub_10001FBB0();
                    sub_10004FCA8(v221, v225);
                    (*(v220 + 8))(v222, v223);
                    sub_10001D0F0();
                    sub_10004FCA8(v238, v226);
                    (*(v244 + 8))(v246, v245);
                    goto LABEL_46;
                  }

                  sub_10001D0F0();
                  sub_10004FCA8(v168, v177);
                  v158 = &unk_100CE2F20;
                  v159 = &unk_100A2D7D0;
                  v160 = v175;
                }

                sub_1000180EC(v160, v158, v159);
                sub_10000EE68();
                sub_100879D00();

                if (v261)
                {
                  if (swift_dynamicCast())
                  {
                    v178 = v262;
LABEL_54:
                    v179 = v257;

                    v180 = Logger.logObject.getter();
                    v181 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v180, v181))
                    {
                      swift_slowAlloc();
                      v182 = sub_1000248B0();
                      v260 = v182;
                      sub_10000CB2C(7.2227e-34);
                      v183 = sub_10001882C();

                      *(v157 + 14) = v183;
                      *(v157 + 22) = 2082;
                      v184 = [v179 notification];
                      v185 = [v184 request];

                      v186 = [v185 identifier];
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      sub_100016DAC();

                      sub_1000751D4();
                      sub_100020C58();
                      *(v157 + 24) = v186;
                      *(v157 + 32) = 1024;
                      v187 = v178;
                      *(v157 + 34) = v178;
                      _os_log_impl(&_mh_execute_header, v180, v181, "Dispatching action to route to preview location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s, isPredictedLocation=%{BOOL}d", v157, 0x26u);
                      swift_arrayDestroy();
                      sub_100003884(v182);
                      sub_100007E54();
                    }

                    else
                    {

                      v187 = v178;
                    }

                    v188 = v252;
                    v189 = v250;
                    v190 = v237;
                    if (v187)
                    {
                      v191 = type metadata accessor for URL();
                      sub_10001B350(v190, 1, 1, v191);
                    }

                    else
                    {
                      sub_1005C1F54(v255, v237, &qword_100CB3AB0, &unk_100A2FB80);
                    }

                    v193 = *(v189 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                    v192 = *(v189 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
                    v194 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
                    v195 = *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48);
                    v196 = v244;
                    v197 = v246;
                    v198 = v245;
                    (*(v244 + 16))(v188, v246, v245);
                    *(v188 + v195) = v187;
                    swift_storeEnumTagMultiPayload();
                    sub_1005C1F54(v190, v188 + v194, &qword_100CB3AB0, &unk_100A2FB80);
                    type metadata accessor for NotificationsAction(0);
                    swift_storeEnumTagMultiPayload();
                    sub_10001161C(v188);
                    sub_10001997C();
                    sub_10004F034(v188, v199, v193, v192);
                    sub_1000180EC(&v260, &unk_100CD81B0, &unk_100A3B000);
                    sub_10001FBB0();
                    sub_10004FCA8(v188, v200);
                    sub_1000180EC(v190, &qword_100CB3AB0, &unk_100A2FB80);
                    (*(v196 + 8))(v197, v198);
                    v201 = (*(v249 + 8))(v248, v251);
                    v55 = v227[0];
                    v60 = v255;
                    (v253)(v201);
                    goto LABEL_28;
                  }
                }

                else
                {
                  sub_1000180EC(&v260, &qword_100CE2F40, &qword_100A2D880);
                }

                v178 = 0;
                goto LABEL_54;
              }

LABEL_33:

              goto LABEL_34;
            }
          }
        }

        v104 = &qword_100CE2F40;
        v105 = &qword_100A2D880;
        v106 = &v260;
        goto LABEL_32;
      }
    }

    else
    {

      sub_1000180EC(&v260, &qword_100CE2F40, &qword_100A2D880);
    }

LABEL_35:
    v133 = v87;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v134, v135))
    {
      sub_100018264();
      v136 = sub_10000C940();
      sub_100017F9C(v136);
      *v87 = 136446210;
      v137 = [v133 notification];
      v138 = [v137 request];

      v139 = [v138 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100016DAC();

      sub_1000751D4();
      sub_100020C58();
      *(v87 + 1) = v139;
      sub_1000318C8(&_mh_execute_header, v140, v141, "Unable to find saved location or preview location for notification: %{public}s");
      sub_100006F14(a3);
      v142 = a3;
      a3 = v60;
      sub_100003884(v142);
      sub_100007E54();
    }

    a3();
    v132 = v227[0];
    goto LABEL_38;
  }

  v125 = v253;
  sub_10003D708(v90, v253, type metadata accessor for NotificationLocation);
  v126 = *(v5 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
  v127 = *(v5 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher + 8);
  v128 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
  sub_1008B9EDC(v125, v46, type metadata accessor for NotificationLocation);
  sub_1005C1F54(v60, v46 + v128, &qword_100CB3AB0, &unk_100A2FB80);
  type metadata accessor for NotificationsAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001161C(v46);
  sub_10001997C();
  sub_10004F034(v46, v129, v126, v127);
  sub_1000180EC(&v260, &unk_100CD81B0, &unk_100A3B000);
  sub_10001FBB0();
  sub_10004FCA8(v46, v130);
  v131 = sub_10004FCA8(v125, type metadata accessor for NotificationLocation);
  (a3)(v131);
LABEL_28:
  v132 = v55;
LABEL_38:
  sub_1000180EC(v132, &unk_100CE2F30, &qword_100A95DC0);
  return sub_1000180EC(v60, &qword_100CB3AB0, &unk_100A2FB80);
}

void sub_1008B913C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10022C350(&qword_100CE3040, &qword_100A95E88);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1001663A0(*(a1 + 48) + 40 * v9, __src);
    sub_100109514(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001663A0(__dst, v19);
    if (!swift_dynamicCast())
    {
      sub_1000180EC(__dst, &qword_100CE3048, &unk_100A95E90);

      return;
    }

    v5 &= v5 - 1;
    sub_100109514(&__dst[40], v20);
    sub_1000180EC(__dst, &qword_100CE3048, &unk_100A95E90);
    v21 = v18;
    sub_100166170(v20, v22);
    v10 = v21;
    sub_100166170(v22, v23);
    sub_100166170(v23, &v21);
    v11 = sub_100031B34();
    v12 = v11;
    if (v13)
    {
      *(v2[6] + 16 * v11) = v10;

      v14 = (v2[7] + 32 * v12);
      sub_100006F14(v14);
      sub_100166170(&v21, v14);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      *(v2[6] + 16 * v11) = v10;
      sub_100166170(&v21, (v2[7] + 32 * v11));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v2[2] = v17;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1008B93F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100031B34(), (v5 & 1) != 0) && (sub_100109514(*(a1 + 56) + 32 * v4, v8), (swift_dynamicCast() & 1) != 0))
  {
    URL.init(string:)();
  }

  else
  {
    v7 = type metadata accessor for URL();
    return sub_10001B350(a2, 1, 1, v7);
  }
}

uint64_t sub_1008B94B8@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v60 = a3;
  v61 = a4;
  v6 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v58[-v7];
  v9 = type metadata accessor for LocationsState(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for LocationModel();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v58[-v18];
  v20 = sub_1000668DC();
  sub_1008B9EDC(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v12, type metadata accessor for LocationsState);

  v21 = *&v12[*(v10 + 48)];

  sub_10004FCA8(v12, type metadata accessor for LocationsState);
  sub_100879FB8(a1, a2, v21);

  if (sub_100024D10(v8, 1, v13) != 1)
  {
    v28 = *(v14 + 32);
    v28(v19, v8, v13);
    if (qword_100CA26F0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000703C(v29, qword_100D90B38);
    (*(v14 + 16))(v16, v19, v13);
    v30 = v60;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_1008B9FA8(&qword_100CE3038, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
      v59 = v32;
      dispatch thunk of Identifiable.id.getter();
      (*(v14 + 8))(v16, v13);
      v34 = v28;
      v35 = sub_100078694(v62[0], v62[1], &v63);

      *(v33 + 14) = v35;
      *(v33 + 22) = 2082;
      v36 = [v30 notification];
      v37 = [v36 request];

      v38 = [v37 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_100078694(v39, v41, &v63);

      *(v33 + 24) = v42;
      v28 = v34;
      _os_log_impl(&_mh_execute_header, v31, v59, "Dispatching action to route to location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v56 = v61;
    v28(v61, v19, v13);
    v55 = type metadata accessor for NotificationLocation(0);
    goto LABEL_20;
  }

  sub_1000180EC(v8, &unk_100CE2F20, &unk_100A2D7D0);
  if (static Location.currentLocationID.getter() == a1 && v22 == a2)
  {

    goto LABEL_13;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_13:
    if (qword_100CA26F0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000703C(v43, qword_100D90B38);
    v44 = v60;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v47 = 141558531;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      *(v47 + 14) = sub_100078694(a1, a2, v62);
      *(v47 + 22) = 2082;
      v48 = [v44 notification];
      v49 = [v48 request];

      v50 = [v49 identifier];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_100078694(v51, v53, v62);

      *(v47 + 24) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "Dispatching action to route to current location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v47, 0x20u);
      swift_arrayDestroy();
    }

    v55 = type metadata accessor for NotificationLocation(0);
    v56 = v61;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    v26 = v56;
    v27 = 0;
    v25 = v55;
    return sub_10001B350(v26, v27, 1, v25);
  }

  v25 = type metadata accessor for NotificationLocation(0);
  v26 = v61;
  v27 = 1;
  return sub_10001B350(v26, v27, 1, v25);
}

void sub_1008B9C54(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  (a4[2])(a4, 26, a3);

  _Block_release(a4);
}

void sub_1008B9CE0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
}

Swift::Void __swiftcall UserNotificationMonitor.userNotificationCenter(_:openSettingsFor:)(UNUserNotificationCenter _, UNNotification_optional openSettingsFor)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = v2 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher;
  v8 = *(v2 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
  v9 = *(v7 + 8);
  type metadata accessor for NotificationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v6, v11, v8, v9);
  sub_1000180EC(v11, &unk_100CD81B0, &unk_100A3B000);
  sub_10001FBB0();
  sub_10004FCA8(v6, v10);
}

uint64_t sub_1008B9EDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1008B9F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CE3020, &qword_100A95E28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B9FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1008BA000@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v24[1] = a3;
  v24[2] = a1;
  v5 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = (v13 - v12);
  if (qword_100CA2A00 != -1)
  {
    swift_once();
  }

  sub_10001D108();
  sub_1008BB548(v15, v16, v17, byte_100A95EF0);
  Configurable.setting<A>(_:)();
  if (v26 == 1)
  {
    goto LABEL_4;
  }

  if (qword_100CA29F0 != -1)
  {
    swift_once();
  }

  Configurable.setting<A>(_:)();
  if (v25 != 1)
  {
    type metadata accessor for WeatherData(0);
    WeatherDataModel.airQuality.getter();
    if (sub_100024D10(v7, 1, v8) != 1)
    {
      v23 = *(v10 + 32);
      v23(v14, v7, v8);
      v23(a4, v14, v8);
      type metadata accessor for LocationViewComponent(0);
      swift_storeEnumTagMultiPayload();
      sub_100006AA0();
      return sub_10001B350(v18, v19, v20, v21);
    }

    sub_100018144(v7, &qword_100CC62B8, &qword_100A61CA0);
LABEL_4:
    type metadata accessor for LocationViewComponent(0);
    v18 = sub_100007E1C();
    return sub_10001B350(v18, v19, v20, v21);
  }

  return sub_1008BA2CC(a4);
}

uint64_t sub_1008BA2CC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Location();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AirQuality();
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2AA8 != -1)
  {
    swift_once();
  }

  v16 = qword_100D91388;
  static Location.cupertino.getter();
  v17 = Location.id.getter();
  v19 = v18;
  (*(v2 + 8))(v4, v1);
  sub_1000864C0(v17, v19, v16);

  v20 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v7, 1, v20) == 1)
  {
    v21 = &qword_100CA37B0;
    v22 = &unk_100A2D740;
    v23 = v7;
LABEL_7:
    sub_100018144(v23, v21, v22);
    sub_10001B350(v13, 1, 1, v14);
    goto LABEL_8;
  }

  sub_1001A0D3C();
  sub_10010603C(v7, type metadata accessor for LocationWeatherDataState);
  v24 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v10, 1, v24) == 1)
  {
    v21 = &qword_100CA3898;
    v22 = &qword_100A314D0;
    v23 = v10;
    goto LABEL_7;
  }

  WeatherDataModel.airQuality.getter();
  sub_10010603C(v10, type metadata accessor for WeatherData);
  if (sub_100024D10(v13, 1, v14) != 1)
  {
    v29 = v34;
    v30 = *(v35 + 32);
    v30(v34, v13, v14);
    v31 = v36;
    v30(v36, v29, v14);
    v32 = type metadata accessor for LocationViewComponent(0);
    swift_storeEnumTagMultiPayload();
    v26 = v31;
    v27 = 0;
    v25 = v32;
    return sub_10001B350(v26, v27, 1, v25);
  }

LABEL_8:
  sub_100018144(v13, &qword_100CC62B8, &qword_100A61CA0);
  v25 = type metadata accessor for LocationViewComponent(0);
  v26 = v36;
  v27 = 1;
  return sub_10001B350(v26, v27, 1, v25);
}

uint64_t sub_1008BA700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  sub_1000037C4();
  v38 = v7;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PrecipitationRelevancyWindow();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = (v16 - v15);
  if (qword_100CA2A08 != -1)
  {
    swift_once();
  }

  sub_10001D108();
  sub_1008BB548(v18, v19, v20, byte_100A95EF0);
  Configurable.setting<A>(_:)();
  if (v40 == 1)
  {
    v21 = v39;
    sub_1008BAAF8(a1, v39);
    v22 = type metadata accessor for LocationViewComponent(0);
    v23 = v21;
    v24 = 0;
LABEL_14:
    v33 = 1;
    return sub_10001B350(v23, v24, v33, v22);
  }

  if (*(a1 + *(type metadata accessor for NextHourPrecipitationComponentParameters(0) + 28)) == 1)
  {
    *v17 = vdupq_n_s64(0x40AC200000000000uLL);
    v25 = &enum case for PrecipitationRelevancyWindow.window(_:);
  }

  else
  {
    v25 = &enum case for PrecipitationRelevancyWindow.default(_:);
  }

  v26 = v38;
  (*(v13 + 104))(v17, *v25, v11);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.minuteForecast.getter();
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    v27 = sub_100010EF0();
    v28(v27);
    sub_100018144(v5, &qword_100CB0BA0, &unk_100A40F70);
LABEL_13:
    v22 = type metadata accessor for LocationViewComponent(0);
    v23 = v39;
    v24 = 1;
    goto LABEL_14;
  }

  v37 = *(v26 + 32);
  v38 = v6;
  v37(v10, v5);
  if ((Forecast<>.isRelevant(in:)() & 1) == 0)
  {
    (*(v26 + 8))(v10, v38);
    v34 = sub_100010EF0();
    v35(v34);
    goto LABEL_13;
  }

  v29 = v39;
  WeatherDataModel.currentWeather.getter();
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(0);
  static WeatherClock.date.getter();
  v31 = sub_100010EF0();
  v32(v31);
  (v37)(v29 + *(HourPrecipitationComponent + 24), v10, v38);
  type metadata accessor for LocationViewComponent(0);
  swift_storeEnumTagMultiPayload();
  sub_100006AA0();
  return sub_10001B350(v23, v24, v33, v22);
}

uint64_t sub_1008BAAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v64 = &v47 - v3;
  v4 = type metadata accessor for Location();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v47 - v7;
  v8 = type metadata accessor for WeatherMetadata();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v47 - v11;
  v12 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ApparentPrecipitationIntensity();
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for Precipitation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v21 = *(v50 - 8);
  __chkstk_darwin(v50);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v49 = &v47 - v25;
  __chkstk_darwin(v26);
  v53 = type metadata accessor for MinuteWeather();
  v69 = *(v53 - 8);
  __chkstk_darwin(v53);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WeatherClock.date.getter();
  (*(v18 + 104))(v20, enum case for Precipitation.rain(_:), v17);
  v29 = [objc_opt_self() metersPerSecond];
  sub_10031AE5C();
  Measurement.init(value:unit:)();
  (*(v54 + 104))(v52, enum case for ApparentPrecipitationIntensityCategory.light(_:), v55);
  ApparentPrecipitationIntensity.init(value:category:)();
  v48 = v28;
  MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  Date.addingTimeInterval(_:)();
  (*(v21 + 8))(v23, v50);
  v30 = v56;
  static Location.cupertino.getter();
  Location.coordinate.getter();
  v31 = *(v59 + 8);
  v32 = v30;
  v33 = v60;
  v31(v32, v60);
  v34 = v58;
  static Location.cupertino.getter();
  Location.coordinate.getter();
  v31(v34, v33);
  v35 = v57;
  WeatherMetadata.init(date:expirationDate:latitude:longitude:)();
  sub_10022C350(&qword_100CE30F8, &qword_100A95F48);
  v36 = v69;
  v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100A2C3F0;
  v39 = v53;
  (*(v36 + 16))(v38 + v37, v28, v53);
  v40 = v62;
  v41 = v35;
  v42 = v63;
  (*(v62 + 16))(v61, v35, v63);
  sub_1008BB548(&qword_100CB1738, 255, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
  sub_1008BB548(&qword_100CB1740, 255, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
  sub_1008BB548(&unk_100CB1748, 255, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
  v43 = v64;
  Forecast.init(_:metadata:)();
  type metadata accessor for NextHourPrecipitationComponentParameters(0);
  type metadata accessor for WeatherData(0);
  v44 = v66;
  WeatherDataModel.currentWeather.getter();
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(0);
  static WeatherClock.date.getter();
  (*(v40 + 8))(v41, v42);
  (*(v69 + 8))(v48, v39);
  (*(v67 + 32))(v44 + *(HourPrecipitationComponent + 24), v43, v68);
  type metadata accessor for LocationViewComponent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1008BB370@<X0>(uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = Array<A>.alerts(prominence:)();
  if (*(v11 + 16))
  {
    v12 = *(Array<A>.originalAlerts(prominence:)() + 16);

    type metadata accessor for WeatherData(0);
    WeatherDataModel.currentWeather.getter();
    type metadata accessor for SevereAlertComponent(0);
    CurrentWeather.date.getter();
    (*(v6 + 8))(v10, v4);
    *a3 = v11;
    a3[1] = v12;
    type metadata accessor for LocationViewComponent(0);
    swift_storeEnumTagMultiPayload();
    sub_100006AA0();
    return sub_10001B350(v13, v14, v15, v16);
  }

  else
  {
    type metadata accessor for LocationViewComponent(0);
    v18 = sub_100007E1C();
    sub_10001B350(v18, v19, v20, v21);
  }
}

uint64_t type metadata accessor for NextHourPrecipitationComponentParameters(uint64_t a1)
{
  result = qword_100CE3158;
  if (!qword_100CE3158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BB548(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

void sub_1008BB5B8(uint64_t a1)
{
  type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherData(319);
    if (v2 <= 0x3F)
    {
      sub_1003CA6A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1008BB65C(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for Location();
  sub_1000037C4();
  v58 = v6;
  v59 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v57 = v8 - v7;
  type metadata accessor for Logger();
  sub_1000037C4();
  v61 = v10;
  v62 = v9;
  __chkstk_darwin(v9);
  sub_1000088C0();
  __chkstk_darwin(v11);
  sub_100003C54(v12, v13, v14, v15, v16, v17, v18, v19, v56);
  v20 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  __chkstk_darwin(v20 - 8);
  v22 = &v56 - v21;
  v23 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  v27 = *(v1 + 16);
  v27(&v63);
  sub_1001A0BE0(v63 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v26);

  v28 = *(*(v26 + *(v23 + 24)) + 16);
  type metadata accessor for SavedLocationsManager();
  v29 = static SavedLocationsManager.maxAllowedLocationsCount.getter();
  sub_1001A0C44(v26);
  if (v28 >= v29)
  {
    static Logger.map.getter();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134349056;
      v27(&v63);
      sub_1001A0BE0(v63 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v26);

      v51 = *(v26 + *(v23 + 36));

      sub_1001A0C44(v26);
      v52 = *(v51 + 16);

      *(v50 + 4) = v52;

      _os_log_impl(&_mh_execute_header, v48, v49, "Returning that we cannot add location via map interaction because user has reached the maximum locations, locationsCount=%{public}ld", v50, 0xCu);
      sub_100003884(v50);
    }

    else
    {
    }

    sub_100014484();
    v54 = v2;
    goto LABEL_11;
  }

  sub_1000161C0((v3 + 48), *(v3 + 72));
  Location.coordinate.getter();
  v30 = Location.name.getter();
  sub_1001A34D0(v30, v31);

  v32 = type metadata accessor for SavedLocation();
  v33 = 1;
  v34 = sub_100024D10(v22, 1, v32);
  sub_1008BC194(v22);
  if (v34 != 1)
  {
    v35 = v60;
    static Logger.map.getter();
    v37 = v57;
    v36 = v58;
    v38 = a1;
    v39 = v59;
    (*(v58 + 16))(v57, v38, v59);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_1002F33A8();
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v36 + 8))(v37, v39);
      v47 = sub_100078694(v44, v46, &v63);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Returning that we cannot add location via map interaction because user already has the location in their saved locations, location=%{private,mask.hash}s", v42, 0x16u);
      sub_100006F14(v43);
      sub_100003884(v43);
      sub_100003884(v42);
    }

    else
    {

      (*(v36 + 8))(v37, v39);
    }

    sub_100014484();
    v54 = v35;
LABEL_11:
    v53(v54, v62);
    return 0;
  }

  return v33;
}

uint64_t sub_1008BBB5C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Location();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000088C0();
  __chkstk_darwin(v9);
  sub_100003C54(v10, v11, v12, v13, v14, v15, v16, v17, v51[0]);
  type metadata accessor for Logger();
  sub_1000037C4();
  v51[1] = v19;
  v52 = v18;
  __chkstk_darwin(v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v51 - v23;
  sub_1000161C0((v1 + 48), *(v1 + 72));
  Location.coordinate.getter();
  Location.name.getter();
  sub_10058A3B8();
  v26 = v25;

  if (v26)
  {
    static Logger.map.getter();
    (*(v7 + 16))(v2, a1, v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = v5;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_1002F33A8();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v7 + 8))(v2, v29);
      v35 = sub_100078694(v32, v34, &v53);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Returning that we cannot view a location via map interaction because user has already selected it, location=%{private,mask.hash}s", v30, 0x16u);
      sub_100006F14(v31);
      sub_100003884(v31);
      sub_100003884(v30);
    }

    else
    {

      (*(v7 + 8))(v2, v5);
    }

    sub_100014484();
    v49 = v21;
  }

  else
  {
    sub_1000161C0((v3 + 48), *(v3 + 72));
    Location.coordinate.getter();
    Location.name.getter();
    sub_10058A09C();
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      return 1;
    }

    v38 = v24;
    static Logger.map.getter();
    v39 = v51[0];
    (*(v7 + 16))(v51[0], a1, v5);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_1002F33A8();
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v7 + 8))(v39, v5);
      v47 = sub_100078694(v44, v46, &v53);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Returning that we cannot view a location via map interaction because user is previewing it, location=%{private,mask.hash}s", v42, 0x16u);
      sub_100006F14(v43);
      sub_100003884(v43);
      sub_100003884(v42);
    }

    else
    {

      (*(v7 + 8))(v39, v5);
    }

    sub_100014484();
    v49 = v38;
  }

  v48(v49, v52);
  return 0;
}

uint64_t sub_1008BC004(uint64_t a1)
{
  v3 = type metadata accessor for LocationsState(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_1000161C0((v1 + 88), *(v1 + 112));
  (*(v1 + 16))(&v10);
  sub_1001A0BE0(v10 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v7);

  v8 = *(v7 + *(v4 + 36));

  sub_1001A0C44(v7);
  LOBYTE(a1) = sub_100496284(a1, v8);

  return a1 & 1;
}

uint64_t sub_1008BC0F8()
{

  sub_100006F14((v0 + 48));
  sub_100006F14((v0 + 88));
  return v0;
}

uint64_t sub_1008BC13C()
{
  sub_1008BC0F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1008BC194(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008BC228@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CE3248, &unk_100A96090);
  return sub_1008BC278(v2, a2 + *(v4 + 44));
}

uint64_t sub_1008BC278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v99 = type metadata accessor for DetailNewsComponentView(0);
  __chkstk_darwin(v99);
  v94 = (&v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v4 - 8);
  v97 = &v92 - v5;
  v96 = type metadata accessor for DetailComponentContainerViewModel(0);
  __chkstk_darwin(v96);
  v93 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA7190, &qword_100A322B0);
  __chkstk_darwin(v7 - 8);
  v100 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v92 - v10;
  v95 = type metadata accessor for MonthlyAveragesChart(0);
  __chkstk_darwin(v95);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v108 = &v92 - v13;
  v14 = sub_10022C350(&qword_100CA7198, &qword_100A322B8);
  __chkstk_darwin(v14);
  v102 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v92 - v17;
  v19 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  __chkstk_darwin(v19 - 8);
  v21 = &v92 - v20;
  v22 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v22);
  v105 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v98 = (&v92 - v25);
  v26 = sub_10022C350(&qword_100CA71A8, &unk_100A496E0);
  __chkstk_darwin(v26 - 8);
  v101 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v109 = &v92 - v29;
  v30 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v107 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v92 - v34;
  v37 = a1[4];
  v36 = a1[5];
  v38 = sub_1000161C0(a1 + 1, v37);
  *(v35 + 5) = v37;
  *(v35 + 6) = *(v36 + 16);
  v39 = sub_100042FB0(v35 + 2);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  v40 = *a1;
  sub_1008BCF74(*a1 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_heroChart, &v35[*(v31 + 32)], type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  *v35 = swift_getKeyPath();
  v106 = v35;
  v35[8] = 0;
  v41 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_summaryPlatterViewModel;
  swift_beginAccess();
  sub_100035AD0(v40 + v41, v21, &qword_100CA71A0, &unk_100A322C0);
  if (sub_100024D10(v21, 1, v22) == 1)
  {
    sub_1000180EC(v21, &qword_100CA71A0, &unk_100A322C0);
    v42 = 1;
    v43 = v18;
    v45 = v109;
    v44 = v110;
    v46 = v105;
  }

  else
  {
    v47 = v98;
    sub_1002B392C(v21, v98, type metadata accessor for ConditionDetailPlatterViewModel);
    v46 = v105;
    sub_1008BCF74(v47, v105, type metadata accessor for ConditionDetailPlatterViewModel);
    v48 = a1[4];
    v49 = a1[5];
    v50 = sub_1000161C0(a1 + 1, v48);
    v112 = v48;
    v113 = *(v49 + 8);
    v51 = sub_100042FB0(v111);
    (*(*(v48 - 8) + 16))(v51, v50, v48);
    sub_1008BCF74(v46, v18, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100035B30(v111, &v18[v14[10]]);
    v18[v14[9]] = 0;
    v52 = &v18[v14[11]];
    *v52 = 0;
    *(v52 + 1) = 0;
    v53 = v14[12];
    v43 = v18;
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *&v18[v53] = sub_1004BA278();
    swift_endAccess();
    sub_1000311F8(v46, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1000311F8(v47, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100006F14(v111);
    v54 = v18;
    v45 = v109;
    sub_1002B398C(v54, v109);
    v42 = 0;
    v44 = v110;
  }

  v98 = v14;
  sub_10001B350(v45, v42, 1, v14);
  v55 = v108;
  sub_1008BCF74(v40 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_averagesChart, v108, type metadata accessor for MonthlyAveragesChartModel);
  v56 = v95;
  sub_100035B30((a1 + 1), v55 + *(v95 + 20));
  *(v55 + *(v56 + 24)) = 0;
  v57 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_newsViewModel;
  swift_beginAccess();
  v58 = v40 + v57;
  v59 = v97;
  sub_100035AD0(v58, v97, &qword_100CA7188, &qword_100A35360);
  if (sub_100024D10(v59, 1, v96) == 1)
  {
    sub_1000180EC(v59, &qword_100CA7188, &qword_100A35360);
    v60 = 1;
    v61 = v99;
  }

  else
  {
    v62 = v93;
    sub_1002B392C(v59, v93, type metadata accessor for DetailComponentContainerViewModel);
    v63 = v99;
    v64 = v94;
    sub_1008BCF74(v62, v94 + *(v99 + 20), type metadata accessor for DetailComponentContainerViewModel);
    v65 = v44;
    v66 = a1[4];
    v67 = a1[5];
    v68 = sub_1000161C0(a1 + 1, v66);
    v69 = (v64 + *(v63 + 24));
    v69[3] = v66;
    v70 = *(v67 + 8);
    v44 = v65;
    v69[4] = v70;
    v71 = sub_100042FB0(v69);
    v72 = *(*(v66 - 8) + 16);
    v73 = v66;
    v61 = v63;
    v46 = v105;
    v72(v71, v68, v73);
    sub_1000311F8(v62, type metadata accessor for DetailComponentContainerViewModel);
    *v64 = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
    swift_storeEnumTagMultiPayload();
    *(v64 + *(v61 + 28)) = 0;
    v74 = v64;
    v45 = v109;
    sub_1002B392C(v74, v65, type metadata accessor for DetailNewsComponentView);
    v60 = 0;
  }

  sub_10001B350(v44, v60, 1, v61);
  sub_1008BCF74(v40 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_aboutPlatterViewModel, v46, type metadata accessor for ConditionDetailPlatterViewModel);
  v75 = a1[4];
  v76 = a1[5];
  v77 = sub_1000161C0(a1 + 1, v75);
  v112 = v75;
  v113 = *(v76 + 8);
  v78 = sub_100042FB0(v111);
  (*(*(v75 - 8) + 16))(v78, v77, v75);
  sub_1008BCF74(v46, v43, type metadata accessor for ConditionDetailPlatterViewModel);
  v79 = v98;
  sub_100035B30(v111, v43 + v98[10]);
  *(v43 + v79[9]) = 0;
  v80 = (v43 + v79[11]);
  *v80 = 0;
  v80[1] = 0;
  v81 = v79[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v43 + v81) = sub_1004BA278();
  swift_endAccess();
  sub_1000311F8(v46, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100006F14(v111);
  v82 = v107;
  sub_1008BCF74(v106, v107, type metadata accessor for PrecipitationAveragesHeroChartView);
  v83 = v101;
  sub_100035AD0(v45, v101, &qword_100CA71A8, &unk_100A496E0);
  v84 = v108;
  v85 = v103;
  sub_1008BCF74(v108, v103, type metadata accessor for MonthlyAveragesChart);
  v86 = v100;
  sub_100035AD0(v110, v100, &qword_100CA7190, &qword_100A322B0);
  v87 = v102;
  sub_100035AD0(v43, v102, &qword_100CA7198, &qword_100A322B8);
  v88 = v82;
  v89 = v104;
  sub_1008BCF74(v88, v104, type metadata accessor for PrecipitationAveragesHeroChartView);
  v90 = sub_10022C350(&qword_100CE3250, &qword_100A960D0);
  sub_100035AD0(v83, v89 + v90[12], &qword_100CA71A8, &unk_100A496E0);
  sub_1008BCF74(v85, v89 + v90[16], type metadata accessor for MonthlyAveragesChart);
  sub_100035AD0(v86, v89 + v90[20], &qword_100CA7190, &qword_100A322B0);
  sub_100035AD0(v87, v89 + v90[24], &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v43, &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v110, &qword_100CA7190, &qword_100A322B0);
  sub_1000311F8(v84, type metadata accessor for MonthlyAveragesChart);
  sub_1000180EC(v109, &qword_100CA71A8, &unk_100A496E0);
  sub_1000311F8(v106, type metadata accessor for PrecipitationAveragesHeroChartView);
  sub_1000180EC(v87, &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v86, &qword_100CA7190, &qword_100A322B0);
  sub_1000311F8(v85, type metadata accessor for MonthlyAveragesChart);
  sub_1000180EC(v83, &qword_100CA71A8, &unk_100A496E0);
  return sub_1000311F8(v107, type metadata accessor for PrecipitationAveragesHeroChartView);
}

uint64_t sub_1008BCF74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1008BCFD4()
{
  result = qword_100CE3258;
  if (!qword_100CE3258)
  {
    v3 = sub_10022E824(&qword_100CE3260, &unk_100A96110);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE3258);
  }

  return result;
}

uint64_t sub_1008BD038@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, v7);

  v3 = static Solarium.isEnabled.getter();
  v4 = 12.0;
  if (v3)
  {
    v4 = 16.0;
  }

  *(a1 + 56) = v4;
  sub_10022C350(&qword_100CA49D8, &unk_100A42010);
  sub_1008BD0F8();
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v5;
  return sub_100013188(v7, a1 + 16);
}

unint64_t sub_1008BD0F8()
{
  result = qword_100CA49E0;
  if (!qword_100CA49E0)
  {
    v3 = sub_10022E824(&qword_100CA49D8, &unk_100A42010);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA49E0);
  }

  return result;
}

uint64_t sub_1008BD184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7107189 && a2 == 0xE300000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656D6F6E656870 && a2 == 0xE900000000000061;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7364497472656C61 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1008BD458(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0x446873696C627570;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 0x6C656E6E616863;
      break;
    case 6:
      result = 0x73726F68747561;
      break;
    case 7:
      result = 0x6E656D6F6E656870;
      break;
    case 8:
      result = 0x7364497472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008BD558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008BD184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008BD580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1008BD450();
  *a1 = result;
  return result;
}

uint64_t sub_1008BD5A8(uint64_t a1)
{
  v2 = sub_1008BE654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008BD5E4(uint64_t a1)
{
  v2 = sub_1008BE654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008BD620(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE3488, &qword_100A96330);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1008BE654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = type metadata accessor for NewsArticle(0);
    LOBYTE(v22) = 2;
    type metadata accessor for URL();
    sub_10001FBC8();
    sub_1008BE864(v12, v13, &protocol conformance descriptor for URL);
    sub_100010F00();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v11;
    LOBYTE(v22) = 3;
    type metadata accessor for Date();
    sub_100004DA8();
    sub_1008BE864(v14, v15, &protocol conformance descriptor for Date);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 4;
    sub_100010F00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 5;
    type metadata accessor for NewsChannel(0);
    sub_1000150A4();
    sub_1008BE864(v16, v17, byte_100A7498C);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v20;
    v22 = *(v3 + *(v20 + 40));
    v21 = 6;
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_1005FFB2C(&qword_100CCB5A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100010F00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + *(v18 + 44));
    v21 = 7;
    sub_100010F00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + *(v18 + 48));
    v21 = 8;
    sub_10022C350(&qword_100CE3478, &qword_100A96328);
    sub_1008BE7C8(&qword_100CE3498, &qword_100CCB4D0, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1008BD9F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = type metadata accessor for NewsChannel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v51 = v5 - v4;
  v58 = type metadata accessor for URL();
  sub_1000037C4();
  v55 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for Date();
  sub_1000037C4();
  v56 = v12;
  v57 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v54 = sub_10022C350(&qword_100CE3460, &qword_100A96320);
  sub_1000037C4();
  v20 = v19;
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v61 = type metadata accessor for NewsArticle(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = a1[3];
  v59 = a1;
  sub_1000161C0(a1, v28);
  sub_1008BE654();
  v53 = v23;
  v29 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    v60 = v29;
    return sub_100006F14(v59);
  }

  else
  {
    v30 = v15;
    LOBYTE(v63) = 0;
    *v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v27[1] = v33;
    LOBYTE(v63) = 1;
    v27[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v27[3] = v34;
    LOBYTE(v63) = 2;
    sub_10001FBC8();
    v37 = sub_1008BE864(v35, v36, &protocol conformance descriptor for URL);
    v38 = v18;
    v39 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v37;
    sub_10043D988(v38, v27 + v61[6]);
    LOBYTE(v63) = 3;
    sub_100004DA8();
    sub_1008BE864(v40, v41, &protocol conformance descriptor for Date);
    v42 = v30;
    v43 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 32))(v27 + v61[7], v42, v43);
    LOBYTE(v63) = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v55 + 32))(v27 + v61[8], v10, v39);
    LOBYTE(v63) = 5;
    sub_1000150A4();
    sub_1008BE864(v44, v45, byte_100A749B4);
    v46 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1008BE6A8(v46, v27 + v61[9]);
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    v62 = 6;
    sub_1005FFB2C(&qword_100CCB588, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000751F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + v61[10]) = v63;
    v62 = 7;
    sub_1000751F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = 0;
    *(v27 + v61[11]) = v63;
    sub_10022C350(&qword_100CE3478, &qword_100A96328);
    v62 = 8;
    sub_1008BE7C8(&qword_100CE3480, &qword_100CCB4A8, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    sub_1000751F0();
    v47 = v54;
    v48 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = v48;
    (*(v20 + 8))(v53, v47);
    if (v48)
    {
      sub_100006F14(v59);

      v32 = v61;
      sub_1000180EC(v27 + v61[6], &qword_100CB3AB0, &unk_100A2FB80);
      (*(v56 + 8))(v27 + v32[7], v57);
      (*(v55 + 8))(v27 + v32[8], v58);
      sub_1008BE770(v27 + v32[9], type metadata accessor for NewsChannel);
    }

    else
    {
      *(v27 + v61[12]) = v63;
      sub_1008BE70C(v27, v50);
      sub_100006F14(v59);
      return sub_1008BE770(v27, type metadata accessor for NewsArticle);
    }
  }
}

uint64_t sub_1008BE2A4(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10022C350(qword_100CAD4D0, &unk_100A3EA40);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v20 = type metadata accessor for NewsArticle(0);
  v21 = *(v20 + 24);
  v22 = *(v14 + 48);
  sub_1000E594C(a1 + v21, v17);
  sub_1000E594C(a2 + v21, &v17[v22]);
  sub_100003A40(v17);
  if (v18)
  {
    sub_100003A40(&v17[v22]);
    if (v18)
    {
      sub_1000180EC(v17, &qword_100CB3AB0, &unk_100A2FB80);
      goto LABEL_21;
    }

LABEL_19:
    sub_1000180EC(v17, qword_100CAD4D0, &unk_100A3EA40);
LABEL_27:
    v30 = 0;
    return v30 & 1;
  }

  sub_1000E594C(v17, v13);
  sub_100003A40(&v17[v22]);
  if (v23)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_19;
  }

  (*(v6 + 32))(v10, &v17[v22], v4);
  sub_10001FBC8();
  sub_1008BE864(v24, v25, &protocol conformance descriptor for URL);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v13, v4);
  sub_1000180EC(v17, &qword_100CB3AB0, &unk_100A2FB80);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!sub_100684B0C((a1 + *(v20 + 36)), (a2 + *(v20 + 36))))
  {
    goto LABEL_27;
  }

  sub_1001CAA30();
  if ((v28 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1001CAA30();
  if ((v29 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1009EF234();
  return v30 & 1;
}

unint64_t sub_1008BE654()
{
  result = qword_100CE3468;
  if (!qword_100CE3468)
  {
    result = swift_getWitnessTable(byte_100A963FC, &type metadata for NewsArticle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE3468);
  }

  return result;
}

uint64_t sub_1008BE6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BE70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BE770(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008BE7C8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10022E824(&qword_100CE3478, &qword_100A96328);
    v10 = sub_1008BE864(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008BE864(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for NewsArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NewsArticle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1008BEA14()
{
  result = qword_100CE34A0;
  if (!qword_100CE34A0)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for NewsArticle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE34A0);
  }

  return result;
}

unint64_t sub_1008BEA6C()
{
  result = qword_100CE34A8;
  if (!qword_100CE34A8)
  {
    result = swift_getWitnessTable(byte_100A96344, &type metadata for NewsArticle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE34A8);
  }

  return result;
}

unint64_t sub_1008BEAC4()
{
  result = qword_100CE34B0;
  if (!qword_100CE34B0)
  {
    result = swift_getWitnessTable(aEt, &type metadata for NewsArticle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE34B0);
  }

  return result;
}

uint64_t _s7ModulesV8LocationV17NotableConditionsCMa(uint64_t a1)
{
  result = qword_100CE34B8;
  if (!qword_100CE34B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  swift_allocObject();
  (*(v7 + 16))(v11, a4, v5);
  v12 = SettingGroup.init(key:defaultValue:access:)();
  (*(v7 + 8))(a4, v5);
  return v12;
}

uint64_t sub_1008BECB8()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(55, v7, v8);
  qword_100D91278 = result;
  return result;
}

uint64_t sub_1008BEE0C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(50, v7, v8);
  qword_100D91280 = result;
  return result;
}

uint64_t sub_1008BEF60()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(53, v7, v8);
  qword_100D91288 = result;
  return result;
}

uint64_t sub_1008BF0B4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(41, v7, v8);
  qword_100D91290 = result;
  return result;
}

uint64_t sub_1008BF204()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(51, v7, v8);
  qword_100D91298 = result;
  return result;
}

uint64_t sub_1008BF354()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(32, v7, v8);
  qword_100D912A0 = result;
  return result;
}

uint64_t sub_1008BF4A4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(31, v7, v8);
  qword_100D912A8 = result;
  return result;
}

uint64_t sub_1008BF5F4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(32, v7, v8);
  qword_100D912B0 = result;
  return result;
}

uint64_t sub_1008BF744()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(48, v7, v8);
  qword_100D912B8 = result;
  return result;
}