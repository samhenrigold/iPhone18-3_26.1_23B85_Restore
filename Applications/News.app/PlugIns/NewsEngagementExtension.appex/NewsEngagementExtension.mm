uint64_t sub_1000012E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = &off_100006E10;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "queryNewsPlusEngagement";
      v4 = 0xD000000000000018;
    }

    else
    {
      v5 = "queryLocalNewsEngagement";
      v4 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = "queryNewsAppEngagement";
    }

    else
    {
      v5 = &off_100006E10;
    }
  }

  if (a2 > 1u)
  {
    v2 = "queryNewsPlusEngagement";
    v6 = "queryLocalNewsEngagement";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v6 = "queryNewsAppEngagement";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000016;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000068EC();
  }

  return v10 & 1;
}

Swift::Int sub_100001404()
{
  sub_10000694C();
  sub_10000678C();
  return sub_10000696C();
}

Swift::Int sub_100001480(uint64_t a1)
{
  sub_10000694C();
  sub_10000678C();
  return sub_10000696C();
}

uint64_t sub_1000014D8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C5B0;
  v7._object = v3;
  v5 = sub_10000689C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_10000152C(uint64_t a1@<X8>)
{
  strcpy(a1, "json-payload");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_100001570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10000C5E8;
  v8._object = a2;
  v6 = sub_10000689C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000015D4(uint64_t a1)
{
  v2 = sub_100002410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001610(uint64_t a1)
{
  v2 = sub_100002410();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000164C(void *a1, char a2)
{
  v4 = sub_100002384(&qword_100010370, &qword_100007118);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000023CC(a1, a1[3]);
  sub_100002410();
  sub_10000698C();
  v9[15] = a2;
  sub_100002770();
  sub_1000068BC();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100001794@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100002214(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000017DC()
{
  v1._countAndFlagsBits = 0x646E616D6D6F635BLL;
  v1._object = 0xEA0000000000203ALL;
  sub_10000679C(v1);
  sub_10000687C();
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  sub_10000679C(v2);
  return 0;
}

uint64_t sub_1000018D0(void *a1, char a2)
{
  v4 = sub_100002384(&qword_100010360, &qword_100007110);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000023CC(a1, a1[3]);
  sub_100002674();
  sub_10000698C();
  v9[15] = a2;
  sub_10000271C();
  sub_1000068BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100001A18(void *a1, char a2)
{
  v4 = sub_100002384(&qword_1000103C8, &qword_1000073F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000023CC(a1, a1[3]);
  sub_100002B8C();
  sub_10000698C();
  v9[15] = a2;
  sub_100002C34();
  sub_1000068BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100001B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000068EC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100001C0C(uint64_t a1)
{
  v2 = sub_100002674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001C48(uint64_t a1)
{
  v2 = sub_100002674();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100001C84@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100002504(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100001CCC()
{
  sub_10000694C();
  sub_10000695C(0);
  return sub_10000696C();
}

Swift::Int sub_100001D10(uint64_t a1)
{
  sub_10000694C();
  sub_10000695C(0);
  return sub_10000696C();
}

uint64_t sub_100001D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000068EC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100001DF0(uint64_t a1)
{
  v2 = sub_100002B8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001E2C(uint64_t a1)
{
  v2 = sub_100002B8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100001E68@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100002A1C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100001EBC()
{
  sub_10000694C();
  sub_10000678C();

  return sub_10000696C();
}

uint64_t sub_100001F70(uint64_t a1)
{
  sub_10000678C();
}

Swift::Int sub_100002010(uint64_t a1)
{
  sub_10000694C();
  sub_10000678C();

  return sub_10000696C();
}

unint64_t sub_1000020C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003078(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000020F0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = &off_100006E10;
  v4 = "queryNewsPlusEngagement";
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001CLL;
    v4 = "queryLocalNewsEngagement";
  }

  if (*v1)
  {
    v2 = 0xD000000000000017;
    v3 = "queryNewsAppEngagement";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

void *sub_100002214(void *a1)
{
  v3 = sub_100002384(&qword_100010330, &qword_100007100);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000023CC(a1, a1[3]);
  sub_100002410();
  sub_10000697C();
  if (v1)
  {
    sub_100002464(a1);
  }

  else
  {
    sub_1000024B0();
    sub_1000068AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100002464(a1);
  }

  return v7;
}

uint64_t sub_100002384(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1000023CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002410()
{
  result = qword_100010338;
  if (!qword_100010338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010338);
  }

  return result;
}

uint64_t sub_100002464(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000024B0()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

void *sub_100002504(void *a1)
{
  v3 = sub_100002384(&qword_100010348, &qword_100007108);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000023CC(a1, a1[3]);
  sub_100002674();
  sub_10000697C();
  if (v1)
  {
    sub_100002464(a1);
  }

  else
  {
    sub_1000026C8();
    sub_1000068AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100002464(a1);
  }

  return v7;
}

unint64_t sub_100002674()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010350);
  }

  return result;
}

unint64_t sub_1000026C8()
{
  result = qword_100010358;
  if (!qword_100010358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010358);
  }

  return result;
}

unint64_t sub_10000271C()
{
  result = qword_100010368;
  if (!qword_100010368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010368);
  }

  return result;
}

unint64_t sub_100002770()
{
  result = qword_100010378;
  if (!qword_100010378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010378);
  }

  return result;
}

unint64_t sub_100002810()
{
  result = qword_100010380;
  if (!qword_100010380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010380);
  }

  return result;
}

unint64_t sub_100002868()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010388);
  }

  return result;
}

unint64_t sub_1000028C0()
{
  result = qword_100010390;
  if (!qword_100010390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010390);
  }

  return result;
}

unint64_t sub_100002918()
{
  result = qword_100010398;
  if (!qword_100010398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010398);
  }

  return result;
}

unint64_t sub_100002970()
{
  result = qword_1000103A0;
  if (!qword_1000103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A0);
  }

  return result;
}

unint64_t sub_1000029C8()
{
  result = qword_1000103A8;
  if (!qword_1000103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A8);
  }

  return result;
}

void *sub_100002A1C(void *a1)
{
  v3 = sub_100002384(&qword_1000103B0, &qword_1000073E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000023CC(a1, a1[3]);
  sub_100002B8C();
  sub_10000697C();
  if (v1)
  {
    sub_100002464(a1);
  }

  else
  {
    sub_100002BE0();
    sub_1000068AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100002464(a1);
  }

  return v7;
}

unint64_t sub_100002B8C()
{
  result = qword_1000103B8;
  if (!qword_1000103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103B8);
  }

  return result;
}

unint64_t sub_100002BE0()
{
  result = qword_1000103C0;
  if (!qword_1000103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103C0);
  }

  return result;
}

unint64_t sub_100002C34()
{
  result = qword_1000103D0;
  if (!qword_1000103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D0);
  }

  return result;
}

uint64_t sub_100002C88(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_100002CD8(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100002D64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100002DF4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002EC8()
{
  result = qword_1000103D8;
  if (!qword_1000103D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D8);
  }

  return result;
}

unint64_t sub_100002F20()
{
  result = qword_1000103E0;
  if (!qword_1000103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E0);
  }

  return result;
}

unint64_t sub_100002F78()
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

unint64_t sub_100002FD0()
{
  result = qword_1000103F0;
  if (!qword_1000103F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F0);
  }

  return result;
}

unint64_t sub_100003024()
{
  result = qword_1000103F8;
  if (!qword_1000103F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F8);
  }

  return result;
}

unint64_t sub_100003078(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C620;
  v6._object = a2;
  v4 = sub_10000689C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000030E4(void *a1, uint64_t a2)
{
  v5 = objc_opt_self();
  sub_1000023CC(a1, a1[3]);
  v13 = 0;
  v6 = [v5 dataWithJSONObject:sub_1000068DC() options:a2 error:&v13];
  swift_unknownObjectRelease();
  v7 = v13;
  if (v6)
  {
    v8 = sub_10000668C();
    v10 = v9;

    sub_1000062D4();
    sub_10000660C();
    result = sub_100006328(v8, v10);
    if (!v2)
    {
      return v14;
    }
  }

  else
  {
    v12 = v7;
    sub_10000664C();

    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_100003244()
{
  v1 = *v0;
  sub_10000694C();
  sub_10000695C(v1);
  return sub_10000696C();
}

Swift::Int sub_1000032B8(uint64_t a1)
{
  v2 = *v1;
  sub_10000694C();
  sub_10000695C(v2);
  return sub_10000696C();
}

double sub_100003330@<D0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_1000066CC();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v32 - v5;
  v7 = sub_10000667C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_10000677C();
  v19 = [v17 containerURLForSecurityApplicationGroupIdentifier:v18];

  if (v19)
  {
    sub_10000666C();

    sub_10000665C();
    (*(v8 + 16))(v11, v14, v7);
    sub_1000066BC();
    v21 = v33;
    v20 = v34;
    (*(v33 + 16))(v4, v6, v34);
    v22 = sub_1000066AC();
    swift_allocObject();
    v23 = sub_10000669C();
    v24 = v35;
    v35[3] = v22;
    v24[4] = &protocol witness table for EngagementDataManager;
    *v24 = v23;
    (*(v21 + 8))(v6, v20);
    v25 = *(v8 + 8);
    v25(v14, v7);
    v25(v16, v7);
  }

  else
  {
    v27 = v35;
    if (qword_100010328 != -1)
    {
      swift_once();
    }

    v28 = sub_10000672C();
    sub_100005AAC(v28, qword_1000115A8);
    v29 = sub_10000670C();
    v30 = sub_1000067DC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error while loading container for News. Ensure you have access to the application group folder.", v31, 2u);
    }

    v27[4] = 0;
    result = 0.0;
    *v27 = 0u;
    *(v27 + 1) = 0u;
  }

  return result;
}

uint64_t sub_100003708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100010328 != -1)
  {
    swift_once();
  }

  v12 = sub_10000672C();
  sub_100005AAC(v12, qword_1000115A8);
  v13 = sub_10000670C();
  v14 = sub_1000067EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "PerformRequest: Asking Manager for properties", v15, 2u);
  }

  sub_1000023CC(a1, a1[3]);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;

  sub_1000066DC();
}

uint64_t sub_100003898(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void))
{
  v46 = a2;
  v7 = sub_100002384(&qword_100010540, &qword_100007690);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_1000066FC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000626C(a1, v9, &qword_100010540, &qword_100007690);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000061FC(v9, &qword_100010540, &qword_100007690);
    if (qword_100010328 != -1)
    {
      swift_once();
    }

    v14 = sub_10000672C();
    sub_100005AAC(v14, qword_1000115A8);

    v15 = sub_10000670C();
    v16 = sub_1000067DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a4;
      v19 = swift_slowAlloc();
      v47[0] = v19;
      *v17 = 136315138;
      *(v17 + 4) = sub_100004458(v46, a3, v47);
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get propertyValues for %s, returning empty response", v17, 0xCu);
      sub_100002464(v19);
      a4 = v18;
    }

    v20 = sub_100006030();
    v48 = sub_100002384(&qword_100010548, &qword_100007698);
    v47[0] = v20;
    a4(v47, 0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v21 = sub_1000066EC();
    v46 = sub_100002384(&qword_100010548, &qword_100007698);
    v48 = v46;
    v47[0] = v21;
    sub_100002384(&qword_100010550, &qword_1000076A0);
    inited = swift_initStackObject();
    v45 = xmmword_100007600;
    *(inited + 16) = xmmword_100007600;
    *(inited + 32) = 0x65736E6F70736572;
    *(inited + 40) = 0xE800000000000000;
    sub_1000061A0(v47, inited + 48);
    v23 = sub_100005DFC(inited);
    swift_setDeallocating();
    sub_1000061FC(inited + 32, &qword_100010558, &qword_1000076A8);
    sub_100002384(&qword_100010560, &qword_1000076B0);
    v24 = swift_initStackObject();
    *(v24 + 16) = v45;
    *(v24 + 32) = 0x7961702D6E6F736ALL;
    v25 = v24 + 32;
    *(v24 + 40) = 0xEC00000064616F6CLL;
    *(v24 + 48) = v23;
    v26 = sub_100005F2C(v24);
    swift_setDeallocating();
    sub_1000061FC(v25, &qword_100010568, &qword_1000076B8);
    v27 = sub_100004154(v26);

    sub_100002464(v47);
    if (qword_100010328 != -1)
    {
      swift_once();
    }

    v28 = sub_10000672C();
    sub_100005AAC(v28, qword_1000115A8);
    v29 = sub_10000670C();
    v30 = sub_1000067EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "PerformRequest: Sending value back to AMS", v31, 2u);
    }

    v32 = sub_10000670C();
    v33 = sub_1000067EC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47[0] = v44;
      *v34 = 136315138;
      v35 = sub_10000676C();
      *&v45 = v27;
      v37 = v11;
      v38 = v10;
      v39 = v13;
      v40 = a4;
      v41 = sub_100004458(v35, v36, v47);
      v27 = v45;

      *(v34 + 4) = v41;
      a4 = v40;
      v13 = v39;
      v10 = v38;
      v11 = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Plugin Response = %s", v34, 0xCu);
      sub_100002464(v44);
    }

    v48 = v46;
    v47[0] = v27;
    a4(v47, 0);
    (*(v11 + 8))(v13, v10);
  }

  return sub_1000061FC(v47, &qword_1000104F0, &qword_100007670);
}

uint64_t sub_100003F1C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100003FE0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000626C(a1, v11, &qword_1000104F0, &qword_100007670);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_1000023CC(v11, v12);
  v7 = *(v5 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_1000068DC();
  (*(v7 + 8))(v9, v5);
  sub_100002464(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_10000663C();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

unint64_t sub_100004154(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002384(&qword_100010570, &qword_1000076C0);
    v2 = sub_10000688C();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        sub_100002384(&qword_100010548, &qword_100007698);
        swift_dynamicCast();
        sub_10000625C(&v22, v24);
        sub_10000625C(v24, v25);
        sub_10000625C(v25, &v23);
        result = sub_100004A00(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100002464(v11);
          result = sub_10000625C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_10000625C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_1000043F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100004458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004524(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000061A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002464(v11);
  return v7;
}

unint64_t sub_100004524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004630(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000686C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100004630(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000467C(a1, a2);
  sub_1000047AC(&off_10000C6A0);
  return v3;
}

char *sub_10000467C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004898(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000686C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000067AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004898(v10, 0);
        result = sub_10000685C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000047AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000490C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004898(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002384(&qword_100010588, &unk_1000076D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000490C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002384(&qword_100010588, &unk_1000076D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100004A00(uint64_t a1, uint64_t a2)
{
  sub_10000694C();
  sub_10000678C();
  v4 = sub_10000696C();

  return sub_100004A78(a1, a2, v4);
}

unint64_t sub_100004A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000068EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100004B30(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v63 = a2;
  v5 = sub_10000673C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000680C();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000067FC();
  __chkstk_darwin(v9);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10000675C();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  _Block_copy(a3);
  if (qword_100010328 != -1)
  {
    swift_once();
  }

  v13 = sub_10000672C();
  sub_100005AAC(v13, qword_1000115A8);
  v14 = sub_10000670C();
  v15 = sub_1000067EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received request.", v16, 2u);
  }

  v17 = objc_opt_self();
  sub_1000023CC(a1, a1[3]);
  LODWORD(v17) = [v17 isValidJSONObject:sub_1000068DC()];
  swift_unknownObjectRelease();
  if (!v17)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v76._countAndFlagsBits = 91;
    v76._object = 0xE100000000000000;
    sub_10000679C(v76);
    sub_10000687C();
    v77._countAndFlagsBits = 93;
    v77._object = 0xE100000000000000;
    sub_10000679C(v77);
    v18 = aBlock;

    v19 = sub_10000670C();
    v20 = sub_1000067DC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&aBlock = v22;
      *v21 = 136315138;
      v23 = sub_100004458(v18, *(&v18 + 1), &aBlock);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Invalid input = %s", v21, 0xCu);
      sub_100002464(v22);
    }

    else
    {
    }

    sub_100005AE4();
    aBlock = 0u;
    v70 = 0u;
    swift_allocError();
    *v24 = 2;
LABEL_11:
    sub_10000626C(&aBlock, v74, &qword_1000104F0, &qword_100007670);
    v25 = v75;
    if (v75)
    {
      v26 = sub_1000023CC(v74, v75);
      v27 = *(v25 - 8);
      __chkstk_darwin(v26);
      v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v29);
      v30 = sub_1000068DC();
      (*(v27 + 8))(v29, v25);
      sub_100002464(v74);
    }

    else
    {
      v30 = 0;
    }

    v31 = sub_10000663C();
    (a3)[2](a3, v30, v31);
    swift_unknownObjectRelease();

    sub_1000061FC(&aBlock, &qword_1000104F0, &qword_100007670);
  }

  sub_10000662C();
  swift_allocObject();
  sub_10000661C();
  v32 = sub_1000030E4(a1, 0);

  if (qword_100010320 != -1)
  {
    swift_once();
  }

  sub_10000626C(qword_100011580, &aBlock, &qword_1000104F8, &qword_100007678);
  if (!*(&v70 + 1))
  {
    sub_1000061FC(&aBlock, &qword_1000104F8, &qword_100007678);
    v44 = sub_10000670C();
    v45 = sub_1000067DC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to instantiate manager", v46, 2u);
    }

    sub_100005AE4();
    aBlock = 0u;
    v70 = 0u;
    swift_allocError();
    *v47 = 0;
    goto LABEL_11;
  }

  sub_100005B38(&aBlock, v74);
  v33 = sub_10000670C();
  v34 = sub_1000067EC();
  v35 = os_log_type_enabled(v33, v34);
  v58 = v12;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&aBlock = v37;
    *v36 = 136380675;
    LOBYTE(v73[0]) = v32;
    sub_100005D58();
    v38 = sub_1000068CC();
    v40 = sub_100004458(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "performRequest: receivedRequest = %{private}s", v36, 0xCu);
    sub_100002464(v37);
  }

  if (v32 > 1u)
  {
    if (v32 == 2)
    {
      v41 = "queryNewsPlusEngagement";
      v42 = 0xD000000000000018;
    }

    else
    {
      v41 = "queryLocalNewsEngagement";
      v42 = 0xD00000000000001CLL;
    }
  }

  else if (v32)
  {
    v41 = "queryNewsAppEngagement";
    v42 = 0xD000000000000017;
  }

  else
  {
    v41 = &off_100006E10;
    v42 = 0xD000000000000016;
  }

  v57 = v42;
  v56 = v41 | 0x8000000000000000;
  v55 = sub_100005B50();
  v48 = v64;
  sub_10000674C();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_100005CBC(&qword_100010508, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002384(&qword_100010510, &qword_100007680);
  sub_100005D04(&qword_100010518, &qword_100010510, &qword_100007680);
  sub_10000684C();
  (*(v61 + 104))(v60, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v62);
  v49 = sub_10000682C();
  sub_100005BE4(v74, v73);
  v50 = swift_allocObject();
  sub_100005B38(v73, (v50 + 2));
  v51 = v56;
  v50[7] = v57;
  v50[8] = v51;
  v52 = v58;
  v50[9] = sub_100005AA4;
  v50[10] = v52;
  v50[11] = v63;
  v71 = sub_100005C90;
  v72 = v50;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v70 = sub_100003F1C;
  *(&v70 + 1) = &unk_10000CAD8;
  v53 = _Block_copy(&aBlock);

  sub_10000674C();
  v68 = &_swiftEmptyArrayStorage;
  sub_100005CBC(&qword_100010520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002384(&qword_100010528, &qword_100007688);
  sub_100005D04(&qword_100010530, &qword_100010528, &qword_100007688);
  v54 = v67;
  sub_10000684C();
  sub_10000681C();
  _Block_release(v53);

  (*(v6 + 8))(v54, v5);
  (*(v65 + 8))(v48, v66);
  sub_100002464(v74);
}

uint64_t sub_100005A6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005AAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005AE4()
{
  result = qword_1000104E8;
  if (!qword_1000104E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104E8);
  }

  return result;
}

uint64_t sub_100005B38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100005B50()
{
  result = qword_100010500;
  if (!qword_100010500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010500);
  }

  return result;
}

uint64_t sub_100005B9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005C48()
{
  sub_100002464((v0 + 16));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100005CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005D04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005B9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005D58()
{
  result = qword_100010538;
  if (!qword_100010538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010538);
  }

  return result;
}

uint64_t sub_100005DAC()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100005DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002384(&qword_100010570, &qword_1000076C0);
    v3 = sub_10000688C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000626C(v4, &v13, &qword_100010558, &qword_1000076A8);
      v5 = v13;
      v6 = v14;
      result = sub_100004A00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000625C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100005F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002384(&qword_100010578, &qword_1000076C8);
    v3 = sub_10000688C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004A00(v5, v6);
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

unint64_t sub_100006030()
{
  v7[3] = sub_100002384(&qword_100010548, &qword_100007698);
  v7[0] = &_swiftEmptyDictionarySingleton;
  sub_100002384(&qword_100010550, &qword_1000076A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100007600;
  *(inited + 32) = 0x65736E6F70736572;
  *(inited + 40) = 0xE800000000000000;
  sub_1000061A0(v7, inited + 48);
  v1 = sub_100005DFC(inited);
  swift_setDeallocating();
  sub_1000061FC(inited + 32, &qword_100010558, &qword_1000076A8);
  sub_100002384(&qword_100010560, &qword_1000076B0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_100007600;
  *(v2 + 32) = 0x7961702D6E6F736ALL;
  v3 = v2 + 32;
  *(v2 + 40) = 0xEC00000064616F6CLL;
  *(v2 + 48) = v1;
  v4 = sub_100005F2C(v2);
  swift_setDeallocating();
  sub_1000061FC(v3, &qword_100010568, &qword_1000076B8);
  v5 = sub_100004154(v4);

  sub_100002464(v7);
  return v5;
}

uint64_t sub_1000061A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000061FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002384(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_10000625C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000626C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002384(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000062D4()
{
  result = qword_100010580;
  if (!qword_100010580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010580);
  }

  return result;
}

uint64_t sub_100006328(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsEngagementPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsEngagementPluginError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000064D4()
{
  result = qword_100010590;
  if (!qword_100010590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010590);
  }

  return result;
}

uint64_t sub_100006528()
{
  v0 = sub_10000672C();
  sub_1000065A8(v0, qword_1000115A8);
  sub_100005AAC(v0, qword_1000115A8);
  return sub_10000671C();
}

uint64_t *sub_1000065A8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}