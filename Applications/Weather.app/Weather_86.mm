_BYTE *storeEnumTagSinglePayload for LocationAuthorizationAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100910B40@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for LocationAuthorizationState;
  *(inited + 48) = a1;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CAF000, &qword_100A3EA50);
  a2[4] = sub_100142640();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100910C40(uint64_t a1)
{
  sub_100910CD4();

  return ShortDescribable.description.getter();
}

unint64_t sub_100910C80()
{
  result = qword_100CE5B88;
  if (!qword_100CE5B88)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for LocationAuthorizationAction, v0, v1);
    atomic_store(result, &qword_100CE5B88);
  }

  return result;
}

unint64_t sub_100910CD4()
{
  result = qword_100CE5B90;
  if (!qword_100CE5B90)
  {
    result = swift_getWitnessTable(byte_100A98DA4, &type metadata for LocationAuthorizationAction, v0, v1);
    atomic_store(result, &qword_100CE5B90);
  }

  return result;
}

uint64_t type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(uint64_t a1)
{
  result = qword_100CE5BF0;
  if (!qword_100CE5BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100910D9C(uint64_t a1)
{
  sub_100910E50(319);
  if (v1 <= 0x3F)
  {
    sub_100910EFC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SunriseSunsetMonthlyViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_100910F60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100910E50(uint64_t a1)
{
  if (!qword_100CE5C00)
  {
    type metadata accessor for Date();
    type metadata accessor for Elevation();
    sub_1001CE60C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE5C00);
    }
  }
}

void sub_100910EFC(uint64_t a1)
{
  if (!qword_100CE5C08)
  {
    sub_10027EFA0();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE5C08);
    }
  }
}

void sub_100910F60(uint64_t a1)
{
  if (!qword_100CE5C10)
  {
    type metadata accessor for Date();
    sub_1001CE60C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE5C10);
    }
  }
}

uint64_t sub_100910FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746176656C65 && a2 == 0xEA0000000000736ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000100AE5EF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100AE5F10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72756F4865746164 && a2 == 0xEF676E6972745373)
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

unint64_t sub_100911174(char a1)
{
  result = 0x6F69746176656C65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72756F4865746164;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100911214(uint64_t a1, uint64_t a2)
{
  sub_1002DB360();
  if (v4)
  {
    sub_1002DB758();
    if (v5)
    {
      v6 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
      if (sub_1009E986C(*(a1 + *(v6 + 24)), *(a2 + *(v6 + 24))))
      {
        type metadata accessor for SunriseSunsetMonthlyViewModel(0);
        if (static WeatherDescription.== infix(_:_:)())
        {

          sub_1002DB840();
        }
      }
    }
  }
}

uint64_t sub_1009112E0(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE5C90, &qword_100A98EA8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100911A30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *v3;
  HIBYTE(v18) = 0;
  sub_10022C350(&qword_100CE5C58, &qword_100A98E90);
  v11 = sub_100911D4C();
  sub_10001FCCC(v11);
  if (!v2)
  {
    v19 = v3[1];
    HIBYTE(v18) = 1;
    sub_10022C350(&qword_100CE5C68, &qword_100A98E98);
    v12 = sub_100911E38(&qword_100CE5CA0, sub_10048F96C, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_10001FCCC(v12);
    v13 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
    LOBYTE(v19) = 2;
    type metadata accessor for SunriseSunsetMonthlyViewModel(0);
    sub_10001D22C();
    sub_1001CE60C(v14, v15, aQ_72);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + *(v13 + 28));
    HIBYTE(v18) = 3;
    sub_10022C350(&qword_100CE5C80, &qword_100A98EA0);
    v16 = sub_100911EBC();
    sub_10001FCCC(v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10091153C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE5C48, &qword_100A98E88);
  sub_1000037C4();
  v29 = v8;
  v30 = v7;
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000161C0(a1, a1[3]);
  sub_100911A30();
  v31 = v10;
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100006F14(a1);
  }

  v27 = v3;
  v32 = v6;
  v16 = sub_10022C350(&qword_100CE5C58, &qword_100A98E90);
  v33 = 0;
  sub_100911A84();
  sub_1000092F0();
  sub_100004E74(v16, v17);
  v26 = v34;
  *v14 = v34;
  sub_10022C350(&qword_100CE5C68, &qword_100A98E98);
  v33 = 1;
  sub_100911E38(&qword_100CE5C70, sub_10048F8C0, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1000092F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14[1] = v34;
  LOBYTE(v34) = 2;
  sub_10001D22C();
  sub_1001CE60C(v18, v19, aY_80);
  v20 = v32;
  v27 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100911B70(v20, v14 + *(v11 + 24));
  v21 = sub_10022C350(&qword_100CE5C80, &qword_100A98EA0);
  v33 = 3;
  sub_100911BD4();
  sub_1000092F0();
  sub_100004E74(v21, v22);
  v24 = sub_100010FDC();
  v25(v24);
  *(v14 + *(v11 + 28)) = v34;
  sub_100911C90(v14, v28);
  sub_100006F14(a1);
  return sub_100911CF4(v14, type metadata accessor for SunriseSunsetDetailPreprocessedDataModel);
}

uint64_t sub_10091195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100910FFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100911984(uint64_t a1)
{
  v2 = sub_100911A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009119C0(uint64_t a1)
{
  v2 = sub_100911A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100911A30()
{
  result = qword_100CE5C50;
  if (!qword_100CE5C50)
  {
    result = swift_getWitnessTable(asc_100A98F74, &type metadata for SunriseSunsetDetailPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE5C50);
  }

  return result;
}

unint64_t sub_100911A84()
{
  result = qword_100CE5C60;
  if (!qword_100CE5C60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5C58, &qword_100A98E90);
    v4[0] = sub_1001CE60C(&qword_100CA3998, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v4[1] = sub_1001CE60C(&qword_100CC4FF0, &type metadata accessor for Elevation, &protocol conformance descriptor for Elevation);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CE5C60);
  }

  return result;
}

uint64_t sub_100911B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100911BD4()
{
  result = qword_100CE5C88;
  if (!qword_100CE5C88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5C80, &qword_100A98EA0);
    v4[0] = sub_1001CE60C(&qword_100CA3998, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v4[1] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CE5C88);
  }

  return result;
}

uint64_t sub_100911C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100911CF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100911D4C()
{
  result = qword_100CE5C98;
  if (!qword_100CE5C98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5C58, &qword_100A98E90);
    v4[0] = sub_1001CE60C(&qword_100CA39B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v4[1] = sub_1001CE60C(&qword_100CC5008, &type metadata accessor for Elevation, &protocol conformance descriptor for Elevation);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CE5C98);
  }

  return result;
}

uint64_t sub_100911E38(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10022E824(&qword_100CE5C68, &qword_100A98E98);
    v10[0] = a2();
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100911EBC()
{
  result = qword_100CE5CB0;
  if (!qword_100CE5CB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5C80, &qword_100A98EA0);
    v4[0] = sub_1001CE60C(&qword_100CA39B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v4[1] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CE5CB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetDetailPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100912058()
{
  result = qword_100CE5CB8;
  if (!qword_100CE5CB8)
  {
    result = swift_getWitnessTable(byte_100A98F4C, &type metadata for SunriseSunsetDetailPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE5CB8);
  }

  return result;
}

unint64_t sub_1009120B0()
{
  result = qword_100CE5CC0;
  if (!qword_100CE5CC0)
  {
    result = swift_getWitnessTable(asc_100A98EBC, &type metadata for SunriseSunsetDetailPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE5CC0);
  }

  return result;
}

unint64_t sub_100912108()
{
  result = qword_100CE5CC8;
  if (!qword_100CE5CC8)
  {
    result = swift_getWitnessTable(byte_100A98EE4, &type metadata for SunriseSunsetDetailPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE5CC8);
  }

  return result;
}

uint64_t sub_100912188@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = type metadata accessor for ContentMarginPlacement();
  sub_1000037C4();
  v36 = v2;
  __chkstk_darwin(v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v31 = v5;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CE5CD0, &qword_100A99080);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v32 = sub_10022C350(&qword_100CE5CD8, &qword_100A99088);
  sub_1000037C4();
  v33 = v15;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v34 = sub_10022C350(&qword_100CE5CE0, &qword_100A99090);
  sub_1000037E8();
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  v41 = v1;
  sub_10022C350(&qword_100CE5CE8, &qword_100A99098);
  sub_100006F64(&qword_100CE5CF0, &qword_100CE5CE8, &qword_100A99098, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v22 = sub_100006F64(&qword_100CE5CF8, &qword_100CE5CD0, &qword_100A99080, &protocol conformance descriptor for List<A, B>);
  v23 = v30;
  View.listStyle<A>(_:)();
  (*(v31 + 8))(v8, v23);
  (*(v11 + 8))(v14, v9);
  v24 = v39;
  sub_100916E68();
  v40 = v24;
  __src[0] = v9;
  __src[1] = v23;
  __src[2] = v22;
  __src[3] = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  View.alert(isPresented:content:)();

  (*(v33 + 8))(v18, v25);
  sub_1006DA554(v39, __src);
  v26 = swift_allocObject();
  memcpy((v26 + 16), __src, 0x70uLL);
  v27 = &v21[*(v34 + 36)];
  *v27 = sub_100918568;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  static Edge.Set.top.getter();
  v28 = v35;
  static ContentMarginPlacement.automatic.getter();
  sub_100918570();
  View.contentMargins(_:_:for:)();
  (*(v36 + 8))(v28, v38);
  return sub_1000180EC(v21, &qword_100CE5CE0, &qword_100A99090);
}

uint64_t sub_1009126BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v184 = a2;
  v181 = sub_10022C350(&qword_100CE5D08, &qword_100A990A0);
  __chkstk_darwin(v181);
  v180 = &v159 - v3;
  v183 = sub_10022C350(&qword_100CE5D10, &qword_100A990A8);
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v190 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v159 - v6;
  v175 = sub_10022C350(&qword_100CE5D18, &qword_100A990B0);
  __chkstk_darwin(v175);
  v177 = &v159 - v7;
  v176 = sub_10022C350(&qword_100CE5D20, &qword_100A990B8);
  __chkstk_darwin(v176);
  v9 = &v159 - v8;
  v185 = sub_10022C350(&qword_100CE5D28, &qword_100A990C0);
  v173 = *(v185 - 8);
  __chkstk_darwin(v185);
  v172 = &v159 - v10;
  v165 = sub_10022C350(&qword_100CE5D30, &qword_100A990C8);
  __chkstk_darwin(v165);
  v166 = &v159 - v11;
  v162 = sub_10022C350(&qword_100CE5D38, &qword_100A990D0);
  __chkstk_darwin(v162);
  v161 = &v159 - v12;
  v164 = sub_10022C350(&qword_100CE5D40, &qword_100A990D8);
  __chkstk_darwin(v164);
  v163 = &v159 - v13;
  v14 = sub_10022C350(&qword_100CE5D48, &qword_100A990E0);
  __chkstk_darwin(v14 - 8);
  v168 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v159 - v17;
  v170 = sub_10022C350(&qword_100CE5D50, &qword_100A990E8);
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v167 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v159 - v21;
  v23 = sub_10022C350(&qword_100CE5D58, &qword_100A990F0);
  __chkstk_darwin(v23 - 8);
  v179 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v192 = &v159 - v26;
  v27 = sub_10022C350(&qword_100CE5D60, &qword_100A990F8);
  __chkstk_darwin(v27);
  v29 = &v159 - v28;
  v178 = sub_10022C350(&qword_100CE5D68, &qword_100A99100);
  v188 = *(v178 - 8);
  __chkstk_darwin(v178);
  v187 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v159 - v32;
  sub_100913B24(v29);
  v193 = a1;
  sub_10022C350(&qword_100CE5D70, &qword_100A99108);
  v34 = sub_10022E824(&qword_100CC31A8, &unk_100A5C040);
  v35 = sub_100513EA0();
  v196 = v34;
  v197 = v35;
  swift_getOpaqueTypeConformance2();
  sub_100918704();
  v186 = v33;
  Section<>.init(footer:content:)();
  v191 = a1;
  LODWORD(v34) = *(a1 + 50);
  v36 = LocalizedStringKey.init(stringLiteral:)();
  if (v34 == 2)
  {
    v171 = v18;
    v160 = v9;
    v40 = Text.init(_:tableName:bundle:comment:)(v36, v37, v38 & 1, v39, 0, 0, 0, "Header text for the current location row in the notifications settings page.", 76, 2);
    v42 = v41;
    v44 = v43;
    static Color.secondary.getter();
    v45 = Text.foregroundColor(_:)();
    v47 = v46;
    v174 = v22;
    v49 = v48;
    v51 = v50;

    sub_10010CD64(v40, v42, v44 & 1);

    v196 = v45;
    v197 = v47;
    v53 = v174;
    v198 = v49 & 1;
    v199 = v51;
    __chkstk_darwin(v52);
    v54 = v191;
    sub_10022C350(&qword_100CE5DE0, &qword_100A99138);
    sub_100006F64(&qword_100CE5DE8, &qword_100CE5DE0, &qword_100A99138, &protocol conformance descriptor for TupleView<A>);
    Section<>.init(header:content:)();
    v55 = *(v54 + 49);
    if (v55 >= 2)
    {
      if (v55 == 3 || *(v191 + 48) == 2)
      {
        v74 = LocalizedStringKey.init(stringLiteral:)();
        LOWORD(v158) = 2;
        v78 = Text.init(_:tableName:bundle:comment:)(v74, v76, v75 & 1, v77, 0, 0, 0, "Header text for the significant locations row in the notifications settings page.", 81, v158);
        v80 = v79;
        v82 = v81;
        static Color.secondary.getter();
        v83 = Text.foregroundColor(_:)();
        v85 = v84;
        v87 = v86;
        v89 = v88;

        sub_10010CD64(v78, v80, v82 & 1);

        v196 = v83;
        v197 = v85;
        v198 = v87 & 1;
        v199 = v89;
        __chkstk_darwin(v90);
        sub_10022C350(&qword_100CE5D90, &qword_100A99118);
        sub_100006F64(&qword_100CE5D98, &qword_100CE5D90, &qword_100A99118, &protocol conformance descriptor for TupleView<A>);
        v91 = v172;
        Section<>.init(header:content:)();
        v92 = v173;
        v93 = v185;
        (*(v173 + 16))(v166, v91, v185);
        swift_storeEnumTagMultiPayload();
        sub_100918AF8();
        sub_100918880();
        v57 = v171;
        _ConditionalContent<>.init(storage:)();
        (*(v92 + 8))(v91, v93);
      }

      else
      {
        LODWORD(v173) = *(v191 + 48);
        v94 = LocalizedStringKey.init(stringLiteral:)();
        LOWORD(v158) = 2;
        v98 = Text.init(_:tableName:bundle:comment:)(v94, v96, v95 & 1, v97, 0, 0, 0, "Header text for the significant locations row in the notifications settings page.", 81, v158);
        v100 = v99;
        v102 = v101;
        static Color.secondary.getter();
        v103 = Text.foregroundColor(_:)();
        v105 = v104;
        v107 = v106;
        v109 = v108;

        sub_10010CD64(v98, v100, v102 & 1);

        v196 = v103;
        v197 = v105;
        v198 = v107 & 1;
        v199 = v109;
        v110 = sub_1009141F8(v161);
        __chkstk_darwin(v110);
        sub_10022C350(&qword_100CE5E58, &qword_100A99180);
        v111 = sub_10022E824(&qword_100CE5E18, &qword_100A99158);
        v112 = sub_100918C58();
        v194 = v111;
        v195 = v112;
        swift_getOpaqueTypeConformance2();
        v158 = sub_100918E1C();
        v113 = v163;
        Section<>.init(header:footer:content:)();
        v114 = (v113 + *(v164 + 36));
        *v114 = sub_1003EC68C;
        v114[1] = 0;
        sub_1000955E0(v113, v166, &qword_100CE5D40, &qword_100A990D8);
        swift_storeEnumTagMultiPayload();
        sub_100918AF8();
        sub_100918880();
        v57 = v171;
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(v113, &qword_100CE5D40, &qword_100A990D8);
      }

      v56 = 0;
      v53 = v174;
    }

    else
    {
      v56 = 1;
      v57 = v171;
    }

    v115 = sub_10022C350(&qword_100CE5DF0, &qword_100A99140);
    sub_10001B350(v57, v56, 1, v115);
    v116 = v169;
    v117 = *(v169 + 16);
    v118 = v57;
    v119 = v167;
    v120 = v170;
    v117(v167, v53, v170);
    v121 = v118;
    v122 = v168;
    sub_1000955E0(v121, v168, &qword_100CE5D48, &qword_100A990E0);
    v123 = v160;
    v117(v160, v119, v120);
    v124 = sub_10022C350(&qword_100CE5DF8, &qword_100A99148);
    sub_1000955E0(v122, v123 + *(v124 + 48), &qword_100CE5D48, &qword_100A990E0);
    sub_1000180EC(v122, &qword_100CE5D48, &qword_100A990E0);
    v125 = *(v116 + 8);
    v125(v119, v120);
    sub_1000955E0(v123, v177, &qword_100CE5D20, &qword_100A990B8);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CE5DA0, &qword_100CE5D20, &qword_100A990B8, &protocol conformance descriptor for TupleView<A>);
    sub_100918880();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v123, &qword_100CE5D20, &qword_100A990B8);
    sub_1000180EC(v171, &qword_100CE5D48, &qword_100A990E0);
    v125(v174, v120);
  }

  else
  {
    v58 = Text.init(_:tableName:bundle:comment:)(v36, v37, v38 & 1, v39, 0, 0, 0, "Header text for the current location row in the notifications settings page.", 76, 2);
    v60 = v59;
    v62 = v61;
    static Color.secondary.getter();
    v63 = Text.foregroundColor(_:)();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    sub_10010CD64(v58, v60, v62 & 1);

    v196 = v63;
    v197 = v65;
    v198 = v67 & 1;
    v199 = v69;
    __chkstk_darwin(v70);
    sub_10022C350(&qword_100CE5D90, &qword_100A99118);
    sub_100006F64(&qword_100CE5D98, &qword_100CE5D90, &qword_100A99118, &protocol conformance descriptor for TupleView<A>);
    v71 = v172;
    Section<>.init(header:content:)();
    v72 = v173;
    v73 = v185;
    (*(v173 + 16))(v177, v71, v185);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CE5DA0, &qword_100CE5D20, &qword_100A990B8, &protocol conformance descriptor for TupleView<A>);
    sub_100918880();
    _ConditionalContent<>.init(storage:)();
    (*(v72 + 8))(v71, v73);
  }

  v126 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v158) = 2;
  v130 = Text.init(_:tableName:bundle:comment:)(v126, v128, v127 & 1, v129, 0, 0, 0, "Header text for the list of saved locations that support notifications in the notification settings page.", 105, v158);
  v132 = v131;
  v134 = v133;
  static Color.secondary.getter();
  v135 = Text.foregroundColor(_:)();
  v137 = v136;
  v139 = v138;
  v141 = v140;

  sub_10010CD64(v130, v132, v134 & 1);

  v196 = v135;
  v197 = v137;
  v198 = v139 & 1;
  v199 = v141;
  v142 = sub_100916948();
  __chkstk_darwin(v142);
  sub_10022C350(&qword_100CE5DB0, &qword_100A99120);
  sub_10091894C();
  sub_1009189FC();
  v143 = v189;
  Section<>.init(header:footer:content:)();
  v144 = v187;
  v145 = *(v188 + 16);
  v146 = v178;
  v145(v187, v186, v178);
  v147 = v179;
  sub_1000955E0(v192, v179, &qword_100CE5D58, &qword_100A990F0);
  v148 = v182;
  v149 = *(v182 + 16);
  v150 = v183;
  v149(v190, v143, v183);
  v151 = v184;
  v145(v184, v144, v146);
  v152 = sub_10022C350(&qword_100CE5DD8, &qword_100A99130);
  sub_1000955E0(v147, &v151[*(v152 + 48)], &qword_100CE5D58, &qword_100A990F0);
  v153 = &v151[*(v152 + 64)];
  v154 = v190;
  v149(v153, v190, v150);
  v155 = *(v148 + 8);
  v155(v189, v150);
  sub_1000180EC(v192, &qword_100CE5D58, &qword_100A990F0);
  v156 = *(v188 + 8);
  v156(v186, v146);
  v155(v154, v150);
  sub_1000180EC(v147, &qword_100CE5D58, &qword_100A990F0);
  return (v156)(v187, v146);
}

uint64_t sub_100913B24@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = type metadata accessor for AccessibilityActionKind();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE5D88, &qword_100A99110);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v43 = sub_10022C350(&qword_100CE5D60, &qword_100A990F8);
  __chkstk_darwin(v43);
  v11 = &v39 - v10;
  sub_100917080(v6);
  v42 = Text.init(_:)();
  v41 = v12;
  v14 = v13;
  v40 = v15;
  v16 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v6) = v14 & 1;
  __src[120] = v14 & 1;
  __src[112] = 0;
  KeyPath = swift_getKeyPath();
  sub_1006DA554(v1, __src);
  v26 = swift_allocObject();
  memcpy((v26 + 16), __src, 0x70uLL);
  v27 = &v9[*(v7 + 36)];
  sub_10022C350(&qword_100CA5500, &qword_100A5C030);
  OpenURLAction.init(handler:)();
  *v27 = KeyPath;
  v28 = v41;
  *v9 = v42;
  *(v9 + 1) = v28;
  v9[16] = v6;
  *(v9 + 3) = v40;
  v9[32] = v16;
  *(v9 + 5) = v18;
  *(v9 + 6) = v20;
  *(v9 + 7) = v22;
  *(v9 + 8) = v24;
  v9[72] = 0;
  static AccessibilityActionKind.default.getter();
  sub_1006DA554(v1, __src);
  v29 = swift_allocObject();
  memcpy((v29 + 16), __src, 0x70uLL);
  sub_1009187C0();
  View.accessibilityAction(_:_:)();

  (*(v44 + 8))(v3, v45);
  sub_1000180EC(v9, &qword_100CE5D88, &qword_100A99110);
  v30 = LocalizedStringKey.init(stringLiteral:)();
  v34 = Text.init(_:tableName:bundle:comment:)(v30, v32, v31 & 1, v33, 0, 0, 0, "Accessibility hint for opening privacy notice.", 46, 2);
  v36 = v35;
  LOBYTE(v7) = v37;
  ModifiedContent<>.accessibilityHint(_:)();
  sub_10010CD64(v34, v36, v7 & 1);

  return sub_1000180EC(v11, &qword_100CE5D60, &qword_100A990F8);
}

uint64_t sub_100913F68()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)(v0, v2, v1 & 1, v3, 0, 0, 0, "Notifications feature description string in the notification settings page.", 75, 2);
  v6 = v5;
  v8 = v7;
  static Color.clear.getter();
  AnyView.init<A>(_:)();
  static VerticalEdge.Set.all.getter();
  sub_10022C350(&qword_100CC31A8, &unk_100A5C040);
  sub_100513EA0();
  View.listRowSeparator(_:edges:)();
  sub_10010CD64(v4, v6, v8 & 1);
}

uint64_t sub_10091409C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = *(a1 + 8);
  sub_100035B30(a1 + 72, v15);
  v5 = *(a1 + 50) == 2;
  v6 = *(a1 + 52);
  v13[0] = v16;
  v13[1] = v17;
  v14 = v18;
  v15[40] = v5;
  v15[41] = v6;
  v7 = a1[1];
  v19 = *a1;
  v20 = v7;
  v21 = *(a1 + 8);
  sub_100035B30(a1 + 72, v10);
  *__src = v19;
  *&__src[16] = v20;
  *&__src[32] = v21;
  sub_100013188(v10, &__src[40]);
  __src[80] = v5;
  __src[81] = v6;
  __src[82] = BYTE1(v21);
  __src[88] = v21 & v5 & 1;
  *&__src[96] = 0;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1006BFE9C(v13, v10);
  sub_100526F5C(__dst, __src);
  sub_1006BFE9C(v10, a2);
  sub_100526F5C(__src, a2 + 88);
  sub_1008E696C(&v16, v9);
  sub_1008E696C(&v19, v9);
  sub_1009191B4(__dst);
  sub_100919208(v13);
  sub_1009191B4(__src);
  return sub_100919208(v10);
}

uint64_t sub_1009141F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CE5E60, &qword_100A991C0);
  __chkstk_darwin(v3);
  v5 = &v56 - v4;
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CE5E50, &qword_100A99168);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  if (*(v1 + 49) == 4)
  {
    sub_100917908(v8);
    v60 = Text.init(_:)();
    v59 = v12;
    v14 = v13;
    v58 = v15;
    v57 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = v14 & 1;
    __src[0] = v14 & 1;
    v62 = 0;
    v25 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v27 = swift_getKeyPath();
    sub_1006DA554(v1, __src);
    v28 = swift_allocObject();
    memcpy((v28 + 16), __src, 0x70uLL);
    v29 = *(v9 + 36);
    v56 = a1;
    v30 = &v11[v29];
    sub_10022C350(&qword_100CA5500, &qword_100A5C030);
    OpenURLAction.init(handler:)();
    *v30 = v27;
    v31 = v59;
    *v11 = v60;
    *(v11 + 1) = v31;
    v11[16] = v24;
    *(v11 + 3) = v58;
    v11[32] = v57;
    *(v11 + 5) = v17;
    *(v11 + 6) = v19;
    *(v11 + 7) = v21;
    *(v11 + 8) = v23;
    v11[72] = 0;
    *(v11 + 10) = KeyPath;
    *(v11 + 11) = v25;
    sub_1000955E0(v11, v5, &qword_100CE5E50, &qword_100A99168);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CDB7F8, &unk_100A99170);
    sub_100918EA8();
    sub_10080EC60();
    _ConditionalContent<>.init(storage:)();
    return sub_1000180EC(v11, &qword_100CE5E50, &qword_100A99168);
  }

  else
  {
    v33 = LocalizedStringKey.init(stringLiteral:)();
    v37 = Text.init(_:tableName:bundle:comment:)(v33, v35, v34 & 1, v36, 0, 0, 0, "The text describing the feature for severe notifications and widgets for significant locations", 94, 2);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v41 & 1;
    __src[0] = v41 & 1;
    v62 = 0;
    v54 = static Color.secondary.getter();
    v55 = swift_getKeyPath();
    *v5 = v37;
    *(v5 + 1) = v39;
    v5[16] = v53;
    *(v5 + 3) = v43;
    v5[32] = v44;
    *(v5 + 5) = v46;
    *(v5 + 6) = v48;
    *(v5 + 7) = v50;
    *(v5 + 8) = v52;
    v5[72] = 0;
    *(v5 + 10) = v55;
    *(v5 + 11) = v54;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CDB7F8, &unk_100A99170);
    sub_100918EA8();
    sub_10080EC60();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100914620@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for PopoverAttachmentAnchor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a2 + 50);
  v10 = *(a2 + 49);
  sub_1006DA554(a2, __src);
  v11 = swift_allocObject();
  memcpy((v11 + 16), __src, 0x70uLL);
  v12 = *(a2 + 49);
  if (v12 == 2)
  {
    v13 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v13 = static HierarchicalShapeStyle.secondary.getter();
  }

  v14 = v13;
  v16 = v9 == 2 && v10 == 2;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v12 != 2;
  LOBYTE(v24[0]) = a1 & 1;
  BYTE1(v24[0]) = v16;
  v24[1] = sub_100918F6C;
  v24[2] = v11;
  LOBYTE(v24[3]) = v16 & a1;
  v24[4] = 0;
  LODWORD(v24[5]) = v14;
  v24[6] = KeyPath;
  v24[7] = sub_100168F20;
  v24[8] = v18;
  v22 = &type metadata for NotificationPredictedLocationsTip;
  v23 = sub_1004CB054();
  *v8 = static Anchor.Source<A>.bounds.getter();
  (*(v6 + 104))(v8, enum case for PopoverAttachmentAnchor.rect(_:), v5);
  sub_10022C350(&qword_100CE5E18, &qword_100A99158);
  sub_100918C58();
  View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)();
  (*(v6 + 8))(v8, v5);
  memcpy(__src, v24, 0x48uLL);
  sub_1000180EC(__src, &qword_100CE5E18, &qword_100A99158);
  return sub_1000180EC(v21, &qword_100CB74E8, &qword_100A4B418);
}

uint64_t sub_100914920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_10022C350(&qword_100CE5E68, &qword_100A99230);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_10022C350(&qword_100CE5E70, &qword_100A99238);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_10022C350(&qword_100CE5E78, &qword_100A99240);
  sub_100915880(sub_100914BBC, sub_1009150A8, &v14[*(v15 + 44)]);
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = sub_10022C350(&qword_100CE5E80, &qword_100A99248);
  sub_1009164B8(v20, &unk_100C76108, sub_100918F7C, &v8[*(v16 + 44)]);
  sub_1000955E0(v14, v11, &qword_100CE5E70, &qword_100A99238);
  sub_1000955E0(v8, v5, &qword_100CE5E68, &qword_100A99230);
  sub_1000955E0(v11, a2, &qword_100CE5E70, &qword_100A99238);
  v17 = sub_10022C350(&qword_100CE5E88, &unk_100A99250);
  sub_1000955E0(v5, a2 + *(v17 + 48), &qword_100CE5E68, &qword_100A99230);
  sub_1000180EC(v8, &qword_100CE5E68, &qword_100A99230);
  sub_1000180EC(v14, &qword_100CE5E70, &qword_100A99238);
  sub_1000180EC(v5, &qword_100CE5E68, &qword_100A99230);
  return sub_1000180EC(v11, &qword_100CE5E70, &qword_100A99238);
}

uint64_t sub_100914BBC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_10022C350(&qword_100CAC610, &unk_100A56560);
  __chkstk_darwin(v1 - 8);
  v3 = &v46[-1] - v2;
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CE5EB0, &qword_100A99288);
  __chkstk_darwin(v8 - 8);
  v10 = &v46[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46[-1] - v12;
  Image.init(_internalSystemName:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  static SymbolRenderingMode.hierarchical.getter();
  v14 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v3, 0, 1, v14);
  v15 = Image.symbolRenderingMode(_:)();

  sub_1000180EC(v3, &qword_100CAC610, &unk_100A56560);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = 1;
  *&v48[6] = v53;
  *&v48[22] = v54;
  *&v48[38] = v55;
  v16 = static Edge.Set.top.getter();
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v50 = 0;
  v26 = static Edge.Set.leading.getter();
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v51 = 0;
  v36 = static Edge.Set.trailing.getter();
  v37 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v36)
  {
    v37 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  *(&v46[2] + 2) = *v48;
  v52 = 0;
  v46[0] = v15;
  v46[1] = 0;
  LOWORD(v46[2]) = 1;
  *(&v46[4] + 2) = *&v48[16];
  *(&v46[6] + 2) = *&v48[32];
  v46[8] = *&v48[46];
  LOBYTE(v46[9]) = v17;
  v46[10] = v19;
  v46[11] = v21;
  v46[12] = v23;
  v46[13] = v25;
  LOBYTE(v46[14]) = 0;
  LOBYTE(v46[15]) = v27;
  v46[16] = v29;
  v46[17] = v31;
  v46[18] = v33;
  v46[19] = v35;
  LOBYTE(v46[20]) = 0;
  LOBYTE(v46[21]) = v37;
  v46[22] = v38;
  v46[23] = v39;
  v46[24] = v40;
  v46[25] = v41;
  LOBYTE(v46[26]) = 0;
  sub_10022C350(&qword_100CE5EB8, &qword_100A99290);
  sub_100918F84();
  View.accessibilityHidden(_:)();
  memcpy(v47, v46, 0xD1uLL);
  sub_1000180EC(v47, &qword_100CE5EB8, &qword_100A99290);
  sub_1000955E0(v13, v10, &qword_100CE5EB0, &qword_100A99288);
  v42 = v45;
  sub_1000955E0(v10, v45, &qword_100CE5EB0, &qword_100A99288);
  v43 = v42 + *(sub_10022C350(&qword_100CE5EF8, &qword_100A992B8) + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1000180EC(v13, &qword_100CE5EB0, &qword_100A99288);
  return sub_1000180EC(v10, &qword_100CE5EB0, &qword_100A99288);
}

uint64_t sub_1009150A8@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v1 - 8);
  v3 = &v65 - v2;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)(v8, v10, v9 & 1, v11, 0, 0, 0, "String indicating that “Significant Locations” need to be enabled in System settings.", 89, 0);
  v14 = v13;
  v16 = v15;
  static Font.Weight.medium.getter();
  v17 = Text.fontWeight(_:)();
  v19 = v18;
  v21 = v20;
  sub_10010CD64(v12, v14, v16 & 1);

  v22 = v76;
  v23 = v77;
  v24 = *(v77 + 104);
  v69 = v77 + 104;
  v70 = v24;
  v24(v7, enum case for Font.TextStyle.body(_:), v76);
  v68 = type metadata accessor for Font.Design();
  v66 = v3;
  sub_10001B350(v3, 1, 1, v68);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v3, &qword_100CA4020, &qword_100A2E080);
  v25 = *(v23 + 8);
  v77 = v23 + 8;
  v67 = v25;
  v25(v7, v22);
  v26 = Text.font(_:)();
  v28 = v27;
  LOBYTE(v12) = v29;

  sub_10010CD64(v17, v19, v21 & 1);

  v30 = objc_opt_self();
  v31 = [v30 labelColor];
  Color.init(uiColor:)();
  v32 = Text.foregroundColor(_:)();
  v73 = v33;
  v74 = v32;
  v72 = v34;
  v71 = v35;

  sub_10010CD64(v26, v28, v12 & 1);

  v36 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v64) = 2;
  v40 = Text.init(_:tableName:bundle:comment:)(v36, v38, v37 & 1, v39, 0, 0, 0, "Subtitle of the tip suggesting to enable significant locations in system settings.", 82, v64);
  v42 = v41;
  LOBYTE(v17) = v43;
  v44 = v76;
  v70(v7, enum case for Font.TextStyle.subheadline(_:), v76);
  v45 = v66;
  sub_10001B350(v66, 1, 1, v68);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v45, &qword_100CA4020, &qword_100A2E080);
  v67(v7, v44);
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_10010CD64(v40, v42, v17 & 1);

  v51 = [v30 labelColor];
  Color.init(uiColor:)();
  v52 = Text.foregroundColor(_:)();
  v54 = v53;
  LOBYTE(v17) = v55;
  v57 = v56;

  sub_10010CD64(v46, v48, v50 & 1);

  v58 = v71 & 1;
  v78 = v71 & 1;
  v80 = v71 & 1;
  v79 = v17 & 1;
  v60 = v74;
  v59 = v75;
  v62 = v72;
  v61 = v73;
  *v75 = v74;
  v59[1] = v62;
  *(v59 + 16) = v58;
  v59[3] = v61;
  v59[4] = v52;
  v59[5] = v54;
  *(v59 + 48) = v17 & 1;
  v59[7] = v57;
  sub_10010CD54(v60, v62, v58);

  sub_10010CD54(v52, v54, v17 & 1);

  sub_10010CD64(v52, v54, v17 & 1);

  sub_10010CD64(v60, v62, v78);
}

uint64_t sub_1009155E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_10022C350(&qword_100CE5E68, &qword_100A99230);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_10022C350(&qword_100CE5E70, &qword_100A99238);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_10022C350(&qword_100CE5E78, &qword_100A99240);
  sub_100915880(sub_100915A98, sub_100915F84, &v14[*(v15 + 44)]);
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = sub_10022C350(&qword_100CE5E80, &qword_100A99248);
  sub_1009164B8(v20, &unk_100C76180, sub_100919364, &v8[*(v16 + 44)]);
  sub_1000955E0(v14, v11, &qword_100CE5E70, &qword_100A99238);
  sub_1000955E0(v8, v5, &qword_100CE5E68, &qword_100A99230);
  sub_1000955E0(v11, a2, &qword_100CE5E70, &qword_100A99238);
  v17 = sub_10022C350(&qword_100CE5E88, &unk_100A99250);
  sub_1000955E0(v5, a2 + *(v17 + 48), &qword_100CE5E68, &qword_100A99230);
  sub_1000180EC(v8, &qword_100CE5E68, &qword_100A99230);
  sub_1000180EC(v14, &qword_100CE5E70, &qword_100A99238);
  sub_1000180EC(v5, &qword_100CE5E68, &qword_100A99230);
  return sub_1000180EC(v11, &qword_100CE5E70, &qword_100A99238);
}

uint64_t sub_100915880@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(_OWORD *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CE5E98, &qword_100A99268);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v16[-v10];
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_10022C350(&qword_100CE5EA0, &qword_100A99270);
  a1();
  v12 = static HorizontalAlignment.leading.getter();
  LOBYTE(v19[0]) = 1;
  a2(v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v13 = v19[0];
  sub_1000955E0(v11, v8, &qword_100CE5E98, &qword_100A99268);
  sub_1000955E0(v8, a3, &qword_100CE5E98, &qword_100A99268);
  v14 = *(sub_10022C350(&qword_100CE5EA8, &unk_100A99278) + 48);
  v18[0] = v12;
  v18[1] = 0;
  LOBYTE(v18[2]) = v13;
  memcpy(&v18[2] + 1, v16, 0x47uLL);
  memcpy((a3 + v14), v18, 0x58uLL);
  sub_1000955E0(v18, v19, &qword_100CABC18, &unk_100A3AAF0);
  sub_1000180EC(v11, &qword_100CE5E98, &qword_100A99268);
  v19[0] = v12;
  v19[1] = 0;
  v20 = v13;
  memcpy(v21, v16, sizeof(v21));
  sub_1000180EC(v19, &qword_100CABC18, &unk_100A3AAF0);
  return sub_1000180EC(v8, &qword_100CE5E98, &qword_100A99268);
}

uint64_t sub_100915A98@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_10022C350(&qword_100CAC610, &unk_100A56560);
  __chkstk_darwin(v1 - 8);
  v3 = &v46[-1] - v2;
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CE5EB0, &qword_100A99288);
  __chkstk_darwin(v8 - 8);
  v10 = &v46[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46[-1] - v12;
  Image.init(systemName:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  static SymbolRenderingMode.hierarchical.getter();
  v14 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v3, 0, 1, v14);
  v15 = Image.symbolRenderingMode(_:)();

  sub_1000180EC(v3, &qword_100CAC610, &unk_100A56560);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = 1;
  *&v48[6] = v53;
  *&v48[22] = v54;
  *&v48[38] = v55;
  v16 = static Edge.Set.top.getter();
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v50 = 0;
  v26 = static Edge.Set.leading.getter();
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v51 = 0;
  v36 = static Edge.Set.trailing.getter();
  v37 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v36)
  {
    v37 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  *(&v46[2] + 2) = *v48;
  v52 = 0;
  v46[0] = v15;
  v46[1] = 0;
  LOWORD(v46[2]) = 1;
  *(&v46[4] + 2) = *&v48[16];
  *(&v46[6] + 2) = *&v48[32];
  v46[8] = *&v48[46];
  LOBYTE(v46[9]) = v17;
  v46[10] = v19;
  v46[11] = v21;
  v46[12] = v23;
  v46[13] = v25;
  LOBYTE(v46[14]) = 0;
  LOBYTE(v46[15]) = v27;
  v46[16] = v29;
  v46[17] = v31;
  v46[18] = v33;
  v46[19] = v35;
  LOBYTE(v46[20]) = 0;
  LOBYTE(v46[21]) = v37;
  v46[22] = v38;
  v46[23] = v39;
  v46[24] = v40;
  v46[25] = v41;
  LOBYTE(v46[26]) = 0;
  sub_10022C350(&qword_100CE5EB8, &qword_100A99290);
  sub_100918F84();
  View.accessibilityHidden(_:)();
  memcpy(v47, v46, 0xD1uLL);
  sub_1000180EC(v47, &qword_100CE5EB8, &qword_100A99290);
  sub_1000955E0(v13, v10, &qword_100CE5EB0, &qword_100A99288);
  v42 = v45;
  sub_1000955E0(v10, v45, &qword_100CE5EB0, &qword_100A99288);
  v43 = v42 + *(sub_10022C350(&qword_100CE5EF8, &qword_100A992B8) + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1000180EC(v13, &qword_100CE5EB0, &qword_100A99288);
  return sub_1000180EC(v10, &qword_100CE5EB0, &qword_100A99288);
}

uint64_t sub_100915F84@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v1 - 8);
  v3 = &v65 - v2;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)(v8, v10, v9 & 1, v11, 0, 0, 0, "String indicating that “Always” location authorization is required.", 71, 0);
  v14 = v13;
  v16 = v15;
  static Font.Weight.medium.getter();
  v17 = Text.fontWeight(_:)();
  v19 = v18;
  v21 = v20;
  sub_10010CD64(v12, v14, v16 & 1);

  v22 = v76;
  v23 = v77;
  v24 = *(v77 + 104);
  v69 = v77 + 104;
  v70 = v24;
  v24(v7, enum case for Font.TextStyle.body(_:), v76);
  v68 = type metadata accessor for Font.Design();
  v66 = v3;
  sub_10001B350(v3, 1, 1, v68);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v3, &qword_100CA4020, &qword_100A2E080);
  v25 = *(v23 + 8);
  v77 = v23 + 8;
  v67 = v25;
  v25(v7, v22);
  v26 = Text.font(_:)();
  v28 = v27;
  LOBYTE(v12) = v29;

  sub_10010CD64(v17, v19, v21 & 1);

  v30 = objc_opt_self();
  v31 = [v30 labelColor];
  Color.init(uiColor:)();
  v32 = Text.foregroundColor(_:)();
  v73 = v33;
  v74 = v32;
  v72 = v34;
  v71 = v35;

  sub_10010CD64(v26, v28, v12 & 1);

  v36 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v64) = 256;
  v40 = Text.init(_:tableName:bundle:comment:)(v36, v38, v37 & 1, v39, 0, 0, 0, 0, 0, v64);
  v42 = v41;
  LOBYTE(v17) = v43;
  v44 = v76;
  v70(v7, enum case for Font.TextStyle.subheadline(_:), v76);
  v45 = v66;
  sub_10001B350(v66, 1, 1, v68);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v45, &qword_100CA4020, &qword_100A2E080);
  v67(v7, v44);
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_10010CD64(v40, v42, v17 & 1);

  v51 = [v30 labelColor];
  Color.init(uiColor:)();
  v52 = Text.foregroundColor(_:)();
  v54 = v53;
  LOBYTE(v17) = v55;
  v57 = v56;

  sub_10010CD64(v46, v48, v50 & 1);

  v58 = v71 & 1;
  v78 = v71 & 1;
  v80 = v71 & 1;
  v79 = v17 & 1;
  v60 = v74;
  v59 = v75;
  v62 = v72;
  v61 = v73;
  *v75 = v74;
  v59[1] = v62;
  *(v59 + 16) = v58;
  v59[3] = v61;
  v59[4] = v52;
  v59[5] = v54;
  *(v59 + 48) = v17 & 1;
  v59[7] = v57;
  sub_10010CD54(v60, v62, v58);

  sub_10010CD54(v52, v54, v17 & 1);

  sub_10010CD64(v52, v54, v17 & 1);

  sub_10010CD64(v60, v62, v78);
}

uint64_t sub_1009164B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v52 = a3;
  v51 = a2;
  v50 = a1;
  v6 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = v59;
  v15 = v60;
  v48 = v61;
  v16 = v62;
  v47 = v63;
  v46 = v64;
  v17 = static Edge.Set.leading.getter();
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  v56 = 1;
  v55 = v15;
  v54 = v16;
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v56;
  v44 = v55;
  v45 = v54;
  v57 = 0;
  v28 = static Edge.Set.trailing.getter();
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v58 = 0;
  sub_1006DA554(v50, __src);
  v38 = swift_allocObject();
  memcpy((v38 + 16), __src, 0x70uLL);
  Button.init(action:label:)();
  v39 = *(v8 + 16);
  v39(v11, v14, v6);
  *a5 = 0;
  *(a5 + 8) = v27;
  *(a5 + 16) = v49;
  *(a5 + 24) = v44;
  *(a5 + 32) = v48;
  *(a5 + 40) = v45;
  v40 = v46;
  *(a5 + 48) = v47;
  *(a5 + 56) = v40;
  *(a5 + 64) = v18;
  *(a5 + 72) = v20;
  *(a5 + 80) = v22;
  *(a5 + 88) = v24;
  *(a5 + 96) = v26;
  *(a5 + 104) = 0;
  *(a5 + 112) = v29;
  *(a5 + 120) = v31;
  *(a5 + 128) = v33;
  *(a5 + 136) = v35;
  *(a5 + 144) = v37;
  *(a5 + 152) = 0;
  v41 = sub_10022C350(&qword_100CE5E90, &qword_100A99260);
  v39((a5 + *(v41 + 48)), v11, v6);
  v42 = *(v8 + 8);
  v42(v14, v6);
  return (v42)(v11, v6);
}

uint64_t sub_100916854@<X0>(uint64_t a1@<X8>)
{
  v2 = LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)(v2, v4, v3 & 1, v5, 0, 0, 0, 0, 0, 256);
  v8 = v7;
  v10 = v9;
  static Color.blue.getter();
  v11 = Text.foregroundColor(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100916948()
{
  v1 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-v2];
  v4 = type metadata accessor for AttributedText();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() mainBundle];
  v22._object = 0x8000000100AE6390;
  v9._object = 0x8000000100AE6370;
  v22._countAndFlagsBits = 0xD00000000000002FLL;
  v9._countAndFlagsBits = 0xD000000000000019;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v22);

  sub_100918130();
  v12 = type metadata accessor for AttributedString();
  sub_10001B350(v3, 1, 1, v12);
  sub_1006DA554(v0, __src);
  v13 = swift_allocObject();
  memcpy((v13 + 16), __src, 0x70uLL);
  AttributedText.init(_:accessibilityAttributedText:onInteraction:)();
  __src[0] = v11;
  sub_10002D5A4();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10091931C(&qword_100CB8BB0, &type metadata accessor for AttributedText, &protocol conformance descriptor for AttributedText);
  View.accessibilityHint(_:)();
  sub_10010CD64(v14, v16, v18 & 1);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100916C0C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 40);
  swift_getKeyPath();
  sub_1006DA554(a1, __src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x70uLL);

  sub_10022C350(&qword_100CE5F00, &qword_100A992E0);
  sub_10022C350(&qword_100CE5DC8, &qword_100A99128);
  sub_100006F64(&qword_100CE5F08, &qword_100CE5F00, &qword_100A992E0, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CE5DC0, &qword_100CE5DC8, &qword_100A99128, &protocol conformance descriptor for NavigationLink<A, B>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100916D80(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v11 = *(a1 + 8);
  sub_100035B30(a2 + 72, &v8);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  sub_1008E696C(&v9, v4);
  sub_10091926C();
  sub_1009192C0();
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_100916E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1008E696C(a1, v4);
}

uint64_t sub_100916E68()
{
  sub_1006DA554(v0, v6);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, v6, 0x70uLL);
  sub_1006DA554(v0, v6);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, v6, 0x70uLL);
  Binding.init(get:set:)();
  return v6[0];
}

uint64_t sub_100916F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006DA554(a1, v5);
  v3 = swift_allocObject();
  memcpy(v3 + 16, v5, 0x70uLL);
  sub_1003A9460(4, LocationSearchEntityFromStringResolver.init(), 0, sub_100919390, v3, a2);
}

uint64_t sub_100917080@<X0>(uint64_t a1@<X8>)
{
  v50 = sub_10022C350(&qword_100CB8BD0, &qword_100A4CFA0);
  __chkstk_darwin(v50);
  v49 = v47 - v2;
  v3 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v3 - 8);
  v5 = v47 - v4;
  v56 = type metadata accessor for AttributeContainer();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.Runs.Index();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = type metadata accessor for AttributedString.Runs.Run();
  v52 = *(v47[0] - 8);
  __chkstk_darwin(v47[0]);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = v47 - v11;
  v12 = type metadata accessor for AttributedString.Runs();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CC26F8, &unk_100A5B2C0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = v47 - v18;
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = v19;
  v22 = v9;
  AttributedString.init(localized:bundle:linkA:linkB:)();
  v63[0] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  sub_100513F58();
  AttributedString.subscript.setter();
  v63[0] = static Color.secondary.getter();
  v47[1] = sub_1005041DC();
  AttributedString.subscript.setter();
  v51 = a1;
  AttributedString.runs.getter();
  (*(v13 + 16))(v21, v15, v12);
  v23 = *(v17 + 44);
  v24 = sub_10091931C(&qword_100CC2708, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v13 + 8))(v15, v12);
  v25 = v47[0];
  ++v59;
  v54 = (v52 + 4);
  v55 = (v52 + 2);
  v26 = v23;
  ++v52;
  ++v53;
  v27 = v24;
  v48 = v5;
  while (1)
  {
    v28 = v60;
    dispatch thunk of Collection.endIndex.getter();
    sub_10091931C(&qword_100CC2710, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v29 = v27;
    v30 = v61;
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v59)(v28, v30);
    if (v31)
    {
      break;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v58;
    (*v55)(v58);
    v32(v63, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v54)(v22, v33, v25);
    v34 = v57;
    AttributedString.Runs.Run.attributes.getter();
    sub_100504124();
    AttributeContainer.subscript.getter();
    (*v53)(v34, v56);
    v35 = type metadata accessor for URL();
    LODWORD(v32) = sub_100024D10(v5, 1, v35);
    sub_1000180EC(v5, &qword_100CB3AB0, &unk_100A2FB80);
    v27 = v29;
    if (v32 != 1)
    {
      v36 = v49;
      AttributedString.Runs.Run.range.getter();
      v37 = static Color.blue.getter();
      v38 = v27;
      v39 = v26;
      v40 = v21;
      v41 = v12;
      v42 = v22;
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0, &qword_100A4CFA0, &protocol conformance descriptor for Range<A>);
      v43 = v25;
      v44 = AttributedString.subscript.modify();
      v62 = v37;
      AttributedSubstring.subscript.setter();
      v44(v63, 0);
      v25 = v43;
      v45 = v36;
      v5 = v48;
      v22 = v42;
      v12 = v41;
      v21 = v40;
      v26 = v39;
      v27 = v38;
      sub_1000180EC(v45, &qword_100CB8BD0, &qword_100A4CFA0);
    }

    (*v52)(v22, v25);
  }

  return sub_1000180EC(v21, &qword_100CC26F8, &unk_100A5B2C0);
}

uint64_t sub_10091786C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000161C0((a2 + 72), *(a2 + 96));
  sub_1000161C0((*v2 + 192), *(*v2 + 216));
  sub_1007A9900();

  return static OpenURLAction.Result.handled.getter();
}

void sub_1009178C8(uint64_t a1)
{
  v1 = sub_1000161C0((a1 + 72), *(a1 + 96));
  sub_1000161C0((*v1 + 192), *(*v1 + 216));
  sub_1007A9900();
}

uint64_t sub_100917908@<X0>(uint64_t a1@<X8>)
{
  v50 = sub_10022C350(&qword_100CB8BD0, &qword_100A4CFA0);
  __chkstk_darwin(v50);
  v49 = v47 - v2;
  v3 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v3 - 8);
  v5 = v47 - v4;
  v56 = type metadata accessor for AttributeContainer();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.Runs.Index();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = type metadata accessor for AttributedString.Runs.Run();
  v52 = *(v47[0] - 8);
  __chkstk_darwin(v47[0]);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = v47 - v11;
  v12 = type metadata accessor for AttributedString.Runs();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CC26F8, &unk_100A5B2C0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = v47 - v18;
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = v19;
  v22 = v9;
  AttributedString.init(localized:bundle:linkA:linkB:)();
  v63[0] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  sub_100513F58();
  AttributedString.subscript.setter();
  v63[0] = static Color.secondary.getter();
  v47[1] = sub_1005041DC();
  AttributedString.subscript.setter();
  v51 = a1;
  AttributedString.runs.getter();
  (*(v13 + 16))(v21, v15, v12);
  v23 = *(v17 + 44);
  v24 = sub_10091931C(&qword_100CC2708, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v13 + 8))(v15, v12);
  v25 = v47[0];
  ++v59;
  v54 = (v52 + 4);
  v55 = (v52 + 2);
  v26 = v23;
  ++v52;
  ++v53;
  v27 = v24;
  v48 = v5;
  while (1)
  {
    v28 = v60;
    dispatch thunk of Collection.endIndex.getter();
    sub_10091931C(&qword_100CC2710, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v29 = v27;
    v30 = v61;
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v59)(v28, v30);
    if (v31)
    {
      break;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v58;
    (*v55)(v58);
    v32(v63, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v54)(v22, v33, v25);
    v34 = v57;
    AttributedString.Runs.Run.attributes.getter();
    sub_100504124();
    AttributeContainer.subscript.getter();
    (*v53)(v34, v56);
    v35 = type metadata accessor for URL();
    LODWORD(v32) = sub_100024D10(v5, 1, v35);
    sub_1000180EC(v5, &qword_100CB3AB0, &unk_100A2FB80);
    v27 = v29;
    if (v32 != 1)
    {
      v36 = v49;
      AttributedString.Runs.Run.range.getter();
      v37 = static Color.blue.getter();
      v38 = v27;
      v39 = v26;
      v40 = v21;
      v41 = v12;
      v42 = v22;
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0, &qword_100A4CFA0, &protocol conformance descriptor for Range<A>);
      v43 = v25;
      v44 = AttributedString.subscript.modify();
      v62 = v37;
      AttributedSubstring.subscript.setter();
      v44(v63, 0);
      v25 = v43;
      v45 = v36;
      v5 = v48;
      v22 = v42;
      v12 = v41;
      v21 = v40;
      v26 = v39;
      v27 = v38;
      sub_1000180EC(v45, &qword_100CB8BD0, &qword_100A4CFA0);
    }

    (*v52)(v22, v25);
  }

  return sub_1000180EC(v21, &qword_100CC26F8, &unk_100A5B2C0);
}

uint64_t sub_1009180F4()
{
  sub_1008CA570(5);

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_100918130()
{
  v1 = *(v0 + 64);
  v22 = *(v0 + 56);
  sub_10022C350(&qword_100CB8BF0, &qword_100A4D010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = NSFontAttributeName;
  v23 = objc_opt_self();
  v24 = NSFontAttributeName;

  v3 = [v23 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v4 = sub_10000C70C(0, &qword_100CB8B98, UIFont_ptr);
  *(inited + 40) = v3;
  *(inited + 64) = v4;
  *(inited + 72) = NSForegroundColorAttributeName;
  v5 = objc_opt_self();
  v6 = NSForegroundColorAttributeName;
  v7 = [v5 secondaryLabelColor];
  v8 = sub_10000C70C(0, &qword_100CB8BA0, UIColor_ptr);
  *(inited + 104) = v8;
  *(inited + 80) = v7;
  type metadata accessor for Key(0);
  sub_10091931C(&qword_100CA30E0, type metadata accessor for Key, asc_100A2D22C);
  v9 = Dictionary.init(dictionaryLiteral:)();
  v10 = objc_allocWithZone(NSAttributedString);
  sub_10042F61C(v22, v1, v9);
  v11 = [objc_opt_self() mainBundle];
  v25._object = 0x8000000100AE63C0;
  v12._countAndFlagsBits = 0x6F6D206E7261654CLL;
  v12._object = 0xAD0000A680E26572;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000066;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v25);

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_100A3BBA0;
  *(v15 + 32) = v6;
  static Color.blue.getter();
  *(v15 + 40) = UIColor.init(_:)();
  *(v15 + 64) = v8;
  *(v15 + 72) = v24;
  *(v15 + 80) = [v23 preferredFontForTextStyle:UIFontTextStyleFootnote];
  *(v15 + 104) = v4;
  *(v15 + 112) = NSLinkAttributeName;
  *(v15 + 144) = &type metadata for String;
  *(v15 + 120) = 0x6C6F686563616C70;
  *(v15 + 128) = 0xEB00000000726564;
  v16 = NSLinkAttributeName;
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = objc_allocWithZone(NSAttributedString);
  v19 = sub_10042F61C(v14._countAndFlagsBits, v14._object, v17);
  sub_10000C70C(0, &qword_100CB8CC0, NSAttributedString_ptr);
  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100A3BD20;
  *(v20 + 32) = v19;
  return NSAttributedString.init(_:arguments:)();
}

uint64_t sub_1009184E0(uint64_t a1, uint64_t a2)
{
  sub_1000161C0((a2 + 72), *(a2 + 96));
  sub_10051644C();
  return 0;
}

_BYTE *sub_100918518(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    sub_1000161C0((a4 + 72), *(a4 + 96));
    return sub_100514194();
  }

  return result;
}

unint64_t sub_100918570()
{
  result = qword_100CE5D00;
  if (!qword_100CE5D00)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CE5CE0, &qword_100A99090);
    v4 = sub_10022E824(&qword_100CE5CD8, &qword_100A99088);
    sub_10022E824(&qword_100CE5CD0, &qword_100A99080);
    type metadata accessor for InsetGroupedListStyle();
    v5[4] = sub_100006F64(&qword_100CE5CF8, &qword_100CE5CD0, &qword_100A99080, &protocol conformance descriptor for List<A, B>);
    v5[5] = &protocol witness table for InsetGroupedListStyle;
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CE5D00);
  }

  return result;
}

unint64_t sub_100918704()
{
  result = qword_100CE5D78;
  if (!qword_100CE5D78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5D60, &qword_100A990F8);
    v4[0] = sub_1009187C0();
    v4[1] = sub_10091931C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5D78);
  }

  return result;
}

unint64_t sub_1009187C0()
{
  result = qword_100CE5D80;
  if (!qword_100CE5D80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5D88, &qword_100A99110);
    v4[0] = sub_100287740();
    v4[1] = sub_100006F64(&qword_100CA54F8, &qword_100CA5500, &qword_100A5C030, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5D80);
  }

  return result;
}

unint64_t sub_100918880()
{
  result = qword_100CE5DA8;
  if (!qword_100CE5DA8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CE5D28, &qword_100A990C0);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100006F64(&qword_100CE5D98, &qword_100CE5D90, &qword_100A99118, &protocol conformance descriptor for TupleView<A>);
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE5DA8);
  }

  return result;
}

unint64_t sub_10091894C()
{
  result = qword_100CE5DB8;
  if (!qword_100CE5DB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE5DB0, &qword_100A99120);
    v4[0] = sub_100006F64(&qword_100CE5DC0, &qword_100CE5DC8, &qword_100A99128, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE5DB8);
  }

  return result;
}

unint64_t sub_1009189FC()
{
  result = qword_100CE5DD0;
  if (!qword_100CE5DD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5D08, &qword_100A990A0);
    v4[0] = sub_10091931C(&qword_100CB8BB0, &type metadata accessor for AttributedText, &protocol conformance descriptor for AttributedText);
    v4[1] = sub_10091931C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5DD0);
  }

  return result;
}

unint64_t sub_100918AF8()
{
  result = qword_100CE5E00;
  if (!qword_100CE5E00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5D40, &qword_100A990D8);
    v4[0] = sub_100918B84();
    v4[1] = &protocol witness table for _TransactionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5E00);
  }

  return result;
}

unint64_t sub_100918B84()
{
  result = qword_100CE5E08;
  if (!qword_100CE5E08)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CE5E10, &qword_100A99150);
    v4[3] = sub_10022E824(&qword_100CE5E18, &qword_100A99158);
    v4[4] = sub_100918C58();
    v4[0] = &protocol witness table for Text;
    v4[1] = swift_getOpaqueTypeConformance2();
    v4[2] = sub_100918E1C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE5E08);
  }

  return result;
}

unint64_t sub_100918C58()
{
  result = qword_100CE5E20;
  if (!qword_100CE5E20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5E18, &qword_100A99158);
    v4[0] = sub_100918D10();
    v4[1] = sub_100006F64(&qword_100CA6F10, &qword_100CA6F18, &qword_100A31E90, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5E20);
  }

  return result;
}

unint64_t sub_100918D10()
{
  result = qword_100CE5E28;
  if (!qword_100CE5E28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5E30, &qword_100A99160);
    v4[0] = sub_100918DC8();
    v4[1] = sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8, &qword_100A2DF80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5E28);
  }

  return result;
}

unint64_t sub_100918DC8()
{
  result = qword_100CE5E38;
  if (!qword_100CE5E38)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for NotificationPredictedLocationsToggleView, v0, v1);
    atomic_store(result, &qword_100CE5E38);
  }

  return result;
}

unint64_t sub_100918E1C()
{
  result = qword_100CE5E40;
  if (!qword_100CE5E40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5D38, &qword_100A990D0);
    v4[0] = sub_100918EA8();
    v4[1] = sub_10080EC60();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5E40);
  }

  return result;
}

unint64_t sub_100918EA8()
{
  result = qword_100CE5E48;
  if (!qword_100CE5E48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5E50, &qword_100A99168);
    v4[0] = sub_10080EC60();
    v4[1] = sub_100006F64(&qword_100CA54F8, &qword_100CA5500, &qword_100A5C030, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5E48);
  }

  return result;
}

unint64_t sub_100918F84()
{
  result = qword_100CE5EC0;
  if (!qword_100CE5EC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5EB8, &qword_100A99290);
    v4[0] = sub_100919010();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5EC0);
  }

  return result;
}

unint64_t sub_100919010()
{
  result = qword_100CE5EC8;
  if (!qword_100CE5EC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5ED0, &qword_100A99298);
    v4[0] = sub_10091909C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5EC8);
  }

  return result;
}

unint64_t sub_10091909C()
{
  result = qword_100CE5ED8;
  if (!qword_100CE5ED8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5EE0, &unk_100A992A0);
    v4[0] = sub_100919128();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5ED8);
  }

  return result;
}

unint64_t sub_100919128()
{
  result = qword_100CE5EE8;
  if (!qword_100CE5EE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE5EF0, &unk_100A9CEF0);
    v4[0] = sub_10032DFB4();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE5EE8);
  }

  return result;
}

unint64_t sub_10091926C()
{
  result = qword_100CE5F10;
  if (!qword_100CE5F10)
  {
    result = swift_getWitnessTable(byte_100A3AA94, &type metadata for NotificationSettingsLocationRowView, v0, v1);
    atomic_store(result, &qword_100CE5F10);
  }

  return result;
}

unint64_t sub_1009192C0()
{
  result = qword_100CE5F18;
  if (!qword_100CE5F18)
  {
    result = swift_getWitnessTable(aIo, &type metadata for NotificationSettingsLocationDetailView, v0, v1);
    atomic_store(result, &qword_100CE5F18);
  }

  return result;
}

uint64_t sub_10091931C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *sub_1009193A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE5FC0, &qword_100A99328);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CE5FC8, &unk_100A99330);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    sub_1000161C0(a1, a1[3]);
    v8 = type metadata accessor for ToolbarTemplate();
    dispatch thunk of ResolverType.resolve<A>(_:)();
    result = sub_100024D10(v6, 1, v8);
    if (result != 1)
    {
      type metadata accessor for ToolbarManager();
      result = ToolbarManager.__allocating_init(commandCenter:template:)();
      *a2 = result;
      a2[1] = &protocol witness table for ToolbarManager;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DetailChartViewModel(uint64_t a1)
{
  result = qword_100CE6028;
  if (!qword_100CE6028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1009195A0(uint64_t a1)
{
  type metadata accessor for ConditionDetailChartHeaderViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChartViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_10091968C(319, &qword_100CE6038, type metadata accessor for LollipopViewModel);
      if (v3 <= 0x3F)
      {
        sub_10091968C(319, &unk_100CE6040, type metadata accessor for ConditionDetailChartFooterViewModel);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10091968C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Int sub_1009196E0@<X0>(Swift::Int *a2@<X8>)
{
  Hasher.init()();
  type metadata accessor for DetailChartViewModel(0);
  String.hash(into:)();
  type metadata accessor for ChartViewModel(0);
  type metadata accessor for Date();
  sub_100673874();
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher.finalize()();
  *a2 = result;
  return result;
}

BOOL sub_100919770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v46 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CC01C0, &qword_100A58610);
  sub_100003828();
  __chkstk_darwin(v7);
  v47 = v45 - v8;
  v9 = sub_10022C350(&qword_100CE6078, &qword_100A99428);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = v45 - v11;
  v13 = type metadata accessor for LollipopViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  v16 = (v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = (v45 - v18);
  v20 = sub_10022C350(&qword_100CE6080, &unk_100A99430);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  if ((static ConditionDetailChartHeaderStringModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v24 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  v25 = *(v24 + 20);
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  switch(v26)
  {
    case 2:
      if (v27 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v27 != 3)
      {
        return 0;
      }

      break;
    case 4:
      if (v27 != 4)
      {
        return 0;
      }

      break;
    case 5:
      if (v27 != 5)
      {
        return 0;
      }

      break;
    case 6:
      if (v27 != 6)
      {
        return 0;
      }

      break;
    default:
      if (v27 - 2) < 5 || ((v27 ^ v26))
      {
        return 0;
      }

      break;
  }

  if (*(a1 + *(v24 + 24)) != *(a2 + *(v24 + 24)))
  {
    return 0;
  }

  v45[1] = v4;
  v28 = type metadata accessor for DetailChartViewModel(0);
  if ((sub_10060F94C(a1 + *(v28 + 20), a2 + *(v28 + 20)) & 1) == 0)
  {
    return 0;
  }

  v45[0] = v28;
  v29 = *(v28 + 24);
  v30 = *(v20 + 48);
  v31 = v29;
  sub_100035AD0(a1 + v29, v23, &qword_100CBFE98, &qword_100A58340);
  sub_100035AD0(a2 + v31, &v23[v30], &qword_100CBFE98, &qword_100A58340);
  sub_1000083BC(v23);
  if (!v34)
  {
    sub_100035AD0(v23, v19, &qword_100CBFE98, &qword_100A58340);
    sub_1000083BC(&v23[v30]);
    if (!v34)
    {
      sub_100919DF8(&v23[v30], v16, type metadata accessor for LollipopViewModel);
      v37 = *v19 == *v16 && v19[1] == v16[1];
      if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static DetailChartDataPoint.== infix(_:_:)() & 1) != 0 && *(v19 + *(v13 + 24)) == *(v16 + *(v13 + 24)))
      {
        v38 = sub_10043057C(v19 + *(v13 + 28), v16 + *(v13 + 28));
        sub_100919DA0(v16, type metadata accessor for LollipopViewModel);
        sub_100919DA0(v19, type metadata accessor for LollipopViewModel);
        sub_1000180EC(v23, &qword_100CBFE98, &qword_100A58340);
        if ((v38 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_22;
      }

      sub_100919DA0(v16, type metadata accessor for LollipopViewModel);
      sub_100919DA0(v19, type metadata accessor for LollipopViewModel);
      v35 = &qword_100CBFE98;
      v36 = &qword_100A58340;
LABEL_41:
      v39 = v23;
      goto LABEL_42;
    }

    sub_100919DA0(v19, type metadata accessor for LollipopViewModel);
LABEL_30:
    v35 = &qword_100CE6080;
    v36 = &unk_100A99430;
    goto LABEL_41;
  }

  sub_1000083BC(&v23[v30]);
  if (!v34)
  {
    goto LABEL_30;
  }

  sub_1000180EC(v23, &qword_100CBFE98, &qword_100A58340);
LABEL_22:
  v32 = *(v45[0] + 28);
  v33 = *(v9 + 48);
  sub_100035AD0(a1 + v32, v12, &qword_100CC01C0, &qword_100A58610);
  sub_100035AD0(a2 + v32, &v12[v33], &qword_100CC01C0, &qword_100A58610);
  sub_100005404(v12);
  if (v34)
  {
    sub_100005404(&v12[v33]);
    if (v34)
    {
      sub_1000180EC(v12, &qword_100CC01C0, &qword_100A58610);
      return 1;
    }
  }

  else
  {
    v41 = v47;
    sub_100035AD0(v12, v47, &qword_100CC01C0, &qword_100A58610);
    sub_100005404(&v12[v33]);
    if (!v42)
    {
      v43 = v46;
      sub_100919DF8(&v12[v33], v46, type metadata accessor for ConditionDetailChartFooterViewModel);
      v44 = sub_100569678(v41, v43);
      sub_100919DA0(v43, type metadata accessor for ConditionDetailChartFooterViewModel);
      sub_100919DA0(v41, type metadata accessor for ConditionDetailChartFooterViewModel);
      sub_1000180EC(v12, &qword_100CC01C0, &qword_100A58610);
      return (v44 & 1) != 0;
    }

    sub_100919DA0(v41, type metadata accessor for ConditionDetailChartFooterViewModel);
  }

  v35 = &qword_100CE6078;
  v36 = &qword_100A99428;
  v39 = v12;
LABEL_42:
  sub_1000180EC(v39, v35, v36);
  return 0;
}

uint64_t sub_100919DA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100919DF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100919E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = type metadata accessor for PlainButtonStyle();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE6088, &qword_100A994D0);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v51 = sub_10022C350(&qword_100CE6090, &qword_100A994D8);
  sub_1000037C4();
  v49 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v48 = sub_10022C350(&qword_100CE6098, &qword_100A994E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  v50 = sub_10022C350(&qword_100CE60A0, &qword_100A994E8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v24);
  v52 = &v48 - v25;
  v54 = a1;
  v55 = a2;
  sub_10022C350(&qword_100CE60A8, &unk_100A994F0);
  sub_10091A634();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100006F64(&qword_100CE60C0, &qword_100CE6088, &qword_100A994D0, &protocol conformance descriptor for Button<A>);
  sub_10091A7C4();
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v10, v5);
  (*(v13 + 8))(v16, v11);
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  *(inited + 32) = a1;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != a1)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  v29 = v52;
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100472710();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  (*(v49 + 32))(v23, v20, v51);
  v38 = &v23[*(v48 + 36)];
  *v38 = v28;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_100472874();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10002F758(v23, v29, &qword_100CE6098, &qword_100A994E0);
  v39 = (v29 + *(v50 + 36));
  v40 = v57;
  *v39 = v56;
  v39[1] = v40;
  v39[2] = v58;
  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Material();
  v42 = sub_10000703C(v41, qword_100D90600);
  v43 = sub_10022C350(&qword_100CE60C8, &qword_100A99500);
  v44 = v53;
  v45 = v53 + *(v43 + 36);
  v46 = sub_10022C350(&qword_100CE60D0, &qword_100A99508);
  RoundedCornersShape.init(corners:radius:)();
  (*(*(v41 - 8) + 16))(v45, v42, v41);
  *(v45 + *(v46 + 56)) = 256;
  return sub_10002F758(v29, v44, &qword_100CE60A0, &qword_100A994E8);
}

uint64_t sub_10091A484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  v11[0] = a1;
  v11[1] = a2;
  sub_10002D5A4();

  Label<>.init<A>(_:systemImage:)();
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  sub_10091A770();
  View.labelStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  result = sub_10022C350(&qword_100CE60A8, &unk_100A994F0);
  *(a3 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_10091A634()
{
  result = qword_100CE60B0;
  if (!qword_100CE60B0)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CE60A8, &unk_100A994F0);
    v4[2] = sub_10022E824(&qword_100CA2CF0, &unk_100A6F8C0);
    v4[3] = &type metadata for CallToActionLabelStyle;
    v4[4] = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
    v4[5] = sub_10091A770();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CBDD58, &qword_100CBDD60, &qword_100A613F0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE60B0);
  }

  return result;
}

unint64_t sub_10091A770()
{
  result = qword_100CE60B8;
  if (!qword_100CE60B8)
  {
    result = swift_getWitnessTable(aQ_4, &type metadata for CallToActionLabelStyle, v0, v1);
    atomic_store(result, &qword_100CE60B8);
  }

  return result;
}

unint64_t sub_10091A7C4()
{
  result = qword_100CB0848;
  if (!qword_100CB0848)
  {
    v3 = type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable(&protocol conformance descriptor for PlainButtonStyle, v3, v0, v1);
    atomic_store(result, &qword_100CB0848);
  }

  return result;
}

uint64_t sub_10091A81C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_10022C350(&qword_100CE60F8, &unk_100A99560);
  return sub_10091A874(a2 + *(v3 + 44));
}

uint64_t sub_10091A874@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_10022C350(&qword_100CE6100, &qword_100A99570);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10022C350(&qword_100CE6108, &qword_100A99578);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  LabelStyleConfiguration.title.getter();
  v18 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v17[*(v12 + 44)];
  *v20 = KeyPath;
  v20[1] = v18;
  LabelStyleConfiguration.icon.getter();
  static Font.Weight.semibold.getter();
  v21 = type metadata accessor for Font.Design();
  sub_10001B350(v3, 1, 1, v21);
  v22 = static Font.system(size:weight:design:)();
  sub_1000180EC(v3, &qword_100CA4020, &qword_100A2E080);
  v23 = swift_getKeyPath();
  v24 = &v10[*(sub_10022C350(&qword_100CE6110, &qword_100A995B0) + 36)];
  *v24 = v23;
  v24[1] = v22;
  *&v10[*(v5 + 44)] = static HierarchicalShapeStyle.secondary.getter();
  sub_1000955E0(v17, v14, &qword_100CE6108, &qword_100A99578);
  sub_1000955E0(v10, v7, &qword_100CE6100, &qword_100A99570);
  v25 = v30;
  sub_1000955E0(v14, v30, &qword_100CE6108, &qword_100A99578);
  v26 = sub_10022C350(&qword_100CE6118, &qword_100A995B8);
  v27 = v25 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_1000955E0(v7, v25 + *(v26 + 64), &qword_100CE6100, &qword_100A99570);
  sub_1000180EC(v10, &qword_100CE6100, &qword_100A99570);
  sub_1000180EC(v17, &qword_100CE6108, &qword_100A99578);
  sub_1000180EC(v7, &qword_100CE6100, &qword_100A99570);
  return sub_1000180EC(v14, &qword_100CE6108, &qword_100A99578);
}

unint64_t sub_10091ABA8()
{
  result = qword_100CE60D8;
  if (!qword_100CE60D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE60C8, &qword_100A99500);
    v4[0] = sub_10091AC60();
    v4[1] = sub_100006F64(&qword_100CE60F0, &qword_100CE60D0, &qword_100A99508, &protocol conformance descriptor for _BackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE60D8);
  }

  return result;
}

unint64_t sub_10091AC60()
{
  result = qword_100CE60E0;
  if (!qword_100CE60E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE60A0, &qword_100A994E8);
    v4[0] = sub_10091ACEC();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE60E0);
  }

  return result;
}

unint64_t sub_10091ACEC()
{
  result = qword_100CE60E8;
  if (!qword_100CE60E8)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CE6098, &qword_100A994E0);
    v4[2] = sub_10022E824(&qword_100CE6088, &qword_100A994D0);
    v4[3] = type metadata accessor for PlainButtonStyle();
    v4[4] = sub_100006F64(&qword_100CE60C0, &qword_100CE6088, &qword_100A994D0, &protocol conformance descriptor for Button<A>);
    v4[5] = sub_10091A7C4();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE60E8);
  }

  return result;
}

uint64_t type metadata accessor for LocationRegularViewLayout(uint64_t a1)
{
  result = qword_100CE6188;
  if (!qword_100CE6188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10091AE98(uint64_t a1)
{
  result = type metadata accessor for DisplayMetrics(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LayoutDirection();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10091AF34(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[64])
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

uint64_t sub_10091AF80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10091AFE4(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  byte_100D91358 = result & 1;
  return result;
}

uint64_t sub_10091B008(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7, CGFloat a8)
{
  v9 = v8;
  v15 = type metadata accessor for LocationRegularViewLayout(0);
  __chkstk_darwin(v15);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LayoutSubview();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v39 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v41 = (&v35 - v21);
  __chkstk_darwin(v22);
  v24 = &v35 - v23;
  if (qword_100CA2A98 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    Width = *&a1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  swift_once();
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v47.origin.x = sub_10001FCF8();
  v47.size.height = a8;
  Width = CGRectGetWidth(v47);
  if ((a4 & 1) == 0)
  {
LABEL_4:
    Height = *&a3;
    goto LABEL_8;
  }

LABEL_7:
  v48.origin.x = sub_10001FCF8();
  v48.size.height = a8;
  Height = CGRectGetHeight(v48);
LABEL_8:
  memcpy(__dst, v9, sizeof(__dst));
  sub_100894868(Width);
  v38 = Width;
  v42 = sub_10091B638(v9, Width);
  MinX = 0.0;
  if (static Solarium.isEnabled.getter())
  {
    v49.origin.x = sub_10001FCF8();
    v49.size.height = a8;
    MinX = CGRectGetMinX(v49);
  }

  v50.origin.x = sub_10001FCF8();
  v36 = a8;
  v50.size.height = a8;
  CGRectGetMinY(v50);
  static Solarium.isEnabled.getter();
  static Solarium.isEnabled.getter();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  v45[0] = 0;
  v44[0] = 0;
  v37 = MinX;
  LayoutSubview.place(at:anchor:proposal:)();
  type metadata accessor for LayoutSubviews();
  sub_10091B82C(&qword_100CAD308, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() != 2)
  {
    return (*(v18 + 8))(v24, v17);
  }

  v27 = __dst[49];
  v28 = v41;
  LayoutSubviews.subscript.getter();
  v29 = v40;
  sub_10091B874(v9, v40);
  (*(v18 + 16))(v39, v28, v17);
  if ((v27 - 3) >= 2)
  {
    if (static Solarium.isEnabled.getter())
    {
      v52.origin.x = sub_10001FCF8();
      v52.size.height = v36;
      CGRectGetMinY(v52);
    }

    static Solarium.isEnabled.getter();
    v33 = v40;
    memcpy(v45, v40, sizeof(v45));
    sub_100894868(v38);
    static UnitPoint.topLeading.getter();
    sub_10001D244();
    sub_100006B70();
    LayoutSubview.place(at:anchor:proposal:)();
    v34 = sub_100010FEC();
    v28(v34);
    sub_10091B8D8(v33);
  }

  else
  {
    v30 = sub_100010FEC();
    v28(v30);
    sub_10091B8D8(v29);
    if (v27 == 4)
    {
      memcpy(v45, v9, sizeof(v45));
      sub_10086A5D0(v9 + *(v15 + 20));
      v31 = static Solarium.isEnabled.getter();
      v51.origin.x = sub_10001FCF8();
      v51.size.height = v36;
      CGRectGetMinY(v51);
      if ((v31 & 1) == 0)
      {
        static Solarium.isEnabled.getter();
      }

      static UnitPoint.topLeading.getter();
      sub_10001D244();
      sub_100006B70();
      LayoutSubview.place(at:anchor:proposal:)();
    }
  }

  (v28)(v41, v17);
  return (v28)(v24, v17);
}

double sub_10091B638(unsigned __int8 *__src, double result)
{
  if (__src[49] - 3 >= 2)
  {
    __dst[9] = v7;
    __dst[10] = v6;
    __dst[11] = v5;
    __dst[12] = v4;
    __dst[15] = v2;
    __dst[16] = v3;
    memcpy(__dst, __src, 0x48uLL);
    v8 = 2 * LOBYTE(__dst[6]) + 2;
    v9 = *&__dst[5] * ((2 * LOBYTE(__dst[6])) | 1uLL);
    v10 = *&__dst[7] + *&__dst[7];
    v11 = *&__dst[1];
    if (__dst[4])
    {
      v12 = sub_1000FDB68();
      v13 = 20.0;
      if (BYTE1(__dst[6]) - 3 < 2)
      {
        v13 = 0.0;
      }

      v14 = v11 - v10 - v12 - v13;
      v15 = sub_1000FDE84();
      if (*&__dst[8] >= v14 / dbl_100A996E0[v15])
      {
        v11 = v14 / dbl_100A996E0[v15];
      }

      else
      {
        v11 = *&__dst[8];
      }
    }

    return v9 + v10 + v11 * v8;
  }

  return result;
}

void (*sub_10091B770(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_10091B82C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10091B874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationRegularViewLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10091B8D8(uint64_t a1)
{
  v2 = type metadata accessor for LocationRegularViewLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10091B934()
{
  v0 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
  __chkstk_darwin(v0 - 8);
  v58 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
  __chkstk_darwin(v55);
  v57 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  __chkstk_darwin(v53);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ListPreprocessedDataModel(0) - 8;
  __chkstk_darwin(v49);
  v5 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UUID();
  v51 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PreprocessedWeatherData(0);
  sub_100007074(v17, qword_100D91360);
  v18 = sub_10000703C(v17, qword_100D91360);
  v50 = v16;
  UUID.init()();
  v19 = *(v11 + 36);
  v20 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  sub_10001B350(v13 + v19, 1, 1, v20);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v13[2] = 0;
  v13[3] = 0xE000000000000000;
  v13[4] = 0;
  v13[5] = 0;
  v21 = (v13 + *(v11 + 40));
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v52 = v14;
  sub_10001B350(v9, 1, 1, v14);
  *&v9[*(type metadata accessor for HourlyForecastComponentViewModel(0) + 20)] = _swiftEmptyArrayStorage;
  v22 = *(v7 + 28);
  v23 = type metadata accessor for WeatherDescription();
  v54 = v9;
  sub_10001B350(&v9[v22], 1, 1, v23);
  v24 = v5 + *(v49 + 40);
  static WeatherClock.date.getter();
  v25 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  v26 = *(v25 + 20);
  v49 = type metadata accessor for Elevation();
  sub_10001B350(&v24[v26], 1, 1, v49);
  v27 = *(v25 + 24);
  v48 = type metadata accessor for BackgroundMoonData();
  sub_10001B350(&v24[v27], 1, 1, v48);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0xE000000000000000;
  v5[6] = 0;
  v5[7] = 0xE000000000000000;
  if (qword_100CA21D8 != -1)
  {
    swift_once();
  }

  memcpy(v60, &unk_100D90370, sizeof(v60));
  memcpy(__dst, &unk_100D90370, sizeof(__dst));
  sub_100428584(v60, &v59);
  v28 = v56;
  WeatherDescription.init(stringLiteral:)();
  v29 = v53;
  v30 = (v28 + *(v53 + 20));
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v28 + *(v29 + 24));
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = enum case for PressureTrend.steady(_:);
  v33 = type metadata accessor for PressureTrend();
  v34 = v57;
  (*(*(v33 - 8) + 104))(v57, v32, v33);
  v35 = v55;
  v36 = (v34 + *(v55 + 20));
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = (v34 + v35[6]);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = (v34 + v35[7]);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  *(v34 + v35[8]) = 0;
  v39 = (v34 + v35[9]);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v40 = v58;
  static WeatherClock.date.getter();
  sub_10001B350(&v40[*(v25 + 20)], 1, 1, v49);
  v41 = &v40[*(v25 + 24)];
  v42 = v40;
  sub_10001B350(v41, 1, 1, v48);
  (*(v51 + 32))(v18, v50, v52);
  *(v18 + v17[5]) = _swiftEmptyArrayStorage;
  sub_10012A750(v13, v18 + v17[6]);
  sub_10012A750(v54, v18 + v17[7]);
  sub_10012A750(v5, v18 + v17[8]);
  v43 = (v18 + v17[9]);
  memcpy(v43, __dst, 0x70uLL);
  v43[14] = 0;
  v43[15] = 0xE000000000000000;
  sub_10012A750(v28, v18 + v17[10]);
  v44 = (v18 + v17[11]);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  v44[2] = 0;
  v44[3] = 0xE000000000000000;
  v44[4] = 0;
  v44[5] = 0xE000000000000000;
  sub_10012A750(v34, v18 + v17[12]);
  v45 = (v18 + v17[13]);
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v45[2] = 0;
  v45[3] = 0xE000000000000000;
  v45[4] = 0;
  v45[5] = 0xE000000000000000;
  v45[6] = 1684957527;
  v45[7] = 0xE400000000000000;
  v45[8] = 0;
  v45[9] = 0xE000000000000000;
  v45[10] = 0;
  v45[11] = 0xE000000000000000;
  v45[12] = 0;
  v45[13] = 0xE000000000000000;
  v45[14] = 0x7374737547;
  v45[15] = 0xE500000000000000;
  v45[16] = 0;
  v45[17] = 0xE000000000000000;
  v45[18] = 0x6F69746365726944;
  v45[19] = 0xE90000000000006ELL;
  v45[20] = 0;
  v45[21] = 0xE000000000000000;
  v45[22] = 0;
  v45[23] = 0xE000000000000000;
  v45[24] = 0;
  v45[25] = 0xE000000000000000;
  v45[26] = 0;
  v45[27] = 0;
  v45[28] = 0xE000000000000000;
  sub_10012A750(v42, v18 + v17[14]);
  v46 = v18 + v17[15];
  *v46 = 0;
  *(v46 + 8) = 0xE000000000000000;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0xE000000000000000;
  *(v46 + 48) = 0;
  *(v46 + 56) = 0xE000000000000000;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0xE000000000000000;
  *(v46 + 80) = 0;
  *(v46 + 88) = 0xE000000000000000;
  result = 0.0;
  *(v46 + 96) = xmmword_100A3A770;
  return result;
}

uint64_t sub_10091C028()
{
  v0 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v2);
  sub_10000E70C();
  sub_100003918(v3);
  v4 = type metadata accessor for HistoricalComparisons();
  v5 = sub_100003E5C(v4, &v624);
  v532 = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v7);
  type metadata accessor for Location();
  sub_1000037C4();
  v624 = v8;
  v625 = v9;
  __chkstk_darwin(v8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v15 = type metadata accessor for UUID();
  v16 = sub_100003E5C(v15, &v626);
  v605 = v17;
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003990(v18);
  v19 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  sub_100003990(v21);
  v22 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  sub_100003990(v24);
  v25 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003918(v27);
  v28 = type metadata accessor for WeatherAvailability.AvailabilityKind();
  v29 = sub_100003E5C(v28, &v610);
  v597 = v30;
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_10000E70C();
  sub_100003918(v33);
  v34 = type metadata accessor for WeatherAvailability();
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003990(v36);
  v37 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v40 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_100003810(v40);
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  *&v623 = v42;
  v43 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_100003810(v43);
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v622 = v45;
  v46 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_100003810(v46);
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  v621 = v48;
  v49 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  sub_100003810(v49);
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CC41A8, &qword_100A5D7B0);
  sub_100003810(v52);
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003918(v54);
  v55 = type metadata accessor for WeatherMetadata();
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_100003990(v57);
  v58 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v58);
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  sub_100003990(v60);
  v61 = sub_10022C350(&qword_100CAC450, &unk_100A3B3B0);
  sub_100003810(v61);
  sub_100003828();
  __chkstk_darwin(v62);
  sub_1000039BC();
  sub_100003918(v63);
  v64 = type metadata accessor for Wind();
  v65 = sub_100003810(v64);
  __chkstk_darwin(v65);
  sub_1000038E4();
  sub_100003990(v66);
  v67 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100003E5C(v67, &v560);
  v529 = v68;
  sub_100003828();
  __chkstk_darwin(v69);
  sub_1000039BC();
  sub_100003918(v70);
  v71 = type metadata accessor for UVIndex();
  v72 = sub_100003810(v71);
  __chkstk_darwin(v72);
  sub_1000038E4();
  sub_100003990(v73);
  v74 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_10000E70C();
  v620 = v77;
  sub_1000038CC();
  v78 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  v79 = sub_100003E5C(v78, &v603);
  v595 = v80;
  __chkstk_darwin(v79);
  sub_1000038E4();
  sub_100003918(v81);
  v82 = type metadata accessor for ApparentPrecipitationIntensity();
  v83 = sub_100003810(v82);
  __chkstk_darwin(v83);
  sub_1000038E4();
  v619 = v84;
  sub_1000038CC();
  v85 = type metadata accessor for PrecipitationAmountByType();
  v86 = sub_100003810(v85);
  __chkstk_darwin(v86);
  sub_100003848();
  v618 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v617 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v615 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v616 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v614 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_10000E70C();
  v613 = v97;
  sub_1000038CC();
  v98 = type metadata accessor for PrecipitationAmount();
  v99 = sub_100003810(v98);
  __chkstk_darwin(v99);
  sub_100003848();
  v612 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_10000E70C();
  v611 = v102;
  sub_1000038CC();
  v103 = type metadata accessor for PressureTrend();
  v104 = sub_100003E5C(v103, v600);
  v593 = v105;
  __chkstk_darwin(v104);
  sub_1000038E4();
  sub_100003990(v106);
  v107 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_100003810(v107);
  sub_100003828();
  __chkstk_darwin(v108);
  sub_1000039BC();
  sub_100003990(v109);
  v581 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037E8();
  __chkstk_darwin(v110);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v111);
  v602 = &v527 - v112;
  v113 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v114 = sub_100003E5C(v113, &v619);
  v528 = v115;
  __chkstk_darwin(v114);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  v603 = &v527 - v118;
  v119 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v121 = v120;
  __chkstk_darwin(v122);
  sub_1000037D8();
  v125 = v124 - v123;
  v600[2] = v124 - v123;
  v126 = type metadata accessor for CloudCoverByAltitude();
  v127 = sub_100003810(v126);
  __chkstk_darwin(v127);
  sub_1000037D8();
  v600[1] = v129 - v128;
  v130 = type metadata accessor for Date();
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  v590 = &v527 - v134;
  v135 = type metadata accessor for CurrentWeather();
  v136 = sub_100003810(v135);
  __chkstk_darwin(v136);
  sub_1000038E4();
  sub_100003918(v137);
  v138 = type metadata accessor for WeatherDataModel();
  v139 = sub_100003E5C(v138, &v604);
  v596 = v140;
  __chkstk_darwin(v139);
  sub_1000038E4();
  sub_100003990(v141);
  sub_10022C350(&qword_100CE6288, &qword_100A997C0);
  v142 = sub_10022C350(&qword_100CE6290, &qword_100A997C8);
  sub_100003DDC();
  v145 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v577 = *(v143 + 72);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_100A3B020;
  v533 = v146;
  v147 = (v146 + v145);
  v569 = v142;
  v148 = v146 + v145 + *(v142 + 48);
  v527 = v148;
  *v147 = static Location.currentLocationID.getter();
  v147[1] = v149;
  v566 = v147;
  v150 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v536 = v148 + *(v150 + 48);
  v568 = v150;
  v600[0] = *(v150 + 64);
  static WeatherClock.date.getter();
  sub_100049F18();
  CloudCoverByAltitude.init(low:medium:high:)();
  v151 = *(v121 + 104);
  v573 = v119;
  v572 = v121 + 104;
  v567 = v151;
  v151(v125, enum case for WeatherCondition.wintryMix(_:), v119);
  v152 = objc_opt_self();
  v153 = sub_100042398([v152 celsius], &qword_100CA51B0);
  Measurement.init(value:unit:)();
  v154 = objc_opt_self();
  v155 = sub_100042398([v154 metersPerSecond], &qword_100CAC428);
  Measurement.init(value:unit:)();
  v565 = objc_opt_self();
  v564 = sub_100042398([v565 millibars], &qword_100CAC448);
  Measurement.init(value:unit:)();
  sub_1000193CC();
  v563 = v156;
  v593 = v157;
  v562 = v158;
  v158(v610);
  sub_10091EDCC();
  sub_10091EDCC();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  sub_1000193CC();
  v159 = v582;
  v561 = v160;
  v595 = v161;
  v560 = v162;
  v163.n128_f64[0] = v162(v582);
  sub_1000527E0(v163);
  v164 = [v152 celsius];
  sub_100045448();
  Measurement.init(value:unit:)();
  v579 = v152;
  v165 = [v152 celsius];
  sub_1000D438C();
  v578 = v153;
  Measurement.init(value:unit:)();
  sub_100003934();
  sub_10012017C(v166, v167, v168);
  sub_1000326C8(v169);
  sub_100003934();
  sub_10001B350(v170, v171, v172, v159);
  sub_100020250();
  UVIndex.init(value:category:)();
  v576 = objc_opt_self();
  sub_100042398([v576 meters], &qword_100CAB968);
  sub_100071E74();
  v575 = v173;
  Measurement.init(value:unit:)();
  v559 = objc_opt_self();
  sub_100042398([v559 degrees], &qword_100CCFAD0);
  sub_1000371B0();
  v557 = v174;
  Measurement.init(value:unit:)();
  v571 = v154;
  v175 = [v154 milesPerHour];
  sub_100011868();
  v570 = v155;
  Measurement.init(value:unit:)();
  sub_1000D4058(v606);
  sub_100003934();
  sub_100038074(v176, v177, v178);
  sub_100036F54();
  Wind.init(compassDirection:direction:speed:gust:)();
  sub_100011868();
  static WeatherClock.date.getter();
  sub_1000184C0();
  static WeatherClock.date.getter();
  v179 = type metadata accessor for WeatherAttribution();
  v180 = v592;
  v181 = sub_10000900C();
  sub_10001B350(v181, v182, v183, v179);
  sub_1000053B8();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_10001A1AC();
  sub_100049F18();
  sub_100030170();
  sub_10003A460(v184, v185, v186, v187, v188);
  sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  sub_100003934();
  v558 = v189;
  sub_10001B350(v190, v191, v192, v189);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  v193 = v179;
  sub_10001B350(v194, v195, v196, v179);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  v197 = type metadata accessor for HourWeather();
  v198 = sub_1000F42E4(&qword_100CB0C20, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  sub_10003C024();
  v201 = sub_1000F42E4(v199, &type metadata accessor for HourWeather, v200);
  sub_100021794();
  v204 = sub_1000F42E4(v202, &type metadata accessor for HourWeather, v203);
  v556 = v197;
  v555 = v198;
  v554 = v201;
  v553 = v204;
  Forecast.init(_:metadata:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  v601 = v193;
  sub_10001B350(v205, v206, v207, v193);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  v208 = type metadata accessor for DayWeather();
  v209 = sub_1000F42E4(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_1000306E8();
  v212 = sub_1000F42E4(v210, &type metadata accessor for DayWeather, v211);
  sub_100024438();
  v215 = sub_1000F42E4(v213, &type metadata accessor for DayWeather, v214);
  v552 = v208;
  v551 = v209;
  v550 = v212;
  v549 = v215;
  Forecast.init(_:metadata:)();
  type metadata accessor for AirQuality();
  sub_100003934();
  v545 = v216;
  sub_10001B350(v217, v218, v219, v216);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_10001B350(v220, v221, v222, v193);
  v223 = v180;
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_100071E74();
  WeatherChanges.init(changes:metadata:)();
  type metadata accessor for WeatherChanges();
  sub_10000E7B0();
  v544 = v224;
  sub_10001B350(v225, v226, v227, v224);
  v228 = enum case for WeatherAvailability.AvailabilityKind.unknown(_:);
  v230 = v597 + 104;
  v229 = *(v597 + 104);
  v231 = v584;
  v232 = v587;
  (v229)(v584, enum case for WeatherAvailability.AvailabilityKind.unknown(_:), v587);
  (v229)(v585, v228, v232);
  v547 = v228;
  v597 = v230;
  v546 = v229;
  (v229)(v586, v228, v232);
  sub_100011868();
  v233 = v590;
  WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)();
  static WeatherClock.date.getter();
  sub_100036F54();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_1000326F4();
  sub_10001B350(v234, v235, v236, v237);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_1000184C0();
  HistoricalComparisons.init(comparisons:metadata:)();
  sub_10000E7B0();
  sub_10001B350(v238, v239, v240, v598);
  type metadata accessor for HistoricalFacts();
  sub_1000D4058(&v613);
  sub_100003934();
  v543 = v241;
  sub_10001B350(v242, v243, v244, v241);
  sub_100071518();
  sub_10000EF00();
  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  type metadata accessor for WeatherDataOverrides(0);
  sub_1000B0F24(&v614);
  sub_100003934();
  v542 = v245;
  sub_10001B350(v246, v247, v248, v245);
  sub_1000184C0();
  UUID.init()();
  v249 = UUID.uuidString.getter();
  v251 = v250;
  sub_10000E73C();
  v605 = v252;
  v580 = v253;
  v253(v233, v599);
  v254 = type metadata accessor for WeatherData(0);
  v255 = v527;
  static Locale.current.getter();
  type metadata accessor for Locale();
  sub_10000E7B0();
  v541 = v256;
  sub_10001B350(v257, v258, v259, v256);
  v540 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  sub_100003934();
  v539 = v260;
  sub_10001B350(v261, v262, v263, v260);
  *v255 = v249;
  v255[1] = v251;
  v264 = *(v596 + 32);
  v265 = v255 + *(v254 + 24);
  v596 += 32;
  v538 = v264;
  v264(v265, v223, v583);
  v548 = v254;
  sub_10091F030(v232, v255 + *(v254 + 36));
  if (qword_100CA2AA0 != -1)
  {
    sub_100071EF4(&qword_100CA2AA0);
  }

  v266 = type metadata accessor for PreprocessedWeatherData(0);
  sub_10000703C(v266, qword_100D91360);
  sub_100023540();
  v537 = v267;
  sub_1009221B4(v267, v536);
  if (qword_100CA2C20 != -1)
  {
    sub_1000B9AFC(&qword_100CA2C20);
  }

  v268 = type metadata accessor for NewsDataModel(0);
  v536 = sub_10000703C(v268, qword_100D91550);
  sub_100041C34();
  v535 = v269;
  sub_1009221B4(v270, v255 + v600[0]);
  v534 = type metadata accessor for LocationWeatherDataState(0);
  swift_storeEnumTagMultiPayload();
  v271 = v566;
  v272 = (v566 + v577);
  v273 = v569;
  v527 = *(v569 + 48);
  sub_100071518();
  static Location.cupertino.getter();
  v274 = Location.id.getter();
  v276 = v275;
  v277 = v625 + 8;
  v278 = *(v625 + 8);
  v279 = v223;
  v280 = v624;
  v278(v279, v624);
  v600[0] = v278;
  v625 = v277;
  *v272 = v274;
  v272[1] = v276;
  v281 = [v579 celsius];
  v282 = v603;
  Measurement.init(value:unit:)();
  v283 = [v576 millimeters];
  sub_1000719F4();
  sub_1000872AC();
  Measurement.init(value:unit:)();
  sub_10092143C();
  sub_100020250();
  static HistoricalComparisons.mock(comparisons:)();

  sub_10091F0A0(v282, v231, v276, 0, _swiftEmptyArrayStorage, 0, 0, (v272 + v527));
  sub_10000E73C();
  v284(v276, v598);
  sub_10000E73C();
  v285(v231, v530);
  sub_10000E73C();
  v286(v282, v594);
  v287 = (v271 + 2 * v577);
  v527 = v287 + *(v273 + 48);
  sub_100011868();
  static Location.newYork.getter();
  v288 = Location.id.getter();
  v290 = v289;
  v278(v282, v280);
  *v287 = v288;
  v287[1] = v290;
  v528 = *(v568 + 48);
  v529 = *(v568 + 64);
  sub_100071E74();
  static WeatherClock.date.getter();
  sub_100049F18();
  CloudCoverByAltitude.init(low:medium:high:)();
  v291 = sub_1000C88D4();
  v292(v291);
  v293 = v579;
  v294 = [v579 celsius];
  v295 = v578;
  Measurement.init(value:unit:)();
  v296 = sub_1000B0F24(v588);
  v298 = [v296 v297];
  sub_1000BCF78();
  Measurement.init(value:unit:)();
  v299 = [v565 millibars];
  sub_1000C845C(v299, v300);
  v301 = sub_1000165D8();
  v302(v301);
  sub_10091EDCC();
  sub_10091EDCC();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  v303 = sub_100021244();
  v305.n128_f64[0] = v304(v303);
  sub_1000527E0(v305);
  v306 = [v293 celsius];
  sub_100045448();
  Measurement.init(value:unit:)();
  v307 = [v293 celsius];
  sub_1000D438C();
  Measurement.init(value:unit:)();
  sub_100003934();
  sub_10012017C(v308, v309, v310);
  sub_100003934();
  sub_10001B350(v311, v312, v313, v287);
  sub_100011868();
  UVIndex.init(value:category:)();
  v314 = [v576 meters];
  sub_1000184C0();
  sub_1000872AC();
  Measurement.init(value:unit:)();
  v315 = [v559 degrees];
  sub_100036F54();
  Measurement.init(value:unit:)();
  v316 = [v290 milesPerHour];
  sub_1000371B0();
  Measurement.init(value:unit:)();
  sub_1000B0F24(v606);
  sub_100003934();
  sub_100038074(v317, v318, v319);
  Wind.init(compassDirection:direction:speed:gust:)();
  sub_100020250();
  static WeatherClock.date.getter();
  sub_1000371B0();
  static WeatherClock.date.getter();
  v532 = "_TtC7Weather15StartupAssembly";
  v320 = type metadata accessor for URL();
  v530 = v320;
  v321 = sub_10000900C();
  sub_10001B350(v321, v322, v323, v320);
  v324 = sub_100021088(&v592);
  sub_10001B350(v324, v325, v326, v320);
  sub_100071518();
  WeatherAttribution.init(name:sourceURL:logoURL:)();
  sub_10000E7B0();
  sub_1000326F4();
  v328 = v327;
  sub_10001B350(v329, v330, v331, v327);
  sub_100071518();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_10001A1AC();
  sub_100049F18();
  sub_1000118D8();
  sub_100030170();
  sub_10003A460(v332, v333, v334, 7239027, 0xE300000000000000);
  sub_100003934();
  sub_10001B350(v335, v336, v337, v558);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  v338 = sub_10000900C();
  sub_10001B350(v338, v339, v340, v328);
  sub_100044ED4();
  sub_10007185C(_swiftEmptyArrayStorage, v320);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  v341 = sub_10000900C();
  sub_10001B350(v341, v342, v343, v328);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_100043B28(_swiftEmptyArrayStorage, v320);
  sub_100003934();
  sub_10001B350(v344, v345, v346, v545);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  v347 = sub_10000900C();
  sub_10001B350(v347, v348, v349, v328);
  sub_100044ED4();
  sub_1000184C0();
  WeatherChanges.init(changes:metadata:)();
  v350 = sub_10000FEF4();
  sub_10001B350(v350, v351, v352, v544);
  sub_1000F00BC();
  v354 = *(v353 - 256);
  v355 = v546;
  v546();
  v356 = sub_1000326C8(&v608);
  (v355)(v356, v295, v354);
  v357 = sub_1000B0F24(&v609);
  (v355)(v357, v295, v354);
  sub_1000184C0();
  WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_10000900C();
  sub_1000326F4();
  sub_10001B350(v358, v359, v360, v361);
  sub_100011868();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_100036F54();
  HistoricalComparisons.init(comparisons:metadata:)();
  sub_10000E7B0();
  sub_10001B350(v362, v363, v364, v598);
  v365 = sub_100021088(&v613);
  sub_10001B350(v365, v366, v367, v543);
  sub_1000371B0();
  sub_10000EF00();
  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  v368 = v589;
  v369 = sub_10000900C();
  sub_10001B350(v369, v370, v371, v542);
  sub_100011868();
  UUID.init()();
  v372 = UUID.uuidString.getter();
  v374 = v373;
  sub_10002CBCC();
  v375();
  v376 = v548;
  v377 = v527;
  static Locale.current.getter();
  sub_10000E7B0();
  sub_10001B350(v378, v379, v380, v541);
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v381, v382, v383, v539);
  *v377 = v372;
  v377[1] = v374;
  sub_1000A7DC4();
  v384();
  sub_10091F030(v368, v377 + *(v376 + 36));
  sub_100023540();
  v531 = v385;
  v386 = sub_1009221B4(v537, v377 + v528);
  sub_1000378C8(v386, v377 + v529);
  swift_storeEnumTagMultiPayload();
  v387 = (v566 + 3 * v577);
  v566 = (v387 + *(v569 + 48));
  sub_100011868();
  static Location.london.getter();
  Location.id.getter();
  sub_100017750();
  sub_1000B0354();
  v388();
  *v387 = v374;
  v387[1] = v376;
  v569 = *(v568 + 48);
  v577 = *(v568 + 64);
  static WeatherClock.date.getter();
  sub_100049F18();
  CloudCoverByAltitude.init(low:medium:high:)();
  v389 = sub_1000C88D4();
  v390(v389);
  v391 = v579;
  v392 = [v579 celsius];
  Measurement.init(value:unit:)();
  v393 = v571;
  v394 = [v571 metersPerSecond];
  sub_1000BCF78();
  Measurement.init(value:unit:)();
  v395 = [v565 millibars];
  sub_1000C845C(v395, v396);
  v397 = sub_1000165D8();
  v398(v397);
  sub_10091EDCC();
  sub_10091EDCC();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  v399 = sub_100021244();
  v401.n128_f64[0] = v400(v399);
  sub_1000527E0(v401);
  v402 = [v391 celsius];
  sub_100045448();
  Measurement.init(value:unit:)();
  v403 = [v391 celsius];
  sub_1000D438C();
  Measurement.init(value:unit:)();
  sub_100003934();
  sub_10012017C(v404, v405, v406);
  sub_100003934();
  sub_10001B350(v407, v408, v409, v374);
  UVIndex.init(value:category:)();
  v410 = [v576 meters];
  sub_1000C90E0();
  sub_1000872AC();
  Measurement.init(value:unit:)();
  v411 = [v559 degrees];
  sub_1000184C0();
  Measurement.init(value:unit:)();
  v412 = [v393 milesPerHour];
  sub_1000371B0();
  Measurement.init(value:unit:)();
  sub_100170830(v606);
  sub_100003934();
  sub_100038074(v413, v414, v415);
  sub_100011868();
  Wind.init(compassDirection:direction:speed:gust:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_1000D4058(&v591);
  sub_100003934();
  v416 = v530;
  sub_10001B350(v417, v418, v419, v530);
  v420 = v574;
  sub_100003934();
  sub_10001B350(v421, v422, v423, v416);
  sub_100020250();
  WeatherAttribution.init(name:sourceURL:logoURL:)();
  sub_10000E7B0();
  v424 = v601;
  sub_10001B350(v425, v426, v427, v601);
  sub_1000184C0();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_10001A1AC();
  sub_100049F18();
  sub_1000118D8();
  v428 = v590;
  sub_100030170();
  sub_10003A460(v429, v430, v431, v432, 0xE500000000000000);
  sub_100003934();
  sub_10001B350(v433, v434, v435, v558);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_10001B350(v436, v437, v438, v424);
  sub_1000795D0();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  v439 = sub_1000053B8();
  sub_10007185C(v439, v440);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_10001B350(v441, v442, v443, v424);
  sub_1000795D0();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  v444 = sub_1000053B8();
  sub_100043B28(v444, v445);
  sub_100003934();
  sub_10001B350(v446, v447, v448, v545);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_10001B350(v449, v450, v451, v424);
  sub_1000795D0();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_100036F54();
  sub_1000053B8();
  WeatherChanges.init(changes:metadata:)();
  sub_10000E7B0();
  sub_10001B350(v452, v453, v454, v544);
  sub_100170830(v607);
  sub_1000F00BC();
  v456 = *(v455 - 256);
  v457 = v546;
  v546();
  (v457)(v585, v420, v456);
  (v457)(v586, v420, v456);
  sub_1000C90E0();
  WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  v458 = v592;
  sub_100003934();
  sub_1000326F4();
  sub_10001B350(v459, v460, v461, v462);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_1000184C0();
  HistoricalComparisons.init(comparisons:metadata:)();
  v463 = sub_10000FEF4();
  sub_10001B350(v463, v464, v465, v598);
  v466 = sub_100021088(&v613);
  sub_10001B350(v466, v467, v468, v543);
  sub_1000371B0();
  sub_10000EF00();
  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  sub_1000326C8(&v614);
  sub_100003934();
  sub_10001B350(v469, v470, v471, v542);
  sub_100011868();
  UUID.init()();
  v472 = v458;
  UUID.uuidString.getter();
  sub_100017750();
  sub_10002CBCC();
  v473();
  v474 = v548;
  v475 = v566;
  static Locale.current.getter();
  sub_10000E7B0();
  sub_10001B350(v476, v477, v478, v541);
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v479, v480, v481, v539);
  *v475 = v374;
  v475[1] = v472;
  sub_1000A7DC4();
  v482();
  sub_10091F030(v428, v475 + *(v474 + 36));
  v483 = sub_1009221B4(v537, v475 + v569);
  sub_1000378C8(v483, v475 + v577);
  swift_storeEnumTagMultiPayload();
  v611 = Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CE6298, &qword_100A997D0);
  v484 = sub_10022C350(&qword_100CE62A0, &qword_100A997D8);
  v485 = sub_100003AE8(v484);
  v487 = *(v486 + 72);
  v488 = v485;
  v490 = (*(v489 + 80) + 32) & ~*(v489 + 80);
  v491 = swift_allocObject();
  v610 = v491;
  *(v491 + 16) = xmmword_100A3B030;
  v492 = (v491 + v490);
  v617 = v488;
  sub_100020250();
  static Location.current.getter();
  v493 = Location.id.getter();
  v495 = v494;
  sub_1000B0354();
  v496();
  *v492 = v493;
  v492[1] = v495;
  v613 = sub_10022C350(&qword_100CE62A8, &qword_100A997E0);
  v497 = type metadata accessor for AvailableDataSets();
  sub_100003DDC();
  v622 = *(v498 + 72);
  v619 = *(v499 + 80);
  v500 = (v619 + 32) & ~v619;
  v501 = swift_allocObject();
  v623 = xmmword_100A2C3F0;
  *(v501 + 16) = xmmword_100A2C3F0;
  static AvailableDataSets.all.getter();
  v626 = v501;
  v620 = sub_1000F42E4(&qword_100CD4D38, &type metadata accessor for AvailableDataSets, &protocol conformance descriptor for AvailableDataSets);
  v618 = sub_10022C350(&qword_100CE62B0, &qword_100A997E8);
  v615 = sub_100922210();
  v616 = v497;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v621 = type metadata accessor for LocationAvailableDataSetState(0);
  swift_storeEnumTagMultiPayload();
  v612 = v487;
  v502 = (v492 + v487);
  v614 = v492;
  sub_100020250();
  static Location.cupertino.getter();
  v503 = Location.id.getter();
  v505 = v504;
  (v600[0])(v497, v624);
  *v502 = v503;
  v502[1] = v505;
  v609 = v500;
  v506 = swift_allocObject();
  sub_10006A944(v506);
  static AvailableDataSets.all.getter();
  v626 = v505;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_storeEnumTagMultiPayload();
  v507 = (v492 + 2 * v487);
  v608 = *(v617 + 56);
  sub_1000719F4();
  static Location.newYork.getter();
  Location.id.getter();
  sub_100017750();
  v508 = v624;
  v509 = v600[0];
  (v600[0])(v487, v624);
  *v507 = v505;
  v507[1] = v487;
  v510 = swift_allocObject();
  sub_10006A944(v510);
  static AvailableDataSets.all.getter();
  v626 = v505;
  v511 = v616;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_storeEnumTagMultiPayload();
  v512 = (v614 + 3 * v612);
  v513 = *(v617 + 56);
  sub_100036F54();
  static Location.london.getter();
  v514 = Location.id.getter();
  v516 = v515;
  v509(v511, v508);
  *v512 = v514;
  v512[1] = v516;
  sub_1000133C4();
  v517 = swift_allocObject();
  sub_10006A944(v517);
  static AvailableDataSets.all.getter();
  v626 = v514;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_storeEnumTagMultiPayload();
  v518 = (v614 + 4 * v612);
  sub_100071518();
  static Location.jerusalem.getter();
  Location.id.getter();
  sub_100017750();
  sub_1000B0354();
  v519();
  *v518 = v514;
  v518[1] = v513;
  sub_1000133C4();
  v520 = swift_allocObject();
  sub_10006A944(v520);
  static AvailableDataSets.historicalFacts.getter();
  v626 = v514;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_storeEnumTagMultiPayload();
  v521 = Dictionary.init(dictionaryLiteral:)();
  sub_100020250();
  UUID.init()();
  v522 = UUID.uuidString.getter();
  v524 = v523;
  sub_10002CBCC();
  result = v525();
  qword_100D91378 = v522;
  unk_100D91380 = v524;
  qword_100D91388 = v611;
  unk_100D91390 = v521;
  return result;
}

uint64_t sub_10091EDCC()
{
  v1 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = objc_opt_self();
  v8 = [v7 millimeters];
  sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  v9 = [v7 millimeters];
  Measurement.init(value:unit:)();
  v10 = [v7 millimeters];
  Measurement.init(value:unit:)();
  v11 = [v7 millimeters];
  Measurement.init(value:unit:)();
  v12 = [v7 millimeters];
  Measurement.init(value:unit:)();
  v13 = [v7 millimeters];
  Measurement.init(value:unit:)();
  return PrecipitationAmount.init(pastHour:pastSixHours:pastTwentyFourHours:nextHour:nextSixHours:nextTwentyFourHours:)();
}

uint64_t sub_10091F030(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10091F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v368 = a7;
  v366 = a6;
  v352[1] = a5;
  v342 = a4;
  v352[0] = a3;
  v367 = a2;
  v395 = a1;
  v354 = a8;
  v8 = type metadata accessor for UUID();
  v9 = sub_100003E5C(v8, v374);
  v352[3] = v10;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003990(v11);
  v12 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  sub_100003990(v14);
  v15 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100003918(v17);
  v18 = type metadata accessor for WeatherAvailability.AvailabilityKind();
  v19 = sub_100003E5C(v18, &v367);
  v349 = v20;
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003918(v23);
  v24 = type metadata accessor for WeatherAvailability();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000038E4();
  sub_100003990(v26);
  v27 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003810(v27);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003918(v29);
  v30 = type metadata accessor for AirQualitySourceKind();
  v31 = sub_100003E5C(v30, v358);
  v341[12] = v32;
  __chkstk_darwin(v31);
  sub_1000038E4();
  sub_100003918(v33);
  v34 = type metadata accessor for AirQualitySource();
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003918(v36);
  v37 = type metadata accessor for AirQualityPreviousDayComparison();
  v38 = sub_100003E5C(v37, &v355);
  v341[7] = v39;
  __chkstk_darwin(v38);
  sub_1000038E4();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003918(v43);
  v44 = type metadata accessor for AirPollutantMeasurement();
  v45 = sub_100003E5C(v44, &v353);
  v341[5] = v46;
  __chkstk_darwin(v45);
  sub_1000038E4();
  sub_100003918(v47);
  v48 = type metadata accessor for AirPollutantKind();
  v49 = sub_100003E5C(v48, v352);
  v341[1] = v50;
  __chkstk_darwin(v49);
  sub_1000038E4();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CD6510, &qword_100A7F390);
  sub_100003810(v52);
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003918(v54);
  v55 = type metadata accessor for AirQualityScaleCategory();
  v56 = sub_100003AE8(v55);
  v343 = v57;
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_100003918(v58);
  v59 = type metadata accessor for AirQualityScaleGradient();
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_1000038E4();
  sub_100003918(v61);
  v62 = type metadata accessor for AirQualityScale();
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  sub_1000038E4();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_100003810(v65);
  sub_100003828();
  __chkstk_darwin(v66);
  sub_1000039BC();
  sub_100003990(v67);
  v68 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_100003810(v68);
  sub_100003828();
  __chkstk_darwin(v69);
  sub_1000039BC();
  sub_100003990(v70);
  v71 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_100003810(v71);
  sub_100003828();
  __chkstk_darwin(v72);
  sub_1000039BC();
  sub_100003990(v73);
  v74 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  sub_100003810(v74);
  sub_100003828();
  __chkstk_darwin(v75);
  sub_1000039BC();
  sub_100003990(v76);
  v77 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v78 = sub_100003810(v77);
  __chkstk_darwin(v78);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_10000E70C();
  sub_100003990(v82);
  v83 = sub_10022C350(&qword_100CC41A8, &qword_100A5D7B0);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  v396 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_10000E70C();
  sub_100003918(v87);
  v88 = type metadata accessor for WeatherMetadata();
  v89 = sub_100003810(v88);
  __chkstk_darwin(v89);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_10000E70C();
  sub_100003990(v91);
  v92 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v92);
  sub_100003828();
  __chkstk_darwin(v93);
  sub_1000039BC();
  sub_100003990(v94);
  v95 = sub_10022C350(&qword_100CAC450, &unk_100A3B3B0);
  sub_100003810(v95);
  sub_100003828();
  __chkstk_darwin(v96);
  sub_1000039BC();
  sub_100003918(v97);
  v98 = type metadata accessor for Wind();
  v99 = sub_100003810(v98);
  __chkstk_darwin(v99);
  sub_1000038E4();
  sub_100003918(v100);
  v101 = type metadata accessor for UVIndex();
  v102 = sub_100003810(v101);
  __chkstk_darwin(v102);
  sub_1000038E4();
  sub_100003990(v103);
  v104 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  v105 = sub_100003810(v104);
  __chkstk_darwin(v105);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_10000E70C();
  *&v393 = v107;
  sub_1000038CC();
  v108 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  v109 = sub_100003E5C(v108, &v398);
  v378 = v110;
  __chkstk_darwin(v109);
  sub_1000038E4();
  sub_100003918(v111);
  v112 = type metadata accessor for ApparentPrecipitationIntensity();
  v113 = sub_100003810(v112);
  __chkstk_darwin(v113);
  sub_1000038E4();
  v392 = v114;
  sub_1000038CC();
  v115 = type metadata accessor for PrecipitationAmountByType();
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  v390 = v117;
  sub_10000386C();
  __chkstk_darwin(v118);
  sub_100003878();
  v389[3] = v119;
  sub_10000386C();
  __chkstk_darwin(v120);
  sub_100003878();
  v389[1] = v121;
  sub_10000386C();
  __chkstk_darwin(v122);
  sub_100003878();
  v389[4] = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_100003878();
  v389[2] = v125;
  sub_10000386C();
  __chkstk_darwin(v126);
  sub_10000E70C();
  v389[0] = v127;
  v128 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v129 = sub_100003E5C(v128, v383);
  v363 = v130;
  __chkstk_darwin(v129);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_10000E70C();
  v394 = v137;
  sub_1000038CC();
  v138 = type metadata accessor for PrecipitationAmount();
  v139 = sub_100003810(v138);
  __chkstk_darwin(v139);
  sub_100003848();
  v388 = v140;
  sub_10000386C();
  __chkstk_darwin(v141);
  sub_10000E70C();
  v387 = v142;
  sub_1000038CC();
  v143 = type metadata accessor for PressureTrend();
  v144 = sub_100003E5C(v143, v389);
  v369 = v145;
  __chkstk_darwin(v144);
  sub_1000037D8();
  v148 = v147 - v146;
  v149 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_100003810(v149);
  sub_100003828();
  __chkstk_darwin(v150);
  v152 = v341 - v151;
  v375 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037E8();
  __chkstk_darwin(v153);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v154);
  v156 = v341 - v155;
  v391 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v397 = v157;
  __chkstk_darwin(v158);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  v385 = v160;
  sub_10000386C();
  __chkstk_darwin(v161);
  sub_100003878();
  v386 = v162;
  sub_10000386C();
  __chkstk_darwin(v163);
  v165 = v341 - v164;
  v166 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v168 = v167;
  __chkstk_darwin(v169);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v170);
  v172 = v341 - v171;
  v173 = type metadata accessor for CloudCoverByAltitude();
  v174 = sub_100003810(v173);
  __chkstk_darwin(v174);
  sub_1000037D8();
  v177 = v176 - v175;
  v178 = type metadata accessor for Date();
  v179 = sub_100003E5C(v178, &v377);
  v358[3] = v180;
  __chkstk_darwin(v179);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  v186 = v341 - v185;
  v187 = type metadata accessor for CurrentWeather();
  v188 = sub_100003810(v187);
  __chkstk_darwin(v188);
  sub_1000038E4();
  sub_100003918(v189);
  v190 = type metadata accessor for WeatherDataModel();
  v191 = sub_100003E5C(v190, v362);
  v344 = v192;
  __chkstk_darwin(v191);
  sub_1000038E4();
  sub_100003990(v193);
  v355 = v186;
  static WeatherClock.date.getter();
  sub_100049F18();
  v356[0] = v177;
  CloudCoverByAltitude.init(low:medium:high:)();
  v194 = *(v168 + 104);
  v356[1] = v172;
  v361 = v166;
  v360 = v168 + 104;
  v357 = v194;
  (v194)(v172, enum case for WeatherCondition.clear(_:), v166);
  v370[0] = objc_opt_self();
  v195 = [v370[0] celsius];
  sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
  v356[2] = v165;
  Measurement.init(value:unit:)();
  v372 = objc_opt_self();
  v196 = [v372 metersPerSecond];
  v371 = sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
  v358[0] = v156;
  Measurement.init(value:unit:)();
  v197 = [objc_opt_self() millibars];
  sub_100042398(v197, &qword_100CAC448);
  v358[1] = v152;
  Measurement.init(value:unit:)();
  v198 = *(v369 + 104);
  v369 = v148;
  v198(v148, enum case for PressureTrend.rising(_:), v370[1]);
  v199 = objc_opt_self();
  sub_100042398([v199 millimeters], &qword_100CAB968);
  Measurement.init(value:unit:)();
  v200 = sub_1001925A4();
  sub_100071518();
  Measurement.init(value:unit:)();
  v201 = sub_1001925A4();
  sub_1000719F4();
  Measurement.init(value:unit:)();
  v202 = sub_1001925A4();
  sub_100020250();
  Measurement.init(value:unit:)();
  v203 = sub_1001925A4();
  sub_100071E74();
  Measurement.init(value:unit:)();
  v204 = [v199 millimeters];
  sub_1000184C0();
  Measurement.init(value:unit:)();
  PrecipitationAmount.init(pastHour:pastSixHours:pastTwentyFourHours:nextHour:nextSixHours:nextTwentyFourHours:)();
  sub_10091EDCC();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  sub_1000193CC();
  v205 = v377;
  v206(v377);
  ApparentPrecipitationIntensity.init(value:category:)();
  v207 = sub_1000D4058(&v388);
  v209 = [v207 v208];
  Measurement.init(value:unit:)();
  v210 = [v205 celsius];
  Measurement.init(value:unit:)();
  v211 = *(v397 + 16);
  v212 = v391;
  v397 += 16;
  v379 = v211;
  v211(v393, v395, v391);
  v213 = v376;
  v214 = sub_10000FEF4();
  sub_10001B350(v214, v215, v216, v212);
  sub_100003934();
  v217 = v373;
  sub_10001B350(v218, v219, v220, v212);
  UVIndex.init(value:category:)();
  v221 = [v199 meters];
  Measurement.init(value:unit:)();
  v222 = [objc_opt_self() degrees];
  sub_100042398(v222, &qword_100CCFAD0);
  sub_100011868();
  v223 = v382;
  Measurement.init(value:unit:)();
  v224 = [v372 milesPerHour];
  sub_100071E74();
  Measurement.init(value:unit:)();
  sub_1000D4058(&v399);
  sub_100003934();
  sub_10001B350(v225, v226, v227, v375);
  Wind.init(compassDirection:direction:speed:gust:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  URL.init(string:)();
  v228 = type metadata accessor for URL();
  result = sub_100024D10(v223, 1, v228);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  (*(*(v228 - 8) + 32))(v365, v223, v228);
  sub_10000E7B0();
  sub_10001B350(v230, v231, v232, v228);
  v233 = sub_100021088(v384);
  v381 = v228;
  sub_10001B350(v233, v234, v235, v228);
  sub_1000184C0();
  WeatherAttribution.init(name:sourceURL:logoURL:)();
  v236 = type metadata accessor for WeatherAttribution();
  v237 = sub_10000FEF4();
  v382 = v236;
  sub_10001B350(v237, v238, v239, v236);
  sub_100036F54();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_100049F18();
  sub_1000D438C();
  sub_1000872AC();
  CurrentWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:rainfallAmount:snowfallAmount:pastHourPrecipitationAmountByType:pastSixHoursPrecipitationAmountByType:pastTwentyFourHoursPrecipitationAmountByType:nextHourPrecipitationAmountByType:nextSixHoursPrecipitationAmountByType:nextTwentyFourHoursPrecipitationAmountByType:apparentPrecipitationIntensity:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)();
  LODWORD(v392) = 1;
  sub_1000184C0();
  sub_100921668(v240, v241);
  sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  v242 = sub_10000FEF4();
  sub_10001B350(v242, v243, v244, v245);
  sub_100071518();
  static WeatherClock.date.getter();
  sub_1000719F4();
  static WeatherClock.date.getter();
  v246 = sub_10000900C();
  sub_10001B350(v246, v247, v248, v236);
  sub_1000371B0();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  v249 = type metadata accessor for HourWeather();
  sub_1000F42E4(&qword_100CB0C20, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  sub_10003C024();
  sub_1000F42E4(v250, &type metadata accessor for HourWeather, v251);
  sub_100021794();
  sub_1000F42E4(v252, &type metadata accessor for HourWeather, v253);
  Forecast.init(_:metadata:)();
  sub_10022C350(&qword_100CD1278, &unk_100A76600);
  sub_1000038D8();
  v390 = type metadata accessor for DayWeather();
  sub_100003DDC();
  sub_10008665C();
  v254 = swift_allocObject();
  v393 = xmmword_100A2C3F0;
  *(v254 + 16) = xmmword_100A2C3F0;
  static WeatherClock.date.getter();
  static DayWeather.mock()();
  sub_1000184C0();
  v256 = v359;
  (*(v255 + 16))(v217, v213, v359);
  DayWeather.date.setter();
  v257 = sub_100170830(&v378);
  v357(v257);
  DayWeather.condition.setter();
  v258 = sub_100170830(v380);
  v379(v258, v395, v391);
  DayWeather.highTemperature.setter();
  (*(v363 + 16))(v394, v367, v364);
  v259 = v382;
  DayWeather.rainfallAmount.setter();
  (*(v249 + 8))(v213, v256);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  v260 = sub_10000900C();
  sub_10001B350(v260, v261, v262, v259);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_1000F42E4(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_1000306E8();
  sub_1000F42E4(v263, &type metadata accessor for DayWeather, v264);
  sub_100024438();
  sub_1000F42E4(v265, &type metadata accessor for DayWeather, v266);
  Forecast.init(_:metadata:)();
  if ((v368 & 1) == 0)
  {
    sub_10022C350(&qword_100CE62C0, &qword_100A997F0);
    sub_10008665C();
    v267 = swift_allocObject();
    *(v267 + 16) = v393;
    sub_1000438AC(v267, 0x8000000100AE6790);
    sub_10022C350(&qword_100CE62C8, &qword_100A997F8);
    v268 = type metadata accessor for AirQualityScaleGradientStop();
    sub_100003AE8(v268);
    sub_10008665C();
    v271 = v270 & ~v269;
    *(swift_allocObject() + 16) = v393;
    AirQualityScaleGradientStop.init(location:color:)();
    sub_100036F54();
    AirQualityScaleGradient.init(stops:)();
    v272 = AirQualityScale.init(identifier:displayName:shortDisplayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)();
    sub_1000438AC(v272, 0x8000000100AE6790);
    type metadata accessor for ProviderAttribution();
    sub_100003934();
    sub_10001B350(v273, v274, v275, v276);
    sub_1000371B0();
    URL.init(string:)();
    result = sub_100024D10(0xED0000312E747361, 1, v381);
    if (result != 1)
    {
      sub_10022C350(&qword_100CE62D0, &qword_100A99800);
      sub_10022C350(&qword_100CE62D8, &qword_100A99808);
      sub_10008665C();
      v279 = v278 & ~v277;
      v280 = swift_allocObject();
      *(v280 + 16) = v393;
      v281 = (v280 + v279);
      *v281 = 0x454E4F5A4FLL;
      v281[1] = 0xE500000000000000;
      sub_1000193CC();
      v282(v341[3]);
      [objc_opt_self() partsPerMillion];
      sub_10000C70C(0, &qword_100CD0020, NSUnitDispersion_ptr);
      sub_100036F54();
      Measurement.init(value:unit:)();
      sub_1000193CC();
      v283(v271);
      AirPollutant.init(kind:amount:)();
      v284 = type metadata accessor for AirPollutant();
      Dictionary.init(dictionaryLiteral:)();
      sub_1000326C8(v356);
      sub_100003934();
      sub_10001B350(v285, v286, v287, v284);
      sub_1000193CC();
      v288(v341[11]);
      sub_1000193CC();
      v289(v341[10]);
      sub_1000184C0();
      AirQualitySource.init(kind:description:)();
      static WeatherClock.date.getter();
      static WeatherClock.date.getter();
      sub_100003934();
      v259 = v382;
      sub_10001B350(v290, v291, v292, v382);
      sub_1000C90E0();
      WeatherMetadata.init(date:expirationDate:attribution:)();
      sub_100045448();
      AirQuality.init(scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)();
      LODWORD(v392) = 0;
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_5:
  type metadata accessor for AirQuality();
  v293 = sub_1000B0F24(&v400);
  sub_10001B350(v293, v392, 1, v294);
  v295 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v296 = *(v295 + 48);
  v397 = *(v295 + 64);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_10001B350(v297, v298, v299, v259);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  WeatherChanges.init(changes:metadata:)();
  type metadata accessor for WeatherChanges();
  sub_10000E7B0();
  sub_10001B350(v300, v301, v302, v303);
  v304 = enum case for WeatherAvailability.AvailabilityKind.unknown(_:);
  v306 = v349 + 104;
  v305 = *(v349 + 104);
  v307 = v350;
  v305(v346, enum case for WeatherAvailability.AvailabilityKind.unknown(_:), v350);
  v308 = v347;
  v305(v347, v304, v307);
  v305(v348, v304, v307);
  sub_1000371B0();
  WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)();
  v309 = type metadata accessor for HistoricalComparisons();
  sub_1000037E8();
  (*(v310 + 16))(v351, v352[0], v309);
  sub_10000E7B0();
  sub_10001B350(v311, v312, v313, v309);
  type metadata accessor for HistoricalFacts();
  v314 = sub_100021088(v370);
  sub_10001B350(v314, v315, v316, v317);
  sub_1000D4058(&v371);

  sub_1000719F4();
  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  v318 = type metadata accessor for WeatherData(0);
  v319 = v354;
  v320 = (v354 + *(v318 + 32));
  *v320 = 0;
  v320[1] = 0xE000000000000000;
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for WeatherDataOverrides(0);
  sub_100003934();
  sub_10001B350(v321, v322, v323, v324);
  sub_1000371B0();
  UUID.init()();
  v325 = UUID.uuidString.getter();
  v327 = v326;
  sub_10000E73C();
  v328(v306, v353);
  static Locale.current.getter();
  type metadata accessor for Locale();
  sub_10000E7B0();
  sub_10001B350(v329, v330, v331, v332);
  sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  sub_100003934();
  sub_10001B350(v333, v334, v335, v336);
  *v319 = v325;
  v319[1] = v327;
  (*(v344 + 32))(v319 + *(v318 + 24), v308, v345);
  if (qword_100CA2AA0 != -1)
  {
    sub_100071EF4(&qword_100CA2AA0);
  }

  v337 = type metadata accessor for PreprocessedWeatherData(0);
  sub_10000703C(v337, qword_100D91360);
  sub_100023540();
  sub_1009221B4(v338, v319 + v296);
  if (qword_100CA2C20 != -1)
  {
    sub_1000B9AFC(&qword_100CA2C20);
  }

  v339 = type metadata accessor for NewsDataModel(0);
  sub_10000703C(v339, qword_100D91550);
  sub_100041C34();
  sub_1009221B4(v340, v319 + v397);
  type metadata accessor for LocationWeatherDataState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10092143C()
{
  v0 = sub_10022C350(&qword_100CBC0D0, &qword_100A52908);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v4 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10022C350(&qword_100CE62F0, &unk_100A99820);
  type metadata accessor for HistoricalComparison();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  sub_100922274(v7);
  static HistoricalComparison.mockMaximumTemperature(trend:)();
  (*(v5 + 8))(v7, v4);
  sub_100922624(v3);
  static HistoricalComparison.mockPrecipitation(trend:)();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_100921668@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v128 = a1;
  v116 = a2;
  v2 = sub_10022C350(&qword_100CD65B0, &qword_100A7F3A0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v115 = v4;
  sub_1000038CC();
  v112 = type metadata accessor for PrecipitationShift.Kind();
  sub_1000037C4();
  v111 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for PrecipitationShift();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003990(v10);
  v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  v114 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_10000E70C();
  sub_100003918(v17);
  v127 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  sub_1000037C4();
  v130 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v126 = v20;
  sub_1000038CC();
  v113 = type metadata accessor for ApparentPrecipitationIntensity();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v121 = v22;
  v23 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100003918(v25);
  v124 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v129 = v26;
  __chkstk_darwin(v27);
  sub_1000038E4();
  v125 = v28;
  sub_1000038CC();
  v29 = type metadata accessor for Calendar();
  v118 = v29;
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  sub_1000037D8();
  v33 = v32 - v31;
  v34 = type metadata accessor for WeatherMetadata();
  v35 = sub_100003E5C(v34, &v131);
  v108 = v36;
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  v39 = v95 - v38;
  v40 = type metadata accessor for Date();
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  v123 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = v95 - v47;
  __chkstk_darwin(v49);
  v51 = v95 - v50;
  static WeatherClock.date.getter();
  static WeatherMetadata.mock()();
  v104 = v42;
  v52 = *(v42 + 16);
  v52(v48, v51, v40);
  WeatherMetadata.date.setter();
  static Calendar.current.getter();
  sub_1000524D0();
  Date.wc_addHours(_:calendar:)();
  v53 = *(v30 + 8);
  v117 = v30 + 8;
  v96 = v53;
  (v53)(v33, v29);
  v106 = v39;
  WeatherMetadata.expirationDate.setter();
  sub_10022C350(&qword_100CE30F8, &qword_100A95F48);
  sub_1000038D8();
  v54 = type metadata accessor for MinuteWeather();
  sub_100003AE8(v54);
  sub_10008665C();
  v95[1] = v56 & ~v55;
  v57 = swift_allocObject();
  v122 = xmmword_100A2C3F0;
  *(v57 + 16) = xmmword_100A2C3F0;
  v97 = v40;
  v119 = v42 + 16;
  v120 = v52;
  v52(v48, v51, v40);
  v58 = *(v129 + 104);
  v101 = enum case for Precipitation.rain(_:);
  v129 += 104;
  v100 = v58;
  v58(v125);
  v59 = [objc_opt_self() metersPerSecond];
  sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
  sub_1000184C0();
  Measurement.init(value:unit:)();
  v60 = *(v130 + 104);
  v99 = enum case for ApparentPrecipitationIntensityCategory.light(_:);
  v130 += 104;
  v98 = v60;
  v60(v126);
  ApparentPrecipitationIntensity.init(value:category:)();
  v102 = v57;
  v61 = v96;
  v62 = v51;
  MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)();
  sub_10022C350(&qword_100CE62E0, &qword_100A99810);
  v63 = type metadata accessor for MinuteCondition();
  sub_100003AE8(v63);
  sub_10008665C();
  v121 = swift_allocObject();
  *(v121 + 16) = v122;
  static Calendar.current.getter();
  sub_1000524D0();
  Date.wc_addMinutes(_:calendar:)();
  v64 = sub_10008672C();
  v61(v64);
  if (v128)
  {
    v65 = v97;
    v120(v105, v51, v97);
    v66 = v61;
    v67 = v65;
  }

  else
  {
    static Calendar.current.getter();
    sub_1000C90E0();
    sub_1000524D0();
    Date.wc_addHours(_:calendar:)();
    v68 = sub_10008672C();
    v61(v68);
    v66 = v61;
    v67 = v97;
  }

  sub_10000E7B0();
  sub_10001B350(v69, v70, v71, v67);
  static Calendar.current.getter();
  sub_1000719F4();
  Date.wc_addMinutes(_:calendar:)();
  v72 = sub_10008672C();
  v66(v72);
  sub_10000E7B0();
  sub_10001B350(v73, v74, v75, v67);
  static Calendar.current.getter();
  sub_1000184C0();
  Date.wc_addMinutes(_:calendar:)();
  v76 = sub_10008672C();
  v66(v76);
  v77 = sub_10000FEF4();
  sub_10001B350(v77, v78, v79, v67);
  sub_1000193CC();
  v80(v110);
  sub_100011868();
  PrecipitationShift.init(date:nextDate:kind:)();
  MinuteCondition.init(date:expirationDate:shortDescription:longDescription:shift:)();
  sub_10022C350(&qword_100CE62E8, &qword_100A99818);
  v81 = type metadata accessor for MinuteSummary();
  sub_100003AE8(v81);
  sub_10008665C();
  *(swift_allocObject() + 16) = v122;
  v82 = v120;
  v120(v103, v62, v67);
  if (v128)
  {
    v83 = v114;
    v82(v114, v62, v67);
  }

  else
  {
    static Calendar.current.getter();
    v83 = v114;
    sub_1000524D0();
    Date.wc_addHours(_:calendar:)();
    (v66)(v33, v118);
  }

  sub_10000E7B0();
  sub_10001B350(v84, v85, v86, v67);
  v100(v125, v101, v124);
  v98(v126, v99, v127);
  ApparentPrecipitationIntensity.init(value:category:)();
  v87 = sub_10000FEF4();
  sub_10001B350(v87, v88, v89, v113);
  MinuteSummary.init(date:expirationDate:precipitation:precipitationChance:apparentPrecipitationIntensity:)();
  sub_1000371B0();
  v91 = v106;
  v92 = v109;
  (*(v90 + 16))(v107, v106, v109);
  Forecast<>.init(_:summary:conditions:summaries:metadata:)();
  (*(v83 + 8))(v91, v92);
  sub_10000E73C();
  return v93(v62, v67);
}

uint64_t sub_1009221B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_100922210()
{
  result = qword_100CE62B8;
  if (!qword_100CE62B8)
  {
    v3 = sub_10022E824(&qword_100CE62B0, &qword_100A997E8);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CE62B8);
  }

  return result;
}

uint64_t sub_100922274@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for Deviation();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10022C350(&qword_100CD68D8, &qword_100A7F3B8);
  v24 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for Date();
  sub_10001B350(v14, 1, 1, v15);
  (*(v9 + 104))(v11, enum case for TrendBaseline.Kind.mean<A>(_:), v8);
  v16 = objc_opt_self();
  v17 = [v16 celsius];
  sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
  Measurement.init(value:unit:)();
  v18 = [v16 celsius];
  Measurement.init(value:unit:)();
  v19 = v26;
  v20 = v28;
  (*(v26 + 104))(v2, enum case for Deviation.normal(_:), v28);
  static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)();
  (*(v19 + 8))(v2, v20);
  v21 = *(v25 + 8);
  v22 = v27;
  v21(v4, v27);
  v21(v7, v22);
  (*(v9 + 8))(v11, v24);
  return sub_1001AEDF4(v14);
}

uint64_t sub_100922624@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for Deviation();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10022C350(&qword_100CBC0C8, &unk_100A528F8);
  v24 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for Date();
  sub_10001B350(v14, 1, 1, v15);
  (*(v9 + 104))(v11, enum case for TrendBaseline.Kind.mean<A>(_:), v8);
  v16 = objc_opt_self();
  v17 = [v16 inches];
  sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  v18 = [v16 inches];
  Measurement.init(value:unit:)();
  v19 = v26;
  v20 = v28;
  (*(v26 + 104))(v2, enum case for Deviation.normal(_:), v28);
  static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)();
  (*(v19 + 8))(v2, v20);
  v21 = *(v25 + 8);
  v22 = v27;
  v21(v4, v27);
  v21(v7, v22);
  (*(v9 + 8))(v11, v24);
  return sub_1001AEDF4(v14);
}

uint64_t sub_1009229E4()
{
  if (qword_100CA2A60 != -1)
  {
    swift_once();
  }

  v0 = dispatch thunk of SettingGroup.isEnabled.getter();

  byte_100CE62F8 = v0 & 1;
  return result;
}

uint64_t sub_100922A5C()
{
  type metadata accessor for SettingReader();
  result = static SettingReader.shared.getter();
  qword_100CE6300 = result;
  return result;
}

uint64_t sub_100922B98(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (qword_100CA2AB8 != -1)
  {
    swift_once();
  }

  v6 = *a2;

  if (v6 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();
}

_BYTE *sub_100922C64(uint64_t a1, int a2, double a3)
{
  v4 = v3;
  v81 = a2;
  v92 = a1;
  v5 = *v3;
  type metadata accessor for PrecipitationRelevancyWindow();
  sub_1000037C4();
  v83 = v7;
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = (v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  __chkstk_darwin(v9 - 8);
  v87 = v80 - v10;
  v11 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  sub_1000037C4();
  v88 = v12;
  __chkstk_darwin(v13);
  v86 = v80 - v14;
  v15 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v15 - 8);
  v17 = v80 - v16;
  type metadata accessor for AirQuality();
  sub_1000037C4();
  v89 = v19;
  v90 = v18;
  __chkstk_darwin(v18);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA29F0 != -1)
  {
    swift_once();
  }

  v85 = v21;
  sub_100924838();
  Configurable.setting<A>(_:)();
  v22 = &_swiftEmptySetSingleton;
  v91 = v11;
  if (v93[0] == 1)
  {
    v80[1] = v5;
    sub_100049F28();
    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(&_swiftEmptySetSingleton + 32);
    v25 = v23 & ~v24;
    if ((*(&_swiftEmptySetSingleton + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25))
    {
      v26 = ~v24;
      while (2)
      {
        v27 = 0xED00006E6F697461;
        v28 = 0x7469706963657270;
        switch(*(*(&_swiftEmptySetSingleton + 6) + v25))
        {
          case 1:
            goto LABEL_9;
          case 2:
            v28 = sub_100011004();
            v27 = 0xEB00000000657275;
            goto LABEL_9;
          case 3:
            v28 = sub_100008C94();
LABEL_9:
            v29 = sub_100013EDC(v28, v27, 0x696C617551726961);

            if (v29)
            {
              goto LABEL_12;
            }

            v25 = (v25 + 1) & v26;
            if (((*(&_swiftEmptySetSingleton + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
            {
              break;
            }

            continue;
          default:

            v22 = &_swiftEmptySetSingleton;
            goto LABEL_12;
        }

        break;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_100006B84();
    sub_1006A650C();
    v22 = *v93;
LABEL_12:
    v11 = v91;
  }

  if (qword_100CA2A08 != -1)
  {
    swift_once();
  }

  Configurable.setting<A>(_:)();
  if (v93[0] == 1)
  {
    sub_100049F28();
    sub_100004E94();
    String.hash(into:)();
    v30 = Hasher._finalize()();
    v31 = -1 << v22[32];
    v32 = v30 & ~v31;
    if ((*&v22[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32))
    {
      v33 = ~v31;
      while (2)
      {
        sub_1000752C4();
        switch(v34)
        {
          case 1:

            goto LABEL_24;
          case 2:
            sub_100011004();
            goto LABEL_21;
          case 3:
            sub_100008C94();
            goto LABEL_21;
          default:
LABEL_21:
            sub_100015194();
            _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_10004ED70();
            if (v4)
            {
              goto LABEL_24;
            }

            v32 = (v32 + 1) & v33;
            if (((*&v22[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_100006B84();
    sub_1006A650C();
    v22 = *v93;
LABEL_24:
    v11 = v91;
  }

  v35 = *(type metadata accessor for WeatherData(0) + 24);
  WeatherDataModel.airQuality.getter();
  v36 = v90;
  v37 = sub_100024D10(v17, 1, v90);
  v38 = v87;
  v39 = v89;
  if (v37 == 1)
  {
    sub_10003FDF4(v17, &qword_100CC62B8, &qword_100A61CA0);
LABEL_37:
    sub_10001A1F8();
    goto LABEL_38;
  }

  v40 = v85;
  (*(v89 + 32))(v85, v17, v36);
  if ((AirQuality.isSignificant.getter() & 1) == 0)
  {
    v46 = *(v39 + 8);
    LOBYTE(v39) = v39 + 8;
    v46(v40, v36);
    goto LABEL_37;
  }

  sub_100049F28();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001FD08();
  sub_10001A1F8();
  if (v41)
  {
    while (2)
    {
      sub_1000752C4();
      v42 = 0xED00006E6F697461;
      v43 = 0x7469706963657270;
      switch(v44)
      {
        case 1:
          goto LABEL_32;
        case 2:
          v43 = sub_100011004();
          v42 = v17;
          goto LABEL_32;
        case 3:
          v43 = sub_100008C94();
LABEL_32:
          sub_100013EDC(v43, v42, 0x696C617551726961);
          sub_10004ED70();
          if (v39)
          {
            goto LABEL_35;
          }

          sub_10001D264();
          if ((v45 & 1) == 0)
          {
            break;
          }

          continue;
        default:

          goto LABEL_35;
      }

      break;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006B84();
  sub_1006A650C();
  v22 = *v93;
LABEL_35:
  (*(v89 + 8))(v85, v90);
  v11 = v91;
LABEL_38:
  WeatherDataModel.minuteForecast.getter();
  if (sub_100024D10(v38, 1, v11) == 1)
  {
    sub_10003FDF4(v38, &qword_100CB0BA0, &unk_100A40F70);
LABEL_53:
    sub_100028DF0();
    goto LABEL_57;
  }

  v47 = v86;
  (*(v88 + 32))(v86, v38, v11);
  v17 = v35;
  if (v81)
  {
    v48 = v82;
    *v82 = vdupq_n_s64(0x40AC200000000000uLL);
    v49 = &enum case for PrecipitationRelevancyWindow.window(_:);
  }

  else
  {
    v49 = &enum case for PrecipitationRelevancyWindow.default(_:);
    v48 = v82;
  }

  v50 = v83;
  v39 = v84;
  (*(v83 + 104))(v48, *v49, v84);
  v51 = v47;
  v52 = Forecast<>.isRelevant(in:)();
  (*(v50 + 8))(v48, v39);
  if ((v52 & 1) == 0)
  {
    (*(v88 + 8))(v51, v11);
    sub_10001A1F8();
    goto LABEL_53;
  }

  sub_100049F28();
  sub_100004E94();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001FD08();
  if (v53)
  {
    sub_10001A1F8();
    sub_100028DF0();
    while (2)
    {
      sub_1000752C4();
      switch(v54)
      {
        case 1:

          goto LABEL_56;
        case 2:
          sub_100011004();
          goto LABEL_49;
        case 3:
          sub_100008C94();
          goto LABEL_49;
        default:
LABEL_49:
          sub_100015194();
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10004ED70();
          if (v39)
          {
            goto LABEL_56;
          }

          sub_10001D264();
          if ((v55 & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
      }
    }
  }

  sub_10001A1F8();
  sub_100028DF0();
LABEL_55:
  swift_isUniquelyReferenced_nonNull_native();
  sub_100006B84();
  sub_1006A650C();
  v22 = *v93;
LABEL_56:
  (*(v88 + 8))(v86, v91);
LABEL_57:
  if (qword_100CA2AB0 != -1)
  {
    swift_once();
  }

  if (byte_100CE62F8 == 1)
  {
    if (qword_100CA2AC0 != -1)
    {
      swift_once();
    }

    if (byte_100CE6308 == 1)
    {
      sub_100049F28();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v56)
      {
        while (2)
        {
          sub_1000752C4();
          v57 = 0x696C617551726961;
          v58 = 0x7469706963657270;
          switch(v59)
          {
            case 1:
              goto LABEL_67;
            case 2:
              v58 = sub_100011004();
              v57 = v17;
              goto LABEL_67;
            case 3:
              v58 = sub_100008C94();
LABEL_67:
              sub_100013EDC(v58, v57, 0x696C617551726961);
              sub_10004ED70();
              if (v39)
              {
                goto LABEL_70;
              }

              sub_10001D264();
              if ((v60 & 1) == 0)
              {
                break;
              }

              continue;
            default:

              goto LABEL_70;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v22 = *v93;
    }

LABEL_70:
    if (qword_100CA2AC8 != -1)
    {
      swift_once();
    }

    if (byte_100CE6309 == 1)
    {
      sub_100049F28();
      sub_100004E94();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v61)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v62)
          {
            case 1:

              goto LABEL_80;
            case 2:
              sub_100011004();
              goto LABEL_77;
            case 3:
              sub_100008C94();
              goto LABEL_77;
            default:
LABEL_77:
              sub_100015194();
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10004ED70();
              if (v39)
              {
                goto LABEL_80;
              }

              sub_10001D264();
              if ((v63 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v22 = *v93;
    }

LABEL_80:
    if (qword_100CA2AD0 != -1)
    {
      swift_once();
    }

    if (byte_100CE630A == 1)
    {
      sub_100049F28();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v64)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v65)
          {
            case 1:
              sub_100017158();
              goto LABEL_87;
            case 2:

              goto LABEL_90;
            case 3:
              sub_100008C94();
              goto LABEL_87;
            default:
LABEL_87:
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10004ED70();
              if (v39)
              {
                goto LABEL_90;
              }

              sub_10001D264();
              if ((v66 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v22 = *v93;
    }

LABEL_90:
    if (qword_100CA2AD8 != -1)
    {
      swift_once();
    }

    if (byte_100CE630B == 1)
    {
      sub_100049F28();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v67)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v68)
          {
            case 1:
              sub_100017158();
              goto LABEL_97;
            case 2:
              sub_100011004();
              goto LABEL_97;
            case 3:

              goto LABEL_100;
            default:
LABEL_97:
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10004ED70();
              if (v39)
              {
                goto LABEL_100;
              }

              sub_10001D264();
              if ((v69 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v22 = *v93;
    }
  }

LABEL_100:
  if (qword_100CA2AE0 != -1)
  {
    swift_once();
  }

  if (byte_100CE630C == 1)
  {
    sub_10022C350(&qword_100CE63B0, &unk_100A998C0);
    v70 = *(type metadata accessor for WeatherAlert() - 8);
    v71 = *(v70 + 72);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100A2D320;
    v74 = v73 + v72;
    sub_100923B8C(v74);
    v75 = v74 + v71;
  }

  else
  {
    if (qword_100CA2AE8 != -1)
    {
      swift_once();
    }

    if (byte_100CE630D != 1)
    {
      WeatherDataModel.weatherAlerts.getter();
      return v22;
    }

    sub_10022C350(&qword_100CE63B0, &unk_100A998C0);
    v76 = *(type metadata accessor for WeatherAlert() - 8);
    v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_100A2C3F0;
    v75 = v78 + v77;
  }

  sub_1009241EC(v75);
  return v22;
}

uint64_t sub_100923B8C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v45 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v3 - 8);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherImportance();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherSeverity();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v9 - 8);
  v37 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for Calendar();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v36 - v23;
  __chkstk_darwin(v25);
  v27 = v36 - v26;
  v28 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v28 - 8);
  v30 = v36 - v29;
  URL.init(string:)();
  v31 = type metadata accessor for URL();
  v36[5] = v30;
  result = sub_100024D10(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36[4] = "al-attribution.html";
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addDays(_:calendar:)();
    v36[3] = v27;
    v33 = *(v15 + 8);
    v33(v17, v14);
    v34 = *(v19 + 8);
    v36[2] = v24;
    v34(v24, v18);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addHours(_:calendar:)();
    v33(v17, v14);
    v34(v21, v18);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v36[1] = v13;
    Date.wc_addDays(_:calendar:)();
    v33(v17, v14);
    v34(v21, v18);
    sub_10001B350(v13, 0, 1, v18);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v35 = v37;
    Date.wc_addDays(_:calendar:)();
    v33(v17, v14);
    v34(v21, v18);
    sub_10001B350(v35, 0, 1, v18);
    (*(v38 + 104))(v40, enum case for WeatherSeverity.moderate(_:), v39);
    (*(v41 + 104))(v43, enum case for WeatherImportance.high(_:), v42);
    sub_10092488C();
    UUID.init()();
    return WeatherAlert.init(detailsURL:source:expirationDate:issuedDate:onsetTime:endDate:summary:region:severity:importance:metadata:id:)();
  }

  return result;
}

uint64_t sub_1009241EC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v45 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v3 - 8);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WeatherImportance();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherSeverity();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v40 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v8 - 8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = v35 - v11;
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v35 - v21;
  __chkstk_darwin(v23);
  v25 = v35 - v24;
  v26 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v26 - 8);
  v28 = v35 - v27;
  URL.init(string:)();
  v29 = type metadata accessor for URL();
  v37 = v28;
  result = sub_100024D10(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35[3] = "al-attribution.html";
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addDays(_:calendar:)();
    v31 = *(v13 + 8);
    v31(v15, v12);
    v35[1] = v22;
    v35[2] = v25;
    v32 = *(v17 + 8);
    v32(v22, v16);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addHours(_:calendar:)();
    v31(v15, v12);
    v32(v19, v16);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v33 = v47;
    Date.wc_addDays(_:calendar:)();
    v31(v15, v12);
    v32(v19, v16);
    sub_10001B350(v33, 0, 1, v16);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v34 = v36;
    Date.wc_addDays(_:calendar:)();
    v31(v15, v12);
    v32(v19, v16);
    sub_10001B350(v34, 0, 1, v16);
    (*(v38 + 104))(v40, enum case for WeatherSeverity.moderate(_:), v39);
    (*(v41 + 104))(v42, enum case for WeatherImportance.low(_:), v43);
    sub_10092488C();
    UUID.init()();
    return WeatherAlert.init(detailsURL:source:expirationDate:issuedDate:onsetTime:endDate:summary:region:severity:importance:metadata:id:)();
  }

  return result;
}

unint64_t sub_100924838()
{
  result = qword_100CE63A8;
  if (!qword_100CE63A8)
  {
    v3 = type metadata accessor for LocationViewDescriptor();
    result = swift_getWitnessTable(byte_100A99868, v3, v0, v1);
    atomic_store(result, &qword_100CE63A8);
  }

  return result;
}

uint64_t sub_10092488C()
{
  v0 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v4 = sub_10022C350(&qword_100CC41A8, &qword_100A5D7B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  sub_10001B350(v2, 1, 1, v9);
  WeatherAttribution.init(name:sourceURL:logoURL:)();
  v10 = type metadata accessor for WeatherAttribution();
  sub_10001B350(v6, 0, 1, v10);
  return WeatherMetadata.init(date:expirationDate:attribution:)();
}

Swift::Int sub_100924A90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309258();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1009255AC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_100924AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  if (*(a2 + 32))
  {
    sub_10001FD30();
    sub_10019213C(a1, v11);

    return sub_10001B350(a3, 1, 1, v6);
  }

  else
  {
    sub_1001944F0(a1, v10);
    v13 = (v10 + *(v6 + 20));
    v14 = *(a2 + 16);
    *v13 = *a2;
    v13[1] = v14;
    sub_10001A208();
    sub_1001944F0(v10, a3);
    return sub_10001B350(a3, 0, 1, v6);
  }
}

void *sub_100924C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v84 = a2;
  sub_1000038D8();
  v82 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  *&v89 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v81 = v12 - v11;
  v13 = type metadata accessor for MapComponentViewModel(0);
  __chkstk_darwin(v13 - 8);
  sub_1000037D8();
  v85 = v15 - v14;
  v87 = type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  v92 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v74 - v19;
  v20 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  sub_1000088C0();
  __chkstk_darwin(v27);
  v29 = &v74 - v28;
  v30 = sub_10019369C();
  if (v30 != 6)
  {
    v64 = v30;
    sub_10022C350(&qword_100CD14B0, &unk_100A99910);
    v65 = swift_allocObject();
    *(v65 + 1) = xmmword_100A2C3F0;
    *(v65 + 32) = v64;
    sub_10019213C(v83, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_10019213C(a4, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(a3);
    sub_10019213C(v84, type metadata accessor for TipPriorityQueue.GridEntry);
    v66 = v5;
    goto LABEL_37;
  }

  sub_10022C350(&qword_100CE63B8, &qword_100A99920);
  v31 = v5;
  v32 = a4;
  v75 = a4;
  v33 = *(v26 + 72);
  v34 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100A3B030;
  v74 = v35;
  v36 = v35 + v34;
  v76 = v31;
  sub_1009254D4(v31, v35 + v34);
  sub_1001943BC(v84, v36 + v33);
  sub_100013EF8(v36 + v33);
  sub_1009254D4(a3, v36 + 2 * v33);
  sub_1001943BC(v32, v36 + 3 * v33);
  sub_100013EF8(v36 + 3 * v33);
  v90 = v33;
  v37 = (v36 + 4 * v33);
  sub_1001943BC(v83, v37);
  sub_100013EF8(v37);
  v80 = (v89 + 16);
  v79 = v89 + 88;
  v77 = v89 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 5;
  v78 = enum case for WeatherMapOverlayKind.wind(_:)[0];
  v86 = a3;
  do
  {
    sub_1009254D4(v36, v29);
    sub_1009254D4(v29, v6);
    if (sub_100024D10(v6, 1, v20) == 1)
    {
      sub_100925544(v29);
      sub_100925544(v6);
      goto LABEL_27;
    }

    sub_10001A208();
    sub_1001944F0(v6, v24);
    sub_100004EAC();
    v40 = v91;
    sub_1001943BC(v24, v91);
    sub_1001943BC(v40, v92);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 18:
        v42 = 5;
        break;
      case 1:
        v42 = 0;
        break;
      case 5:
        sub_100028E04();
        v43 = v85;
        sub_1001944F0(v92, v85);
        (*v80)(v81, v43, v82);
        v44 = sub_100069C6C();
        v46 = v45(v44);
        if (v46 == v78)
        {
          if (qword_100CA2100 != -1)
          {
            sub_100023558();
            swift_once();
          }

          v47 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
          sub_10000703C(v47, qword_100D8FEB8);
          swift_beginAccess();
          Tips.Parameter.wrappedValue.getter();
          v48 = v93;
          swift_endAccess();
          sub_10001FD30();
          sub_10019213C(v91, v49);
          sub_100011018();
          sub_10019213C(v85, v50);
          if (v48)
          {
            v42 = 2;
          }

          else
          {
            v42 = 3;
          }
        }

        else
        {
          sub_10001FD30();
          sub_10019213C(v91, v58);
          sub_100011018();
          sub_10019213C(v43, v59);
          v60 = sub_100069C6C();
          v61(v60);
          v42 = 2;
        }

        goto LABEL_22;
      case 16:
        v42 = 4;
        break;
      default:
        if (EnumCaseMultiPayload)
        {
          sub_100006B94();
          sub_10019213C(v91, v51);
          sub_10019213C(v92, v37);
          sub_100925544(v29);
          sub_1000752D0();
          goto LABEL_27;
        }

        v42 = 1;
        break;
    }

    sub_100006B94();
    sub_10019213C(v91, v52);
    sub_10019213C(v92, v37);
LABEL_22:
    sub_100925544(v29);
    v53 = (v24 + *(v20 + 20));
    v54 = *v53;
    v88 = v53[1];
    v89 = v54;
    sub_1000752D0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069EA20();
      v38 = v62;
    }

    v55 = v38[2];
    v37 = (v55 + 1);
    if (v55 >= v38[3] >> 1)
    {
      sub_10069EA20();
      v38 = v63;
    }

    v38[2] = v37;
    v56 = &v38[5 * v55];
    *(v56 + 32) = v42;
    v57 = v89;
    *(v56 + 7) = v88;
    *(v56 + 5) = v57;
    a3 = v86;
LABEL_27:
    v36 += v90;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  sub_1005C1E80();
  v94[0] = v38;

  sub_100924A90(v94);

  v67 = v94[0];
  v68 = *(v94[0] + 16);
  if (v68)
  {
    v94[0] = _swiftEmptyArrayStorage;
    sub_1006A7B3C();
    v65 = v94[0];
    v69 = *(v94[0] + 16);
    v70 = 4;
    v71 = v84;
    do
    {
      v72 = v67[v70];
      v94[0] = v65;
      if (v69 >= v65[3] >> 1)
      {
        sub_1006A7B3C();
        v65 = v94[0];
      }

      v65[2] = v69 + 1;
      *(v65 + v69 + 32) = v72;
      v70 += 5;
      ++v69;
      --v68;
    }

    while (v68);

    sub_10019213C(v83, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_10019213C(v75, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(a3);
    sub_10019213C(v71, type metadata accessor for TipPriorityQueue.GridEntry);
    v66 = v76;
LABEL_37:
    sub_100925544(v66);
  }

  else
  {

    sub_10019213C(v83, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_10019213C(v75, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(a3);
    sub_10019213C(v84, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(v76);
    return _swiftEmptyArrayStorage;
  }

  return v65;
}

uint64_t type metadata accessor for TipPriorityQueue.GridEntry(uint64_t a1)
{
  result = qword_100CE6420;
  if (!qword_100CE6420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009254D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100925544(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1009255AC(uint64_t *a1)
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
        sub_10022C350(&qword_100CE63C0, &qword_100A99928);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100925754(v7, v8, a1, v4);
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
    return sub_1009256B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1009256B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v4 + 40 * a3;
      v8 = *(v7 + 8);
      v9 = *(v7 + 24);
      v10 = v6;
      v11 = v5;
      do
      {
        v12 = *(v11 - 16);
        v13 = v8 < *(v11 - 32);
        v14 = v9 == v12;
        v15 = v9 < v12;
        if (!v14)
        {
          v13 = v15;
        }

        if (!v13)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v16 = *v11;
        result = *(v11 + 16);
        v17 = *(v11 + 32);
        v18 = *(v11 - 24);
        *v11 = *(v11 - 40);
        *(v11 + 16) = v18;
        *(v11 + 32) = *(v11 - 8);
        *(v11 - 32) = v8;
        *(v11 - 24) = result;
        *(v11 - 16) = v9;
        *(v11 - 8) = v17;
        *(v11 - 40) = v16;
        v11 -= 40;
      }

      while (!__CFADD__(v10++, 1));
      ++a3;
      v5 += 40;
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

void sub_100925754(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_95:
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v99 = v6;
        v100 = &v6[16 * v98];
        v101 = *v100;
        v102 = &v97[2 * v98];
        v103 = v102[1];
        sub_100925D54((*a3 + 40 * *v100), (*a3 + 40 * *v102), *a3 + 40 * v103, v107);
        if (v109)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_121;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_122;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_123;
        }

        v109 = 0;
        v98 = *v97 - 1;
        memmove(v102, v102 + 2, 16 * v104);
        *v97 = v98;
        v6 = v99;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v6 = sub_100308E24();
    goto LABEL_97;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v105 = a4;
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 40 * v5;
      v9 = *(v8 + 8);
      v10 = *(v8 + 24);
      v11 = *a3 + 40 * v7;
      v12 = *(v11 + 24);
      v13 = v9 < *(v11 + 8);
      v14 = v10 == v12;
      v15 = v10 < v12;
      if (!v14)
      {
        v13 = v15;
      }

      v16 = (v11 + 104);
      v17 = v7 + 2;
      while (1)
      {
        v18 = v17;
        if (++v5 >= v4)
        {
          break;
        }

        v19 = *(v16 - 2);
        v21 = *v16;
        v16 += 5;
        v20 = v21;
        v22 = v19 >= v9;
        v14 = v21 == v10;
        v23 = v21 >= v10;
        if (v14)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        ++v17;
        v10 = v20;
        v9 = v19;
        if (v13 == v24)
        {
          if (!v13)
          {
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      v5 = v4;
      if (!v13)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v5 < v7)
      {
        goto LABEL_127;
      }

      if (v7 < v5)
      {
        if (v4 >= v18)
        {
          v4 = v18;
        }

        v25 = 40 * v4 - 40;
        v26 = 40 * v7 + 24;
        v27 = v5;
        v28 = v7;
        do
        {
          if (v28 != --v27)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v30 = (v29 + v26);
            v31 = *(v29 + v26 - 24);
            v32 = v29 + v25;
            v33 = *(v30 - 1);
            v34 = *v30;
            v35 = *(v32 + 32);
            v36 = *(v32 + 16);
            *(v30 - 24) = *v32;
            *(v30 - 8) = v36;
            *(v30 + 1) = v35;
            *v32 = v31;
            *(v32 + 8) = v33;
            *(v32 + 24) = v34;
          }

          ++v28;
          v25 -= 40;
          v26 += 40;
        }

        while (v28 < v27);
        v4 = a3[1];
      }
    }

LABEL_25:
    if (v5 < v4)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_126;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v5 < v7)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v6 = v95;
    }

    v53 = *(v6 + 2);
    v54 = v53 + 1;
    if (v53 >= *(v6 + 3) >> 1)
    {
      sub_10011E564();
      v6 = v96;
    }

    *(v6 + 2) = v54;
    v55 = v6 + 32;
    v56 = &v6[16 * v53 + 32];
    *v56 = v7;
    *(v56 + 1) = v5;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v6[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v6 + 4);
          v61 = *(v6 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_63:
          if (v63)
          {
            goto LABEL_112;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_120;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v54 < 2)
        {
          goto LABEL_114;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_78:
        if (v78)
        {
          goto LABEL_117;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v85 < v77)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v57 - 1 >= v54)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v89 = v6;
        v90 = &v55[16 * v57 - 16];
        v91 = *v90;
        v92 = &v55[16 * v57];
        v93 = *(v92 + 1);
        sub_100925D54((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v107);
        if (v109)
        {
          goto LABEL_105;
        }

        if (v93 < v91)
        {
          goto LABEL_107;
        }

        v94 = *(v89 + 2);
        if (v57 > v94)
        {
          goto LABEL_108;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        if (v57 >= v94)
        {
          goto LABEL_109;
        }

        v109 = 0;
        v54 = v94 - 1;
        sub_1003090FC(v92 + 16, v94 - 1 - v57, &v55[16 * v57]);
        v6 = v89;
        *(v89 + 2) = v94 - 1;
        if (v94 <= 2)
        {
          goto LABEL_92;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_110;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_111;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_113;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_116;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v4 = a3[1];
    a4 = v105;
    if (v5 >= v4)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_128;
  }

  if (v7 + a4 < v4)
  {
    v4 = v7 + a4;
  }

  if (v4 < v7)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v5 == v4)
  {
    goto LABEL_43;
  }

  v37 = *a3;
  v38 = *a3 + 40 * v5;
  v39 = v7 - v5;
LABEL_34:
  v40 = v37 + 40 * v5;
  v41 = *(v40 + 8);
  v42 = *(v40 + 24);
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = *(v44 - 16);
    v46 = v41 < *(v44 - 32);
    v14 = v42 == v45;
    v47 = v42 < v45;
    if (!v14)
    {
      v46 = v47;
    }

    if (!v46)
    {
LABEL_41:
      ++v5;
      v38 += 40;
      --v39;
      if (v5 == v4)
      {
        v5 = v4;
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (!v37)
    {
      break;
    }

    v48 = *v44;
    v49 = *(v44 + 16);
    v50 = *(v44 + 32);
    v51 = *(v44 - 24);
    *v44 = *(v44 - 40);
    *(v44 + 16) = v51;
    *(v44 + 32) = *(v44 - 8);
    *(v44 - 32) = v41;
    *(v44 - 24) = v49;
    *(v44 - 16) = v42;
    *(v44 - 8) = v50;
    *(v44 - 40) = v48;
    v44 -= 40;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

uint64_t sub_100925D54(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1006A075C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = *(v6 + 3);
      v13 = *(v4 + 3);
      v14 = *(v6 + 1) < *(v4 + 1);
      v15 = v12 == v13;
      v16 = v12 < v13;
      if (!v15)
      {
        v14 = v16;
      }

      if (!v14)
      {
        break;
      }

      v17 = v6;
      v15 = v7 == v6;
      v6 += 40;
      if (!v15)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 40;
    }

    v17 = v4;
    v15 = v7 == v4;
    v4 += 40;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_14:
    v18 = *v17;
    v19 = *(v17 + 1);
    *(v7 + 4) = *(v17 + 4);
    *v7 = v18;
    *(v7 + 1) = v19;
    goto LABEL_15;
  }

  sub_1006A075C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_17:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v21 = *(v10 - 2);
    v22 = *(v6 - 2);
    v23 = *(v10 - 4) < *(v6 - 4);
    v15 = v21 == v22;
    v24 = v21 < v22;
    if (!v15)
    {
      v23 = v24;
    }

    if (v23)
    {
      v27 = v6 - 40;
      v15 = v5 + 40 == v6;
      v6 -= 40;
      if (!v15)
      {
        v28 = *v27;
        v29 = *(v27 + 1);
        *(v5 + 32) = *(v27 + 4);
        *v5 = v28;
        *(v5 + 16) = v29;
        v6 = v27;
      }

      goto LABEL_17;
    }

    if (v10 != (v5 + 40))
    {
      v25 = *(v10 - 40);
      v26 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v25;
      *(v5 + 16) = v26;
    }

    v10 -= 40;
  }

LABEL_32:
  v30 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v30])
  {
    memmove(v6, v4, 40 * v30);
  }

  return 1;
}

uint64_t sub_100925F5C(uint64_t a1)
{
  result = type metadata accessor for LocationComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailChartHeaderViewModel(uint64_t a1)
{
  result = qword_100CE64B0;
  if (!qword_100CE64B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100926044(uint64_t a1)
{
  result = type metadata accessor for ConditionDetailChartHeaderStringModel();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t getEnumTagSinglePayload for ConditionDetailChartHeaderViewModel.StyleKind(unint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_17:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = (v6 + 2147483646) & 0x7FFFFFFF;
      result = v7 - 4;
      if (v7 > 4)
      {
        return result;
      }
    }

    return 0;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = (*result | (v5 << 8)) - 6;
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionDetailChartHeaderViewModel.StyleKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10092624C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100926274@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  switch(a1)
  {
    case 2:
      if (qword_100CA20B0 != -1)
      {
        swift_once();
      }

      v3 = qword_100D8FD78;
      a2[3] = type metadata accessor for DefaultChartHeaderStyle();
      v4 = &unk_100CD7368;
      v5 = type metadata accessor for DefaultChartHeaderStyle;
      v6 = &unk_100A515E8;
      goto LABEL_17;
    case 3:
      if (qword_100CA2BB8 != -1)
      {
        swift_once();
      }

      v3 = qword_100D91510;
      a2[3] = type metadata accessor for ChanceOfRainChartHeaderStyle();
      v4 = &unk_100CD7360;
      v5 = type metadata accessor for ChanceOfRainChartHeaderStyle;
      v6 = &unk_100A9F6E0;
      goto LABEL_17;
    case 4:
      if (qword_100CA2BB0 != -1)
      {
        swift_once();
      }

      v3 = qword_100D91508;
      a2[3] = type metadata accessor for TemperatureChartHeaderStyle();
      v4 = &unk_100CD7358;
      v5 = type metadata accessor for TemperatureChartHeaderStyle;
      v6 = &unk_100A9F768;
      goto LABEL_17;
    case 5:
      if (qword_100CA2948 != -1)
      {
        swift_once();
      }

      v3 = qword_100D911B8;
      a2[3] = type metadata accessor for VisibilityChartHeaderStyle();
      v4 = &unk_100CD7350;
      v5 = type metadata accessor for VisibilityChartHeaderStyle;
      v6 = &unk_100A8ED9C;
      goto LABEL_17;
    case 6:
      if (qword_100CA2360 != -1)
      {
        swift_once();
      }

      v3 = qword_100D90580;
      a2[3] = type metadata accessor for UVIndexChartHeaderStyle();
      v4 = &unk_100CD7348;
      v5 = type metadata accessor for UVIndexChartHeaderStyle;
      v6 = &unk_100A6BE68;
LABEL_17:
      a2[4] = sub_100926748(v4, v5, v6);
      *a2 = v3;

      break;
    default:
      v9 = type metadata accessor for PrecipitationChartHeaderStyle();
      swift_allocObject();
      v10 = sub_1004CBA64(a1 & 1);
      a2[3] = v9;
      result = sub_100926748(&qword_100CD7340, type metadata accessor for PrecipitationChartHeaderStyle, aU_23);
      a2[4] = result;
      *a2 = v10;
      break;
  }

  return result;
}

uint64_t sub_1009265B0(uint64_t a1, uint64_t a2, double a3)
{
  if (static ConditionDetailChartHeaderStringModel.== infix(_:_:)())
  {
    v5 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
    v6 = *(v5 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    switch(v7)
    {
      case 2:
        if (v8 != 2)
        {
          goto LABEL_15;
        }

        break;
      case 3:
        if (v8 != 3)
        {
          goto LABEL_15;
        }

        break;
      case 4:
        if (v8 != 4)
        {
          goto LABEL_15;
        }

        break;
      case 5:
        if (v8 != 5)
        {
          goto LABEL_15;
        }

        break;
      case 6:
        if (v8 != 6)
        {
          goto LABEL_15;
        }

        break;
      default:
        if (v8 - 2) < 5 || ((v8 ^ v7))
        {
          goto LABEL_15;
        }

        break;
    }

    v9 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  }

  else
  {
LABEL_15:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10092668C(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 3:
      if (a2 == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_13;
      }

LABEL_11:
      v2 = 1;
      break;
    default:
      if ((a2 - 2) >= 5u)
      {
        v2 = a2 ^ a1 ^ 1;
      }

      else
      {
LABEL_13:
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

uint64_t sub_100926748(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t type metadata accessor for PeakKnockoutMark(uint64_t a1)
{
  result = qword_100CE6548;
  if (!qword_100CE6548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100926804(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1009268B0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = type metadata accessor for BlendMode();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v3 - 8);
  v17 = &v17 - v4;
  v5 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v5 - 8);
  v20 = type metadata accessor for PointMark();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CCDD38, &unk_100A707B0);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PeakKnockoutMark(0);
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();
  v28 = *(v1 + *(v10 + 20));
  static PlottableValue.value(_:_:)();
  PointMark.init<A, B>(x:y:)();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B6290();
  sub_1004B6290();
  v11 = v20;
  ChartContent.symbolSize(_:)();
  (*(v18 + 8))(v7, v11);
  v13 = v22;
  v12 = v23;
  v14 = v25;
  (*(v23 + 104))(v22, enum case for BlendMode.destinationOut(_:), v25);
  v26 = v11;
  v27 = &protocol witness table for PointMark;
  swift_getOpaqueTypeConformance2();
  v15 = v21;
  ChartContent.blendMode(_:)();
  (*(v12 + 8))(v13, v14);
  return (*(v19 + 8))(v9, v15);
}

uint64_t sub_100926D0C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_10022C350(&qword_100CE6590, &qword_100A99A38);
  sub_1000037C4();
  v42 = v3;
  v43 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  v40 = &v36 - v5;
  v6 = type metadata accessor for BasicChartSymbolShape();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CE6598, &qword_100A99A40);
  sub_1000037C4();
  v39 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10022C350(&qword_100CE65A0, &qword_100A99A48);
  sub_1000037C4();
  v18 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_10022C350(&qword_100CE65A8, &unk_100A99A50);
  sub_1000037C4();
  v37 = v23;
  v38 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v36 - v25;
  v27 = *(v1 + *(type metadata accessor for PeakKnockoutMark(0) + 24));
  sub_1009268B0(v21);
  static ChartSymbolShape<>.circle.getter();
  if (v27 == 1)
  {
    v28 = v44;
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B5F04();
    BasicChartSymbolShape.strokeBorder(lineWidth:)();
    (*(v8 + 8))(v11, v6);
    v29 = sub_10022E824(&qword_100CCDD38, &unk_100A707B0);
    v45 = type metadata accessor for PointMark();
    v46 = &protocol witness table for PointMark;
    sub_100010D0C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v29;
    v46 = OpaqueTypeConformance2;
    sub_10001D2A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v31 = v41;
    ChartContent.symbol<A>(_:)();
    (*(v39 + 8))(v15, v31);
    (*(v18 + 8))(v21, v16);
    (*(v37 + 32))(v28, v26, v38);
  }

  else
  {
    v32 = sub_10022E824(&qword_100CCDD38, &unk_100A707B0);
    v47 = type metadata accessor for PointMark();
    v48 = &protocol witness table for PointMark;
    sub_100010D0C();
    v33 = swift_getOpaqueTypeConformance2();
    v47 = v32;
    v48 = v33;
    sub_10001D2A8();
    swift_getOpaqueTypeConformance2();
    sub_100402118();
    v34 = v40;
    ChartContent.symbol<A>(_:)();
    (*(v8 + 8))(v11, v6);
    (*(v18 + 8))(v21, v16);
    (*(v42 + 32))(v44, v34, v43);
  }

  sub_10022C350(&qword_100CE65B0, &qword_100A99A60);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100927204()
{
  result = qword_100CE65B8;
  if (!qword_100CE65B8)
  {
    v7[12] = v0;
    v7[13] = v1;
    v3 = sub_10022E824(&qword_100CE65C0, &qword_100A99A68);
    v4 = sub_10022E824(&qword_100CE65A0, &qword_100A99A48);
    sub_10022E824(&qword_100CE6598, &qword_100A99A40);
    sub_10022E824(&qword_100CCDD38, &unk_100A707B0);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v6 = swift_getOpaqueTypeConformance2();
    v7[2] = v4;
    v7[3] = type metadata accessor for BasicChartSymbolShape();
    v7[4] = OpaqueTypeConformance2;
    v7[5] = sub_100402118();
    v7[0] = v6;
    v7[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> BuilderConditional<A, B>, v3, v7);
    atomic_store(result, &qword_100CE65B8);
  }

  return result;
}

double sub_1009273AC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2B08 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2B18 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2B10 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2B00 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2AF8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_100927518(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003908();
  __chkstk_darwin(v9);
  v80 = &v75 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v75 - v31;
  __chkstk_darwin(v33);
  v35 = &v75 - v34;
  sub_1009273AC(a1, a2);
  v37 = v36;
  v38 = OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008, &unk_100A2F7B0);
  v39 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v23, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v42);
    sub_100566A5C(v37, v83);
    if ((v84 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v44);
      v43 = 0;
      v45 = &v32[*(v6 + 20)];
      v46 = v83[1];
      *v45 = v83[0];
      *(v45 + 1) = v46;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
LABEL_7:
  v47 = v77;
  sub_10001B350(v32, v43, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v47, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v48 + v49, v20, v50);
  sub_100566A94(v37, v85);
  v51 = v78;
  if (v86 & 1) != 0 || (sub_100011474(), v52 = v80, sub_1001B6FB0(v20, v80, v53), v54 = (v52 + *(v6 + 20)), v55 = v85[1], *v54 = v85[0], v54[1] = v55, sub_100035AD0(v35, v51, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v58 = v76, sub_10031694C(v56 + v57, v76, v59), sub_100566AB0(v37, v87), v60 = v81, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v58, v60, v61);
    v62 = (v60 + *(v6 + 20));
    v63 = v87[1];
    *v62 = v87[0];
    v62[1] = v63;
    sub_10001BD64();
    v66 = v79;
    sub_10031694C(v64 + v65, v79, v67);
    sub_100566AE8(v37, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v68 = v66;
      v69 = v82;
      sub_1001B6FB0(v68, v82, v70);
      v71 = (v69 + *(v6 + 20));
      v72 = v89[1];
      *v71 = v89[0];
      v71[1] = v72;
      v73 = sub_100924C14(v47, v52, v51, v60, v69);
      sub_1000180EC(v35, &qword_100CAC7F8, &qword_100A65EA0);
      return v73;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100927B40(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v115 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v120 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3ECD0;
    v13 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v14, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = swift_allocObject();
    sub_100003E18(v23);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v23 + v14, v7);
    *(v12 + 56) = sub_1001B38A0(v23);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v117 = v17;
    v26 = swift_allocObject();
    sub_100003E18(v26);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v26 + v14, v7);
    *(v12 + 80) = sub_1001B38A0(v26);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = v15;
    v118 = v14 + 2 * v15;
    v119 = v15;
    v30 = v16;
    v31 = swift_allocObject();
    v32 = sub_10001361C(v31, xmmword_100A2D320) + v14;
    v33 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v32[v29], v7);
    *(v12 + 104) = sub_1001B38A0(v31);
    *(v12 + 112) = v34;
    *(v12 + 120) = v35;
    v116 = v30;
    v36 = swift_allocObject();
    sub_1000056EC(v36);
    v38 = v37 + v14;
    v39 = v120;
    v40 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v38 + v119, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v14;
    v46 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v47 = v119;
    sub_10031694C(v46 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v48;
    *(v12 + 168) = v49;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v14;
    v53 = v120;
    v54 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v52 + v47;
    v56 = v47;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v57;
    *(v12 + 192) = v58;
    v59 = swift_allocObject();
    sub_100003E18(v59);
    v61 = v60 + v14;
    v62 = *(v53 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v14, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 200) = sub_1001B38A0(v59);
    *(v12 + 208) = v63;
    *(v12 + 216) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    sub_10001361C(v70, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v116 = v69;
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(v9, v82 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v83;
    *(v12 + 120) = v84;
    v85 = v67;
    v118 = v67;
    v86 = swift_allocObject();
    v87 = sub_10001361C(v86, xmmword_100A2D320);
    v117 = v9;
    v88 = v87 + v66;
    v89 = a1;
    v90 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v90 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v88[v85], v7);
    *(v12 + 128) = sub_1001B38A0(v86);
    *(v12 + 136) = v91;
    *(v12 + 144) = v92;
    v119 = v68;
    v93 = swift_allocObject();
    sub_100003E18(v93);
    v95 = v94 + v66;
    v96 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v95 + v118, v7);
    *(v12 + 152) = sub_1001B38A0(v93);
    *(v12 + 160) = v97;
    *(v12 + 168) = v98;
    v99 = swift_allocObject();
    sub_100003E18(v99);
    v101 = v100 + v66;
    v102 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v103 = v118;
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v101 + v118, v7);
    *(v12 + 176) = sub_1001B38A0(v99);
    *(v12 + 184) = v104;
    *(v12 + 192) = v105;
    v106 = sub_100017D80();
    *(v106 + 16) = 2;
    *(v106 + 24) = 4;
    v107 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v106 + v66 + v103, v7);
    *(v12 + 200) = sub_1001B38A0(v106);
    *(v12 + 208) = v108;
    *(v12 + 216) = v109;
    v110 = sub_100017D80();
    *(v110 + 16) = 2;
    *(v110 + 24) = 4;
    v111 = *(v120 + 16);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v110 + v66, v7);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v110 + v66 + v103, v7);
    *(v12 + 224) = sub_1001B38A0(v110);
    *(v12 + 232) = v112;
    *(v12 + 240) = v113;
    sub_1003169AC(v117, v7);
  }

  return v12;
}

void sub_100928398()
{
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v14 = v13;
  v15 = v12;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC10;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v16 = v11;
  v17 = v10;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC10;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A4C530;
  v18 = v9;
  v19 = v8;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = xmmword_100A3BBC0;
  v6[0] = xmmword_100A3BB70;
  v6[1] = xmmword_100A3BBB0;
  v20 = v7;
  v21 = v6;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC00;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC20;
  v22 = v5;
  v23 = v4;
  v3[0] = xmmword_100A2C3F0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC30;
  v24 = v3;
  v25 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC00;
  sub_10004ED88(v1, 0);
  qword_100D913A0 = v0;
}

void sub_10092849C()
{
  sub_100013C2C(xmmword_100A2C3F0, xmmword_100A3BC10);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3AEB0;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC30;
  v20[0] = xmmword_100A3BB70;
  v20[1] = v1;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = v1;
  v19[1] = xmmword_100A3BC30;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = v2;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBB0;
  v16[0] = v1;
  v16[1] = xmmword_100A3BC20;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = v1;
  v15[1] = xmmword_100A3BB80;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC50;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100554CA8(v23, v3, v4, v5, v6, v7, v8, v9, 0, 1, 6, 7, 0, 1, 8, 9, 0, 1, 5, 6);
  qword_100D913A8 = v10;
}

void sub_100928598()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC50);
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v16 = v0;
  v17 = v15;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A2C3F0;
  v18 = v14;
  v19 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = v2;
  v11[0] = xmmword_100A2D320;
  v11[1] = xmmword_100A3BB70;
  v20 = v12;
  v21 = v11;
  v10[0] = xmmword_100A3BC40;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BBB0;
  v22 = v10;
  v23 = v9;
  v8[0] = xmmword_100A3BC40;
  v8[1] = v2;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = v2;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC40;
  v5[0] = v1;
  v5[1] = xmmword_100A3BC40;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = v1;
  sub_10004ED88(v4, v1);
  qword_100D913B0 = v3;
}

void sub_100928690()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC60);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3F970;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = v1;
  v21[1] = xmmword_100A3BC40;
  v20[0] = xmmword_100A2D320;
  v20[1] = xmmword_100A3BBB0;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = v2;
  v18[0] = xmmword_100A3BC40;
  v18[1] = xmmword_100A3BC40;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBB0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = v2;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = v2;
  v14[0] = xmmword_100A3BC40;
  v14[1] = v1;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100554CA8(v23, v3, v4, v5, v6, v7, v8, v9, v1, *(&v1 + 1), 1, 2, 3, 4, 1, 2, v1, *(&v1 + 1), v1, *(&v1 + 1));
  qword_100D913B8 = v10;
}

void sub_100928784()
{
  sub_100013C2C(xmmword_100A3BC50, xmmword_100A3BC60);
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3F970;
  v17 = v0;
  v18 = v16;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC40;
  v14[0] = xmmword_100A41B90;
  v14[1] = xmmword_100A3BBB0;
  v19 = v15;
  v20 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = v1;
  v9[1] = v1;
  v10 = xmmword_100A3BC90;
  v11 = 1;
  v12 = 4;
  v21 = v13;
  v22 = &v10;
  v8[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A3BB70;
  v7[1] = v1;
  v8[0] = xmmword_100A3BB70;
  v23 = v9;
  v24 = v8;
  v6[1] = v1;
  v7[0] = v1;
  v5[1] = xmmword_100A3BC40;
  v6[0] = xmmword_100A3BC40;
  v25 = v7;
  v26 = v6;
  v4[1] = xmmword_100A3BBD0;
  v5[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BBD0;
  v4[0] = xmmword_100A3BC40;
  v27 = v5;
  v28 = v4;
  v3[0] = xmmword_100A3BBD0;
  sub_10004ED88(v3, 2);
  qword_100D913C0 = v2;
}

uint64_t sub_100928898(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationViewComponent(0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v29 - v22;

  sub_1005D71C4(v24, a2);
  v29[1] = v25;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather29LocationNoAqiNhpConfiguration8_Storage_map, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_10001B350(v23, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather29LocationNoAqiNhpConfiguration8_Storage_nextHourPrecipitation, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v23, v20, &qword_100CA5008, &unk_100A2F7B0);
  sub_100003E24();
  sub_10031694C(v11, v8, v26);
  type metadata accessor for NoAqiNhpContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002D3C94();
  sub_1003169AC(v11, v15);
  sub_1000180EC(v23, &qword_100CA5008, &unk_100A2F7B0);
  return v27;
}

void sub_100928B50(uint64_t a1)
{
  type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UVIndexComponentPreprocessedDataModel(319);
    if (v2 <= 0x3F)
    {
      sub_1000F4460(319);
      if (v3 <= 0x3F)
      {
        sub_1000F432C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100928C04(uint64_t a1, uint64_t a2)
{
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UVIndexComponent(0);
  if ((sub_100341F20() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DayWeather();
  sub_100929ADC(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_100929ADC(&qword_100CB0C58, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_100929ADC(&qword_100CB0C60, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HourWeather();
  sub_100929ADC(&qword_100CB0C20, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  sub_100929ADC(&qword_100CB0C28, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  sub_100929ADC(&qword_100CB0C30, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);

  return static Forecast.== infix(_:_:)();
}

uint64_t sub_100928DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v50 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v47 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  v49 = &v45 - v5;
  v56 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v52 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  v51 = &v45 - v8;
  v55 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v53 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v57 = v17 - v16;
  v59 = sub_10022C350(&qword_100CE6660, &qword_100A99B40);
  sub_1000037C4();
  v54 = v18;
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = type metadata accessor for UVIndexComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_1000161C0(a1, a1[3]);
  sub_100929968();
  v58 = v21;
  v27 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return sub_100006F14(a1);
  }

  v46 = v26;
  v28 = v56;
  v64 = 0;
  sub_100011030();
  sub_100929ADC(v29, v30, &protocol conformance descriptor for CurrentWeather);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v13;
  v32 = *(v53 + 32);
  v33 = v46;
  v60 = v31;
  v32(v46, v57);
  v63 = 1;
  sub_100006BAC();
  sub_100929ADC(v34, v35, aY_71);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v57 = v22;
  sub_1009299BC(v12, v33 + *(v22 + 20));
  v62 = 2;
  sub_100008F34(&qword_100CD8D70, &qword_100CA7000, &unk_100A3E7F0);
  v36 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v33;
  v38 = a1;
  (*(v52 + 32))(v37 + *(v57 + 24), v36, v28);
  v61 = 3;
  sub_100008F34(&qword_100CD8D68, &qword_100CA7030, &qword_100A32000);
  v39 = v49;
  v40 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = sub_10002356C();
  v42(v41);
  v43 = v46;
  (*(v47 + 32))(v46 + *(v57 + 28), v39, v40);
  sub_100929A20(v43, v48);
  sub_100006F14(v38);
  return sub_100929A84(v43, type metadata accessor for UVIndexComponent);
}

uint64_t sub_1009293D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572)
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

unint64_t sub_100929550(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x726F46796C696164;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1009295FC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE6670, &qword_100A99B48);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100929968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = 0;
  type metadata accessor for CurrentWeather();
  sub_100011030();
  v13 = sub_100929ADC(v11, v12, &protocol conformance descriptor for CurrentWeather);
  sub_1000752F8(v3, &v31, v14, v15, v13);
  if (!v2)
  {
    v16 = *(type metadata accessor for UVIndexComponent(0) + 20);
    v30 = 1;
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_100006BAC();
    v19 = sub_100929ADC(v17, v18, aQ_71);
    sub_1000752F8(v3 + v16, &v30, v20, v21, v19);
    v29 = 2;
    sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    sub_10001D2C0();
    sub_100006F64(v22, &qword_100CA7000, &unk_100A3E7F0, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = 3;
    sub_10022C350(&qword_100CA7030, &qword_100A32000);
    sub_10001D2C0();
    sub_100006F64(v24, &qword_100CA7030, &qword_100A32000, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100929894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009293D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009298BC(uint64_t a1)
{
  v2 = sub_100929968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009298F8(uint64_t a1)
{
  v2 = sub_100929968();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100929968()
{
  result = qword_100CE6668;
  if (!qword_100CE6668)
  {
    result = swift_getWitnessTable(byte_100A99C14, &type metadata for UVIndexComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE6668);
  }

  return result;
}

uint64_t sub_1009299BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100929A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100929A84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100929ADC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for UVIndexComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100929C04()
{
  result = qword_100CE6678;
  if (!qword_100CE6678)
  {
    result = swift_getWitnessTable(byte_100A99BEC, &type metadata for UVIndexComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE6678);
  }

  return result;
}

unint64_t sub_100929C5C()
{
  result = qword_100CE6680;
  if (!qword_100CE6680)
  {
    result = swift_getWitnessTable(byte_100A99B5C, &type metadata for UVIndexComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE6680);
  }

  return result;
}

unint64_t sub_100929CB4()
{
  result = qword_100CE6688;
  if (!qword_100CE6688)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for UVIndexComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE6688);
  }

  return result;
}

void sub_100929D48()
{
  sub_10000C778();
  v1 = v0;
  v56 = v2;
  v60 = type metadata accessor for ListViewModel(0) - 8;
  __chkstk_darwin(v60);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = sub_10022C350(&qword_100CE6790, &qword_100A99DB8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = (&v45 - v8);
  v47 = sub_10022C350(&qword_100CE6798, &qword_100A99DC0);
  sub_1000037C4();
  v48 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v46 = &v45 - v12;
  v50 = sub_10022C350(&qword_100CE67A0, &qword_100A99DC8);
  sub_1000037C4();
  v51 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v57 = v15;
  v52 = sub_10022C350(&qword_100CE67A8, &qword_100A99DD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v49 = v17;
  v54 = sub_10022C350(&qword_100CE67B0, &qword_100A99DD8);
  sub_1000037C4();
  v55 = v18;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v53 = v20;
  *v9 = static Alignment.center.getter();
  v9[1] = v21;
  v22 = sub_10022C350(&qword_100CE67B8, &qword_100A99DE0);
  sub_10092A538(v0, v9 + *(v22 + 44));
  v23 = *(v0 + 184);
  LOBYTE(v64) = *(v0 + 176);
  v65 = v23;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  sub_10003BC54();
  v24 = sub_100036F60(&unk_100C76570);
  sub_100031FF0(v24);
  v25 = sub_10023FBF4(&qword_100CE67C0, &qword_100CE6790, &qword_100A99DB8, &protocol conformance descriptor for ZStack<A>);
  sub_10002041C();
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v9, &qword_100CE6790);
  v59 = *(v0 + 8);
  sub_100988558();
  v26 = (v5 + *(v60 + 52));
  v45 = v5;
  v27 = *v26;
  v28 = v26[1];

  v58 = type metadata accessor for ListViewModel;
  sub_10093F8A8(v5, type metadata accessor for ListViewModel);
  v62 = v27;
  v63 = v28;
  sub_10003BC54();
  v29 = sub_100036F60(&unk_100C76598);
  sub_100031FF0(v29);
  sub_10022C350(&qword_100CA6078, &unk_100A30870);
  v64 = v6;
  v65 = &type metadata for Bool;
  v66 = v25;
  v67 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v30 = sub_10093F5B0();
  sub_10002041C();
  v31 = v47;
  v32 = v46;
  View.onChange<A>(of:initial:_:)();

  (*(v48 + 8))(v32, v31);
  LOBYTE(v32) = v59;
  sub_100988558();
  sub_100043B58();
  LOBYTE(v62) = v32;
  sub_10003BC54();
  v33 = sub_100036F60(&unk_100C765C0);
  sub_100031FF0(v33);
  v64 = v31;
  sub_1000A7DE4();
  v67 = v30;
  swift_getOpaqueTypeConformance2();
  sub_10002041C();
  v34 = v49;
  v35 = v50;
  v36 = v57;
  View.onChange<A>(of:initial:_:)();

  (*(v51 + 8))(v36, v35);
  sub_10003BC54();
  v37 = sub_100036F60(&unk_100C765E8);
  sub_100031FF0(v37);
  v38 = v52;
  v39 = (v34 + *(v52 + 36));
  *v39 = sub_10093F634;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  Solarium.init()();
  v61 = v1;
  sub_10022C350(&qword_100CE67C8, &unk_100A99DE8);
  v40 = sub_10093F644();
  v64 = v38;
  v65 = &type metadata for Bool;
  v66 = v40;
  v67 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v53;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v34, &qword_100CE67A8);
  LOBYTE(v36) = v59;
  sub_100988558();
  sub_100043B58();
  LOBYTE(v62) = v36;
  sub_10003BC54();
  v42 = sub_100036F60(&unk_100C76610);
  sub_100031FF0(v42);
  v64 = v38;
  sub_1000A7DE4();
  v67 = v40;
  v68 = &protocol witness table for Solarium;
  v69 = OpaqueTypeConformance2;
  sub_10001758C();
  swift_getOpaqueTypeConformance2();
  sub_100355554();
  sub_10002041C();
  v43 = v54;
  View.onChange<A>(of:initial:_:)();

  (*(v55 + 8))(v41, v43);
  sub_10000536C();
}

uint64_t sub_10092A538@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v182 = a2;
  v181 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v181);
  v180 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v178 = *(v4 - 8);
  v179 = v4;
  __chkstk_darwin(v4);
  v177 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for ListViewModel(0) - 8;
  __chkstk_darwin(v165);
  v160 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ContentStatusBanner(0);
  __chkstk_darwin(v148);
  v150 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v147 = &v142 - v9;
  v146 = sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  __chkstk_darwin(v146);
  v145 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v144 = &v142 - v12;
  v143 = type metadata accessor for ListView.ListContentView(0);
  __chkstk_darwin(v143);
  v14 = (&v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10022C350(&qword_100CE67D8, &qword_100A99DF8);
  v16 = *(v15 - 8);
  v152 = v15;
  v153 = v16;
  __chkstk_darwin(v15);
  v149 = &v142 - v17;
  v155 = sub_10022C350(&qword_100CE67E0, &qword_100A99E00);
  v158 = *(v155 - 8);
  __chkstk_darwin(v155);
  v151 = &v142 - v18;
  v19 = sub_10022C350(&qword_100CE67E8, &qword_100A99E08);
  v20 = *(v19 - 8);
  v161 = v19;
  v162 = v20;
  __chkstk_darwin(v19);
  v154 = &v142 - v21;
  v22 = sub_10022C350(&qword_100CE67F0, &qword_100A99E10);
  v23 = *(v22 - 8);
  v163 = v22;
  v164 = v23;
  __chkstk_darwin(v22);
  v156 = &v142 - v24;
  v25 = sub_10022C350(&qword_100CE67F8, &qword_100A99E18);
  v26 = *(v25 - 8);
  v166 = v25;
  v167 = v26;
  __chkstk_darwin(v25);
  v157 = &v142 - v27;
  v170 = sub_10022C350(&qword_100CE6800, &qword_100A99E20);
  __chkstk_darwin(v170);
  v159 = &v142 - v28;
  v29 = sub_10022C350(&qword_100CE6808, &qword_100A99E28);
  v30 = *(v29 - 8);
  v171 = v29;
  v172 = v30;
  __chkstk_darwin(v29);
  v169 = &v142 - v31;
  v173 = sub_10022C350(&qword_100CE6810, &unk_100A99E30) - 8;
  __chkstk_darwin(v173);
  v176 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v187 = &v142 - v34;
  v35 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  __chkstk_darwin(v35);
  v175 = sub_10022C350(&qword_100CE6818, &qword_100A99E40);
  v189 = *(v175 - 8);
  __chkstk_darwin(v175);
  v174 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v188 = &v142 - v38;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v196 = a1;
  v195 = a1;
  type metadata accessor for ListView.ListBackgroundView(0);
  type metadata accessor for ListView.ListGradientBackgroundView(0);
  *&v198[0] = &type metadata for Solarium;
  *(&v198[0] + 1) = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_10093F860(&qword_100CE6820, type metadata accessor for ListView.ListBackgroundView, asc_100A9A104);
  sub_10093F860(&qword_100CE6828, type metadata accessor for ListView.ListGradientBackgroundView, byte_100A9A0B4);
  StaticIf<>.init(_:then:else:)();
  v183 = a1;
  v39 = *(a1 + 16);
  v190 = *(a1 + 8);
  v191 = v39;
  v142 = *(a1 + 48);
  v40 = v143;
  v41 = *(v143 + 88);
  v184 = *(a1 + 32);
  sub_10042F370(a1 + 56, v14 + v41);
  v42 = *(a1 + 104);
  v185 = *(a1 + 96);
  v186 = v42;
  sub_10042F370(a1 + 112, v14 + v40[24]);
  *v14 = swift_getKeyPath();
  v168 = sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v43 = v40[5];
  *(v14 + v43) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  swift_storeEnumTagMultiPayload();
  v44 = type metadata accessor for ListLocationViewModel(0);
  v45 = v144;
  sub_10001B350(v144, 1, 1, v44);
  v46 = v145;
  sub_1000302D8(v45, v145, &qword_100CC4158, &qword_100A5D730);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  State.init(wrappedValue:)();
  sub_100018198(v45, &qword_100CC4158);
  v47 = v14 + v40[7];
  *v47 = sub_100319FB8;
  *(v47 + 1) = 0;
  v47[16] = 0;
  v48 = v40;
  v49 = v14 + v40[8];
  LOBYTE(v197[0]) = 0;
  State.init(wrappedValue:)();
  v50 = *(&v198[0] + 1);
  *v49 = v198[0];
  *(v49 + 1) = v50;
  sub_10001B350(v45, 1, 1, v44);
  sub_1000302D8(v45, v46, &qword_100CC4158, &qword_100A5D730);
  State.init(wrappedValue:)();
  sub_100018198(v45, &qword_100CC4158);
  v51 = (v14 + v48[10]);
  v197[0] = 0x3FECCCCCCCCCCCCDLL;
  State.init(wrappedValue:)();
  v52 = *(&v198[0] + 1);
  *v51 = *&v198[0];
  v51[1] = v52;
  v53 = (v14 + v48[11]);
  v197[0] = 0;
  State.init(wrappedValue:)();
  v54 = *(&v198[0] + 1);
  *v53 = *&v198[0];
  v53[1] = v54;
  v55 = v147;
  v56 = *(v148 + 24);
  static WeatherClock.date.getter();
  v57 = type metadata accessor for Date();
  sub_10001B350(v55 + v56, 0, 1, v57);
  *v55 = 1;
  *(v55 + 8) = xmmword_100A3A770;
  sub_100941A20(v55, v150);
  State.init(wrappedValue:)();
  sub_10093F8A8(v55, type metadata accessor for ContentStatusBanner);
  v58 = v14 + v48[13];
  LOBYTE(v197[0]) = 0;
  State.init(wrappedValue:)();
  v59 = *(&v198[0] + 1);
  *v58 = v198[0];
  *(v58 + 1) = v59;
  v60 = v48[14];
  v197[0] = 0;
  sub_10022C350(&qword_100CE6830, &unk_100A99EB0);
  State.init(wrappedValue:)();
  *(v14 + v60) = v198[0];
  v61 = v14 + v48[15];
  LOBYTE(v197[0]) = 1;
  State.init(wrappedValue:)();
  v62 = *(&v198[0] + 1);
  *v61 = v198[0];
  *(v61 + 1) = v62;
  *(v14 + v48[16]) = 0x406CC00000000000;
  *(v14 + v48[17]) = 0;
  v63 = (v14 + v48[18]);
  sub_10022C350(&qword_100CA4C50, &qword_100A2EEE0);
  v150 = asc_100AA1480;
  sub_10023FBF4(&qword_100CA4C58, &qword_100CA4C50, &qword_100A2EEE0, asc_100AA1480);
  *v63 = ObservedObject.init(wrappedValue:)();
  v63[1] = v64;
  *(v14 + v48[19]) = v191;
  *(v14 + v48[20]) = v184;
  *(v14 + v48[21]) = v142;
  v65 = (v14 + v48[23]);
  v66 = v186;
  *v65 = v185;
  v65[1] = v66;
  Solarium.init()();
  v67 = v183;
  v194 = v183;
  v193 = v183;
  v68 = sub_10022C350(&qword_100CE6838, &qword_100A99EC0);
  v69 = sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView, byte_100A9A064);
  *&v198[0] = v48;
  *(&v198[0] + 1) = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v149;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_10093F8A8(v14, type metadata accessor for ListView.ListContentView);
  v71 = *(v67 + 168);
  v198[0] = *(v67 + 152);
  *&v198[1] = v71;
  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  State.wrappedValue.getter();
  sub_10093F568(v67, v198);
  v72 = swift_allocObject();
  memcpy((v72 + 16), v198, 0xC0uLL);
  *&v198[0] = v48;
  *(&v198[0] + 1) = &type metadata for Solarium;
  *&v198[1] = v68;
  *(&v198[1] + 1) = v68;
  *&v198[2] = v69;
  *(&v198[2] + 1) = &protocol witness table for Solarium;
  *&v198[3] = OpaqueTypeConformance2;
  *(&v198[3] + 1) = OpaqueTypeConformance2;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v151;
  v75 = v152;
  View.onChange<A>(of:initial:_:)();

  v76 = v70;
  v77 = v75;
  (*(v153 + 8))(v76, v75);
  v78 = v160;
  sub_100988558();
  v79 = (v78 + *(v165 + 48));
  v80 = *v79;
  v81 = v79[1];

  sub_10093F8A8(v78, type metadata accessor for ListViewModel);
  v197[0] = v80;
  v197[1] = v81;
  sub_10093F568(v67, v198);
  v82 = swift_allocObject();
  memcpy((v82 + 16), v198, 0xC0uLL);
  *&v198[0] = v77;
  *(&v198[0] + 1) = &type metadata for String;
  *&v198[1] = v73;
  *(&v198[1] + 1) = &protocol witness table for String;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v154;
  v85 = v155;
  View.onChange<A>(of:initial:_:)();

  (*(v158 + 8))(v74, v85);
  v86 = [objc_opt_self() currentDevice];
  [v86 userInterfaceIdiom];

  *&v198[0] = v85;
  *(&v198[0] + 1) = &type metadata for String;
  *&v198[1] = v83;
  *(&v198[1] + 1) = &protocol witness table for String;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v156;
  v89 = v161;
  View.searchVibrancyEnabled(_:)();
  (*(v162 + 8))(v84, v89);
  *&v198[0] = v89;
  *(&v198[0] + 1) = v87;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v157;
  v92 = v163;
  View.disableAutocorrection(_:)();
  (*(v164 + 8))(v88, v92);
  v93 = v183;
  sub_10092C4D4();
  v192 = v93;
  *&v198[0] = v92;
  *(&v198[0] + 1) = v90;
  swift_getOpaqueTypeConformance2();
  v94 = v159;
  v95 = v166;
  View.alert(isPresented:content:)();

  (*(v167 + 8))(v91, v95);
  sub_10093F568(v93, v198);
  v96 = swift_allocObject();
  memcpy((v96 + 16), v198, 0xC0uLL);
  sub_10093F568(v93, v197);
  v97 = swift_allocObject();
  memcpy((v97 + 16), v197, 0xC0uLL);
  v98 = v94 + *(sub_10022C350(&qword_100CE6848, &qword_100A99EC8) + 36);
  *v98 = sub_10094159C;
  *(v98 + 8) = v96;
  *(v98 + 16) = sub_1009415A4;
  *(v98 + 24) = v97;
  *(v98 + 32) = sub_1001CF3D0;
  *(v98 + 40) = 0;
  *(v98 + 48) = 0;
  v99 = *(sub_10022C350(&qword_100CE6850, &qword_100A99ED0) + 36);
  v100 = type metadata accessor for Location.Identifier();
  sub_10001B350(v94 + v99, 1, 2, v100);
  v101 = (v94 + *(sub_10022C350(&qword_100CE6858, &qword_100A99ED8) + 36));
  *v101 = sub_10092C838;
  v101[1] = 0;
  v101[2] = 0;
  v101[3] = 0;
  v102 = v170;
  v103 = (v94 + *(v170 + 36));
  *v103 = 0;
  v103[1] = 0;
  v103[2] = sub_10092C844;
  v103[3] = 0;
  v104 = v177;
  static AccessibilityChildBehavior.contain.getter();
  v105 = sub_1009415AC();
  v106 = v169;
  v107 = v102;
  View.accessibilityElement(children:)();
  (*(v178 + 8))(v104, v179);
  sub_100018198(v94, &qword_100CE6800);
  v108 = LocalizedStringKey.init(stringLiteral:)();
  v112 = Text.init(_:tableName:bundle:comment:)(v108, v110, v109 & 1, v111, 0, 0, 0, 0, 0, 256);
  v114 = v113;
  LOBYTE(v94) = v115;
  *&v198[0] = v107;
  *(&v198[0] + 1) = v105;
  swift_getOpaqueTypeConformance2();
  v116 = v187;
  v117 = v171;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v112, v114, v94 & 1);

  (*(v172 + 8))(v106, v117);
  type metadata accessor for AutomationViewInfo(0);
  v118 = v180;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v119 = v116 + *(sub_10022C350(&qword_100CE6880, &qword_100A99EE0) + 36);
  v120 = type metadata accessor for AutomationInfoProperty(0);
  sub_100941A20(v118, v119 + *(v120 + 24));
  sub_10093F8A8(v118, type metadata accessor for AutomationInfo);
  *v119 = 0;
  *(v119 + 8) = 0xE000000000000000;
  *(v119 + 16) = swift_getKeyPath();
  *(v119 + 24) = 0;
  v190 = static Alignment.center.getter();
  v122 = v121;
  v123 = (v116 + *(v173 + 44));
  *v123 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v124 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  v125 = (v123 + *(v124 + 20));

  v126 = v185;
  swift_unknownObjectRetain();
  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, v150);
  *v125 = ObservedObject.init(wrappedValue:)();
  v125[1] = v127;
  v128 = (v123 + *(v124 + 24));
  v129 = v186;
  *v128 = v126;
  v128[1] = v129;
  v130 = (v123 + *(sub_10022C350(&qword_100CE6888, &qword_100A99F18) + 36));
  v131 = v189;
  *v130 = v190;
  v130[1] = v122;
  v132 = *(v131 + 16);
  v134 = v174;
  v133 = v175;
  v132(v174, v188, v175);
  v135 = v187;
  v136 = v176;
  sub_1000302D8(v187, v176, &qword_100CE6810, &unk_100A99E30);
  v137 = v182;
  v132(v182, v134, v133);
  v138 = sub_10022C350(&qword_100CE6890, &qword_100A99F20);
  sub_1000302D8(v136, &v137[*(v138 + 48)], &qword_100CE6810, &unk_100A99E30);
  sub_100018198(v135, &qword_100CE6810);
  v139 = *(v189 + 8);
  v139(v188, v133);
  sub_100018198(v136, &qword_100CE6810);
  return (v139)(v134, v133);
}