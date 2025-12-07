void sub_1000A459C(uint64_t a1)
{
  if (!qword_1001196C0)
  {
    sub_1000A4620(255);
    sub_1000A51B8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1001196C0);
    }
  }
}

void sub_1000A4668(uint64_t a1)
{
  if (!qword_1001196D0)
  {
    sub_1000A46EC(255);
    sub_1000A4D84();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001196D0);
    }
  }
}

void sub_1000A46EC(uint64_t a1)
{
  if (!qword_1001196D8)
  {
    sub_1000A476C(255);
    sub_1000A4D18(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001196D8);
    }
  }
}

void sub_1000A476C(uint64_t a1)
{
  if (!qword_1001196E0)
  {
    sub_1000A47F8(255);
    sub_1000A58C4(255, &qword_100115918, &type metadata for CGFloat, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001196E0);
    }
  }
}

void sub_1000A47F8(uint64_t a1)
{
  if (!qword_1001196E8)
  {
    sub_1000A4878(255);
    sub_1000A4D18(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001196E8);
    }
  }
}

void sub_1000A4878(uint64_t a1)
{
  if (!qword_1001196F0)
  {
    sub_1000A4BA0(255, &qword_1001196F8, sub_1000A4908, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DB3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001196F0);
    }
  }
}

void sub_1000A4908(uint64_t a1)
{
  if (!qword_100119700)
  {
    sub_1000A499C(255);
    sub_1000A50A4(&qword_100119740, sub_1000A499C, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119700);
    }
  }
}

void sub_1000A49D0(uint64_t a1)
{
  if (!qword_100119710)
  {
    sub_1000A4A60(255);
    sub_1000A4C98();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100119710);
    }
  }
}

void sub_1000A4A60(uint64_t a1)
{
  if (!qword_100119718)
  {
    sub_1000A4AFC(255, &qword_100119720, sub_1000A4B80, sub_1000A4C40, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DB3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119718);
    }
  }
}

void sub_1000A4AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000A4BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000A4C40()
{
  if (!qword_100119730)
  {
    v0 = sub_1000DADA0();
    if (!v1)
    {
      atomic_store(v0, &qword_100119730);
    }
  }
}

void sub_1000A4C98()
{
  if (!qword_100119738)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100119738);
    }
  }
}

void sub_1000A4D18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000A58C4(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1000A4D84()
{
  result = qword_100119748;
  if (!qword_100119748)
  {
    sub_1000A46EC(255);
    sub_1000A4E24();
    sub_1000A5168(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119748);
  }

  return result;
}

unint64_t sub_1000A4E24()
{
  result = qword_100119750;
  if (!qword_100119750)
  {
    sub_1000A476C(255);
    sub_1000A4EA4();
    sub_1000A50EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119750);
  }

  return result;
}

unint64_t sub_1000A4EA4()
{
  result = qword_100119758;
  if (!qword_100119758)
  {
    sub_1000A47F8(255);
    sub_1000A4F44();
    sub_1000A5168(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119758);
  }

  return result;
}

unint64_t sub_1000A4F44()
{
  result = qword_100119760;
  if (!qword_100119760)
  {
    sub_1000A4878(255);
    sub_1000A4FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119760);
  }

  return result;
}

unint64_t sub_1000A4FBC()
{
  result = qword_100119768;
  if (!qword_100119768)
  {
    sub_1000A4BA0(255, &qword_1001196F8, sub_1000A4908, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    sub_1000A50A4(&qword_100119770, sub_1000A4908, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119768);
  }

  return result;
}

uint64_t sub_1000A50A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A50EC()
{
  result = qword_100115938;
  if (!qword_100115938)
  {
    sub_1000A58C4(255, &qword_100115918, &type metadata for CGFloat, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115938);
  }

  return result;
}

uint64_t sub_1000A5168(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000A4D18(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000A51EC(uint64_t a1)
{
  if (!qword_100119788)
  {
    sub_1000A44D4(255);
    sub_1000A50A4(&qword_100119790, sub_1000A44D4, &protocol conformance descriptor for VStack<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100119788);
    }
  }
}

uint64_t sub_1000A532C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000DABE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000A5360@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000DABE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000A5444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1000A5514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAB50();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAB50();
  *a1 = result;
  return result;
}

uint64_t sub_1000A566C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A56CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A5734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000A5800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000A5864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000A58C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000A5914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000A5980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10002D6E4(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000A59E4()
{
  result = qword_1001197C8;
  if (!qword_1001197C8)
  {
    sub_1000A4B80(255);
    sub_1000A5A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197C8);
  }

  return result;
}

unint64_t sub_1000A5A5C()
{
  result = qword_1001197D0;
  if (!qword_1001197D0)
  {
    sub_10002D6E4(255);
    sub_1000A50A4(&qword_1001197D8, sub_1000A4C0C, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197D0);
  }

  return result;
}

unint64_t sub_1000A5B0C()
{
  result = qword_1001197E0;
  if (!qword_1001197E0)
  {
    sub_1000A4C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197E0);
  }

  return result;
}

unint64_t sub_1000A5BEC()
{
  result = qword_1001197E8;
  if (!qword_1001197E8)
  {
    sub_1000A4AFC(255, &qword_1001197A0, sub_1000A51EC, sub_100031EB0, &type metadata accessor for ModifiedContent);
    sub_1000A44D4(255);
    sub_1000A50A4(&qword_100119790, sub_1000A44D4, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000A50A4(&qword_100115C20, sub_100031EB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197E8);
  }

  return result;
}

uint64_t sub_1000A5D40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 > 1u)
  {
    goto LABEL_6;
  }

  v6 = a1;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 + 1 > 6)
  {
    goto LABEL_7;
  }

  a1 = v6;
  if (((1 << (v8 + 1)) & 0x5D) != 0)
  {
    sub_100006E20(v6, v14);
    a4[3] = &type metadata for LightTheme;
    a4[4] = &off_10010B468;
    v9 = swift_allocObject();
    *a4 = v9;
    v10 = a2;
    return sub_100085474(v14, a2, v9 + 16);
  }

  if (v8)
  {
LABEL_7:
    result = sub_1000DC0D0();
    __break(1u);
  }

  else
  {
LABEL_6:
    sub_100006E20(a1, v14);
    a4[3] = &type metadata for DarkTheme;
    a4[4] = &off_10010A6D8;
    v12 = swift_allocObject();
    *a4 = v12;
    v13 = a2;
    return sub_1000673E0(v14, a2, v12 + 16);
  }

  return result;
}

uint64_t Theme.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x746867696CLL;
  }

  return 1802658148;
}

uint64_t sub_1000A5F2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000DC360();
  }

  return v11 & 1;
}

Swift::Int sub_1000A6018()
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

double sub_1000A60B0(uint64_t a1)
{
  sub_1000DB9F0();

  return result;
}

Swift::Int sub_1000A6134(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

unint64_t sub_1000A61C8@<X0>(Swift::String *a1@<X0>, StocksWidget::Theme_optional *a2@<X8>)
{
  result = _s12StocksWidget5ThemeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1000A61F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000A624C(uint64_t a1)
{
  v2 = sub_1000A66F4();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_1000A62A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A66F4();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1000A62FC(uint64_t a1)
{
  v2 = sub_1000A66F4();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

unint64_t _s12StocksWidget5ThemeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100108D18;
  v6._object = a2;
  v4 = sub_1000DC170(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000A639C()
{
  result = qword_1001197F0;
  if (!qword_1001197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197F0);
  }

  return result;
}

uint64_t sub_1000A6404()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000A657C()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_1000A66F4()
{
  result = qword_1001197F8;
  if (!qword_1001197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197F8);
  }

  return result;
}

uint64_t sub_1000A6760(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_10007D024(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000A6820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10007D024(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1000A68E4(uint64_t a1)
{
  sub_1000AAAB4(319, &qword_100119868, &type metadata for HeadlineRubric, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000AAAB4(319, &unk_100119870, &type metadata for HeadlineThumbnail, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10007D024(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000A69E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 0x74616E6974736564;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEE004C52556E6F69;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7475626972747461;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEB000000006E6F69;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (a2 != 2)
  {
    v8 = 0x74616E6974736564;
    v7 = 0xEE004C52556E6F69;
  }

  if (a2)
  {
    v6 = 0x7475626972747461;
    v5 = 0xEB000000006E6F69;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000DC360();
  }

  return v11 & 1;
}

Swift::Int sub_1000A6B50()
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

double sub_1000A6C18(uint64_t a1)
{
  sub_1000DB9F0();

  return result;
}

Swift::Int sub_1000A6CCC(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

unint64_t sub_1000A6D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A9A98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000A6DC0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  if (*v1 != 2)
  {
    v5 = 0x74616E6974736564;
    v4 = 0xEE004C52556E6F69;
  }

  if (*v1)
  {
    v3 = 0x7475626972747461;
    v2 = 0xEB000000006E6F69;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000A6E44()
{
  v1 = 25705;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x74616E6974736564;
  }

  if (*v0)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000A6EC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A9A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A6EEC(uint64_t a1)
{
  v2 = sub_1000A7868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A6F28(uint64_t a1)
{
  v2 = sub_1000A7868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A6F64()
{
  v1 = *(v0 + 72);
  v19 = *(v0 + 64);
  v20 = v1;
  v2 = 40;
  if (*(v0 + 56))
  {
    v2 = 24;
  }

  v21 = *(v0 + v2);

  v3 = *(v0 + 16);

  if (v3 == 2)
  {
    result = 0;
    v5 = 0;
  }

  else
  {
    result = sub_1000C98C4(v3 & 1);
  }

  v6 = 0;
  v23 = result;
  v24 = v5;
  v7 = _swiftEmptyArrayStorage;
LABEL_7:
  if (v6 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 + 1;
  v10 = 16 * v6 + 40;
  while (1)
  {
    if (v6 == 3)
    {
      sub_1000AAAB4(0, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
      swift_arrayDestroy();
      sub_1000AAAB4(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
      sub_10007CA88();
      v17 = sub_1000DB890();

      return v17;
    }

    if (v9 == ++v6)
    {
      break;
    }

    v11 = v10 + 16;
    v12 = *&v18[v10];
    v10 += 16;
    if (v12)
    {
      v13 = *&v18[v11 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10007B454(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_10007B454((v14 > 1), v15 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v15 + 1;
      v16 = &v7[16 * v15];
      *(v16 + 4) = v13;
      *(v16 + 5) = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A7184(void *a1)
{
  v3 = v1;
  sub_1000A7910(0, &qword_1001198C8, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_100006C7C(a1, a1[3]);
  sub_1000A7868();
  sub_1000DC480();
  v13[0] = 0;
  sub_1000DC2B0();
  if (!v2)
  {
    v10 = *(v3 + 56);
    v13[0] = *(v3 + 16);
    v14 = *(v3 + 24);
    v15 = *(v3 + 40);
    v16 = v10;
    v12[15] = 1;
    sub_1000A7974();
    sub_1000DC2F0();
    v13[0] = 2;
    sub_1000DC2B0();
    type metadata accessor for HeadlineViewModel(0);
    v13[0] = 3;
    sub_1000D8F30();
    sub_1000AB210(&qword_1001192A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000DC2A0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000A73CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_10007D024(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A7910(0, &qword_1001198B0, &type metadata accessor for KeyedDecodingContainer);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for HeadlineViewModel(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 5) = xmmword_1000DE450;
  *(v12 + 6) = xmmword_1000DE460;
  v12[112] = 0;
  v14 = *(v13 + 44);
  v15 = sub_1000D8F30();
  v16 = *(*(v15 - 8) + 56);
  v30 = v14;
  v16(&v12[v14], 1, 1, v15);
  sub_100006C7C(a1, a1[3]);
  sub_1000A7868();
  sub_1000DC470();
  if (v2)
  {
    sub_100006D0C(a1);
    v23 = sub_10007D024;
    v24 = &v12[v30];
  }

  else
  {
    v26 = v6;
    v18 = v28;
    v17 = v29;
    v31[0] = 0;
    *v12 = sub_1000DC1E0();
    *(v12 + 1) = v20;
    v25 = v20;
    v35 = 1;
    sub_1000A78BC();
    sub_1000DC220();
    v21 = v34;
    v12[16] = v31[0];
    *(v12 + 24) = v32;
    *(v12 + 40) = v33;
    v12[56] = v21;
    v31[0] = 2;
    *(v12 + 8) = sub_1000DC1E0();
    *(v12 + 9) = v22;
    v31[0] = 3;
    sub_1000AB210(&qword_100119248, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000DC1D0();
    (*(v18 + 8))(v9, v17);
    sub_10003DC54(v26, &v12[v30]);
    sub_1000AAE84(v12, v27, type metadata accessor for HeadlineViewModel);
    sub_100006D0C(a1);
    v23 = type metadata accessor for HeadlineViewModel;
    v24 = v12;
  }

  return sub_1000AB1B0(v24, v23);
}

unint64_t sub_1000A7868()
{
  result = qword_1001198B8;
  if (!qword_1001198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198B8);
  }

  return result;
}

unint64_t sub_1000A78BC()
{
  result = qword_1001198C0;
  if (!qword_1001198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198C0);
  }

  return result;
}

void sub_1000A7910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000A7868();
    v7 = a3(a1, &type metadata for HeadlineViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000A7974()
{
  result = qword_1001198D0;
  if (!qword_1001198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198D0);
  }

  return result;
}

unint64_t sub_1000A79DC()
{
  result = qword_1001198D8;
  if (!qword_1001198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198D8);
  }

  return result;
}

unint64_t sub_1000A7A34()
{
  result = qword_1001198E0;
  if (!qword_1001198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198E0);
  }

  return result;
}

unint64_t sub_1000A7A8C()
{
  result = qword_1001198E8;
  if (!qword_1001198E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198E8);
  }

  return result;
}

void sub_1000A7AE0()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v1 = [v0 fontDescriptorWithSymbolicTraits:64];

  if (v1)
  {
    sub_1000A9C18(0, &qword_100119AB0, sub_1000348B0, &type metadata accessor for _ContiguousArrayStorage);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000DDD30;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_1000A9C18(0, &qword_100119AB8, sub_1000AB054, &type metadata accessor for _ContiguousArrayStorage);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1000DDD30;
    *(v3 + 32) = UIFontWeightTrait;
    *(v3 + 40) = UIFontWeightMedium;
    v4 = UIFontDescriptorTraitsAttribute;
    v5 = UIFontWeightTrait;
    v6 = sub_1000340F4(v3);
    swift_setDeallocating();
    sub_1000AB1B0(v3 + 32, sub_1000AB054);
    sub_1000AB104(0);
    *(inited + 64) = v7;
    *(inited + 40) = v6;
    sub_1000341D8(inited);
    swift_setDeallocating();
    sub_1000AB1B0(inited + 32, sub_1000348B0);
    type metadata accessor for AttributeName(0);
    sub_1000AB210(&qword_100114688, type metadata accessor for AttributeName, &unk_1000DE1FC);
    isa = sub_1000DB830().super.isa;

    v9 = [v1 fontDescriptorByAddingAttributes:isa];

    v10 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
    [v10 fontWithSize:15.0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A7D9C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v46 = sub_1000DAE60();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A9EAC(0);
  v50 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AA6E4(0);
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AA798(0);
  v54 = v8;
  __chkstk_darwin(v8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB320(0, &qword_100119A48, sub_1000AA7E0, sub_1000AA798, &type metadata accessor for _ConditionalContent.Storage);
  v52 = v10;
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  sub_1000AA828(0);
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AA7E0(0);
  v51 = v15;
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D024(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000D8F30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v41 - v26;
  v28 = type metadata accessor for HeadlineViewModel(0);
  sub_1000AAE84(v1 + *(v28 + 36), v20, sub_10007D024);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000AB1B0(v20, sub_10007D024);
    *v5 = sub_1000DAC60();
    *(v5 + 1) = 0;
    v5[16] = 0;
    sub_1000AAB04(0, &qword_100119A60, sub_1000A9F40, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
    sub_1000A8660(v1, &v5[*(v29 + 44)]);
    v30 = v43;
    sub_1000DAE40();
    v31 = sub_1000AB210(&qword_100119A38, sub_1000A9EAC, &protocol conformance descriptor for HStack<A>);
    v32 = v45;
    v33 = v50;
    sub_1000DB2A0();
    (*(v44 + 8))(v30, v46);
    sub_1000AAFF4(v5, sub_1000A9EAC);
    v58 = sub_1000A6F64();
    v59 = v34;
    v56 = v33;
    v57 = v31;
    swift_getOpaqueTypeConformance2();
    sub_100017740();
    v36 = v48;
    v35 = v49;
    sub_1000DB280();

    (*(v47 + 8))(v32, v36);
    sub_1000AAF34(v35, v53, sub_1000AA798);
    swift_storeEnumTagMultiPayload();
    sub_1000AA8BC();
    sub_1000AA99C();
    sub_1000DAD90();
    return sub_1000AAFF4(v35, sub_1000AA798);
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    v38 = (*(v22 + 16))(v24, v27, v21);
    __chkstk_darwin(v38);
    *(&v41 - 2) = v1;
    sub_1000AB210(&qword_100119A38, sub_1000A9EAC, &protocol conformance descriptor for HStack<A>);
    sub_1000DB0B0();
    v58 = sub_1000A6F64();
    v59 = v39;
    sub_1000AB210(&qword_100119A70, sub_1000AA828, &protocol conformance descriptor for Link<A>);
    sub_100017740();
    v40 = v42;
    sub_1000DB280();

    (*(v41 + 8))(v14, v40);
    sub_1000AAF34(v17, v53, sub_1000AA7E0);
    swift_storeEnumTagMultiPayload();
    sub_1000AA8BC();
    sub_1000AA99C();
    sub_1000DAD90();
    sub_1000AAFF4(v17, sub_1000AA7E0);
    return (*(v22 + 8))(v27, v21);
  }
}

uint64_t sub_1000A85EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000DAC60();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1000AAB04(0, &qword_100119A60, sub_1000A9F40, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  return sub_1000A8660(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000A8660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000DB720();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  sub_1000A9FC8(0);
  __chkstk_darwin(v10 - 8);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  *v14 = sub_1000DAD10();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1000AAB04(0, &qword_100119A80, sub_1000AA05C, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  sub_1000A8DC4(a1, &v14[*(v15 + 44)]);
  type metadata accessor for HeadlineView(0);
  sub_10004C4D4(v9);
  (*(v4 + 104))(v6, enum case for WidgetFamily.systemSmall(_:), v3);
  sub_1000AB210(&qword_100119A88, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v16 = sub_1000DB8D0();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v17(v9, v3);
  if ((v16 & 1) != 0 || (v18 = *(a1 + 104), v18 == 1))
  {
    *&v62[0] = 0;
    BYTE8(v62[0]) = 1;
    sub_1000AAB70(v62);
    v58 = v62[6];
    v59 = v62[7];
    v60 = v62[8];
    v61 = v63;
    v54 = v62[2];
    v55 = v62[3];
    v56 = v62[4];
    v57 = v62[5];
    v52 = v62[0];
    v53 = v62[1];
    sub_1000AA5E0(0);
    sub_1000AB210(&qword_100119A90, sub_1000AA5E0, &protocol conformance descriptor for TupleView<A>);
    sub_1000DAD90();
  }

  else
  {
    v19 = *(a1 + 112);
    sub_100024A30(v18);
    v20 = v18;
    sub_1000DB5E0();
    sub_1000DA9A0();
    *&v41[23] = v65;
    *&v41[7] = v64;
    *&v41[39] = v66;
    *&v41[55] = v67;
    *&v41[103] = v70;
    *&v41[87] = v69;
    *&v41[71] = v68;
    *&v39[0] = v18;
    BYTE8(v39[0]) = v19;
    *(v39 + 9) = *v41;
    *(&v39[3] + 9) = *&v41[48];
    *(&v39[2] + 9) = *&v41[32];
    *(&v39[1] + 9) = *&v41[16];
    *(&v39[7] + 1) = *(&v70 + 1);
    *(&v39[6] + 9) = *&v41[96];
    *(&v39[5] + 9) = *&v41[80];
    *(&v39[4] + 9) = *&v41[64];
    v44 = v39[2];
    v45 = v39[3];
    v42 = v39[0];
    v43 = v39[1];
    v48 = v39[6];
    v49 = v39[7];
    v46 = v39[4];
    v47 = v39[5];
    v40[2] = v39[2];
    v40[3] = v39[3];
    v40[0] = v39[0];
    v40[1] = v39[1];
    v40[6] = v39[6];
    v40[7] = v39[7];
    v40[4] = v39[4];
    v40[5] = v39[5];
    *&v37[55] = v39[3];
    *&v37[39] = v39[2];
    *&v37[23] = v39[1];
    *&v37[7] = v39[0];
    v38 = 0;
    *&v37[119] = v39[7];
    *&v37[103] = v39[6];
    *&v37[87] = v39[5];
    *&v37[71] = v39[4];
    sub_1000AAB7C(v39, &v71);
    sub_1000AAB7C(v40, &v71);
    sub_1000AABF8(&v42);
    *(&v62[5] + 9) = *&v37[80];
    *(&v62[6] + 9) = *&v37[96];
    *(&v62[7] + 9) = *&v37[112];
    *(&v62[1] + 9) = *&v37[16];
    *(&v62[2] + 9) = *&v37[32];
    *(&v62[3] + 9) = *&v37[48];
    *(&v62[4] + 9) = *&v37[64];
    *&v62[0] = 0x4024000000000000;
    BYTE8(v62[0]) = 0;
    *(&v62[8] + 1) = *&v37[127];
    *(v62 + 9) = *v37;
    sub_1000AAC6C(v62);
    v77 = v62[6];
    v78 = v62[7];
    v79 = v62[8];
    v80 = v63;
    v73 = v62[2];
    v74 = v62[3];
    v75 = v62[4];
    v76 = v62[5];
    v71 = v62[0];
    v72 = v62[1];
    sub_1000AA5E0(0);
    sub_1000AB210(&qword_100119A90, sub_1000AA5E0, &protocol conformance descriptor for TupleView<A>);
    sub_1000DAD90();
    sub_100010190(v18);
    sub_1000AABF8(v39);
    v77 = v58;
    v78 = v59;
    v79 = v60;
    v80 = v61;
    v73 = v54;
    v74 = v55;
    v75 = v56;
    v76 = v57;
    v71 = v52;
    v72 = v53;
  }

  v21 = v36;
  sub_1000AAF34(v14, v36, sub_1000A9FC8);
  v48 = v77;
  v49 = v78;
  v50 = v79;
  v51 = v80;
  v44 = v73;
  v45 = v74;
  v46 = v75;
  v47 = v76;
  v42 = v71;
  v43 = v72;
  v22 = v35;
  sub_1000AAF34(v21, v35, sub_1000A9FC8);
  sub_1000AB088(0, &qword_100119990, sub_1000A9FC8, sub_1000AA580);
  v24 = *(v23 + 48);
  v25 = v49;
  v58 = v48;
  v59 = v49;
  v26 = v50;
  v60 = v50;
  v27 = v46;
  v28 = v47;
  v56 = v46;
  v57 = v47;
  v29 = v44;
  v30 = v45;
  v54 = v44;
  v55 = v45;
  v31 = v42;
  v32 = v43;
  v52 = v42;
  v53 = v43;
  v33 = v22 + v24;
  *(v33 + 96) = v48;
  *(v33 + 112) = v25;
  *(v33 + 128) = v26;
  *(v33 + 32) = v29;
  *(v33 + 48) = v30;
  *(v33 + 64) = v27;
  *(v33 + 80) = v28;
  v61 = v51;
  *(v33 + 144) = v51;
  *v33 = v31;
  *(v33 + 16) = v32;
  sub_1000AAE84(&v52, v62, sub_1000AA580);
  sub_1000AAFF4(v14, sub_1000A9FC8);
  v62[6] = v48;
  v62[7] = v49;
  v62[8] = v50;
  v63 = v51;
  v62[2] = v44;
  v62[3] = v45;
  v62[4] = v46;
  v62[5] = v47;
  v62[0] = v42;
  v62[1] = v43;
  sub_1000AB1B0(v62, sub_1000AA580);
  return sub_1000AAFF4(v21, sub_1000A9FC8);
}

uint64_t sub_1000A8DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  sub_1000AAC74(0);
  v137 = v3;
  __chkstk_darwin(v3);
  v139 = &v111[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000AA3E8(0);
  v138 = v5;
  __chkstk_darwin(v5);
  v118 = &v111[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000AA4AC(0);
  v116 = *(v7 - 8);
  v117 = v7;
  __chkstk_darwin(v7);
  v115 = &v111[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v119 = &v111[-v10];
  v11 = sub_1000DB720();
  v123 = *(v11 - 8);
  v124 = v11;
  __chkstk_darwin(v11);
  v122 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v121 = &v111[-v14];
  sub_1000AA368(0);
  __chkstk_darwin(v15 - 8);
  v146 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v145 = &v111[-v18];
  sub_1000AA160(0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v147 = &v111[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v111[-v23];
  v25 = a1;
  v120 = a1;
  v26 = *(a1 + 16);
  v28 = *(a1 + 24);
  v27 = *(a1 + 32);
  v29 = *(v25 + 40);
  v30 = *(v25 + 48);
  v31 = *(v25 + 56);
  *v24 = v26;
  *(v24 + 1) = v28;
  *(v24 + 2) = v27;
  *(v24 + 3) = v29;
  *(v24 + 4) = v30;
  v24[40] = v31;
  v32 = type metadata accessor for HeadlineAttributionView(0);
  v33 = *(v32 + 20);
  *&v24[v33] = swift_getKeyPath();
  sub_1000A9C18(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v34 = &v24[*(v32 + 24)];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  sub_1000AAD4C(v28, v27, v29, v30, v31);
  v35 = sub_1000DB370();
  KeyPath = swift_getKeyPath();
  sub_1000AA2E4(0, &qword_1001199B8, type metadata accessor for HeadlineAttributionView);
  v38 = &v24[*(v37 + 36)];
  *v38 = KeyPath;
  v38[1] = v35;
  sub_1000DB5D0();
  sub_1000DA7A0();
  v39 = *(v20 + 44);
  v144 = v24;
  v40 = &v24[v39];
  v41 = v170;
  *v40 = v169;
  v40[1] = v41;
  v40[2] = v171;
  sub_1000DB600();
  sub_1000DA7A0();
  v135 = v174;
  v136 = v172;
  v133 = v177;
  v134 = v176;
  v191 = 1;
  v190 = v173;
  v189 = v175;
  v42 = v120;
  sub_1000A7AE0();
  v44 = v43;
  [v43 capHeight];

  sub_1000DB600();
  sub_1000DA7A0();
  v128 = v180;
  v129 = v178;
  v126 = v183;
  v127 = v182;
  v194 = 1;
  v193 = v179;
  v192 = v181;
  v45 = v42[9];
  v155 = v42[8];
  v156 = v45;
  sub_100017740();

  v46 = sub_1000DB170();
  v48 = v47;
  LOBYTE(v30) = v49;
  sub_1000A7AE0();
  sub_1000DB0A0();
  v50 = sub_1000DB100();
  v131 = v51;
  v132 = v50;
  LOBYTE(v32) = v52;
  v143 = v53;

  v54 = v48;
  v55 = v42;
  sub_100017794(v46, v54, v30 & 1);

  v142 = swift_getKeyPath();
  *(&v130 + 1) = sub_1000DB360();
  *&v130 = swift_getKeyPath();
  v141 = v32 & 1;
  LOBYTE(v155) = v32 & 1;
  v125 = swift_getKeyPath();
  type metadata accessor for HeadlineView(0);
  v56 = v121;
  sub_10004C4D4(v121);
  v58 = v122;
  v57 = v123;
  v59 = v124;
  (*(v123 + 104))(v122, enum case for WidgetFamily.systemSmall(_:), v124);
  sub_1000AB210(&qword_100119A88, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v60 = v59;
  LOBYTE(v59) = sub_1000DB8D0();
  v61 = *(v57 + 8);
  v61(v58, v60);
  v61(v56, v60);
  if ((v59 & 1) != 0 || (v62 = v55[11], v62 == 2))
  {
    sub_1000DB600();
    sub_1000DA7A0();
    v63 = v184;
    v64 = v185;
    v65 = v186;
    v66 = v187;
    LOBYTE(v155) = 1;
    LOBYTE(v149) = v185;
    v166 = v187;
    v67 = v139;
    *v139 = 0;
    *(v67 + 8) = 1;
    *(v67 + 2) = v63;
    *(v67 + 24) = v64;
    *(v67 + 4) = v65;
    *(v67 + 40) = v66;
    *(v67 + 3) = v188;
    swift_storeEnumTagMultiPayload();
    sub_1000AA694(0, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    sub_1000AB210(&qword_100119AA0, sub_1000AA3E8, &protocol conformance descriptor for TupleView<A>);
    sub_1000AADF4();
    v68 = v145;
    sub_1000DAD90();
  }

  else
  {
    v69 = v55[10];
    v123 = v55[12];
    v124 = v69;
    v155 = v69;
    v156 = v62;
    v157 = v123;
    v122 = v62;
    sub_1000AAEEC(v69, v62, v123);
    sub_1000AA52C();
    v70 = v119;
    sub_1000DB1F0();
    sub_1000DB600();
    sub_1000DA7A0();
    v120 = v186;
    v121 = v184;
    v113 = *(&v188 + 1);
    v114 = v188;
    LOBYTE(v155) = 1;
    LOBYTE(v149) = v185;
    v166 = v187;
    v148 = 0;
    v72 = v115;
    v71 = v116;
    v73 = *(v116 + 16);
    v74 = v117;
    v73(v115, v70, v117);
    LOBYTE(v70) = v155;
    v75 = v149;
    v112 = v166;
    v76 = v148;
    v77 = v118;
    *v118 = 0x4010000000000000;
    *(v77 + 8) = v76;
    sub_1000AA41C(0);
    v79 = v78;
    v73(v77 + *(v78 + 48), v72, v74);
    v80 = v77 + *(v79 + 64);
    *v80 = 0;
    *(v80 + 8) = v70;
    v81 = v120;
    *(v80 + 16) = v121;
    *(v80 + 24) = v75;
    *(v80 + 32) = v81;
    *(v80 + 40) = v112;
    v82 = v113;
    *(v80 + 48) = v114;
    *(v80 + 56) = v82;
    v83 = *(v71 + 8);
    v83(v72, v74);
    sub_1000AAF34(v77, v139, sub_1000AA3E8);
    swift_storeEnumTagMultiPayload();
    sub_1000AA694(0, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    sub_1000AB210(&qword_100119AA0, sub_1000AA3E8, &protocol conformance descriptor for TupleView<A>);
    sub_1000AADF4();
    v68 = v145;
    sub_1000DAD90();
    sub_1000AAF9C(v124, v122, v123);
    sub_1000AAFF4(v77, sub_1000AA3E8);
    v83(v119, v74);
  }

  v84 = v147;
  sub_1000AAE84(v144, v147, sub_1000AA160);
  v85 = v191;
  v86 = v190;
  v87 = v189;
  v88 = v194;
  v89 = v193;
  v90 = v192;
  v139 = sub_1000AA368;
  sub_1000AAF34(v68, v146, sub_1000AA368);
  v91 = v140;
  sub_1000AAE84(v84, v140, sub_1000AA160);
  sub_1000AA090(0);
  v93 = v91 + v92[12];
  *v93 = 0;
  *(v93 + 8) = v85;
  v94 = v135;
  *(v93 + 16) = v136;
  *(v93 + 24) = v86;
  *(v93 + 32) = v94;
  *(v93 + 40) = v87;
  v95 = v133;
  *(v93 + 48) = v134;
  *(v93 + 56) = v95;
  v96 = v91 + v92[16];
  *v96 = 0;
  *(v96 + 8) = v88;
  v97 = v128;
  *(v96 + 16) = v129;
  *(v96 + 24) = v89;
  *(v96 + 32) = v97;
  *(v96 + 40) = v90;
  v98 = v126;
  *(v96 + 48) = v127;
  *(v96 + 56) = v98;
  v99 = v91 + v92[20];
  v101 = v131;
  v100 = v132;
  *&v149 = v132;
  *(&v149 + 1) = v131;
  LOBYTE(v150) = v141;
  DWORD1(v150) = *(v168 + 3);
  *(&v150 + 1) = v168[0];
  *(&v150 + 1) = v143;
  *&v151 = v142;
  BYTE8(v151) = 0;
  HIDWORD(v151) = *&v167[3];
  *(&v151 + 9) = *v167;
  v102 = v130;
  v152 = v130;
  v103 = v125;
  *&v153 = v125;
  *(&v153 + 1) = 3;
  v154 = 0;
  v104 = v151;
  v105 = v130;
  v106 = v153;
  *(v99 + 80) = 0;
  *(v99 + 48) = v105;
  *(v99 + 64) = v106;
  v107 = v149;
  *(v99 + 16) = v150;
  *(v99 + 32) = v104;
  *v99 = v107;
  v108 = v91 + v92[24];
  v109 = v146;
  sub_1000AAF34(v146, v108, v139);
  sub_1000AAE84(&v149, &v155, sub_1000AA248);
  sub_1000AAFF4(v145, sub_1000AA368);
  sub_1000AB1B0(v144, sub_1000AA160);
  sub_1000AAFF4(v109, sub_1000AA368);
  v155 = v100;
  v156 = v101;
  LOBYTE(v157) = v141;
  *(&v157 + 1) = v168[0];
  HIDWORD(v157) = *(v168 + 3);
  v158 = v143;
  v159 = v142;
  v160 = 0;
  *v161 = *v167;
  *&v161[3] = *&v167[3];
  v162 = v102;
  v163 = v103;
  v164 = 3;
  v165 = 0;
  sub_1000AB1B0(&v155, sub_1000AA248);
  return sub_1000AB1B0(v147, sub_1000AA160);
}

uint64_t sub_1000A9A40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAA60();
  *a1 = result;
  return result;
}

unint64_t sub_1000A9A98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100108D80;
  v6._object = a2;
  v4 = sub_1000DC170(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000A9AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeadlineViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1000A9C18(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

void sub_1000A9C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000A9C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HeadlineViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1000A9C18(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_1000A9DDC(uint64_t a1)
{
  type metadata accessor for HeadlineViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000A9C18(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A9EAC(uint64_t a1)
{
  if (!qword_100119980)
  {
    sub_1000A9F40(255);
    sub_1000AB210(&qword_100119A28, sub_1000A9F40, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119980);
    }
  }
}

void sub_1000A9F40(uint64_t a1)
{
  if (!qword_100119988)
  {
    sub_1000AB088(255, &qword_100119990, sub_1000A9FC8, sub_1000AA580);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_100119988);
    }
  }
}

void sub_1000A9FC8(uint64_t a1)
{
  if (!qword_100119998)
  {
    sub_1000AA05C(255);
    sub_1000AB210(&qword_100119A00, sub_1000AA05C, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100119998);
    }
  }
}

void sub_1000AA090(uint64_t a1)
{
  if (!qword_1001199A8)
  {
    sub_1000AA160(255);
    sub_1000AA694(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout);
    sub_1000AA694(255, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    sub_1000AA248(255);
    sub_1000AA368(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1001199A8);
    }
  }
}

void sub_1000AA160(uint64_t a1)
{
  if (!qword_1001199B0)
  {
    sub_1000AA2E4(255, &qword_1001199B8, type metadata accessor for HeadlineAttributionView);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001199B0);
    }
  }
}

void sub_1000AA1DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000AAAB4(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000AA248(uint64_t a1)
{
  if (!qword_1001199C8)
  {
    sub_1000AA2E4(255, &qword_1001199D0, sub_100031BB4);
    sub_1000AA1DC(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001199C8);
    }
  }
}

void sub_1000AA2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000AA1DC(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000AA368(uint64_t a1)
{
  if (!qword_1001199D8)
  {
    sub_1000AA3E8(255);
    sub_1000AA694(255, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    v1 = sub_1000DADA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001199D8);
    }
  }
}

void sub_1000AA41C(uint64_t a1)
{
  if (!qword_1001199E8)
  {
    sub_1000AA4AC(255);
    sub_1000AA694(255, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1001199E8);
    }
  }
}

void sub_1000AA4AC(uint64_t a1)
{
  if (!qword_1001199F0)
  {
    sub_1000AA52C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001199F0);
    }
  }
}

unint64_t sub_1000AA52C()
{
  result = qword_1001199F8;
  if (!qword_1001199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001199F8);
  }

  return result;
}

void sub_1000AA580(uint64_t a1)
{
  if (!qword_100119A08)
  {
    sub_1000AA5E0(255);
    v1 = sub_1000DADA0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119A08);
    }
  }
}

void sub_1000AA614(uint64_t a1)
{
  if (!qword_100119A18)
  {
    sub_1000AA694(255, &qword_100119A20, &type metadata for HeadlineThumbnailView, &type metadata for _FlexFrameLayout);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100119A18);
    }
  }
}

void sub_1000AA694(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1000DA930();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000AA6E4(uint64_t a1)
{
  if (!qword_100119A30)
  {
    sub_1000A9EAC(255);
    sub_1000AB210(&qword_100119A38, sub_1000A9EAC, &protocol conformance descriptor for HStack<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100119A30);
    }
  }
}

void sub_1000AA828(uint64_t a1)
{
  if (!qword_100119A58)
  {
    sub_1000A9EAC(255);
    sub_1000AB210(&qword_100119A38, sub_1000A9EAC, &protocol conformance descriptor for HStack<A>);
    v1 = sub_1000DB0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119A58);
    }
  }
}

unint64_t sub_1000AA8BC()
{
  result = qword_100119A68;
  if (!qword_100119A68)
  {
    sub_1000AA7E0(255);
    sub_1000AB210(&qword_100119A70, sub_1000AA828, &protocol conformance descriptor for Link<A>);
    sub_1000AB210(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119A68);
  }

  return result;
}

unint64_t sub_1000AA99C()
{
  result = qword_100119A78;
  if (!qword_100119A78)
  {
    sub_1000AA798(255);
    sub_1000A9EAC(255);
    sub_1000AB210(&qword_100119A38, sub_1000A9EAC, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000AB210(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119A78);
  }

  return result;
}

void sub_1000AAAB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000AAB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1000AAB7C(uint64_t a1, uint64_t a2)
{
  sub_1000AA694(0, &qword_100119A20, &type metadata for HeadlineThumbnailView, &type metadata for _FlexFrameLayout);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AABF8(uint64_t a1)
{
  sub_1000AA694(0, &qword_100119A20, &type metadata for HeadlineThumbnailView, &type metadata for _FlexFrameLayout);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000AAC74(uint64_t a1)
{
  if (!qword_100119A98)
  {
    sub_1000AA3E8(255);
    sub_1000AA694(255, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    v1 = sub_1000DAD80();
    if (!v2)
    {
      atomic_store(v1, &qword_100119A98);
    }
  }
}

double sub_1000AAD4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v6 = a1;
    v5 = vars8;
  }

  return result;
}

uint64_t sub_1000AAD8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAA60();
  *a1 = result;
  return result;
}

unint64_t sub_1000AADF4()
{
  result = qword_100119AA8;
  if (!qword_100119AA8)
  {
    sub_1000AA694(255, &qword_1001199C0, &type metadata for _TextBaselineRelativeSpacer, &type metadata for _FrameLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119AA8);
  }

  return result;
}

uint64_t sub_1000AAE84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1000AAEEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1000AAF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000AAF9C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 != 2)
  {
    sub_1000AAFAC(a1, a2, a3);
  }
}

void sub_1000AAFAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
  }
}

uint64_t sub_1000AAFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000AB088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000AB104(uint64_t a1)
{
  if (!qword_100119AC8)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1000AB210(&unk_100115DF0, type metadata accessor for TraitKey, &unk_1000DE240);
    v1 = sub_1000DB860();
    if (!v2)
    {
      atomic_store(v1, &qword_100119AC8);
    }
  }
}

uint64_t sub_1000AB1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AB210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AB25C()
{
  result = qword_100119AD0;
  if (!qword_100119AD0)
  {
    sub_1000AB320(255, &qword_100119AD8, sub_1000AA7E0, sub_1000AA798, &type metadata accessor for _ConditionalContent);
    sub_1000AA8BC();
    sub_1000AA99C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119AD0);
  }

  return result;
}

void sub_1000AB320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t *Settings.UserPreferences.showCurrency.unsafeMutableAddressor()
{
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  return &static Settings.UserPreferences.showCurrency;
}

uint64_t sub_1000AB3F4()
{
  v0 = sub_1000D9DE0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000D9DF0();
  __chkstk_darwin(v4 - 8);
  sub_1000D9BA0();
  sub_1000D9B90();
  sub_1000D9B80();

  (*(v1 + 104))(v3, enum case for Access.public(_:), v0);
  v6[15] = 0;
  sub_1000AB98C();
  swift_allocObject();
  result = sub_1000D9E10();
  static Settings.UserPreferences.showCurrency = result;
  return result;
}

uint64_t sub_1000AB59C()
{
  v0 = sub_1000D9DE0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D9DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D92E0();
  v9 = __chkstk_darwin(v8);
  (*(v11 + 104))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ChartRange.oneDay(_:), v9);
  (*(v5 + 104))(v7, enum case for Domain.standard(_:), v4);
  (*(v1 + 104))(v3, enum case for Access.public(_:), v0);
  sub_1000AB8D0(0);
  swift_allocObject();
  result = sub_1000D9E10();
  static Settings.UserPreferences.chartDateRange = result;
  return result;
}

uint64_t *Settings.UserPreferences.chartDateRange.unsafeMutableAddressor()
{
  if (qword_100114160 != -1)
  {
    swift_once();
  }

  return &static Settings.UserPreferences.chartDateRange;
}

uint64_t sub_1000AB860(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void sub_1000AB8D0(uint64_t a1)
{
  if (!qword_100119AE0)
  {
    sub_1000D92E0();
    sub_1000AB934();
    v1 = sub_1000D9E00();
    if (!v2)
    {
      atomic_store(v1, &qword_100119AE0);
    }
  }
}

unint64_t sub_1000AB934()
{
  result = qword_100119AE8;
  if (!qword_100119AE8)
  {
    sub_1000D92E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119AE8);
  }

  return result;
}

void sub_1000AB98C()
{
  if (!qword_100119AF0)
  {
    v0 = sub_1000D9E00();
    if (!v1)
    {
      atomic_store(v0, &qword_100119AF0);
    }
  }
}

uint64_t sub_1000AB9F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1000ACF20(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000ABAEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1000ACF20(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for LargeDetailContentView(uint64_t a1)
{
  result = qword_100119B50;
  if (!qword_100119B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000ABC0C(uint64_t a1)
{
  sub_10002AB88(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10002AB88(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000ACF20(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10002AB88(319, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000ABD98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LargeSparklineView(0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AD074(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  __chkstk_darwin(v14);
  v16 = v31 - v15;
  sub_1000ACC5C(0);
  __chkstk_darwin(v17 - 8);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v31 - v21;
  *v22 = sub_1000DAD10();
  *(v22 + 1) = 0;
  v22[16] = 0;
  sub_1000AD0D4(0, &qword_100119C10, &qword_100119BC0, sub_1000ACD10);
  sub_1000AC13C(a1, &v22[*(v23 + 44)]);
  v24 = type metadata accessor for LargeDetailContentView(0);
  sub_1000AD330(a1 + *(v24 + 36), v6, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional, sub_1000ACF20);
  sub_1000DB600();
  sub_1000DA9A0();
  sub_1000AD150(v6, v13, type metadata accessor for LargeSparklineView);
  v25 = &v13[*(v8 + 44)];
  v26 = v31[5];
  *(v25 + 4) = v31[4];
  *(v25 + 5) = v26;
  *(v25 + 6) = v31[6];
  v27 = v31[1];
  *v25 = v31[0];
  *(v25 + 1) = v27;
  v28 = v31[3];
  *(v25 + 2) = v31[2];
  *(v25 + 3) = v28;
  sub_1000AD150(v13, v16, sub_1000AD074);
  sub_1000AD268(v22, v19, sub_1000ACC5C);
  sub_1000AD268(v16, v10, sub_1000AD074);
  sub_1000AD268(v19, a2, sub_1000ACC5C);
  sub_1000ACBEC(0);
  sub_1000AD268(v10, a2 + *(v29 + 48), sub_1000AD074);
  sub_1000AD2D0(v16, sub_1000AD074);
  sub_1000AD2D0(v22, sub_1000ACC5C);
  sub_1000AD2D0(v10, sub_1000AD074);
  return sub_1000AD2D0(v19, sub_1000ACC5C);
}

uint64_t sub_1000AC13C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000ACDE0(0);
  v62 = (v4 - 8);
  __chkstk_darwin(v4 - 8);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v70 = *(a1 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v68 = a1[2];
  v69 = v9;
  v12 = a1[5];
  v67 = a1[4];
  v64 = v12;
  v14 = a1[6];
  v52 = a1[7];
  v13 = v52;
  v16 = a1[8];
  v15 = a1[9];
  v17 = *(a1 + 13);
  v77[0] = *(a1 + 11);
  v77[1] = v17;
  v78[0] = *(a1 + 15);
  *(v78 + 9) = *(a1 + 129);
  v18 = *(a1 + 13);
  v79 = *(a1 + 11);
  v80 = v18;
  v81[0] = *(a1 + 15);
  *(v81 + 9) = *(a1 + 129);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  v66 = v19;
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v54 = v16;
  v55 = v14;
  v53 = v15;
  sub_10002B054(v14, v13, v16, v15);
  sub_10002B054(v14, v13, v16, v15);
  v20 = v10;
  v61 = v10;

  v21 = v11;
  v60 = v11;

  v22 = v64;

  sub_10002B068(v77, v92);
  sub_1000DB600();
  sub_1000DA7A0();
  v58 = v73;
  v59 = v71;
  v56 = v76;
  v57 = v75;
  v84 = 1;
  v83 = v72;
  v82 = v74;
  *v8 = sub_1000DAC80();
  *(v8 + 1) = 0x4038000000000000;
  v8[16] = 0;
  sub_1000AD1D0(0);
  sub_1000AC6A4(a1, &v8[*(v23 + 44)]);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  v26 = &v8[*(v62 + 11)];
  v51 = v8;
  *v26 = v24;
  v26[1] = sub_10002B5D4;
  v26[2] = v25;
  v50 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  LOBYTE(v15) = v84;
  v48 = v83;
  v49 = v82;
  v28 = v63;
  sub_1000AD268(v8, v63, sub_1000ACDE0);
  LOBYTE(v85) = v70;
  *(&v85 + 1) = v69;
  *&v86 = v20;
  *(&v86 + 1) = v68;
  *&v87 = v21;
  *(&v87 + 1) = v67;
  *&v88 = v22;
  v29 = v54;
  v30 = v55;
  v32 = v52;
  v31 = v53;
  *(&v88 + 1) = v55;
  *&v89 = v52;
  *(&v89 + 1) = v54;
  *&v90[0] = v53;
  *(v90 + 8) = v79;
  *(&v90[1] + 8) = v80;
  *(&v90[2] + 8) = v81[0];
  *(&v90[3] + 1) = *(v81 + 9);
  *(&v90[4] + 1) = KeyPath;
  v62 = sub_10002B050;
  *&v91 = sub_10002B050;
  *(&v91 + 1) = v66;
  v33 = v86;
  *a2 = v85;
  *(a2 + 16) = v33;
  v34 = v87;
  v35 = v88;
  v36 = v90[0];
  *(a2 + 64) = v89;
  *(a2 + 80) = v36;
  *(a2 + 32) = v34;
  *(a2 + 48) = v35;
  v37 = v90[1];
  v38 = v90[2];
  v39 = v91;
  *(a2 + 144) = v90[4];
  *(a2 + 160) = v39;
  v40 = v90[3];
  *(a2 + 112) = v38;
  *(a2 + 128) = v40;
  *(a2 + 96) = v37;
  *(a2 + 176) = 0;
  *(a2 + 184) = v15;
  *(a2 + 192) = v59;
  *(a2 + 200) = v48;
  *(a2 + 208) = v58;
  *(a2 + 216) = v49;
  v41 = v56;
  *(a2 + 224) = v57;
  *(a2 + 232) = v41;
  sub_1000ACD10(0);
  v43 = v42;
  sub_1000AD268(v28, a2 + v42[16], sub_1000ACDE0);
  v44 = a2 + v43[20];
  *v44 = 0x4030000000000000;
  *(v44 + 8) = 0;
  v45 = (a2 + v43[24]);
  *v45 = v30;
  v45[1] = v32;
  v45[2] = v29;
  v45[3] = v31;
  v45[4] = v50;
  v45[5] = sub_10002B5D4;
  v45[6] = v27;
  v46 = a2 + v43[28];
  *v46 = 0x4030000000000000;
  *(v46 + 8) = 0;
  sub_10002B15C(&v85, v92);
  sub_10002B054(v30, v32, v29, v31);

  sub_1000AD2D0(v51, sub_1000ACDE0);
  sub_10002B52C(v30, v32, v29, v31);

  sub_1000AD2D0(v28, sub_1000ACDE0);
  v103 = v79;
  v92[0] = v70;
  v93 = v69;
  v94 = v61;
  v95 = v68;
  v96 = v60;
  v97 = v67;
  v98 = v64;
  v99 = v30;
  v100 = v32;
  v101 = v29;
  v102 = v31;
  v104 = v80;
  v105[0] = v81[0];
  *(v105 + 9) = *(v81 + 9);
  v106 = KeyPath;
  v107 = v62;
  v108 = v66;
  return sub_10002B1D0(v92);
}

uint64_t sub_1000AC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000DB570();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v41 - v8;
  v9 = *(a1 + *(type metadata accessor for LargeDetailContentView(0) + 40));
  v10 = *(v9 + 16);
  if (v10 >= 6)
  {
    v11 = 6;
  }

  else
  {
    v11 = *(v9 + 16);
  }

  if (v10 >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = *(v9 + 16);
  }

  swift_unknownObjectRetain_n();
  v13 = v9;
  if (v10 >= 4)
  {
    sub_10002404C(v9, v9 + 32, 0, (2 * v12) | 1);
    v13 = v39;
  }

  v44 = v13;
  if (v11 - v12 >= 3)
  {
    v14 = v12 + 3;
  }

  else
  {
    v14 = v11;
  }

  if (v14 < v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v5;
  v5 = v4;
  v4 = v60;
  v15 = *(v9 + 16);
  swift_unknownObjectRetain();
  v42 = v9;
  if (v15 != v14 - v12)
  {
LABEL_18:
    sub_10002404C(v9, v9 + 32, v12, (2 * v14) | 1);
    v42 = v40;
  }

  sub_1000DB600();
  sub_1000DA9A0();
  v16 = v43;
  sub_1000DB560();
  sub_1000DB600();
  sub_1000DA9A0();
  v17 = *(v10 + 16);
  v18 = v45;
  v17(v45, v16, v5);
  *&v60[0] = v44;
  v19 = v47;
  *(v4 + 8) = v46;
  *(v4 + 24) = v19;
  v20 = v49;
  *(v4 + 40) = v48;
  *(v4 + 56) = v20;
  *(v4 + 104) = v52;
  v21 = v50;
  *(v4 + 88) = v51;
  *(v4 + 72) = v21;
  v22 = v60[0];
  v23 = v60[1];
  v24 = v60[3];
  *(a2 + 32) = v60[2];
  *(a2 + 48) = v24;
  *a2 = v22;
  *(a2 + 16) = v23;
  v25 = v60[4];
  v26 = v60[5];
  v27 = v60[6];
  *(a2 + 112) = v61;
  *(a2 + 80) = v26;
  *(a2 + 96) = v27;
  *(a2 + 64) = v25;
  sub_1000ACF84(0);
  v29 = v28;
  v17((a2 + *(v28 + 48)), v18, v5);
  v30 = a2 + *(v29 + 64);
  v62[0] = v42;
  v31 = v58;
  v4[12] = v57;
  v4[13] = v31;
  v4[14] = v59;
  v32 = v54;
  v4[8] = v53;
  v4[9] = v32;
  v33 = v56;
  v4[10] = v55;
  v4[11] = v33;
  sub_1000AD330(v60, &v71, &qword_100119BF0, &type metadata for QuoteDetailsView, &type metadata for _FlexFrameLayout, sub_1000AA694);
  sub_1000AD330(v62, &v71, &qword_100119BF0, &type metadata for QuoteDetailsView, &type metadata for _FlexFrameLayout, sub_1000AA694);

  v34 = *(v4 + 200);
  *(v30 + 64) = *(v4 + 184);
  *(v30 + 80) = v34;
  *(v30 + 96) = *(v4 + 216);
  *(v30 + 112) = v62[14];
  v35 = *(v4 + 136);
  *v30 = *(v4 + 120);
  *(v30 + 16) = v35;
  v36 = *(v4 + 168);
  *(v30 + 32) = *(v4 + 152);
  *(v30 + 48) = v36;
  v37 = *(v10 + 8);
  v37(v43, v5);
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v64 = v53;
  v65 = v54;
  v63 = v42;
  v66 = v55;
  sub_1000AD3A4(&v63);
  v37(v45, v5);
  v71 = v44;
  v76 = v50;
  v77 = v51;
  v78 = v52;
  v72 = v46;
  v73 = v47;
  v74 = v48;
  v75 = v49;
  return sub_1000AD3A4(&v71);
}

uint64_t sub_1000ACB84@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAD00();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1000AD0D4(0, &qword_100119BA0, &qword_100119BA8, sub_1000ACBEC);
  return sub_1000ABD98(v2, a2 + *(v4 + 44));
}

void sub_1000ACBEC(uint64_t a1)
{
  if (!qword_100119BB0)
  {
    sub_1000ACC5C(255);
    sub_1000AD074(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100119BB0);
    }
  }
}

void sub_1000ACC5C(uint64_t a1)
{
  if (!qword_100119BB8)
  {
    sub_1000ACF20(255, &qword_100119BC0, sub_1000ACD10, &type metadata accessor for TupleView);
    sub_1000AD010(&qword_100119C00, &qword_100119BC0, sub_1000ACD10);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100119BB8);
    }
  }
}

void sub_1000ACD10(uint64_t a1)
{
  if (!qword_100119BC8)
  {
    sub_10002AF50(255, &qword_100115738, &type metadata for SymbolSummaryTicker);
    sub_1000AA694(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout);
    sub_1000ACDE0(255);
    sub_10002AF50(255, &qword_100115788, &type metadata for LargePriceView);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100119BC8);
    }
  }
}

void sub_1000ACDE0(uint64_t a1)
{
  if (!qword_100119BD0)
  {
    sub_1000ACE6C(255);
    sub_10002AB88(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100119BD0);
    }
  }
}

void sub_1000ACE6C(uint64_t a1)
{
  if (!qword_100119BD8)
  {
    sub_1000ACF20(255, &qword_100119BE0, sub_1000ACF84, &type metadata accessor for TupleView);
    sub_1000AD010(&qword_100119BF8, &qword_100119BE0, sub_1000ACF84);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119BD8);
    }
  }
}

void sub_1000ACF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000ACF84(uint64_t a1)
{
  if (!qword_100119BE8)
  {
    sub_1000AA694(255, &qword_100119BF0, &type metadata for QuoteDetailsView, &type metadata for _FlexFrameLayout);
    sub_1000DB570();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100119BE8);
    }
  }
}

uint64_t sub_1000AD010(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000ACF20(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000AD074(uint64_t a1)
{
  if (!qword_100119C08)
  {
    type metadata accessor for LargeSparklineView(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100119C08);
    }
  }
}

void sub_1000AD0D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1000ACF20(255, a3, a4, &type metadata accessor for TupleView);
    v5 = sub_1000DA800();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000AD150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000AD1D0(uint64_t a1)
{
  if (!qword_100119C18)
  {
    sub_1000ACF20(255, &qword_100119BE0, sub_1000ACF84, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100119C18);
    }
  }
}

uint64_t sub_1000AD268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AD2D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AD330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1000AD3A4(uint64_t a1)
{
  sub_1000AA694(0, &qword_100119BF0, &type metadata for QuoteDetailsView, &type metadata for _FlexFrameLayout);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000AD41C()
{
  result = qword_100119C20;
  if (!qword_100119C20)
  {
    sub_1000AD474(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119C20);
  }

  return result;
}

void sub_1000AD474(uint64_t a1)
{
  if (!qword_100119C28)
  {
    sub_1000ACF20(255, &qword_100119BA8, sub_1000ACBEC, &type metadata accessor for TupleView);
    sub_1000AD010(&qword_100119C30, &qword_100119BA8, sub_1000ACBEC);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100119C28);
    }
  }
}

uint64_t sub_1000AD530(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1000D94D0();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_1000D9B40();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = sub_1000D9EB0();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = sub_1000D95E0();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000AD734, 0, 0);
}

uint64_t sub_1000AD734()
{
  v15 = v0;
  v0[33] = OBJC_IVAR____TtC12StocksWidget21TodayViewModelService_logger;

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v3 = 136446466;
    v4 = sub_1000DBB40();
    v6 = sub_1000848C8(v4, v5, &v14);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[12], v0[13], &v14);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "will fetch Today models for symbols: %{public}s, id=%{public}s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[16];
  v10 = v8[5];
  v9 = v8[6];
  sub_100006C7C(v8 + 2, v10);
  v11 = swift_task_alloc();
  v0[34] = v11;
  *v11 = v0;
  v11[1] = sub_1000AD970;
  v12 = v0[32];

  return sub_100002128(v12, v10, v9);
}

uint64_t sub_1000AD970()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);

  v5 = *(v3 + 8);
  *(v1 + 280) = v5;
  *(v1 + 288) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_1000ADAD4, 0, 0);
}

uint64_t sub_1000ADAD4()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_100006C7C((v0[16] + 96), *(v0[16] + 120));
  v4 = enum case for CachePolicy.preferCache(_:);
  v5 = *(v3 + 104);
  v0[37] = v5;
  v0[38] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v0[39] = sub_1000D9880();
  v6 = *(v3 + 8);
  v0[40] = v6;
  v0[41] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1000ADC1C;

  return Promise.resolveAsync()(v0 + 14);
}

uint64_t sub_1000ADC1C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1000AE800;
  }

  else
  {

    v2 = sub_1000ADD38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ADD38()
{
  v50 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = *(v1 + 16);
  if (v3)
  {
    v48 = v0[23];
    v4 = (v1 + 40);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v2 + 16))
      {
        v7 = *(v4 - 1);
        v6 = *v4;

        v8 = sub_100033210(v7, v6);
        if (v9)
        {
          v11 = v0[24];
          v10 = v0[25];
          v12 = v5;
          v13 = v0[22];
          v46 = *(v48 + 72);
          (*(v48 + 16))(v11, *(v2 + 56) + v46 * v8, v13);

          v14 = v11;
          v15 = *(v48 + 32);
          v16 = v13;
          v5 = v12;
          v15(v10, v14, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10007B894(0, v12[2] + 1, 1, v12);
          }

          v18 = v5[2];
          v17 = v5[3];
          v0 = v45;
          if (v18 >= v17 >> 1)
          {
            v5 = sub_10007B894((v17 > 1), v18 + 1, 1, v5);
          }

          v19 = v45[25];
          v20 = v45[22];
          v5[2] = v18 + 1;
          v15(v5 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v18 * v46, v19, v20);
        }

        else
        {
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v0[44] = v5;

  v21 = sub_1000DA350();
  v22 = sub_1000DBDD0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v23 = 136446466;
    v24 = sub_1000DBB40();
    v26 = sub_1000848C8(v24, v25, &v49);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v27 = sub_1000848C8(v0[10], v0[11], &v49);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "did fetch stocks: %{public}s, id=%{public}s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v44 = v0[40];
  v28 = v0[35];
  v29 = v0[32];
  v30 = v0;
  v31 = v0[30];
  v47 = v0[29];
  v32 = v0[28];
  v42 = v0[26];
  v43 = v0[37];
  v33 = v0[16];
  sub_100006C7C(v33 + 7, v33[10]);
  sub_100006C7C(v33 + 2, v33[5]);
  sub_1000D98B0();
  sub_1000D95D0();
  v35 = v34;
  v28(v29, v31);
  *v47 = v35;
  v36 = enum case for CachePolicy.maxAge(_:);
  v43();
  sub_100006C7C(v33 + 2, v33[5]);
  sub_1000D98B0();
  sub_1000D95B0();
  v38 = v37;
  v28(v29, v31);
  *v32 = v38;
  (v43)(v32, v36, v42);
  v30[45] = sub_1000D9890();
  v44(v32, v42);
  v44(v47, v42);
  v39 = swift_task_alloc();
  v30[46] = v39;
  *v39 = v30;
  v39[1] = sub_1000AE240;
  v40 = v30[20];

  return Promise.resolveAsync()(v40);
}

uint64_t sub_1000AE240()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1000AEA68;
  }

  else
  {

    v2 = sub_1000AE35C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AE35C()
{
  v33 = v0;
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  (*(v3 + 32))(v1, v0[20], v4);
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[18];
  v8 = v0[19];
  v10 = &unk_1000DE000;
  v11 = v0[17];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v12 = 136446466;
    sub_1000D94C0();
    sub_1000D9AA0();
    v13 = sub_1000DB850();
    v15 = v14;

    (*(v9 + 8))(v8, v11);
    v16 = sub_1000848C8(v13, v15, v32);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v17 = sub_1000848C8(v0[8], v0[9], v32);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "did fetch quotes: %{public}s, id=%{public}s", v12, 0x16u);
    swift_arrayDestroy();

    v10 = &unk_1000DE000;
  }

  else
  {

    (*(v9 + 8))(v8, v11);
  }

  v18 = v0[44];
  v19 = v0[21];
  v20 = v0[16];
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = sub_100017D4C(sub_1000AFA88, v21, v18);

  v23 = sub_1000DA350();
  v24 = sub_1000DBDD0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v25 = v10[82];
    type metadata accessor for WidgetStock(0);
    v26 = sub_1000DBB40();
    v28 = sub_1000848C8(v26, v27, v32);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v29 = sub_1000848C8(v0[4], v0[5], v32);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "did fetch Today models: %{public}s, id=%{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  (*(v0[18] + 8))(v0[21], v0[17]);

  v30 = v0[1];

  return v30(v22);
}

uint64_t sub_1000AE800()
{
  v11 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v3 = 138543618;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[2], v0[3], &v10);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to fetch Today models with error: %{public}@, id=%{public}s", v3, 0x16u);
    sub_1000AFB68(v4, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v5);
  }

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AEA68()
{
  v23 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v3 = 138543618;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[6], v0[7], v22);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to fetch quotes with error: %{public}@, id=%{public}s", v3, 0x16u);
    sub_1000AFB68(v4, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v5);
  }

  sub_1000D94B0();

  v8 = v0[44];
  v9 = v0[21];
  v10 = v0[16];
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = sub_100017D4C(sub_1000AFA88, v11, v8);

  v13 = sub_1000DA350();
  v14 = sub_1000DBDD0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v15 = 136446466;
    type metadata accessor for WidgetStock(0);
    v16 = sub_1000DBB40();
    v18 = sub_1000848C8(v16, v17, v22);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v19 = sub_1000848C8(v0[4], v0[5], v22);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "did fetch Today models: %{public}s, id=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  (*(v0[18] + 8))(v0[21], v0[17]);

  v20 = v0[1];

  return v20(v12);
}

uint64_t sub_1000AEEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v100 = a3;
  v94 = a2;
  v4 = sub_1000D9AA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v96 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v85 - v8;
  sub_1000AFAA8(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  __chkstk_darwin(v9 - 8);
  v99 = &v85 - v10;
  v11 = sub_1000DA370();
  v92 = *(v11 - 8);
  v93 = v11;
  __chkstk_darwin(v11);
  v91 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1000D9B40();
  v98 = *(v106 - 8);
  __chkstk_darwin(v106);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000D9A50();
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v85 - v17;
  sub_1000AFAA8(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  __chkstk_darwin(v18 - 8);
  v105 = &v85 - v19;
  sub_1000AFAA8(0, &qword_100114B68, &type metadata accessor for Chart);
  __chkstk_darwin(v20 - 8);
  v97 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v104 = &v85 - v23;
  sub_1000AFAA8(0, &qword_100114B70, &type metadata accessor for Quote);
  __chkstk_darwin(v24 - 8);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v87 = &v85 - v28;
  __chkstk_darwin(v29);
  v31 = &v85 - v30;
  v32 = sub_1000D94C0();
  v107 = a1;
  v33 = sub_1000D9B20();
  v35 = *(v32 + 16);
  v103 = v31;
  if (v35)
  {
    v36 = v5;
    v37 = v4;
    v38 = sub_100033210(v33, v34);
    v40 = v39;

    if (v40)
    {
      v41 = *(v32 + 56) + *(v36 + 72) * v38;
      v42 = v103;
      (*(v36 + 16))(v103, v41, v37);

      (*(v36 + 56))(v42, 0, 1, v37);
    }

    else
    {

      (*(v36 + 56))(v103, 1, 1, v37);
    }
  }

  else
  {

    v36 = v5;
    (*(v5 + 56))(v31, 1, 1, v4);
    v37 = v4;
  }

  v43 = sub_1000D94A0();
  v44 = sub_1000D9B20();
  if (*(v43 + 16))
  {
    v46 = sub_100033210(v44, v45);
    v48 = v47;

    if (v48)
    {
      v49 = v104;
      (*(v101 + 16))(v104, *(v43 + 56) + *(v101 + 72) * v46, v102);

      v50 = 0;
      v51 = v98;
      v52 = v36;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v50 = 1;
  v51 = v98;
  v52 = v36;
  v49 = v104;
LABEL_11:
  v53 = v101;
  v54 = v102;
  (*(v101 + 56))(v49, v50, 1, v102);
  v55 = v49;
  v56 = v97;
  sub_1000AFAFC(v55, v97, &qword_100114B68, &type metadata accessor for Chart);
  v57 = (*(v53 + 48))(v56, 1, v54);
  v58 = v106;
  if (v57 == 1)
  {
    v59 = type metadata accessor for PreparedSparkline(0);
    (*(*(v59 - 8) + 56))(v105, 1, 1, v59);
    v60 = v99;
    v61 = v103;
  }

  else
  {
    v62 = *(v53 + 32);
    v86 = v37;
    v63 = v89;
    v62(v89, v56, v54);
    v64 = *(v53 + 16);
    v97 = v52;
    v65 = v88;
    v64(v88, v63, v54);
    v98 = v26;
    v66 = v103;
    v67 = v87;
    sub_1000AFAFC(v103, v87, &qword_100114B70, &type metadata accessor for Quote);
    v68 = v90;
    (*(v51 + 2))(v90, v107, v58);
    v69 = v51;
    v70 = v91;
    (*(v92 + 16))(v91, v94 + OBJC_IVAR____TtC12StocksWidget21TodayViewModelService_logger, v93);
    v71 = v65;
    v72 = v68;
    v61 = v66;
    v52 = v97;
    v26 = v98;
    v73 = v70;
    v51 = v69;
    sub_10006DA88(v71, v67, v72, v73, v105, 0.02);
    v74 = v63;
    v37 = v86;
    (*(v53 + 8))(v74, v54);
    v60 = v99;
  }

  sub_1000AFAFC(v61, v26, &qword_100114B70, &type metadata accessor for Quote);
  v75 = (*(v52 + 48))(v26, 1, v37);
  v76 = v104;
  if (v75 == 1)
  {
    sub_1000AFB68(v104, &qword_100114B68, &type metadata accessor for Chart);
    sub_1000AFB68(v61, &qword_100114B70, &type metadata accessor for Quote);
    v77 = 1;
  }

  else
  {
    v78 = *(v52 + 32);
    v79 = v52;
    v80 = v95;
    v78(v95, v26, v37);
    (*(v79 + 16))(v96, v80, v37);
    sub_1000D9420();
    (*(v79 + 8))(v80, v37);
    sub_1000AFB68(v76, &qword_100114B68, &type metadata accessor for Chart);
    v77 = 0;
    v26 = v61;
  }

  sub_1000AFB68(v26, &qword_100114B70, &type metadata accessor for Quote);
  v81 = sub_1000D9450();
  (*(*(v81 - 8) + 56))(v60, v77, 1, v81);
  v82 = v100;
  (*(v51 + 2))(v100, v107, v106);
  v83 = type metadata accessor for WidgetStock(0);
  sub_1000AFBC4(v60, v82 + *(v83 + 20), &qword_100114B58, &type metadata accessor for WidgetQuote);
  return sub_1000AFBC4(v105, v82 + *(v83 + 24), &qword_100114B60, type metadata accessor for PreparedSparkline);
}

uint64_t sub_1000AF8E0()
{
  sub_100006D0C(v0 + 2);
  sub_100006D0C(v0 + 7);
  sub_100006D0C(v0 + 12);
  v1 = OBJC_IVAR____TtC12StocksWidget21TodayViewModelService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayViewModelService(uint64_t a1)
{
  result = qword_100119C68;
  if (!qword_100119C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AF9E8(uint64_t a1)
{
  result = sub_1000DA370();
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

void sub_1000AFAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000AFAFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000AFAA8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000AFB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000AFAA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000AFBC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000AFAA8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000AFC44()
{
  result = qword_100119D08;
  if (!qword_100119D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D08);
  }

  return result;
}

uint64_t sub_1000AFCB4()
{
  type metadata accessor for BilingualFeedManager();
  v0 = swift_allocObject();
  sub_1000D9CE0();
  sub_100002540();
  swift_allocObject();
  result = sub_1000D9DD0();
  *(v0 + 16) = result;
  static BilingualFeedManager.shared = v0;
  return result;
}

uint64_t *BilingualFeedManager.shared.unsafeMutableAddressor()
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  return &static BilingualFeedManager.shared;
}

uint64_t static BilingualFeedManager.shared.getter()
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static BilingualFeedManager.shared.setter(uint64_t a1)
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static BilingualFeedManager.shared = a1;
}

uint64_t (*static BilingualFeedManager.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1000AFEF0(unsigned __int8 *a1)
{
  v2 = sub_1000D9120();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3CB8(0);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3EFC(0, &qword_100115650, &type metadata accessor for Locale.LanguageCode);
  __chkstk_darwin(v7 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_1000D91A0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000D91C0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v23 = *a1;
  if (v23 == 2)
  {
    sub_1000D9170();
    sub_1000D91B0();
    (*(v20 + 8))(v22, v19);
    sub_1000D9180();
    (*(v16 + 8))(v18, v15);
    sub_1000D9110();
    v25 = v38;
    v24 = v39;
    (*(v38 + 56))(v11, 0, 1, v39);
    v26 = *(v37 + 48);
    sub_1000B3F50(v14, v6, &qword_100115650, &type metadata accessor for Locale.LanguageCode);
    sub_1000B3F50(v11, &v6[v26], &qword_100115650, &type metadata accessor for Locale.LanguageCode);
    v27 = *(v25 + 48);
    if (v27(v6, 1, v24) == 1)
    {
      sub_1000B3D38(v11);
      sub_1000B3D38(v14);
      if (v27(&v6[v26], 1, v24) == 1)
      {
        sub_1000B3D38(v6);
        LOBYTE(v23) = 1;
LABEL_9:
        v32 = v40;
        swift_beginAccess();
        *v32 = v23 & 1;
        return v23 & 1;
      }
    }

    else
    {
      v28 = v36;
      sub_1000B3F50(v6, v36, &qword_100115650, &type metadata accessor for Locale.LanguageCode);
      if (v27(&v6[v26], 1, v24) != 1)
      {
        v29 = &v6[v26];
        v30 = v35;
        (*(v25 + 32))(v35, v29, v24);
        sub_1000B056C(&qword_100119F38, 255, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
        LOBYTE(v23) = sub_1000DB8D0();
        v31 = *(v25 + 8);
        v31(v30, v24);
        sub_1000B3D38(v11);
        sub_1000B3D38(v14);
        v31(v28, v24);
        sub_1000B3D38(v6);
        goto LABEL_9;
      }

      sub_1000B3D38(v11);
      sub_1000B3D38(v14);
      (*(v25 + 8))(v28, v24);
    }

    sub_1000B3DB0(v6);
    LOBYTE(v23) = 0;
    goto LABEL_9;
  }

  return v23 & 1;
}

unint64_t sub_1000B04CC()
{
  result = qword_100119D38;
  if (!qword_100119D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D38);
  }

  return result;
}

uint64_t sub_1000B056C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000B05B4(uint64_t a1)
{
  if (!qword_100119D48)
  {
    sub_1000B0684(255);
    sub_1000B0700();
    sub_1000B056C(&qword_100119D60, 255, sub_1000B0684, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_1000B0754();
    v1 = sub_1000D8D20();
    if (!v2)
    {
      atomic_store(v1, &qword_100119D48);
    }
  }
}

void sub_1000B0684(uint64_t a1)
{
  if (!qword_100119D50)
  {
    sub_1000B0700();
    sub_100011620();
    v1 = sub_1000D8D00();
    if (!v2)
    {
      atomic_store(v1, &qword_100119D50);
    }
  }
}

unint64_t sub_1000B0700()
{
  result = qword_100119D58;
  if (!qword_100119D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D58);
  }

  return result;
}

unint64_t sub_1000B0754()
{
  result = qword_100119D68;
  if (!qword_100119D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D68);
  }

  return result;
}

uint64_t sub_1000B07A8()
{
  sub_1000B3E88(0, &qword_100119DA0, sub_1000B2218, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for _UniqueEntityProvider);
  v1 = v0;
  sub_1000152CC(v0, qword_100128F50);
  sub_100015294(v1, qword_100128F50);
  sub_1000B2218();
  return sub_1000D8BD0();
}

uint64_t sub_1000B0860(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000D8E80();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1000D91C0();
  v1[9] = swift_task_alloc();
  sub_1000DB900();
  v1[10] = swift_task_alloc();
  sub_1000D8E90();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000B09A4, 0, 0);
}

uint64_t sub_1000B09A4()
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = sub_1000B3200();
  v2 = v0[8];
  if (v1)
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    sub_1000B05B4(0);
    sub_1000DB8F0();
    sub_1000D9170();
    (*(v4 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
    sub_1000D8EA0();
    sub_1000B056C(&qword_100119F28, 255, sub_1000B0684, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    v6 = sub_1000D8D10();
    *v5 = 0xD00000000000001ALL;
    v5[1] = 0x80000001000E55F0;
    v5[2] = v6;
  }

  else
  {
    sub_1000B3C64();
    swift_allocError();
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000B0C3C()
{
  v0 = sub_1000D8CC0();
  sub_1000152CC(v0, qword_100128F68);
  sub_100015294(v0, qword_100128F68);
  return sub_1000D8CA0();
}

uint64_t sub_1000B0CA0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  sub_1000B3EFC(0, &qword_1001150B8, &type metadata accessor for DisplayRepresentation.Image);
  __chkstk_darwin(v1 - 8);
  v17 = &v16 - v2;
  v16 = sub_1000D8E80();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D91C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000DB900();
  __chkstk_darwin(v7 - 8);
  sub_1000B3EFC(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1000D8E90();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  sub_1000D8E70();
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  sub_1000D8EA0();
  (*(v12 + 56))(v10, 0, 1, v11);
  v14 = sub_1000D8B40();
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  sub_1000D8E70();
  return sub_1000D8B50();
}

uint64_t sub_1000B1074()
{
  v0 = sub_1000D8E90();
  sub_1000152CC(v0, qword_100128F80);
  sub_100015294(v0, qword_100128F80);
  return sub_1000D8E70();
}

uint64_t sub_1000B10D8()
{
  sub_1000B3EFC(0, &qword_100115108, &type metadata accessor for IntentDescription);
  v1 = v0;
  sub_1000152CC(v0, qword_100128F98);
  v2 = sub_100015294(v1, qword_100128F98);
  sub_1000D8A90();
  v3 = sub_1000D8AA0();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 0, 1, v3);
}

uint64_t sub_1000B11A8()
{
  result = swift_getKeyPath();
  qword_100128FB0 = result;
  return result;
}

uint64_t sub_1000B11D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_1000B3EFC(0, &qword_1001150D8, &type metadata accessor for _GeneratedContentFallback);
  v3[23] = swift_task_alloc();
  sub_1000B3EFC(0, &qword_1001150E0, &type metadata accessor for _GeneratedContentOptions);
  v3[24] = swift_task_alloc();
  sub_1000B3E0C(0);
  v3[25] = swift_task_alloc();
  v4 = sub_1000D8A10();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_1000B3E88(0, &qword_100119F48, sub_1000B2800, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for IntentDialog._CapturedContent);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000B13F0, 0, 0);
}

uint64_t sub_1000B13F0(uint64_t a1)
{
  sub_1000D8A40();
  v2 = *(v1 + 24);
  *(v1 + 40) = *(v1 + 16);
  *(v1 + 48) = v2;
  v3 = swift_task_alloc();
  *(v1 + 264) = v3;
  v4 = sub_1000B0700();
  *v3 = v1;
  v3[1] = sub_1000B14D4;
  v5 = *(v1 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v1 + 40, sub_1000B4024, 0, &type metadata for BilingualFeedSettingEntity, v4);
}

uint64_t sub_1000B14D4()
{

  return _swift_task_switch(sub_1000B15D0, 0, 0);
}

uint64_t sub_1000B15D0(uint64_t a1)
{
  sub_1000D8A40();
  *(v1 + 88) = *(v1 + 64);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *(v1 + 272) = v2;
  *(v1 + 280) = v3;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  sub_1000D8A40();
  *(v1 + 313) = *(v1 + 312);
  if (qword_100114190 != -1)
  {
    swift_once();
  }

  v4 = qword_100128FB0;
  *(v1 + 288) = qword_100128FB0;

  v5 = swift_task_alloc();
  *(v1 + 296) = v5;
  v6 = sub_1000B056C(&qword_100119F28, 255, sub_1000B0684, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v1;
  v5[1] = sub_1000B173C;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 313, v4, &type metadata for Bool, v6);
}

uint64_t sub_1000B173C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1000129C4;
  }

  else
  {
    v2 = sub_1000B18AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B18AC(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[29];
  v4 = v1[30];
  v12 = v1[32];
  v13 = v1[28];
  v15 = v1[27];
  v16 = v1[26];
  v5 = v1[23];
  v6 = v1[24];
  sub_1000D8A40();
  v7 = v1[15];
  v14 = v1[16];
  v1[17] = v1[14];
  v1[18] = v7;
  v1[19] = v14;
  v8 = sub_1000D8C90();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000D8CD0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000B04CC();
  sub_1000B2800();
  sub_1000D89D0();
  (*(v4 + 16))(v2, v12, v3);
  sub_1000D8A00();
  sub_1000D8A20();
  (*(v15 + 8))(v13, v16);

  (*(v4 + 8))(v12, v3);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000B1B28()
{
  sub_1000B3E88(0, &qword_100119F50, sub_1000B2800, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for _NLGRepresentationEntity);
  v1 = v0;
  v2 = *(v0 - 8);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100114190 != -1)
  {
    swift_once();
  }

  sub_1000D8B20();

  sub_1000B2800();
  sub_1000B2934(&qword_100119F58, &qword_100119F50, &type metadata accessor for _NLGRepresentationEntity, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000D8B10();
  return (*(v2 + 8))(v4, v1);
}

uint64_t (*sub_1000B1CD4(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D8A30();
  return sub_100012D58;
}

uint64_t (*sub_1000B1D48(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D8A30();
  return sub_10001555C;
}

uint64_t sub_1000B1DBC()
{
  if (qword_100114190 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000B1E1C()
{
  result = qword_100119D70;
  if (!qword_100119D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D70);
  }

  return result;
}

unint64_t sub_1000B1E74()
{
  result = qword_100119D78;
  if (!qword_100119D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D78);
  }

  return result;
}

uint64_t sub_1000B1F4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114188 != -1)
  {
    swift_once();
  }

  sub_1000B3EFC(0, &qword_100115108, &type metadata accessor for IntentDescription);
  v3 = sub_100015294(v2, qword_100128F98);
  return sub_1000B3F50(v3, a1, &qword_100115108, &type metadata accessor for IntentDescription);
}

uint64_t sub_1000B1FEC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ECF4;

  return sub_1000B11D0(a1, v5, v4);
}

uint64_t sub_1000B2098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B3318();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B20E0()
{
  result = qword_100119D80;
  if (!qword_100119D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D80);
  }

  return result;
}

unint64_t sub_1000B2138()
{
  result = qword_100119D88;
  if (!qword_100119D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D88);
  }

  return result;
}

unint64_t sub_1000B2190()
{
  result = qword_100119D90;
  if (!qword_100119D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119D90);
  }

  return result;
}

unint64_t sub_1000B2218()
{
  result = qword_100119DA8;
  if (!qword_100119DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DA8);
  }

  return result;
}

uint64_t sub_1000B228C()
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  if (sub_1000B3200())
  {
    v1 = *(v0 + 40);

    sub_1000D9DA0();

    *v1 = *(v0 + 48);
  }

  else
  {
    sub_1000B3C64();
    swift_allocError();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B23FC()
{
  if (qword_100114168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  if (sub_1000B3200())
  {
    v1 = *(v0 + 41);

    *(v0 + 40) = v1;

    sub_1000D9DB0();

    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_1000DB910();
    [v2 postNotificationName:v3 object:0 userInfo:0 options:1];
  }

  else
  {
    sub_1000B3C64();
    swift_allocError();
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B25BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114170 != -1)
  {
    swift_once();
  }

  sub_1000B3E88(0, &qword_100119DA0, sub_1000B2218, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for _UniqueEntityProvider);
  v3 = v2;
  v4 = sub_100015294(v2, qword_100128F50);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1000B26D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000B3E88(255, &qword_100119DA0, sub_1000B2218, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for _UniqueEntityProvider);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B2750()
{
  result = qword_100119DB8;
  if (!qword_100119DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DB8);
  }

  return result;
}

unint64_t sub_1000B27A8()
{
  result = qword_100119DC0;
  if (!qword_100119DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DC0);
  }

  return result;
}

unint64_t sub_1000B2800()
{
  result = qword_100119DC8;
  if (!qword_100119DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DC8);
  }

  return result;
}

unint64_t sub_1000B2858()
{
  result = qword_100119DD0;
  if (!qword_100119DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DD0);
  }

  return result;
}

uint64_t sub_1000B2934(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000B3E88(255, a2, sub_1000B2800, &type metadata for BilingualFeedSettingEntity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B2998(uint64_t a1)
{
  v2 = sub_1000B0700();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B29E8()
{
  result = qword_100119DE8;
  if (!qword_100119DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DE8);
  }

  return result;
}

uint64_t sub_1000B2A40(uint64_t a1)
{
  v2 = sub_1000B2858();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000B2A90()
{
  v0 = qword_100119D10;

  return v0;
}

unint64_t sub_1000B2ACC()
{
  result = qword_100119DF0;
  if (!qword_100119DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DF0);
  }

  return result;
}

uint64_t sub_1000B2B20(uint64_t a1)
{
  v2 = sub_1000B0700();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x80000001000E9AA0, a1, v2);
}

uint64_t sub_1000B2B84(uint64_t a1)
{
  sub_1000B3C10();
  v2 = sub_1000D8C30();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000B2BF4()
{
  result = qword_100119DF8;
  if (!qword_100119DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119DF8);
  }

  return result;
}

uint64_t sub_1000B2C48()
{
  v0 = sub_1000D8E90();
  sub_1000152CC(v0, qword_100128FB8);
  sub_100015294(v0, qword_100128FB8);
  return sub_1000D8E70();
}

uint64_t (*sub_1000B2CAC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D8A30();
  return sub_10001555C;
}

unint64_t sub_1000B2D24()
{
  result = qword_100119E00;
  if (!qword_100119E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119E00);
  }

  return result;
}

uint64_t sub_1000B2D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B3B68();
  v5 = sub_1000B3C10();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000B2DE0()
{
  v0 = qword_100119D20;

  return v0;
}

unint64_t sub_1000B2E1C()
{
  result = qword_100119E08;
  if (!qword_100119E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119E08);
  }

  return result;
}

unint64_t sub_1000B2E74()
{
  result = qword_100119E10;
  if (!qword_100119E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119E10);
  }

  return result;
}

uint64_t sub_1000B2F6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B3B68();
  v7 = sub_1000B3BBC();
  v8 = sub_1000B3C10();
  *v5 = v2;
  v5[1] = sub_100014184;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000B3040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B37FC();
  *a1 = result;
  return result;
}

uint64_t sub_1000B3068(uint64_t a1)
{
  v2 = sub_1000B2D24();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_1000B3120(uint64_t a1)
{
  if (!qword_100119EF0)
  {
    sub_1000D8A10();
    sub_1000B2800();
    sub_10001455C();
    v1 = sub_1000D8BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119EF0);
    }
  }
}

uint64_t sub_1000B3200()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 contentStoreFrontID];

  if (!v1)
  {
    sub_1000D9B50();
    goto LABEL_10;
  }

  v2 = sub_1000DB950();
  v4 = v3;

  v5 = sub_1000D9B50();
  if (!v4)
  {
LABEL_10:

    v9 = 0;
    return v9 & 1;
  }

  if (v2 == v5 && v4 == v6)
  {

    v11 = 2;
  }

  else
  {
    v8 = sub_1000DC360();

    v9 = 0;
    v11 = 2;
    if ((v8 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  v9 = sub_1000AFEF0(&v11);
  return v9 & 1;
}

uint64_t sub_1000B3318()
{
  sub_1000B3EFC(0, &qword_1001150C8, &type metadata accessor for Bool.IntentDisplayName);
  __chkstk_darwin(v0 - 8);
  v32 = &v23 - v1;
  v33 = sub_1000D8C20();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3EFC(0, &qword_100115088, &type metadata accessor for IntentDialog);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_1000B3EFC(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1000D8E90();
  v30 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v31 = &type metadata accessor for IntentParameter;
  sub_1000B3E88(0, &qword_100119F00, sub_1000B2800, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for IntentParameter);
  v24 = v16;
  sub_1000D8E70();
  v17 = *(v15 + 56);
  v28 = v15 + 56;
  v29 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1000D8A10();
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v20;
  v20(v4);
  sub_1000B0700();
  v24 = sub_1000D8A70();
  sub_1000B3E88(0, &qword_1001150D0, sub_100011620, &type metadata for Bool, v31);
  sub_1000D8E70();
  v29(v13, 1, 1, v30);
  LOBYTE(v34) = 2;
  v21 = sub_1000DBBD0();
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  v19(v10, 1, 1, v18);
  v26(v4, v27, v33);
  sub_1000D8A80();
  return v24;
}

uint64_t sub_1000B37FC()
{
  v17[0] = sub_1000D8C20();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3EFC(0, &qword_100115088, &type metadata accessor for IntentDialog);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  sub_1000B3EFC(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1000D8E90();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000B3E88(0, &qword_100119F00, sub_1000B2800, &type metadata for BilingualFeedSettingEntity, &type metadata accessor for IntentParameter);
  sub_1000D8E70();
  sub_1000D8E70();
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = sub_1000D8A10();
  memset(&v17[1], 0, 24);
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_1000B0700();
  return sub_1000D8A70();
}

unint64_t sub_1000B3B68()
{
  result = qword_100119F08;
  if (!qword_100119F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F08);
  }

  return result;
}

unint64_t sub_1000B3BBC()
{
  result = qword_100119F10;
  if (!qword_100119F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F10);
  }

  return result;
}

unint64_t sub_1000B3C10()
{
  result = qword_100119F18;
  if (!qword_100119F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F18);
  }

  return result;
}

unint64_t sub_1000B3C64()
{
  result = qword_100119F20;
  if (!qword_100119F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F20);
  }

  return result;
}

void sub_1000B3CB8(uint64_t a1)
{
  if (!qword_100119F30)
  {
    sub_1000B3EFC(255, &qword_100115650, &type metadata accessor for Locale.LanguageCode);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100119F30);
    }
  }
}

uint64_t sub_1000B3D38(uint64_t a1)
{
  sub_1000B3EFC(0, &qword_100115650, &type metadata accessor for Locale.LanguageCode);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B3DB0(uint64_t a1)
{
  sub_1000B3CB8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000B3E0C(uint64_t a1)
{
  if (!qword_100119F40)
  {
    sub_1000B04CC();
    sub_1000B2800();
    v1 = sub_1000D89E0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119F40);
    }
  }
}

void sub_1000B3E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000B3EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000B3F50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000B3EFC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000B3FD0()
{
  result = qword_100119F60;
  if (!qword_100119F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F60);
  }

  return result;
}

uint64_t sub_1000B403C()
{
  v0 = sub_1000DA250();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B47C4(0, &qword_100119F88, &qword_100119F90, &protocol descriptor for BundleAssemblyType);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E08A0;
  v5 = sub_1000D9BC0();
  swift_allocObject();
  v6 = sub_1000D9BB0();
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_1000B477C(&qword_100119F98, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v4 + 32) = v6;
  v7 = sub_1000D9FA0();
  v8 = [objc_allocWithZone(v7) init];
  *(v4 + 96) = v7;
  *(v4 + 104) = &protocol witness table for FrameworkAssembly;
  *(v4 + 72) = v8;
  sub_1000B47C4(0, &qword_100119FA0, &qword_100119FA8, &protocol descriptor for AssemblyType);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000DE440;
  v10 = type metadata accessor for StocksWidgetAssembly();
  v11 = swift_allocObject();
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_1000B477C(&qword_100119FB0, type metadata accessor for StocksWidgetAssembly, &unk_1000E04E8);
  *(v9 + 32) = v11;
  v12 = type metadata accessor for StocksCoreOverridesAssembly();
  v13 = swift_allocObject();
  *(v9 + 96) = v12;
  *(v9 + 104) = sub_1000B477C(&qword_100119FB8, type metadata accessor for StocksCoreOverridesAssembly, &unk_1000E3DDC);
  *(v9 + 72) = v13;
  v14 = type metadata accessor for PersonalizationAssembly();
  v15 = swift_allocObject();
  *(v9 + 136) = v14;
  *(v9 + 144) = sub_1000B477C(&qword_100119FC0, type metadata accessor for PersonalizationAssembly, &unk_1000E19E4);
  *(v9 + 112) = v15;
  sub_1000D9F30();
  swift_allocObject();
  sub_1000D9F20();
  (*(v1 + 104))(v3, enum case for Container.Environment.normal(_:), v0);
  sub_1000DA280();
  swift_allocObject();
  result = sub_1000DA260();
  qword_100128FD0 = result;
  return result;
}

void *sub_1000B4384()
{
  if (qword_1001141A0 != -1)
  {
    swift_once();
  }

  return sub_1000DA270();
}

uint64_t sub_1000B43E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000DBC20();
  *(v1 + 24) = sub_1000DBC10();
  v3 = sub_1000DBBE0();

  return _swift_task_switch(sub_1000B447C, v3, v2);
}

uint64_t sub_1000B447C()
{

  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B451C()
{
  sub_1000B4678(0);

  return TupleWidget.init(_:)(v0, v0);
}

uint64_t sub_1000B455C()
{
  sub_1000D88F0();
  sub_1000D88E0();
  sub_1000D88D0();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000B45F8();
  sub_1000DA790();
  return 0;
}

unint64_t sub_1000B45F8()
{
  result = qword_100119F68;
  if (!qword_100119F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F68);
  }

  return result;
}

void sub_1000B4678(uint64_t a1)
{
  if (!qword_100119F70)
  {
    sub_1000B46E8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100119F70);
    }
  }
}

void sub_1000B46E8(uint64_t a1)
{
  if (!qword_100119F78)
  {
    v2 = sub_1000D99B0();
    v3 = sub_1000B477C(&qword_100119F80, &type metadata accessor for WatchlistWidgetConfigurationIntent, &protocol conformance descriptor for WatchlistWidgetConfigurationIntent);
    v5 = type metadata accessor for OverviewWidget(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100119F78);
    }
  }
}

uint64_t sub_1000B477C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000B47C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100002A50(255, a3, a4);
    v5 = sub_1000DC330();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000B4864(uint64_t a1)
{
  if (!qword_100119FD0)
  {
    sub_1000B4678(255);
    v1 = sub_1000DA6E0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119FD0);
    }
  }
}

uint64_t sub_1000B48BC()
{
  sub_1000B6964(0, &qword_100115090, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000D8E90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1000D8CC0();
  sub_1000152CC(v5, qword_100129000);
  sub_100015294(v5, qword_100129000);
  sub_1000D8E70();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000D8CB0();
}

uint64_t sub_1000B4A48()
{
  sub_1000B6964(0, &qword_1001150B8, &type metadata accessor for DisplayRepresentation.Image, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v40 = v28 - v1;
  sub_1000B6964(0, &qword_100115090, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v38 = v28 - v3;
  v4 = sub_1000D8E80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D91C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000DB900();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000D8E90();
  v29 = v10;
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28[1] = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B6964(0, &qword_10011A090, sub_1000B6AC4, &type metadata accessor for _ContiguousArrayStorage);
  sub_1000B6AC4(0);
  v13 = v12;
  v41 = v12;
  v14 = *(v12 - 8);
  v37 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v39 = v16;
  *(v16 + 16) = xmmword_1000E08A0;
  v17 = *(v13 + 48);
  v35 = v16 + v15;
  v36 = v17;
  *(v16 + v15) = 0;
  sub_1000DB8F0();
  sub_1000D9170();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v5 + 104);
  v32 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v33 = v4;
  v19(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v31 = v19;
  v34 = v5 + 104;
  sub_1000D8EA0();
  sub_1000DB8F0();
  sub_1000D9170();
  v19(v7, v18, v4);
  v20 = v38;
  sub_1000D8EA0();
  v21 = *(v42 + 56);
  v42 += 56;
  v30 = v21;
  v21(v20, 0, 1, v10);
  v28[2] = "link in Settings.";
  v22 = v40;
  sub_1000D8B30();
  v23 = sub_1000D8B40();
  v28[0] = *(*(v23 - 8) + 56);
  (v28[0])(v22, 0, 1, v23);
  v24 = v35;
  sub_1000D8B60();
  v25 = (v24 + v37);
  v37 = *(v41 + 48);
  *v25 = 1;
  sub_1000D8E70();
  sub_1000DB8F0();
  sub_1000D9170();
  v31(v7, v32, v33);
  sub_1000D8EA0();
  v30(v20, 0, 1, v29);
  sub_1000D8B30();
  (v28[0])(v22, 0, 1, v23);
  sub_1000D8B60();
  v26 = sub_1000342D4(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100129018 = v26;
  return result;
}

uint64_t sub_1000B50C8()
{
  sub_1000B6BC4(0, &qword_10011A098, sub_100034624, &type metadata accessor for EnumURLRepresentation);
  v1 = v0;
  sub_1000152CC(v0, qword_100129020);
  sub_100015294(v1, qword_100129020);
  sub_1000B6964(0, &qword_10011A0A0, sub_1000B6B2C, &type metadata accessor for _ContiguousArrayStorage);
  sub_1000B6B2C(0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E08A0;
  v6 = (v5 + v4);
  *v6 = 0;
  sub_100034624();
  sub_1000D8B80();
  v6[v3] = 1;
  sub_1000D8B80();
  sub_100034354(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000D8BA0();
}

uint64_t sub_1000B52E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79636176697270;
  }

  else
  {
    v3 = 1953460082;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79636176697270;
  }

  else
  {
    v5 = 1953460082;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000DC360();
  }

  return v8 & 1;
}

unint64_t sub_1000B5384()
{
  result = qword_100119FE8;
  if (!qword_100119FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119FE8);
  }

  return result;
}

Swift::Int sub_1000B53D8()
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

double sub_1000B5454(uint64_t a1)
{
  sub_1000DB9F0();

  return result;
}

Swift::Int sub_1000B54BC(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

void sub_1000B5534(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100108E00;
  v7._object = v3;
  v5 = sub_1000DC170(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1000B5594(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x79636176697270;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000B55D4()
{
  result = qword_100119FF0;
  if (!qword_100119FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119FF0);
  }

  return result;
}

uint64_t sub_1000B5628@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001141C0 != -1)
  {
    swift_once();
  }

  sub_1000B6BC4(0, &qword_10011A098, sub_100034624, &type metadata accessor for EnumURLRepresentation);
  v3 = v2;
  v4 = sub_100015294(v2, qword_100129020);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1000B5700()
{
  result = qword_100119FF8;
  if (!qword_100119FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119FF8);
  }

  return result;
}

unint64_t sub_1000B5758()
{
  result = qword_10011A000;
  if (!qword_10011A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A000);
  }

  return result;
}

unint64_t sub_1000B57B0()
{
  result = qword_10011A008;
  if (!qword_10011A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A008);
  }

  return result;
}

uint64_t sub_1000B5810(uint64_t a1)
{
  sub_1000B6A70();
  v2 = sub_1000D8B00();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000B5880()
{
  result = qword_10011A010;
  if (!qword_10011A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A010);
  }

  return result;
}

unint64_t sub_1000B58D8()
{
  result = qword_10011A018;
  if (!qword_10011A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A018);
  }

  return result;
}

unint64_t sub_1000B5930()
{
  result = qword_10011A020;
  if (!qword_10011A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A020);
  }

  return result;
}

unint64_t sub_1000B5988()
{
  result = qword_10011A028;
  if (!qword_10011A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A028);
  }

  return result;
}

uint64_t sub_1000B5A14@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100015294(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000B5AE8(uint64_t a1)
{
  v2 = sub_100034624();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B5B38()
{
  result = qword_10011A030;
  if (!qword_10011A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A030);
  }

  return result;
}

unint64_t sub_1000B5B90()
{
  result = qword_10011A038;
  if (!qword_10011A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A038);
  }

  return result;
}

double sub_1000B5BE8()
{
  if (qword_1001141B8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1000B5C44(uint64_t a1)
{
  v2 = sub_1000B5988();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000B5C94()
{
  result = qword_10011A040;
  if (!qword_10011A040)
  {
    sub_1000B5CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A040);
  }

  return result;
}

void sub_1000B5CEC()
{
  if (!qword_10011A048)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A048);
    }
  }
}

unint64_t sub_1000B5D50()
{
  result = qword_10011A050;
  if (!qword_10011A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A050);
  }

  return result;
}

uint64_t sub_1000B5DA8()
{
  v0 = sub_1000D8E80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D91C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DB900();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D8E90();
  sub_1000152CC(v6, qword_100129038);
  sub_100015294(v6, qword_100129038);
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000D8EA0();
}

uint64_t sub_1000B5F88@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000D8A40();
  *a2 = v4;
  return result;
}

void (*sub_1000B5FFC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000D8A30();
  return sub_100013DA4;
}

unint64_t sub_1000B6074()
{
  result = qword_10011A058;
  if (!qword_10011A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A058);
  }

  return result;
}

uint64_t sub_1000B60C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B69C8();
  v5 = sub_1000B6A70();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000B6130()
{
  v0 = qword_100119FD8;

  return v0;
}

unint64_t sub_1000B616C()
{
  result = qword_10011A060;
  if (!qword_10011A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A060);
  }

  return result;
}

unint64_t sub_1000B61C4()
{
  result = qword_10011A068;
  if (!qword_10011A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A068);
  }

  return result;
}

uint64_t sub_1000B62C4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000B69C8();
  v6 = sub_1000B6A1C();
  v7 = sub_1000B6A70();
  *v4 = v2;
  v4[1] = sub_100014184;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000B6390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B6414();
  *a1 = result;
  return result;
}

uint64_t sub_1000B63B8(uint64_t a1)
{
  v2 = sub_1000B6074();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000B6414()
{
  v0 = sub_1000D8C20();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B6964(0, &qword_100115088, &type metadata accessor for IntentDialog, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v23 - v5;
  sub_1000B6964(0, &qword_100115090, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v24 = &v23 - v7;
  v8 = sub_1000D8E80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D91C0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000DB900();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000D8E90();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000B6BC4(0, &qword_10011A070, sub_1000B5930, &type metadata accessor for IntentParameter);
  v23 = v16;
  sub_1000DB8F0();
  sub_1000D9170();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v9 + 104);
  v18(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000D8EA0();
  sub_1000DB8F0();
  sub_1000D9170();
  v18(v11, v17, v8);
  v19 = v24;
  sub_1000D8EA0();
  (*(v15 + 56))(v19, 0, 1, v14);
  v30[0] = 2;
  v20 = sub_1000D8A10();
  v21 = *(*(v20 - 8) + 56);
  v21(v25, 1, 1, v20);
  v21(v26, 1, 1, v20);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100034624();
  return sub_1000D8A60();
}

void sub_1000B6964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000B69C8()
{
  result = qword_10011A078;
  if (!qword_10011A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A078);
  }

  return result;
}

unint64_t sub_1000B6A1C()
{
  result = qword_10011A080;
  if (!qword_10011A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A080);
  }

  return result;
}

unint64_t sub_1000B6A70()
{
  result = qword_10011A088;
  if (!qword_10011A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A088);
  }

  return result;
}

void sub_1000B6AC4(uint64_t a1)
{
  if (!qword_100115D80)
  {
    sub_1000D8B70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115D80);
    }
  }
}

void sub_1000B6B2C(uint64_t a1)
{
  if (!qword_100115D98)
  {
    sub_1000B6BC4(255, &qword_100115DA0, sub_100034624, &type metadata accessor for EnumURLRepresentation.EnumSingleURLRepresentation);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115D98);
    }
  }
}

void sub_1000B6BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for StocksSettingsDeepLinks, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000B6C3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1000B6CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000B6D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[1] = a5;
  sub_1000B71D4(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for StockPriceView(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B7088(0);
  v17 = v16;
  __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000DAFA0();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_10002B054(a1, a2, a3, a4);
  v21 = sub_1000DB000();
  sub_1000B7140(v11);
  KeyPath = swift_getKeyPath();
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v21;
  v23 = v13[8];
  *(v15 + v23) = swift_getKeyPath();
  sub_1000B71D4(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v24 = v15 + v13[9];
  *v24 = KeyPath;
  v24[8] = 0;
  v25 = v13[10];
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  swift_allocObject();

  *(v15 + v25) = sub_1000D9DD0();
  v26 = swift_getKeyPath();
  sub_1000B7240(v15, v19);
  v27 = &v19[*(v17 + 36)];
  *v27 = v26;
  v27[1] = 0x3FB999999999999ALL;
  sub_1000B72A4();
  sub_1000DB230();
  return sub_1000B73CC(v19);
}

void sub_1000B7088(uint64_t a1)
{
  if (!qword_10011A0A8)
  {
    type metadata accessor for StockPriceView(255);
    sub_1000B70F0();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A0A8);
    }
  }
}

void sub_1000B70F0()
{
  if (!qword_100115918)
  {
    v0 = sub_1000DAEA0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115918);
    }
  }
}

uint64_t sub_1000B7140(uint64_t a1)
{
  sub_1000B71D4(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000B71D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000B7240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockPriceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B72A4()
{
  result = qword_10011A0B0;
  if (!qword_10011A0B0)
  {
    sub_1000B7088(255);
    sub_1000B7384(&qword_10011A0B8, type metadata accessor for StockPriceView, &unk_1000DFDE4);
    sub_1000B7384(&qword_100115938, sub_1000B70F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A0B0);
  }

  return result;
}

uint64_t sub_1000B7384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B73CC(uint64_t a1)
{
  sub_1000B7088(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B7428()
{
  sub_1000B7088(255);
  sub_1000B72A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B7480(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000B7494(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B74E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000B753C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B7554(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1000B7584(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1000B75CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B761C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000B7678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000B76F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v39 = sub_1000DA990();
  __chkstk_darwin(v39);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v38 - v8;
  sub_1000B7A38(a1, v3);
  sub_1000B7CBC(0);
  v10 = a3 + *(v9 + 36);
  *v10 = 0x3FF0000000000000;
  *(v10 + 8) = 0;
  sub_1000DB340();
  v11 = sub_1000DB350();

  sub_1000DA6D0();
  v12 = v41[11];
  v13 = v42;
  v14 = v43;
  v15 = v44;
  v16 = v45;
  v17 = v46;
  v18 = sub_1000DB600();
  v20 = v19;
  v21 = sub_1000DB600();
  v23 = v22;
  *&v47 = v12;
  *(&v47 + 1) = __PAIR64__(v14, v13);
  *&v48 = v15;
  *(&v48 + 1) = v16;
  *&v49 = v17;
  *(&v49 + 1) = v11;
  LOWORD(v50) = 256;
  *(&v50 + 1) = v18;
  *&v51 = v20;
  *(&v51 + 1) = v21;
  v52 = v22;
  sub_1000B7D84(0);
  v25 = a3 + *(v24 + 36);
  v26 = v50;
  *(v25 + 32) = v49;
  *(v25 + 48) = v26;
  *(v25 + 64) = v51;
  *(v25 + 80) = v52;
  v27 = v48;
  *v25 = v47;
  *(v25 + 16) = v27;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  v58 = v17;
  v59 = v11;
  v60 = 256;
  v61 = v18;
  v62 = v20;
  v63 = v21;
  v64 = v23;
  sub_1000B8834(&v47, v41, sub_1000B7DB8);
  sub_1000B88F0(&v53, sub_1000B7DB8);
  v28 = *(v39 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_1000DACF0();
  v31 = v38;
  (*(*(v30 - 8) + 104))(&v38[v28], v29, v30);
  __asm { FMOV            V0.2D, #8.0 }

  *v31 = _Q0;
  sub_1000B8834(v31, v40, &type metadata accessor for RoundedRectangle);
  sub_1000B946C(0, &qword_10011A120, sub_1000B7D84, sub_1000B7F30);
  sub_1000B9C58(&qword_10011A130, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  sub_1000DAEE0();
  return sub_1000B88F0(v31, &type metadata accessor for RoundedRectangle);
}

uint64_t sub_1000B7A38(void *a1, char a2)
{
  v4 = type metadata accessor for HeadlineThumbnailImageView(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B7FC4(0, &qword_10011A138, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  if (a1)
  {
    *v6 = swift_getKeyPath();
    sub_1000B8A50(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v10 = v6 + *(v4 + 20);
    *v10 = a1;
    v10[8] = a2 & 1;
    sub_1000B8834(v6, v9, type metadata accessor for HeadlineThumbnailImageView);
    swift_storeEnumTagMultiPayload();
    sub_1000B889C();
    sub_1000B9C58(&qword_10011A148, type metadata accessor for HeadlineThumbnailImageView, &unk_1000E6014);
    v11 = a1;
    sub_1000DAD90();
    return sub_1000B88F0(v6, type metadata accessor for HeadlineThumbnailImageView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000B889C();
    sub_1000B9C58(&qword_10011A148, type metadata accessor for HeadlineThumbnailImageView, &unk_1000E6014);
    return sub_1000DAD90();
  }
}

void sub_1000B7CBC(uint64_t a1)
{
  if (!qword_10011A0E8)
  {
    sub_1000B7FC4(255, &qword_10011A0F0, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A0E8);
    }
  }
}

uint64_t type metadata accessor for HeadlineThumbnailImageView(uint64_t a1)
{
  result = qword_10011A1A8;
  if (!qword_10011A1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B7DB8(uint64_t a1)
{
  if (!qword_10011A100)
  {
    sub_1000B7E4C(255);
    sub_1000B9C58(&qword_10011A118, sub_1000B7E4C, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    v1 = sub_1000DA9B0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A100);
    }
  }
}

void sub_1000B7E4C(uint64_t a1)
{
  if (!qword_10011A108)
  {
    sub_1000B7EDC();
    v1 = sub_1000DA940();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A108);
    }
  }
}

unint64_t sub_1000B7EDC()
{
  result = qword_10011A110;
  if (!qword_10011A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A110);
  }

  return result;
}

void sub_1000B7F30(uint64_t a1)
{
  if (!qword_10011A128)
  {
    sub_1000DA990();
    sub_1000B9C58(&qword_10011A130, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v1 = sub_1000DAEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A128);
    }
  }
}

void sub_1000B7FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HeadlineThumbnailImageView(255);
    v7 = a3(a1, &type metadata for HeadlineThumbnailAudioIndicatorView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1000B802C(uint64_t a1@<X8>)
{
  sub_1000B8A50(0, &qword_10011A250, &type metadata accessor for WidgetAccentedRenderingMode, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v28[-v4];
  v6 = sub_1000DB3D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1 + *(type metadata accessor for HeadlineThumbnailImageView(0) + 20);
  v11 = *v10;
  sub_1000DB3B0();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  sub_1000DB430();

  (*(v7 + 8))(v9, v6);
  sub_1000DB700();
  v12 = sub_1000DB710();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_1000DB420();

  sub_1000B92FC(v5, &qword_10011A250, &type metadata accessor for WidgetAccentedRenderingMode);
  sub_1000B936C(0, v13);
  *(a1 + *(v14 + 36)) = 256;
  v15 = sub_1000DB600();
  v17 = v16;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = *(v10 + 8);
  if (v24 == 1)
  {
    sub_1000DB600();
    sub_1000DA7A0();
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
  }

  v25 = v24 ^ 1;
  v28[8] = v25;
  sub_1000B946C(0, &qword_10011A268, sub_1000B936C, sub_1000B94E0);
  v27 = a1 + *(v26 + 36);
  *v27 = v18;
  *(v27 + 8) = v19;
  *(v27 + 16) = v20;
  *(v27 + 24) = v21;
  *(v27 + 32) = v22;
  *(v27 + 40) = v23;
  *(v27 + 48) = v25;
  *(v27 + 56) = v15;
  *(v27 + 64) = v17;
}

double sub_1000B8338@<D0>(uint64_t a1@<X8>)
{
  sub_1000DB330();
  v2 = sub_1000DB350();

  sub_1000DB330();
  v3 = sub_1000DB350();

  sub_1000B9CBC(0);
  sub_1000B9E3C();
  sub_1000DAEE0();
  *a1 = v2;
  *(a1 + 8) = xmmword_1000E5E70;
  *(a1 + 24) = 0x4000000000000000;
  *(a1 + 32) = v3;
  result = 10.0;
  *(a1 + 40) = xmmword_1000E5E80;
  *(a1 + 56) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000B83EC()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, qword_10011A0C0);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000B84AC(uint64_t a1@<X8>)
{
  v28[0] = a1;
  sub_1000B8A50(0, &qword_10011A210, &type metadata accessor for Image.TemplateRenderingMode, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v3 = v28 - v2;
  sub_1000B946C(0, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v28 - v6;
  sub_1000DB3C0();
  v8 = enum case for Image.TemplateRenderingMode.template(_:);
  v9 = sub_1000DB400();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  v11 = sub_1000DB3E0();

  sub_1000B92FC(v3, &qword_10011A210, &type metadata accessor for Image.TemplateRenderingMode);
  v12 = sub_1000DB340();
  KeyPath = swift_getKeyPath();
  sub_1000DB600();
  sub_1000DA9A0();
  v14 = sub_1000DB600();
  v16 = v15;
  v17 = *(v5 + 44);
  if (qword_1001141D0 != -1)
  {
    swift_once();
  }

  v19 = qword_10011A0D8;
  v18 = unk_10011A0E0;
  sub_100006C7C(qword_10011A0C0, qword_10011A0D8);
  (*(*(v18 + 16) + 128))(v19);
  v28[1] = sub_1000DB300();
  sub_1000DB1F0();

  sub_1000B9074(0);
  v21 = &v7[v17 + *(v20 + 36)];
  *v21 = v14;
  v21[1] = v16;
  v22 = v32;
  *(v7 + 56) = v31;
  v23 = v29;
  *(v7 + 40) = v30;
  *(v7 + 24) = v23;
  v24 = v34;
  *(v7 + 120) = v35;
  v25 = v33;
  *(v7 + 104) = v24;
  *(v7 + 88) = v25;
  *v7 = v11;
  *(v7 + 1) = KeyPath;
  *(v7 + 2) = v12;
  *(v7 + 72) = v22;
  v26 = v28[0];
  sub_1000B9198(v7, v28[0]);
  sub_1000B922C(0);
  *(v26 + *(v27 + 36)) = 256;
}

uint64_t sub_1000B8834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B889C()
{
  result = qword_10011A140;
  if (!qword_10011A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A140);
  }

  return result;
}

uint64_t sub_1000B88F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B8964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B8A50(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1000B8A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000B8AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000B8A50(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1000B8BB0(uint64_t a1)
{
  sub_1000B8A50(319, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000B8C68()
{
  result = qword_10011A1E0;
  if (!qword_10011A1E0)
  {
    sub_1000B946C(255, &qword_10011A120, sub_1000B7D84, sub_1000B7F30);
    sub_1000B8D48();
    sub_1000B9C58(&qword_10011A208, sub_1000B7F30, &protocol conformance descriptor for _ContainerRoundedRectangularShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A1E0);
  }

  return result;
}

unint64_t sub_1000B8D48()
{
  result = qword_10011A1E8;
  if (!qword_10011A1E8)
  {
    sub_1000B7D84(255);
    sub_1000B98C4(&qword_10011A1F0, sub_1000B7CBC, sub_1000B8E30);
    sub_1000B9C58(&qword_10011A200, sub_1000B7DB8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A1E8);
  }

  return result;
}

unint64_t sub_1000B8E30()
{
  result = qword_10011A1F8;
  if (!qword_10011A1F8)
  {
    sub_1000B7FC4(255, &qword_10011A0F0, &type metadata accessor for _ConditionalContent);
    sub_1000B889C();
    sub_1000B9C58(&qword_10011A148, type metadata accessor for HeadlineThumbnailImageView, &unk_1000E6014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A1F8);
  }

  return result;
}

void sub_1000B8F34(uint64_t a1)
{
  if (!qword_10011A220)
  {
    sub_1000B8F94(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A220);
    }
  }
}

void sub_1000B8F94(uint64_t a1)
{
  if (!qword_10011A228)
  {
    sub_1000B8A50(255, &qword_1001158D8, sub_1000B9024, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A228);
    }
  }
}

void sub_1000B9024()
{
  if (!qword_1001158E0)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158E0);
    }
  }
}

void sub_1000B9074(uint64_t a1)
{
  if (!qword_10011A230)
  {
    sub_1000B9110();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1000DAD70();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A230);
    }
  }
}

void sub_1000B9110()
{
  if (!qword_10011A238)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011A238);
    }
  }
}

uint64_t sub_1000B9198(uint64_t a1, uint64_t a2)
{
  sub_1000B946C(0, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000B922C(uint64_t a1)
{
  if (!qword_10011A240)
  {
    sub_1000B946C(255, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
    sub_1000B9DD4(255, &qword_10011A248, sub_1000B7EDC, &type metadata for ContainerRelativeShape, &type metadata accessor for _ClipEffect);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A240);
    }
  }
}

uint64_t sub_1000B92FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000B8A50(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000B936C(uint64_t a1, uint64_t a2)
{
  if (!qword_10011A258)
  {
    sub_1000B940C(255, a2);
    sub_1000B9DD4(255, &qword_10011A248, sub_1000B7EDC, &type metadata for ContainerRelativeShape, &type metadata accessor for _ClipEffect);
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011A258);
    }
  }
}

void sub_1000B940C(uint64_t a1, uint64_t a2)
{
  if (!qword_10011A260)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011A260);
    }
  }
}

void sub_1000B946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1000DA930();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000B94E0(uint64_t a1)
{
  if (!qword_10011A270)
  {
    sub_1000B9544(255);
    sub_1000B95B4();
    v1 = sub_1000DA9B0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A270);
    }
  }
}

void sub_1000B9544(uint64_t a1)
{
  if (!qword_10011A278)
  {
    sub_1000AA694(255, &qword_10011A280, &type metadata for HeadlineThumbnailAudioIndicatorBadgeView, &type metadata for _FrameLayout);
    v1 = sub_1000DBE80();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A278);
    }
  }
}

unint64_t sub_1000B95B4()
{
  result = qword_10011A288;
  if (!qword_10011A288)
  {
    sub_1000B9544(255);
    sub_1000B962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A288);
  }

  return result;
}

unint64_t sub_1000B962C()
{
  result = qword_10011A290;
  if (!qword_10011A290)
  {
    sub_1000AA694(255, &qword_10011A280, &type metadata for HeadlineThumbnailAudioIndicatorBadgeView, &type metadata for _FrameLayout);
    sub_1000B96C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A290);
  }

  return result;
}

unint64_t sub_1000B96C4()
{
  result = qword_10011A298;
  if (!qword_10011A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A298);
  }

  return result;
}

unint64_t sub_1000B972C()
{
  result = qword_10011A2A0;
  if (!qword_10011A2A0)
  {
    sub_1000B922C(255);
    sub_1000B97AC();
    sub_1000B9A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2A0);
  }

  return result;
}

unint64_t sub_1000B97AC()
{
  result = qword_10011A2A8;
  if (!qword_10011A2A8)
  {
    sub_1000B946C(255, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
    sub_1000B98C4(&qword_10011A2B0, sub_1000B8F34, sub_1000B9944);
    sub_1000B9C58(&qword_10011A2C0, sub_1000B9074, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2A8);
  }

  return result;
}

uint64_t sub_1000B98C4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B9944()
{
  result = qword_10011A2B8;
  if (!qword_10011A2B8)
  {
    sub_1000B8F94(255);
    sub_1000B99C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2B8);
  }

  return result;
}

unint64_t sub_1000B99C4()
{
  result = qword_1001159D0;
  if (!qword_1001159D0)
  {
    sub_1000B8A50(255, &qword_1001158D8, sub_1000B9024, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159D0);
  }

  return result;
}

unint64_t sub_1000B9A4C()
{
  result = qword_10011A2C8;
  if (!qword_10011A2C8)
  {
    sub_1000B9DD4(255, &qword_10011A248, sub_1000B7EDC, &type metadata for ContainerRelativeShape, &type metadata accessor for _ClipEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2C8);
  }

  return result;
}

unint64_t sub_1000B9AE0()
{
  result = qword_10011A2D0;
  if (!qword_10011A2D0)
  {
    sub_1000B946C(255, &qword_10011A268, sub_1000B936C, sub_1000B94E0);
    sub_1000B9BC0(v1, v2);
    sub_1000B9C58(&qword_10011A2E0, sub_1000B94E0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2D0);
  }

  return result;
}

unint64_t sub_1000B9BC0(uint64_t a1, uint64_t a2)
{
  result = qword_10011A2D8;
  if (!qword_10011A2D8)
  {
    sub_1000B936C(255, a2);
    swift_getOpaqueTypeConformance2();
    sub_1000B9A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2D8);
  }

  return result;
}

uint64_t sub_1000B9C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000B9CBC(uint64_t a1)
{
  if (!qword_10011A2E8)
  {
    sub_1000B9D5C(255);
    sub_1000B9DD4(255, &qword_10011A300, sub_1000B9E3C, &type metadata for Circle, &type metadata accessor for _ContainerRoundedRectangularShapeModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A2E8);
    }
  }
}

void sub_1000B9D5C(uint64_t a1)
{
  if (!qword_10011A2F0)
  {
    sub_1000AA694(255, &qword_10011A2F8, &type metadata for HeadlineThumbnailAudioIndicatorView, &type metadata for _ShadowEffect);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A2F0);
    }
  }
}

void sub_1000B9DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1000B9E3C()
{
  result = qword_10011A308;
  if (!qword_10011A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A308);
  }

  return result;
}

unint64_t sub_1000B9E94()
{
  result = qword_10011A310;
  if (!qword_10011A310)
  {
    sub_1000B9CBC(255);
    sub_1000B98C4(&qword_10011A318, sub_1000B9D5C, sub_1000B9F4C);
    sub_1000B9FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A310);
  }

  return result;
}

unint64_t sub_1000B9F4C()
{
  result = qword_10011A320;
  if (!qword_10011A320)
  {
    sub_1000AA694(255, &qword_10011A2F8, &type metadata for HeadlineThumbnailAudioIndicatorView, &type metadata for _ShadowEffect);
    sub_1000B889C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A320);
  }

  return result;
}

unint64_t sub_1000B9FE4()
{
  result = qword_10011A328;
  if (!qword_10011A328)
  {
    sub_1000B9DD4(255, &qword_10011A300, sub_1000B9E3C, &type metadata for Circle, &type metadata accessor for _ContainerRoundedRectangularShapeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A328);
  }

  return result;
}

uint64_t sub_1000BA0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000DB310();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  sub_100017740();

  v10 = sub_1000DB170();
  v12 = v11;
  v14 = v13;
  v23 = v15;
  KeyPath = swift_getKeyPath();
  v17 = v14 & 1;
  LOBYTE(v24) = v14 & 1;
  v26 = 0;
  sub_1000DB070();
  sub_1000DAFD0();
  v18 = sub_1000DB010();

  v19 = swift_getKeyPath();
  (*(v7 + 104))(v9, enum case for Color.RGBColorSpace.sRGB(_:), v6);
  sub_1000DB380();
  v20 = sub_1000DB350();

  v21 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v17;
  *(a3 + 24) = v23;
  *(a3 + 32) = 0;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v19;
  *(a3 + 88) = v18;
  *(a3 + 96) = v21;
  *(a3 + 104) = v20;
  *(a3 + 112) = result;
  *(a3 + 120) = 1;
  *(a3 + 128) = 0;
  return result;
}

unint64_t sub_1000BA2CC()
{
  result = qword_10011A330;
  if (!qword_10011A330)
  {
    sub_1000BA36C(255);
    sub_1000BA46C();
    sub_1000A0F80(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A330);
  }

  return result;
}

void sub_1000BA36C(uint64_t a1)
{
  if (!qword_10011A338)
  {
    sub_1000BA3EC(255);
    sub_1000A0D48(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A338);
    }
  }
}

void sub_1000BA3EC(uint64_t a1)
{
  if (!qword_10011A340)
  {
    sub_1000A0C70(255);
    sub_1000A0D48(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A340);
    }
  }
}

unint64_t sub_1000BA46C()
{
  result = qword_10011A348;
  if (!qword_10011A348)
  {
    sub_1000BA3EC(255);
    sub_1000A0EE0();
    sub_1000A0F80(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A348);
  }

  return result;
}

uint64_t sub_1000BA50C()
{
  v1 = sub_1000D9C40();
  v27 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = *(type metadata accessor for WidgetStock(0) + 20);
  v28 = v0;
  v25 = v13;
  sub_1000BBE2C(v0 + v13, v12, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v14 = sub_1000D9450();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_1000BBEF4(v12, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v17 = 0;
    v26 = 1;
  }

  else
  {
    v18 = sub_1000D9440();
    v26 = v19;
    v20 = v12;
    v17 = v18;
    (*(v15 + 8))(v20, v14);
  }

  sub_1000D9B00();
  v21 = v27;
  (*(v27 + 32))(v3, v6, v1);
  v22 = (*(v21 + 88))(v3, v1);
  if (v22 != enum case for StockType.unknown(_:) && v22 != enum case for StockType.currency(_:) && v22 != enum case for StockType.cryptocurrency(_:) && v22 != enum case for StockType.equity(_:) && v22 != enum case for StockType.etf(_:) && v22 != enum case for StockType.futures(_:))
  {
    if (v22 == enum case for StockType.index(_:))
    {
      return v17;
    }

    if (v22 != enum case for StockType.mutualFund(_:))
    {
      (*(v21 + 8))(v3, v1);
    }
  }

  sub_1000BBE2C(v28 + v25, v9, &qword_100114B58, &type metadata accessor for WidgetQuote);
  if (v16(v9, 1, v14) == 1)
  {
    sub_1000BBEF4(v9, &qword_100114B58, &type metadata accessor for WidgetQuote);
  }

  else
  {
    sub_1000D93E0();
    (*(v15 + 8))(v9, v14);
  }

  return v17;
}

uint64_t type metadata accessor for WidgetStock(uint64_t a1)
{
  result = qword_10011A3A8;
  if (!qword_10011A3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9B40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

void sub_1000BAAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000BAB58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000D9B40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

void sub_1000BACDC(uint64_t a1)
{
  sub_1000D9B40();
  if (v1 <= 0x3F)
  {
    sub_1000BAAF0(319, &qword_100114B58, &type metadata accessor for WidgetQuote);
    if (v2 <= 0x3F)
    {
      sub_1000BAAF0(319, &qword_100114B60, type metadata accessor for PreparedSparkline);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000BADB0(void *a1)
{
  sub_1000BC070(0, &qword_10011A400, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  sub_100006C7C(a1, a1[3]);
  sub_1000BBFB0();
  sub_1000DC480();
  v9[15] = 0;
  sub_1000D9B40();
  sub_1000BC0D4(&qword_10011A408, &type metadata accessor for Stock, &protocol conformance descriptor for Stock);
  sub_1000DC2F0();
  if (!v1)
  {
    type metadata accessor for WidgetStock(0);
    v9[14] = 1;
    sub_1000D9450();
    sub_1000BC0D4(&qword_1001171D8, &type metadata accessor for WidgetQuote, &protocol conformance descriptor for WidgetQuote);
    sub_1000DC2A0();
    v9[13] = 2;
    type metadata accessor for PreparedSparkline(0);
    sub_1000BC0D4(&qword_100119270, type metadata accessor for PreparedSparkline, &unk_1000E2848);
    sub_1000DC2A0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000BB038@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  __chkstk_darwin(v3 - 8);
  v24 = &v23 - v4;
  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000D9B40();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC070(0, &qword_10011A3E8, &type metadata accessor for KeyedDecodingContainer);
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for WidgetStock(0);
  __chkstk_darwin(v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_1000BBFB0();
  v29 = v12;
  v16 = v30;
  sub_1000DC470();
  if (v16)
  {
    return sub_100006D0C(a1);
  }

  v30 = a1;
  v17 = v25;
  v33 = 0;
  sub_1000BC0D4(&qword_10011A3F8, &type metadata accessor for Stock, &protocol conformance descriptor for Stock);
  sub_1000DC220();
  v18 = *(v17 + 32);
  v19 = v15;
  v18(v15, v28, v8);
  sub_1000D9450();
  v32 = 1;
  sub_1000BC0D4(&qword_1001171B0, &type metadata accessor for WidgetQuote, &protocol conformance descriptor for WidgetQuote);
  sub_1000DC1D0();
  sub_1000BC004(v7, &v15[*(v13 + 20)], &qword_100114B58, &type metadata accessor for WidgetQuote);
  type metadata accessor for PreparedSparkline(0);
  v31 = 2;
  sub_1000BC0D4(&qword_100119218, type metadata accessor for PreparedSparkline, &unk_1000E2870);
  v20 = v24;
  sub_1000DC1D0();
  v21 = v30;
  (*(v26 + 8))(v29, v27);
  sub_1000BC004(v20, v19 + *(v13 + 24), &qword_100114B60, type metadata accessor for PreparedSparkline);
  sub_100065CB0(v19, v23);
  sub_100006D0C(v21);
  return sub_1000BBF50(v19, type metadata accessor for WidgetStock);
}

uint64_t sub_1000BB5CC()
{
  v1 = 0x65746F7571;
  if (*v0 != 1)
  {
    v1 = 0x6E696C6B72617073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B636F7473;
  }
}

uint64_t sub_1000BB624@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000BC234(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000BB64C(uint64_t a1)
{
  v2 = sub_1000BBFB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BB688(uint64_t a1)
{
  v2 = sub_1000BBFB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1000BB6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  __chkstk_darwin(v7 - 8);
  v47 = (&v43 - v8);
  sub_1000BBDC8(0, &qword_100118460, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v48 = v9;
  __chkstk_darwin(v9);
  v49 = &v43 - v10;
  v11 = sub_1000D9450();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = a1;
  sub_1000BBDC8(0, &qword_100118450, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v20 = v19;
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  if ((sub_1000D9AE0() & 1) == 0)
  {
    return 0;
  }

  v46 = v4;
  v43 = v6;
  v23 = type metadata accessor for WidgetStock(0);
  v24 = *(v23 + 20);
  v25 = *(v20 + 48);
  v44 = v23;
  v45 = v18;
  sub_1000BBE2C(v18 + v24, v22, &qword_100114B58, &type metadata accessor for WidgetQuote);
  sub_1000BBE2C(a2 + v24, &v22[v25], &qword_100114B58, &type metadata accessor for WidgetQuote);
  v26 = *(v12 + 48);
  if (v26(v22, 1, v11) != 1)
  {
    sub_1000BBE2C(v22, v17, &qword_100114B58, &type metadata accessor for WidgetQuote);
    if (v26(&v22[v25], 1, v11) != 1)
    {
      (*(v12 + 32))(v14, &v22[v25], v11);
      sub_1000BC0D4(&qword_100118468, &type metadata accessor for WidgetQuote, &protocol conformance descriptor for WidgetQuote);
      v31 = sub_1000DB8D0();
      v32 = *(v12 + 8);
      v32(v14, v11);
      v32(v17, v11);
      sub_1000BBEF4(v22, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v12 + 8))(v17, v11);
LABEL_7:
    v27 = &qword_100118450;
    v28 = &qword_100114B58;
    v29 = &type metadata accessor for WidgetQuote;
    v30 = v22;
LABEL_15:
    sub_1000BBE98(v30, v27, v28, v29);
    return 0;
  }

  if (v26(&v22[v25], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  sub_1000BBEF4(v22, &qword_100114B58, &type metadata accessor for WidgetQuote);
LABEL_9:
  v33 = *(v44 + 24);
  v34 = v49;
  v35 = *(v48 + 48);
  sub_1000BBE2C(v45 + v33, v49, &qword_100114B60, type metadata accessor for PreparedSparkline);
  sub_1000BBE2C(a2 + v33, v34 + v35, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v36 = *(v50 + 48);
  v37 = v46;
  if (v36(v34, 1, v46) == 1)
  {
    if (v36(v34 + v35, 1, v37) == 1)
    {
      sub_1000BBEF4(v34, &qword_100114B60, type metadata accessor for PreparedSparkline);
      return 1;
    }

    goto LABEL_14;
  }

  v38 = v47;
  sub_1000BBE2C(v34, v47, &qword_100114B60, type metadata accessor for PreparedSparkline);
  if (v36(v34 + v35, 1, v37) == 1)
  {
    sub_1000BBF50(v38, type metadata accessor for PreparedSparkline);
LABEL_14:
    v27 = &qword_100118460;
    v28 = &qword_100114B60;
    v29 = type metadata accessor for PreparedSparkline;
    v30 = v34;
    goto LABEL_15;
  }

  v40 = v34 + v35;
  v41 = v43;
  sub_100081884(v40, v43);
  v42 = sub_100073590(v38, v41);
  sub_1000BBF50(v41, type metadata accessor for PreparedSparkline);
  sub_1000BBF50(v38, type metadata accessor for PreparedSparkline);
  sub_1000BBEF4(v34, &qword_100114B60, type metadata accessor for PreparedSparkline);
  return (v42 & 1) != 0;
}

void sub_1000BBDC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1000BAAF0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1000BBE2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000BAAF0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000BBE98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000BBDC8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1000BBEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000BAAF0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000BBF50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000BBFB0()
{
  result = qword_10011A3F0;
  if (!qword_10011A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A3F0);
  }

  return result;
}

uint64_t sub_1000BC004(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000BAAF0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1000BC070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000BBFB0();
    v7 = a3(a1, &type metadata for WidgetStock.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000BC0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BC130()
{
  result = qword_10011A410;
  if (!qword_10011A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A410);
  }

  return result;
}

unint64_t sub_1000BC188()
{
  result = qword_10011A418;
  if (!qword_10011A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A418);
  }

  return result;
}

unint64_t sub_1000BC1E0()
{
  result = qword_10011A420;
  if (!qword_10011A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A420);
  }

  return result;
}

uint64_t sub_1000BC234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B636F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F7571 && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696C6B72617073 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000BC34C()
{
  v1 = v0;
  *(v0 + 16) = 0;
  sub_10000299C();
  v2 = sub_1000DBE60();
  sub_1000029E8(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000DDD30;
  v4 = sub_1000DBDF0();
  v5 = sub_1000DB950();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100002AAC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_1000DBDD0();
  sub_1000DA320("will listen for shared cache distributed notification, name=%{public}@", 70, 2, &_mh_execute_header, v2, v8, v3);

  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_1000DBDF0();
  v14[4] = sub_1000BC504;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000BC600;
  v14[3] = &unk_10010C658;
  v11 = _Block_copy(v14);
  v12 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  *(v1 + 16) = v12;
  swift_unknownObjectRelease();
  return v1;
}

void sub_1000BC504()
{
  sub_10000299C();
  v0 = sub_1000DBE60();
  sub_1000029E8(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000DDD30;
  v2 = sub_1000DBDF0();
  v3 = sub_1000DB950();
  v5 = v4;

  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100002AAC();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  v6 = sub_1000DBDD0();
  sub_1000DA320("did receive shared cache distributed notification, name=%{public}@", 66, 2, &_mh_execute_header, v0, v6, v1);

  v7 = sub_1000DBE60();
  v8 = sub_1000DBDD0();
  sub_1000DA320("will exit due to shared cache being cleared", 43, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

  exit(0);
}

uint64_t sub_1000BC600(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D8E00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1000D8DF0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000BC6F4()
{
  v1 = v0;
  sub_10000299C();
  v2 = sub_1000DBE60();
  sub_1000029E8(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000DDD30;
  v4 = sub_1000DBDF0();
  v5 = sub_1000DB950();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100002AAC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_1000DBDD0();
  sub_1000DA320("will stop listening for shared cache distributed notification, name=%{public}@", 78, 2, &_mh_execute_header, v2, v8, v3);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000BC7D0()
{
  sub_1000BC6F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BC828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000BC890@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DB330();
  v7 = enum case for Color.RGBColorSpace.sRGB(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  v9 = sub_1000DB380();
  v8(v5, v7, v2);
  v10 = sub_1000DB380();
  sub_1000BCAD0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E08A0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;

  sub_1000DB5B0();
  sub_1000DB680();
  sub_1000DB690();
  sub_1000DA840();
  v12 = v15[1];

  *a1 = v6;
  *(a1 + 8) = v12;
  result = *&v16;
  v14 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v14;
  *(a1 + 48) = 0x3FE0000000000000;
  return result;
}

double sub_1000BCA70@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1000DB600();
  v5 = v4;
  sub_1000BC890(v10);
  result = v11;
  v8 = v10[1];
  v7 = v10[2];
  v9 = v10[0];
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v7;
  *(a2 + 64) = result;
  return result;
}

void sub_1000BCAD0()
{
  if (!qword_100117000)
  {
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_100117000);
    }
  }
}

void sub_1000BCB68(uint64_t a1)
{
  if (!qword_10011A568)
  {
    sub_1000BCBFC(255);
    sub_1000BCD14(qword_10011A588, sub_1000BCBFC, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB550();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A568);
    }
  }
}

void sub_1000BCBFC(uint64_t a1)
{
  if (!qword_10011A570)
  {
    sub_1000BCC54(255);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A570);
    }
  }
}

void sub_1000BCC54(uint64_t a1)
{
  if (!qword_10011A578)
  {
    sub_1000BCCBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011A578);
    }
  }
}

void sub_1000BCCBC()
{
  if (!qword_10011A580)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A580);
    }
  }
}

uint64_t sub_1000BCD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BCD64(uint64_t a1)
{
  sub_1000DBBB0();
  swift_getWitnessTable();
  result = sub_1000DA220();
  if (v2 <= 0x3F)
  {
    result = sub_1000BD068();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BCE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000DBBB0();
  swift_getWitnessTable();
  v6 = sub_1000DA220();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 72));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000BCF58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000DBBB0();
  swift_getWitnessTable();
  result = sub_1000DA220();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000BD068()
{
  result = qword_10011A610;
  if (!qword_10011A610)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10011A610);
  }

  return result;
}

uint64_t sub_1000BD0FC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1000DB660();
}

uint64_t sub_1000BD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000DA740();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1000DA750();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1000DA810();
}

uint64_t sub_1000BD474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000DAD80();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1000DAD90();
}

uint64_t sub_1000BD56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000DAD80();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1000DAD90();
}

uint64_t sub_1000BD664@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000DAE60();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BFFC8(255);
  v8 = *(a1 + 32);
  v52 = *(a1 + 16);
  v53 = v8;
  type metadata accessor for GridCell(255, v52, v8, v9);
  v10 = sub_1000DBBB0();
  v11 = *(a1 + 24);
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  v51 = v11;
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  v12 = sub_1000DB540();
  WitnessTable = swift_getWitnessTable();
  v60 = v10;
  v61 = &type metadata for String;
  v62 = v12;
  v63 = WitnessTable;
  v64 = &protocol witness table for String;
  sub_1000DB5A0();
  sub_1000C05BC(&qword_10011A658, sub_1000BFFC8, &protocol conformance descriptor for _LayoutRoot<A>);
  v14 = sub_1000DA800();
  v49 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = v47 - v15;
  v16 = sub_1000C05BC(&qword_10011A660, sub_1000BFFC8, &protocol conformance descriptor for _LayoutRoot<A>);
  v59 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v57 = v16;
  v58 = v17;
  v18 = swift_getWitnessTable();
  v50 = v14;
  v60 = v14;
  v61 = v18;
  v47[1] = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v47 - v24;
  v26 = *(v3 + *(a1 + 60));
  v27 = *(v3 + *(a1 + 56));
  result = sub_1000DAD00();
  v29 = v3;
  v30 = *(v3 + *(a1 + 52));
  if (v30 < 0)
  {
    __break(1u);
  }

  else
  {
    v47[0] = a2;
    if (v30)
    {
      v31 = result;
      v32 = sub_1000DBB80();
      v33 = v32;
      *(v32 + 16) = v30;
      v34 = 32;
      do
      {
        v35 = v32 + v34;
        *v35 = v31;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        v34 += 24;
        --v30;
      }

      while (v30);
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
    }

    v36 = *(a1 + 40);
    v37 = swift_allocObject();
    v38 = v51;
    v37[2] = v52;
    v37[3] = v38;
    v37[4] = v53;
    v37[5] = v36;
    v37[6] = v26;
    v37[7] = v27;
    v37[8] = v33;
    __chkstk_darwin(v37);
    v47[-6] = v39;
    v47[-5] = v40;
    v47[-4] = v41;
    v47[-3] = v36;
    v47[-2] = v29;
    v42 = v48;
    sub_1000BDC48(sub_1000C0290, &v47[-8], v48, v39, v41);

    v43 = v54;
    sub_1000DAE50();
    v44 = v50;
    sub_1000DB2A0();
    (*(v55 + 8))(v43, v56);
    (*(v49 + 8))(v42, v44);
    v45 = *(v20 + 16);
    v45(v25, v22, OpaqueTypeMetadata2);
    v46 = *(v20 + 8);
    v46(v22, OpaqueTypeMetadata2);
    v45(v47[0], v25, OpaqueTypeMetadata2);
    return (v46)(v25, OpaqueTypeMetadata2);
  }

  return result;
}

uint64_t sub_1000BDC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>, uint64_t x4_0@<X4>, uint64_t x6_0@<X6>)
{
  sub_1000C005C(0);
  v15 = v14;
  type metadata accessor for GridCell(255, x4_0, x6_0, v16);
  sub_1000DBBB0();
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  sub_1000DB540();
  swift_getWitnessTable();
  v17 = sub_1000DB5A0();
  v18 = sub_1000C05BC(&qword_10011A630, sub_1000C005C, &unk_1000DF620);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_1000BD2CC(a1, a2, v15, v17, v18, WitnessTable, a6);
}

uint64_t sub_1000BDE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v47 = a5;
  v49 = a6;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v10 = type metadata accessor for TickerGrid(0, &v55);
  v46 = *(v10 - 8);
  v48 = *(v46 + 64);
  __chkstk_darwin(v10);
  v45 = &KeyPath - v11;
  type metadata accessor for GridCell(255, a2, a4, v12);
  v13 = sub_1000DBBB0();
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  v14 = sub_1000DB540();
  v41 = v14;
  v44 = v13;
  WitnessTable = swift_getWitnessTable();
  v55 = v13;
  v56 = &type metadata for String;
  v57 = v14;
  v58 = WitnessTable;
  v59 = &protocol witness table for String;
  v15 = sub_1000DB5A0();
  v39 = *(v15 - 8);
  __chkstk_darwin(v15);
  v40 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v42 = &KeyPath - v18;
  v19 = a1;
  v20 = *(a1 + *(v10 + 52));
  v21 = *(a1 + *(v10 + 56));
  sub_1000DBBB0();
  swift_getWitnessTable();
  v22 = sub_1000DA220();
  v23 = swift_getWitnessTable();
  sub_1000BE34C(v20, v21, v22, v23, a4);
  v55 = v24;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v25 = a4;
  v26 = v47;
  v53 = v47;
  KeyPath = swift_getKeyPath();
  v28 = v45;
  v27 = v46;
  (*(v46 + 16))(v45, v19, v10);
  v29 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a2;
  *(v30 + 3) = a3;
  *(v30 + 4) = v25;
  *(v30 + 5) = v26;
  (*(v27 + 32))(&v30[v29], v28, v10);
  v37 = swift_getWitnessTable();
  v31 = v40;
  sub_1000DB580();
  v54 = v37;
  swift_getWitnessTable();
  v32 = v39;
  v33 = *(v39 + 16);
  v34 = v42;
  v33(v42, v31, v15);
  v35 = *(v32 + 8);
  v35(v31, v15);
  v33(v49, v34, v15);
  return (v35)(v34, v15);
}

void sub_1000BE34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1000DBE80();
  __chkstk_darwin(v10 - 8);
  v56 = &v44 - v11;
  v13 = type metadata accessor for SpacerOr(0, AssociatedTypeWitness, a5, v12);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v53 = AssociatedTypeWitness;
  v54 = a5;
  v17 = type metadata accessor for GridCell(0, AssociatedTypeWitness, a5, v16);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v20 = *(a3 - 8);
  __chkstk_darwin(v21);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_getAssociatedTypeWitness();
  __chkstk_darwin(v23);
  v46 = a4;
  v49 = *(swift_getAssociatedConformanceWitness() + 8);
  v50 = v23;
  v55 = swift_getAssociatedTypeWitness();
  v25 = __chkstk_darwin(v55);
  v57 = &v44 - v26;
  if (v51 < 1 || (v58 = a2 - 1, a2 < 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v24;
  (*(v20 + 16))(v47, v52, a3, v25);
  v27 = v51 * a2;
  if ((v51 * a2) >> 64 == (v51 * a2) >> 63)
  {
    sub_1000DBD40();
    sub_1000DBA40();
    v59 = sub_1000DBB70();
    sub_1000DBBB0();
    sub_1000DBB50(v27);
    v28 = 0;
    v29 = v55;
    v48 = a2;
    while (!v58)
    {
      swift_getAssociatedConformanceWitness();
      v30 = v28 * a2;
LABEL_13:
      v38 = v56;
      sub_1000DBE90();
      v39 = v38;
      v41 = v53;
      v40 = v54;
      sub_1000C0738(v39, v53, v54, v15);
      v42 = v30 + v58;
      if (__OFADD__(v30, v58))
      {
        goto LABEL_19;
      }

      v36 = __OFSUB__(0, v42);
      v43 = -v42;
      if (v36)
      {
        goto LABEL_20;
      }

      ++v28;
      sub_1000BFF08(v15, a2 == 1, 1, v41, v40, v19, v43);
      sub_1000DBBA0();
      if (v28 == v51)
      {
        (*(v45 + 8))(v57, v29);
        return;
      }
    }

    v30 = v28 * a2;
    if ((v28 * a2) >> 64 != (v28 * a2) >> 63)
    {
      goto LABEL_21;
    }

    v52 = v28;
    swift_getAssociatedConformanceWitness();
    v31 = 0;
    v33 = v53;
    v32 = v54;
    while (1)
    {
      v34 = v56;
      sub_1000DBE90();
      sub_1000C0738(v34, v33, v32, v15);
      v35 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v36 = __OFSUB__(0, v35);
      v37 = -v35;
      if (v36)
      {
        goto LABEL_18;
      }

      sub_1000BFF08(v15, v31 == 0, 0, v33, v32, v19, v37);
      sub_1000DBBA0();
      if (v58 == ++v31)
      {
        a2 = v48;
        v29 = v55;
        v28 = v52;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1000BE89C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000D90C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v2, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v16, v4);
    v18 = sub_1000D90A0();
    (*(v5 + 8))(v7, v4);
    return v18;
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_1000DBF60();
    (*(v9 + 8))(v12, v8);
    return v20;
  }
}

uint64_t sub_1000BEB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22 = a2;
  v23 = a6;
  v24 = a7;
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  v11 = sub_1000DB540();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = v23;
  v29 = a1;
  v30 = v22;
  sub_1000DAD00();
  sub_1000DB530();
  swift_getWitnessTable();
  v18 = *(v12 + 16);
  v18(v17, v14, v11);
  v19 = *(v12 + 8);
  v19(v14, v11);
  v18(v24, v17, v11);
  return (v19)(v17, v11);
}

uint64_t sub_1000BED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v161 = a6;
  v165 = a2;
  v167 = a1;
  v159 = a7;
  sub_1000C0158(0);
  v156 = v10;
  v155 = *(v10 - 8);
  __chkstk_darwin(v10);
  v139 = (&v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100063768(0);
  v153 = v12;
  v137 = *(v12 - 8);
  __chkstk_darwin(v12);
  v135 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C01F8(0);
  __chkstk_darwin(v14 - 8);
  v138 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v133 - v17;
  sub_1000C0124(0);
  v154 = v18;
  __chkstk_darwin(v18);
  v158 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v157 = &v133 - v21;
  v22 = sub_1000DA930();
  v140 = *(v22 - 8);
  __chkstk_darwin(v22);
  v147 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v146 = &v133 - v25;
  v148 = *(a4 - 8);
  __chkstk_darwin(v26);
  v141 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v133 - v29;
  sub_1000893D0();
  v166 = a4;
  v31 = sub_1000DA930();
  v142 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v133 - v32;
  sub_1000DAEB0();
  v164 = v31;
  v34 = sub_1000DA930();
  v145 = *(v34 - 8);
  __chkstk_darwin(v34);
  v144 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v133 - v37;
  __chkstk_darwin(v39);
  v143 = &v133 - v40;
  WitnessTable = *(a3 - 1);
  __chkstk_darwin(v41);
  v43 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v133 - v45;
  v169 = a3;
  v168 = a5;
  v48 = type metadata accessor for SpacerOr(0, a3, a5, v47);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v133 - v50;
  v162 = v34;
  v163 = v22;
  v152 = sub_1000DADA0();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v53);
  v149 = &v133 - v55;
  (*(v49 + 16))(v51, v167, v48, v54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = v140;
    v57 = v169;
    v58 = v166;
    v187 = v169;
    v188 = v166;
    v189 = v168;
    v190 = v161;
    v59 = type metadata accessor for TickerGrid(0, &v187);
    v60 = *(v165 + *(v59 + 72));
    sub_1000DBBB0();
    swift_getWitnessTable();
    sub_1000DA220();
    sub_1000DA1F0();
    v61 = v141;
    v60(v43);
    (*(WitnessTable + 8))(v43, v57);
    v62 = v147;
    v63 = v161;
    sub_1000DB2E0();
    (*(v148 + 8))(v61, v58);
    v186[6] = v63;
    v64 = v63;
    v186[7] = &protocol witness table for _OpacityEffect;
    v65 = v163;
    WitnessTable = swift_getWitnessTable();
    v66 = *(v56 + 16);
    v67 = v146;
    v66(v146, v62, v65);
    v68 = *(v56 + 8);
    v68(v62, v65);
    v66(v62, v67, v65);
    v69 = sub_1000C05BC(&qword_100116BE8, sub_1000893D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    v186[4] = v63;
    v186[5] = v69;
    v70 = swift_getWitnessTable();
    v71 = sub_1000C05BC(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v186[2] = v70;
    v186[3] = v71;
    v72 = v162;
    v73 = swift_getWitnessTable();
    v74 = v149;
    sub_1000BD56C(v62, v72, v65, v73, WitnessTable);
    v68(v62, v65);
    v68(v67, v65);
    v75 = sub_1000D90C0();
    (*(*(v75 - 8) + 8))(v51, v75);
    v77 = v64;
    v78 = v165;
    v79 = v166;
    v80 = v74;
  }

  else
  {
    v81 = *(WitnessTable + 32);
    v82 = v46;
    v83 = v46;
    v134 = v46;
    v84 = v169;
    v81(v83, v51, v169);
    v85 = v166;
    v187 = v84;
    v188 = v166;
    v86 = v168;
    v189 = v168;
    v190 = v161;
    v87 = v161;
    v88 = type metadata accessor for TickerGrid(0, &v187);
    (*(v165 + *(v88 + 72)))(v82);
    v90 = type metadata accessor for GridCell(0, v84, v86, v89);
    sub_10005BAB0(0, *(v167 + *(v90 + 36)), 0, *(v167 + *(v90 + 40)), v85, v87);
    (*(v148 + 8))(v30, v85);
    v91 = sub_1000C05BC(&qword_100116BE8, sub_1000893D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    v174 = v87;
    v92 = v87;
    v175 = v91;
    v93 = v164;
    v94 = swift_getWitnessTable();
    v95 = v38;
    sub_1000DB2C0();
    (*(v142 + 8))(v33, v93);
    v96 = sub_1000C05BC(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v172 = v94;
    v173 = v96;
    v97 = v162;
    v148 = swift_getWitnessTable();
    v98 = v145;
    v99 = *(v145 + 16);
    v100 = v143;
    v99(v143, v95, v97);
    v101 = *(v98 + 8);
    v101(v95, v97);
    v102 = v144;
    v99(v144, v100, v97);
    v170 = v92;
    v171 = &protocol witness table for _OpacityEffect;
    v103 = v163;
    v104 = swift_getWitnessTable();
    v105 = v149;
    sub_1000BD474(v102, v97, v103, v148, v104);
    v101(v102, v97);
    v101(v100, v97);
    (*(WitnessTable + 8))(v134, v169);
    v77 = v92;
    v78 = v165;
    v79 = v166;
    v80 = v105;
  }

  v106 = type metadata accessor for GridCell(0, v169, v168, v76);
  v107 = v157;
  v108 = v153;
  if ((*(v167 + *(v106 + 40)) & 1) != 0 || (v187 = v169, v188 = v79, v189 = v168, v190 = v77, v109 = type metadata accessor for TickerGrid(0, &v187), *(v78 + *(v109 + 68)) != 1))
  {
    v116 = 1;
  }

  else
  {
    if (*(v78 + *(v109 + 64)) == 1)
    {
      v110 = v135;
      v111 = v109;
      sub_1000DB560();
      LOBYTE(v111) = *(v78 + *(v111 + 52)) == 1;
      KeyPath = swift_getKeyPath();
      v113 = v110 + *(v108 + 36);
      *v113 = v111;
      *(v113 + 8) = KeyPath;
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      *(v113 + 32) = 0;
      *(v113 + 40) = 0;
      v114 = v136;
      sub_1000C06D0(v110, v136, sub_100063768);
      v115 = 0;
    }

    else
    {
      v115 = 1;
      v114 = v136;
    }

    (*(v137 + 56))(v114, v115, 1, v108);
    v117 = v138;
    sub_1000C0604(v114, v138, sub_1000C01F8);
    v118 = v139;
    *v139 = 0;
    *(v118 + 8) = 0;
    sub_1000C018C(0);
    v120 = v119;
    sub_1000C0604(v117, v118 + *(v119 + 48), sub_1000C01F8);
    v121 = v118 + *(v120 + 64);
    *v121 = 0;
    *(v121 + 8) = 0;
    sub_1000C066C(v114, sub_1000C01F8);
    sub_1000C066C(v117, sub_1000C01F8);
    sub_1000C06D0(v118, v107, sub_1000C0158);
    v116 = 0;
  }

  (*(v155 + 56))(v107, v116, 1, v156);
  v122 = v151;
  v123 = v150;
  v124 = v152;
  (*(v151 + 16))(v150, v80, v152);
  v187 = v123;
  v125 = v158;
  sub_1000C0604(v107, v158, sub_1000C0124);
  v188 = v125;
  v186[0] = v124;
  v186[1] = v154;
  v126 = sub_1000C05BC(&qword_100116BE8, sub_1000893D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
  v182 = v77;
  v183 = v126;
  v127 = swift_getWitnessTable();
  v128 = sub_1000C05BC(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v180 = v127;
  v181 = v128;
  v129 = swift_getWitnessTable();
  v178 = v77;
  v179 = &protocol witness table for _OpacityEffect;
  v130 = swift_getWitnessTable();
  v176 = v129;
  v177 = v130;
  v184 = swift_getWitnessTable();
  v185 = sub_1000C0514();
  sub_1000BD0FC(&v187, 2uLL, v186);
  sub_1000C066C(v107, sub_1000C0124);
  v131 = *(v122 + 8);
  v131(v80, v124);
  sub_1000C066C(v125, sub_1000C0124);
  return (v131)(v123, v124);
}

int *sub_1000BFF08@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for SpacerOr(0, a4, a5, a4);
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for GridCell(0, a4, a5, v15);
  *(a6 + result[9]) = a2;
  *(a6 + result[10]) = a3;
  *(a6 + result[11]) = a7;
  return result;
}

void sub_1000BFFC8(uint64_t a1)
{
  if (!qword_10011A618)
  {
    sub_1000C005C(255);
    sub_1000C05BC(&qword_10011A630, sub_1000C005C, &unk_1000DF620);
    v1 = sub_1000DA740();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A618);
    }
  }
}

void sub_1000C005C(uint64_t a1)
{
  if (!qword_10011A620)
  {
    v2 = sub_1000C00B8();
    v4 = type metadata accessor for EqualWidthColumnsLayout(a1, &type metadata for VStackLayout, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_10011A620);
    }
  }
}

unint64_t sub_1000C00B8()
{
  result = qword_10011A628;
  if (!qword_10011A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A628);
  }

  return result;
}

void sub_1000C018C(uint64_t a1)
{
  if (!qword_10011A648)
  {
    sub_1000C01F8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011A648);
    }
  }
}

void sub_1000C022C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000C02A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for SpacerOr(0, *(a1 + a2 - 32), *(a1 + a2 - 16), a4);
  result = sub_1000BE89C(v5);
  *a3 = result;
  a3[1] = v7;
  return result;
}

__n128 sub_1000C02EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000C02F8()
{
  v1 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v1;
  v2 = *(type metadata accessor for TickerGrid(0, v6) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  sub_1000DBBB0();
  swift_getWitnessTable();
  v4 = sub_1000DA220();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000C0430@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for TickerGrid(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1000BEB10(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1000C0514()
{
  result = qword_10011A668;
  if (!qword_10011A668)
  {
    sub_1000C0124(255);
    sub_1000C05BC(qword_10011A670, sub_1000C0158, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A668);
  }

  return result;
}

uint64_t sub_1000C05BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C0604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C066C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C06D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}