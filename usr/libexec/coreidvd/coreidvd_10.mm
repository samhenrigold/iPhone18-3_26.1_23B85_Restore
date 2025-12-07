void sub_1000F7C68(uint64_t *a1@<X8>)
{
  v2 = 0x4E495F54504FLL;
  if (*v1)
  {
    v2 = 0x54554F5F54504FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000F7D54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000F7DC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F7E1C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA8F0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000F7F40(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A340, &qword_1006D7D58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F96AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v15 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[3];
    v12 = v3[2];
    v13 = v10;
    v14 = v3[4];
    v15 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v12 = *(v3 + 12);
    v15 = 3;
    sub_100007224(&qword_10083A328, &qword_1006D7D50);
    sub_1000F97BC(&qword_10083A348, sub_1000F9834, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000F8188()
{
  v1 = 0x4874736575716572;
  v2 = 0x72656469766F7270;
  if (*v0 != 2)
  {
    v2 = 0x73746E65736E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1000F8218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F8F44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F8240(uint64_t a1)
{
  v2 = sub_1000F96AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F827C(uint64_t a1)
{
  v2 = sub_1000F96AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000F82B8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000F90C0(a2, v7);
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

uint64_t sub_1000F8330(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A3A0, &qword_1006D7D78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F9CCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10 = v3[4];
    v11 = v3[2];
    v24 = v3[3];
    v25 = v10;
    v12 = v3[4];
    v13 = v3[6];
    v26 = v3[5];
    v27 = v13;
    v14 = v3[2];
    v23[0] = v3[1];
    v23[1] = v14;
    v19 = v24;
    v20 = v12;
    v15 = v3[6];
    v21 = v26;
    v22 = v15;
    v17 = v23[0];
    v18 = v11;
    v28 = 1;
    sub_1000B1478(v23, v16);
    sub_1000B14B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[5] = v22;
    v16[0] = v17;
    v16[1] = v18;
    sub_1000ACC70(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F8530()
{
  if (*v0)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0x45656D69746E7572;
  }
}

uint64_t sub_1000F8580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000F8668(uint64_t a1)
{
  v2 = sub_1000F9CCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F86A4(uint64_t a1)
{
  v2 = sub_1000F9CCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000F86E0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000F9A2C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_1000F8778()
{
  result = qword_10083A2F0;
  if (!qword_10083A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2F0);
  }

  return result;
}

unint64_t sub_1000F87CC()
{
  result = qword_10083A2F8;
  if (!qword_10083A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2F8);
  }

  return result;
}

uint64_t sub_1000F884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F8888()
{
  result = qword_10083A300;
  if (!qword_10083A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A300);
  }

  return result;
}

unint64_t sub_1000F88DC()
{
  result = qword_10083A308;
  if (!qword_10083A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A308);
  }

  return result;
}

unint64_t sub_1000F8930(uint64_t a1)
{
  result = sub_1000F8958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F8958()
{
  result = qword_10083A310;
  if (!qword_10083A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A310);
  }

  return result;
}

uint64_t sub_1000F89AC(void *a1)
{
  v2 = sub_100007224(&qword_10083A358, &qword_1006D7D60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1000F9888();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_1000F98DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v8[1];
  v9 = 1;
  sub_1000F9930();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_1000F8BB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
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

uint64_t sub_1000F8CD0(void *a1)
{
  v3 = sub_100007224(&qword_10083A3F8, &qword_1006D8260);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000FA148();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    sub_1000FA19C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[30] = 1;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    v9[15] = 2;
    sub_1000FA1F0(&qword_100837158, &qword_100834E68, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_1000F8F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746E65736E6F63 && a2 == 0xE800000000000000)
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

void sub_1000F90C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = sub_100007224(&qword_10083A318, &qword_1006D7D48);
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v32 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  v14 = a1[3];
  v42 = a1;
  sub_10000BA08(a1, v14);
  sub_1000F96AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v43 = v13;
    sub_10000BB78(v42);

    sub_1000AB97C(0, 0, 0, 0, 0, 0);
  }

  else
  {
    v40 = v5;
    LOBYTE(v44) = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v15 = v51;
    v38 = v52;
    v16 = v53;
    v43 = v54;
    LOBYTE(v44) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v16;
    v36 = v15;
    v34 = a2;
    v17 = v52;
    v37 = v51;
    v18 = v53;
    v19 = v54;
    v21 = v55;
    v20 = v56;
    LOBYTE(v51) = 2;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v23;
    sub_100007224(&qword_10083A328, &qword_1006D7D50);
    v64 = 3;
    sub_1000F97BC(&qword_10083A330, sub_1000F9700, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v40 + 8))(v7, v41);
    v41 = v65;
    *&v44 = v36;
    v24 = v38;
    *(&v44 + 1) = v38;
    *&v45 = v35;
    v25 = v22;
    v33 = v22;
    v26 = v43;
    *(&v45 + 1) = v43;
    v27 = v37;
    *&v46 = v37;
    *(&v46 + 1) = v17;
    *&v47 = v18;
    *(&v47 + 1) = v19;
    *&v48 = v21;
    *(&v48 + 1) = v20;
    *&v49 = v25;
    *(&v49 + 1) = v39;
    v50 = v65;
    sub_1000F9754(&v44, &v51);
    sub_10000BB78(v42);
    v51 = v36;
    v52 = v24;
    v53 = v35;
    v54 = v26;
    v55 = v27;
    v56 = v17;
    v57 = v18;
    v58 = v19;
    v59 = v21;
    v60 = v20;
    v61 = v33;
    v62 = v39;
    v63 = v41;
    sub_1000F978C(&v51);
    v28 = v49;
    v29 = v34;
    *(v34 + 64) = v48;
    *(v29 + 80) = v28;
    *(v29 + 96) = v50;
    v30 = v45;
    *v29 = v44;
    *(v29 + 16) = v30;
    v31 = v47;
    *(v29 + 32) = v46;
    *(v29 + 48) = v31;
  }
}

unint64_t sub_1000F96AC()
{
  result = qword_10083A320;
  if (!qword_10083A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A320);
  }

  return result;
}

unint64_t sub_1000F9700()
{
  result = qword_10083A338;
  if (!qword_10083A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A338);
  }

  return result;
}

uint64_t sub_1000F97BC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_10083A328, &qword_1006D7D50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F9834()
{
  result = qword_10083A350;
  if (!qword_10083A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A350);
  }

  return result;
}

unint64_t sub_1000F9888()
{
  result = qword_10083A360;
  if (!qword_10083A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A360);
  }

  return result;
}

unint64_t sub_1000F98DC()
{
  result = qword_10083A368;
  if (!qword_10083A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A368);
  }

  return result;
}

unint64_t sub_1000F9930()
{
  result = qword_10083A370;
  if (!qword_10083A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A370);
  }

  return result;
}

unint64_t sub_1000F9984()
{
  result = qword_10083A380;
  if (!qword_10083A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A380);
  }

  return result;
}

unint64_t sub_1000F99D8()
{
  result = qword_10083A388;
  if (!qword_10083A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A388);
  }

  return result;
}

uint64_t sub_1000F9A2C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v4 = sub_100007224(&qword_10083A390, &qword_1006D7D70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000F9CCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v8 = v5;
    v9 = v46;
    LOBYTE(v26[0]) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    v18 = v10;
    v33 = 1;
    sub_1000ACC1C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v7, v4);
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v40 = v34;
    v41 = v35;
    v13 = v18;
    *&v19 = v18;
    *(&v19 + 1) = v12;
    v21 = v35;
    v20 = v34;
    v23 = v37;
    v22 = v36;
    v24 = v38;
    v25 = v39;
    sub_1000F9D20(&v19, v26);
    sub_10000BB78(a1);
    v26[0] = v13;
    v26[1] = v12;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v27 = v40;
    v28 = v41;
    result = sub_1000F9D58(v26);
    v15 = v24;
    v9[4] = v23;
    v9[5] = v15;
    v9[6] = v25;
    v16 = v20;
    *v9 = v19;
    v9[1] = v16;
    v17 = v22;
    v9[2] = v21;
    v9[3] = v17;
  }

  return result;
}

unint64_t sub_1000F9CCC()
{
  result = qword_10083A398;
  if (!qword_10083A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A398);
  }

  return result;
}

unint64_t sub_1000F9DDC()
{
  result = qword_10083A3A8;
  if (!qword_10083A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3A8);
  }

  return result;
}

unint64_t sub_1000F9E34()
{
  result = qword_10083A3B0;
  if (!qword_10083A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3B0);
  }

  return result;
}

unint64_t sub_1000F9E8C()
{
  result = qword_10083A3B8;
  if (!qword_10083A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3B8);
  }

  return result;
}

unint64_t sub_1000F9EE4()
{
  result = qword_10083A3C0;
  if (!qword_10083A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3C0);
  }

  return result;
}

unint64_t sub_1000F9F3C()
{
  result = qword_10083A3C8;
  if (!qword_10083A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3C8);
  }

  return result;
}

unint64_t sub_1000F9F94()
{
  result = qword_10083A3D0;
  if (!qword_10083A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3D0);
  }

  return result;
}

unint64_t sub_1000F9FEC()
{
  result = qword_10083A3D8;
  if (!qword_10083A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3D8);
  }

  return result;
}

unint64_t sub_1000FA044()
{
  result = qword_10083A3E0;
  if (!qword_10083A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3E0);
  }

  return result;
}

unint64_t sub_1000FA09C()
{
  result = qword_10083A3E8;
  if (!qword_10083A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3E8);
  }

  return result;
}

unint64_t sub_1000FA0F4()
{
  result = qword_10083A3F0;
  if (!qword_10083A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3F0);
  }

  return result;
}

unint64_t sub_1000FA148()
{
  result = qword_10083A400;
  if (!qword_10083A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A400);
  }

  return result;
}

unint64_t sub_1000FA19C()
{
  result = qword_10083A408;
  if (!qword_10083A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A408);
  }

  return result;
}

uint64_t sub_1000FA1F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_100837150, &qword_1006C96A0);
    sub_100049B38(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FA278()
{
  result = qword_10083A410;
  if (!qword_10083A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A410);
  }

  return result;
}

unint64_t sub_1000FA2CC()
{
  result = qword_10083A420;
  if (!qword_10083A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A420);
  }

  return result;
}

unint64_t sub_1000FA344()
{
  result = qword_10083A428;
  if (!qword_10083A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A428);
  }

  return result;
}

unint64_t sub_1000FA39C()
{
  result = qword_10083A430;
  if (!qword_10083A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A430);
  }

  return result;
}

unint64_t sub_1000FA3F4()
{
  result = qword_10083A438;
  if (!qword_10083A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A438);
  }

  return result;
}

unint64_t sub_1000FA44C()
{
  result = qword_10083A440;
  if (!qword_10083A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A440);
  }

  return result;
}

unint64_t sub_1000FA4A0()
{
  result = qword_10083A448;
  if (!qword_10083A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A448);
  }

  return result;
}

uint64_t sub_1000FA508(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FA5D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Workflow(uint64_t a1)
{
  result = qword_10083A4B0;
  if (!qword_10083A4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FA6D4(uint64_t a1)
{
  sub_1000FAAF4(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000FAAF4(319, &qword_100835450, &type metadata for String, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1000FAA9C(319);
      if (v3 <= 0x3F)
      {
        sub_1000FAB44(319, &qword_10083A4C0, &qword_100839AF8, &qword_1006D4960);
        if (v4 <= 0x3F)
        {
          sub_1000FAAF4(319, &qword_10083A4C8, &type metadata for UserInputField, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_1000FAAF4(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1000FAB44(319, &qword_10083A4D0, &qword_100839A58, &qword_1006D4920);
              if (v7 <= 0x3F)
              {
                sub_1000FAB44(319, &qword_10083A4D8, &qword_100839B30, &qword_1006D4978);
                if (v8 <= 0x3F)
                {
                  sub_1000FAAF4(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1000FAB44(319, &qword_10083A4E0, &qword_10083A4E8, &qword_1006D84B8);
                    if (v10 <= 0x3F)
                    {
                      sub_1000FAB44(319, &unk_10083A4F0, &unk_100839A40, &qword_1006C1B50);
                      if (v11 <= 0x3F)
                      {
                        sub_1000FAB44(319, &qword_100835470, &qword_100835478, &qword_1006D4980);
                        if (v12 <= 0x3F)
                        {
                          sub_1000FAAF4(319, &qword_100835A38, &type metadata for IQModel, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_1000FAB44(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0);
                            if (v14 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1000FAA9C(uint64_t a1)
{
  if (!qword_100835458)
  {
    type metadata accessor for HardwareAttestationType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100835458);
    }
  }
}

void sub_1000FAAF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000FAB44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000B870(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1000FAB98(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1000FFDD8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1000FAE98(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a2;
  v28 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  __chkstk_darwin(v28);
  v27 = &v26 - v8;
  v32 = a1;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = a4;

  v15 = 0;
  while (v12)
  {
    v31 = v5;
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v30 + 56);
    v20 = (*(v30 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = v19 + *(*(type metadata accessor for EncryptionCertificateInStringFormat(0) - 8) + 72) * v18;
    v24 = v27;
    sub_1001007D8(v23, &v27[*(v28 + 48)], type metadata accessor for EncryptionCertificateInStringFormat);
    *v24 = v21;
    v24[1] = v22;

    v25 = v31;
    v29(&v32, v24);
    v5 = v25;
    result = sub_10000BE18(v24, &unk_100839AC0, &unk_1006D4948);
    if (v25)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v32;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v31 = v5;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB094(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v26 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
  __chkstk_darwin(v26);
  v9 = &v26 - v8;
  v30 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v28 = a4;

  v16 = 0;
  while (v13)
  {
    v29 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v28;
    v21 = *(v28 + 48);
    v22 = type metadata accessor for IdentityElement();
    (*(*(v22 - 8) + 16))(v9, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v20 + 56);
    v24 = type metadata accessor for IdentityIntentToStore();
    (*(*(v24 - 8) + 16))(&v9[*(v26 + 48)], v23 + *(*(v24 - 8) + 72) * v19, v24);
    v25 = v29;
    v27(&v30, v9);
    v5 = v25;
    result = sub_10000BE18(v9, &qword_10083A5E8, &qword_1006D8FF0);
    if (v25)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v30;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v29 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB2C0(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_100007224(&qword_1008364F8, &qword_1006C5240) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1000FB3C0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x617A696E6167726FLL;
      break;
    case 5:
      result = 0x7972747375646E69;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      v3 = 0x68636E75616CLL;
      goto LABEL_29;
    case 8:
      v3 = 0x746567726174;
LABEL_29:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6574726F70707573;
      break;
    case 11:
    case 25:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x4C746C7561666564;
      break;
    case 13:
      result = 0x736E6F4372657375;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
    case 27:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x75706E4972657375;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0x4155656C62616E65;
      break;
    case 19:
      result = 0x746163696C707061;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 7107700;
      break;
    case 24:
      result = 0xD000000000000021;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 28:
      result = 0xD00000000000001FLL;
      break;
    case 29:
      result = 0x6974616E69676170;
      break;
    case 30:
      result = 0x65726564726F6E75;
      break;
    case 31:
      result = 0x74696B64756F6C63;
      break;
    case 32:
    case 35:
      result = 0xD00000000000001BLL;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 34:
    case 41:
      result = 0xD000000000000023;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0xD000000000000016;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 39:
      result = 0xD000000000000019;
      break;
    case 40:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000FB91C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000FB3C0(*a1);
  v5 = v4;
  if (v3 == sub_1000FB3C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000FB9A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000FB3C0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FBA08(uint64_t a1)
{
  sub_1000FB3C0(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000FBA5C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000FB3C0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000FBABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100100B60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000FBAEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000FB3C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000FBB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100100B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000FBB54(uint64_t a1)
{
  v2 = sub_1000FFCEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FBB90(uint64_t a1)
{
  v2 = sub_1000FFCEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FBBCC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v155 = v2;
  v3 = type metadata accessor for DIPError.Code();
  v150 = *(v3 - 8);
  v151 = v3;
  __chkstk_darwin(v3);
  v152 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for EncryptedMessageEntity();
  v145 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecipientEncryptionCertificate();
  v153 = *(v6 - 8);
  v154 = v6;
  __chkstk_darwin(v6);
  v149 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DIPCertUsage();
  v143 = *(v146 - 8);
  v8 = __chkstk_darwin(v146);
  v144 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = &v132 - v10;
  v158 = type metadata accessor for DIPOIDVerifier();
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  __chkstk_darwin(v12 - 8);
  v160 = &v132 - v13;
  v14 = sub_100007224(&qword_10083A5C8, &qword_1006D8530);
  v159 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  v17 = type metadata accessor for Workflow(0);
  v18 = __chkstk_darwin(v17);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 112);
  *(v20 + v21) = 0;
  v22 = *(v18 + 156);
  sub_1000F09E4(v166);
  v162 = v22;
  memcpy(&v22[v20], v166, 0x2181uLL);
  *(v20 + v17[40]) = 0;
  v23 = (v20 + v17[41]);
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = (v20 + v17[42]);
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = v17[43];
  v163 = v20;
  *&v25[v20] = 0;
  v26 = v1[3];
  v161 = v1;
  sub_10000BA08(v1, v26);
  sub_1000FFCEC();
  v27 = v164;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v164 = v27;
    v32 = v163;
    sub_10000BB78(v161);
LABEL_4:

LABEL_5:
    memcpy(v165, &v162[v32], 0x2181uLL);
    return sub_10000BE18(v165, &qword_100839990, &unk_1006C19E0);
  }

  v139 = v25;
  v140 = v21;
  v141 = v17;
  v29 = v159;
  v28 = v160;
  LOBYTE(v165[0]) = 0;
  v30 = v16;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v163;
  *v163 = v31;
  *(v32 + 8) = v34;
  LOBYTE(v165[0]) = 1;
  *(v32 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v32 + 24) = v35;
  LOBYTE(v165[0]) = 2;
  v138 = 0;
  *(v32 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v32 + 40) = v36;
  LOBYTE(v165[0]) = 3;
  *(v32 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v32 + 56) = v37;
  LOBYTE(v165[0]) = 4;
  *(v32 + 64) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v32 + 72) = v38;
  LOBYTE(v165[0]) = 5;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v164 = 0;
  *(v32 + 80) = v39;
  *(v32 + 88) = v40;
  v167 = 6;
  sub_1000F2078();
  v41 = v164;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v41)
  {
    v164 = v41;
    (*(v29 + 8))(v16, v14);
    LODWORD(v152) = 0;
    LODWORD(v151) = 0;
    LODWORD(v150) = 0;
    LODWORD(v149) = 0;
    LODWORD(v148) = 0;
    v42 = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    LODWORD(v159) = 0;
    LODWORD(v158) = 0;
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    v44 = v138;
    goto LABEL_9;
  }

  *(v32 + 96) = v165[0];
  LOBYTE(v165[0]) = 7;
  *(v32 + 104) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v32 + 112) = v48;
  LOBYTE(v165[0]) = 8;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  v164 = 0;
  *(v32 + 120) = v49;
  *(v32 + 128) = v50;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v167 = 9;
  sub_10007FD2C();
  v51 = v14;
  v52 = v16;
  v53 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v53;
  if (v53)
  {
    (*(v29 + 8))(v16, v51);
    LODWORD(v150) = 0;
    LODWORD(v149) = 0;
    LODWORD(v148) = 0;
    v42 = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    LODWORD(v159) = 0;
    LODWORD(v158) = 0;
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
LABEL_52:
    v44 = v138;
    v32 = v163;
LABEL_9:
    sub_10000BB78(v161);

    if (v44)
    {
      if (v160)
      {
LABEL_11:

        v45 = v43;
        goto LABEL_29;
      }
    }

    else
    {

      if (v160)
      {
        goto LABEL_11;
      }
    }

    v45 = v43;
LABEL_29:

    if (v152)
    {

      v46 = v141;
      v47 = 0;
      if (v151)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v46 = v141;
      v47 = 0;
      if (v151)
      {
LABEL_31:

        if ((v150 & 1) == 0)
        {
LABEL_32:
          if (v149)
          {
LABEL_33:

            if ((v148 & 1) == 0)
            {
LABEL_34:
              if (v42)
              {
LABEL_35:

                if ((v155 & 1) == 0)
                {
LABEL_36:
                  if (v156)
                  {
LABEL_37:

                    if ((v154 & 1) == 0)
                    {
LABEL_38:
                      if (v153)
                      {
LABEL_39:

                        if ((v159 & 1) == 0)
                        {
LABEL_40:
                          if (v158)
                          {
LABEL_41:

                            if ((v157 & 1) == 0)
                            {
LABEL_42:

                              if (!v45)
                              {
LABEL_43:
                                if (!v47)
                                {
                                  goto LABEL_5;
                                }

                                goto LABEL_4;
                              }

LABEL_25:

                              if ((v47 & 1) == 0)
                              {
                                goto LABEL_5;
                              }

                              goto LABEL_4;
                            }

LABEL_24:

                            if ((v45 & 1) == 0)
                            {
                              goto LABEL_43;
                            }

                            goto LABEL_25;
                          }

LABEL_23:
                          if (!v157)
                          {
                            goto LABEL_42;
                          }

                          goto LABEL_24;
                        }

LABEL_22:

                        if (v158)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_23;
                      }

LABEL_21:
                      if (!v159)
                      {
                        goto LABEL_40;
                      }

                      goto LABEL_22;
                    }

LABEL_20:

                    if (v153)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_21;
                  }

LABEL_19:
                  if (!v154)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_20;
                }

LABEL_18:
                sub_10000BE18(v32 + v46[18], &qword_1008353E0, &qword_1006C0F18);
                if (v156)
                {
                  goto LABEL_37;
                }

                goto LABEL_19;
              }

LABEL_17:
              if (!v155)
              {
                goto LABEL_36;
              }

              goto LABEL_18;
            }

LABEL_16:

            if (v42)
            {
              goto LABEL_35;
            }

            goto LABEL_17;
          }

LABEL_15:
          if (!v148)
          {
            goto LABEL_34;
          }

          goto LABEL_16;
        }

LABEL_14:

        if (v149)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }
    }

    if (!v150)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v54 = v165[0];
  if (!v165[0])
  {
    v54 = _swiftEmptyArrayStorage;
  }

  *(v163 + 136) = v54;
  LOBYTE(v165[0]) = 10;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v164 = 0;
  v56 = v163;
  *(v163 + 144) = v55;
  *(v56 + 152) = v57;
  v167 = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v164 = 0;
  *(v163 + 160) = v165[0];
  LOBYTE(v165[0]) = 12;
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  v164 = 0;
  v59 = v163;
  *(v163 + 168) = v58;
  *(v59 + 176) = v60;
  v167 = 13;
  sub_1000F20CC();
  v61 = v164;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v164 = v61;
  if (v61 || (*(v163 + 184) = v165[0], type metadata accessor for HardwareAttestationType(), LOBYTE(v165[0]) = 14, sub_1001008A0(&qword_100839AF0, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType), v62 = v164, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v164 = v62) != 0))
  {
    (*(v29 + 8))(v16, v51);
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    LODWORD(v159) = 0;
    LODWORD(v158) = 0;
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    goto LABEL_52;
  }

  sub_1000B1FC8(v28, v163 + v141[18], &qword_1008353E0, &qword_1006C0F18);
  sub_100007224(&qword_100839AF8, &qword_1006D4960);
  v167 = 15;
  sub_1000F2120();
  v63 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v63;
  if (v63)
  {
    (*(v29 + 8))(v16, v51);
    LODWORD(v156) = 0;
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    LODWORD(v159) = 0;
    LODWORD(v158) = 0;
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    LODWORD(v155) = 1;
    goto LABEL_52;
  }

  *(v163 + v141[19]) = v165[0];
  sub_100007224(&qword_100839B08, &qword_1006D4968);
  v167 = 16;
  sub_1000FFD40(&qword_100839B10, &qword_100839B08, &qword_1006D4968, sub_1000F225C);
  v64 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v64;
  if (v64)
  {
    (*(v29 + 8))(v16, v51);
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    LODWORD(v159) = 0;
    LODWORD(v158) = 0;
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    LODWORD(v155) = 1;
    LODWORD(v156) = 1;
    goto LABEL_52;
  }

  v65 = v165[0];
  if (!v165[0])
  {
    v65 = _swiftEmptyArrayStorage;
  }

  *(v163 + v141[20]) = v65;
  LOBYTE(v165[0]) = 17;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  v67 = (v163 + v141[21]);
  *v67 = v66;
  v67[1] = v68;
  LOBYTE(v165[0]) = 18;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[22]) = v69;
  v167 = 19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v164 = 0;
  *(v163 + v141[23]) = v165[0];
  sub_100007224(&qword_100839A58, &qword_1006D4920);
  v167 = 20;
  sub_1000FFD40(&qword_100839A60, &qword_100839A58, &qword_1006D4920, sub_1000F1D04);
  v70 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v70;
  if (v70)
  {
    (*(v29 + 8))(v16, v51);
    LODWORD(v158) = 0;
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    LODWORD(v155) = 1;
    LODWORD(v156) = 1;
    LODWORD(v154) = 1;
    LODWORD(v153) = 1;
    LODWORD(v159) = 1;
    goto LABEL_52;
  }

  *(v163 + v141[24]) = v165[0];
  sub_100007224(&qword_100839B30, &qword_1006D4978);
  v167 = 21;
  sub_1000F2304();
  v71 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v71;
  if (v71)
  {
    (*(v29 + 8))(v16, v51);
    LODWORD(v157) = 0;
    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    LODWORD(v155) = 1;
    LODWORD(v156) = 1;
    LODWORD(v154) = 1;
    LODWORD(v153) = 1;
    LODWORD(v159) = 1;
    LODWORD(v158) = 1;
    goto LABEL_52;
  }

  v72 = v165[0];
  if (!v165[0])
  {
    v72 = _swiftEmptyArrayStorage;
  }

  *(v163 + v141[25]) = v72;
  LOBYTE(v165[0]) = 22;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[26]) = v73;
  LOBYTE(v165[0]) = 24;
  v137 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v160 = v74;
  v164 = 0;
  LOBYTE(v165[0]) = 25;
  v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v136 = v75;
  v164 = 0;
  sub_100007224(&qword_100839A88, &qword_1006D4930);
  v167 = 26;
  sub_1000F1DDC();
  v76 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v76;
  if (v76)
  {
    (*(v29 + 8))(v16, v51);

LABEL_69:

    v43 = 0;
    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    LODWORD(v155) = 1;
    LODWORD(v156) = 1;
    LODWORD(v154) = 1;
    LODWORD(v153) = 1;
    LODWORD(v159) = 1;
    LODWORD(v158) = 1;
    LODWORD(v157) = 1;
    goto LABEL_52;
  }

  v134 = v165[0];
  v167 = 27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = 0;
  v133 = v165[0];
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v167 = 29;
  sub_1000FFD40(&qword_1008358D8, &unk_100839A40, &qword_1006C1B50, sub_10009F948);
  v77 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v77;
  if (v77)
  {
    (*(v29 + 8))(v16, v51);

    goto LABEL_69;
  }

  *(v163 + v141[29]) = v165[0];
  sub_100007224(&qword_100835478, &qword_1006D4980);
  v167 = 30;
  sub_10009F55C();
  v78 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v78;
  if (v78)
  {
    (*(v29 + 8))(v16, v51);

    LODWORD(v160) = 1;
    LODWORD(v152) = 1;
    LODWORD(v151) = 1;
    LODWORD(v150) = 1;
    LODWORD(v149) = 1;
    LODWORD(v148) = 1;
    v42 = 1;
    LODWORD(v155) = 1;
    LODWORD(v156) = 1;
    LODWORD(v154) = 1;
    LODWORD(v153) = 1;
    LODWORD(v159) = 1;
    LODWORD(v158) = 1;
    LODWORD(v157) = 1;
    v43 = 1;
    goto LABEL_52;
  }

  *(v163 + v141[30]) = v165[0];
  LOBYTE(v165[0]) = 31;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  v80 = v163 + v141[31];
  *v80 = v79;
  *(v80 + 8) = v81 & 1;
  LOBYTE(v165[0]) = 32;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  v83 = v163 + v141[32];
  *v83 = v82;
  *(v83 + 8) = v84 & 1;
  LOBYTE(v165[0]) = 33;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  v86 = v163 + v141[33];
  *v86 = v85;
  *(v86 + 8) = v87 & 1;
  LOBYTE(v165[0]) = 34;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  v89 = v163 + v141[34];
  *v89 = v88;
  *(v89 + 8) = v90 & 1;
  LOBYTE(v165[0]) = 35;
  v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  v92 = v163 + v141[35];
  *v92 = v91;
  *(v92 + 8) = v93 & 1;
  LOBYTE(v165[0]) = 36;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[36]) = (v94 == 2) | v94 & 1;
  LOBYTE(v165[0]) = 37;
  v95 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[37]) = v95;
  LOBYTE(v165[0]) = 38;
  v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[38]) = v96;
  LOBYTE(v165[0]) = 39;
  v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[44]) = v97;
  LOBYTE(v165[0]) = 40;
  v98 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[45]) = v98;
  LOBYTE(v165[0]) = 41;
  v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  *(v163 + v141[46]) = v99;
  LOBYTE(v165[0]) = 23;
  v100 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v164 = 0;
  if (v101)
  {
    v102 = sub_1000FAB98(v100, v101);
  }

  else
  {
    v102 = 0;
    v103 = 1;
  }

  v104 = v163 + v141[27];
  *v104 = v102;
  *(v104 + 8) = v103 & 1;
  v165[3] = type metadata accessor for DateProvider();
  v165[4] = &protocol witness table for DateProvider;
  sub_100032DBC(v165);
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  v167 = 28;
  v105 = v164;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v164 = v105;
  if (v105)
  {
    (*(v29 + 8))(v16, v51);

LABEL_88:
    (*(v156 + 8))(v157, v158);
    sub_10000BB78(v161);
LABEL_94:
    v32 = v163;

    sub_10000BE18(v32 + v141[18], &qword_1008353E0, &qword_1006C0F18);

    LOBYTE(v45) = 1;
    v47 = 1;
    goto LABEL_24;
  }

  if (v165[0])
  {
    DIPOIDVerifier.setIntermediates(fromBase64DER:)(v165[0]);
  }

  if (v160 && v136)
  {

    v138 = *(v143 + 104);
    v138(v142, enum case for DIPCertUsage.inoEncryption(_:), v146);
    v106 = v164;
    v139 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    if (v106)
    {
      (*(v143 + 8))(v142, v146);

      v164 = "minimumBorderPadding";
      (*(v150 + 104))(v152, enum case for DIPError.Code.internalError(_:), v151);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001008A0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v113 = swift_allocError();
      v131 = 183;
      v130[0] = 0x6F72662874696E69;
      v130[1] = 0xEB00000000293A6DLL;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v164 = v113;
      swift_willThrow();

LABEL_87:
      (*(v29 + 8))(v30, v51);
      goto LABEL_88;
    }

    v110 = *(v143 + 8);
    v111 = v146;
    v143 += 8;
    v110(v142, v146);

    v138(v144, enum case for DIPCertUsage.inoSigning(_:), v111);
    v112 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v164 = 0;
    v117 = v112;
    v110(v144, v146);

    (*(v145 + 104))(v147, enum case for EncryptedMessageEntity.ino(_:), v148);
    v162 = v139;
    v160 = v117;
    v118 = v149;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    sub_100007224(&unk_100839AB0, &qword_1006D4938);
    v119 = (sub_100007224(&qword_100834798, &qword_1006D4940) - 8);
    v120 = (*(*v119 + 80) + 32) & ~*(*v119 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_1006BF520;
    v122 = (v121 + v120);
    v123 = v119[14];
    *v122 = 0x746C7561666564;
    *(v122 + 1) = 0xE700000000000000;
    v124 = v153;
    v125 = v118;
    v126 = v118;
    v127 = v154;
    (*(v153 + 16))(&v122[v123], v125, v154);
    v152 = sub_10003E654(v121);
    swift_setDeallocating();
    sub_10000BE18(v122, &qword_100834798, &qword_1006D4940);
    swift_deallocClassInstance();

    (*(v124 + 8))(v126, v127);
    (*(v29 + 8))(v52, v51);
    (*(v156 + 8))(v157, v158);
    *(v163 + v140) = v152;
  }

  else
  {

    if (v134)
    {
      __chkstk_darwin(v107);
      v131 = v157;
      v108 = v164;
      v109 = sub_1000FAE98(&_swiftEmptyDictionarySingleton, sub_100100BB4, v130, v134);
      v164 = v108;
      if (v108)
      {

        goto LABEL_87;
      }

      v114 = v109;
    }

    else
    {
      v114 = 0;
    }

    *(v163 + v140) = v114;
    if (v133)
    {
      __chkstk_darwin(v107);
      v131 = v157;
      v115 = v164;
      v116 = sub_1000FAE98(&_swiftEmptyDictionarySingleton, sub_1000FFDBC, v130, v133);
      v164 = v115;
      if (v115)
      {

        (*(v29 + 8))(v16, v51);
        (*(v156 + 8))(v157, v158);
        sub_10000BB78(v161);
        goto LABEL_94;
      }

      v128 = v116;
    }

    else
    {
      v128 = 0;
    }

    (*(v29 + 8))(v16, v51);
    (*(v156 + 8))(v157, v158);
    *&v139[v163] = v128;
  }

  v129 = v163;
  sub_1001007D8(v163, v155, type metadata accessor for Workflow);
  sub_10000BB78(v161);
  return sub_100100840(v129, type metadata accessor for Workflow);
}

uint64_t sub_1000FDFC0(uint64_t a1, Swift::String *a2, uint64_t a3)
{
  v106 = a3;
  v113 = a2;
  v94 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v100 = *(v3 - 8);
  v101 = v3;
  __chkstk_darwin(v3);
  v102 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for EncryptedMessageEntity();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  __chkstk_darwin(v6 - 8);
  v93 = &v91 - v7;
  v8 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v9 = __chkstk_darwin(v8);
  v98 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v96 = &v91 - v12;
  v13 = __chkstk_darwin(v11);
  v104 = &v91 - v14;
  __chkstk_darwin(v13);
  v16 = &v91 - v15;
  v17 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v18 = __chkstk_darwin(v17 - 8);
  v97 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v99 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v91 - v23;
  __chkstk_darwin(v22);
  v26 = &v91 - v25;
  v27 = type metadata accessor for DIPCertUsage();
  v116 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v91 - v31;
  sub_10000BBC4(v113, v16, &unk_100839AC0, &unk_1006D4948);

  v107 = v8;
  v33 = *(v8 + 48);
  v34 = v103;
  v35 = &v16[v33];
  v36 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  sub_10000BBC4(v35 + *(v36 + 24), v26, &qword_100834D98, &unk_1006C03B0);
  sub_100100840(v35, type metadata accessor for EncryptionCertificateInStringFormat);
  v109 = v26;
  v37 = v26;
  v38 = v108;
  v39 = v24;
  sub_10000BBC4(v37, v24, &qword_100834D98, &unk_1006C03B0);
  v40 = *(v38 + 48);
  v95 = v38 + 48;
  v41 = v40(v24, 1, v34);
  v42 = v116;
  v110 = v32;
  v111 = v27;
  v112 = v30;
  v91 = v40;
  if (v41 == 1)
  {
    goto LABEL_2;
  }

  v45 = v24;
  v46 = v99;
  sub_10000BBC4(v45, v99, &qword_100834D98, &unk_1006C03B0);
  v47 = (*(v38 + 88))(v46, v34);
  v44 = v34;
  if (v47 == enum case for EncryptedMessageEntity.idvServer(_:))
  {
    v48 = *(v116 + 104);
    v49 = v111;
    v48(v110, enum case for DIPCertUsage.inoEncryption(_:), v111);
    v50 = enum case for DIPCertUsage.inoSigning(_:);
    v51 = v112;
LABEL_8:
    v48(v51, v50, v49);
    v54 = v39;
LABEL_9:
    sub_10000BE18(v54, &qword_100834D98, &unk_1006C03B0);
    goto LABEL_10;
  }

  v52 = v112;
  if (v47 == enum case for EncryptedMessageEntity.ino(_:))
  {
    v53 = &enum case for DIPCertUsage.inoEncryption(_:);
LABEL_7:
    v48 = *(v116 + 104);
    v49 = v111;
    v48(v110, *v53, v111);
    v50 = enum case for DIPCertUsage.inoSigning(_:);
    v51 = v52;
    goto LABEL_8;
  }

  if (v47 != enum case for EncryptedMessageEntity.athena(_:) && v47 != enum case for EncryptedMessageEntity.assessor(_:))
  {
    v70 = enum case for EncryptedMessageEntity.issuer(_:);
    if (v47 != enum case for EncryptedMessageEntity.issuer(_:))
    {
      v87 = v38;
      if (v47 != enum case for EncryptedMessageEntity.issuingService(_:))
      {
        (*(v38 + 8))(v46, v44);
        v32 = v110;
        v27 = v111;
        v42 = v116;
        v34 = v44;
        v30 = v112;
LABEL_2:
        v43 = *(v42 + 104);
        v43(v32, enum case for DIPCertUsage.inoEncryption(_:), v27);
        v43(v30, enum case for DIPCertUsage.inoSigning(_:), v27);
        sub_10000BE18(v39, &qword_100834D98, &unk_1006C03B0);
        v44 = v34;
        goto LABEL_10;
      }

      v88 = v109;
      sub_10000BE18(v109, &qword_100834D98, &unk_1006C03B0);
      v89 = *(v116 + 104);
      v90 = v111;
      v89(v110, enum case for DIPCertUsage.inoEncryption(_:), v111);
      v89(v112, enum case for DIPCertUsage.inoSigning(_:), v90);
      (*(v87 + 104))(v88, v70, v44);
      (*(v87 + 56))(v88, 0, 1, v44);
      v54 = v39;
      goto LABEL_9;
    }

    v53 = &enum case for DIPCertUsage.identityEncryptionExternal(_:);
    goto LABEL_7;
  }

  sub_10000BE18(v39, &qword_100834D98, &unk_1006C03B0);
  v85 = *(v116 + 104);
  v86 = v111;
  v85(v110, enum case for DIPCertUsage.accountAssessmentServerEncryption(_:), v111);
  v85(v52, enum case for DIPCertUsage.accountAssessmentServerSigning(_:), v86);
LABEL_10:
  v55 = v113;
  v56 = v104;
  sub_10000BBC4(v113, v104, &unk_100839AC0, &unk_1006D4948);

  v57 = v107;
  v58 = v56 + *(v107 + 48);

  sub_100100840(v58, type metadata accessor for EncryptionCertificateInStringFormat);
  v59 = v105;
  v60 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v59)
  {

    v114 = 0;
    v115 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v114 = 0xD000000000000030;
    v115 = 0x80000001006FF480;
    String.append(_:)(*v55);
    (*(v100 + 104))(v102, enum case for DIPError.Code.internalError(_:), v101);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001008A0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v109, &qword_100834D98, &unk_1006C03B0);
    v61 = *(v116 + 8);
    v62 = v111;
    v61(v112, v111);
    return (v61)(v110, v62);
  }

  else
  {
    v64 = v60;

    v65 = v96;
    sub_10000BBC4(v55, v96, &unk_100839AC0, &unk_1006D4948);

    v66 = v65 + *(v57 + 48);
    v67 = *(v66 + 24);

    sub_100100840(v66, type metadata accessor for EncryptionCertificateInStringFormat);
    if (v67)
    {
      v68 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v69 = v97;
      v71 = v68;
    }

    else
    {
      v71 = 0;
      v69 = v97;
    }

    v72 = v98;
    sub_10000BBC4(v55, v98, &unk_100839AC0, &unk_1006D4948);
    v73 = *v72;
    v74 = v72[1];
    sub_10000BBC4(v109, v69, &qword_100834D98, &unk_1006C03B0);
    v75 = v91;
    if (v91(v69, 1, v44) == 1)
    {
      v76 = *(v108 + 104);
      v113 = v74;
      v76(v92, enum case for EncryptedMessageEntity.ino(_:), v44);
      v77 = v75(v69, 1, v44);
      v74 = v113;
      if (v77 != 1)
      {
        sub_10000BE18(v69, &qword_100834D98, &unk_1006C03B0);
      }
    }

    else
    {
      (*(v108 + 32))(v92, v69, v44);
    }

    v78 = *(v107 + 48);
    v79 = v71;
    v80 = v64;
    v81 = v93;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    v82 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    sub_10014C0FC(v81, v73, v74);

    sub_10000BE18(v109, &qword_100834D98, &unk_1006C03B0);
    v83 = *(v116 + 8);
    v84 = v111;
    v83(v112, v111);
    v83(v110, v84);
    return sub_100100840(v98 + v78, type metadata accessor for EncryptionCertificateInStringFormat);
  }
}

void *sub_1000FEC7C()
{
  v1 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for HardwareAttestationType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Workflow(0);
  v9 = *(v8 + 76);
  if (*(v0 + v9))
  {
    v10 = *(v0 + v9);
  }

  else
  {
    sub_10000BBC4(v0 + *(v8 + 72), v3, &qword_1008353E0, &qword_1006C0F18);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000BE18(v3, &qword_1008353E0, &qword_1006C0F18);
      v10 = _swiftEmptyArrayStorage;
    }

    else
    {
      v11 = *(v5 + 32);
      v11(v7, v3, v4);
      sub_100007224(&qword_100839BC0, &qword_1006D49B0);
      v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_1006BF520;
      v11(v10 + v12, v7, v4);
    }
  }

  return v10;
}

uint64_t sub_1000FEE80@<X0>(uint64_t a1@<X8>)
{
  v64 = type metadata accessor for EncryptedMessageEntity();
  v3 = *(v64 - 8);
  v4 = __chkstk_darwin(v64);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v48 - v6;
  v60 = sub_100007224(&qword_10083A5D8, &qword_1006D8538);
  v7 = __chkstk_darwin(v60);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v61 = &v48 - v10;
  v11 = __chkstk_darwin(v9);
  v58 = &v48 - v12;
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = *(v1 + *(type metadata accessor for Workflow(0) + 112));
  if (v15)
  {
    v48 = v14;
    v49 = a1;
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v55 = enum case for EncryptedMessageEntity.assessor(_:);
    v54 = (v3 + 104);
    v56 = (v3 + 8);

    v22 = 0;
    v52 = v20;
    v53 = v16;
    v57 = result;
    if (v19)
    {
      while (1)
      {
        v23 = v22;
LABEL_9:
        v24 = __clz(__rbit64(v19)) | (v23 << 6);
        v25 = *(result + 56);
        v26 = (*(result + 48) + 16 * v24);
        v28 = *v26;
        v27 = v26[1];
        v29 = type metadata accessor for RecipientEncryptionCertificate();
        v30 = *(v29 - 8);
        v31 = v25 + *(v30 + 72) * v24;
        v32 = v60;
        v33 = v58;
        (*(v30 + 16))(&v58[*(v60 + 48)], v31, v29);
        *v33 = v28;
        v33[1] = v27;
        v34 = v61;
        sub_1000B1FC8(v33, v61, &qword_10083A5D8, &qword_1006D8538);
        v35 = v59;
        sub_10000BBC4(v34, v59, &qword_10083A5D8, &qword_1006D8538);

        v36 = *(v32 + 48);
        RecipientEncryptionCertificate.recipient.getter();
        v50 = v30;
        v51 = v29;
        (*(v30 + 8))(v35 + v36, v29);
        (*v54)(v63, v55, v64);
        sub_1001008A0(&qword_10083A5E0, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v67 == v65 && v68 == v66)
        {
          break;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v38 = *v56;
        v39 = v64;
        (*v56)(v63, v64);
        v38(v62, v39);

        if (v37)
        {
          goto LABEL_17;
        }

        v19 &= v19 - 1;
        sub_10000BE18(v61, &qword_10083A5D8, &qword_1006D8538);
        v22 = v23;
        result = v57;
        v20 = v52;
        v16 = v53;
        if (!v19)
        {
          goto LABEL_6;
        }
      }

      v41 = *v56;
      v42 = v64;
      (*v56)(v63, v64);
      v41(v62, v42);

LABEL_17:

      v43 = v48;
      sub_1000B1FC8(v61, v48, &qword_10083A5D8, &qword_1006D8538);

      v45 = v50;
      v44 = v51;
      v46 = v43 + *(v60 + 48);
      v47 = v49;
      (*(v50 + 32))(v49, v46, v51);
      return (*(v45 + 56))(v47, 0, 1, v44);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v20)
        {

          a1 = v49;
          goto LABEL_15;
        }

        v19 = *(v16 + 8 * v23);
        ++v22;
        if (v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    v40 = type metadata accessor for RecipientEncryptionCertificate();
    return (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
  }

  return result;
}

uint64_t sub_1000FF420@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for EncryptedMessageEntity();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  (*(v4 + 104))(&v18[-v8], enum case for EncryptedMessageEntity.idvServer(_:), v3);
  (*(v4 + 16))(v7, v9, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v11 = enum case for EncryptedMessageEntity.livenessReview(_:);
  v12 = type metadata accessor for Workflow(0);
  if (v10 != v11)
  {
    v13 = *(v1 + *(v12 + 112));
    v15 = *(v4 + 8);

    v14 = v15(v7, v3);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return (*(v4 + 8))(v9, v3);
  }

  v13 = *(v1 + *(v12 + 172));

  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  __chkstk_darwin(v14);
  *&v18[-16] = v9;
  sub_1001618CC(sub_1001008E8, v13, a1);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1000FF674@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for EncryptedMessageEntity();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = enum case for EncryptedMessageEntity.livenessReview(_:);
  (*(v4 + 104))(&v18[-v8], enum case for EncryptedMessageEntity.livenessReview(_:), v3);
  (*(v4 + 16))(v7, v9, v3);
  v11 = (*(v4 + 88))(v7, v3);
  v12 = type metadata accessor for Workflow(0);
  if (v11 != v10)
  {
    v13 = *(v1 + *(v12 + 112));
    v15 = *(v4 + 8);

    v14 = v15(v7, v3);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return (*(v4 + 8))(v9, v3);
  }

  v13 = *(v1 + *(v12 + 172));

  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  __chkstk_darwin(v14);
  *&v18[-16] = v9;
  sub_1001618CC(sub_100100BCC, v13, a1);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1000FF8C0()
{
  v0 = type metadata accessor for EncryptedMessageEntity();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecipientEncryptionCertificate.recipient.getter();
  sub_1001008A0(&qword_10083A5E0, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v1 + 8))(v3, v0);

  return v4 & 1;
}

uint64_t sub_1000FFA4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + *(type metadata accessor for Workflow(0) + 112));
  if (v11 && *(v11 + 16) && (v12 = sub_10003ADCC(a1, a2), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for RecipientEncryptionCertificate();
    return (*(*(v16 - 8) + 16))(a3, v15 + *(*(v16 - 8) + 72) * v14, v16);
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v19 = 0xD000000000000029;
    v20 = 0x80000001006FF4F0;
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    (*(v8 + 104))(v10, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001008A0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

unint64_t sub_1000FFCEC()
{
  result = qword_10083A5D0;
  if (!qword_10083A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A5D0);
  }

  return result;
}

uint64_t sub_1000FFD40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *sub_1000FFDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100100364(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100100364(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_1001003E4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1001003E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100142424(v9, 0), v12 = sub_10010053C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10010053C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10010075C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10010075C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10010075C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001007D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100100840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001008A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for Workflow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
    goto LABEL_17;
  }

  if (a2 + 41 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 41) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 41;
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

      return (*a1 | (v4 << 8)) - 41;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 41;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v8 = v6 - 42;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Workflow.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD7)
  {
    v4 = 0;
  }

  if (a2 > 0xD6)
  {
    v5 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
    *result = a2 + 41;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100100A5C()
{
  result = qword_10083A5F0;
  if (!qword_10083A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A5F0);
  }

  return result;
}

unint64_t sub_100100AB4()
{
  result = qword_10083A5F8;
  if (!qword_10083A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A5F8);
  }

  return result;
}

unint64_t sub_100100B0C()
{
  result = qword_10083A600;
  if (!qword_10083A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A600);
  }

  return result;
}

unint64_t sub_100100B60(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x2A)
  {
    return 42;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100100BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Workflow(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100100C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Workflow(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WorkflowRecommendationResponse(uint64_t a1)
{
  result = qword_10083A660;
  if (!qword_10083A660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100D38(uint64_t a1)
{
  result = type metadata accessor for Workflow(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_100100DB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100EA8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100100F8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100101080@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100101E34(*a1);
  *a2 = result;
  return result;
}

void sub_1001010B0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x776F6C666B726F77;
  v5 = 0xD000000000000011;
  v6 = 0x80000001006F8BB0;
  v7 = 0xEF7344495547746ELL;
  v8 = 0x656D737365737361;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001006F8BE0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001006F8C00;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100101164()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0xD000000000000011;
  v4 = 0x656D737365737361;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

unint64_t sub_100101214@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100101E34(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10010123C(uint64_t a1)
{
  v2 = sub_10010196C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101278(uint64_t a1)
{
  v2 = sub_10010196C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001012B4(uint64_t a1)
{
  v37 = v1;
  v2 = __chkstk_darwin(a1);
  v33 = v3;
  v4 = sub_100007224(&qword_10083A698, &qword_1006D8720);
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_100007224(&qword_10083A6A0, &qword_1006D8728);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for WorkflowRecommendationResponse(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[3];
  v41 = v2;
  sub_10000BA08(v2, v13);
  sub_10010196C();
  v14 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000BB78(v41);
  }

  v15 = v34;
  v16 = v12;
  LOBYTE(v40[0]) = 0;
  sub_1001019C0();
  v17 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  JWSSignedJSON.payload.getter();
  (*(v15 + 8))(v6, v4);
  LOBYTE(v40[0]) = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  v21 = type metadata accessor for Workflow(0);
  v22 = v16;
  v23 = &v16[*(v21 + 164)];

  *v23 = v18;
  v23[1] = v20;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v39[0] = 3;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v40[0];
  v37 = v21;
  v26 = *(v21 + 160);

  *(v22 + v26) = v25;
  LOBYTE(v40[0]) = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v28;
  v30 = (v22 + *(v37 + 168));

  *v30 = v27;
  v30[1] = v29;
  v39[8583] = 1;
  sub_10007FDA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v35 + 8))(v9, v17);
  memcpy(v38, v40, sizeof(v38));
  v31 = *(v37 + 156);
  memcpy(v39, (v22 + v31), 0x2181uLL);
  sub_100101A24(v39);
  memcpy((v22 + v31), v38, 0x2181uLL);
  sub_100101A8C(v22, v33);
  sub_10000BB78(v41);
  return sub_100101AF0(v22, type metadata accessor for WorkflowRecommendationResponse);
}

uint64_t sub_1001017B8(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_10083A6E0, &qword_1006D8928);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_100102060();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[3];
  v15 = v2[2];
  v16 = v8;
  v9 = v2[5];
  v17 = v2[4];
  v18 = v9;
  v10 = v2[1];
  v13 = *v2;
  v14 = v10;
  sub_1001020B4(v2, v12);
  sub_1000B14B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  v12[5] = v18;
  v12[0] = v13;
  v12[1] = v14;
  sub_1000ACC70(v12);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10010196C()
{
  result = qword_10083A6A8;
  if (!qword_10083A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6A8);
  }

  return result;
}

unint64_t sub_1001019C0()
{
  result = qword_10083A6B0;
  if (!qword_10083A6B0)
  {
    sub_10000B870(&qword_10083A698, &qword_1006D8720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6B0);
  }

  return result;
}

uint64_t sub_100101A24(uint64_t a1)
{
  v2 = sub_100007224(&qword_100839990, &unk_1006C19E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100101A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowRecommendationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100101B74()
{
  result = qword_10083A6B8;
  if (!qword_10083A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6B8);
  }

  return result;
}

uint64_t sub_100101BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100101C7C(uint64_t a1)
{
  v2 = sub_100102060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101CB8(uint64_t a1)
{
  v2 = sub_100102060();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100101CF4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100101E80(a2, v8);
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

unint64_t sub_100101D88()
{
  result = qword_10083A6C0;
  if (!qword_10083A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6C0);
  }

  return result;
}

unint64_t sub_100101DE0()
{
  result = qword_10083A6C8;
  if (!qword_10083A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6C8);
  }

  return result;
}

unint64_t sub_100101E34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FAD38, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100101E80@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A6D0, &qword_1006D8920);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_100102060();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_1000ACC1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  result = sub_10000BB78(a1);
  v10 = v16;
  a2[2] = v15;
  a2[3] = v10;
  v11 = v18;
  a2[4] = v17;
  a2[5] = v11;
  v12 = v14;
  *a2 = v13;
  a2[1] = v12;
  return result;
}

unint64_t sub_100102060()
{
  result = qword_10083A6D8;
  if (!qword_10083A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6D8);
  }

  return result;
}

unint64_t sub_100102100()
{
  result = qword_10083A6E8;
  if (!qword_10083A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6E8);
  }

  return result;
}

unint64_t sub_100102158()
{
  result = qword_10083A6F0;
  if (!qword_10083A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6F0);
  }

  return result;
}

unint64_t sub_1001021B0()
{
  result = qword_10083A6F8;
  if (!qword_10083A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6F8);
  }

  return result;
}

id sub_100102204(id a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = DIVerificationErrorDomain;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v12)
  {

    goto LABEL_9;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_9:
    swift_errorRetain();
    return a1;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  *&v43 = a1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v18 = String.init<A>(describing:)();
  v44 = &type metadata for String;
  *&v43 = v18;
  *(&v43 + 1) = v19;
  sub_10001F348(&v43, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = &_swiftEmptyDictionarySingleton;
  sub_10016CC40(v42, v15, v17, isUniquelyReferenced_nonNull_native);

  v21 = _convertErrorToNSError(_:)();
  v22 = sub_1001025F8([v21 code]);
  v23 = objc_allocWithZone(NSError);
  v24 = v11;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithDomain:v24 code:v22 userInfo:isa];

  defaultLogger()();
  a1 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v3;
    v31 = v30;
    *&v43 = v30;
    *v29 = 134349314;
    *(v29 + 4) = v22;
    *(v29 + 12) = 2082;
    v32 = [a1 localizedDescription];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v21;
    v35 = v34;

    v36 = sub_100141FE4(v33, v35, &v43);

    *(v29 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Returning DIVerificationError (%{public}ld) with description: %{public}s", v29, 0x16u);
    sub_10000BB78(v31);

    (*(v40 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return a1;
}

unint64_t sub_1001025F8(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v18 - v11;
  if (result >= 0xFFFFFFFFFFFFFFECLL)
  {
    return result;
  }

  if (result <= 40200)
  {
    if (result - 40101 < 2 || result == -22)
    {
      return result;
    }
  }

  else if (result - 40401 < 2 || result == 40201 || result == 50001)
  {
    return result;
  }

  DIPError.Code.init(rawValue:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000451E8(v4);
    return -1;
  }

  v13 = *(v6 + 32);
  v13(v12, v4, v5);
  v13(v9, v12, v5);
  v14 = (*(v6 + 88))(v9, v5);
  if (v14 == enum case for DIPError.Code.topekaInvalidRequestMandatoryAttributeMissing(_:) || v14 == enum case for DIPError.Code.topekaInvalidRequestInvalidAttributeLength(_:) || v14 == enum case for DIPError.Code.topekaInvalidRequestInvalidAttributeType(_:))
  {
    return -6;
  }

  if (v14 == enum case for DIPError.Code.topekaUnderageUser(_:))
  {
    return -22;
  }

  if (v14 == enum case for DIPError.Code.topekaInvalidOTP(_:))
  {
    return -6;
  }

  v17 = v14;
  result = -11;
  if (v17 != enum case for DIPError.Code.timeoutNetworkBAA(_:) && v17 != enum case for DIPError.Code.timeoutNetworkConfig(_:) && v17 != enum case for DIPError.Code.timeoutNetworkSendOTD(_:))
  {
    (*(v6 + 8))(v9, v5);
    return -1;
  }

  return result;
}

uint64_t sub_1001028E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v80 = a2;
  v83 = a1;
  v3 = type metadata accessor for ISO18013DigestAlgorithm();
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v87 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CredentialBuilderTimePolicy();
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v86 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083A700, &qword_1006D8A40);
  __chkstk_darwin(v7 - 8);
  v82 = &v64 - v8;
  v9 = sub_100007224(&qword_10083A708, &qword_1006D8A48);
  __chkstk_darwin(v9 - 8);
  v81 = &v64 - v10;
  v11 = type metadata accessor for COSEKey();
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v79 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CredentialBuilderPayloadFormat();
  v75 = *(v13 - 8);
  v76 = v13;
  __chkstk_darwin(v13);
  v93 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DeveloperTestPhotoIDCredentialBuilder();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ISO18013KnownDocTypes();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v20 = __chkstk_darwin(v19 - 8);
  v74 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v64 - v23;
  __chkstk_darwin(v22);
  v26 = &v64 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v92 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v64 - v32;
  __chkstk_darwin(v31);
  v35 = &v64 - v34;
  v36 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v37 = String._bridgeToObjectiveC()();
  v91 = v36;
  v38 = [v36 dateFromString:v37];

  v94 = v33;
  v71 = v18;
  if (v38)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v28 + 32);
    v39(v26, v33, v27);
    v40 = *(v28 + 56);
    v40(v26, 0, 1, v27);
    v41 = v35;
    v39(v35, v26, v27);
  }

  else
  {
    v40 = *(v28 + 56);
    v40(v26, 1, 1, v27);
    v41 = v35;
    Date.init()();
    if ((*(v28 + 48))(v26, 1, v27) != 1)
    {
      sub_100103444(v26);
    }
  }

  v42 = String._bridgeToObjectiveC()();
  v43 = [v91 dateFromString:v42];

  if (v43)
  {
    v44 = v94;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = *(v28 + 32);
    v45(v24, v44, v27);
    v40(v24, 0, 1, v27);
    v45(v92, v24, v27);
    v46 = v41;
    v47 = v71;
  }

  else
  {
    v40(v24, 1, 1, v27);
    Date.init()();
    v48 = (*(v28 + 48))(v24, 1, v27);
    v46 = v41;
    v47 = v71;
    if (v48 != 1)
    {
      sub_100103444(v24);
    }
  }

  v49 = v72;
  v50 = v73;
  (*(v72 + 16))(v47, v80, v73);
  v51 = (*(v49 + 88))(v47, v50);
  v52 = v94;
  if (v51 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    v70 = static DeveloperTestMDLCredentialBuilder.payloadElements.getter();
  }

  else if (v51 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
  {
    v53 = v67;
    DeveloperTestJapanNationalIDCardCredentialBuilder.init()();
    v70 = DeveloperTestJapanNationalIDCardCredentialBuilder.payloadElements.getter();
    (*(v68 + 8))(v53, v69);
  }

  else if (v51 == enum case for ISO18013KnownDocTypes.photoID(_:))
  {
    v54 = v64;
    DeveloperTestPhotoIDCredentialBuilder.init()();
    v70 = DeveloperTestPhotoIDCredentialBuilder.payloadElements.getter();
    (*(v65 + 8))(v54, v66);
  }

  else
  {
    v70 = sub_10003E9A0(_swiftEmptyArrayStorage);
    (*(v49 + 8))(v47, v50);
  }

  (*(v75 + 104))(v93, enum case for CredentialBuilderPayloadFormat.ISO18013_5_1(_:), v76);
  v55 = ISO18013KnownDocTypes.rawValue.getter();
  v75 = v56;
  v76 = v55;
  v57 = *(v28 + 16);
  v58 = v74;
  v57(v74, v46, v27);
  v40(v58, 0, 1, v27);
  v80 = v46;
  v59 = v92;
  v57(v52, v92, v27);
  (*(v77 + 16))(v79, v83, v78);
  v60 = type metadata accessor for CredentialBuilderPayloadDetails.KeyAuthorizations();
  (*(*(v60 - 8) + 56))(v81, 1, 1, v60);
  v61 = type metadata accessor for CredentialBuilderPayloadStatusDetails();
  (*(*(v61 - 8) + 56))(v82, 1, 1, v61);
  (*(v84 + 104))(v86, enum case for CredentialBuilderTimePolicy.notSpecified(_:), v85);
  (*(v88 + 104))(v87, enum case for ISO18013DigestAlgorithm.sha256(_:), v89);
  CredentialBuilderPayloadDetails.init(format:docType:elements:validFrom:validUntil:timePolicy:deviceKey:deviceKeyAuthorizations:signingAlgorithm:digestAlgorithm:status:)();

  v62 = *(v28 + 8);
  v62(v59, v27);
  return (v62)(v80, v27);
}

uint64_t sub_100103444(uint64_t a1)
{
  v2 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001034C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100103540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder(uint64_t a1)
{
  result = qword_10083A768;
  if (!qword_10083A768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001035FC(uint64_t a1)
{
  result = type metadata accessor for ISO18013KnownDocTypes();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100103668(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CredentialBuilderPayloadDetails();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100103728, 0, 0);
}

uint64_t sub_100103728()
{
  sub_1001028E0(*(v0 + 96), *(v0 + 104), *(v0 + 128));
  v1 = *(v0 + 104);
  *(v0 + 40) = type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder(0);
  *(v0 + 48) = sub_100103D38();
  v2 = sub_100032DBC((v0 + 16));
  sub_100103D90(v1, v2);
  *(v0 + 80) = type metadata accessor for DateProvider();
  *(v0 + 88) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 56));
  DateProvider.init()();
  v3 = objc_allocWithZone(type metadata accessor for IdentityCredentialPayloadBuilder());
  *(v0 + 136) = IdentityCredentialPayloadBuilder.init(with:dateProvider:)();
  v7 = (&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1001038A0;
  v5 = *(v0 + 128);

  return v7(v5);
}

uint64_t sub_1001038A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_100103A68;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_1001039D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001039D4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);

  return v4(v5, v6);
}

uint64_t sub_100103A68()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100103AF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_100103668(a1);
}

uint64_t sub_100103B8C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_100103C9C()
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(length:)();
  CredentialBuilderSignatureDetails.init(signingAlgorithm:issuerCertificate:signature:)();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100103D38()
{
  result = qword_10083A7A0;
  if (!qword_10083A7A0)
  {
    type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A7A0);
  }

  return result;
}

uint64_t sub_100103D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100103DF4()
{
  v1[7] = v0;
  v2 = type metadata accessor for COSEKey();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for ISO18013KnownDocTypes();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100103FB4, 0, 0);
}

uint64_t sub_100103FB4()
{
  v65 = v0;
  v1 = objc_opt_self();
  *(v0 + 184) = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.deleteDeveloperTestMDLBeforeCreation.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Deleting existing developer test mDL due to user defaults setting", v7, 2u);
    }

    v8 = *(v0 + 176);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);

    (*(v10 + 8))(v8, v9);
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_10010461C;

    return sub_100106BAC();
  }

  v13 = [*(v0 + 184) standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipDeveloperTestMDLCreation.getter();
  v15 = NSUserDefaults.internalBool(forKey:)(v14);

  if (v15)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 168);
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping creation of developer test mDL due to user defaults setting", v22, 2u);
    }

    (*(v21 + 8))(v19, v20);
LABEL_11:

    v23 = *(v0 + 8);

    return v23();
  }

  defaultLogger()();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 160);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  if (v26)
  {
    v63 = *(v0 + 160);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v64 = v31;
    *v30 = 136315138;

    sub_100007224(&qword_10083A858, &qword_1006D8B00);
    sub_10010802C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
    v32 = Dictionary.Keys.description.getter();
    v34 = v33;

    v35 = sub_100141FE4(v32, v34, &v64);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "DeveloperTestMDLManager self.iso18013DocTypes %s", v30, 0xCu);
    sub_10000BB78(v31);

    v38 = *(v28 + 8);
    v36 = v28 + 8;
    v37 = v38;
    v38(v63, v29);
  }

  else
  {

    v39 = *(v28 + 8);
    v36 = v28 + 8;
    v37 = v39;
    v39(v27, v29);
  }

  *(v0 + 200) = v36;
  *(v0 + 208) = v37;
  v40 = *(v0 + 96);
  v41 = *(v0 + 56);
  v42 = v41[7];
  *(v0 + 216) = v42;
  v43 = *(v42 + 32);
  *(v0 + 400) = v43;
  v44 = -1;
  v45 = -1 << v43;
  if (-(-1 << v43) < 64)
  {
    v44 = ~(-1 << -v45);
  }

  v46 = v44 & *(v42 + 64);

  if (!v46)
  {
    v49 = 0;
    while (((63 - v45) >> 6) - 1 != v49)
    {
      v48 = v49 + 1;
      v46 = *(v47 + 8 * v49++ + 72);
      if (v46)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  v48 = 0;
LABEL_24:
  *(v0 + 224) = v46;
  *(v0 + 232) = v48;
  v50 = *(v0 + 112);
  v51 = *(v0 + 120);
  v52 = *(v0 + 88);
  v53 = *(v47 + 48) + *(v40 + 72) * (__clz(__rbit64(v46)) | (v48 << 6));
  v54 = *(v40 + 16);
  *(v0 + 240) = v54;
  *(v0 + 248) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v51, v53, v52);
  (*(v40 + 32))(v50, v51, v52);
  v55._countAndFlagsBits = 0x6335333332343730;
  v56._object = 0x80000001006FF5D0;
  v55._object = 0xE800000000000000;
  v56._countAndFlagsBits = 0xD00000000000003DLL;
  logMilestone(tag:description:)(v55, v56);
  v57 = sub_10000BA08(v41 + 2, v41[5]);
  v58 = ISO18013KnownDocTypes.rawValue.getter();
  v60 = v59;
  *(v0 + 256) = v59;
  v61 = *v57;
  v62 = swift_task_alloc();
  *(v0 + 264) = v62;
  *v62 = v0;
  v62[1] = sub_100104CEC;

  return sub_10050657C(&off_1007FAE00, v58, v60, v61);
}

uint64_t sub_10010461C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1001047D8, 0, 0);
  }
}

uint64_t sub_1001047D8()
{
  v54 = v0;
  v1 = [*(v0 + 184) standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipDeveloperTestMDLCreation.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 168);
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping creation of developer test mDL due to user defaults setting", v10, 2u);
    }

    (*(v9 + 8))(v7, v8);
LABEL_5:

    v11 = *(v0 + 8);

    return v11();
  }

  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 160);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  if (v15)
  {
    v52 = *(v0 + 160);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v53 = v20;
    *v19 = 136315138;

    sub_100007224(&qword_10083A858, &qword_1006D8B00);
    sub_10010802C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
    v21 = Dictionary.Keys.description.getter();
    v23 = v22;

    v24 = sub_100141FE4(v21, v23, &v53);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "DeveloperTestMDLManager self.iso18013DocTypes %s", v19, 0xCu);
    sub_10000BB78(v20);

    v27 = *(v17 + 8);
    v25 = v17 + 8;
    v26 = v27;
    v27(v52, v18);
  }

  else
  {

    v28 = *(v17 + 8);
    v25 = v17 + 8;
    v26 = v28;
    v28(v16, v18);
  }

  *(v0 + 200) = v25;
  *(v0 + 208) = v26;
  v29 = *(v0 + 96);
  v30 = *(v0 + 56);
  v31 = v30[7];
  *(v0 + 216) = v31;
  v32 = *(v31 + 32);
  *(v0 + 400) = v32;
  v33 = -1;
  v34 = -1 << v32;
  if (-(-1 << v32) < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v35 = v33 & *(v31 + 64);

  if (!v35)
  {
    v38 = 0;
    while (((63 - v34) >> 6) - 1 != v38)
    {
      v37 = v38 + 1;
      v35 = *(v36 + 8 * v38++ + 72);
      if (v35)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_5;
  }

  v37 = 0;
LABEL_18:
  *(v0 + 224) = v35;
  *(v0 + 232) = v37;
  v39 = *(v0 + 112);
  v40 = *(v0 + 120);
  v41 = *(v0 + 88);
  v42 = *(v36 + 48) + *(v29 + 72) * (__clz(__rbit64(v35)) | (v37 << 6));
  v43 = *(v29 + 16);
  *(v0 + 240) = v43;
  *(v0 + 248) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v40, v42, v41);
  (*(v29 + 32))(v39, v40, v41);
  v44._countAndFlagsBits = 0x6335333332343730;
  v45._object = 0x80000001006FF5D0;
  v44._object = 0xE800000000000000;
  v45._countAndFlagsBits = 0xD00000000000003DLL;
  logMilestone(tag:description:)(v44, v45);
  v46 = sub_10000BA08(v30 + 2, v30[5]);
  v47 = ISO18013KnownDocTypes.rawValue.getter();
  v49 = v48;
  *(v0 + 256) = v48;
  v50 = *v46;
  v51 = swift_task_alloc();
  *(v0 + 264) = v51;
  *v51 = v0;
  v51[1] = sub_100104CEC;

  return sub_10050657C(&off_1007FAE00, v47, v49, v50);
}

uint64_t sub_100104CEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1001053B0;
  }

  else
  {
    v4 = sub_100104E28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100104E28()
{
  v55 = v0;
  if (!*(*(v0 + 272) + 16) || (v1 = sub_10003ADCC(0x797469746E656469, 0xED0000747365742DLL), (v2 & 1) == 0))
  {

    goto LABEL_7;
  }

  v3 = *(*(*(v0 + 272) + 56) + 8 * v1);

  v4 = *(v3 + 16);

  if (!v4)
  {
LABEL_7:
    v25 = *(v0 + 56);
    v26 = [objc_allocWithZone(DCCredentialOptions) init];
    *(v0 + 288) = v26;
    [v26 setReaderAuthenticationPolicy:1];
    [v26 setPayloadProtectionPolicy:0];
    [v26 setPresentmentAuthPolicy:1];
    v27 = *sub_10000BA08((v25 + 16), *(v25 + 40));
    v28 = v26;
    v29 = swift_task_alloc();
    *(v0 + 296) = v29;
    *v29 = v0;
    v29[1] = sub_1001054B0;

    return sub_100506EC8(0x797469746E656469, 0xED0000747365742DLL, v26, v27);
  }

  v5 = *(v0 + 240);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  defaultLogger()();
  v5(v7, v6, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 208);
  v52 = *(v0 + 128);
  v53 = *(v0 + 152);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  if (v11)
  {
    v17 = swift_slowAlloc();
    v51 = v14;
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    v19 = ISO18013KnownDocTypes.rawValue.getter();
    v50 = v12;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v13, v15);
    v23 = sub_100141FE4(v19, v21, &v54);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Developer Test mDL credential already exists for docType %s", v17, 0xCu);
    sub_10000BB78(v18);

    v50(v53, v52);
    result = (v22)(v51, v15);
  }

  else
  {

    v30 = *(v16 + 8);
    v30(v13, v15);
    v12(v53, v52);
    result = (v30)(v14, v15);
  }

  v31 = *(v0 + 232);
  v32 = (*(v0 + 224) - 1) & *(v0 + 224);
  if (v32)
  {
    result = *(v0 + 216);
LABEL_17:
    *(v0 + 224) = v32;
    *(v0 + 232) = v31;
    v34 = *(v0 + 112);
    v35 = *(v0 + 120);
    v36 = *(v0 + 88);
    v37 = *(v0 + 96);
    v38 = *(v0 + 56);
    v39 = *(result + 48) + *(v37 + 72) * (__clz(__rbit64(v32)) | (v31 << 6));
    v40 = *(v37 + 16);
    *(v0 + 240) = v40;
    *(v0 + 248) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v35, v39, v36);
    (*(v37 + 32))(v34, v35, v36);
    v41._countAndFlagsBits = 0x6335333332343730;
    v42._object = 0x80000001006FF5D0;
    v41._object = 0xE800000000000000;
    v42._countAndFlagsBits = 0xD00000000000003DLL;
    logMilestone(tag:description:)(v41, v42);
    v43 = sub_10000BA08((v38 + 16), *(v38 + 40));
    v44 = ISO18013KnownDocTypes.rawValue.getter();
    v46 = v45;
    *(v0 + 256) = v45;
    v47 = *v43;
    v48 = swift_task_alloc();
    *(v0 + 264) = v48;
    *v48 = v0;
    v48[1] = sub_100104CEC;

    return sub_10050657C(&off_1007FAE00, v44, v46, v47);
  }

  else
  {
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 216);
      if (v33 >= (((1 << *(v0 + 400)) + 63) >> 6))
      {
        break;
      }

      v32 = *(result + 8 * v33 + 64);
      ++v31;
      if (v32)
      {
        v31 = v33;
        goto LABEL_17;
      }
    }

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_1001053B0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001054B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = v2;

  if (v2)
  {
    v6 = sub_1001057E8;
  }

  else
  {
    v6 = sub_1001055F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001055F0()
{
  v1 = v0[7];
  v2._countAndFlagsBits = 0x3362373162396663;
  v3._object = 0x80000001006FF610;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0xD000000000000044;
  logMilestone(tag:description:)(v2, v3);
  v4 = *sub_10000BA08((v1 + 16), *(v1 + 40));
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_1001056CC;
  v7 = v0[38];
  v6 = v0[39];

  return sub_100507420(v7, v6, v4);
}

uint64_t sub_1001056CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {

    v4 = sub_10010606C;
  }

  else
  {
    v4 = sub_1001058F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001057E8()
{
  v1 = v0[36];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001058F0()
{
  v69 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  CBORDecoder.init()();
  v3 = [v2 publicKeyCOSEKey];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_10010802C(&qword_10083A850, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v7 = *(v0 + 336);
    v8 = *(v0 + 288);
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));

    sub_10000B90C(v4, v6);

    v9 = *(v0 + 8);
LABEL_3:

    return v9();
  }

  else
  {
    v11 = *(v0 + 216);
    sub_10000B90C(v4, v6);

    v12._countAndFlagsBits = 0x3031613830353138;
    v13._countAndFlagsBits = 0xD000000000000045;
    v13._object = 0x80000001006FF660;
    v12._object = 0xE800000000000000;
    logMilestone(tag:description:)(v12, v13);
    if (*(v11 + 16) && (v14 = sub_10003B480(*(v0 + 112)), (v15 & 1) != 0))
    {
      sub_100020260(*(*(v0 + 216) + 56) + 40 * v14, v0 + 16);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      sub_10000BA08((v0 + 16), v16);
      v65 = (*(v17 + 8) + **(v17 + 8));
      v18 = swift_task_alloc();
      *(v0 + 352) = v18;
      *v18 = v0;
      v18[1] = sub_100106174;
      v19 = *(v0 + 80);

      return v65(v19, v16, v17);
    }

    else
    {
      defaultLogger()();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 312);
      if (v22)
      {
        v24 = *(v0 + 304);
        v61 = *(v0 + 208);
        v57 = *(v0 + 144);
        v58 = *(v0 + 288);
        v56 = *(v0 + 128);
        v25 = *(v0 + 336);
        v26 = *(v0 + 96);
        v63 = *(v0 + 112);
        v66 = *(v0 + 88);
        v27 = *(v0 + 72);
        v59 = *(v0 + 64);
        v60 = *(v0 + 80);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v68 = v29;
        *v28 = 136315138;
        v30 = sub_100141FE4(v24, v23, &v68);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "Developer Test MDL creation completed with identifier %s", v28, 0xCu);
        sub_10000BB78(v29);

        sub_10000BD94(0, 0xF000000000000000);
        v61(v57, v56);
        (*(v27 + 8))(v60, v59);
        result = (*(v26 + 8))(v63, v66);
      }

      else
      {
        v31 = *(v0 + 288);
        v62 = *(v0 + 208);
        v32 = *(v0 + 144);
        v33 = *(v0 + 128);
        v34 = *(v0 + 96);
        v64 = *(v0 + 88);
        v67 = *(v0 + 112);
        v35 = *(v0 + 72);
        v36 = *(v0 + 80);
        v37 = *(v0 + 64);

        sub_10000BD94(0, 0xF000000000000000);

        v62(v32, v33);
        (*(v35 + 8))(v36, v37);
        result = (*(v34 + 8))(v67, v64);
      }

      v38 = *(v0 + 232);
      v39 = (*(v0 + 224) - 1) & *(v0 + 224);
      if (v39)
      {
        result = *(v0 + 216);
LABEL_20:
        *(v0 + 224) = v39;
        *(v0 + 232) = v38;
        v41 = *(v0 + 112);
        v42 = *(v0 + 120);
        v43 = *(v0 + 88);
        v44 = *(v0 + 96);
        v45 = *(v0 + 56);
        v46 = *(result + 48) + *(v44 + 72) * (__clz(__rbit64(v39)) | (v38 << 6));
        v47 = *(v44 + 16);
        *(v0 + 240) = v47;
        *(v0 + 248) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v47(v42, v46, v43);
        (*(v44 + 32))(v41, v42, v43);
        v48._countAndFlagsBits = 0x6335333332343730;
        v49._object = 0x80000001006FF5D0;
        v48._object = 0xE800000000000000;
        v49._countAndFlagsBits = 0xD00000000000003DLL;
        logMilestone(tag:description:)(v48, v49);
        v50 = sub_10000BA08((v45 + 16), *(v45 + 40));
        v51 = ISO18013KnownDocTypes.rawValue.getter();
        v53 = v52;
        *(v0 + 256) = v52;
        v54 = *v50;
        v55 = swift_task_alloc();
        *(v0 + 264) = v55;
        *v55 = v0;
        v55[1] = sub_100104CEC;

        return sub_10050657C(&off_1007FAE00, v51, v53, v54);
      }

      else
      {
        while (1)
        {
          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          result = *(v0 + 216);
          if (v40 >= (((1 << *(v0 + 400)) + 63) >> 6))
          {

            v9 = *(v0 + 8);
            goto LABEL_3;
          }

          v39 = *(result + 8 * v40 + 64);
          ++v38;
          if (v39)
          {
            v38 = v40;
            goto LABEL_20;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10010606C()
{
  v1 = v0[36];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100106174(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {

    v5 = sub_100106A74;
  }

  else
  {
    v5 = sub_100106294;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100106294()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[7];
  sub_10000BB78(v0 + 2);
  v4 = *sub_10000BA08((v3 + 16), *(v3 + 40));
  sub_10000B8B8(v1, v2);
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_100106368;
  v6 = v0[45];
  v7 = v0[46];
  v9 = v0[38];
  v8 = v0[39];

  return sub_1005078EC(v9, v8, v6, v7, 0, v4);
}

uint64_t sub_100106368()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    sub_10000B90C(*(v2 + 360), *(v2 + 368));

    v3 = sub_100106930;
  }

  else
  {
    v3 = sub_100106490;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100106490()
{
  v54 = v0;
  sub_10000B90C(*(v0 + 360), *(v0 + 368));
  v1 = *(v0 + 368);
  v52 = *(v0 + 360);
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 312);
  if (v4)
  {
    v6 = *(v0 + 304);
    v46 = *(v0 + 208);
    v41 = *(v0 + 144);
    v42 = *(v0 + 288);
    v39 = *(v0 + 336);
    v40 = *(v0 + 128);
    v7 = *(v0 + 96);
    v48 = *(v0 + 88);
    v50 = *(v0 + 112);
    v8 = *(v0 + 72);
    v43 = *(v0 + 64);
    v44 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v53 = v10;
    *v9 = 136315138;
    v11 = sub_100141FE4(v6, v5, &v53);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Developer Test MDL creation completed with identifier %s", v9, 0xCu);
    sub_10000BB78(v10);

    sub_10000BD94(v52, v1);
    v46(v41, v40);
    (*(v8 + 8))(v44, v43);
    result = (*(v7 + 8))(v50, v48);
  }

  else
  {
    v13 = *(v0 + 288);
    v47 = *(v0 + 208);
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    v49 = *(v0 + 88);
    v51 = *(v0 + 112);
    v45 = *(v0 + 80);
    v17 = v1;
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);

    sub_10000BD94(v52, v17);

    v47(v14, v15);
    (*(v19 + 8))(v45, v18);
    result = (*(v16 + 8))(v51, v49);
  }

  v20 = *(v0 + 232);
  v21 = (*(v0 + 224) - 1) & *(v0 + 224);
  if (v21)
  {
    result = *(v0 + 216);
LABEL_10:
    *(v0 + 224) = v21;
    *(v0 + 232) = v20;
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 56);
    v28 = *(result + 48) + *(v26 + 72) * (__clz(__rbit64(v21)) | (v20 << 6));
    v29 = *(v26 + 16);
    *(v0 + 240) = v29;
    *(v0 + 248) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v24, v28, v25);
    (*(v26 + 32))(v23, v24, v25);
    v30._countAndFlagsBits = 0x6335333332343730;
    v31._object = 0x80000001006FF5D0;
    v30._object = 0xE800000000000000;
    v31._countAndFlagsBits = 0xD00000000000003DLL;
    logMilestone(tag:description:)(v30, v31);
    v32 = sub_10000BA08((v27 + 16), *(v27 + 40));
    v33 = ISO18013KnownDocTypes.rawValue.getter();
    v35 = v34;
    *(v0 + 256) = v34;
    v36 = *v32;
    v37 = swift_task_alloc();
    *(v0 + 264) = v37;
    *v37 = v0;
    v37[1] = sub_100104CEC;

    return sub_10050657C(&off_1007FAE00, v33, v35, v36);
  }

  else
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 216);
      if (v22 >= (((1 << *(v0 + 400)) + 63) >> 6))
      {
        break;
      }

      v21 = *(result + 8 * v22 + 64);
      ++v20;
      if (v21)
      {
        v20 = v22;
        goto LABEL_10;
      }
    }

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_100106930()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[36];
  v12 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];

  sub_10000B90C(v1, v2);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v12, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100106A74()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  sub_10000BB78(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100106BAC()
{
  v1[18] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100106CD4, 0, 0);
}

uint64_t sub_100106CD4()
{
  v1 = *sub_10000BA08((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_100106D8C;

  return sub_10050657C(&off_1007FADD0, 0, 0, v1);
}

uint64_t sub_100106D8C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100106EE8, 0, 0);
  }
}

uint64_t sub_100106EE8()
{
  if (*(v0[27] + 16) && (v1 = sub_10003ADCC(0x797469746E656469, 0xED0000747365742DLL), (v2 & 1) != 0))
  {
    v3 = *(*(v0[27] + 56) + 8 * v1);
    v0[28] = v3;

    v5 = *(v3 + 16);
    v0[29] = v5;
    if (v5)
    {
      v0[30] = 0;
      v6 = v0[28];
      if (v6[2])
      {
        v7 = v0[18];
        v0[31] = v6[4];
        v0[32] = v6[5];
        sub_10000BA08((v7 + 16), *(v7 + 40));

        v8 = objc_allocWithZone(DCCredentialStore);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v10 = [v8 initWithPartitions:isa];
        v0[33] = v10;

        v11 = String._bridgeToObjectiveC()();
        v0[34] = v11;
        v0[2] = v0;
        v0[3] = sub_100107218;
        v12 = swift_continuation_init();
        v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_100429100;
        v0[13] = &unk_1008092D8;
        v0[14] = v12;
        [v10 deleteCredential:v11 completion:v0 + 10];
        v4 = (v0 + 2);
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v4);
    }
  }

  else
  {

    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No test mDL credentials to delete", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100107218()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1001076E4;
  }

  else
  {
    v2 = sub_100107328;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100107328()
{
  v33 = v0;
  v1 = *(v0 + 272);

  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  if (v4)
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    v12 = sub_100141FE4(v6, v5, &v32);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully deleted credentialIdentifier: %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v9 + 8))(v7, v8);
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);

    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v0 + 232);
  v17 = *(v0 + 240) + 1;
  v18._countAndFlagsBits = 0x6562363239353565;
  v19._object = 0x80000001006FF710;
  v18._object = 0xE800000000000000;
  v19._countAndFlagsBits = 0xD000000000000040;
  logMilestone(tag:description:)(v18, v19);
  if (v17 == v16)
  {

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 240) + 1;
    *(v0 + 240) = v23;
    v24 = *(v0 + 224);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 144);
      v26 = v24 + 16 * v23;
      *(v0 + 248) = *(v26 + 32);
      *(v0 + 256) = *(v26 + 40);
      sub_10000BA08((v25 + 16), *(v25 + 40));

      v27 = objc_allocWithZone(DCCredentialStore);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v29 = [v27 initWithPartitions:isa];
      *(v0 + 264) = v29;

      v30 = String._bridgeToObjectiveC()();
      *(v0 + 272) = v30;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_100107218;
      v31 = swift_continuation_init();
      *(v0 + 136) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100429100;
      *(v0 + 104) = &unk_1008092D8;
      *(v0 + 112) = v31;
      [v29 deleteCredential:v30 completion:v0 + 80];
      v20 = v0 + 16;
    }

    return _swift_continuation_await(v20);
  }
}

uint64_t sub_1001076E4(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[33];
  v5 = v1[20];
  v4 = v1[21];
  v6 = v1[19];
  swift_willThrow();

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10010802C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1001078B0()
{
  v1 = type metadata accessor for Logger();
  v0[21] = v1;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();
  v2 = type metadata accessor for DIPError.Code();
  v0[24] = v2;
  v0[25] = *(v2 - 8);
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001079C8, 0, 0);
}

uint64_t sub_1001079C8()
{
  v0[13] = type metadata accessor for DeviceInformationProvider();
  v0[14] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v0 + 10);
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  v0[15] = static UserDefaultsConfiguration.standard.getter();
  if (sub_100134AD0())
  {
    v1._countAndFlagsBits = 0x6238326565363630;
    v2._object = 0x80000001006FF7E0;
    v1._object = 0xE800000000000000;
    v2._countAndFlagsBits = 0xD00000000000003BLL;
    logMilestone(tag:description:)(v1, v2);
    sub_100108074((v0 + 10));

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = static ISO18013KnownDocTypes.allCases.getter();
    v0[19] = &type metadata for IDCredCredentialStore;
    v0[20] = &off_100815A88;
    v0[16] = &off_1007FAE30;
    type metadata accessor for DeveloperTestMDLManager();
    inited = swift_initStackObject();
    v0[27] = inited;
    v7 = v0[19];
    v8 = sub_10001F370((v0 + 16), v7);
    v9 = *(v7 - 8);
    v10 = swift_task_alloc();
    (*(v9 + 16))(v10, v8, v7);
    v0[28] = sub_1001602C4(*v10, v5, inited);
    sub_10000BB78(v0 + 16);

    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_100107C20;

    return sub_100106BAC();
  }
}

uint64_t sub_100107C20()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100107DB0;
  }

  else
  {
    v2 = sub_100107D34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100107D34()
{

  sub_100108074(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100107DB0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v8 = v0[21];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10010802C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v3, v8);
  sub_100108074((v0 + 10));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100107F9C()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10010802C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001080DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10010815C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeveloperTestMDLPayloadBuilder(uint64_t a1)
{
  result = qword_10083A8B8;
  if (!qword_10083A8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100108218(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CredentialBuilderPayloadDetails();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001082D8, 0, 0);
}

uint64_t sub_1001082D8()
{
  sub_1001028E0(*(v0 + 96), *(v0 + 104), *(v0 + 128));
  v1 = *(v0 + 104);
  *(v0 + 40) = type metadata accessor for DeveloperTestMDLPayloadBuilder(0);
  *(v0 + 48) = sub_1001084E4();
  v2 = sub_100032DBC((v0 + 16));
  sub_10010853C(v1, v2);
  *(v0 + 80) = type metadata accessor for DateProvider();
  *(v0 + 88) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 56));
  DateProvider.init()();
  v3 = objc_allocWithZone(type metadata accessor for IdentityCredentialPayloadBuilder());
  *(v0 + 136) = IdentityCredentialPayloadBuilder.init(with:dateProvider:)();
  v7 = (&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1001038A0;
  v5 = *(v0 + 128);

  return v7(v5);
}

uint64_t sub_100108450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_100108218(a1);
}

unint64_t sub_1001084E4()
{
  result = qword_10083A8F0;
  if (!qword_10083A8F0)
  {
    type metadata accessor for DeveloperTestMDLPayloadBuilder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A8F0);
  }

  return result;
}

uint64_t sub_10010853C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperTestMDLPayloadBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001085B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100108634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeveloperTestPhotoIDPayloadBuilder(uint64_t a1)
{
  result = qword_10083A950;
  if (!qword_10083A950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001086F0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CredentialBuilderPayloadDetails();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001087B0, 0, 0);
}

uint64_t sub_1001087B0()
{
  sub_1001028E0(*(v0 + 96), *(v0 + 104), *(v0 + 128));
  v1 = *(v0 + 104);
  *(v0 + 40) = type metadata accessor for DeveloperTestPhotoIDPayloadBuilder(0);
  *(v0 + 48) = sub_1001089BC();
  v2 = sub_100032DBC((v0 + 16));
  sub_100108A14(v1, v2);
  *(v0 + 80) = type metadata accessor for DateProvider();
  *(v0 + 88) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 56));
  DateProvider.init()();
  v3 = objc_allocWithZone(type metadata accessor for IdentityCredentialPayloadBuilder());
  *(v0 + 136) = IdentityCredentialPayloadBuilder.init(with:dateProvider:)();
  v7 = (&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1001038A0;
  v5 = *(v0 + 128);

  return v7(v5);
}

uint64_t sub_100108928(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_1001086F0(a1);
}

unint64_t sub_1001089BC()
{
  result = qword_10083A988;
  if (!qword_10083A988)
  {
    type metadata accessor for DeveloperTestPhotoIDPayloadBuilder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A988);
  }

  return result;
}

uint64_t sub_100108A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperTestPhotoIDPayloadBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100108A78(uint64_t a1)
{
  v67 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityElement();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v59 - v12;
  v14 = *(v8 + 16);
  v14(&v59 - v12, a1, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for IdentityElement.ageIsOver(_:))
  {
    (*(v8 + 96))(v13, v7);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_1006BF520;
    v16[4] = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
    v16[5] = v17;
    return v16;
  }

  if (v15 == enum case for IdentityElement.givenName(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v18 = v65;
    v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v20 = swift_allocObject();
    v21 = v20;
    *(v20 + 16) = xmmword_1006BF520;
    v22 = &enum case for ISO18013_5_1_ElementIdentifier.givenName(_:);
LABEL_11:
    (*(v18 + 104))(v20 + v19, *v22, v67);
    goto LABEL_12;
  }

  if (v15 == enum case for IdentityElement.familyName(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v18 = v65;
    v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v20 = swift_allocObject();
    v21 = v20;
    *(v20 + 16) = xmmword_1006BF520;
    v22 = &enum case for ISO18013_5_1_ElementIdentifier.familyName(_:);
    goto LABEL_11;
  }

  if (v15 == enum case for IdentityElement.sex(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v18 = v65;
    v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v20 = swift_allocObject();
    v21 = v20;
    *(v20 + 16) = xmmword_1006BF520;
    v22 = &enum case for ISO18013_5_1_ElementIdentifier.sex(_:);
    goto LABEL_11;
  }

  if (v15 == enum case for IdentityElement.portrait(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v18 = v65;
    v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v20 = swift_allocObject();
    v21 = v20;
    *(v20 + 16) = xmmword_1006BF520;
    v22 = &enum case for ISO18013_5_1_ElementIdentifier.portrait(_:);
    goto LABEL_11;
  }

  if (v15 == enum case for IdentityElement.address(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v38 = v65;
    v39 = *(v65 + 72);
    v40 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1006D8C30;
    v42 = v41 + v40;
    v43 = *(v38 + 104);
    v44 = v67;
    v43(v42, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v67);
    v43(v42 + v39, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v44);
    v43(v42 + 2 * v39, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v44);
    v43(v42 + 3 * v39, enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:), v44);
    v43(v42 + 4 * v39, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v44);
    v21 = v41;
  }

  else
  {
    if (v15 == enum case for IdentityElement.height(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v18 = v65;
      v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_1006BF520;
      v22 = &enum case for ISO18013_5_1_ElementIdentifier.height(_:);
      goto LABEL_11;
    }

    if (v15 == enum case for IdentityElement.weight(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v18 = v65;
      v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_1006BF520;
      v22 = &enum case for ISO18013_5_1_ElementIdentifier.weight(_:);
      goto LABEL_11;
    }

    if (v15 == enum case for IdentityElement.eyeColor(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v18 = v65;
      v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_1006BF520;
      v22 = &enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:);
      goto LABEL_11;
    }

    if (v15 == enum case for IdentityElement.hairColor(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v18 = v65;
      v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_1006BF520;
      v22 = &enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:);
      goto LABEL_11;
    }

    v64 = v4;
    v21 = _swiftEmptyArrayStorage;
    if (v15 != enum case for IdentityElement.organDonorStatus(_:) && v15 != enum case for IdentityElement.veteranStatus(_:))
    {
      if (v15 == enum case for IdentityElement.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
        v45 = v65;
        v46 = *(v65 + 72);
        v47 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1006BFE10;
        v49 = v48 + v47;
        v50 = *(v45 + 104);
        v51 = v67;
        v50(v49, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v67);
        v50(v49 + v46, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v51);
        v50(v49 + 2 * v46, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v51);
        v50(v49 + 3 * v46, enum case for ISO18013_5_1_ElementIdentifier.unDistinguishingSign(_:), v51);
        v21 = v48;
      }

      else if (v15 != enum case for IdentityElement.documentDHSComplianceStatus(_:))
      {
        if (v15 == enum case for IdentityElement.documentIssueDate(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v18 = v65;
          v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v20 = swift_allocObject();
          v21 = v20;
          *(v20 + 16) = xmmword_1006BF520;
          v22 = &enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:);
          goto LABEL_11;
        }

        if (v15 == enum case for IdentityElement.documentExpirationDate(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v18 = v65;
          v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v20 = swift_allocObject();
          v21 = v20;
          *(v20 + 16) = xmmword_1006BF520;
          v22 = &enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:);
          goto LABEL_11;
        }

        if (v15 == enum case for IdentityElement.documentNumber(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v18 = v65;
          v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v20 = swift_allocObject();
          v21 = v20;
          *(v20 + 16) = xmmword_1006BF520;
          v22 = &enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:);
          goto LABEL_11;
        }

        if (v15 == enum case for IdentityElement.drivingPrivileges(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v18 = v65;
          v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v20 = swift_allocObject();
          v21 = v20;
          *(v20 + 16) = xmmword_1006BF520;
          v22 = &enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:);
          goto LABEL_11;
        }

        if (v15 == enum case for IdentityElement.age(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v18 = v65;
          v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v20 = swift_allocObject();
          v21 = v20;
          *(v20 + 16) = xmmword_1006BF520;
          v22 = &enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:);
          goto LABEL_11;
        }

        if (v15 == enum case for IdentityElement.dateOfBirth(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v18 = v65;
          v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v20 = swift_allocObject();
          v21 = v20;
          *(v20 + 16) = xmmword_1006BF520;
          v22 = &enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:);
          goto LABEL_11;
        }

        defaultLogger()();
        v14(v11, a1, v7);
        v52 = Logger.logObject.getter();
        LODWORD(v63) = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v52, v63))
        {
          v53 = swift_slowAlloc();
          v61 = v53;
          v62 = swift_slowAlloc();
          v68 = v62;
          *v53 = 136315138;
          sub_10010A400();
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v54;
          v56 = *(v8 + 8);
          v56(v11, v7);
          v57 = sub_100141FE4(v60, v55, &v68);

          v58 = v61;
          *(v61 + 1) = v57;
          _os_log_impl(&_mh_execute_header, v52, v63, "unknown element %s", v58, 0xCu);
          sub_10000BB78(v62);
        }

        else
        {

          v56 = *(v8 + 8);
          v56(v11, v7);
        }

        (*(v64 + 8))(v6, v3);
        v56(v13, v7);
        v21 = _swiftEmptyArrayStorage;
      }
    }
  }

LABEL_12:
  v23 = v21[2];
  if (v23)
  {
    v68 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v23, 0);
    v16 = v68;
    v25 = v65 + 16;
    v24 = *(v65 + 16);
    v26 = *(v65 + 80);
    v63 = v21;
    v27 = v21 + ((v26 + 32) & ~v26);
    v64 = *(v65 + 72);
    v65 = v24;
    v28 = (v25 - 8);
    do
    {
      v29 = v66;
      v30 = v67;
      (v65)(v66, v27, v67);
      v31 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
      v33 = v32;
      (*v28)(v29, v30);
      v68 = v16;
      v35 = v16[2];
      v34 = v16[3];
      if (v35 >= v34 >> 1)
      {
        sub_100172D4C((v34 > 1), v35 + 1, 1);
        v16 = v68;
      }

      v16[2] = v35 + 1;
      v36 = &v16[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      v27 += v64;
      --v23;
    }

    while (v23);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v16;
}

void *sub_100109788(uint64_t a1)
{
  v68 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v64 = *(v3 - 8);
  __chkstk_darwin(v3);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityElement();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = *(v6 + 16);
  v12(&v60 - v10, a1, v5);
  v13 = (*(v6 + 88))(v11, v5);
  v14 = _swiftEmptyArrayStorage;
  if (v13 != enum case for IdentityElement.ageIsOver(_:))
  {
    if (v13 == enum case for IdentityElement.givenName(_:))
    {
      sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
      v15 = v66;
      v16 = *(v66 + 72);
      v17 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1006BFE10;
      v19 = v18 + v17;
      v20 = *(v15 + 104);
      v21 = v68;
      v20(v19, enum case for ISO18013_AAMVA_ElementIdentifier.givenNameTruncation(_:), v68);
      v20(v19 + v16, enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenName(_:), v21);
      v20(v19 + 2 * v16, enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:), v21);
      v20(v19 + 3 * v16, enum case for ISO18013_AAMVA_ElementIdentifier.akaSuffix(_:), v21);
      v14 = v18;
      goto LABEL_7;
    }

    if (v13 == enum case for IdentityElement.familyName(_:))
    {
      sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
      v22 = v66;
      v23 = *(v66 + 72);
      v24 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1006BF740;
      v26 = v25 + v24;
      v27 = *(v22 + 104);
      v28 = v68;
      v27(v26, enum case for ISO18013_AAMVA_ElementIdentifier.familyNameTruncation(_:), v68);
      v29 = &enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyName(_:);
LABEL_6:
      v27(v26 + v23, *v29, v28);
      v14 = v25;
      goto LABEL_7;
    }

    if (v13 == enum case for IdentityElement.sex(_:))
    {
      sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
      v46 = v66;
      v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v48 = swift_allocObject();
      v14 = v48;
      *(v48 + 16) = xmmword_1006BF520;
      v49 = &enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:);
LABEL_17:
      (*(v46 + 104))(v48 + v47, *v49, v68);
      goto LABEL_7;
    }

    if (v13 == enum case for IdentityElement.portrait(_:) || v13 == enum case for IdentityElement.address(_:) || v13 == enum case for IdentityElement.height(_:))
    {
      v14 = _swiftEmptyArrayStorage;
    }

    else
    {
      if (v13 == enum case for IdentityElement.weight(_:))
      {
        sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
        v46 = v66;
        v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v48 = swift_allocObject();
        v14 = v48;
        *(v48 + 16) = xmmword_1006BF520;
        v49 = &enum case for ISO18013_AAMVA_ElementIdentifier.weightRange(_:);
        goto LABEL_17;
      }

      v14 = _swiftEmptyArrayStorage;
      if (v13 != enum case for IdentityElement.eyeColor(_:) && v13 != enum case for IdentityElement.hairColor(_:))
      {
        if (v13 == enum case for IdentityElement.organDonorStatus(_:))
        {
          sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
          v46 = v66;
          v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v48 = swift_allocObject();
          v14 = v48;
          *(v48 + 16) = xmmword_1006BF520;
          v49 = &enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:);
          goto LABEL_17;
        }

        if (v13 == enum case for IdentityElement.veteranStatus(_:))
        {
          sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
          v46 = v66;
          v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v48 = swift_allocObject();
          v14 = v48;
          *(v48 + 16) = xmmword_1006BF520;
          v49 = &enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:);
          goto LABEL_17;
        }

        if (v13 != enum case for IdentityElement.issuingAuthority(_:))
        {
          if (v13 == enum case for IdentityElement.documentDHSComplianceStatus(_:))
          {
            sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
            v46 = v66;
            v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
            v48 = swift_allocObject();
            v14 = v48;
            *(v48 + 16) = xmmword_1006BF520;
            v49 = &enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:);
            goto LABEL_17;
          }

          if (v13 != enum case for IdentityElement.documentIssueDate(_:) && v13 != enum case for IdentityElement.documentExpirationDate(_:) && v13 != enum case for IdentityElement.documentNumber(_:))
          {
            if (v13 == enum case for IdentityElement.drivingPrivileges(_:))
            {
              sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
              v52 = v66;
              v23 = *(v66 + 72);
              v53 = (*(v66 + 80) + 32) & ~*(v66 + 80);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_1006BF740;
              v26 = v25 + v53;
              v27 = *(v52 + 104);
              v28 = v68;
              v27(v26, enum case for ISO18013_AAMVA_ElementIdentifier.cdlIndicator(_:), v68);
              v29 = &enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:);
              goto LABEL_6;
            }

            if (v13 != enum case for IdentityElement.age(_:) && v13 != enum case for IdentityElement.dateOfBirth(_:))
            {
              defaultLogger()();
              v12(v9, a1, v5);
              v54 = Logger.logObject.getter();
              v63 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v54, v63))
              {
                v55 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v69 = v62;
                *v55 = 136315138;
                sub_10010A400();
                v61 = dispatch thunk of CustomStringConvertible.description.getter();
                v57 = v56;
                v58 = *(v6 + 8);
                v58(v9, v5);
                v59 = sub_100141FE4(v61, v57, &v69);

                *(v55 + 4) = v59;
                _os_log_impl(&_mh_execute_header, v54, v63, "unknown element %s", v55, 0xCu);
                sub_10000BB78(v62);
              }

              else
              {

                v58 = *(v6 + 8);
                v58(v9, v5);
              }

              (v64[1])(v65, v3);
              v58(v11, v5);
              v14 = _swiftEmptyArrayStorage;
            }
          }
        }
      }
    }
  }

LABEL_7:
  v30 = v14[2];
  if (v30)
  {
    v69 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v30, 0);
    v31 = v69;
    v32 = v66 + 16;
    v33 = *(v66 + 16);
    v34 = *(v66 + 80);
    v64 = v14;
    v35 = v14 + ((v34 + 32) & ~v34);
    v65 = *(v66 + 72);
    v66 = v33;
    v36 = (v32 - 8);
    do
    {
      v37 = v67;
      v38 = v68;
      (v66)(v67, v35, v68);
      v39 = ISO18013_AAMVA_ElementIdentifier.rawValue.getter();
      v41 = v40;
      (*v36)(v37, v38);
      v69 = v31;
      v43 = v31[2];
      v42 = v31[3];
      if (v43 >= v42 >> 1)
      {
        sub_100172D4C((v42 > 1), v43 + 1, 1);
        v31 = v69;
      }

      v31[2] = v43 + 1;
      v44 = &v31[2 * v43];
      v44[4] = v39;
      v44[5] = v41;
      v35 = &v65[v35];
      --v30;
    }

    while (v30);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v31;
}

void *sub_10010A178(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013KnownNamespaces();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &_swiftEmptyDictionarySingleton;
  v17 = sub_100108A78(a1);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10010A39C();
  Collection.nilIfEmpty.getter();
  v6 = v16;

  if (v6)
  {
    (*(v3 + 104))(v5, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v2);
    v7 = ISO18013KnownNamespaces.rawValue.getter();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    sub_10014C310(v6, v7, v9);
  }

  v17 = sub_100109788(a1);
  Collection.nilIfEmpty.getter();
  v10 = v16;

  if (v10)
  {
    (*(v3 + 104))(v5, enum case for ISO18013KnownNamespaces.iso18013_5_1_aamva(_:), v2);
    v11 = ISO18013KnownNamespaces.rawValue.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    sub_10014C310(v10, v11, v13);
  }

  return v18;
}

unint64_t sub_10010A39C()
{
  result = qword_10083A990;
  if (!qword_10083A990)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A990);
  }

  return result;
}

unint64_t sub_10010A400()
{
  result = qword_10083A998;
  if (!qword_10083A998)
  {
    type metadata accessor for IdentityElement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A998);
  }

  return result;
}

void *sub_10010A458()
{
  v1 = v0;
  v2 = type metadata accessor for ISO18013KnownNamespaces();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityElement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for IdentityElement.ageIsOver(_:))
  {
    (*(v7 + 96))(v9, v6);
    sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1006BF520;
    static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
    v12 = ISO18013KnownNamespaces.rawValue.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    *(v11 + 48) = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
    *(v11 + 56) = v15;
    return v11;
  }

  if (v10 == enum case for IdentityElement.givenName(_:) || v10 == enum case for IdentityElement.familyName(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v17 = swift_allocObject();
    *(v17 + 1) = xmmword_1006BF520;
    v18 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v17[7] = v18;
    v17[8] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
    v19 = sub_100032DBC(v17 + 4);
    v20 = &enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:);
LABEL_13:
    (*(*(v18 - 8) + 104))(v19, *v20, v18);
    goto LABEL_14;
  }

  if (v10 == enum case for IdentityElement.sex(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v17 = swift_allocObject();
    *(v17 + 1) = xmmword_1006BF740;
    v21 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v17[7] = v21;
    v17[8] = sub_10010B1D4(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    v22 = sub_100032DBC(v17 + 4);
    (*(*(v21 - 8) + 104))(v22, enum case for ISO23220_1_ElementIdentifier.sex(_:), v21);
    v18 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v17[12] = v18;
    v17[13] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
    v19 = sub_100032DBC(v17 + 9);
    v20 = &enum case for ISO23220_1_Japan_ElementIdentifier.sex(_:);
    goto LABEL_13;
  }

  if (v10 == enum case for IdentityElement.portrait(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v17 = swift_allocObject();
    *(v17 + 1) = xmmword_1006BF520;
    v18 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v17[7] = v18;
    v17[8] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
    v19 = sub_100032DBC(v17 + 4);
    v20 = &enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:);
    goto LABEL_13;
  }

  if (v10 == enum case for IdentityElement.address(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v17 = swift_allocObject();
    *(v17 + 1) = xmmword_1006BF740;
    v37 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v17[7] = v37;
    v38 = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
    v17[8] = v38;
    v39 = sub_100032DBC(v17 + 4);
    v40 = *(*(v37 - 8) + 104);
    v40(v39, enum case for ISO23220_1_Japan_ElementIdentifier.localGovCode(_:), v37);
    v17[12] = v37;
    v17[13] = v38;
    v41 = sub_100032DBC(v17 + 9);
    v40(v41, enum case for ISO23220_1_Japan_ElementIdentifier.residentAddress(_:), v37);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
    if (v10 != enum case for IdentityElement.height(_:) && v10 != enum case for IdentityElement.weight(_:) && v10 != enum case for IdentityElement.eyeColor(_:) && v10 != enum case for IdentityElement.hairColor(_:) && v10 != enum case for IdentityElement.organDonorStatus(_:) && v10 != enum case for IdentityElement.veteranStatus(_:) && v10 != enum case for IdentityElement.issuingAuthority(_:) && v10 != enum case for IdentityElement.documentDHSComplianceStatus(_:) && v10 != enum case for IdentityElement.documentIssueDate(_:) && v10 != enum case for IdentityElement.documentExpirationDate(_:))
    {
      if (v10 == enum case for IdentityElement.documentNumber(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v17 = swift_allocObject();
        *(v17 + 1) = xmmword_1006BF520;
        v18 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
        v17[7] = v18;
        v17[8] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
        v19 = sub_100032DBC(v17 + 4);
        v20 = &enum case for ISO23220_1_Japan_ElementIdentifier.individualNumber(_:);
        goto LABEL_13;
      }

      if (v10 != enum case for IdentityElement.drivingPrivileges(_:))
      {
        if (v10 == enum case for IdentityElement.age(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v17 = swift_allocObject();
          *(v17 + 1) = xmmword_1006BF520;
          v18 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v17[7] = v18;
          v17[8] = sub_10010B1D4(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v19 = sub_100032DBC(v17 + 4);
          v20 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
          goto LABEL_13;
        }

        if (v10 == enum case for IdentityElement.dateOfBirth(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v17 = swift_allocObject();
          *(v17 + 1) = xmmword_1006BF740;
          v42 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v17[7] = v42;
          v17[8] = sub_10010B1D4(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v43 = sub_100032DBC(v17 + 4);
          (*(*(v42 - 8) + 104))(v43, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v42);
          v18 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
          v17[12] = v18;
          v17[13] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
          v19 = sub_100032DBC(v17 + 9);
          v20 = &enum case for ISO23220_1_Japan_ElementIdentifier.birthDate(_:);
          goto LABEL_13;
        }

        (*(v7 + 8))(v9, v6);
      }
    }
  }

LABEL_14:
  v23 = v17[2];
  if (v23)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100172D8C(0, v23, 0);
    v11 = v51;
    v44[1] = v17;
    v24 = (v17 + 4);
    do
    {
      sub_100020260(v24, v45);
      sub_10000BA08(v45, v46);
      swift_getDynamicType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26 = *(AssociatedTypeWitness - 8);
      __chkstk_darwin(AssociatedTypeWitness);
      v28 = v44 - v27;
      dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_10000BA08(v45, v46);
      dispatch thunk of RawRepresentable.rawValue.getter();
      (*(v26 + 8))(v28, AssociatedTypeWitness);
      sub_10000BB78(v45);
      v29 = v49;
      v30 = v50;
      v31 = v47;
      v32 = v48;
      v51 = v11;
      v34 = *(v11 + 16);
      v33 = *(v11 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_100172D8C((v33 > 1), v34 + 1, 1);
        v11 = v51;
      }

      *(v11 + 16) = v34 + 1;
      v35 = (v11 + 32 * v34);
      v35[4] = v29;
      v35[5] = v30;
      v35[6] = v31;
      v35[7] = v32;
      v24 += 40;
      --v23;
    }

    while (v23);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void *sub_10010AF74()
{
  v0 = sub_10010A458();
  v1 = sub_10003E868(_swiftEmptyArrayStorage);
  v30 = v0[2];
  if (!v30)
  {
LABEL_20:

    return v1;
  }

  v2 = 0;
  v3 = v0 + 7;
  v29 = v0;
  while (v2 < v0[2])
  {
    v5 = *(v3 - 3);
    v4 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_10003ADCC(v5, v4);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (v1[3] >= v13)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1001705CC();
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_100167CF4(v13, isUniquelyReferenced_nonNull_native);
      v15 = sub_10003ADCC(v5, v4);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_24;
      }

      v10 = v15;
      if (v14)
      {
LABEL_11:

        goto LABEL_15;
      }
    }

    v1[(v10 >> 6) + 8] |= 1 << v10;
    v17 = (v1[6] + 16 * v10);
    *v17 = v5;
    v17[1] = v4;
    *(v1[7] + 8 * v10) = _swiftEmptyArrayStorage;
    v18 = v1[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_23;
    }

    v1[2] = v20;
LABEL_15:
    v21 = v1[7];
    v22 = *(v21 + 8 * v10);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 8 * v10) = v22;
    v31 = v6;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1003C5110(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 8 * v10) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      *(v21 + 8 * v10) = sub_1003C5110((v24 > 1), v25 + 1, 1, v22);
    }

    ++v2;

    v26 = *(v21 + 8 * v10);
    *(v26 + 16) = v25 + 1;
    v27 = v26 + 16 * v25;
    *(v27 + 32) = v31;
    *(v27 + 40) = v7;
    v3 += 4;
    v0 = v29;
    if (v30 == v2)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10010B1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10010B21C(uint64_t a1)
{
  v77 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityElement();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = *(v8 + 16);
  v14(&v69 - v12, a1, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for IdentityElement.ageIsOver(_:))
  {
    (*(v8 + 96))(v13, v7);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_1006BF520;
    v16[4] = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
    v16[5] = v17;
    return v16;
  }

  if (v15 == enum case for IdentityElement.givenName(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v18 = v75;
    v19 = *(v75 + 72);
    v20 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF740;
    v22 = v21 + v20;
    v23 = *(v18 + 104);
    v24 = v77;
    v23(v22, enum case for ISO23220_1_ElementIdentifier.givenName(_:), v77);
    v25 = &enum case for ISO23220_1_ElementIdentifier.givenNameLatin1(_:);
LABEL_7:
    v23(v22 + v19, *v25, v24);
    v28 = v21;
    goto LABEL_13;
  }

  if (v15 == enum case for IdentityElement.familyName(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v26 = v75;
    v19 = *(v75 + 72);
    v27 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF740;
    v22 = v21 + v27;
    v23 = *(v26 + 104);
    v24 = v77;
    v23(v22, enum case for ISO23220_1_ElementIdentifier.familyName(_:), v77);
    v25 = &enum case for ISO23220_1_ElementIdentifier.familyNameLatin1(_:);
    goto LABEL_7;
  }

  if (v15 == enum case for IdentityElement.sex(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v29 = v75;
    v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v31 = swift_allocObject();
    v28 = v31;
    *(v31 + 16) = xmmword_1006BF520;
    v32 = &enum case for ISO23220_1_ElementIdentifier.sex(_:);
LABEL_12:
    (*(v29 + 104))(v31 + v30, *v32, v77);
    goto LABEL_13;
  }

  if (v15 == enum case for IdentityElement.portrait(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v29 = v75;
    v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v31 = swift_allocObject();
    v28 = v31;
    *(v31 + 16) = xmmword_1006BF520;
    v32 = &enum case for ISO23220_1_ElementIdentifier.portrait(_:);
    goto LABEL_12;
  }

  if (v15 == enum case for IdentityElement.address(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v48 = v75;
    v49 = *(v75 + 72);
    v50 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006D8C30;
    v52 = v51 + v50;
    v53 = *(v48 + 104);
    v54 = v77;
    v53(v52, enum case for ISO23220_1_ElementIdentifier.residentAddress(_:), v77);
    v53(v52 + v49, enum case for ISO23220_1_ElementIdentifier.residentCity(_:), v54);
    v53(v52 + 2 * v49, enum case for ISO23220_1_ElementIdentifier.residentCityLatin1(_:), v54);
    v53(v52 + 3 * v49, enum case for ISO23220_1_ElementIdentifier.residentPostalCode(_:), v54);
    v28 = v51;
    v53(v52 + 4 * v49, enum case for ISO23220_1_ElementIdentifier.residentCountry(_:), v54);
  }

  else
  {
    v74 = v6;
    v28 = _swiftEmptyArrayStorage;
    if (v15 != enum case for IdentityElement.height(_:) && v15 != enum case for IdentityElement.weight(_:) && v15 != enum case for IdentityElement.eyeColor(_:) && v15 != enum case for IdentityElement.hairColor(_:) && v15 != enum case for IdentityElement.organDonorStatus(_:) && v15 != enum case for IdentityElement.veteranStatus(_:))
    {
      if (v15 == enum case for IdentityElement.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
        v55 = v75;
        v56 = *(v75 + 72);
        v57 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1006BFF90;
        v59 = v58 + v57;
        v60 = *(v55 + 104);
        v61 = v77;
        v60(v59, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v77);
        v60(v59 + v56, enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:), v61);
        v28 = v58;
        v60(v59 + 2 * v56, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v61);
      }

      else if (v15 != enum case for IdentityElement.documentDHSComplianceStatus(_:))
      {
        if (v15 == enum case for IdentityElement.documentIssueDate(_:))
        {
          sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
          v29 = v75;
          v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v31 = swift_allocObject();
          v28 = v31;
          *(v31 + 16) = xmmword_1006BF520;
          v32 = &enum case for ISO23220_1_ElementIdentifier.issueDate(_:);
          goto LABEL_12;
        }

        if (v15 == enum case for IdentityElement.documentExpirationDate(_:))
        {
          sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
          v29 = v75;
          v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v31 = swift_allocObject();
          v28 = v31;
          *(v31 + 16) = xmmword_1006BF520;
          v32 = &enum case for ISO23220_1_ElementIdentifier.expiryDate(_:);
          goto LABEL_12;
        }

        if (v15 == enum case for IdentityElement.documentNumber(_:))
        {
          sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
          v29 = v75;
          v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v31 = swift_allocObject();
          v28 = v31;
          *(v31 + 16) = xmmword_1006BF520;
          v32 = &enum case for ISO23220_1_ElementIdentifier.documentNumber(_:);
          goto LABEL_12;
        }

        if (v15 != enum case for IdentityElement.drivingPrivileges(_:))
        {
          if (v15 == enum case for IdentityElement.age(_:))
          {
            sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
            v29 = v75;
            v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
            v31 = swift_allocObject();
            v28 = v31;
            *(v31 + 16) = xmmword_1006BF520;
            v32 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
            goto LABEL_12;
          }

          if (v15 == enum case for IdentityElement.dateOfBirth(_:))
          {
            sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
            v29 = v75;
            v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
            v31 = swift_allocObject();
            v28 = v31;
            *(v31 + 16) = xmmword_1006BF520;
            v32 = &enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
            goto LABEL_12;
          }

          defaultLogger()();
          v14(v11, a1, v7);
          v62 = Logger.logObject.getter();
          LODWORD(v73) = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v62, v73))
          {
            v63 = swift_slowAlloc();
            v71 = v63;
            v72 = swift_slowAlloc();
            v78 = v72;
            *v63 = 136315138;
            sub_10010A400();
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            v65 = v64;
            v66 = *(v8 + 8);
            v66(v11, v7);
            v67 = sub_100141FE4(v70, v65, &v78);

            v68 = v71;
            *(v71 + 1) = v67;
            _os_log_impl(&_mh_execute_header, v62, v73, "unknown element %s", v68, 0xCu);
            sub_10000BB78(v72);
          }

          else
          {

            v66 = *(v8 + 8);
            v66(v11, v7);
          }

          (*(v4 + 8))(v74, v3);
          v66(v13, v7);
          v28 = _swiftEmptyArrayStorage;
        }
      }
    }
  }

LABEL_13:
  v33 = v28[2];
  if (v33)
  {
    v78 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v33, 0);
    v16 = v78;
    v34 = v75 + 16;
    v35 = *(v75 + 16);
    v36 = *(v75 + 80);
    v73 = v28;
    v37 = v28 + ((v36 + 32) & ~v36);
    v74 = *(v75 + 72);
    v75 = v35;
    v38 = (v34 - 8);
    do
    {
      v39 = v76;
      v40 = v77;
      (v75)(v76, v37, v77);
      v41 = ISO23220_1_ElementIdentifier.rawValue.getter();
      v43 = v42;
      (*v38)(v39, v40);
      v78 = v16;
      v45 = v16[2];
      v44 = v16[3];
      if (v45 >= v44 >> 1)
      {
        sub_100172D4C((v44 > 1), v45 + 1, 1);
        v16 = v78;
      }

      v16[2] = v45 + 1;
      v46 = &v16[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
      v37 = &v74[v37];
      --v33;
    }

    while (v33);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v16;
}

void *sub_10010BDE8(uint64_t a1)
{
  v51 = type metadata accessor for ISO23220_PhotoID_1_ElementIdentifier();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for IdentityElement();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v43[-v12];
  v14 = *(v8 + 16);
  v14(&v43[-v12], a1, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 != enum case for IdentityElement.ageIsOver(_:) && v15 != enum case for IdentityElement.givenName(_:) && v15 != enum case for IdentityElement.familyName(_:) && v15 != enum case for IdentityElement.sex(_:) && v15 != enum case for IdentityElement.portrait(_:) && v15 != enum case for IdentityElement.address(_:) && v15 != enum case for IdentityElement.height(_:) && v15 != enum case for IdentityElement.weight(_:) && v15 != enum case for IdentityElement.eyeColor(_:) && v15 != enum case for IdentityElement.hairColor(_:) && v15 != enum case for IdentityElement.organDonorStatus(_:) && v15 != enum case for IdentityElement.veteranStatus(_:) && v15 != enum case for IdentityElement.issuingAuthority(_:) && v15 != enum case for IdentityElement.documentDHSComplianceStatus(_:) && v15 != enum case for IdentityElement.documentIssueDate(_:) && v15 != enum case for IdentityElement.documentExpirationDate(_:) && v15 != enum case for IdentityElement.documentNumber(_:) && v15 != enum case for IdentityElement.drivingPrivileges(_:) && v15 != enum case for IdentityElement.age(_:) && v15 != enum case for IdentityElement.dateOfBirth(_:))
  {
    defaultLogger()();
    v14(v11, a1, v7);
    v16 = v11;
    v17 = v6;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v48 = v4;
      v21 = v20;
      v45 = swift_slowAlloc();
      v52 = v45;
      *v21 = 136315138;
      sub_10010A400();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v3;
      v47 = v17;
      v23 = v22;
      v25 = v24;
      v26 = *(v8 + 8);
      v44 = v19;
      v26(v16, v7);
      v27 = sub_100141FE4(v23, v25, &v52);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v44, "unknown element %s", v21, 0xCu);
      sub_10000BB78(v45);

      (*(v48 + 8))(v47, v46);
    }

    else
    {

      v26 = *(v8 + 8);
      v26(v16, v7);
      (*(v4 + 8))(v17, v3);
    }

    v26(v13, v7);
  }

  v28 = _swiftEmptyArrayStorage[2];
  if (v28)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v28, 0);
    v29 = v52;
    v31 = v49 + 16;
    v30 = *(v49 + 16);
    v32 = _swiftEmptyArrayStorage + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v48 = *(v49 + 72);
    v49 = v30;
    v33 = (v31 - 8);
    do
    {
      v34 = v50;
      v35 = v51;
      (v49)(v50, v32, v51);
      v36 = ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter();
      v38 = v37;
      (*v33)(v34, v35);
      v52 = v29;
      v40 = v29[2];
      v39 = v29[3];
      if (v40 >= v39 >> 1)
      {
        sub_100172D4C((v39 > 1), v40 + 1, 1);
        v29 = v52;
      }

      v29[2] = v40 + 1;
      v41 = &v29[2 * v40];
      v41[4] = v36;
      v41[5] = v38;
      v32 += v48;
      --v28;
    }

    while (v28);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  return v29;
}

void *sub_10010C430(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013KnownNamespaces();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &_swiftEmptyDictionarySingleton;
  v17 = sub_10010B21C(a1);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10010A39C();
  Collection.nilIfEmpty.getter();
  v6 = v16;

  if (v6)
  {
    (*(v3 + 104))(v5, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v2);
    v7 = ISO18013KnownNamespaces.rawValue.getter();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    sub_10014C310(v6, v7, v9);
  }

  v17 = sub_10010BDE8(a1);
  Collection.nilIfEmpty.getter();
  v10 = v16;

  if (v10)
  {
    (*(v3 + 104))(v5, enum case for ISO18013KnownNamespaces.iso23220_photoid_1(_:), v2);
    v11 = ISO18013KnownNamespaces.rawValue.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    sub_10014C310(v10, v11, v13);
  }

  return v18;
}

uint64_t sub_10010C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10010C734(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CredentialRevocationInfo(uint64_t a1)
{
  result = qword_10083AA30;
  if (!qword_10083AA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010C82C(uint64_t a1)
{
  sub_10010C8C0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010C8C0()
{
  if (!qword_10083AA40)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083AA40);
    }
  }
}

uint64_t sub_10010C920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010C964(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

Swift::Int sub_10010C9B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10010CA08()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10010CA40(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_10010CA8C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10010CAAC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_10010CB74()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083AA80, &qword_1006D8CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D8C80;
  strcpy((inited + 32), "numberOfKeys");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x74654D6863746566;
  *(inited + 64) = 0xEB00000000646F68;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "fetchDuration");
  *(inited + 94) = -4864;
  *(inited + 96) = Double._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001006FF880;
  *(inited + 120) = Double._bridgeToObjectiveC()();
  *(inited + 128) = 0xD000000000000021;
  *(inited + 136) = 0x80000001006FF8C0;
  *(inited + 144) = Double._bridgeToObjectiveC()();
  *(inited + 152) = 0xD000000000000018;
  *(inited + 160) = 0x80000001006FF8F0;
  *(inited + 168) = Double._bridgeToObjectiveC()();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001006FF8A0;
  *(inited + 192) = String._bridgeToObjectiveC()();
  v5 = sub_10003E9B4(inited);
  swift_setDeallocating();
  sub_100007224(&qword_10083AA88, &qword_1006D8CC0);
  swift_arrayDestroy();
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_10010D898();
    v10 = Dictionary.description.getter();
    v12 = sub_100141FE4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "KRL.Analytics sendDigitalPresentmentPerformanceEvent: fields = %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v1 + 8))(v3, v0);
  return v5;
}

Class sub_10010CF08(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10010D898();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

unint64_t sub_10010CF94()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083AA80, &qword_1006D8CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D8C30;
  strcpy((inited + 32), "numberOfKeys");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x74654D6863746566;
  *(inited + 64) = 0xEB00000000646F68;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "fetchDuration");
  *(inited + 94) = -4864;
  *(inited + 96) = Double._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001006FF880;
  *(inited + 120) = Double._bridgeToObjectiveC()();
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000001006FF8A0;
  *(inited + 144) = String._bridgeToObjectiveC()();
  v5 = sub_10003E9B4(inited);
  swift_setDeallocating();
  sub_100007224(&qword_10083AA88, &qword_1006D8CC0);
  swift_arrayDestroy();
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_10010D898();
    v10 = Dictionary.description.getter();
    v12 = sub_100141FE4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "KRL.Analytics sendMobileDocumentReaderPerformanceEvent: fields = %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v1 + 8))(v3, v0);
  return v5;
}

unint64_t sub_10010D2D4(uint64_t a1, unint64_t a2)
{
  v17 = type metadata accessor for Logger();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083AA80, &qword_1006D8CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;

  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001006FF8A0;
  v6 = String._bridgeToObjectiveC()();

  *(inited + 72) = v6;
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = String._bridgeToObjectiveC()();
  v7 = sub_10003E9B4(inited);
  swift_setDeallocating();
  sub_100007224(&qword_10083AA88, &qword_1006D8CC0);
  swift_arrayDestroy();
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_10010D898();
    v12 = Dictionary.description.getter();
    v14 = sub_100141FE4(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "KRL.Analytics sendOutcomeEvent: fields = %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v2 + 8))(v4, v17);
  return v7;
}

void sub_10010D5D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "KRL.Analytics performance data nil; not sending analytics", v18, 2u);
    }

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (a6)
    {
      v19 = a5;
    }

    else
    {
      v19 = 0x58582D5355;
    }

    if (a6)
    {
      v20 = a6;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2 & 1;
    *(v22 + 32) = a3;
    *(v22 + 40) = a4;
    *(v22 + 48) = v19;
    *(v22 + 56) = v20;
    aBlock[4] = sub_10010D86C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10010CF08;
    aBlock[3] = &unk_1008093F0;
    v23 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v23);
  }
}

uint64_t sub_10010D834()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10010D880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10010D898()
{
  result = qword_10083AA78;
  if (!qword_10083AA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083AA78);
  }

  return result;
}

unint64_t sub_10010D8F8()
{
  result = qword_10083AA90;
  if (!qword_10083AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083AA90);
  }

  return result;
}

unint64_t sub_10010D94C()
{
  result = qword_10083AA98;
  if (!qword_10083AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083AA98);
  }

  return result;
}

uint64_t sub_10010D9A0()
{
  v42 = type metadata accessor for CharacterSet();
  v0 = *(v42 - 8);
  __chkstk_darwin(v42);
  v2 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.includeInKRLList.getter();
  v5 = NSUserDefaults.internalString(forKey:)(v4);

  v6 = _swiftEmptyArrayStorage;
  if (v5.value._object)
  {
    v45 = v5;
    v43 = 10;
    v44 = 0xE100000000000000;
    v41[2] = sub_10001F298();
    v7 = StringProtocol.components<A>(separatedBy:)();

    v8 = *(v7 + 16);
    if (v8)
    {
      v43 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v8, 0);
      v6 = v43;
      v9 = (v0 + 8);
      v41[1] = v7;
      v10 = (v7 + 40);
      do
      {
        v11 = *v10;
        v45.value._countAndFlagsBits = *(v10 - 1);
        v45.value._object = v11;

        static CharacterSet.whitespacesAndNewlines.getter();
        v12 = StringProtocol.trimmingCharacters(in:)();
        v14 = v13;
        (*v9)(v2, v42);

        v43 = v6;
        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          sub_100172D4C((v15 > 1), v16 + 1, 1);
          v6 = v43;
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        v10 += 2;
        --v8;
      }

      while (v8);
    }

    v19 = 0;
    v20 = *(v6 + 2);
    countAndFlagsBits = _swiftEmptyArrayStorage;
LABEL_8:
    v22 = &v6[16 * v19 + 40];
    while (v20 != v19)
    {
      if (v19 >= *(v6 + 2))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      ++v19;
      v24 = *(v22 - 1);
      v23 = *v22;
      v22 += 16;
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v45.value._countAndFlagsBits = countAndFlagsBits;
        if ((result & 1) == 0)
        {
          result = sub_100172D4C(0, countAndFlagsBits[2] + 1, 1);
          countAndFlagsBits = v45.value._countAndFlagsBits;
        }

        v27 = countAndFlagsBits[2];
        v26 = countAndFlagsBits[3];
        if (v27 >= v26 >> 1)
        {
          result = sub_100172D4C((v26 > 1), v27 + 1, 1);
          countAndFlagsBits = v45.value._countAndFlagsBits;
        }

        countAndFlagsBits[2] = v27 + 1;
        v28 = &countAndFlagsBits[2 * v27];
        v28[4] = v24;
        v28[5] = v23;
        goto LABEL_8;
      }
    }

    v29 = 0;
    v30 = countAndFlagsBits[2];
    v6 = _swiftEmptyArrayStorage;
LABEL_20:
    v31 = &countAndFlagsBits[2 * v29 + 5];
    while (v30 != v29)
    {
      if (v29 >= countAndFlagsBits[2])
      {
        goto LABEL_33;
      }

      ++v29;
      v32 = v31 + 16;

      result = Data.init(base16Encoded:)();
      v31 = v32;
      if (v33 >> 60 != 15)
      {
        v34 = v33;
        v35 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003C55E4(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
        }

        v37 = *(v6 + 2);
        v36 = *(v6 + 3);
        if (v37 >= v36 >> 1)
        {
          result = sub_1003C55E4((v36 > 1), v37 + 1, 1, v6);
          v39 = v34;
          v6 = result;
          v38 = v35;
        }

        else
        {
          v38 = v35;
          v39 = v34;
        }

        *(v6 + 2) = v37 + 1;
        v40 = &v6[16 * v37];
        *(v40 + 4) = v38;
        *(v40 + 5) = v39;
        goto LABEL_20;
      }
    }
  }

  return v6;
}

uint64_t sub_10010DD98()
{
  v0 = type metadata accessor for Logger();
  v25 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v24 - v4;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideResponseData.getter();
  v12 = NSUserDefaults.internalString(forKey:)(v11);

  if (!v12.value._object)
  {
    return 0;
  }

  v13 = (v12.value._object >> 56) & 0xF;
  if ((v12.value._object & 0x2000000000000000) == 0)
  {
    v13 = v12.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 0;
  }

  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;

  (*(v7 + 8))(v9, v6);
  if (v16 >> 60 == 15)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "KRL CDN response override value is set, but failed to parse value into data object", v19, 2u);
    }

    (*(v25 + 8))(v3, v0);
    return 0;
  }

  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Got override for KRL CDN response with internal settings value.", v23, 2u);
  }

  (*(v25 + 8))(v5, v0);
  return v14;
}

uint64_t sub_10010E0E4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882068);
  sub_10003170C(v0, qword_100882068);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E160()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882080);
  sub_10003170C(v0, qword_100882080);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E1DC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882098);
  sub_10003170C(v0, qword_100882098);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E258()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820B0);
  sub_10003170C(v0, qword_1008820B0);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E2D4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820C8);
  sub_10003170C(v0, qword_1008820C8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E350()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820E0);
  sub_10003170C(v0, qword_1008820E0);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E3CC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820F8);
  sub_10003170C(v0, qword_1008820F8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E448()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882110);
  sub_10003170C(v0, qword_100882110);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E4FC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882140);
  sub_10003170C(v0, qword_100882140);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E578()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882158);
  sub_10003170C(v0, qword_100882158);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E5F4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882170);
  sub_10003170C(v0, qword_100882170);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E6E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Milestone();
  sub_100031898(v6, a2);
  sub_10003170C(v6, a2);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E758()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008821B8);
  sub_10003170C(v0, qword_1008821B8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E7D4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008821D0);
  sub_10003170C(v0, qword_1008821D0);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E850()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008821E8);
  sub_10003170C(v0, qword_1008821E8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E8CC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882200);
  sub_10003170C(v0, qword_100882200);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E968()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 275));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 275), (v0 + 300));
  sub_100031918((v0 + 275));
  v0[306] = *sub_10000BA08(v0 + 300, v0[303]);
  v2 = swift_task_alloc();
  v0[307] = v2;
  *v2 = v0;
  v2[1] = sub_10010EAB0;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_10010EAB0()
{
  v2 = *v1;
  *(*v1 + 2464) = v0;

  if (v0)
  {
    v3 = *(v2 + 2448);
    v4 = sub_10010EC8C;
  }

  else
  {
    v4 = sub_10010EBCC;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10010EBCC()
{
  memcpy(v0 + 169, v0 + 6, 0x1A1uLL);
  sub_1000AA624((v0 + 169), (v0 + 222));
  sub_1000F2758((v0 + 2));
  memcpy(v0 + 116, v0 + 169, 0x1A1uLL);
  nullsub_7();
  memcpy(v0 + 63, v0 + 116, 0x1A1uLL);
  v1 = v0[305];
  sub_10000BB78(v0 + 300);
  memcpy(v1, v0 + 63, 0x1A1uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10010EC8C()
{

  return _swift_task_switch(sub_10010ECF4, 0, 0);
}

uint64_t sub_10010ECF4()
{
  sub_10010ED70((v0 + 63));
  v1 = v0[305];
  sub_10000BB78(v0 + 300);
  memcpy(v1, v0 + 63, 0x1A1uLL);
  v2 = v0[1];

  return v2();
}

double sub_10010ED70(uint64_t a1)
{
  *(a1 + 416) = 0;
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10010EDB0()
{
  v1 = type metadata accessor for Logger();
  v0[108] = v1;
  v0[109] = *(v1 - 8);
  v0[110] = swift_task_alloc();
  v0[111] = swift_task_alloc();

  return _swift_task_switch(sub_10010EE78, 0, 0);
}

uint64_t sub_10010EE78()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableKRL.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[111];
    v8 = v0[109];
    v9 = v0[108];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Internal settings forced disabled KRL; KRL is disabled", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[112] = v13;
    *v13 = v0;
    v13[1] = sub_10010F04C;

    return sub_10010E948((v0 + 55));
  }
}

uint64_t sub_10010F04C()
{

  return _swift_task_switch(sub_10010F148, 0, 0);
}

uint64_t sub_10010F148()
{
  memcpy((v0 + 16), (v0 + 440), 0x1A1uLL);
  if (sub_10010F2A8(v0 + 16) == 1 || (v1 = *(v0 + 361), sub_10010F2C0(v0 + 440), v1 == 2) || (v1 & 1) == 0)
  {
    v9 = 1;
  }

  else
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 864);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Active config disabled KRL; KRL is disabled", v8, 2u);
    }

    (*(v6 + 8))(v5, v7);
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_10010F2A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10010F2C0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083AAA0, &unk_1006D8E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010F338()
{
  v1 = type metadata accessor for DIPOIDVerifier();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19[-1] - v6;
  v8 = type metadata accessor for DIPCertUsage();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  __chkstk_darwin(v12 - 8);
  v14 = &v19[-1] - v13;
  swift_defaultActor_initialize();
  v15 = type metadata accessor for COSESignatureValidator();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 104))(v11, enum case for DIPCertUsage.krlSigning(_:), v8);
  v19[3] = type metadata accessor for DateProvider();
  v19[4] = &protocol witness table for DateProvider;
  sub_100032DBC(v19);
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  (*(v2 + 16))(v5, v7, v1);
  v16 = sub_1001113C8(v14, v5, v11);
  (*(v2 + 8))(v7, v1);
  *(v0 + 112) = v16;
  return v0;
}

uint64_t sub_10010F5C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for DIPError.Code();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_10010F6BC;

  return sub_10010FEE4(a1);
}

uint64_t sub_10010F6BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_10010FC3C;
  }

  else
  {
    v5 = sub_10010F7E8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10010F7E8()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];

    v9 = enum case for DIPError.Code.coseInvalidResponse(_:);
    (*(v7 + 104))(v6, enum case for DIPError.Code.coseInvalidResponse(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[5] + 104))(v0[6], v9, v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10010FB10;
  v5 = v0[2];

  return sub_100110B90(v5, v3);
}

uint64_t sub_10010FB10()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10010FD8C;
  }

  else
  {
    v4 = sub_100042590;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10010FC3C()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.coseInvalidResponse(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10010FD8C()
{
  (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.coseInvalidResponse(_:), *(v0 + 32));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010FEE4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100110044, v1, 0);
}

uint64_t sub_100110044()
{
  v1 = objc_opt_self();
  v0[16] = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.forceTrustValidationFailure.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = enum case for DIPError.Code.revokedCertificate(_:);
    (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.revokedCertificate(_:), v0[13]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[12];
    static DIPOIDVerifier.getSpecificCertificateError(_:)();
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      v13 = v0[13];
      v14 = v0[14];
      v15 = v0[11];
      sub_10000BBC4(v0[12], v15, &qword_10083B020, &unk_1006D8ED0);
      v16 = (*(v14 + 88))(v15, v13);
      if (v16 == v5)
      {
        if (qword_100832B90 != -1)
        {
          swift_once();
        }

        v9 = qword_1008820B0;
        goto LABEL_17;
      }

      if (v16 == enum case for DIPError.Code.expiredCertificate(_:))
      {
        if (qword_100832B98 != -1)
        {
          swift_once();
        }

        v9 = qword_1008820C8;
        goto LABEL_17;
      }

      (*(v0[14] + 8))(v0[11], v0[13]);
    }

    if (qword_100832BA0 != -1)
    {
      swift_once();
    }

    v9 = qword_1008820E0;
LABEL_17:
    v17 = v0[16];
    v18 = v0[12];
    v19 = type metadata accessor for Milestone();
    sub_10003170C(v19, v9);
    Milestone.log()();
    sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
    v20 = [v17 standardUserDefaults];
    v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableTrustValidation.getter();
    LOBYTE(v18) = NSUserDefaults.internalBool(forKey:)(v21);

    if (v18)
    {
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "KRLTrustValidator trust validation failed. This check is disabled in settings, bypassing.", v24, 2u);
      }

      v26 = v0[9];
      v25 = v0[10];
      v27 = v0[8];

      (*(v26 + 8))(v25, v27);
      v28 = sub_10011184C();

      v29 = v0[1];

      return v29(v28);
    }

    else
    {
      swift_willThrow();

      v30 = v0[1];

      return v30();
    }
  }

  v0[17] = *(v0[7] + 112);

  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1001105B4;
  v11 = v0[6];

  return sub_100041294(v11);
}