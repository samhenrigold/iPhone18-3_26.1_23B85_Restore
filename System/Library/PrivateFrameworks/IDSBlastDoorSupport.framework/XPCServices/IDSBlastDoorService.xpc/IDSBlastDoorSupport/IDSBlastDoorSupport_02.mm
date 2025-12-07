unint64_t sub_100046A58()
{
  result = qword_1000D94B8;
  if (!qword_1000D94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94B8);
  }

  return result;
}

unint64_t sub_100046AAC()
{
  result = qword_1000D94C0;
  if (!qword_1000D94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94C0);
  }

  return result;
}

unint64_t sub_100046B00()
{
  result = qword_1000D94C8;
  if (!qword_1000D94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94C8);
  }

  return result;
}

uint64_t sub_100046BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001000A3180 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1000A0BD0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100046C34(uint64_t a1)
{
  v2 = sub_100047114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046C70(uint64_t a1)
{
  v2 = sub_100047114();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100046CAC(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  sub_1000A0C60();
  sub_1000A0C70(a3);
  return sub_1000A0C90();
}

Swift::Int sub_100046CF4(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  sub_1000A0C60();
  sub_1000A0C70(a4);
  return sub_1000A0C90();
}

uint64_t sub_100046D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_100046DB8(uint64_t a1)
{
  v2 = sub_1000471D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046DF4(uint64_t a1)
{
  v2 = sub_1000471D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSDictionaryContextData.encode(to:)(void *a1)
{
  v15 = sub_1000017BC(&qword_1000D94E0, &qword_1000AB1A8);
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for IDSDictionaryContextData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000017BC(&qword_1000D94E8, &qword_1000AB1B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_1000022C4(a1, a1[3]);
  sub_100047114();
  sub_1000A0CE0();
  sub_100047168(v14, v7, type metadata accessor for IDSDictionaryContextData);
  sub_1000471D0();
  sub_1000A0A70();
  type metadata accessor for IDSDictionaryContextClientSchema(0);
  sub_10004597C(&qword_1000D9500, type metadata accessor for IDSDictionaryContextClientSchema, &protocol conformance descriptor for IDSDictionaryContextClientSchema);
  v12 = v15;
  sub_1000A0B80();
  sub_1000459C4(v7, type metadata accessor for IDSDictionaryContextClientSchema);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100047114()
{
  result = qword_1000D94F0;
  if (!qword_1000D94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94F0);
  }

  return result;
}

uint64_t sub_100047168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000471D0()
{
  result = qword_1000D94F8;
  if (!qword_1000D94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94F8);
  }

  return result;
}

uint64_t IDSDictionaryContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for IDSDictionaryContextData(0);
  __chkstk_darwin(v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D9508, &qword_1000AB1B8);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v26 = sub_1000017BC(&qword_1000D9510, &qword_1000AB1C0);
  v9 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = v21 - v10;
  v12 = a1[3];
  v25 = a1;
  sub_1000022C4(a1, v12);
  sub_100047114();
  v13 = v24;
  sub_1000A0CD0();
  if (!v13)
  {
    v14 = v5;
    v24 = v9;
    v15 = sub_1000A0A60();
    if (*(v15 + 16) == 1)
    {
      sub_1000471D0();
      sub_1000A0900();
      v16 = v24;
      type metadata accessor for IDSDictionaryContextClientSchema(0);
      sub_10004597C(&qword_1000D9518, type metadata accessor for IDSDictionaryContextClientSchema, &protocol conformance descriptor for IDSDictionaryContextClientSchema);
      v21[1] = v15;
      sub_1000A0A20();
      (*(v23 + 8))(v8, v6);
      (*(v16 + 8))(v11, v26);
      swift_unknownObjectRelease();
      sub_1000458C0(v14, v22, type metadata accessor for IDSDictionaryContextData);
    }

    else
    {
      v17 = sub_1000A0870();
      swift_allocError();
      v19 = v18;
      sub_1000017BC(&qword_1000D94B0, &qword_1000AB1A0);
      *v19 = v3;
      sub_1000A0910();
      sub_1000A0860();
      (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
      swift_willThrow();
      (*(v24 + 8))(v11, v26);
      swift_unknownObjectRelease();
    }
  }

  return sub_100002308(v25);
}

uint64_t sub_10004764C(char *a1, char *a2)
{
  if (qword_1000AC1A8[*a1] == qword_1000AC1A8[*a2])
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

Swift::Int sub_1000476B4()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100047710(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100047750(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_1000477A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A8C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10004780C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A8C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100047834(uint64_t a1)
{
  v2 = sub_10004904C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047870(uint64_t a1)
{
  v2 = sub_10004904C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSInvitationContextSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v60 = sub_1000A0530();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for IDSKCSharingInvitationSchema(0);
  __chkstk_darwin(v62);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  __chkstk_darwin(v63);
  v65 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSSampleInvitationSchema(0);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017BC(&qword_1000D9520, &qword_1000AB1C8);
  v66 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for IDSInvitationContextSchema(0);
  __chkstk_darwin(v12);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v84 = a1;
  sub_1000022C4(a1, v15);
  sub_10004904C();
  v16 = v67;
  sub_1000A0CD0();
  if (v16)
  {
    return sub_100002308(v84);
  }

  v17 = v8;
  v18 = v65;
  v67 = v12;
  v57 = v14;
  LOBYTE(v69) = 0;
  v19 = sub_1000A09D0();
  v20 = v9;
  v22 = v57;
  *v57 = v19;
  v22[1] = v23;
  LOBYTE(v69) = 1;
  v24 = v19;
  v25 = v23;
  sub_1000490A0();
  sub_1000A0A20();
  v56 = v11;
  v26 = v24;
  if (v24 == 0xD00000000000001FLL && 0x80000001000A2FE0 == v25 || (v27 = v25, (sub_1000A0BD0() & 1) != 0))
  {
    LOBYTE(v69) = 2;
    sub_10004597C(&qword_1000D9240, type metadata accessor for IDSSampleInvitationSchema, &protocol conformance descriptor for IDSSampleInvitationSchema);
    v28 = v56;
    sub_1000A0A20();
    (*(v66 + 8))(v28, v20);
    v29 = v57;
    sub_1000458C0(v17, v57 + *(v67 + 24), type metadata accessor for IDSSampleInvitationSchema);
    type metadata accessor for IDSDictionaryContextClientSchema(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v30 = v64;
LABEL_9:
    sub_100047168(v29, v30, type metadata accessor for IDSInvitationContextSchema);
    sub_100002308(v84);
    return sub_1000459C4(v29, type metadata accessor for IDSInvitationContextSchema);
  }

  v31 = v25;
  v32 = v67;
  if (v24 == 0x7469766E692D6B68 && v31 == 0xEC00000031762D65 || (sub_1000A0BD0() & 1) != 0)
  {
    LOBYTE(v69) = 2;
    sub_10004597C(&qword_1000D94D8, type metadata accessor for IDSHomeKitInvitationSchema, &protocol conformance descriptor for IDSHomeKitInvitationSchema);
    v33 = v56;
    sub_1000A0A20();
    (*(v66 + 8))(v33, v20);
    v29 = v57;
    sub_1000458C0(v18, v57 + *(v32 + 24), type metadata accessor for IDSHomeKitInvitationSchema);
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  v34 = v66;
  if (v26 == 0xD000000000000023 && 0x80000001000A3000 == v27 || (sub_1000A0BD0() & 1) != 0)
  {
    LOBYTE(v69) = 2;
    sub_10004597C(&qword_1000D94D0, type metadata accessor for IDSKCSharingInvitationSchema, &protocol conformance descriptor for IDSKCSharingInvitationSchema);
    v35 = v61;
    v36 = v56;
    sub_1000A0A20();
    (*(v34 + 8))(v36, v20);
    v37 = v64;
    v29 = v57;
    sub_1000458C0(v35, v57 + *(v32 + 24), type metadata accessor for IDSKCSharingInvitationSchema);
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    swift_storeEnumTagMultiPayload();
    v30 = v37;
    goto LABEL_9;
  }

  if (v26 == 49 && v27 == 0xE100000000000000 || (sub_1000A0BD0() & 1) != 0)
  {
    v68 = 2;
    sub_100046B00();
    v38 = v56;
    sub_1000A0A20();
    (*(v34 + 8))(v38, v20);
    v29 = v57;
    *(v57 + *(v67 + 24)) = v69;
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  if (v26 == 0xD000000000000017 && 0x80000001000A3030 == v27 || (sub_1000A0BD0() & 1) != 0)
  {
    v68 = 2;
    sub_100046AAC();
    v39 = v56;
    sub_1000A0A20();
    (*(v34 + 8))(v39, v20);
    v40 = v70;
    v29 = v57;
    v41 = v57 + *(v67 + 24);
    *v41 = v69;
    *(v41 + 2) = v40;
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  if (v26 == 0xD000000000000015 && 0x80000001000A3050 == v27 || (sub_1000A0BD0() & 1) != 0)
  {
    v68 = 2;
    sub_100046A58();
    sub_1000A0A20();
    (*(v66 + 8))(v56, v20);
    v29 = v57;
    v42 = v57 + *(v67 + 24);
    v43 = v82;
    *(v42 + 12) = v81;
    *(v42 + 13) = v43;
    v42[224] = v83;
    v44 = v78;
    *(v42 + 8) = v77;
    *(v42 + 9) = v44;
    v45 = v80;
    *(v42 + 10) = v79;
    *(v42 + 11) = v45;
    v47 = v74;
    v46 = v75;
    *(v42 + 4) = v73;
    *(v42 + 5) = v47;
    v48 = v76;
    *(v42 + 6) = v46;
    *(v42 + 7) = v48;
    v49 = v70;
    *v42 = v69;
    *(v42 + 1) = v49;
    v50 = v72;
    *(v42 + 2) = v71;
    *(v42 + 3) = v50;
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  sub_1000A0850(31);

  *&v69 = 0xD00000000000001CLL;
  *(&v69 + 1) = 0x80000001000A30A0;
  v85._countAndFlagsBits = v26;
  v85._object = v27;
  sub_1000A05E0(v85);
  v86._countAndFlagsBits = 41;
  v86._object = 0xE100000000000000;
  sub_1000A05E0(v86);
  v51 = v58;
  sub_1000A0520();
  sub_10004597C(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v52 = v60;
  swift_allocError();
  v53 = v59;
  (*(v59 + 16))(v54, v51, v52);
  swift_willThrow();
  (*(v53 + 8))(v51, v52);
  (*(v66 + 8))(v56, v20);
  sub_100002308(v84);
}

uint64_t IDSInvitationContextSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9538, &qword_1000AB1D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10004904C();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0B30();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000490F4();
    sub_1000A0B80();
    type metadata accessor for IDSInvitationContextSchema(0);
    v8[13] = 2;
    type metadata accessor for IDSDictionaryContextData(0);
    sub_10004597C(&qword_1000D9548, type metadata accessor for IDSDictionaryContextData, &protocol conformance descriptor for IDSDictionaryContextData);
    sub_1000A0B80();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100048728()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000487C0(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100048844(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_1000488D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A90C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100048908(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 99;
  v4 = 0xE100000000000000;
  v5 = 101;
  if (*v1 != 2)
  {
    v5 = 4475253;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 115;
    v2 = 0xE100000000000000;
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

uint64_t sub_10004895C()
{
  v1 = 99;
  v2 = 101;
  if (*v0 != 2)
  {
    v2 = 4475253;
  }

  if (*v0)
  {
    v1 = 115;
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

unint64_t sub_1000489AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000489D4(uint64_t a1)
{
  v2 = sub_100049148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048A10(uint64_t a1)
{
  v2 = sub_100049148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSInvitationSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9550, &qword_1000AB1D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_100049148();
  sub_1000A0CE0();
  v8[15] = 0;
  type metadata accessor for IDSInvitationContextSchema(0);
  sub_10004597C(&qword_1000D9560, type metadata accessor for IDSInvitationContextSchema, &protocol conformance descriptor for IDSInvitationContextSchema);
  sub_1000A0B80();
  if (!v1)
  {
    type metadata accessor for IDSInvitationSchema(0);
    v8[14] = 1;
    sub_1000A0B60();
    v8[13] = 2;
    sub_1000A0AA0();
    v8[12] = 3;
    sub_1000A0B30();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IDSInvitationSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for IDSInvitationContextSchema(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9568, &qword_1000AB1E0);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for IDSInvitationSchema(0);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  sub_1000022C4(a1, v13);
  sub_100049148();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v28);
  }

  v14 = v26;
  v15 = v12;
  v32 = 0;
  sub_10004597C(&qword_1000D9570, type metadata accessor for IDSInvitationContextSchema, &protocol conformance descriptor for IDSInvitationContextSchema);
  v16 = v27;
  sub_1000A0A20();
  sub_1000458C0(v6, v15, type metadata accessor for IDSInvitationContextSchema);
  v31 = 1;
  *(v15 + v10[5]) = sub_1000A0A00();
  v30 = 2;
  v17 = sub_1000A0940();
  v18 = v15 + v10[6];
  *v18 = v17;
  *(v18 + 8) = v19 & 1;
  v29 = 3;
  v21 = sub_1000A09D0();
  v23 = v22;
  (*(v14 + 8))(v9, v16);
  v24 = (v15 + v10[7]);
  *v24 = v21;
  v24[1] = v23;
  sub_100047168(v15, v25, type metadata accessor for IDSInvitationSchema);
  sub_100002308(v28);
  return sub_1000459C4(v15, type metadata accessor for IDSInvitationSchema);
}

unint64_t sub_10004904C()
{
  result = qword_1000D9528;
  if (!qword_1000D9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9528);
  }

  return result;
}

unint64_t sub_1000490A0()
{
  result = qword_1000D9530;
  if (!qword_1000D9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9530);
  }

  return result;
}

unint64_t sub_1000490F4()
{
  result = qword_1000D9540;
  if (!qword_1000D9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9540);
  }

  return result;
}

unint64_t sub_100049148()
{
  result = qword_1000D9558;
  if (!qword_1000D9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9558);
  }

  return result;
}

uint64_t sub_1000491BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000491F8()
{
  result = qword_1000D9578;
  if (!qword_1000D9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9578);
  }

  return result;
}

uint64_t sub_1000492AC(uint64_t a1)
{
  result = type metadata accessor for IDSSampleInvitationSchema(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IDSHomeKitInvitationSchema(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for IDSKCSharingInvitationSchema(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100049350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000493BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100049438(uint64_t a1)
{
  result = type metadata accessor for IDSDictionaryContextClientSchema(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1000494F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for IDSDictionaryContextData(0);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for IDSDictionaryContextClientSchema(0);
    v10 = *(*(v9 - 8) + 48);

    return v10(a1 + v8, a2, v9);
  }
}

uint64_t sub_1000495B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for IDSDictionaryContextData(0);
    v7 = *(a4 + 24);
    v8 = type metadata accessor for IDSDictionaryContextClientSchema(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(v5 + v7, a2, a2, v8);
  }

  return result;
}

uint64_t sub_100049664(uint64_t a1)
{
  result = type metadata accessor for IDSDictionaryContextData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000496FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSInvitationContextSchema(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000497D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IDSInvitationContextSchema(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10004988C(uint64_t a1)
{
  type metadata accessor for IDSInvitationContextSchema(319);
  if (v1 <= 0x3F)
  {
    sub_100049920();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100049920()
{
  if (!qword_1000D97C8)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D97C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for IDSDictionaryContextClientSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSDictionaryContextClientSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100049B6C()
{
  result = qword_1000D9800;
  if (!qword_1000D9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9800);
  }

  return result;
}

unint64_t sub_100049BC4()
{
  result = qword_1000D9808;
  if (!qword_1000D9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9808);
  }

  return result;
}

unint64_t sub_100049C1C()
{
  result = qword_1000D9810;
  if (!qword_1000D9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9810);
  }

  return result;
}

unint64_t sub_100049C74()
{
  result = qword_1000D9818;
  if (!qword_1000D9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9818);
  }

  return result;
}

unint64_t sub_100049CCC()
{
  result = qword_1000D9820;
  if (!qword_1000D9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9820);
  }

  return result;
}

unint64_t sub_100049D24()
{
  result = qword_1000D9828;
  if (!qword_1000D9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9828);
  }

  return result;
}

unint64_t sub_100049D7C()
{
  result = qword_1000D9830;
  if (!qword_1000D9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9830);
  }

  return result;
}

unint64_t sub_100049DD4()
{
  result = qword_1000D9838;
  if (!qword_1000D9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9838);
  }

  return result;
}

unint64_t sub_100049E2C()
{
  result = qword_1000D9840;
  if (!qword_1000D9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9840);
  }

  return result;
}

unint64_t sub_100049E84()
{
  result = qword_1000D9848;
  if (!qword_1000D9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9848);
  }

  return result;
}

unint64_t sub_100049EDC()
{
  result = qword_1000D9850;
  if (!qword_1000D9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9850);
  }

  return result;
}

unint64_t sub_100049F34()
{
  result = qword_1000D9858;
  if (!qword_1000D9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9858);
  }

  return result;
}

unint64_t sub_100049F8C()
{
  result = qword_1000D9860;
  if (!qword_1000D9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9860);
  }

  return result;
}

unint64_t sub_100049FE4()
{
  result = qword_1000D9868;
  if (!qword_1000D9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9868);
  }

  return result;
}

unint64_t sub_10004A03C()
{
  result = qword_1000D9870;
  if (!qword_1000D9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9870);
  }

  return result;
}

unint64_t sub_10004A094()
{
  result = qword_1000D9878;
  if (!qword_1000D9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9878);
  }

  return result;
}

unint64_t sub_10004A0EC()
{
  result = qword_1000D9880;
  if (!qword_1000D9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9880);
  }

  return result;
}

unint64_t sub_10004A144()
{
  result = qword_1000D9888;
  if (!qword_1000D9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9888);
  }

  return result;
}

unint64_t sub_10004A19C()
{
  result = qword_1000D9890;
  if (!qword_1000D9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9890);
  }

  return result;
}

unint64_t sub_10004A1F4()
{
  result = qword_1000D9898;
  if (!qword_1000D9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9898);
  }

  return result;
}

unint64_t sub_10004A24C()
{
  result = qword_1000D98A0;
  if (!qword_1000D98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98A0);
  }

  return result;
}

unint64_t sub_10004A2A4()
{
  result = qword_1000D98A8;
  if (!qword_1000D98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98A8);
  }

  return result;
}

unint64_t sub_10004A2FC()
{
  result = qword_1000D98B0;
  if (!qword_1000D98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98B0);
  }

  return result;
}

unint64_t sub_10004A354()
{
  result = qword_1000D98B8;
  if (!qword_1000D98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98B8);
  }

  return result;
}

unint64_t sub_10004A3AC()
{
  result = qword_1000D98C0;
  if (!qword_1000D98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98C0);
  }

  return result;
}

unint64_t sub_10004A404()
{
  result = qword_1000D98C8;
  if (!qword_1000D98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98C8);
  }

  return result;
}

unint64_t sub_10004A45C()
{
  result = qword_1000D98D0;
  if (!qword_1000D98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98D0);
  }

  return result;
}

unint64_t sub_10004A4B4()
{
  result = qword_1000D98D8;
  if (!qword_1000D98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98D8);
  }

  return result;
}

unint64_t sub_10004A50C()
{
  result = qword_1000D98E0;
  if (!qword_1000D98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98E0);
  }

  return result;
}

unint64_t sub_10004A564()
{
  result = qword_1000D98E8;
  if (!qword_1000D98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98E8);
  }

  return result;
}

unint64_t sub_10004A5BC()
{
  result = qword_1000D98F0;
  if (!qword_1000D98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98F0);
  }

  return result;
}

unint64_t sub_10004A614()
{
  result = qword_1000D98F8;
  if (!qword_1000D98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98F8);
  }

  return result;
}

unint64_t sub_10004A66C()
{
  result = qword_1000D9900;
  if (!qword_1000D9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9900);
  }

  return result;
}

uint64_t sub_10004A6C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001000A30C0 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A30E0 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000A3100 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A3120 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001000A3140 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000A3160 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1000A0BD0();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_10004A8C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CC098;
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

unint64_t sub_10004A90C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CC100;
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

unint64_t sub_10004A958()
{
  result = qword_1000D9908;
  if (!qword_1000D9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9908);
  }

  return result;
}

uint64_t sub_10004AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v26 = a4;
  v27 = a5;
  v24 = a1;
  v25 = a2;
  v5 = sub_10009F9D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000A0530();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v12 = sub_10009F4A0();
  if (v13)
  {
    v14 = sub_1000A0770();
    sub_100005764();
    v15 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000A63D0;
    v29 = sub_10009FCE0();
    LOBYTE(v30) = 0;
    v17 = sub_1000A0210();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10004C7CC();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_10009F380(v14, &_mh_execute_header, v15, "Invalid command ID %@", 21, 2, v16);

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1000A0850(21);

    v29 = 0xD000000000000013;
    v30 = 0x80000001000A31F0;
    v31 = sub_10009FCE0();
    v32._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v32);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v20 = v28;
    (*(v28 + 16))(v21, v11, v9);
    swift_willThrow();
    return (*(v20 + 8))(v11, v9);
  }

  else if (v12 == 244)
  {
    *v8 = 0;
    (*(v6 + 104))(v8, enum case for IDSClientMessageType.idsNiceAppAck(_:), v5);
    return sub_10009FC10();
  }

  else
  {
    return v27(v24, v25, v12);
  }
}

void *sub_10004AE5C@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v3 = sub_10009F9D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000A0530();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v10 = sub_10009F4A0();
  if (v11)
  {
    v12 = sub_1000A0770();
    sub_100005764();
    v13 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000A63D0;
    v25 = sub_10009FCE0();
    LOBYTE(v26) = 0;
    v15 = sub_1000A0210();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10004C7CC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_10009F380(v12, &_mh_execute_header, v13, "Invalid command ID %@", 21, 2, v14);

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1000A0850(21);

    v25 = 0xD000000000000013;
    v26 = 0x80000001000A31F0;
    v27 = sub_10009FCE0();
    v28._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v28);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v18 = v24;
    (*(v24 + 16))(v19, v9, v7);
    swift_willThrow();
    return (*(v18 + 8))(v9, v7);
  }

  else if (v10 == 243)
  {
    return sub_10007FF48(v22, v23);
  }

  else if (v10 == 244)
  {
    *v6 = 0;
    (*(v4 + 104))(v6, enum case for IDSClientMessageType.idsNiceAppAck(_:), v3);
    return sub_10009FC10();
  }

  else
  {
    return sub_100080408(v22, v23);
  }
}

uint64_t sub_10004B23C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_10009F7C0();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009F9D0();
  v31 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v29 - v9);
  v11 = sub_1000A0530();
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v15 = sub_10009F4A0();
  if (v16)
  {
    v17 = sub_1000A0770();
    sub_100005764();
    v18 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000A63D0;
    v35 = sub_10009FCE0();
    LOBYTE(v36) = 0;
    v20 = sub_1000A0210();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10004C7CC();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_10009F380(v17, &_mh_execute_header, v18, "Invalid command ID %@", 21, 2, v19);

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1000A0850(21);

    v35 = 0xD000000000000013;
    v36 = 0x80000001000A31F0;
    v37 = sub_10009FCE0();
    v38._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v38);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v23 = v33;
    swift_allocError();
    v24 = v34;
    (*(v34 + 16))(v25, v14, v23);
    swift_willThrow();
    return (*(v24 + 8))(v14, v23);
  }

  if (v15 == 244)
  {
    *v10 = 0;
    (*(v31 + 104))(v10, enum case for IDSClientMessageType.idsNiceAppAck(_:), v5);
    return sub_10009FC10();
  }

  if (v15 == 245)
  {
    (*(v30 + 104))(v4, enum case for ClientMessageType.restricted(_:), v2);
    result = sub_10009FA60();
    if (v1)
    {
      return result;
    }

    (*(v31 + 104))(v8, enum case for IDSClientMessageType.messageTypeRestricted(_:), v5);
    return sub_10009FC10();
  }

  v27 = v15;
  sub_1000021F4();
  swift_allocError();
  *v28 = v27;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_10004B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v23 = a2;
  v24 = a4;
  v22 = a1;
  v4 = sub_10009F9D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000A0530();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v11 = sub_10009F4A0();
  if (v12)
  {
    v13 = sub_1000A0770();
    sub_100005764();
    v14 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000A63D0;
    v26 = sub_10009FCE0();
    LOBYTE(v27) = 0;
    v16 = sub_1000A0210();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10004C7CC();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_10009F380(v13, &_mh_execute_header, v14, "Invalid command ID %@", 21, 2, v15);

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1000A0850(21);

    v26 = 0xD000000000000013;
    v27 = 0x80000001000A31F0;
    v28 = sub_10009FCE0();
    v29._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v29);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v19 = v25;
    (*(v25 + 16))(v20, v10, v8);
    swift_willThrow();
    return (*(v19 + 8))(v10, v8);
  }

  else if (v11 == 244)
  {
    *v7 = 0;
    (*(v5 + 104))(v7, enum case for IDSClientMessageType.idsNiceAppAck(_:), v4);
    return sub_10009FC10();
  }

  else
  {
    return v24(v22, v23);
  }
}

uint64_t sub_10004BB84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_10009F9D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000A0530();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v11 = sub_10009F4A0();
  if (v12)
  {
    v13 = sub_1000A0770();
    sub_100005764();
    v14 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000A63D0;
    v28 = sub_10009FCE0();
    LOBYTE(v29) = 0;
    v16 = sub_1000A0210();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10004C7CC();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_10009F380(v13, &_mh_execute_header, v14, "Invalid command ID %@", 21, 2, v15);

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1000A0850(21);

    v28 = 0xD000000000000013;
    v29 = 0x80000001000A31F0;
    v30 = sub_10009FCE0();
    v31._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v31);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v19 = v27;
    (*(v27 + 16))(v20, v10, v8);
    swift_willThrow();
    return (*(v19 + 8))(v10, v8);
  }

  else if (v11 == 243)
  {
    return sub_1000697E4(a1, v25, v26);
  }

  else if (v11 == 244)
  {
    *v7 = 0;
    (*(v5 + 104))(v7, enum case for IDSClientMessageType.idsNiceAppAck(_:), v4);
    return sub_10009FC10();
  }

  else
  {
    v22 = v11;
    sub_1000021F4();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10004C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v11 = sub_10009F800();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009F790();
  v47 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
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
        v31 = v60;
        result = sub_10007FC60(v56, v57);
        if (!v31)
        {
          v32 = v47;
          v33 = v54;
          (*(v47 + 16))(v54, v15, v13);
          (*(v52 + 104))(v33, enum case for IDSClientMessageType.sessionCancel(_:), v53);
          sub_10009FC10();
          return (*(v32 + 8))(v15, v13);
        }

        break;
      case 237:
LABEL_11:
        sub_10009F270();
        swift_allocObject();
        sub_10009F260();
        sub_100038CC8();
        v28 = v60;
        sub_10009F250();
        if (v28)
        {
        }

        v38 = v58;
        v39 = v59;

        sub_100005750(v38, v39);
        sub_10009F7F0();

        sub_1000057B0(v38, v39);
        v41 = v45;
        v40 = v46;
        v42 = v54;
        v43 = v51;
        (*(v45 + 16))(v54, v51, v46);
        (*(v52 + 104))(v42, enum case for IDSClientMessageType.sessionDecline(_:), v53);
        sub_10009FC10();
        return (*(v41 + 8))(v43, v40);
      case 238:
        v23 = v60;
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
        v29 = v60;
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
        v35 = v60;
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

unint64_t sub_10004C750(uint64_t a1)
{
  result = sub_10004C778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004C778()
{
  result = qword_1000D9910;
  if (!qword_1000D9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9910);
  }

  return result;
}

unint64_t sub_10004C7CC()
{
  result = qword_1000D9920;
  if (!qword_1000D9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9920);
  }

  return result;
}

uint64_t IDSMadridProtocolPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9928, &unk_1000AC240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_10004ED60();
  sub_1000A0CE0();
  LOBYTE(v26) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    LOBYTE(v26) = 1;
    sub_1000A0AB0();
    LOBYTE(v26) = 2;
    sub_1000A0AB0();
    v68 = *(v3 + 40);
    v26 = *(v3 + 40);
    LOBYTE(v23) = 3;
    sub_100005620(&v68, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    v67 = *(v3 + 56);
    v26 = *(v3 + 56);
    LOBYTE(v23) = 4;
    sub_100005620(&v67, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    v66 = *(v3 + 72);
    v26 = *(v3 + 72);
    LOBYTE(v23) = 5;
    sub_100005620(&v66, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    v65 = *(v3 + 88);
    v26 = *(v3 + 88);
    LOBYTE(v23) = 6;
    sub_100005620(&v65, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    v64 = *(v3 + 104);
    v26 = *(v3 + 104);
    LOBYTE(v23) = 7;
    sub_100005620(&v64, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 8;
    sub_1000A0A80();
    v63 = *(v3 + 136);
    v26 = *(v3 + 136);
    LOBYTE(v23) = 9;
    sub_100005620(&v63, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 10;
    sub_1000A0A80();
    LOBYTE(v26) = 11;
    sub_1000A0A90();
    *&v26 = *(v3 + 176);
    WORD4(v26) = *(v3 + 184);
    LOBYTE(v24[0]) = 12;
    sub_10004EDB4();
    sub_1000A0AD0();
    LOBYTE(v26) = 13;
    sub_1000A0AB0();
    v62 = *(v3 + 208);
    v26 = *(v3 + 208);
    LOBYTE(v23) = 14;
    sub_100005620(&v62, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 15;
    sub_1000A0A90();
    LOBYTE(v26) = 16;
    sub_1000A0A90();
    v61 = *(v3 + 232);
    v26 = *(v3 + 232);
    LOBYTE(v23) = 17;
    sub_100005620(&v61, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    v60 = *(v3 + 248);
    v26 = *(v3 + 248);
    LOBYTE(v23) = 18;
    sub_100005620(&v60, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 19;
    sub_1000A0A80();
    LOBYTE(v26) = 20;
    sub_1000A0A80();
    LOBYTE(v26) = 21;
    sub_1000A0A80();
    v59 = *(v3 + 312);
    v26 = *(v3 + 312);
    LOBYTE(v23) = 22;
    sub_100005620(&v59, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 23;
    sub_1000A0AE0();
    LOBYTE(v26) = 24;
    sub_1000A0A80();
    LOBYTE(v26) = 25;
    sub_1000A0A80();
    LOBYTE(v26) = 26;
    sub_1000A0A80();
    *&v26 = *(v3 + 392);
    LOBYTE(v24[0]) = 27;
    v10 = sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    v11 = sub_1000612BC(&qword_1000D9948, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v69 = v10;
    v20 = v11;
    sub_1000A0AD0();
    *&v26 = *(v3 + 400);
    LOBYTE(v24[0]) = 28;
    sub_1000A0AD0();
    LOBYTE(v26) = 29;
    sub_1000A0A80();
    LOBYTE(v26) = 30;
    sub_1000A0A80();
    LOBYTE(v26) = 31;
    sub_1000A0AE0();
    LOBYTE(v26) = 32;
    sub_1000A0AB0();
    LOBYTE(v26) = 33;
    sub_1000A0A80();
    v58 = *(v3 + 488);
    v26 = *(v3 + 488);
    LOBYTE(v23) = 34;
    sub_100005620(&v58, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    v57 = *(v3 + 504);
    v26 = *(v3 + 504);
    LOBYTE(v23) = 35;
    sub_100005620(&v57, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 36;
    sub_1000A0AB0();
    v56 = *(v3 + 536);
    v26 = *(v3 + 536);
    LOBYTE(v23) = 37;
    sub_100005620(&v56, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 38;
    sub_1000A0A80();
    LOBYTE(v26) = 39;
    sub_1000A0A80();
    LOBYTE(v26) = 40;
    sub_1000A0A80();
    LOBYTE(v26) = 41;
    sub_1000A0AB0();
    LOBYTE(v26) = 42;
    sub_1000A0AE0();
    LOBYTE(v26) = 43;
    sub_1000A0AE0();
    LOBYTE(v26) = 44;
    sub_1000A0AB0();
    v55 = *(v3 + 664);
    v26 = *(v3 + 664);
    LOBYTE(v23) = 45;
    sub_100005620(&v55, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 46;
    sub_1000A0A80();
    LOBYTE(v26) = 47;
    sub_1000A0AB0();
    LOBYTE(v26) = 48;
    sub_1000A0AB0();
    LOBYTE(v26) = 49;
    sub_1000A0A80();
    LOBYTE(v26) = 50;
    sub_1000A0AE0();
    LOBYTE(v26) = 51;
    sub_1000A0A80();
    LOBYTE(v26) = 52;
    sub_1000A0AB0();
    LOBYTE(v26) = 53;
    sub_1000A0AB0();
    LOBYTE(v26) = 54;
    sub_1000A0AB0();
    *&v26 = *(v3 + 824);
    LOBYTE(v24[0]) = 55;
    v12 = sub_1000017BC(&qword_1000D9950, &qword_1000AC258);
    v13 = sub_10004EE08();
    v69 = v12;
    v20 = v13;
    sub_1000A0AD0();
    *&v26 = *(v3 + 832);
    LOBYTE(v24[0]) = 56;
    sub_1000A0AD0();
    LOBYTE(v26) = 57;
    sub_1000A0AB0();
    LOBYTE(v26) = 58;
    sub_1000A0AE0();
    LOBYTE(v26) = 59;
    sub_1000A0AB0();
    LOBYTE(v26) = 60;
    sub_1000A0A90();
    LOBYTE(v26) = 61;
    sub_1000A0A90();
    LOBYTE(v26) = 62;
    sub_1000A0A90();
    LOBYTE(v26) = 63;
    sub_1000A0A90();
    LOBYTE(v26) = 64;
    sub_1000A0A80();
    LOBYTE(v26) = 65;
    sub_1000A0A80();
    v54 = *(v3 + 920);
    v26 = *(v3 + 920);
    LOBYTE(v23) = 66;
    sub_100005620(&v54, v24, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v26, *(&v26 + 1));
    LOBYTE(v26) = 67;
    sub_1000A0A80();
    LOBYTE(v26) = 68;
    sub_1000A0A80();
    LOBYTE(v26) = 69;
    sub_1000A0A80();
    LOBYTE(v26) = 70;
    sub_1000A0A80();
    LOBYTE(v26) = 71;
    sub_1000A0A80();
    LOBYTE(v26) = 72;
    sub_1000A0AB0();
    LOBYTE(v26) = 73;
    sub_1000A0A80();
    LOBYTE(v26) = 74;
    sub_1000A0AB0();
    LOBYTE(v26) = 75;
    sub_1000A0A80();
    LOBYTE(v26) = 76;
    sub_1000A0AB0();
    LOBYTE(v26) = 77;
    sub_1000A0A90();
    LOBYTE(v26) = 78;
    sub_1000A0A80();
    LOBYTE(v26) = 79;
    sub_1000A0AB0();
    LOBYTE(v26) = 80;
    sub_1000A0AB0();
    LOBYTE(v26) = 81;
    sub_1000A0A80();
    v14 = *(v3 + 1208);
    v15 = *(v3 + 1176);
    v50 = *(v3 + 1192);
    v51 = v14;
    v16 = *(v3 + 1208);
    v17 = *(v3 + 1240);
    v52 = *(v3 + 1224);
    v53 = v17;
    v18 = *(v3 + 1176);
    v49[0] = *(v3 + 1160);
    v49[1] = v18;
    v28 = v50;
    v29 = v16;
    v19 = *(v3 + 1240);
    v30 = v52;
    v31 = v19;
    v26 = v49[0];
    v27 = v15;
    v25 = 82;
    sub_100005620(v49, v24, &qword_1000D9968, &qword_1000AC260);
    sub_10004EEE0();
    sub_1000A0AD0();
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    sub_10004EF34(v24);
    v48 = *(v3 + 1256);
    v23 = *(v3 + 1256);
    v22 = 83;
    sub_100005620(&v48, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 84;
    sub_1000A0A80();
    v47 = *(v3 + 1288);
    v23 = *(v3 + 1288);
    v22 = 85;
    sub_100005620(&v47, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 86;
    sub_1000A0AB0();
    LOBYTE(v23) = 87;
    sub_1000A0A80();
    LOBYTE(v23) = 88;
    sub_1000A0A90();
    LOBYTE(v23) = 89;
    sub_1000A0A90();
    LOBYTE(v23) = 90;
    sub_1000A0A90();
    LOBYTE(v23) = 91;
    sub_1000A0AB0();
    LOBYTE(v23) = 92;
    sub_1000A0A80();
    v46 = *(v3 + 1376);
    v23 = *(v3 + 1376);
    v22 = 93;
    sub_100005620(&v46, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    v45 = *(v3 + 1392);
    v23 = *(v3 + 1392);
    v22 = 94;
    sub_100005620(&v45, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 95;
    sub_1000A0AB0();
    LOBYTE(v23) = 96;
    sub_1000A0A90();
    LOBYTE(v23) = 97;
    sub_1000A0A90();
    LOBYTE(v23) = 98;
    sub_1000A0AB0();
    LOBYTE(v23) = 99;
    sub_1000A0AB0();
    LOBYTE(v23) = 100;
    sub_1000A0A90();
    LOBYTE(v23) = 101;
    sub_1000A0AB0();
    LOBYTE(v23) = 102;
    sub_1000A0AB0();
    LOBYTE(v23) = 103;
    sub_1000A0A80();
    LOBYTE(v23) = 104;
    sub_1000A0AB0();
    LOBYTE(v23) = 105;
    sub_1000A0AB0();
    v44 = *(v3 + 1536);
    v23 = *(v3 + 1536);
    v22 = 106;
    sub_100005620(&v44, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    v43 = *(v3 + 1552);
    v23 = *(v3 + 1552);
    v22 = 107;
    sub_100005620(&v43, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 108;
    sub_1000A0AB0();
    v42 = *(v3 + 1584);
    v23 = *(v3 + 1584);
    v22 = 109;
    sub_100005620(&v42, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    v41 = *(v3 + 1600);
    v23 = *(v3 + 1600);
    v22 = 110;
    sub_100005620(&v41, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 111;
    sub_1000A0AB0();
    LOBYTE(v23) = 112;
    sub_1000A0AB0();
    *&v23 = *(v3 + 1648);
    v21[0] = 113;
    sub_1000017BC(&qword_1000D9978, &qword_1000AC268);
    sub_10004EF9C();
    sub_1000A0AD0();
    LOBYTE(v23) = 114;
    sub_1000A0A80();
    LOBYTE(v23) = 115;
    sub_1000A0A80();
    LOBYTE(v23) = 116;
    sub_1000A0AB0();
    LOBYTE(v23) = 117;
    sub_1000A0A90();
    LOBYTE(v23) = 118;
    sub_1000A0A90();
    LOBYTE(v23) = 119;
    sub_1000A0AB0();
    v40 = *(v3 + 1720);
    v23 = *(v3 + 1720);
    v22 = 120;
    sub_100005620(&v40, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 121;
    sub_1000A0AB0();
    LOBYTE(v23) = 122;
    sub_1000A0A90();
    LOBYTE(v23) = 123;
    sub_1000A0A80();
    LOBYTE(v23) = 124;
    sub_1000A0AB0();
    LOBYTE(v23) = 125;
    sub_1000A0AB0();
    v39 = *(v3 + 1800);
    v23 = *(v3 + 1800);
    v22 = 126;
    sub_100005620(&v39, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    v38 = *(v3 + 1816);
    v23 = *(v3 + 1816);
    v22 = 127;
    sub_100005620(&v38, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = 0x80;
    sub_1000A0AB0();
    v37 = *(v3 + 1848);
    v23 = *(v3 + 1848);
    v22 = -127;
    sub_100005620(&v37, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    v36 = *(v3 + 1864);
    v23 = *(v3 + 1864);
    v22 = -126;
    sub_100005620(&v36, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    v35 = *(v3 + 1880);
    v23 = *(v3 + 1880);
    v22 = -125;
    sub_100005620(&v35, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = -124;
    sub_1000A0AE0();
    v34 = *(v3 + 1912);
    v23 = *(v3 + 1912);
    v22 = -123;
    sub_100005620(&v34, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = -122;
    sub_1000A0B20();
    v33 = *(v3 + 1944);
    v23 = *(v3 + 1944);
    v22 = -121;
    sub_100005620(&v33, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = -120;
    sub_1000A0A80();
    LOBYTE(v23) = -119;
    sub_1000A0AB0();
    LOBYTE(v23) = -118;
    sub_1000A0AB0();
    LOBYTE(v23) = -117;
    sub_1000A0AE0();
    LOBYTE(v23) = -116;
    sub_1000A0AB0();
    *&v23 = *(v3 + 2040);
    v21[0] = -115;
    sub_1000017BC(&qword_1000D9990, &qword_1000AC270);
    sub_10004F074();
    sub_1000A0AD0();
    *&v23 = *(v3 + 2048);
    v21[0] = -114;
    sub_1000017BC(&qword_1000D99A8, &qword_1000AC278);
    sub_10004F14C();
    sub_1000A0AD0();
    v32 = *(v3 + 2056);
    v23 = *(v3 + 2056);
    v22 = -113;
    sub_100005620(&v32, v21, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v23, *(&v23 + 1));
    LOBYTE(v23) = -112;
    sub_1000A0AB0();
    *&v23 = *(v3 + 2088);
    v21[0] = -111;
    sub_1000017BC(&qword_1000D99C0, &qword_1000AC280);
    sub_10004F224();
    sub_1000A0AD0();
    LOBYTE(v23) = -110;
    sub_1000A0AB0();
    LOBYTE(v23) = -109;
    sub_1000A0AB0();
    LOBYTE(v23) = -108;
    sub_1000A0A90();
    LOBYTE(v23) = -107;
    sub_1000A0A90();
    LOBYTE(v23) = -106;
    sub_1000A0A80();
    LOBYTE(v23) = -105;
    sub_1000A0A90();
    LOBYTE(v23) = -104;
    sub_1000A0AB0();
    LOBYTE(v23) = -103;
    sub_1000A0AB0();
    LOBYTE(v23) = -102;
    sub_1000A0A90();
    LOBYTE(v23) = -101;
    sub_1000A0A90();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10004ED60()
{
  result = qword_1000D9930;
  if (!qword_1000D9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9930);
  }

  return result;
}

unint64_t sub_10004EDB4()
{
  result = qword_1000D9938;
  if (!qword_1000D9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9938);
  }

  return result;
}

unint64_t sub_10004EE08()
{
  result = qword_1000D9958;
  if (!qword_1000D9958)
  {
    sub_1000053DC(&qword_1000D9950, &qword_1000AC258);
    sub_10004EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9958);
  }

  return result;
}

unint64_t sub_10004EE8C()
{
  result = qword_1000D9960;
  if (!qword_1000D9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9960);
  }

  return result;
}

unint64_t sub_10004EEE0()
{
  result = qword_1000D9970;
  if (!qword_1000D9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9970);
  }

  return result;
}

uint64_t sub_10004EF34(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D9968, &qword_1000AC260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004EF9C()
{
  result = qword_1000D9980;
  if (!qword_1000D9980)
  {
    sub_1000053DC(&qword_1000D9978, &qword_1000AC268);
    sub_10004F020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9980);
  }

  return result;
}

unint64_t sub_10004F020()
{
  result = qword_1000D9988;
  if (!qword_1000D9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9988);
  }

  return result;
}

unint64_t sub_10004F074()
{
  result = qword_1000D9998;
  if (!qword_1000D9998)
  {
    sub_1000053DC(&qword_1000D9990, &qword_1000AC270);
    sub_10004F0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9998);
  }

  return result;
}

unint64_t sub_10004F0F8()
{
  result = qword_1000D99A0;
  if (!qword_1000D99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99A0);
  }

  return result;
}

unint64_t sub_10004F14C()
{
  result = qword_1000D99B0;
  if (!qword_1000D99B0)
  {
    sub_1000053DC(&qword_1000D99A8, &qword_1000AC278);
    sub_10004F1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99B0);
  }

  return result;
}

unint64_t sub_10004F1D0()
{
  result = qword_1000D99B8;
  if (!qword_1000D99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99B8);
  }

  return result;
}

unint64_t sub_10004F224()
{
  result = qword_1000D99C8;
  if (!qword_1000D99C8)
  {
    sub_1000053DC(&qword_1000D99C0, &qword_1000AC280);
    sub_10004F2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99C8);
  }

  return result;
}

unint64_t sub_10004F2A8()
{
  result = qword_1000D99D0;
  if (!qword_1000D99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99D0);
  }

  return result;
}

void *IDSMadridProtocolPayload.init(from:)@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1000525F0(a2);
  if (!v2)
  {
    return memcpy(a1, __src, 0x883uLL);
  }

  return result;
}

uint64_t sub_10004F348(char a1)
{
  result = 99;
  switch(a1)
  {
    case 1:
      return 25443;
    case 2:
      return 118;
    case 3:
      return 80;
    case 4:
      return 78;
    case 5:
      return 20582;
    case 6:
      return 20577;
    case 7:
      return 27984;
    case 8:
      return 105;
    case 9:
      return 85;
    case 10:
      return 18801;
    case 11:
      return 68;
    case 12:
      return 25412;
    case 13:
      return 7758947;
    case 14:
      return 7496803;
    case 15:
      return 29294;
    case 16:
      return 25703;
    case 17:
      return 21619;
    case 18:
      return 21608;
    case 19:
      return 20596;
    case 20:
      return 24949;
    case 21:
      return 20333;
    case 22:
      return 21357;
    case 23:
      return 19565;
    case 24:
      return 16749;
    case 25:
      return 21101;
    case 26:
      return 21869;
    case 27:
      return 7102820;
    case 28:
      return 7107940;
    case 29:
      return 21092;
    case 30:
      return 21109;
    case 31:
      return 22637;
    case 32:
      return 22115;
    case 33:
      return 18531;
    case 34:
      return 16995;
    case 35:
      return 21091;
    case 36:
      return 21613;
    case 37:
      return 116;
    case 38:
      return 20595;
    case 39:
      return 18803;
    case 40:
      return 20589;
    case 41:
      return 115;
    case 42:
      return 101;
    case 43:
      return 25967;
    case 44:
      return 21094;
    case 45:
      return 21862;
    case 46:
      return 19814;
    case 47:
      return 5457510;
    case 48:
      return 21350;
    case 49:
      return 5067366;
    case 50:
      return 4543590;
    case 51:
      return 69;
    case 52:
      return 72;
    case 53:
      return 6910576;
    case 54:
      return 7037793;
    case 55:
      return 7107684;
    case 56:
      v4 = 3081;
      v5 = 7102820;
      goto LABEL_157;
    case 57:
      return 7758707;
    case 58:
      return 22629;
    case 59:
      return 28792;
    case 60:
      return 0x6E7265746E692D78;
    case 61:
      return 0x6E6967676F6C2D78;
    case 62:
      return 0x65636172742D78;
    case 63:
      return 28007;
    case 64:
      return 21603;
    case 65:
      return 21345;
    case 66:
      return 18802;
    case 67:
      return 26994;
    case 68:
      return 0xD000000000000019;
    case 69:
      return 0x6172742D33622D78;
    case 70:
      return 26739;
    case 71:
      return 29537;
    case 72:
      return 17512;
    case 73:
      return 18792;
    case 74:
      return 25458;
    case 75:
      return 0x6F2D747365742D78;
    case 76:
      return 7234406;
    case 77:
      return 6515814;
    case 78:
      return 7107189;
    case 79:
      return 6517350;
    case 80:
      return 22135;
    case 81:
      return 117;
    case 82:
      return 104;
    case 83:
      return 98;
    case 84:
      return 30050;
    case 85:
      return 27490;
    case 86:
      return 29544;
    case 87:
      return 29288;
    case 88:
      return 27491;
    case 89:
      return 0x6D69737365702D78;
    case 90:
      return 18542;
    case 91:
      return 79;
    case 92:
      return 1769108835;
    case 93:
      return 7631731;
    case 94:
      return 18545;
    case 95:
      return 1885613432;
    case 96:
      return 3240053;
    case 97:
      return 0xD000000000000010;
    case 98:
      return 7697521;
    case 99:
      return 17253;
    case 100:
      return 25453;
    case 101:
      return 26979;
    case 102:
      return 30321;
    case 103:
      return 6906225;
    case 104:
      return 29297;
    case 105:
      return 1667592305;
    case 106:
      v3 = 1952538993;
      goto LABEL_66;
    case 107:
      v3 = 1885954417;
LABEL_66:
      result = v3 + 3840;
      break;
    case 108:
      result = 7630961;
      break;
    case 109:
      result = 1952538993;
      break;
    case 110:
      result = 1885954417;
      break;
    case 111:
      result = 0x6374617371;
      break;
    case 112:
      result = 0x7374617371;
      break;
    case 113:
      result = 1919709297;
      break;
    case 114:
      result = 1852600433;
      break;
    case 115:
      result = 1668051057;
      break;
    case 116:
      result = 1936486513;
      break;
    case 117:
      result = 1684828273;
      break;
    case 118:
      result = 7564913;
      break;
    case 119:
      result = 7627121;
      break;
    case 120:
      result = 1935960433;
      break;
    case 121:
      result = 1919971953;
      break;
    case 122:
      result = 1936945777;
      break;
    case 123:
      result = 1684629361;
      break;
    case 124:
      result = 1668114289;
      break;
    case 125:
      result = 6383985;
      break;
    case 126:
      result = 1885958769;
      break;
    case 127:
      result = 0x3670697271;
      break;
    case -128:
      result = 7369329;
      break;
    case -127:
      result = 1953722993;
      break;
    case -126:
      result = 1802728049;
      break;
    case -125:
      result = 1769173617;
      break;
    case -124:
      result = 25969;
      break;
    case -123:
      v4 = 257;
      v5 = 6910576;
LABEL_157:
      result = v5 | v4;
      break;
    case -122:
      result = 6910577;
      break;
    case -121:
      result = 1987539825;
      break;
    case -120:
      result = 1986163313;
      break;
    case -119:
      result = 0x7070687271;
      break;
    case -118:
      result = 1886415217;
      break;
    case -117:
      result = 1952543601;
      break;
    case -116:
      result = 7565937;
      break;
    case -115:
      result = 7102833;
      break;
    case -114:
      result = 0x7674617371;
      break;
    case -113:
      result = 1885696625;
      break;
    case -112:
      result = 0x7473617271;
      break;
    case -111:
      result = 1634496625;
      break;
    case -110:
      result = 6514033;
      break;
    case -109:
      result = 17263;
      break;
    case -108:
      result = 17001;
      break;
    case -107:
      result = 16759;
      break;
    case -106:
      result = 17509;
      break;
    case -105:
      result = 21093;
      break;
    case -104:
      result = 7496807;
      break;
    case -103:
      result = 28019;
      break;
    case -102:
      result = 7697512;
      break;
    case -101:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004FF08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10004F348(*a1);
  v5 = v4;
  if (v3 == sub_10004F348(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10004FF90()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10004F348(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10004FFF4(uint64_t a1)
{
  sub_10004F348(*v1);
  sub_1000A05B0();
}

Swift::Int sub_100050048(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_10004F348(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000500A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005E1DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000500D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005010C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005E1DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100050140(uint64_t a1)
{
  v2 = sub_10004ED60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005017C(uint64_t a1)
{
  v2 = sub_10004ED60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000501CC(uint64_t a1)
{
  sub_1000A05B0();
}

unint64_t sub_1000502A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005E85C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000502D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 21345;
  v5 = 0xEC00000064696563;
  v6 = 0x6172742D33622D78;
  v7 = 26739;
  if (v2 != 4)
  {
    v7 = 29537;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 26994;
  if (v2 != 1)
  {
    v9 = 0xD000000000000019;
    v8 = 0x80000001000A2290;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10005036C()
{
  v1 = *v0;
  v2 = 21345;
  v3 = 0x6172742D33622D78;
  v4 = 26739;
  if (v1 != 4)
  {
    v4 = 29537;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 26994;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

unint64_t sub_100050404@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005E85C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005042C(uint64_t a1)
{
  v2 = sub_10005E188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050468(uint64_t a1)
{
  v2 = sub_10005E188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSMadridProtocolHttpHeaders.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D99D8, &qword_1000AC288);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10005E188();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0A80();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000A0A80();
  v8[13] = 2;
  sub_1000A0A80();
  v8[12] = 3;
  sub_1000A0A80();
  v8[11] = 4;
  sub_1000A0A80();
  v8[10] = 5;
  sub_1000A0A80();
  return (*(v4 + 8))(v6, v3);
}

double IDSMadridProtocolHttpHeaders.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005E8A8(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

Swift::Int sub_100050708()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10005075C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_1000507A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD0F0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100050810@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD128;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100050868(uint64_t a1)
{
  v2 = sub_10005ED44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000508A4(uint64_t a1)
{
  v2 = sub_10005ED44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSMadridProtocolDeliveryContext.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v4 = sub_1000017BC(&qword_1000D99E8, &qword_1000AC290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CE0();
  sub_1000A0AB0();
  return (*(v5 + 8))(v7, v4);
}

void *IDSMadridProtocolDeliveryContext.init(from:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D99F8, &qword_1000AC298);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CD0();
  if (!v1)
  {
    v7 = sub_1000A0950();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002308(a1);
  return v7;
}

uint64_t sub_100050B94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D99F8, &qword_1000AC298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v9 = sub_1000A0950();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100002308(a1);
  *a2 = v9;
  *(a2 + 8) = v11 & 1;
  return result;
}

uint64_t sub_100050D18(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D99E8, &qword_1000AC290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CE0();
  sub_1000A0AB0();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_100050E64()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100050EC0(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100050F00(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100050F58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005EDEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100050FBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005EDEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100050FE4(uint64_t a1)
{
  v2 = sub_10005ED98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051020(uint64_t a1)
{
  v2 = sub_10005ED98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelayPluginRequest.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9A00, &qword_1000AC2A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10005ED98();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0A80();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000A0A80();
  v8[13] = 2;
  sub_1000A0AB0();
  v8[12] = 3;
  sub_1000A0A90();
  return (*(v4 + 8))(v6, v3);
}

double IDSQuickRelayPluginRequest.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005EE38(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 10);
    *(a1 + 26) = *(v7 + 10);
  }

  return result;
}

Swift::Int sub_100051288()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100051320(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_1000513A4(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100051438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F114(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100051468(uint64_t *a1@<X8>)
{
  v2 = 6910577;
  v3 = 0xE100000000000000;
  v4 = 116;
  if (*v1 != 2)
  {
    v4 = 20596;
    v3 = 0xE200000000000000;
  }

  if (*v1)
  {
    v2 = 7565937;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v2 = v4;
    v5 = v3;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_1000514BC()
{
  v1 = 6910577;
  v2 = 116;
  if (*v0 != 2)
  {
    v2 = 20596;
  }

  if (*v0)
  {
    v1 = 7565937;
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

unint64_t sub_10005150C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100051534(uint64_t a1)
{
  v2 = sub_10005F0C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051570(uint64_t a1)
{
  v2 = sub_10005F0C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelayAllocationStatus.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A10, &qword_1000AC2A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_10005F0C0();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B20();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000A0AB0();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_100005620(&v13, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v12, *(&v12 + 1));
    LOBYTE(v12) = 3;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v8, v5);
}

double IDSQuickRelayAllocationStatus.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005F160(a2, v7);
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

uint64_t sub_10005181C(uint64_t a1)
{
  sub_1000A05B0();
}

unint64_t sub_1000518FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F470(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10005192C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1885958769;
  v5 = 1953722993;
  if (v2 != 5)
  {
    v5 = 1919971953;
  }

  v6 = 1802728049;
  if (v2 != 3)
  {
    v6 = 1769173617;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
  }

  v7 = 0xE500000000000000;
  v8 = 0x3670697271;
  if (v2 != 1)
  {
    v8 = 7369329;
    v7 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000519D4()
{
  v1 = *v0;
  v2 = 1885958769;
  v3 = 1953722993;
  if (v1 != 5)
  {
    v3 = 1919971953;
  }

  v4 = 1802728049;
  if (v1 != 3)
  {
    v4 = 1769173617;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x3670697271;
  if (v1 != 1)
  {
    v5 = 7369329;
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

unint64_t sub_100051A78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100051AA0(uint64_t a1)
{
  v2 = sub_10005F41C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051ADC(uint64_t a1)
{
  v2 = sub_10005F41C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelaySelfAllocToken.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A20, &qword_1000AC2B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_10005F41C();
  sub_1000A0CE0();
  v18 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100005620(&v18, v11, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (v2)
  {
    sub_1000057B0(v13, *(&v13 + 1));
  }

  else
  {
    sub_1000057B0(v13, *(&v13 + 1));
    v17 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100005620(&v17, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_1000A0AB0();
    v16 = v3[3];
    v13 = v3[3];
    v12 = 3;
    sub_100005620(&v16, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v15 = v3[4];
    v13 = v3[4];
    v12 = 4;
    sub_100005620(&v15, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v13 = v3[5];
    v14 = v13;
    v12 = 5;
    sub_100005620(&v14, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 6;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 IDSQuickRelaySelfAllocToken.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10005F4BC(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

Swift::Int sub_100051F14()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100051FD0(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100052078(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100052130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FBA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100052160(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852600433;
  v5 = 0xE300000000000000;
  v6 = 6910577;
  v7 = 1802728049;
  if (v2 != 3)
  {
    v7 = 1953722993;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1936486513;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000521D8()
{
  v1 = *v0;
  v2 = 1852600433;
  v3 = 6910577;
  v4 = 1802728049;
  if (v1 != 3)
  {
    v4 = 1953722993;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1936486513;
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

unint64_t sub_10005224C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005FBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100052274(uint64_t a1)
{
  v2 = sub_10005FB54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000522B0(uint64_t a1)
{
  v2 = sub_10005FB54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelayPluginAllocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A30, &qword_1000AC2B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_10005FB54();
  sub_1000A0CE0();
  LOBYTE(v13) = 0;
  sub_1000A0A80();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000A0AB0();
    LOBYTE(v13) = 2;
    sub_1000A0B20();
    v15 = *(v3 + 48);
    v13 = *(v3 + 48);
    v12 = 3;
    sub_100005620(&v15, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    v13 = *(v3 + 64);
    v14 = v13;
    v12 = 4;
    sub_100005620(&v14, v11, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 IDSQuickRelayPluginAllocation.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10005FBF4(a2, v6);
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

void *sub_1000525F0(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_1000017BC(&qword_1000D9B10, &unk_1000AE818);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v125 - v7;
  v9 = v2[3];
  v332 = v2;
  sub_1000022C4(v2, v9);
  sub_10004ED60();
  sub_1000A0CD0();
  if (v1)
  {
    v805 = v1;
LABEL_5:
    LODWORD(v271) = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v266 = 0;
    LODWORD(v267) = 0;
    LODWORD(v270) = 0;
    v268 = 0;
    LODWORD(v269) = 0;
    LODWORD(v272) = 0;
    LODWORD(v273) = 0;
    LODWORD(v274) = 0;
    v276 = 0;
    LODWORD(v278) = 0;
    LODWORD(v275) = 0;
    LODWORD(v277) = 0;
    LODWORD(v279) = 0;
    LODWORD(v280) = 0;
    LODWORD(v282) = 0;
    LODWORD(v284) = 0;
    LODWORD(v285) = 0;
    LODWORD(v283) = 0;
    LODWORD(v281) = 0;
    LODWORD(v286) = 0;
    LODWORD(v287) = 0;
    LODWORD(v288) = 0;
    v289 = 0;
    v290 = 0;
    LODWORD(v291) = 0;
    LODWORD(v292) = 0;
    LODWORD(v293) = 0;
    LODWORD(v294) = 0;
    LODWORD(v295) = 0;
    LODWORD(v296) = 0;
    LODWORD(v297) = 0;
    LODWORD(v298) = 0;
    LODWORD(v299) = 0;
    LODWORD(v300) = 0;
    LODWORD(v301) = 0;
    LODWORD(v302) = 0;
    LODWORD(v303) = 0;
    LODWORD(v304) = 0;
    LODWORD(v305) = 0;
    LODWORD(v306) = 0;
    LODWORD(v307) = 0;
    LODWORD(v308) = 0;
    LODWORD(v309) = 0;
    LODWORD(v310) = 0;
    LODWORD(v311) = 0;
    LODWORD(v312) = 0;
    LODWORD(v313) = 0;
    LODWORD(v314) = 0;
    LODWORD(v315) = 0;
    LODWORD(v316) = 0;
    LODWORD(v317) = 0;
    LODWORD(v318) = 0;
    LODWORD(v319) = 0;
    LODWORD(v320) = 0;
    LODWORD(v321) = 0;
    LODWORD(v322) = 0;
    v323 = 0;
    LODWORD(v324) = 0;
    v325 = 0;
    LODWORD(v326) = 0;
    v327 = 0;
    LODWORD(v328) = 0;
    LODWORD(v329) = 0;
    LODWORD(v330) = 0;
    LODWORD(v331) = 0;
    goto LABEL_6;
  }

  v10 = v4;
  LOBYTE(v334) = 0;
  v11 = sub_1000A0A00();
  LOBYTE(v334) = 1;
  v21 = sub_1000A0950();
  v804 = v22 & 1;
  LOBYTE(v334) = 2;
  v23 = sub_1000A0950();
  v805 = 0;
  v331 = v23;
  v802 = v24 & 1;
  v333[0] = 3;
  v25 = sub_100005424();
  v26 = v805;
  sub_1000A0970();
  if (v26)
  {
    v805 = v26;
    (*(v6 + 8))(v8, v5);
    goto LABEL_5;
  }

  v265 = v334;
  v333[0] = 4;
  sub_1000A0970();
  v264 = v334;
  v333[0] = 5;
  sub_1000A0970();
  v263 = v334;
  v333[0] = 6;
  sub_1000A0970();
  v262 = v334;
  v333[0] = 7;
  v330 = v25;
  sub_1000A0970();
  v261 = v334;
  LOBYTE(v334) = 8;
  v329 = sub_1000A0920();
  v260 = v27;
  v805 = 0;
  v333[0] = 9;
  sub_1000A0970();
  v805 = 0;
  v259 = v334;
  LOBYTE(v334) = 10;
  v328 = sub_1000A0920();
  v258 = v28;
  v805 = 0;
  LOBYTE(v334) = 11;
  v327 = sub_1000A0930();
  v805 = 0;
  v333[0] = 12;
  sub_100061268();
  v29 = v805;
  sub_1000A0970();
  v805 = v29;
  if (v29)
  {
    (*(v6 + 8))(v8, v5);
    v19 = 0;
    v266 = 0;
    LODWORD(v267) = 0;
    LODWORD(v270) = 0;
    v268 = 0;
    LODWORD(v269) = 0;
    LODWORD(v272) = 0;
    LODWORD(v273) = 0;
    LODWORD(v274) = 0;
    v276 = 0;
    LODWORD(v278) = 0;
    LODWORD(v275) = 0;
    LODWORD(v277) = 0;
    LODWORD(v279) = 0;
    LODWORD(v280) = 0;
    LODWORD(v282) = 0;
    LODWORD(v284) = 0;
    LODWORD(v285) = 0;
    LODWORD(v283) = 0;
    LODWORD(v281) = 0;
    LODWORD(v286) = 0;
    LODWORD(v287) = 0;
    LODWORD(v288) = 0;
    v289 = 0;
    v290 = 0;
    LODWORD(v291) = 0;
    LODWORD(v292) = 0;
    LODWORD(v293) = 0;
    LODWORD(v294) = 0;
    LODWORD(v295) = 0;
    LODWORD(v296) = 0;
    LODWORD(v297) = 0;
    LODWORD(v298) = 0;
    LODWORD(v299) = 0;
    LODWORD(v300) = 0;
    LODWORD(v301) = 0;
    LODWORD(v302) = 0;
    LODWORD(v303) = 0;
    LODWORD(v304) = 0;
    LODWORD(v305) = 0;
    LODWORD(v306) = 0;
    LODWORD(v307) = 0;
    LODWORD(v308) = 0;
    LODWORD(v309) = 0;
    LODWORD(v310) = 0;
    LODWORD(v311) = 0;
    LODWORD(v312) = 0;
    LODWORD(v313) = 0;
    LODWORD(v314) = 0;
    LODWORD(v315) = 0;
    LODWORD(v316) = 0;
    LODWORD(v317) = 0;
    LODWORD(v318) = 0;
    LODWORD(v319) = 0;
    LODWORD(v320) = 0;
    LODWORD(v321) = 0;
    LODWORD(v322) = 0;
    v323 = 0;
    LODWORD(v324) = 0;
    v325 = 0;
    LODWORD(v326) = 0;
    v327 = 0;
    LODWORD(v328) = 0;
    LODWORD(v329) = 0;
    LODWORD(v330) = 0;
    LODWORD(v331) = 0;
    LODWORD(v271) = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
  }

  else
  {
    v326 = v334;
    v325 = BYTE8(v334);
    v799 = BYTE9(v334);
    LOBYTE(v334) = 13;
    v324 = sub_1000A0950();
    v805 = 0;
    v796 = v30 & 1;
    v333[0] = 14;
    sub_1000A0970();
    v805 = 0;
    v257 = v334;
    LOBYTE(v334) = 15;
    HIDWORD(v323) = sub_1000A0930();
    v805 = 0;
    LOBYTE(v334) = 16;
    LODWORD(v323) = sub_1000A0930();
    v805 = 0;
    v333[0] = 17;
    sub_1000A0970();
    v805 = 0;
    v256 = v334;
    v333[0] = 18;
    sub_1000A0970();
    v805 = 0;
    v255 = v334;
    LOBYTE(v334) = 19;
    v322 = sub_1000A0920();
    v254 = v31;
    v805 = 0;
    LOBYTE(v334) = 20;
    v321 = sub_1000A0920();
    v253 = v32;
    v805 = 0;
    LOBYTE(v334) = 21;
    v320 = sub_1000A0920();
    v252 = v33;
    v805 = 0;
    v333[0] = 22;
    sub_1000A0970();
    v805 = 0;
    v251 = v334;
    LOBYTE(v334) = 23;
    v319 = sub_1000A0980();
    v805 = 0;
    v792 = v34 & 1;
    LOBYTE(v334) = 24;
    v318 = sub_1000A0920();
    v250 = v35;
    v805 = 0;
    LOBYTE(v334) = 25;
    v317 = sub_1000A0920();
    v249 = v36;
    v805 = 0;
    LOBYTE(v334) = 26;
    v316 = sub_1000A0920();
    v248 = v37;
    v805 = 0;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    v333[0] = 27;
    v315 = sub_1000612BC(&qword_1000D9B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v38 = v805;
    sub_1000A0970();
    v805 = v38;
    if (v38)
    {
      (*(v6 + 8))(v8, v5);
      v276 = 0;
      LODWORD(v278) = 0;
      LODWORD(v275) = 0;
      LODWORD(v277) = 0;
      LODWORD(v279) = 0;
      LODWORD(v280) = 0;
      LODWORD(v282) = 0;
      LODWORD(v284) = 0;
      LODWORD(v285) = 0;
      LODWORD(v283) = 0;
      LODWORD(v281) = 0;
      LODWORD(v286) = 0;
      LODWORD(v287) = 0;
      LODWORD(v288) = 0;
      v289 = 0;
      v290 = 0;
      LODWORD(v291) = 0;
      LODWORD(v292) = 0;
      LODWORD(v293) = 0;
      LODWORD(v294) = 0;
      LODWORD(v295) = 0;
      LODWORD(v296) = 0;
      LODWORD(v297) = 0;
      LODWORD(v298) = 0;
      LODWORD(v299) = 0;
      LODWORD(v300) = 0;
      LODWORD(v301) = 0;
      LODWORD(v302) = 0;
      LODWORD(v303) = 0;
      LODWORD(v304) = 0;
      LODWORD(v305) = 0;
      LODWORD(v306) = 0;
      LODWORD(v307) = 0;
      LODWORD(v308) = 0;
      LODWORD(v309) = 0;
      LODWORD(v310) = 0;
      LODWORD(v311) = 0;
      LODWORD(v312) = 0;
      LODWORD(v313) = 0;
      LODWORD(v314) = 0;
      LODWORD(v315) = 0;
      LODWORD(v316) = 0;
      LODWORD(v317) = 0;
      LODWORD(v318) = 0;
      LODWORD(v319) = 0;
      LODWORD(v320) = 0;
      LODWORD(v321) = 0;
      LODWORD(v322) = 0;
      v323 = 0;
      LODWORD(v324) = 0;
      v325 = 0;
      LODWORD(v326) = 0;
      v327 = 0;
      LODWORD(v328) = 0;
      LODWORD(v329) = 0;
      LODWORD(v330) = 0;
      LODWORD(v331) = 0;
      LODWORD(v271) = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      LODWORD(v267) = 1;
      v266 = 0x100000001;
      LODWORD(v270) = 1;
      v268 = 1;
      LODWORD(v269) = 1;
      LODWORD(v272) = 1;
      LODWORD(v273) = 1;
      LODWORD(v274) = 1;
    }

    else
    {
      v247 = v334;
      v333[0] = 28;
      sub_1000A0970();
      v805 = 0;
      v246 = v334;
      LOBYTE(v334) = 29;
      v315 = sub_1000A0920();
      v245 = v39;
      v805 = 0;
      LOBYTE(v334) = 30;
      v314 = sub_1000A0920();
      v244 = v40;
      v805 = 0;
      LOBYTE(v334) = 31;
      v313 = sub_1000A0980();
      v805 = 0;
      v790 = v41 & 1;
      LOBYTE(v334) = 32;
      v312 = sub_1000A0950();
      v805 = 0;
      v788 = v42 & 1;
      LOBYTE(v334) = 33;
      v311 = sub_1000A0920();
      v243 = v43;
      v805 = 0;
      v333[0] = 34;
      sub_1000A0970();
      v805 = 0;
      v242 = v334;
      v333[0] = 35;
      sub_1000A0970();
      v805 = 0;
      v241 = v334;
      LOBYTE(v334) = 36;
      v310 = sub_1000A0950();
      v805 = 0;
      v786 = v44 & 1;
      v333[0] = 37;
      sub_1000A0970();
      v805 = 0;
      v240 = *(&v334 + 1);
      v238 = v334;
      LOBYTE(v334) = 38;
      v309 = sub_1000A0920();
      v239 = v45;
      v805 = 0;
      LOBYTE(v334) = 39;
      v308 = sub_1000A0920();
      v237 = v46;
      v805 = 0;
      LOBYTE(v334) = 40;
      v307 = sub_1000A0920();
      v236 = v47;
      v805 = 0;
      LOBYTE(v334) = 41;
      v306 = sub_1000A0950();
      v805 = 0;
      v784 = v48 & 1;
      LOBYTE(v334) = 42;
      v305 = sub_1000A0980();
      v805 = 0;
      v782 = v49 & 1;
      LOBYTE(v334) = 43;
      v304 = sub_1000A0980();
      v805 = 0;
      v780 = v50 & 1;
      LOBYTE(v334) = 44;
      v303 = sub_1000A0950();
      v805 = 0;
      v778 = v51 & 1;
      v333[0] = 45;
      sub_1000A0970();
      v805 = 0;
      v235 = *(&v334 + 1);
      v233 = v334;
      LOBYTE(v334) = 46;
      v302 = sub_1000A0920();
      v234 = v52;
      v805 = 0;
      LOBYTE(v334) = 47;
      v301 = sub_1000A0950();
      v805 = 0;
      v776 = v53 & 1;
      LOBYTE(v334) = 48;
      v300 = sub_1000A0950();
      v805 = 0;
      v774 = v54 & 1;
      LOBYTE(v334) = 49;
      v299 = sub_1000A0920();
      v232 = v55;
      v805 = 0;
      LOBYTE(v334) = 50;
      v298 = sub_1000A0980();
      v805 = 0;
      v772 = v56 & 1;
      LOBYTE(v334) = 51;
      v297 = sub_1000A0920();
      v231 = v57;
      v805 = 0;
      LOBYTE(v334) = 52;
      v296 = sub_1000A0950();
      v805 = 0;
      v770 = v58 & 1;
      LOBYTE(v334) = 53;
      v295 = sub_1000A0950();
      v805 = 0;
      v768 = v59 & 1;
      LOBYTE(v334) = 54;
      v294 = sub_1000A0950();
      v805 = 0;
      v766 = v60 & 1;
      sub_1000017BC(&qword_1000D9950, &qword_1000AC258);
      v333[0] = 55;
      v293 = sub_100061328();
      v61 = v805;
      sub_1000A0970();
      v805 = v61;
      if (v61)
      {
        (*(v6 + 8))(v8, v5);
        v290 = 0;
        LODWORD(v291) = 0;
        LODWORD(v292) = 0;
        LODWORD(v293) = 0;
        LODWORD(v294) = 0;
        LODWORD(v295) = 0;
        LODWORD(v296) = 0;
        LODWORD(v297) = 0;
        LODWORD(v298) = 0;
        LODWORD(v299) = 0;
        LODWORD(v300) = 0;
        LODWORD(v301) = 0;
        LODWORD(v302) = 0;
        LODWORD(v303) = 0;
        LODWORD(v304) = 0;
        LODWORD(v305) = 0;
        LODWORD(v306) = 0;
        LODWORD(v307) = 0;
        LODWORD(v308) = 0;
        LODWORD(v309) = 0;
        LODWORD(v310) = 0;
        LODWORD(v311) = 0;
        LODWORD(v312) = 0;
        LODWORD(v313) = 0;
        LODWORD(v314) = 0;
        LODWORD(v315) = 0;
        LODWORD(v316) = 0;
        LODWORD(v317) = 0;
        LODWORD(v318) = 0;
        LODWORD(v319) = 0;
        LODWORD(v320) = 0;
        LODWORD(v321) = 0;
        LODWORD(v322) = 0;
        v323 = 0;
        LODWORD(v324) = 0;
        v325 = 0;
        LODWORD(v326) = 0;
        v327 = 0;
        LODWORD(v328) = 0;
        LODWORD(v329) = 0;
        LODWORD(v330) = 0;
        LODWORD(v331) = 0;
        v14 = 1;
        LODWORD(v271) = 1;
        v12 = 1;
        v13 = 1;
        v15 = 1;
        v16 = 1;
        v17 = 1;
        v18 = 1;
        v19 = 1;
        LODWORD(v267) = 1;
        v266 = 0x100000001;
        LODWORD(v270) = 1;
        v268 = 1;
        LODWORD(v269) = 1;
        LODWORD(v272) = 1;
        LODWORD(v273) = 1;
        LODWORD(v274) = 1;
        v276 = 1;
        LODWORD(v278) = 1;
        LODWORD(v275) = 1;
        LODWORD(v277) = 1;
        LODWORD(v279) = 1;
        LODWORD(v280) = 1;
        LODWORD(v282) = 1;
        LODWORD(v284) = 1;
        LODWORD(v285) = 1;
        LODWORD(v283) = 1;
        LODWORD(v281) = 1;
        LODWORD(v286) = 1;
        LODWORD(v287) = 1;
        LODWORD(v288) = 1;
        v289 = 1;
      }

      else
      {
        v226 = v334;
        v333[0] = 56;
        sub_1000A0970();
        v805 = 0;
        v224 = v334;
        LOBYTE(v334) = 57;
        v293 = sub_1000A0950();
        v805 = 0;
        v764 = v62 & 1;
        LOBYTE(v334) = 58;
        v292 = sub_1000A0980();
        v805 = 0;
        v762 = v63 & 1;
        LOBYTE(v334) = 59;
        v291 = sub_1000A0950();
        v805 = 0;
        v760 = v64 & 1;
        LOBYTE(v334) = 60;
        HIDWORD(v290) = sub_1000A0930();
        v805 = 0;
        LOBYTE(v334) = 61;
        LODWORD(v290) = sub_1000A0930();
        v805 = 0;
        LOBYTE(v334) = 62;
        HIDWORD(v289) = sub_1000A0930();
        v805 = 0;
        LOBYTE(v334) = 63;
        LODWORD(v289) = sub_1000A0930();
        v805 = 0;
        LOBYTE(v334) = 64;
        v288 = sub_1000A0920();
        v220 = v65;
        v805 = 0;
        LOBYTE(v334) = 65;
        v287 = sub_1000A0920();
        v222 = v66;
        v805 = 0;
        v333[0] = 66;
        sub_1000A0970();
        v805 = 0;
        v223 = *(&v334 + 1);
        v221 = v334;
        LOBYTE(v334) = 67;
        v286 = sub_1000A0920();
        v227 = v67;
        v805 = 0;
        LOBYTE(v334) = 68;
        v285 = sub_1000A0920();
        v228 = v68;
        v805 = 0;
        LOBYTE(v334) = 69;
        v284 = sub_1000A0920();
        v229 = v69;
        v805 = 0;
        LOBYTE(v334) = 70;
        v283 = sub_1000A0920();
        v230 = v70;
        v805 = 0;
        LOBYTE(v334) = 71;
        v282 = sub_1000A0920();
        v225 = v71;
        v805 = 0;
        LOBYTE(v334) = 72;
        v281 = sub_1000A0950();
        v805 = 0;
        v757 = v72 & 1;
        LOBYTE(v334) = 73;
        v280 = sub_1000A0920();
        v219 = v73;
        v805 = 0;
        LOBYTE(v334) = 74;
        v279 = sub_1000A0950();
        v805 = 0;
        v755 = v74 & 1;
        LOBYTE(v334) = 75;
        v278 = sub_1000A0920();
        v218 = v75;
        v805 = 0;
        LOBYTE(v334) = 76;
        v277 = sub_1000A0950();
        v805 = 0;
        v753 = v76 & 1;
        LOBYTE(v334) = 77;
        v276 = sub_1000A0930();
        v805 = 0;
        LOBYTE(v334) = 78;
        v275 = sub_1000A0920();
        v217 = v77;
        v805 = 0;
        LOBYTE(v334) = 79;
        v274 = sub_1000A0950();
        v805 = 0;
        v750 = v78 & 1;
        LOBYTE(v334) = 80;
        v273 = sub_1000A0950();
        v805 = 0;
        v748 = v79 & 1;
        LOBYTE(v334) = 81;
        v272 = sub_1000A0920();
        v216 = v80;
        v805 = 0;
        v669 = 82;
        sub_100061400();
        v81 = v805;
        sub_1000A0970();
        v805 = v81;
        if (v81)
        {
          (*(v6 + 8))(v8, v5);
          LODWORD(v302) = 0;
          LODWORD(v303) = 0;
          LODWORD(v304) = 0;
          LODWORD(v305) = 0;
          LODWORD(v306) = 0;
          LODWORD(v307) = 0;
          LODWORD(v308) = 0;
          LODWORD(v309) = 0;
          LODWORD(v310) = 0;
          LODWORD(v311) = 0;
          LODWORD(v312) = 0;
          LODWORD(v313) = 0;
          LODWORD(v314) = 0;
          LODWORD(v315) = 0;
          LODWORD(v316) = 0;
          LODWORD(v317) = 0;
          LODWORD(v318) = 0;
          LODWORD(v319) = 0;
          LODWORD(v320) = 0;
          LODWORD(v321) = 0;
          LODWORD(v322) = 0;
          v323 = 0;
          LODWORD(v324) = 0;
          v325 = 0;
          LODWORD(v326) = 0;
          v327 = 0;
          LODWORD(v328) = 0;
          LODWORD(v329) = 0;
          LODWORD(v330) = 0;
          LODWORD(v331) = 0;
          v19 = 1;
          LODWORD(v271) = 1;
          v12 = 1;
          v13 = 1;
          v14 = 1;
          v15 = 1;
          v16 = 1;
          v17 = 1;
          v18 = 1;
          LODWORD(v267) = 1;
          v266 = 0x100000001;
          LODWORD(v270) = 1;
          v268 = 1;
          LODWORD(v269) = 1;
          LODWORD(v272) = 1;
          LODWORD(v273) = 1;
          LODWORD(v274) = 1;
          v276 = 1;
          LODWORD(v278) = 1;
          LODWORD(v275) = 1;
          LODWORD(v277) = 1;
          LODWORD(v279) = 1;
          LODWORD(v280) = 1;
          LODWORD(v282) = 1;
          LODWORD(v284) = 1;
          LODWORD(v285) = 1;
          LODWORD(v283) = 1;
          LODWORD(v281) = 1;
          LODWORD(v286) = 1;
          LODWORD(v287) = 1;
          LODWORD(v288) = 1;
          v289 = 0x100000001;
          v290 = 0x100000001;
          LODWORD(v291) = 1;
          LODWORD(v292) = 1;
          LODWORD(v293) = 1;
          LODWORD(v294) = 1;
          LODWORD(v295) = 1;
          LODWORD(v296) = 1;
          LODWORD(v297) = 1;
          LODWORD(v298) = 1;
          LODWORD(v299) = 1;
          LODWORD(v300) = 1;
          LODWORD(v301) = 1;
        }

        else
        {
          v743 = v672;
          v744 = v673;
          v745 = v674;
          v746 = v675;
          v741 = v670;
          v742 = v671;
          v333[0] = 83;
          sub_1000A0970();
          v805 = 0;
          v214 = *(&v334 + 1);
          v215 = v334;
          LOBYTE(v334) = 84;
          v271 = sub_1000A0920();
          v213 = v82;
          v805 = 0;
          v333[0] = 85;
          sub_1000A0970();
          v805 = 0;
          v211 = *(&v334 + 1);
          v212 = v334;
          LOBYTE(v334) = 86;
          v270 = sub_1000A0950();
          v805 = 0;
          v740 = v83 & 1;
          LOBYTE(v334) = 87;
          v269 = sub_1000A0920();
          v209 = v84;
          v805 = 0;
          LOBYTE(v334) = 88;
          v268 = sub_1000A0930();
          v805 = 0;
          LOBYTE(v334) = 89;
          HIDWORD(v266) = sub_1000A0930();
          v805 = 0;
          LOBYTE(v334) = 90;
          LODWORD(v266) = sub_1000A0930();
          v805 = 0;
          LOBYTE(v334) = 91;
          v168 = sub_1000A0950();
          v805 = 0;
          v736 = v85 & 1;
          LOBYTE(v334) = 92;
          v267 = sub_1000A0920();
          v210 = v86;
          v805 = 0;
          v333[0] = 93;
          sub_1000A0970();
          v805 = 0;
          v207 = *(&v334 + 1);
          v208 = v334;
          v333[0] = 94;
          sub_1000A0970();
          v805 = 0;
          v205 = *(&v334 + 1);
          v206 = v334;
          LOBYTE(v334) = 95;
          v167 = sub_1000A0950();
          v805 = 0;
          v734 = v87 & 1;
          LOBYTE(v334) = 96;
          v166 = sub_1000A0930();
          v805 = 0;
          LOBYTE(v334) = 97;
          v165 = sub_1000A0930();
          v805 = 0;
          LOBYTE(v334) = 98;
          v164 = sub_1000A0950();
          v805 = 0;
          v731 = v88 & 1;
          LOBYTE(v334) = 99;
          v163 = sub_1000A0950();
          v805 = 0;
          v729 = v89 & 1;
          LOBYTE(v334) = 100;
          v162 = sub_1000A0930();
          v805 = 0;
          LOBYTE(v334) = 101;
          v161 = sub_1000A0950();
          v805 = 0;
          v726 = v90 & 1;
          LOBYTE(v334) = 102;
          v160 = sub_1000A0950();
          v805 = 0;
          v724 = v91 & 1;
          LOBYTE(v334) = 103;
          v159 = sub_1000A0920();
          v204 = v92;
          v805 = 0;
          LOBYTE(v334) = 104;
          v158 = sub_1000A0950();
          v805 = 0;
          v722 = v93 & 1;
          LOBYTE(v334) = 105;
          v155 = sub_1000A0950();
          v805 = 0;
          v720 = v94 & 1;
          v333[0] = 106;
          sub_1000A0970();
          v805 = 0;
          v202 = *(&v334 + 1);
          v203 = v334;
          v333[0] = 107;
          sub_1000A0970();
          v805 = 0;
          v200 = *(&v334 + 1);
          v201 = v334;
          LOBYTE(v334) = 108;
          v151 = sub_1000A0950();
          v805 = 0;
          v718 = v95 & 1;
          v333[0] = 109;
          sub_1000A0970();
          v805 = 0;
          v198 = *(&v334 + 1);
          v199 = v334;
          v333[0] = 110;
          sub_1000A0970();
          v805 = 0;
          v196 = *(&v334 + 1);
          v197 = v334;
          LOBYTE(v334) = 111;
          v150 = sub_1000A0950();
          v805 = 0;
          v716 = v96 & 1;
          LOBYTE(v334) = 112;
          v149 = sub_1000A0950();
          v805 = 0;
          v714 = v97 & 1;
          sub_1000017BC(&qword_1000D9978, &qword_1000AC268);
          v333[0] = 113;
          sub_100061454();
          v98 = v805;
          sub_1000A0970();
          v805 = v98;
          if (v98)
          {
            (*(v6 + 8))(v8, v5);
            LODWORD(v315) = 0;
            LODWORD(v316) = 0;
            LODWORD(v317) = 0;
            LODWORD(v318) = 0;
            LODWORD(v319) = 0;
            LODWORD(v320) = 0;
            LODWORD(v321) = 0;
            LODWORD(v322) = 0;
            v323 = 0;
            LODWORD(v324) = 0;
            v325 = 0;
            LODWORD(v326) = 0;
            v327 = 0;
            LODWORD(v328) = 0;
            LODWORD(v329) = 0;
            LODWORD(v330) = 0;
            LODWORD(v331) = 0;
            LODWORD(v272) = 1;
            LODWORD(v271) = 1;
            v12 = 1;
            v13 = 1;
            v14 = 1;
            v15 = 1;
            v16 = 1;
            v17 = 1;
            v18 = 1;
            v19 = 1;
            LODWORD(v267) = 1;
            v266 = 0x100000001;
            LODWORD(v270) = 1;
            v268 = 1;
            LODWORD(v269) = 1;
            LODWORD(v273) = 1;
            LODWORD(v274) = 1;
            v276 = 1;
            LODWORD(v278) = 1;
            LODWORD(v275) = 1;
            LODWORD(v277) = 1;
            LODWORD(v279) = 1;
            LODWORD(v280) = 1;
            LODWORD(v282) = 1;
            LODWORD(v284) = 1;
            LODWORD(v285) = 1;
            LODWORD(v283) = 1;
            LODWORD(v281) = 1;
            LODWORD(v286) = 1;
            LODWORD(v287) = 1;
            LODWORD(v288) = 1;
            v289 = 0x100000001;
            v290 = 0x100000001;
            LODWORD(v291) = 1;
            LODWORD(v292) = 1;
            LODWORD(v293) = 1;
            LODWORD(v294) = 1;
            LODWORD(v295) = 1;
            LODWORD(v296) = 1;
            LODWORD(v297) = 1;
            LODWORD(v298) = 1;
            LODWORD(v299) = 1;
            LODWORD(v300) = 1;
            LODWORD(v301) = 1;
            LODWORD(v302) = 1;
            LODWORD(v303) = 1;
            LODWORD(v304) = 1;
            LODWORD(v305) = 1;
            LODWORD(v306) = 1;
            LODWORD(v307) = 1;
            LODWORD(v308) = 1;
            LODWORD(v309) = 1;
            LODWORD(v310) = 1;
            LODWORD(v311) = 1;
            LODWORD(v312) = 1;
            LODWORD(v313) = 1;
            LODWORD(v314) = 1;
          }

          else
          {
            v195 = v334;
            LOBYTE(v334) = 114;
            v144 = sub_1000A0920();
            v194 = v99;
            v805 = 0;
            LOBYTE(v334) = 115;
            v142 = sub_1000A0920();
            v193 = v100;
            v805 = 0;
            LOBYTE(v334) = 116;
            v140 = sub_1000A0950();
            v805 = 0;
            v712 = v101 & 1;
            LOBYTE(v334) = 117;
            v138 = sub_1000A0930();
            v805 = 0;
            LOBYTE(v334) = 118;
            v136 = sub_1000A0930();
            v805 = 0;
            LOBYTE(v334) = 119;
            v134 = sub_1000A0950();
            v805 = 0;
            v709 = v102 & 1;
            v333[0] = 120;
            sub_1000A0970();
            v805 = 0;
            v191 = *(&v334 + 1);
            v192 = v334;
            LOBYTE(v334) = 121;
            v132 = sub_1000A0950();
            v805 = 0;
            v707 = v103 & 1;
            LOBYTE(v334) = 122;
            v131 = sub_1000A0930();
            v805 = 0;
            LOBYTE(v334) = 123;
            v130 = sub_1000A0920();
            v190 = v104;
            v805 = 0;
            LOBYTE(v334) = 124;
            v129 = sub_1000A0950();
            v805 = 0;
            v704 = v105 & 1;
            LOBYTE(v334) = 125;
            v128 = sub_1000A0950();
            v805 = 0;
            v702 = v106 & 1;
            v333[0] = 126;
            sub_1000A0970();
            v805 = 0;
            v188 = *(&v334 + 1);
            v189 = v334;
            v333[0] = 127;
            sub_1000A0970();
            v805 = 0;
            v186 = *(&v334 + 1);
            v187 = v334;
            LOBYTE(v334) = 0x80;
            v127 = sub_1000A0950();
            v805 = 0;
            v700 = v107 & 1;
            v333[0] = -127;
            sub_1000A0970();
            v805 = 0;
            v184 = *(&v334 + 1);
            v185 = v334;
            v333[0] = -126;
            sub_1000A0970();
            v805 = 0;
            v182 = *(&v334 + 1);
            v183 = v334;
            v333[0] = -125;
            sub_1000A0970();
            v805 = 0;
            v180 = *(&v334 + 1);
            v181 = v334;
            LOBYTE(v334) = -124;
            v126 = sub_1000A0980();
            v805 = 0;
            v698 = v108 & 1;
            v333[0] = -123;
            sub_1000A0970();
            v805 = 0;
            v178 = *(&v334 + 1);
            v179 = v334;
            LOBYTE(v334) = -122;
            v125 = sub_1000A09C0();
            v805 = 0;
            v696 = v109 & 1;
            v333[0] = -121;
            sub_1000A0970();
            v805 = 0;
            v177 = *(&v334 + 1);
            v175 = v334;
            LOBYTE(v334) = -120;
            v157 = sub_1000A0920();
            v176 = v110;
            v805 = 0;
            LOBYTE(v334) = -119;
            v156 = sub_1000A0950();
            v805 = 0;
            v694 = v111 & 1;
            LOBYTE(v334) = -118;
            v154 = sub_1000A0950();
            v805 = 0;
            v692 = v112 & 1;
            LOBYTE(v334) = -117;
            v153 = sub_1000A0980();
            v805 = 0;
            v690 = v113 & 1;
            LOBYTE(v334) = -116;
            v152 = sub_1000A0950();
            v805 = 0;
            v688 = v114 & 1;
            sub_1000017BC(&qword_1000D9990, &qword_1000AC270);
            v333[0] = -115;
            sub_10006152C();
            v115 = v805;
            sub_1000A0970();
            v805 = v115;
            if (v115)
            {
              (*(v6 + 8))(v8, v5);
              v327 = 0;
              LODWORD(v328) = 0;
              LODWORD(v329) = 0;
              LODWORD(v330) = 0;
              LODWORD(v331) = 0;
              LODWORD(v279) = 1;
              LODWORD(v271) = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              v15 = 1;
              v16 = 1;
              v17 = 1;
              v18 = 1;
              v19 = 1;
              LODWORD(v267) = 1;
              v266 = 0x100000001;
              LODWORD(v270) = 1;
              v268 = 1;
              LODWORD(v269) = 1;
              LODWORD(v272) = 1;
              LODWORD(v273) = 1;
              LODWORD(v274) = 1;
              v276 = 1;
              LODWORD(v278) = 1;
              LODWORD(v275) = 1;
              LODWORD(v277) = 1;
              LODWORD(v280) = 1;
              LODWORD(v282) = 1;
              LODWORD(v284) = 1;
              LODWORD(v285) = 1;
              LODWORD(v283) = 1;
              LODWORD(v281) = 1;
              LODWORD(v286) = 1;
              LODWORD(v287) = 1;
              LODWORD(v288) = 1;
              v289 = 0x100000001;
              v290 = 0x100000001;
              LODWORD(v291) = 1;
              LODWORD(v292) = 1;
              LODWORD(v293) = 1;
              LODWORD(v294) = 1;
              LODWORD(v295) = 1;
              LODWORD(v296) = 1;
              LODWORD(v297) = 1;
              LODWORD(v298) = 1;
              LODWORD(v299) = 1;
              LODWORD(v300) = 1;
              LODWORD(v301) = 1;
              LODWORD(v302) = 1;
              LODWORD(v303) = 1;
              LODWORD(v304) = 1;
              LODWORD(v305) = 1;
              LODWORD(v306) = 1;
              LODWORD(v307) = 1;
              LODWORD(v308) = 1;
              LODWORD(v309) = 1;
              LODWORD(v310) = 1;
              LODWORD(v311) = 1;
              LODWORD(v312) = 1;
              LODWORD(v313) = 1;
              LODWORD(v314) = 1;
              LODWORD(v315) = 1;
              LODWORD(v316) = 1;
              LODWORD(v317) = 1;
              LODWORD(v318) = 1;
              LODWORD(v319) = 1;
              LODWORD(v320) = 1;
              LODWORD(v321) = 1;
              LODWORD(v322) = 1;
              v323 = 0x100000001;
              LODWORD(v324) = 1;
              v325 = 1;
              LODWORD(v326) = 1;
            }

            else
            {
              v174 = v334;
              sub_1000017BC(&qword_1000D99A8, &qword_1000AC278);
              v333[0] = -114;
              sub_100061604();
              v116 = v805;
              sub_1000A0970();
              v805 = v116;
              if (v116)
              {
                (*(v6 + 8))(v8, v5);
                LODWORD(v328) = 0;
                LODWORD(v329) = 0;
                LODWORD(v330) = 0;
                LODWORD(v331) = 0;
                LODWORD(v280) = 1;
                LODWORD(v271) = 1;
                v12 = 1;
                v13 = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
                v17 = 1;
                v18 = 1;
                v19 = 1;
                LODWORD(v267) = 1;
                v266 = 0x100000001;
                LODWORD(v270) = 1;
                v268 = 1;
                LODWORD(v269) = 1;
                LODWORD(v272) = 1;
                LODWORD(v273) = 1;
                LODWORD(v274) = 1;
                v276 = 1;
                LODWORD(v278) = 1;
                LODWORD(v275) = 1;
                LODWORD(v277) = 1;
                LODWORD(v279) = 1;
                LODWORD(v282) = 1;
                LODWORD(v284) = 1;
                LODWORD(v285) = 1;
                LODWORD(v283) = 1;
                LODWORD(v281) = 1;
                LODWORD(v286) = 1;
                LODWORD(v287) = 1;
                LODWORD(v288) = 1;
                v289 = 0x100000001;
                v290 = 0x100000001;
                LODWORD(v291) = 1;
                LODWORD(v292) = 1;
                LODWORD(v293) = 1;
                LODWORD(v294) = 1;
                LODWORD(v295) = 1;
                LODWORD(v296) = 1;
                LODWORD(v297) = 1;
                LODWORD(v298) = 1;
                LODWORD(v299) = 1;
                LODWORD(v300) = 1;
                LODWORD(v301) = 1;
                LODWORD(v302) = 1;
                LODWORD(v303) = 1;
                LODWORD(v304) = 1;
                LODWORD(v305) = 1;
                LODWORD(v306) = 1;
                LODWORD(v307) = 1;
                LODWORD(v308) = 1;
                LODWORD(v309) = 1;
                LODWORD(v310) = 1;
                LODWORD(v311) = 1;
                LODWORD(v312) = 1;
                LODWORD(v313) = 1;
                LODWORD(v314) = 1;
                LODWORD(v315) = 1;
                LODWORD(v316) = 1;
                LODWORD(v317) = 1;
                LODWORD(v318) = 1;
                LODWORD(v319) = 1;
                LODWORD(v320) = 1;
                LODWORD(v321) = 1;
                LODWORD(v322) = 1;
                v323 = 0x100000001;
                LODWORD(v324) = 1;
                v325 = 1;
                LODWORD(v326) = 1;
                v327 = 1;
              }

              else
              {
                v173 = v334;
                v333[0] = -113;
                sub_1000A0970();
                v805 = 0;
                v171 = *(&v334 + 1);
                v172 = v334;
                LOBYTE(v334) = -112;
                v330 = sub_1000A0950();
                v805 = 0;
                v686 = v117 & 1;
                sub_1000017BC(&qword_1000D99C0, &qword_1000AC280);
                v333[0] = -111;
                sub_1000616DC();
                v118 = v805;
                sub_1000A0970();
                v805 = v118;
                if (!v118)
                {
                  v170 = v334;
                  LOBYTE(v334) = -110;
                  v148 = sub_1000A0950();
                  v805 = 0;
                  v684 = v119 & 1;
                  LOBYTE(v334) = -109;
                  v147 = sub_1000A0950();
                  v805 = 0;
                  v682 = v120 & 1;
                  LOBYTE(v334) = -108;
                  v146 = sub_1000A0930();
                  v805 = 0;
                  LOBYTE(v334) = -107;
                  v145 = sub_1000A0930();
                  v805 = 0;
                  LOBYTE(v334) = -106;
                  v143 = sub_1000A0920();
                  v169 = v121;
                  v805 = 0;
                  LOBYTE(v334) = -105;
                  v141 = sub_1000A0930();
                  v805 = 0;
                  LOBYTE(v334) = -104;
                  v139 = sub_1000A0950();
                  v805 = 0;
                  v678 = v122 & 1;
                  LOBYTE(v334) = -103;
                  v137 = sub_1000A0950();
                  v805 = 0;
                  v676 = v123 & 1;
                  LOBYTE(v334) = -102;
                  v135 = sub_1000A0930();
                  v805 = 0;
                  v668 = -101;
                  v133 = sub_1000A0930();
                  v805 = 0;
                  (*(v6 + 8))(v8, v5);
                  *&v333[169] = *v800;
                  *&v333[186] = v797;
                  *&v333[201] = *v795;
                  *&v333[226] = v793;
                  *&v333[337] = *v791;
                  *&v333[449] = *v789;
                  *&v333[465] = *v787;
                  *&v333[529] = *v785;
                  *&v333[609] = *v783;
                  *&v333[625] = *v781;
                  *&v333[641] = *v779;
                  *&v333[657] = *v777;
                  *&v333[705] = *v775;
                  *&v333[721] = *v773;
                  *&v333[753] = *v771;
                  *&v333[785] = *v769;
                  *&v333[801] = *v767;
                  *&v333[817] = *v765;
                  *&v333[849] = *v763;
                  *&v333[865] = *v761;
                  *&v333[885] = v758;
                  *&v333[1025] = *v756;
                  *&v333[1057] = *v754;
                  *&v333[1090] = v751;
                  *&v333[1121] = *v749;
                  *&v333[1137] = *v747;
                  *&v333[1313] = *v739;
                  *&v333[1339] = v737;
                  *&v333[1353] = *v735;
                  *&v333[1419] = v732;
                  *&v333[1433] = *v730;
                  *&v333[1450] = v727;
                  *&v333[1465] = *v725;
                  *&v333[1481] = *v723;
                  *&v333[1513] = *v721;
                  *&v333[1529] = *v719;
                  *&v333[1577] = *v717;
                  *&v333[1625] = *v715;
                  *&v333[1641] = *v713;
                  *&v333[1699] = v710;
                  *&v333[1713] = *v708;
                  *&v333[1746] = v705;
                  *&v333[1777] = *v703;
                  *&v333[1793] = *v701;
                  *&v333[1841] = *v699;
                  *&v333[1905] = *v697;
                  *&v333[1937] = *v695;
                  *&v333[1985] = *v693;
                  *&v333[2001] = *v691;
                  *&v333[2017] = *v689;
                  *&v333[2033] = *v687;
                  *&v333[2081] = *v685;
                  *&v333[2105] = *v683;
                  *&v333[2123] = v680;
                  *&v333[2145] = *v679;
                  *&v333[2161] = *v677;
                  v333[16] = v804;
                  *&v333[17] = *v803;
                  *&v333[20] = *&v803[3];
                  v333[32] = v802;
                  *&v333[33] = *v801;
                  *&v333[36] = *&v801[3];
                  *&v333[172] = *&v800[3];
                  v333[185] = v799;
                  *&v333[190] = v798;
                  v333[200] = v796;
                  *&v333[204] = *&v795[3];
                  *&v333[230] = v794;
                  v333[336] = v792;
                  *&v333[340] = *&v791[3];
                  v333[448] = v790;
                  *&v333[452] = *&v789[3];
                  v333[464] = v788;
                  *&v333[468] = *&v787[3];
                  v333[528] = v786;
                  *&v333[532] = *&v785[3];
                  v333[608] = v784;
                  *&v333[612] = *&v783[3];
                  v333[624] = v782;
                  *&v333[628] = *&v781[3];
                  v333[640] = v780;
                  *&v333[644] = *&v779[3];
                  v333[656] = v778;
                  *&v333[660] = *&v777[3];
                  v333[704] = v776;
                  *&v333[708] = *&v775[3];
                  v333[720] = v774;
                  *&v333[724] = *&v773[3];
                  v333[752] = v772;
                  *&v333[756] = *&v771[3];
                  v333[784] = v770;
                  *&v333[788] = *&v769[3];
                  v333[800] = v768;
                  *&v333[804] = *&v767[3];
                  v333[816] = v766;
                  *&v333[820] = *&v765[3];
                  v333[848] = v764;
                  *&v333[852] = *&v763[3];
                  v333[864] = v762;
                  *&v333[868] = *&v761[3];
                  v333[880] = v760;
                  v333[887] = v759;
                  v333[1024] = v757;
                  *&v333[1028] = *&v756[3];
                  v333[1056] = v755;
                  *&v333[1060] = *&v754[3];
                  v333[1088] = v753;
                  *&v333[1094] = v752;
                  v333[1120] = v750;
                  *&v333[1124] = *&v749[3];
                  v333[1136] = v748;
                  *&v333[1140] = *&v747[3];
                  *&v333[1160] = v741;
                  *&v333[1176] = v742;
                  *&v333[1224] = v745;
                  *&v333[1240] = v746;
                  *&v333[1192] = v743;
                  *&v333[1208] = v744;
                  v333[1312] = v740;
                  *&v333[1316] = *&v739[3];
                  v333[1343] = v738;
                  v333[1352] = v736;
                  *&v333[1356] = *&v735[3];
                  v333[1416] = v734;
                  v333[1423] = v733;
                  v333[1432] = v731;
                  *&v333[1436] = *&v730[3];
                  v333[1448] = v729;
                  *&v333[1454] = v728;
                  v333[1464] = v726;
                  *&v333[1468] = *&v725[3];
                  v333[1480] = v724;
                  *&v333[1484] = *&v723[3];
                  v333[1512] = v722;
                  *&v333[1516] = *&v721[3];
                  v333[1528] = v720;
                  *&v333[1532] = *&v719[3];
                  v333[1576] = v718;
                  *&v333[1580] = *&v717[3];
                  v333[1624] = v716;
                  *&v333[1628] = *&v715[3];
                  v333[1640] = v714;
                  *&v333[1644] = *&v713[3];
                  v333[1696] = v712;
                  v333[1703] = v711;
                  v333[1712] = v709;
                  *&v333[1716] = *&v708[3];
                  v333[1744] = v707;
                  *&v333[1750] = v706;
                  v333[1776] = v704;
                  *&v333[1780] = *&v703[3];
                  v333[1792] = v702;
                  *&v333[1796] = *&v701[3];
                  v333[1840] = v700;
                  *&v333[1844] = *&v699[3];
                  v333[1904] = v698;
                  *&v333[1908] = *&v697[3];
                  v333[1936] = v696;
                  *&v333[1940] = *&v695[3];
                  v333[1984] = v694;
                  *&v333[1988] = *&v693[3];
                  v333[2000] = v692;
                  *&v333[2004] = *&v691[3];
                  v333[2016] = v690;
                  *&v333[2020] = *&v689[3];
                  v333[2032] = v688;
                  *&v333[2036] = *&v687[3];
                  v333[2080] = v686;
                  *&v333[2084] = *&v685[3];
                  v333[2104] = v684;
                  *&v333[2108] = *&v683[3];
                  v333[2120] = v682;
                  v333[2127] = v681;
                  *&v333[2148] = *&v679[3];
                  v333[2160] = v678;
                  *&v333[2164] = *&v677[3];
                  v333[2176] = v676;
                  *v333 = v11;
                  *&v333[8] = v21;
                  *&v333[24] = v331;
                  *&v333[40] = v265;
                  *&v333[56] = v264;
                  *&v333[72] = v263;
                  *&v333[88] = v262;
                  *&v333[104] = v261;
                  *&v333[120] = v329;
                  *&v333[128] = v260;
                  *&v333[136] = v259;
                  *&v333[152] = v328;
                  *&v333[160] = v258;
                  v333[168] = v327;
                  *&v333[176] = v326;
                  v333[184] = v325;
                  *&v333[192] = v324;
                  *&v333[208] = v257;
                  v333[224] = BYTE4(v323);
                  v333[225] = v323;
                  *&v333[232] = v256;
                  *&v333[248] = v255;
                  *&v333[264] = v322;
                  *&v333[272] = v254;
                  *&v333[280] = v321;
                  *&v333[288] = v253;
                  *&v333[296] = v320;
                  *&v333[304] = v252;
                  *&v333[312] = v251;
                  *&v333[328] = v319;
                  *&v333[344] = v318;
                  *&v333[352] = v250;
                  *&v333[360] = v317;
                  *&v333[368] = v249;
                  *&v333[376] = v316;
                  *&v333[384] = v248;
                  *&v333[392] = v247;
                  *&v333[400] = v246;
                  *&v333[408] = v315;
                  *&v333[416] = v245;
                  *&v333[424] = v314;
                  *&v333[432] = v244;
                  *&v333[440] = v313;
                  *&v333[456] = v312;
                  *&v333[472] = v311;
                  *&v333[480] = v243;
                  *&v333[488] = v242;
                  *&v333[504] = v241;
                  *&v333[520] = v310;
                  *&v333[536] = v238;
                  *&v333[544] = v240;
                  *&v333[552] = v309;
                  *&v333[560] = v239;
                  *&v333[568] = v308;
                  *&v333[576] = v237;
                  *&v333[584] = v307;
                  *&v333[592] = v236;
                  *&v333[600] = v306;
                  *&v333[616] = v305;
                  *&v333[632] = v304;
                  *&v333[648] = v303;
                  *&v333[664] = v233;
                  *&v333[672] = v235;
                  *&v333[680] = v302;
                  *&v333[688] = v234;
                  *&v333[696] = v301;
                  *&v333[712] = v300;
                  *&v333[728] = v299;
                  *&v333[736] = v232;
                  *&v333[744] = v298;
                  *&v333[760] = v297;
                  *&v333[768] = v231;
                  *&v333[776] = v296;
                  *&v333[792] = v295;
                  *&v333[808] = v294;
                  *&v333[824] = v226;
                  *&v333[832] = v224;
                  *&v333[840] = v293;
                  *&v333[856] = v292;
                  *&v333[872] = v291;
                  v333[881] = BYTE4(v290);
                  v333[882] = v290;
                  v333[883] = BYTE4(v289);
                  v333[884] = v289;
                  *&v333[888] = v288;
                  *&v333[896] = v220;
                  *&v333[904] = v287;
                  *&v333[912] = v222;
                  *&v333[920] = v221;
                  *&v333[928] = v223;
                  *&v333[936] = v286;
                  *&v333[944] = v227;
                  *&v333[952] = v285;
                  *&v333[960] = v228;
                  *&v333[968] = v284;
                  *&v333[976] = v229;
                  *&v333[984] = v283;
                  *&v333[992] = v230;
                  *&v333[1000] = v282;
                  *&v333[1008] = v225;
                  *&v333[1016] = v281;
                  *&v333[1032] = v280;
                  *&v333[1040] = v219;
                  *&v333[1048] = v279;
                  *&v333[1064] = v278;
                  *&v333[1072] = v218;
                  *&v333[1080] = v277;
                  v333[1089] = v276;
                  *&v333[1096] = v275;
                  *&v333[1104] = v217;
                  *&v333[1112] = v274;
                  *&v333[1128] = v273;
                  *&v333[1144] = v272;
                  *&v333[1152] = v216;
                  *&v333[1256] = v215;
                  *&v333[1264] = v214;
                  *&v333[1272] = v271;
                  *&v333[1280] = v213;
                  *&v333[1288] = v212;
                  *&v333[1296] = v211;
                  *&v333[1304] = v270;
                  *&v333[1320] = v269;
                  *&v333[1328] = v209;
                  v333[1336] = v268;
                  v333[1337] = BYTE4(v266);
                  v333[1338] = v266;
                  *&v333[1344] = v168;
                  *&v333[1360] = v267;
                  *&v333[1368] = v210;
                  *&v333[1376] = v208;
                  *&v333[1384] = v207;
                  *&v333[1392] = v206;
                  *&v333[1400] = v205;
                  *&v333[1408] = v167;
                  v333[1417] = v166;
                  v333[1418] = v165;
                  *&v333[1424] = v164;
                  *&v333[1440] = v163;
                  v333[1449] = v162;
                  *&v333[1456] = v161;
                  *&v333[1472] = v160;
                  *&v333[1488] = v159;
                  *&v333[1496] = v204;
                  *&v333[1504] = v158;
                  *&v333[1520] = v155;
                  *&v333[1536] = v203;
                  *&v333[1544] = v202;
                  *&v333[1552] = v201;
                  *&v333[1560] = v200;
                  *&v333[1568] = v151;
                  *&v333[1584] = v199;
                  *&v333[1592] = v198;
                  v124 = v197;
                  *&v333[1600] = v197;
                  *&v333[1608] = v196;
                  *&v333[1616] = v150;
                  *&v333[1632] = v149;
                  *&v333[1648] = v195;
                  *&v333[1656] = v144;
                  *&v333[1664] = v194;
                  *&v333[1672] = v142;
                  *&v333[1680] = v193;
                  *&v333[1688] = v140;
                  v333[1697] = v138;
                  v333[1698] = v136;
                  *&v333[1704] = v134;
                  *&v333[1720] = v192;
                  *&v333[1728] = v191;
                  *&v333[1736] = v132;
                  v333[1745] = v131;
                  *&v333[1752] = v130;
                  *&v333[1760] = v190;
                  *&v333[1768] = v129;
                  *&v333[1784] = v128;
                  *&v333[1800] = v189;
                  *&v333[1808] = v188;
                  *&v333[1816] = v187;
                  *&v333[1824] = v186;
                  *&v333[1832] = v127;
                  *&v333[1848] = v185;
                  *&v333[1856] = v184;
                  *&v333[1864] = v183;
                  *&v333[1872] = v182;
                  *&v333[1880] = v181;
                  *&v333[1888] = v180;
                  *&v333[1896] = v126;
                  *&v333[1912] = v179;
                  *&v333[1920] = v178;
                  *&v333[1928] = v125;
                  *&v333[1944] = v175;
                  *&v333[1952] = v177;
                  *&v333[1960] = v157;
                  *&v333[1968] = v176;
                  *&v333[1976] = v156;
                  *&v333[1992] = v154;
                  *&v333[2008] = v153;
                  *&v333[2024] = v152;
                  *&v333[2040] = v174;
                  *&v333[2048] = v173;
                  *&v333[2056] = v172;
                  *&v333[2064] = v171;
                  *&v333[2072] = v330;
                  *&v333[2088] = v170;
                  *&v333[2096] = v148;
                  *&v333[2112] = v147;
                  v333[2121] = v146;
                  v333[2122] = v145;
                  *&v333[2128] = v143;
                  *&v333[2136] = v169;
                  v333[2144] = v141;
                  *&v333[2152] = v139;
                  *&v333[2168] = v137;
                  v333[2177] = v135;
                  v333[2178] = v133;
                  sub_1000617B4(v333, &v334);
                  sub_100002308(v332);
                  *&v334 = v11;
                  *(&v334 + 1) = v21;
                  *(&v335 + 1) = v331;
                  *&v336[8] = v265;
                  *&v336[24] = v264;
                  *&v336[40] = v263;
                  *&v336[56] = v262;
                  v337 = v261;
                  v338 = v329;
                  v339 = v260;
                  v340 = v259;
                  v341 = v328;
                  v342 = v258;
                  v343 = v327;
                  v345 = v326;
                  v346 = v325;
                  v350 = v324;
                  v353 = v257;
                  v354 = BYTE4(v323);
                  v355 = v323;
                  v358 = v256;
                  v359 = v255;
                  v360 = v322;
                  v361 = v254;
                  v362 = v321;
                  v363 = v253;
                  v364 = v320;
                  v365 = v252;
                  v366 = v251;
                  v367 = v319;
                  v370 = v318;
                  v371 = v250;
                  v372 = v317;
                  v373 = v249;
                  v374 = v316;
                  v375 = v248;
                  v376 = v247;
                  v377 = v246;
                  v378 = v315;
                  v379 = v245;
                  v380 = v314;
                  v381 = v244;
                  v382 = v313;
                  v385 = v312;
                  v388 = v311;
                  v389 = v243;
                  v390 = v242;
                  v391 = v241;
                  v392 = v310;
                  v395 = v238;
                  v396 = v240;
                  v397 = v309;
                  v398 = v239;
                  v399 = v308;
                  v400 = v237;
                  v401 = v307;
                  v402 = v236;
                  v403 = v306;
                  v406 = v305;
                  v409 = v304;
                  v412 = v303;
                  v415 = v233;
                  v416 = v235;
                  v417 = v302;
                  v418 = v234;
                  v419 = v301;
                  v422 = v300;
                  v425 = v299;
                  v426 = v232;
                  v427 = v298;
                  v430 = v297;
                  v431 = v231;
                  v432 = v296;
                  v435 = v295;
                  v438 = v294;
                  v441 = v226;
                  v442 = v224;
                  v443 = v293;
                  v446 = v292;
                  v449 = v291;
                  v451 = BYTE4(v290);
                  v452 = v290;
                  v453 = BYTE4(v289);
                  v454 = v289;
                  v457 = v288;
                  v458 = v220;
                  v459 = v287;
                  v460 = v222;
                  v461 = v221;
                  v462 = v223;
                  v463 = v286;
                  v464 = v227;
                  v465 = v285;
                  v466 = v228;
                  v467 = v284;
                  v468 = v229;
                  v469 = v283;
                  v470 = v230;
                  v471 = v282;
                  v472 = v225;
                  v473 = v281;
                  v476 = v280;
                  v477 = v219;
                  v478 = v279;
                  v481 = v278;
                  v482 = v218;
                  v483 = v277;
                  v485 = v276;
                  v488 = v275;
                  v489 = v217;
                  v490 = v274;
                  v493 = v273;
                  v496 = v272;
                  v497 = v216;
                  v504 = v215;
                  v505 = v214;
                  v506 = v271;
                  v507 = v213;
                  v508 = v212;
                  v509 = v211;
                  v510 = v270;
                  v513 = v269;
                  v514 = v209;
                  v515 = v268;
                  v516 = BYTE4(v266);
                  v517 = v266;
                  v520 = v168;
                  v566 = v124;
                  v567 = v196;
                  v568 = v150;
                  v571 = v149;
                  v574 = v195;
                  v564 = v199;
                  v565 = v198;
                  v575 = v144;
                  v576 = v194;
                  v577 = v142;
                  v578 = v193;
                  v557 = v203;
                  v558 = v202;
                  v559 = v201;
                  v560 = v200;
                  v561 = v151;
                  v579 = v140;
                  v554 = v155;
                  v581 = v138;
                  v582 = v136;
                  v585 = v134;
                  v588 = v192;
                  v589 = v191;
                  v549 = v159;
                  v550 = v204;
                  v551 = v158;
                  v590 = v132;
                  v592 = v131;
                  v595 = v130;
                  v546 = v160;
                  v596 = v190;
                  v597 = v129;
                  v600 = v128;
                  v603 = v189;
                  v604 = v188;
                  v543 = v161;
                  v605 = v187;
                  v606 = v186;
                  v607 = v127;
                  v610 = v185;
                  v611 = v184;
                  v538 = v163;
                  v540 = v162;
                  v612 = v183;
                  v613 = v182;
                  v614 = v181;
                  v615 = v180;
                  v532 = v165;
                  v535 = v164;
                  v616 = v126;
                  v619 = v179;
                  v620 = v178;
                  v621 = v125;
                  v526 = v207;
                  v527 = v206;
                  v528 = v205;
                  v529 = v167;
                  v531 = v166;
                  v624 = v175;
                  v523 = v267;
                  *v369 = *v791;
                  *v384 = *v789;
                  *v387 = *v787;
                  *v394 = *v785;
                  *v405 = *v783;
                  *v408 = *v781;
                  *v411 = *v779;
                  *v414 = *v777;
                  *v421 = *v775;
                  *v424 = *v773;
                  *v429 = *v771;
                  *v434 = *v769;
                  *v437 = *v767;
                  *v440 = *v765;
                  *v445 = *v763;
                  *v448 = *v761;
                  v455 = v758;
                  *v475 = *v756;
                  *v480 = *v754;
                  v486 = v751;
                  *v492 = *v749;
                  *v495 = *v747;
                  LOBYTE(v335) = v804;
                  *(&v335 + 1) = *v803;
                  DWORD1(v335) = *&v803[3];
                  v336[0] = v802;
                  *&v336[1] = *v801;
                  *&v336[4] = *&v801[3];
                  *v344 = *v800;
                  *&v344[3] = *&v800[3];
                  v347 = v799;
                  v348 = v797;
                  v349 = v798;
                  v351 = v796;
                  *v352 = *v795;
                  *&v352[3] = *&v795[3];
                  v357 = v794;
                  v356 = v793;
                  v368 = v792;
                  *&v369[3] = *&v791[3];
                  v383 = v790;
                  *&v384[3] = *&v789[3];
                  v386 = v788;
                  *&v387[3] = *&v787[3];
                  v393 = v786;
                  *&v394[3] = *&v785[3];
                  v404 = v784;
                  *&v405[3] = *&v783[3];
                  v407 = v782;
                  *&v408[3] = *&v781[3];
                  v410 = v780;
                  *&v411[3] = *&v779[3];
                  v413 = v778;
                  *&v414[3] = *&v777[3];
                  v420 = v776;
                  *&v421[3] = *&v775[3];
                  v423 = v774;
                  *&v424[3] = *&v773[3];
                  v428 = v772;
                  *&v429[3] = *&v771[3];
                  v433 = v770;
                  *&v434[3] = *&v769[3];
                  v436 = v768;
                  *&v437[3] = *&v767[3];
                  v439 = v766;
                  *&v440[3] = *&v765[3];
                  v444 = v764;
                  *&v445[3] = *&v763[3];
                  v447 = v762;
                  *&v448[3] = *&v761[3];
                  v450 = v760;
                  v456 = v759;
                  v474 = v757;
                  *&v475[3] = *&v756[3];
                  v479 = v755;
                  *&v480[3] = *&v754[3];
                  v484 = v753;
                  v487 = v752;
                  v491 = v750;
                  *&v492[3] = *&v749[3];
                  v494 = v748;
                  *&v495[3] = *&v747[3];
                  v498 = v741;
                  v499 = v742;
                  v502 = v745;
                  v503 = v746;
                  v500 = v743;
                  v501 = v744;
                  v511 = v740;
                  *v512 = *v739;
                  *&v512[3] = *&v739[3];
                  v518 = v737;
                  v519 = v738;
                  v521 = v736;
                  *v522 = *v735;
                  *&v522[3] = *&v735[3];
                  v524 = v210;
                  v525 = v208;
                  v530 = v734;
                  v533 = v732;
                  v534 = v733;
                  v536 = v731;
                  *v537 = *v730;
                  *&v537[3] = *&v730[3];
                  v539 = v729;
                  v541 = v727;
                  v542 = v728;
                  v544 = v726;
                  *v545 = *v725;
                  *&v545[3] = *&v725[3];
                  v547 = v724;
                  *v548 = *v723;
                  *&v548[3] = *&v723[3];
                  v552 = v722;
                  *v553 = *v721;
                  *&v553[3] = *&v721[3];
                  v555 = v720;
                  *v556 = *v719;
                  *&v556[3] = *&v719[3];
                  v562 = v718;
                  *v563 = *v717;
                  *&v563[3] = *&v717[3];
                  v569 = v716;
                  *v570 = *v715;
                  *&v570[3] = *&v715[3];
                  v572 = v714;
                  *v573 = *v713;
                  *&v573[3] = *&v713[3];
                  v580 = v712;
                  v583 = v710;
                  v584 = v711;
                  v586 = v709;
                  *v587 = *v708;
                  *&v587[3] = *&v708[3];
                  v591 = v707;
                  v593 = v705;
                  v594 = v706;
                  v598 = v704;
                  *v599 = *v703;
                  *&v599[3] = *&v703[3];
                  v601 = v702;
                  *v602 = *v701;
                  *&v602[3] = *&v701[3];
                  v608 = v700;
                  *v609 = *v699;
                  *&v609[3] = *&v699[3];
                  v617 = v698;
                  *v618 = *v697;
                  *&v618[3] = *&v697[3];
                  v622 = v696;
                  *v623 = *v695;
                  *&v623[3] = *&v695[3];
                  v625 = v177;
                  v626 = v157;
                  v627 = v176;
                  v628 = v156;
                  v629 = v694;
                  *v630 = *v693;
                  *&v630[3] = *&v693[3];
                  v631 = v154;
                  v632 = v692;
                  *v633 = *v691;
                  *&v633[3] = *&v691[3];
                  v634 = v153;
                  v635 = v690;
                  *v636 = *v689;
                  *&v636[3] = *&v689[3];
                  v637 = v152;
                  v638 = v688;
                  *v639 = *v687;
                  *&v639[3] = *&v687[3];
                  v640 = v174;
                  v641 = v173;
                  v642 = v172;
                  v643 = v171;
                  v644 = v330;
                  v645 = v686;
                  *v646 = *v685;
                  *&v646[3] = *&v685[3];
                  v647 = v170;
                  v648 = v148;
                  v649 = v684;
                  *v650 = *v683;
                  *&v650[3] = *&v683[3];
                  v651 = v147;
                  v652 = v682;
                  v653 = v146;
                  v654 = v145;
                  v655 = v680;
                  v656 = v681;
                  v657 = v143;
                  v658 = v169;
                  v659 = v141;
                  *v660 = *v679;
                  *&v660[3] = *&v679[3];
                  v661 = v139;
                  v662 = v678;
                  *v663 = *v677;
                  *&v663[3] = *&v677[3];
                  v664 = v137;
                  v665 = v676;
                  v666 = v135;
                  v667 = v133;
                  sub_1000617EC(&v334);
                  return memcpy(v10, v333, 0x883uLL);
                }

                (*(v6 + 8))(v8, v5);
                LODWORD(v330) = 0;
                LODWORD(v331) = 0;
                LODWORD(v282) = 1;
                LODWORD(v271) = 1;
                v12 = 1;
                v13 = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
                v17 = 1;
                v18 = 1;
                v19 = 1;
                LODWORD(v267) = 1;
                v266 = 0x100000001;
                LODWORD(v270) = 1;
                v268 = 1;
                LODWORD(v269) = 1;
                LODWORD(v272) = 1;
                LODWORD(v273) = 1;
                LODWORD(v274) = 1;
                v276 = 1;
                LODWORD(v278) = 1;
                LODWORD(v275) = 1;
                LODWORD(v277) = 1;
                LODWORD(v279) = 1;
                LODWORD(v280) = 1;
                LODWORD(v284) = 1;
                LODWORD(v285) = 1;
                LODWORD(v283) = 1;
                LODWORD(v281) = 1;
                LODWORD(v286) = 1;
                LODWORD(v287) = 1;
                LODWORD(v288) = 1;
                v289 = 0x100000001;
                v290 = 0x100000001;
                LODWORD(v291) = 1;
                LODWORD(v292) = 1;
                LODWORD(v293) = 1;
                LODWORD(v294) = 1;
                LODWORD(v295) = 1;
                LODWORD(v296) = 1;
                LODWORD(v297) = 1;
                LODWORD(v298) = 1;
                LODWORD(v299) = 1;
                LODWORD(v300) = 1;
                LODWORD(v301) = 1;
                LODWORD(v302) = 1;
                LODWORD(v303) = 1;
                LODWORD(v304) = 1;
                LODWORD(v305) = 1;
                LODWORD(v306) = 1;
                LODWORD(v307) = 1;
                LODWORD(v308) = 1;
                LODWORD(v309) = 1;
                LODWORD(v310) = 1;
                LODWORD(v311) = 1;
                LODWORD(v312) = 1;
                LODWORD(v313) = 1;
                LODWORD(v314) = 1;
                LODWORD(v315) = 1;
                LODWORD(v316) = 1;
                LODWORD(v317) = 1;
                LODWORD(v318) = 1;
                LODWORD(v319) = 1;
                LODWORD(v320) = 1;
                LODWORD(v321) = 1;
                LODWORD(v322) = 1;
                v323 = 0x100000001;
                LODWORD(v324) = 1;
                v325 = 1;
                LODWORD(v326) = 1;
                v327 = 1;
                LODWORD(v328) = 1;
                LODWORD(v329) = 1;
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  result = sub_100002308(v332);
  if (v271)
  {
    result = sub_1000057B0(v265, *(&v265 + 1));
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
LABEL_8:
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_87;
  }

  result = sub_1000057B0(v264, *(&v264 + 1));
  if (v13)
  {
LABEL_9:
    result = sub_1000057B0(v263, *(&v263 + 1));
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_87:
  if (!v14)
  {
LABEL_10:
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = sub_1000057B0(v262, *(&v262 + 1));
  if (v15)
  {
LABEL_11:
    result = sub_1000057B0(v261, *(&v261 + 1));
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_89:
  if (!v16)
  {
LABEL_12:
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_91;
  }

LABEL_90:

  if (v17)
  {
LABEL_13:
    result = sub_1000057B0(v259, *(&v259 + 1));
    if (!v18)
    {
      goto LABEL_14;
    }

    goto LABEL_92;
  }

LABEL_91:
  if (!v18)
  {
LABEL_14:
    if (v19)
    {
      goto LABEL_15;
    }

    goto LABEL_93;
  }

LABEL_92:

  if (v19)
  {
LABEL_15:
    result = sub_1000057B0(v257, *(&v257 + 1));
    if (!HIDWORD(v266))
    {
      goto LABEL_16;
    }

    goto LABEL_94;
  }

LABEL_93:
  if (!HIDWORD(v266))
  {
LABEL_16:
    if (v267)
    {
      goto LABEL_17;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = sub_1000057B0(v256, *(&v256 + 1));
  if (v267)
  {
LABEL_17:
    result = sub_1000057B0(v255, *(&v255 + 1));
    if (!v266)
    {
      goto LABEL_18;
    }

    goto LABEL_96;
  }

LABEL_95:
  if (!v266)
  {
LABEL_18:
    if (v270)
    {
      goto LABEL_19;
    }

    goto LABEL_97;
  }

LABEL_96:

  if (v270)
  {
LABEL_19:

    if (!v268)
    {
      goto LABEL_20;
    }

    goto LABEL_98;
  }

LABEL_97:
  if (!v268)
  {
LABEL_20:
    if (v269)
    {
      goto LABEL_21;
    }

    goto LABEL_99;
  }

LABEL_98:

  if (v269)
  {
LABEL_21:
    result = sub_1000057B0(v251, *(&v251 + 1));
    if (!v272)
    {
      goto LABEL_22;
    }

    goto LABEL_100;
  }

LABEL_99:
  if (!v272)
  {
LABEL_22:
    if (v273)
    {
      goto LABEL_23;
    }

    goto LABEL_101;
  }

LABEL_100:

  if (v273)
  {
LABEL_23:

    if (!v274)
    {
      goto LABEL_24;
    }

    goto LABEL_102;
  }

LABEL_101:
  if (!v274)
  {
LABEL_24:
    if (v276)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_102:

  if (v276)
  {
LABEL_25:

    if (!v278)
    {
      goto LABEL_26;
    }

    goto LABEL_104;
  }

LABEL_103:
  if (!v278)
  {
LABEL_26:
    if (v275)
    {
      goto LABEL_27;
    }

    goto LABEL_105;
  }

LABEL_104:

  if (v275)
  {
LABEL_27:

    if (!v277)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_105:
  if (!v277)
  {
LABEL_28:
    if (v279)
    {
      goto LABEL_29;
    }

    goto LABEL_107;
  }

LABEL_106:

  if (v279)
  {
LABEL_29:

    if (!v280)
    {
      goto LABEL_30;
    }

    goto LABEL_108;
  }

LABEL_107:
  if (!v280)
  {
LABEL_30:
    if (v282)
    {
      goto LABEL_31;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = sub_1000057B0(v242, *(&v242 + 1));
  if (v282)
  {
LABEL_31:
    result = sub_1000057B0(v241, *(&v241 + 1));
    if (!v284)
    {
      goto LABEL_32;
    }

    goto LABEL_110;
  }

LABEL_109:
  if (!v284)
  {
LABEL_32:
    if (v285)
    {
      goto LABEL_33;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = sub_1000057B0(v238, v240);
  if (v285)
  {
LABEL_33:

    if (!v283)
    {
      goto LABEL_34;
    }

    goto LABEL_112;
  }

LABEL_111:
  if (!v283)
  {
LABEL_34:
    if (v281)
    {
      goto LABEL_35;
    }

    goto LABEL_113;
  }

LABEL_112:

  if (v281)
  {
LABEL_35:

    if (!v286)
    {
      goto LABEL_36;
    }

    goto LABEL_114;
  }

LABEL_113:
  if (!v286)
  {
LABEL_36:
    if (v287)
    {
      goto LABEL_37;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = sub_1000057B0(v233, v235);
  if (v287)
  {
LABEL_37:

    if (!v288)
    {
      goto LABEL_38;
    }

    goto LABEL_116;
  }

LABEL_115:
  if (!v288)
  {
LABEL_38:
    if (v289)
    {
      goto LABEL_39;
    }

    goto LABEL_117;
  }

LABEL_116:

  if (v289)
  {
LABEL_39:

    if (!HIDWORD(v289))
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

LABEL_117:
  if (!HIDWORD(v289))
  {
LABEL_40:
    if (v290)
    {
      goto LABEL_41;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (v290)
  {
LABEL_41:

    if (!HIDWORD(v290))
    {
      goto LABEL_42;
    }

    goto LABEL_120;
  }

LABEL_119:
  if (!HIDWORD(v290))
  {
LABEL_42:
    if (v291)
    {
      goto LABEL_43;
    }

    goto LABEL_121;
  }

LABEL_120:

  if (v291)
  {
LABEL_43:

    if (!v292)
    {
      goto LABEL_44;
    }

    goto LABEL_122;
  }

LABEL_121:
  if (!v292)
  {
LABEL_44:
    if (v293)
    {
      goto LABEL_45;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = sub_1000057B0(v221, v223);
  if (v293)
  {
LABEL_45:

    if (!v294)
    {
      goto LABEL_46;
    }

    goto LABEL_124;
  }

LABEL_123:
  if (!v294)
  {
LABEL_46:
    if (v295)
    {
      goto LABEL_47;
    }

    goto LABEL_125;
  }

LABEL_124:

  if (v295)
  {
LABEL_47:

    if (!v296)
    {
      goto LABEL_48;
    }

    goto LABEL_126;
  }

LABEL_125:
  if (!v296)
  {
LABEL_48:
    if (v297)
    {
      goto LABEL_49;
    }

    goto LABEL_127;
  }

LABEL_126:

  if (v297)
  {
LABEL_49:

    if (!v298)
    {
      goto LABEL_50;
    }

    goto LABEL_128;
  }

LABEL_127:
  if (!v298)
  {
LABEL_50:
    if (v299)
    {
      goto LABEL_51;
    }

    goto LABEL_129;
  }

LABEL_128:

  if (v299)
  {
LABEL_51:

    if (!v300)
    {
      goto LABEL_52;
    }

    goto LABEL_130;
  }

LABEL_129:
  if (!v300)
  {
LABEL_52:
    if (v301)
    {
      goto LABEL_53;
    }

    goto LABEL_131;
  }

LABEL_130:

  if (v301)
  {
LABEL_53:

    if (!v302)
    {
      goto LABEL_54;
    }

    goto LABEL_132;
  }

LABEL_131:
  if (!v302)
  {
LABEL_54:
    if (v303)
    {
      goto LABEL_55;
    }

    goto LABEL_133;
  }

LABEL_132:
  *v336 = v743;
  *&v336[16] = v744;
  *&v336[32] = v745;
  *&v336[48] = v746;
  v334 = v741;
  v335 = v742;
  result = sub_10004EF34(&v334);
  if (v303)
  {
LABEL_55:
    result = sub_1000057B0(v215, v214);
    if (!v304)
    {
      goto LABEL_56;
    }

    goto LABEL_134;
  }

LABEL_133:
  if (!v304)
  {
LABEL_56:
    if (v305)
    {
      goto LABEL_57;
    }

    goto LABEL_135;
  }

LABEL_134:

  if (v305)
  {
LABEL_57:
    result = sub_1000057B0(v212, v211);
    if (!v306)
    {
      goto LABEL_58;
    }

    goto LABEL_136;
  }

LABEL_135:
  if (!v306)
  {
LABEL_58:
    if (v307)
    {
      goto LABEL_59;
    }

    goto LABEL_137;
  }

LABEL_136:

  if (v307)
  {
LABEL_59:

    if (!v308)
    {
      goto LABEL_60;
    }

    goto LABEL_138;
  }

LABEL_137:
  if (!v308)
  {
LABEL_60:
    if (v309)
    {
      goto LABEL_61;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = sub_1000057B0(v208, v207);
  if (v309)
  {
LABEL_61:
    result = sub_1000057B0(v206, v205);
    if (!v310)
    {
      goto LABEL_62;
    }

    goto LABEL_140;
  }

LABEL_139:
  if (!v310)
  {
LABEL_62:
    if (v311)
    {
      goto LABEL_63;
    }

    goto LABEL_141;
  }

LABEL_140:

  if (v311)
  {
LABEL_63:
    result = sub_1000057B0(v203, v202);
    if (!v312)
    {
      goto LABEL_64;
    }

    goto LABEL_142;
  }

LABEL_141:
  if (!v312)
  {
LABEL_64:
    if (v313)
    {
      goto LABEL_65;
    }

    goto LABEL_143;
  }

LABEL_142:
  result = sub_1000057B0(v201, v200);
  if (v313)
  {
LABEL_65:
    result = sub_1000057B0(v199, v198);
    if (!v314)
    {
      goto LABEL_66;
    }

    goto LABEL_144;
  }

LABEL_143:
  if (!v314)
  {
LABEL_66:
    if (v315)
    {
      goto LABEL_67;
    }

    goto LABEL_145;
  }

LABEL_144:
  result = sub_1000057B0(v197, v196);
  if (v315)
  {
LABEL_67:

    if (!v316)
    {
      goto LABEL_68;
    }

    goto LABEL_146;
  }

LABEL_145:
  if (!v316)
  {
LABEL_68:
    if (v317)
    {
      goto LABEL_69;
    }

    goto LABEL_147;
  }

LABEL_146:

  if (v317)
  {
LABEL_69:

    if (!v318)
    {
      goto LABEL_70;
    }

    goto LABEL_148;
  }

LABEL_147:
  if (!v318)
  {
LABEL_70:
    if (v319)
    {
      goto LABEL_71;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = sub_1000057B0(v192, v191);
  if (v319)
  {
LABEL_71:

    if (!v320)
    {
      goto LABEL_72;
    }

    goto LABEL_150;
  }

LABEL_149:
  if (!v320)
  {
LABEL_72:
    if (v321)
    {
      goto LABEL_73;
    }

    goto LABEL_151;
  }

LABEL_150:
  result = sub_1000057B0(v189, v188);
  if (v321)
  {
LABEL_73:
    result = sub_1000057B0(v187, v186);
    if (!v322)
    {
      goto LABEL_74;
    }

    goto LABEL_152;
  }

LABEL_151:
  if (!v322)
  {
LABEL_74:
    if (v323)
    {
      goto LABEL_75;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = sub_1000057B0(v185, v184);
  if (v323)
  {
LABEL_75:
    result = sub_1000057B0(v183, v182);
    if (!HIDWORD(v323))
    {
      goto LABEL_76;
    }

    goto LABEL_154;
  }

LABEL_153:
  if (!HIDWORD(v323))
  {
LABEL_76:
    if (v324)
    {
      goto LABEL_77;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = sub_1000057B0(v181, v180);
  if (v324)
  {
LABEL_77:
    result = sub_1000057B0(v179, v178);
    if (!v325)
    {
      goto LABEL_78;
    }

    goto LABEL_156;
  }

LABEL_155:
  if (!v325)
  {
LABEL_78:
    if (v326)
    {
      goto LABEL_79;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = sub_1000057B0(v175, v177);
  if (v326)
  {
LABEL_79:

    if (!v327)
    {
      goto LABEL_80;
    }

    goto LABEL_158;
  }

LABEL_157:
  if (!v327)
  {
LABEL_80:
    if (v328)
    {
      goto LABEL_81;
    }

    goto LABEL_159;
  }

LABEL_158:

  if (v328)
  {
LABEL_81:

    if (!v329)
    {
      goto LABEL_82;
    }

    goto LABEL_160;
  }

LABEL_159:
  if (!v329)
  {
LABEL_82:
    if (v330)
    {
      goto LABEL_83;
    }

LABEL_161:
    if (!v331)
    {
      return result;
    }
  }

LABEL_160:
  result = sub_1000057B0(v172, v171);
  if (!v330)
  {
    goto LABEL_161;
  }

LABEL_83:

  if (!v331)
  {
    return result;
  }
}

unint64_t sub_10005E188()
{
  result = qword_1000D99E0;
  if (!qword_1000D99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99E0);
  }

  return result;
}

uint64_t sub_10005E1DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000A0BE0();

  v3 = 0;
  result = 48;
  switch(v2)
  {
    case 0:
      goto LABEL_116;
    case 1:
      v3 = 1;
      goto LABEL_116;
    case 2:
      v3 = 2;
      goto LABEL_116;
    case 3:
      v3 = 3;
      goto LABEL_116;
    case 4:
      v3 = 4;
      goto LABEL_116;
    case 5:
      v3 = 5;
      goto LABEL_116;
    case 6:
      v3 = 6;
      goto LABEL_116;
    case 7:
      v3 = 7;
      goto LABEL_116;
    case 8:
      v3 = 8;
      goto LABEL_116;
    case 9:
      v3 = 9;
      goto LABEL_116;
    case 10:
      v3 = 10;
      goto LABEL_116;
    case 11:
      v3 = 11;
      goto LABEL_116;
    case 12:
      v3 = 12;
      goto LABEL_116;
    case 13:
      v3 = 13;
      goto LABEL_116;
    case 14:
      v3 = 14;
      goto LABEL_116;
    case 15:
      v3 = 15;
      goto LABEL_116;
    case 16:
      v3 = 16;
      goto LABEL_116;
    case 17:
      v3 = 17;
      goto LABEL_116;
    case 18:
      v3 = 18;
      goto LABEL_116;
    case 19:
      v3 = 19;
      goto LABEL_116;
    case 20:
      v3 = 20;
      goto LABEL_116;
    case 21:
      v3 = 21;
      goto LABEL_116;
    case 22:
      v3 = 22;
      goto LABEL_116;
    case 23:
      v3 = 23;
      goto LABEL_116;
    case 24:
      v3 = 24;
      goto LABEL_116;
    case 25:
      v3 = 25;
      goto LABEL_116;
    case 26:
      v3 = 26;
      goto LABEL_116;
    case 27:
      v3 = 27;
      goto LABEL_116;
    case 28:
      v3 = 28;
      goto LABEL_116;
    case 29:
      v3 = 29;
      goto LABEL_116;
    case 30:
      v3 = 30;
      goto LABEL_116;
    case 31:
      v3 = 31;
      goto LABEL_116;
    case 32:
      v3 = 32;
      goto LABEL_116;
    case 33:
      v3 = 33;
      goto LABEL_116;
    case 34:
      v3 = 34;
      goto LABEL_116;
    case 35:
      v3 = 35;
      goto LABEL_116;
    case 36:
      v3 = 36;
      goto LABEL_116;
    case 37:
      v3 = 37;
      goto LABEL_116;
    case 38:
      v3 = 38;
      goto LABEL_116;
    case 39:
      v3 = 39;
      goto LABEL_116;
    case 40:
      v3 = 40;
      goto LABEL_116;
    case 41:
      v3 = 41;
      goto LABEL_116;
    case 42:
      v3 = 42;
      goto LABEL_116;
    case 43:
      v3 = 43;
      goto LABEL_116;
    case 44:
      v3 = 44;
      goto LABEL_116;
    case 45:
      v3 = 45;
      goto LABEL_116;
    case 46:
      v3 = 46;
      goto LABEL_116;
    case 47:
      v3 = 47;
LABEL_116:
      result = v3;
      break;
    case 48:
      return result;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v2 - 128) >= 0x1C)
      {
        result = 4294967196;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

unint64_t sub_10005E85C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD040;
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

uint64_t sub_10005E8A8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9B08, &qword_1000AE810);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10005E188();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_1000A0920();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = sub_1000A0920();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = sub_1000A0920();
  v35 = v14;
  v31 = v13;
  LOBYTE(v43[0]) = 3;
  v30 = sub_1000A0920();
  v33 = v15;
  LOBYTE(v43[0]) = 4;
  v29 = sub_1000A0920();
  v32 = v16;
  v44 = 5;
  v17 = sub_1000A0920();
  v18 = *(v6 + 8);
  v19 = v17;
  v28 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v21 = v33;
  *(&v40 + 1) = v33;
  *&v41 = v29;
  v22 = v32;
  *(&v41 + 1) = v32;
  *&v42 = v19;
  v23 = v28;
  *(&v42 + 1) = v28;
  sub_100061200(&v37, v43);
  sub_100002308(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v35;
  v43[6] = v30;
  v43[7] = v21;
  v43[8] = v29;
  v43[9] = v22;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_100061238(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

unint64_t sub_10005ED44()
{
  result = qword_1000D99F0;
  if (!qword_1000D99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99F0);
  }

  return result;
}

unint64_t sub_10005ED98()
{
  result = qword_1000D9A08;
  if (!qword_1000D9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A08);
  }

  return result;
}

unint64_t sub_10005EDEC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD160;
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

uint64_t sub_10005EE38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9B00, &qword_1000AE808);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10005ED98();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v29 = 0;
  v9 = sub_1000A0920();
  v11 = v10;
  v23 = v9;
  v28 = 1;
  v12 = sub_1000A0920();
  v24 = v13;
  v22 = v12;
  v27 = 2;
  v14 = sub_1000A0950();
  v25 = v15;
  v21 = v14;
  v26 = 3;
  v20 = sub_1000A0930();
  (*(v6 + 8))(v8, v5);
  result = sub_100002308(a1);
  v17 = v22;
  *a2 = v23;
  *(a2 + 8) = v11;
  v18 = v24;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21;
  *(a2 + 40) = v25 & 1;
  *(a2 + 41) = v20;
  return result;
}

unint64_t sub_10005F0C0()
{
  result = qword_1000D9A18;
  if (!qword_1000D9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A18);
  }

  return result;
}

unint64_t sub_10005F114(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD1E0;
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

uint64_t sub_10005F160@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9AF8, &qword_1000AE800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10005F0C0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v28) = 0;
  v9 = sub_1000A09C0();
  v35 = v10 & 1;
  LOBYTE(v28) = 1;
  v11 = sub_1000A0950();
  v34 = v12 & 1;
  LOBYTE(v24) = 2;
  sub_100005424();
  sub_1000A0970();
  v23 = v28;
  v36 = 3;
  v13 = sub_1000A0920();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  v22 = v9;
  *&v24 = v9;
  HIDWORD(v21) = v35;
  BYTE8(v24) = v35;
  *&v25 = v11;
  LOBYTE(v9) = v34;
  BYTE8(v25) = v34;
  v17 = v23;
  v26 = v23;
  *&v27 = v13;
  *(&v27 + 1) = v16;
  sub_100061198(&v24, &v28);
  sub_100002308(a1);
  *&v28 = v22;
  BYTE8(v28) = BYTE4(v21);
  v29 = v11;
  v30 = v9;
  v31 = v17;
  v32 = v13;
  v33 = v16;
  result = sub_1000611D0(&v28);
  v19 = v25;
  *a2 = v24;
  a2[1] = v19;
  v20 = v27;
  a2[2] = v26;
  a2[3] = v20;
  return result;
}

unint64_t sub_10005F41C()
{
  result = qword_1000D9A28;
  if (!qword_1000D9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A28);
  }

  return result;
}

unint64_t sub_10005F470(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD260;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005F4BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9AF0, &qword_1000AE7F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10005F41C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v9 = a2;
  LOBYTE(v32) = 0;
  sub_100005424();
  sub_1000A0970();
  v31 = v38[0];
  LOBYTE(v32) = 1;
  sub_1000A0970();
  v30 = v38[0];
  LOBYTE(v38[0]) = 2;
  v10 = sub_1000A0950();
  v48 = v11 & 1;
  LOBYTE(v32) = 3;
  sub_1000A0970();
  v27 = v38[0];
  LOBYTE(v32) = 4;
  v26 = 0;
  sub_1000A0970();
  v25 = v38[0];
  LOBYTE(v32) = 5;
  sub_1000A0970();
  v12 = *(&v38[0] + 1);
  v29 = *&v38[0];
  v49 = 6;
  v28 = sub_1000A0950();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v14 &= 1u;
  v47 = v14;
  v32 = v31;
  v33 = v30;
  v24 = v10;
  *&v34 = v10;
  LODWORD(v26) = v48;
  BYTE8(v34) = v48;
  v17 = v27;
  v15 = v17 >> 64;
  v16 = v17;
  v35 = v27;
  v18 = v25;
  v36 = v25;
  *v37 = v29;
  *&v37[8] = v12;
  v19 = v28;
  *&v37[16] = v28;
  v37[24] = v14;
  sub_100061130(&v32, v38);
  sub_100002308(a1);
  v38[0] = v31;
  v38[1] = v30;
  v39 = v24;
  v40 = v26;
  v41 = __PAIR128__(v15, v16);
  v42 = __PAIR128__(*(&v25 + 1), v18);
  v43 = v29;
  v44 = v12;
  v45 = v19;
  v46 = v14;
  result = sub_100061168(v38);
  v21 = *v37;
  v9[4] = v36;
  v9[5] = v21;
  *(v9 + 89) = *&v37[9];
  v22 = v33;
  *v9 = v32;
  v9[1] = v22;
  v23 = v35;
  v9[2] = v34;
  v9[3] = v23;
  return result;
}

unint64_t sub_10005FB54()
{
  result = qword_1000D9A38;
  if (!qword_1000D9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A38);
  }

  return result;
}

unint64_t sub_10005FBA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD328;
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

uint64_t sub_10005FBF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9AE8, &qword_1000AE7F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10005FB54();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v33) = 0;
  v9 = sub_1000A0920();
  v11 = v10;
  v12 = v9;
  LOBYTE(v33) = 1;
  v27 = sub_1000A0950();
  v43 = v13 & 1;
  LOBYTE(v33) = 2;
  v25 = sub_1000A09C0();
  v42 = v14 & 1;
  LOBYTE(v28) = 3;
  v26 = sub_100005424();
  sub_1000A0970();
  v24 = v33;
  v44 = 4;
  sub_1000A0970();
  (*(v6 + 8))(v8, v5);
  v22 = *(&v41 + 1);
  v26 = v41;
  v23 = v12;
  *&v28 = v12;
  *(&v28 + 1) = v11;
  *&v29 = v27;
  LOBYTE(v12) = v43;
  BYTE8(v29) = v43;
  v15 = v25;
  *&v30 = v25;
  v16 = v42;
  BYTE8(v30) = v42;
  v17 = v24;
  v31 = v24;
  v32 = v41;
  sub_1000610C8(&v28, &v33);
  sub_100002308(a1);
  *&v33 = v23;
  *(&v33 + 1) = v11;
  v34 = v27;
  v35 = v12;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v26;
  v40 = v22;
  result = sub_100061100(&v33);
  v19 = v31;
  a2[2] = v30;
  a2[3] = v19;
  a2[4] = v32;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  return result;
}

uint64_t sub_10005FFC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005FFEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 2179))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t sub_100060048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 2168) = 0;
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
    *(result + 2178) = 0;
    *(result + 2176) = 0;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2179) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2179) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t sub_1000602F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100060350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IDSMadridProtocolDeliveryContext(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSMadridProtocolDeliveryContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSMadridProtocolDeliveryContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

__n128 sub_10006043C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100060450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000604AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10006051C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100060530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10006058C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 sub_100060600(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006062C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 105))
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

uint64_t sub_100060688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_100060704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100060760(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSMadridProtocolPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x65)
  {
    goto LABEL_17;
  }

  if (a2 + 155 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 155) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 155;
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

      return (*a1 | (v4 << 8)) - 155;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 155;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x9C;
  v8 = v6 - 156;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSMadridProtocolPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 155 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 155) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x65)
  {
    v4 = 0;
  }

  if (a2 > 0x64)
  {
    v5 = ((a2 - 101) >> 8) + 1;
    *result = a2 - 101;
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
    *result = a2 - 101;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100060994()
{
  result = qword_1000D9A40;
  if (!qword_1000D9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A40);
  }

  return result;
}

unint64_t sub_1000609EC()
{
  result = qword_1000D9A48;
  if (!qword_1000D9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A48);
  }

  return result;
}

unint64_t sub_100060A44()
{
  result = qword_1000D9A50;
  if (!qword_1000D9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A50);
  }

  return result;
}

unint64_t sub_100060A9C()
{
  result = qword_1000D9A58;
  if (!qword_1000D9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A58);
  }

  return result;
}

unint64_t sub_100060AF4()
{
  result = qword_1000D9A60;
  if (!qword_1000D9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A60);
  }

  return result;
}

unint64_t sub_100060B4C()
{
  result = qword_1000D9A68;
  if (!qword_1000D9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A68);
  }

  return result;
}

unint64_t sub_100060BA4()
{
  result = qword_1000D9A70;
  if (!qword_1000D9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A70);
  }

  return result;
}

unint64_t sub_100060BFC()
{
  result = qword_1000D9A78;
  if (!qword_1000D9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A78);
  }

  return result;
}

unint64_t sub_100060C54()
{
  result = qword_1000D9A80;
  if (!qword_1000D9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A80);
  }

  return result;
}

unint64_t sub_100060CAC()
{
  result = qword_1000D9A88;
  if (!qword_1000D9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A88);
  }

  return result;
}

unint64_t sub_100060D04()
{
  result = qword_1000D9A90;
  if (!qword_1000D9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A90);
  }

  return result;
}

unint64_t sub_100060D5C()
{
  result = qword_1000D9A98;
  if (!qword_1000D9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A98);
  }

  return result;
}

unint64_t sub_100060DB4()
{
  result = qword_1000D9AA0;
  if (!qword_1000D9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AA0);
  }

  return result;
}

unint64_t sub_100060E0C()
{
  result = qword_1000D9AA8;
  if (!qword_1000D9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AA8);
  }

  return result;
}

unint64_t sub_100060E64()
{
  result = qword_1000D9AB0;
  if (!qword_1000D9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AB0);
  }

  return result;
}

unint64_t sub_100060EBC()
{
  result = qword_1000D9AB8;
  if (!qword_1000D9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AB8);
  }

  return result;
}

unint64_t sub_100060F14()
{
  result = qword_1000D9AC0;
  if (!qword_1000D9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AC0);
  }

  return result;
}

unint64_t sub_100060F6C()
{
  result = qword_1000D9AC8;
  if (!qword_1000D9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AC8);
  }

  return result;
}

unint64_t sub_100060FC4()
{
  result = qword_1000D9AD0;
  if (!qword_1000D9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AD0);
  }

  return result;
}

unint64_t sub_10006101C()
{
  result = qword_1000D9AD8;
  if (!qword_1000D9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AD8);
  }

  return result;
}

unint64_t sub_100061074()
{
  result = qword_1000D9AE0;
  if (!qword_1000D9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9AE0);
  }

  return result;
}

unint64_t sub_100061268()
{
  result = qword_1000D9B18;
  if (!qword_1000D9B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B18);
  }

  return result;
}

uint64_t sub_1000612BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D9940, &qword_1000AC250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061328()
{
  result = qword_1000D9B28;
  if (!qword_1000D9B28)
  {
    sub_1000053DC(&qword_1000D9950, &qword_1000AC258);
    sub_1000613AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B28);
  }

  return result;
}

unint64_t sub_1000613AC()
{
  result = qword_1000D9B30;
  if (!qword_1000D9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B30);
  }

  return result;
}

unint64_t sub_100061400()
{
  result = qword_1000D9B38;
  if (!qword_1000D9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B38);
  }

  return result;
}

unint64_t sub_100061454()
{
  result = qword_1000D9B40;
  if (!qword_1000D9B40)
  {
    sub_1000053DC(&qword_1000D9978, &qword_1000AC268);
    sub_1000614D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B40);
  }

  return result;
}

unint64_t sub_1000614D8()
{
  result = qword_1000D9B48;
  if (!qword_1000D9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B48);
  }

  return result;
}

unint64_t sub_10006152C()
{
  result = qword_1000D9B50;
  if (!qword_1000D9B50)
  {
    sub_1000053DC(&qword_1000D9990, &qword_1000AC270);
    sub_1000615B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B50);
  }

  return result;
}

unint64_t sub_1000615B0()
{
  result = qword_1000D9B58;
  if (!qword_1000D9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B58);
  }

  return result;
}

unint64_t sub_100061604()
{
  result = qword_1000D9B60;
  if (!qword_1000D9B60)
  {
    sub_1000053DC(&qword_1000D99A8, &qword_1000AC278);
    sub_100061688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B60);
  }

  return result;
}

unint64_t sub_100061688()
{
  result = qword_1000D9B68;
  if (!qword_1000D9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B68);
  }

  return result;
}

unint64_t sub_1000616DC()
{
  result = qword_1000D9B70;
  if (!qword_1000D9B70)
  {
    sub_1000053DC(&qword_1000D99C0, &qword_1000AC280);
    sub_100061760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B70);
  }

  return result;
}

unint64_t sub_100061760()
{
  result = qword_1000D9B78;
  if (!qword_1000D9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B78);
  }

  return result;
}

uint64_t sub_100061828(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001000A1310;
  v5 = 0xE100000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001000A1310;
  }

  else
  {
    v3 = 118;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 112;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 118;
    v4 = 0xE100000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 112;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE100000000000000;
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

Swift::Int sub_100061904()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100061994(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100061A10(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100061A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100061E50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100061ACC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0x80000001000A1310;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 118;
    v4 = 0xE100000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 112;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100061B18()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 118;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 112;
  }
}

unint64_t sub_100061B60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100061B88(uint64_t a1)
{
  v2 = sub_100061DA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100061BC4(uint64_t a1)
{
  v2 = sub_100061DA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFMappingPacketSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9B80, &qword_1000AE850);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_100061DA0();
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
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100061DA0()
{
  result = qword_1000D9B88;
  if (!qword_1000D9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B88);
  }

  return result;
}

double FMFMappingPacketSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100061E9C(a2, v6);
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

unint64_t sub_100061E50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD3C0;
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

uint64_t sub_100061E9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9BA8, &qword_1000AEA48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100061DA0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v25 = 0;
  v9 = sub_1000A09D0();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1000A09D0();
  v21 = v12;
  v23 = 2;
  v13 = sub_1000A09D0();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100002308(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

__n128 sub_1000620E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000620FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100062144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000621B4()
{
  result = qword_1000D9B90;
  if (!qword_1000D9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B90);
  }

  return result;
}

unint64_t sub_10006220C()
{
  result = qword_1000D9B98;
  if (!qword_1000D9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9B98);
  }

  return result;
}

unint64_t sub_100062264()
{
  result = qword_1000D9BA0;
  if (!qword_1000D9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BA0);
  }

  return result;
}

uint64_t sub_1000622B8(uint64_t a1, uint64_t a2)
{
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000624D0();
  sub_10009F250();
  if (v2)
  {
  }

  v4[6] = v12;
  v4[7] = v13;
  v4[8] = v14;
  v5 = v15;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v4[0] = v6;
  v4[1] = v7;
  v16 = v6;
  sub_100005750(*(&v9 + 1), v10);
  sub_100005750(*(&v6 + 1), v7);

  sub_100005750(v11, *(&v11 + 1));
  sub_100005750(*(&v12 + 1), v13);
  sub_10009F750();

  return sub_100043F3C(v4);
}

unint64_t sub_1000624D0()
{
  result = qword_1000D9BB0;
  if (!qword_1000D9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9BB0);
  }

  return result;
}

uint64_t sub_100062524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2 == 1)
  {
    v6 = "IDSProtoBufDataKey";
  }

  else
  {
    v6 = "IDSProtoBufIsResponseKey";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "is-u-plus-one-key";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "IDSProtoBufIsResponseKey";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "is-u-plus-one-key";
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