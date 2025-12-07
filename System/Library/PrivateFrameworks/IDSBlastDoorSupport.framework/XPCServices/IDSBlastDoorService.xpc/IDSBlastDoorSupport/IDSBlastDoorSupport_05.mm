uint64_t sub_100092134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7632239;
    }

    else
    {
      v3 = 28265;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7265746E65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1953069157;
    }

    else
    {
      v3 = 0x6D72657465646E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEC00000064656E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7632239;
    }

    else
    {
      v6 = 28265;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7265746E65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1953069157)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000064656E69;
    if (v3 != 0x6D72657465646E75)
    {
LABEL_34:
      v7 = sub_1000A0BD0();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1000922B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x646E496B6E756863;
    }

    else
    {
      v3 = 0x6D754E6B6E756863;
    }

    if (v2)
    {
      v4 = 0xED000079654B7865;
    }

    else
    {
      v4 = 0xEE0079654B726562;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001000A2560;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F72476B6E756863;
    v4 = 0xEF79654B44497075;
  }

  else
  {
    v3 = 0x7461446B6E756863;
    v4 = 0xEC00000079654B61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x646E496B6E756863;
    }

    else
    {
      v9 = 0x6D754E6B6E756863;
    }

    if (a2)
    {
      v8 = 0xED000079654B7865;
    }

    else
    {
      v8 = 0xEE0079654B726562;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F72476B6E756863;
    v6 = 0xEF79654B44497075;
    if (a2 != 3)
    {
      v5 = 0x7461446B6E756863;
      v6 = 0xEC00000079654B61;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000A2560;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1000A0BD0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10009248C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 101;
    }

    else
    {
      v3 = 4475253;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
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
      v3 = 99;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 99;
  v6 = 0xE100000000000000;
  v7 = 101;
  if (a2 != 2)
  {
    v7 = 4475253;
    v6 = 0xE300000000000000;
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

Swift::Int sub_100092588(unsigned __int8 a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_10009266C(unsigned __int8 a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092788(unsigned __int8 a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_1000928AC(unsigned __int8 a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000929A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A05B0();
}

uint64_t sub_100092B00(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A05B0();
}

Swift::Int sub_100092C50(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092D68(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092E5C(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100092F48(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100093068(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_100093148(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

Swift::Int sub_10009326C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100093340(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100093400(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_1000934D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009672C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100093500(uint64_t *a1@<X8>)
{
  v2 = 7221858;
  v3 = *v1;
  v4 = 0xD00000000000001BLL;
  v5 = 0x80000001000A2910;
  v6 = 0x80000001000A2930;
  v7 = 0xD000000000000023;
  if (v3 != 3)
  {
    v7 = 0xD000000000000020;
    v6 = 0x80000001000A2960;
  }

  if (v3 != 2)
  {
    v4 = v7;
    v5 = v6;
  }

  if (*v1)
  {
    v2 = 7811682;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v2 = v4;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

unint64_t sub_100093590()
{
  v1 = 7221858;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000023;
  if (v2 != 3)
  {
    v4 = 0xD000000000000020;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 7811682;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009361C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009672C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100093644(uint64_t a1)
{
  v2 = sub_1000939A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100093680(uint64_t a1)
{
  v2 = sub_1000939A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionParticipantSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAA80, &unk_1000B2CB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_1000939A0();
  sub_1000A0CE0();
  v17 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100005620(&v17, v11, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (!v2)
  {
    sub_1000057B0(v13, *(&v13 + 1));
    v16 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100005620(&v16, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_1000A0A80();
    v15 = v3[3];
    v13 = v3[3];
    v12 = 3;
    sub_100005620(&v15, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v13 = v3[4];
    v14 = v13;
    v12 = 4;
    sub_100005620(&v14, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
  }

  sub_1000057B0(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000939A0()
{
  result = qword_1000DAA88;
  if (!qword_1000DAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA88);
  }

  return result;
}

__n128 GroupSessionParticipantSchema.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100096778(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100093A40(char a1)
{
  result = 115;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 10:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 7627363;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x6B706D7472;
      break;
    case 12:
      result = 0x6D77706D7472;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_100093C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100096DA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100093C84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100093A40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100093CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100093CF4(uint64_t a1)
{
  v2 = sub_100096C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100093D30(uint64_t a1)
{
  v2 = sub_100096C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionJoinSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAA90, &unk_1000B2CC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100096C30();
  sub_1000A0CE0();
  LOBYTE(v13) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000A0B30();
    *&v13 = *(v3 + 24);
    v11[0] = 2;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
    LOBYTE(v13) = 3;
    sub_1000A0B30();
    LOBYTE(v13) = 4;
    sub_1000A0B40();
    LOBYTE(v13) = 5;
    sub_1000A0A90();
    LOBYTE(v13) = 6;
    sub_1000A0AA0();
    LOBYTE(v13) = 7;
    sub_1000A0BB0();
    v16 = *(v3 + 80);
    v13 = *(v3 + 80);
    v12 = 8;
    sub_1000421FC(&v16, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v13, *(&v13 + 1));
    *&v13 = *(v3 + 96);
    v11[0] = 9;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096C84();
    sub_1000A0AD0();
    v15 = *(v3 + 104);
    v13 = *(v3 + 104);
    v12 = 10;
    sub_100005620(&v15, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v13 = *(v3 + 120);
    v14 = v13;
    v12 = 11;
    sub_100005620(&v14, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 12;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

double GroupSessionJoinSchema.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100096DEC(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

unint64_t sub_100094240(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 115;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000017;
    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 7627363;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000943BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000975B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000943EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100094240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100094434@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000975B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100094468(uint64_t a1)
{
  v2 = sub_100097560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000944A4(uint64_t a1)
{
  v2 = sub_100097560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionLeaveSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAAC0, &qword_1000B2CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100097560();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = v12;
    v11[23] = 1;
    sub_100005620(&v13, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    sub_1000A0B30();
    LOBYTE(v12) = 3;
    sub_1000A0B30();
    *&v12 = *(v3 + 56);
    v11[0] = 4;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
    LOBYTE(v12) = 5;
    sub_1000A0BB0();
    LOBYTE(v12) = 6;
    sub_1000A0B40();
    LOBYTE(v12) = 7;
    sub_1000A0A90();
    LOBYTE(v12) = 8;
    sub_1000A0AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

double GroupSessionLeaveSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100097600(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_100094850(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6908781;
    v7 = 7564141;
    v8 = 1667722093;
    if (a1 != 3)
    {
      v8 = 6908787;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 7170925;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6D77706D7472;
    v2 = 0x7069636974726170;
    if (a1 != 9)
    {
      v2 = 0x6C696B6D73;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 7170931;
    v4 = 7564147;
    if (a1 != 6)
    {
      v4 = 1667722099;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000949A0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000A0BD0();
  }

  return v12 & 1;
}

Swift::Int sub_100094A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1000A0C60();
  a3(v5);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100094AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1000A05B0();
}

Swift::Int sub_100094B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1000A0C60();
  a4(v6);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100094BA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100097C4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100094BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100094850(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100094C20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100094C54(uint64_t a1)
{
  v2 = sub_100097BF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100094C90(uint64_t a1)
{
  v2 = sub_100097BF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeyMaterialSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAAD0, &qword_1000B2CE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100097BF8();
  sub_1000A0CE0();
  v21 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_100005620(&v21, v13, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (v2)
  {
    sub_1000057B0(v15, *(&v15 + 1));
  }

  else
  {
    sub_1000057B0(v15, *(&v15 + 1));
    v20 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_100005620(&v20, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v19 = v3[2];
    v15 = v3[2];
    v14 = 2;
    sub_100005620(&v19, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v10 = *(v3 + 52);
    LOBYTE(v15) = 3;
    v13[0] = v10;
    sub_1000A0B10();
    v18 = *(v3 + 56);
    v15 = *(v3 + 56);
    v14 = 4;
    sub_100005620(&v18, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v17 = *(v3 + 72);
    v15 = *(v3 + 72);
    v14 = 5;
    sub_100005620(&v17, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v15 = *(v3 + 88);
    v16 = v15;
    v14 = 6;
    sub_100005620(&v16, v13, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v15, *(&v15 + 1));
    v11 = *(v3 + 108);
    LOBYTE(v15) = 7;
    v13[0] = v11;
    sub_1000A0B10();
    LOBYTE(v15) = 8;
    sub_1000A0AB0();
    LOBYTE(v15) = 9;
    sub_1000A0B20();
    LOBYTE(v15) = 10;
    sub_1000A0AF0();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 KeyMaterialSchema.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100097C98(a2, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 123) = *(v9 + 11);
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000951E0(uint64_t a1)
{
  sub_1000A05B0();
}

unint64_t sub_1000952C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098480(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000952F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 115;
  v5 = 0xEB00000000697275;
  v6 = 0x6D6B6D6C6C617472;
  v7 = 0x6D6B6D7472;
  if (v2 != 4)
  {
    v7 = 0x6D6B737472;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (v2 != 1)
  {
    v4 = 0x6D6B6D6C6C617472;
    v3 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001000A29B0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1000953A8()
{
  v1 = *v0;
  v2 = 115;
  v3 = 0x6D6B6D6C6C617472;
  v4 = 0x6D6B6D7472;
  if (v1 != 4)
  {
    v4 = 0x6D6B737472;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6D6B6D6C6C617472;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100095454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009547C(uint64_t a1)
{
  v2 = sub_100098370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000954B8(uint64_t a1)
{
  v2 = sub_100098370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionMKMSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAAE0, &qword_1000B2CF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100098370();
  sub_1000A0CE0();
  LOBYTE(v40) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    LOBYTE(v40) = 1;
    sub_1000A0B30();
    *&v40 = *(v3 + 32);
    LOBYTE(v37[0]) = 2;
    sub_1000017BC(&qword_1000DAAF0, &qword_1000B2CF8);
    sub_10009A764(&qword_1000DAAF8, sub_1000983C4, &protocol conformance descriptor for <A> [A]);
    sub_1000A0AD0();
    *&v40 = *(v3 + 40);
    LOBYTE(v37[0]) = 3;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
    v9 = *(v3 + 128);
    v10 = *(v3 + 160);
    v60 = *(v3 + 144);
    v61[0] = v10;
    *(v61 + 11) = *(v3 + 171);
    v11 = *(v3 + 64);
    v12 = *(v3 + 96);
    v56 = *(v3 + 80);
    v57 = v12;
    v13 = *(v3 + 96);
    v14 = *(v3 + 128);
    v58 = *(v3 + 112);
    v59 = v14;
    v15 = *(v3 + 64);
    v55[0] = *(v3 + 48);
    v55[1] = v15;
    v16 = *(v3 + 160);
    v46 = v60;
    v47[0] = v16;
    *(v47 + 11) = *(v3 + 171);
    v42 = v56;
    v43 = v13;
    v44 = v58;
    v45 = v9;
    v40 = v55[0];
    v41 = v11;
    v39 = 4;
    sub_100005620(v55, v37, &qword_1000DAB08, &qword_1000B2D00);
    sub_1000983C4();
    sub_1000A0AD0();
    v37[6] = v46;
    *v38 = v47[0];
    *&v38[11] = *(v47 + 11);
    v37[2] = v42;
    v37[3] = v43;
    v37[4] = v44;
    v37[5] = v45;
    v37[0] = v40;
    v37[1] = v41;
    sub_100098418(v37);
    v17 = *(v3 + 272);
    v18 = *(v3 + 304);
    v53 = *(v3 + 288);
    v54[0] = v18;
    *(v54 + 11) = *(v3 + 315);
    v19 = *(v3 + 208);
    v20 = *(v3 + 240);
    v49 = *(v3 + 224);
    v50 = v20;
    v21 = *(v3 + 240);
    v22 = *(v3 + 272);
    v51 = *(v3 + 256);
    v52 = v22;
    v23 = *(v3 + 208);
    v48[0] = *(v3 + 192);
    v48[1] = v23;
    v24 = *(v3 + 304);
    v35 = v53;
    v36[0] = v24;
    *(v36 + 11) = *(v3 + 315);
    v31 = v49;
    v32 = v21;
    v33 = v51;
    v34 = v17;
    v29 = v48[0];
    v30 = v19;
    v28 = 5;
    sub_100005620(v48, v26, &qword_1000DAB08, &qword_1000B2D00);
    sub_1000A0AD0();
    v26[6] = v35;
    *v27 = v36[0];
    *&v27[11] = *(v36 + 11);
    v26[2] = v31;
    v26[3] = v32;
    v26[4] = v33;
    v26[5] = v34;
    v26[0] = v29;
    v26[1] = v30;
    sub_100098418(v26);
  }

  return (*(v6 + 8))(v8, v5);
}

void *GroupSessionMKMSchema.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000984CC(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x14BuLL);
  }

  return result;
}

Swift::Int sub_1000959EC()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100095AA0(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100095B40(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100095BF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098B60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100095C20(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B706D7472;
  v4 = 0xE600000000000000;
  v5 = 0x6D77706D7472;
  if (*v1 != 2)
  {
    v5 = 115;
    v4 = 0xE100000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001000A29B0;
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

unint64_t sub_100095C90()
{
  v1 = 0x6B706D7472;
  v2 = 0x6D77706D7472;
  if (*v0 != 2)
  {
    v2 = 115;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_100095CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100095D24(uint64_t a1)
{
  v2 = sub_100098B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100095D60(uint64_t a1)
{
  v2 = sub_100098B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionPrekeySchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAB10, &qword_1000B2D08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100098B0C();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 1;
    sub_1000421FC(&v13, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    sub_1000A0AB0();
    LOBYTE(v12) = 3;
    sub_1000A0B30();
  }

  return (*(v6 + 8))(v8, v5);
}

double GroupSessionPrekeySchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100098BAC(a2, v7);
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

unint64_t sub_100095FC8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 115;
    if (a1 == 2)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0xD000000000000015;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10009612C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_1000A0C60();
  a3(v7, v5);
  return sub_1000A0C90();
}

Swift::Int sub_10009619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1000A0C60();
  a4(v8, v6);
  return sub_1000A0C90();
}

unint64_t sub_1000961E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098EF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100096218@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100095FC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100096260@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100096288(uint64_t a1)
{
  v2 = sub_100098E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000962C4(uint64_t a1)
{
  v2 = sub_100098E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupSessionUpdateSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAB20, &qword_1000B2D10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100098E9C();
  sub_1000A0CE0();
  LOBYTE(v13) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000A0B30();
    *&v13 = *(v3 + 24);
    v11[0] = 2;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    sub_1000612BC(&qword_1000D9948, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
    LOBYTE(v13) = 3;
    sub_1000A0B30();
    LOBYTE(v13) = 4;
    sub_1000A0B40();
    LOBYTE(v13) = 5;
    sub_1000A0BB0();
    v15 = *(v3 + 64);
    v13 = *(v3 + 64);
    v12 = 6;
    sub_1000421FC(&v15, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v13, *(&v13 + 1));
    *&v13 = *(v3 + 80);
    v11[0] = 7;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096C84();
    sub_1000A0AD0();
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 8;
    sub_100005620(&v14, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 GroupSessionUpdateSchema.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100098F3C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_10009672C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDE28;
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

uint64_t sub_100096778@<X0>(void *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DAC28, &unk_1000B4A88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_1000939A0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v29) = 0;
  sub_100005424();
  sub_1000A0970();
  v28 = v34[0];
  LOBYTE(v29) = 1;
  sub_1000A0970();
  v27 = v34[0];
  LOBYTE(v34[0]) = 2;
  *&v26 = sub_1000A0920();
  *(&v26 + 1) = v9;
  LOBYTE(v29) = 3;
  sub_1000A0970();
  v25 = v34[0];
  v38 = 4;
  sub_1000A0970();
  (*(v6 + 8))(v8, v5);
  v23 = *(&v37 + 1);
  v24 = v37;
  v12 = v28;
  v10 = v12 >> 64;
  v11 = v12;
  v29 = v28;
  v15 = v27;
  v13 = v15 >> 64;
  v14 = v15;
  v30 = v27;
  v18 = v26;
  v16 = v18 >> 64;
  v17 = v18;
  v31 = v26;
  v32 = v25;
  v33 = v37;
  sub_10009A8D8(&v29, v34);
  sub_100002308(a1);
  v34[0] = __PAIR128__(v10, v11);
  v34[1] = __PAIR128__(v13, v14);
  v34[2] = __PAIR128__(v16, v17);
  v34[3] = v25;
  v35 = v24;
  v36 = v23;
  result = sub_100084FDC(v34);
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  a2[4] = v33;
  v21 = v30;
  *a2 = v29;
  a2[1] = v21;
  return result;
}

unint64_t sub_100096C30()
{
  result = qword_1000DAA98;
  if (!qword_1000DAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA98);
  }

  return result;
}

unint64_t sub_100096C84()
{
  result = qword_1000DAAA8;
  if (!qword_1000DAAA8)
  {
    sub_1000053DC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096D34(&qword_1000DAAB0, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAA8);
  }

  return result;
}

uint64_t sub_100096D34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DAAB8, &qword_1000B2CD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100096DA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDEC0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100096DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = sub_1000017BC(&qword_1000DAC20, &qword_1000B4A80);
  v5 = *(v88 - 8);
  __chkstk_darwin(v88);
  v7 = &v31 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_100096C30();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v8 = v5;
  LOBYTE(v59) = 0;
  v9 = v88;
  v10 = sub_1000A0A00();
  LOBYTE(v59) = 1;
  v46 = sub_1000A09D0();
  v47 = v12;
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v49) = 2;
  sub_1000612BC(&qword_1000D9B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000A0A20();
  v45 = v59;
  LOBYTE(v59) = 3;
  v39 = sub_1000A09D0();
  v44 = v13;
  LOBYTE(v59) = 4;
  v38 = sub_1000A09E0();
  LOBYTE(v59) = 5;
  v37 = sub_1000A0930();
  LOBYTE(v59) = 6;
  v36 = sub_1000A0940();
  v85 = v15 & 1;
  LOBYTE(v59) = 7;
  v16 = sub_1000A0A50();
  v48 = 0;
  v34 = v16;
  LOBYTE(v49) = 8;
  v35 = sub_100005424();
  v17 = v48;
  sub_1000A0A20();
  v48 = v17;
  if (v17)
  {
    (*(v8 + 8))(v7, v9);
    v14 = 0;
  }

  else
  {
    v33 = v59;
    v43 = v60;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    LOBYTE(v49) = 9;
    sub_10009A644();
    v18 = v48;
    sub_1000A0970();
    v48 = v18;
    if (!v18)
    {
      v42 = v59;
      LOBYTE(v49) = 10;
      sub_1000A0970();
      v48 = 0;
      v40 = v60;
      v41 = v59;
      LOBYTE(v49) = 11;
      sub_1000A0970();
      v48 = 0;
      v32 = v59;
      v35 = v60;
      v82 = 12;
      v19 = sub_1000A0950();
      v48 = 0;
      v20 = v19;
      v22 = v21;
      v23 = v38 & 1;
      (*(v8 + 8))(v7, v88);
      v83 = v22 & 1;
      v24 = v46;
      v25 = v47;
      *&v49 = v10;
      *(&v49 + 1) = v46;
      *&v50 = v47;
      *(&v50 + 1) = v45;
      v26 = v39;
      *&v51 = v39;
      *(&v51 + 1) = v44;
      LOBYTE(v52) = v23;
      BYTE1(v52) = v37;
      *(&v52 + 1) = v36;
      v38 = v85;
      LOBYTE(v53) = v85;
      *(&v53 + 1) = v34;
      *&v54 = v33;
      *(&v54 + 1) = v43;
      *&v55 = v42;
      *(&v55 + 1) = v41;
      *&v56 = v40;
      *(&v56 + 1) = v32;
      *&v57 = v35;
      *(&v57 + 1) = v20;
      LODWORD(v88) = v83;
      v58 = v83;
      sub_10009A8A0(&v49, &v59);
      sub_100002308(a1);
      v59 = v10;
      v60 = v24;
      v61 = v25;
      v62 = v45;
      v63 = v26;
      v64 = v44;
      v65 = v23;
      v66 = v37;
      v67 = v86;
      v68 = v87;
      v69 = v36;
      v70 = v38;
      *v71 = *v84;
      *&v71[3] = *&v84[3];
      v72 = v34;
      v73 = v33;
      v74 = v43;
      v75 = v42;
      v76 = v41;
      v77 = v40;
      v78 = v32;
      v79 = v35;
      v80 = v20;
      v81 = v88;
      result = sub_100083D98(&v59);
      v27 = v56;
      *(a2 + 96) = v55;
      *(a2 + 112) = v27;
      *(a2 + 128) = v57;
      *(a2 + 144) = v58;
      v28 = v52;
      *(a2 + 32) = v51;
      *(a2 + 48) = v28;
      v29 = v54;
      *(a2 + 64) = v53;
      *(a2 + 80) = v29;
      v30 = v50;
      *a2 = v49;
      *(a2 + 16) = v30;
      return result;
    }

    (*(v8 + 8))(v7, v88);
    v14 = 1;
    v9 = v33;
  }

  sub_100002308(a1);

  if (v14)
  {
    return sub_100005568(v9, v43);
  }

  return result;
}

unint64_t sub_100097560()
{
  result = qword_1000DAAC8;
  if (!qword_1000DAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAC8);
  }

  return result;
}

unint64_t sub_1000975B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE018;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100097600@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DAC18, &qword_1000B4A78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100097560();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v37) = 0;
  v9 = sub_1000A0A00();
  LOBYTE(v32) = 1;
  sub_100005424();
  sub_1000A0970();
  v30 = v37;
  v31 = v38;
  LOBYTE(v37) = 2;
  v10 = sub_1000A09D0();
  v29 = v11;
  v27 = v10;
  LOBYTE(v37) = 3;
  v26 = sub_1000A09D0();
  v28 = v12;
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v32) = 4;
  sub_1000612BC(&qword_1000D9B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000A0A20();
  v25 = v37;
  LOBYTE(v37) = 5;
  v24 = sub_1000A0A50();
  LOBYTE(v37) = 6;
  v23 = sub_1000A09E0();
  LOBYTE(v37) = 7;
  v22 = sub_1000A0930();
  v51 = 8;
  v13 = sub_1000A0940();
  v15 = v14;
  v23 &= 1u;
  (*(v6 + 8))(v8, v5);
  v15 &= 1u;
  v50 = v15;
  *&v32 = v9;
  v16 = v30;
  *(&v32 + 1) = v30;
  v17 = v31;
  *&v33 = v31;
  v18 = v29;
  *(&v33 + 1) = v27;
  *&v34 = v29;
  *(&v34 + 1) = v26;
  *&v35 = v28;
  *(&v35 + 1) = v25;
  *v36 = v24;
  v36[8] = v23;
  v36[9] = v22;
  *&v36[16] = v13;
  v36[24] = v15;
  sub_10009A868(&v32, &v37);
  sub_100002308(a1);
  v37 = v9;
  v38 = v16;
  v39 = v17;
  v40 = v27;
  v41 = v18;
  v42 = v26;
  v43 = v28;
  v44 = v25;
  v45 = v24;
  v46 = v23;
  v47 = v22;
  v48 = v13;
  v49 = v15;
  result = sub_100085084(&v37);
  v20 = v35;
  a2[2] = v34;
  a2[3] = v20;
  a2[4] = *v36;
  *(a2 + 73) = *&v36[9];
  v21 = v33;
  *a2 = v32;
  a2[1] = v21;
  return result;
}

unint64_t sub_100097BF8()
{
  result = qword_1000DAAD8;
  if (!qword_1000DAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAD8);
  }

  return result;
}

unint64_t sub_100097C4C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE110;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100097C98@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v80 = sub_1000017BC(&qword_1000DAC10, &qword_1000B4A70);
  v5 = *(v80 - 8);
  __chkstk_darwin(v80);
  v7 = &v23 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_100097BF8();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v8 = v5;
  v39 = a2;
  LOBYTE(v40) = 0;
  sub_100005424();
  sub_1000A0970();
  v38 = v47[0];
  LOBYTE(v40) = 1;
  sub_1000A0970();
  v37 = v47[0];
  LOBYTE(v40) = 2;
  sub_1000A0970();
  v36 = v47[0];
  LOBYTE(v47[0]) = 3;
  v9 = sub_1000A09B0();
  v79 = BYTE4(v9) & 1;
  LOBYTE(v40) = 4;
  v31 = v9;
  sub_1000A0970();
  v34 = *(&v47[0] + 1);
  v35 = *&v47[0];
  LOBYTE(v40) = 5;
  sub_1000A0970();
  v32 = *(&v47[0] + 1);
  v33 = *&v47[0];
  LOBYTE(v40) = 6;
  sub_1000A0970();
  v10 = v47[0];
  LOBYTE(v47[0]) = 7;
  v29 = sub_1000A09B0();
  v76 = BYTE4(v29) & 1;
  LOBYTE(v47[0]) = 8;
  v30 = sub_1000A0950();
  v73 = v11 & 1;
  LOBYTE(v47[0]) = 9;
  v12 = sub_1000A09C0();
  v71 = v13 & 1;
  v69 = 10;
  v14 = sub_1000A0990();
  (*(v8 + 8))(v7, v80);
  v70 = HIBYTE(v14) & 1;
  v15 = v38;
  v40 = v38;
  v41 = v37;
  v42 = v36;
  LODWORD(v8) = v31;
  LODWORD(v43) = v31;
  v24 = v79;
  BYTE4(v43) = v79;
  *(&v43 + 1) = v35;
  *&v44 = v34;
  *(&v44 + 1) = v33;
  *v45 = v32;
  *&v45[8] = v10;
  v26 = *(&v10 + 1);
  v16 = v29;
  *&v45[24] = v29;
  v25 = v76;
  v45[28] = v76;
  *v46 = v30;
  v27 = v73;
  v46[8] = v73;
  *&v46[16] = v12;
  LODWORD(v80) = v71;
  v46[24] = v71;
  *&v46[25] = v14 & 0x1FF;
  v28 = HIBYTE(v14) & 1;
  sub_100085248(&v40, v47);
  sub_100002308(a1);
  v47[0] = __PAIR128__(*(&v38 + 1), v15);
  v47[1] = v37;
  v47[2] = v36;
  v48 = v8;
  v49 = v24;
  v50 = v77;
  v51 = v78;
  v52 = v35;
  v53 = v34;
  v54 = v33;
  v55 = v32;
  v56 = v10;
  v57 = v26;
  v58 = v16;
  v59 = v25;
  v60 = v74;
  v61 = v75;
  v62 = v30;
  v63 = v27;
  *v64 = *v72;
  *&v64[3] = *&v72[3];
  v65 = v12;
  v66 = v80;
  v67 = v14;
  v68 = v28;
  result = sub_1000852F8(v47);
  v18 = *v46;
  v19 = v39;
  v39[6] = *&v45[16];
  v19[7] = v18;
  *(v19 + 123) = *&v46[11];
  v20 = v43;
  v19[2] = v42;
  v19[3] = v20;
  v21 = *v45;
  v19[4] = v44;
  v19[5] = v21;
  v22 = v41;
  *v19 = v40;
  v19[1] = v22;
  return result;
}

unint64_t sub_100098370()
{
  result = qword_1000DAAE8;
  if (!qword_1000DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAE8);
  }

  return result;
}

unint64_t sub_1000983C4()
{
  result = qword_1000DAB00;
  if (!qword_1000DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB00);
  }

  return result;
}

uint64_t sub_100098418(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DAB08, &qword_1000B2D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100098480(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE238;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void *sub_1000984CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DABF8, &qword_1000B4A68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = a1[3];
  v64 = a1;
  sub_1000022C4(a1, v9);
  sub_100098370();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v64);
  }

  LOBYTE(v26[0]) = 0;
  v10 = sub_1000A09D0();
  v13 = v12;
  v24 = v10;
  LOBYTE(v26[0]) = 1;
  *&v22 = sub_1000A09D0();
  *(&v22 + 1) = v14;
  sub_1000017BC(&qword_1000DAAF0, &qword_1000B2CF8);
  LOBYTE(v25[0]) = 2;
  sub_10009A764(&qword_1000DAC00, sub_10009A7DC, &protocol conformance descriptor for <A> [A]);
  sub_1000A0970();
  v21 = v26[0];
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v25[0]) = 3;
  sub_1000612BC(&qword_1000D9B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000A0A20();
  v23 = 0;
  v20 = v26[0];
  v46 = 4;
  sub_10009A7DC();
  v15 = v23;
  sub_1000A0970();
  if (v15)
  {
    v23 = v15;
    (*(v6 + 8))(v8, v5);
    sub_100002308(v64);
  }

  else
  {
    v62 = v53;
    v63[0] = v54[0];
    *(v63 + 11) = *(v54 + 11);
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v56 = v47;
    v57 = v48;
    v37[175] = 5;
    sub_1000A0970();
    v23 = 0;
    (*(v6 + 8))(v8, v5);
    *(&v55[5] + 5) = v43;
    *(&v55[6] + 5) = v44;
    *(&v55[7] + 5) = *v45;
    v55[8] = *&v45[11];
    *(&v55[1] + 5) = v39;
    *(&v55[2] + 5) = v40;
    *(&v55[3] + 5) = v41;
    *(&v55[4] + 5) = v42;
    *(v55 + 5) = v38;
    v25[9] = v62;
    v25[10] = v63[0];
    *(&v25[10] + 11) = *(v63 + 11);
    v25[5] = v58;
    v25[6] = v59;
    v25[7] = v60;
    v25[8] = v61;
    v25[3] = v56;
    v25[4] = v57;
    *(&v25[16] + 11) = v55[5];
    *(&v25[17] + 11) = v55[6];
    *(&v25[18] + 11) = v55[7];
    *(&v25[19] + 11) = *&v45[11];
    *(&v25[12] + 11) = v55[1];
    *(&v25[13] + 11) = v55[2];
    *(&v25[14] + 11) = v55[3];
    *(&v25[15] + 11) = v55[4];
    v16 = v24;
    *&v25[0] = v24;
    *(&v25[0] + 1) = v13;
    v17 = v22;
    v25[1] = v22;
    v18 = v20;
    v19 = v21;
    *&v25[2] = v21;
    *(&v25[2] + 1) = v20;
    *(&v25[11] + 11) = v55[0];
    sub_10009A830(v25, v26);
    sub_100002308(v64);
    v36 = v62;
    *v37 = v63[0];
    *&v37[11] = *(v63 + 11);
    v32 = v58;
    v33 = v59;
    v34 = v60;
    v35 = v61;
    v30 = v56;
    v31 = v57;
    *&v37[107] = v55[5];
    *&v37[123] = v55[6];
    *&v37[139] = v55[7];
    *&v37[155] = v55[8];
    *&v37[43] = v55[1];
    *&v37[59] = v55[2];
    *&v37[75] = v55[3];
    *&v37[91] = v55[4];
    v26[0] = v16;
    v26[1] = v13;
    v27 = v17;
    v28 = v19;
    v29 = v18;
    *&v37[27] = v55[0];
    sub_1000851F4(v26);
    return memcpy(a2, v25, 0x14BuLL);
  }
}

unint64_t sub_100098B0C()
{
  result = qword_1000DAB18;
  if (!qword_1000DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB18);
  }

  return result;
}

unint64_t sub_100098B60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE2E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100098BAC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DABF0, &qword_1000B4A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100098B0C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1000A09D0();
  v11 = v10;
  v27 = a2;
  LOBYTE(v28) = 1;
  sub_100005424();
  sub_1000A0A20();
  v26 = v32[0];
  LOBYTE(v32[0]) = 2;
  v25 = sub_1000A0950();
  v37 = v12 & 1;
  v38 = 3;
  v13 = sub_1000A09D0();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  *&v28 = v9;
  *(&v28 + 1) = v11;
  v17 = v26;
  v29 = v26;
  v18 = v25;
  *&v30 = v25;
  v19 = v37;
  BYTE8(v30) = v37;
  *&v31 = v13;
  *(&v31 + 1) = v16;
  sub_10009A72C(&v28, v32);
  sub_100002308(a1);
  *&v32[0] = v9;
  *(&v32[0] + 1) = v11;
  v32[1] = __PAIR128__(*(&v26 + 1), v17);
  v33 = v18;
  v34 = v19;
  v35 = v13;
  v36 = v16;
  result = sub_10007FC0C(v32);
  v21 = v29;
  v22 = v27;
  *v27 = v28;
  v22[1] = v21;
  v23 = v31;
  v22[2] = v30;
  v22[3] = v23;
  return result;
}

unint64_t sub_100098E9C()
{
  result = qword_1000DAB28;
  if (!qword_1000DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB28);
  }

  return result;
}

unint64_t sub_100098EF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CE368;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100098F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DABD8, &qword_1000B4A58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100098E9C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v45) = 0;
  v9 = sub_1000A0A00();
  v10 = a2;
  LOBYTE(v45) = 1;
  v12 = sub_1000A09D0();
  v36 = v13;
  sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
  LOBYTE(v38) = 2;
  sub_1000612BC(&qword_1000D9B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000A0A20();
  v33 = v45;
  LOBYTE(v45) = 3;
  *&v32 = sub_1000A09D0();
  *(&v32 + 1) = v14;
  LOBYTE(v45) = 4;
  v60 = sub_1000A09E0();
  LOBYTE(v45) = 5;
  v15 = sub_1000A0A50();
  v37 = 0;
  v30 = v15;
  LOBYTE(v38) = 6;
  v31 = sub_100005424();
  v16 = v37;
  sub_1000A0A20();
  v37 = v16;
  if (v16)
  {
    (*(v6 + 8))(v8, v5);
    v17 = 0;
  }

  else
  {
    v35 = v45;
    v34 = v46;
    sub_1000017BC(&qword_1000DAAA0, &qword_1000B2CD0);
    LOBYTE(v38) = 7;
    sub_10009A644();
    v18 = v37;
    sub_1000A0970();
    if (!v18)
    {
      v29 = v45;
      v61 = 8;
      sub_1000A0970();
      v37 = 0;
      v60 &= 1u;
      v19 = v60;
      (*(v6 + 8))(v8, v5);
      v31 = v58;
      v28 = v59;
      *&v38 = v9;
      *(&v38 + 1) = v12;
      v20 = v36;
      *&v39 = v36;
      v21 = v33;
      *(&v39 + 1) = v33;
      v40 = v32;
      v22 = *(&v32 + 1);
      LOBYTE(v41) = v19;
      v23 = v35;
      *(&v41 + 1) = v30;
      *&v42 = v35;
      v24 = v34;
      *(&v42 + 1) = v34;
      *&v43 = v29;
      *(&v43 + 1) = v58;
      v44 = v59;
      sub_10009A6F4(&v38, &v45);
      sub_100002308(a1);
      v45 = v9;
      v46 = v12;
      v47 = v20;
      v48 = v21;
      v49 = v32;
      v50 = v22;
      v51 = v60;
      v52 = v30;
      v53 = v23;
      v54 = v24;
      v55 = v29;
      v56 = v31;
      v57 = v28;
      result = sub_10008512C(&v45);
      v25 = v43;
      *(v10 + 64) = v42;
      *(v10 + 80) = v25;
      *(v10 + 96) = v44;
      v26 = v39;
      *v10 = v38;
      *(v10 + 16) = v26;
      v27 = v41;
      *(v10 + 32) = v40;
      *(v10 + 48) = v27;
      return result;
    }

    v37 = v18;
    (*(v6 + 8))(v8, v5);
    v17 = 1;
  }

  sub_100002308(a1);

  if (v17)
  {
    return sub_100005568(v35, v34);
  }

  return result;
}

uint64_t sub_1000995C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10009961C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 sub_100099694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000996C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_100099710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100099788(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000997AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1000997F4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_10009985C(uint64_t a1, uint64_t a2)
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
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100099890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 139))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000998EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 139) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 139) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_100099974(uint64_t a1)
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

uint64_t sub_10009999C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 331))
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

uint64_t sub_1000999E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 330) = 0;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 331) = 1;
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

    *(result + 331) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100099A90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100099AD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100099B38(uint64_t a1, __int128 *a2)
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

uint64_t sub_100099B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100099BAC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for KeyMaterialSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyMaterialSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100099D98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100099E2C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100099F10()
{
  result = qword_1000DAB30;
  if (!qword_1000DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB30);
  }

  return result;
}

unint64_t sub_100099F68()
{
  result = qword_1000DAB38;
  if (!qword_1000DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB38);
  }

  return result;
}

unint64_t sub_100099FC0()
{
  result = qword_1000DAB40;
  if (!qword_1000DAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB40);
  }

  return result;
}

unint64_t sub_10009A018()
{
  result = qword_1000DAB48;
  if (!qword_1000DAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB48);
  }

  return result;
}

unint64_t sub_10009A070()
{
  result = qword_1000DAB50;
  if (!qword_1000DAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB50);
  }

  return result;
}

unint64_t sub_10009A0C8()
{
  result = qword_1000DAB58;
  if (!qword_1000DAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB58);
  }

  return result;
}

unint64_t sub_10009A120()
{
  result = qword_1000DAB60;
  if (!qword_1000DAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB60);
  }

  return result;
}

unint64_t sub_10009A178()
{
  result = qword_1000DAB68;
  if (!qword_1000DAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB68);
  }

  return result;
}

unint64_t sub_10009A1D0()
{
  result = qword_1000DAB70;
  if (!qword_1000DAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB70);
  }

  return result;
}

unint64_t sub_10009A228()
{
  result = qword_1000DAB78;
  if (!qword_1000DAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB78);
  }

  return result;
}

unint64_t sub_10009A280()
{
  result = qword_1000DAB80;
  if (!qword_1000DAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB80);
  }

  return result;
}

unint64_t sub_10009A2D8()
{
  result = qword_1000DAB88;
  if (!qword_1000DAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB88);
  }

  return result;
}

unint64_t sub_10009A330()
{
  result = qword_1000DAB90;
  if (!qword_1000DAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB90);
  }

  return result;
}

unint64_t sub_10009A388()
{
  result = qword_1000DAB98;
  if (!qword_1000DAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB98);
  }

  return result;
}

unint64_t sub_10009A3E0()
{
  result = qword_1000DABA0;
  if (!qword_1000DABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABA0);
  }

  return result;
}

unint64_t sub_10009A438()
{
  result = qword_1000DABA8;
  if (!qword_1000DABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABA8);
  }

  return result;
}

unint64_t sub_10009A490()
{
  result = qword_1000DABB0;
  if (!qword_1000DABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABB0);
  }

  return result;
}

unint64_t sub_10009A4E8()
{
  result = qword_1000DABB8;
  if (!qword_1000DABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABB8);
  }

  return result;
}

unint64_t sub_10009A540()
{
  result = qword_1000DABC0;
  if (!qword_1000DABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABC0);
  }

  return result;
}

unint64_t sub_10009A598()
{
  result = qword_1000DABC8;
  if (!qword_1000DABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABC8);
  }

  return result;
}

unint64_t sub_10009A5F0()
{
  result = qword_1000DABD0;
  if (!qword_1000DABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABD0);
  }

  return result;
}

unint64_t sub_10009A644()
{
  result = qword_1000DABE0;
  if (!qword_1000DABE0)
  {
    sub_1000053DC(&qword_1000DAAA0, &qword_1000B2CD0);
    sub_100096D34(&qword_1000DABE8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DABE0);
  }

  return result;
}

uint64_t sub_10009A764(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000DAAF0, &qword_1000B2CF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009A7DC()
{
  result = qword_1000DAC08;
  if (!qword_1000DAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAC08);
  }

  return result;
}

unint64_t sub_10009A91C(char a1)
{
  result = 116;
  switch(a1)
  {
    case 1:
      result = 118;
      break;
    case 2:
      result = 26723;
      break;
    case 3:
      result = 25956;
      break;
    case 4:
      result = 25715;
      break;
    case 5:
      result = 26989;
      break;
    case 6:
      result = 7500147;
      break;
    case 7:
      result = 98;
      break;
    case 8:
      result = 29810;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 25970;
      break;
    case 11:
      result = 99;
      break;
    case 12:
      result = 1835819888;
      break;
    case 13:
      result = 112;
      break;
    case 14:
      result = 100;
      break;
    case 15:
      result = 115;
      break;
    case 16:
      result = 6579056;
      break;
    case 17:
      result = 25443;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009AA64(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10009A91C(*a1);
  v5 = v4;
  if (v3 == sub_10009A91C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10009AAEC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10009A91C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10009AB50(uint64_t a1)
{
  sub_10009A91C(*v1);
  sub_1000A05B0();
}

Swift::Int sub_10009ABA4(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_10009A91C(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10009AC04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009C168(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10009AC34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009A91C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009AC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009C168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009ACB0(uint64_t a1)
{
  v2 = sub_10009B224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009ACEC(uint64_t a1)
{
  v2 = sub_10009B224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DAC30, &qword_1000B4B00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10009B224();
  sub_1000A0CE0();
  LOBYTE(v19) = 0;
  sub_10009FA70();
  sub_10009BB70(&qword_1000DAC40, &protocol conformance descriptor for IDSSessionInvitation.TransportType);
  sub_1000A0B80();
  if (!v2)
  {
    v9 = type metadata accessor for IDSSessionInvitationSchema(0);
    LOBYTE(v19) = 1;
    sub_1000A0B70();
    LOBYTE(v19) = 2;
    sub_1000A0AC0();
    LOBYTE(v19) = 3;
    sub_1000A0A90();
    LOBYTE(v19) = 4;
    sub_1000A0A90();
    LOBYTE(v19) = 5;
    sub_1000A0A90();
    LOBYTE(v19) = 6;
    sub_1000A0A90();
    v10 = (v3 + v9[11]);
    v11 = v10[1];
    v19 = *v10;
    v20 = v11;
    v18 = 7;
    sub_100005750(v19, v11);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v19, v20);
    LOBYTE(v19) = 8;
    sub_1000A0A90();
    v13 = (v3 + v9[13]);
    v14 = v13[1];
    v19 = *v13;
    v20 = v14;
    v18 = 9;
    sub_100005750(v19, v14);
    sub_1000A0AD0();
    sub_1000057B0(v19, v20);
    LOBYTE(v19) = 10;
    sub_1000A0A90();
    v15 = (v3 + v9[15]);
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    v18 = 11;
    sub_100005750(v19, v16);
    sub_1000A0AD0();
    sub_1000057B0(v19, v20);
    LOBYTE(v19) = 12;
    sub_1000A0A90();
    LOBYTE(v19) = 13;
    sub_1000A0B30();
    LOBYTE(v19) = 14;
    sub_1000A0B40();
    LOBYTE(v19) = 15;
    sub_1000A0B30();
    LOBYTE(v19) = 16;
    sub_1000A0A90();
    LOBYTE(v19) = 17;
    sub_1000A0A90();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10009B224()
{
  result = qword_1000DAC38;
  if (!qword_1000DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAC38);
  }

  return result;
}

uint64_t type metadata accessor for IDSSessionInvitationSchema(uint64_t a1)
{
  result = qword_1000DACB0;
  if (!qword_1000DACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSessionInvitationSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_10009FA70();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000017BC(&qword_1000DAC48, &qword_1000B4B08);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v27 - v6;
  v8 = type metadata accessor for IDSSessionInvitationSchema(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_10009B224();
  v35 = v7;
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v29 = v10;
  v30 = a1;
  v28 = v8;
  LOBYTE(v37) = 0;
  sub_10009BB70(&qword_1000DAC50, &protocol conformance descriptor for IDSSessionInvitation.TransportType);
  v11 = v33;
  sub_1000A0A20();
  v12 = v29;
  (*(v32 + 32))(v29, v11, v4);
  LOBYTE(v37) = 1;
  v13 = sub_1000A0A10();
  v27 = v4;
  v14 = v28;
  *&v12[v28[5]] = v13;
  LOBYTE(v37) = 2;
  v15 = sub_1000A0960();
  v16 = &v12[v14[6]];
  *v16 = v15;
  v16[8] = v17 & 1;
  LOBYTE(v37) = 3;
  v12[v14[7]] = sub_1000A0930();
  LOBYTE(v37) = 4;
  v12[v14[8]] = sub_1000A0930();
  LOBYTE(v37) = 5;
  v12[v14[9]] = sub_1000A0930();
  LOBYTE(v37) = 6;
  v12[v14[10]] = sub_1000A0930();
  v38 = 7;
  sub_100005424();
  sub_1000A0970();
  *&v29[v14[11]] = v37;
  LOBYTE(v37) = 8;
  v29[v14[12]] = sub_1000A0930();
  v38 = 9;
  sub_1000A0970();
  *&v29[v28[13]] = v37;
  LOBYTE(v37) = 10;
  v29[v28[14]] = sub_1000A0930();
  v38 = 11;
  sub_1000A0970();
  *&v29[v28[15]] = v37;
  LOBYTE(v37) = 12;
  v29[v28[16]] = sub_1000A0930();
  LOBYTE(v37) = 13;
  v18 = sub_1000A09D0();
  v19 = &v29[v28[17]];
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v37) = 14;
  v29[v28[18]] = sub_1000A09E0() & 1;
  LOBYTE(v37) = 15;
  v21 = sub_1000A09D0();
  v22 = &v29[v28[19]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v37) = 16;
  v29[v28[20]] = sub_1000A0930();
  LOBYTE(v37) = 17;
  v24 = sub_1000A0930();
  (*(v34 + 8))(v35, v36);
  v25 = v29;
  v29[v28[21]] = v24;
  sub_10009BBB4(v25, v31);
  sub_100002308(v30);
  return sub_1000442D4(v25);
}

uint64_t sub_10009BB70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009FA70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009BBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSessionInvitationSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009FA70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009BD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009FA70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10009BDEC(uint64_t a1)
{
  sub_10009FA70();
  if (v1 <= 0x3F)
  {
    sub_10007CBE4(319, &unk_1000DACC0, &type metadata for UInt);
    if (v2 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000DA418, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10007CBE4(319, &qword_1000D86B8, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for IDSSessionInvitationSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSSessionInvitationSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009C064()
{
  result = qword_1000DAD30;
  if (!qword_1000DAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD30);
  }

  return result;
}

unint64_t sub_10009C0BC()
{
  result = qword_1000DAD38;
  if (!qword_1000DAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD38);
  }

  return result;
}

unint64_t sub_10009C114()
{
  result = qword_1000DAD40;
  if (!qword_1000DAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD40);
  }

  return result;
}

unint64_t sub_10009C168(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000A0BE0();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10009C1D0()
{
  result = qword_1000DAD48;
  if (!qword_1000DAD48)
  {
    sub_10009F610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD48);
  }

  return result;
}

uint64_t sub_10009C228(uint64_t a1)
{
  v2 = v1;
  v3 = __chkstk_darwin(a1);
  v5 = v4;
  v442 = sub_1000A0130();
  v432 = *(v442 - 8);
  v6 = __chkstk_darwin(v442);
  v441 = v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v431 = v178 - v8;
  v445 = sub_10009FF90();
  v434 = *(v445 - 8);
  v9 = __chkstk_darwin(v445);
  v444 = v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v446 = v178 - v11;
  v449 = sub_1000A0110();
  v440 = *(v449 - 8);
  v12 = __chkstk_darwin(v449);
  v448 = v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v439 = v178 - v14;
  v451 = sub_10009FF50();
  v443 = *(v451 - 8);
  v15 = __chkstk_darwin(v451);
  v450 = v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v436 = v178 - v17;
  v18 = sub_1000017BC(&qword_1000DAD50, &unk_1000B4D30);
  v19 = __chkstk_darwin(v18 - 8);
  v427 = v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v455 = (v178 - v22);
  __chkstk_darwin(v21);
  v433 = v178 - v23;
  v24 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  v25 = __chkstk_darwin(v24 - 8);
  v426 = v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v437 = v178 - v28;
  __chkstk_darwin(v27);
  v438 = v178 - v29;
  v30 = sub_10009F610();
  v447 = v3;
  v463 = v30;
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v456 = (v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v452 = v178 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = v178 - v37;
  __chkstk_darwin(v36);
  v40 = v178 - v39;
  v42 = *(v41 + 824);
  v425 = v5;
  if (v42)
  {
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = (v42 + 32);
      v457 = (v31 + 16);
      v454 = (v31 + 8);
      v453 = (v31 + 32);
      v458 = _swiftEmptyArrayStorage;
      while (1)
      {
        memcpy(v462, v44, 0x883uLL);
        sub_1000617B4(v462, v460);
        sub_10009C228(v462);
        if (v2)
        {
          break;
        }

        v45 = v38;
        (*v457)(v38, v40, v463);
        v46 = v458;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v459 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = sub_10009EFF4(0, v46[2] + 1, 1, v46, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        v48 = v46;
        v49 = v46[2];
        v458 = v48;
        v50 = v48[3];
        if (v49 >= v50 >> 1)
        {
          v458 = sub_10009EFF4(v50 > 1, v49 + 1, 1, v458, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        sub_1000617EC(v462);
        v51 = v463;
        (*(v31 + 8))(v40, v463);
        v52 = v458;
        v458[2] = v49 + 1;
        v53 = v52 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v49;
        v38 = v45;
        (*(v31 + 32))(v53, v45, v51);
        v44 += 2184;
        --v43;
        v2 = v459;
        if (!v43)
        {
          goto LABEL_12;
        }
      }

      sub_1000617EC(v462);
    }
  }

  v458 = _swiftEmptyArrayStorage;
LABEL_12:
  v54 = *(v447 + 832);
  if (v54)
  {
    v55 = *(v54 + 16);
    v56 = v455;
    if (v55)
    {
      v57 = (v54 + 32);
      v459 = (v31 + 16);
      v454 = (v31 + 8);
      v453 = (v31 + 32);
      v457 = _swiftEmptyArrayStorage;
      v58 = v452;
      while (1)
      {
        memcpy(v461, v57, 0x883uLL);
        sub_1000617B4(v461, v460);
        sub_10009C228(v461);
        if (v2)
        {
          break;
        }

        (*v459)(v456, v58, v463);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v457 = sub_10009EFF4(0, v457[2] + 1, 1, v457, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        v60 = v457[2];
        v59 = v457[3];
        if (v60 >= v59 >> 1)
        {
          v457 = sub_10009EFF4(v59 > 1, v60 + 1, 1, v457, &qword_1000DAD58, &qword_1000B4D40, &type metadata accessor for APSUserPayload);
        }

        sub_1000617EC(v461);
        v58 = v452;
        v61 = v463;
        (*(v31 + 8))(v452, v463);
        v62 = v457;
        v457[2] = v60 + 1;
        (*(v31 + 32))(v62 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v60, v456, v61);
        v57 += 2184;
        --v55;
        v2 = 0;
        v56 = v455;
        if (!v55)
        {
          goto LABEL_25;
        }
      }

      sub_1000617EC(v461);
      goto LABEL_33;
    }

    v457 = _swiftEmptyArrayStorage;
  }

  else
  {
    v457 = _swiftEmptyArrayStorage;
    v56 = v455;
  }

LABEL_25:
  v63 = sub_10009FF10();
  v64 = *(*(v63 - 8) + 56);
  v64(v438, 1, 1, v63);
  if (*(v447 + 1168) != 1)
  {
    v454 = *(v447 + 1240);
    v453 = *(v447 + 1224);
    v463 = *(v447 + 1208);
    v456 = *(v447 + 1192);
    v459 = v2;
    v452 = *(v447 + 1176);
    v435 = *(v447 + 1160);

    v65 = v437;
    v66 = v459;
    sub_10009FF00();
    v2 = v66;
    if (v66)
    {
LABEL_31:
      sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
LABEL_33:
    }

    v67 = v438;
    sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
    v64(v65, 0, 1, v63);
    sub_1000056E8(v65, v67, &qword_1000D9F28, &qword_1000B06E8);
    v56 = v455;
  }

  v68 = sub_1000A0150();
  v69 = *(*(v68 - 8) + 56);
  v69(v433, 1, 1, v68);
  v70 = v447;
  if ((*(v447 + 185) & 1) == 0)
  {
    sub_1000A0140();
    if (v2)
    {
      sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
      goto LABEL_31;
    }

    v72 = v433;
    sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
    v69(v56, 0, 1, v68);
    sub_1000056E8(v56, v72, &qword_1000DAD50, &unk_1000B4D30);
  }

  v73 = *(v70 + 1648);
  if (v73)
  {
    v74 = *(v73 + 16);
    if (v74)
    {
      v454 = (v443 + 16);
      v453 = (v443 + 8);
      v452 = v443 + 32;
      v75 = v73 + 73;
      v76 = _swiftEmptyArrayStorage;
      v77 = v436;
      while (1)
      {
        v455 = v74;
        v463 = v76;
        LODWORD(v459) = *(v75 - 1);
        v456 = *(v75 - 9);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_10009FF40();
        if (v2)
        {
          break;
        }

        (*v454)(v450, v77, v451);
        v76 = v463;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_10009EFF4(0, v76[2] + 1, 1, v76, &qword_1000DAD60, &qword_1000B4D48, &type metadata accessor for APSQuickRelayPluginRequest);
        }

        v79 = v76[2];
        v78 = v76[3];
        if (v79 >= v78 >> 1)
        {
          v76 = sub_10009EFF4(v78 > 1, v79 + 1, 1, v76, &qword_1000DAD60, &qword_1000B4D48, &type metadata accessor for APSQuickRelayPluginRequest);
        }

        v75 += 48;
        v80 = v443;
        v81 = v451;
        (*(v443 + 8))(v77, v451);
        v76[2] = v79 + 1;
        (*(v80 + 32))(v76 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79, v450, v81);
        v74 = (v455 - 1);
        if (v455 == 1)
        {
          goto LABEL_47;
        }
      }

      sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v76 = _swiftEmptyArrayStorage;
LABEL_47:
  v82 = *(v447 + 2040);
  v459 = v2;
  v463 = v76;
  if (v82)
  {
    v83 = *(v82 + 16);
    if (v83)
    {
      v453 = (v440 + 16);
      v452 = v440 + 8;
      v450 = v440 + 32;
      v84 = v82 + 48;
      v85 = _swiftEmptyArrayStorage;
      v86 = v439;
      while (1)
      {
        v454 = v83;
        v451 = v85;
        v87 = *(v84 + 16);
        v88 = *(v84 + 24);
        v456 = *(v84 + 32);
        LODWORD(v455) = *(v84 + 8);
        sub_100005750(v87, v88);

        sub_100005750(v87, v88);

        v89 = v459;
        sub_1000A0100();
        if (v89)
        {
          break;
        }

        (*v453)(v448, v86, v449);
        v85 = v451;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_10009EFF4(0, v85[2] + 1, 1, v85, &qword_1000DAD68, &qword_1000B4D50, &type metadata accessor for APSQuickRelayAllocationStatus);
        }

        v91 = v85[2];
        v90 = v85[3];
        v459 = 0;
        v456 = (v91 + 1);
        if (v91 >= v90 >> 1)
        {
          v85 = sub_10009EFF4(v90 > 1, v91 + 1, 1, v85, &qword_1000DAD68, &qword_1000B4D50, &type metadata accessor for APSQuickRelayAllocationStatus);
        }

        sub_1000057B0(v87, v88);

        v92 = v440;
        v86 = v439;
        v93 = v449;
        (*(v440 + 8))(v439, v449);
        v85[2] = v456;
        (*(v92 + 32))(v85 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v91, v448, v93);
        v84 += 64;
        v83 = v454 - 1;
        if (v454 == 1)
        {
          goto LABEL_58;
        }
      }

      sub_1000057B0(v87, v88);

      sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_58:
  v94 = *(v447 + 2048);
  v451 = v85;
  if (v94)
  {
    v95 = *(v94 + 16);
    if (v95)
    {
      v430 = (v434 + 16);
      v429 = v434 + 8;
      v428 = v434 + 32;
      v96 = (v94 + 136);
      v456 = _swiftEmptyArrayStorage;
      while (1)
      {
        v435 = v95;
        v98 = *(v96 - 13);
        v97 = *(v96 - 12);
        v100 = *(v96 - 11);
        v99 = *(v96 - 10);
        v101 = *(v96 - 6);
        v439 = *(v96 - 7);
        v102 = v439;
        v452 = v101;
        v103 = *(v96 - 4);
        v453 = *(v96 - 5);
        v454 = v103;
        v104 = *(v96 - 2);
        v455 = *(v96 - 3);
        LODWORD(v450) = *v96;
        v443 = *(v96 - 1);
        LODWORD(v449) = *(v96 - 64);
        v448 = *(v96 - 9);
        v440 = v98;
        sub_100005750(v98, v97);
        v437 = v100;
        v436 = v99;
        sub_100005750(v100, v99);
        sub_100005750(v102, v452);
        v105 = v453;
        sub_100005750(v453, v103);
        v106 = v455;
        sub_100005750(v455, v104);
        v107 = v98;
        v108 = v97;
        sub_100005750(v107, v97);
        sub_100005750(v100, v99);
        v109 = v439;
        v110 = v452;
        sub_100005750(v439, v452);
        sub_100005750(v105, v454);
        sub_100005750(v106, v104);
        v450 = v104;
        v111 = v109;
        v112 = v437;
        v113 = v436;
        v114 = v110;
        v115 = v108;
        v116 = v446;
        v117 = v440;
        v118 = v111;
        v119 = v459;
        sub_10009FF80();
        v459 = v119;
        if (v119)
        {
          break;
        }

        (*v430)(v444, v116, v445);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v456 = sub_10009EFF4(0, v456[2] + 1, 1, v456, &qword_1000DAD70, &qword_1000B4D58, &type metadata accessor for APSQuickRelaySelfAllocToken);
        }

        v121 = v456[2];
        v120 = v456[3];
        v449 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          v456 = sub_10009EFF4(v120 > 1, v121 + 1, 1, v456, &qword_1000DAD70, &qword_1000B4D58, &type metadata accessor for APSQuickRelaySelfAllocToken);
        }

        v96 += 112;
        sub_1000057B0(v117, v115);
        sub_1000057B0(v112, v113);
        sub_1000057B0(v118, v114);
        sub_1000057B0(v453, v454);
        sub_1000057B0(v455, v450);
        v122 = v434;
        v123 = v445;
        (*(v434 + 8))(v446, v445);
        v124 = v456;
        v456[2] = v449;
        (*(v122 + 32))(v124 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v121, v444, v123);
        v95 = v435 - 1;
        if (v435 == 1)
        {
          goto LABEL_69;
        }
      }

      sub_1000057B0(v117, v115);
      sub_1000057B0(v112, v113);
      sub_1000057B0(v118, v114);
      sub_1000057B0(v453, v454);
      sub_1000057B0(v455, v450);
      sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v456 = _swiftEmptyArrayStorage;
LABEL_69:
  v125 = *(v447 + 2088);
  if (v125)
  {
    v126 = *(v125 + 16);
    if (v126)
    {
      v448 = (v432 + 16);
      v446 = v432 + 8;
      v445 = v432 + 32;
      v127 = (v125 + 56);
      v455 = _swiftEmptyArrayStorage;
      v128 = v431;
      while (1)
      {
        v449 = v126;
        v129 = *(v127 + 3);
        v130 = *(v127 + 4);
        v131 = *(v127 + 5);
        v132 = *(v127 + 6);
        LODWORD(v454) = v127[16];
        v453 = *(v127 + 1);
        LODWORD(v452) = *v127;
        v450 = *(v127 - 1);

        sub_100005750(v129, v130);
        sub_100005750(v131, v132);

        sub_100005750(v129, v130);
        sub_100005750(v131, v132);
        v133 = v459;
        sub_1000A0120();
        v459 = v133;
        if (v133)
        {
          break;
        }

        (*v448)(v441, v128, v442);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v455 = sub_10009EFF4(0, v455[2] + 1, 1, v455, &qword_1000DAD78, &qword_1000B4D60, &type metadata accessor for APSQuickRelayPluginAllocation);
        }

        v135 = v455[2];
        v134 = v455[3];
        v454 = (v135 + 1);
        if (v135 >= v134 >> 1)
        {
          v455 = sub_10009EFF4(v134 > 1, v135 + 1, 1, v455, &qword_1000DAD78, &qword_1000B4D60, &type metadata accessor for APSQuickRelayPluginAllocation);
        }

        v127 += 80;

        sub_1000057B0(v129, v130);
        sub_1000057B0(v131, v132);
        v136 = v432;
        v128 = v431;
        v137 = v442;
        (*(v432 + 8))(v431, v442);
        v138 = v455;
        v455[2] = v454;
        (*(v136 + 32))(v138 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v135, v441, v137);
        v126 = v449 - 1;
        if (v449 == 1)
        {
          goto LABEL_80;
        }
      }

      sub_1000057B0(v129, v130);
      sub_1000057B0(v131, v132);
      sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
      sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
    }
  }

  v455 = _swiftEmptyArrayStorage;
LABEL_80:
  v139 = v447;
  v140 = *(v447 + 8);
  v360 = *v447;
  v359 = v140;
  v358 = *(v447 + 16);
  v357 = *(v447 + 24);
  v356 = *(v447 + 32);
  v141 = *(v447 + 48);
  v277 = *(v447 + 40);
  v142 = v277;
  v454 = v141;
  v143 = *(v447 + 64);
  v274 = *(v447 + 56);
  v144 = v274;
  v279 = v143;
  v146 = *(v447 + 80);
  v276 = *(v447 + 72);
  v145 = v276;
  v273 = v146;
  v147 = *(v447 + 96);
  v453 = *(v447 + 88);
  v452 = v147;
  v148 = *(v447 + 112);
  v450 = *(v447 + 104);
  v449 = v148;
  v149 = *(v447 + 128);
  v355 = *(v447 + 120);
  v448 = v149;
  v150 = *(v447 + 144);
  v263 = *(v447 + 136);
  v151 = v263;
  v446 = v150;
  v152 = *(v447 + 160);
  v354 = *(v447 + 152);
  v445 = v152;
  v353 = *(v447 + 168);
  sub_100005620(v433, v427, &qword_1000DAD50, &unk_1000B4D30);
  v352 = *(v139 + 192);
  v351 = *(v139 + 200);
  v153 = *(v139 + 216);
  v444 = *(v139 + 208);
  v443 = v153;
  v350 = *(v139 + 224);
  v349 = *(v139 + 225);
  v154 = *(v139 + 240);
  v442 = *(v139 + 232);
  v441 = v154;
  v155 = *(v139 + 256);
  v251 = *(v139 + 248);
  v156 = v251;
  v440 = v155;
  v157 = *(v139 + 272);
  v348 = *(v139 + 264);
  v437 = v157;
  v158 = *(v139 + 288);
  v347 = *(v139 + 280);
  v436 = v158;
  v159 = *(v139 + 304);
  v346 = *(v139 + 296);
  v439 = v159;
  v160 = *(v139 + 320);
  v435 = *(v139 + 312);
  v434 = v160;
  v345 = *(v139 + 328);
  v344 = *(v139 + 336);
  v161 = *(v139 + 352);
  v343 = *(v139 + 344);
  v432 = v161;
  v162 = *(v139 + 368);
  v342 = *(v139 + 360);
  v431 = v162;
  v163 = *(v139 + 384);
  v341 = *(v139 + 376);
  v430 = v163;
  v164 = *(v139 + 400);
  v428 = *(v139 + 392);
  v424 = v164;
  v165 = *(v139 + 416);
  v340 = *(v139 + 408);
  v423 = v165;
  v166 = *(v139 + 432);
  v339 = *(v139 + 424);
  v422 = v166;
  v338 = *(v139 + 440);
  v337 = *(v139 + 448);
  v336 = *(v139 + 456);
  v335 = *(v139 + 464);
  v167 = *(v139 + 480);
  v334 = *(v139 + 472);
  v429 = v167;
  v168 = *(v139 + 496);
  v421 = *(v139 + 488);
  v420 = v168;
  v169 = *(v139 + 512);
  v419 = *(v139 + 504);
  v418 = v169;
  v333 = *(v139 + 520);
  v332 = *(v139 + 528);
  v417 = *(v139 + 536);
  v416 = *(v139 + 544);
  v331 = *(v139 + 552);
  v415 = *(v139 + 560);
  v330 = *(v139 + 568);
  v413 = *(v139 + 576);
  v329 = *(v139 + 584);
  v414 = *(v139 + 592);
  v328 = *(v139 + 600);
  v327 = *(v139 + 608);
  v326 = *(v139 + 616);
  v325 = *(v139 + 624);
  v324 = *(v139 + 632);
  v323 = *(v139 + 640);
  v322 = *(v139 + 648);
  v321 = *(v139 + 656);
  v412 = *(v139 + 664);
  v411 = *(v139 + 672);
  v320 = *(v139 + 680);
  v410 = *(v139 + 688);
  v319 = *(v139 + 696);
  v318 = *(v139 + 704);
  v317 = *(v139 + 712);
  v316 = *(v139 + 720);
  v315 = *(v139 + 728);
  v409 = *(v139 + 736);
  v314 = *(v139 + 744);
  v313 = *(v139 + 752);
  v312 = *(v139 + 760);
  v408 = *(v139 + 768);
  v311 = *(v139 + 776);
  v310 = *(v139 + 784);
  v309 = *(v139 + 792);
  v308 = *(v139 + 800);
  v307 = *(v139 + 808);
  v306 = *(v139 + 816);
  v305 = *(v139 + 840);
  v304 = *(v139 + 848);
  v303 = *(v139 + 856);
  v302 = *(v139 + 864);
  v301 = *(v139 + 872);
  v300 = *(v139 + 880);
  v299 = *(v139 + 881);
  v298 = *(v139 + 882);
  v297 = *(v139 + 883);
  v296 = *(v139 + 884);
  v295 = *(v139 + 888);
  v406 = *(v139 + 896);
  v294 = *(v139 + 904);
  v407 = *(v139 + 912);
  v405 = *(v139 + 920);
  v404 = *(v139 + 928);
  v293 = *(v139 + 936);
  v403 = *(v139 + 944);
  v292 = *(v139 + 952);
  v402 = *(v139 + 960);
  v291 = *(v139 + 968);
  v401 = *(v139 + 976);
  v290 = *(v139 + 984);
  v400 = *(v139 + 992);
  v289 = *(v139 + 1000);
  v398 = *(v139 + 1008);
  v288 = *(v139 + 1016);
  v287 = *(v139 + 1024);
  v286 = *(v139 + 1032);
  v397 = *(v139 + 1040);
  v285 = *(v139 + 1048);
  v284 = *(v139 + 1056);
  v283 = *(v139 + 1064);
  v396 = *(v139 + 1072);
  v282 = *(v139 + 1080);
  v281 = *(v139 + 1088);
  v280 = *(v139 + 1089);
  v278 = *(v139 + 1096);
  v395 = *(v139 + 1104);
  v275 = *(v139 + 1112);
  v272 = *(v139 + 1120);
  v271 = *(v139 + 1128);
  v270 = *(v139 + 1136);
  v269 = *(v139 + 1144);
  v399 = *(v139 + 1152);
  sub_100005620(v438, v426, &qword_1000D9F28, &qword_1000B06E8);
  v394 = *(v139 + 1256);
  v393 = *(v139 + 1264);
  v268 = *(v139 + 1272);
  v392 = *(v139 + 1280);
  v391 = *(v139 + 1288);
  v390 = *(v139 + 1296);
  v267 = *(v139 + 1304);
  v266 = *(v139 + 1312);
  v265 = *(v139 + 1320);
  v389 = *(v139 + 1328);
  v264 = *(v139 + 1336);
  v262 = *(v139 + 1337);
  v261 = *(v139 + 1338);
  v260 = *(v139 + 1344);
  v259 = *(v139 + 1352);
  v258 = *(v139 + 1360);
  v388 = *(v139 + 1368);
  v387 = *(v139 + 1376);
  v386 = *(v139 + 1384);
  v385 = *(v139 + 1392);
  v384 = *(v139 + 1400);
  v257 = *(v139 + 1408);
  v256 = *(v139 + 1416);
  v255 = *(v139 + 1417);
  v254 = *(v139 + 1418);
  v253 = *(v139 + 1424);
  v252 = *(v139 + 1432);
  v250 = *(v139 + 1440);
  v249 = *(v139 + 1448);
  v248 = *(v139 + 1449);
  v247 = *(v139 + 1456);
  v246 = *(v139 + 1464);
  v245 = *(v139 + 1472);
  v244 = *(v139 + 1480);
  v170 = *(v139 + 1488);
  v383 = *(v139 + 1496);
  v242 = *(v139 + 1504);
  v243 = v170;
  v241 = *(v139 + 1512);
  v240 = *(v139 + 1520);
  v239 = *(v139 + 1528);
  v382 = *(v139 + 1536);
  v381 = *(v139 + 1544);
  v380 = *(v139 + 1552);
  v379 = *(v139 + 1560);
  v238 = *(v139 + 1568);
  v237 = *(v139 + 1576);
  v378 = *(v139 + 1584);
  v377 = *(v139 + 1592);
  v376 = *(v139 + 1600);
  v375 = *(v139 + 1608);
  v236 = *(v139 + 1616);
  v235 = *(v139 + 1624);
  v234 = *(v139 + 1632);
  v233 = *(v139 + 1640);
  v171 = *(v139 + 1656);
  v373 = *(v139 + 1664);
  v231 = *(v139 + 1672);
  v232 = v171;
  v374 = *(v139 + 1680);
  v230 = *(v139 + 1688);
  v229 = *(v139 + 1696);
  v228 = *(v139 + 1697);
  v227 = *(v139 + 1698);
  v226 = *(v139 + 1704);
  v225 = *(v139 + 1712);
  v372 = *(v139 + 1720);
  v371 = *(v139 + 1728);
  v224 = *(v139 + 1736);
  v223 = *(v139 + 1744);
  v222 = *(v139 + 1745);
  v172 = *(v139 + 1752);
  v370 = *(v139 + 1760);
  v220 = *(v139 + 1768);
  v221 = v172;
  v219 = *(v139 + 1776);
  v218 = *(v139 + 1784);
  v217 = *(v139 + 1792);
  v369 = *(v139 + 1800);
  v368 = *(v139 + 1808);
  v367 = *(v139 + 1816);
  v366 = *(v139 + 1824);
  v216 = *(v139 + 1832);
  v215 = *(v139 + 1840);
  v365 = *(v139 + 1848);
  v364 = *(v139 + 1856);
  v363 = *(v139 + 1864);
  v362 = *(v139 + 1872);
  v361 = *(v139 + 1880);
  v173 = *(v139 + 1888);
  v214 = *(v139 + 1896);
  v213 = *(v139 + 1904);
  v187 = *(v139 + 1912);
  v174 = *(v139 + 1920);
  v185 = v173;
  v186 = v174;
  v212 = *(v139 + 1928);
  v211 = *(v139 + 1936);
  v175 = *(v139 + 1944);
  v189 = *(v139 + 1952);
  v190 = v175;
  v176 = *(v139 + 1960);
  v192 = *(v139 + 1968);
  v209 = *(v139 + 1976);
  v210 = v176;
  v208 = *(v139 + 1984);
  v207 = *(v139 + 1992);
  v206 = *(v139 + 2000);
  v205 = *(v139 + 2008);
  v204 = *(v139 + 2016);
  v203 = *(v139 + 2024);
  v202 = *(v139 + 2032);
  v177 = *(v139 + 2056);
  v182 = *(v139 + 2064);
  v183 = v177;
  v201 = *(v139 + 2072);
  v200 = *(v139 + 2080);
  v199 = *(v139 + 2096);
  v198 = *(v139 + 2104);
  v197 = *(v139 + 2112);
  LODWORD(v177) = *(v139 + 2120);
  v195 = *(v139 + 2121);
  v196 = v177;
  v194 = *(v139 + 2122);
  v193 = *(v139 + 2128);
  v178[1] = *(v139 + 2136);
  v191 = *(v139 + 2144);
  v188 = *(v139 + 2152);
  v184 = *(v139 + 2160);
  v181 = *(v139 + 2168);
  LODWORD(v177) = *(v139 + 2176);
  v179 = *(v139 + 2177);
  v180 = v177;
  LODWORD(v447) = *(v139 + 2178);
  sub_100005750(v142, v454);
  sub_100005750(v144, v143);
  sub_100005750(v145, v146);
  sub_100005750(v453, v452);
  sub_100005750(v450, v449);

  sub_100005750(v151, v446);

  sub_100005750(v444, v443);
  sub_100005750(v442, v441);
  sub_100005750(v156, v440);

  sub_100005750(v435, v434);

  sub_100005750(v421, v420);
  sub_100005750(v419, v418);
  sub_100005750(v417, v416);

  sub_100005750(v412, v411);

  sub_100005750(v405, v404);

  sub_100005750(v394, v393);

  sub_100005750(v391, v390);

  sub_100005750(v387, v386);
  sub_100005750(v385, v384);

  sub_100005750(v382, v381);
  sub_100005750(v380, v379);
  sub_100005750(v378, v377);
  sub_100005750(v376, v375);

  sub_100005750(v372, v371);

  sub_100005750(v369, v368);
  sub_100005750(v367, v366);
  sub_100005750(v365, v364);
  sub_100005750(v363, v362);
  sub_100005750(v361, v185);
  sub_100005750(v187, v186);
  sub_100005750(v190, v189);

  sub_100005750(v183, v182);

  sub_10009F600();
  sub_1000057C4(v433, &qword_1000DAD50, &unk_1000B4D30);
  return sub_1000057C4(v438, &qword_1000D9F28, &qword_1000B06E8);
}

uint64_t sub_10009ECF8(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000613AC();
  sub_10009F250();

  if (!v1)
  {
    memcpy(__dst, v3, 0x883uLL);
    sub_10009C228(__dst);
    return sub_1000617EC(__dst);
  }

  return result;
}

void *sub_10009EFF4(size_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = a1;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return sub_10009F1D0();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000017BC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v18 = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v18 - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((v18 - v16) / v15);
LABEL_19:
  v20 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v21 = (*(v20 + 80) + 32) & ~*(v20 + 80), v17 + v21 >= a4 + v21 + *(v20 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}