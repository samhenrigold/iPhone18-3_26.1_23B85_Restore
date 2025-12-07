Swift::Int sub_1000625F8()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100062690(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100062714(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_1000627A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100062BD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000627D8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "IDSProtoBufIsResponseKey";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "is-u-plus-one-key";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_100062830()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_100062884@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100062BD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000628AC(uint64_t a1)
{
  v2 = sub_100062AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000628E8(uint64_t a1)
{
  v2 = sub_100062AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActivitySharingLegacyMessageSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v14[1] = a5;
  v17 = a4;
  v9 = sub_1000017BC(&qword_1000D9BB8, &qword_1000AEA50);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_100062AF4();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v18 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B40();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100062AF4()
{
  result = qword_1000D9BC0;
  if (!qword_1000D9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BC0);
  }

  return result;
}

uint64_t ActivitySharingLegacyMessageSchema.init(from:)(void *a1)
{
  result = sub_100062C1C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100062B74@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100062C1C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v7;
  }

  return result;
}

unint64_t sub_100062BD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD428;
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

uint64_t sub_100062C1C(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9BE0, &unk_1000AECA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_100062AF4();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v11 = 0;
    sub_100005424();
    sub_1000A0A20();
    v7 = v10[0];
    v9 = v10[1];
    LOBYTE(v10[0]) = 1;
    sub_1000A09E0();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

uint64_t sub_100062E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100062EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100062F18()
{
  result = qword_1000D9BC8;
  if (!qword_1000D9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BC8);
  }

  return result;
}

unint64_t sub_100062F70()
{
  result = qword_1000D9BD0;
  if (!qword_1000D9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BD0);
  }

  return result;
}

unint64_t sub_100062FC8()
{
  result = qword_1000D9BD8;
  if (!qword_1000D9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BD8);
  }

  return result;
}

uint64_t sub_10006302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  v7 = __chkstk_darwin(v6 - 8);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v22 - v13;
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  v22[1] = a1;
  v22[2] = a2;
  sub_100063388(a2, v22 - v15);
  if (v3)
  {

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_10009FC20();
  v19 = *(v18 - 8);
  v22[0] = *(v19 + 56);
  (v22[0])(v16, v17, 1, v18);
  sub_100063B34(v16, v14);
  v20 = *(v19 + 48);
  if (v20(v14, 1, v18) == 1)
  {
    sub_100063BA4(v14);
    sub_10006362C(v11);
    sub_100063BA4(v16);
    v14 = v23;
    sub_100063C0C(v11, v23);
    if (v20(v14, 1, v18) == 1)
    {
      sub_100063BA4(v14);
      sub_1000A0530();
      sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000A0520();
      return swift_willThrow();
    }
  }

  else
  {
    sub_100063BA4(v16);
  }

  return (*(v19 + 32))(v24, v14, v18);
}

uint64_t sub_100063388@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v16 = a2;
  v3 = sub_10009F9D0();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009FD40();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10009F7B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_100063D24();
  v11 = v17;
  sub_10009F250();
  if (v11)
  {
  }

  sub_10009FD30();

  sub_10009F7A0();
  (*(v8 + 16))(v5, v10, v7);
  (*(v14 + 104))(v5, enum case for IDSClientMessageType.sharedETASession(_:), v3);
  sub_10009FC10();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10006362C@<X0>(uint64_t a3@<X8>)
{
  v41 = a3;
  v4 = sub_10009F9D0();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009F5F0();
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  sub_10009F250();
  if (v3)
  {
  }

  v11 = v41;
  v33 = v9;
  v31 = v6;
  v32 = v4;
  v12 = v37;
  v13 = sub_10009FD00();
  if (*(v12 + 16))
  {
    v15 = sub_10000217C(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = (*(v12 + 56) + 16 * v15);
      v20 = *v18;
      v19 = v18[1];
      sub_1000054CC(*v18, v19);

      sub_100063C7C();
      sub_10009F250();
      v30 = v19;
      v36[0] = v37;
      v36[1] = v38;
      v36[2] = v39;
      v36[3] = v40;
      v29[3] = *(&v37 + 1);
      v29[2] = v38;
      v29[1] = v39;
      v23 = v40;

      sub_1000054CC(v23, *(&v23 + 1));
      sub_10009F5E0();
      v24 = v35;
      v25 = v31;
      v26 = v33;
      (*(v35 + 16))(v31, v33, v7);
      (*(v34 + 104))(v25, enum case for IDSClientMessageType.sharedETATrip(_:), v32);
      v27 = v41;
      sub_10009FC10();
      sub_100005568(v20, v30);

      sub_100063CD0(v36);
      (*(v24 + 8))(v26, v7);
      v28 = sub_10009FC20();
      return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    }

    v21 = v41;
  }

  else
  {

    v21 = v11;
  }

  v22 = sub_10009FC20();
  return (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
}

unint64_t sub_100063AB8(uint64_t a1)
{
  result = sub_100063AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100063AE0()
{
  result = qword_1000D9BE8;
  if (!qword_1000D9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BE8);
  }

  return result;
}

uint64_t sub_100063B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063BA4(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9BF0, &unk_1000AED20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063C7C()
{
  result = qword_1000D9BF8;
  if (!qword_1000D9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BF8);
  }

  return result;
}

unint64_t sub_100063D24()
{
  result = qword_1000D9C00;
  if (!qword_1000D9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C00);
  }

  return result;
}

unint64_t sub_100063D78()
{
  v1 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100063DEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100064E6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100063E14(uint64_t a1)
{
  v2 = sub_100064140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063E50(uint64_t a1)
{
  v2 = sub_100064140();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AVConferenceInviteSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9C08, &unk_1000AED30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100064140();
  sub_1000A0CE0();
  v17 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100005620(&v17, v11, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (v2)
  {
    sub_1000057B0(v13, *(&v13 + 1));
  }

  else
  {
    sub_1000057B0(v13, *(&v13 + 1));
    v16 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100005620(&v16, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v15 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_100005620(&v15, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v13 = v3[3];
    v14 = v13;
    v12 = 3;
    sub_1000421FC(&v14, v11);
    sub_1000A0B80();
    sub_100005568(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100064140()
{
  result = qword_1000D9C10;
  if (!qword_1000D9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C10);
  }

  return result;
}

double AVConferenceInviteSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100064FD4(a2, v7);
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

uint64_t sub_1000641F8()
{
  v1 = *v0;
  v2 = 0x546E6F6973736573;
  v3 = 0x7079546572616873;
  if (v1 != 6)
  {
    v3 = 0x4D53457369;
  }

  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x6D614E656C707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646F72707369;
  if (v1 != 2)
  {
    v5 = 0x6E656B6F546161;
  }

  if (*v0)
  {
    v2 = 0x656372756F736572;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100064304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000653E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100064338(uint64_t a1)
{
  v2 = sub_100065390();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064374(uint64_t a1)
{
  v2 = sub_100065390();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedWoodInviteSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9C18, &qword_1000AED40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_100065390();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0B30();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000A0B30();
  v8[13] = 2;
  sub_1000A0B30();
  v8[12] = 3;
  sub_1000A0A80();
  v8[11] = 4;
  sub_1000A0AB0();
  v8[10] = 5;
  sub_1000A0A80();
  v8[9] = 6;
  sub_1000A0A80();
  v8[8] = 7;
  sub_1000A0A90();
  return (*(v4 + 8))(v6, v3);
}

double RedWoodInviteSchema.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100065688(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_100064688(uint64_t a1)
{
  sub_1000A05B0();
}

unint64_t sub_100064794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065D64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000647C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065636E65;
  v4 = 0x7265666E6F637661;
  v5 = 0xE300000000000000;
  v6 = 6581603;
  v7 = 0xE900000000000044;
  v8 = 0x496E6F6973736573;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001000A24A0;
  v10 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x80000001000A24C0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100064898()
{
  v1 = *v0;
  v2 = 0x7265666E6F637661;
  v3 = 6581603;
  v4 = 0x496E6F6973736573;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_100064968@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100065D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100064990(uint64_t a1)
{
  v2 = sub_100065C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000649CC(uint64_t a1)
{
  v2 = sub_100065C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSScreenSharingInvitationSchema.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1000017BC(&qword_1000D9C28, &qword_1000AED48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_100065C68();
  sub_1000A0CE0();
  v8 = v2[1];
  v48[0] = *v2;
  v48[1] = v8;
  v9 = v2[3];
  v11 = *v2;
  v10 = v2[1];
  v48[2] = v2[2];
  v48[3] = v9;
  v37 = v11;
  v38 = v10;
  v12 = v2[3];
  v39 = v2[2];
  v40 = v12;
  v36 = 0;
  sub_100005620(v48, &v27, &qword_1000D9C38, &qword_1000AED50);
  sub_100065CBC();
  v13 = v49;
  sub_1000A0AD0();
  if (v13)
  {
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    sub_1000057C4(&v27, &qword_1000D9C38, &qword_1000AED50);
  }

  else
  {
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    sub_1000057C4(v35, &qword_1000D9C38, &qword_1000AED50);
    v14 = v2[9];
    v15 = v2[7];
    v44 = v2[8];
    v45 = v14;
    v16 = v2[9];
    v46 = v2[10];
    v17 = v2[5];
    v41[0] = v2[4];
    v41[1] = v17;
    v18 = v2[7];
    v20 = v2[4];
    v19 = v2[5];
    v42 = v2[6];
    v43 = v18;
    v31 = v44;
    v32 = v16;
    v33 = v2[10];
    v27 = v20;
    v28 = v19;
    v47 = *(v2 + 176);
    v34 = *(v2 + 176);
    v29 = v42;
    v30 = v15;
    v26 = 1;
    sub_100005620(v41, v24, &qword_1000D9C48, &qword_1000AED58);
    sub_100065D10();
    sub_1000A0AD0();
    v24[4] = v31;
    v24[5] = v32;
    v24[6] = v33;
    v25 = v34;
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_1000057C4(v24, &qword_1000D9C48, &qword_1000AED58);
    v23 = 2;
    sub_1000A0A90();
    v23 = 3;
    sub_1000A0A80();
    v23 = 4;
    sub_1000A0A80();
    v23 = 5;
    sub_1000A0AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

__n128 IDSScreenSharingInvitationSchema.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100065DB0(a2, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v5;
    *(a1 + 224) = v12;
    v6 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v6;
    v7 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v7;
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100064E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001000A3210 == a2;
  if (v4 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A3230 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A3250 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A3270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000A0BD0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100064FD4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CC0, &unk_1000AF790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100064140();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v21) = 0;
  sub_100005424();
  sub_1000A0970();
  v20 = v25[0];
  LOBYTE(v21) = 1;
  sub_1000A0970();
  v19 = v25[0];
  LOBYTE(v21) = 2;
  sub_1000A0970();
  v18 = v25[0];
  v29 = 3;
  sub_1000A0A20();
  (*(v6 + 8))(v8, v5);
  v16 = *(&v28 + 1);
  v17 = v28;
  v9 = v20;
  v21 = v20;
  v10 = v19;
  v22 = v19;
  v11 = v18;
  v23 = v18;
  v24 = v28;
  sub_100066C08(&v21, v25);
  sub_100002308(a1);
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v11;
  v26 = v17;
  v27 = v16;
  result = sub_100066C40(v25);
  v13 = v22;
  *a2 = v21;
  a2[1] = v13;
  v14 = v24;
  a2[2] = v23;
  a2[3] = v14;
  return result;
}

unint64_t sub_100065390()
{
  result = qword_1000D9C20;
  if (!qword_1000D9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C20);
  }

  return result;
}

uint64_t sub_1000653E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC00000068746170 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F72707369 && a2 == 0xE600000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656B6F546161 && a2 == 0xE700000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E656C707061 && a2 == 0xE900000000000065 || (sub_1000A0BD0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065 || (sub_1000A0BD0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D53457369 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000A0BD0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100065688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CB8, &qword_1000AF788);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100065390();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v51[0]) = 0;
  v9 = sub_1000A09D0();
  v42 = v10;
  LOBYTE(v51[0]) = 1;
  v11 = sub_1000A09D0();
  v41 = v12;
  v39 = v11;
  LOBYTE(v51[0]) = 2;
  v38 = sub_1000A09D0();
  v40 = v13;
  LOBYTE(v51[0]) = 3;
  v37 = sub_1000A0920();
  v15 = v14;
  LOBYTE(v51[0]) = 4;
  v34 = sub_1000A0950();
  v58 = v16 & 1;
  LOBYTE(v51[0]) = 5;
  v17 = sub_1000A0920();
  v36 = v18;
  v33 = v17;
  LOBYTE(v51[0]) = 6;
  v19 = sub_1000A0920();
  v35 = v20;
  v32 = v19;
  v59 = 7;
  v21 = sub_1000A0930();
  (*(v6 + 8))(v8, v5);
  *&v43 = v9;
  *(&v43 + 1) = v42;
  *&v44 = v39;
  *(&v44 + 1) = v41;
  *&v45 = v38;
  *(&v45 + 1) = v40;
  *&v46 = v37;
  v31 = v15;
  *(&v46 + 1) = v15;
  *&v47 = v34;
  HIDWORD(v30) = v58;
  BYTE8(v47) = v58;
  v22 = v33;
  v23 = v36;
  *&v48 = v33;
  *(&v48 + 1) = v36;
  v24 = v32;
  v25 = v35;
  *&v49 = v32;
  *(&v49 + 1) = v35;
  v50 = v21;
  sub_100066BA0(&v43, v51);
  sub_100002308(a1);
  v51[0] = v9;
  v51[1] = v42;
  v51[2] = v39;
  v51[3] = v41;
  v51[4] = v38;
  v51[5] = v40;
  v51[6] = v37;
  v51[7] = v31;
  v51[8] = v34;
  v52 = BYTE4(v30);
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  v57 = v21;
  result = sub_100066BD8(v51);
  v27 = v48;
  *(a2 + 64) = v47;
  *(a2 + 80) = v27;
  *(a2 + 96) = v49;
  *(a2 + 112) = v50;
  v28 = v44;
  *a2 = v43;
  *(a2 + 16) = v28;
  v29 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v29;
  return result;
}

unint64_t sub_100065C68()
{
  result = qword_1000D9C30;
  if (!qword_1000D9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C30);
  }

  return result;
}

unint64_t sub_100065CBC()
{
  result = qword_1000D9C40;
  if (!qword_1000D9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C40);
  }

  return result;
}

unint64_t sub_100065D10()
{
  result = qword_1000D9C50;
  if (!qword_1000D9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C50);
  }

  return result;
}

unint64_t sub_100065D64(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD490;
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

uint64_t sub_100065DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CA0, &qword_1000AF780);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v91 = a1;
  sub_1000022C4(a1, v9);
  sub_100065C68();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v91);
  }

  v10 = v6;
  v73 = 0;
  sub_100066AC0();
  v11 = v5;
  sub_1000A0970();
  v79 = v74;
  v80 = v75;
  v81 = v76;
  v82 = v77;
  v64 = 1;
  sub_100066B14();
  sub_1000A0970();
  v87 = v69;
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v83 = v65;
  v84 = v66;
  v85 = v67;
  v86 = v68;
  LOBYTE(v54[0]) = 2;
  v12 = sub_1000A0930();
  LOBYTE(v54[0]) = 3;
  v13 = sub_1000A0920();
  v15 = v14;
  v37 = v13;
  LOBYTE(v54[0]) = 4;
  v36 = sub_1000A0920();
  v38 = v16;
  v63 = 5;
  v17 = sub_1000A0950();
  v19 = v18;
  v20 = *(v10 + 8);
  v34 = v17;
  v20(v8, v11);
  v78 = v19 & 1;
  v47 = v87;
  v48 = v88;
  v49 = v89;
  LOBYTE(v50) = v90;
  v43 = v83;
  v44 = v84;
  v45 = v85;
  v46 = v86;
  v39 = v79;
  v40 = v80;
  v41 = v81;
  v42 = v82;
  BYTE1(v50) = v12;
  v22 = v36;
  v21 = v37;
  *(&v50 + 1) = v37;
  *&v51 = v15;
  v35 = v12;
  v23 = v38;
  *(&v51 + 1) = v36;
  *&v52 = v38;
  v24 = v34;
  *(&v52 + 1) = v34;
  v19 &= 1u;
  v53 = v19;
  sub_100066B68(&v39, v54);
  sub_100002308(v91);
  v54[8] = v87;
  v54[9] = v88;
  v54[10] = v89;
  v55 = v90;
  v54[4] = v83;
  v54[5] = v84;
  v54[6] = v85;
  v54[7] = v86;
  v54[0] = v79;
  v54[1] = v80;
  v54[2] = v81;
  v54[3] = v82;
  v56 = v35;
  v57 = v21;
  v58 = v15;
  v59 = v22;
  v60 = v23;
  v61 = v24;
  v62 = v19;
  result = sub_1000456C8(v54);
  v26 = v52;
  *(a2 + 192) = v51;
  *(a2 + 208) = v26;
  *(a2 + 224) = v53;
  v27 = v48;
  *(a2 + 128) = v47;
  *(a2 + 144) = v27;
  v28 = v50;
  *(a2 + 160) = v49;
  *(a2 + 176) = v28;
  v29 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v29;
  v30 = v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v30;
  v31 = v40;
  *a2 = v39;
  *(a2 + 16) = v31;
  v32 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v32;
  return result;
}

uint64_t sub_100066308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 56) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 56) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10006635C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_1000663CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000663F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100066440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000664B0(uint64_t a1)
{
  v1 = *(a1 + 56) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000664D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000664F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_10006653C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 225))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_100066598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RedWoodInviteSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RedWoodInviteSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000667AC()
{
  result = qword_1000D9C58;
  if (!qword_1000D9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C58);
  }

  return result;
}

unint64_t sub_100066804()
{
  result = qword_1000D9C60;
  if (!qword_1000D9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C60);
  }

  return result;
}

unint64_t sub_10006685C()
{
  result = qword_1000D9C68;
  if (!qword_1000D9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C68);
  }

  return result;
}

unint64_t sub_1000668B4()
{
  result = qword_1000D9C70;
  if (!qword_1000D9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C70);
  }

  return result;
}

unint64_t sub_10006690C()
{
  result = qword_1000D9C78;
  if (!qword_1000D9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C78);
  }

  return result;
}

unint64_t sub_100066964()
{
  result = qword_1000D9C80;
  if (!qword_1000D9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C80);
  }

  return result;
}

unint64_t sub_1000669BC()
{
  result = qword_1000D9C88;
  if (!qword_1000D9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C88);
  }

  return result;
}

unint64_t sub_100066A14()
{
  result = qword_1000D9C90;
  if (!qword_1000D9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C90);
  }

  return result;
}

unint64_t sub_100066A6C()
{
  result = qword_1000D9C98;
  if (!qword_1000D9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C98);
  }

  return result;
}

unint64_t sub_100066AC0()
{
  result = qword_1000D9CA8;
  if (!qword_1000D9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CA8);
  }

  return result;
}

unint64_t sub_100066B14()
{
  result = qword_1000D9CB0;
  if (!qword_1000D9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CB0);
  }

  return result;
}

Swift::Int sub_100066C80()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100066CDC(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100066D24@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD540;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100066D9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD578;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100066DF4(uint64_t a1)
{
  v2 = sub_100066F9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066E30(uint64_t a1)
{
  v2 = sub_100066F9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CompanionAuthMessageSchema.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_1000017BC(&qword_1000D9CC8, &qword_1000AF7A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CE0();
  sub_1000A0B90();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100066F9C()
{
  result = qword_1000D9CD0;
  if (!qword_1000D9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CD0);
  }

  return result;
}

void *CompanionAuthMessageSchema.init(from:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9CD8, &qword_1000AF7A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CD0();
  if (!v1)
  {
    v7 = sub_1000A0A30();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002308(a1);
  return v7;
}

uint64_t sub_100067144@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9CD8, &qword_1000AF7A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v9 = sub_1000A0A30();
  (*(v6 + 8))(v8, v5);
  result = sub_100002308(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1000672A4(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D9CC8, &qword_1000AF7A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_100066F9C();
  sub_1000A0CE0();
  sub_1000A0B90();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100067400()
{
  result = qword_1000D9CE0;
  if (!qword_1000D9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CE0);
  }

  return result;
}

unint64_t sub_100067458()
{
  result = qword_1000D9CE8;
  if (!qword_1000D9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CE8);
  }

  return result;
}

unint64_t sub_1000674B0()
{
  result = qword_1000D9CF0;
  if (!qword_1000D9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9CF0);
  }

  return result;
}

uint64_t sub_100067504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 1835365481;
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
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 1835365481;
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
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_1000675A4()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100067620(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100067688(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100067700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD5B0;
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

void sub_100067760(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100067798()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_1000677CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD5B0;
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

uint64_t sub_100067830(uint64_t a1)
{
  v2 = sub_100067A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006786C(uint64_t a1)
{
  v2 = sub_100067A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSActivitySharingInvitationSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_1000017BC(&qword_1000D9CF8, &qword_1000AF990);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000022C4(a1, a1[3]);
  sub_100067A44();
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

unint64_t sub_100067A44()
{
  result = qword_1000D9D00;
  if (!qword_1000D9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D00);
  }

  return result;
}

uint64_t IDSActivitySharingInvitationSchema.init(from:)(void *a1)
{
  result = sub_100067B10(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100067AC0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100067B10(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100067B10(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9D20, &unk_1000AFC10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_100067A44();
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

unint64_t sub_100067D00()
{
  result = qword_1000D9D08;
  if (!qword_1000D9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D08);
  }

  return result;
}

unint64_t sub_100067D58()
{
  result = qword_1000D9D10;
  if (!qword_1000D9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D10);
  }

  return result;
}

unint64_t sub_100067DB0()
{
  result = qword_1000D9D18;
  if (!qword_1000D9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D18);
  }

  return result;
}

uint64_t sub_100067E18(uint64_t a1)
{
  sub_1000A05B0();
}

unint64_t sub_100067F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068E98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100067F5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x444970756F7267;
  v5 = 0xED0000656C646E61;
  v6 = 0x4865657469766E69;
  v7 = 0xE800000000000000;
  v8 = 0x656D6954746E6573;
  if (v2 != 4)
  {
    v8 = 0x6D614E70756F7267;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x4C52556572616873;
  if (v2 != 1)
  {
    v10 = 0x6974617469766E69;
    v9 = 0xEF6E656B6F546E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100068038()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0x4865657469766E69;
  v4 = 0x656D6954746E6573;
  if (v1 != 4)
  {
    v4 = 0x6D614E70756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4C52556572616873;
  if (v1 != 1)
  {
    v5 = 0x6974617469766E69;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_100068110@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100068E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100068138(uint64_t a1)
{
  v2 = sub_100068438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068174(uint64_t a1)
{
  v2 = sub_100068438();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSKCSharingInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9D28, &unk_1000AFC20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000022C4(a1, a1[3]);
  sub_100068438();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000A0B30();
    v9 = *(v3 + 40);
    v12 = *(v3 + 32);
    v13 = v9;
    v11[15] = 2;
    sub_1000054CC(v12, v9);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v12, v13);
    LOBYTE(v12) = 3;
    sub_1000A0B30();
    type metadata accessor for IDSKCSharingInvitationSchema(0);
    LOBYTE(v12) = 4;
    sub_10009F350();
    sub_100068AD4(&qword_1000D84A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000A0AD0();
    LOBYTE(v12) = 5;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100068438()
{
  result = qword_1000D9D30;
  if (!qword_1000D9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D30);
  }

  return result;
}

uint64_t type metadata accessor for IDSKCSharingInvitationSchema(uint64_t a1)
{
  result = qword_1000D9D98;
  if (!qword_1000D9D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSKCSharingInvitationSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v34 = sub_1000017BC(&qword_1000D9D38, &qword_1000AFC30);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - v8;
  v10 = type metadata accessor for IDSKCSharingInvitationSchema(0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  sub_1000022C4(a1, v13);
  sub_100068438();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v35);
  }

  v32 = v6;
  LOBYTE(v36) = 0;
  *v12 = sub_1000A09D0();
  *(v12 + 1) = v15;
  LOBYTE(v36) = 1;
  *(v12 + 2) = sub_1000A09D0();
  *(v12 + 3) = v16;
  v37 = 2;
  sub_100005424();
  sub_1000A0A20();
  v17 = v12;
  *(v12 + 2) = v36;
  LOBYTE(v36) = 3;
  v18 = sub_1000A09D0();
  v31 = 0;
  *(v12 + 6) = v18;
  *(v12 + 7) = v19;
  sub_10009F350();
  LOBYTE(v36) = 4;
  sub_100068AD4(&qword_1000D84B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = v31;
  v21 = v32;
  sub_1000A0970();
  v31 = v20;
  if (v20)
  {
    (*(v7 + 8))(v9, v34);
    v22 = 0;
  }

  else
  {
    sub_10000D3D0(v21, &v17[*(v10 + 32)]);
    LOBYTE(v36) = 5;
    v23 = v31;
    v24 = sub_1000A0920();
    v26 = v17;
    v31 = v23;
    if (!v23)
    {
      v27 = v24;
      v28 = v25;
      (*(v7 + 8))(v9, v34);
      v29 = (v26 + *(v10 + 36));
      *v29 = v27;
      v29[1] = v28;
      sub_100068984(v26, v33);
      sub_100002308(v35);
      return sub_1000689E8(v26);
    }

    (*(v7 + 8))(v9, v34);
    v22 = 1;
  }

  sub_100002308(v35);

  sub_100005568(*(v17 + 4), *(v17 + 5));

  if (v22)
  {
    return sub_10000D324(&v17[*(v10 + 32)]);
  }

  return result;
}

uint64_t sub_100068984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSKCSharingInvitationSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000689E8(uint64_t a1)
{
  v2 = type metadata accessor for IDSKCSharingInvitationSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100068B60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100068C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100068CE0(uint64_t a1)
{
  sub_10000D760(319);
  if (v1 <= 0x3F)
  {
    sub_10003FA30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100068D94()
{
  result = qword_1000D9DE0;
  if (!qword_1000D9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DE0);
  }

  return result;
}

unint64_t sub_100068DEC()
{
  result = qword_1000D9DE8;
  if (!qword_1000D9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DE8);
  }

  return result;
}

unint64_t sub_100068E44()
{
  result = qword_1000D9DF0;
  if (!qword_1000D9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DF0);
  }

  return result;
}

unint64_t sub_100068E98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD600;
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

Swift::Int sub_100068EE4()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100068F68(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100068FC4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD6B0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100069064@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD6E8;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000690BC(uint64_t a1)
{
  v2 = sub_10006929C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000690F8(uint64_t a1)
{
  v2 = sub_10006929C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHealthInvitationSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000017BC(&qword_1000D9DF8, &qword_1000AFE30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000022C4(a1, a1[3]);
  sub_10006929C();
  sub_1000A0CE0();
  v11 = a2;
  v12 = a3;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10006929C()
{
  result = qword_1000D9E00;
  if (!qword_1000D9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E00);
  }

  return result;
}

void *sub_100069308@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100069350(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_100069350(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9E20, &qword_1000B00A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10006929C();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_100005424();
    sub_1000A0A20();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100002308(a1);
  }

  return v7;
}

uint64_t sub_1000694CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100069520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100069590()
{
  result = qword_1000D9E08;
  if (!qword_1000D9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E08);
  }

  return result;
}

unint64_t sub_1000695E8()
{
  result = qword_1000D9E10;
  if (!qword_1000D9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E10);
  }

  return result;
}

unint64_t sub_100069640()
{
  result = qword_1000D9E18;
  if (!qword_1000D9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E18);
  }

  return result;
}

Swift::Int sub_1000696EC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A0C80(v1 + 10);
  return sub_1000A0C90();
}

Swift::Int sub_100069764(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_1000A0C80(v2 + 10);
  return sub_1000A0C90();
}

uint64_t sub_1000697A8@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006C530(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000697E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a1;
  v144 = a2;
  v134 = a3;
  v4 = sub_10009F4D0();
  v131 = *(v4 - 8);
  v132 = v4;
  __chkstk_darwin(v4);
  v136 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A00F0();
  v7 = *(v6 - 8);
  v139 = v6;
  v140 = v7;
  __chkstk_darwin(v6);
  v138 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017BC(&qword_1000D9E30, &qword_1000B0128);
  __chkstk_darwin(v9 - 8);
  v129 = &v98 - v10;
  v11 = sub_1000A0230();
  v127 = *(v11 - 8);
  v128 = v11;
  __chkstk_darwin(v11);
  v122 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10009F7C0();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10009F9D0();
  v133 = *(v137 - 8);
  v14 = __chkstk_darwin(v137);
  v130 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v116 = &v98 - v16;
  v126 = sub_1000A0400();
  v125 = *(v126 - 8);
  v17 = __chkstk_darwin(v126);
  v135 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v98 - v19;
  v110 = sub_1000A04D0();
  v113 = *(v110 - 8);
  __chkstk_darwin(v110);
  v120 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000A0420();
  v115 = *(v114 - 8);
  __chkstk_darwin(v114);
  v121 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1000A04F0();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v141 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000A04B0();
  v123 = *(v124 - 8);
  v23 = __chkstk_darwin(v124);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v98 - v26;
  v28 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v98 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v98 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v98 - v39;
  __chkstk_darwin(v38);
  v42 = &v98 - v41;
  sub_10009F270();
  swift_allocObject();
  v43 = sub_10009F260();
  sub_10006B130();
  sub_10009F250();
  if (v3)
  {
  }

  v105 = v40;
  v103 = v37;
  v104 = v27;
  v46 = v141;
  v45 = v142;
  v106 = v34;
  v107 = v31;
  v108 = v42;
  v109 = v43;
  v143 = v145;
  v144 = v146;
  if ((v148 & 1) != 0 || (v47 = v147, v48 = v149, v49 = sub_10006C530(v147), v49 == 7))
  {
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();
    sub_1000057B0(v143, v144);
  }

  v50 = v49;
  v51 = *(v140 + 56);
  v102 = v140 + 56;
  v101 = v51;
  v51(v108, 1, 1, v139);
  if (v144 >> 60 != 15)
  {
    v57 = v50;
    v100 = v50;
    v99 = v47;
    v150 = v48;
    if (v50 > 3u)
    {
      v54 = v140;
      v64 = v137;
      if (v57 == 4)
      {
        v53 = v139;
        if (v150)
        {
          sub_100005750(v143, v144);
          v67 = v45;
          sub_1000A03F0();
          v55 = v138;
          v79 = v107;
          v68 = v108;
          sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
          sub_1000057B0(v143, v144);
          (*(v125 + 32))(v68, v67, v126);
          v54 = v140;
          (*(v140 + 104))(v68, enum case for IDSClientProtobufMessageType.walletDeviceSharingCapabilitiesMessage(_:), v53);
          v101(v68, 0, 1, v53);
          v78 = v106;
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v57 != 5)
      {
        v70 = v143;
        v69 = v144;
        sub_100005750(v143, v144);
        v71 = v129;
        sub_1000A0220();
        sub_1000057B0(v70, v69);
        v72 = v127;
        v73 = v128;
        if ((*(v127 + 48))(v71, 1, v128) == 1)
        {
          sub_1000057C4(v71, &qword_1000D9E30, &qword_1000B0128);
          v79 = v107;
          v78 = v106;
          v55 = v138;
          v53 = v139;
          goto LABEL_43;
        }

        v80 = v108;
        sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
        v81 = *(v72 + 32);
        v82 = v122;
        v81(v122, v71, v73);
        v81(v80, v82, v73);
        v53 = v139;
        (*(v140 + 104))(v80, enum case for IDSClientProtobufMessageType.walletPassSharingCancelMessage(_:), v139);
        v54 = v140;
        v101(v80, 0, 1, v53);
        goto LABEL_30;
      }

      sub_100005750(v143, v144);
      v65 = v105;
      sub_10006B184(v105);
      v84 = v108;
      sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
      sub_10006C5B8(v65, v84);
      v85 = v84;
      v86 = v103;
      sub_10006C548(v85, v103);
      v53 = v139;
      if ((*(v54 + 48))(v86, 1, v139) != 1)
      {
        sub_1000057B0(v143, v144);
        sub_1000057C4(v86, &qword_1000D9E38, &qword_1000B0130);
        v55 = v138;
        v79 = v107;
        goto LABEL_31;
      }

      sub_1000057C4(v86, &qword_1000D9E38, &qword_1000B0130);
      (*(v118 + 104))(v117, enum case for ClientMessageType.restricted(_:), v119);
      v87 = v116;
      sub_10009FA60();
      v88 = v144;
      (*(v133 + 104))(v87, enum case for IDSClientMessageType.messageTypeRestricted(_:), v64);
      sub_10009FC10();

      v89 = v143;
      sub_1000057B0(v143, v88);
      v62 = v89;
      v63 = v88;
LABEL_15:
      sub_1000057B0(v62, v63);
      return sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
    }

    if (v50 - 1 < 2)
    {
      if (((v48 != 2) ^ v48))
      {
        v58 = v143;
        sub_100005750(v143, v144);
        v59 = v25;
        sub_1000A04A0();
        v60 = v107;
        v53 = v139;
        v61 = v140;
        v90 = v108;
        sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
        sub_1000057B0(v58, v144);
        (*(v123 + 32))(v90, v59, v124);
        (*(v61 + 104))(v90, enum case for IDSClientProtobufMessageType.walletCloudStoreZoneInvitationRequestMessage(_:), v53);
        v101(v90, 0, 1, v53);
        v78 = v106;
        v55 = v138;
        v54 = v61;
        v79 = v60;
        goto LABEL_43;
      }

LABEL_34:
      v79 = v107;
      v78 = v106;
      v53 = v139;
      v54 = v140;
      v55 = v138;
      goto LABEL_43;
    }

    if (v50)
    {
      if (((v48 != 2) ^ v48))
      {
        sub_100005750(v143, v144);
        v74 = v121;
        sub_1000A0410();
        v53 = v139;
        v75 = v140;
        v76 = v108;
        sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
        sub_1000057B0(v143, v144);
        (*(v115 + 32))(v76, v74, v114);
        (*(v75 + 104))(v76, enum case for IDSClientProtobufMessageType.walletRemoteRegistrationRequestMessage(_:), v53);
        v101(v76, 0, 1, v53);
        v78 = v106;
        v55 = v138;
        v54 = v75;
      }

      else
      {
        v53 = v139;
        v54 = v140;
        if (v150)
        {
          sub_100005750(v143, v144);
          v83 = v120;
          sub_1000A04C0();
          v55 = v138;
          v93 = v108;
          sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
          sub_1000057B0(v143, v144);
          (*(v113 + 32))(v93, v83, v110);
          v54 = v140;
          (*(v140 + 104))(v93, enum case for IDSClientProtobufMessageType.walletRemoteRegistrationRequestResultMessage(_:), v53);
          v101(v93, 0, 1, v53);
          v78 = v106;
        }

        else
        {
          v78 = v106;
          v55 = v138;
        }
      }

      v79 = v107;
      goto LABEL_43;
    }

    if (((v48 != 2) ^ v48))
    {
      sub_100005750(v143, v144);
      v66 = v104;
      sub_1000A04A0();
      v91 = v108;
      sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
      sub_1000057B0(v143, v144);
      (*(v123 + 32))(v91, v66, v124);
      v53 = v139;
      v54 = v140;
      (*(v140 + 104))(v91, enum case for IDSClientProtobufMessageType.walletCloudStoreZoneInvitationRequestMessage(_:), v139);
      v101(v91, 0, 1, v53);
      v79 = v107;
    }

    else
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_100005750(v143, v144);
      sub_1000A04E0();
      v79 = v107;
      v92 = v108;
      sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
      sub_1000057B0(v143, v144);
      v53 = v139;
      (*(v111 + 32))(v92, v46, v112);
      v54 = v140;
      (*(v140 + 104))(v92, enum case for IDSClientProtobufMessageType.walletCloudStoreZoneInvitationResponseMessage(_:), v53);
      v101(v92, 0, 1, v53);
    }

    v78 = v106;
    v55 = v138;
    goto LABEL_43;
  }

  if (v50 != 4)
  {
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1000A0850(62);
    v152._countAndFlagsBits = 0xD000000000000021;
    v152._object = 0x80000001000A32D0;
    sub_1000A05E0(v152);
    v151 = v50;
    sub_1000A08A0();
    v153._countAndFlagsBits = 0xD00000000000001BLL;
    v153._object = 0x80000001000A3300;
    sub_1000A05E0(v153);
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();

    v62 = v143;
    v63 = v144;
    goto LABEL_15;
  }

  v150 = v48;
  v99 = v47;
  v100 = v50;
  if ((((v48 != 2) ^ v48) & 1) == 0)
  {
    v53 = v139;
    v54 = v140;
LABEL_30:
    v55 = v138;
    v79 = v107;
LABEL_31:
    v78 = v106;
    goto LABEL_43;
  }

  v52 = v135;
  sub_1000A03F0();
  sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
  v53 = v139;
  v54 = v140;
  v55 = v138;
  v56 = v107;
  v77 = v108;
  (*(v125 + 32))(v108, v52, v126);
  (*(v54 + 104))(v77, enum case for IDSClientProtobufMessageType.walletDeviceSharingCapabilitiesMessage(_:), v53);
  v101(v77, 0, 1, v53);
  v78 = v106;
  v79 = v56;
LABEL_43:
  sub_10006C548(v108, v78);
  if ((*(v54 + 48))(v78, 1, v53) == 1)
  {
    sub_1000057C4(v78, &qword_1000D9E38, &qword_1000B0130);
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1000A0850(35);
    v154._countAndFlagsBits = 0xD000000000000021;
    v154._object = 0x80000001000A32D0;
    sub_1000A05E0(v154);
    v151 = v100;
    sub_1000A08A0();
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();

    sub_1000057B0(v143, v144);
    return sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
  }

  (*(v54 + 32))(v55, v78, v53);
  (*(v54 + 16))(v79, v55, v53);
  v101(v79, 0, 1, v53);
  v94 = v136;
  sub_10009F4C0();
  v95 = v131;
  v96 = v132;
  v97 = v130;
  (*(v131 + 16))(v130, v94, v132);
  (*(v133 + 104))(v97, enum case for IDSClientMessageType.idsProtobufMessage(_:), v137);
  sub_10009FC10();

  sub_1000057B0(v143, v144);
  (*(v95 + 8))(v94, v96);
  (*(v54 + 8))(v55, v53);
  return sub_1000057C4(v108, &qword_1000D9E38, &qword_1000B0130);
}

unint64_t sub_10006B0B4(uint64_t a1)
{
  result = sub_10006B0DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006B0DC()
{
  result = qword_1000D9E28;
  if (!qword_1000D9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E28);
  }

  return result;
}

unint64_t sub_10006B130()
{
  result = qword_1000D9E40;
  if (!qword_1000D9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E40);
  }

  return result;
}

void sub_10006B184(char *a3@<X8>)
{
  v4 = sub_1000017BC(&qword_1000D9E48, &qword_1000B0138);
  __chkstk_darwin(v4 - 8);
  v106 = &v97 - v5;
  v6 = sub_1000017BC(&qword_1000D9E50, &qword_1000B0140);
  v104 = *(v6 - 8);
  v105 = v6;
  __chkstk_darwin(v6);
  v102 = &v97 - v7;
  v8 = sub_1000017BC(&qword_1000D9E58, &qword_1000B0148);
  __chkstk_darwin(v8 - 8);
  v109 = &v97 - v9;
  v10 = sub_1000017BC(&qword_1000D9E60, &unk_1000B0150);
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v103 = &v97 - v11;
  v12 = sub_1000A0360();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v112 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = &v97 - v17;
  v18 = __chkstk_darwin(v16);
  v110 = &v97 - v19;
  __chkstk_darwin(v18);
  v113 = &v97 - v20;
  v116 = sub_1000A03E0();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
  __chkstk_darwin(v22);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = objc_allocWithZone(PBDataReader);
  isa = sub_10009F300().super.isa;
  v27 = [v25 initWithData:isa];

  v28 = [v27 position];
  if (v28 >= [v27 length])
  {
    v58 = 0;
    v31 = 0xF000000000000000;
LABEL_44:

LABEL_45:
    sub_1000A0530();
    sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();
    v59 = v58;
LABEL_46:
    sub_1000057B0(v59, v31);
  }

  else
  {
    v98 = v13;
    v99 = v12;
    v101 = v24;
    v100 = a3;
    v29 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v30 = 1;
    v31 = 0xF000000000000000;
    while (([v27 hasError] & 1) == 0)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      while (1)
      {
        LOBYTE(v121[0]) = 0;
        v36 = [v27 position] + 1;
        if (v36 >= [v27 position] && (v37 = objc_msgSend(v27, "position") + 1, v37 <= objc_msgSend(v27, "length")))
        {
          v38 = [v27 data];
          [v38 getBytes:v121 range:{objc_msgSend(v27, "position"), 1}];

          [v27 setPosition:{objc_msgSend(v27, "position") + 1}];
        }

        else
        {
          [v27 _setError];
        }

        v35 |= (v121[0] & 0x7F) << v33;
        if ((v121[0] & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        if (v34++ >= 9)
        {
          v40 = 0;
          goto LABEL_18;
        }
      }

      if ([v27 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v35;
      }

LABEL_18:
      if ([v27 hasError])
      {

        sub_1000A0530();
        sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000A0520();
        swift_willThrow();
        v59 = v120;
        goto LABEL_46;
      }

      v41 = v40 >> 3;
      if ((v40 >> 3) == 3)
      {
        v52 = PBReaderReadData();
        if (v52)
        {
          v53 = v52;
          v54 = sub_10009F310();
          v56 = v55;
          sub_1000057B0(v120, v31);

          v120 = v54;
          v31 = v56;
        }

        else
        {
          sub_1000057B0(v120, v31);
          v120 = 0;
          v31 = 0xF000000000000000;
        }
      }

      else if (v41 == 2)
      {

        v49 = PBReaderReadString();
        if (v49)
        {
          v50 = v49;
          v119 = sub_1000A0580();
          v29 = v51;
        }

        else
        {
          v119 = 0;
          v29 = 0;
        }
      }

      else if (v41 == 1)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v121[0]) = 0;
          v45 = [v27 position] + 1;
          if (v45 >= [v27 position] && (v46 = objc_msgSend(v27, "position") + 1, v46 <= objc_msgSend(v27, "length")))
          {
            v47 = [v27 data];
            [v47 getBytes:v121 range:{objc_msgSend(v27, "position"), 1}];

            [v27 setPosition:{objc_msgSend(v27, "position") + 1}];
          }

          else
          {
            [v27 _setError];
          }

          v44 |= (v121[0] & 0x7F) << v42;
          if ((v121[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          if (v43++ > 8)
          {
            v118 = 0;
            v30 = 0;
            goto LABEL_4;
          }
        }

        v30 = 0;
        if ([v27 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v44;
        }

        v118 = v57;
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v32 = [v27 position];
      if (v32 >= [v27 length])
      {
        break;
      }
    }

    if (v30)
    {
      v58 = v120;
      goto LABEL_44;
    }

    if (!v29)
    {
LABEL_51:
      v58 = v120;
      goto LABEL_45;
    }

    if (v31 >> 60 == 15)
    {

      goto LABEL_51;
    }

    sub_10009F1F0();
    swift_allocObject();
    v60 = sub_10009F1E0();
    sub_10006C684(&qword_1000D9E68, type metadata accessor for WalletPassSharingGeneralMessageSchema, &protocol conformance descriptor for WalletPassSharingGeneralMessageSchema);
    v61 = v101;
    v62 = v120;
    v63 = v117;
    sub_10009F1D0();
    if (v63)
    {

      sub_1000057B0(v62, v31);

      return;
    }

    v117 = v60;
    v64 = *(v22 + 20);
    v66 = v114;
    v65 = v115;
    v67 = v116;
    (*(v114 + 16))(v115, v61 + v64, v116);
    v68 = (*(v66 + 88))(v65, v67);
    if (v68 == enum case for WalletPassSharingGeneralMessageFormat.genericAuthorizationToken(_:))
    {
      v69 = v61;
LABEL_57:
      sub_10006C628(v69);

      sub_1000057B0(v120, v31);

LABEL_63:
      v75 = sub_1000A00F0();
      (*(*(v75 - 8) + 56))(v100, 1, 1, v75);
      return;
    }

    v70 = v120;
    if (v68 == enum case for WalletPassSharingGeneralMessageFormat.carKey(_:))
    {

      v71 = v113;
      v72 = v101;
      WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v113);
      v73 = (*(v98 + 88))(v71, v99);
      if (v73 != enum case for WalletPassSharingGeneralMessageType.unknown(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.invitation(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.signingRequest(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.signingResponse(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.ownerCancel(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.friendCancel(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.pinEntryRequest(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.pinEntryResponse(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.invitationRequest(_:))
      {
        if (v73 != enum case for WalletPassSharingGeneralMessageType.externalInvitationRequest(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.url(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.discoveryRequest(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.discoveryResponse(_:) && v73 != enum case for WalletPassSharingGeneralMessageType.proximitySetupAssistant(_:))
        {
          (*(v98 + 8))(v71, v99);
        }

        goto LABEL_93;
      }

      sub_10006C628(v72);

      v74 = v70;
LABEL_62:
      sub_1000057B0(v74, v31);
      goto LABEL_63;
    }

    if (v68 != enum case for WalletPassSharingGeneralMessageFormat.firstParty(_:))
    {
      v78 = enum case for WalletPassSharingGeneralMessageFormat.appleHomeKey(_:);
      v79 = v68;

      if (v79 == v78)
      {
        v80 = v110;
        v72 = v101;
        WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v110);
        v81 = (*(v98 + 88))(v80, v99);
        if (v81 != enum case for WalletPassSharingGeneralMessageType.unknown(_:))
        {
          if (v81 != enum case for WalletPassSharingGeneralMessageType.invitation(_:))
          {
            if (v81 != enum case for WalletPassSharingGeneralMessageType.signingRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.signingResponse(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.ownerCancel(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.friendCancel(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.pinEntryRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.pinEntryResponse(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.invitationRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.externalInvitationRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.url(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.discoveryRequest(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.discoveryResponse(_:) && v81 != enum case for WalletPassSharingGeneralMessageType.proximitySetupAssistant(_:))
            {
              (*(v98 + 8))(v80, v99);
            }

            goto LABEL_93;
          }

          sub_10006C628(v72);

          v74 = v120;
          goto LABEL_62;
        }

LABEL_93:
        v121[0] = 0;
        v121[1] = 0xE000000000000000;
        sub_1000A0850(59);
        v122._countAndFlagsBits = 0xD000000000000030;
        v122._object = 0x80000001000A3350;
        sub_1000A05E0(v122);
        sub_1000A08A0();
        v123._countAndFlagsBits = 0x203A6570797420;
        v123._object = 0xE700000000000000;
        sub_1000A05E0(v123);
        v82 = v112;
        WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v112);
        v83 = v99;
        sub_1000A08A0();
        (*(v98 + 8))(v82, v83);
        sub_1000A0530();
        sub_10006C684(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000A0520();
        swift_willThrow();

        sub_1000057B0(v120, v31);
        sub_10006C628(v72);
        return;
      }

      (*(v66 + 8))(v115, v116);
LABEL_92:
      v72 = v101;
      goto LABEL_93;
    }

    v76 = v111;
    WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter(v111);
    v77 = (*(v98 + 88))(v76, v99);
    if (v77 == enum case for WalletPassSharingGeneralMessageType.unknown(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.invitation(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.signingRequest(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.signingResponse(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.ownerCancel(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.friendCancel(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.pinEntryRequest(_:) || v77 == enum case for WalletPassSharingGeneralMessageType.pinEntryResponse(_:))
    {

      goto LABEL_92;
    }

    if (v77 == enum case for WalletPassSharingGeneralMessageType.invitationRequest(_:))
    {
LABEL_109:
      v69 = v101;
      goto LABEL_57;
    }

    if (v77 == enum case for WalletPassSharingGeneralMessageType.externalInvitationRequest(_:))
    {
      sub_1000A0500();
      sub_10006C684(&qword_1000D9E78, &type metadata accessor for WalletPassSharingExternalInvitationRequestMessage, &protocol conformance descriptor for WalletPassSharingExternalInvitationRequestMessage);
      v84 = v109;
      sub_1000A0370();

      if ((*(v107 + 48))(v84, 1, v108) == 1)
      {
        sub_1000057C4(v109, &qword_1000D9E58, &qword_1000B0148);
        goto LABEL_92;
      }

      sub_10006C628(v101);

      sub_1000057B0(v120, v31);
      v86 = v108;
      v87 = *(v107 + 32);
      v88 = v103;
      v87(v103, v109, v108);
      v89 = v100;
      v87(v100, v88, v86);
      v90 = &enum case for IDSClientProtobufMessageType.walletPassSharingExternalInvitationRequestMessage(_:);
    }

    else
    {
      if (v77 != enum case for WalletPassSharingGeneralMessageType.url(_:))
      {
        if (v77 != enum case for WalletPassSharingGeneralMessageType.discoveryRequest(_:) && v77 != enum case for WalletPassSharingGeneralMessageType.discoveryResponse(_:) && v77 != enum case for WalletPassSharingGeneralMessageType.proximitySetupAssistant(_:))
        {

          (*(v98 + 8))(v111, v99);
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      sub_1000A0000();
      sub_10006C684(&qword_1000D9E70, &type metadata accessor for WalletPassSharingUrlMessage, &protocol conformance descriptor for WalletPassSharingUrlMessage);
      v85 = v106;
      sub_1000A0370();

      if ((*(v104 + 48))(v85, 1, v105) == 1)
      {
        sub_1000057C4(v106, &qword_1000D9E48, &qword_1000B0138);
        goto LABEL_92;
      }

      sub_10006C628(v101);

      sub_1000057B0(v120, v31);
      v91 = v105;
      v92 = *(v104 + 32);
      v93 = v102;
      v92(v102, v106, v105);
      v89 = v100;
      v92(v100, v93, v91);
      v90 = &enum case for IDSClientProtobufMessageType.walletPassSharingUrlMessage(_:);
    }

    v94 = *v90;
    v95 = sub_1000A00F0();
    v96 = *(v95 - 8);
    (*(v96 + 104))(v89, v94, v95);
    (*(v96 + 56))(v89, 0, 1, v95);
  }
}

uint64_t sub_10006C530(__int16 a1)
{
  if ((a1 - 10) >= 7u)
  {
    return 7;
  }

  else
  {
    return (a1 - 10);
  }
}

uint64_t sub_10006C548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C628(uint64_t a1)
{
  v2 = type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006C684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10006C6E0()
{
  result = qword_1000D9E80;
  if (!qword_1000D9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E80);
  }

  return result;
}

uint64_t sub_10006C734@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v36 = a3;
  v3 = sub_10009F990();
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_10009F2A0();
  v38 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_10006CBC0();
  v19 = v41;
  sub_10009F250();
  if (v19)
  {
  }

  v35 = v15;
  v39 = v18;
  v21 = v8;
  v41 = v6;
  v34 = v3;
  *&v40[4] = *&v40[15];
  *&v40[6] = *&v40[17];
  *&v40[8] = *&v40[19];
  *v40 = *&v40[11];
  *&v40[2] = *&v40[13];
  sub_10009F290();
  v22 = v38;
  if ((*(v38 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v17;
    (*(v22 + 32))(v17, v11, v12);
    v24 = sub_10009F2B0();
    v26 = v37;
    if (v25 >> 60 != 15)
    {
      v31 = v24;
      v32 = v25;
      sub_10009F880();
      v27 = v34;
      v28 = 0;
      (*(v26 + 16))(v41, v21, v34);
      (*(v22 + 16))(v35, v23, v12);
      v33 = v12;
      v30 = v23;
      v29 = v21;

      sub_10009F890();
      sub_1000057B0(v31, v32);

      sub_10003DE90(v40);
      (*(v26 + 8))(v29, v27);
      return (*(v38 + 8))(v30, v33);
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_10006CBC0()
{
  result = qword_1000D9E88;
  if (!qword_1000D9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E88);
  }

  return result;
}

uint64_t sub_10006CC14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001000A1310;
  if (v2 == 1)
  {
    v5 = 0x80000001000A1310;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v5 = 0xEA00000000004449;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x444965636E6566;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444965636E6566;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10006CD18()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10006CDC4(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10006CE5C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10006CF04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006D348(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10006CF34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001000A1310;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444965636E6566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10006CF9C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x64726F6365526B63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636E6566;
  }
}

unint64_t sub_10006D000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006D348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006D028(uint64_t a1)
{
  v2 = sub_10006D298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006D064(uint64_t a1)
{
  v2 = sub_10006D298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFDeleteFenceSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9E90, &qword_1000B0220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_10006D298();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000A0B30();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1000421FC(&v13, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10006D298()
{
  result = qword_1000D9E98;
  if (!qword_1000D9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E98);
  }

  return result;
}

double FMFDeleteFenceSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10006D394(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_10006D348(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD720;
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

uint64_t sub_10006D394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9EB8, &unk_1000B0470);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10006D298();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1000A09D0();
  v11 = v10;
  v21 = a2;
  v22 = v9;
  LOBYTE(v23) = 1;
  v12 = sub_1000A09D0();
  v14 = v13;
  v20 = v12;
  v25 = 2;
  sub_100005424();
  sub_1000A0A20();
  (*(v6 + 8))(v8, v5);
  v15 = v23;
  v16 = v24;

  sub_1000054CC(v15, v16);
  sub_100002308(a1);

  result = sub_100005568(v15, v16);
  v18 = v21;
  *v21 = v22;
  v18[1] = v11;
  v18[2] = v20;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  return result;
}

unint64_t sub_10006D64C()
{
  result = qword_1000D9EA0;
  if (!qword_1000D9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EA0);
  }

  return result;
}

unint64_t sub_10006D6A4()
{
  result = qword_1000D9EA8;
  if (!qword_1000D9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EA8);
  }

  return result;
}

unint64_t sub_10006D6FC()
{
  result = qword_1000D9EB0;
  if (!qword_1000D9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EB0);
  }

  return result;
}

uint64_t sub_10006D760@<X0>(uint64_t a3@<X8>)
{
  v19 = a3;
  v4 = sub_10009F9D0();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009FD20();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10006DA74();
  sub_10009F250();
  if (v3)
  {
  }

  v16 = v6;
  v17 = v4;
  v11 = v22;
  v12 = v20;
  v13 = v21;
  sub_1000054CC(v20, v21);
  sub_10009FD10();
  v14 = v16;
  (*(v11 + 16))(v16, v9, v7);
  (*(v18 + 104))(v14, enum case for IDSClientMessageType.nearbySessionMessage(_:), v17);
  sub_10009FC10();

  sub_100005568(v12, v13);
  return (*(v11 + 8))(v9, v7);
}

unint64_t sub_10006D9F8(uint64_t a1)
{
  result = sub_10006DA20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006DA20()
{
  result = qword_1000D9EC0;
  if (!qword_1000D9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EC0);
  }

  return result;
}

unint64_t sub_10006DA74()
{
  result = qword_1000D9EC8;
  if (!qword_1000D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9EC8);
  }

  return result;
}

uint64_t sub_10006DB20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a2;
  v187 = a1;
  v180 = a3;
  v178 = sub_10009F9D0();
  v173 = *(v178 - 8);
  __chkstk_darwin(v178);
  v172 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_10009F670();
  v174 = *(v179 - 8);
  __chkstk_darwin(v179);
  v181 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D9ED8, &qword_1000B0558);
  v6 = __chkstk_darwin(v5 - 8);
  v177 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v182 = &v159 - v9;
  __chkstk_darwin(v8);
  v183 = &v159 - v10;
  v11 = sub_1000017BC(&qword_1000D9EE0, &qword_1000B0560);
  v12 = __chkstk_darwin(v11 - 8);
  v176 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v175 = &v159 - v15;
  __chkstk_darwin(v14);
  v184 = &v159 - v16;
  v17 = sub_10009F320();
  v185 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000017BC(&qword_1000D9EE8, &unk_1000B0568);
  __chkstk_darwin(v20 - 8);
  v22 = &v159 - v21;
  v23 = sub_10009F650();
  v186 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v159 - v28;
  __chkstk_darwin(v27);
  v31 = &v159 - v30;
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  v32 = v189;
  sub_10009F250();
  if (v32)
  {
  }

  v189 = v19;
  v171 = v29;
  v170 = v26;
  v187 = v31;
  v188 = v23;

  v34 = v194;
  v35 = sub_10009FD00();
  if (!*(v34 + 16))
  {

    goto LABEL_10;
  }

  v169 = 0;
  v37 = sub_10000217C(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_10:

    sub_1000A0530();
    sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    return swift_willThrow();
  }

  v40 = (*(v34 + 56) + 16 * v37);
  v42 = *v40;
  v41 = v40[1];
  sub_1000054CC(*v40, v41);

  v43 = v41 >> 62;
  if ((v41 >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_18;
    }

    v46 = *(v42 + 16);
    v45 = *(v42 + 24);
    v47 = __OFSUB__(v45, v46);
    v48 = v45 - v46;
    if (!v47)
    {
      v44 = v17;
      if (v48 > 3)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v44 = v17;
  if (v43)
  {
    if (!__OFSUB__(HIDWORD(v42), v42))
    {
      if (HIDWORD(v42) - v42 > 3)
      {
        goto LABEL_14;
      }

LABEL_18:
      sub_1000A0530();
      sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      goto LABEL_19;
    }

    goto LABEL_172;
  }

  if (BYTE6(v41) <= 3uLL)
  {
    goto LABEL_18;
  }

LABEL_14:
  sub_10009F2E0();
  sub_10009F640();
  v49 = v186;
  v50 = v188;
  if ((*(v186 + 48))(v22, 1, v188) == 1)
  {
    sub_1000057C4(v22, &qword_1000D9EE8, &unk_1000B0568);
    sub_1000A0530();
    sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_19:
    sub_1000A0520();
    swift_willThrow();
    return sub_100005568(v42, v41);
  }

  (*(v49 + 32))(v187, v22, v50);
  v51 = sub_10006FBF4(1, 3, v42, v41);
  v53 = v52;
  sub_1000054CC(v51, v52);
  sub_10009F330();
  sub_10006FCF4(&qword_1000D9EF0, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  sub_1000A07C0();
  if ((v194 & 0x100) != 0)
  {
    v54 = 0;
    v55 = v189;
  }

  else
  {
    v54 = 0;
    v55 = v189;
    do
    {
      v54 = v194 | (v54 << 8);
      sub_1000A07C0();
    }

    while (BYTE1(v194) != 1);
  }

  sub_100005568(v51, v53);
  result = (*(v185 + 8))(v55, v44);
  if (v43 <= 1)
  {
    if (v43)
    {
      v56 = v42 >> 32;
    }

    else
    {
      v56 = BYTE6(v41);
    }

    if (v43)
    {
      v57 = v42;
    }

    else
    {
      v57 = 0;
    }

    goto LABEL_33;
  }

  if (v43 == 2)
  {
    v57 = *(v42 + 16);
    v56 = *(v42 + 24);
LABEL_33:
    if (v56 < 4 || v56 < v57)
    {
      goto LABEL_178;
    }

    v58 = sub_10009F2D0();
    v60 = v58;
    v61 = v59;
    v62 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v62 != 2)
      {
        if (!v54)
        {
          goto LABEL_45;
        }

        goto LABEL_49;
      }

      v65 = *(v58 + 16);
      v64 = *(v58 + 24);
      v47 = __OFSUB__(v64, v65);
      v63 = v64 - v65;
      if (!v47)
      {
LABEL_44:
        if (v63 == v54)
        {
LABEL_45:
          v66 = [objc_allocWithZone(OPackCoder) init];
          v191 = 0;
          v196 = &type metadata for Data;
          v197 = &protocol witness table for Data;
          v194 = v60;
          v195 = v61;
          v67 = sub_1000022C4(&v194, &type metadata for Data);
          v68 = *v67;
          v69 = v67[1];
          v70 = v69 >> 62;
          if ((v69 >> 62) > 1)
          {
            if (v70 != 2)
            {
              memset(v190, 0, 14);
              sub_1000054CC(v60, v61);
              v71 = v190;
              goto LABEL_75;
            }

            v189 = v66;
            v72 = v60;
            v73 = *(v68 + 16);
            v74 = *(v68 + 24);
            v185 = v72;
            sub_1000054CC(v72, v61);
            v75 = sub_10009F210();
            if (v75)
            {
              result = sub_10009F230();
              if (__OFSUB__(v73, result))
              {
                __break(1u);
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              v75 += v73 - result;
            }

            v47 = __OFSUB__(v74, v73);
            v76 = v74 - v73;
            if (!v47)
            {
              v77 = sub_10009F220();
              if (v77 >= v76)
              {
                v78 = v76;
              }

              else
              {
                v78 = v77;
              }

              v79 = &v75[v78];
              if (v75)
              {
                v80 = v79;
              }

              else
              {
                v80 = 0;
              }

              v81 = v169;
              sub_10006FD3C(v75, v80, &v192);
              v82 = v81;
              v60 = v185;
              goto LABEL_73;
            }

LABEL_175:
            __break(1u);
          }

          if (!v70)
          {
            v190[0] = *v67;
            LOWORD(v190[1]) = v69;
            BYTE2(v190[1]) = BYTE2(v69);
            BYTE3(v190[1]) = BYTE3(v69);
            BYTE4(v190[1]) = BYTE4(v69);
            BYTE5(v190[1]) = BYTE5(v69);
            sub_1000054CC(v60, v61);
            v71 = v190 + BYTE6(v69);
LABEL_75:
            v93 = v169;
            sub_10006FD3C(v190, v71, &v192);
            v82 = v93;
            goto LABEL_76;
          }

          v189 = v66;
          v83 = v60;
          v84 = v68;
          v85 = v68 >> 32;
          v86 = v85 - v84;
          if (v85 >= v84)
          {
            sub_1000054CC(v83, v61);
            v87 = sub_10009F210();
            if (!v87)
            {
LABEL_66:
              v60 = v83;
              v88 = sub_10009F220();
              if (v88 >= v86)
              {
                v89 = v86;
              }

              else
              {
                v89 = v88;
              }

              v90 = &v87[v89];
              if (v87)
              {
                v91 = v90;
              }

              else
              {
                v91 = 0;
              }

              v92 = v169;
              sub_10006FD3C(v87, v91, &v192);
              v82 = v92;
LABEL_73:
              v66 = v189;
LABEL_76:
              v94 = v192;
              sub_100002308(&v194);
              isa = sub_10009F300().super.isa;
              sub_100005568(v94, *(&v94 + 1));
              v96 = [v66 unpack:isa status:&v191];

              if (v96)
              {
                v97 = sub_1000A0550();

                v98 = v191;
                if (v98 == sub_10009F3B0())
                {
                  v169 = v82;
                  v185 = v60;
                  v166 = v61;
                  v167 = v42;
                  v168 = v41;
                  v99 = sub_10009F840();
                  v100 = *(*(v99 - 8) + 56);
                  v100(v184, 1, 1, v99);
                  v101 = sub_10009F820();
                  v102 = *(v101 - 8);
                  v103 = *(v102 + 56);
                  v163 = v101;
                  v162 = v103;
                  v161 = v102 + 56;
                  (v103)(v183, 1, 1);
                  v105 = v186;
                  v104 = v187;
                  v106 = v171;
                  v107 = v188;
                  v165 = *(v186 + 16);
                  v164 = v186 + 16;
                  v165(v171, v187, v188);
                  v108 = (*(v105 + 88))(v106, v107);
                  if (v108 != enum case for RapportMessage.RPFrameType.RPFrameTypeFamilyIdentityRequest(_:) && v108 != enum case for RapportMessage.RPFrameType.RPFrameTypeFamilyIdentityResponse(_:) && v108 != enum case for RapportMessage.RPFrameType.RPFrameTypeFamilyIdentityUpdate(_:))
                  {
                    if (v108 != enum case for RapportMessage.RPFrameType.RPFrameTypeFriendIdentityRequest(_:) && v108 != enum case for RapportMessage.RPFrameType.RPFrameTypeFriendIdentityResponse(_:) && v108 != enum case for RapportMessage.RPFrameType.RPFrameTypeFriendIdentityUpdate(_:))
                    {

                      sub_1000A0530();
                      v109 = v107;
                      sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                      swift_allocError();
                      sub_1000A0520();
                      swift_willThrow();

                      sub_100005568(v167, v168);
                      sub_100005568(v185, v166);
                      sub_1000057C4(v183, &qword_1000D9ED8, &qword_1000B0558);
                      sub_1000057C4(v184, &qword_1000D9EE0, &qword_1000B0560);
                      v110 = *(v186 + 8);
                      v110(v104, v109);
                      return (v110)(v171, v109);
                    }

                    *&v192 = 0x4B5249645FLL;
                    *(&v192 + 1) = 0xE500000000000000;

                    sub_1000A0820();
                    if (*(v97 + 16) && (v130 = sub_100002138(&v194), (v131 & 1) != 0))
                    {
                      sub_10006FDD0(*(v97 + 56) + 32 * v130, &v192);
                      sub_100002E74(&v194);

                      if (*(&v193 + 1))
                      {
                        v132 = swift_dynamicCast();
                        v133 = v194;
                        if (!v132)
                        {
                          v133 = 0;
                        }

                        v182 = v133;
                        v134 = 0xF000000000000000;
                        if (v132)
                        {
                          v134 = v195;
                        }

LABEL_140:
                        v171 = v134;
                        *&v192 = 0x6C65646F6DLL;
                        *(&v192 + 1) = 0xE500000000000000;

                        sub_1000A0820();
                        if (*(v97 + 16) && (v138 = sub_100002138(&v194), (v139 & 1) != 0))
                        {
                          sub_10006FDD0(*(v97 + 56) + 32 * v138, &v192);
                          sub_100002E74(&v194);

                          if (*(&v193 + 1))
                          {
                            v140 = swift_dynamicCast();
                            v141 = v194;
                            if (!v140)
                            {
                              v141 = 0;
                            }

                            v163 = v141;
LABEL_148:
                            *&v192 = 0x44497364695FLL;
                            *(&v192 + 1) = 0xE600000000000000;

                            sub_1000A0820();
                            v142 = *(v97 + 16);
                            v189 = v66;
                            v160 = v100;
                            if (v142 && (v143 = sub_100002138(&v194), (v144 & 1) != 0))
                            {
                              sub_10006FDD0(*(v97 + 56) + 32 * v143, &v192);
                              sub_100002E74(&v194);

                              if (*(&v193 + 1))
                              {
                                swift_dynamicCast();
LABEL_154:
                                *&v192 = 6710879;
                                *(&v192 + 1) = 0xE300000000000000;

                                sub_1000A0820();
                                if (*(v97 + 16) && (v145 = sub_100002138(&v194), (v146 & 1) != 0))
                                {
                                  sub_10006FDD0(*(v97 + 56) + 32 * v145, &v192);
                                  sub_100002E74(&v194);

                                  if (*(&v193 + 1))
                                  {
                                    v147 = swift_dynamicCast() ^ 1;
LABEL_160:
                                    *&v192 = 0x4B5064655FLL;
                                    *(&v192 + 1) = 0xE500000000000000;
                                    sub_1000A0820();
                                    if (*(v97 + 16) && (v148 = sub_100002138(&v194), (v149 & 1) != 0))
                                    {
                                      sub_10006FDD0(*(v97 + 56) + 32 * v148, &v192);
                                      sub_100002E74(&v194);

                                      if (*(&v193 + 1))
                                      {
                                        swift_dynamicCast();
LABEL_166:
                                        LOBYTE(v194) = v147;
                                        v150 = v175;
                                        v151 = v169;
                                        sub_10009F830();
                                        v128 = v151;
                                        if (v151)
                                        {
                                          v194 = 0;
                                          v195 = 0xE000000000000000;
                                          sub_1000A0850(38);
                                          v129 = "Failed to create RPFrameTypeFriend: ";
                                          goto LABEL_168;
                                        }

                                        v137 = v184;
                                        sub_1000057C4(v184, &qword_1000D9EE0, &qword_1000B0560);
                                        v160(v150, 0, 1, v99);
                                        sub_1000056E8(v150, v137, &qword_1000D9EE0, &qword_1000B0560);
                                        v136 = v186;
                                        v135 = v183;
LABEL_170:
                                        v152 = v187;
                                        v165(v170, v187, v188);
                                        sub_100005620(v137, v176, &qword_1000D9EE0, &qword_1000B0560);
                                        sub_100005620(v135, v177, &qword_1000D9ED8, &qword_1000B0558);
                                        v153 = v181;
                                        sub_10009F660();
                                        v154 = v179;
                                        v155 = v178;
                                        v169 = 0;
                                        v156 = v174;
                                        v157 = v153;
                                        v158 = v172;
                                        (*(v174 + 16))(v172, v157, v179);
                                        (*(v173 + 104))(v158, enum case for IDSClientMessageType.rapportMessage(_:), v155);
                                        sub_10009FC10();

                                        sub_100005568(v167, v168);
                                        sub_100005568(v185, v166);
                                        (*(v156 + 8))(v181, v154);
                                        sub_1000057C4(v135, &qword_1000D9ED8, &qword_1000B0558);
                                        sub_1000057C4(v137, &qword_1000D9EE0, &qword_1000B0560);
                                        return (*(v136 + 8))(v152, v188);
                                      }
                                    }

                                    else
                                    {

                                      sub_100002E74(&v194);
                                      v192 = 0u;
                                      v193 = 0u;
                                    }

                                    sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                                    goto LABEL_166;
                                  }
                                }

                                else
                                {

                                  sub_100002E74(&v194);
                                  v192 = 0u;
                                  v193 = 0u;
                                }

                                sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                                v147 = 1;
                                goto LABEL_160;
                              }
                            }

                            else
                            {

                              sub_100002E74(&v194);
                              v192 = 0u;
                              v193 = 0u;
                            }

                            sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                            goto LABEL_154;
                          }
                        }

                        else
                        {

                          sub_100002E74(&v194);
                          v192 = 0u;
                          v193 = 0u;
                        }

                        sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                        v163 = 0;
                        goto LABEL_148;
                      }
                    }

                    else
                    {

                      sub_100002E74(&v194);
                      v192 = 0u;
                      v193 = 0u;
                    }

                    sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                    v182 = 0;
                    v134 = 0xF000000000000000;
                    goto LABEL_140;
                  }

                  *&v192 = 6710879;
                  *(&v192 + 1) = 0xE300000000000000;

                  sub_1000A0820();
                  if (*(v97 + 16) && (v111 = sub_100002138(&v194), (v112 & 1) != 0))
                  {
                    sub_10006FDD0(*(v97 + 56) + 32 * v111, &v192);
                    sub_100002E74(&v194);

                    if (*(&v193 + 1))
                    {
                      v113 = swift_dynamicCast();
                      v114 = v194;
                      LODWORD(v175) = v113 ^ 1;
                      if (!v113)
                      {
                        v114 = 0;
                      }

                      v171 = v114;
LABEL_97:
                      *&v192 = 0x6C65646F6DLL;
                      *(&v192 + 1) = 0xE500000000000000;

                      sub_1000A0820();
                      if (*(v97 + 16) && (v115 = sub_100002138(&v194), (v116 & 1) != 0))
                      {
                        sub_10006FDD0(*(v97 + 56) + 32 * v115, &v192);
                        sub_100002E74(&v194);

                        if (*(&v193 + 1))
                        {
                          swift_dynamicCast();
LABEL_103:
                          *&v192 = 0x4B5064655FLL;
                          *(&v192 + 1) = 0xE500000000000000;

                          sub_1000A0820();
                          v117 = *(v97 + 16);
                          v189 = v66;
                          if (v117 && (v118 = sub_100002138(&v194), (v119 & 1) != 0))
                          {
                            sub_10006FDD0(*(v97 + 56) + 32 * v118, &v192);
                            sub_100002E74(&v194);

                            if (*(&v193 + 1))
                            {
                              swift_dynamicCast();
LABEL_109:
                              *&v192 = 0x44497364695FLL;
                              *(&v192 + 1) = 0xE600000000000000;

                              sub_1000A0820();
                              if (*(v97 + 16) && (v120 = sub_100002138(&v194), (v121 & 1) != 0))
                              {
                                sub_10006FDD0(*(v97 + 56) + 32 * v120, &v192);
                                sub_100002E74(&v194);

                                if (*(&v193 + 1))
                                {
                                  swift_dynamicCast();
LABEL_115:
                                  *&v192 = 0x4B5249645FLL;
                                  *(&v192 + 1) = 0xE500000000000000;

                                  sub_1000A0820();
                                  if (*(v97 + 16) && (v122 = sub_100002138(&v194), (v123 & 1) != 0))
                                  {
                                    sub_10006FDD0(*(v97 + 56) + 32 * v122, &v192);
                                    sub_100002E74(&v194);

                                    if (*(&v193 + 1))
                                    {
                                      swift_dynamicCast();
LABEL_121:
                                      *&v192 = 1701667182;
                                      *(&v192 + 1) = 0xE400000000000000;
                                      sub_1000A0820();
                                      if (*(v97 + 16) && (v124 = sub_100002138(&v194), (v125 & 1) != 0))
                                      {
                                        sub_10006FDD0(*(v97 + 56) + 32 * v124, &v192);
                                        sub_100002E74(&v194);

                                        if (*(&v193 + 1))
                                        {
                                          swift_dynamicCast();
LABEL_127:
                                          LOBYTE(v194) = v175;
                                          v126 = v182;
                                          v127 = v169;
                                          sub_10009F810();
                                          v128 = v127;
                                          if (v127)
                                          {
                                            v194 = 0;
                                            v195 = 0xE000000000000000;
                                            sub_1000A0850(38);
                                            v129 = "Failed to create RPFrameTypeFamily: ";
LABEL_168:
                                            v198._countAndFlagsBits = 0xD000000000000024;
                                            v198._object = ((v129 - 32) | 0x8000000000000000);
                                            sub_1000A05E0(v198);
                                            *&v192 = v128;
                                            sub_1000017BC(&qword_1000D9F00, &unk_1000B0580);
                                            sub_1000A08A0();
                                            sub_1000A0530();
                                            sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                                            swift_allocError();
                                            sub_1000A0520();
                                            swift_willThrow();

                                            sub_100005568(v167, v168);
                                            sub_100005568(v185, v166);
                                            sub_1000057C4(v183, &qword_1000D9ED8, &qword_1000B0558);
                                            sub_1000057C4(v184, &qword_1000D9EE0, &qword_1000B0560);
                                            return (*(v186 + 8))(v187, v188);
                                          }

                                          v135 = v183;
                                          sub_1000057C4(v183, &qword_1000D9ED8, &qword_1000B0558);
                                          v162(v126, 0, 1, v163);
                                          sub_1000056E8(v126, v135, &qword_1000D9ED8, &qword_1000B0558);
                                          v136 = v186;
                                          v137 = v184;
                                          goto LABEL_170;
                                        }
                                      }

                                      else
                                      {

                                        sub_100002E74(&v194);
                                        v192 = 0u;
                                        v193 = 0u;
                                      }

                                      sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                                      goto LABEL_127;
                                    }
                                  }

                                  else
                                  {

                                    sub_100002E74(&v194);
                                    v192 = 0u;
                                    v193 = 0u;
                                  }

                                  sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                                  goto LABEL_121;
                                }
                              }

                              else
                              {

                                sub_100002E74(&v194);
                                v192 = 0u;
                                v193 = 0u;
                              }

                              sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                              goto LABEL_115;
                            }
                          }

                          else
                          {

                            sub_100002E74(&v194);
                            v192 = 0u;
                            v193 = 0u;
                          }

                          sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                          goto LABEL_109;
                        }
                      }

                      else
                      {

                        sub_100002E74(&v194);
                        v192 = 0u;
                        v193 = 0u;
                      }

                      sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                      goto LABEL_103;
                    }
                  }

                  else
                  {

                    sub_100002E74(&v194);
                    v192 = 0u;
                    v193 = 0u;
                  }

                  sub_1000057C4(&v192, &qword_1000D9EF8, &qword_1000B0578);
                  v171 = 0;
                  LODWORD(v175) = 1;
                  goto LABEL_97;
                }
              }

              sub_1000A0530();
              sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
              swift_allocError();
              sub_1000A0520();
              swift_willThrow();

LABEL_87:
              sub_100005568(v42, v41);
              sub_100005568(v60, v61);
              return (*(v186 + 8))(v187, v188);
            }

            result = sub_10009F230();
            if (!__OFSUB__(v84, result))
            {
              v87 += v84 - result;
              goto LABEL_66;
            }

            goto LABEL_177;
          }

LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

LABEL_49:
        sub_1000A0530();
        sub_10006FCF4(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000A0520();
        swift_willThrow();
        goto LABEL_87;
      }

      __break(1u);
    }

    else if (!v62)
    {
      v63 = BYTE6(v59);
      goto LABEL_44;
    }

    LODWORD(v63) = HIDWORD(v58) - v58;
    if (!__OFSUB__(HIDWORD(v58), v58))
    {
      v63 = v63;
      goto LABEL_44;
    }

LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

LABEL_178:
  __break(1u);
  return result;
}

uint64_t sub_10006FBF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_10009F2D0();
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_10006FC78(uint64_t a1)
{
  result = sub_10006FCA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006FCA0()
{
  result = qword_1000D9ED0;
  if (!qword_1000D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9ED0);
  }

  return result;
}

uint64_t sub_10006FCF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_10006FD3C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10006FE2C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10006FEE4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10006FF60(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10006FDD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10006FE2C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10006FEE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_10009F240();
  swift_allocObject();
  result = sub_10009F200();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10009F2C0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10006FF60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_10009F240();
  swift_allocObject();
  result = sub_10009F200();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10006FFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a1;
  v57 = a2;
  v55 = a4;
  v5 = sub_10009FAC0();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009F760();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009F790();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10009F800();
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10009F9D0();
  v52 = *(v16 - 8);
  v53 = v16;
  __chkstk_darwin(v16);
  v54 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10009FA90();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v44 - v21;
  if (a3 > 234)
  {
    switch(a3)
    {
      case 235:
        v31 = v61;
        result = sub_10007FC60(v56, v57);
        if (!v31)
        {
          v32 = v47;
          v33 = v54;
          (*(v47 + 16))(v54, v13, v11);
          (*(v52 + 104))(v33, enum case for IDSClientMessageType.sessionCancel(_:), v53);
          sub_10009FC10();
          return (*(v32 + 8))(v13, v11);
        }

        break;
      case 237:
LABEL_11:
        sub_10009F270();
        swift_allocObject();
        sub_10009F260();
        sub_100038CC8();
        v28 = v61;
        sub_10009F250();
        if (v28)
        {
        }

        v61 = v58;
        v38 = v59;
        v39 = v60;

        sub_100005750(v38, v39);
        v40 = v51;
        sub_10009F7F0();

        sub_1000057B0(v38, v39);
        v42 = v45;
        v41 = v46;
        v43 = v54;
        (*(v45 + 16))(v54, v40, v46);
        (*(v52 + 104))(v43, enum case for IDSClientMessageType.sessionDecline(_:), v53);
        sub_10009FC10();
        return (*(v42 + 8))(v40, v41);
      case 238:
        v23 = v61;
        result = sub_10007276C(v56, v57);
        if (!v23)
        {
          v26 = v49;
          v25 = v50;
          v27 = v54;
          (*(v49 + 16))(v54, v7, v50);
          (*(v52 + 104))(v27, enum case for IDSClientMessageType.sessionReinitiate(_:), v53);
          sub_10009FC10();
          return (*(v26 + 8))(v7, v25);
        }

        break;
      default:
LABEL_17:
        sub_1000021F4();
        swift_allocError();
        *v34 = a3;
        *(v34 + 8) = 0;
        *(v34 + 16) = 0;
        return swift_willThrow();
    }
  }

  else
  {
    switch(a3)
    {
      case 232:
        v29 = v61;
        result = sub_100043F6C(&v44 - v21);
        if (!v29)
        {
          v30 = v54;
          (*(v19 + 16))(v54, v22, v18);
          (*(v52 + 104))(v30, enum case for IDSClientMessageType.sessionInvitation(_:), v53);
          sub_10009FC10();
          return (*(v19 + 8))(v22, v18);
        }

        break;
      case 233:
        v35 = v61;
        result = sub_1000622B8(v56, v57);
        if (!v35)
        {
          v36 = v48;
          v37 = v54;
          (*(v48 + 16))(v54, v10, v8);
          (*(v52 + 104))(v37, enum case for IDSClientMessageType.sessionAccept(_:), v53);
          sub_10009FC10();
          return (*(v36 + 8))(v10, v8);
        }

        break;
      case 234:
        goto LABEL_11;
      default:
        goto LABEL_17;
    }
  }

  return result;
}

unint64_t sub_10007071C(uint64_t a1)
{
  result = sub_100070744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100070744()
{
  result = qword_1000D9F08;
  if (!qword_1000D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F08);
  }

  return result;
}

uint64_t sub_1000707A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v48 = a2;
  v46 = a4;
  v5 = sub_10009FAC0();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009F760();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009F790();
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009F9D0();
  v43 = *(v15 - 8);
  v44 = v15;
  __chkstk_darwin(v15);
  v45 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10009F800();
  v18 = __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 233)
  {
    if (a3 == 227)
    {
      return sub_1000710E8(v47, v48, v46);
    }

    if (a3 == 232)
    {
      return sub_100070E00(v47, v48);
    }

    if (a3 != 233)
    {
      goto LABEL_19;
    }

    v26 = v53;
    result = sub_1000622B8(v47, v48);
    if (!v26)
    {
      v27 = v9;
      v28 = *(v9 + 16);
      v29 = v45;
      v28(v45, v11, v8);
      (*(v43 + 104))(v29, enum case for IDSClientMessageType.sessionAccept(_:), v44);
      sub_10009FC10();
      return (*(v27 + 8))(v11, v8);
    }
  }

  else
  {
    if (a3 <= 236)
    {
      if (a3 != 234)
      {
        if (a3 == 235)
        {
          v22 = v53;
          result = sub_10007FC60(v47, v48);
          if (!v22)
          {
            v24 = v41;
            v25 = v45;
            (*(v41 + 16))(v45, v14, v12);
            (*(v43 + 104))(v25, enum case for IDSClientMessageType.sessionCancel(_:), v44);
            sub_10009FC10();
            return (*(v24 + 8))(v14, v12);
          }

          return result;
        }

LABEL_19:
        sub_1000021F4();
        swift_allocError();
        *v35 = a3;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_16;
    }

    if (a3 == 237)
    {
LABEL_16:
      v33 = v19;
      v42 = v18;
      sub_10009F270();
      swift_allocObject();
      sub_10009F260();
      sub_100038CC8();
      v34 = v53;
      sub_10009F250();
      if (v34)
      {
      }

      v53 = v49;
      v48 = v50;
      v36 = v51;
      v37 = v52;

      sub_100005750(v36, v37);
      sub_10009F7F0();

      sub_1000057B0(v36, v37);
      v38 = v45;
      v39 = v42;
      (*(v33 + 16))(v45, v21, v42);
      (*(v43 + 104))(v38, enum case for IDSClientMessageType.sessionDecline(_:), v44);
      sub_10009FC10();
      return (*(v33 + 8))(v21, v39);
    }

    if (a3 != 238)
    {
      goto LABEL_19;
    }

    v30 = v53;
    result = sub_10007276C(v47, v48);
    if (!v30)
    {
      v31 = v42;
      v32 = v45;
      (*(v42 + 16))(v45, v7, v5);
      (*(v43 + 104))(v32, enum case for IDSClientMessageType.sessionReinitiate(_:), v44);
      sub_10009FC10();
      return (*(v31 + 8))(v7, v5);
    }
  }

  return result;
}

uint64_t sub_100070E00(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_10009F9D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009FA90();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009F3A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A0430();
  v12 = sub_10009F390();
  v13 = sub_1000A0760();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v3;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "SSMessageUnpacker: unpacking an invitation message", v14, 2u);
    v3 = v20;
  }

  (*(v9 + 8))(v11, v8);
  v15 = v26;
  result = sub_100043F6C(v7);
  if (!v15)
  {
    v18 = v21;
    v17 = v22;
    v19 = v23;
    (*(v21 + 16))(v23, v7, v22);
    (*(v3 + 104))(v19, enum case for IDSClientMessageType.sessionInvitation(_:), v2);
    sub_10009FC10();
    return (*(v18 + 8))(v7, v17);
  }

  return result;
}

uint64_t sub_1000710E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a1;
  v114 = a2;
  v107 = a3;
  v3 = sub_10009F7C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v111 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F9D0();
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = __chkstk_darwin(v6);
  v110 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = &v82 - v9;
  v10 = sub_10009FF70();
  v95 = *(v10 - 8);
  v96 = v10;
  __chkstk_darwin(v10);
  v99 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10009F5D0();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000017BC(&qword_1000D83B0, &qword_1000A5D58);
  v14 = __chkstk_darwin(v13 - 8);
  v98 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v100 = &v82 - v17;
  v18 = __chkstk_darwin(v16);
  v103 = &v82 - v19;
  __chkstk_darwin(v18);
  v109 = &v82 - v20;
  v21 = sub_1000017BC(&qword_1000D83B8, &unk_1000B0670);
  v22 = __chkstk_darwin(v21 - 8);
  v97 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v102 = &v82 - v25;
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v28 = sub_10009F3A0();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v112 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v93 = &v82 - v33;
  __chkstk_darwin(v32);
  v35 = &v82 - v34;
  sub_1000A0430();
  v36 = sub_10009F390();
  v37 = sub_1000A0760();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v92 = v4;
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "SSMessageUnpacker: Unpacking a status message", v38, 2u);
    v4 = v92;
  }

  v41 = *(v29 + 8);
  v39 = v29 + 8;
  v40 = v41;
  v41(v35, v28);
  sub_10009F270();
  swift_allocObject();
  v42 = sub_10009F260();
  sub_100046A58();
  v43 = v145;
  sub_10009F250();
  if (v43)
  {
  }

  v114 = v28;
  v145 = v42;
  *v127 = v141;
  *&v127[16] = v142;
  v128 = v143;
  v123 = v137;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v119 = v133;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v116 = v130;
  v129 = v144;
  v117 = v131;
  v118 = v132;
  if (*(&v134 + 1))
  {
    v45 = *&v127[16];
    if (*&v127[16])
    {
      v46 = *&v127[8];
      if (*&v127[8] == __PAIR128__(0xE500000000000000, 0x6572616873) || (sub_1000A0BD0() & 1) != 0)
      {
        v86 = v46;
        v87 = v45;
        v85 = v39;
        v47 = sub_10009F860();
        v48 = *(v47 - 8);
        v49 = *(v48 + 56);
        v50 = v48 + 56;
        v91 = v27;
        v49(v27, 1, 1, v47);
        v51 = *(&v119 + 1);
        if (*(&v119 + 1) >> 60 != 15)
        {
          v90 = v50;
          v92 = v49;
          v112 = *(&v116 + 1);
          v113 = v116;
          v52 = v117;
          v110 = *(&v118 + 1);
          v53 = v118;
          v111 = v118;
          v54 = v119;
          sub_100005750(v116, *(&v116 + 1));
          sub_100005750(v52, *(&v52 + 1));
          sub_100005750(v53, v110);
          sub_1000054CC(v54, v51);
          sub_10009F850();
          v59 = v91;
          sub_1000057C4(v91, &qword_1000D83B8, &unk_1000B0670);
          v60 = v102;
          v92(v102, 0, 1, v47);
          sub_1000056E8(v60, v59, &qword_1000D83B8, &unk_1000B0670);
        }

        v83 = *(v108 + 56);
        v84 = v108 + 56;
        v83(v109, 1, 1, v104);
        v112 = v121;
        v113 = v120;
        v88 = *(&v122 + 1);
        v110 = v123;
        v111 = v122;
        v102 = v124;
        v92 = v125;
        v90 = v126;
        v89 = v127[0];
        sub_100005620(&v120, &v115, &qword_1000D9C48, &qword_1000AED58);

        v61 = v103;
        sub_10009F5C0();
        sub_1000057C4(&v120, &qword_1000D9C48, &qword_1000AED58);
        v62 = v109;
        sub_1000057C4(v109, &qword_1000D83B0, &qword_1000A5D58);
        v63 = v104;
        v83(v61, 0, 1, v104);
        sub_1000056E8(v61, v62, &qword_1000D83B0, &qword_1000A5D58);
        v64 = v100;
        sub_100005620(v62, v100, &qword_1000D83B0, &qword_1000A5D58);
        v65 = v108;
        v66 = (*(v108 + 48))(v64, 1, v63);
        v67 = v91;
        if (v66 == 1)
        {
          sub_1000057C4(v64, &qword_1000D83B0, &qword_1000A5D58);
        }

        else
        {
          (*(v65 + 32))(v101, v64, v63);
          if (sub_10009F5B0() == 0xD000000000000010 && 0x80000001000A2F50 == v68)
          {
          }

          else
          {
            v69 = sub_1000A0BD0();

            if ((v69 & 1) == 0)
            {
              if (sub_10009F5B0() == 0x65746164696C6156 && v70 == 0xEF6E656B6F545353)
              {

                v67 = v91;
              }

              else
              {
                v71 = sub_1000A0BD0();

                v67 = v91;
                if ((v71 & 1) == 0)
                {
                  sub_1000A0530();
                  sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                  swift_allocError();
                  sub_1000A0520();
                  swift_willThrow();

                  sub_1000456C8(&v116);
                  (*(v108 + 8))(v101, v63);
                  sub_1000057C4(v62, &qword_1000D83B0, &qword_1000A5D58);
                  v73 = v67;
                  return sub_1000057C4(v73, &qword_1000D83B8, &unk_1000B0670);
                }
              }
            }
          }

          (*(v108 + 8))(v101, v63);
        }

        sub_100005620(v67, v97, &qword_1000D83B8, &unk_1000B0670);
        sub_100005620(v62, v98, &qword_1000D83B0, &qword_1000A5D58);
        v113 = *&v127[24];

        v72 = v99;
        sub_10009FF60();
        v74 = v109;
        v75 = v93;
        sub_1000A0430();
        v76 = sub_10009F390();
        v77 = sub_1000A0760();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "SSMessageUnpacker: It's an invitation", v78, 2u);
        }

        v40(v75, v114);
        v80 = v94;
        v79 = v95;
        v81 = v96;
        (*(v95 + 16))(v94, v72, v96);
        (*(v105 + 104))(v80, enum case for IDSClientMessageType.screenSharingInvitation(_:), v106);
        sub_10009FC10();

        sub_1000456C8(&v116);
        (*(v79 + 8))(v72, v81);
        sub_1000057C4(v74, &qword_1000D83B0, &qword_1000A5D58);
        v73 = v91;
        return sub_1000057C4(v73, &qword_1000D83B8, &unk_1000B0670);
      }
    }
  }

  sub_1000A0430();
  v55 = sub_10009F390();
  v56 = sub_1000A0760();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "SSMessageUnpacker: It's restricted", v57, 2u);
  }

  v40(v112, v114);
  (*(v4 + 13))(v111, enum case for ClientMessageType.restricted(_:), v3);
  v58 = v110;
  sub_10009FA60();
  (*(v105 + 104))(v58, enum case for IDSClientMessageType.messageTypeRestricted(_:), v106);
  sub_10009FC10();

  return sub_1000456C8(&v116);
}

unint64_t sub_10007203C(uint64_t a1)
{
  result = sub_100072064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100072064()
{
  result = qword_1000D9F10;
  if (!qword_1000D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F10);
  }

  return result;
}

unint64_t sub_1000720CC()
{
  result = qword_1000D9F18;
  if (!qword_1000D9F18)
  {
    sub_10009FFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F18);
  }

  return result;
}

uint64_t sub_100072124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v35 - v10;
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v14 = sub_10009FF10();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(v13, 1, 1, v14);
  v18 = a1[14];
  v52 = v3;
  v51 = v8;
  if (v18 != 1)
  {
    v41 = v17;
    v42 = v16;
    v19 = a1[23];
    v46 = a1[21];
    v47 = v19;
    v20 = a1[19];
    v48 = a1[17];
    v49 = v20;
    v21 = a1[15];
    v44 = a1[13];
    v45 = v21;

    v22 = v52;
    sub_10009FF00();
    result = sub_100072694(v13);
    if (v22)
    {
      return result;
    }

    v52 = 0;
    v42(v11, 0, 1, v14);
    sub_1000726FC(v11, v13);
    v8 = v51;
  }

  v24 = *a1;
  v48 = a1[1];
  v49 = v24;
  LODWORD(v47) = *(a1 + 16);
  v26 = a1[3];
  v25 = a1[4];
  v46 = a1[5];
  LODWORD(v45) = *(a1 + 48);
  v28 = a1[7];
  v27 = a1[8];
  v43 = v13;
  v44 = v28;
  v35[0] = v27;
  v42 = a1[9];
  LODWORD(v41) = *(a1 + 80);
  v29 = a1[11];
  v39 = v25;
  v40 = v29;
  sub_100072624(v13, v8);
  v30 = a1[25];
  v31 = a1[26];
  v32 = a1[27];
  v33 = a1[29];
  v34 = a1[30];
  v37 = a1[31];
  v38 = v32;
  v36 = *(a1 + 256);
  v35[1] = a1[33];
  sub_100005750(v26, v25);

  sub_100005750(v30, v31);

  sub_100005750(v33, v34);

  sub_10009FFE0();
  return sub_100072694(v43);
}

uint64_t sub_10007248C@<X0>(uint64_t a3@<X8>)
{
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10007257C();
  sub_10009F250();

  if (!v3)
  {
    memcpy(__dst, v6, sizeof(__dst));
    sub_100072124(__dst, a3);
    return sub_1000725D0(__dst);
  }

  return result;
}

unint64_t sub_10007257C()
{
  result = qword_1000D9F20;
  if (!qword_1000D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F20);
  }

  return result;
}

uint64_t sub_100072624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072694(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000726FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F28, &qword_1000B06E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007276C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009FAA0();
  v12 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSSessionReinitiateSchema(0);
  __chkstk_darwin(v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_100072954();
  sub_10009F250();
  if (!v2)
  {
    v9 = *v8;
    v11[2] = *(v8 + 1);
    v11[3] = v9;
    v11[1] = *(v8 + 3);
    (*(v12 + 16))(v5, &v8[*(v6 + 28)], v3);

    sub_10009FAB0();
    sub_1000038F4(v8);
  }
}

unint64_t sub_100072954()
{
  result = qword_1000D9F30;
  if (!qword_1000D9F30)
  {
    type metadata accessor for IDSSessionReinitiateSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F30);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.type.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_1000A0360();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_1000017BC(&qword_1000D9F40, &qword_1000B06F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  sub_100072D50(v1, v11);
  v15 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v11, 1, v15) == 1)
  {
    sub_1000057C4(v11, &qword_1000D9F38, &qword_1000B06F0);
    (*(v3 + 56))(v14, 1, 1, v2);
    v17 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
    sub_100072D50(v1 + *(v17 + 20), v9);
    if (v16(v9, 1, v15) == 1)
    {
      sub_1000057C4(v9, &qword_1000D9F38, &qword_1000B06F0);
      (*(v3 + 104))(v20, enum case for WalletPassSharingGeneralMessageType.unknown(_:), v2);
    }

    else
    {
      (*(v3 + 16))(v5, v9, v2);
      sub_100073D68(v9, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
      (*(v3 + 32))(v20, v5, v2);
    }

    result = (*(v3 + 48))(v14, 1, v2);
    if (result != 1)
    {
      return sub_1000057C4(v14, &qword_1000D9F40, &qword_1000B06F8);
    }
  }

  else
  {
    (*(v3 + 16))(v14, v11, v2);
    sub_100073D68(v11, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
    (*(v3 + 56))(v14, 0, 1, v2);
    return (*(v3 + 32))(v20, v14, v2);
  }

  return result;
}

uint64_t sub_100072D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.sharingDataType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0360();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.sharingDataType.setter(uint64_t a1)
{
  v3 = sub_1000A0360();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100072EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44676E6972616873 && a2 == 0xEF65707954617461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000A0BD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100072F84(uint64_t a1)
{
  v2 = sub_100073174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072FC0(uint64_t a1)
{
  v2 = sub_100073174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D9F48, &qword_1000B0700);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_100073174();
  sub_1000A0CE0();
  sub_1000A0360();
  sub_100073464(&qword_1000D9F58, &type metadata accessor for WalletPassSharingGeneralMessageType, &protocol conformance descriptor for WalletPassSharingGeneralMessageType);
  sub_1000A0B80();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100073174()
{
  result = qword_1000D9F50;
  if (!qword_1000D9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F50);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000A0360();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D9F60, &qword_1000B0708);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_100073174();
  sub_1000A0CD0();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_100073464(&qword_1000D9F68, &type metadata accessor for WalletPassSharingGeneralMessageType, &protocol conformance descriptor for WalletPassSharingGeneralMessageType);
    sub_1000A0A20();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1000747C8(v11, v13, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
  }

  return sub_100002308(a1);
}

uint64_t sub_100073464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000734D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.genericData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0) + 20);

  return sub_100072D50(v3, a1);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.genericData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0) + 20);

  return sub_1000734D8(a1, v3);
}

uint64_t sub_100073630()
{
  if (*v0)
  {
    return 0x44636972656E6567;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_100073678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001000A3500 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44636972656E6567 && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100073764(uint64_t a1)
{
  v2 = sub_1000739A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000737A0(uint64_t a1)
{
  v2 = sub_1000739A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9F70, &qword_1000B0710);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_1000739A0();
  sub_1000A0CE0();
  v8[15] = 0;
  type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  sub_100073464(&qword_1000D9F80, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData, &protocol conformance descriptor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
  sub_1000A0AD0();
  if (!v1)
  {
    type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
    v8[14] = 1;
    sub_1000A0AD0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000739A0()
{
  result = qword_1000D9F78;
  if (!qword_1000D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F78);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v26 = &v22 - v7;
  v8 = sub_1000017BC(&qword_1000D9F88, &qword_1000B0718);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v18 = *(v13 + 28);
  v17(&v15[v18], 1, 1, v16);
  sub_1000022C4(a1, a1[3]);
  sub_1000739A0();
  v19 = v27;
  sub_1000A0CD0();
  if (!v19)
  {
    v27 = v18;
    v29 = 0;
    sub_100073464(&qword_1000D9F90, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData, &protocol conformance descriptor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData);
    v20 = v24;
    sub_1000A0970();
    sub_1000734D8(v26, v15);
    v28 = 1;
    sub_1000A0970();
    (*(v25 + 8))(v11, v20);
    sub_1000734D8(v6, &v15[v27]);
    sub_100074830(v15, v23, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  }

  sub_100002308(a1);
  return sub_100073D68(v15, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
}

uint64_t sub_100073D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100073E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WalletPassSharingGeneralMessageSchema.format.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletPassSharingGeneralMessageSchema(0) + 20);
  v4 = sub_1000A03E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WalletPassSharingGeneralMessageSchema.format.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalletPassSharingGeneralMessageSchema(0) + 20);
  v4 = sub_1000A03E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100073FF8()
{
  if (*v0)
  {
    return 0x74616D726F66;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_100074030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1000A0BD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();

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

uint64_t sub_100074108(uint64_t a1)
{
  v2 = sub_100074380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074144(uint64_t a1)
{
  v2 = sub_100074380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WalletPassSharingGeneralMessageSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9F98, &qword_1000B0720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_100074380();
  sub_1000A0CE0();
  v8[15] = 0;
  type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  sub_100073464(&qword_1000D9FA8, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent, &protocol conformance descriptor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  sub_1000A0B80();
  if (!v1)
  {
    type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
    v8[14] = 1;
    sub_1000A03E0();
    sub_100073464(&qword_1000D9FB0, &type metadata accessor for WalletPassSharingGeneralMessageFormat, &protocol conformance descriptor for WalletPassSharingGeneralMessageFormat);
    sub_1000A0B80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100074380()
{
  result = qword_1000D9FA0;
  if (!qword_1000D9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9FA0);
  }

  return result;
}

uint64_t WalletPassSharingGeneralMessageSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1000A03E0();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  __chkstk_darwin(v25);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000017BC(&qword_1000D9FB8, &qword_1000B0728);
  v23 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for WalletPassSharingGeneralMessageSchema(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_100074380();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v20 = a1;
  v12 = v11;
  v13 = v23;
  v14 = v24;
  v29 = 0;
  sub_100073464(&qword_1000D9FC0, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent, &protocol conformance descriptor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  v15 = v26;
  sub_1000A0A20();
  sub_1000747C8(v15, v12, type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent);
  v28 = 1;
  sub_100073464(&qword_1000D9FC8, &type metadata accessor for WalletPassSharingGeneralMessageFormat, &protocol conformance descriptor for WalletPassSharingGeneralMessageFormat);
  v16 = v5;
  v17 = v14;
  v18 = v27;
  sub_1000A0A20();
  (*(v13 + 8))(v8, v18);
  (*(v21 + 32))(v12 + *(v9 + 20), v16, v17);
  sub_100074830(v12, v22, type metadata accessor for WalletPassSharingGeneralMessageSchema);
  sub_100002308(v20);
  return sub_100073D68(v12, type metadata accessor for WalletPassSharingGeneralMessageSchema);
}

uint64_t sub_1000747C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100074830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000748DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000A03E0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000749E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000A03E0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100074ADC(uint64_t a1)
{
  result = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent(319);
  if (v2 <= 0x3F)
  {
    result = sub_1000A03E0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100074B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100074C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D9F38, &qword_1000B06F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100074C7C(uint64_t a1)
{
  sub_100074CE8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100074CE8(uint64_t a1)
{
  if (!qword_1000DA0C8)
  {
    type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(255);
    v1 = sub_1000A07A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DA0C8);
    }
  }
}

uint64_t sub_100074D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0360();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100074DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0360();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100074E44(uint64_t a1)
{
  result = sub_1000A0360();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100074EEC()
{
  result = qword_1000DA188;
  if (!qword_1000DA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA188);
  }

  return result;
}

unint64_t sub_100074F44()
{
  result = qword_1000DA190;
  if (!qword_1000DA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA190);
  }

  return result;
}

unint64_t sub_100074F9C()
{
  result = qword_1000DA198;
  if (!qword_1000DA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA198);
  }

  return result;
}

unint64_t sub_100074FF4()
{
  result = qword_1000DA1A0;
  if (!qword_1000DA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1A0);
  }

  return result;
}

unint64_t sub_10007504C()
{
  result = qword_1000DA1A8;
  if (!qword_1000DA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1A8);
  }

  return result;
}

unint64_t sub_1000750A4()
{
  result = qword_1000DA1B0;
  if (!qword_1000DA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1B0);
  }

  return result;
}

unint64_t sub_1000750FC()
{
  result = qword_1000DA1B8;
  if (!qword_1000DA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1B8);
  }

  return result;
}

unint64_t sub_100075154()
{
  result = qword_1000DA1C0;
  if (!qword_1000DA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1C0);
  }

  return result;
}

unint64_t sub_1000751AC()
{
  result = qword_1000DA1C8;
  if (!qword_1000DA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1C8);
  }

  return result;
}

uint64_t sub_10007526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v48 = a2;
  v45 = sub_1000A00E0();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10009F930();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSKCSharingInvitationSchema(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_10009F950();
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IDSSampleInvitationSchema(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  __chkstk_darwin(v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000760C0(v52, v21, type metadata accessor for IDSDictionaryContextClientSchema);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = v46;
      v30 = v49;
      result = sub_10009F920();
      if (v30)
      {
        return result;
      }

      v26 = v48;
      (*(v42 + 32))(v48, v29, v43);
      v27 = &enum case for IDSDictionaryContext.idsHealthInvitation(_:);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v33 = *(v21 + 13);
        v50[12] = *(v21 + 12);
        v50[13] = v33;
        v51 = v21[224];
        v34 = *(v21 + 9);
        v50[8] = *(v21 + 8);
        v50[9] = v34;
        v35 = *(v21 + 11);
        v50[10] = *(v21 + 10);
        v50[11] = v35;
        v36 = *(v21 + 5);
        v50[4] = *(v21 + 4);
        v50[5] = v36;
        v37 = *(v21 + 7);
        v50[6] = *(v21 + 6);
        v50[7] = v37;
        v38 = *(v21 + 1);
        v50[0] = *v21;
        v50[1] = v38;
        v39 = *(v21 + 2);
        v50[3] = *(v21 + 3);
        v50[2] = v39;
        sub_100005964(v50, v48);
        return sub_1000456C8(v50);
      }

      v24 = v47;
      v25 = v49;
      result = sub_1000A00D0();
      if (v25)
      {
        return result;
      }

      v26 = v48;
      (*(v44 + 32))(v48, v24, v45);
      v27 = &enum case for IDSDictionaryContext.idsActivitySharingInvitation(_:);
    }

LABEL_13:
    v31 = *v27;
    v32 = sub_10009F9E0();
    return (*(*(v32 - 8) + 104))(v26, v31, v32);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_100076128(v21, v18, type metadata accessor for IDSSampleInvitationSchema);
    sub_100005620(&v18[*(v16 + 20)], v12, &qword_1000D84A8, &unk_1000B0C40);

    v28 = v49;
    sub_10009F940();
    result = sub_100076190(v18, type metadata accessor for IDSSampleInvitationSchema);
    if (v28)
    {
      return result;
    }

    v26 = v48;
    (*(v41 + 32))(v48, v15, v13);
    v27 = &enum case for IDSDictionaryContext.idsSampleInvitation(_:);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100076128(v21, v9, type metadata accessor for IDSHomeKitInvitationSchema);
    sub_100076294(v9, v48);
    return sub_100076190(v9, type metadata accessor for IDSHomeKitInvitationSchema);
  }

  else
  {
    sub_100076128(v21, v6, type metadata accessor for IDSKCSharingInvitationSchema);
    sub_10003FBE4(v6, v48);
    return sub_100076190(v6, type metadata accessor for IDSKCSharingInvitationSchema);
  }
}

uint64_t sub_100075938@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a1;
  v46 = a3;
  v4 = sub_10009FE10();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F9E0();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v52 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  __chkstk_darwin(v8 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IDSDictionaryContextData(0);
  __chkstk_darwin(v11 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000017BC(&qword_1000DA1D8, &qword_1000B0C38);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v39 - v19;
  __chkstk_darwin(v18);
  v22 = v39 - v21;
  v23 = type metadata accessor for IDSInvitationSchema(0);
  __chkstk_darwin(v23);
  v25 = (v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009F270();
  swift_allocObject();
  v26 = sub_10009F260();
  sub_100075FA0(&qword_1000DA1E0, type metadata accessor for IDSInvitationSchema, &protocol conformance descriptor for IDSInvitationSchema);
  sub_10009F250();
  if (v3)
  {
  }

  v53 = v20;
  v54 = v26;
  v44 = v17;
  v28 = sub_10009FA50();
  v43 = *(v28 - 8);
  v29 = *(v43 + 56);
  v30 = v43 + 56;
  v29(v22, 1, 1, v28);
  v31 = type metadata accessor for IDSInvitationContextSchema(0);
  sub_1000760C0(v25 + *(v31 + 24), v13, type metadata accessor for IDSDictionaryContextData);
  sub_100076128(v13, v10, type metadata accessor for IDSDictionaryContextClientSchema);
  v45 = *v25;
  sub_10007526C(v10, v52);
  v39[1] = v30;
  v40 = v29;
  v41 = v10;
  v42 = v22;
  v32 = v50;
  v33 = v51;
  v34 = v47;
  (*(v50 + 16))(v47, v52, v51);
  (*(v48 + 104))(v34, enum case for IDSInvitationContextType.dictionary(_:), v49);

  v35 = v53;
  sub_10009FA40();
  (*(v32 + 8))(v52, v33);
  sub_100076190(v41, type metadata accessor for IDSDictionaryContextClientSchema);
  v36 = v42;
  sub_100075FE8(v42);
  v40(v35, 0, 1, v28);
  sub_100076050(v35, v36);
  v37 = v36;
  v38 = v44;
  sub_100005620(v37, v44, &qword_1000DA1D8, &qword_1000B0C38);
  result = (*(v43 + 48))(v38, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_10009F590();
    sub_100075FE8(v42);

    return sub_100076190(v25, type metadata accessor for IDSInvitationSchema);
  }

  return result;
}

uint64_t sub_100075FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100075FE8(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DA1D8, &qword_1000B0C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100076050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000DA1D8, &qword_1000B0C38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000760C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100076128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100076190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100076218(uint64_t a1)
{
  result = sub_100076240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100076240()
{
  result = qword_1000DA1E8;
  if (!qword_1000DA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1E8);
  }

  return result;
}

uint64_t sub_100076294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v113 = a2;
  v5 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v6 = __chkstk_darwin(v5 - 8);
  v121 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v120 = &v107 - v8;
  v112 = sub_10009FA30();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v115 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v11 = __chkstk_darwin(v10 - 8);
  v119 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v134 = &v107 - v14;
  __chkstk_darwin(v13);
  v133 = &v107 - v15;
  v143 = sub_1000A03D0();
  v136 = *(v143 - 8);
  v16 = __chkstk_darwin(v143);
  v142 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v107 - v19;
  __chkstk_darwin(v18);
  v128 = &v107 - v21;
  v22 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  v131 = *(v22 - 8);
  v132 = v22;
  __chkstk_darwin(v22);
  v135 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1000A03B0();
  v130 = *(v141 - 8);
  v24 = __chkstk_darwin(v141);
  v140 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v138 = &v107 - v27;
  __chkstk_darwin(v26);
  v127 = &v107 - v28;
  v29 = sub_1000017BC(&qword_1000DA1F0, &qword_1000B0CC0);
  v30 = __chkstk_darwin(v29 - 8);
  v118 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v114 = &v107 - v33;
  __chkstk_darwin(v32);
  v123 = &v107 - v34;
  v35 = sub_1000017BC(&qword_1000D8350, &qword_1000A5C48);
  v36 = __chkstk_darwin(v35 - 8);
  v117 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v107 - v39;
  __chkstk_darwin(v38);
  v137 = &v107 - v41;
  v42 = sub_1000017BC(&qword_1000DA1F8, &qword_1000B0CC8);
  v43 = __chkstk_darwin(v42 - 8);
  v116 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v47 = &v107 - v46;
  __chkstk_darwin(v45);
  v49 = &v107 - v48;
  v50 = sub_10009FA10();
  v51 = *(*(v50 - 8) + 56);
  v129 = v49;
  v51(v49, 1, 1, v50);
  v125 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  v126 = a1;
  if (*(a1 + v125[6] + 8))
  {

    sub_10009FA00();
    if (v2)
    {
      return sub_1000057C4(v129, &qword_1000DA1F8, &qword_1000B0CC8);
    }

    v52 = v129;
    sub_1000057C4(v129, &qword_1000DA1F8, &qword_1000B0CC8);
    v51(v47, 0, 1, v50);
    sub_1000056E8(v47, v52, &qword_1000DA1F8, &qword_1000B0CC8);
  }

  v53 = sub_10009F990();
  v54 = *(*(v53 - 8) + 56);
  v54(v137, 1, 1, v53);
  v55 = v126 + v125[16];
  v56 = *(v55 + 1);
  if (v56 >> 60 != 15)
  {
    v57 = *v55;
    sub_1000054CC(*v55, *(v55 + 1));
    sub_10009F9F0();
    if (v2)
    {
      sub_1000057B0(v57, v56);
LABEL_33:
      sub_1000057C4(v137, &qword_1000D8350, &qword_1000A5C48);
      return sub_1000057C4(v129, &qword_1000DA1F8, &qword_1000B0CC8);
    }

    v58 = v137;
    sub_1000057C4(v137, &qword_1000D8350, &qword_1000A5C48);
    sub_1000057B0(v57, v56);
    v54(v40, 0, 1, v53);
    sub_1000056E8(v40, v58, &qword_1000D8350, &qword_1000A5C48);
  }

  v59 = v138;
  v60 = sub_10009FF30();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v63 = v123;
  v110 = v61 + 56;
  result = v62(v123, 1, 1, v60);
  v65 = (v126 + v125[10]);
  v67 = *v65;
  v66 = v65[1];
  v139 = v20;
  if (v67)
  {
    if (v67 == 1)
    {
      goto LABEL_37;
    }

    v124 = v66;
    v108 = v62;
    v109 = v60;
    v122 = *(v67 + 16);
    if (v122)
    {
      v68 = 0;
      v69 = (v130 + 32);
      v70 = v67 + 72;
      v71 = &_swiftEmptyArrayStorage;
      while (v68 < *(v67 + 16))
      {
        sub_1000A03A0();
        if (v2)
        {
          sub_1000057C4(v123, &qword_1000DA1F0, &qword_1000B0CC0);
          sub_1000057C4(v137, &qword_1000D8350, &qword_1000A5C48);
          sub_1000057C4(v129, &qword_1000DA1F8, &qword_1000B0CC8);
        }

        v72 = *v69;
        v73 = v127;
        v74 = v59;
        v75 = v141;
        (*v69)(v127, v74, v141);
        v72(v140, v73, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_10009EFCC(0, *(v71 + 2) + 1, 1, v71);
        }

        v77 = *(v71 + 2);
        v76 = *(v71 + 3);
        if (v77 >= v76 >> 1)
        {
          v71 = sub_10009EFCC(v76 > 1, v77 + 1, 1, v71);
        }

        ++v68;
        *(v71 + 2) = v77 + 1;
        result = (v72)(&v71[((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v77], v140, v141);
        v70 += 48;
        v59 = v138;
        v20 = v139;
        if (v122 == v68)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_42;
    }
  }

  else
  {
    v124 = v66;
    v108 = v62;
    v109 = v60;
  }

  v71 = &_swiftEmptyArrayStorage;
LABEL_22:
  v141 = v2;
  v138 = v71;
  v78 = v124;
  if (v124)
  {
    v140 = *(v124 + 16);
    if (v140)
    {
      v79 = 0;
      v80 = v135;
      v81 = (v136 + 32);
      v82 = &_swiftEmptyArrayStorage;
      while (v79 < *(v78 + 16))
      {
        sub_100077270(v78 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v79, v80);
        sub_100005620(v80, v133, &qword_1000D84A8, &unk_1000B0C40);
        sub_100005620(v80 + *(v132 + 20), v134, &qword_1000D84A8, &unk_1000B0C40);
        v83 = v141;
        sub_1000A03C0();
        v141 = v83;
        if (v83)
        {

          sub_1000772D4(v80);
          sub_1000057C4(v123, &qword_1000DA1F0, &qword_1000B0CC0);
          sub_1000057C4(v137, &qword_1000D8350, &qword_1000A5C48);
          sub_1000057C4(v129, &qword_1000DA1F8, &qword_1000B0CC8);
        }

        sub_1000772D4(v80);
        v84 = *v81;
        v85 = v128;
        v86 = v143;
        (*v81)(v128, v20, v143);
        v84(v142, v85, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_10009EFA4(0, v82[2] + 1, 1, v82);
        }

        v88 = v82[2];
        v87 = v82[3];
        v80 = v135;
        if (v88 >= v87 >> 1)
        {
          v82 = sub_10009EFA4(v87 > 1, v88 + 1, 1, v82);
        }

        ++v79;
        v82[2] = v88 + 1;
        result = (v84)(v82 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v88, v142, v143);
        v20 = v139;
        v78 = v124;
        if (v140 == v79)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }
  }

LABEL_32:
  v89 = v114;
  v90 = v141;
  sub_10009FF20();
  v3 = v90;
  v63 = v123;
  sub_1000057C4(v123, &qword_1000DA1F0, &qword_1000B0CC0);
  if (v90)
  {
    goto LABEL_33;
  }

  v108(v89, 0, 1, v109);
  sub_1000056E8(v89, v63, &qword_1000DA1F0, &qword_1000B0CC0);
LABEL_37:
  v92 = v125;
  v91 = v126;
  v143 = *v126;
  sub_100005620(v126 + v125[5], v119, &qword_1000D84A8, &unk_1000B0C40);
  sub_100005620(v129, v116, &qword_1000DA1F8, &qword_1000B0CC8);
  v93 = v92[7];
  v94 = (v91 + v92[8]);
  v142 = *v94;
  LODWORD(v141) = *(v94 + 8);
  LODWORD(v140) = *(v91 + v92[9]);
  LODWORD(v139) = *(v91 + v93);
  sub_100005620(v63, v118, &qword_1000DA1F0, &qword_1000B0CC0);
  sub_100005620(v91 + v92[11], v120, &qword_1000D8BC8, &qword_1000A85F8);
  v95 = v92[13];
  v96 = (v91 + v92[12]);
  v97 = *v96;
  v136 = v96[1];
  v138 = *(v91 + v95);
  sub_100005620(v91 + v92[14], v121, &qword_1000D8BC8, &qword_1000A85F8);
  sub_100005620(v137, v117, &qword_1000D8350, &qword_1000A5C48);
  v98 = *(v91 + v92[17]);
  v99 = v91 + v92[18];
  v134 = *v99;
  v135 = v98;
  LODWORD(v133) = v99[8];
  v100 = v92[20];
  v132 = *(v91 + v92[19]);
  v102 = *(v91 + v100);
  v101 = *(v91 + v100 + 8);

  sub_100005750(v97, v136);

  sub_100005750(v102, v101);
  v103 = v115;
  sub_10009FA20();
  sub_1000057C4(v123, &qword_1000DA1F0, &qword_1000B0CC0);
  sub_1000057C4(v137, &qword_1000D8350, &qword_1000A5C48);
  result = sub_1000057C4(v129, &qword_1000DA1F8, &qword_1000B0CC8);
  if (!v3)
  {
    v104 = v113;
    (*(v111 + 32))(v113, v103, v112);
    v105 = enum case for IDSDictionaryContext.idsHomekitInvitation(_:);
    v106 = sub_10009F9E0();
    return (*(*(v106 - 8) + 104))(v104, v105, v106);
  }

  return result;
}

uint64_t sub_100077270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000772D4(uint64_t a1)
{
  v2 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IDSCommandWebTunnelResponseSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA200, &qword_1000B0CD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100077804();
  sub_1000A0CE0();
  LOBYTE(v22) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    sub_1000A0AB0();
    v31 = *(v3 + 24);
    v22 = *(v3 + 24);
    LOBYTE(v19) = 2;
    sub_100005620(&v31, v20, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v22, *(&v22 + 1));
    LOBYTE(v22) = 3;
    sub_1000A0AB0();
    LOBYTE(v22) = 4;
    sub_1000A0A80();
    LOBYTE(v22) = 5;
    sub_1000A0AE0();
    LOBYTE(v22) = 6;
    sub_1000A0A80();
    v9 = *(v3 + 152);
    v30[2] = *(v3 + 136);
    v30[3] = v9;
    v10 = *(v3 + 184);
    v30[4] = *(v3 + 168);
    v30[5] = v10;
    v11 = *(v3 + 120);
    v30[0] = *(v3 + 104);
    v30[1] = v11;
    v12 = *(v3 + 152);
    v24 = *(v3 + 136);
    v25 = v12;
    v13 = *(v3 + 184);
    v26 = *(v3 + 168);
    v27 = v13;
    v14 = *(v3 + 120);
    v22 = *(v3 + 104);
    v23 = v14;
    v21 = 7;
    sub_100005620(v30, v20, &qword_1000D9968, &qword_1000AC260);
    sub_10004EEE0();
    sub_1000A0AD0();
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v20[5] = v27;
    v20[0] = v22;
    v20[1] = v23;
    sub_10004EF34(v20);
    v29 = *(v3 + 200);
    v19 = *(v3 + 200);
    v18 = 8;
    sub_100005620(&v29, v17, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
    LOBYTE(v19) = 9;
    sub_1000A0A80();
    v28 = *(v3 + 232);
    v19 = *(v3 + 232);
    v18 = 10;
    sub_100005620(&v28, v17, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
    LOBYTE(v19) = 11;
    sub_1000A0AB0();
    LOBYTE(v19) = 12;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100077804()
{
  result = qword_1000DA208;
  if (!qword_1000DA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA208);
  }

  return result;
}

void *IDSCommandWebTunnelResponseSchema.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100077C4C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x118uLL);
  }

  return result;
}

uint64_t sub_1000778A4(char a1)
{
  result = 99;
  switch(a1)
  {
    case 1:
      result = 105;
      break;
    case 2:
      result = 85;
      break;
    case 3:
      result = 115;
      break;
    case 4:
      result = 21603;
      break;
    case 5:
      result = 101;
      break;
    case 6:
      result = 117;
      break;
    case 7:
      result = 104;
      break;
    case 8:
      result = 98;
      break;
    case 9:
      result = 30050;
      break;
    case 10:
      result = 27490;
      break;
    case 11:
      result = 29544;
      break;
    case 12:
      result = 29288;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100077994(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000778A4(*a1);
  v5 = v4;
  if (v3 == sub_1000778A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100077A1C()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000778A4(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100077A80(uint64_t a1)
{
  sub_1000778A4(*v1);
  sub_1000A05B0();
}

Swift::Int sub_100077AD4(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_1000778A4(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100077B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100078748(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100077B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000778A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100077BAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100078748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077BD4(uint64_t a1)
{
  v2 = sub_100077804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077C10(uint64_t a1)
{
  v2 = sub_100077804();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100077C4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DA228, &unk_1000B10D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v106 = a1;
  sub_1000022C4(a1, v9);
  sub_100077804();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v106);
  }

  v10 = v6;
  v49 = a2;
  LOBYTE(v51) = 0;
  v11 = sub_1000A0A00();
  LOBYTE(v51) = 1;
  v48 = sub_1000A0950();
  v105 = v12 & 1;
  LOBYTE(v50[0]) = 2;
  v13 = sub_100005424();
  sub_1000A0970();
  v45 = v13;
  v46 = v51;
  v47 = v52;
  LOBYTE(v51) = 3;
  v14 = sub_1000A0950();
  v103 = v15 & 1;
  LOBYTE(v51) = 4;
  v39 = sub_1000A0920();
  v44 = v16;
  LOBYTE(v51) = 5;
  v37 = sub_1000A0980();
  v38 = v14;
  v101 = v17 & 1;
  LOBYTE(v51) = 6;
  v36 = sub_1000A0920();
  v43 = v18;
  v85 = 7;
  sub_100061400();
  sub_1000A0970();
  v19 = v48;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v99 = v91;
  v94 = v86;
  v95 = v87;
  LOBYTE(v50[0]) = 8;
  sub_1000A0970();
  v41 = v52;
  v42 = v51;
  LOBYTE(v51) = 9;
  v20 = sub_1000A0920();
  v35 = v21;
  v22 = v20;
  LOBYTE(v50[0]) = 10;
  sub_1000A0970();
  v45 = v51;
  v40 = v52;
  LOBYTE(v51) = 11;
  v34 = sub_1000A0950();
  v93 = v23 & 1;
  v84 = 12;
  v24 = sub_1000A0920();
  v33 = v25;
  v26 = v24;
  (*(v10 + 8))(v8, v5);
  v50[0] = v11;
  v50[1] = v19;
  v27 = v105;
  LOBYTE(v50[2]) = v105;
  v28 = v46;
  v50[3] = v46;
  v50[4] = v47;
  v50[5] = v38;
  HIDWORD(v30) = v103;
  LOBYTE(v50[6]) = v103;
  v50[7] = v39;
  v50[8] = v44;
  v50[9] = v37;
  v31 = v101;
  LOBYTE(v50[10]) = v101;
  v50[11] = v36;
  v50[12] = v43;
  *&v50[13] = v94;
  *&v50[15] = v95;
  *&v50[23] = v99;
  *&v50[21] = v98;
  *&v50[19] = v97;
  *&v50[17] = v96;
  v50[25] = v42;
  v50[26] = v41;
  v50[27] = v22;
  v50[28] = v35;
  v50[29] = v45;
  v50[30] = v40;
  v50[31] = v34;
  v32 = v93;
  LOBYTE(v50[32]) = v93;
  v50[33] = v26;
  v50[34] = v33;
  sub_100078794(v50, &v51);
  sub_100002308(v106);
  v51 = v11;
  v52 = v19;
  v53 = v27;
  *v54 = *v104;
  *&v54[3] = *&v104[3];
  v55 = v28;
  v56 = v47;
  v57 = v38;
  v58 = BYTE4(v30);
  *v59 = *v102;
  *&v59[3] = *&v102[3];
  v60 = v39;
  v61 = v44;
  v62 = v37;
  v63 = v31;
  *v64 = *v100;
  *&v64[3] = *&v100[3];
  v65 = v36;
  v66 = v43;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v72 = v99;
  v67 = v94;
  v68 = v95;
  v73 = v42;
  v74 = v41;
  v75 = v22;
  v76 = v35;
  v77 = v45;
  v78 = v40;
  v79 = v34;
  v80 = v32;
  *v81 = *v92;
  *&v81[3] = *&v92[3];
  v82 = v26;
  v83 = v33;
  sub_1000725D0(&v51);
  return memcpy(v49, v50, 0x118uLL);
}

uint64_t sub_100078528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_100078584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_100078644()
{
  result = qword_1000DA210;
  if (!qword_1000DA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA210);
  }

  return result;
}

unint64_t sub_10007869C()
{
  result = qword_1000DA218;
  if (!qword_1000DA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA218);
  }

  return result;
}

unint64_t sub_1000786F4()
{
  result = qword_1000DA220;
  if (!qword_1000DA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA220);
  }

  return result;
}

unint64_t sub_100078748(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD788;
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

uint64_t sub_1000787DC()
{
  sub_1000017BC(&qword_1000D8590, &qword_1000B1190);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000B10E0;
  v1 = sub_10007AC10(0, &qword_1000DA248, MSASAlbum_ptr);
  *(v0 + 56) = sub_1000017BC(&qword_1000DA250, &qword_1000B1198);
  *(v0 + 32) = v1;
  v2 = sub_10007AC10(0, &qword_1000DA258, NSDictionary_ptr);
  *(v0 + 88) = sub_1000017BC(&qword_1000DA260, &qword_1000B11A0);
  *(v0 + 64) = v2;
  v3 = sub_10007AC10(0, &qword_1000DA268, NSMutableDictionary_ptr);
  *(v0 + 120) = sub_1000017BC(&qword_1000DA270, &qword_1000B11A8);
  *(v0 + 96) = v3;
  v4 = sub_10007AC10(0, &qword_1000DA278, NSString_ptr);
  *(v0 + 152) = sub_1000017BC(&qword_1000DA280, &qword_1000B11B0);
  *(v0 + 128) = v4;
  v5 = sub_10007AC10(0, &qword_1000DA288, NSDate_ptr);
  *(v0 + 184) = sub_1000017BC(&qword_1000DA290, &qword_1000B11B8);
  *(v0 + 160) = v5;
  sub_10007AC10(0, &qword_1000DA298, NSSet_ptr);
  result = sub_1000A0780();
  qword_1000DAE00 = result;
  return result;
}

uint64_t sub_10007896C@<X0>(uint64_t a3@<X8>)
{
  v185 = a3;
  v183 = sub_10009F9D0();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_10009FE90();
  v184 = *(v186 - 8);
  __chkstk_darwin(v186);
  v190 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_10009F350();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_10009FE70();
  v189 = *(v191 - 8);
  v6 = __chkstk_darwin(v191);
  v188 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v199 = &v156 - v8;
  v9 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v10 = __chkstk_darwin(v9 - 8);
  v197 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v201 = &v156 - v13;
  __chkstk_darwin(v12);
  v204 = &v156 - v14;
  v15 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v16 = __chkstk_darwin(v15 - 8);
  v196 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v195 = &v156 - v19;
  v20 = __chkstk_darwin(v18);
  v203 = &v156 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v156 - v23;
  __chkstk_darwin(v22);
  v205 = &v156 - v25;
  v26 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v27 = __chkstk_darwin(v26 - 8);
  v200 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v156 - v30;
  __chkstk_darwin(v29);
  v202 = &v156 - v32;
  v33 = sub_1000017BC(&qword_1000DA238, &unk_1000B1170);
  v34 = __chkstk_darwin(v33 - 8);
  v187 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v206 = &v156 - v36;
  v37 = sub_1000A0760();
  v38 = sub_10007AC10(0, &qword_1000D8398, OS_os_log_ptr);
  v39 = sub_1000A0790();
  sub_10009F380(v37, &_mh_execute_header, v39, "Deserializing shared album message", 34, 2, &_swiftEmptyArrayStorage);

  v40 = objc_opt_self();
  isa = sub_10009F300().super.isa;
  *&v211 = 0;
  v42 = [v40 propertyListWithData:isa options:0 format:0 error:&v211];

  if (!v42)
  {
    v58 = v211;
    sub_10009F280();

LABEL_34:
    swift_willThrow();
    goto LABEL_35;
  }

  v43 = v211;
  sub_1000A07D0();
  swift_unknownObjectRelease();
  sub_1000017BC(&qword_1000DA240, &unk_1000B1180);
  if (!swift_dynamicCast())
  {
    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_33:
    sub_1000A0520();
    goto LABEL_34;
  }

  v44 = v209;
  v45 = sub_1000A0760();
  v46 = sub_1000A0790();
  sub_10009F380(v45, &_mh_execute_header, v46, "Instantiating shared album safe classes", 39, 2, &_swiftEmptyArrayStorage);

  if (qword_1000D8120 != -1)
  {
    swift_once();
  }

  *&v211 = 0;
  sub_1000A0730();
  if (!v211)
  {

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_33;
  }

  v47 = sub_1000A0760();
  v180 = v38;
  v48 = sub_1000A0790();
  sub_10009F380(v47, &_mh_execute_header, v48, "Extracting shared album message type", 36, 2, &_swiftEmptyArrayStorage);

  v49 = sub_10009FE50();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v51(v206, 1, 1, v49);
  if (*(v44 + 16) && (v52 = sub_10000217C(1701869940, 0xE400000000000000), (v53 & 1) != 0) && (sub_10006FDD0(*(v44 + 56) + 32 * v52, &v211), (swift_dynamicCast() & 1) != 0))
  {
    v54 = *(&v209 + 1);
    if (v209 == __PAIR128__(0xE300000000000000, 7824750) || (v179 = v209, (sub_1000A0BD0() & 1) != 0))
    {

      LODWORD(v179) = sub_1000A0760();
      v55 = sub_1000A0790();
      sub_10009F380(v179, &_mh_execute_header, v55, "Found shared album type: new", 28, 2, &_swiftEmptyArrayStorage);

      v56 = v206;
      sub_1000057C4(v206, &qword_1000DA238, &unk_1000B1170);
      v57 = &enum case for PhotosSharedAlbumMessage.MessageType.new(_:);
    }

    else
    {
      if (v179 == 0x6574656C6564 && v54 == 0xE600000000000000)
      {
      }

      else
      {
        LODWORD(v179) = sub_1000A0BD0();

        if ((v179 & 1) == 0)
        {

          sub_1000A0530();
          sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_1000A0520();
          swift_willThrow();
          sub_1000057C4(v206, &qword_1000DA238, &unk_1000B1170);
          goto LABEL_35;
        }
      }

      LODWORD(v179) = sub_1000A0760();
      v94 = sub_1000A0790();
      sub_10009F380(v179, &_mh_execute_header, v94, "Found shared album type: delete", 31, 2, &_swiftEmptyArrayStorage);

      v56 = v206;
      sub_1000057C4(v206, &qword_1000DA238, &unk_1000B1170);
      v57 = &enum case for PhotosSharedAlbumMessage.MessageType.delete(_:);
    }

    (*(v50 + 104))(v56, *v57, v49);
    v51(v56, 0, 1, v49);
  }

  else
  {
    v59 = sub_1000A0760();
    v60 = sub_1000A0790();
    sub_10009F380(v59, &_mh_execute_header, v60, "No shared album type specified. Assumes new", 45, 2, &_swiftEmptyArrayStorage);
  }

  v61 = sub_1000A0760();
  v62 = sub_1000A0790();
  sub_10009F380(v61, &_mh_execute_header, v62, "Extracting shared album message data", 36, 2, &_swiftEmptyArrayStorage);

  if (!*(v44 + 16) || (v63 = sub_10000217C(0x7461446D75626C61, 0xE900000000000061), (v64 & 1) == 0))
  {

    goto LABEL_30;
  }

  sub_10006FDD0(*(v44 + 56) + 32 * v63, &v211);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();
LABEL_31:
    sub_1000057C4(v206, &qword_1000DA238, &unk_1000B1170);
    goto LABEL_35;
  }

  v65 = *(&v209 + 1);
  v179 = v209;
  v66 = sub_1000A0760();
  v67 = sub_1000A0790();
  sub_10009F380(v66, &_mh_execute_header, v67, "Unpacking shared album data", 27, 2, &_swiftEmptyArrayStorage);

  v68 = objc_opt_self();
  v69 = sub_1000A0710().super.isa;

  v178 = v65;
  v70 = sub_10009F300().super.isa;
  *&v211 = 0;
  v71 = [v68 _strictlyUnarchivedObjectOfClasses:v69 fromData:v70 error:&v211];

  if (!v71)
  {
    v93 = v211;
    sub_10009F280();

LABEL_40:
    swift_willThrow();
    sub_100005568(v179, v178);
    goto LABEL_31;
  }

  v72 = v211;
  sub_1000A07D0();
  swift_unknownObjectRelease();
  sub_10007AC10(0, &qword_1000DA248, MSASAlbum_ptr);
  if (!swift_dynamicCast())
  {
    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000A0520();
    goto LABEL_40;
  }

  v73 = v209;
  v74 = sub_10009F370();
  v75 = v202;
  (*(*(v74 - 8) + 56))(v202, 1, 1, v74);
  v177 = v73;
  v76 = [v73 GUID];
  if (v76)
  {
    v77 = v76;
    sub_1000A0580();

    sub_10009F360();

    sub_1000057C4(v75, &qword_1000D8BC8, &qword_1000A85F8);
    sub_1000056E8(v31, v75, &qword_1000D8BC8, &qword_1000A85F8);
  }

  v78 = sub_10009F2A0();
  v79 = *(*(v78 - 8) + 56);
  v80 = v205;
  v79(v205, 1, 1, v78);
  v81 = [v177 URLString];
  if (v81)
  {
    v82 = v81;
    sub_1000A0580();

    sub_10009F290();

    sub_1000057C4(v80, &qword_1000D8358, &unk_1000A5C50);
    sub_1000056E8(v24, v80, &qword_1000D8358, &unk_1000A5C50);
  }

  v83 = v203;
  v79(v203, 1, 1, v78);
  v84 = v177;
  v85 = [v177 publicURLString];
  if (v85)
  {
    v86 = v85;
    sub_1000A0580();

    sub_10009F290();

    sub_1000057C4(v83, &qword_1000D8358, &unk_1000A5C50);
    sub_1000056E8(v24, v83, &qword_1000D8358, &unk_1000A5C50);
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataNameKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v209 = 0u;
    v210 = 0u;
  }

  v95 = v194;
  v96 = v193;
  v211 = v209;
  v212 = v210;
  if (*(&v210 + 1))
  {
    v97 = swift_dynamicCast();
    v98 = v207;
    if (!v97)
    {
      v98 = 0;
    }

    v193 = v98;
    if (v97)
    {
      v99 = v208;
    }

    else
    {
      v99 = 0;
    }

    v176 = v99;
  }

  else
  {
    sub_1000057C4(&v211, &qword_1000D9EF8, &qword_1000B0578);
    v193 = 0;
    v176 = 0;
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataIsPublicKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v209 = 0u;
    v210 = 0u;
  }

  v211 = v209;
  v212 = v210;
  if (*(&v210 + 1))
  {
    v100 = swift_dynamicCast();
    v101 = v207;
    if (!v100)
    {
      v101 = 2;
    }
  }

  else
  {
    sub_1000057C4(&v211, &qword_1000D9EF8, &qword_1000B0578);
    v101 = 2;
  }

  v175 = v101;
  if ([v84 metadataValueForKey:kMSASAlbumMetadataAllowMultipleContributorsKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v209 = 0u;
    v210 = 0u;
  }

  v211 = v209;
  v212 = v210;
  if (*(&v210 + 1))
  {
    v102 = swift_dynamicCast();
    v103 = v207;
    if (!v102)
    {
      v103 = 2;
    }
  }

  else
  {
    sub_1000057C4(&v211, &qword_1000D9EF8, &qword_1000B0578);
    v103 = 2;
  }

  v174 = v103;
  if ([v84 metadataValueForKey:kMSASAlbumMetadataPhoneTokenKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v209 = 0u;
    v210 = 0u;
  }

  v211 = v209;
  v212 = v210;
  if (*(&v210 + 1))
  {
    v104 = swift_dynamicCast();
    v105 = v207;
    if (!v104)
    {
      v105 = 0;
    }

    v173 = v105;
    if (v104)
    {
      v106 = v208;
    }

    else
    {
      v106 = 0;
    }

    v172 = v106;
  }

  else
  {
    sub_1000057C4(&v211, &qword_1000D9EF8, &qword_1000B0578);
    v173 = 0;
    v172 = 0;
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataCreationDateKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v209 = 0u;
    v210 = 0u;
  }

  v107 = v204;
  v211 = v209;
  v212 = v210;
  if (*(&v210 + 1))
  {
    v108 = swift_dynamicCast();
    v109 = *(v96 + 56);
    v109(v107, v108 ^ 1u, 1, v95);
  }

  else
  {
    sub_1000057C4(&v211, &qword_1000D9EF8, &qword_1000B0578);
    v109 = *(v96 + 56);
    v109(v107, 1, 1, v95);
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataInviterAddressKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v209 = 0u;
    v210 = 0u;
  }

  v211 = v209;
  v212 = v210;
  if (*(&v210 + 1))
  {
    v110 = swift_dynamicCast();
    v111 = v207;
    if (!v110)
    {
      v111 = 0;
    }

    v171 = v111;
    if (v110)
    {
      v112 = v208;
    }

    else
    {
      v112 = 0;
    }

    v170 = v112;
  }

  else
  {
    sub_1000057C4(&v211, &qword_1000D9EF8, &qword_1000B0578);
    v171 = 0;
    v170 = 0;
  }

  v113 = sub_1000A0760();
  v114 = sub_1000A0790();
  sub_10009F380(v113, &_mh_execute_header, v114, "Creating shared album from extracted information", 48, 2, &_swiftEmptyArrayStorage);

  v115 = [v84 ownerEmail];
  if (v115)
  {
    v116 = v115;
    v169 = sub_1000A0580();
    v194 = v117;
  }

  else
  {
    v169 = 0;
    v194 = 0;
  }

  v118 = [v84 ownerFullName];
  if (v118)
  {
    v119 = v118;
    v168 = sub_1000A0580();
    v167 = v120;
  }

  else
  {
    v168 = 0;
    v167 = 0;
  }

  v121 = [v84 ownerPersonID];
  if (v121)
  {
    v122 = v121;
    v166 = sub_1000A0580();
    v165 = v123;
  }

  else
  {
    v166 = 0;
    v165 = 0;
  }

  v124 = [v84 ownerFirstName];
  if (v124)
  {
    v125 = v124;
    v164 = sub_1000A0580();
    v163 = v126;
  }

  else
  {
    v164 = 0;
    v163 = 0;
  }

  v127 = [v84 ownerLastName];
  if (v127)
  {
    v128 = v127;
    v162 = sub_1000A0580();
    v161 = v129;
  }

  else
  {
    v162 = 0;
    v161 = 0;
  }

  v160 = [v84 ownerIsWhitelisted];
  v130 = [v84 subscriptionDate];
  if (v130)
  {
    v131 = v192;
    v132 = v130;
    sub_10009F340();

    v133 = v201;
    (*(v96 + 32))(v201, v131, v95);
    v134 = 0;
  }

  else
  {
    v134 = 1;
    v133 = v201;
  }

  v109(v133, v134, 1, v95);
  sub_100005620(v75, v200, &qword_1000D8BC8, &qword_1000A85F8);
  v135 = [v84 ctag];
  if (v135)
  {
    v136 = v135;
    v192 = sub_1000A0580();
    v159 = v137;
  }

  else
  {
    v192 = 0;
    v159 = 0;
  }

  v158 = [v84 relationshipState];
  v138 = [v84 foreignCtag];
  if (v138)
  {
    v139 = v138;
    v157 = sub_1000A0580();
  }

  else
  {
    v157 = 0;
  }

  sub_100005620(v205, v195, &qword_1000D8358, &unk_1000A5C50);
  v140 = v203;
  sub_100005620(v203, v196, &qword_1000D8358, &unk_1000A5C50);
  [v84 isFamilySharedAlbum];
  [v84 useForeignCtag];
  v141 = v204;
  sub_100005620(v204, v197, &qword_1000D84A8, &unk_1000B0C40);
  v142 = v198;
  v143 = v199;
  sub_10009FE60();
  if (!v142)
  {
    v144 = sub_1000A0760();
    v145 = sub_1000A0790();
    sub_10009F380(v144, &_mh_execute_header, v145, "Creating shared album message", 29, 2, &_swiftEmptyArrayStorage);

    sub_100005620(v206, v187, &qword_1000DA238, &unk_1000B1170);
    v146 = v189;
    (*(v189 + 16))(v188, v143, v191);
    v147 = v190;
    sub_10009FE80();
    v148 = sub_1000A0760();
    v149 = v147;
    v150 = sub_1000A0790();
    sub_10009F380(v148, &_mh_execute_header, v150, "Creating ids client message result.", 35, 2, &_swiftEmptyArrayStorage);

    v151 = v184;
    v152 = v181;
    v153 = v186;
    (*(v184 + 16))(v181, v149, v186);
    (*(v182 + 104))(v152, enum case for IDSClientMessageType.photosSharedAlbumMessage(_:), v183);
    sub_10009FC10();
    v154 = sub_1000A0760();
    v155 = sub_1000A0790();
    sub_10009F380(v154, &_mh_execute_header, v155, "Returning ids client message result.", 36, 2, &_swiftEmptyArrayStorage);
    sub_100005568(v179, v178);

    (*(v151 + 8))(v149, v153);
    (*(v146 + 8))(v199, v191);
    sub_1000057C4(v203, &qword_1000D8358, &unk_1000A5C50);
    sub_1000057C4(v205, &qword_1000D8358, &unk_1000A5C50);
    sub_1000057C4(v202, &qword_1000D8BC8, &qword_1000A85F8);
    sub_1000057C4(v206, &qword_1000DA238, &unk_1000B1170);
    return sub_1000057C4(v204, &qword_1000D84A8, &unk_1000B0C40);
  }

  sub_100005568(v179, v178);

  sub_1000057C4(v140, &qword_1000D8358, &unk_1000A5C50);
  sub_1000057C4(v205, &qword_1000D8358, &unk_1000A5C50);
  sub_1000057C4(v202, &qword_1000D8BC8, &qword_1000A85F8);
  sub_1000057C4(v206, &qword_1000DA238, &unk_1000B1170);
  sub_1000057C4(v141, &qword_1000D84A8, &unk_1000B0C40);
LABEL_35:
  v87 = sub_1000A0770();
  v88 = sub_1000A0790();
  if (os_log_type_enabled(v88, v87))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138412290;
    swift_errorRetain();
    v91 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 4) = v91;
    *v90 = v91;
    _os_log_impl(&_mh_execute_header, v88, v87, "Error processing shared album message: %@", v89, 0xCu);
    sub_1000057C4(v90, &qword_1000D83A0, &unk_1000A5C70);
  }

  sub_1000A0530();
  sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000A0520();
  swift_willThrow();
}

unint64_t sub_10007AB94(uint64_t a1)
{
  result = sub_10007ABBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007ABBC()
{
  result = qword_1000DA230;
  if (!qword_1000DA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA230);
  }

  return result;
}

uint64_t sub_10007AC10(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007AC68@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v44 = a3;
  v41 = sub_10009F7C0();
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009F9D0();
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_1000017BC(&qword_1000DA2A8, &qword_1000B1240);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1000017BC(&qword_1000DA2B0, &qword_1000B1248);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_10009FBF0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  v21 = sub_10009F260();
  sub_10007B21C();
  v22 = v50;
  sub_10009F250();
  if (v22)
  {
  }

  v50 = v21;
  v39 = v8;
  v40 = v18;
  v47 = v17;
  v25 = v48;
  v24 = v49;
  sub_1000054CC(v48, v49);
  sub_10009FBE0();
  v26 = v20;
  v37 = v25;
  v38 = v24;
  sub_10009FBB0();
  v27 = sub_10009FBA0();
  LODWORD(v24) = (*(*(v27 - 8) + 48))(v16, 1, v27);
  sub_1000057C4(v16, &qword_1000DA2B0, &qword_1000B1248);
  if (v24 == 1 && (sub_10009FBD0(), v28 = sub_10009FBC0(), v29 = (*(*(v28 - 8) + 48))(v13, 1, v28), sub_1000057C4(v13, &qword_1000DA2A8, &qword_1000B1240), v29 == 1))
  {
    (*(v43 + 104))(v42, enum case for ClientMessageType.restricted(_:), v41);
    v10 = v39;
    sub_10009FA60();
    v30 = v45;
    v31 = v46;
    v32 = v40;
    v34 = &enum case for IDSClientMessageType.messageTypeRestricted(_:);
    v35 = v47;
  }

  else
  {
    v32 = v40;
    v33 = v20;
    v35 = v47;
    (*(v40 + 16))(v10, v33, v47);
    v34 = &enum case for IDSClientMessageType.legacyActivitySharing(_:);
    v30 = v45;
    v31 = v46;
  }

  (*(v31 + 104))(v10, *v34, v30);
  sub_10009FC10();

  sub_100005568(v37, v38);
  return (*(v32 + 8))(v26, v35);
}

unint64_t sub_10007B1A0(uint64_t a1)
{
  result = sub_10007B1C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007B1C8()
{
  result = qword_1000DA2A0;
  if (!qword_1000DA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2A0);
  }

  return result;
}

unint64_t sub_10007B21C()
{
  result = qword_1000DA2B8;
  if (!qword_1000DA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2B8);
  }

  return result;
}

uint64_t sub_10007B270()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

uint64_t sub_10007B2E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10007CFF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007B30C(uint64_t a1)
{
  v2 = sub_10007B598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007B348(uint64_t a1)
{
  v2 = sub_10007B598();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountsRepresentativeCloudShareInfoSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA2C0, &unk_1000B1250);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000022C4(a1, a1[3]);
  sub_10007B598();
  sub_1000A0CE0();
  LOBYTE(v14) = 0;
  sub_10009F2A0();
  sub_10007B9A4(&qword_1000DA2D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1000A0AD0();
  if (!v2)
  {
    v9 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
    LOBYTE(v14) = 1;
    sub_1000A0A80();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100005750(v14, v11);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10007B598()
{
  result = qword_1000DA2C8;
  if (!qword_1000DA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2C8);
  }

  return result;
}

uint64_t AccountsRepresentativeCloudShareInfoSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000017BC(&qword_1000DA2D8, &qword_1000B1260);
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_10007B598();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v13 = v20;
  sub_10009F2A0();
  LOBYTE(v22) = 0;
  sub_10007B9A4(&qword_1000DA2E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1000A0970();
  sub_1000056E8(v6, v12, &qword_1000D8358, &unk_1000A5C50);
  LOBYTE(v22) = 1;
  v14 = sub_1000A0920();
  v15 = &v12[*(v10 + 20)];
  *v15 = v14;
  v15[1] = v16;
  v23 = 2;
  sub_100005424();
  sub_1000A0970();
  (*(v13 + 8))(v9, v21);
  *&v12[*(v10 + 24)] = v22;
  sub_10007C580(v12, v19, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
  sub_100002308(a1);
  return sub_10007C5E8(v12, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
}

uint64_t sub_10007B9A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10007B9EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F73616572;
    if (a1 != 8)
    {
      v5 = 2003790950;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000018;
    if (a1 == 5)
    {
      v6 = 0x657A696C616E6966;
    }

    if (a1 <= 6u)
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
    v1 = 1701869940;
    v2 = 0x69636966656E6562;
    v3 = 0x6465747065636361;
    if (a1 != 3)
    {
      v3 = 0x666E496572616873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6169646F74737563;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10007BB74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10007D11C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007BBA8(uint64_t a1)
{
  v2 = sub_10007BF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007BBE4(uint64_t a1)
{
  v2 = sub_10007BF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountsRepresentativeMessageSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA2E8, &qword_1000B1268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10007BF4C();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0AB0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000A0A80();
    v8[13] = 2;
    sub_1000A0A80();
    v8[12] = 3;
    sub_1000A0A90();
    type metadata accessor for AccountsRepresentativeMessageSchema(0);
    v8[11] = 4;
    type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
    sub_10007B9A4(&qword_1000DA2F8, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema, &protocol conformance descriptor for AccountsRepresentativeCloudShareInfoSchema);
    sub_1000A0AD0();
    v8[10] = 5;
    sub_1000A0A90();
    v8[9] = 6;
    sub_1000A0A90();
    v8[8] = 7;
    sub_1000A0A80();
    v8[7] = 8;
    sub_1000A0AB0();
    v8[6] = 9;
    sub_1000A0AB0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10007BF4C()
{
  result = qword_1000DA2F0;
  if (!qword_1000DA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2F0);
  }

  return result;
}

uint64_t AccountsRepresentativeMessageSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v33 = sub_1000017BC(&qword_1000DA300, &qword_1000B1278);
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v30 - v8;
  v10 = type metadata accessor for AccountsRepresentativeMessageSchema(0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v34 = a1;
  sub_1000022C4(a1, v13);
  sub_10007BF4C();
  v32 = v9;
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v34);
  }

  v14 = v7;
  v44 = 0;
  *v12 = sub_1000A0950();
  v12[8] = v15 & 1;
  v43 = 1;
  *(v12 + 2) = sub_1000A0920();
  *(v12 + 3) = v16;
  v42 = 2;
  *(v12 + 4) = sub_1000A0920();
  *(v12 + 5) = v17;
  v41 = 3;
  v18 = sub_1000A0930();
  v30 = 0;
  v12[48] = v18;
  type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  v40 = 4;
  sub_10007B9A4(&qword_1000DA308, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema, &protocol conformance descriptor for AccountsRepresentativeCloudShareInfoSchema);
  sub_1000A0970();
  sub_1000056E8(v6, &v12[v10[8]], &qword_1000D8360, &qword_1000B1270);
  v39 = 5;
  v12[v10[9]] = sub_1000A0930();
  v38 = 6;
  v12[v10[10]] = sub_1000A0930();
  v37 = 7;
  v19 = sub_1000A0920();
  v20 = &v12[v10[11]];
  *v20 = v19;
  v20[1] = v21;
  v36 = 8;
  v22 = sub_1000A0950();
  v23 = &v12[v10[12]];
  *v23 = v22;
  v23[8] = v24 & 1;
  v35 = 9;
  v25 = sub_1000A0950();
  v27 = v26;
  (*(v14 + 8))(v32, v33);
  v28 = &v12[v10[13]];
  *v28 = v25;
  v28[8] = v27 & 1;
  sub_10007C580(v12, v31, type metadata accessor for AccountsRepresentativeMessageSchema);
  sub_100002308(v34);
  return sub_10007C5E8(v12, type metadata accessor for AccountsRepresentativeMessageSchema);
}

uint64_t sub_10007C580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10007C778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10007C840(uint64_t a1)
{
  sub_10007CC30(319, &unk_1000DA378, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_10007CBE4(319, &qword_1000D92B8, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000D86B8, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10007CA08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007CAB8(uint64_t a1)
{
  sub_10007CBE4(319, &qword_1000D8530, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_10007CBE4(319, &qword_1000D92B8, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000DA418, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10007CC30(319, &unk_1000DA420, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}