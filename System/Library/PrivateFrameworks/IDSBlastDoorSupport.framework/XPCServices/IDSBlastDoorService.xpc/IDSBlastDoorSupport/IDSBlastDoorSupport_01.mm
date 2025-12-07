unint64_t sub_10002CC68(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB228;
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

uint64_t sub_10002CCB4(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D88B8, &unk_1000A78D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_10002C880();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_10002CEF4()
{
  result = qword_1000D8878;
  if (!qword_1000D8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8878);
  }

  return result;
}

void *sub_10002CF48(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D88B0, &qword_1000A78C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10002CEF4();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C390(&qword_1000D8848, &qword_1000D8850, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    sub_1000A0A20();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002308(a1);
  }

  return v7;
}

unint64_t sub_10002D148()
{
  result = qword_1000D8880;
  if (!qword_1000D8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8880);
  }

  return result;
}

unint64_t sub_10002D1A0()
{
  result = qword_1000D8888;
  if (!qword_1000D8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8888);
  }

  return result;
}

unint64_t sub_10002D1F8()
{
  result = qword_1000D8890;
  if (!qword_1000D8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8890);
  }

  return result;
}

unint64_t sub_10002D250()
{
  result = qword_1000D8898;
  if (!qword_1000D8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8898);
  }

  return result;
}

unint64_t sub_10002D2A8()
{
  result = qword_1000D88A0;
  if (!qword_1000D88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88A0);
  }

  return result;
}

unint64_t sub_10002D300()
{
  result = qword_1000D88A8;
  if (!qword_1000D88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88A8);
  }

  return result;
}

uint64_t sub_10002D354(char *a1, char *a2)
{
  if (qword_1000A7D38[*a1] == qword_1000A7D38[*a2])
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

Swift::Int sub_10002D3BC()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002D418(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10002D458(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002D4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002DE80(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002D514@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002DE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002D53C(uint64_t a1)
{
  v2 = sub_10002D778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002D578(uint64_t a1)
{
  v2 = sub_10002D778();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAcceptEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D88C0, &qword_1000A7900);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_10002D778();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10002D778()
{
  result = qword_1000D88C8;
  if (!qword_1000D88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88C8);
  }

  return result;
}

uint64_t CircleTrustAcceptEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_10002DECC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002D7F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002DECC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int sub_10002D848()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10002D8CC(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10002D928@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB368;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002D9C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB3A0;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002DA20(uint64_t a1)
{
  v2 = sub_10002E10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002DA5C(uint64_t a1)
{
  v2 = sub_10002E10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAcceptEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D88D0, &qword_1000A7908);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_10002E10C();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CircleTrustAcceptEnvelopeV1PayloadSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_10009F370();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D88E0, &qword_1000A7910);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_10002E10C();
  v12 = v19;
  sub_1000A0CD0();
  if (!v12)
  {
    v13 = v17;
    sub_10002C418(&qword_1000D8850, &protocol conformance descriptor for UUID);
    sub_1000A0A20();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_10002E1AC(v11, v16);
  }

  return sub_100002308(a1);
}

unint64_t sub_10002DE80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB300;
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

uint64_t sub_10002DECC(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D89A8, &unk_1000A7D28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_10002D778();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_10002E10C()
{
  result = qword_1000D88D8;
  if (!qword_1000D88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88D8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema(uint64_t a1)
{
  result = qword_1000D8940;
  if (!qword_1000D8940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E234(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002E2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002E324(uint64_t a1)
{
  result = sub_10009F370();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002E3B4()
{
  result = qword_1000D8978;
  if (!qword_1000D8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8978);
  }

  return result;
}

unint64_t sub_10002E40C()
{
  result = qword_1000D8980;
  if (!qword_1000D8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8980);
  }

  return result;
}

unint64_t sub_10002E464()
{
  result = qword_1000D8988;
  if (!qword_1000D8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8988);
  }

  return result;
}

unint64_t sub_10002E4BC()
{
  result = qword_1000D8990;
  if (!qword_1000D8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8990);
  }

  return result;
}

unint64_t sub_10002E514()
{
  result = qword_1000D8998;
  if (!qword_1000D8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8998);
  }

  return result;
}

unint64_t sub_10002E56C()
{
  result = qword_1000D89A0;
  if (!qword_1000D89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89A0);
  }

  return result;
}

uint64_t sub_10002E5C0(char *a1, char *a2)
{
  if (qword_1000A8178[*a1] == qword_1000A8178[*a2])
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

Swift::Int sub_10002E628()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002E684(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10002E6C4(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002E71C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002EFC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002E780@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002EFC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002E7A8(uint64_t a1)
{
  v2 = sub_10002E9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002E7E4(uint64_t a1)
{
  v2 = sub_10002E9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAckEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D89B0, &qword_1000A7D50);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_10002E9E4();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10002E9E4()
{
  result = qword_1000D89B8;
  if (!qword_1000D89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89B8);
  }

  return result;
}

uint64_t CircleTrustAckEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_10002F00C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002EA64@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002F00C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10002EAB4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB440;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002EB08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB478;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002EB60(uint64_t a1)
{
  v2 = sub_10002F24C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002EB9C(uint64_t a1)
{
  v2 = sub_10002F24C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAckEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D89C0, &qword_1000A7D58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_10002F24C();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CircleTrustAckEnvelopeV1PayloadSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_10009F370();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D89D0, &qword_1000A7D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_10002F24C();
  v12 = v19;
  sub_1000A0CD0();
  if (!v12)
  {
    v13 = v17;
    sub_10002C418(&qword_1000D8850, &protocol conformance descriptor for UUID);
    sub_1000A0A20();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_10002F2EC(v11, v16);
  }

  return sub_100002308(a1);
}

unint64_t sub_10002EFC0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB3D8;
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

uint64_t sub_10002F00C(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8A98, &unk_1000A8168);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_10002E9E4();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_10002F24C()
{
  result = qword_1000D89C8;
  if (!qword_1000D89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89C8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema(uint64_t a1)
{
  result = qword_1000D8A30;
  if (!qword_1000D8A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F374(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002F3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_10002F488()
{
  result = qword_1000D8A68;
  if (!qword_1000D8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A68);
  }

  return result;
}

unint64_t sub_10002F4E0()
{
  result = qword_1000D8A70;
  if (!qword_1000D8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A70);
  }

  return result;
}

unint64_t sub_10002F538()
{
  result = qword_1000D8A78;
  if (!qword_1000D8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A78);
  }

  return result;
}

unint64_t sub_10002F590()
{
  result = qword_1000D8A80;
  if (!qword_1000D8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A80);
  }

  return result;
}

unint64_t sub_10002F5E8()
{
  result = qword_1000D8A88;
  if (!qword_1000D8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A88);
  }

  return result;
}

unint64_t sub_10002F640()
{
  result = qword_1000D8A90;
  if (!qword_1000D8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A90);
  }

  return result;
}

uint64_t sub_10002F694(char *a1, char *a2)
{
  if (qword_1000A85C8[*a1] == qword_1000A85C8[*a2])
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

Swift::Int sub_10002F6FC()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002F758(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10002F798(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002F7F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100030094(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002F854@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002F87C(uint64_t a1)
{
  v2 = sub_10002FAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F8B8(uint64_t a1)
{
  v2 = sub_10002FAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustDeclineEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8AA0, &qword_1000A8190);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_10002FAB8();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10002FAB8()
{
  result = qword_1000D8AA8;
  if (!qword_1000D8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8AA8);
  }

  return result;
}

uint64_t CircleTrustDeclineEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_1000300E0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002FB38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000300E0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10002FB88@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB518;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002FBDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB550;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002FC34(uint64_t a1)
{
  v2 = sub_100030320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002FC70(uint64_t a1)
{
  v2 = sub_100030320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustDeclineEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D8AB0, &qword_1000A8198);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_100030320();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CircleTrustDeclineEnvelopeV1PayloadSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_10009F370();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D8AC0, &qword_1000A81A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_100030320();
  v12 = v19;
  sub_1000A0CD0();
  if (!v12)
  {
    v13 = v17;
    sub_10002C418(&qword_1000D8850, &protocol conformance descriptor for UUID);
    sub_1000A0A20();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1000303C0(v11, v16);
  }

  return sub_100002308(a1);
}

unint64_t sub_100030094(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB4B0;
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

uint64_t sub_1000300E0(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8B88, &unk_1000A85B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_10002FAB8();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_100030320()
{
  result = qword_1000D8AB8;
  if (!qword_1000D8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8AB8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema(uint64_t a1)
{
  result = qword_1000D8B20;
  if (!qword_1000D8B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000303C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000304C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_10003055C()
{
  result = qword_1000D8B58;
  if (!qword_1000D8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B58);
  }

  return result;
}

unint64_t sub_1000305B4()
{
  result = qword_1000D8B60;
  if (!qword_1000D8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B60);
  }

  return result;
}

unint64_t sub_10003060C()
{
  result = qword_1000D8B68;
  if (!qword_1000D8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B68);
  }

  return result;
}

unint64_t sub_100030664()
{
  result = qword_1000D8B70;
  if (!qword_1000D8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B70);
  }

  return result;
}

unint64_t sub_1000306BC()
{
  result = qword_1000D8B78;
  if (!qword_1000D8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B78);
  }

  return result;
}

unint64_t sub_100030714()
{
  result = qword_1000D8B80;
  if (!qword_1000D8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B80);
  }

  return result;
}

uint64_t sub_100030768(char *a1, char *a2)
{
  if (qword_1000A8A10[*a1] == qword_1000A8A10[*a2])
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

Swift::Int sub_1000307D0()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003082C(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10003086C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_1000308C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032038(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100030928@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100030950(uint64_t a1)
{
  v2 = sub_100030B8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003098C(uint64_t a1)
{
  v2 = sub_100030B8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8B90, &qword_1000A85E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_100030B8C();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100030B8C()
{
  result = qword_1000D8B98;
  if (!qword_1000D8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B98);
  }

  return result;
}

uint64_t CircleTrustEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_100032084(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_100030C0C(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100030DF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100032084(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100030E48(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100030C0C(*a1);
  v5 = v4;
  if (v3 == sub_100030C0C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100030ED0()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_100030C0C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100030F34(uint64_t a1)
{
  sub_100030C0C(*v1);
  sub_1000A05B0();
}

Swift::Int sub_100030F88(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_100030C0C(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100030FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032D60(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100031018@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100030C0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100031060@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100031094(uint64_t a1)
{
  v2 = sub_1000322C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000310D0(uint64_t a1)
{
  v2 = sub_1000322C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8BA0, &qword_1000A85E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_1000322C4();
  sub_1000A0CE0();
  LOBYTE(v13) = 0;
  sub_10009F370();
  sub_1000324D8(&qword_1000D8808, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  if (!v2)
  {
    v9 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema(0);
    LOBYTE(v13) = 1;
    sub_1000A0AD0();
    LOBYTE(v13) = 2;
    sub_1000A0B80();
    LOBYTE(v13) = 3;
    sub_1000A0AD0();
    LOBYTE(v13) = 4;
    sub_1000A0B30();
    LOBYTE(v13) = 5;
    sub_1000A0B30();
    LOBYTE(v13) = 6;
    sub_1000A0BA0();
    LOBYTE(v13) = 7;
    sub_1000A0BA0();
    LOBYTE(v13) = 8;
    sub_1000A0B30();
    LOBYTE(v13) = 9;
    sub_1000A0B60();
    LOBYTE(v13) = 10;
    sub_1000A0B30();
    v10 = (v3 + *(v9 + 60));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 11;
    sub_1000054CC(v13, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v13, v14);
    v13 = *(v3 + *(v9 + 64));
    v15 = 12;
    sub_1000017BC(&qword_1000D8BB0, &qword_1000A85F0);
    sub_10003243C(&qword_1000D8BB8, &qword_1000D8BC0, &protocol conformance descriptor for PeerTrustEnvelopeV1, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
    LOBYTE(v13) = 13;
    sub_1000A0B60();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CircleTrustEnvelopeV1PayloadSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v4 = __chkstk_darwin(v3 - 8);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v55 - v6;
  v7 = sub_10009F370();
  v63 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v55 - v11;
  v67 = sub_1000017BC(&qword_1000D8BD0, &qword_1000A8600);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v13 = &v55 - v12;
  v14 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema(0);
  __chkstk_darwin(v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_1000322C4();
  v66 = v13;
  v17 = v68;
  sub_1000A0CD0();
  if (v17)
  {
    return sub_100002308(a1);
  }

  v57 = v10;
  v58 = v14;
  v68 = a1;
  v59 = v16;
  LOBYTE(v69) = 0;
  sub_1000324D8(&qword_1000D8850, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = v64;
  sub_1000A0A20();
  v20 = v7;
  v21 = *(v63 + 32);
  v22 = v59;
  v21(v59, v18, v20);
  LOBYTE(v69) = 1;
  v23 = v62;
  sub_1000A0970();
  v56 = v20;
  v24 = v22;
  v25 = v58;
  sub_1000323CC(v23, &v24[v58[5]]);
  LOBYTE(v69) = 2;
  v26 = v57;
  v62 = 0;
  sub_1000A0A20();
  v21(&v59[v25[6]], v26, v20);
  LOBYTE(v69) = 3;
  v27 = v61;
  sub_1000A0970();
  sub_1000323CC(v27, &v59[v25[7]]);
  LOBYTE(v69) = 4;
  v28 = sub_1000A09D0();
  v29 = &v59[v25[8]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v69) = 5;
  v31 = sub_1000A09D0();
  v32 = &v59[v25[9]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v69) = 6;
  *&v59[v25[10]] = sub_1000A0A40();
  LOBYTE(v69) = 7;
  *&v59[v58[11]] = sub_1000A0A40();
  LOBYTE(v69) = 8;
  v38 = sub_1000A09D0();
  v64 = 0;
  v40 = &v59[v58[12]];
  *v40 = v38;
  v40[1] = v39;
  LOBYTE(v69) = 9;
  v41 = v64;
  v42 = sub_1000A0A00();
  v64 = v41;
  if (v41 || (*&v59[v58[13]] = v42, LOBYTE(v69) = 10, v43 = v64, v44 = sub_1000A09D0(), (v64 = v43) != 0))
  {
    (*(v65 + 8))(v66, v67);
    LODWORD(v65) = 0;
    LODWORD(v66) = 0;
    LODWORD(v67) = 0;
  }

  else
  {
    v48 = &v59[v58[14]];
    *v48 = v44;
    v48[1] = v45;
    v70 = 11;
    sub_100005424();
    v49 = v64;
    sub_1000A0A20();
    v64 = v49;
    if (v49)
    {
      (*(v65 + 8))(v66, v67);
      LODWORD(v66) = 0;
      LODWORD(v67) = 0;
      LODWORD(v65) = 1;
    }

    else
    {
      *&v59[v58[15]] = v69;
      sub_1000017BC(&qword_1000D8BB0, &qword_1000A85F0);
      v70 = 12;
      sub_10003243C(&qword_1000D8BD8, &qword_1000D8BE0, &protocol conformance descriptor for PeerTrustEnvelopeV1, &protocol conformance descriptor for <A> [A]);
      v50 = v64;
      sub_1000A0A20();
      v64 = v50;
      if (v50)
      {
        (*(v65 + 8))(v66, v67);
        LODWORD(v67) = 0;
        LODWORD(v65) = 1;
        LODWORD(v66) = 1;
      }

      else
      {
        *&v59[v58[16]] = v69;
        LOBYTE(v69) = 13;
        v51 = v64;
        v52 = sub_1000A0A00();
        v64 = v51;
        if (!v51)
        {
          v53 = v52;
          (*(v65 + 8))(v66, v67);
          v54 = v59;
          *&v59[v58[17]] = v53;
          sub_100032520(v54, v60);
          sub_100002308(v68);
          return sub_100032584(v54);
        }

        (*(v65 + 8))(v66, v67);
        LODWORD(v65) = 1;
        LODWORD(v66) = 1;
        LODWORD(v67) = 1;
      }
    }
  }

  v47 = v62;
  v46 = v63;
  sub_100002308(v68);
  v34 = *(v46 + 8);
  v35 = v59;
  v34(v59, v56);
  if (!v47)
  {
    sub_100032364(&v35[v58[5]]);
  }

  v37 = v58;
  v36 = v59;
  v34(&v59[v58[6]], v56);
  sub_100032364(&v36[v37[7]]);

  if (v65)
  {

    if (v66)
    {
LABEL_9:
      result = sub_100005568(*&v36[v37[15]], *&v36[v37[15] + 8]);
      if (v67)
      {
      }

      return result;
    }
  }

  else if (v66)
  {
    goto LABEL_9;
  }

  if (v67)
  {
  }

  return result;
}

unint64_t sub_100032038(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB588;
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

uint64_t sub_100032084(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8CE8, &unk_1000A8A00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_100030B8C();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_1000322C4()
{
  result = qword_1000D8BA8;
  if (!qword_1000D8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8BA8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustEnvelopeV1PayloadSchema(uint64_t a1)
{
  result = qword_1000D8C40;
  if (!qword_1000D8C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032364(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000323CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003243C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D8BB0, &qword_1000A85F0);
    sub_1000324D8(a2, &type metadata accessor for PeerTrustEnvelopeV1, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000324D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100032520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032584(uint64_t a1)
{
  v2 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100032604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009F370();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100032734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10009F370();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10003284C(uint64_t a1)
{
  sub_10009F370();
  if (v1 <= 0x3F)
  {
    sub_10003298C(319, &qword_1000D8C50, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10003298C(319, &unk_1000D8C58, &type metadata accessor for PeerTrustEnvelopeV1, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003298C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for CircleTrustEnvelopeV1PayloadSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CircleTrustEnvelopeV1PayloadSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100032B54()
{
  result = qword_1000D8CB8;
  if (!qword_1000D8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CB8);
  }

  return result;
}

unint64_t sub_100032BAC()
{
  result = qword_1000D8CC0;
  if (!qword_1000D8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CC0);
  }

  return result;
}

unint64_t sub_100032C04()
{
  result = qword_1000D8CC8;
  if (!qword_1000D8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CC8);
  }

  return result;
}

unint64_t sub_100032C5C()
{
  result = qword_1000D8CD0;
  if (!qword_1000D8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CD0);
  }

  return result;
}

unint64_t sub_100032CB4()
{
  result = qword_1000D8CD8;
  if (!qword_1000D8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CD8);
  }

  return result;
}

unint64_t sub_100032D0C()
{
  result = qword_1000D8CE0;
  if (!qword_1000D8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CE0);
  }

  return result;
}

unint64_t sub_100032D60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB5F0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032DB4(char *a1, char *a2)
{
  if (qword_1000A8E90[*a1] == qword_1000A8E90[*a2])
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

Swift::Int sub_100032E1C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100032E78(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100032EB8(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100032F10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000335C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100032F74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000335C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100032F9C(uint64_t a1)
{
  v2 = sub_1000331D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032FD8(uint64_t a1)
{
  v2 = sub_1000331D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustRequestEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8CF0, &qword_1000A8A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_1000331D8();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000331D8()
{
  result = qword_1000D8CF8;
  if (!qword_1000D8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CF8);
  }

  return result;
}

uint64_t CircleTrustRequestEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_10003360C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100033258@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003360C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000332A8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB7C8;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000332FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB800;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100033354(uint64_t a1)
{
  v2 = sub_10003384C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033390(uint64_t a1)
{
  v2 = sub_10003384C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustRequestEnvelopeV1PayloadSchema.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8D00, &unk_1000A8A38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_10003384C();
  sub_1000A0CE0();
  v9[1] = a2;
  sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
  sub_10002C390(&qword_1000D8800, &qword_1000D8808, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  sub_1000A0B80();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100033578@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000338A0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000335C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB760;
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

uint64_t sub_10003360C(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8D48, &unk_1000A8E80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_1000331D8();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_10003384C()
{
  result = qword_1000D8D08;
  if (!qword_1000D8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D08);
  }

  return result;
}

void *sub_1000338A0(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8D40, &qword_1000A8E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10003384C();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C390(&qword_1000D8848, &qword_1000D8850, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    sub_1000A0A20();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002308(a1);
  }

  return v7;
}

unint64_t sub_100033AA0()
{
  result = qword_1000D8D10;
  if (!qword_1000D8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D10);
  }

  return result;
}

unint64_t sub_100033AF8()
{
  result = qword_1000D8D18;
  if (!qword_1000D8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D18);
  }

  return result;
}

unint64_t sub_100033B50()
{
  result = qword_1000D8D20;
  if (!qword_1000D8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D20);
  }

  return result;
}

unint64_t sub_100033BA8()
{
  result = qword_1000D8D28;
  if (!qword_1000D8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D28);
  }

  return result;
}

unint64_t sub_100033C00()
{
  result = qword_1000D8D30;
  if (!qword_1000D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D30);
  }

  return result;
}

unint64_t sub_100033C58()
{
  result = qword_1000D8D38;
  if (!qword_1000D8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D38);
  }

  return result;
}

uint64_t sub_100033CAC(char *a1, char *a2)
{
  if (qword_1000A92F0[*a1] == qword_1000A92F0[*a2])
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

Swift::Int sub_100033D14()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100033D70(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100033DB0(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100033E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000346AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100033E6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000346AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033E94(uint64_t a1)
{
  v2 = sub_1000340D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033ED0(uint64_t a1)
{
  v2 = sub_1000340D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DelegatedCircleTrustStopEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8D50, &qword_1000A8EB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_1000340D0();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000340D0()
{
  result = qword_1000D8D58;
  if (!qword_1000D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D58);
  }

  return result;
}

uint64_t DelegatedCircleTrustStopEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_1000346F8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100034150@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000346F8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000341A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB8A0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000341F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB8D8;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10003424C(uint64_t a1)
{
  v2 = sub_100034938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034288(uint64_t a1)
{
  v2 = sub_100034938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DelegatedCircleTrustStopEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D8D60, &qword_1000A8EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_100034938();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DelegatedCircleTrustStopEnvelopeV1PayloadSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_10009F370();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D8D70, &qword_1000A8EC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_100034938();
  v12 = v19;
  sub_1000A0CD0();
  if (!v12)
  {
    v13 = v17;
    sub_10002C418(&qword_1000D8850, &protocol conformance descriptor for UUID);
    sub_1000A0A20();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1000349D8(v11, v16);
  }

  return sub_100002308(a1);
}

unint64_t sub_1000346AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB838;
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

uint64_t sub_1000346F8(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8E38, &unk_1000A92E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_1000340D0();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_100034938()
{
  result = qword_1000D8D68;
  if (!qword_1000D8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D68);
  }

  return result;
}

uint64_t type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema(uint64_t a1)
{
  result = qword_1000D8DD0;
  if (!qword_1000D8DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000349D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100034AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_100034B74()
{
  result = qword_1000D8E08;
  if (!qword_1000D8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E08);
  }

  return result;
}

unint64_t sub_100034BCC()
{
  result = qword_1000D8E10;
  if (!qword_1000D8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E10);
  }

  return result;
}

unint64_t sub_100034C24()
{
  result = qword_1000D8E18;
  if (!qword_1000D8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E18);
  }

  return result;
}

unint64_t sub_100034C7C()
{
  result = qword_1000D8E20;
  if (!qword_1000D8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E20);
  }

  return result;
}

unint64_t sub_100034CD4()
{
  result = qword_1000D8E28;
  if (!qword_1000D8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E28);
  }

  return result;
}

unint64_t sub_100034D2C()
{
  result = qword_1000D8E30;
  if (!qword_1000D8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E30);
  }

  return result;
}

uint64_t sub_100034D80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1937335659;
  if (v2 != 1)
  {
    v3 = 1701869940;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E656D6E67696C61;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  v6 = 1937335659;
  if (*a2 != 1)
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E656D6E67696C61;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE900000000000074;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();
  }

  return v9 & 1;
}

Swift::Int sub_100034E64()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100034EFC(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100034F80(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100035014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100035DF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100035044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 1937335659;
  if (v2 != 1)
  {
    v4 = 1701869940;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E656D6E67696C61;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100035098()
{
  v1 = 1937335659;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6E67696C61;
  }
}

unint64_t sub_1000350E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100035110(uint64_t a1)
{
  v2 = sub_1000353D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003514C(uint64_t a1)
{
  v2 = sub_1000353D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeyPackageSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8E40, &qword_1000A9310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000022C4(a1, a1[3]);
  sub_1000353D8();
  sub_1000A0CE0();
  v12 = 0;
  sub_1000A0510();
  sub_100035928(&qword_1000D8E50, &type metadata accessor for Alignment, &protocol conformance descriptor for Alignment);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for KeyPackageSchema(0) + 20));
    v10[15] = 1;
    sub_1000017BC(&qword_1000D8E58, &qword_1000A9318);
    sub_10003588C(&qword_1000D8E60, &qword_1000D8E68, &protocol conformance descriptor for EncodedKey, &protocol conformance descriptor for <A> [A]);
    sub_1000A0B80();
    v10[14] = 2;
    sub_1000A0B30();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000353D8()
{
  result = qword_1000D8E48;
  if (!qword_1000D8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E48);
  }

  return result;
}

uint64_t type metadata accessor for KeyPackageSchema(uint64_t a1)
{
  result = qword_1000D8EE8;
  if (!qword_1000D8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeyPackageSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000A0510();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000017BC(&qword_1000D8E70, &qword_1000A9320);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v22 - v6;
  v8 = type metadata accessor for KeyPackageSchema(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_1000353D8();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v12 = v25;
  v11 = v26;
  v22 = v10;
  v23 = a1;
  v32 = 0;
  sub_100035928(&qword_1000D8E78, &type metadata accessor for Alignment, &protocol conformance descriptor for Alignment);
  v14 = v27;
  v13 = v28;
  sub_1000A0A20();
  (*(v11 + 32))(v22, v14, v4);
  sub_1000017BC(&qword_1000D8E58, &qword_1000A9318);
  v31 = 1;
  sub_10003588C(&qword_1000D8E80, &qword_1000D8E88, &protocol conformance descriptor for EncodedKey, &protocol conformance descriptor for <A> [A]);
  sub_1000A0A20();
  *&v22[*(v8 + 20)] = v29;
  v30 = 2;
  v15 = sub_1000A09D0();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = *(v8 + 24);
  v19 = v22;
  v20 = &v22[v18];
  *v20 = v15;
  v20[1] = v17;
  sub_100035970(v19, v24);
  sub_100002308(v23);
  return sub_1000359D4(v19);
}

uint64_t sub_10003588C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D8E58, &qword_1000A9318);
    sub_100035928(a2, &type metadata accessor for EncodedKey, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100035928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPackageSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000359D4(uint64_t a1)
{
  v2 = type metadata accessor for KeyPackageSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A0510();
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

uint64_t sub_100035B44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000A0510();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100035BFC(uint64_t a1)
{
  sub_1000A0510();
  if (v1 <= 0x3F)
  {
    sub_100035C88(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100035C88(uint64_t a1)
{
  if (!qword_1000D8EF8)
  {
    sub_10009F470();
    v1 = sub_1000A0700();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D8EF8);
    }
  }
}

unint64_t sub_100035CF4()
{
  result = qword_1000D8F30;
  if (!qword_1000D8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F30);
  }

  return result;
}

unint64_t sub_100035D4C()
{
  result = qword_1000D8F38;
  if (!qword_1000D8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F38);
  }

  return result;
}

unint64_t sub_100035DA4()
{
  result = qword_1000D8F40;
  if (!qword_1000D8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F40);
  }

  return result;
}

unint64_t sub_100035DF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB910;
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

uint64_t sub_100035E44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7955819;
  }

  else
  {
    v3 = 0x7865646E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7955819;
  }

  else
  {
    v5 = 0x7865646E69;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_100035EE0()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100035F58(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100035FBC(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100036030@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB978;
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

void sub_100036090(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (!*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000360C4()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1000360F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB978;
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

uint64_t sub_100036164(uint64_t a1)
{
  v2 = sub_100036378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000361A0(uint64_t a1)
{
  v2 = sub_100036378();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeySchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_1000017BC(&qword_1000D8F48, &qword_1000A94E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000022C4(a1, a1[3]);
  sub_100036378();
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

unint64_t sub_100036378()
{
  result = qword_1000D8F50;
  if (!qword_1000D8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F50);
  }

  return result;
}

uint64_t KeySchema.init(from:)(void *a1)
{
  result = sub_100036444(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000363F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100036444(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100036444(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8F70, &unk_1000A9720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_100036378();
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

__n128 sub_100036608(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003661C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100036670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeySchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeySchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100036830()
{
  result = qword_1000D8F58;
  if (!qword_1000D8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F58);
  }

  return result;
}

unint64_t sub_100036888()
{
  result = qword_1000D8F60;
  if (!qword_1000D8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F60);
  }

  return result;
}

unint64_t sub_1000368E0()
{
  result = qword_1000D8F68;
  if (!qword_1000D8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F68);
  }

  return result;
}

uint64_t sub_100036934(char *a1, char *a2)
{
  if (qword_1000A9B50[*a1] == qword_1000A9B50[*a2])
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

Swift::Int sub_10003699C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000369F8(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100036A38(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100036A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100037438(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100036AF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100037438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100036B1C(uint64_t a1)
{
  v2 = sub_100036D58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036B58(uint64_t a1)
{
  v2 = sub_100036D58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PeerTrustAckEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8F78, &qword_1000A9730);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_100036D58();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100036D58()
{
  result = qword_1000D8F80;
  if (!qword_1000D8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F80);
  }

  return result;
}

uint64_t PeerTrustAckEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_100037484(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100036DD8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100037484(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int sub_100036E28()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100036E9C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100036EF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CBA30;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100036F80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CBA68;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100036FD8(uint64_t a1)
{
  v2 = sub_1000376C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037014(uint64_t a1)
{
  v2 = sub_1000376C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PeerTrustAckEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D8F88, &qword_1000A9738);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_1000376C4();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PeerTrustAckEnvelopeV1PayloadSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_10009F370();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D8F98, &qword_1000A9740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_1000376C4();
  v12 = v19;
  sub_1000A0CD0();
  if (!v12)
  {
    v13 = v17;
    sub_10002C418(&qword_1000D8850, &protocol conformance descriptor for UUID);
    sub_1000A0A20();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_100037764(v11, v16);
  }

  return sub_100002308(a1);
}

unint64_t sub_100037438(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB9C8;
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

uint64_t sub_100037484(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9060, &unk_1000A9B40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_100036D58();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_1000376C4()
{
  result = qword_1000D8F90;
  if (!qword_1000D8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F90);
  }

  return result;
}

uint64_t type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema(uint64_t a1)
{
  result = qword_1000D8FF8;
  if (!qword_1000D8FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000377EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_100037900()
{
  result = qword_1000D9030;
  if (!qword_1000D9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9030);
  }

  return result;
}

unint64_t sub_100037958()
{
  result = qword_1000D9038;
  if (!qword_1000D9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9038);
  }

  return result;
}

unint64_t sub_1000379B0()
{
  result = qword_1000D9040;
  if (!qword_1000D9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9040);
  }

  return result;
}

unint64_t sub_100037A08()
{
  result = qword_1000D9048;
  if (!qword_1000D9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9048);
  }

  return result;
}

unint64_t sub_100037A60()
{
  result = qword_1000D9050;
  if (!qword_1000D9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9050);
  }

  return result;
}

unint64_t sub_100037AB8()
{
  result = qword_1000D9058;
  if (!qword_1000D9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9058);
  }

  return result;
}

uint64_t sub_100037B0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001000A20D0;
  if (v2 == 1)
  {
    v5 = 0x80000001000A20D0;
  }

  else
  {
    v3 = 0x6553646572616873;
    v5 = 0xEC00000074657263;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6553646572616873;
    v4 = 0xEC00000074657263;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
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

Swift::Int sub_100037C18()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100037CCC(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100037D6C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100037E1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100038C7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100037E4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x80000001000A20D0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6553646572616873;
    v4 = 0xEC00000074657263;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100037EBC()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_100037F28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100038C7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037F50(uint64_t a1)
{
  v2 = sub_1000381FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037F8C(uint64_t a1)
{
  v2 = sub_1000381FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PeerTrustEnvelopeV1Schema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9068, &qword_1000A9B70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_1000381FC();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_10009F370();
  sub_100038728(&qword_1000D8808, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000A0B80();
  if (!v1)
  {
    type metadata accessor for PeerTrustEnvelopeV1Schema(0);
    v8[14] = 1;
    sub_1000A0B30();
    v8[13] = 2;
    sub_10009FC00();
    sub_100038728(&qword_1000D9078, &type metadata accessor for PeerTrustSharedSecret, &protocol conformance descriptor for PeerTrustSharedSecret);
    sub_1000A0B80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000381FC()
{
  result = qword_1000D9070;
  if (!qword_1000D9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9070);
  }

  return result;
}

uint64_t type metadata accessor for PeerTrustEnvelopeV1Schema(uint64_t a1)
{
  result = qword_1000D90E8;
  if (!qword_1000D90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeerTrustEnvelopeV1Schema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_10009FC00();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10009F370();
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000017BC(&qword_1000D9080, &qword_1000A9B78);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PeerTrustEnvelopeV1Schema(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_1000381FC();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v22 = v11;
  v13 = v26;
  v12 = v27;
  v33 = 0;
  sub_100038728(&qword_1000D8850, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000A0A20();
  (*(v12 + 32))(v22, v28, v30);
  v32 = 1;
  v14 = sub_1000A09D0();
  v28 = v9;
  v15 = &v22[*(v9 + 20)];
  *v15 = v14;
  v15[1] = v16;
  v31 = 2;
  sub_100038728(&qword_1000D9088, &type metadata accessor for PeerTrustSharedSecret, &protocol conformance descriptor for PeerTrustSharedSecret);
  v17 = v5;
  v18 = v25;
  sub_1000A0A20();
  (*(v13 + 8))(v8, v29);
  v19 = v22;
  (*(v23 + 32))(&v22[*(v28 + 6)], v17, v18);
  sub_100038770(v19, v24);
  sub_100002308(a1);
  return sub_1000387D4(v19);
}

uint64_t sub_100038728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustEnvelopeV1Schema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000387D4(uint64_t a1)
{
  v2 = type metadata accessor for PeerTrustEnvelopeV1Schema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100038874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009F370();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10009FC00();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000389B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009F370();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10009FC00();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100038AD8(uint64_t a1)
{
  result = sub_10009F370();
  if (v2 <= 0x3F)
  {
    result = sub_10009FC00();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100038B78()
{
  result = qword_1000D9128;
  if (!qword_1000D9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9128);
  }

  return result;
}

unint64_t sub_100038BD0()
{
  result = qword_1000D9130;
  if (!qword_1000D9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9130);
  }

  return result;
}

unint64_t sub_100038C28()
{
  result = qword_1000D9138;
  if (!qword_1000D9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9138);
  }

  return result;
}

unint64_t sub_100038C7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBAA0;
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

unint64_t sub_100038CC8()
{
  result = qword_1000D9140;
  if (!qword_1000D9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9140);
  }

  return result;
}

uint64_t FindMyMessageSchema.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100005568(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100038E04(char *a1, char *a2)
{
  if (qword_1000AA070[*a1] == qword_1000AA070[*a2])
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

Swift::Int sub_100038E6C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100038EC8(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100038F08(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100038F60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CC64(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100038FC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003CC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100038FEC(uint64_t a1)
{
  v2 = sub_100039228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039028(uint64_t a1)
{
  v2 = sub_100039228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FindMyMessageSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D9148, &qword_1000A9D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_100039228();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100039228()
{
  result = qword_1000D9150;
  if (!qword_1000D9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9150);
  }

  return result;
}

uint64_t FindMyMessageSchema.init(from:)(void *a1)
{
  result = sub_10003CCB0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000392A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003CCB0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000392F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v454 = a3;
  v487 = a1;
  v488 = a2;
  v466 = a4;
  v471 = sub_1000A0310();
  v472 = *(v471 - 8);
  __chkstk_darwin(v471);
  v461 = &v352 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = sub_1000A00C0();
  v483 = *(v470 - 8);
  __chkstk_darwin(v470);
  v460 = &v352 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = sub_10009FDC0();
  v480 = *(v469 - 8);
  __chkstk_darwin(v469);
  v459 = &v352 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = sub_10009FE00();
  v479 = *(v482 - 8);
  __chkstk_darwin(v482);
  v458 = &v352 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = sub_1000A0040();
  v484 = *(v476 - 8);
  __chkstk_darwin(v476);
  v457 = &v352 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_10009FFD0();
  v468 = *(v475 - 8);
  __chkstk_darwin(v475);
  v456 = &v352 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_10009FD80();
  v467 = *(v474 - 8);
  __chkstk_darwin(v474);
  v455 = &v352 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = sub_10009FB90();
  v473 = *(v481 - 8);
  __chkstk_darwin(v481);
  v453 = &v352 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = sub_10009F9D0();
  v477 = *(v464 - 8);
  __chkstk_darwin(v464);
  v465 = &v352 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000017BC(&qword_1000D9180, &qword_1000AA018);
  v14 = __chkstk_darwin(v13 - 8);
  v418 = &v352 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v417 = &v352 - v17;
  v18 = __chkstk_darwin(v16);
  v416 = &v352 - v19;
  v20 = __chkstk_darwin(v18);
  v415 = &v352 - v21;
  v22 = __chkstk_darwin(v20);
  v414 = &v352 - v23;
  v24 = __chkstk_darwin(v22);
  v413 = &v352 - v25;
  v26 = __chkstk_darwin(v24);
  v412 = &v352 - v27;
  v28 = __chkstk_darwin(v26);
  v411 = &v352 - v29;
  __chkstk_darwin(v28);
  v410 = &v352 - v30;
  v31 = sub_1000017BC(&qword_1000D9188, &qword_1000AA020);
  v32 = __chkstk_darwin(v31 - 8);
  v409 = &v352 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v408 = &v352 - v35;
  v36 = __chkstk_darwin(v34);
  v407 = &v352 - v37;
  v38 = __chkstk_darwin(v36);
  v406 = &v352 - v39;
  v40 = __chkstk_darwin(v38);
  v405 = &v352 - v41;
  v42 = __chkstk_darwin(v40);
  v404 = &v352 - v43;
  v44 = __chkstk_darwin(v42);
  v403 = &v352 - v45;
  v46 = __chkstk_darwin(v44);
  v402 = &v352 - v47;
  __chkstk_darwin(v46);
  v401 = &v352 - v48;
  v49 = sub_1000017BC(&qword_1000D9190, &qword_1000AA028);
  v50 = __chkstk_darwin(v49 - 8);
  v400 = &v352 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v399 = &v352 - v53;
  v54 = __chkstk_darwin(v52);
  v398 = &v352 - v55;
  v56 = __chkstk_darwin(v54);
  v397 = &v352 - v57;
  v58 = __chkstk_darwin(v56);
  v396 = &v352 - v59;
  v60 = __chkstk_darwin(v58);
  v395 = &v352 - v61;
  v62 = __chkstk_darwin(v60);
  v394 = &v352 - v63;
  v64 = __chkstk_darwin(v62);
  v393 = &v352 - v65;
  __chkstk_darwin(v64);
  v392 = &v352 - v66;
  v67 = sub_1000017BC(&qword_1000D9198, &qword_1000AA030);
  v68 = __chkstk_darwin(v67 - 8);
  v391 = &v352 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v390 = &v352 - v71;
  v72 = __chkstk_darwin(v70);
  v389 = &v352 - v73;
  v74 = __chkstk_darwin(v72);
  v388 = &v352 - v75;
  v76 = __chkstk_darwin(v74);
  v387 = &v352 - v77;
  v78 = __chkstk_darwin(v76);
  v386 = &v352 - v79;
  v80 = __chkstk_darwin(v78);
  v385 = &v352 - v81;
  v82 = __chkstk_darwin(v80);
  v384 = &v352 - v83;
  __chkstk_darwin(v82);
  v383 = &v352 - v84;
  v85 = sub_1000017BC(&qword_1000D91A0, &qword_1000AA038);
  v86 = __chkstk_darwin(v85 - 8);
  v382 = &v352 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __chkstk_darwin(v86);
  v381 = &v352 - v89;
  v90 = __chkstk_darwin(v88);
  v380 = &v352 - v91;
  v92 = __chkstk_darwin(v90);
  v379 = &v352 - v93;
  v94 = __chkstk_darwin(v92);
  v378 = &v352 - v95;
  v96 = __chkstk_darwin(v94);
  v377 = &v352 - v97;
  v98 = __chkstk_darwin(v96);
  v376 = &v352 - v99;
  v100 = __chkstk_darwin(v98);
  v375 = &v352 - v101;
  __chkstk_darwin(v100);
  v374 = &v352 - v102;
  v103 = sub_1000017BC(&qword_1000D91A8, &qword_1000AA040);
  v104 = __chkstk_darwin(v103 - 8);
  v452 = &v352 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __chkstk_darwin(v104);
  v451 = &v352 - v107;
  v108 = __chkstk_darwin(v106);
  v450 = &v352 - v109;
  v110 = __chkstk_darwin(v108);
  v449 = &v352 - v111;
  v112 = __chkstk_darwin(v110);
  v448 = &v352 - v113;
  v114 = __chkstk_darwin(v112);
  v373 = &v352 - v115;
  v116 = __chkstk_darwin(v114);
  v372 = &v352 - v117;
  v118 = __chkstk_darwin(v116);
  v371 = &v352 - v119;
  __chkstk_darwin(v118);
  v447 = &v352 - v120;
  v121 = sub_1000017BC(&qword_1000D91B0, &qword_1000AA048);
  v122 = __chkstk_darwin(v121 - 8);
  v446 = &v352 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __chkstk_darwin(v122);
  v442 = &v352 - v125;
  v126 = __chkstk_darwin(v124);
  v367 = &v352 - v127;
  v128 = __chkstk_darwin(v126);
  v370 = &v352 - v129;
  v130 = __chkstk_darwin(v128);
  v445 = &v352 - v131;
  v132 = __chkstk_darwin(v130);
  v444 = &v352 - v133;
  v134 = __chkstk_darwin(v132);
  v369 = &v352 - v135;
  v136 = __chkstk_darwin(v134);
  v443 = &v352 - v137;
  __chkstk_darwin(v136);
  v368 = &v352 - v138;
  v139 = sub_1000017BC(&qword_1000D91B8, &qword_1000AA050);
  v140 = __chkstk_darwin(v139 - 8);
  v441 = &v352 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __chkstk_darwin(v140);
  v434 = &v352 - v143;
  v144 = __chkstk_darwin(v142);
  v436 = &v352 - v145;
  v146 = __chkstk_darwin(v144);
  v440 = &v352 - v147;
  v148 = __chkstk_darwin(v146);
  v439 = &v352 - v149;
  v150 = __chkstk_darwin(v148);
  v438 = &v352 - v151;
  v152 = __chkstk_darwin(v150);
  v437 = &v352 - v153;
  v154 = __chkstk_darwin(v152);
  v366 = &v352 - v155;
  __chkstk_darwin(v154);
  v435 = &v352 - v156;
  v157 = sub_1000017BC(&qword_1000D91C0, &qword_1000AA058);
  v158 = __chkstk_darwin(v157 - 8);
  v433 = &v352 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __chkstk_darwin(v158);
  v431 = &v352 - v161;
  v162 = __chkstk_darwin(v160);
  v432 = &v352 - v163;
  v164 = __chkstk_darwin(v162);
  v428 = &v352 - v165;
  v166 = __chkstk_darwin(v164);
  v429 = &v352 - v167;
  v168 = __chkstk_darwin(v166);
  v365 = &v352 - v169;
  v170 = __chkstk_darwin(v168);
  v430 = &v352 - v171;
  v172 = __chkstk_darwin(v170);
  v425 = &v352 - v173;
  __chkstk_darwin(v172);
  v485 = &v352 - v174;
  v175 = sub_10009F560();
  v176 = __chkstk_darwin(v175 - 8);
  v427 = &v352 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __chkstk_darwin(v176);
  v426 = &v352 - v179;
  v180 = __chkstk_darwin(v178);
  v486 = &v352 - v181;
  v182 = __chkstk_darwin(v180);
  v424 = &v352 - v183;
  v184 = __chkstk_darwin(v182);
  v423 = &v352 - v185;
  v186 = __chkstk_darwin(v184);
  v422 = &v352 - v187;
  v188 = __chkstk_darwin(v186);
  v421 = &v352 - v189;
  v190 = __chkstk_darwin(v188);
  v420 = &v352 - v191;
  __chkstk_darwin(v190);
  v419 = &v352 - v192;
  v462 = sub_10009F580();
  v463 = *(v462 - 8);
  v193 = __chkstk_darwin(v462);
  v364 = &v352 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __chkstk_darwin(v193);
  v363 = &v352 - v196;
  v197 = __chkstk_darwin(v195);
  v362 = &v352 - v198;
  v199 = __chkstk_darwin(v197);
  v361 = &v352 - v200;
  v201 = __chkstk_darwin(v199);
  v360 = &v352 - v202;
  v203 = __chkstk_darwin(v201);
  v205 = &v352 - v204;
  v206 = __chkstk_darwin(v203);
  v208 = &v352 - v207;
  v209 = __chkstk_darwin(v206);
  v211 = &v352 - v210;
  __chkstk_darwin(v209);
  v213 = &v352 - v212;
  v214 = sub_10009FC90();
  v478 = *(v214 - 8);
  __chkstk_darwin(v214);
  v216 = &v352 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  v217 = sub_10009F260();
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  v218 = v492;
  sub_10009F250();
  v492 = v218;
  if (v218)
  {
  }

  v358 = v216;
  v355 = v213;
  v356 = v211;
  v357 = v208;
  v487 = v205;
  v219 = v485;
  v359 = v214;
  v488 = v217;

  v220 = v489;
  v221 = sub_10009FD00();
  if (!*(v220 + 16))
  {

    goto LABEL_8;
  }

  v223 = v492;
  v224 = sub_10000217C(v221, v222);
  v226 = v225;

  if ((v226 & 1) == 0)
  {
LABEL_8:

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v230 = swift_allocError();
    sub_1000A0520();
    v492 = v230;
    swift_willThrow();
  }

  v227 = (*(v220 + 56) + 16 * v224);
  v229 = *v227;
  v228 = v227[1];
  sub_1000054CC(*v227, v228);

  sub_10003D134();
  sub_10009F250();
  v492 = v223;
  if (v223)
  {
    sub_100005568(v229, v228);
  }

  v353 = v229;
  v233 = v489;
  v232 = v490;
  v234 = sub_10003CC50(v491);
  v354 = v228;
  if (v234 <= 4)
  {
    if (v234 > 1)
    {
      v235 = v477;
      v236 = v484;
      if (v234 == 2)
      {
        v275 = v455;
        v238 = v353;
        v239 = v354;
        v276 = v492;
        sub_1000866E0(v354, v455);
        v492 = v276;
        if (!v276)
        {
          v352 = v233;
          v454 = v232;
          sub_10009FD50();
          v487 = sub_10009FD60();
          (*(v478 + 56))(v430, 1, 1, v359);
          (*(v473 + 56))(v437, 1, 1, v481);
          v277 = v467;
          v278 = v369;
          v279 = v474;
          (*(v467 + 16))(v369, v275, v474);
          (*(v277 + 56))(v278, 0, 1, v279);
          (*(v468 + 56))(v372, 1, 1, v475);
          (*(v236 + 56))(v376, 1, 1, v476);
          (*(v479 + 56))(v385, 1, 1, v482);
          (*(v480 + 56))(v394, 1, 1, v469);
          (*(v483 + 56))(v403, 1, 1, v470);
          (*(v472 + 56))(v412, 1, 1, v471);
          v280 = v357;
          v281 = v492;
          sub_10009F570();
          v492 = v281;
          if (!v281)
          {
            v323 = v463;
            v324 = v465;
            v325 = v462;
            (*(v463 + 16))(v465, v280, v462);
            (*(v477 + 104))(v324, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
            sub_10009FC10();
            sub_100005568(v353, v354);

            sub_100005568(v352, v454);
            (*(v323 + 8))(v280, v325);
            return (*(v277 + 8))(v275, v474);
          }

          (*(v277 + 8))(v275, v474);
          goto LABEL_58;
        }

        goto LABEL_38;
      }

      if (v234 == 3)
      {
        v237 = v456;
        v238 = v353;
        v239 = v354;
        v240 = v492;
        sub_100086020(v354, v456);
        v241 = v480;
        v492 = v240;
        if (!v240)
        {
          v352 = v233;
          v454 = v232;
          sub_10009FFA0();
          v486 = sub_10009FFB0();
          (*(v478 + 56))(v365, 1, 1, v359);
          (*(v473 + 56))(v438, 1, 1, v481);
          (*(v467 + 56))(v444, 1, 1, v474);
          v242 = v468;
          v243 = v373;
          v244 = v475;
          (*(v468 + 16))(v373, v237, v475);
          (*(v242 + 56))(v243, 0, 1, v244);
          (*(v236 + 56))(v377, 1, 1, v476);
          (*(v479 + 56))(v386, 1, 1, v482);
          (*(v241 + 56))(v395, 1, 1, v469);
          (*(v483 + 56))(v404, 1, 1, v470);
          (*(v472 + 56))(v413, 1, 1, v471);
          v245 = v487;
          v246 = v492;
          sub_10009F570();
          v492 = v246;
          if (!v246)
          {
            v331 = v463;
            v332 = v465;
            v333 = v462;
            (*(v463 + 16))(v465, v245, v462);
            (*(v477 + 104))(v332, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
            sub_10009FC10();
            sub_100005568(v353, v354);

            sub_100005568(v352, v454);
            (*(v331 + 8))(v245, v333);
            return (*(v242 + 8))(v237, v475);
          }

          (*(v242 + 8))(v237, v475);
          goto LABEL_58;
        }

        goto LABEL_38;
      }

      v285 = v457;
      v238 = v353;
      v239 = v354;
      v286 = v492;
      sub_100086DA0(v354, v457);
      v287 = v480;
      v492 = v286;
      if (v286)
      {
LABEL_38:
        v288 = v233;
LABEL_42:
        sub_100005568(v288, v232);
        v264 = v238;
        goto LABEL_45;
      }

      v352 = v233;
      v454 = v232;
      sub_1000A0010();
      v487 = sub_1000A0020();
      (*(v478 + 56))(v429, 1, 1, v359);
      (*(v473 + 56))(v439, 1, 1, v481);
      (*(v467 + 56))(v445, 1, 1, v474);
      (*(v468 + 56))(v448, 1, 1, v475);
      v304 = v378;
      v305 = v476;
      (*(v236 + 16))(v378, v285, v476);
      (*(v236 + 56))(v304, 0, 1, v305);
      (*(v479 + 56))(v387, 1, 1, v482);
      (*(v287 + 56))(v396, 1, 1, v469);
      (*(v483 + 56))(v405, 1, 1, v470);
      (*(v472 + 56))(v414, 1, 1, v471);
      v306 = v360;
      v307 = v492;
      sub_10009F570();
      v492 = v307;
      if (!v307)
      {
        v337 = v463;
        v338 = v465;
        v339 = v462;
        (*(v463 + 16))(v465, v306, v462);
        (*(v235 + 104))(v338, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
        sub_10009FC10();
        sub_100005568(v353, v354);

        sub_100005568(v352, v454);
        (*(v337 + 8))(v306, v339);
        return (*(v236 + 8))(v285, v476);
      }

      (*(v236 + 8))(v285, v476);
LABEL_58:
      sub_100005568(v353, v354);

      return sub_100005568(v352, v454);
    }

    v352 = v233;
    if (v234)
    {
      v292 = v453;
      v238 = v353;
      v239 = v354;
      v293 = v492;
      sub_100087460(v353, v354, v453);
      v294 = v483;
      v492 = v293;
      v295 = v478;
      if (v293)
      {
        v288 = v352;
        goto LABEL_42;
      }

      v454 = v232;
      sub_10009FB60();
      v487 = sub_10009FB70();
      (*(v295 + 56))(v425, 1, 1, v359);
      v311 = v473;
      v312 = v366;
      v313 = v481;
      (*(v473 + 16))(v366, v292, v481);
      (*(v311 + 56))(v312, 0, 1, v313);
      (*(v467 + 56))(v443, 1, 1, v474);
      (*(v468 + 56))(v371, 1, 1, v475);
      (*(v484 + 56))(v375, 1, 1, v476);
      (*(v479 + 56))(v384, 1, 1, v482);
      (*(v480 + 56))(v393, 1, 1, v469);
      (*(v294 + 56))(v402, 1, 1, v470);
      (*(v472 + 56))(v411, 1, 1, v471);
      v314 = v356;
      v315 = v492;
      sub_10009F570();
      v492 = v315;
      if (!v315)
      {
        v346 = v463;
        v347 = v465;
        v348 = v462;
        (*(v463 + 16))(v465, v314, v462);
        (*(v477 + 104))(v347, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
        sub_10009FC10();
        sub_100005568(v353, v354);

        sub_100005568(v352, v454);
        (*(v346 + 8))(v314, v348);
        return (*(v473 + 8))(v292, v481);
      }

      (*(v473 + 8))(v292, v481);
      goto LABEL_58;
    }

    v259 = v358;
    v260 = v353;
    v239 = v354;
    v261 = v492;
    sub_1000899A8(v354, v358);
    v262 = v483;
    v492 = v261;
    v263 = v478;
    if (!v261)
    {
      v454 = v232;
      sub_10009FC60();
      v487 = sub_10009FC70();
      v308 = v359;
      (*(v263 + 16))(v219, v259, v359);
      (*(v263 + 56))(v219, 0, 1, v308);
      (*(v473 + 56))(v435, 1, 1, v481);
      (*(v467 + 56))(v368, 1, 1, v474);
      (*(v468 + 56))(v447, 1, 1, v475);
      (*(v484 + 56))(v374, 1, 1, v476);
      (*(v479 + 56))(v383, 1, 1, v482);
      (*(v480 + 56))(v392, 1, 1, v469);
      (*(v262 + 56))(v401, 1, 1, v470);
      (*(v472 + 56))(v410, 1, 1, v471);
      v309 = v355;
      v310 = v492;
      sub_10009F570();
      v492 = v310;
      if (!v310)
      {
        v343 = v463;
        v344 = v465;
        v345 = v462;
        (*(v463 + 16))(v465, v309, v462);
        (*(v477 + 104))(v344, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
        sub_10009FC10();
        sub_100005568(v353, v354);

        sub_100005568(v352, v454);
        (*(v343 + 8))(v309, v345);
        return (*(v263 + 8))(v358, v359);
      }

      (*(v263 + 8))(v358, v359);
      goto LABEL_58;
    }

    sub_100005568(v352, v232);
    v264 = v260;
LABEL_45:
    v291 = v239;
    goto LABEL_46;
  }

  v352 = v233;
  v247 = v483;
  if (v234 <= 6)
  {
    v265 = v484;
    v266 = v359;
    if (v234 == 5)
    {
      v267 = v458;
      v297 = v353;
      v239 = v354;
      v268 = v492;
      sub_100085A68(v354, v458);
      v269 = v479;
      v270 = v481;
      v492 = v268;
      if (!v268)
      {
        v454 = v232;
        sub_10009FDD0();
        v487 = sub_10009FDE0();
        (*(v478 + 56))(v428, 1, 1, v266);
        (*(v473 + 56))(v440, 1, 1, v270);
        (*(v467 + 56))(v370, 1, 1, v474);
        (*(v468 + 56))(v449, 1, 1, v475);
        (*(v265 + 56))(v379, 1, 1, v476);
        v271 = v388;
        v272 = v482;
        (*(v269 + 16))(v388, v267, v482);
        (*(v269 + 56))(v271, 0, 1, v272);
        (*(v480 + 56))(v397, 1, 1, v469);
        (*(v247 + 56))(v406, 1, 1, v470);
        (*(v472 + 56))(v415, 1, 1, v471);
        v273 = v361;
        v274 = v492;
        sub_10009F570();
        v492 = v274;
        if (!v274)
        {
          v340 = v463;
          v341 = v465;
          v342 = v462;
          (*(v463 + 16))(v465, v273, v462);
          (*(v477 + 104))(v341, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
          sub_10009FC10();
          sub_100005568(v353, v354);

          sub_100005568(v352, v454);
          (*(v340 + 8))(v273, v342);
          return (*(v269 + 8))(v267, v272);
        }

        (*(v269 + 8))(v267, v272);
        goto LABEL_58;
      }
    }

    else
    {
      v296 = v459;
      v297 = v353;
      v239 = v354;
      v298 = v492;
      sub_1000853D8(v354, v459);
      v299 = v481;
      v492 = v298;
      if (!v298)
      {
        v454 = v232;
        v316 = v479;
        sub_10009FD90();
        v487 = sub_10009FDA0();
        (*(v478 + 56))(v432, 1, 1, v266);
        (*(v473 + 56))(v436, 1, 1, v299);
        (*(v467 + 56))(v367, 1, 1, v474);
        (*(v468 + 56))(v450, 1, 1, v475);
        (*(v265 + 56))(v380, 1, 1, v476);
        (*(v316 + 56))(v389, 1, 1, v482);
        v317 = v480;
        v318 = v398;
        v319 = v469;
        (*(v480 + 16))(v398, v296, v469);
        (*(v317 + 56))(v318, 0, 1, v319);
        (*(v247 + 56))(v407, 1, 1, v470);
        (*(v472 + 56))(v416, 1, 1, v471);
        v320 = v362;
        v321 = v492;
        sub_10009F570();
        v322 = v296;
        v492 = v321;
        if (!v321)
        {
          v349 = v463;
          v350 = v465;
          v351 = v462;
          (*(v463 + 16))(v465, v320, v462);
          (*(v477 + 104))(v350, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
          sub_10009FC10();
          sub_100005568(v353, v354);

          sub_100005568(v352, v454);
          (*(v349 + 8))(v320, v351);
          return (*(v317 + 8))(v322, v319);
        }

        (*(v317 + 8))(v296, v319);
        goto LABEL_58;
      }
    }

    sub_100005568(v352, v232);
    v264 = v297;
    goto LABEL_45;
  }

  v248 = v484;
  v249 = v359;
  if (v234 == 7)
  {
    v282 = v460;
    v252 = v353;
    v239 = v354;
    v283 = v492;
    sub_100088D30(v354, v460);
    v284 = v482;
    v492 = v283;
    if (!v283)
    {
      v454 = v232;
      sub_1000A0090();
      v487 = sub_1000A00A0();
      (*(v478 + 56))(v431, 1, 1, v249);
      (*(v473 + 56))(v434, 1, 1, v481);
      (*(v467 + 56))(v442, 1, 1, v474);
      (*(v468 + 56))(v451, 1, 1, v475);
      (*(v248 + 56))(v381, 1, 1, v476);
      (*(v479 + 56))(v390, 1, 1, v284);
      (*(v480 + 56))(v399, 1, 1, v469);
      v300 = v408;
      v301 = v470;
      (*(v247 + 16))(v408, v282, v470);
      (*(v247 + 56))(v300, 0, 1, v301);
      (*(v472 + 56))(v417, 1, 1, v471);
      v302 = v363;
      v303 = v492;
      sub_10009F570();
      v492 = v303;
      if (!v303)
      {
        v326 = v282;
        v327 = v463;
        v328 = v465;
        v329 = v247;
        v330 = v462;
        (*(v463 + 16))(v465, v302, v462);
        (*(v477 + 104))(v328, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
        sub_10009FC10();
        sub_100005568(v353, v354);

        sub_100005568(v352, v454);
        (*(v327 + 8))(v302, v330);
        return (*(v329 + 8))(v326, v301);
      }

      (*(v247 + 8))(v282, v301);
      goto LABEL_58;
    }

LABEL_36:
    sub_100005568(v352, v232);
    v264 = v252;
    goto LABEL_45;
  }

  v250 = v482;
  if (v234 != 8)
  {
    sub_1000021F4();
    v289 = swift_allocError();
    *v290 = v454;
    *(v290 + 8) = 0;
    *(v290 + 16) = 0;
    v492 = v289;
    swift_willThrow();
    sub_100005568(v352, v232);
    v264 = v353;
    v291 = v354;
LABEL_46:
    sub_100005568(v264, v291);
  }

  v251 = v461;
  v252 = v353;
  v239 = v354;
  v253 = v492;
  sub_1000892E8(v354, v461);
  v492 = v253;
  if (v253)
  {
    goto LABEL_36;
  }

  v454 = v232;
  sub_1000A02E0();
  v487 = sub_1000A02F0();
  (*(v478 + 56))(v433, 1, 1, v249);
  (*(v473 + 56))(v441, 1, 1, v481);
  (*(v467 + 56))(v446, 1, 1, v474);
  (*(v468 + 56))(v452, 1, 1, v475);
  (*(v248 + 56))(v382, 1, 1, v476);
  (*(v479 + 56))(v391, 1, 1, v250);
  (*(v480 + 56))(v400, 1, 1, v469);
  (*(v247 + 56))(v409, 1, 1, v470);
  v254 = v472;
  v255 = v418;
  v256 = v471;
  (*(v472 + 16))(v418, v251, v471);
  (*(v254 + 56))(v255, 0, 1, v256);
  v257 = v364;
  v258 = v492;
  sub_10009F570();
  v492 = v258;
  if (v258)
  {
    (*(v254 + 8))(v251, v256);
    goto LABEL_58;
  }

  v334 = v463;
  v335 = v465;
  v336 = v462;
  (*(v463 + 16))(v465, v257, v462);
  (*(v477 + 104))(v335, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v464);
  sub_10009FC10();
  sub_100005568(v353, v354);

  sub_100005568(v352, v454);
  (*(v334 + 8))(v257, v336);
  return (*(v254 + 8))(v251, v256);
}

uint64_t sub_10003CC50(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    return 9;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_10003CC64(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBB08;
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

uint64_t sub_10003CCB0(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9170, &unk_1000A9F90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_100039228();
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
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_10003CF14()
{
  result = qword_1000D9158;
  if (!qword_1000D9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9158);
  }

  return result;
}

unint64_t sub_10003CF6C()
{
  result = qword_1000D9160;
  if (!qword_1000D9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9160);
  }

  return result;
}

unint64_t sub_10003CFC4()
{
  result = qword_1000D9168;
  if (!qword_1000D9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9168);
  }

  return result;
}

unint64_t sub_10003D070(uint64_t a1)
{
  result = sub_10003D098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003D098()
{
  result = qword_1000D9178;
  if (!qword_1000D9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9178);
  }

  return result;
}

uint64_t sub_10003D0EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003D134()
{
  result = qword_1000D91C8;
  if (!qword_1000D91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91C8);
  }

  return result;
}

Swift::Int sub_10003D194()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003D260(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10003D318(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10003D3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003D854(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10003D410(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 12400;
  v5 = 0x80000001000A1310;
  v6 = 0xD000000000000015;
  v7 = 0xE100000000000000;
  v8 = 118;
  if (v2 != 3)
  {
    v8 = 0x64726F6365526B63;
    v7 = 0xEC000000656D614ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 12656;
    v3 = 0xE200000000000000;
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

unint64_t sub_10003D498()
{
  v1 = *v0;
  v2 = 12400;
  v3 = 0xD000000000000015;
  v4 = 118;
  if (v1 != 3)
  {
    v4 = 0x64726F6365526B63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 12656;
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

unint64_t sub_10003D51C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003D544(uint64_t a1)
{
  v2 = sub_10003D79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003D580(uint64_t a1)
{
  v2 = sub_10003D79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFShareInvitationSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D91D0, &qword_1000AA090);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10003D79C();
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
  sub_1000A0B30();
  v8[11] = 4;
  sub_1000A0B30();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10003D79C()
{
  result = qword_1000D91D8;
  if (!qword_1000D91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91D8);
  }

  return result;
}

__n128 FMFShareInvitationSchema.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003D8A0(a2, v6);
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

unint64_t sub_10003D854(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBB70;
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

uint64_t sub_10003D8A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D91F8, &qword_1000AA298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10003D79C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_1000A09D0();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_1000A09D0();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_1000A09D0();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_1000A09D0();
  v27 = v14;
  v37 = 4;
  v15 = sub_1000A09D0();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  sub_10003DE58(&v31, v36);
  sub_100002308(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  result = sub_10003DE90(v36);
  v22 = v34;
  a2[2] = v33;
  a2[3] = v22;
  a2[4] = v35;
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  return result;
}

__n128 sub_10003DC78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003DC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10003DCDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003DD54()
{
  result = qword_1000D91E0;
  if (!qword_1000D91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91E0);
  }

  return result;
}

unint64_t sub_10003DDAC()
{
  result = qword_1000D91E8;
  if (!qword_1000D91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91E8);
  }

  return result;
}

unint64_t sub_10003DE04()
{
  result = qword_1000D91F0;
  if (!qword_1000D91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91F0);
  }

  return result;
}

uint64_t IDSSampleProtobufMessageSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  v4 = sub_10009FE20();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000017BC(&qword_1000D9200, &qword_1000AA2A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_1000022C4(a1, a1[3]);
  sub_10003E0B4();
  sub_1000A0CE0();
  (*(v5 + 104))(v7, enum case for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey.name(_:), v4);
  sub_1000A0A80();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_10003E0B4()
{
  result = qword_1000D9208;
  if (!qword_1000D9208)
  {
    sub_10009FE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9208);
  }

  return result;
}

void *sub_10003E124@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003E34C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10003E150(void *a1)
{
  v3 = sub_10009FE20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9200, &qword_1000AA2A0);
  v13 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  v10 = *v1;
  v12[1] = v1[1];
  v12[2] = v10;
  sub_1000022C4(a1, a1[3]);
  sub_10003E0B4();
  sub_1000A0CE0();
  (*(v4 + 104))(v6, enum case for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey.name(_:), v3);
  sub_1000A0A80();
  (*(v4 + 8))(v6, v3);
  return (*(v13 + 8))(v9, v7);
}

void *sub_10003E34C(void *a1)
{
  v3 = sub_10009FE20();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D9210, &unk_1000AA340);
  v13 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10003E0B4();
  sub_1000A0CD0();
  if (!v1)
  {
    v10 = v14;
    (*(v14 + 104))(v5, enum case for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey.name(_:), v3);
    v9 = sub_1000A0920();
    (*(v10 + 8))(v5, v3);
    (*(v13 + 8))(v8, v6);
  }

  sub_100002308(a1);
  return v9;
}

uint64_t sub_10003E5A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10003E604(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10003E6BC@<X0>(uint64_t a3@<X8>)
{
  v36 = a3;
  v3 = sub_10009F9D0();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10009F540();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F520();
  v37 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v29 - v10;
  v11 = sub_10009F910();
  v40 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_10009F2F0();
  v19 = v18;
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10003EC18(&qword_1000D9220, &type metadata accessor for NameAndPhotoSchema, &protocol conformance descriptor for NameAndPhotoSchema);
  v20 = v41;
  sub_10009F250();
  if (v20)
  {

    return sub_100005568(v17, v19);
  }

  else
  {
    v41 = v19;
    v21 = v38;
    (*(v40 + 16))(v14, v16, v11);
    sub_10009F510();
    (*(v37 + 16))(v9, v39, v6);
    v23 = v21;
    sub_10009F530();
    v24 = v17;
    v25 = v33;
    v26 = *(v33 + 16);
    v30 = v6;
    v27 = v31;
    v28 = v32;
    v26(v32, v23, v31);
    (*(v34 + 104))(v28, enum case for IDSClientMessageType.nameAndPhoto(_:), v35);
    sub_10009FC10();

    sub_100005568(v24, v41);
    (*(v25 + 8))(v23, v27);
    (*(v37 + 8))(v39, v30);
    return (*(v40 + 8))(v16, v11);
  }
}

unint64_t sub_10003EB9C(uint64_t a1)
{
  result = sub_10003EBC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003EBC4()
{
  result = qword_1000D9218;
  if (!qword_1000D9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9218);
  }

  return result;
}

uint64_t sub_10003EC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003EC60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702125924;
  if (v2 != 1)
  {
    v4 = 0x6E6F73616572;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (*a2 != 1)
  {
    v8 = 0x6E6F73616572;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10003ED48()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003EDDC(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10003EE5C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10003EEEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003FB98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10003EF1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (v2 != 1)
  {
    v5 = 0x6E6F73616572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003EF6C()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x6E6F73616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

unint64_t sub_10003EFB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003FB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003EFE0(uint64_t a1)
{
  v2 = sub_10003F244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003F01C(uint64_t a1)
{
  v2 = sub_10003F244();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSampleInvitationSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D9228, &unk_1000AA3C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10003F244();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0B30();
  if (!v1)
  {
    type metadata accessor for IDSSampleInvitationSchema(0);
    v8[14] = 1;
    sub_10009F350();
    sub_10003F790(&qword_1000D84A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000A0AD0();
    v8[13] = 2;
    sub_1000A0A80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10003F244()
{
  result = qword_1000D9230;
  if (!qword_1000D9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9230);
  }

  return result;
}

uint64_t type metadata accessor for IDSSampleInvitationSchema(uint64_t a1)
{
  result = qword_1000D92A8;
  if (!qword_1000D92A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSampleInvitationSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1000017BC(&qword_1000D9238, &qword_1000AA3D0);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for IDSSampleInvitationSchema(0);
  __chkstk_darwin(v10);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000022C4(a1, a1[3]);
  sub_10003F244();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v24 = v10;
  v13 = v26;
  v30 = 0;
  v14 = v12;
  *v12 = sub_1000A09D0();
  v12[1] = v15;
  v23[1] = v15;
  sub_10009F350();
  v29 = 1;
  sub_10003F790(&qword_1000D84B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = v6;
  sub_1000A0970();
  v17 = v24;
  sub_10000D3D0(v16, v14 + *(v24 + 20));
  v28 = 2;
  v18 = sub_1000A0920();
  v20 = v19;
  (*(v13 + 8))(v9, v27);
  v21 = (v14 + *(v17 + 24));
  *v21 = v18;
  v21[1] = v20;
  sub_10003F640(v14, v25);
  sub_100002308(a1);
  return sub_10003F6A4(v14);
}

uint64_t sub_10003F640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleInvitationSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F6A4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSampleInvitationSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003F81C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003F8EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003F99C(uint64_t a1)
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

void sub_10003FA30()
{
  if (!qword_1000D92B8)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D92B8);
    }
  }
}

unint64_t sub_10003FA94()
{
  result = qword_1000D92F0;
  if (!qword_1000D92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D92F0);
  }

  return result;
}

unint64_t sub_10003FAEC()
{
  result = qword_1000D92F8;
  if (!qword_1000D92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D92F8);
  }

  return result;
}

unint64_t sub_10003FB44()
{
  result = qword_1000D9300;
  if (!qword_1000D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9300);
  }

  return result;
}

unint64_t sub_10003FB98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBC08;
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

uint64_t sub_10003FBE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_10009FC50();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F990();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  result = sub_10009FC30();
  if (!v2)
  {
    v24 = v8;
    v25 = v7;
    v27 = *a1;
    v28 = 0;
    (*(v11 + 16))(v14, v16, v10);
    v26 = a1[6];
    v18 = type metadata accessor for IDSKCSharingInvitationSchema(0);
    sub_10003FEF4(a1 + *(v18 + 32), v6);

    v19 = v30;
    v20 = v28;
    sub_10009FC40();
    if (v20)
    {
      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      (*(v11 + 8))(v16, v10);
      v21 = v29;
      (*(v24 + 32))(v29, v19, v25);
      v22 = enum case for IDSDictionaryContext.idsKCSharingInvitation(_:);
      v23 = sub_10009F9E0();
      return (*(*(v23 - 8) + 104))(v21, v22, v23);
    }
  }

  return result;
}

uint64_t sub_10003FEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FF64(uint64_t a1, uint64_t a2)
{
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_10004031C();
  sub_10009F250();
  if (v2)
  {
  }

  sub_1000017BC(&qword_1000D8590, &qword_1000B1190);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000A63D0;
  v5 = sub_100040370();
  *(v4 + 56) = sub_1000017BC(&qword_1000D9318, &qword_1000AA5C8);
  *(v4 + 32) = v5;
  v6 = objc_allocWithZone(NSSet);
  isa = sub_1000A06F0().super.isa;

  [v6 initWithArray:isa];

  result = sub_1000A0720();
  __break(1u);
  return result;
}

unint64_t sub_10004031C()
{
  result = qword_1000D9308;
  if (!qword_1000D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9308);
  }

  return result;
}

unint64_t sub_100040370()
{
  result = qword_1000D9310;
  if (!qword_1000D9310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D9310);
  }

  return result;
}

uint64_t IDSCommandResponseSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9320, &unk_1000AA5D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100040790();
  sub_1000A0CE0();
  LOBYTE(v13) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000A0AE0();
    v16 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_100006794(&v16, v11);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    sub_1000A0AB0();
    LOBYTE(v13) = 4;
    sub_1000A0AB0();
    v15 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_100006794(&v15, v11);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 6;
    sub_1000A0A90();
    LOBYTE(v13) = 7;
    sub_1000A0A90();
    LOBYTE(v13) = 8;
    sub_1000A0A80();
    LOBYTE(v13) = 9;
    sub_1000A0AB0();
    v13 = v3[8];
    v14 = v13;
    v12 = 10;
    sub_100006794(&v14, v11);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 11;
    sub_1000A0A90();
    LOBYTE(v13) = 12;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100040790()
{
  result = qword_1000D9328;
  if (!qword_1000D9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9328);
  }

  return result;
}

__n128 IDSCommandResponseSchema.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100040C50(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10004085C(char a1)
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
      result = 21094;
      break;
    case 5:
      result = 116;
      break;
    case 6:
      result = 0x6E7265746E692D78;
      break;
    case 7:
      result = 0x6E6967676F6C2D78;
      break;
    case 8:
      result = 6906225;
      break;
    case 9:
      result = 7627121;
      break;
    case 10:
      result = 1935960433;
      break;
    case 11:
      result = 1936945777;
      break;
    case 12:
      result = 30321;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004098C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10004085C(*a1);
  v5 = v4;
  if (v3 == sub_10004085C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100040A14()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10004085C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100040A78(uint64_t a1)
{
  sub_10004085C(*v1);
  sub_1000A05B0();
}

Swift::Int sub_100040ACC(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_10004085C(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100040B2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000416A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100040B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004085C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100040BA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000416A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100040BD8(uint64_t a1)
{
  v2 = sub_100040790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100040C14(uint64_t a1)
{
  v2 = sub_100040790();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100040C50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = sub_1000017BC(&qword_1000D9348, &qword_1000AA968);
  v5 = *(v103 - 8);
  __chkstk_darwin(v103);
  v7 = &v32 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_100040790();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v8 = v5;
  v49 = a2;
  LOBYTE(v61) = 0;
  v9 = sub_1000A0A00();
  LOBYTE(v61) = 1;
  v48 = sub_1000A0980();
  v102 = v10 & 1;
  LOBYTE(v50) = 2;
  v11 = sub_100005424();
  sub_1000A0970();
  v45 = v11;
  v46 = v61;
  v47 = v62;
  LOBYTE(v61) = 3;
  v12 = sub_1000A0950();
  v100 = v13 & 1;
  LOBYTE(v61) = 4;
  v43 = sub_1000A0950();
  v98 = v14 & 1;
  LOBYTE(v50) = 5;
  sub_1000A0970();
  v41 = v62;
  v42 = v61;
  LOBYTE(v61) = 6;
  v40 = sub_1000A0930();
  LOBYTE(v61) = 7;
  v37 = sub_1000A0930();
  v38 = v12;
  LOBYTE(v61) = 8;
  v15 = sub_1000A0920();
  v39 = v16;
  v17 = v15;
  LOBYTE(v61) = 9;
  v18 = sub_1000A0950();
  v94 = v19 & 1;
  LOBYTE(v50) = 10;
  sub_1000A0970();
  v44 = v62;
  v45 = v61;
  LOBYTE(v61) = 11;
  v36 = sub_1000A0930();
  v90 = 12;
  v35 = sub_1000A0950();
  v21 = v20;
  (*(v8 + 8))(v7, v103);
  v91 = v21 & 1;
  v22 = v48;
  *&v50 = v9;
  *(&v50 + 1) = v48;
  v23 = v102;
  LOBYTE(v51) = v102;
  v24 = v46;
  *(&v51 + 1) = v46;
  *&v52 = v47;
  *(&v52 + 1) = v38;
  HIDWORD(v32) = v100;
  LOBYTE(v53) = v100;
  *(&v53 + 1) = v43;
  v33 = v98;
  LOBYTE(v54) = v98;
  *(&v54 + 1) = v42;
  *&v55 = v41;
  BYTE8(v55) = v40;
  BYTE9(v55) = v37;
  *&v56 = v17;
  *(&v56 + 1) = v39;
  *&v57 = v18;
  v34 = v94;
  BYTE8(v57) = v94;
  *&v58 = v45;
  *(&v58 + 1) = v44;
  LOBYTE(v59) = v36;
  *(&v59 + 1) = v35;
  LODWORD(v103) = v91;
  v60 = v91;
  sub_1000416F0(&v50, &v61);
  sub_100002308(a1);
  v61 = v9;
  v62 = v22;
  v63 = v23;
  *v64 = *v101;
  *&v64[3] = *&v101[3];
  v65 = v24;
  v66 = v47;
  v67 = v38;
  v68 = BYTE4(v32);
  *v69 = *v99;
  *&v69[3] = *&v99[3];
  v70 = v43;
  v71 = v33;
  *&v72[3] = *&v97[3];
  *v72 = *v97;
  v73 = v42;
  v74 = v41;
  v75 = v40;
  v76 = v37;
  v77 = v95;
  v78 = v96;
  v79 = v17;
  v80 = v39;
  v81 = v18;
  v82 = v34;
  *v83 = *v93;
  *&v83[3] = *&v93[3];
  v84 = v45;
  v85 = v44;
  v86 = v36;
  *&v87[3] = *&v92[3];
  *v87 = *v92;
  v88 = v35;
  v89 = v103;
  result = sub_100041728(&v61);
  v26 = v59;
  v27 = v49;
  *(v49 + 128) = v58;
  *(v27 + 144) = v26;
  *(v27 + 160) = v60;
  v28 = v55;
  *(v27 + 64) = v54;
  *(v27 + 80) = v28;
  v29 = v57;
  *(v27 + 96) = v56;
  *(v27 + 112) = v29;
  v30 = v51;
  *v27 = v50;
  *(v27 + 16) = v30;
  v31 = v53;
  *(v27 + 32) = v52;
  *(v27 + 48) = v31;
  return result;
}

__n128 sub_100041324(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100041360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_1000413BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSCommandResponseSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSCommandResponseSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000415A0()
{
  result = qword_1000D9330;
  if (!qword_1000D9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9330);
  }

  return result;
}

unint64_t sub_1000415F8()
{
  result = qword_1000D9338;
  if (!qword_1000D9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9338);
  }

  return result;
}

unint64_t sub_100041650()
{
  result = qword_1000D9340;
  if (!qword_1000D9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9340);
  }

  return result;
}

unint64_t sub_1000416A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBC70;
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

Swift::Int sub_100041764()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100041830(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_1000418E8(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_1000419B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000422BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000419E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE500000000000000;
  v6 = 0x7265746E65;
  v7 = 0xE400000000000000;
  v8 = 1953069157;
  if (v2 != 3)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7632239;
    v3 = 0xE300000000000000;
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

uint64_t sub_100041B30(uint64_t a1)
{
  sub_1000A05B0();
}

unint64_t sub_100041C3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100042308(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100041C6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0xE400000000000000;
  v6 = 1702125924;
  if (v2 != 5)
  {
    v6 = 0x6E6F697461636F6CLL;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007375746174;
  v8 = 0x5372656767697274;
  if (v2 != 3)
  {
    v8 = 118;
    v7 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x444965636E6566;
    v3 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001000A1310;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100041D40()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 1702125924;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  v4 = 0x5372656767697274;
  if (v1 != 3)
  {
    v4 = 118;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x444965636E6566;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

unint64_t sub_100041E10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100041E44(uint64_t a1)
{
  v2 = sub_100042154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100041E80(uint64_t a1)
{
  v2 = sub_100042154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFFenceTriggerSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9350, &qword_1000AA970);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100042154();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000A0B30();
    LOBYTE(v12) = 2;
    sub_1000A0B30();
    LOBYTE(v12) = *(v3 + 40);
    v11[0] = 3;
    sub_1000421A8();
    sub_1000A0B80();
    LOBYTE(v12) = 4;
    sub_1000A0B30();
    LOBYTE(v12) = 5;
    sub_1000A0B50();
    v12 = *(v3 + 80);
    v13 = v12;
    v11[23] = 6;
    sub_1000421FC(&v13, v11);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100042154()
{
  result = qword_1000D9358;
  if (!qword_1000D9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9358);
  }

  return result;
}

unint64_t sub_1000421A8()
{
  result = qword_1000D9360;
  if (!qword_1000D9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9360);
  }

  return result;
}

double FMFFenceTriggerSchema.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100042354(a2, v8);
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

unint64_t sub_1000422BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBDC8;
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

unint64_t sub_100042308(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBE60;
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

uint64_t sub_100042354@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9390, &qword_1000AACE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100042154();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v40[0]) = 0;
  v9 = sub_1000A09D0();
  v11 = v10;
  LOBYTE(v40[0]) = 1;
  *&v33 = sub_1000A09D0();
  *(&v33 + 1) = v12;
  LOBYTE(v40[0]) = 2;
  v30 = sub_1000A09D0();
  v32 = v13;
  LOBYTE(v34) = 3;
  sub_100042BE4();
  sub_1000A0A20();
  v29 = LOBYTE(v40[0]);
  LOBYTE(v40[0]) = 4;
  v28 = sub_1000A09D0();
  v31 = v14;
  LOBYTE(v40[0]) = 5;
  sub_1000A09F0();
  v16 = v15;
  v48 = 6;
  sub_100005424();
  sub_1000A0A20();
  (*(v6 + 8))(v8, v5);
  v26 = *(&v49 + 1);
  v27 = v49;
  *&v34 = v30;
  v17 = v32;
  *(&v34 + 1) = v32;
  v18 = v33;
  v35 = v33;
  v19 = *(&v33 + 1);
  *&v36 = v16;
  BYTE8(v36) = v29;
  *&v37 = v9;
  *(&v37 + 1) = v11;
  v20 = v31;
  *&v38 = v28;
  *(&v38 + 1) = v31;
  v39 = v49;
  sub_100042C38(&v34, v40);
  sub_100002308(a1);
  v40[0] = v30;
  v40[1] = v17;
  v40[2] = v18;
  v40[3] = v19;
  v40[4] = v16;
  v41 = v29;
  v42 = v9;
  v43 = v11;
  v44 = v28;
  v45 = v20;
  v46 = v27;
  v47 = v26;
  result = sub_10000E064(v40);
  v22 = v37;
  a2[2] = v36;
  a2[3] = v22;
  v23 = v39;
  a2[4] = v38;
  a2[5] = v23;
  v24 = v35;
  *a2 = v34;
  a2[1] = v24;
  return result;
}

__n128 sub_100042804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100042820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100042868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFFenceTriggerSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFFenceTriggerSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100042A34()
{
  result = qword_1000D9368;
  if (!qword_1000D9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9368);
  }

  return result;
}

unint64_t sub_100042A8C()
{
  result = qword_1000D9370;
  if (!qword_1000D9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9370);
  }

  return result;
}

unint64_t sub_100042AE4()
{
  result = qword_1000D9378;
  if (!qword_1000D9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9378);
  }

  return result;
}

unint64_t sub_100042B3C()
{
  result = qword_1000D9380;
  if (!qword_1000D9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9380);
  }

  return result;
}

unint64_t sub_100042B90()
{
  result = qword_1000D9388;
  if (!qword_1000D9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9388);
  }

  return result;
}

unint64_t sub_100042BE4()
{
  result = qword_1000D9398;
  if (!qword_1000D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9398);
  }

  return result;
}

unint64_t sub_100042C70(char a1)
{
  result = 118;
  switch(a1)
  {
    case 1:
      result = 98;
      break;
    case 2:
      result = 115;
      break;
    case 3:
      result = 112;
      break;
    case 4:
      result = 99;
      break;
    case 5:
      result = 25443;
      break;
    case 6:
      result = 26989;
      break;
    case 7:
      result = 7500147;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 1835819888;
      break;
    case 10:
      result = 107;
      break;
    case 11:
      result = 29555;
      break;
    case 12:
      result = 29043;
      break;
    case 13:
      result = 25970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100042D78(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100042C70(*a1);
  v5 = v4;
  if (v3 == sub_100042C70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100042E00()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_100042C70(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100042E64(uint64_t a1)
{
  sub_100042C70(*v1);
  sub_1000A05B0();
}

Swift::Int sub_100042EB8(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_100042C70(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100042F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100043530(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100042F48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100042C70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100042F90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100043530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100042FB8(uint64_t a1)
{
  v2 = sub_100043450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042FF4(uint64_t a1)
{
  v2 = sub_100043450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionAcceptSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D93A0, &unk_1000AACF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100043450();
  sub_1000A0CE0();
  LOBYTE(v13) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v17 = *(v3 + 8);
    v13 = *(v3 + 8);
    v12 = 1;
    sub_100006794(&v17, v11);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_1000A0B30();
    LOBYTE(v13) = 3;
    sub_1000A0B30();
    v16 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_100006794(&v16, v11);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 5;
    sub_1000A0A90();
    LOBYTE(v13) = 6;
    sub_1000A0A90();
    LOBYTE(v13) = 7;
    sub_1000A0A90();
    v15 = v3[5];
    v13 = v3[5];
    v12 = 8;
    sub_100006794(&v15, v11);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 9;
    sub_1000A0A90();
    v13 = *(v3 + 104);
    v14 = v13;
    v12 = 10;
    sub_100006794(&v14, v11);
    sub_1000A0AD0();
    sub_1000057B0(v13, *(&v13 + 1));
    LOBYTE(v13) = 11;
    sub_1000A0AB0();
    LOBYTE(v13) = 12;
    sub_1000A0AB0();
    LOBYTE(v13) = 13;
    sub_1000A0A90();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100043450()
{
  result = qword_1000D93A8;
  if (!qword_1000D93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93A8);
  }

  return result;
}

double IDSSessionAcceptSchema.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10004357C(a2, v9);
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

unint64_t sub_100043530(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBF28;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004357C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = sub_1000017BC(&qword_1000D93C8, &qword_1000AB128);
  v5 = *(v86 - 8);
  __chkstk_darwin(v86);
  v7 = &v26 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_100043450();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v8 = v5;
  v44 = a2;
  LOBYTE(v55) = 0;
  v9 = sub_1000A0A10();
  LOBYTE(v45) = 1;
  sub_100005424();
  sub_1000A0970();
  v42 = v55;
  v43 = v56;
  LOBYTE(v55) = 2;
  v10 = sub_1000A09D0();
  v41 = v11;
  v34 = v10;
  LOBYTE(v55) = 3;
  v33 = sub_1000A09D0();
  v40 = v12;
  LOBYTE(v45) = 4;
  sub_1000A0970();
  v32 = v55;
  v39 = v56;
  LOBYTE(v55) = 5;
  v31 = sub_1000A0930();
  LOBYTE(v55) = 6;
  v29 = sub_1000A0930();
  v30 = 0;
  LOBYTE(v55) = 7;
  v28 = sub_1000A0930();
  LOBYTE(v45) = 8;
  sub_1000A0970();
  v37 = v56;
  v38 = v55;
  LOBYTE(v55) = 9;
  v13 = sub_1000A0930();
  LOBYTE(v45) = 10;
  sub_1000A0970();
  v35 = v56;
  v36 = v55;
  LOBYTE(v55) = 11;
  v14 = sub_1000A0950();
  v84 = v15 & 1;
  LOBYTE(v55) = 12;
  v27 = sub_1000A0950();
  v82 = v16 & 1;
  v81 = 13;
  v17 = sub_1000A0930();
  (*(v8 + 8))(v7, v86);
  v18 = v42;
  *&v45 = v9;
  *(&v45 + 1) = v42;
  v19 = v34;
  *&v46 = v43;
  *(&v46 + 1) = v34;
  *&v47 = v41;
  *(&v47 + 1) = v33;
  *&v48 = v40;
  *(&v48 + 1) = v32;
  *&v49 = v39;
  BYTE8(v49) = v31;
  BYTE9(v49) = v29;
  BYTE10(v49) = v28;
  *&v50 = v38;
  *(&v50 + 1) = v37;
  LOBYTE(v51) = v13;
  *(&v51 + 1) = v36;
  *&v52 = v35;
  *(&v52 + 1) = v14;
  LODWORD(v30) = v84;
  LOBYTE(v53) = v84;
  *(&v53 + 1) = v27;
  LODWORD(v86) = v82;
  LOBYTE(v54) = v82;
  HIBYTE(v54) = v17;
  sub_100043F04(&v45, &v55);
  sub_100002308(a1);
  v55 = v9;
  v56 = v18;
  v57 = v43;
  v58 = v19;
  v59 = v41;
  v60 = v33;
  v61 = v40;
  v62 = v32;
  v63 = v39;
  v64 = v31;
  v65 = v29;
  v66 = v28;
  v67 = *&v85[7];
  v68 = v85[11];
  v69 = v38;
  v70 = v37;
  v71 = v13;
  *&v72[3] = *&v85[3];
  *v72 = *v85;
  v73 = v36;
  v74 = v35;
  v75 = v14;
  v76 = v30;
  *v77 = *v83;
  *&v77[3] = *&v83[3];
  v78 = v27;
  v79 = v86;
  v80 = v17;
  result = sub_100043F3C(&v55);
  v21 = v52;
  v22 = v44;
  *(v44 + 96) = v51;
  *(v22 + 112) = v21;
  *(v22 + 128) = v53;
  *(v22 + 144) = v54;
  v23 = v48;
  *(v22 + 32) = v47;
  *(v22 + 48) = v23;
  v24 = v50;
  *(v22 + 64) = v49;
  *(v22 + 80) = v24;
  v25 = v46;
  *v22 = v45;
  *(v22 + 16) = v25;
  return result;
}

__n128 sub_100043CF8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100043D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_100043D74(uint64_t result, int a2, int a3)
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
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100043E00()
{
  result = qword_1000D93B0;
  if (!qword_1000D93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93B0);
  }

  return result;
}

unint64_t sub_100043E58()
{
  result = qword_1000D93B8;
  if (!qword_1000D93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93B8);
  }

  return result;
}

unint64_t sub_100043EB0()
{
  result = qword_1000D93C0;
  if (!qword_1000D93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93C0);
  }

  return result;
}

uint64_t sub_100043F6C@<X0>(uint64_t a3@<X8>)
{
  v51 = a3;
  v4 = sub_10009FA70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSSessionInvitationSchema(0);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  v11 = sub_10009F260();
  sub_10004427C();
  sub_10009F250();
  if (!v3)
  {
    v12 = &v10[v8[15]];
    v13 = *v12;
    v43 = v12[1];
    v44 = v13;
    (*(v5 + 16))(v7, v10, v4);
    v14 = *&v10[v8[5]];
    v15 = &v10[v8[6]];
    v49 = *v15;
    v50 = v14;
    v48 = v15[8];
    v16 = v8[7];
    v17 = v8[8];
    v18 = v8[9];
    v19 = v8[10];
    v20 = &v10[v8[11]];
    v47 = v10[v8[12]];
    v45 = v11;
    v46 = v7;
    v22 = *v20;
    v21 = v20[1];
    v23 = &v10[v8[13]];
    v25 = *v23;
    v24 = v23[1];
    v26 = v10[v8[14]];
    v27 = v8[17];
    v41 = v10[v8[16]];
    v42 = v26;
    v28 = v8[19];
    v35 = v10[v8[18]];
    v29 = *&v10[v27 + 8];
    v36 = *&v10[v27];
    v31[1] = v29;
    v34 = *&v10[v28];
    LODWORD(v28) = v10[v8[20]];
    v32 = v10[v8[21]];
    v33 = v28;
    LODWORD(v19) = v10[v19];
    v39 = v10[v18];
    v40 = v19;
    LODWORD(v17) = v10[v17];
    v37 = v10[v16];
    v38 = v17;
    sub_100005750(v44, v43);
    sub_100005750(v22, v21);
    sub_100005750(v25, v24);

    sub_10009FA80();
    sub_1000442D4(v10);
  }
}

unint64_t sub_10004427C()
{
  result = qword_1000D93D0;
  if (!qword_1000D93D0)
  {
    type metadata accessor for IDSSessionInvitationSchema(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93D0);
  }

  return result;
}

uint64_t sub_1000442D4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSessionInvitationSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044330(uint64_t a1, uint64_t a2)
{
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_100044440();
  sub_10009F250();
  if (!v2)
  {

    sub_10009F6F0();
  }
}

unint64_t sub_100044440()
{
  result = qword_1000D93D8;
  if (!qword_1000D93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93D8);
  }

  return result;
}

Swift::Int sub_1000445BC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A0C70(v1);
  return sub_1000A0C90();
}

Swift::Int sub_100044630(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_1000A0C70(v2);
  return sub_1000A0C90();
}

unint64_t sub_100044674()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 4)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = v4;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100044718@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004A6C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004474C(uint64_t a1)
{
  v2 = sub_1000455CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044788(uint64_t a1)
{
  v2 = sub_1000455CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000447D0(uint64_t a1)
{
  v2 = sub_10004571C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004480C(uint64_t a1)
{
  v2 = sub_10004571C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004485C(uint64_t a1)
{
  v2 = sub_1000457C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044898(uint64_t a1)
{
  v2 = sub_1000457C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000448D4(uint64_t a1)
{
  v2 = sub_100045928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044910(uint64_t a1)
{
  v2 = sub_100045928();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004494C(uint64_t a1)
{
  v2 = sub_10004586C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044988(uint64_t a1)
{
  v2 = sub_10004586C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000449C4(uint64_t a1)
{
  v2 = sub_100045A24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044A00(uint64_t a1)
{
  v2 = sub_100045A24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100044A3C(uint64_t a1)
{
  v2 = sub_100045620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044A78(uint64_t a1)
{
  v2 = sub_100045620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSDictionaryContextClientSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D93E0, &qword_1000AB130);
  v80 = *(v2 - 8);
  v81 = v2;
  __chkstk_darwin(v2);
  v79 = &v60 - v3;
  v4 = sub_1000017BC(&qword_1000D93E8, &qword_1000AB138);
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v60 - v5;
  v6 = sub_1000017BC(&qword_1000D93F0, &qword_1000AB140);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin(v6);
  v73 = &v60 - v7;
  v8 = sub_1000017BC(&qword_1000D93F8, &qword_1000AB148);
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v70 = &v60 - v9;
  v68 = type metadata accessor for IDSKCSharingInvitationSchema(0);
  __chkstk_darwin(v68);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000017BC(&qword_1000D9400, &qword_1000AB150);
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v65 = &v60 - v12;
  v63 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  __chkstk_darwin(v63);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000017BC(&qword_1000D9408, &qword_1000AB158);
  v61 = *(v14 - 8);
  v62 = v14;
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v60 = type metadata accessor for IDSSampleInvitationSchema(0);
  __chkstk_darwin(v60);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  __chkstk_darwin(v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000017BC(&qword_1000D9410, &qword_1000AB160);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v23 = &v60 - v22;
  sub_1000022C4(a1, a1[3]);
  sub_1000455CC();
  v82 = v23;
  sub_1000A0CE0();
  sub_100047168(v115, v21, type metadata accessor for IDSDictionaryContextClientSchema);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v33 = *v21;
      v35 = *(v21 + 1);
      LOBYTE(v100) = 3;
      sub_1000457C4();
      v42 = v73;
      v43 = v84;
      v44 = v82;
      sub_1000A0A70();
      *&v100 = v33;
      *(&v100 + 1) = v35;
      sub_100045818();
      v45 = v75;
      sub_1000A0B80();
      (*(v74 + 8))(v42, v45);
      (*(v83 + 8))(v44, v43);
    }

    else
    {
      v32 = v84;
      if (EnumCaseMultiPayload != 4)
      {
        v50 = *(v21 + 13);
        v112 = *(v21 + 12);
        v113 = v50;
        v114 = v21[224];
        v51 = *(v21 + 9);
        v108 = *(v21 + 8);
        v109 = v51;
        v52 = *(v21 + 11);
        v110 = *(v21 + 10);
        v111 = v52;
        v53 = *(v21 + 5);
        v104 = *(v21 + 4);
        v105 = v53;
        v54 = *(v21 + 7);
        v106 = *(v21 + 6);
        v107 = v54;
        v55 = *(v21 + 1);
        v100 = *v21;
        v101 = v55;
        v56 = *(v21 + 3);
        v102 = *(v21 + 2);
        v103 = v56;
        LOBYTE(v85) = 5;
        sub_100045620();
        v57 = v79;
        v58 = v82;
        sub_1000A0A70();
        v97 = v112;
        v98 = v113;
        v99 = v114;
        v93 = v108;
        v94 = v109;
        v95 = v110;
        v96 = v111;
        v89 = v104;
        v90 = v105;
        v91 = v106;
        v92 = v107;
        v85 = v100;
        v86 = v101;
        v87 = v102;
        v88 = v103;
        sub_100045674();
        v59 = v81;
        sub_1000A0B80();
        (*(v80 + 8))(v57, v59);
        (*(v83 + 8))(v58, v32);
        return sub_1000456C8(&v100);
      }

      v34 = *v21;
      v33 = *(v21 + 1);
      v35 = *(v21 + 2);
      LOBYTE(v100) = 4;
      sub_10004571C();
      v36 = v76;
      v37 = v82;
      sub_1000A0A70();
      *&v100 = v34;
      *(&v100 + 1) = v33;
      *&v101 = v35;
      sub_100045770();
      v38 = v78;
      sub_1000A0B80();
      (*(v77 + 8))(v36, v38);
      (*(v83 + 8))(v37, v32);
    }

    return sub_100005568(v33, v35);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v21;
      v26 = v64;
      sub_1000458C0(v25, v64, type metadata accessor for IDSHomeKitInvitationSchema);
      LOBYTE(v100) = 1;
      sub_100045928();
      v27 = v65;
      v28 = v84;
      v29 = v82;
      sub_1000A0A70();
      sub_10004597C(&qword_1000D9468, type metadata accessor for IDSHomeKitInvitationSchema, &protocol conformance descriptor for IDSHomeKitInvitationSchema);
      v30 = v67;
      sub_1000A0B80();
      (*(v66 + 8))(v27, v30);
      v31 = type metadata accessor for IDSHomeKitInvitationSchema;
    }

    else
    {
      v47 = v21;
      v26 = v69;
      sub_1000458C0(v47, v69, type metadata accessor for IDSKCSharingInvitationSchema);
      LOBYTE(v100) = 2;
      sub_10004586C();
      v48 = v70;
      v28 = v84;
      v29 = v82;
      sub_1000A0A70();
      sub_10004597C(&qword_1000D9458, type metadata accessor for IDSKCSharingInvitationSchema, &protocol conformance descriptor for IDSKCSharingInvitationSchema);
      v49 = v72;
      sub_1000A0B80();
      (*(v71 + 8))(v48, v49);
      v31 = type metadata accessor for IDSKCSharingInvitationSchema;
    }

    v40 = v31;
    v41 = v26;
  }

  else
  {
    sub_1000458C0(v21, v18, type metadata accessor for IDSSampleInvitationSchema);
    LOBYTE(v100) = 0;
    sub_100045A24();
    v28 = v84;
    v29 = v82;
    sub_1000A0A70();
    sub_10004597C(&qword_1000D9248, type metadata accessor for IDSSampleInvitationSchema, &protocol conformance descriptor for IDSSampleInvitationSchema);
    v39 = v62;
    sub_1000A0B80();
    (*(v61 + 8))(v16, v39);
    v40 = type metadata accessor for IDSSampleInvitationSchema;
    v41 = v18;
  }

  sub_1000459C4(v41, v40);
  return (*(v83 + 8))(v29, v28);
}

unint64_t sub_1000455CC()
{
  result = qword_1000D9418;
  if (!qword_1000D9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9418);
  }

  return result;
}

unint64_t sub_100045620()
{
  result = qword_1000D9420;
  if (!qword_1000D9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9420);
  }

  return result;
}

unint64_t sub_100045674()
{
  result = qword_1000D9428;
  if (!qword_1000D9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9428);
  }

  return result;
}

unint64_t sub_10004571C()
{
  result = qword_1000D9430;
  if (!qword_1000D9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9430);
  }

  return result;
}

unint64_t sub_100045770()
{
  result = qword_1000D9438;
  if (!qword_1000D9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9438);
  }

  return result;
}

unint64_t sub_1000457C4()
{
  result = qword_1000D9440;
  if (!qword_1000D9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9440);
  }

  return result;
}

unint64_t sub_100045818()
{
  result = qword_1000D9448;
  if (!qword_1000D9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9448);
  }

  return result;
}

unint64_t sub_10004586C()
{
  result = qword_1000D9450;
  if (!qword_1000D9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9450);
  }

  return result;
}

uint64_t sub_1000458C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100045928()
{
  result = qword_1000D9460;
  if (!qword_1000D9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9460);
  }

  return result;
}

uint64_t sub_10004597C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000459C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100045A24()
{
  result = qword_1000D9470;
  if (!qword_1000D9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9470);
  }

  return result;
}

uint64_t IDSDictionaryContextClientSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v90 = sub_1000017BC(&qword_1000D9478, &qword_1000AB168);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v72 - v3;
  v88 = sub_1000017BC(&qword_1000D9480, &qword_1000AB170);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v94 = &v72 - v4;
  v86 = sub_1000017BC(&qword_1000D9488, &qword_1000AB178);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v99 = &v72 - v5;
  v83 = sub_1000017BC(&qword_1000D9490, &qword_1000AB180);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v72 - v6;
  v82 = sub_1000017BC(&qword_1000D9498, &qword_1000AB188);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v92 = &v72 - v7;
  v80 = sub_1000017BC(&qword_1000D94A0, &qword_1000AB190);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v97 = &v72 - v8;
  v98 = sub_1000017BC(&qword_1000D94A8, &qword_1000AB198);
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v10 = &v72 - v9;
  v96 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v11 = __chkstk_darwin(v96);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v77 = (&v72 - v14);
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v72 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v72 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v72 - v25;
  __chkstk_darwin(v24);
  v28 = &v72 - v27;
  v29 = a1[3];
  v117 = a1;
  sub_1000022C4(a1, v29);
  sub_1000455CC();
  v30 = v101;
  sub_1000A0CD0();
  if (!v30)
  {
    v74 = v26;
    v73 = v17;
    v75 = v23;
    v76 = v20;
    v31 = v97;
    v32 = v99;
    v101 = v28;
    v33 = v98;
    v34 = sub_1000A0A60();
    v35 = v34;
    if (*(v34 + 16) == 1)
    {
      v36 = *(v34 + 32);
      if (v36 != 6)
      {
        if (*(v34 + 32) <= 2u)
        {
          v37 = v100;
          if (*(v34 + 32))
          {
            if (v36 == 1)
            {
              v93 = v34;
              LOBYTE(v102) = 1;
              sub_100045928();
              v38 = v92;
              sub_1000A0900();
              type metadata accessor for IDSHomeKitInvitationSchema(0);
              sub_10004597C(&qword_1000D94D8, type metadata accessor for IDSHomeKitInvitationSchema, &protocol conformance descriptor for IDSHomeKitInvitationSchema);
              v55 = v75;
              v56 = v38;
              v57 = v82;
              sub_1000A0A20();
              (*(v81 + 8))(v56, v57);
              (*(v37 + 8))(v10, v33);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v62 = v55;
LABEL_19:
              v71 = v101;
              sub_1000458C0(v62, v101, type metadata accessor for IDSDictionaryContextClientSchema);
              v43 = v95;
              goto LABEL_20;
            }

            LOBYTE(v102) = 2;
            sub_10004586C();
            v52 = v93;
            v53 = v33;
            sub_1000A0900();
            v99 = v10;
            type metadata accessor for IDSKCSharingInvitationSchema(0);
            sub_10004597C(&qword_1000D94D0, type metadata accessor for IDSKCSharingInvitationSchema, &protocol conformance descriptor for IDSKCSharingInvitationSchema);
            v48 = v76;
            v58 = v83;
            sub_1000A0A20();
            (*(v84 + 8))(v52, v58);
            (*(v37 + 8))(v99, v53);
            swift_unknownObjectRelease();
          }

          else
          {
            LOBYTE(v102) = 0;
            sub_100045A24();
            sub_1000A0900();
            type metadata accessor for IDSSampleInvitationSchema(0);
            v93 = v35;
            sub_10004597C(&qword_1000D9240, type metadata accessor for IDSSampleInvitationSchema, &protocol conformance descriptor for IDSSampleInvitationSchema);
            v48 = v74;
            v49 = v31;
            v50 = v80;
            sub_1000A0A20();
            (*(v79 + 8))(v49, v50);
            (*(v37 + 8))(v10, v33);
            swift_unknownObjectRelease();
          }

          swift_storeEnumTagMultiPayload();
          v62 = v48;
          goto LABEL_19;
        }

        v93 = v34;
        v43 = v95;
        v44 = v100;
        if (v36 == 3)
        {
          LOBYTE(v102) = 3;
          sub_1000457C4();
          sub_1000A0900();
          sub_100046B00();
          v51 = v86;
          sub_1000A0A20();
          (*(v85 + 8))(v32, v51);
          (*(v44 + 8))(v10, v33);
          swift_unknownObjectRelease();
          v61 = v73;
          *v73 = v102;
        }

        else
        {
          if (v36 != 4)
          {
            LOBYTE(v102) = 5;
            sub_100045620();
            v54 = v91;
            sub_1000A0900();
            sub_100046A58();
            v59 = v90;
            sub_1000A0A20();
            (*(v89 + 8))(v54, v59);
            (*(v44 + 8))(v10, v33);
            swift_unknownObjectRelease();
            v63 = v115;
            v64 = v78;
            *(v78 + 12) = v114;
            *(v64 + 208) = v63;
            *(v64 + 224) = v116;
            v65 = v111;
            *(v64 + 128) = v110;
            *(v64 + 144) = v65;
            v66 = v113;
            *(v64 + 160) = v112;
            *(v64 + 176) = v66;
            v67 = v107;
            *(v64 + 64) = v106;
            *(v64 + 80) = v67;
            v68 = v109;
            *(v64 + 96) = v108;
            *(v64 + 112) = v68;
            v69 = v103;
            *v64 = v102;
            *(v64 + 16) = v69;
            v70 = v105;
            *(v64 + 32) = v104;
            *(v64 + 48) = v70;
            swift_storeEnumTagMultiPayload();
            v71 = v101;
            sub_1000458C0(v64, v101, type metadata accessor for IDSDictionaryContextClientSchema);
LABEL_20:
            sub_1000458C0(v71, v43, type metadata accessor for IDSDictionaryContextClientSchema);
            return sub_100002308(v117);
          }

          LOBYTE(v102) = 4;
          sub_10004571C();
          v45 = v94;
          sub_1000A0900();
          sub_100046AAC();
          v46 = v45;
          v47 = v88;
          sub_1000A0A20();
          (*(v87 + 8))(v46, v47);
          (*(v44 + 8))(v10, v33);
          swift_unknownObjectRelease();
          v60 = v103;
          v61 = v77;
          *v77 = v102;
          *(v61 + 16) = v60;
        }

        swift_storeEnumTagMultiPayload();
        v71 = v101;
        sub_1000458C0(v61, v101, type metadata accessor for IDSDictionaryContextClientSchema);
        goto LABEL_20;
      }
    }

    v39 = sub_1000A0870();
    swift_allocError();
    v41 = v40;
    sub_1000017BC(&qword_1000D94B0, &qword_1000AB1A0);
    *v41 = v96;
    sub_1000A0910();
    sub_1000A0860();
    (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
    swift_willThrow();
    (*(v100 + 8))(v10, v33);
    swift_unknownObjectRelease();
  }

  return sub_100002308(v117);
}