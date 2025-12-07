void sub_10007CBE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000A07A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10007CC30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000A07A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountsRepresentativeMessageSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountsRepresentativeMessageSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007CDE8()
{
  result = qword_1000DA470;
  if (!qword_1000DA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA470);
  }

  return result;
}

unint64_t sub_10007CE40()
{
  result = qword_1000DA478;
  if (!qword_1000DA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA478);
  }

  return result;
}

unint64_t sub_10007CE98()
{
  result = qword_1000DA480;
  if (!qword_1000DA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA480);
  }

  return result;
}

unint64_t sub_10007CEF0()
{
  result = qword_1000DA488;
  if (!qword_1000DA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA488);
  }

  return result;
}

unint64_t sub_10007CF48()
{
  result = qword_1000DA490;
  if (!qword_1000DA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA490);
  }

  return result;
}

unint64_t sub_10007CFA0()
{
  result = qword_1000DA498;
  if (!qword_1000DA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA498);
  }

  return result;
}

uint64_t sub_10007CFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556572616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436572616873 && a2 == 0xEE0072656E696174 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F546572616873 && a2 == 0xEE00617461446E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000A0BD0();

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

uint64_t sub_10007D11C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x666E496572616873 && a2 == 0xE90000000000006FLL || (sub_1000A0BD0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A696C616E6966 && a2 == 0xED00007075746553 || (sub_1000A0BD0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A3800 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A3820 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1000A0BD0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_10007D480()
{
  result = qword_1000DA4A0;
  if (!qword_1000DA4A0)
  {
    sub_10009F900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4A0);
  }

  return result;
}

uint64_t sub_10007D4D8@<X0>(uint64_t a3@<X8>)
{
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10007D6D8();
  sub_10009F250();
  if (v3)
  {
  }

  v19 = a3;

  v6[8] = v16;
  v6[9] = v17;
  v7 = v18;
  v6[4] = v12;
  v6[5] = v13;
  v6[6] = v14;
  v6[7] = v15;
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  sub_100005750(*(&v9 + 1), v10);
  sub_100005750(*(&v12 + 1), v13);

  sub_100005750(v16, *(&v16 + 1));
  sub_10009F8F0();
  return sub_100041728(v6);
}

unint64_t sub_10007D6D8()
{
  result = qword_1000DA4A8;
  if (!qword_1000DA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4A8);
  }

  return result;
}

Swift::Int sub_10007D72C()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10007D7A0(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10007D7F4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD8E0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10007D884@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD918;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10007D8DC(uint64_t a1)
{
  v2 = sub_10007DA94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D918(uint64_t a1)
{
  v2 = sub_10007DA94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedETASessionSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000017BC(&qword_1000DA4B0, &qword_1000B15F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CE0();
  sub_1000A0B30();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10007DA94()
{
  result = qword_1000DA4B8;
  if (!qword_1000DA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4B8);
  }

  return result;
}

void *SharedETASessionSchema.init(from:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA4C0, &qword_1000B15F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CD0();
  if (!v1)
  {
    v7 = sub_1000A09D0();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002308(a1);
  return v7;
}

uint64_t sub_10007DC44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DA4C0, &qword_1000B15F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v9 = sub_1000A09D0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100002308(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_10007DDC0(void *a1)
{
  v2 = sub_1000017BC(&qword_1000DA4B0, &qword_1000B15F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CE0();
  sub_1000A0B30();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10007DF20()
{
  result = qword_1000DA4C8;
  if (!qword_1000DA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4C8);
  }

  return result;
}

unint64_t sub_10007DF78()
{
  result = qword_1000DA4D0;
  if (!qword_1000DA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4D0);
  }

  return result;
}

unint64_t sub_10007DFD0()
{
  result = qword_1000DA4D8;
  if (!qword_1000DA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4D8);
  }

  return result;
}

Swift::Int sub_10007E030()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10007E144(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10007E244(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10007E354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007E8A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10007E384(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0079654B726562;
  v4 = 0x6D754E6B6E756863;
  v5 = 0x80000001000A2560;
  v6 = 0xD000000000000011;
  v7 = 0xEF79654B44497075;
  v8 = 0x6F72476B6E756863;
  if (v2 != 3)
  {
    v8 = 0x7461446B6E756863;
    v7 = 0xEC00000079654B61;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646E496B6E756863;
    v3 = 0xED000079654B7865;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10007E454()
{
  v1 = *v0;
  v2 = 0x6D754E6B6E756863;
  v3 = 0xD000000000000011;
  v4 = 0x6F72476B6E756863;
  if (v1 != 3)
  {
    v4 = 0x7461446B6E756863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E496B6E756863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10007E520@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007E8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007E548(uint64_t a1)
{
  v2 = sub_10007E7F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E584(uint64_t a1)
{
  v2 = sub_10007E7F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedETATripSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA4E0, &qword_1000B17E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_10007E7F8();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000A0B70();
    LOBYTE(v12) = 2;
    sub_1000A0B30();
    LOBYTE(v12) = 3;
    sub_1000A0B30();
    v12 = *(v3 + 48);
    v13 = v12;
    v11[23] = 4;
    sub_1000421FC(&v13, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10007E7F8()
{
  result = qword_1000DA4E8;
  if (!qword_1000DA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4E8);
  }

  return result;
}

double SharedETATripSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10007E8F4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_10007E8A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD950;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10007E8F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DA508, &unk_1000B1A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10007E7F8();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v28[0]) = 0;
  v9 = sub_1000A0A10();
  LOBYTE(v28[0]) = 1;
  v10 = sub_1000A0A10();
  LOBYTE(v28[0]) = 2;
  *&v23 = sub_1000A09D0();
  *(&v23 + 1) = v11;
  LOBYTE(v28[0]) = 3;
  v12 = sub_1000A09D0();
  *(&v22 + 1) = v13;
  *&v22 = v12;
  v34 = 4;
  sub_100005424();
  sub_1000A0A20();
  (*(v6 + 8))(v8, v5);
  v20 = *(&v33 + 1);
  v21 = v33;
  *&v24 = v9;
  *(&v24 + 1) = v10;
  v14 = v23;
  v25 = v23;
  v15 = v22;
  v26 = v22;
  v27 = v33;
  sub_10007EDCC(&v24, v28);
  sub_100002308(a1);
  v28[0] = v9;
  v28[1] = v10;
  v29 = v14;
  v30 = v15;
  v31 = v21;
  v32 = v20;
  result = sub_100063CD0(v28);
  v17 = v25;
  *a2 = v24;
  a2[1] = v17;
  v18 = v27;
  a2[2] = v26;
  a2[3] = v18;
  return result;
}

uint64_t sub_10007EC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10007EC54(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10007ECC8()
{
  result = qword_1000DA4F0;
  if (!qword_1000DA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4F0);
  }

  return result;
}

unint64_t sub_10007ED20()
{
  result = qword_1000DA4F8;
  if (!qword_1000DA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4F8);
  }

  return result;
}

unint64_t sub_10007ED78()
{
  result = qword_1000DA500;
  if (!qword_1000DA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA500);
  }

  return result;
}

uint64_t sub_10007EE14@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v56 = a2;
  v54 = a4;
  v5 = sub_10009FAC0();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F6D0();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009F8E0();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009F7E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10009F9D0();
  v50 = *(v16 - 8);
  v51 = v16;
  __chkstk_darwin(v16);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10009F720();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v43 - v21;
  if (a3 <= 209)
  {
    v49 = v9;
    v29 = v53;
    switch(a3)
    {
      case 207:
        v33 = v57;
        result = sub_100080894(v55, v56, &v43 - v21);
        if (!v33)
        {
          v34 = v52;
          (*(v19 + 16))(v52, v22, v18);
          (*(v50 + 104))(v34, enum case for IDSClientMessageType.groupSessionJoin(_:), v51);
          sub_10009FC10();
          return (*(v19 + 8))(v22, v18);
        }

        break;
      case 208:
        v41 = v57;
        result = sub_100081104(v56, v15);
        if (!v41)
        {
          v42 = v52;
          (*(v13 + 16))(v52, v15, v12);
          (*(v50 + 104))(v42, enum case for IDSClientMessageType.groupSessionLeave(_:), v51);
          sub_10009FC10();
          return (*(v13 + 8))(v15, v12);
        }

        break;
      case 209:
        v30 = v57;
        result = sub_10008242C(v55, v56, v11);
        if (!v30)
        {
          v31 = v52;
          v32 = v49;
          (*(v29 + 16))(v52, v11, v49);
          (*(v50 + 104))(v31, enum case for IDSClientMessageType.groupSessionUpdate(_:), v51);
          sub_10009FC10();
          return (*(v29 + 8))(v11, v32);
        }

        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 237)
    {
      if (a3 == 210)
      {
        return sub_10007F4A4(v54);
      }

      if (a3 == 211)
      {
        v23 = v48;
        v24 = v57;
        result = sub_1000817E8(v55, v56, v48);
        if (!v24)
        {
          v27 = v44;
          v26 = v45;
          v28 = v52;
          (*(v44 + 16))(v52, v23, v45);
          (*(v50 + 104))(v28, enum case for IDSClientMessageType.groupSessionMKM(_:), v51);
          sub_10009FC10();
          return (*(v27 + 8))(v23, v26);
        }

        return result;
      }

LABEL_17:
      sub_1000021F4();
      swift_allocError();
      *v35 = a3;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      return swift_willThrow();
    }

    if (a3 != 238)
    {
      if (a3 == 242)
      {
        return sub_10007F790(v54);
      }

      goto LABEL_17;
    }

    v36 = v49;
    v37 = v57;
    result = sub_10007276C(v55, v56);
    if (!v37)
    {
      v39 = v46;
      v38 = v47;
      v40 = v52;
      (*(v46 + 16))(v52, v36, v47);
      (*(v50 + 104))(v40, enum case for IDSClientMessageType.sessionReinitiate(_:), v51);
      sub_10009FC10();
      return (*(v39 + 8))(v36, v38);
    }
  }

  return result;
}

uint64_t sub_10007F4A4@<X0>(uint64_t a3@<X8>)
{
  v23 = a3;
  v4 = sub_10009F9D0();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F8C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v28 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10007FBB8();
  sub_10009F250();
  if (v3)
  {
  }

  v16 = v8;
  v17 = v7;
  v18 = v6;
  v19 = v4;
  *v24 = *&v24[9];
  *&v24[2] = v25;
  *&v24[4] = v26;
  *&v24[6] = v27;
  v11 = v25;
  v21 = BYTE8(v26);
  v20 = v27;

  sub_1000054CC(v11, *(&v11 + 1));

  v12 = v28;
  sub_10009F8B0();
  sub_10007FC0C(v24);

  v13 = v16;
  v14 = v18;
  v15 = v17;
  (*(v16 + 16))(v18, v12, v17);
  (*(v22 + 104))(v14, enum case for IDSClientMessageType.groupSessionPrekey(_:), v19);
  sub_10009FC10();
  return (*(v13 + 8))(v12, v15);
}

uint64_t sub_10007F790@<X0>(uint64_t a3@<X8>)
{
  v24 = a3;
  v4 = sub_10009F9D0();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009FCB0();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  sub_10009F250();

  if (!v3)
  {
    v11 = v25;
    v12 = sub_10009FD00();
    if (*(v11 + 16))
    {
      v14 = sub_10000217C(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = (*(v11 + 56) + 16 * v14);
        v18 = *v17;
        v19 = v17[1];
        sub_1000054CC(*v17, v19);

        sub_1000054CC(v18, v19);
        sub_10009FCA0();
        v20 = v22;
        (*(v22 + 16))(v6, v9, v7);
        (*(v23 + 104))(v6, enum case for IDSClientMessageType.conversationMessage(_:), v4);
        sub_10009FC10();
        sub_100005568(v18, v19);
        return (*(v20 + 8))(v9, v7);
      }
    }

    else
    {
    }

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10007FB3C(uint64_t a1)
{
  result = sub_10007FB64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007FB64()
{
  result = qword_1000DA510;
  if (!qword_1000DA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA510);
  }

  return result;
}

unint64_t sub_10007FBB8()
{
  result = qword_1000DA518;
  if (!qword_1000DA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA518);
  }

  return result;
}

uint64_t sub_10007FC60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for IDSSessionCancelSchema(0);
  __chkstk_darwin(v6);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10007FE28();
  sub_10009F250();
  if (!v2)
  {
    v9 = v8[1];
    v14[3] = *v8;
    v14[0] = v8[3];
    v14[1] = v9;
    sub_10007FE80(v8 + *(v6 + 28), v5);
    v10 = (v8 + *(v6 + 32));
    v12 = *v10;
    v11 = v10[1];

    sub_100005750(v12, v11);
    sub_10009F780();
    sub_100029CDC(v8);
  }
}

unint64_t sub_10007FE28()
{
  result = qword_1000DA520;
  if (!qword_1000DA520)
  {
    type metadata accessor for IDSSessionCancelSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA520);
  }

  return result;
}

uint64_t sub_10007FE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10007FF48@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v41 = a3;
  v38 = sub_10009F9D0();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_10009F4D0();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009FE40();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10006B130();
  v15 = v43;
  result = sub_10009F250();
  if (v15)
  {
  }

  v42 = v7;
  v43 = v11;
  v36 = v10;
  v37 = v14;
  v35 = v8;
  v17 = v45;
  if (v45 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v18 = v44;
    v49 = v46;
    v19 = v47;
    v20 = v48;
    sub_1000054CC(v44, v45);
    sub_1000807F8();
    sub_10009F250();
    v21 = v12;
    v33 = v19;
    v34 = v20;
    sub_1000057B0(v18, v17);
    v22 = v37;
    sub_10009FE30();
    v31 = v4;
    v23 = v42;
    (*(v21 + 16))(v42, v22, v43);
    v32 = enum case for IDSClientProtobufMessageType.sampleProtobufMessage(_:);
    v24 = sub_1000A00F0();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v23, v32, v24);
    (*(v25 + 56))(v23, 0, 1, v24);
    v26 = v36;
    sub_10009F4C0();
    v27 = v39;
    v28 = v31;
    v29 = v35;
    (*(v39 + 16))(v31, v26, v35);
    (*(v40 + 104))(v28, enum case for IDSClientMessageType.idsProtobufMessage(_:), v38);
    sub_10009FC10();

    sub_1000057B0(v18, v17);
    (*(v27 + 8))(v36, v29);
    return (*(v21 + 8))(v37, v43);
  }

  return result;
}

uint64_t sub_100080408@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a2;
  v3 = sub_10009F9D0();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_10009F740();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDSSampleMessageSchema(0);
  __chkstk_darwin(v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10008084C(&qword_1000DA538, type metadata accessor for IDSSampleMessageSchema, &protocol conformance descriptor for IDSSampleMessageSchema);
  v15 = v26;
  sub_10009F250();
  if (v15)
  {
  }

  v21 = v9;
  v25 = v5;
  v26 = v3;
  sub_10003FEF4(&v14[*(v12 + 24)], v8);

  sub_10009F730();
  v16 = v21;
  v17 = v22;
  v18 = v25;
  (*(v22 + 16))(v25, v11, v21);
  (*(v23 + 104))(v18, enum case for IDSClientMessageType.idsSampleMessage(_:), v26);
  sub_10009FC10();

  (*(v17 + 8))(v11, v16);
  return sub_10000D4A4(v14);
}

unint64_t sub_10008077C(uint64_t a1)
{
  result = sub_1000807A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000807A4()
{
  result = qword_1000DA528;
  if (!qword_1000DA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA528);
  }

  return result;
}

unint64_t sub_1000807F8()
{
  result = qword_1000DA530;
  if (!qword_1000DA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA530);
  }

  return result;
}

uint64_t sub_10008084C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100080894@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v73 = a1;
  v66 = a3;
  v4 = sub_1000017BC(&qword_1000DA550, &qword_1000B1D30);
  v5 = __chkstk_darwin(v4 - 8);
  v65 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v67 = v52 - v8;
  __chkstk_darwin(v7);
  v71 = v52 - v9;
  v10 = sub_10009FCD0();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = __chkstk_darwin(v10);
  v68 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v52 - v13;
  v15 = sub_1000017BC(&qword_1000DA558, &qword_1000B1D38);
  __chkstk_darwin(v15 - 8);
  v17 = v52 - v16;
  v18 = sub_1000A02B0();
  v72 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v52 - v23;
  __chkstk_darwin(v22);
  v26 = v52 - v25;
  sub_10009F270();
  swift_allocObject();
  v27 = sub_10009F260();
  sub_100083CF0();
  sub_10009F250();
  if (v3)
  {
  }

  v64 = v24;
  v62 = v21;
  v88 = v27;
  v73 = v26;
  v63 = v14;
  v82 = v86[6];
  v83 = v86[7];
  v84 = v86[8];
  v85 = v87;
  v78 = v86[2];
  v79 = v86[3];
  v80 = v86[4];
  v81 = v86[5];
  v76 = v86[0];
  v77 = v86[1];
  sub_1000A02A0();
  v29 = v72;
  if ((*(v72 + 48))(v17, 1, v18) == 1)
  {
    sub_1000057C4(v17, &qword_1000DA558, &qword_1000B1D38);
LABEL_8:
    sub_100083D44();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    sub_100083D98(&v76);
  }

  v30 = v73;
  (*(v29 + 32))(v73, v17, v18);
  v31 = v64;
  (*(v29 + 104))(v64, enum case for GroupSessionParticipantUpdateType.Join(_:), v18);
  sub_100083DEC();
  sub_1000A06A0();
  sub_1000A06A0();
  v32 = *(v29 + 8);
  v32(v31, v18);
  if (v75 != v74)
  {
    v32(v30, v18);
    goto LABEL_8;
  }

  v33 = v63;
  sub_100082E50(v81, *(&v81 + 1));
  v61 = v32;
  v64 = 0;
  v35 = sub_1000A0450();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v37(v71, 1, 1, v35);
  if (v83 >> 60 == 15)
  {
    v60 = v18;
  }

  else
  {
    v58 = v38;
    v59 = v37;
    sub_1000054CC(*(&v82 + 1), v83);
    v39 = v67;
    v40 = v64;
    sub_1000A0440();
    v64 = v40;
    if (v40)
    {

      sub_100083D98(&v76);
      sub_1000057C4(v71, &qword_1000DA550, &qword_1000B1D30);
      (*(v69 + 8))(v33, v70);
      return (v61)(v73, v18);
    }

    v60 = v18;
    v41 = v71;
    sub_1000057C4(v71, &qword_1000DA550, &qword_1000B1D30);
    v59(v39, 0, 1, v35);
    sub_1000056E8(v39, v41, &qword_1000DA550, &qword_1000B1D30);
  }

  v42 = v82;
  v43 = v69;
  v44 = v70;
  v45 = v68;
  if (v82 && (v46 = *(&v77 + 1), , v47 = sub_100082FB4(v46, v42), , (v47 & 1) == 0))
  {
    sub_100083D44();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();

    sub_100083D98(&v76);
    sub_1000057C4(v71, &qword_1000DA550, &qword_1000B1D30);
    (*(v43 + 8))(v63, v44);
  }

  else
  {
    (*(v72 + 16))(v62, v73, v60);
    v72 = *(&v76 + 1);
    v67 = v78;
    LODWORD(v59) = v79;
    v57 = *(&v79 + 1);
    v56 = v80;
    v54 = *(&v78 + 1);
    v55 = *(&v80 + 1);
    v48 = *(v43 + 16);
    LODWORD(v58) = BYTE1(v79);
    v48(v45, v63, v44);
    sub_100005620(v71, v65, &qword_1000DA550, &qword_1000B1D30);
    v49 = *(&v83 + 1);
    v53 = *(&v84 + 1);
    v50 = v84;
    v52[1] = v85;

    sub_100005750(v49, v50);
    sub_10009F710();

    sub_100083D98(&v76);
    sub_1000057C4(v71, &qword_1000DA550, &qword_1000B1D30);
    (*(v69 + 8))(v63, v70);
  }

  return (v61)(v73, v60);
}

uint64_t sub_100081104@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v43 = a3;
  v3 = sub_1000017BC(&qword_1000DA590, &qword_1000B1D50);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v37 - v7;
  __chkstk_darwin(v6);
  v10 = v37 - v9;
  v11 = sub_1000017BC(&qword_1000DA558, &qword_1000B1D38);
  __chkstk_darwin(v11 - 8);
  v13 = v37 - v12;
  v14 = sub_1000A02B0();
  v45 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v37 - v19;
  __chkstk_darwin(v18);
  v22 = v37 - v21;
  sub_10009F270();
  swift_allocObject();
  v23 = sub_10009F260();
  sub_100085030();
  v24 = v47;
  sub_10009F250();
  if (v24)
  {
  }

  v46 = v8;
  v47 = v17;
  v42 = v10;
  v51 = v56;
  v52 = v57;
  *v53 = *v58;
  *&v53[9] = *&v58[9];
  v49 = v54;
  v50 = v55;
  sub_1000A02A0();
  v25 = v45;
  if ((*(v45 + 48))(v13, 1, v14) != 1)
  {
    v40 = 0;
    v41 = v23;
    v26 = v22;
    (*(v25 + 32))(v22, v13, v14);
    (*(v25 + 104))(v20, enum case for GroupSessionParticipantUpdateType.Leave(_:), v14);
    sub_100083DEC();
    sub_1000A06A0();
    sub_1000A06A0();
    v27 = *(v25 + 8);
    v27(v20, v14);
    if (v59 != v48)
    {
      v27(v22, v14);
      goto LABEL_8;
    }

    v39 = v27;
    v28 = sub_1000A0490();
    v29 = *(*(v28 - 8) + 56);
    v30 = v42;
    v29(v42, 1, 1, v28);
    if (v50 >> 60 == 15)
    {
      v31 = v44;
    }

    else
    {
      v38 = v29;
      sub_1000054CC(*(&v49 + 1), v50);
      v34 = v46;
      v35 = v40;
      sub_1000A0480();
      v31 = v44;
      if (v35)
      {

        sub_100085084(&v49);
        sub_1000057C4(v42, &qword_1000DA590, &qword_1000B1D50);
        v36 = v26;
        return v39(v36, v14);
      }

      v40 = 0;
      v30 = v42;
      sub_1000057C4(v42, &qword_1000DA590, &qword_1000B1D50);
      v38(v34, 0, 1, v28);
      sub_1000056E8(v34, v30, &qword_1000DA590, &qword_1000B1D50);
    }

    (*(v45 + 16))(v47, v26, v14);
    sub_100005620(v30, v31, &qword_1000DA590, &qword_1000B1D50);
    v45 = *(&v50 + 1);
    v44 = *(&v51 + 1);
    v38 = *v53;
    v37[1] = v53[8];
    v46 = v26;

    sub_10009F7D0();

    sub_100085084(&v49);
    sub_1000057C4(v42, &qword_1000DA590, &qword_1000B1D50);
    v36 = v46;
    return v39(v36, v14);
  }

  sub_1000057C4(v13, &qword_1000DA558, &qword_1000B1D38);
LABEL_8:
  sub_100083D44();
  swift_allocError();
  *v32 = 1;
  swift_willThrow();
  sub_100085084(&v49);
}

void *sub_1000817E8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v147 = a2;
  v121 = a1;
  v98 = a3;
  v5 = sub_1000017BC(&qword_1000DA5A8, &qword_1000B1D58);
  v6 = __chkstk_darwin(v5 - 8);
  v97 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v105 = v85 - v9;
  v10 = __chkstk_darwin(v8);
  v94 = v85 - v11;
  v12 = __chkstk_darwin(v10);
  v104 = v85 - v13;
  v14 = __chkstk_darwin(v12);
  v100 = v85 - v15;
  __chkstk_darwin(v14);
  v107 = v85 - v16;
  v17 = sub_10009F4E0();
  v118 = *(v17 - 8);
  v119 = v17;
  v18 = __chkstk_darwin(v17);
  v111 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v85 - v20;
  v22 = sub_10009F500();
  v120 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = v85 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = v85 - v30;
  __chkstk_darwin(v29);
  v33 = v85 - v32;
  sub_10009F270();
  swift_allocObject();
  v34 = sub_10009F260();
  sub_100085180();
  sub_10009F250();
  if (v3)
  {
  }

  v102 = v33;
  v103 = v31;
  v90 = v28;
  v91 = v21;
  v101 = v25;
  v110 = v22;
  v92 = v34;
  memcpy(v141, v142, 0x14BuLL);
  if (!*&v141[2])
  {
    v121 = 0;
    v38 = v105;
    v74 = v110;
    v40 = v120;
    goto LABEL_29;
  }

  v36 = *(*&v141[2] + 16);
  v37 = _swiftEmptyArrayStorage;
  v38 = v105;
  v39 = v110;
  v40 = v120;
  if (!v36)
  {
    v74 = v110;
    goto LABEL_28;
  }

  *&v123[0] = _swiftEmptyArrayStorage;
  v106 = *&v141[2];

  result = sub_100084804(0, v36, 0);
  v41 = v106;
  if (!*(v106 + 16))
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v42 = 0;
  v121 = *&v123[0];
  v89 = enum case for KeyMaterial.MaterialType.MKM(_:);
  v99 = (v118 + 104);
  v96 = (v40 + 32);
  v93 = enum case for KeyMaterial.MaterialType.SKM(_:);
  v95 = v36 - 1;
  v43 = 32;
  while (1)
  {
    v147 = v4;
    v133 = *(v41 + v43);
    v44 = *(v41 + v43 + 16);
    v45 = *(v41 + v43 + 32);
    v46 = *(v41 + v43 + 64);
    v136 = *(v41 + v43 + 48);
    v137 = v46;
    v134 = v44;
    v135 = v45;
    v47 = *(v41 + v43 + 80);
    v48 = *(v41 + v43 + 96);
    v49 = *(v41 + v43 + 112);
    *(v140 + 11) = *(v41 + v43 + 123);
    v50 = *(v140 + 11);
    v139 = v48;
    v140[0] = v49;
    v138 = v47;
    v51 = *(&v133 + 1);
    v112 = v43;
    v113 = v42;
    v118 = v49;
    v117 = BYTE8(v49);
    v116 = v50 >> 40;
    v114 = BYTE14(v50);
    v115 = BYTE13(v50);
    if (*(&v133 + 1) >> 60 != 15)
    {
      v52 = *(&v134 + 1);
      if (*(&v134 + 1) >> 60 != 15)
      {
        v53 = *(&v135 + 1);
        if (*(&v135 + 1) >> 60 != 15)
        {
          v70 = v133;
          v86 = v135;
          v87 = v133;
          v108 = v136;
          v109 = v134;
          v88 = BYTE4(v136);
          v71 = *v99;
          v85[1] = HIBYTE(v50);
          v71(v91, v89, v119);
          sub_100085248(&v133, &v125);
          sub_100005750(v70, v51);
          sub_100005750(v109, v52);
          sub_100005750(v86, v53);
          LOBYTE(v125) = v88;
          v72 = v90;
          v73 = v147;
          sub_10009F4F0();
          if (!v73)
          {
            v147 = 0;
            v60 = v72;
            v62 = v39;
            goto LABEL_15;
          }

LABEL_25:
          sub_1000852F8(&v133);
LABEL_26:

          sub_1000851F4(v141);
        }
      }
    }

    v54 = v137;
    if (v137 >> 60 == 15 || (v55 = v138, v138 >> 60 == 15) || (v56 = v139, v139 >> 60 == 15))
    {
      sub_1000852A4();
      swift_allocError();
      swift_willThrow();
      goto LABEL_26;
    }

    v57 = *(&v136 + 1);
    v58 = *(&v137 + 1);
    v59 = *(&v138 + 1);
    v109 = DWORD2(v139);
    LODWORD(v108) = BYTE12(v139);
    (*v99)(v111, v93, v119);
    sub_100085248(&v133, &v125);
    sub_100005750(v57, v54);
    sub_100005750(v58, v55);
    sub_100005750(v59, v56);
    LOBYTE(v125) = v108;
    v60 = v101;
    v61 = v147;
    sub_10009F4F0();
    if (v61)
    {
      goto LABEL_25;
    }

    v147 = 0;
    v62 = v110;
LABEL_15:
    v63 = v121;
    sub_1000852F8(&v133);
    v64 = *v96;
    v65 = v103;
    (*v96)(v103, v60, v62);
    v66 = v102;
    v64(v102, v65, v62);
    *&v123[0] = v63;
    v68 = v63[2];
    v67 = v63[3];
    if (v68 >= v67 >> 1)
    {
      sub_100084804((v67 > 1), v68 + 1, 1);
      v63 = *&v123[0];
    }

    v63[2] = v68 + 1;
    v69 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v121 = v63;
    result = (v64)(v63 + v69 + *(v120 + 72) * v68, v66, v62);
    if (v95 == v113)
    {
      break;
    }

    v39 = v62;
    v41 = v106;
    v43 = v112 + 144;
    v42 = v113 + 1;
    v4 = v147;
    if ((v113 + 1) >= *(v106 + 16))
    {
      goto LABEL_41;
    }
  }

  v74 = v62;
  v38 = v105;
  v40 = v120;
  v37 = v121;
  v4 = v147;
LABEL_28:
  v121 = v37;
LABEL_29:
  v75 = *(v40 + 56);
  v75(v107, 1, 1, v74);
  v139 = v141[9];
  v140[0] = v141[10];
  *(v140 + 11) = *(&v141[10] + 11);
  v135 = v141[5];
  v136 = v141[6];
  v137 = v141[7];
  v138 = v141[8];
  v133 = v141[3];
  v134 = v141[4];
  if (sub_1000851D4(&v133) == 1)
  {
    v76 = v110;
    goto LABEL_34;
  }

  v145[5] = v138;
  v145[6] = v139;
  v146[0] = v140[0];
  *(v146 + 11) = *(v140 + 11);
  v145[2] = v135;
  v145[3] = v136;
  v145[4] = v137;
  v145[0] = v133;
  v145[1] = v134;
  v130 = v141[8];
  v131 = v141[9];
  v132[0] = v141[10];
  *(v132 + 11) = *(&v141[10] + 11);
  v127 = v141[5];
  v128 = v141[6];
  v129 = v141[7];
  v125 = v141[3];
  v126 = v141[4];
  sub_100085248(&v125, v123);
  v77 = v100;
  sub_100083584(v145, v100);
  if (v4)
  {
    sub_1000057C4(v107, &qword_1000DA5A8, &qword_1000B1D58);

    return sub_1000851F4(v141);
  }

  v78 = v107;
  sub_1000057C4(v107, &qword_1000DA5A8, &qword_1000B1D58);
  v79 = v110;
  v75(v77, 0, 1, v110);
  v80 = v78;
  v4 = 0;
  v38 = v105;
  sub_1000056E8(v77, v80, &qword_1000DA5A8, &qword_1000B1D58);
  v76 = v79;
LABEL_34:
  v75(v104, 1, 1, v76);
  v131 = v141[18];
  v132[0] = v141[19];
  *(v132 + 11) = *(&v141[19] + 11);
  v127 = v141[14];
  v128 = v141[15];
  v129 = v141[16];
  v130 = v141[17];
  v125 = v141[12];
  v126 = v141[13];
  if (sub_1000851D4(&v125) == 1)
  {
    v147 = v4;
    goto LABEL_39;
  }

  v143[5] = v130;
  v143[6] = v131;
  v144[0] = v132[0];
  *(v144 + 11) = *(v132 + 11);
  v143[2] = v127;
  v143[3] = v128;
  v143[4] = v129;
  v143[0] = v125;
  v143[1] = v126;
  v123[6] = v141[18];
  v124[0] = v141[19];
  *(v124 + 11) = *(&v141[19] + 11);
  v123[2] = v141[14];
  v123[3] = v141[15];
  v123[4] = v141[16];
  v123[5] = v141[17];
  v123[0] = v141[12];
  v123[1] = v141[13];
  sub_100085248(v123, &v122);
  v81 = v94;
  sub_100083584(v143, v94);
  if (v4)
  {

    sub_1000851F4(v141);
    sub_1000057C4(v104, &qword_1000DA5A8, &qword_1000B1D58);
    v82 = v107;
  }

  else
  {
    v147 = 0;
    v83 = v104;
    sub_1000057C4(v104, &qword_1000DA5A8, &qword_1000B1D58);
    v75(v81, 0, 1, v110);
    v38 = v105;
    sub_1000056E8(v81, v83, &qword_1000DA5A8, &qword_1000B1D58);
LABEL_39:
    v119 = *&v141[1];
    v120 = *&v141[0];
    sub_100005620(v107, v38, &qword_1000DA5A8, &qword_1000B1D58);
    v84 = v104;
    sub_100005620(v104, v97, &qword_1000DA5A8, &qword_1000B1D58);

    sub_10009F6C0();

    sub_1000851F4(v141);
    sub_1000057C4(v84, &qword_1000DA5A8, &qword_1000B1D58);
    v82 = v107;
  }

  return sub_1000057C4(v82, &qword_1000DA5A8, &qword_1000B1D58);
}

uint64_t sub_10008242C@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v72 = a1;
  v66 = a3;
  v4 = sub_1000017BC(&qword_1000DA550, &qword_1000B1D30);
  v5 = __chkstk_darwin(v4 - 8);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v67 = &v57 - v8;
  __chkstk_darwin(v7);
  v70 = &v57 - v9;
  v69 = sub_10009FCD0();
  v68 = *(v69 - 8);
  v10 = __chkstk_darwin(v69);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = sub_1000017BC(&qword_1000DA558, &qword_1000B1D38);
  __chkstk_darwin(v15 - 8);
  v17 = &v57 - v16;
  v18 = sub_1000A02B0();
  v71 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v57 - v23;
  __chkstk_darwin(v22);
  v26 = &v57 - v25;
  sub_10009F270();
  swift_allocObject();
  v27 = sub_10009F260();
  sub_1000850D8();
  sub_10009F250();
  if (v3)
  {
  }

  v72 = v24;
  v61 = v21;
  v62 = v12;
  v89 = v27;
  v64 = v14;
  v29 = v26;
  v79 = v86;
  v80 = v87;
  v75 = v82;
  v76 = v83;
  v81 = v88;
  v78 = v85;
  v77 = v84;
  sub_1000A02A0();
  v30 = v71;
  if ((*(v71 + 48))(v17, 1, v18) == 1)
  {
    sub_1000057C4(v17, &qword_1000DA558, &qword_1000B1D38);
    sub_100083D44();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();
    sub_10008512C(&v75);
  }

  v32 = v18;
  v63 = 0;
  (*(v30 + 32))(v29, v17, v18);
  v33 = *(v30 + 104);
  v34 = v72;
  v33(v72, enum case for GroupSessionParticipantUpdateType.UpdateMember(_:), v18);
  sub_100083DEC();
  sub_1000A06A0();
  sub_1000A06A0();
  v35 = v30 + 8;
  v36 = *(v30 + 8);
  v36(v34, v32);
  if (v74 == v73 || (v33(v34, enum case for GroupSessionParticipantUpdateType.UpdateParticipantData(_:), v32), sub_1000A06A0(), sub_1000A06A0(), v35 = v30 + 8, v36(v34, v32), v74 == v73))
  {
    v72 = v36;
    v37 = v64;
    v38 = v63;
    sub_100082E50(v79, *(&v79 + 1));
    if (v38)
    {

      sub_10008512C(&v75);
      v39 = v29;
      return v72(v39, v32);
    }

    v63 = 0;
    v40 = sub_1000A0450();
    v41 = v70;
    v58 = *(*(v40 - 8) + 56);
    v58(v70, 1, 1, v40);
    v42 = v29;
    if (v81 >> 60 == 15)
    {
      v60 = v29;
      v59 = v35;
    }

    else
    {
      sub_1000054CC(*(&v80 + 1), v81);
      v44 = v67;
      v45 = v63;
      sub_1000A0440();
      v46 = v69;
      if (v45)
      {

        sub_10008512C(&v75);
        sub_1000057C4(v70, &qword_1000DA550, &qword_1000B1D30);
        (*(v68 + 8))(v37, v46);
        v39 = v42;
        return v72(v39, v32);
      }

      v60 = v42;
      v59 = v35;
      v63 = 0;
      v47 = v70;
      sub_1000057C4(v70, &qword_1000DA550, &qword_1000B1D30);
      v58(v44, 0, 1, v40);
      v41 = v47;
      sub_1000056E8(v44, v47, &qword_1000DA550, &qword_1000B1D30);
    }

    v48 = v80;
    v49 = v62;
    v50 = v61;
    v51 = v71;
    if (v80 && (v52 = *(&v76 + 1), , v53 = sub_100082FB4(v52, v48), , (v53 & 1) == 0))
    {
      sub_100083D44();
      swift_allocError();
      *v56 = 2;
      swift_willThrow();

      sub_10008512C(&v75);
      sub_1000057C4(v41, &qword_1000DA550, &qword_1000B1D30);
      (*(v68 + 8))(v37, v69);
    }

    else
    {
      (*(v51 + 16))(v50, v60, v32);
      v71 = *(&v75 + 1);
      v67 = v77;
      LODWORD(v58) = v78;
      v57 = *(&v78 + 1);
      v54 = v37;
      v55 = v68;
      (*(v68 + 16))(v49, v54, v69);
      sub_100005620(v41, v65, &qword_1000DA550, &qword_1000B1D30);

      sub_10009F8D0();

      sub_10008512C(&v75);
      sub_1000057C4(v70, &qword_1000DA550, &qword_1000B1D30);
      (*(v55 + 8))(v64, v69);
    }

    return v72(v60, v32);
  }

  else
  {
    sub_100083D44();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();

    sub_10008512C(&v75);
    return (v36)(v29, v32);
  }
}

uint64_t sub_100082E50(uint64_t a1, uint64_t a2)
{
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_100084F88();
  sub_10009F250();
  if (!v2)
  {
    v4[3] = v8;
    v4[4] = v9;
    v4[0] = v5;
    v4[1] = v6;
    v4[2] = v7;
    v10 = v7;

    sub_100005750(v9, *(&v9 + 1));
    sub_100005750(v8, *(&v8 + 1));
    sub_100005750(v5, *(&v5 + 1));
    sub_100005750(v6, *(&v6 + 1));
    sub_10009FCC0();
    sub_100084FDC(v4);
  }
}

uint64_t sub_100082FB4(uint64_t a1, uint64_t a2)
{

  v5 = sub_100084B08(v4);

  v6 = objc_allocWithZone(NSRegularExpression);
  v7 = sub_100083E44(0xD000000000000014, 0x80000001000A38B0, 0);
  sub_100084C50(v5, v7);
  v9 = v8;

  v10 = sub_100084B08(v9);

  v12 = sub_1000831D8(v11);
  if (*(v12 + 16) == *(a2 + 16) && (v13 = v12, v14 = *(v5 + 16), , , v14 == *(a1 + 16)))
  {
    v15 = sub_1000832F4(v10, v13);

    if (v15)
    {
      v16 = 0;
      v17 = 1 << *(a2 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(a2 + 64);
      v20 = (v17 + 63) >> 6;
      while (v19)
      {
        v21 = v16;
LABEL_13:
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        if (*(*(*(a2 + 56) + ((v21 << 9) | (8 * v22))) + 16) >= 0x10uLL)
        {
          v23 = 0;
LABEL_19:

          goto LABEL_17;
        }
      }

      while (1)
      {
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v21 >= v20)
        {
          v23 = 1;
          goto LABEL_19;
        }

        v19 = *(a2 + 64 + 8 * v21);
        ++v16;
        if (v19)
        {
          v16 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_17:

  return v23;
}

uint64_t sub_1000831D8(uint64_t a1)
{
  result = sub_1000A0740();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100083F20(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000832F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_1000A0C60();

      sub_1000A05B0();
      v15 = sub_1000A0C90();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_1000A0BD0() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

BOOL KeyMaterialError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD9E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  return v4 != 0;
}

uint64_t sub_100083584@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_10009F4E0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = sub_10009F500();
  v11 = __chkstk_darwin(v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v17 = &v23[-v16];
  v43 = *a1;
  if (*(&v43 + 1) >> 60 == 15 || (v42 = a1[1], *(&v42 + 1) >> 60 == 15) || (v41 = a1[2], *(&v41 + 1) >> 60 == 15))
  {
    v40 = *(a1 + 56);
    if (*(&v40 + 1) >> 60 == 15 || (v39 = *(a1 + 72), *(&v39 + 1) >> 60 == 15) || (v38 = *(a1 + 88), *(&v38 + 1) >> 60 == 15))
    {
      sub_1000852A4();
      swift_allocError();
      swift_willThrow();
      return sub_1000852F8(a1);
    }

    v33 = v15;
    v34 = v14;
    v32 = v38;
    v21 = *(v4 + 104);
    v31 = v39;
    v21(v7, enum case for KeyMaterial.MaterialType.SKM(_:), v3);
    v27 = *(a1 + 26);
    LODWORD(v25) = *(a1 + 108);
    v30 = *(a1 + 14);
    LODWORD(v29) = *(a1 + 120);
    v28 = *(a1 + 16);
    LODWORD(v26) = *(a1 + 136);
    v44 = *(a1 + 137);
    v24 = *(a1 + 138);
    sub_100005620(&v40, v37, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v39, v37, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v38, v37, &qword_1000D83D8, &qword_1000A5D68);
    v37[0] = v25;
    v22 = v36;
    sub_10009F4F0();
    result = sub_1000852F8(a1);
    if (!v22)
    {
      v17 = v13;
      return (*(v33 + 32))(v35, v17, v34);
    }
  }

  else
  {
    v33 = v15;
    v34 = v14;
    v32 = v41;
    v31 = v43;
    v19 = *(v4 + 104);
    v29 = v42;
    v30 = *(&v41 + 1);
    v19(v9, enum case for KeyMaterial.MaterialType.MKM(_:), v3);
    v25 = *(a1 + 12);
    v24 = *(a1 + 52);
    v28 = *(a1 + 14);
    LODWORD(v27) = *(a1 + 120);
    v26 = *(a1 + 16);
    v44 = *(a1 + 136);
    sub_100005620(&v43, v37, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v42, v37, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v41, v37, &qword_1000D83D8, &qword_1000A5D68);
    v37[0] = v24;
    v20 = v36;
    sub_10009F4F0();
    result = sub_1000852F8(a1);
    if (!v20)
    {
      return (*(v33 + 32))(v35, v17, v34);
    }
  }

  return result;
}

BOOL GroupSessionMKMUnpackerError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDA58;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  return v4 != 0;
}

unint64_t sub_100083B1C()
{
  result = qword_1000DA540;
  if (!qword_1000DA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA540);
  }

  return result;
}

unint64_t sub_100083B74()
{
  result = qword_1000DA548;
  if (!qword_1000DA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA548);
  }

  return result;
}

Swift::Int sub_100083BC8()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100083C20(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100083C80@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_1000A08F0(a2, v8);

  *a3 = v6 != 0;
  return result;
}

unint64_t sub_100083CF0()
{
  result = qword_1000DA560;
  if (!qword_1000DA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA560);
  }

  return result;
}

unint64_t sub_100083D44()
{
  result = qword_1000DA568;
  if (!qword_1000DA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA568);
  }

  return result;
}

unint64_t sub_100083DEC()
{
  result = qword_1000DA570;
  if (!qword_1000DA570)
  {
    sub_1000A02B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA570);
  }

  return result;
}

id sub_100083E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A0570();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10009F280();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100083F20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000A0C60();
  sub_1000A05B0();
  v8 = sub_1000A0C90();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000A0BD0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000842D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100084070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000017BC(&qword_1000DA578, &qword_1000B1D40);
  result = sub_1000A0840();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1000A0C60();
      sub_1000A05B0();
      result = sub_1000A0C90();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000842D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100084070(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100084450();
      goto LABEL_16;
    }

    sub_1000845AC(v8 + 1);
  }

  v10 = *v4;
  sub_1000A0C60();
  sub_1000A05B0();
  result = sub_1000A0C90();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000A0BD0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000A0BF0();
  __break(1u);
  return result;
}

void *sub_100084450()
{
  v1 = v0;
  sub_1000017BC(&qword_1000DA578, &qword_1000B1D40);
  v2 = *v0;
  v3 = sub_1000A0830();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000845AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000017BC(&qword_1000DA578, &qword_1000B1D40);
  result = sub_1000A0840();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000A0C60();

      sub_1000A05B0();
      result = sub_1000A0C90();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_1000847E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100084824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100084804(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100084930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100084824(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000017BC(&qword_1000DA580, &qword_1000B1D48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100084930(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000017BC(&qword_1000DA5C0, &unk_1000B1D60);
  v10 = *(sub_10009F500() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10009F500() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100084B08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000A0740();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100083F20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100084BA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1000A05D0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1000A0690();
}

void sub_100084C50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000847E4(0, v2, 0);
    v4 = a1 + 56;
    v5 = sub_1000A07E0();
    v6 = 0;
    v28 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      v32 = v5 >> 6;
      v30 = v6;
      v31 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      if ((v9 & 0x1000000000000000) != 0)
      {
        v11 = sub_1000A0630();
      }

      else
      {
        v11 = sub_1000A0640();
      }

      v12 = v11;

      v13 = sub_1000A0570();
      v14 = [a2 firstMatchInString:v13 options:0 range:{0, v12}];

      if (v14)
      {

        [v14 range];
        sub_100084BA0(v15, v10, v9);

        v4 = a1 + 56;
        v10 = sub_1000A0590();
        v17 = v16;

        v2 = v28;

        v9 = v17;
      }

      v19 = *(&_swiftEmptyArrayStorage + 2);
      v18 = *(&_swiftEmptyArrayStorage + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1000847E4((v18 > 1), v19 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v19 + 1;
      v20 = &_swiftEmptyArrayStorage + 16 * v19;
      *(v20 + 4) = v10;
      *(v20 + 5) = v9;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_28;
      }

      v21 = *(v4 + 8 * v32);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v7 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v32 << 6;
        v24 = v32 + 1;
        v25 = (a1 + 64 + 8 * v32);
        while (v24 < (v7 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_100084F7C(v5, v31, 0);
            v7 = __clz(__rbit64(v26)) + v23;
            goto LABEL_23;
          }
        }

        sub_100084F7C(v5, v31, 0);
LABEL_23:
        v4 = a1 + 56;
      }

      v6 = v30 + 1;
      v5 = v7;
      if (v30 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_100084F7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100084F88()
{
  result = qword_1000DA588;
  if (!qword_1000DA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA588);
  }

  return result;
}

unint64_t sub_100085030()
{
  result = qword_1000DA598;
  if (!qword_1000DA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA598);
  }

  return result;
}

unint64_t sub_1000850D8()
{
  result = qword_1000DA5A0;
  if (!qword_1000DA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5A0);
  }

  return result;
}

unint64_t sub_100085180()
{
  result = qword_1000DA5B0;
  if (!qword_1000DA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5B0);
  }

  return result;
}

uint64_t sub_1000851D4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000852A4()
{
  result = qword_1000DA5B8;
  if (!qword_1000DA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5B8);
  }

  return result;
}

unint64_t sub_100085360()
{
  result = qword_1000DA5C8;
  if (!qword_1000DA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5C8);
  }

  return result;
}

uint64_t sub_1000853D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_1000A0270();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  sub_10009F270();
  swift_allocObject();
  v17 = sub_10009F260();
  sub_100085864();
  v18 = v48;
  sub_10009F250();
  if (v18)
  {
  }

  v48 = v14;
  v36 = v7;
  v37 = v9;
  v21 = v44;
  v20 = v45;
  v43 = v46;
  v35 = v47;
  sub_1000017BC(&qword_1000DA5E0, &qword_1000B1E40);
  sub_1000054CC(v21, v20);
  sub_1000858B8();
  sub_10009F250();
  v33 = v20;
  v34 = v17;
  v32 = v21;
  result = sub_100005568(v21, v20);
  v22 = v44;
  v42 = *(v44 + 16);
  if (v42)
  {
    v23 = 0;
    v39 = v11 + 8;
    v40 = (v11 + 16);
    v38 = v11 + 32;
    v24 = &_swiftEmptyArrayStorage;
    v41 = a3;
    v25 = v48;
    while (v23 < *(v22 + 16))
    {
      v26 = v22;

      sub_1000A0260();
      (*v40)(v25, v16, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10009EF2C(0, v24[2] + 1, 1, v24);
      }

      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        v24 = sub_10009EF2C(v27 > 1, v28 + 1, 1, v24);
      }

      ++v23;
      (*(v11 + 8))(v16, v10);
      v24[2] = v28 + 1;
      v25 = v48;
      (*(v11 + 32))(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v48, v10);
      v22 = v26;
      result = v43;
      if (v42 == v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v29 = v37;
    sub_10009F550();
    v30 = v36;
    sub_100085990(v29, v36);
    v31 = sub_10009F560();
    result = (*(*(v31 - 8) + 48))(v30, 1, v31);
    if (result != 1)
    {

      sub_10009FDB0();

      sub_100005568(v32, v33);
      return sub_100085A00(v29);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100085864()
{
  result = qword_1000DA5D8;
  if (!qword_1000DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5D8);
  }

  return result;
}

unint64_t sub_1000858B8()
{
  result = qword_1000DA5E8;
  if (!qword_1000DA5E8)
  {
    sub_1000053DC(&qword_1000DA5E0, &qword_1000B1E40);
    sub_10008593C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5E8);
  }

  return result;
}

unint64_t sub_10008593C()
{
  result = qword_1000DA5F0;
  if (!qword_1000DA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5F0);
  }

  return result;
}

uint64_t sub_100085990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085A00(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085A68@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_1000A0290();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  sub_10009F270();
  swift_allocObject();
  v17 = sub_10009F260();
  sub_100085EF4();
  v18 = v48;
  sub_10009F250();
  if (v18)
  {
  }

  v48 = v14;
  v36 = v7;
  v37 = v9;
  v21 = v44;
  v20 = v45;
  v43 = v46;
  v35 = v47;
  sub_1000017BC(&qword_1000DA600, &qword_1000B1E48);
  sub_1000054CC(v21, v20);
  sub_100085F48();
  sub_10009F250();
  v33 = v20;
  v34 = v17;
  v32 = v21;
  result = sub_100005568(v21, v20);
  v22 = v44;
  v42 = *(v44 + 16);
  if (v42)
  {
    v23 = 0;
    v39 = v11 + 8;
    v40 = (v11 + 16);
    v38 = v11 + 32;
    v24 = &_swiftEmptyArrayStorage;
    v41 = a3;
    v25 = v48;
    while (v23 < *(v22 + 16))
    {
      v26 = v22;

      sub_1000A0280();
      (*v40)(v25, v16, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10009EF04(0, v24[2] + 1, 1, v24);
      }

      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        v24 = sub_10009EF04(v27 > 1, v28 + 1, 1, v24);
      }

      ++v23;
      (*(v11 + 8))(v16, v10);
      v24[2] = v28 + 1;
      v25 = v48;
      (*(v11 + 32))(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v48, v10);
      v22 = v26;
      result = v43;
      if (v42 == v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v29 = v37;
    sub_10009F550();
    v30 = v36;
    sub_100085990(v29, v36);
    v31 = sub_10009F560();
    result = (*(*(v31 - 8) + 48))(v30, 1, v31);
    if (result != 1)
    {

      sub_10009FDF0();

      sub_100005568(v32, v33);
      return sub_100085A00(v29);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100085EF4()
{
  result = qword_1000DA5F8;
  if (!qword_1000DA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5F8);
  }

  return result;
}

unint64_t sub_100085F48()
{
  result = qword_1000DA608;
  if (!qword_1000DA608)
  {
    sub_1000053DC(&qword_1000DA600, &qword_1000B1E48);
    sub_100085FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA608);
  }

  return result;
}

unint64_t sub_100085FCC()
{
  result = qword_1000DA610;
  if (!qword_1000DA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA610);
  }

  return result;
}

uint64_t sub_100086020@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v7;
  v8 = sub_10009F370();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A02D0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_1000865B0();
  v19 = v53;
  sub_10009F250();
  if (v19)
  {
  }

  v53 = v15;
  v46 = v10;
  v47 = v8;
  v21 = v49;
  v22 = v50;
  v48 = v51;
  v36 = v52;
  sub_1000017BC(&qword_1000DA620, &qword_1000B1E50);
  sub_1000054CC(v21, v22);
  sub_100086604();
  sub_10009F250();
  v34 = v22;
  v35 = v18;
  result = sub_100005568(v21, v22);
  v45 = v49;
  v23 = v21;
  v44 = *(v49 + 16);
  if (v44)
  {
    v24 = 0;
    v43 += 2;
    v40 = v12 + 8;
    v41 = (v12 + 16);
    v39 = v12 + 32;
    v25 = &_swiftEmptyArrayStorage;
    v42 = a3;
    while (1)
    {
      v26 = v45;
      if (v24 >= *(v45 + 16))
      {
        break;
      }

      v27 = *(type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema(0) - 8);
      (*v43)(v46, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v47);
      sub_1000A02C0();
      (*v41)(v53, v17, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10009EEB4(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_10009EEB4(v28 > 1, v29 + 1, 1, v25);
      }

      ++v24;
      (*(v12 + 8))(v17, v11);
      v25[2] = v29 + 1;
      (*(v12 + 32))(v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v53, v11);
      v23 = v21;
      result = v48;
      if (v44 == v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v30 = v38;
    sub_10009F550();
    v31 = v37;
    sub_100085990(v30, v37);
    v32 = sub_10009F560();
    result = (*(*(v32 - 8) + 48))(v31, 1, v32);
    if (result != 1)
    {

      sub_10009FFC0();

      sub_100005568(v23, v34);
      return sub_100085A00(v30);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000865B0()
{
  result = qword_1000DA618;
  if (!qword_1000DA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA618);
  }

  return result;
}

unint64_t sub_100086604()
{
  result = qword_1000DA628;
  if (!qword_1000DA628)
  {
    sub_1000053DC(&qword_1000DA620, &qword_1000B1E50);
    sub_100086688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA628);
  }

  return result;
}

unint64_t sub_100086688()
{
  result = qword_1000DA630;
  if (!qword_1000DA630)
  {
    type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA630);
  }

  return result;
}

uint64_t sub_1000866E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v7;
  v8 = sub_10009F370();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A0250();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_100086C70();
  v19 = v53;
  sub_10009F250();
  if (v19)
  {
  }

  v53 = v15;
  v46 = v10;
  v47 = v8;
  v21 = v49;
  v22 = v50;
  v48 = v51;
  v36 = v52;
  sub_1000017BC(&qword_1000DA640, &qword_1000B1E58);
  sub_1000054CC(v21, v22);
  sub_100086CC4();
  sub_10009F250();
  v34 = v22;
  v35 = v18;
  result = sub_100005568(v21, v22);
  v45 = v49;
  v23 = v21;
  v44 = *(v49 + 16);
  if (v44)
  {
    v24 = 0;
    v43 += 2;
    v40 = v12 + 8;
    v41 = (v12 + 16);
    v39 = v12 + 32;
    v25 = &_swiftEmptyArrayStorage;
    v42 = a3;
    while (1)
    {
      v26 = v45;
      if (v24 >= *(v45 + 16))
      {
        break;
      }

      v27 = *(type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema(0) - 8);
      (*v43)(v46, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v47);
      sub_1000A0240();
      (*v41)(v53, v17, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10009EE8C(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_10009EE8C(v28 > 1, v29 + 1, 1, v25);
      }

      ++v24;
      (*(v12 + 8))(v17, v11);
      v25[2] = v29 + 1;
      (*(v12 + 32))(v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v53, v11);
      v23 = v21;
      result = v48;
      if (v44 == v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v30 = v38;
    sub_10009F550();
    v31 = v37;
    sub_100085990(v30, v37);
    v32 = sub_10009F560();
    result = (*(*(v32 - 8) + 48))(v31, 1, v32);
    if (result != 1)
    {

      sub_10009FD70();

      sub_100005568(v23, v34);
      return sub_100085A00(v30);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100086C70()
{
  result = qword_1000DA638;
  if (!qword_1000DA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA638);
  }

  return result;
}

unint64_t sub_100086CC4()
{
  result = qword_1000DA648;
  if (!qword_1000DA648)
  {
    sub_1000053DC(&qword_1000DA640, &qword_1000B1E58);
    sub_100086D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA648);
  }

  return result;
}

unint64_t sub_100086D48()
{
  result = qword_1000DA650;
  if (!qword_1000DA650)
  {
    type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA650);
  }

  return result;
}

uint64_t sub_100086DA0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v7;
  v8 = sub_10009F370();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A0330();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_100087330();
  v19 = v53;
  sub_10009F250();
  if (v19)
  {
  }

  v53 = v15;
  v46 = v10;
  v47 = v8;
  v21 = v49;
  v22 = v50;
  v48 = v51;
  v36 = v52;
  sub_1000017BC(&qword_1000DA660, &qword_1000B1E60);
  sub_1000054CC(v21, v22);
  sub_100087384();
  sub_10009F250();
  v34 = v22;
  v35 = v18;
  result = sub_100005568(v21, v22);
  v45 = v49;
  v23 = v21;
  v44 = *(v49 + 16);
  if (v44)
  {
    v24 = 0;
    v43 += 2;
    v40 = v12 + 8;
    v41 = (v12 + 16);
    v39 = v12 + 32;
    v25 = &_swiftEmptyArrayStorage;
    v42 = a3;
    while (1)
    {
      v26 = v45;
      if (v24 >= *(v45 + 16))
      {
        break;
      }

      v27 = *(type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema(0) - 8);
      (*v43)(v46, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v47);
      sub_1000A0320();
      (*v41)(v53, v17, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10009EEDC(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_10009EEDC(v28 > 1, v29 + 1, 1, v25);
      }

      ++v24;
      (*(v12 + 8))(v17, v11);
      v25[2] = v29 + 1;
      (*(v12 + 32))(v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v53, v11);
      v23 = v21;
      result = v48;
      if (v44 == v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v30 = v38;
    sub_10009F550();
    v31 = v37;
    sub_100085990(v30, v37);
    v32 = sub_10009F560();
    result = (*(*(v32 - 8) + 48))(v31, 1, v32);
    if (result != 1)
    {

      sub_1000A0030();

      sub_100005568(v23, v34);
      return sub_100085A00(v30);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100087330()
{
  result = qword_1000DA658;
  if (!qword_1000DA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA658);
  }

  return result;
}

unint64_t sub_100087384()
{
  result = qword_1000DA668;
  if (!qword_1000DA668)
  {
    sub_1000053DC(&qword_1000DA660, &qword_1000B1E60);
    sub_100087408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA668);
  }

  return result;
}

unint64_t sub_100087408()
{
  result = qword_1000DA670;
  if (!qword_1000DA670)
  {
    type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA670);
  }

  return result;
}

void *sub_100087460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a2;
  v165 = a1;
  v142 = a3;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v140 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v141 = v106 - v7;
  v8 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v9 = __chkstk_darwin(v8 - 8);
  v139 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v150 = v106 - v11;
  v138 = sub_10009F370();
  v145 = *(v138 - 8);
  v12 = __chkstk_darwin(v138);
  v149 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = v106 - v14;
  v134 = sub_1000A0080();
  v151 = *(v134 - 8);
  v15 = __chkstk_darwin(v134);
  v133 = v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v137 = v106 - v17;
  v18 = sub_1000017BC(&qword_1000DA678, &qword_1000B1E68);
  __chkstk_darwin(v18 - 8);
  v136 = v106 - v19;
  v160 = sub_1000A0070();
  v144 = *(v160 - 8);
  v20 = __chkstk_darwin(v160);
  v135 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v163 = v106 - v22;
  v147 = sub_1000A0510();
  v143 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10009F490();
  v153 = *(v155 - 8);
  v24 = __chkstk_darwin(v155);
  v154 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v156 = v106 - v26;
  v27 = sub_10009F440();
  v28 = *(v27 - 8);
  v166 = v27;
  v167 = v28;
  v29 = __chkstk_darwin(v27);
  v170 = v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v175 = v106 - v31;
  v32 = sub_10009F470();
  v168 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for KeyPackageSchema(0);
  v152 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema(0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  v42 = sub_10009F260();
  sub_1000889E0();
  sub_10009F250();
  if (v3)
  {
  }

  v127 = v39;
  v129 = v38;
  v131 = v35;
  v128 = v34;
  v132 = v37;
  v169 = v32;
  v130 = v41;
  v45 = v171;
  v44 = v172;
  v47 = v173;
  v46 = v174;
  sub_1000017BC(&qword_1000DA688, &qword_1000B1E70);
  sub_1000054CC(v45, v44);
  sub_100088A34();
  sub_10009F250();
  v48 = v42;
  v120 = v47;
  v119 = v46;
  v165 = 0;
  result = sub_100005568(v45, v44);
  v49 = v171;
  v50 = *(v171 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = v168;
    v161 = v168 + 16;
    v159 = (v167 + 16);
    v158 = v167 + 8;
    v162 = (v168 + 8);
    v157 = v167 + 32;
    v118 = (v143 + 16);
    v116 = (v153 + 16);
    v115 = v153 + 8;
    v114 = v153 + 32;
    v113 = (v144 + 6);
    v112 = (v144 + 4);
    v111 = (v145 + 2);
    v109 = (v144 + 2);
    v107 = (v151 + 16);
    v106[2] = v151 + 8;
    v110 = (v144 + 1);
    v106[1] = v151 + 32;
    v144 = &_swiftEmptyArrayStorage;
    v53 = v130;
    v54 = v160;
    v123 = v44;
    v122 = v45;
    v164 = v48;
    v121 = v171;
    v108 = v50;
    while (v51 < *(v49 + 16))
    {
      v55 = v49 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
      v56 = *(v127 + 72);
      v117 = v51;
      sub_100088BE4(v55 + v56 * v51, v53, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
      sub_1000017BC(&qword_1000DA6A0, &qword_1000B1E78);
      sub_100088AE8();
      v57 = v165;
      result = sub_10009F250();
      v58 = v163;
      if (v57)
      {

        sub_100005568(v122, v123);

        return sub_100088CD0(v130, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
      }

      v59 = v171;
      v124 = *(v171 + 16);
      if (v124)
      {
        v60 = 0;
        v61 = v152;
        v126 = v171 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v62 = &_swiftEmptyArrayStorage;
        v63 = v128;
        v125 = v171;
        while (v60 < *(v59 + 16))
        {
          v145 = v62;
          v64 = *(v61 + 72);
          v143 = v60;
          v65 = v132;
          result = sub_100088BE4(v126 + v64 * v60, v132, type metadata accessor for KeyPackageSchema);
          v66 = *(v65 + *(v131 + 20));
          v165 = *(v66 + 16);
          if (v165)
          {
            v67 = 0;
            v68 = &_swiftEmptyArrayStorage;
            while (v67 < *(v66 + 16))
            {
              (*(v52 + 16))(v63, v66 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v67, v169);
              sub_1000017BC(&qword_1000DA6B8, &qword_1000B1E80);
              v69 = v63;
              v70 = sub_10009F450();
              v72 = v71;
              sub_100088C4C();
              sub_10009F250();
              sub_100005568(v70, v72);
              sub_10009F460();
              v73 = v175;
              sub_10009F430();
              v63 = v69;
              v74 = v166;
              (*v159)(v170, v73, v166);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_10009EE64(0, v68[2] + 1, 1, v68);
              }

              v76 = v68[2];
              v75 = v68[3];
              if (v76 >= v75 >> 1)
              {
                v68 = sub_10009EE64(v75 > 1, v76 + 1, 1, v68);
              }

              ++v67;
              v77 = v167;
              (*(v167 + 8))(v175, v74);
              (*v162)(v63, v169);
              v68[2] = v76 + 1;
              result = (*(v77 + 32))(v68 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v170, v74);
              v52 = v168;
              if (v165 == v67)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
            break;
          }

LABEL_18:
          (*v118)(v146, v132, v147);

          v78 = v156;
          sub_10009F480();
          (*v116)(v154, v78, v155);
          v62 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_10009EE3C(0, v62[2] + 1, 1, v62);
          }

          v58 = v163;
          v80 = v62[2];
          v79 = v62[3];
          v81 = v155;
          if (v80 >= v79 >> 1)
          {
            v85 = sub_10009EE3C(v79 > 1, v80 + 1, 1, v62);
            v81 = v155;
            v62 = v85;
          }

          v82 = v143 + 1;
          v83 = v153;
          (*(v153 + 8))(v156, v81);
          sub_100088CD0(v132, type metadata accessor for KeyPackageSchema);
          v62[2] = v80 + 1;
          result = (*(v83 + 32))(v62 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v80, v154, v81);
          v60 = v82;
          v84 = v82 == v124;
          v63 = v128;
          v61 = v152;
          v59 = v125;
          v54 = v160;
          if (v84)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        break;
      }

      v62 = &_swiftEmptyArrayStorage;
LABEL_26:
      v145 = v62;
      v86 = v129;
      v87 = v130;
      v88 = v136;
      sub_1000A0060();
      result = (*v113)(v88, 1, v54);
      if (result == 1)
      {
        goto LABEL_41;
      }

      (*v112)(v58, v88, v54);
      v89 = *v111;
      v90 = v138;
      (*v111)(v148, v87, v138);
      sub_100005620(v87 + v86[5], v150, &qword_1000D8BC8, &qword_1000A85F8);
      v89(v149, v87 + v86[6], v90);
      sub_100005620(v87 + v86[7], v139, &qword_1000D8BC8, &qword_1000A85F8);
      v91 = v86[9];
      v165 = *(v87 + v86[8]);
      v92 = v86[11];
      LODWORD(v126) = *(v87 + v86[10]);
      v143 = *(v87 + v91);
      LODWORD(v125) = *(v87 + v92);
      v93 = v86[13];
      v124 = *(v87 + v86[12]);
      v106[0] = *(v87 + v93);
      (*v109)(v135, v163, v160);

      v94 = v137;
      sub_1000A0050();
      v165 = 0;
      v95 = v133;
      v96 = v134;
      (*v107)(v133, v94, v134);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_10009EE14(0, v144[2] + 1, 1, v144);
      }

      v97 = v151;
      v52 = v168;
      v98 = v117;
      v100 = v144[2];
      v99 = v144[3];
      if (v100 >= v99 >> 1)
      {
        v102 = sub_10009EE14(v99 > 1, v100 + 1, 1, v144);
        v98 = v117;
        v144 = v102;
      }

      (*(v97 + 8))(v94, v96);
      v54 = v160;
      (*v110)(v163, v160);
      v101 = v144;
      v144[2] = v100 + 1;
      (*(v97 + 32))(v101 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v100, v95, v96);
      v53 = v130;
      result = sub_100088CD0(v130, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
      v51 = v98 + 1;
      v44 = v123;
      v45 = v122;
      v49 = v121;
      if (v98 + 1 == v108)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v144 = &_swiftEmptyArrayStorage;
LABEL_34:
    v103 = v141;
    sub_10009F550();
    v104 = v140;
    sub_100005620(v103, v140, &qword_1000DA5D0, &qword_1000B1E38);
    v105 = sub_10009F560();
    result = (*(*(v105 - 8) + 48))(v104, 1, v105);
    if (result != 1)
    {

      sub_10009FB80();

      sub_100005568(v45, v44);
      return sub_100085A00(v103);
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1000889E0()
{
  result = qword_1000DA680;
  if (!qword_1000DA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA680);
  }

  return result;
}

unint64_t sub_100088A34()
{
  result = qword_1000DA690;
  if (!qword_1000DA690)
  {
    sub_1000053DC(&qword_1000DA688, &qword_1000B1E70);
    sub_100088B9C(&qword_1000DA698, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema, &protocol conformance descriptor for CircleTrustEnvelopeV1PayloadSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA690);
  }

  return result;
}

unint64_t sub_100088AE8()
{
  result = qword_1000DA6A8;
  if (!qword_1000DA6A8)
  {
    sub_1000053DC(&qword_1000DA6A0, &qword_1000B1E78);
    sub_100088B9C(&qword_1000DA6B0, type metadata accessor for KeyPackageSchema, &protocol conformance descriptor for KeyPackageSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6A8);
  }

  return result;
}

uint64_t sub_100088B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100088BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100088C4C()
{
  result = qword_1000DA6C0;
  if (!qword_1000DA6C0)
  {
    sub_1000053DC(&qword_1000DA6B8, &qword_1000B1E80);
    sub_100005424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6C0);
  }

  return result;
}

uint64_t sub_100088CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100088D30@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_1000A0350();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  sub_10009F270();
  swift_allocObject();
  v17 = sub_10009F260();
  sub_1000891BC();
  v18 = v48;
  sub_10009F250();
  if (v18)
  {
  }

  v48 = v14;
  v36 = v7;
  v37 = v9;
  v21 = v44;
  v20 = v45;
  v43 = v46;
  v35 = v47;
  sub_1000017BC(&qword_1000DA6D0, &qword_1000B1E88);
  sub_1000054CC(v21, v20);
  sub_100089210();
  sub_10009F250();
  v33 = v20;
  v34 = v17;
  v32 = v21;
  result = sub_100005568(v21, v20);
  v22 = v44;
  v42 = *(v44 + 16);
  if (v42)
  {
    v23 = 0;
    v39 = v11 + 8;
    v40 = (v11 + 16);
    v38 = v11 + 32;
    v24 = &_swiftEmptyArrayStorage;
    v41 = a3;
    v25 = v48;
    while (v23 < *(v22 + 16))
    {
      v26 = v22;

      sub_1000A0340();
      (*v40)(v25, v16, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10009EF54(0, v24[2] + 1, 1, v24);
      }

      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        v24 = sub_10009EF54(v27 > 1, v28 + 1, 1, v24);
      }

      ++v23;
      (*(v11 + 8))(v16, v10);
      v24[2] = v28 + 1;
      v25 = v48;
      (*(v11 + 32))(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v48, v10);
      v22 = v26;
      result = v43;
      if (v42 == v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v29 = v37;
    sub_10009F550();
    v30 = v36;
    sub_100085990(v29, v36);
    v31 = sub_10009F560();
    result = (*(*(v31 - 8) + 48))(v30, 1, v31);
    if (result != 1)
    {

      sub_1000A00B0();

      sub_100005568(v32, v33);
      return sub_100085A00(v29);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000891BC()
{
  result = qword_1000DA6C8;
  if (!qword_1000DA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6C8);
  }

  return result;
}

unint64_t sub_100089210()
{
  result = qword_1000DA6D8;
  if (!qword_1000DA6D8)
  {
    sub_1000053DC(&qword_1000DA6D0, &qword_1000B1E88);
    sub_100089294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6D8);
  }

  return result;
}

unint64_t sub_100089294()
{
  result = qword_1000DA6E0;
  if (!qword_1000DA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6E0);
  }

  return result;
}

uint64_t sub_1000892E8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v7;
  v8 = sub_10009F370();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A0470();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_100089878();
  v19 = v53;
  sub_10009F250();
  if (v19)
  {
  }

  v53 = v15;
  v46 = v10;
  v47 = v8;
  v21 = v49;
  v22 = v50;
  v48 = v51;
  v36 = v52;
  sub_1000017BC(&qword_1000DA6F0, &qword_1000B1E90);
  sub_1000054CC(v21, v22);
  sub_1000898CC();
  sub_10009F250();
  v34 = v22;
  v35 = v18;
  result = sub_100005568(v21, v22);
  v45 = v49;
  v23 = v21;
  v44 = *(v49 + 16);
  if (v44)
  {
    v24 = 0;
    v43 += 2;
    v40 = v12 + 8;
    v41 = (v12 + 16);
    v39 = v12 + 32;
    v25 = &_swiftEmptyArrayStorage;
    v42 = a3;
    while (1)
    {
      v26 = v45;
      if (v24 >= *(v45 + 16))
      {
        break;
      }

      v27 = *(type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema(0) - 8);
      (*v43)(v46, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v47);
      sub_1000A0460();
      (*v41)(v53, v17, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10009EF7C(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_10009EF7C(v28 > 1, v29 + 1, 1, v25);
      }

      ++v24;
      (*(v12 + 8))(v17, v11);
      v25[2] = v29 + 1;
      (*(v12 + 32))(v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v53, v11);
      v23 = v21;
      result = v48;
      if (v44 == v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v30 = v38;
    sub_10009F550();
    v31 = v37;
    sub_100085990(v30, v37);
    v32 = sub_10009F560();
    result = (*(*(v32 - 8) + 48))(v31, 1, v32);
    if (result != 1)
    {

      sub_1000A0300();

      sub_100005568(v23, v34);
      return sub_100085A00(v30);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100089878()
{
  result = qword_1000DA6E8;
  if (!qword_1000DA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6E8);
  }

  return result;
}

unint64_t sub_1000898CC()
{
  result = qword_1000DA6F8;
  if (!qword_1000DA6F8)
  {
    sub_1000053DC(&qword_1000DA6F0, &qword_1000B1E90);
    sub_100089950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6F8);
  }

  return result;
}

unint64_t sub_100089950()
{
  result = qword_1000DA700;
  if (!qword_1000DA700)
  {
    type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA700);
  }

  return result;
}

uint64_t sub_1000899A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v7;
  v8 = sub_10009F370();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A0200();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_100089F38();
  v19 = v53;
  sub_10009F250();
  if (v19)
  {
  }

  v53 = v15;
  v46 = v10;
  v47 = v8;
  v21 = v49;
  v22 = v50;
  v48 = v51;
  v36 = v52;
  sub_1000017BC(&qword_1000DA710, &qword_1000B1E98);
  sub_1000054CC(v21, v22);
  sub_100089F8C();
  sub_10009F250();
  v34 = v22;
  v35 = v18;
  result = sub_100005568(v21, v22);
  v45 = v49;
  v23 = v21;
  v44 = *(v49 + 16);
  if (v44)
  {
    v24 = 0;
    v43 += 2;
    v40 = v12 + 8;
    v41 = (v12 + 16);
    v39 = v12 + 32;
    v25 = &_swiftEmptyArrayStorage;
    v42 = a3;
    while (1)
    {
      v26 = v45;
      if (v24 >= *(v45 + 16))
      {
        break;
      }

      v27 = *(type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema(0) - 8);
      (*v43)(v46, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v47);
      sub_1000A01F0();
      (*v41)(v53, v17, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10009EDEC(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_10009EDEC(v28 > 1, v29 + 1, 1, v25);
      }

      ++v24;
      (*(v12 + 8))(v17, v11);
      v25[2] = v29 + 1;
      (*(v12 + 32))(v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v53, v11);
      v23 = v21;
      result = v48;
      if (v44 == v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v30 = v38;
    sub_10009F550();
    v31 = v37;
    sub_100085990(v30, v37);
    v32 = sub_10009F560();
    result = (*(*(v32 - 8) + 48))(v31, 1, v32);
    if (result != 1)
    {

      sub_10009FC80();

      sub_100005568(v23, v34);
      return sub_100085A00(v30);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100089F38()
{
  result = qword_1000DA708;
  if (!qword_1000DA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA708);
  }

  return result;
}

unint64_t sub_100089F8C()
{
  result = qword_1000DA718;
  if (!qword_1000DA718)
  {
    sub_1000053DC(&qword_1000DA710, &qword_1000B1E98);
    sub_10008A010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA718);
  }

  return result;
}

unint64_t sub_10008A010()
{
  result = qword_1000DA720;
  if (!qword_1000DA720)
  {
    type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA720);
  }

  return result;
}

uint64_t sub_10008A078@<X0>(uint64_t a3@<X8>)
{
  v38 = a3;
  v4 = sub_10009F9D0();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F980();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v39 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10008A4DC();
  sub_10009F250();
  if (v3)
  {
  }

  v16 = v8;
  v17 = v6;
  v15 = v7;
  v18 = v4;
  v40[8] = v50;
  v40[9] = v51;
  v40[10] = v52;
  v41 = v53;
  v40[4] = v46;
  v40[5] = v47;
  v40[6] = v48;
  v40[7] = v49;
  v40[0] = v42;
  v40[1] = v43;
  v40[2] = v44;
  v40[3] = v45;
  v29 = *(&v42 + 1);
  v35 = *(&v44 + 1);
  v36 = *(&v43 + 1);
  v26 = v45;
  v27 = v44;
  v33 = v42;
  v34 = *(&v45 + 1);
  v31 = *(&v47 + 1);
  v32 = *(&v46 + 1);
  v30 = *(&v48 + 1);
  v19 = v48;
  v28 = *(&v49 + 1);
  v20 = v49;
  v24 = *(&v51 + 1);
  v25 = *(&v50 + 1);
  v22 = BYTE1(v52);
  v23 = v52;
  v21 = *(&v52 + 1);

  v11 = v39;
  sub_10009F970();
  sub_1000087D0(v40);
  v13 = v16;
  v12 = v17;
  v14 = v15;
  (*(v16 + 16))(v17, v11, v15);
  (*(v37 + 104))(v12, enum case for IDSClientMessageType.statusKitInvitation(_:), v18);
  sub_10009FC10();

  return (*(v13 + 8))(v11, v14);
}

unint64_t sub_10008A460(uint64_t a1)
{
  result = sub_10008A488();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008A488()
{
  result = qword_1000DA728;
  if (!qword_1000DA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA728);
  }

  return result;
}

unint64_t sub_10008A4DC()
{
  result = qword_1000DA730;
  if (!qword_1000DA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA730);
  }

  return result;
}

uint64_t IDSProtobufSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v28 = a3;
  v32 = a4;
  v27 = a2;
  v5 = sub_10009F4B0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v26 = &v24 - v10;
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_1000017BC(&qword_1000DA738, &qword_1000B1F10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_1000022C4(a1, a1[3]);
  sub_10008A8D0();
  sub_1000A0CE0();
  v18 = v27;
  v17 = v28;
  v30 = v27;
  v31 = v28;
  v25 = *(v6 + 104);
  v25(v12, enum case for IDSProtobuf.IDSProtobufKey.data(_:), v5);
  sub_100005750(v18, v17);
  sub_100006804();
  v19 = v29;
  sub_1000A0AD0();
  if (v19)
  {
    (*(v6 + 8))(v12, v5);
    sub_1000057B0(v30, v31);
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v29 = v14;
    v21 = *(v6 + 8);
    v21(v12, v5);
    sub_1000057B0(v30, v31);
    v25(v26, enum case for IDSProtobuf.IDSProtobufKey.type(_:), v5);
    sub_1000A0B00();
    v21(v26, v5);
    v22 = v24;
    v25(v24, enum case for IDSProtobuf.IDSProtobufKey.isResponse(_:), v5);
    sub_1000A0A90();
    v23 = v29;
    v21(v22, v5);
    return (*(v23 + 8))(v16, v13);
  }
}

unint64_t sub_10008A8D0()
{
  result = qword_1000DA740;
  if (!qword_1000DA740)
  {
    sub_10009F4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA740);
  }

  return result;
}

char *IDSProtobufSchema.init(from:)(void *a1)
{
  result = sub_10008A9D4(a1);
  if (v1)
  {
    return (v3 & 0xFF01FFFF);
  }

  return result;
}

char *sub_10008A95C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10008A9D4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 18) = BYTE2(v6) & 1;
    *(a1 + 19) = HIBYTE(v6);
  }

  return result;
}

char *sub_10008A9D4(void *a1)
{
  v2 = sub_10009F4B0();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - v7;
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_1000017BC(&qword_1000DA748, &qword_1000B2028);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  sub_1000022C4(a1, a1[3]);
  sub_10008A8D0();
  v14 = v35;
  sub_1000A0CD0();
  if (v14)
  {
    sub_100002308(a1);
  }

  else
  {
    v30 = v5;
    v31 = v8;
    v35 = a1;
    v15 = v32;
    v16 = *(v32 + 13);
    v16(v10, enum case for IDSProtobuf.IDSProtobufKey.data(_:), v2);
    sub_100005424();
    sub_1000A0970();
    v29 = *(v15 + 8);
    v29(v10, v2);
    v18 = v37;
    v32 = v36;
    v19 = v31;
    v16(v31, enum case for IDSProtobuf.IDSProtobufKey.type(_:), v2);
    v20 = sub_1000A09A0();
    v21 = v19;
    v22 = v29;
    v29(v21, v2);
    LODWORD(v31) = v20;
    v38 = BYTE2(v20) & 1;
    v23 = v30;
    v16(v30, enum case for IDSProtobuf.IDSProtobufKey.isResponse(_:), v2);
    v24 = v34;
    sub_1000A0930();
    v25 = v24;
    v26 = v13;
    v27 = v35;
    v22(v23, v2);
    (*(v33 + 8))(v26, v25);
    v5 = v32;
    sub_100005750(v32, v18);
    sub_100002308(v27);
    sub_1000057B0(v5, v18);
  }

  return v5;
}

__n128 sub_10008ADFC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10008AE10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 20))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 19);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008AE70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 19) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10008AEC4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CDAC8;
  v8._object = v3;
  v5 = sub_1000A08F0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10008AF24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CDAC8;
  v9._object = a2;
  v6 = sub_1000A08F0(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10008AF88(uint64_t a1)
{
  v2 = sub_10008B19C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008AFC4(uint64_t a1)
{
  v2 = sub_10008B19C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NearbySessionMessageSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_1000017BC(&qword_1000DA750, &qword_1000B2030);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000022C4(a1, a1[3]);
  sub_10008B19C();
  sub_1000A0CE0();
  LOBYTE(v14) = 0;
  sub_1000A0B60();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_1000054CC(a3, v13);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10008B19C()
{
  result = qword_1000DA758;
  if (!qword_1000DA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA758);
  }

  return result;
}

uint64_t NearbySessionMessageSchema.init(from:)(void *a1)
{
  result = sub_10008B268(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10008B218@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008B268(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10008B268(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA778, &qword_1000B2278);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_10008B19C();
  sub_1000A0CD0();
  if (!v1)
  {
    v9[16] = 0;
    v7 = sub_1000A0A00();
    v9[15] = 1;
    sub_100005424();
    sub_1000A0A20();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002308(a1);
  return v7;
}

unint64_t sub_10008B450()
{
  result = qword_1000DA760;
  if (!qword_1000DA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA760);
  }

  return result;
}

unint64_t sub_10008B4A8()
{
  result = qword_1000DA768;
  if (!qword_1000DA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA768);
  }

  return result;
}

unint64_t sub_10008B500()
{
  result = qword_1000DA770;
  if (!qword_1000DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA770);
  }

  return result;
}

uint64_t sub_10008B554(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "invalidKeyMaterial";
  }

  else
  {
    v4 = "kHomedVersionKey";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "kHomedVersionKey";
  }

  else
  {
    v7 = "invalidKeyMaterial";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();
  }

  return v9 & 1;
}

Swift::Int sub_10008B604()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008B688(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10008B6F8(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

void sub_10008B784(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "kHomedVersionKey";
  }

  else
  {
    v3 = "invalidKeyMaterial";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_10008B7C8()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10008B814(uint64_t a1)
{
  v2 = sub_10008BA48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008B850(uint64_t a1)
{
  v2 = sub_10008BA48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInvitationSchema.IDSHomeKitInvitationRequestedCapabilitiesSchema.encode(to:)(void *a1, uint64_t a2, double a3)
{
  v6 = sub_1000017BC(&qword_1000DA780, &qword_1000B2280);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000022C4(a1, a1[3]);
  sub_10008BA48();
  sub_1000A0CE0();
  v13 = 0;
  sub_1000A0B50();
  if (!v3)
  {
    v11[1] = a2;
    v12 = 1;
    sub_1000017BC(&qword_1000DA790, &qword_1000B2288);
    sub_1000902F0(&qword_1000DA798, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10008BA48()
{
  result = qword_1000DA788;
  if (!qword_1000DA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA788);
  }

  return result;
}

unint64_t sub_10008BAB4(char a1)
{
  result = 0x6D614E656D6F486BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 9:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 16:
      result = 0xD00000000000002BLL;
      break;
    case 6:
      result = 0x63532E47522E4D48;
      break;
    case 7:
      result = 0x495555656D6F486BLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x4B4449726573556BLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_10008BD04@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008E6CC(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = result;
  }

  return result;
}

uint64_t sub_10008BD54(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10008BAB4(*a1);
  v5 = v4;
  if (v3 == sub_10008BAB4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10008BDDC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10008BAB4(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008BE40(uint64_t a1)
{
  sub_10008BAB4(*v1);
  sub_1000A05B0();
}

Swift::Int sub_10008BE94(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_10008BAB4(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10008BEF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008EBE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10008BF24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008BAB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10008BF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008EBE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008BFA0(uint64_t a1)
{
  v2 = sub_10008E8CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008BFDC(uint64_t a1)
{
  v2 = sub_10008E8CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA7A0, &qword_1000B2290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10008E8CC();
  sub_1000A0CE0();
  LOBYTE(v18) = 0;
  sub_1000A0A80();
  if (!v2)
  {
    v9 = type metadata accessor for IDSHomeKitInvitationSchema(0);
    LOBYTE(v18) = 1;
    sub_10009F350();
    sub_10008E9E8(&qword_1000D84A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000A0AD0();
    v18 = *(v3 + v9[6]);
    v19 = 2;
    sub_10008E940();
    sub_1000A0AD0();
    LOBYTE(v18) = 3;
    sub_1000A0A90();
    LOBYTE(v18) = 4;
    sub_1000A0AB0();
    LOBYTE(v18) = 5;
    sub_1000A0A90();
    v18 = *(v3 + v9[10]);
    v19 = 6;
    sub_10008E994();
    sub_1000A0AD0();
    LOBYTE(v18) = 7;
    sub_10009F370();
    sub_10008E9E8(&qword_1000D8808, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000A0AD0();
    v10 = (v3 + v9[12]);
    v11 = v10[1];
    *&v18 = *v10;
    *(&v18 + 1) = v11;
    v19 = 8;
    sub_100005750(v18, v11);
    v17[1] = sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v18, *(&v18 + 1));
    LOBYTE(v18) = 9;
    sub_1000A0A80();
    LOBYTE(v18) = 10;
    sub_1000A0AD0();
    LOBYTE(v18) = 11;
    sub_1000A0A80();
    v13 = (v3 + v9[16]);
    v14 = v13[1];
    *&v18 = *v13;
    *(&v18 + 1) = v14;
    v19 = 12;
    sub_100005750(v18, v14);
    sub_1000A0AD0();
    sub_1000057B0(v18, *(&v18 + 1));
    LOBYTE(v18) = 13;
    sub_1000A0A80();
    LOBYTE(v18) = 14;
    sub_1000A0AB0();
    LOBYTE(v18) = 15;
    sub_1000A0AB0();
    v15 = (v3 + v9[20]);
    v16 = v15[1];
    *&v18 = *v15;
    *(&v18 + 1) = v16;
    v19 = 16;
    sub_100005750(v18, v16);
    sub_1000A0AD0();
    sub_1000057B0(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t IDSHomeKitInvitationSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v43 - v6;
  v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v8 - 8);
  v10 = v43 - v9;
  v11 = sub_1000017BC(&qword_1000DA7C0, &qword_1000B2298);
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11);
  v13 = v43 - v12;
  v14 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  __chkstk_darwin(v14);
  v16 = (v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000022C4(a1, a1[3]);
  sub_10008E8CC();
  v50 = v13;
  v17 = v51;
  sub_1000A0CD0();
  if (v17)
  {
    return sub_100002308(a1);
  }

  v44 = a1;
  v45 = v14;
  v51 = v16;
  LOBYTE(v52) = 0;
  v18 = sub_1000A0920();
  v19 = v51;
  *v51 = v18;
  v19[1] = v20;
  sub_10009F350();
  LOBYTE(v52) = 1;
  sub_10008E9E8(&qword_1000D84B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000A0970();
  v21 = v45;
  sub_1000056E8(v10, v19 + v45[5], &qword_1000D84A8, &unk_1000B0C40);
  v53 = 2;
  sub_10008EA74();
  v43[1] = 0;
  sub_1000A0970();
  *(v19 + v21[6]) = v52;
  LOBYTE(v52) = 3;
  *(v19 + v21[7]) = sub_1000A0930();
  LOBYTE(v52) = 4;
  v22 = sub_1000A0950();
  v23 = v19 + v21[8];
  *v23 = v22;
  v23[8] = v24 & 1;
  LOBYTE(v52) = 5;
  *(v19 + v21[9]) = sub_1000A0930();
  v53 = 6;
  sub_10008EAC8();
  sub_1000A0970();
  *(v19 + v21[10]) = v52;
  sub_10009F370();
  LOBYTE(v52) = 7;
  sub_10008E9E8(&qword_1000D8850, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000A0970();
  sub_1000056E8(v7, v51 + v45[11], &qword_1000D8BC8, &qword_1000A85F8);
  v53 = 8;
  sub_100005424();
  sub_1000A0970();
  *(v51 + v45[12]) = v52;
  LOBYTE(v52) = 9;
  v25 = sub_1000A0920();
  v26 = (v51 + v45[13]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v52) = 10;
  sub_1000A0970();
  sub_1000056E8(v47, v51 + v45[14], &qword_1000D8BC8, &qword_1000A85F8);
  LOBYTE(v52) = 11;
  v28 = sub_1000A0920();
  v29 = (v51 + v45[15]);
  *v29 = v28;
  v29[1] = v30;
  v53 = 12;
  sub_1000A0970();
  *(v51 + v45[16]) = v52;
  LOBYTE(v52) = 13;
  v31 = sub_1000A0920();
  v32 = (v51 + v45[17]);
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v52) = 14;
  v34 = sub_1000A0950();
  v35 = v51 + v45[18];
  *v35 = v34;
  v35[8] = v36 & 1;
  LOBYTE(v52) = 15;
  v37 = sub_1000A0950();
  v38 = v51 + v45[19];
  *v38 = v37;
  v38[8] = v39 & 1;
  v53 = 16;
  sub_1000A0970();
  (*(v48 + 8))(v50, v49);
  v40 = v46;
  v41 = v51;
  *(v51 + v45[20]) = v52;
  sub_10008F1AC(v41, v40, type metadata accessor for IDSHomeKitInvitationSchema);
  sub_100002308(v44);
  return sub_10008F214(v41, type metadata accessor for IDSHomeKitInvitationSchema);
}

uint64_t sub_10008D158(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "HMWeekDayScheduleRules";
  }

  else
  {
    v2 = "eyExternalRepresentationKey";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "HMWeekDayScheduleRules";
  }

  else
  {
    v4 = "eyExternalRepresentationKey";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000A0BD0();
  }

  return v5 & 1;
}

Swift::Int sub_10008D1FC()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008D274(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10008D2D8(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

void sub_10008D358(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "HMWeekDayScheduleRules";
  }

  else
  {
    v2 = "eyExternalRepresentationKey";
  }

  *a1 = 0xD000000000000016;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_10008D3CC(uint64_t a1)
{
  v2 = sub_10008EB1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008D408(uint64_t a1)
{
  v2 = sub_10008EB1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInviteeScheduleSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000017BC(&qword_1000DA7D8, &qword_1000B22A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000022C4(a1, a1[3]);
  sub_10008EB1C();
  sub_1000A0CE0();
  v14 = a2;
  v13 = 0;
  sub_1000017BC(&qword_1000DA7E8, &qword_1000B22A8);
  sub_100090188(&qword_1000DA7F0, sub_10008EB70, &protocol conformance descriptor for <A> [A]);
  sub_1000A0AD0();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1000017BC(&qword_1000DA800, &qword_1000B22B0);
    sub_100090254(&qword_1000DA808, &qword_1000DA810, &protocol conformance descriptor for IDSHomeKitInviteeScheduleYearDayRuleSchema, &protocol conformance descriptor for <A> [A]);
    sub_1000A0AD0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10008D684@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008EC38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10008D6CC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000025;
  v3 = *a1;
  v4 = "eRuleCodingKeyStartTime";
  if (v3 == 1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD00000000000002BLL;
  }

  if (v3 == 1)
  {
    v6 = "eRuleCodingKeyStartTime";
  }

  else
  {
    v6 = "eRuleCodingKeyEndTime";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000027;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "HMYearDayScheduleRules";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000002BLL;
    v4 = "eRuleCodingKeyEndTime";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "HMYearDayScheduleRules";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10008D7A8()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008D844(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10008D8CC(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10008D964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008EF04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10008D994(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000025;
  v3 = "eRuleCodingKeyStartTime";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000002BLL;
    v3 = "eRuleCodingKeyEndTime";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000027;
    v4 = "HMYearDayScheduleRules";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_10008D9F0()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000027;
  }
}

unint64_t sub_10008DA48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008EF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008DA70(uint64_t a1)
{
  v2 = sub_10008EEB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008DAAC(uint64_t a1)
{
  v2 = sub_10008EEB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInviteeScheduleWeekDayRuleSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA818, &qword_1000B22B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10008EEB0();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0AB0();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000A0AB0();
  v8[13] = 2;
  sub_1000A0AB0();
  return (*(v4 + 8))(v6, v3);
}

double IDSHomeKitInviteeScheduleWeekDayRuleSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10008EF50(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10008DCF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6144646E45444D48;
  }

  else
  {
    v3 = 0x7472617453444D48;
  }

  if (v2)
  {
    v4 = 0xEF79654B65746144;
  }

  else
  {
    v4 = 0xED000079654B6574;
  }

  if (*a2)
  {
    v5 = 0x6144646E45444D48;
  }

  else
  {
    v5 = 0x7472617453444D48;
  }

  if (*a2)
  {
    v6 = 0xED000079654B6574;
  }

  else
  {
    v6 = 0xEF79654B65746144;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10008DDB0()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008DE4C(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10008DED4(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008DF78@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000A08F0(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_10008DFD4(uint64_t *a1@<X8>)
{
  v2 = 0x7472617453444D48;
  if (*v1)
  {
    v2 = 0x6144646E45444D48;
  }

  v3 = 0xEF79654B65746144;
  if (*v1)
  {
    v3 = 0xED000079654B6574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10008E02C()
{
  if (*v0)
  {
    return 0x6144646E45444D48;
  }

  else
  {
    return 0x7472617453444D48;
  }
}

uint64_t sub_10008E08C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_1000A08F0(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_10008E0EC(uint64_t a1)
{
  v2 = sub_10008F158();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008E128(uint64_t a1)
{
  v2 = sub_10008F158();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInviteeScheduleYearDayRuleSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA828, &qword_1000B22C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10008F158();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_10009F350();
  sub_10008E9E8(&qword_1000D84A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000A0AD0();
  if (!v1)
  {
    type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
    v8[14] = 1;
    sub_1000A0AD0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IDSHomeKitInviteeScheduleYearDayRuleSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v20 - v8;
  v27 = sub_1000017BC(&qword_1000DA838, &qword_1000B22C8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v20 - v9;
  v11 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_10008F158();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v21 = v11;
  v22 = v13;
  v14 = v25;
  v23 = v7;
  sub_10009F350();
  v29 = 0;
  sub_10008E9E8(&qword_1000D84B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15 = v26;
  v16 = v27;
  sub_1000A0970();
  v17 = v22;
  sub_1000056E8(v15, v22, &qword_1000D84A8, &unk_1000B0C40);
  v28 = 1;
  v18 = v23;
  sub_1000A0970();
  (*(v14 + 8))(v10, v16);
  sub_1000056E8(v18, v17 + *(v21 + 20), &qword_1000D84A8, &unk_1000B0C40);
  sub_10008F1AC(v17, v24, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema);
  sub_100002308(a1);
  return sub_10008F214(v17, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema);
}

void *sub_10008E6CC(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DAA58, &qword_1000B2C28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10008BA48();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v11 = 0;
    sub_1000A09F0();
    sub_1000017BC(&qword_1000DA790, &qword_1000B2288);
    v10 = 1;
    sub_1000902F0(&qword_1000DAA60, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_1000A0A20();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002308(a1);
  }

  return v7;
}

unint64_t sub_10008E8CC()
{
  result = qword_1000DA7A8;
  if (!qword_1000DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7A8);
  }

  return result;
}

unint64_t sub_10008E940()
{
  result = qword_1000DA7B0;
  if (!qword_1000DA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7B0);
  }

  return result;
}

unint64_t sub_10008E994()
{
  result = qword_1000DA7B8;
  if (!qword_1000DA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7B8);
  }

  return result;
}

uint64_t sub_10008E9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008EA30(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_10008EA74()
{
  result = qword_1000DA7C8;
  if (!qword_1000DA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7C8);
  }

  return result;
}

unint64_t sub_10008EAC8()
{
  result = qword_1000DA7D0;
  if (!qword_1000DA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7D0);
  }

  return result;
}

unint64_t sub_10008EB1C()
{
  result = qword_1000DA7E0;
  if (!qword_1000DA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7E0);
  }

  return result;
}

unint64_t sub_10008EB70()
{
  result = qword_1000DA7F8;
  if (!qword_1000DA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7F8);
  }

  return result;
}

unint64_t sub_10008EBE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000A0BE0();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10008EC38(void *a1)
{
  v2 = sub_1000017BC(&qword_1000DAA30, &qword_1000B2C20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_10008EB1C();
  sub_1000A0CD0();
  sub_1000017BC(&qword_1000DA7E8, &qword_1000B22A8);
  HIBYTE(v8) = 0;
  sub_100090188(&qword_1000DAA38, sub_100090200, &protocol conformance descriptor for <A> [A]);
  sub_1000A0970();
  v7 = v9;
  sub_1000017BC(&qword_1000DA800, &qword_1000B22B0);
  HIBYTE(v8) = 1;
  sub_100090254(&qword_1000DAA48, &qword_1000DAA50, &protocol conformance descriptor for IDSHomeKitInviteeScheduleYearDayRuleSchema, &protocol conformance descriptor for <A> [A]);
  sub_1000A0970();
  (*(v3 + 8))(v5, v2);
  sub_100002308(a1);
  return v7;
}

unint64_t sub_10008EEB0()
{
  result = qword_1000DA820;
  if (!qword_1000DA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA820);
  }

  return result;
}

unint64_t sub_10008EF04(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDD70;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008EF50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DAA28, &qword_1000B2C18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10008EEB0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v25 = 0;
  v9 = sub_1000A0950();
  v11 = v10;
  v12 = v9;
  v24 = 1;
  v13 = sub_1000A0950();
  v22 = v14;
  v21 = v13;
  v23 = 2;
  v15 = sub_1000A0950();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100002308(a1);
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18 & 1;
  return result;
}

unint64_t sub_10008F158()
{
  result = qword_1000DA830;
  if (!qword_1000DA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA830);
  }

  return result;
}

uint64_t sub_10008F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008F214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10008F474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
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
      v13 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10008F5B0(uint64_t a1)
{
  sub_10007CBE4(319, &qword_1000D92B8, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10008F790(319, &qword_1000D8528, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000DA8A8, &type metadata for IDSHomeKitInvitationSchema.IDSHomeKitInvitationRequestedCapabilitiesSchema);
      if (v3 <= 0x3F)
      {
        sub_10007CBE4(319, &qword_1000DA418, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10007CBE4(319, &qword_1000D8530, &type metadata for Int);
          if (v5 <= 0x3F)
          {
            sub_10007CBE4(319, &unk_1000DA8B0, &type metadata for IDSHomeKitInviteeScheduleSchema);
            if (v6 <= 0x3F)
            {
              sub_10008F790(319, &qword_1000D8C50, &type metadata accessor for UUID);
              if (v7 <= 0x3F)
              {
                sub_10007CBE4(319, &qword_1000D86B8, &type metadata for Data);
                if (v8 <= 0x3F)
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

void sub_10008F790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000A07A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10008F7F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10008F850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10008F8B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008F8C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008F8E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_10008F940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008F9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10008FA48(uint64_t a1)
{
  sub_10008F790(319, &qword_1000D8528, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for IDSHomeKitInvitationSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSHomeKitInvitationSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008FC64()
{
  result = qword_1000DA9B0;
  if (!qword_1000DA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9B0);
  }

  return result;
}

unint64_t sub_10008FCBC()
{
  result = qword_1000DA9B8;
  if (!qword_1000DA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9B8);
  }

  return result;
}

unint64_t sub_10008FD14()
{
  result = qword_1000DA9C0;
  if (!qword_1000DA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9C0);
  }

  return result;
}

unint64_t sub_10008FD6C()
{
  result = qword_1000DA9C8;
  if (!qword_1000DA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9C8);
  }

  return result;
}

unint64_t sub_10008FDC4()
{
  result = qword_1000DA9D0;
  if (!qword_1000DA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9D0);
  }

  return result;
}

unint64_t sub_10008FE1C()
{
  result = qword_1000DA9D8;
  if (!qword_1000DA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9D8);
  }

  return result;
}

unint64_t sub_10008FE74()
{
  result = qword_1000DA9E0;
  if (!qword_1000DA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9E0);
  }

  return result;
}

unint64_t sub_10008FECC()
{
  result = qword_1000DA9E8;
  if (!qword_1000DA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9E8);
  }

  return result;
}

unint64_t sub_10008FF24()
{
  result = qword_1000DA9F0;
  if (!qword_1000DA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9F0);
  }

  return result;
}

unint64_t sub_10008FF7C()
{
  result = qword_1000DA9F8;
  if (!qword_1000DA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9F8);
  }

  return result;
}

unint64_t sub_10008FFD4()
{
  result = qword_1000DAA00;
  if (!qword_1000DAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA00);
  }

  return result;
}

unint64_t sub_10009002C()
{
  result = qword_1000DAA08;
  if (!qword_1000DAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA08);
  }

  return result;
}

unint64_t sub_100090084()
{
  result = qword_1000DAA10;
  if (!qword_1000DAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA10);
  }

  return result;
}

unint64_t sub_1000900DC()
{
  result = qword_1000DAA18;
  if (!qword_1000DAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA18);
  }

  return result;
}

unint64_t sub_100090134()
{
  result = qword_1000DAA20;
  if (!qword_1000DAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA20);
  }

  return result;
}

uint64_t sub_100090188(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DA7E8, &qword_1000B22A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100090200()
{
  result = qword_1000DAA40;
  if (!qword_1000DAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA40);
  }

  return result;
}

uint64_t sub_100090254(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DA800, &qword_1000B22B0);
    sub_10008E9E8(a2, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000902F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DA790, &qword_1000B2288);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009036C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v17[1] = a3;
  v3 = sub_1000017BC(&qword_1000DAA70, &qword_1000B2CA8);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_10009F9B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F9D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000906DC();
  v14 = v19;
  sub_10009F250();

  if (!v14)
  {
    v18 = v11;
    v19 = v10;
    sub_10009F9A0();
    v16 = *(v7 + 48);
    if (v16(v5, 1, v6) == 1)
    {
      (*(v7 + 104))(v9, enum case for CompanionAuthMessage.MessageType.stopScanning(_:), v6);
      if (v16(v5, 1, v6) != 1)
      {
        sub_100090730(v5);
      }
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
    }

    sub_10009F9C0();
    (*(v18 + 104))(v13, enum case for IDSClientMessageType.companionAuthMessage(_:), v19);
    return sub_10009FC10();
  }

  return result;
}

unint64_t sub_100090660(uint64_t a1)
{
  result = sub_100090688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100090688()
{
  result = qword_1000DAA68;
  if (!qword_1000DAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA68);
  }

  return result;
}

unint64_t sub_1000906DC()
{
  result = qword_1000DAA78;
  if (!qword_1000DAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA78);
  }

  return result;
}

uint64_t sub_100090730(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DAA70, &qword_1000B2CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100090798(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065636E65;
  v3 = 0x7265666E6F637661;
  v4 = a1;
  v5 = 0x496E6F6973736573;
  v6 = 0xE900000000000044;
  if (a1 != 4)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v5 = 6581603;
    v6 = 0xE300000000000000;
  }

  v7 = 0x80000001000A24A0;
  v8 = 0xD00000000000001BLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000A24C0;
  }

  if (!a1)
  {
    v8 = 0x7265666E6F637661;
    v7 = 0xEC00000065636E65;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v9 != 6581603)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000044;
      if (v9 != 0x496E6F6973736573)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v9 != 0x6E6F6973726576)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001000A24A0;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0xD000000000000010;
      v2 = 0x80000001000A24C0;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_1000A0BD0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_100090974(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1936486513;
    }

    else
    {
      v3 = 1852600433;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 6910577;
  }

  else
  {
    v2 = 0xE400000000000000;
    if (a1 == 3)
    {
      v3 = 1802728049;
    }

    else
    {
      v3 = 1953722993;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 1936486513;
    }

    else
    {
      v7 = 1852600433;
    }

    v6 = 0xE400000000000000;
    if (v3 != v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 1802728049;
    if (a2 != 3)
    {
      v4 = 1953722993;
    }

    if (a2 == 2)
    {
      v5 = 6910577;
    }

    else
    {
      v5 = v4;
    }

    if (a2 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v6)
  {
LABEL_28:
    v8 = sub_1000A0BD0();
    goto LABEL_29;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_100090AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6910577;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 116;
    }

    else
    {
      v4 = 20596;
    }

    if (v3 == 2)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7565937;
    }

    else
    {
      v4 = 6910577;
    }

    v5 = 0xE300000000000000;
  }

  v6 = 0xE100000000000000;
  v7 = 116;
  if (a2 != 2)
  {
    v7 = 20596;
    v6 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 7565937;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A0BD0();
  }

  return v10 & 1;
}

uint64_t sub_100090BA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7811682;
    }

    else
    {
      v3 = 7221858;
    }

    v4 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001000A2910;
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000023;
    }

    else
    {
      v3 = 0xD000000000000020;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001000A2930;
    }

    else
    {
      v4 = 0x80000001000A2960;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7811682;
    }

    else
    {
      v9 = 7221858;
    }

    v8 = 0xE300000000000000;
    if (v3 != v9)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xD000000000000023;
    v6 = 0x80000001000A2960;
    if (a2 == 3)
    {
      v6 = 0x80000001000A2930;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000A2910;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v8)
  {
LABEL_32:
    v10 = sub_1000A0BD0();
    goto LABEL_33;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

uint64_t sub_100090D0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 21345;
  v5 = 0xEC00000064696563;
  v6 = 26739;
  if (a1 != 4)
  {
    v6 = 29537;
  }

  if (a1 == 3)
  {
    v6 = 0x6172742D33622D78;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 26994;
  if (a1 != 1)
  {
    v8 = 0xD000000000000019;
    v7 = 0x80000001000A2290;
  }

  if (a1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEC00000064696563;
      if (v9 != 0x6172742D33622D78)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      if (a2 == 4)
      {
        if (v9 != 26739)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 29537)
      {
LABEL_34:
        v12 = sub_1000A0BD0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE200000000000000;
      if (v9 != 26994)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x80000001000A2290;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE200000000000000;
    if (v9 != 21345)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_100090EAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x4865657469766E69;
  v5 = 0xED0000656C646E61;
  v6 = 0xE800000000000000;
  v7 = 0x656D6954746E6573;
  if (a1 != 4)
  {
    v7 = 0x6D614E70756F7267;
    v6 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x4C52556572616873;
  if (a1 != 1)
  {
    v9 = 0x6974617469766E69;
    v8 = 0xEF6E656B6F546E6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x444970756F7267;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED0000656C646E61;
      if (v10 != 0x4865657469766E69)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656D6954746E6573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x6D614E70756F7267)
      {
LABEL_34:
        v13 = sub_1000A0BD0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x4C52556572616873)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF6E656B6F546E6FLL;
      if (v10 != 0x6974617469766E69)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x444970756F7267)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1000910CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1953722993;
  if (a1 != 5)
  {
    v4 = 1919971953;
  }

  v5 = 1802728049;
  if (a1 != 3)
  {
    v5 = 1769173617;
  }

  if (a1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE500000000000000;
  v7 = 0x3670697271;
  if (a1 != 1)
  {
    v7 = 7369329;
    v6 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 1885958769;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE500000000000000;
        if (v8 != 0x3670697271)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v10 = 0xE300000000000000;
        if (v8 != 7369329)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v8 != 1885958769)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        if (v8 != 1953722993)
        {
          goto LABEL_39;
        }
      }

      else if (v8 != 1919971953)
      {
LABEL_39:
        v11 = sub_1000A0BD0();
        goto LABEL_40;
      }
    }

    else if (a2 == 3)
    {
      if (v8 != 1802728049)
      {
        goto LABEL_39;
      }
    }

    else if (v8 != 1769173617)
    {
      goto LABEL_39;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_39;
  }

  v11 = 1;
LABEL_40:

  return v11 & 1;
}

uint64_t sub_10009128C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 112;
    }

    else
    {
      v3 = 26994;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 115;
    }

    else
    {
      v3 = 118;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 118;
  v6 = 0xE100000000000000;
  v7 = 112;
  if (a2 != 2)
  {
    v7 = 26994;
    v6 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 115;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A0BD0();
  }

  return v10 & 1;
}

uint64_t sub_100091380(char a1, char a2)
{
  if (*&aQpln_1[8 * a1] == *&aQpln_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000913E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE100000000000000;
    v12 = 115;
    if (a1 == 2)
    {
      v12 = 0xD000000000000017;
      v11 = 0x80000001000A29D0;
    }

    v13 = 0x80000001000A2990;
    v14 = 0xD000000000000015;
    if (a1)
    {
      v14 = 0xD000000000000012;
      v13 = 0x80000001000A29B0;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0x80000001000A2A10;
    v4 = 0xD000000000000014;
    v5 = 0x80000001000A2A30;
    v6 = 0xD000000000000019;
    if (a1 != 7)
    {
      v6 = 0xD000000000000017;
      v5 = 0x80000001000A2A50;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x80000001000A2320;
    v8 = 0xD000000000000010;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v7 = 0x80000001000A29F0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0xE100000000000000;
        if (v9 != 115)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v16 = "fanout-groupMembers-key";
      goto LABEL_45;
    }

    if (!a2)
    {
      v15 = 0x80000001000A2990;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v17 = "fanout-groupID-key";
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x80000001000A2A10;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 == 7)
      {
        v15 = 0x80000001000A2A30;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v16 = "client-context-data-key";
LABEL_45:
      v15 = (v16 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 4)
    {
      v15 = 0x80000001000A2320;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v17 = "participant-id-key";
  }

  v15 = (v17 - 32) | 0x8000000000000000;
  if (v9 != 0xD000000000000012)
  {
LABEL_51:
    v18 = sub_1000A0BD0();
    goto LABEL_52;
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_100091674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6D77706D7472;
  v5 = 0xE100000000000000;
  if (a1 == 2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 115;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v6 = 0x6B706D7472;
  }

  else
  {
    v3 = 0x80000001000A29B0;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6D77706D7472;
    }

    else
    {
      v11 = 115;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE100000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x6B706D7472;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (a2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0x80000001000A29B0;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1000A0BD0();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_100091798(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 12656;
    }

    else
    {
      v3 = 12400;
    }

    v2 = 0xE200000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001000A1310;
  }

  else if (a1 == 3)
  {
    v2 = 0xE100000000000000;
    v3 = 118;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v2 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 12656;
    }

    else
    {
      v5 = 12400;
    }

    v4 = 0xE200000000000000;
    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0x80000001000A1310;
    if (v3 != 0xD000000000000015)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0xE100000000000000;
    if (v3 != 118)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xEC000000656D614ELL;
    if (v3 != 0x64726F6365526B63)
    {
LABEL_26:
      v6 = sub_1000A0BD0();
      goto LABEL_27;
    }
  }

  if (v2 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_100091914(char a1, char a2)
{
  if (*&aV_11[8 * a1] == *&aV_11[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10009197C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  if (a1 <= 3u)
  {
    v3 = 0xE100000000000000;
    v4 = 115;
    if (a1 != 2)
    {
      v4 = 0xD000000000000012;
      v3 = 0x80000001000A29B0;
    }

    v7 = 0x80000001000A2990;
    v8 = 0xD000000000000015;
    if (a1)
    {
      v8 = 0xD000000000000017;
      v7 = 0x80000001000A2A50;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v3 = 0x80000001000A2320;
    v4 = 0xD000000000000010;
    v5 = 0x80000001000A2420;
    v6 = 0xD000000000000011;
    if (a1 != 7)
    {
      v6 = 7627363;
      v5 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x80000001000A29D0;
    v8 = 0xD000000000000017;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v7 = 0x80000001000A29F0;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v12 = 0x80000001000A2990;
        v2 = 0xD000000000000015;
        goto LABEL_39;
      }

      v13 = "client-context-data-key";
LABEL_34:
      v12 = (v13 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000017;
      goto LABEL_39;
    }

    if (a2 == 2)
    {
      v12 = 0xE100000000000000;
      v2 = 115;
      goto LABEL_39;
    }

    v14 = "fanout-groupID-key";
LABEL_38:
    v12 = (v14 - 32) | 0x8000000000000000;
    goto LABEL_39;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = "fanout-groupMembers-key";
      goto LABEL_34;
    }

    v14 = "participant-id-key";
    goto LABEL_38;
  }

  if (a2 == 6)
  {
    v12 = 0x80000001000A2320;
    v2 = 0xD000000000000010;
  }

  else if (a2 == 7)
  {
    v12 = 0x80000001000A2420;
    v2 = 0xD000000000000011;
  }

  else
  {
    v12 = 0xE300000000000000;
    v2 = 7627363;
  }

LABEL_39:
  if (v10 == v2 && v11 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1000A0BD0();
  }

  return v15 & 1;
}

uint64_t sub_100091BC0(char a1, char a2)
{
  if (*&aV_12[8 * a1] == *&aV_12[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_100091C28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x646E616D6D6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x6E6F6973726576;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E65696C63;
    }

    else
    {
      v4 = 0x646E616D6D6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x746E65696C63;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

uint64_t sub_100091D54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 115;
  v5 = 0xEB00000000697275;
  v6 = 0x6D6B737472;
  if (a1 == 4)
  {
    v6 = 0x6D6B6D7472;
  }

  if (a1 == 3)
  {
    v6 = 0x6D6B6D6C6C617472;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (a1 != 1)
  {
    v4 = 0x6D6B6D6C6C617472;
    v3 = 0xE800000000000000;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001000A29B0;
  }

  if (a1 <= 2u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0xEB00000000697275;
      if (v7 != 0x6D6B6D6C6C617472)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v9 = 0xE500000000000000;
      if (v7 != 0x6D6B6D7472)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v9 = 0xE500000000000000;
      if (v7 != 0x6D6B737472)
      {
LABEL_34:
        v10 = sub_1000A0BD0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0xE100000000000000;
      if (v7 != 115)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v9 = 0xE800000000000000;
      if (v7 != 0x6D6B6D6C6C617472)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v9 = 0x80000001000A29B0;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_34;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_34;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_100091F20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (a1 != 5)
  {
    v5 = 0x6E6F697461636F6CLL;
    v4 = 0xE800000000000000;
  }

  v6 = 0x5372656767697274;
  v7 = 0xED00007375746174;
  if (a1 != 3)
  {
    v6 = 118;
    v7 = 0xE100000000000000;
  }

  if (a1 > 4u)
  {
    v8 = v4;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000015;
  v10 = 0x444965636E6566;
  if (a1 == 1)
  {
    v10 = 1684632949;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  if (a1)
  {
    v9 = v10;
  }

  else
  {
    v3 = 0x80000001000A1310;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1684632949)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x444965636E6566)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = 0x80000001000A1310;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1702125924)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6E6F697461636F6CLL)
      {
LABEL_41:
        v14 = sub_1000A0BD0();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xED00007375746174;
    if (v11 != 0x5372656767697274)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    if (v11 != 118)
    {
      goto LABEL_41;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}