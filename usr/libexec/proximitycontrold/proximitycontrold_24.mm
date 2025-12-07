uint64_t sub_10023AD40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10023B9D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10023AD68(uint64_t a1)
{
  v2 = sub_10023C16C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023ADA4(uint64_t a1)
{
  v2 = sub_10023C16C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023ADE0(uint64_t a1)
{
  v2 = sub_10023C2BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023AE1C(uint64_t a1)
{
  v2 = sub_10023C2BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023AE58()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 12383;
  }
}

void sub_10023AE8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002A6BA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
}

uint64_t sub_10023AF68(uint64_t a1)
{
  v2 = sub_10023C1C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023AFA4(uint64_t a1)
{
  v2 = sub_10023C1C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10023AFFC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001002A3110 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_10023B090(uint64_t a1)
{
  v2 = sub_10023C310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023B0CC(uint64_t a1)
{
  v2 = sub_10023C310();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10023B108@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10023BAE8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10023B158(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034FF98, &qword_1002947C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_10023B81C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  type metadata accessor for UUID();
  sub_100019194(&qword_1003437D8, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for RemoteFollowerMessage(0) + 20));
    v10 = *v9;
    LOBYTE(v9) = *(v9 + 8);
    v13 = v10;
    v14 = v9;
    v12[15] = 1;
    sub_10023B984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10023B320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for UUID();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034FF80, &qword_1002947B8);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for RemoteFollowerMessage(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_10023B81C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  v33 = 0;
  sub_100019194(&qword_1003437F0, &protocol conformance descriptor for UUID);
  v15 = v29;
  v16 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_10023B870();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v23;
  v20 = v23 + *(v24 + 20);
  *v20 = v30;
  *(v20 + 8) = v18;
  sub_10023B8C4(v19, v25);
  sub_10000903C(a1);
  return sub_10023B928(v19);
}

uint64_t sub_10023B678()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 25705;
  }
}

void sub_10023B6A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
}

uint64_t sub_10023B774(uint64_t a1)
{
  v2 = sub_10023B81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023B7B0(uint64_t a1)
{
  v2 = sub_10023B81C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10023B81C()
{
  result = qword_10034FF88;
  if (!qword_10034FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FF88);
  }

  return result;
}

unint64_t sub_10023B870()
{
  result = qword_10034FF90;
  if (!qword_10034FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FF90);
  }

  return result;
}

uint64_t sub_10023B8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteFollowerMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023B928(uint64_t a1)
{
  v2 = type metadata accessor for RemoteFollowerMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10023B984()
{
  result = qword_10034FFA0;
  if (!qword_10034FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFA0);
  }

  return result;
}

uint64_t sub_10023B9D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657472617473 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10023BAE8(void *a1)
{
  v2 = sub_100035D04(&qword_10034FFA8, &qword_1002947C8);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  __chkstk_darwin(v2);
  v39 = &v33 - v4;
  v35 = sub_100035D04(&qword_10034FFB0, &qword_1002947D0);
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v33 - v5;
  v7 = sub_100035D04(&qword_10034FFB8, &qword_1002947D8);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_100035D04(&qword_10034FFC0, &unk_1002947E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  v41 = a1;
  v15 = sub_10000EBC0(a1, v14);
  sub_10023C16C();
  v16 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v40 = 0;
    v17 = v38;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v45 = v18;
    v46 = v18 + 32;
    v47 = 0;
    v48 = v19;
    v20 = sub_100218008();
    if (v20 == 3 || v47 != v48 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v24 = &type metadata for RemoteFollowerMessage.MessageType;
      v15 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        v44 = 1;
        sub_10023C2BC();
        v15 = v13;
        v21 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v21)
        {
          (*(v17 + 8))(v6, v35);
          (*(v11 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v15 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v44 = 2;
        sub_10023C1C0();
        v15 = v13;
        v29 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v11;
        if (!v29)
        {
          v43 = 0;
          sub_10023C214();
          v31 = v36;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v32 = v44;
          v42 = 1;
          sub_10023C268();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v37 + 8))(0, v31);
          (*(v30 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v15 = v32 | (v43 << 8);
          goto LABEL_10;
        }
      }
    }

    else
    {
      v44 = 0;
      sub_10023C310();
      v15 = v13;
      v26 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v26)
      {
        KeyedDecodingContainer.decode(_:forKey:)();
        v28 = v27;
        (*(v34 + 8))(v9, v7);
        (*(v11 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v15 = v28;
        goto LABEL_10;
      }
    }

    (*(v11 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000903C(v41);
  return v15;
}

unint64_t sub_10023C16C()
{
  result = qword_10034FFC8;
  if (!qword_10034FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFC8);
  }

  return result;
}

unint64_t sub_10023C1C0()
{
  result = qword_10034FFD0;
  if (!qword_10034FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFD0);
  }

  return result;
}

unint64_t sub_10023C214()
{
  result = qword_10034FFD8;
  if (!qword_10034FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFD8);
  }

  return result;
}

unint64_t sub_10023C268()
{
  result = qword_10034FFE0;
  if (!qword_10034FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFE0);
  }

  return result;
}

unint64_t sub_10023C2BC()
{
  result = qword_10034FFE8;
  if (!qword_10034FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFE8);
  }

  return result;
}

unint64_t sub_10023C310()
{
  result = qword_10034FFF0;
  if (!qword_10034FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFF0);
  }

  return result;
}

unint64_t sub_10023C364()
{
  result = qword_100350018;
  if (!qword_100350018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350018);
  }

  return result;
}

unint64_t sub_10023C40C()
{
  result = qword_100350020;
  if (!qword_100350020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350020);
  }

  return result;
}

unint64_t sub_10023C464()
{
  result = qword_100350028;
  if (!qword_100350028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350028);
  }

  return result;
}

unint64_t sub_10023C4BC()
{
  result = qword_100350030;
  if (!qword_100350030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350030);
  }

  return result;
}

unint64_t sub_10023C514()
{
  result = qword_100350038;
  if (!qword_100350038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350038);
  }

  return result;
}

unint64_t sub_10023C56C()
{
  result = qword_100350040;
  if (!qword_100350040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350040);
  }

  return result;
}

unint64_t sub_10023C5C4()
{
  result = qword_100350048;
  if (!qword_100350048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350048);
  }

  return result;
}

unint64_t sub_10023C61C()
{
  result = qword_100350050;
  if (!qword_100350050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350050);
  }

  return result;
}

unint64_t sub_10023C674()
{
  result = qword_100350058;
  if (!qword_100350058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350058);
  }

  return result;
}

unint64_t sub_10023C6CC()
{
  result = qword_100350060;
  if (!qword_100350060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350060);
  }

  return result;
}

unint64_t sub_10023C724()
{
  result = qword_100350068;
  if (!qword_100350068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350068);
  }

  return result;
}

unint64_t sub_10023C77C()
{
  result = qword_100350070;
  if (!qword_100350070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350070);
  }

  return result;
}

unint64_t sub_10023C7D4()
{
  result = qword_100350078;
  if (!qword_100350078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350078);
  }

  return result;
}

unint64_t sub_10023C82C()
{
  result = qword_100350080;
  if (!qword_100350080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350080);
  }

  return result;
}

unint64_t sub_10023C884()
{
  result = qword_100350088;
  if (!qword_100350088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350088);
  }

  return result;
}

uint64_t sub_10023C8D8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350090);
  sub_100003078(v0, qword_100350090);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10023C95C(void *a1)
{
  v2 = sub_100035D04(&qword_1003502B8, &qword_100295030);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v22 - v3;
  v4 = sub_100035D04(&qword_1003502C0, &qword_100295038);
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v25 = &v22 - v5;
  v6 = sub_100035D04(&qword_1003502C8, &qword_100295040);
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_100035D04(&qword_1003502D0, &qword_100295048);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_100035D04(&qword_1003502D8, &qword_100295050);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_10000EBC0(a1, a1[3]);
  sub_10023F5C8();
  v16 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *(v16 + 2);
  switch(v17)
  {
    case 2:
      LOBYTE(v32) = 2;
      sub_10023F670();
      v18 = v25;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v18, v27);
      return (*(v13 + 8))(v15, v12);
    case 1:
      LOBYTE(v32) = 1;
      sub_10023F6C4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v8, v24);
      return (*(v13 + 8))(v15, v12);
    case 0:
      LOBYTE(v32) = 0;
      sub_10023F718();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
  }

  LOBYTE(v32) = 3;
  sub_10023F61C();
  v20 = v28;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v32 = *v16;
  v33 = v17;
  v34 = *(v16 + 24);
  v35 = *(v16 + 40);
  sub_10010B950();
  v21 = v30;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v29 + 8))(v20, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10023CE1C()
{
  v1 = 0x6574736575716572;
  v2 = 0x6564656563637573;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x6572676F72506E69;
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

uint64_t sub_10023CE98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10023ECC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10023CEC0(uint64_t a1)
{
  v2 = sub_10023F5C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023CEFC(uint64_t a1)
{
  v2 = sub_10023F5C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023CF38(uint64_t a1)
{
  v2 = sub_10023F61C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023CF74(uint64_t a1)
{
  v2 = sub_10023F61C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023CFB0(uint64_t a1)
{
  v2 = sub_10023F6C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023CFEC(uint64_t a1)
{
  v2 = sub_10023F6C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023D028(uint64_t a1)
{
  v2 = sub_10023F718();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023D064(uint64_t a1)
{
  v2 = sub_10023F718();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023D0A0(uint64_t a1)
{
  v2 = sub_10023F670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023D0DC(uint64_t a1)
{
  v2 = sub_10023F670();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10023D118@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10023EE3C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

BOOL sub_10023D180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10023EB6C(v5, v7);
}

uint64_t sub_10023D1DC()
{
  v1 = sub_100035D04(&qword_1003502E0, &qword_100295058);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = sub_100035D04(&qword_1003502E8, &unk_100295060);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher))
  {
    v11 = *(v0 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher);
  }

  else
  {
    v19 = v6;
    v20 = v7;

    v17 = v0;
    v18 = v1;
    v21 = sub_10005E71C();
    sub_100035D04(&qword_10033C268, &qword_10028EAD0);
    sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v12 = Publisher.eraseToAnyPublisher()();
    v16 = v12;

    v21 = v12;
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_10033E588, &unk_100274730);
    sub_100035D04(&qword_1003473E8, &unk_10027EE60);
    sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_1003502F0, &qword_1003502E0, &qword_100295058, &protocol conformance descriptor for Publishers.Map<A, B>);
    v13 = v18;
    Publisher.compactMap<A>(_:)();
    (*(v2 + 8))(v4, v13);
    sub_10000E244(&qword_1003502F8, &qword_1003502E8, &unk_100295060, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v14 = v19;
    v11 = Publisher.eraseToAnyPublisher()();
    (*(v20 + 8))(v9, v14);
    *(v17 + v10) = v11;
  }

  return v11;
}

void sub_10023D5AC(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v7 = 0;
    v4 = 2;
    goto LABEL_9;
  }

  if (*(Strong + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) != 1)
  {

LABEL_8:
    v7 = 0;
    v4 = 1;
    goto LABEL_9;
  }

  v4 = *(Strong + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 16);
  v5 = Strong;

  v6 = v4;

  if (*(*(v5 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state) + 40) >= 2uLL)
  {

    goto LABEL_8;
  }

  v7 = *(v5 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);

LABEL_9:
  *a2 = v4;
  a2[1] = v7;
}

id sub_10023D698@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v2;
  return sub_100094B7C(v3);
}

uint64_t sub_10023D6A8@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = (v2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
  v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
  v29 = *(v2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
  v30 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
  v31 = *(v2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
  v32 = v7;
  v8 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v9 = v32;
    v11 = *(&v31 + 1);
    v10 = v31;
    v12 = *(&v30 + 1);
    v13 = v30;
    v14 = v29;
    v15 = *(&v32 + 1);
  }

  else
  {
    v14 = UUID.uuidString.getter();
    v8 = v16;
    v10 = *(v3 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device);
    *&v24 = v14;
    *(&v24 + 1) = v16;
    v12 = 0x80000001002A6C20;
    v13 = 0xD000000000000017;
    *&v25 = 0xD000000000000017;
    *(&v25 + 1) = 0x80000001002A6C20;
    v11 = 0x3FF0000000000000;
    *&v26 = v10;
    *(&v26 + 1) = 0x3FF0000000000000;
    v15 = _swiftEmptyArrayStorage;
    LOBYTE(v27) = 0;
    *(&v27 + 1) = _swiftEmptyArrayStorage;
    v17 = v5[1];
    v28[0] = *v5;
    v28[1] = v17;
    v18 = v5[3];
    v28[2] = v5[2];
    v28[3] = v18;
    v19 = v24;
    v20 = v25;
    v21 = v27;
    v5[2] = v26;
    v5[3] = v21;
    *v5 = v19;
    v5[1] = v20;

    sub_100094CD8(&v24, &v23);
    sub_1000097E8(v28, &qword_10033E428, &qword_100274640);
    v9 = 0;
  }

  LOBYTE(v24) = v9 & 1;
  result = sub_10023F7BC(&v29, v28);
  *a2 = v14;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v24;
  *(a2 + 56) = v15;
  return result;
}

void sub_10023D808(uint64_t *a1, uint64_t a2)
{
  v3 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v70 = *a1;
  v71 = v19;
  v21 = a1[4];
  v20 = a1[5];
  v67 = v17;
  v68 = v20;
  v22 = a1[6];
  v69 = v18;
  if (v18 >= 3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v37 = v21;
    if (Strong)
    {
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      v38 = Strong;
      v39._countAndFlagsBits = 0x20B4949FF0;
      v39._object = 0xA500000000000000;
      String.append(_:)(v39);
      *&v84 = v70;
      *(&v84 + 1) = v67;
      *&v85 = v69;
      *(&v85 + 1) = v71;
      *&v86 = v21;
      *(&v86 + 1) = v68;
      v64 = v22;
      v87 = v22;
      _print_unlocked<A, B>(_:_:)();
      v40 = *(&v76 + 1);
      v62 = v76;
      v63 = v38;
      sub_10023D6A8(&v84);
      v80 = v84;
      v81 = v85;
      v82 = v86;
      v41 = v88;
      v83 = v87;
      static Date.now.getter();
      v42 = &v7[*(v65 + 48)];
      (*(v11 + 32))(v7, v14, v10);
      *v42 = v62;
      *(v42 + 1) = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1000AFF4C(0, v41[2] + 1, 1, v41);
      }

      v44 = v41[2];
      v43 = v41[3];
      v22 = v64;
      v37 = v21;
      if (v44 >= v43 >> 1)
      {
        v41 = sub_1000AFF4C((v43 > 1), v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      sub_100098288(v7, v41 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v44);
      v45 = v63 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report;
      v46 = *(v63 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
      v47 = *(v63 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
      v48 = *(v63 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
      v78 = *(v63 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
      v79 = v46;
      v76 = v47;
      v77 = v48;
      v49 = v82;
      *(v45 + 16) = v81;
      *(v45 + 32) = v49;
      *v45 = v80;
      *(v45 + 48) = v83;
      *(v45 + 56) = v41;
      sub_1000097E8(&v76, &qword_10033E428, &qword_100274640);
    }

    if (qword_1003392A0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003078(v50, qword_100350090);

    v51 = v69;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = v67;
    v55 = v68;
    sub_1001CED4C(v70, v67, v51, v71, v37, v68, v22);
    if (os_log_type_enabled(v52, v53))
    {
      v56 = swift_slowAlloc();
      v57 = v22;
      v58 = swift_slowAlloc();
      *v56 = 138412290;
      sub_1000982F8();
      swift_allocError();
      *v59 = v70;
      v59[1] = v54;
      v60 = v71;
      v59[2] = v51;
      v59[3] = v60;
      v59[4] = v37;
      v59[5] = v55;
      v59[6] = v57;

      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v61;
      *v58 = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "### Transfer failed: %@", v56, 0xCu);
      sub_1000097E8(v58, &qword_100339940, &unk_100272C50);
    }
  }

  else
  {
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (v23)
    {
      v24 = v23;
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      v25._countAndFlagsBits = 0x20A39F9FF0;
      v25._object = 0xA500000000000000;
      String.append(_:)(v25);
      *&v84 = v70;
      *(&v84 + 1) = v67;
      *&v85 = v69;
      *(&v85 + 1) = v71;
      *&v86 = v21;
      *(&v86 + 1) = v68;
      v87 = v22;
      _print_unlocked<A, B>(_:_:)();
      v26 = v76;
      sub_10023D6A8(&v84);
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v27 = v88;
      v75 = v87;
      static Date.now.getter();
      v28 = &v9[*(v65 + 48)];
      (*(v11 + 32))(v9, v16, v10);
      *v28 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1000AFF4C(0, v27[2] + 1, 1, v27);
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1000AFF4C((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      sub_100098288(v9, v27 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v30);
      v31 = v24 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report;
      v32 = *(v24 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
      v33 = *(v24 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
      v34 = *(v24 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
      v78 = *(v24 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
      v79 = v32;
      v76 = v33;
      v77 = v34;
      v35 = v74;
      *(v31 + 16) = v73;
      *(v31 + 32) = v35;
      *v31 = v72;
      *(v31 + 48) = v75;
      *(v31 + 56) = v27;
      sub_1000097E8(&v76, &qword_10033E428, &qword_100274640);
    }
  }
}

uint64_t sub_10023DEEC()
{
  v1 = v0;
  if (qword_1003392A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  swift_unknownObjectRelease();

  sub_10023F834(*(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 8), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 16), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 24), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32));

  sub_1000983C8(*(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 8), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 24), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 40), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 56));

  return v1;
}

uint64_t sub_10023E0AC()
{
  sub_10023DEEC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffTransfer(uint64_t a1)
{
  result = qword_1003500E8;
  if (!qword_1003500E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023E158(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_10023E254()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v10[1] = qword_10038B5B8;
  aBlock[4] = sub_10023F76C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003166C8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10023F774(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);

  return result;
}

uint64_t sub_10023E53C(uint64_t a1)
{
  sub_10023D6A8(v11);
  if (qword_100339270 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10038B5E0);
  sub_100094CD8(v11, v10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_100098354(v11);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10[0] = v5;
    *v4 = 136315138;
    v6 = sub_10022B95C();
    v8 = sub_100017494(v6, v7, v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  return sub_100098354(v11);
}

uint64_t sub_10023E6A4()
{
  _StringGuts.grow(_:)(23);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1 = UUID.uuidString.getter();
  sub_10000B584(8, v1, v2);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3D65636976656420;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v10._countAndFlagsBits = sub_1000092A0(v8, v9);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x3D657461747320;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

uint64_t sub_10023E84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10023E894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10023E8F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10023E910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10023E96C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10023E9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10023EA78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_10023EB14(uint64_t a1)
{
  result = sub_10023F774(&qword_100350260, type metadata accessor for HandoffTransfer, &unk_100294F70);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_10023EB6C(void *a1, void *a2)
{
  v3 = a1[2];
  switch(v3)
  {
    case 2:
      return a2[2] == 2;
    case 1:
      return a2[2] == 1;
    case 0:
      return !a2[2];
  }

  v5 = a2[2];
  if (v5 < 3)
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    if (v6 = a1[3], v7 = a1[4], v9 = a1[5], v8 = a1[6], v10 = a2[3], v11 = a2[4], v13 = a2[5], v12 = a2[6], a1[1] == a2[1]) && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (v6 == v10 && v7 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v8)
        {
          if (v12 && (v9 == v13 && v8 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v12)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10023ECC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564656563637573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10023EE3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = sub_100035D04(&qword_100350268, &qword_100295000);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  __chkstk_darwin(v3);
  v54 = &v43 - v5;
  v49 = sub_100035D04(&qword_100350270, &qword_100295008);
  v53 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v43 - v6;
  v7 = sub_100035D04(&qword_100350278, &qword_100295010);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = sub_100035D04(&qword_100350280, &qword_100295018);
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_100035D04(&qword_100350288, &unk_100295020);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = a1[3];
  v68 = a1;
  sub_10000EBC0(a1, v18);
  sub_10023F5C8();
  v19 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v20 = v19;
  if (v19)
  {
    return sub_10000903C(v68);
  }

  v45 = v13;
  v44 = v11;
  v21 = v10;
  v22 = v52;
  v23 = v53;
  v56 = v15;
  v24 = v54;
  v25 = v55;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v64 = v26;
  v65 = v26 + 32;
  v66 = 0;
  v67 = v27;
  v28 = sub_100218018();
  if (v28 == 4 || v66 != v67 >> 1)
  {
    v36 = v14;
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v39 = &type metadata for TransferState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v56 + 8))(v17, v36);
    swift_unknownObjectRelease();
    return sub_10000903C(v68);
  }

  if (v28 > 1u)
  {
    v41 = v56;
    if (v28 == 2)
    {
      LOBYTE(v57) = 2;
      sub_10023F670();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = 0;
      (*(v23 + 8))(v22, v49);
      (*(v41 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v30 = 0;
      v31 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v32 = 2;
    }

    else
    {
      LOBYTE(v57) = 3;
      sub_10023F61C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10010B758();
      v42 = v50;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v43 = 0;
      (*(v51 + 8))(v24, v42);
      (*(v41 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v30 = v57;
      v31 = v58;
      v32 = v59;
      v33 = v60;
      v34 = v61;
      v35 = v62;
      v20 = v63;
    }
  }

  else if (v28)
  {
    LOBYTE(v57) = 1;
    sub_10023F6C4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = 0;
    (*(v48 + 8))(v21, v47);
    (*(v56 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 1;
  }

  else
  {
    LOBYTE(v57) = 0;
    sub_10023F718();
    v29 = v45;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = 0;
    (*(v46 + 8))(v29, v44);
    (*(v56 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  result = sub_10000903C(v68);
  *v25 = v30;
  v25[1] = v31;
  v25[2] = v32;
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[6] = v20;
  return result;
}

unint64_t sub_10023F5C8()
{
  result = qword_100350290;
  if (!qword_100350290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350290);
  }

  return result;
}

unint64_t sub_10023F61C()
{
  result = qword_100350298;
  if (!qword_100350298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350298);
  }

  return result;
}

unint64_t sub_10023F670()
{
  result = qword_1003502A0;
  if (!qword_1003502A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003502A0);
  }

  return result;
}

unint64_t sub_10023F6C4()
{
  result = qword_1003502A8;
  if (!qword_1003502A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003502A8);
  }

  return result;
}

unint64_t sub_10023F718()
{
  result = qword_1003502B0;
  if (!qword_1003502B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003502B0);
  }

  return result;
}

uint64_t sub_10023F774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10023F7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E428, &qword_100274640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10023F834(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{

  if (a5)
  {
  }
}

unint64_t sub_10023F8EC()
{
  result = qword_100350300;
  if (!qword_100350300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350300);
  }

  return result;
}

unint64_t sub_10023F944()
{
  result = qword_100350308;
  if (!qword_100350308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350308);
  }

  return result;
}

unint64_t sub_10023F99C()
{
  result = qword_100350310;
  if (!qword_100350310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350310);
  }

  return result;
}

unint64_t sub_10023F9F4()
{
  result = qword_100350318;
  if (!qword_100350318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350318);
  }

  return result;
}

unint64_t sub_10023FA4C()
{
  result = qword_100350320;
  if (!qword_100350320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350320);
  }

  return result;
}

unint64_t sub_10023FAA4()
{
  result = qword_100350328;
  if (!qword_100350328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350328);
  }

  return result;
}

unint64_t sub_10023FAFC()
{
  result = qword_100350330;
  if (!qword_100350330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350330);
  }

  return result;
}

unint64_t sub_10023FB54()
{
  result = qword_100350338;
  if (!qword_100350338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350338);
  }

  return result;
}

unint64_t sub_10023FBAC()
{
  result = qword_100350340;
  if (!qword_100350340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350340);
  }

  return result;
}

unint64_t sub_10023FC04()
{
  result = qword_100350348;
  if (!qword_100350348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350348);
  }

  return result;
}

unint64_t sub_10023FC5C()
{
  result = qword_100350350;
  if (!qword_100350350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350350);
  }

  return result;
}

unint64_t sub_10023FCB4()
{
  result = qword_100350358;
  if (!qword_100350358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350358);
  }

  return result;
}

unint64_t sub_10023FD08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t sub_10023FD28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 16))
  {
    return (*a1 + 122);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10023FD84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10023FDE4(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    result[1] = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_10023FE1C(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        _StringGuts.grow(_:)(26);

        v35 = 0xD000000000000016;
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
      }

      else
      {
        _StringGuts.grow(_:)(31);

        v35 = 0xD000000000000017;
        v24 = 0xE400000000000000;
        v25 = 1701602409;
        v26 = 1953393000;
        if (v2 != 2)
        {
          v26 = 1819047270;
        }

        if (v2)
        {
          v25 = 0x6F69746163756465;
          v24 = 0xE90000000000006ELL;
        }

        if (v2 <= 1u)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        if (v2 <= 1u)
        {
          v28 = v24;
        }

        else
        {
          v28 = 0xE400000000000000;
        }

        v29 = v28;
        String.append(_:)(*&v27);

        v30._countAndFlagsBits = 8236;
        v30._object = 0xE200000000000000;
        String.append(_:)(v30);
        v9 = sub_1000092A0(v31, v32);
      }

      goto LABEL_30;
    }

    _StringGuts.grow(_:)(35);

    v23 = 0xD00000000000001FLL;
    goto LABEL_23;
  }

  if (v3 <= 4)
  {
    if (v3 == 3)
    {
      _StringGuts.grow(_:)(36);

      v35 = 0xD000000000000020;
      v4 = BSInterfaceOrientationDescription();
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      String.append(_:)(v8);
LABEL_31:

      v33._countAndFlagsBits = 10528;
      v33._object = 0xE200000000000000;
      String.append(_:)(v33);
      return v35;
    }

    _StringGuts.grow(_:)(30);

    v23 = 0xD00000000000001ALL;
LABEL_23:
    v35 = v23;
    if (v2)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v2)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    goto LABEL_29;
  }

  if (v3 == 5)
  {
    _StringGuts.grow(_:)(26);

    v35 = 0xD000000000000016;
    v11 = UUID.uuidString.getter();
    sub_10000B584(8, v11, v12);

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v20._countAndFlagsBits = sub_1000092A0(v18, v19);
    String.append(_:)(v20);

    v21._countAndFlagsBits = 62;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v9 = 60;
    v22 = 0xE100000000000000;
LABEL_29:
    v10 = v22;
LABEL_30:
    String.append(_:)(*&v9);
    goto LABEL_31;
  }

  return 0x7472617473;
}

uint64_t sub_100240220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000E5EE8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000097E8(v11, &qword_10033E800, &qword_100278E80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10024051C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350360);
  sub_100003078(v0, qword_100350360);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10024059C()
{
  v1 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate);

  return v1;
}

uint64_t sub_1002406EC()
{
  sub_10024059C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCConnectionManager(uint64_t a1)
{
  result = qword_1003503C0;
  if (!qword_1003503C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100240798(uint64_t a1)
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

uint64_t sub_100240874()
{
  v27 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100350360);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v7 = *(v4 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16);
    *(v0 + 16) = *(v4 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy);
    *(v0 + 32) = v7;
    v8 = String.init<A>(describing:)();
    v10 = sub_100017494(v8, v9, &v26);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Interrupted, retry policy is %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v11 = *(v0 + 40);
  v12 = *(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy);
  if (*(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16) > 1u)
  {
    v14 = *(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 8);
    if (*(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16) != 2)
    {
      if (*&v12 | v14)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v15 = *(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
    if ((v15 & 0x8000000000000000) == 0 && v15 >= v14)
    {
      goto LABEL_13;
    }
  }

  else if (!*(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16))
  {
    v13 = *(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
    if ((v13 & 0x8000000000000000) != 0 || v13 < *&v12)
    {
LABEL_19:
      sub_100240BFC();
      goto LABEL_22;
    }

LABEL_13:
    v16 = 2;
    goto LABEL_16;
  }

  v17 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask;
  if (!*(v11 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask))
  {
    *(v11 + v17) = sub_100240D68(v12);

    goto LABEL_22;
  }

  v16 = 1;
LABEL_16:
  sub_1002423B0();
  swift_allocError();
  *v18 = v16;
  swift_willThrow();
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "### Error handling interruption: %@", v21, 0xCu);
    sub_1000097E8(v22, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

LABEL_22:
  v24 = *(v0 + 8);

  return v24();
}

void sub_100240BFC()
{
  v1 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(v5 + 4) = v8;
    v9 = v5;

    _os_log_impl(&_mh_execute_header, v3, v4, "Retrying (new count: %ld)", v9, 0xCu);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask) = 0;

  sub_100241D2C();
  v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
  v7 = __OFADD__(v10, 1);
  v11 = v10 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries) = v11;

  sub_100241254();
}

uint64_t sub_100240D68(double a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100350360);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scheduling retry after %f seconds", v8, 0xCu);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = v10;
  return sub_1000DBA98(0, 0, v4, &unk_100295730, v11);
}

uint64_t sub_100240F60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return (_swift_task_switch)(sub_100240F84, 0, 0);
}

uint64_t sub_100240F84(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  v5[1] = sub_10024106C;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10024106C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1002411A0, 0, 0);
}

uint64_t sub_1002411A0()
{
  v1 = *(v0 + 64);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100240BFC();
    }

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_100241254()
{
  v1 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0x4E66497472617473, 0xEF29286465646565, &aBlock);
    *(v5 + 12) = 2080;
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
    sub_100035D04(&qword_1003504F8, &unk_1002956F0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100017494(v7, v8, &aBlock);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.internalCnx=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx;
  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Connection already exists", v15, 2u);
    }

    v16 = 0;
LABEL_22:

    return v16;
  }

  if (v14)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting", v17, 2u);
  }

  v18 = v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    v22 = [v21 interruptionHandler];
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = sub_100242470;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = swift_allocObject();
    v26[2] = v1;
    v26[3] = v25;
    v26[4] = v24;
    v43 = sub_100241F0C;
    v44 = v26;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100018AB8;
    v42 = &unk_1003169E0;
    v27 = _Block_copy(&aBlock);

    v38 = v25;
    sub_10009D4E0(v25, v24);

    [v21 setInterruptionHandler:v27];
    _Block_release(v27);
    v28 = [v21 invalidationHandler];
    if (v28)
    {
      v29 = v28;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = sub_100241F20;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    v43 = sub_100241F18;
    v44 = v32;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100018AB8;
    v42 = &unk_100316A30;
    v33 = _Block_copy(&aBlock);
    sub_10009D4E0(v31, v30);

    [v21 setInvalidationHandler:v33];
    _Block_release(v33);
    [v21 activate];
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Connection created", v36, 2u);
    }

    sub_10002689C(v38, v24);
    sub_10002689C(v31, v30);
    swift_unknownObjectRelease();

    v12 = *(v1 + v10);
    *(v1 + v10) = v21;
    v16 = 1;
    goto LABEL_22;
  }

  return 2;
}

void sub_10024181C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_100240220(0, 0, v5, &unk_100295708, v8);

  if (a2)
  {
    a2(v9);
  }
}

uint64_t sub_10024197C()
{
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100350360);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection interrupted", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100241B24;

    return sub_100240854();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100241B24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100241C34(void (*a1)(void))
{
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection invalidated", v5, 2u);
  }

  if (a1)
  {
    a1();
  }
}

void sub_100241D2C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1003392A8;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100350360);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stopping", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + v1);
    *(v3 + v1) = 0;
  }
}

uint64_t sub_100241E68(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_100241E90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100241F30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100242028;

  return v6(a1);
}

uint64_t sub_100242028()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100242120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009D6D4;

  return sub_10024195C(a1, v4, v5, v6);
}

uint64_t sub_1002421D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000E6584;

  return sub_100241F30(a1, v4);
}

uint64_t sub_10024228C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009D6D4;

  return sub_100240F60(v6, a1, v4, v5, v7);
}

void sub_100242378(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1002423B0()
{
  result = qword_100350500;
  if (!qword_100350500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350500);
  }

  return result;
}

unint64_t sub_100242418()
{
  result = qword_100350508;
  if (!qword_100350508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350508);
  }

  return result;
}

unint64_t sub_100242488(uint64_t a1)
{
  result = sub_1002424B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002424B0()
{
  result = qword_100350510;
  if (!qword_100350510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350510);
  }

  return result;
}

unint64_t sub_100242514()
{
  v1 = 0x49746E6573657270;
  v2 = 0xD00000000000001DLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1002425AC()
{
  result = qword_100350518;
  if (!qword_100350518)
  {
    sub_100035D4C(&qword_100350520, qword_100295880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350518);
  }

  return result;
}

unint64_t sub_100242628(uint64_t a1)
{
  result = sub_100242650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100242650()
{
  result = qword_100350528;
  if (!qword_100350528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350528);
  }

  return result;
}

Swift::Int sub_1002426C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100295B30[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100242750(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100295B30[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10024279C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100242944(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002427F0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100242888()
{
  result = qword_1003506C0;
  if (!qword_1003506C0)
  {
    sub_100035D4C(&qword_1003506C8, qword_100295A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003506C0);
  }

  return result;
}

unint64_t sub_1002428F0()
{
  result = qword_1003506D0;
  if (!qword_1003506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003506D0);
  }

  return result;
}

uint64_t sub_100242944(uint64_t a1)
{
  if (a1 <= 299)
  {
    if (a1 <= 199)
    {
      if (a1 == -1)
      {
        return 0;
      }

      if (a1 == 100)
      {
        return 1;
      }
    }

    else
    {
      switch(a1)
      {
        case 200:
          return 2;
        case 250:
          return 3;
        case 251:
          return 4;
      }
    }
  }

  else if (a1 > 400)
  {
    switch(a1)
    {
      case 401:
        return 8;
      case 450:
        return 9;
      case 1000:
        return 10;
    }
  }

  else
  {
    switch(a1)
    {
      case 300:
        return 5;
      case 350:
        return 6;
      case 400:
        return 7;
    }
  }

  return 11;
}

uint64_t sub_100242A14()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003506D8);
  sub_100003078(v0, qword_1003506D8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100242A94()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    sub_100035D04(&qword_1003507C0, &qword_100295BF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    *(inited + 32) = 3;
    v3 = *(v0 + 16);
    *(inited + 64) = type metadata accessor for TelephonyProxyState();
    *(inited + 72) = &off_1003105B8;
    *(inited + 40) = v3;
    v1 = sub_10024D960(inited);
    swift_setDeallocating();

    sub_100242E9C(inited + 32);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_100242B74(uint64_t a1, char a2)
{
  v4 = sub_100242A94();
  if (*(v4 + 16) && (v5 = sub_10008522C(a1), (v6 & 1) != 0))
  {
    sub_10007E790(*(v4 + 56) + 40 * v5, v25);

    sub_10000E754(v25, v26);
    v7 = v27;
    v8 = v28;
    sub_10000EBC0(v26, v27);
    v9 = (*(v8 + 8))(a1, a2 & 1, v7, v8);
    sub_10000903C(v26);
    return v9;
  }

  else
  {

    if (qword_1003392B0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_1003506D8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      v16 = 0xEC0000006D72616CLL;
      *v14 = 136315138;
      v17 = 0x41746E6572727563;
      v18 = 0xEC00000061696465;
      v19 = 0x4D746E6572727563;
      v20 = 0xEB000000006C6C61;
      v21 = 0x43746E6572727563;
      if (a1 != 3)
      {
        v21 = 0x54746E6572727563;
        v20 = 0xEC00000072656D69;
      }

      if (a1 != 2)
      {
        v19 = v21;
        v18 = v20;
      }

      if (a1)
      {
        v17 = 0xD000000000000013;
        v16 = 0x80000001002A35A0;
      }

      if (a1 <= 1u)
      {
        v22 = v17;
      }

      else
      {
        v22 = v19;
      }

      if (a1 <= 1u)
      {
        v23 = v16;
      }

      else
      {
        v23 = v18;
      }

      v24 = sub_100017494(v22, v23, v26);

      *(v14 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Stream for %s not supported by activity server", v14, 0xCu);
      sub_10000903C(v15);
    }

    return 0;
  }
}

uint64_t sub_100242E0C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100242E9C(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003507C8, qword_100295C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExperienceState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49156 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49156 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49156;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v6 >= 0x3FFB)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ExperienceState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100243094(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 13;
  v4 = v1 & 1 | (2 * ((v1 >> 8) & 1)) | 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1002430CC(_WORD *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 0x101 | (a2 << 13);
  }

  else
  {
    *result = (a2 << 7) & 0x100 | a2 & 1 | 0x8000;
  }

  return result;
}

uint64_t sub_100243130(uint64_t a1)
{
  result = type metadata accessor for NoticeEffect(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100243208(uint64_t a1)
{
  result = type metadata accessor for TransferEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1002432C0(char a1)
{
  if (a1 == 5)
  {
    v1 = 0xE700000000000000;
    v2 = 0x7373696D736964;
  }

  else
  {
    _StringGuts.grow(_:)(22);

    v4._countAndFlagsBits = sub_10022C5BC(a1);
    String.append(_:)(v4);

    v5._countAndFlagsBits = 10528;
    v5._object = 0xE200000000000000;
    String.append(_:)(v5);
    v2 = 0xD000000000000012;
    v1 = 0x800000010029F590;
  }

  v6 = v1;
  String.append(_:)(*&v2);

  return result;
}

uint64_t sub_1002433A0()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v65 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v65 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - v13;
  v15 = __chkstk_darwin(v12);
  v66 = (&v65 - v16);
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = (&v65 - v24);
  v26 = __chkstk_darwin(v23);
  v28 = &v65 - v27;
  __chkstk_darwin(v26);
  v29 = v1;
  v31 = &v65 - v30;
  sub_1002460F4(v29, &v65 - v30, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1002460F4(v31, v22, type metadata accessor for ExperienceEvent);
        LOBYTE(v35) = ((*v22 - 5) & 0xFB) != 0;
        goto LABEL_77;
      }

      sub_1002460F4(v31, v11, type metadata accessor for ExperienceEvent);
      if (*v11 >= 2u)
      {
        goto LABEL_76;
      }

      goto LABEL_70;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_76;
      }

      sub_1002460F4(v31, v25, type metadata accessor for ExperienceEvent);
      v36 = v25[1];
      v67[0] = *v25;
      v67[1] = v36;
      *v68 = v25[2];
      *&v68[9] = *(v25 + 41);
      v37 = v68[24] >> 5;
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          if (LOBYTE(v67[0]) != 2)
          {
            goto LABEL_76;
          }

          goto LABEL_70;
        }

        if (v37 == 4 && v68[24] == 128 && *&v67[0] == 1 && !(v36 | *(&v67[0] + 1) | *(&v36 + 1) | *v68 | *&v68[8] | *&v68[16]))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v37 == 1)
        {
          goto LABEL_64;
        }

        if (v37 != 2)
        {
          goto LABEL_44;
        }

        if ((v68[24] & 0x1F) == 0)
        {
LABEL_64:
          sub_100231D28(v67);
          LOBYTE(v35) = 1;
          goto LABEL_77;
        }

        if ((v68[24] & 0x1F) == 2)
        {
          v38 = v36 | *(&v67[0] + 1) | *(&v36 + 1) | *v68 | *&v68[8] | *&v68[16];
          if (*&v67[0] == 3 && !v38)
          {
            goto LABEL_70;
          }

          if (*&v67[0] == 5 && !v38)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_44:
      sub_100231D28(v67);
      goto LABEL_76;
    }

    sub_1002460F4(v31, v28, type metadata accessor for ExperienceEvent);
    v47 = *v28;
    v48 = *(v28 + 1);
    v49 = v28[16];
    if ((v49 & 0x80) != 0)
    {
      v59 = v49 & 0x7F;
      if ((v49 & 0x7F) != 0 && v59 != 1)
      {
        v50 = v59 == 4;
        goto LABEL_55;
      }
    }

    else if (v28[16])
    {
      if (v49 == 1)
      {
        LOBYTE(v35) = 1;
        sub_1000D65DC(v47, v48, 1);
        goto LABEL_77;
      }

      v50 = v49 == 4;
LABEL_55:
      if (!v50 || v47 != 2 || v48 != 0)
      {
        sub_1000D65DC(v47, v48, v49);
        goto LABEL_76;
      }

      goto LABEL_70;
    }

    sub_1000D65DC(v47, v48, v49);
    LOBYTE(v35) = 1;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_1002460F4(v31, v14, type metadata accessor for ExperienceEvent);
      v39 = *v14;
      v40 = *(v14 + 1);
      v41 = *(v14 + 2);
      v42 = *(v14 + 3);
      v43 = *(v14 + 4);
      v44 = *(v14 + 5);
      v45 = *(v14 + 6);
      v46 = v14[56];
      if (v46 == 1)
      {
        LOBYTE(v35) = 1;
        sub_1000D67AC(v39, v40, v41, v42, v43, v44, v45, 1);
        goto LABEL_77;
      }

      sub_1000D67AC(v39, v40, v41, v42, v43, v44, v45, v46);
      goto LABEL_76;
    }

    sub_1002460F4(v31, v19, type metadata accessor for ExperienceEvent);
    v51 = *v19;
    v52 = *(v19 + 1);
    v53 = *(v19 + 2);
    v54 = *(v19 + 3);
    v55 = *(v19 + 4);
    v56 = *(v19 + 5);
    v57 = *(v19 + 6);
    if (v19[56] <= 1u)
    {
      if (v19[56])
      {
        LOBYTE(v35) = 1;
        sub_1000D6710(v51, v52, v53, v54, v55, v56, v57, 1);
        goto LABEL_77;
      }

      sub_1000D6710(v51, v52, v53, v54, v55, v56, v57, 0);
      goto LABEL_76;
    }

    if (v19[56] == 2)
    {
      sub_1000D6710(v51, v52, v53, v54, v55, v56, v57, 2);
      LOBYTE(v35) = 1;
      goto LABEL_77;
    }

LABEL_70:
    LOBYTE(v35) = 1;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1002460F4(v31, v8, type metadata accessor for ExperienceEvent);
    LOBYTE(v35) = *v8 < 2u;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 7)
  {
    sub_1002460F4(v31, v5, type metadata accessor for ExperienceEvent);
    v58 = v5[8];
    if (v58 < 7)
    {
      v35 = 0x4Eu >> v58;
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_76;
  }

  v33 = v66;
  sub_1002460F4(v31, v66, type metadata accessor for ExperienceEvent);
  type metadata accessor for TransferEvent(0);
  v34 = swift_getEnumCaseMultiPayload();
  LOBYTE(v35) = 1;
  if (v34 <= 5)
  {
    if (v34 > 2)
    {
      goto LABEL_68;
    }

    if (v34)
    {
      if (v34 == 1)
      {
LABEL_68:
        sub_100245F58(v33, type metadata accessor for TransferEvent);
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    goto LABEL_77;
  }

  if ((v34 - 7) < 2)
  {
    goto LABEL_77;
  }

  if (v34 == 6)
  {
    v62 = *v33;
    v63 = *v33 >> 62;
    if (!v63)
    {
      sub_1000D680C(v62);
      goto LABEL_77;
    }

    if (v63 != 1)
    {
      goto LABEL_77;
    }

    sub_1000D680C(v62);
LABEL_76:
    LOBYTE(v35) = 0;
    goto LABEL_77;
  }

  if (v34 != 10)
  {
LABEL_75:
    sub_100245F58(v33, type metadata accessor for TransferEvent);
    goto LABEL_76;
  }

LABEL_77:
  sub_100245F58(v31, type metadata accessor for ExperienceEvent);
  return v35 & 1;
}

uint64_t sub_100243A20()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEffect(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v30 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - v13;
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  sub_1002460F4(v1, &v30 - v15, type metadata accessor for ExperienceEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = 1;
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        goto LABEL_29;
      case 8:
        sub_1002460F4(v16, v5, type metadata accessor for ExperienceEffect);
        if (*v5 < 2u)
        {
          goto LABEL_29;
        }

        break;
      case 9:
        sub_1002460F4(v16, v14, type metadata accessor for ExperienceEffect);
        v19 = *v14;
        v20 = *(v14 + 1);
        v21 = *(v14 + 2);
        v22 = v14[24];
        v23 = v22 == 4 && v19 == 2;
        if (!v23 || (v21 | v20) != 0)
        {
          sub_100215598(v19, v20, v21, v22);
          goto LABEL_29;
        }

        break;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1002460F4(v16, v8, type metadata accessor for ExperienceEffect);
        goto LABEL_29;
      }

LABEL_28:
      v18 = 0;
    }
  }

  else
  {
    sub_1002460F4(v16, v11, type metadata accessor for ExperienceEffect);
    v25 = *v11;
    v26 = v11[16];
    if ((v26 & 0x80) == 0)
    {
      if ((v25 & 0xFE) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((v26 & 0x7F) != 3)
    {
      v27 = *(v11 + 1);
      if ((v26 & 0x7F) != 4 || (v27 | v25) != 0)
      {
        sub_100094CB0(v25, v27, v26);
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  sub_100245F58(v16, type metadata accessor for ExperienceEffect);
  return v18;
}

uint64_t sub_100243CA8(unsigned __int16 a1)
{
  v2 = a1 >> 13;
  if (v2 <= 1)
  {
    if (a1 >> 13)
    {
      v14[8] = 0;
      _StringGuts.grow(_:)(22);
      v10._countAndFlagsBits = 0x28746E6968;
      v10._object = 0xE500000000000000;
      String.append(_:)(v10);
      *v14 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v11._countAndFlagsBits = 0x746163756465202CLL;
      v11._object = 0xEC0000003D6E6F69;
      String.append(_:)(v11);
      if ((a1 & 0x100) != 0)
      {
        v4 = 1702195828;
      }

      else
      {
        v4 = 0x65736C6166;
      }

      if ((a1 & 0x100) != 0)
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }
    }

    else
    {
      *&v14[1] = 0x61747328656C6469;
      if (a1)
      {
        v4 = 1702195828;
      }

      else
      {
        v4 = 0x65736C6166;
      }

      if (a1)
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }
    }

    goto LABEL_30;
  }

  if (v2 == 2)
  {
    v14[8] = 0;
    _StringGuts.grow(_:)(26);
    v6._countAndFlagsBits = 0x6465646E61707865;
    v6._object = 0xE900000000000028;
    String.append(_:)(v6);
    *v14 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 0x746163756465202CLL;
    v7._object = 0xEC0000003D6E6F69;
    String.append(_:)(v7);
    if ((a1 & 0x100) != 0)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if ((a1 & 0x100) != 0)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

LABEL_30:
    v12 = v5;
    String.append(_:)(*&v4);

    goto LABEL_31;
  }

  if (v2 == 3)
  {
    v14[8] = 0;
    v3._countAndFlagsBits = 0x6465646E61707865;
    v3._object = 0xEC0000002849534ELL;
    String.append(_:)(v3);
    *v14 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
LABEL_31:
    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    return *&v14[1];
  }

  v8 = 0x6572756C696166;
  if (a1 != 32769)
  {
    v8 = 0x6873696E6966;
  }

  if (a1 == 0x8000)
  {
    return 0x6C6C657764;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100243F84()
{
  v1 = type metadata accessor for TransferEvent(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002460F4(v0, v6, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          sub_10024615C(v6, v3, type metadata accessor for TransferEvent);
          v11._countAndFlagsBits = sub_1002542D4();
          *&v40 = 0x726566736E617254;
          *(&v40 + 1) = 0xE90000000000002ELL;
          String.append(_:)(v11);

          v12 = v40;
          sub_100245F58(v3, type metadata accessor for TransferEvent);
          return v12;
        }

        v29 = *v6;
        v30._countAndFlagsBits = sub_1000376F8(v29);
        strcpy(&v40, "ViewService.");
        BYTE13(v40) = 0;
        HIWORD(v40) = -5120;
        String.append(_:)(v30);

        sub_1000E605C(v29);
        return v40;
      }

      v8 = sub_1000138AC(*v6, v6[8]);
      v10 = 0x6D6574737953;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (*v6 > 1u)
      {
        if (*v6 == 2)
        {
          v34 = 0xE700000000000000;
          v8 = 0x64656C74746573;
        }

        else
        {
          v8 = 0x657373696D736964;
          v34 = 0xE900000000000064;
        }
      }

      else if (*v6)
      {
        v8 = 0x7661776B636F6873;
        v34 = 0xEA00000000006465;
      }

      else
      {
        v34 = 0xE600000000000000;
        v8 = 0x6465746E6968;
      }

      *&v40 = 0x7661776B636F6853;
      *(&v40 + 1) = 0xEA00000000002E65;
      v9 = v34;
      goto LABEL_38;
    }

    v21 = *(v6 + 1);
    v40 = *v6;
    v41 = v21;
    v42[0] = *(v6 + 2);
    *(v42 + 9) = *(v6 + 41);
    v22 = sub_10016BBDC();
    v24 = v23;
    sub_100231ADC(&v40);
    v38 = 0xD00000000000001DLL;
    v39 = 0x80000001002A6EF0;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *v6;
      v15 = *(v6 + 1);
      v16 = v6[16];
      if (v16 < 0)
      {
        v17 = sub_10003A898(v14, v15, v16 & 0x7F);
        v19 = 0x2E6C6C657744;
        v20 = 0xE600000000000000;
      }

      else
      {
        v17 = sub_10003A898(v14, v15, v16);
        v19 = 0x2E63697373616C43;
        v20 = 0xE800000000000000;
      }

      *&v40 = v19;
      *(&v40 + 1) = v20;
      String.append(_:)(*&v17);

      v36 = *(&v40 + 1);
      v35._countAndFlagsBits = v40;
      *&v40 = 0x2E72656E6E6142;
      *(&v40 + 1) = 0xE700000000000000;
      v35._object = v36;
      String.append(_:)(v35);

      sub_1000D65DC(v14, v15, v16);
      return v40;
    }

    v31 = *(v6 + 1);
    v40 = *v6;
    v41 = v31;
    v42[0] = *(v6 + 2);
    *(v42 + 9) = *(v6 + 41);
    v22 = sub_100108E4C();
    v24 = v32;
    sub_100231D28(&v40);
    v38 = 0x2E64726143;
    v39 = 0xE500000000000000;
LABEL_23:
    v33._countAndFlagsBits = v22;
    v33._object = v24;
    String.append(_:)(v33);

    return v38;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = 0xE900000000000064;
    if (*v6)
    {
      if (*v6 == 1)
      {
        v25 = 0xED00006465707061;
        v26 = 0x546D7269666E6F63;
      }

      else
      {
        v26 = 0x657373696D736964;
      }
    }

    else
    {
      v26 = 0x65746E6573657270;
    }

    *&v40 = 0xD000000000000018;
    *(&v40 + 1) = 0x80000001002A6F10;
    v37 = v25;
    String.append(_:)(*&v26);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v27 = *(v6 + 1);
    v40 = *v6;
    v41 = v27;
    v42[0] = *(v6 + 2);
    *(v42 + 9) = *(v6 + 41);
    v28._countAndFlagsBits = sub_1001AFCB8();
    v38 = 0x2E656369746F4ELL;
    v39 = 0xE700000000000000;
    String.append(_:)(v28);

    sub_100183628(&v40);
    return v38;
  }

  v8 = sub_100207AA8(*v6);
  v10 = 0x656369766544;
LABEL_19:
  *&v40 = v10 & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
  *(&v40 + 1) = 0xE700000000000000;
LABEL_38:
  String.append(_:)(*&v8);
LABEL_39:

  return v40;
}

void *sub_1002444CC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1000CDFA0(0, v3, 0);
    result = _swiftEmptyArrayStorage;
    v6 = (a2 + 32);
    do
    {
      v7 = *v6;
      v11 = result;
      v9 = result[2];
      v8 = result[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000CDFA0((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      result[2] = v9 + 1;
      v10 = result + 2 * v9;
      v10[32] = a1 & 1;
      v10[33] = v7;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1002445A4()
{
  v0 = _swiftEmptyArrayStorage;
  v49 = _swiftEmptyArrayStorage;
  v1 = sub_1000CDF80(0, 2, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    goto LABEL_53;
  }

  while (1)
  {
    *(v2 + 2) = v6;
    *&v2[2 * v4 + 32] = 1;
    v7 = v4 + 2;
    if (v5 < v7)
    {
      v1 = sub_1000CDF80((v3 > 1), v7, 1);
      v2 = v49;
    }

    *(v2 + 2) = v7;
    *&v2[2 * v6 + 32] = 0;
    v51 = v2;
    v49 = &off_1003003C0;
    __chkstk_darwin(v1);
    v47 = &v49;
    v4 = 0;
    v8 = sub_100082DF8(sub_100245FB8, v46, &off_100300398);
    v6 = *(v8 + 2);
    if (v6)
    {
      v48 = 0;
      v49 = v0;
      v4 = v8;
      sub_1000CDF80(0, v6, 0);
      v9 = v4;
      v10 = 0;
      v11 = v49;
      v12 = (v4 + 33);
      while (v10 < *(v9 + 16))
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v49 = v11;
        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        v0 = (v16 + 1);
        if (v16 >= v15 >> 1)
        {
          sub_1000CDF80((v15 > 1), v16 + 1, 1);
          v9 = v4;
          v11 = v49;
        }

        ++v10;
        if (v14)
        {
          v17 = 256;
        }

        else
        {
          v17 = 0;
        }

        *(v11 + 2) = v0;
        v3 = &v11[2 * v16];
        *(v3 + 32) = v17 | v13 | 0x2000;
        v12 += 2;
        if (v6 == v10)
        {

          v0 = _swiftEmptyArrayStorage;
          v4 = v48;
          goto LABEL_15;
        }
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_15:
    v52 = v11;
    v53 = &off_1003003E8;
    v49 = &off_100300438;
    __chkstk_darwin(v18);
    v47 = &v49;
    v19 = sub_100082DF8(sub_100246BF4, v46, &off_100300410);
    v6 = *(v19 + 2);
    if (!v6)
    {
      break;
    }

    v49 = v0;
    v0 = v19;
    sub_1000CDF80(0, v6, 0);
    v20 = v0;
    v21 = 0;
    v22 = v49;
    v23 = (v0 + 33);
    while (v21 < *(v20 + 2))
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v49 = v22;
      v27 = *(v22 + 2);
      v26 = *(v22 + 3);
      v4 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_1000CDF80((v26 > 1), v27 + 1, 1);
        v20 = v0;
        v22 = v49;
      }

      ++v21;
      if (v25)
      {
        v28 = 256;
      }

      else
      {
        v28 = 0;
      }

      *(v22 + 2) = v4;
      v3 = &v22[2 * v27];
      *(v3 + 32) = v28 | v24 | 0x4000;
      v23 += 2;
      if (v6 == v21)
      {

        v0 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v1 = sub_1000CDF80((v3 > 1), v6, 1);
    v2 = v49;
    v3 = *(v49 + 3);
    v5 = v3 >> 1;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_26:
  v54 = v22;
  v49 = v0;
  sub_1000CDF80(0, 2, 0);
  v29 = v49;
  v31 = *(v49 + 2);
  v30 = *(v49 + 3);
  v32 = v30 >> 1;
  v33 = v31 + 1;
  if (v30 >> 1 <= v31)
  {
    sub_1000CDF80((v30 > 1), v31 + 1, 1);
    v29 = v49;
    v30 = *(v49 + 3);
    v32 = v30 >> 1;
  }

  *(v29 + 2) = v33;
  *&v29[2 * v31 + 32] = 24576;
  v34 = v31 + 2;
  if (v32 < v34)
  {
    sub_1000CDF80((v30 > 1), v34, 1);
    v29 = v49;
  }

  v0 = v50;
  *(v29 + 2) = v34;
  *&v29[2 * v33 + 32] = 24577;
  v3 = &off_100300460;
  v55 = v29;
  v56 = &off_100300460;
  v6 = _swiftEmptyArrayStorage;
  v4 = 32;
  while (2)
  {
    v35 = *&v50[v4];
    v36 = *(v35 + 16);
    v37 = *(v6 + 16);
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v38 > *(v6 + 24) >> 1)
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v6 = sub_1000AF59C(isUniquelyReferenced_nonNull_native, v40, 1, v6);
      if (!*(v35 + 16))
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }

    if (*(v35 + 16))
    {
LABEL_42:
      v41 = *(v6 + 16);
      v3 = (*(v6 + 24) >> 1) - v41;
      if (v3 < v36)
      {
        goto LABEL_51;
      }

      memcpy((v6 + 2 * v41 + 32), (v35 + 32), 2 * v36);

      if (v36)
      {
        v42 = *(v6 + 16);
        v43 = __OFADD__(v42, v36);
        v44 = v42 + v36;
        if (v43)
        {
          goto LABEL_52;
        }

        *(v6 + 16) = v44;
      }

      goto LABEL_32;
    }

LABEL_31:

    if (v36)
    {
      goto LABEL_48;
    }

LABEL_32:
    v4 += 8;
    if (v4 != 80)
    {
      continue;
    }

    break;
  }

  sub_100035D04(&qword_100350948, qword_100295E20);
  result = swift_arrayDestroy();
  qword_10038B670 = v6;
  return result;
}

void sub_100244AC4(uint64_t a1, unsigned int a2)
{
  v3 = a2 >> 13;
  if (v3 <= 1)
  {
    if (!(a2 >> 13))
    {
      Hasher._combine(_:)(0);
      LOBYTE(v4) = a2 & 1;
LABEL_13:
      Hasher._combine(_:)(v4);
      return;
    }

    Hasher._combine(_:)(1uLL);
    v5 = a2 & 1;
LABEL_12:
    Hasher._combine(_:)(v5);
    v4 = (a2 >> 8) & 1;
    goto LABEL_13;
  }

  if (v3 == 2)
  {
    Hasher._combine(_:)(3uLL);
    v5 = a2 & 1;
    goto LABEL_12;
  }

  if (v3 == 3)
  {
    Hasher._combine(_:)(4uLL);
    Hasher._combine(_:)(a2 & 1);
  }

  else if (a2 == 0x8000)
  {
    Hasher._combine(_:)(2uLL);
  }

  else if (a2 == 32769)
  {
    Hasher._combine(_:)(5uLL);
  }

  else
  {
    Hasher._combine(_:)(6uLL);
  }
}

double sub_100244B94@<D0>(void *a1@<X8>)
{
  if (qword_1003392B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10038B670;

  return result;
}

Swift::Int sub_100244C18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100244AC4(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100244C68(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100244AC4(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100244CC4()
{
  v1 = v0;
  v2 = type metadata accessor for NoticeEffect(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002460F4(v1, v7, type metadata accessor for ExperienceEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v21 = *v7;
        v22 = *(v7 + 1);
        v23 = v7[16];
        v41 = 0x2E72656E6E6142;
        v42 = 0xE700000000000000;
        v24 = sub_10011453C(v21, v22, v23);
        v26 = v25;
        sub_100094CB0(v21, v22, v23);
        v27._countAndFlagsBits = v24;
        v27._object = v26;
        String.append(_:)(v27);
LABEL_41:

        return v41;
      }

      v36 = *v7;
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v41 = 0x767265536C6C6143;
      v42 = 0xEF2E495573656369;
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v31 = 0x80000001002A6D30;
          v32 = 0xD000000000000019;
        }

        else
        {
          v32 = 0xD00000000000001DLL;
          v31 = 0x80000001002A6D10;
        }
      }

      else if (v36)
      {
        v31 = 0x80000001002A6D50;
        v32 = 0xD000000000000017;
      }

      else
      {
        v31 = 0xEF49556C6C61436ELL;
        v32 = 0x49746E6573657270;
      }

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = *v7;
        v13 = v7[8];
        v14 = *(v7 + 2);
        v41 = 0;
        v42 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);
        v45 = v41;
        v46 = v42;
        v15._countAndFlagsBits = 0x50746E65746E6F43;
        v15._object = 0xEF2E776569766572;
        String.append(_:)(v15);
        v41 = v12;
        LOBYTE(v42) = v13;
        v43 = v14;
        _print_unlocked<A, B>(_:_:)();

        return v45;
      }

      v34 = *v7;
      v41 = 0x2E636974706148;
      v42 = 0xE700000000000000;
      v32 = sub_100101184(v34);
      goto LABEL_40;
    }

    v28 = *v7;
    v41 = 0;
    v42 = 0xE000000000000000;
    v29._countAndFlagsBits = 0x2E64726143;
    v29._object = 0xE500000000000000;
    String.append(_:)(v29);
    sub_1002432C0(v28);
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          sub_10024615C(v7, v4, type metadata accessor for NoticeEffect);
          v41 = 0x2E656369746F4ELL;
          v42 = 0xE700000000000000;
          v9._countAndFlagsBits = sub_1001AF844();
          String.append(_:)(v9);

          v10 = v41;
          sub_100245F58(v4, type metadata accessor for NoticeEffect);
          return v10;
        }

        v37 = *v7;
        v41 = 0;
        v42 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v41 = 0xD00000000000001DLL;
        v42 = 0x80000001002A6EF0;
        if (v37)
        {
          v38 = 0x7373696D736964;
        }

        else
        {
          v38 = 0x746E6573657270;
        }

        v39 = 0xE700000000000000;
        String.append(_:)(*&v38);
        goto LABEL_41;
      }

      v30 = *v7;
      v31 = 0xE400000000000000;
      v41 = 778331468;
      v42 = 0xE400000000000000;
      if (v30 == 2)
      {
        v31 = 0xE500000000000000;
        v32 = 0x6D6F6F6C62;
      }

      else if (v30 == 3)
      {
        v32 = 1886352499;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        v40._countAndFlagsBits = 0x2D776F6C67;
        v40._object = 0xE500000000000000;
        String.append(_:)(v40);
        v44 = v30 & 1;
        _print_unlocked<A, B>(_:_:)();
        v32 = v45;
        v31 = v46;
      }

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v33 = *v7;
      v41 = 0x7661776B636F6853;
      v42 = 0xEA00000000002E65;
      if (v33)
      {
        if (v33 == 1)
        {
          v32 = 0x7661776B636F6873;
          v31 = 0xE900000000000065;
        }

        else
        {
          v31 = 0xE700000000000000;
          v32 = 0x7373696D736964;
        }
      }

      else
      {
        v31 = 0xE400000000000000;
        v32 = 1953393000;
      }

LABEL_39:
      v35 = v31;
LABEL_40:
      String.append(_:)(*&v32);
      goto LABEL_41;
    }

    if (EnumCaseMultiPayload != 9)
    {
      return 0xD000000000000020;
    }

    v16 = *v7;
    v17 = *(v7 + 1);
    v18 = *(v7 + 2);
    v19 = v7[24];
    v41 = 0x726566736E617254;
    v42 = 0xE90000000000002ELL;
    v20._countAndFlagsBits = sub_10025484C(v16, v17, v18, v19);
    String.append(_:)(v20);

    sub_100215598(v16, v17, v18, v19);
  }

  return v41;
}

uint64_t sub_1002452D8(uint64_t a1)
{
  result = sub_100245330(&qword_100350928, type metadata accessor for ExperienceEffect, &unk_100295CEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100245330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10024537C()
{
  result = qword_100350930;
  if (!qword_100350930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350930);
  }

  return result;
}

unint64_t sub_1002453D0(uint64_t a1)
{
  result = sub_10024537C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002453F8(uint64_t a1)
{
  result = sub_100245420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100245420()
{
  result = qword_100350938;
  if (!qword_100350938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350938);
  }

  return result;
}

BOOL sub_1002454A4(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v3 = type metadata accessor for TransferEvent(0);
  __chkstk_darwin(v3 - 8);
  v75 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExperienceEvent(0);
  v6 = __chkstk_darwin(v5);
  v79 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v80 = &v74 - v9;
  v10 = __chkstk_darwin(v8);
  v78 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v77 = &v74 - v13;
  v14 = __chkstk_darwin(v12);
  v76 = (&v74 - v15);
  v16 = __chkstk_darwin(v14);
  v18 = (&v74 - v17);
  v19 = __chkstk_darwin(v16);
  v21 = &v74 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v74 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = (&v74 - v26);
  __chkstk_darwin(v25);
  v29 = &v74 - v28;
  v30 = sub_100035D04(&qword_100350950, &qword_100295E60);
  v31 = __chkstk_darwin(v30 - 8);
  v33 = &v74 - v32;
  v34 = &v74 + *(v31 + 56) - v32;
  sub_1002460F4(v81, &v74 - v32, type metadata accessor for ExperienceEvent);
  sub_1002460F4(a2, v34, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v51 = v80;
        sub_1002460F4(v33, v80, type metadata accessor for ExperienceEvent);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v52 = v75;
          sub_10024615C(v34, v75, type metadata accessor for TransferEvent);
          v46 = sub_100255274(v51, v52);
          sub_100245F58(v52, type metadata accessor for TransferEvent);
          sub_100245F58(v51, type metadata accessor for TransferEvent);
          goto LABEL_59;
        }

        sub_100245F58(v51, type metadata accessor for TransferEvent);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        v40 = v79;
        sub_1002460F4(v33, v79, type metadata accessor for ExperienceEvent);
        v41 = *v40;
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v42 = *v34;
          switch(v41)
          {
            case 3:
              if (v42 == 3)
              {
                goto LABEL_103;
              }

              break;
            case 2:
              if (v42 == 2)
              {
                goto LABEL_103;
              }

              break;
            case 1:
              if (v42 == 1)
              {
                goto LABEL_103;
              }

              break;
            default:
              sub_1000E605C(v41);
              sub_1000E605C(v42);
              if ((v42 - 1) >= 3)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
          }

          sub_1000E605C(*v34);
          goto LABEL_117;
        }

        sub_1000E605C(v41);
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v36 = v77;
        sub_1002460F4(v33, v77, type metadata accessor for ExperienceEvent);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v37 = *v36;
LABEL_30:
          v46 = v37 == *v34;
LABEL_59:
          sub_100245F58(v33, type metadata accessor for ExperienceEvent);
          return v46;
        }

        goto LABEL_56;
      }

      v57 = v78;
      sub_1002460F4(v33, v78, type metadata accessor for ExperienceEvent);
      v58 = *v57;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v59 = *(v57 + 8);
        v60 = *v34;
        v61 = v34[8];
        if (v59 <= 2)
        {
          if (*(v57 + 8))
          {
            if (v59 == 1)
            {
              if (v61 != 1)
              {
                goto LABEL_117;
              }
            }

            else if (v61 != 2)
            {
              goto LABEL_117;
            }
          }

          else if (v34[8])
          {
            goto LABEL_117;
          }
        }

        else if (*(v57 + 8) > 4u)
        {
          if (v59 == 5)
          {
            if (v61 != 5)
            {
              goto LABEL_117;
            }
          }

          else if (v61 != 6)
          {
            goto LABEL_117;
          }
        }

        else
        {
          if (v59 == 3)
          {
            if (v61 != 3 || v58 != v60)
            {
              goto LABEL_117;
            }

LABEL_103:
            sub_100245F58(v33, type metadata accessor for ExperienceEvent);
            return 1;
          }

          if (v61 != 4)
          {
LABEL_117:
            sub_100245F58(v33, type metadata accessor for ExperienceEvent);
            return 0;
          }
        }

        if (((v60 ^ v58) & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_117;
      }

      goto LABEL_56;
    }

    v47 = v76;
    sub_1002460F4(v33, v76, type metadata accessor for ExperienceEvent);
    v48 = v47[1];
    v84 = *v47;
    v85 = v48;
    *v86 = v47[2];
    *&v86[9] = *(v47 + 41);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_100231ADC(&v84);
      goto LABEL_56;
    }

    v49 = *(v34 + 1);
    v82 = *v34;
    *v83 = v49;
    *&v83[16] = *(v34 + 2);
    *&v83[25] = *(v34 + 41);
    if (!v86[24])
    {
      sub_100231ADC(&v84);
      v66 = v83[40];
      sub_100231ADC(&v82);
      if (!v66)
      {
        goto LABEL_103;
      }

      goto LABEL_117;
    }

    if (v86[24] == 1)
    {
      sub_100231ADC(&v84);
      v50 = v83[40];
      sub_100231ADC(&v82);
      if (v50 == 1)
      {
        goto LABEL_103;
      }

      goto LABEL_117;
    }

    v67 = *(&v85 + 1) | v85 | *(&v84 + 1);
    if (*&v86[8] | *&v86[16] | v84 | *v86 | v67)
    {
      v68 = *&v86[8] | *&v86[16] | *v86 | v67;
      if (v84 != 1 || v68)
      {
        if (v84 != 2 || v68)
        {
          if (v83[40] != 2 || v82 != 3)
          {
            goto LABEL_116;
          }
        }

        else if (v83[40] != 2 || v82 != 2)
        {
          goto LABEL_116;
        }
      }

      else if (v83[40] != 2 || v82 != 1)
      {
        goto LABEL_116;
      }

      v72 = *(&v82 + 1);
      v73 = vorrq_s8(*&v83[8], *&v83[24]);
      v71 = *&vorr_s8(*v73.i8, *&vextq_s8(v73, v73, 8uLL)) | *v83;
    }

    else
    {
      if (v83[40] != 2)
      {
LABEL_116:
        sub_100231ADC(&v82);
        goto LABEL_117;
      }

      v70 = vorrq_s8(*&v83[8], *&v83[24]);
      v71 = *&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *v83;
      v72 = *(&v82 + 1) | v82;
    }

    if (!(v71 | v72))
    {
      goto LABEL_103;
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002460F4(v33, v27, type metadata accessor for ExperienceEvent);
      v55 = v27[1];
      v82 = *v27;
      *v83 = v55;
      *&v83[16] = v27[2];
      *&v83[25] = *(v27 + 41);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = *(v34 + 1);
        v84 = *v34;
        v85 = v56;
        *v86 = *(v34 + 2);
        *&v86[9] = *(v34 + 41);
        v46 = sub_100109FBC(&v82, &v84);
        sub_100231D28(&v82);
        sub_100231D28(&v84);
        goto LABEL_59;
      }

      sub_100231D28(&v82);
    }

    else
    {
      sub_1002460F4(v33, v29, type metadata accessor for ExperienceEvent);
      v43 = *v29;
      v44 = *(v29 + 1);
      v45 = v29[16];
      if (!swift_getEnumCaseMultiPayload())
      {
        v63 = *v34;
        v64 = *(v34 + 1);
        v65 = v34[16];
        v46 = sub_1001146FC(v43, v44, v45, *v34, v64, v65);
        sub_1000D65DC(v63, v64, v65);
        sub_1000D65DC(v43, v44, v45);
        goto LABEL_59;
      }

      sub_1000D65DC(v43, v44, v45);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002460F4(v33, v24, type metadata accessor for ExperienceEvent);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = *v24;
        goto LABEL_30;
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1002460F4(v33, v21, type metadata accessor for ExperienceEvent);
      v38 = *v21;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v39 = *v34;
        if (v38 <= 6)
        {
          if (v38 == 5)
          {
            if (v39 == 5)
            {
              goto LABEL_103;
            }

            goto LABEL_117;
          }

          if (v38 == 6)
          {
            if (v39 == 6)
            {
              goto LABEL_103;
            }

            goto LABEL_117;
          }
        }

        else
        {
          switch(v38)
          {
            case 7:
              if (v39 == 7)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
            case 8:
              if (v39 == 8)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
            case 9:
              if (v39 == 9)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
          }
        }

        if ((v39 - 5) >= 5)
        {
          if (v38 == 4)
          {
            if (v39 == 4)
            {
              goto LABEL_103;
            }
          }

          else if (v39 != 4 && v38 == v39)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_117;
      }
    }

    else
    {
      sub_1002460F4(v33, v18, type metadata accessor for ExperienceEvent);
      v53 = v18[1];
      v82 = *v18;
      *v83 = v53;
      *&v83[16] = v18[2];
      *&v83[25] = *(v18 + 41);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v54 = *(v34 + 1);
        v84 = *v34;
        v85 = v54;
        *v86 = *(v34 + 2);
        *&v86[9] = *(v34 + 41);
        v46 = sub_1001B20A8(&v82, &v84);
        sub_100183628(&v84);
        sub_100183628(&v82);
        goto LABEL_59;
      }

      sub_100183628(&v82);
    }
  }

LABEL_56:
  sub_1000097E8(v33, &qword_100350950, &qword_100295E60);
  return 0;
}

uint64_t sub_100245F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100245FD0@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  result = sub_1002444CC(*a1, **(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_100246008(int a1, int a2)
{
  v2 = a1 >> 13;
  if (v2 <= 1)
  {
    if (!(a1 >> 13))
    {
      if (a2 < 0x2000u)
      {
        return (a2 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    if ((a2 & 0xE000) != 0x2000)
    {
      return 0;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        if ((a2 & 0xE000) == 0x6000)
        {
          return ((a2 ^ a1) & 1) == 0;
        }

        return 0;
      }

      if (a1 == 0x8000)
      {
        if (a2 != 0x8000)
        {
          return 0;
        }
      }

      else
      {
        if (a1 == 32769)
        {
          return a2 == 32769;
        }

        if (a2 != 33024)
        {
          return 0;
        }
      }

      return 1;
    }

    if ((a2 & 0xE000) != 0x4000)
    {
      return 0;
    }
  }

  if ((a2 ^ a1))
  {
    v4 = 0;
  }

  else
  {
    v4 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  return v4 & 1;
}

uint64_t sub_1002460F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024615C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002461C4(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v3 = type metadata accessor for NoticeEffect(0);
  __chkstk_darwin(v3 - 8);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExperienceEffect(0);
  v6 = __chkstk_darwin(v5);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v81 = &v77 - v9;
  v10 = __chkstk_darwin(v8);
  v80 = &v77 - v11;
  v12 = __chkstk_darwin(v10);
  v83 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v79 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v77 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v77 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v77 - v26;
  __chkstk_darwin(v25);
  v29 = &v77 - v28;
  v30 = sub_100035D04(&qword_100350958, &qword_100295E68);
  v31 = __chkstk_darwin(v30 - 8);
  v33 = &v77 - v32;
  v34 = (&v77 + *(v31 + 56) - v32);
  sub_1002460F4(v84, &v77 - v32, type metadata accessor for ExperienceEffect);
  v35 = a2;
  v36 = v34;
  sub_1002460F4(v35, v34, type metadata accessor for ExperienceEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1002460F4(v33, v29, type metadata accessor for ExperienceEffect);
        v54 = *v29;
        v55 = *(v29 + 1);
        v56 = v29[16];
        if (!swift_getEnumCaseMultiPayload())
        {
          v73 = *v34;
          v74 = v34[1];
          v75 = *(v36 + 16);
          v40 = sub_100114930(v54, v55, v56, *v36, v36[1], v75);
          sub_100094CB0(v54, v55, v56);
          sub_100094CB0(v73, v74, v75);
          goto LABEL_73;
        }

        sub_100094CB0(v54, v55, v56);
        goto LABEL_70;
      }

      sub_1002460F4(v33, v27, type metadata accessor for ExperienceEffect);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_70;
      }

      v69 = *v27;
      goto LABEL_62;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1002460F4(v33, v24, type metadata accessor for ExperienceEffect);
      v57 = *v24;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_70;
      }

      v58 = *v34;
      if (v57 == 5)
      {
        goto LABEL_78;
      }

      if (v58 == 5)
      {
        goto LABEL_84;
      }

      if (v57 != 4)
      {
        if (v57 != 3)
        {
          if ((v58 - 5) <= 0xFFFFFFFD && v57 == v58)
          {
            goto LABEL_86;
          }

          goto LABEL_84;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1002460F4(v33, v21, type metadata accessor for ExperienceEffect);
        v41 = *v21;
        v42 = *(v21 + 2);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v43 = v21[8];
          v44 = *v34;
          v40 = sub_100079248(v41, v43, v42, *v34, *(v34 + 8), v34[2]);

          goto LABEL_73;
        }

        goto LABEL_70;
      }

      sub_1002460F4(v33, v18, type metadata accessor for ExperienceEffect);
      v70 = *v18;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_70;
      }

      v58 = *v34;
      if (v70 <= 3)
      {
        if (v70 == 2)
        {
          goto LABEL_74;
        }

        if (v70 == 3)
        {
          goto LABEL_58;
        }

LABEL_82:
        if ((v58 - 2) >= 4 && ((v58 ^ v70) & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      if (v70 != 4)
      {
        if (v70 != 5)
        {
          goto LABEL_82;
        }

LABEL_78:
        if (v58 == 5)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }
    }

    if (v58 == 4)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v45 = v82;
        sub_1002460F4(v33, v82, type metadata accessor for ExperienceEffect);
        v46 = *v45;
        v47 = *(v45 + 8);
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v50 = *v34;
          v51 = v36[1];
          v52 = v36[2];
          v53 = *(v36 + 24);
          v40 = sub_1002556DC(v46, v47, v48, v49, *v36, v51, v52, v53);
          sub_100215598(v50, v51, v52, v53);
          sub_100215598(v46, v47, v48, v49);
          goto LABEL_73;
        }

        sub_100215598(v46, v47, v48, v49);
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_86;
      }

LABEL_70:
      sub_1000097E8(v33, &qword_100350958, &qword_100295E68);
LABEL_71:
      v40 = 0;
      return v40 & 1;
    }

    v68 = v81;
    sub_1002460F4(v33, v81, type metadata accessor for ExperienceEffect);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_70;
    }

    v69 = *v68;
LABEL_62:
    v40 = v69 == *v34;
    goto LABEL_73;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v60 = v79;
    sub_1002460F4(v33, v79, type metadata accessor for ExperienceEffect);
    v61 = *v60;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_70;
    }

    v58 = *v34;
    if (v61 != 2)
    {
      if (v61 != 3)
      {
        if ((v58 & 0xFE) == 2)
        {
          goto LABEL_84;
        }

        if (v61)
        {
          v62 = 0x746C7561666564;
        }

        else
        {
          v62 = 0x6F69746163756465;
        }

        if (v61)
        {
          v63 = 0xE700000000000000;
        }

        else
        {
          v63 = 0xE90000000000006ELL;
        }

        if (v58)
        {
          v64 = 0x746C7561666564;
        }

        else
        {
          v64 = 0x6F69746163756465;
        }

        if (v58)
        {
          v65 = 0xE700000000000000;
        }

        else
        {
          v65 = 0xE90000000000006ELL;
        }

        if (v62 != v64 || v63 != v65)
        {
          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v67)
          {
            goto LABEL_86;
          }

LABEL_84:
          sub_100245F58(v33, type metadata accessor for ExperienceEffect);
          goto LABEL_71;
        }

LABEL_86:
        sub_100245F58(v33, type metadata accessor for ExperienceEffect);
        v40 = 1;
        return v40 & 1;
      }

LABEL_58:
      if (v58 == 3)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

LABEL_74:
    if (v58 == 2)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v38 = v83;
    sub_1002460F4(v33, v83, type metadata accessor for ExperienceEffect);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v39 = v78;
      sub_10024615C(v34, v78, type metadata accessor for NoticeEffect);
      v40 = sub_1001B2404(v38, v39);
      sub_100245F58(v39, type metadata accessor for NoticeEffect);
      sub_100245F58(v38, type metadata accessor for NoticeEffect);
LABEL_73:
      sub_100245F58(v33, type metadata accessor for ExperienceEffect);
      return v40 & 1;
    }

    sub_100245F58(v38, type metadata accessor for NoticeEffect);
    goto LABEL_70;
  }

  v71 = v80;
  sub_1002460F4(v33, v80, type metadata accessor for ExperienceEffect);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    goto LABEL_70;
  }

  v72 = *v71 ^ *v34;
  sub_100245F58(v33, type metadata accessor for ExperienceEffect);
  v40 = v72 ^ 1;
  return v40 & 1;
}

unint64_t sub_100246AF0(uint64_t a1)
{
  result = sub_100246B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100246B18()
{
  result = qword_100350960;
  if (!qword_100350960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350960);
  }

  return result;
}

unint64_t sub_100246BA0()
{
  result = qword_100350978;
  if (!qword_100350978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350978);
  }

  return result;
}

uint64_t sub_100246C10()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350980);
  sub_100003078(v0, qword_100350980);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100246CC4()
{
  v0 = sub_100035D04(&qword_100350AE8, &qword_100296000);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - v2;
  v4 = sub_100035D04(&qword_100350AF0, &qword_100296008);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v10[1] = 0;
  sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  Just.init(_:)();
  sub_100035D04(&unk_100346020, &qword_100271A00);
  Just.setFailureType<A>(to:)();
  (*(v1 + 8))(v3, v0);
  sub_100247104();
  v8 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100246E98()
{
  v1 = v0;
  swift_defaultActor_initialize();
  type metadata accessor for ShareableContentResolverState();
  *(v0 + 112) = swift_allocObject();
  if (qword_1003392C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350980);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Init", v5, 2u);
  }

  if (qword_100338F70 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100246FC4()
{
  v1 = v0;
  if (qword_1003392C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350980);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1002470B4()
{
  sub_100246FC4();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100247104()
{
  result = qword_100350AF8;
  if (!qword_100350AF8)
  {
    sub_100035D4C(&qword_100350AF0, &qword_100296008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350AF8);
  }

  return result;
}

uint64_t sub_100247168()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350B00);
  sub_100003078(v0, qword_100350B00);
  return Logger.init(subsystem:category:)();
}

void sub_1002471E8()
{
  v1 = v0;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350B00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_published) & 1) == 0)
  {
    sub_10024898C(v13);
    sub_100117B5C();
    sub_100249B44(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11, v12);
  }
}

double sub_100247418()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v25 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100350B00);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A49D0, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_10000903C(v18);
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v24[1] = qword_10038B5B8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v11, v7);
  aBlock[4] = sub_100249B98;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100316F60;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100249B9C(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v21 = v25;
  v22 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v21, v22);
  (*(v26 + 8))(v6, v27);
  v19(v13, v7);

  return result;
}

void sub_1002478CC()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_100350B00);

  v29 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v16))
  {
    v26 = v8;
    v27 = v6;
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v17 = 136315394;
    *(v17 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A49B0, &v30);
    *(v17 + 12) = 2080;
    v18 = v2;
    v19 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v1 + v19, v14, &qword_100342A10, &qword_100278A10);
    sub_100009848(v14, v12, &qword_100342A10, &qword_100278A10);
    if ((*(v3 + 48))(v12, 1, v18) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v23 = v26;
      sub_1001DC3CC(v12, v26);
      sub_10007E658(v23, v27);
      v21 = String.init<A>(describing:)();
      v20 = v24;
      sub_10007E6BC(v23);
    }

    sub_1000097E8(v14, &qword_100342A10, &qword_100278A10);
    v25 = sub_100017494(v21, v20, &v30);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v29, v16, "%s: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v29;
  }
}

uint64_t sub_100247C94()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100345620, &unk_10027C940);
  __chkstk_darwin(v2 - 8);
  v33 = &v33 - v3;
  v4 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v5 = __chkstk_darwin(v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - v8;
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ExperienceEvent(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - v18;
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  v22 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger;
  swift_beginAccess();
  sub_100009848(v1 + v22, v11, &qword_100342A10, &qword_100278A10);
  v23 = *(v13 + 48);
  if (v23(v11, 1, v12) != 1)
  {
    sub_1001DC3CC(v11, v21);
    v30 = sub_100243F84();
    v31 = v21;
LABEL_10:
    sub_10007E6BC(v31);
    return v30;
  }

  sub_1000097E8(v11, &qword_100342A10, &qword_100278A10);
  sub_100009848(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_inactiveStateTrigger, v9, &qword_100342A10, &qword_100278A10);
  if (v23(v9, 1, v12) != 1)
  {
    sub_1001DC3CC(v9, v19);
    v30 = sub_100243F84();
    v31 = v19;
    goto LABEL_10;
  }

  sub_1000097E8(v9, &qword_100342A10, &qword_100278A10);
  v24 = v34;
  sub_100009848(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_finishedStateTrigger, v34, &qword_100342A10, &qword_100278A10);
  if (v23(v24, 1, v12) != 1)
  {
    sub_1001DC3CC(v24, v16);
    v30 = sub_100243F84();
    v31 = v16;
    goto LABEL_10;
  }

  sub_1000097E8(v24, &qword_100342A10, &qword_100278A10);
  v25 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded;
  swift_beginAccess();
  v26 = v1 + v25;
  v27 = v33;
  sub_100009848(v26, v33, &qword_100345620, &unk_10027C940);
  v28 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
  sub_1000097E8(v27, &qword_100345620, &unk_10027C940);
  if (v29 == 1)
  {
    return 0;
  }

  else
  {
    return 0x206E6F6973736553;
  }
}

uint64_t sub_1002480D8()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = __chkstk_darwin(v1 - 8);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v43 = &v37 - v4;
  v44 = type metadata accessor for Date();
  v42 = *(v44 - 8);
  v5 = __chkstk_darwin(v44);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented;
  swift_beginAccess();
  v18 = *(v11 + 48);
  if (v18(v0 + v17, 1, v10))
  {
    return 0;
  }

  v37 = v14;
  v39 = v7;
  sub_100009848(v0 + v17, v16, &qword_10034BD38, &qword_10028B418);
  v20 = v42;
  v21 = *(v42 + 32);
  v40 = v9;
  v22 = v44;
  v38 = v21;
  v21(v9, v16, v44);
  v23 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested;
  swift_beginAccess();
  v24 = 1;
  v25 = v18(v0 + v23, 1, v10);
  v26 = v43;
  if (!v25)
  {
    v27 = v0 + v23;
    v28 = v37;
    sub_100009848(v27, v37, &qword_10034BD38, &qword_10028B418);
    v38(v26, v28, v22);
    v24 = 0;
  }

  (*(v20 + 56))(v26, v24, 1, v22);
  v29 = v41;
  sub_100009848(v26, v41, &qword_10033C280, &qword_100272A80);
  v30 = (*(v20 + 48))(v29, 1, v22);
  v31 = v39;
  if (v30 == 1)
  {
    sub_1000097E8(v26, &qword_10033C280, &qword_100272A80);
    (*(v20 + 8))(v40, v22);
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v38(v39, v29, v22);
    v32 = v22;
    v33 = v40;
    Date.timeIntervalSince(_:)();
    v35 = v34;
    v36 = *(v20 + 8);
    v36(v31, v32);
    sub_1000097E8(v26, &qword_10033C280, &qword_100272A80);
    v36(v33, v32);
    return v35;
  }
}

uint64_t sub_100248540()
{
  v1 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Date();
  v33 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v32 = v0;
  v16 = v0 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed;
  swift_beginAccess();
  v17 = sub_100035D04(&unk_100350B60, &unk_1002960B0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    return 0;
  }

  v29 = v13;
  v19 = v33;
  (*(v33 + 16))(v15, v16 + *(v17 + 28), v10);
  v20 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting;
  v21 = v32;
  swift_beginAccess();
  v22 = 1;
  if (!(*(v30 + 48))(v21 + v20, 1, v31))
  {
    sub_100009848(v21 + v20, v3, &qword_10034BD38, &qword_10028B418);
    (*(v19 + 32))(v9, v3, v10);
    v22 = 0;
  }

  (*(v19 + 56))(v9, v22, 1, v10);
  sub_100009848(v9, v7, &qword_10033C280, &qword_100272A80);
  v23 = (*(v19 + 48))(v7, 1, v10);
  v24 = v29;
  if (v23 == 1)
  {
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    (*(v19 + 8))(v15, v10);
    sub_1000097E8(v7, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v29, v7, v10);
    Date.timeIntervalSince(_:)();
    v26 = v25;
    v27 = *(v19 + 8);
    v27(v24, v10);
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    v27(v15, v10);
    return v26;
  }
}

void sub_10024898C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  __chkstk_darwin(v5 - 8);
  v111 = &v85 - v6;
  v7 = sub_100035D04(&qword_10034BE88, &unk_10028B620);
  __chkstk_darwin(v7 - 8);
  *&v9 = &v85 - v8;
  v10 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v85 - v12;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100350B00);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v117 = v9;
    v18 = v17;
    v116 = swift_slowAlloc();
    v126[0] = v116;
    *v18 = 136315394;
    *(v18 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v126);
    *(v18 + 12) = 2080;
    v118[3] = v4;
    v118[0] = v2;

    v19 = v11;
    v20 = v13;
    v21 = sub_100057F50(v118);
    v115 = v16;
    v22 = v10;
    v24 = v23;
    sub_10000903C(v118);
    v25 = sub_100017494(v21, v24, v126);
    v10 = v22;

    *(v18 + 14) = v25;
    v13 = v20;
    v11 = v19;
    _os_log_impl(&_mh_execute_header, v15, v115, "%s: self=%s", v18, 0x16u);
    swift_arrayDestroy();

    v9 = v117;
  }

  v26 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented;
  swift_beginAccess();
  v27 = 0.0;
  LODWORD(v116) = (*(v11 + 48))(v2 + v26, 1, v10);
  if (!v116)
  {
    sub_100009848(v2 + v26, v13, &qword_10034BD38, &qword_10028B418);
    sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
    Date.timeIntervalSince(_:)();
    v27 = v28;
    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 8))(v13, v29);
  }

  v117 = COERCE_DOUBLE(sub_1002480D8());
  v115 = v30;
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B9E0();
  v31 = sub_10014C668(1);
  v113 = 0;
  v114 = v31;

  sub_10014B9E0();
  v32 = sub_10014C668(28);
  v108 = 0;
  v112 = v32;

  v110 = v2[4];
  sub_10014B9E0();
  v33 = sub_10014C668(7);
  v107 = 0;
  v109 = v33;

  v34 = (v2 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied);
  swift_beginAccess();
  sub_100009848(v34, *&v9, &qword_10034BE88, &unk_10028B620);
  v35 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  v36 = *(*(v35 - 8) + 48);
  v102 = v36(*&v9, 1, v35);
  sub_1000097E8(*&v9, &qword_10034BE88, &unk_10028B620);
  v37 = 0;
  v38 = 0;
  if (!v36(v34, 1, v35))
  {
    v37 = *v34;
    v38 = v34[1];
  }

  v105 = v38;
  v106 = v37;
  v39 = sub_100247C94();
  v103 = v40;
  v104 = v39;
  v41 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed;
  swift_beginAccess();
  v42 = v111;
  sub_100009848(v2 + v41, v111, &qword_10034BE70, &unk_10028B4C0);
  v43 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  v44 = *(*(v43 - 8) + 48);
  v101 = v44(v42, 1, v43);
  sub_1000097E8(v42, &qword_10034BE70, &unk_10028B4C0);
  if (v44(v2 + v41, 1, v43) || !*(v2 + v41))
  {
    v111 = 0;
    v100 = 0;
  }

  else
  {
    swift_getErrorValue();
    v45 = v118[6];
    v111 = v118[5];
    v46 = v118[7];
    swift_errorRetain();
    v47 = sub_100140158(v45, v46);
    v48 = [v47 code];

    v118[4] = v48;
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v49;
  }

  if (v44(v2 + v41, 1, v43) || !*(v2 + v41))
  {
    v98 = 0;
    v99 = 0;
  }

  else
  {
    swift_getErrorValue();
    v50 = v118[10];
    v99 = v118[9];
    v51 = v118[11];
    swift_errorRetain();
    v52 = sub_100140158(v50, v51);

    v53 = [v52 domain];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v55;
    v99 = v54;
  }

  if (v44(v2 + v41, 1, v43) || !*(v2 + v41))
  {
    v96 = 0;
    v97 = 0;
  }

  else
  {
    swift_getErrorValue();
    swift_errorRetain();
    v56 = Error.localizedDescription.getter();
    v96 = v57;
    v97 = v56;
  }

  v95 = *(v2 + 56);
  if (qword_100338E90 != -1)
  {
    swift_once();
  }

  if (byte_10038AFB0 != 1)
  {
    goto LABEL_29;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v58 = *(qword_10038B0B8 + 888);
  v59 = sub_10005F4D0();

  if ((v59 & 1) == 0)
  {
    v94 = 1;
  }

  else
  {
LABEL_29:
    v94 = 0;
  }

  v60 = v2[6];
  v91 = v2[5];
  v93 = v60;

  v92 = sub_100248540();
  v87 = v61;
  v62 = v2 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect;
  v63 = &v62[*(sub_100035D04(&qword_10034BE78, &unk_10028B4D0) + 32)];
  v90 = *v63;
  v86 = v63[4];
  v64 = sub_100243F84();
  v88 = v65;
  v89 = v64;
  if (qword_100338F10 != -1)
  {
    swift_once();
  }

  v66 = v107 != 0;
  v67 = v108 != 0;
  v68 = v113 != 0;
  v69 = v115;
  v70 = v116 != 0;
  v71 = (v116 != 0) | v115 & 1;
  if (v71)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v27 - v117;
  }

  v116 = *&v72;
  LODWORD(v108) = v101 != 1;
  LODWORD(v107) = v102 != 1;
  v73 = *(qword_10038B0B0 + 80);
  v113 = sub_10005FFC0();
  v75 = v74;

  v124 = v71;
  v122 = v70;
  v120 = v86;
  *a1 = v114;
  *(a1 + 16) = v112;
  *(a1 + 32) = v110;
  v125 = 0;
  v123 = v69 & 1;
  v121 = v87 & 1;
  v119 = v75 & 1;
  *(a1 + 8) = v68;
  *(a1 + 24) = v67;
  *(a1 + 40) = 0;
  *(a1 + 48) = v109;
  *(a1 + 56) = v66;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v107;
  v76 = v105;
  *(a1 + 88) = v106;
  *(a1 + 96) = v76;
  v77 = v103;
  *(a1 + 104) = v104;
  *(a1 + 112) = v77;
  *(a1 + 120) = v108;
  v79 = v99;
  v78 = v100;
  *(a1 + 128) = v111;
  *(a1 + 136) = v78;
  v81 = v97;
  v80 = v98;
  *(a1 + 144) = v79;
  *(a1 + 152) = v80;
  v82 = v96;
  *(a1 + 160) = v81;
  *(a1 + 168) = v82;
  *(a1 + 176) = v95;
  *(a1 + 184) = v94;
  *(a1 + 192) = v125;
  v83 = v93;
  *(a1 + 200) = v91;
  *(a1 + 208) = v83;
  *(a1 + 216) = v116;
  *(a1 + 224) = v124;
  *(a1 + 232) = v117;
  *(a1 + 240) = v123;
  *(a1 + 248) = v27;
  *(a1 + 256) = v122;
  *(a1 + 264) = v92;
  *(a1 + 272) = v121;
  *(a1 + 276) = v90;
  *(a1 + 280) = v120;
  v84 = v88;
  *(a1 + 288) = v89;
  *(a1 + 296) = v84;
  *(a1 + 304) = v113;
  *(a1 + 312) = v119;
}

uint64_t *sub_1002494D8()
{
  v1 = v0;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350B00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10002689C(*(v1 + 16), *(v1 + 24));

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect, &qword_10034BE78, &unk_10028B4D0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied, &qword_10034BE88, &unk_10028B620);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed, &qword_10034BE70, &unk_10028B4C0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed, &qword_100350C60, &qword_100296120);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger, &qword_100342A10, &qword_100278A10);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_inactiveStateTrigger, &qword_100342A10, &qword_100278A10);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_finishedStateTrigger, &qword_100342A10, &qword_100278A10);
  return v1;
}

uint64_t sub_100249718()
{
  sub_1002494D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HintPresentationRecord(uint64_t a1)
{
  result = qword_100350B48;
  if (!qword_100350B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002497C4(uint64_t a1)
{
  sub_1001DC23C(319, &qword_10034BD28, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    sub_10011CC54(319, &qword_10034BD30, &qword_10034BD38, &qword_10028B418);
    if (v2 <= 0x3F)
    {
      sub_10011CC54(319, &qword_10034BD50, &qword_10034BD58, &unk_1002960A0);
      if (v3 <= 0x3F)
      {
        sub_10011CC54(319, &qword_10034BD40, &qword_10034BD48, &unk_10028B420);
        if (v4 <= 0x3F)
        {
          sub_10011CC54(319, &qword_100350B58, &unk_100350B60, &unk_1002960B0);
          if (v5 <= 0x3F)
          {
            sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
            if (v6 <= 0x3F)
            {
              sub_1001DC23C(319, &unk_10034BD60, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100249A94(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057F50(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_100249AEC(uint64_t a1)
{
  result = sub_100249B9C(&qword_100350C58, type metadata accessor for HintPresentationRecord, &unk_1002960C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100249B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100249BE4@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v140 = a3;
  v5 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v139 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v143 = &v130 - v9;
  v132 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v132);
  v134 = (&v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v12 = __chkstk_darwin(v11 - 8);
  v130 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v135 = &v130 - v14;
  v133 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v133);
  v131 = (&v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100035D04(qword_100350C68, &qword_100296128);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v137 = &v130 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = (&v130 - v23);
  v25 = __chkstk_darwin(v22);
  v145 = &v130 - v26;
  __chkstk_darwin(v25);
  v144 = &v130 - v27;
  if (qword_100339058 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100003078(v28, qword_10038B208);
  swift_unknownObjectRetain();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  v31 = os_log_type_enabled(v29, v30);
  v138 = v19;
  v142 = v6;
  if (v31)
  {
    v146 = v5;
    v32 = swift_slowAlloc();
    v148[0] = swift_slowAlloc();
    *v32 = 136315650;
    v33 = sub_100017494(0xD000000000000016, 0x80000001002A70A0, v148);
    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    v34 = a1;
    v36 = sub_1000092A0(v33, v35);
    v38 = sub_100017494(v36, v37, v148);

    *(v32 + 14) = v38;
    *(v32 + 22) = 2080;
    if (a2)
    {
      v147 = a2;
      swift_unknownObjectRetain();
      sub_100035D04(&qword_10033D6D0, &unk_10027C120);
      v39 = String.init<A>(describing:)();
      v41 = v40;
    }

    else
    {
      v41 = 0xE300000000000000;
      v39 = 7104878;
    }

    v47 = sub_100017494(v39, v41, v148);

    *(v32 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: device%s, activity=%s", v32, 0x20u);
    swift_arrayDestroy();

    v6 = v142;
    a1 = v34;
    v5 = v146;
    v44 = v144;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v44 = v144;
    if (!a2)
    {
LABEL_11:
      v45 = 0;
      goto LABEL_12;
    }
  }

  v42 = [a2 pcactivityType];
  v45 = v42;
  if (v42 == 1)
  {
    v46 = 0;
    v146 = 1;
    goto LABEL_16;
  }

LABEL_12:
  v48 = sub_10006FE7C(v42, v43);
  if (v48)
  {
    v49 = v45;
  }

  else
  {
    v49 = 0;
  }

  v146 = v49;
  v46 = (a2 == 0) | v48 ^ 1;
LABEL_16:
  v50 = *(v6 + 56);
  v50(v44, 1, 1, v5);
  v51 = v145;
  v136 = v50;
  v50(v145, 1, 1, v5);
  v52 = v146;
  v141 = v46;
  if ((v46 & 1) == 0)
  {
    v70 = 0;
    if (v146 <= 1)
    {
      if (v146)
      {
        if (v146 != 1)
        {
          goto LABEL_58;
        }

        goto LABEL_17;
      }

      if (!a2)
      {
        goto LABEL_33;
      }

      objc_opt_self();
      v83 = swift_dynamicCastObjCClass();
      if (!v83)
      {
LABEL_57:
        v70 = [a2 image];
        goto LABEL_58;
      }

      v84 = v83;
      swift_unknownObjectRetain();
      v85 = [v84 displayName];
      if (v85)
      {
        v86 = v85;
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v87;
      }

      else
      {
        v134 = 0;
        v88 = 0;
      }

      v89 = v135;
      v90 = [v84 dateConnected];
      if (v90)
      {
        v91 = v90;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = 0;
      }

      else
      {
        v92 = 1;
      }

      v93 = type metadata accessor for Date();
      (*(*(v93 - 8) + 56))(v89, v92, 1, v93);
      v94 = [v84 title];
      if (v94)
      {
        v95 = v94;
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v96 = 0;
        v98 = 0;
      }

      v51 = v145;
      sub_10024A9F8(v145);
      v99 = v144;
      sub_10024A9F8(v144);
      v100 = v135;
      v101 = v131;
      *v131 = v134;
      *(v101 + 8) = v88;
      v102 = v133;
      sub_10003693C(v100, v101 + *(v133 + 20), &qword_10033C280, &qword_100272A80);
      v103 = (v101 + *(v102 + 24));
      *v103 = v96;
      v103[1] = v98;
      sub_10024AAD0(v101, v99, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    }

    else
    {
      if ((v146 - 2) < 2)
      {
        if (a2)
        {
          v71 = [swift_unknownObjectRetain() activityString];
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;
          swift_unknownObjectRelease();

          sub_10024A9F8(v145);
          v75 = v144;
          sub_10024A9F8(v144);
          *v24 = v72;
          v24[1] = v74;
          swift_storeEnumTagMultiPayload();
          v136(v24, 0, 1, v5);
          sub_10003693C(v24, v75, qword_100350C68, &qword_100296128);
          v52 = v146;
          sub_10024AA60(v75, v145);
        }

        goto LABEL_30;
      }

      if (v146 != 4)
      {
        goto LABEL_58;
      }

      if (!a2)
      {
        goto LABEL_33;
      }

      objc_opt_self();
      v76 = swift_dynamicCastObjCClass();
      if (!v76)
      {
        goto LABEL_57;
      }

      v77 = v76;
      swift_unknownObjectRetain();
      v78 = [v77 displayTitle];
      if (v78)
      {
        v79 = v78;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v51 = v145;
      }

      else
      {
        v80 = 0;
        v82 = 0;
      }

      v104 = v130;
      v105 = [v77 fireDate];
      v99 = v144;
      if (v105)
      {
        v106 = v105;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v107 = 0;
      }

      else
      {
        v107 = 1;
      }

      swift_unknownObjectRelease();
      sub_10024A9F8(v51);
      sub_10024A9F8(v99);
      v108 = type metadata accessor for Date();
      (*(*(v108 - 8) + 56))(v104, v107, 1, v108);
      v109 = v134;
      *v134 = v80;
      *(v109 + 8) = v82;
      sub_10003693C(v104, v109 + *(v132 + 20), &qword_10033C280, &qword_100272A80);
      sub_10024AAD0(v109, v99, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    }

    swift_storeEnumTagMultiPayload();
    v136(v99, 0, 1, v5);
    sub_10024AA60(v99, v51);
    v52 = v146;
    goto LABEL_57;
  }

LABEL_17:
  v53 = *(*&a1[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext] + 24);
  if (v53)
  {
    v54 = v53;
    v55 = [v54 proxDeviceState];
    if (v55)
    {
      v56 = v55;
      v57 = [objc_allocWithZone(PCMediaActivity) initWithDisplayContext:v54 response:v55];
      v58 = [v57 activityString];
      v135 = a1;
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = v144;
      sub_10024A9F8(v144);
      *v24 = v60;
      v24[1] = v62;
      swift_storeEnumTagMultiPayload();
      v134 = a2;
      v64 = v136;
      v136(v24, 0, 1, v5);
      sub_10003693C(v24, v63, qword_100350C68, &qword_100296128);
      v65 = [v57 description];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = v145;
      sub_10024A9F8(v69);
      *v24 = v66;
      v24[1] = v68;
      v52 = v146;
      swift_storeEnumTagMultiPayload();
      v64(v24, 0, 1, v5);
      a2 = v134;
      sub_10003693C(v24, v69, qword_100350C68, &qword_100296128);
    }

    else
    {
    }

    LOBYTE(v46) = v141;
  }

  if (v46)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = 0;
  if (v52 <= 4 && v52 != 1)
  {
    if (!a2)
    {
LABEL_33:
      v70 = 0;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_58:
  v146 = v52;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v110 = sub_1000BDC5C();
  v112 = v111;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v113 = sub_10000C868();
  v115 = v114;

  v116 = sub_100058DC8(v113, v115);
  v118 = v117;

  v119 = v137;
  sub_10003693C(v144, v137, qword_100350C68, &qword_100296128);
  v120 = *(v142 + 48);
  if (v120(v119, 1, v5) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v121 = v120(v119, 1, v5) == 1;
    v122 = v119;
    v123 = v138;
    if (!v121)
    {
      sub_10024A9F8(v122);
    }
  }

  else
  {
    sub_10024AAD0(v119, v143, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    v123 = v138;
  }

  sub_10003693C(v145, v123, qword_100350C68, &qword_100296128);
  v124 = v5;
  if (v120(v123, 1, v5) == 1)
  {
    v125 = v139;
    swift_storeEnumTagMultiPayload();
    if (v120(v123, 1, v124) != 1)
    {
      sub_10024A9F8(v123);
    }
  }

  else
  {
    v125 = v139;
    sub_10024AAD0(v123, v139, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  }

  v126 = v140;
  *v140 = v146;
  if (v112)
  {
    v127 = 0;
  }

  else
  {
    v127 = v110;
  }

  *(v126 + 8) = v141 & 1;
  v126[2] = v127;
  v126[3] = v116;
  v126[4] = v118;
  v126[5] = v70;
  v128 = type metadata accessor for ActivityDisplayContext(0);
  sub_10024AAD0(v143, v126 + *(v128 + 32), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  return sub_10024AAD0(v125, v126 + *(v128 + 36), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
}

uint64_t sub_10024A9F8(uint64_t a1)
{
  v2 = sub_100035D04(qword_100350C68, &qword_100296128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024AA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(qword_100350C68, &qword_100296128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024AAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024AB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_10024AB8C(uint64_t a1)
{
  result = swift_dynamicCastTypeToObjCProtocolConditional();
  if (result)
  {
    return [swift_getObjCClassFromMetadata() supportsSecureCoding];
  }

  return result;
}

uint64_t sub_10024ABD4(void *a1, uint64_t a2)
{
  sub_10000EBC0(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_10000EBC0(v12, v12[3]);
    sub_100165E88();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_10006DA04(v10, v11);
    v6 = sub_10024B210();
    sub_100010708(v10, v11);
    [v6 setRequiresSecureCoding:sub_10024AB8C(a2) & 1];
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:v6];
    if (v8)
    {
      a2 = v8;

      sub_100010708(v10, v11);
      sub_10000903C(v12);
      sub_10000903C(a1);
      return a2;
    }

    sub_10001618C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 7;
    swift_willThrow();

    sub_100010708(v10, v11);
    sub_10000903C(v12);
  }

  sub_10000903C(a1);
  return a2;
}

uint64_t sub_10024AD94(void *a1, void *a2, uint64_t a3)
{
  sub_10000EBC0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:sub_10024AB8C(a3) & 1];
  [a2 encodeWithCoder:v5];
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100051608(v11, v11[3]);
  sub_100165FDC();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  sub_100010708(v7, v9);
  return sub_10000903C(v11);
}

uint64_t sub_10024AF10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10024ABD4(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10024AF78(void *a1, uint64_t a2)
{
  v5 = sub_10000EBC0(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_10000EBC0(v8, v8[3]);
    if (dispatch thunk of SingleValueDecodingContainer.decodeNil()())
    {
      v5 = 0;
    }

    else
    {
      sub_10007E790(a1, v7);
      v5 = sub_10024ABD4(v7, a2);
    }

    sub_10000903C(v8);
    sub_10000903C(a1);
  }

  return v5;
}

uint64_t sub_10024B068(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_10024AD94(a1, a2, a3);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10000EBC0(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100051608(v7, v7[3]);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return sub_10000903C(v7);
  }
}

uint64_t sub_10024B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      swift_unknownObjectRetain();
      v4 = dispatch thunk of static Equatable.== infix(_:_:)();
      swift_unknownObjectRelease();
      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10024B1A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10024AF78(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_10024B210()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10024B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10024B30C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350D70);
  sub_100003078(v0, qword_100350D70);
  return Logger.init(subsystem:category:)();
}

id sub_10024B7E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TempProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024B8C4(void *a1)
{
  v2 = v1;
  if (qword_1003392D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100350D70);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "receive event %@", v8, 0xCu);
    sub_1000030B0(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler + 8);

    v11(v5);
    sub_10002689C(v11, v12);
  }

  v13 = OBJC_IVAR____TtC17proximitycontrold12TempProvider_receivedEvents;
  swift_beginAccess();
  v14 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

id sub_10024BB1C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12TempProvider_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B5B8;
  *&v0[v1] = qword_10038B5B8;
  v3 = &v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_receivedEvents] = _swiftEmptyArrayStorage;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TempProvider();
  v6 = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10024BC10()
{
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:v10];

  v3 = v10[0];
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10001766C(v11, v10);
    sub_100035D04(&qword_100350E40, qword_1002963B8);
    if (swift_dynamicCast())
    {
      v4 = sub_100140528(v9);

      v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v6 = sub_10024BDFC(v4);
    }

    else
    {
      v6 = 0x80000001002A7180;
      sub_10001618C();
      swift_allocError();
      *v7 = 0xD00000000000001CLL;
      *(v7 + 8) = 0x80000001002A7180;
      *(v7 + 16) = 7;
      swift_willThrow();
    }

    sub_10000903C(v11);
  }

  else
  {
    v6 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10024BDFC(uint64_t a1)
{
  type metadata accessor for Key(0);
  sub_10024BEF0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_10024BEF0()
{
  result = qword_100339C00;
  if (!qword_100339C00)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100339C00);
  }

  return result;
}

void AnyTransition.init(arrayLiteral:)(uint64_t a1)
{
  static AnyTransition.identity.getter();
  v2 = *(a1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(a1 + 16))
    {
      v4 = v3 + 1;

      AnyTransition.combined(with:)();

      v3 = v4;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

id sub_10024C02C()
{
  v0 = objc_allocWithZone(NSNumber);

  return [v0 initWithInteger:0];
}

id sub_10024C068(unsigned __int8 a1)
{
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:v2];

  return v3;
}

id sub_10024C1FC()
{
  v1 = qword_1002964E8[*v0];
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

id sub_10024C250()
{
  v1 = qword_100296550[*v0];
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

uint64_t sub_10024C2A4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350E48);
  sub_100003078(v0, qword_100350E48);
  return Logger.init(subsystem:category:)();
}

void sub_10024C328(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    sub_10001766C(a3, v31);

    sub_100035D04(&qword_10033BDC8, &unk_100278380);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v28, &v32);
      v8 = v34;
      v9 = v35;
      sub_10000EBC0(&v32, v34);
      if (((*(v9 + 16))(v8, v9) & 1) == 0)
      {

        goto LABEL_20;
      }

      sub_10000903C(&v32);
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      sub_1000097E8(&v28, &qword_10033BDD0, &unk_100272700);
    }

    sub_10001766C(a3, v31);
    sub_100035D04(&qword_100350E60, &qword_1002964D0);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v28, &v32);
      v13 = v34;
      v14 = v35;
      sub_10000EBC0(&v32, v34);
      v15 = (*(v14 + 8))(v13, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = *a4;
      *a4 = 0x8000000000000000;
      sub_10004E040(v15, a1, a2, isUniquelyReferenced_nonNull_native);

      *a4 = v28;
LABEL_20:
      sub_10000903C(&v32);
      return;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1000097E8(&v28, &qword_100350E68, &unk_1002964D8);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v17._object = 0x80000001002A71A0;
    v17._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);

    v20 = v32;
    v19 = v33;
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003078(v21, qword_100350E48);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = sub_100017494(v20, v19, &v32);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s", v24, 0xCu);
      sub_10000903C(v25);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_100350E48);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "### Key is nil?", v12, 2u);
    }
  }
}

id sub_10024C788()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithBool:v1];
}

id sub_10024C7D0()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithDouble:v1];
}

id sub_10024C818()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

id sub_10024C860()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);
  LODWORD(v3) = v1;

  return [v2 initWithFloat:v3];
}

id sub_10024C8A8()
{
  v0 = objc_allocWithZone(NSString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t PCDisambiguationContext.description.getter()
{
  v1 = v0;
  sub_100035D04(&qword_100350E70, &qword_100278AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002727F0;
  *(inited + 32) = 0x4449656369766564;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v1 deviceIdentifier];
  v4 = sub_10024CBA4();
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6F69746365726964;
  *(inited + 88) = 0xE90000000000006ELL;
  v5 = [v1 interactionDirection];
  type metadata accessor for PCInteractionDirection(0);
  *(inited + 96) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0x7974697669746361;
  *(inited + 136) = 0xE800000000000000;
  if ([v1 activity])
  {
    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    v7 = String.init<A>(describing:)();
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  sub_10024DA80(inited);
  swift_setDeallocating();
  sub_100035D04(&unk_100350E80, &qword_100278AE8);
  swift_arrayDestroy();
  v9 = Dictionary.description.getter();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  return 0xD000000000000019;
}

unint64_t sub_10024CBA4()
{
  result = qword_100350E78;
  if (!qword_100350E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100350E78);
  }

  return result;
}

unint64_t sub_10024CC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEF0, &qword_100274218);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024CD24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F60, &qword_1002965E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_100004B58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10024CE24(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100035D04(&qword_100350F48, &qword_1002965D8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_100085110(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100085110(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024CF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_100350F40, &qword_1002741B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1000850CC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D084(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_100035D04(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_100035D04(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_100009848(v16, v12, a2, v27);
      result = sub_100019110(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10024D28C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100035D04(&unk_100350EA0, &qword_100274268);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10008CE8C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10008CE8C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024D3B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_100350F18, &qword_1002965C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100004B58(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D50C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100035D04(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100004B58(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEC0, &qword_1002741D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D730(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100035D04(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_10008CE8C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_10008CE8C(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024D824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350E90, &unk_10027C950);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, v13, &qword_100344038, qword_100279DB0);
      result = sub_1000851E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000516B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F30, &qword_1002965D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      sub_100009848(i, v11, &qword_1003507C8, qword_100295C00);
      v5 = v11[0];
      result = sub_10008522C(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_10000E754(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DED8, &qword_1002741F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, &v13, &unk_100350E80, &qword_100278AE8);
      v5 = v13;
      v6 = v14;
      result = sub_100004B58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000516B4(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DBB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F20, &qword_1002965C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, v15, &qword_10034CDC0, &qword_10028C930);
      result = sub_1000851E8(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350FD0, &qword_100296610);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10006DA04(v7, v8);
      result = sub_100004B58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DE1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100035D04(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100004B58(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_100350F70, &qword_1002965F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E04C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100035D04(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v15 = *(a1 + 32);
  result = sub_100026910(*(a1 + 32));
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v8 = (a1 + 48);
  v9 = v3 - 1;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v15;
    *(v5[7] + 8 * result) = *(&v15 + 1);
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!v9)
    {
      goto LABEL_8;
    }

    v13 = *v8++;
    v15 = v13;

    result = sub_100026910(v13);
    --v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024E154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEF8, &qword_100274220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, &v11, &unk_100350FA0, &qword_100296600);
      v5 = v11;
      result = sub_10008CE90();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000516B4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F90, &qword_100274210);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEE8, &qword_100274208);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_100004B58(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E4A4(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100350FE0, &qword_100296618);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100035D04(&qword_10033DF30, &unk_100274280);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009848(v9, v5, &qword_100350FE0, &qword_100296618);
      result = sub_100019110(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
      result = sub_10008CD9C(&v5[v8], v16 + *(*(active - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t PCUserAlert.__allocating_init(definition:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  return sub_100251EA8(v4, a1);
}

uint64_t PCUserAlert.run()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return (_swift_task_switch)(sub_10024E79C, 0, 0);
}

uint64_t sub_10024E79C()
{
  if (qword_1003392E8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_10024E8A4;
  v4 = v0[3];

  return sub_10024F7C8(v4, (v0 + 2), v1, WitnessTable);
}

uint64_t sub_10024E8A4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_10024E9D8, 0, 0);
}

uint64_t sub_10024E9F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350FE8);
  sub_100003078(v0, qword_100350FE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10024EA70()
{
  type metadata accessor for PCUserAlertManager(0);
  v0 = swift_allocObject();
  result = sub_10024EAB0();
  qword_10038B6D0 = v0;
  return result;
}

uint64_t sub_10024EAB0()
{
  v1 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v1 - 8);
  v21 = &v18 - v2;
  v3 = sub_100035D04(&qword_100351308, &qword_100296838);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v20 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v18 - v8;
  v19 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - v11;
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_10024E4A4(_swiftEmptyArrayStorage);
  v13 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventStream;
  v18 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventContinuation;
  sub_100035D04(&qword_100351080, &qword_1002966F0);
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v10 + 32))(v0 + v13, v12, v19);
  (*(v7 + 32))(v0 + v18, v9, v20);
  *(v0 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask) = 0;
  v14 = type metadata accessor for TaskPriority();
  v15 = v21;
  (*(*(v14 - 8) + 56))(v21, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v0;

  sub_100240220(0, 0, v15, &unk_100296848, v16);

  return v0;
}

uint64_t sub_10024EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v4[5] = *(v7 + 64);
  v4[6] = swift_task_alloc();
  sub_100035D04(&qword_10033E800, &qword_100278E80);
  v4[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_10024EF54, a4, 0);
}

uint64_t sub_10024EF54()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v4 + 16))(v2, v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventStream, v6);
  v8 = sub_1002528E0(&qword_1003512F8, type metadata accessor for PCUserAlertManager, &unk_1002967B8);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v8;
  (*(v4 + 32))(v11 + v9, v2, v6);
  *(v11 + v10) = v5;
  swift_retain_n();
  *(v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask) = sub_100240220(0, 0, v1, &unk_100296858, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10024F128()
{
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask))
  {

    Task.cancel()();
  }

  v1 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventStream;
  v2 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventContinuation;
  v4 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10024F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for UUID();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  sub_100035D04(&qword_100351310, &qword_100296860);
  v5[7] = swift_task_alloc();
  v8 = sub_100035D04(&qword_100351318, &qword_100296868);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_10024F3B4, a5, 0);
}

uint64_t sub_10024F3B4()
{
  sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1002528E0(&qword_1003512F8, type metadata accessor for PCUserAlertManager, &unk_1002967B8);
  v0[11] = v1;
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10024F4C4;
  v4 = v0[7];
  v5 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_10024F4C4()
{
  v1 = *(*v0 + 24);

  return (_swift_task_switch)(sub_10024F5D4, v1, 0);
}

uint64_t sub_10024F5D4()
{
  v1 = v0[7];
  v2 = sub_100035D04(&qword_100351080, &qword_1002966F0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *v1;
    (*(v0[5] + 32))(v0[6], v1 + *(v2 + 48), v0[4]);
    if ((v5 - 1) >= 2)
    {
      if (v5 == 3)
      {
        sub_100251284(v0[6], 0);
      }

      else
      {
        sub_100251284(v0[6], v5);
        sub_1000E605C(v5);
      }
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
    v6 = v0[11];
    v7 = v0[3];
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_10024F4C4;
    v9 = v0[7];
    v10 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v9, v7, v6, v10);
  }
}

uint64_t sub_10024F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[29] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = *(AssociatedTypeWitness - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v8 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v5[36] = v8;
  v5[37] = *(v8 - 8);
  v5[38] = swift_task_alloc();
  sub_100035D04(&qword_1003512D0, &qword_100296808);
  v5[39] = swift_task_alloc();
  v9 = sub_100035D04(&qword_1003512D8, &qword_100296810);
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  v5[43] = swift_task_alloc();
  v10 = sub_100035D04(&qword_1003512E0, &qword_100296818);
  v5[44] = v10;
  v5[45] = *(v10 - 8);
  v5[46] = swift_task_alloc();
  v11 = sub_100035D04(&qword_1003511F8, &unk_100296750);
  v5[47] = v11;
  v5[48] = *(v11 - 8);
  v5[49] = swift_task_alloc();
  v12 = sub_100035D04(&qword_1003512E8, &qword_100296820);
  v5[50] = v12;
  v5[51] = *(v12 - 8);
  v5[52] = swift_task_alloc();
  v13 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  v5[53] = v13;
  v14 = *(v13 - 8);
  v5[54] = v14;
  v5[55] = *(v14 + 64);
  v5[56] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v5[57] = v15;
  v16 = *(v15 - 8);
  v5[58] = v16;
  v5[59] = *(v16 + 64);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();

  return (_swift_task_switch)(sub_10024FC64, v4, 0);
}

uint64_t sub_10024FC64()
{
  v1 = v0[58];
  v2 = v0[56];
  v24 = v0[61];
  v25 = v0[57];
  v3 = v0[54];
  v26 = v0[60];
  v27 = v0[55];
  v4 = v0[53];
  v36 = v0[49];
  v37 = v0[48];
  v38 = v0[47];
  v33 = v0[44];
  v34 = v0[46];
  v31 = v0[43];
  v32 = v0[45];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v35 = *(v6 + 24);
  v29 = v6;
  v30 = v0[25];
  v28 = v7;
  v35(v7, v6);
  v0[16] = type metadata accessor for PCUserAlertPresentationContext(0);
  v0[17] = sub_1002528E0(&qword_1003512F0, type metadata accessor for PCUserAlertPresentationContext, &unk_100279728);
  v8 = sub_10000F798(v0 + 13);
  v9 = PCUserAlertProtocol.presentationContext.getter(v7, v6, v8);
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventContinuation, v4, v9);
  (*(v1 + 16))(v26, v24, v25);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v27 + *(v1 + 80) + v10) & ~*(v1 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v2, v4);
  (*(v1 + 32))(v12 + v11, v26, v25);
  v13 = objc_allocWithZone(type metadata accessor for PCViewServiceHandle());
  v14 = sub_10009D944(0xD000000000000019, 0x80000001002A7290, (v0 + 13), sub_1002529F0, v12);
  v0[62] = v14;
  (*(v32 + 104))(v34, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v33);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v32 + 8))(v34, v33);
  v35(v28, v29);
  v31[3] = v28;
  v31[4] = v29;
  v15 = sub_10000F798(v31);
  (*(*(v28 - 8) + 16))(v15, v30, v28);
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(v37 + 16))(v31 + *(active + 24), v36, v38);
  v31[5] = v14;
  (*(*(active - 8) + 56))(v31, 0, 1, active);
  swift_beginAccess();
  v17 = v14;
  sub_1001CFBE0(v31, v26);
  swift_endAccess();
  sub_10009DD84();
  v18 = v0[28];
  AsyncThrowingStream.makeAsyncIterator()();
  v19 = sub_1002528E0(&qword_1003512F8, type metadata accessor for PCUserAlertManager, &unk_1002967B8);
  v20 = swift_task_alloc();
  v0[63] = v20;
  *v20 = v0;
  v20[1] = sub_100250304;
  v21 = v0[39];
  v22 = v0[40];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v21, v18, v19, v22, v0 + 22);
}

uint64_t sub_100250304()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_100250A44;
  }

  else
  {
    v4 = sub_10025041C;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_10025041C()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v68 = *(v0 + 512);
  if (v4 == 1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    static Task<>.checkCancellation()();
    v5 = *(v0 + 496);
    v6 = *(v0 + 464);
    v64 = *(v0 + 456);
    v66 = *(v0 + 488);
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    if (!v68)
    {
      sub_10001618C();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0xE000000000000000;
      *(v29 + 16) = 11;
      swift_willThrow();
    }

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
    goto LABEL_8;
  }

  v13 = *(v0 + 488);
  v65 = *(v0 + 240);
  v67 = *(v0 + 280);
  v61 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 208);
  (*(v2 + 32))(*(v0 + 304), v1, v3);
  sub_100251284(v13, 0);
  (*(v14 + 32))(v15, v14);
  *(v0 + 168) = *(v0 + 80);
  v18 = type metadata accessor for PCUserAlertDefinition(0, v61, v16, v17);
  v19 = *(*(v18 - 8) + 8);

  v19(v0 + 16, v18);
  PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.actionIndex.getter();
  *(v0 + 184) = *(v0 + 168);
  v20 = type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(*(v20 - 8) + 8))(v0 + 168, v20);
  sub_10013FFB4(0xD00000000000001BLL, 0x80000001002A72B0, v65, v67);
  v66 = *(v0 + 488);
  if (v68)
  {
    v6 = *(v0 + 464);
    v21 = *(v0 + 408);
    v63 = *(v0 + 416);
    v64 = *(v0 + 456);
    v62 = *(v0 + 400);
    v22 = *(v0 + 384);
    v59 = *(v0 + 376);
    v60 = *(v0 + 392);
    v23 = *(v0 + 328);
    v55 = *(v0 + 320);
    v57 = *(v0 + 336);
    v24 = *(v0 + 296);
    v53 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);

    (*(v26 + 8))(v27, v28);
    (*(v24 + 8))(v53, v25);
    (*(v23 + 8))(v57, v55);
    (*(v22 + 8))(v60, v59);
    (*(v21 + 8))(v63, v62);
LABEL_8:
    (*(v6 + 8))(v66, v64);

    v30 = *(v0 + 8);
    goto LABEL_9;
  }

  v58 = *(v0 + 456);
  v54 = *(v0 + 416);
  v56 = *(v0 + 464);
  v51 = *(v0 + 408);
  v52 = *(v0 + 400);
  v32 = *(v0 + 384);
  v48 = *(v0 + 376);
  v49 = *(v0 + 392);
  v47 = *(v0 + 336);
  v33 = *(v0 + 328);
  v46 = *(v0 + 320);
  v34 = *(v0 + 304);
  v35 = *(v0 + 296);
  v43 = *(v0 + 288);
  v36 = *(v0 + 272);
  v37 = *(v0 + 280);
  v38 = *(v0 + 264);
  v39 = *(v0 + 232);
  v50 = *(v0 + 192);
  v40 = *(v0 + 496);
  (*(*(v0 + 248) + 8))();
  (*(v38 + 16))(v36, v37, v39);
  v41 = PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.textResponse.getter();
  v44 = v42;
  v45 = v41;

  (*(v38 + 8))(v37, v39);
  (*(v35 + 8))(v34, v43);
  (*(v33 + 8))(v47, v46);
  (*(v32 + 8))(v49, v48);
  (*(v51 + 8))(v54, v52);
  (*(v56 + 8))(v66, v58);
  sub_1000F07AC(v36, v45, v44, v39, v50);

  v30 = *(v0 + 8);
LABEL_9:

  return v30();
}

uint64_t sub_100250A44()
{
  v1 = *(v0 + 464);
  v13 = *(v0 + 456);
  v14 = *(v0 + 488);
  v2 = *(v0 + 408);
  v12 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);

  v10 = *(v0 + 8);

  return v10();
}

double PCUserAlertProtocol.presentationContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 24))();
  v6 = *(a2 + 32);
  v6(v29, a1, a2);
  v45 = v29[0];
  sub_100009848(&v45, v39, &qword_10033A238, &qword_10027D3E0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for PCUserAlertDefinition(0, AssociatedTypeWitness, v7, v8);
  v10 = *(*(v9 - 8) + 8);
  v10(v29, v9);
  v6(v30, a1, a2);
  v44 = v31;
  sub_100009848(&v44, v39, &qword_10033A238, &qword_10027D3E0);
  v10(v30, v9);
  v6(v32, a1, a2);
  v43 = v33;
  sub_100009848(&v43, v39, &qword_10033A238, &qword_10027D3E0);
  v10(v32, v9);
  v6(v34, a1, a2);
  v10(v34, v9);
  v41 = v34[6];
  v42 = v35;
  v6(v36, a1, a2);
  v10(v36, v9);
  v21 = v37;
  v6(v38, a1, a2);
  v40 = v38[8];

  v10(v38, v9);
  v28 = v40;
  v6(v39, a1, a2);
  v11 = v39[9];
  v12 = v39[10];

  v10(v39, v9);
  v24 = a1;
  v25 = a2;
  v26 = v11;
  v27 = v12;
  v13 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_10007F168(sub_100252330, v23, v13, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v15);
  (*(*(v13 - 8) + 8))(&v40, v13);

  v17 = type metadata accessor for PCUserAlertPresentationContext(0);
  v18 = v44;
  *(a3 + v17[5]) = v45;
  *(a3 + v17[6]) = v18;
  result = *&v43;
  *(a3 + v17[7]) = v43;
  v20 = a3 + v17[8];
  *(v20 + 8) = v42;
  *v20 = v41;
  *(a3 + v17[9]) = v21;
  *(a3 + v17[10]) = v16;
  return result;
}

uint64_t sub_100250F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100035D04(&qword_100351080, &qword_1002966F0);
  __chkstk_darwin(v6);
  v8 = &v31[-v7];
  v9 = sub_100035D04(&qword_100351300, &unk_100296828);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-v11];
  if (qword_1003392E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_100350FE8);
  sub_1000E6048(a1);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_1000E605C(a1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v12;
    v17 = v16;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v17 = 136315138;
    v18 = sub_1000376F8(a1);
    v35 = a2;
    v20 = sub_100017494(v18, v19, &v36);
    v32 = v15;
    v21 = v6;
    v22 = v10;
    v23 = a1;
    v24 = v8;
    v25 = v9;
    v26 = a3;
    v27 = v20;

    *(v17 + 4) = v27;
    a3 = v26;
    v9 = v25;
    v8 = v24;
    a1 = v23;
    v10 = v22;
    v6 = v21;
    _os_log_impl(&_mh_execute_header, v14, v32, "PCViewService event: %s", v17, 0xCu);
    sub_10000903C(v33);

    v12 = v34;
  }

  v28 = *(v6 + 48);
  *v8 = a1;
  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 16))(v8 + v28, a3, v29);
  sub_1000E6048(a1);
  sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  AsyncStream.Continuation.yield(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100251284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003511F8, &unk_100296750);
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v44 - v5;
  v7 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  v8 = __chkstk_darwin(v7 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v49 = &v44 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v44 - v13);
  __chkstk_darwin(v12);
  v51 = &v44 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392E0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003078(v20, qword_100350FE8);
  v21 = *(v17 + 16);
  v48 = a1;
  v21(v19, a1, v16);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v50 = a2;
  if (v24)
  {
    v45 = v6;
    v46 = v4;
    v25 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v25 = 136315394;
    sub_1002528E0(&qword_10033E718, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v17 + 8))(v19, v16);
    v29 = sub_100017494(v26, v28, v54);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    if (a2)
    {
      v53 = a2;
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v30 = String.init<A>(describing:)();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = v51;
    v35 = sub_100017494(v30, v32, v54);

    *(v25 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalidating %s... error=%s", v25, 0x16u);
    swift_arrayDestroy();

    v6 = v45;
    v4 = v46;
    v34 = v52;
  }

  else
  {

    (*(v17 + 8))(v19, v16);
    v33 = v51;
    v34 = v52;
  }

  swift_beginAccess();
  sub_10020935C(v48, v33);
  swift_endAccess();
  sub_100009848(v33, v14, &qword_10034B6B0, &qword_1002967F0);
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v37 = *(*(active - 8) + 48);
  v38 = v37(v14, 1, active);
  v39 = v50;
  if (v38 == 1)
  {
    sub_10025281C(v14);
  }

  else
  {
    v40 = v14[5];
    sub_100252884(v14);
    sub_10009DBD8();
  }

  v41 = v49;
  if (v39)
  {
    sub_100009848(v33, v49, &qword_10034B6B0, &qword_1002967F0);
    if (v37(v41, 1, active) != 1)
    {
      (*(v34 + 16))(v6, v41 + *(active + 24), v4);
      swift_errorRetain();
      sub_100252884(v41);
      v54[0] = v39;
LABEL_18:
      AsyncThrowingStream.Continuation.finish(throwing:)();
      (*(v34 + 8))(v6, v4);
      v42 = v33;
      return sub_10025281C(v42);
    }
  }

  else
  {
    v41 = v47;
    sub_100009848(v33, v47, &qword_10034B6B0, &qword_1002967F0);
    if (v37(v41, 1, active) != 1)
    {
      (*(v34 + 16))(v6, v41 + *(active + 24), v4);
      sub_100252884(v41);
      v54[0] = 0;
      goto LABEL_18;
    }
  }

  sub_10025281C(v33);
  v42 = v41;
  return sub_10025281C(v42);
}

uint64_t sub_1002518B8(uint64_t a1)
{
  v32 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100035D04(&qword_1003512B8, &qword_1002967F8);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v26 - v3;
  v4 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v15 = *(active - 8);
  __chkstk_darwin(active);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.id.getter();
  v18 = v34;
  swift_beginAccess();
  v19 = *(v18 + 112);
  if (*(v19 + 16))
  {

    v20 = sub_100019110(v13);
    if (v21)
    {
      sub_10025298C(*(v19 + 56) + *(v15 + 72) * v20, v9);
      (*(v11 + 8))(v13, v10);

      v22 = 0;
      goto LABEL_6;
    }
  }

  (*(v11 + 8))(v13, v10);
  v22 = 1;
LABEL_6:
  (*(v15 + 56))(v9, v22, 1, active);
  sub_100009848(v9, v7, &qword_10034B6B0, &qword_1002967F0);
  if ((*(v15 + 48))(v7, 1, active) == 1)
  {
    sub_100035D04(&qword_1003512C0, &qword_100296800);
    sub_100252928();
    swift_allocError();
    *v23 = 0xD000000000000017;
    v23[1] = 0x80000001002A7270;
    swift_willThrow();
    return sub_10025281C(v9);
  }

  else
  {
    sub_10025281C(v9);
    sub_10008CD9C(v7, v17);
    (*(v29 + 16))(v31, v33, v32);
    sub_100035D04(&qword_1003511F8, &unk_100296750);
    v25 = v27;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v28 + 8))(v25, v30);
    return sub_100252884(v17);
  }
}

uint64_t sub_100251D60@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PCUserAlertManager(0);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t PCUserAlert.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PCUserAlert.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PCUserAlert.definition.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = direct field offset for PCUserAlert.definition;
  v6 = type metadata accessor for PCUserAlertDefinition(0, *(*v3 + 80), a1, a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_100251EA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = direct field offset for PCUserAlert.id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  v7 = v4 + direct field offset for PCUserAlert.definition;
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  return v4;
}

uint64_t sub_100251F5C(uint64_t a1, uint64_t a2)
{
  v5 = direct field offset for PCUserAlert.id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = v2 + direct field offset for PCUserAlert.definition;
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  return v2;
}

uint64_t sub_10025201C()
{
  if (qword_1003392E8 != -1)
  {
    swift_once();
  }

  v1 = direct field offset for PCUserAlert.id;
  *(v0 + 24) = qword_10038B6D0;
  *(v0 + 32) = v1;

  return (_swift_task_switch)(sub_1002520BC);
}

uint64_t sub_1002520BC()
{
  sub_100251284(v0[2] + v0[4], 0);
  v1 = v0[1];

  return v1();
}

uint64_t PCUserAlert.deinit()
{
  v1 = direct field offset for PCUserAlert.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PCUserAlert.__deallocating_deinit()
{
  PCUserAlert.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100252234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = direct field offset for PCUserAlert.definition;
  v8 = type metadata accessor for PCUserAlertDefinition(0, *(a1 + 80), a2, a3);
  v9 = *(*(v8 - 8) + 16);

  return v9(a4, v6 + v7, v8);
}

uint64_t sub_1002522B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for PCUserAlert.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100252330@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100252370(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_10025241C(uint64_t a1)
{
  sub_10025253C(319, &qword_100351078, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10025253C(319, &unk_100351088, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10025253C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100035D4C(&qword_100351080, &qword_1002966F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1002525A8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002526A0(uint64_t a1)
{
  sub_10025273C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PCViewServiceHandle();
    if (v2 <= 0x3F)
    {
      sub_1002527A0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10025273C()
{
  result = qword_100351268;
  if (!qword_100351268)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100351268);
  }

  return result;
}

void sub_1002527A0(uint64_t a1)
{
  if (!qword_100351270)
  {
    type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
    sub_100035D4C(&unk_100346020, &qword_100271A00);
    v1 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &qword_100351270);
    }
  }
}

uint64_t sub_10025281C(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100252884(uint64_t a1)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_1002528E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100252928()
{
  result = qword_1003512C8;
  if (!qword_1003512C8)
  {
    sub_100035D4C(&qword_1003512C0, &qword_100296800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003512C8);
  }

  return result;
}

uint64_t sub_10025298C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1002529F0(uint64_t a1)
{
  v3 = *(sub_100035D04(&qword_1003512B0, &qword_1002967E8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100250F6C(a1, v1 + v4, v7);
}

uint64_t sub_100252AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E6584;

  return sub_10024EE44(a1, v4, v5, v6);
}

uint64_t sub_100252B84(uint64_t a1)
{
  v4 = *(sub_100035D04(&qword_1003512A8, &qword_1002967E0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009D6D4;

  return sub_10024F250(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_100252CB4(uint64_t a1)
{
  result = sub_100252CDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100252CDC()
{
  result = qword_100351338;
  if (!qword_100351338)
  {
    type metadata accessor for RapportProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100351338);
  }

  return result;
}

uint64_t sub_100252D34()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100351320);
  v1 = sub_100003078(v0, qword_100351320);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100252DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void, void))
{
  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100351320);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v23 = a8;
    v15 = swift_slowAlloc();
    v16 = a2;
    v17 = a3;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v15 = 136315138;
    v19 = static String._fromSubstring(_:)();
    v21 = sub_100017494(v19, v20, &v24);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received response for messageID: %s", v15, 0xCu);
    sub_10000903C(v18);
    a3 = v17;
    a2 = v16;

    a8 = v23;
  }

  return a8(a1, a2, a3);
}

void sub_100252FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100351320);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v12 = v16;
    *v11 = 136315138;
    v13 = static String._fromSubstring(_:)();
    v15 = sub_100017494(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Completion for messageID: %s", v11, 0xCu);
    sub_10000903C(v12);
  }

  if (a6)
  {
    a6(a1);
  }
}

uint64_t sub_100253174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, id a7)
{
  v78 = a4;
  v79 = a3;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90[3] = a6;
  v90[4] = a7;
  v16 = sub_10000F798(v90);
  v17 = *(*(a6 - 8) + 16);
  v84 = v16;
  v83 = a6;
  v17(v16, a1, a6);
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  v82 = sub_10000B584(8, v18, v20);
  v81 = v21;
  v80 = v22;
  v24 = v23;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003078(v25, qword_100351320);
  sub_10007E790(v90, aBlock);
  v26 = a2;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v77 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v88[0] = v75;
    *v30 = 136315906;
    *(v30 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v88);
    *(v30 + 12) = 2080;
    sub_10007E790(aBlock, &v85);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v32 = a5;
    v33 = String.init<A>(describing:)();
    v76 = a7;
    v35 = v34;
    sub_10000903C(aBlock);
    v36 = sub_100017494(v33, v35, v88);

    *(v30 + 14) = v36;
    a5 = v32;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v26;
    *v31 = v26;
    *(v30 + 32) = 2080;
    v37 = v26;

    v38 = static String._fromSubstring(_:)();
    v40 = v39;

    v41 = sub_100017494(v38, v40, v88);
    a7 = v76;

    *(v30 + 34) = v41;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s: request=%s, rpCLDevice=%@, messageID=%s", v30, 0x2Au);
    sub_1000030B0(v31);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v42 = (*(a7 + 2))(v83, a7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v45 = Strong;
    v46 = v44;

    if (v44)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v47 = aBlock[0];
      if (aBlock[0] && (v48 = [aBlock[0] discoveryToken], v47, v48))
      {
        sub_100159FB0();
        v49 = sub_100168F0C(v48);
        v51 = v50;

        if (v51 >> 60 != 15)
        {
          strcpy(&v85, "rangingToken");
          BYTE13(v85) = 0;
          HIWORD(v85) = -5120;
          AnyHashable.init<A>(_:)();
          v86 = &type metadata for Data;
          *&v85 = v49;
          *(&v85 + 1) = v51;
          sub_1000516B4(&v85, v88);
          sub_10006DA04(v49, v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v42;
          sub_10004D368(v88, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v49, v51);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v53 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v53)
  {

    v76 = v53;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;

      v58 = a7;
      v59 = static String._fromSubstring(_:)();
      v61 = v60;

      v62 = sub_100017494(v59, v61, aBlock);

      *(v56 + 4) = v62;
      a7 = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "Sending request with messageID: %s", v56, 0xCu);
      sub_10000903C(v57);
    }

    (*(a7 + 1))(v83, a7);
    v63 = String._bridgeToObjectiveC()();

    v64.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = [v77 effectiveIdentifier];
    if (!v65)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = String._bridgeToObjectiveC()();
    }

    v66 = swift_allocObject();
    v67 = v81;
    v66[2] = v82;
    v66[3] = v67;
    v66[4] = v80;
    v66[5] = v24;
    v68 = v78;
    v66[6] = v79;
    v66[7] = v68;
    aBlock[4] = sub_100253BA4;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_1003172A0;
    v69 = _Block_copy(aBlock);

    v70 = v76;
    [v76 sendRequestID:v63 request:v64.super.isa destinationID:v65 options:0 responseHandler:v69];
    _Block_release(v69);
  }

  else
  {

    v65 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v65, v71, "### Could not send request - no client?", v72, 2u);
    }
  }

  return sub_10000903C(v90);
}

uint64_t sub_100253C3C()
{
  sub_100253BE4();

  return swift_deallocClassInstance();
}

void *sub_100253C94()
{
  v1 = v0;
  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B240;
  v3 = sub_100035D04(&qword_1003423B0, &unk_100296970);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = sub_1000C8188(48, 0xE100000000000000, 0xD000000000000022, 0x80000001002A7380, v2);

  v1[2] = v6;
  v7 = objc_allocWithZone(sub_100035D04(&qword_1003423A8, qword_100277700));
  v8 = v5;
  v9 = sub_1000C83E0(0, 1, 0xD000000000000021, 0x80000001002A73B0, v2);

  v1[3] = v9;
  v10 = objc_allocWithZone(sub_100035D04(&qword_1003422D8, &qword_100277650));
  v11 = v8;
  v12 = sub_1000C7160(0, 0xD000000000000020, 0x80000001002A73E0, v2);

  v1[4] = v12;
  v13 = objc_allocWithZone(v3);
  v14 = v11;
  v15 = sub_1000C8188(0xD000000000000011, 0x80000001002A2BD0, 0xD00000000000001ELL, 0x80000001002A7410, v2);

  v1[5] = v15;
  v16 = objc_allocWithZone(v3);
  v17 = v14;
  v18 = sub_1000C8188(0x697665446B636F4DLL, 0xEA00000000006563, 0xD00000000000001DLL, 0x80000001002A7430, v2);

  v1[6] = v18;
  v19 = objc_allocWithZone(sub_100035D04(&qword_1003423A0, &qword_1002776F8));
  v20 = v17;
  v21 = sub_1000C8640(5, 0xD00000000000001FLL, 0x80000001002A7450, v2);

  v1[7] = v21;
  v22 = objc_allocWithZone(sub_100035D04(&qword_100342378, &qword_1002776F0));
  v23 = sub_1000C7F8C(0, 1, 0xD00000000000002CLL, 0x80000001002A7470, v2);

  v1[8] = v23;
  v24 = objc_allocWithZone(v3);
  v25 = sub_1000C8188(0, 0xE000000000000000, 0xD00000000000002ELL, 0x80000001002A74A0, v2);

  v1[9] = v25;
  return v1;
}

uint64_t sub_100253F94(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_100253FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100253FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100254040(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for TransferEvent(uint64_t a1)
{
  result = qword_100351588;
  if (!qword_100351588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002540B8(uint64_t a1)
{
  type metadata accessor for PCInteractionDirection(319);
  if (v1 <= 0x3F)
  {
    sub_10025415C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HandoffTargetStatus(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_10025415C()
{
  result = qword_100351598;
  if (!qword_100351598)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100351598);
  }

  return result;
}

unint64_t sub_1002541C0(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1002541DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100254238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100254298(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1002542D4()
{
  v1 = v0;
  v2 = type metadata accessor for HandoffTargetStatus(0);
  __chkstk_darwin(v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TransferEvent(0);
  __chkstk_darwin(v5);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100255614(v1, v7, type metadata accessor for TransferEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v7;
        v24 = v7[1];
        v25 = v7[2];
        v26 = v7[3];
        v27 = v7[4];
        v28 = v7[5];
        v29 = v7[6];
        v44 = 0;
        v45 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        v51 = v44;
        v52 = v45;
        v30._object = 0x80000001002A7570;
        v30._countAndFlagsBits = 0xD00000000000001ELL;
        String.append(_:)(v30);
        v44 = v23;
        v45 = v24;
        v46 = v25;
        v47 = v26;
        v48 = v27;
        v49 = v28;
        v50 = v29;
        _print_unlocked<A, B>(_:_:)();
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_10018C7B8(v7, v4);
          v44 = 0;
          v45 = 0xE000000000000000;
          _StringGuts.grow(_:)(34);

          v51 = 0xD00000000000001ELL;
          v52 = 0x80000001002A7510;
          v47 = v2;
          v35 = sub_10000F798(&v44);
          sub_100255614(v4, v35, type metadata accessor for HandoffTargetStatus);
          v36 = sub_1000CF5E0(&v44);
          v38 = v37;
          sub_10000903C(&v44);
          v39._countAndFlagsBits = v36;
          v39._object = v38;
          String.append(_:)(v39);

          v40._countAndFlagsBits = 10528;
          v40._object = 0xE200000000000000;
          String.append(_:)(v40);
          v41 = v51;
          sub_10025567C(v4, type metadata accessor for HandoffTargetStatus);
          return v41;
        }

        v11 = *v7;
        v12 = v7[1];
        v13 = v7[2];
        v14 = v7[3];
        v15 = v7[4];
        v16 = v7[5];
        v17 = v7[6];
        v44 = 0;
        v45 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);
        v51 = v44;
        v52 = v45;
        v18._countAndFlagsBits = 0xD000000000000017;
        v18._object = 0x80000001002A7550;
        String.append(_:)(v18);
        v44 = v11;
        v45 = v12;
        v46 = v13;
        v47 = v14;
        v48 = v15;
        v49 = v16;
        v50 = v17;
        _print_unlocked<A, B>(_:_:)();
      }

      v31._countAndFlagsBits = 10528;
      v31._object = 0xE200000000000000;
      String.append(_:)(v31);
      return v51;
    }

    if (!EnumCaseMultiPayload)
    {
      v20 = *v7;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v44 = 0xD000000000000015;
      v45 = 0x80000001002A75B0;
      v21._countAndFlagsBits = PCInteractionDirection.description.getter(v20);
      String.append(_:)(v21);

      v22._countAndFlagsBits = 10528;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      return v44;
    }

    v32 = *v7;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    v33 = 0x202864656C696166;
    v34 = 0xEE003D726F727265;
LABEL_21:
    String.append(_:)(*&v33);
    v51 = v32;
    sub_100035D04(&unk_100346020, &qword_100271A00);
    _print_unlocked<A, B>(_:_:)();
    v42._countAndFlagsBits = 10528;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);

    return v44;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 0x6574736575716572;
      }

      v9 = *v7;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v44 = 0xD000000000000011;
      v45 = 0x80000001002A74D0;
      v10._countAndFlagsBits = sub_100254D88(v9);
      String.append(_:)(v10);

      sub_1000D680C(v9);
      return v44;
    }

    v32 = *v7;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v33 = 0xD00000000000001BLL;
    v34 = 0x80000001002A74F0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 8)
  {
    return 0x64657472617473;
  }

  if (EnumCaseMultiPayload == 9)
  {
    return 0xD00000000000001FLL;
  }

  return 0xD000000000000018;
}

uint64_t sub_10025484C(uint64_t a1, int64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      _StringGuts.grow(_:)(30);

      v8 = 0xD00000000000001BLL;
    }

    else
    {
      _StringGuts.grow(_:)(20);

      v8 = 0xD000000000000011;
    }

    v16 = v8;
    v13._countAndFlagsBits = sub_100078EF8(a1, a2 & 1, a3);
    String.append(_:)(v13);
    goto LABEL_30;
  }

  if (a4 == 2)
  {
    _StringGuts.grow(_:)(19);

    v16 = 0xD000000000000010;
    if (a2 <= 1)
    {
      if (!a2)
      {
        v9 = 0xE800000000000000;
        v10 = 0x656D695465636146;
        goto LABEL_29;
      }

      if (a2 == 1)
      {
        v9 = 0xE500000000000000;
        v10 = 0x636973754DLL;
        goto LABEL_29;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v9 = 0xEB00000000676E69;
          v10 = 0x79616C5020776F4ELL;
          goto LABEL_29;
        case 3:
          v9 = 0xEF6F6D65446C6F72;
          v10 = 0x746E6F43786F7250;
          goto LABEL_29;
        case 4:
          v9 = 0xE600000000000000;
          v10 = 0x697261666153;
LABEL_29:
          sub_10009D534(a1, a2);
          v14._countAndFlagsBits = v10;
          v14._object = v9;
          String.append(_:)(v14);
LABEL_30:

          v15._countAndFlagsBits = 41;
          v15._object = 0xE100000000000000;
          String.append(_:)(v15);
          return v16;
      }
    }

    v10 = a1;
    v9 = a2;
    goto LABEL_29;
  }

  if (a4 == 3)
  {
    _StringGuts.grow(_:)(19);

    v16 = 0xD000000000000011;
    v6._countAndFlagsBits = sub_100254BB4(a1);
    String.append(_:)(v6);

    return v16;
  }

  v11 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    return 0x726566736E617274;
  }

  if (a1 == 1 && !v11)
  {
    return 0xD000000000000013;
  }

  if (a1 == 2 && !v11)
  {
    return 0xD000000000000014;
  }

  if (a1 != 3 || v11)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000016;
}

uint64_t sub_100254BB4(uint64_t a1)
{
  if (!a1)
  {
    return 0x6164696C61766E69;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000CDF40(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v5 = String.init<A>(describing:)();
      v18 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1000CDF40((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v18;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0x2865766C6F736572;
}

uint64_t sub_100254D5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_100254FC0(v2, v3);
  }
}

unint64_t sub_100254D88(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    _StringGuts.grow(_:)(19);
    v1 = 0x4665766C6F736572;
    v2 = 0xEF202864656C6961;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    _StringGuts.grow(_:)(25);
    v1 = 0xD000000000000015;
    v2 = 0x80000001002A75D0;
LABEL_5:
    String.append(_:)(*&v1);
    sub_100035D04(&unk_100346020, &qword_100271A00);
    _print_unlocked<A, B>(_:_:)();
    v3._countAndFlagsBits = 10528;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    return 0;
  }

  if (a1 == 0x8000000000000000)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_100254EDC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (*a1 == 0x8000000000000000)
    {
      if (v2 == 0x8000000000000000)
      {
        return 1;
      }
    }

    else if (v2 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100254F44(uint64_t a1)
{
  result = sub_100254F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100254F6C()
{
  result = qword_1003515C8;
  if (!qword_1003515C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003515C8);
  }

  return result;
}

uint64_t sub_100254FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_100255034(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1001AE1FC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

BOOL sub_100255274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferEvent(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v22 - v8);
  v10 = sub_100035D04(&qword_1003515D0, &qword_100296CB8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = *(v11 + 56);
  sub_100255614(a1, &v22 - v12, type metadata accessor for TransferEvent);
  sub_100255614(a2, &v13[v14], type metadata accessor for TransferEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100255614(v13, v9, type metadata accessor for TransferEvent);
      if (!swift_getEnumCaseMultiPayload())
      {
        v20 = *v9 == *&v13[v14];
        sub_10025567C(v13, type metadata accessor for TransferEvent);
        return v20;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1 && swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025567C(&v13[v14], type metadata accessor for TransferEvent);
      goto LABEL_16;
    }

LABEL_20:
    sub_1002555AC(v13);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload != 7 || swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_10025567C(v13, type metadata accessor for TransferEvent);
      return 1;
    }

    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  sub_100255614(v13, v7, type metadata accessor for TransferEvent);
  v16 = *v7;
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1000D680C(v16);
    goto LABEL_20;
  }

  v17 = *&v13[v14];
  if (!(v16 >> 62))
  {
    sub_1000D680C(v16);
    v18 = v17 >> 62 == 0;
LABEL_22:
    v21 = v18;
    goto LABEL_25;
  }

  if (v16 >> 62 == 1)
  {
    sub_1000D680C(v16);
    v18 = v17 >> 62 == 1;
    goto LABEL_22;
  }

  if (v16 == 0x8000000000000000)
  {
    if (v17 == 0x8000000000000000)
    {
LABEL_29:
      v21 = 1;
      goto LABEL_26;
    }
  }

  else if (v17 == 0x8000000000000008)
  {
    goto LABEL_29;
  }

  v21 = 0;
LABEL_25:
  sub_1000D680C(v17);
LABEL_26:
  sub_10025567C(v13, type metadata accessor for TransferEvent);
  return v21;
}

uint64_t sub_1002555AC(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003515D0, &qword_100296CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100255614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025567C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002556DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        if (a8 == 3)
        {
          if (a1)
          {
            if (a5)
            {
              v8 = *(a1 + 2);
              if (v8 == *(a5 + 16))
              {
                if (v8 && a1 != a5)
                {
                  v9 = a1 + 32;
                  v10 = (a5 + 32);
                  result = 1;
                  while (*v9 == *v10)
                  {
                    ++v9;
                    ++v10;
                    if (!--v8)
                    {
                      return result;
                    }
                  }

                  return 0;
                }

                return 1;
              }
            }
          }

          else if (!a5)
          {
            return 1;
          }
        }
      }

      else
      {
        v14 = a3 | a2;
        if (a3 | a2 | a1)
        {
          if (a1 != 1 || v14)
          {
            if (a1 != 2 || v14)
            {
              if (a1 != 3 || v14)
              {
                if (a8 != 4 || a5 != 4)
                {
                  return 0;
                }
              }

              else if (a8 != 4 || a5 != 3)
              {
                return 0;
              }
            }

            else if (a8 != 4 || a5 != 2)
            {
              return 0;
            }
          }

          else if (a8 != 4 || a5 != 1)
          {
            return 0;
          }

          if (!(a7 | a6))
          {
            return 1;
          }
        }

        else if (a8 == 4 && !(a7 | a6 | a5))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a8 != 2)
    {
      return 0;
    }

    if (a2 <= 1)
    {
      if (!a2)
      {
        return !a6;
      }

      if (a2 == 1)
      {
        return a6 == 1;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          return a6 == 2;
        case 3:
          return a6 == 3;
        case 4:
          return a6 == 4;
      }
    }

    return a6 >= 5 && (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  if (a4)
  {
    if (a8 != 1)
    {
      return 0;
    }

    v12 = a2 & 1;
    v13 = a6 & 1;
  }

  else
  {
    if (a8)
    {
      return 0;
    }

    v12 = a2 & 1;
    v13 = a6 & 1;
  }

  return sub_100079248(a1, v12, a3, a5, v13, a7);
}

unint64_t sub_100255970(uint64_t a1)
{
  result = sub_100255998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100255998()
{
  result = qword_1003515D8;
  if (!qword_1003515D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003515D8);
  }

  return result;
}

unint64_t sub_1002559F0()
{
  result = qword_1003515E0;
  if (!qword_1003515E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003515E0);
  }

  return result;
}

void sub_100255A44()
{
  v1 = v0;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003515E8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v43);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
  if (v7)
  {
    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42[0] = v11;
      *v10 = 136315138;
      v44 = type metadata accessor for CardPresentationRecord(0);
      v43[0] = v7;

      v12 = sub_100057F14(v43);
      v14 = v13;
      sub_10000903C(v43);
      v15 = sub_100017494(v12, v14, v42);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "### Found pending card: %s - sending now", v10, 0xCu);
      sub_10000903C(v11);
    }

    sub_1001D8AE4();
  }

  v16 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17)
  {
    swift_retain_n();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41[0] = v21;
      *v20 = 136315138;
      v44 = type metadata accessor for EducationPresentationRecord(0);
      v43[0] = v17;

      v22 = sub_100057F8C(v43);
      v24 = v23;
      sub_10000903C(v43);
      v25 = sub_100017494(v22, v24, v41);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "### Found pending education: %s - sending now", v20, 0xCu);
      sub_10000903C(v21);
    }

    sub_1001DC4FC();
  }

  v26 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
  swift_beginAccess();
  v27 = *(v1 + v26);
  if (v27)
  {
    swift_retain_n();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      v44 = type metadata accessor for HintPresentationRecord(0);
      v43[0] = v27;

      v32 = sub_100057F50(v43);
      v34 = v33;
      sub_10000903C(v43);
      v35 = sub_100017494(v32, v34, &v40);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "### Found pending card: %s - sending now", v30, 0xCu);
      sub_10000903C(v31);
    }

    sub_1002471E8();
  }

  v36 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_published;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_published))
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "### Attempted double-publish", v39, 2u);
    }
  }

  else
  {
    sub_10025DBDC(v43);
    sub_100117FCC();
    sub_10025F19C(v43);
    *(v1 + v36) = 1;
  }
}

void sub_100255FF0(void (*a1)(uint64_t *, void, uint64_t, uint64_t), void (*a2)(void, void, void), unint64_t a3)
{
  v359 = a3;
  v5 = sub_100035D04(&qword_100345618, &qword_10027C938);
  v6 = __chkstk_darwin(v5 - 8);
  v345 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v344 = (&v329 - v8);
  v341 = type metadata accessor for TransferEvent(0);
  v9 = __chkstk_darwin(v341);
  v343 = &v329 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v342 = &v329 - v11;
  v12 = sub_100035D04(&qword_100350C60, &qword_100296120);
  v13 = __chkstk_darwin(v12 - 8);
  v331 = &v329 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v330 = (&v329 - v15);
  v16 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  v17 = __chkstk_darwin(v16 - 8);
  v335 = &v329 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v338 = (&v329 - v19);
  v20 = sub_100035D04(&qword_10034BE80, &unk_10028B4E0);
  __chkstk_darwin(v20 - 8);
  v334 = &v329 - v21;
  v22 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  __chkstk_darwin(v22 - 8);
  v337 = &v329 - v23;
  v24 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v25 = __chkstk_darwin(v24 - 8);
  v347 = &v329 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v349 = &v329 - v27;
  v28 = sub_100035D04(&qword_10034BE88, &unk_10028B620);
  v29 = __chkstk_darwin(v28 - 8);
  v333 = &v329 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v332 = &v329 - v32;
  v33 = __chkstk_darwin(v31);
  v339 = &v329 - v34;
  __chkstk_darwin(v33);
  v348 = &v329 - v35;
  v355 = type metadata accessor for ExperienceEvent(0);
  v336 = *(v355 - 8);
  v36 = __chkstk_darwin(v355);
  v351 = &v329 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v356 = &v329 - v39;
  __chkstk_darwin(v38);
  v353 = &v329 - v40;
  v350 = type metadata accessor for ExperienceEffect(0);
  v41 = __chkstk_darwin(v350);
  v352 = &v329 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v354 = &v329 - v43;
  v357 = sub_100035D04(&qword_100351BA0, &qword_100297018);
  __chkstk_darwin(v357);
  v45 = &v329 - v44;
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v329 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = type metadata accessor for SessionEvent(0);
  v50 = __chkstk_darwin(v364);
  v358 = (&v329 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __chkstk_darwin(v50);
  v54 = &v329 - v53;
  __chkstk_darwin(v52);
  v56 = &v329 - v55;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_100003078(v57, qword_1003515E8);
  v365 = a1;
  sub_10025F520(a1, v56, type metadata accessor for SessionEvent);
  v59 = *(v47 + 16);
  v362 = v47 + 16;
  v361 = v59;
  v59(v49, a2, v46);
  v346 = v58;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v360 = v46;
  if (v62)
  {
    v340 = a2;
    v63 = swift_slowAlloc();
    v329 = swift_slowAlloc();
    *&v367 = v329;
    *v63 = 136315906;
    *(v63 + 4) = sub_100017494(0xD000000000000029, 0x80000001002A7970, &v367);
    *(v63 + 12) = 2080;
    sub_10025F520(v56, v54, type metadata accessor for SessionEvent);
    v64 = String.init<A>(describing:)();
    v66 = v65;
    sub_10025F588(v56, type metadata accessor for SessionEvent);
    v67 = sub_100017494(v64, v66, &v367);
    v46 = v360;

    *(v63 + 14) = v67;
    *(v63 + 22) = 2080;
    sub_10015CC9C();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    (*(v47 + 8))(v49, v46);
    v71 = sub_100017494(v68, v70, &v367);

    *(v63 + 24) = v71;
    *(v63 + 32) = 2080;
    v72 = v359;
    if ((v359 & 0x100000000) != 0)
    {
      v73 = 0xE300000000000000;
      v74 = 7104878;
    }

    else
    {
      v366 = v359;
      v74 = String.init<A>(describing:)();
      v73 = v75;
    }

    v76 = sub_100017494(v74, v73, &v367);

    *(v63 + 34) = v76;
    _os_log_impl(&_mh_execute_header, v60, v61, "%s: event=%s, timestamp=%s, distance=%s", v63, 0x2Au);
    swift_arrayDestroy();

    a2 = v340;
  }

  else
  {

    (*(v47 + 8))(v49, v46);
    sub_10025F588(v56, type metadata accessor for SessionEvent);
    v72 = v359;
  }

  sub_10025F520(v365, v45, type metadata accessor for SessionEvent);
  v77 = v357;
  v78 = a2;
  v361(&v45[*(v357 + 28)], a2, v46);
  v79 = &v45[*(v77 + 32)];
  *v79 = v72;
  v80 = HIDWORD(v72) & 1;
  v79[4] = v80;
  v81 = v363;
  swift_beginAccess();
  v82 = *(v81 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v81 + 64) = v82;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v82 = sub_1000AFDC0(0, v82[2] + 1, 1, v82);
    *(v81 + 64) = v82;
  }

  v85 = v82[2];
  v84 = v82[3];
  if (v85 >= v84 >> 1)
  {
    v82 = sub_1000AFDC0((v84 > 1), v85 + 1, 1, v82);
    *(v81 + 64) = v82;
  }

  *(&v368 + 1) = v77;
  *v369 = sub_10025F40C();
  v86 = sub_10000F798(&v367);
  sub_100009848(v45, v86, &qword_100351BA0, &qword_100297018);
  v82[2] = v85 + 1;
  sub_10000E754(&v367, &v82[5 * v85 + 4]);
  sub_1000097E8(v45, &qword_100351BA0, &qword_100297018);
  *(v81 + 64) = v82;
  swift_endAccess();
  v87 = v358;
  sub_10025F520(v365, v358, type metadata accessor for SessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v89 = v360;
    if (!EnumCaseMultiPayload)
    {
      v90 = *(sub_100035D04(&qword_10033B528, &unk_100272000) + 48);
      v91 = v354;
      sub_10025F4B8(v87, v354, type metadata accessor for ExperienceEffect);
      v92 = v353;
      sub_10025F4B8(v87 + v90, v353, type metadata accessor for ExperienceEvent);
      v93 = v352;
      sub_10025F520(v91, v352, type metadata accessor for ExperienceEffect);
      v94 = swift_getEnumCaseMultiPayload();
      if (v94 > 4)
      {
        if (v94 <= 7)
        {
          if (v94 != 6)
          {
            goto LABEL_137;
          }

          goto LABEL_51;
        }

        if (v94 == 9)
        {
LABEL_51:
          sub_10025F588(v92, type metadata accessor for ExperienceEvent);
          v121 = type metadata accessor for ExperienceEffect;
          v122 = type metadata accessor for ExperienceEffect;
          v123 = v91;
LABEL_56:
          v124 = v121;
LABEL_57:
          sub_10025F588(v123, v124);
          v118 = v93;
          v117 = v122;
          goto LABEL_139;
        }

        goto LABEL_137;
      }

      if (v94 <= 1)
      {
        if (v94)
        {
          goto LABEL_137;
        }

        v143 = v93[16];
        if (v143 < 0)
        {
          sub_100094CB0(*v93, *(v93 + 1), v143);
          goto LABEL_137;
        }

        if (!*v93)
        {
          sub_10025D1D4(v78, v359 | (v80 << 32), v92);
          goto LABEL_137;
        }

        if (*v93 != 1)
        {
LABEL_137:
          v180 = v92;
          goto LABEL_138;
        }

        v144 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
        swift_beginAccess();
        v145 = *(v81 + v144);
        if (v145)
        {
          swift_endAccess();
          v146 = v337;
          sub_10025F520(v92, v337, type metadata accessor for ExperienceEvent);
          (*(v336 + 56))(v146, 0, 1, v355);
          v147 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger;
          swift_beginAccess();

          sub_10011D5D8(v146, v145 + v147, &qword_100342A10, &qword_100278A10);
          swift_endAccess();
          sub_1002478CC();
LABEL_95:

          sub_1000097E8(v146, &qword_100342A10, &qword_100278A10);
          v180 = v92;
LABEL_138:
          sub_10025F588(v180, type metadata accessor for ExperienceEvent);
          v117 = type metadata accessor for ExperienceEffect;
          v118 = v91;
          goto LABEL_139;
        }

        goto LABEL_129;
      }

      if (v94 != 2)
      {
        if (v94 == 3)
        {
          goto LABEL_51;
        }

        v119 = 0;
        v120 = *v93;
        if (v120 > 3)
        {
          if (v120 == 4)
          {
            v119 = 2;
          }

          else if (v120 == 5)
          {
            v119 = 3;
          }
        }

        else if (v120 == 2)
        {
          v119 = 1;
        }

        else if (v120 == 3)
        {
          goto LABEL_137;
        }

        sub_100037298(v119);
        goto LABEL_137;
      }

      v173 = *v93;
      v174 = *(v81 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
      if (v173 == 5)
      {
        v146 = v337;
        v175 = v336;
        if (v174)
        {
          sub_10025F520(v92, v337, type metadata accessor for ExperienceEvent);
          (*(v175 + 56))(v146, 0, 1, v355);
          v176 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger;
          swift_beginAccess();

          sub_10011D5D8(v146, v174 + v176, &qword_100342A10, &qword_100278A10);
          swift_endAccess();
          sub_1001D90FC();

          sub_1000097E8(v146, &qword_100342A10, &qword_100278A10);
        }

        v177 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        swift_beginAccess();
        v178 = *(v81 + v177);
        if (v178)
        {
          swift_endAccess();
          sub_10025F520(v92, v146, type metadata accessor for ExperienceEvent);
          (*(v175 + 56))(v146, 0, 1, v355);
          v179 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger;
          swift_beginAccess();

          sub_10011D5D8(v146, v178 + v179, &qword_100342A10, &qword_100278A10);
          swift_endAccess();
          sub_1001DC72C();
          goto LABEL_95;
        }

LABEL_129:
        sub_10025F588(v92, type metadata accessor for ExperienceEvent);
        v222 = v91;
LABEL_130:
        sub_10025F588(v222, type metadata accessor for ExperienceEffect);
        swift_endAccess();
        return;
      }

      if (!v174)
      {
        sub_10025BF40(v78, v359 | (v80 << 32), v92);
      }

      v181 = v348;
      v182 = v339;
      if (v173 != 3)
      {
        if (v173 == 4)
        {
          sub_10025F588(v353, type metadata accessor for ExperienceEvent);
          v117 = type metadata accessor for ExperienceEffect;
          v118 = v354;
          goto LABEL_139;
        }

        v234 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        swift_beginAccess();
        v91 = v354;
        v92 = v353;
        if (!*(v81 + v234))
        {
          sub_10025C9A4(v78, v359 | (v80 << 32), v353);
        }

        if (v173)
        {
          if (v173 == 1)
          {
            goto LABEL_137;
          }

          swift_beginAccess();
          v235 = *(v81 + v234);
          if (v235)
          {
            swift_endAccess();
            v236 = v349;
            v361(v349, v78, v89);
            v237 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
            (*(*(v237 - 8) + 56))(v236, 0, 1, v237);
            v238 = &OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
LABEL_190:
            v303 = *v238;
            swift_beginAccess();

            sub_1000097E8(v235 + v303, &qword_100345620, &unk_10027C940);
            sub_10003693C(v236, v235 + v303, &qword_100345620, &unk_10027C940);
            swift_endAccess();
            sub_10025F588(v92, type metadata accessor for ExperienceEvent);
            v163 = type metadata accessor for ExperienceEffect;
            v164 = v91;
            goto LABEL_191;
          }
        }

        else
        {
          swift_beginAccess();
          v235 = *(v81 + v234);
          if (v235)
          {
            swift_endAccess();
            v236 = v349;
            v361(v349, v78, v89);
            v302 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
            (*(*(v302 - 8) + 56))(v236, 0, 1, v302);
            v238 = &OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
            goto LABEL_190;
          }
        }

        sub_10025F588(v92, type metadata accessor for ExperienceEvent);
        sub_10025F588(v91, type metadata accessor for ExperienceEffect);
        swift_endAccess();
        return;
      }

      v228 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
      swift_beginAccess();
      v229 = *(v81 + v228);
      if (!v229)
      {
        sub_10025F588(v353, type metadata accessor for ExperienceEvent);
        v222 = v354;
        goto LABEL_130;
      }

      swift_endAccess();
      v230 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
      v361(&v181[*(v230 + 28)], v78, v89);
      *v181 = xmmword_100296DE0;
      (*(*(v230 - 8) + 56))(v181, 0, 1, v230);
      sub_100009848(v181, v182, &qword_10034BE88, &unk_10028B620);
      v231 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
      swift_beginAccess();

      sub_10011D5D8(v182, v229 + v231, &qword_10034BE88, &unk_10028B620);
      swift_endAccess();
      sub_1001DC4FC();
      sub_1000097E8(v182, &qword_10034BE88, &unk_10028B620);
      sub_1000097E8(v181, &qword_10034BE88, &unk_10028B620);
      sub_10025F588(v353, type metadata accessor for ExperienceEvent);
      v232 = type metadata accessor for ExperienceEffect;
      v233 = &v369[24];
      goto LABEL_197;
    }

    v113 = v356;
    sub_10025F4B8(v87, v356, type metadata accessor for ExperienceEvent);
    v93 = v351;
    sub_10025F520(v113, v351, type metadata accessor for ExperienceEvent);
    v114 = swift_getEnumCaseMultiPayload();
    if (v114 <= 4)
    {
      if (v114 > 1)
      {
        if (v114 == 2)
        {
          goto LABEL_38;
        }

        if (v114 == 3)
        {
          v115 = *v93;
          if (v115 <= 2)
          {
            if (*v93)
            {
              if (v115 == 1)
              {
                v116 = 16;
              }

              else
              {
                v116 = 15;
              }

              goto LABEL_154;
            }
          }

          else if (v115 - 4 >= 6)
          {
            v116 = 17;
LABEL_154:
            sub_100037298(v116);
          }

LABEL_38:
          v117 = type metadata accessor for ExperienceEvent;
          v118 = v113;
          goto LABEL_139;
        }

LABEL_55:
        v121 = type metadata accessor for ExperienceEvent;
        v122 = type metadata accessor for ExperienceEvent;
        v123 = v113;
        goto LABEL_56;
      }

      if (!v114)
      {
        v126 = *v93;
        v125 = *(v93 + 1);
        v127 = v93[16];
        v128 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
        v129 = v363;
        swift_beginAccess();
        v130 = *(v129 + v128);
        if (v130)
        {
          if ((v127 & 0x80) == 0)
          {
            if (v127 <= 1)
            {
              v223 = v360;
              if (v127)
              {
                v297 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
                v298 = v348;
                v361(&v348[*(v297 + 28)], v78, v223);
                *v298 = v126;
                v298[1] = v125;
                (*(*(v297 - 8) + 56))(v298, 0, 1, v297);
                v299 = v339;
                sub_100009848(v298, v339, &qword_10034BE88, &unk_10028B620);
                v300 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied;
                swift_beginAccess();

                sub_10025F470(v126, v125, 1);
                sub_10011D5D8(v299, v130 + v300, &qword_10034BE88, &unk_10028B620);
                swift_endAccess();
                sub_1002471E8();
                sub_1000097E8(v299, &qword_10034BE88, &unk_10028B620);
                sub_1000097E8(v298, &qword_10034BE88, &unk_10028B620);
                v137 = v126;
                v138 = v125;
                v139 = 1;
              }

              else
              {
                v224 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
                v225 = v338;
                v361(v338 + *(v224 + 28), v78, v223);
                *v225 = v126;
                (*(*(v224 - 8) + 56))(v225, 0, 1, v224);
                v226 = v335;
                sub_100009848(v225, v335, &qword_10034BE70, &unk_10028B4C0);
                v227 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed;
                swift_beginAccess();

                sub_10025F470(v126, v125, 0);
                sub_10011D5D8(v226, v130 + v227, &qword_10034BE70, &unk_10028B4C0);
                swift_endAccess();
                sub_1002471E8();
                sub_1000097E8(v226, &qword_10034BE70, &unk_10028B4C0);
                sub_1000097E8(v225, &qword_10034BE70, &unk_10028B4C0);
                v137 = v126;
                v138 = v125;
                v139 = 0;
              }

              goto LABEL_183;
            }

            v131 = v360;
            if (v127 == 2)
            {
              sub_1000D65DC(v126, v125, 2);
              goto LABEL_38;
            }

            if (v127 == 3)
            {
              v132 = sub_100035D04(&unk_100350B60, &unk_1002960B0);
              v133 = v330;
              v361(v330 + *(v132 + 28), v78, v131);
              *v133 = v126;
              v133[1] = v125;
              v134 = v133 + *(v132 + 32);
              *v134 = v359;
              v134[4] = v80;
              (*(*(v132 - 8) + 56))(v133, 0, 1, v132);
              v135 = v331;
              sub_100009848(v133, v331, &qword_100350C60, &qword_100296120);
              v136 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed;
              swift_beginAccess();

              sub_10025F470(v126, v125, 3);
              sub_10011D5D8(v135, v130 + v136, &qword_100350C60, &qword_100296120);
              swift_endAccess();
              sub_1002471E8();
              sub_1000097E8(v135, &qword_100350C60, &qword_100296120);
              sub_1000097E8(v133, &qword_100350C60, &qword_100296120);
              v137 = v126;
              v138 = v125;
              v139 = 3;
LABEL_183:
              sub_1000D65DC(v137, v138, v139);
              v232 = type metadata accessor for ExperienceEvent;
              v301 = v113;
LABEL_198:
              sub_10025F588(v301, v232);
              goto LABEL_199;
            }

            if (v126 <= 1)
            {
              if (!(v126 | v125))
              {
                v311 = v334;
                v361(v334, v78, v360);
                v312 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
                v313 = v311 + *(v312 + 32);
                *v313 = v359;
                *(v313 + 4) = v80;
                (*(*(v312 - 8) + 56))(v311, 0, 1, v312);
                v314 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested;
                swift_beginAccess();

                sub_1000097E8(v130 + v314, &qword_10034BE80, &unk_10028B4E0);
                sub_10003693C(v311, v130 + v314, &qword_10034BE80, &unk_10028B4E0);
                swift_endAccess();
                v137 = v126;
                v138 = v125;
                v139 = 4;
                goto LABEL_183;
              }

              v320 = v334;
              v361(v334, v78, v360);
              v321 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v322 = v320 + *(v321 + 32);
              *v322 = v359;
              *(v322 + 4) = v80;
              (*(*(v321 - 8) + 56))(v320, 0, 1, v321);
              v323 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting;
              swift_beginAccess();

              sub_1000097E8(v130 + v323, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v320, v130 + v323, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              v319 = 4;
            }

            else
            {
              if (v126 ^ 2 | v125)
              {
                goto LABEL_208;
              }

              v315 = v334;
              v361(v334, v78, v360);
              v316 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v317 = v315 + *(v316 + 32);
              *v317 = v359;
              *(v317 + 4) = v80;
              (*(*(v316 - 8) + 56))(v315, 0, 1, v316);
              v318 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented;
              swift_beginAccess();

              sub_1000097E8(v130 + v318, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v315, v130 + v318, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              v319 = 5;
            }

            sub_100037298(v319);

LABEL_208:
            sub_1000D65DC(v126, v125, 4);
            goto LABEL_38;
          }
        }

        else
        {
          v183 = Logger.logObject.getter();
          v184 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v183, v184))
          {
            sub_1000D65DC(v126, v125, v127);

            goto LABEL_38;
          }

          v185 = swift_slowAlloc();
          *v185 = 0;
          _os_log_impl(&_mh_execute_header, v183, v184, "### No active hintPresentation?", v185, 2u);
        }

        sub_1000D65DC(v126, v125, v127);
        goto LABEL_38;
      }

      v148 = *(v93 + 1);
      v367 = *v93;
      v368 = v148;
      *v369 = *(v93 + 2);
      *&v369[9] = *(v93 + 41);
      v149 = *(v363 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
      if (!v149)
      {
        sub_100231D28(&v367);
        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          *v188 = 0;
          _os_log_impl(&_mh_execute_header, v186, v187, "### No active cardPresentation?", v188, 2u);
        }

        goto LABEL_115;
      }

      v150 = v367;
      v151 = v368;
      v152 = *v369;
      v153 = *&v369[8];
      v154 = *&v369[16];
      v155 = v369[24] >> 5;
      if (v155 > 1)
      {
        v156 = v338;
        if (v155 != 2)
        {
          if (v155 == 3)
          {
            if (v367 >= 2u)
            {
              v157 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
              v158 = v363;
              swift_beginAccess();
              v159 = *(v158 + v157);
              if (v159)
              {
                swift_endAccess();
                v160 = v349;
                v361(v349, v78, v360);
                v161 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
                (*(*(v161 - 8) + 56))(v160, 0, 1, v161);
                v162 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack;
                swift_beginAccess();

                sub_1000097E8(v159 + v162, &qword_100345620, &unk_10027C940);
                sub_10003693C(v160, v159 + v162, &qword_100345620, &unk_10027C940);
                swift_endAccess();

                v163 = type metadata accessor for ExperienceEvent;
                v164 = v356;
LABEL_191:
                sub_10025F588(v164, v163);

                return;
              }

              sub_10025F588(v356, type metadata accessor for ExperienceEvent);
              swift_endAccess();
LABEL_199:

              return;
            }
          }

          else
          {
            if (!(v368 | *(&v367 + 1) | v367 | *(&v368 + 1) | *v369 | *&v369[8] | *&v369[16]) && v369[24] == 128)
            {
              v257 = v334;
              v361(v334, v78, v360);
              v258 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v259 = v257 + *(v258 + 32);
              *v259 = v359;
              *(v259 + 4) = v80;
              (*(*(v258 - 8) + 56))(v257, 0, 1, v258);
              v260 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
              swift_beginAccess();

              sub_1000097E8(v149 + v260, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v257, v149 + v260, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              sub_10025F588(v356, type metadata accessor for ExperienceEvent);
              goto LABEL_199;
            }

            sub_100037298(19);
          }

LABEL_115:
          v117 = type metadata accessor for ExperienceEvent;
          v118 = v356;
          goto LABEL_139;
        }

        v363 = *(v363 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
        v239 = *(&v367 + 1);
        if ((v369[24] & 0x1F) != 0)
        {
          if ((v369[24] & 0x1F) != 1)
          {
            if (!(v368 | *(&v367 + 1) | v367 | *(&v368 + 1) | *v369 | *&v369[8] | *&v369[16]))
            {
              v324 = v334;
              v361(v334, v78, v360);
              v325 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v326 = v324 + *(v325 + 32);
              *v326 = v359;
              *(v326 + 4) = v80;
              (*(*(v325 - 8) + 56))(v324, 0, 1, v325);
              v327 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested;
              v328 = v363;
              swift_beginAccess();

              sub_1000097E8(v328 + v327, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v324, v328 + v327, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              sub_100231D28(&v367);
              sub_10025F588(v356, type metadata accessor for ExperienceEvent);

              return;
            }

            v240 = v363;
            if (v367 == 1 && !(v368 | *(&v367 + 1) | *(&v368 + 1) | *v369 | *&v369[8] | *&v369[16]))
            {
              v241 = v349;
              v361(v349, v78, v360);
              v242 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
              (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
              v243 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded;
              swift_beginAccess();

              sub_1000097E8(v240 + v243, &qword_100345620, &unk_10027C940);
              sub_10003693C(v241, v240 + v243, &qword_100345620, &unk_10027C940);
              swift_endAccess();
              sub_100037298(18);
            }
          }

          sub_100231D28(&v367);
          goto LABEL_115;
        }

        sub_1000982F8();
        v304 = swift_allocError();
        *v305 = v150;
        *(v305 + 8) = v239;
        *(v305 + 16) = v151;
        *(v305 + 32) = v152;
        *(v305 + 40) = v153;
        *(v305 + 48) = v154;
        v306 = v156;
        v307 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
        v361(v306 + *(v307 + 28), v78, v360);
        *v306 = v304;
        (*(*(v307 - 8) + 56))(v306, 0, 1, v307);
        v308 = v335;
        sub_100009848(v306, v335, &qword_10034BE70, &unk_10028B4C0);
        v309 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
        v310 = v363;
        swift_beginAccess();

        sub_100051520(&v367, &v366);
        swift_errorRetain();
        sub_10011D5D8(v308, v310 + v309, &qword_10034BE70, &unk_10028B4C0);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v308, &qword_10034BE70, &unk_10028B4C0);
        sub_1000097E8(v306, &qword_10034BE70, &unk_10028B4C0);
        goto LABEL_194;
      }

      v207 = *(&v367 + 1);
      v208 = v338;
      v340 = v78;
      v364 = *(&v367 + 1);
      v365 = v367;
      if (v155)
      {
        v359 = sub_1000982F8();
        v261 = swift_allocError();
        v262 = v150;
        v263 = v261;
        *v264 = v262;
        *(v264 + 8) = v207;
        *(v264 + 16) = v151;
        *(v264 + 32) = v152;
        *(v264 + 40) = v153;
        *(v264 + 48) = v154;
        v265 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
        v361(v208 + *(v265 + 28), v78, v360);
        *v208 = v263;
        v266 = *(v265 - 8);
        v267 = *(v266 + 56);
        v358 = v265;
        v357 = v267;
        v355 = v266 + 56;
        v267(v208, 0, 1, v265);
        v268 = v335;
        sub_100009848(v208, v335, &qword_10034BE70, &unk_10028B4C0);
        v269 = v208;
        v270 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
        swift_beginAccess();
        sub_100051520(&v367, &v366);

        sub_100051520(&v367, &v366);
        swift_errorRetain();
        sub_10011D5D8(v268, v149 + v270, &qword_10034BE70, &unk_10028B4C0);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v268, &qword_10034BE70, &unk_10028B4C0);
        sub_1000097E8(v269, &qword_10034BE70, &unk_10028B4C0);

        v271 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v272 = v363;
        swift_beginAccess();
        v273 = *(v272 + v271);
        if (v273)
        {
          swift_endAccess();
          v274 = swift_allocError();
          v275 = v364;
          *v276 = v365;
          *(v276 + 8) = v275;
          *(v276 + 16) = v151;
          *(v276 + 32) = v152;
          *(v276 + 40) = v153;
          *(v276 + 48) = v154;
          v277 = v358;
          v278 = v338;
          v361(v338 + *(v358 + 7), v340, v360);
          *v278 = v274;
          (v357)(v278, 0, 1, v277);
          v279 = v335;
          sub_100009848(v278, v335, &qword_10034BE70, &unk_10028B4C0);
          v280 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
          swift_beginAccess();

          swift_errorRetain();
          sub_10011D5D8(v279, v273 + v280, &qword_10034BE70, &unk_10028B4C0);
          swift_endAccess();
          sub_1001DC4FC();
          sub_1000097E8(v279, &qword_10034BE70, &unk_10028B4C0);
          sub_1000097E8(v278, &qword_10034BE70, &unk_10028B4C0);

LABEL_194:

          goto LABEL_195;
        }
      }

      else
      {
        v209 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
        v210 = v348;
        v211 = v78;
        v212 = v361;
        v361(&v348[*(v209 + 28)], v211, v360);
        *v210 = v150;
        *(v210 + 1) = v207;
        v213 = *(v209 - 8);
        v214 = *(v213 + 56);
        v359 = v213 + 56;
        v214(v210, 0, 1, v209);
        v215 = v339;
        sub_100009848(v210, v339, &qword_10034BE88, &unk_10028B620);
        v216 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
        swift_beginAccess();
        sub_100051520(&v367, &v366);

        sub_100051520(&v367, &v366);
        sub_10011D5D8(v215, v149 + v216, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v215, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v210, &qword_10034BE88, &unk_10028B620);
        v217 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v218 = v363;
        swift_beginAccess();
        v219 = *(v218 + v217);
        if (v219)
        {
          swift_endAccess();
          v212(&v210[*(v209 + 28)], v340, v360);
          v220 = v364;
          *v210 = v365;
          *(v210 + 1) = v220;
          v214(v210, 0, 1, v209);
          sub_100009848(v210, v215, &qword_10034BE88, &unk_10028B620);
          v221 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
          swift_beginAccess();

          sub_10011D5D8(v215, v219 + v221, &qword_10034BE88, &unk_10028B620);
          swift_endAccess();
          sub_1001DC4FC();
          sub_1000097E8(v215, &qword_10034BE88, &unk_10028B620);
          sub_1000097E8(v210, &qword_10034BE88, &unk_10028B620);

LABEL_195:
          sub_100231D28(&v367);
          goto LABEL_196;
        }
      }

      sub_10025F588(v356, type metadata accessor for ExperienceEvent);
      swift_endAccess();
      sub_100231D28(&v367);

      sub_100231D28(&v367);
      return;
    }

    if (v114 <= 7)
    {
      if (v114 != 5)
      {
        goto LABEL_38;
      }

      goto LABEL_55;
    }

    if (v114 == 8)
    {
      v140 = v342;
      sub_10025F4B8(v93, v342, type metadata accessor for TransferEvent);
      v93 = v343;
      sub_10025F520(v140, v343, type metadata accessor for TransferEvent);
      v141 = swift_getEnumCaseMultiPayload();
      if (v141 <= 4)
      {
        if (!v141)
        {
          v142 = 22;
          goto LABEL_176;
        }
      }

      else
      {
        if (v141 > 7)
        {
          if (v141 != 8)
          {
            goto LABEL_177;
          }

          v142 = 21;
LABEL_176:
          sub_100037298(v142);
LABEL_177:
          sub_10025F588(v140, type metadata accessor for TransferEvent);
          goto LABEL_38;
        }

        if (v141 != 5 && v141 != 6)
        {
          v142 = 20;
          goto LABEL_176;
        }
      }

      v122 = type metadata accessor for TransferEvent;
      sub_10025F588(v140, type metadata accessor for TransferEvent);
      v124 = type metadata accessor for ExperienceEvent;
      v123 = v113;
      goto LABEL_57;
    }

    if (v114 != 9)
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v165 = *v93;
    v166 = *(v363 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
    v167 = v348;
    v168 = v345;
    v169 = v344;
    if (!v166)
    {
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&_mh_execute_header, v189, v190, "### No active cardPresentation?", v191, 2u);

        sub_1000E605C(v165);
      }

      else
      {
        sub_1000E605C(v165);
      }

      goto LABEL_38;
    }

    if (v165 > 1)
    {
      if (v165 == 2)
      {
        v170 = v349;
        (v361)();
        v295 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
        (*(*(v295 - 8) + 56))(v170, 0, 1, v295);
        v172 = &OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated;
        goto LABEL_173;
      }

      if (v165 != 3)
      {
        goto LABEL_161;
      }

      v192 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
      swift_beginAccess();
      v193 = v332;
      sub_100009848(v166 + v192, v332, &qword_10034BE88, &unk_10028B620);
      v194 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
      v195 = *(v194 - 8);
      if ((*(v195 + 48))(v193, 1, v194) == 1)
      {

        sub_1000097E8(v193, &qword_10034BE88, &unk_10028B620);
        v196 = &v167[*(v194 + 28)];
        v197 = v167;
        v340 = v78;
        v198 = v78;
        v199 = v361;
        v361(v196, v198, v360);
        *v167 = 0xD000000000000017;
        *(v167 + 1) = 0x80000001002A7950;
        v365 = 0x80000001002A7950;
        v200 = *(v195 + 56);
        v200(v167, 0, 1, v194);
        v201 = v167;
        v202 = v339;
        sub_100009848(v201, v339, &qword_10034BE88, &unk_10028B620);
        swift_beginAccess();
        sub_10011D5D8(v202, v166 + v192, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v202, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v197, &qword_10034BE88, &unk_10028B620);
        v203 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v204 = v363;
        swift_beginAccess();
        v205 = *(v204 + v203);
        if (!v205)
        {
          sub_10025F588(v356, type metadata accessor for ExperienceEvent);
          swift_endAccess();
          goto LABEL_199;
        }

        swift_endAccess();
        v199(&v197[*(v194 + 28)], v340, v360);
        *v197 = 0xD000000000000017;
        *(v197 + 1) = v365;
        v200(v197, 0, 1, v194);
        sub_100009848(v197, v202, &qword_10034BE88, &unk_10028B620);
        v206 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
        swift_beginAccess();

        sub_10011D5D8(v202, v205 + v206, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001DC4FC();
        sub_1000097E8(v202, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v197, &qword_10034BE88, &unk_10028B620);

        goto LABEL_196;
      }
    }

    else
    {
      if (v165)
      {
        if (v165 == 1)
        {
          v170 = v349;
          (v361)();
          v171 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
          (*(*(v171 - 8) + 56))(v170, 0, 1, v171);
          v172 = &OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested;
LABEL_173:
          v296 = *v172;
          swift_beginAccess();

          sub_1000097E8(v166 + v296, &qword_100345620, &unk_10027C940);
          sub_10003693C(v170, v166 + v296, &qword_100345620, &unk_10027C940);
          swift_endAccess();
          sub_10025F588(v113, type metadata accessor for ExperienceEvent);
          goto LABEL_199;
        }

LABEL_161:
        v244 = sub_100035D04(&unk_100345508, &qword_10027C860);
        v245 = v169 + *(v244 + 28);
        v340 = v78;
        v246 = v78;
        v247 = v169;
        v248 = v361;
        v361(v245, v246, v89);
        *v169 = v165;
        v249 = *(v244 - 8);
        v365 = *(v249 + 56);
        v364 = v249 + 56;
        v365(v169, 0, 1, v244);
        sub_100009848(v169, v168, &qword_100345618, &qword_10027C938);
        v250 = v168;
        v251 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
        swift_beginAccess();
        sub_1000E6048(v165);

        sub_1000E6048(v165);
        sub_10011D5D8(v250, v166 + v251, &qword_100345618, &qword_10027C938);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v250, &qword_100345618, &qword_10027C938);
        sub_1000097E8(v169, &qword_100345618, &qword_10027C938);
        v252 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v253 = v363;
        swift_beginAccess();
        v254 = *(v253 + v252);
        if (!v254)
        {
          sub_10025F588(v356, type metadata accessor for ExperienceEvent);
          swift_endAccess();
          sub_1000E605C(v165);

          sub_1000E605C(v165);
          return;
        }

        swift_endAccess();
        v248(v247 + *(v244 + 28), v340, v360);
        *v247 = v165;
        v365(v247, 0, 1, v244);
        sub_100009848(v247, v250, &qword_100345618, &qword_10027C938);
        v255 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed;
        swift_beginAccess();
        sub_1000E6048(v165);

        sub_10011D5D8(v250, v254 + v255, &qword_100345618, &qword_10027C938);
        swift_endAccess();
        sub_1001DC4FC();
        sub_1000097E8(v250, &qword_100345618, &qword_10027C938);
        sub_1000097E8(v247, &qword_100345618, &qword_10027C938);

        sub_1000E605C(v165);
        v256 = v165;
LABEL_171:
        sub_1000E605C(v256);
LABEL_196:
        v232 = type metadata accessor for ExperienceEvent;
        v233 = &v370;
LABEL_197:
        v301 = *(v233 - 32);
        goto LABEL_198;
      }

      v281 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
      swift_beginAccess();
      v193 = v333;
      sub_100009848(v166 + v281, v333, &qword_10034BE88, &unk_10028B620);
      v282 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
      v283 = *(v282 - 8);
      if ((*(v283 + 48))(v193, 1, v282) == 1)
      {

        sub_1000097E8(v193, &qword_10034BE88, &unk_10028B620);
        v284 = &v167[*(v282 + 28)];
        v285 = v167;
        v340 = v78;
        v286 = v78;
        v287 = v361;
        v361(v284, v286, v360);
        *v167 = 0xD000000000000017;
        *(v167 + 1) = 0x80000001002A7930;
        v365 = 0x80000001002A7930;
        v288 = *(v283 + 56);
        v288(v167, 0, 1, v282);
        v289 = v167;
        v290 = v339;
        sub_100009848(v289, v339, &qword_10034BE88, &unk_10028B620);
        swift_beginAccess();
        sub_10011D5D8(v290, v166 + v281, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v290, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v285, &qword_10034BE88, &unk_10028B620);
        v291 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v292 = v363;
        swift_beginAccess();
        v293 = *(v292 + v291);
        if (!v293)
        {
          sub_10025F588(v356, type metadata accessor for ExperienceEvent);
          swift_endAccess();

          sub_1000E605C(0);
          return;
        }

        swift_endAccess();
        v287(&v285[*(v282 + 28)], v340, v360);
        *v285 = 0xD000000000000017;
        *(v285 + 1) = v365;
        v288(v285, 0, 1, v282);
        sub_100009848(v285, v290, &qword_10034BE88, &unk_10028B620);
        v294 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
        swift_beginAccess();

        sub_10011D5D8(v290, v293 + v294, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001DC4FC();
        sub_1000097E8(v290, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v285, &qword_10034BE88, &unk_10028B620);

        v256 = 0;
        goto LABEL_171;
      }

      sub_1000E605C(0);
    }

    sub_10025F588(v113, type metadata accessor for ExperienceEvent);
    sub_1000097E8(v193, &qword_10034BE88, &unk_10028B620);
    return;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v117 = type metadata accessor for SessionEvent;
    v118 = v87;
LABEL_139:
    sub_10025F588(v118, v117);
    return;
  }

  v95 = *v87;
  v96 = v95 >> 13;
  if (v95 >> 13 <= 1)
  {
    if (v96 && (v95 & 0x100) == 0 && *(v81 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) == 2)
    {
      *(v81 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) = 0;
    }

    return;
  }

  if (v96 == 2)
  {
    if ((v95 & 0x100) != 0)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v96 == 3)
  {
LABEL_53:
    if (*(v81 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) == 2)
    {
      *(v81 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) = 1;
    }

    return;
  }

  if (v95 >= -32766)
  {
    v97 = v349;
    v98 = v360;
    v99 = v361;
    v361(v349, v78, v360);
    v100 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
    v101 = *(v100 - 8);
    v365 = *(v101 + 56);
    v364 = v101 + 56;
    v365(v97, 0, 1, v100);
    v102 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded;
    swift_beginAccess();
    sub_1000097E8(v81 + v102, &qword_100345620, &unk_10027C940);
    sub_10003693C(v97, v81 + v102, &qword_100345620, &unk_10027C940);
    swift_endAccess();
    v103 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
    swift_beginAccess();
    v104 = *(v81 + v103);
    v105 = v100;
    if (v104)
    {
      v99(v97, v78, v98);
      v365(v97, 0, 1, v100);
      v106 = v347;
      sub_100009848(v97, v347, &qword_100345620, &unk_10027C940);
      v107 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded;
      swift_beginAccess();

      sub_10011D5D8(v106, v104 + v107, &qword_100345620, &unk_10027C940);
      swift_endAccess();
      sub_100247418();
      sub_1000097E8(v106, &qword_100345620, &unk_10027C940);
      sub_1000097E8(v97, &qword_100345620, &unk_10027C940);
    }

    v108 = v365;
    v109 = *(v363 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
    if (v109)
    {
      v110 = v349;
      v361(v349, v78, v360);
      v108(v110, 0, 1, v105);
      v111 = v347;
      sub_100009848(v110, v347, &qword_100345620, &unk_10027C940);
      v112 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded;
      swift_beginAccess();

      sub_10011D5D8(v111, v109 + v112, &qword_100345620, &unk_10027C940);
      swift_endAccess();
      sub_1001D8D14();
      sub_1000097E8(v111, &qword_100345620, &unk_10027C940);
      sub_1000097E8(v110, &qword_100345620, &unk_10027C940);
      goto LABEL_199;
    }
  }
}

uint64_t sub_100259E18(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v12 - 8);
  v14 = &v57 - v13;
  v15 = type metadata accessor for UserDefaultsRepresentation(0);
  __chkstk_darwin(v15);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  if (v18)
  {
    v62 = a1;
    sub_100009848(a1, v14, &qword_10033C280, &qword_100272A80);
    if ((*(v9 + 48))(v14, 1, v8) != 1)
    {
      (*(v9 + 32))(v17, v14, v8);
    }

    swift_storeEnumTagMultiPayload();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      v21 = v62;
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v51 = *v17;
          v52 = v17[1];
          v53 = v18;
          isa = Data._bridgeToObjectiveC()().super.isa;
          v34 = String._bridgeToObjectiveC()();
          [v53 setObject:isa forKey:v34];

          sub_100010708(v51, v52);
        }

        else
        {
          v32 = *v17;
          v33 = v18;
          v34 = String._bridgeToObjectiveC()();
          [v33 setBool:v32 forKey:v34];
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          (*(v9 + 32))(v11, v17, v8);
          v38 = v18;
          v39 = Date._bridgeToObjectiveC()().super.isa;
          v40 = String._bridgeToObjectiveC()();
          [v38 setObject:v39 forKey:v40];

          sub_1000097E8(v21, &qword_10033C280, &qword_100272A80);
          return (*(v9 + 8))(v11, v8);
        }

        if (EnumCaseMultiPayload == 3)
        {
          v22 = *v17;
          v23 = v18;
          v24 = String._bridgeToObjectiveC()();
          [v23 setDouble:v24 forKey:v22];
        }

        else
        {
          v46 = *v17;
          v47 = v18;
          v48 = String._bridgeToObjectiveC()();
          [v47 setInteger:v46 forKey:v48];
        }
      }

      v19 = v21;
      return sub_1000097E8(v19, &qword_10033C280, &qword_100272A80);
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v35 = v18;
        v36 = String._bridgeToObjectiveC()();

        v37 = String._bridgeToObjectiveC()();
        [v35 setObject:v36 forKey:v37];

LABEL_28:
        v19 = v62;
        return sub_1000097E8(v19, &qword_10033C280, &qword_100272A80);
      }

      v49 = v18;
      v55 = UInt32._bridgeToObjectiveC()().super.super.isa;
      v56 = String._bridgeToObjectiveC()();
      [v49 setObject:v55 forKey:v56];
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v42 = v57;
        v41 = v58;
        (*(v57 + 32))(v7, v17, v58);
        v43 = v18;
        URL.absoluteString.getter();
        v44 = String._bridgeToObjectiveC()();

        v45 = String._bridgeToObjectiveC()();
        [v43 setObject:v44 forKey:v45];

        sub_1000097E8(v62, &qword_10033C280, &qword_100272A80);
        return (*(v42 + 8))(v7, v41);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v26 = v59;
        v25 = v60;
        v27 = v61;
        (*(v60 + 32))(v59, v17, v61);
        v28 = v18;
        UUID.uuidString.getter();
        v29 = String._bridgeToObjectiveC()();

        v30 = String._bridgeToObjectiveC()();
        [v28 setObject:v29 forKey:v30];

        sub_1000097E8(v62, &qword_10033C280, &qword_100272A80);
        return (*(v25 + 8))(v26, v27);
      }

      v49 = v18;
      v50 = String._bridgeToObjectiveC()();
      [v49 removeObjectForKey:v50];
    }

    goto LABEL_28;
  }

  v19 = a1;
  return sub_1000097E8(v19, &qword_10033C280, &qword_100272A80);
}

void sub_10025A734(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UserDefaultsRepresentation(0);
  v11 = __chkstk_darwin(v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (&v48 - v14);
  v16 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  if (v16)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v57 = v16;
    JSONEncoder.init()();
    v58 = a1;
    sub_100035D04(&qword_10033C320, &qword_100272B40);
    sub_10025F388();
    v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v19 = v18;

    *v13 = v17;
    v13[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_10025F4B8(v13, v15, type metadata accessor for UserDefaultsRepresentation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v25 = v51;
          v24 = v52;
          v26 = v53;
          (*(v52 + 32))(v51, v15, v53);
          URL.absoluteString.getter();
        }

        else
        {
          if (EnumCaseMultiPayload != 8)
          {
            v22 = String._bridgeToObjectiveC()();
            v23 = v57;
            [v57 removeObjectForKey:v22];
            goto LABEL_24;
          }

          v25 = v54;
          v24 = v55;
          v26 = v56;
          (*(v55 + 32))(v54, v15, v56);
          UUID.uuidString.getter();
        }

        v37 = String._bridgeToObjectiveC()();

        v38 = String._bridgeToObjectiveC()();
        v39 = v57;
        [v57 setObject:v37 forKey:v38];

        (*(v24 + 8))(v25, v26);
        return;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v29 = String._bridgeToObjectiveC()();

        v30 = String._bridgeToObjectiveC()();
        v31 = v57;
        [v57 setObject:v29 forKey:v30];

LABEL_29:
        return;
      }

      isa = UInt32._bridgeToObjectiveC()().super.super.isa;
      v41 = String._bridgeToObjectiveC()();
      v31 = v57;
      [v57 setObject:isa forKey:v41];

LABEL_28:
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v33 = v49;
        v32 = v50;
        (*(v49 + 32))(v9, v15, v50);
        v34 = Date._bridgeToObjectiveC()().super.isa;
        v35 = String._bridgeToObjectiveC()();
        v36 = v57;
        [v57 setObject:v34 forKey:v35];

        (*(v33 + 8))(v9, v32);
        return;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v21 = *v15;
        v22 = String._bridgeToObjectiveC()();
        v23 = v57;
        [v57 setDouble:v22 forKey:v21];
LABEL_24:

        goto LABEL_25;
      }

      v40 = *v15;
      v41 = String._bridgeToObjectiveC()();
      v31 = v57;
      [v57 setInteger:*&v40 forKey:v41];
      goto LABEL_28;
    }

    if (!EnumCaseMultiPayload)
    {
      v27 = *v15;
      v23 = String._bridgeToObjectiveC()();
      v28 = v57;
      [v57 setBool:v27 forKey:v23];

LABEL_25:
      return;
    }

    v43 = *v15;
    v42 = v15[1];
    v44 = Data._bridgeToObjectiveC()().super.isa;
    v45 = String._bridgeToObjectiveC()();
    v46 = v57;
    [v57 setObject:v44 forKey:v45];

    sub_100010708(v43, v42);
  }

  else
  {
  }
}

uint64_t sub_10025AF20()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003515E8);
  sub_100003078(v0, qword_1003515E8);
  return Logger.init(subsystem:category:)();
}

double sub_10025AFA4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v52 = a1;
  v6 = sub_100035D04(&qword_100351B90, &qword_100297010);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v49 = &v43 - v11;
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_1003515E8);
  v19 = *(v15 + 16);
  v50 = a2;
  v48 = v19;
  v19(v17, a2, v14);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v45 = v13;
    v46 = v9;
    v47 = v3;
    v22 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v22 = 136315906;
    *(v22 + 4) = sub_100017494(0xD000000000000028, 0x80000001002A7900, v54);
    *(v22 + 12) = 2080;
    v23 = sub_100207AA8(v52);
    v25 = sub_100017494(v23, v24, v54);

    *(v22 + 14) = v25;
    *(v22 + 22) = 2080;
    sub_10015CC9C();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v15 + 8))(v17, v14);
    v29 = sub_100017494(v26, v28, v54);

    *(v22 + 24) = v29;
    *(v22 + 32) = 2080;
    v30 = v51;
    if ((v51 & 0x100000000) != 0)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v53 = v51;
      v32 = String.init<A>(describing:)();
      v31 = v34;
    }

    v35 = sub_100017494(v32, v31, v54);

    *(v22 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: event=%s, timestamp=%s, distance=%s", v22, 0x2Au);
    swift_arrayDestroy();

    v9 = v46;
    v4 = v47;
    v13 = v45;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v30 = v51;
  }

  v36 = v52;
  v37 = v50;
  if ((v52 - 5) >= 5u)
  {
    v38 = sub_100035D04(&unk_100351648, &qword_100296E80);
    v48(&v13[*(v38 + 28)], v37, v14);
    *v13 = v36;
    v39 = &v13[*(v38 + 32)];
    *v39 = v30;
    v39[4] = BYTE4(v30) & 1;
    (*(*(v38 - 8) + 56))(v13, 0, 1, v38);
    v40 = v49;
    sub_100009848(v13, v49, &qword_100351B90, &qword_100297010);
    v41 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_uxRegion;
    swift_beginAccess();
    sub_100009848(v4 + v41, v9, &qword_100351B90, &qword_100297010);
    swift_beginAccess();

    sub_10011D5D8(v40, v4 + v41, &qword_100351B90, &qword_100297010);
    swift_endAccess();
    sub_1000097E8(v40, &qword_100351B90, &qword_100297010);
    v42 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_previousUXRegion;
    swift_beginAccess();
    sub_10011D5D8(v9, v4 + v42, &qword_100351B90, &qword_100297010);
    swift_endAccess();
    sub_1000097E8(v9, &qword_100351B90, &qword_100297010);
    sub_1000097E8(v13, &qword_100351B90, &qword_100297010);
  }

  return result;
}

uint64_t sub_10025B4F4()
{

  v1 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_discoveryTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_previousUXRegion, &qword_100351B90, &qword_100297010);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_uxRegion, &qword_100351B90, &qword_100297010);

  return swift_deallocClassInstance();
}

void sub_10025B620(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10011CC54(319, &qword_100351640, &unk_100351648, &qword_100296E80);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_10025B724(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a1;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v8 = __chkstk_darwin(v7 - 8);
  v65 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v64 = &v60 - v11;
  __chkstk_darwin(v10);
  v63 = &v60 - v12;
  v68 = type metadata accessor for Date();
  v13 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100035D04(&qword_100351B80, &unk_100296FB0);
  __chkstk_darwin(v62);
  v16 = (&v60 - v15);
  *(v3 + 8) = _swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialDeviceUXRegion;
  v18 = sub_100035D04(&unk_100351648, &qword_100296E80);
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType] = 2;
  v19 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded;
  v20 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffCardBeforeSession;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v22 = qword_10038B0B8;
  v23 = *(qword_10038B0B8 + 528);
  v24 = sub_1000031CC();

  v4[v21] = v24 & 1;
  v25 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffHintBeforeSession;
  v26 = *(v22 + 536);
  v27 = sub_1000031CC();

  v4[v25] = v27 & 1;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education] = 0;
  v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_published] = 0;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100003078(v28, qword_1003515E8);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Init", v31, 2u);
  }

  v32 = v69;
  *(v4 + 2) = UUID.uuidString.getter();
  *(v4 + 3) = v33;
  *(v4 + 4) = UUID.uuidString.getter();
  *(v4 + 5) = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = a2;
  static Published.subscript.getter();

  v37 = sub_10000A0B4(v35, v36);
  v39 = v38;

  *(v4 + 6) = v37;
  *(v4 + 7) = v39;
  v41 = v32[4];
  v40 = v32[5];
  (*(v13 + 16))(v67, a3, v68);

  sub_100097D54(v41, v40);
  CurrentValueSubject.value.getter();
  v61 = a3;
  if (v74)
  {
    CurrentValueSubject.value.getter();

    v42 = v70;
    v43 = v71;
  }

  else
  {
    v42 = v72;
    v44 = v73;

    v43 = v44 & 1;
  }

  *v16 = v41;
  v16[1] = v40;
  v45 = v62;
  v46 = v68;
  (*(v13 + 32))(v16 + *(v62 + 28), v67, v68);
  v47 = v16 + *(v45 + 32);
  *v47 = v42;
  v47[4] = v43;
  sub_10003693C(v16, &v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionStarted], &qword_100351B80, &unk_100296FB0);
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_educationFlowPolicy] = sub_10006F838();
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B834();
  sub_10014C0EC();

  v48 = v63;
  Date.init()();
  (*(v13 + 56))(v48, 0, 1, v46);
  v49 = *(v22 + 568);
  v50 = v64;
  sub_100009848(v48, v64, &qword_10033C280, &qword_100272A80);
  v51 = v49;
  sub_100259E18(v50);

  sub_1000097E8(v48, &qword_10033C280, &qword_100272A80);
  v52 = *(v22 + 600);
  v53 = v65;
  sub_100060984(v65);

  if ((*(v13 + 48))(v53, 1, v46) == 1)
  {
    (*(v13 + 8))(v61, v46);

    sub_1000097E8(v53, &qword_10033C280, &qword_100272A80);
    return v4;
  }

  sub_1000097E8(v53, &qword_10033C280, &qword_100272A80);
  v54 = *(v22 + 608);
  result = sub_10006045C();
  v56 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v57 = *(v54 + *((swift_isaMask & *v54) + 0x70));
    if (v57)
    {
      v58 = v57;
      v59 = String._bridgeToObjectiveC()();
      [v58 setInteger:v56 forKey:v59];
    }

    else
    {
    }

    (*(v13 + 8))(v61, v46);
    return v4;
  }

  __break(1u);
  return result;
}

double sub_10025BF40(void (*a1)(void, void, void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a1;
  v78 = a3;
  v83 = a2;
  v5 = type metadata accessor for ExperienceEvent(0);
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_100003078(v79, qword_1003515E8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v8;
    v15 = swift_slowAlloc();
    v87[0] = v15;
    *v13 = 136315138;
    *(v13 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A79E0, v87);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000903C(v15);
    v8 = v14;
  }

  v82 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card;
  v16 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
  v84 = v8;
  if (v16)
  {
    swift_retain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v88 = v20;
      *v19 = 136315138;
      v87[3] = type metadata accessor for CardPresentationRecord(0);
      v87[0] = v16;

      v21 = v9;
      v22 = sub_100057F14(v87);
      v24 = v23;
      sub_10000903C(v87);
      v25 = sub_100017494(v22, v24, &v88);

      *(v19 + 4) = v25;
      v9 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "### Unexpectedly found pending card: %s - sending now", v19, 0xCu);
      sub_10000903C(v20);

      v8 = v84;
    }

    sub_1001D8AE4();
  }

  v26 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount;
  v27 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v85 = v7;
    *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount) = v29;
    if (qword_100338F18 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v30 = *(qword_10038B0B8 + 528);
  v31 = *(v30 + *((swift_isaMask & *v30) + 0x70));
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    v34 = String._bridgeToObjectiveC()();
    [v33 setBool:1 forKey:v34];
  }

  v35 = *(v4 + v26);
  v36 = *(v4 + 56);
  v74 = *(v4 + 48);
  v71 = v36;
  v76 = v9;
  v37 = v77;
  v77 = *(v9 + 16);
  v77(v86, v37, v8);
  v38 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffCardBeforeSession);
  v75 = v35;
  v72 = v35 == 1;
  v73 = v38;
  sub_10025F520(v78, v85, type metadata accessor for ExperienceEvent);
  type metadata accessor for CardPresentationRecord(0);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v40 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested;
  v41 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v42 = *(*(v41 - 8) + 56);
  v42(v39 + v40, 1, 1, v41);
  v42(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated, 1, 1, v41);
  v43 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
  v44 = sub_100035D04(&unk_100345508, &qword_10027C860);
  (*(*(v44 - 8) + 56))(v39 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested;
  v46 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v47 = *(*(v46 - 8) + 56);
  v47(v39 + v45, 1, 1, v46);
  v42(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded, 1, 1, v41);
  v47(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting, 1, 1, v46);
  v48 = v71;
  v49 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
  v50 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  (*(*(v50 - 8) + 56))(v39 + v49, 1, 1, v50);
  v42(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested, 1, 1, v41);
  v42(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected, 1, 1, v41);
  v51 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
  v52 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  (*(*(v52 - 8) + 56))(v39 + v51, 1, 1, v52);
  v42(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded, 1, 1, v41);
  (*(v80 + 56))(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger, 1, 1, v81);
  *(v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_published) = 0;
  v53 = qword_100339188;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = v72 & ~v73;
  sub_100003078(v79, qword_10034BCD0);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Init", v57, 2u);
  }

  v58 = v74;
  *(v39 + 32) = v75;
  *(v39 + 40) = v58;
  *(v39 + 48) = v48;
  *(v39 + 56) = v54;
  v59 = v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_presentEffect;
  v60 = v85;
  sub_10025F520(v85, v39 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_presentEffect, type metadata accessor for ExperienceEvent);
  v61 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v62 = v86;
  v63 = v84;
  v77(v59 + *(v61 + 28), v86, v84);
  v64 = v59 + *(v61 + 32);
  v65 = BYTE4(v83);
  *v64 = v83;
  *(v64 + 4) = v65 & 1;
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B688();
  sub_10014C0EC();

  sub_10025F588(v60, type metadata accessor for ExperienceEvent);
  (*(v76 + 8))(v62, v63);
  *(v4 + v82) = v39;

  v66 = swift_allocObject();
  swift_weakInit();
  v67 = *(v39 + 16);
  v68 = *(v39 + 24);
  *(v39 + 16) = sub_10025F60C;
  *(v39 + 24) = v66;

  sub_10002689C(v67, v68);

  return result;
}

double sub_10025C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v7 = type metadata accessor for ExperienceEvent(0);
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v65 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100003078(v59, qword_1003515E8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = a3;
    v17 = swift_slowAlloc();
    v67[0] = v17;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0xD000000000000031, 0x80000001002A79A0, v67);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v17);
    a3 = v16;
    a1 = v15;
  }

  v18 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
  swift_beginAccess();
  v58 = v18;
  v19 = *(v3 + v18);
  v64 = v11;
  if (v19)
  {
    swift_retain_n();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v68 = v24;
      *v23 = 136315138;
      v67[3] = type metadata accessor for EducationPresentationRecord(0);
      v67[0] = v19;

      v25 = sub_100057F8C(v67);
      v26 = v9;
      v28 = v27;
      sub_10000903C(v67);
      v29 = sub_100017494(v25, v28, &v68);
      v9 = v26;

      *(v23 + 4) = v29;
      v11 = v64;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Unexpectedly found pending education: %s - sending now", v23, 0xCu);
      sub_10000903C(v24);

      a3 = v57;
    }

    sub_1001DC4FC();
  }

  v30 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount);
  v31 = *(v4 + 56);
  v57 = *(v4 + 48);
  (*(v65 + 16))(v11, a1, v9);
  v32 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffCardBeforeSession);
  v62 = v9;
  v33 = (v32 & 1) == 0 && *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount) == 1;
  sub_10025F520(a3, v66, type metadata accessor for ExperienceEvent);
  type metadata accessor for EducationPresentationRecord(0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v35 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed;
  v36 = sub_100035D04(&unk_100345508, &qword_10027C860);
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
  v38 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  (*(*(v38 - 8) + 56))(v34 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
  v40 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v41 = *(*(v40 - 8) + 56);
  v41(v34 + v39, 1, 1, v40);
  v41(v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack, 1, 1, v40);
  v41(v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented, 1, 1, v40);
  v42 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
  v43 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  (*(*(v43 - 8) + 56))(v34 + v42, 1, 1, v43);
  v41(v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_sessionEnded, 1, 1, v40);
  (*(v60 + 56))(v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger, 1, 1, v61);
  *(v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_published) = 0;
  v44 = qword_100339190;

  if (v44 != -1)
  {
    swift_once();
  }

  sub_100003078(v59, qword_10034BE90);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Init", v47, 2u);
  }

  v48 = v57;
  *(v34 + 32) = v30;
  *(v34 + 40) = v48;
  *(v34 + 48) = v31;
  *(v34 + 56) = v33;
  v49 = v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect;
  sub_10025F4B8(v66, v34 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect, type metadata accessor for ExperienceEvent);
  v50 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  (*(v65 + 32))(v49 + *(v50 + 28), v64, v62);
  v51 = v49 + *(v50 + 32);
  v52 = BYTE4(v63);
  *v51 = v63;
  *(v51 + 4) = v52 & 1;
  *(v4 + v58) = v34;

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = *(v34 + 16);
  v55 = *(v34 + 24);
  *(v34 + 16) = sub_10025F5E8;
  *(v34 + 24) = v53;

  sub_10002689C(v54, v55);

  return result;
}

double sub_10025D1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a1;
  v74 = a3;
  v78 = a2;
  v76 = type metadata accessor for ExperienceEvent(0);
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v7 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date();
  v81 = *(v8 - 8);
  __chkstk_darwin(v8);
  v80 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100003078(v75, qword_1003515E8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = v7;
    v14 = swift_slowAlloc();
    v82[0] = v14;
    *v12 = 136315138;
    *(v12 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A7A10, v82);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000903C(v14);
    v7 = v13;
  }

  v15 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
  swift_beginAccess();
  v77 = v15;
  v16 = *(v3 + v15);
  v79 = v7;
  if (v16)
  {
    swift_retain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v83 = v20;
      *v19 = 136315138;
      v82[3] = type metadata accessor for HintPresentationRecord(0);
      v82[0] = v16;

      v21 = sub_100057F50(v82);
      v23 = v22;
      sub_10000903C(v82);
      v24 = sub_100017494(v21, v23, &v83);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "### Unexpectedly found pending hint: %s - sending now", v19, 0xCu);
      sub_10000903C(v20);

      v7 = v79;
    }

    sub_1002471E8();
  }

  v25 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount;
  v26 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount) = v28;
    if (qword_100338F18 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v29 = *(qword_10038B0B8 + 536);
  v30 = *(v29 + *((swift_isaMask & *v29) + 0x70));
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    v33 = String._bridgeToObjectiveC()();
    [v32 setBool:1 forKey:v33];
  }

  v34 = *(v4 + v25);
  v35 = *(v4 + 56);
  v71 = *(v4 + 48);
  v72 = v34;
  v36 = *(v81 + 16);
  v37 = v73;
  v73 = v8;
  v36(v80, v37, v8);
  v70 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffHintBeforeSession);
  sub_10025F520(v74, v7, type metadata accessor for ExperienceEvent);
  type metadata accessor for HintPresentationRecord(0);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v39 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested;
  v40 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v41 = *(*(v40 - 8) + 56);
  v41(v38 + v39, 1, 1, v40);
  v41(v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting, 1, 1, v40);
  v41(v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented, 1, 1, v40);
  v42 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied;
  v43 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  (*(*(v43 - 8) + 56))(v38 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed;
  v45 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  (*(*(v45 - 8) + 56))(v38 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed;
  v47 = sub_100035D04(&unk_100350B60, &unk_1002960B0);
  (*(*(v47 - 8) + 56))(v38 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded;
  v49 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  (*(*(v49 - 8) + 56))(v38 + v48, 1, 1, v49);
  v50 = *(v5 + 56);
  v51 = v76;
  v50(v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger, 1, 1, v76);
  v50(v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_inactiveStateTrigger, 1, 1, v51);
  v50(v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_finishedStateTrigger, 1, 1, v51);
  *(v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_published) = 0;
  v52 = qword_1003392C8;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = v70 ^ 1;
  sub_100003078(v75, qword_100350B00);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Init", v56, 2u);
  }

  v57 = v71;
  *(v38 + 32) = v72;
  *(v38 + 40) = v57;
  *(v38 + 48) = v35;
  *(v38 + 56) = v53 & 1;
  v58 = v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect;
  v59 = v79;
  sub_10025F520(v79, v38 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect, type metadata accessor for ExperienceEvent);
  v60 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v61 = v80;
  v62 = v73;
  v36((v58 + *(v60 + 28)), v80, v73);
  v63 = v58 + *(v60 + 32);
  v64 = BYTE4(v78);
  *v63 = v78;
  *(v63 + 4) = v64 & 1;
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B9E0();
  sub_10014C0EC();

  sub_10025F588(v59, type metadata accessor for ExperienceEvent);
  (*(v81 + 8))(v61, v62);
  *(v4 + v77) = v38;

  v65 = swift_allocObject();
  swift_weakInit();
  v66 = *(v38 + 16);
  v67 = *(v38 + 24);
  *(v38 + 16) = sub_10025F614;
  *(v38 + 24) = v65;

  sub_10002689C(v66, v67);

  return result;
}

void sub_10025DBDC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v37 - v6;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_1003515E8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v49);
    *(v10 + 12) = 2080;
    v41 = v2;

    v11 = String.init<A>(describing:)();
    v13 = v5;
    v14 = sub_100017494(v11, v12, v49);

    *(v10 + 14) = v14;
    v5 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: self=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v15 = qword_10038B0B8;
  v16 = *(qword_10038B0B8 + 544);
  v17 = sub_1000031CC();

  v40 = v17;
  if ((v17 & 1) == 0)
  {
    v18 = *(v15 + 544);
    v19 = *(v18 + *((swift_isaMask & *v18) + 0x70));
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = String._bridgeToObjectiveC()();
      [v21 setBool:1 forKey:v22];
    }
  }

  v39 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount);
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B834();
  v38 = sub_10014C668(1);

  sub_10014B834();
  v23 = sub_10014C668(28);

  sub_10014B834();
  v24 = sub_10014C668(7);

  v25 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded;
  swift_beginAccess();
  v26 = (*(v5 + 48))(v2 + v25, 1, v4);
  v27 = 0;
  if (!v26)
  {
    v28 = v2 + v25;
    v29 = v37;
    sub_100009848(v28, v37, &qword_1003454F8, &unk_10028B580);
    sub_100035D04(&qword_100351B80, &unk_100296FB0);
    Date.timeIntervalSince(_:)();
    v27 = v30;
    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 8))(v29, v31);
  }

  v32 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount);
  v33 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType);
  v35 = *(v2 + 48);
  v34 = *(v2 + 56);
  LOBYTE(v41) = 0;
  v48 = 0;
  v36 = (v40 & 1) == 0;
  v47 = 0;
  v46 = 0;
  v45 = v26 != 0;
  v44 = 0;
  v43 = v33 == 2;
  v42 = 1;
  *a1 = v39;
  *(a1 + 8) = 0;
  *(a1 + 16) = v38;
  *(a1 + 24) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = v24;
  *(a1 + 56) = 0;
  *(a1 + 64) = v27;
  *(a1 + 72) = v45;
  *(a1 + 73) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = v36;
  *(a1 + 120) = v32;
  *(a1 + 128) = v44;
  *(a1 + 136) = v35;
  *(a1 + 144) = v34;
  *(a1 + 152) = v33 & 1;
  *(a1 + 160) = v43;
  *(a1 + 168) = 0;
  *(a1 + 176) = v42;
}

double sub_10025E210(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);

    if (v5)
    {

      if (v5 == a1)
      {
        swift_beginAccess();
        v6 = swift_weakLoadStrong();
        if (v6)
        {
          *(v6 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card) = 0;
        }
      }
    }
  }

  return result;
}

double sub_10025E2D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *a3;
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {

      if (v9 == a1)
      {
        swift_beginAccess();
        v10 = swift_weakLoadStrong();
        if (v10)
        {
          v11 = *a3;
          v12 = v10;
          swift_beginAccess();
          *(v12 + v11) = 0;
        }
      }
    }
  }

  return result;
}

void *sub_10025E3D0()
{

  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionStarted, &qword_100351B80, &unk_100296FB0);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialDeviceUXRegion, &qword_100351B90, &qword_100297010);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded, &qword_100345620, &unk_10027C940);

  return v0;
}

uint64_t sub_10025E4A8()
{
  sub_10025E3D0();

  return swift_deallocClassInstance();
}

void sub_10025E528(uint64_t a1)
{
  sub_10025EE48(319, &unk_1003517E0, &type metadata for SessionStartReason, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    sub_10011CC54(319, &qword_100351640, &unk_100351648, &qword_100296E80);
    if (v2 <= 0x3F)
    {
      sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10025E6FC()
{
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_charging, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_deviceMotionStationary, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_orientationIsValid, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_screenOn, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_ranging, &qword_100351B88, &qword_100297008);

  return swift_deallocClassInstance();
}

void sub_10025E810(uint64_t a1)
{
  sub_10011CC54(319, &unk_100351918, &qword_10033B300, &qword_100271EE8);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10025E8C0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10025EE48(319, qword_100351AB8, &type metadata for Float, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10025E984(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (v12 < a2)
  {
    v14 = ((*(*(v8 - 8) + 64) + (v13 & ~v11) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5;
    if (v14 <= 3)
    {
      v15 = ((a2 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    v17 = v15 >= 2 ? v16 : 0;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *&a1[v14];
        if (*&a1[v14])
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = *&a1[v14];
        if (v18)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v17)
    {
      v18 = a1[v14];
      if (a1[v14])
      {
LABEL_20:
        v19 = (v18 - 1) << (8 * v14);
        if (v14 <= 3)
        {
          v20 = *a1;
        }

        else
        {
          v19 = 0;
          v20 = *a1;
        }

        return v12 + (v20 | v19) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v10)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v21 = *(v9 + 48);

    return v21(&a1[v13] & ~v11);
  }
}

void sub_10025EBBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + (v14 & ~v13) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5;
  if (v12 >= a3)
  {
    v18 = 0;
    if (v12 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v12 >= a2)
    {
LABEL_17:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v9 >= v11)
      {
        v22 = *(v23 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v21 = *(v10 + 56);

        v21(&a1[v14] & ~v13, a2);
      }

      return;
    }
  }

  v19 = ~v12 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_27:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_10025EE48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10025EE98(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10025EF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

char *sub_10025F1F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_previousUXRegion;
  v6 = sub_100035D04(&unk_100351648, &qword_100296E80);
  v7 = *(*(v6 - 8) + 56);
  v7(&v3[v5], 1, 1, v6);
  v7(&v3[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_uxRegion], 1, 1, v6);
  *&v3[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_tasks] = &_swiftEmptySetSingleton;
  *(v3 + 2) = UUID.uuidString.getter();
  *(v3 + 3) = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = sub_10000A0B4(v9, v10);
  v13 = v12;

  *(v3 + 4) = v11;
  *(v3 + 5) = v13;
  v14 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_discoveryTime;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 32))(&v3[v14], a2, v15);
  return v3;
}

unint64_t sub_10025F388()
{
  result = qword_100351B98;
  if (!qword_100351B98)
  {
    sub_100035D4C(&qword_10033C320, &qword_100272B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100351B98);
  }

  return result;
}

unint64_t sub_10025F40C()
{
  result = qword_100351BA8;
  if (!qword_100351BA8)
  {
    sub_100035D4C(&qword_100351BA0, &qword_100297018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100351BA8);
  }

  return result;
}

void sub_10025F478(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
LABEL_4:
    }
  }

  else
  {
    swift_errorRetain();
  }
}

uint64_t sub_10025F4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025F588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Publisher<>.switchToLatest()()
{
  return Publisher<>.switchToLatest()();
}

{
  return Publisher<>.switchToLatest()();
}

uint64_t Publisher.map<A>(_:)()
{
  return Publisher.map<A>(_:)();
}

{
  return Publisher.map<A>(_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Sequence.flatMap<A>(_:)()
{
  return Sequence.flatMap<A>(_:)();
}

{
  return Sequence.flatMap<A>(_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)()
{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}