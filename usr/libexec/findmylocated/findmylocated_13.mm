void sub_10016E688(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEE00737574617453;
  v5 = 0x6E6F697461636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x737574617473;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461636F6CLL;
    v2 = 0xE800000000000000;
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

uint64_t sub_10016E704()
{
  v1 = 25705;
  v2 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x737574617473;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

unint64_t sub_10016E77C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016E7A4(uint64_t a1)
{
  v2 = sub_100170E28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016E7E0(uint64_t a1)
{
  v2 = sub_100170E28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016E81C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
  __chkstk_darwin(v4 - 8);
  v35 = &v28 - v5;
  v6 = sub_10004B564(&qword_1005AD738, &qword_1004CA000);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ServerLocation(0);
  __chkstk_darwin(v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100011AEC(a1, a1[3]);
  sub_100170E28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v32 = v11;
    v30 = v9;
    v12 = v34;
    v13 = v35;
    v39 = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v32;
    *v32 = v14;
    v15[1] = v16;
    type metadata accessor for LegacyLocation(0);
    v38 = 1;
    sub_100170750(&qword_1005AD748, type metadata accessor for LegacyLocation, &protocol conformance descriptor for LegacyLocation);
    v29 = v6;
    v31 = v8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v13;
    v18 = v30;
    v19 = v32;
    sub_1000176A8(v17, v32 + *(v30 + 20), &qword_1005A92D0, &qword_1004C2890);
    v37 = 2;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = (v19 + *(v18 + 24));
    *v21 = v20;
    v21[1] = v22;
    v36 = 3;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v24;
    (*(v12 + 8))(v31, v29);
    v26 = (v19 + *(v18 + 28));
    *v26 = v23;
    v26[1] = v25;
    sub_100170E7C(v19, v33);
  }

  return sub_100004984(a1);
}

uint64_t sub_10016EBC4(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD750, &unk_1004CA008);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_100170E28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ServerLocation(0);
    v8[14] = 1;
    type metadata accessor for LegacyLocation(0);
    sub_100170750(&qword_1005AD758, type metadata accessor for LegacyLocation, &protocol conformance descriptor for LegacyLocation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10016EE3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016EE6C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE900000000000070;
  v6 = 0x6D617473656D6974;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001004DDC90;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64757469676E6F6CLL;
  if (v2 == 4)
  {
    v8 = 0x656475746974616CLL;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006C65;
  result = 0x76654C726F6F6C66;
  v11 = 0xD000000000000012;
  if (v2 == 2)
  {
    v11 = 0x76654C726F6F6C66;
  }

  else
  {
    v9 = 0x80000001004DDCB0;
  }

  if (*v1)
  {
    v4 = 0x6564757469746C61;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016EF74()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x64757469676E6F6CLL;
  if (v1 == 4)
  {
    v4 = 0x656475746974616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 2)
  {
    v5 = 0x76654C726F6F6C66;
  }

  if (*v0)
  {
    v2 = 0x6564757469746C61;
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

unint64_t sub_10016F078@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BFC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016F0A0(uint64_t a1)
{
  v2 = sub_10016F5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016F0DC(uint64_t a1)
{
  v2 = sub_10016F5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LegacyLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004B564(&qword_1005AD580, &qword_1004C9BE8);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = type metadata accessor for LegacyLocation(0);
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v38 = a1;
  sub_100011AEC(a1, v11);
  sub_10016F5D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v38);
  }

  v12 = v37;
  v46 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v5;
  v14 = v10;
  *&v10[v8[8]] = v15;
  v45 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v10[v8[9]] = v16;
  v44 = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v10[v8[10]] = v17;
  type metadata accessor for PlaceMark();
  v43 = 0;
  sub_100170750(&qword_1005AD590, &type metadata accessor for PlaceMark, &protocol conformance descriptor for PlaceMark);
  v35 = v13;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v36;
  sub_1000176A8(0, v10, &qword_1005A8F20, &qword_1004C9BE0);
  v42 = 1;
  v19 = v35;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v8;
  v22 = v14 + v8[5];
  *v22 = v20;
  *(v22 + 8) = v23 & 1;
  v41 = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v14 + v8[6];
  *v25 = v24;
  *(v25 + 8) = v26 & 1;
  v40 = 3;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v14 + v8[7];
  *v28 = v27;
  *(v28 + 8) = v29 & 1;
  v39 = 7;
  v30 = v14;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v14) = v32;
  (*(v12 + 8))(v7, v19);
  v33 = v30 + v21[11];
  *v33 = v31;
  *(v33 + 8) = v14 & 1;
  sub_10016F624(v30, v18);
  sub_100004984(v38);
  return sub_10016F688(v30);
}

unint64_t sub_10016F5D0()
{
  result = qword_1005AD588;
  if (!qword_1005AD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD588);
  }

  return result;
}

uint64_t sub_10016F624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F688(uint64_t a1)
{
  v2 = type metadata accessor for LegacyLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LegacyLocation.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(124);
  v9._countAndFlagsBits = 0x3A73736572646461;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  sub_100005F04(v0, v8, &qword_1005A8F20, &qword_1004C9BE0);
  v10 = type metadata accessor for PlaceMark();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_100002CE0(v8, &qword_1005A8F20, &qword_1004C9BE0);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v14 = PlaceMark.description.getter();
    v13 = v15;
    (*(v11 + 8))(v8, v10);
    v12 = v14;
  }

  v16 = v13;
  String.append(_:)(*&v12);

  v17._countAndFlagsBits = 0x64757469746C610ALL;
  v17._object = 0xEA00000000003A65;
  String.append(_:)(v17);
  v18 = type metadata accessor for LegacyLocation(0);
  v19 = v1 + v18[5];
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  v43 = v20;
  v44 = v19;
  sub_10004B564(&qword_1005AD598, &unk_1004C9BF0);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x654C726F6F6C660ALL;
  v22._object = 0xEC0000003A6C6576;
  String.append(_:)(v22);
  v23 = v1 + v18[6];
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v43 = v24;
  v44 = v23;
  sub_10004B564(&qword_1005A97F8, &qword_1004C2CC8);
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD000000000000014;
  v26._object = 0x80000001004E2ED0;
  String.append(_:)(v26);
  v27 = v1 + v18[7];
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v43 = v28;
  v44 = v27;
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  v30._object = 0x80000001004E2EF0;
  v30._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v30);
  v31 = v1 + v18[11];
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v43 = v32;
  v44 = v31;
  v33._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x6475746974616C0ALL;
  v34._object = 0xEA00000000003A65;
  String.append(_:)(v34);
  Double.write<A>(to:)();
  v35._countAndFlagsBits = 0x757469676E6F6C0ALL;
  v35._object = 0xEB000000003A6564;
  String.append(_:)(v35);
  Double.write<A>(to:)();
  v36._countAndFlagsBits = 0x617473656D69740ALL;
  v36._object = 0xEB000000003A706DLL;
  String.append(_:)(v36);
  Double.write<A>(to:)();
  v37._countAndFlagsBits = 0x3A657461640ALL;
  v37._object = 0xE600000000000000;
  String.append(_:)(v37);
  Date.init(timeIntervalSince1970:)();
  v38 = Date.localISO8601.getter();
  v40 = v39;
  (*(v3 + 8))(v5, v2);
  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  return v45;
}

uint64_t LegacyLocation.encode(to:)(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD5A0, &qword_1004C9C00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_10016F5D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for PlaceMark();
  sub_100170750(&qword_1005AD5A8, &type metadata accessor for PlaceMark, &protocol conformance descriptor for PlaceMark);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LegacyLocation(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void LegacyLocation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PlaceMark();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  sub_100005F04(v2, &v25 - v8, &qword_1005A8F20, &qword_1004C9BE0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100170750(&qword_1005AD5B0, &type metadata accessor for PlaceMark, &protocol conformance descriptor for PlaceMark);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  v10 = type metadata accessor for LegacyLocation(0);
  v11 = v2 + v10[5];
  if (*(v11 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *v11;
    Hasher._combine(_:)(1u);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    Hasher._combine(_:)(v13);
  }

  v14 = v2 + v10[6];
  if (*(v14 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v15);
  }

  v16 = v2 + v10[7];
  if (*(v16 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = *v16;
    Hasher._combine(_:)(1u);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    Hasher._combine(_:)(v18);
  }

  v19 = *(v2 + v10[8]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  Hasher._combine(_:)(*&v19);
  v20 = *(v2 + v10[9]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  Hasher._combine(_:)(*&v20);
  v21 = *(v2 + v10[10]);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  Hasher._combine(_:)(*&v21);
  v22 = v2 + v10[11];
  if (*(v22 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = *v22;
    Hasher._combine(_:)(1u);
    if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    Hasher._combine(_:)(v24);
  }
}

Swift::Int LegacyLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  LegacyLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100170250()
{
  Hasher.init(_seed:)();
  LegacyLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL _s13findmylocated14LegacyLocationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceMark();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_10004B564(&qword_1005AD688, &unk_1004C9EA0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = *(v12 + 56);
  sub_100005F04(a1, &v41 - v13, &qword_1005A8F20, &qword_1004C9BE0);
  sub_100005F04(a2, &v14[v15], &qword_1005A8F20, &qword_1004C9BE0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100002CE0(v14, &qword_1005A8F20, &qword_1004C9BE0);
      goto LABEL_9;
    }

LABEL_6:
    sub_100002CE0(v14, &qword_1005AD688, &unk_1004C9EA0);
    return 0;
  }

  sub_100005F04(v14, v10, &qword_1005A8F20, &qword_1004C9BE0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_100170750(&qword_1005AD690, &type metadata accessor for PlaceMark, &protocol conformance descriptor for PlaceMark);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_100002CE0(v14, &qword_1005A8F20, &qword_1004C9BE0);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = type metadata accessor for LegacyLocation(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v20[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v20[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  if (*(a1 + v20[8]) != *(a2 + v20[8]) || *(a1 + v20[9]) != *(a2 + v20[9]) || *(a1 + v20[10]) != *(a2 + v20[10]))
  {
    return 0;
  }

  v36 = v20[11];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if ((v38 & 1) == 0)
  {
    if (*v37 != *v39)
    {
      v40 = 1;
    }

    return (v40 & 1) == 0;
  }

  return (v40 & 1) != 0;
}

uint64_t sub_100170750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001707C0(uint64_t a1)
{
  sub_100170D30(319, &unk_1005AD628, &type metadata accessor for PlaceMark);
  if (v1 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005AC708, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_10008B2BC(319, &qword_1005A9788, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1001708C8()
{
  result = qword_1005AD670;
  if (!qword_1005AD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD670);
  }

  return result;
}

unint64_t sub_100170920()
{
  result = qword_1005AD678;
  if (!qword_1005AD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD678);
  }

  return result;
}

unint64_t sub_100170978()
{
  result = qword_1005AD680;
  if (!qword_1005AD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD680);
  }

  return result;
}

uint64_t sub_1001709CC(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD760, &qword_1004CA018);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100170EE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100004984(a1);
  return v7;
}

unint64_t sub_100170BB0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B1C0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100170BFC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B240, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_100170C70(uint64_t a1)
{
  sub_100170D30(319, &unk_1005AD700, type metadata accessor for LegacyLocation);
  if (v1 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005A9790, &type metadata for String);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100170D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

__n128 sub_100170D84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100170D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100170DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100170E28()
{
  result = qword_1005AD740;
  if (!qword_1005AD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD740);
  }

  return result;
}

uint64_t sub_100170E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100170EE0()
{
  result = qword_1005AD768;
  if (!qword_1005AD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD768);
  }

  return result;
}

unint64_t sub_100170F58()
{
  result = qword_1005AD778;
  if (!qword_1005AD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD778);
  }

  return result;
}

unint64_t sub_100170FB0()
{
  result = qword_1005AD780;
  if (!qword_1005AD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD780);
  }

  return result;
}

unint64_t sub_100171008()
{
  result = qword_1005AD788;
  if (!qword_1005AD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD788);
  }

  return result;
}

unint64_t sub_100171060()
{
  result = qword_1005AD790;
  if (!qword_1005AD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD790);
  }

  return result;
}

unint64_t sub_1001710B8()
{
  result = qword_1005AD798;
  if (!qword_1005AD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD798);
  }

  return result;
}

unint64_t sub_100171110()
{
  result = qword_1005AD7A0;
  if (!qword_1005AD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD7A0);
  }

  return result;
}

void *sub_100171168()
{
  if (v0[74])
  {
    v1 = v0[74];
    v2 = v0[75];
    if (!v2)
    {
LABEL_9:
      v2 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    if (!v0[75])
    {
      if (!v0[76] && !v0[77])
      {
        return 0;
      }

      v1 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v1 = _swiftEmptyArrayStorage;
    v2 = v0[75];
  }

  if (v0[76])
  {
    v3 = v0[76];
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = v0[77];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = v1;

  sub_1002493A4(v2);
  sub_1002493A4(v3);
  sub_1002493A4(v5);
  return v7;
}

uint64_t sub_100171264()
{
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(105);
  v19 = v22;
  v1._object = 0x80000001004E3010;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  v21 = *v0;
  v22 = v21;
  sub_100005F04(&v22, &v20, &qword_1005A96A8, &qword_1004C3320);
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x496563697665640ALL;
  v3._object = 0xEA00000000003A64;
  String.append(_:)(v3);
  v20 = v0[1];
  v21 = v20;
  sub_100005F04(&v21, &v18, &qword_1005A96A8, &qword_1004C3320);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x80000001004E3030;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x80000001004E3050;
  String.append(_:)(v6);
  if (*(v0 + 40))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._object = 0x80000001004E3070;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  if (*(v0 + 72))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x6369766544656D0ALL;
  v14._object = 0xEC0000003A644965;
  String.append(_:)(v14);
  v20 = v0[5];
  v18 = v0[5];
  sub_100005F04(&v20, &v17, &qword_1005A96A8, &qword_1004C3320);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  return v19;
}

uint64_t sub_1001714F4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD908, &unk_1004CAE60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1000328C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 48);
    v10[7] = 4;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001717AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100177800(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001717D4(uint64_t a1)
{
  v2 = sub_1000328C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100171810(uint64_t a1)
{
  v2 = sub_1000328C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100171864(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1001773BC(v9, v10);
}

uint64_t sub_1001718C4()
{
  _StringGuts.grow(_:)(66);
  v1._countAndFlagsBits = 0x6143654D6F747561;
  v1._object = 0xEE003A656C626170;
  String.append(_:)(v1);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._object = 0x80000001004E3450;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  if (*(v0 + 1))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 1))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 979659018;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  String.append(_:)(*(v0 + 8));
  v10._countAndFlagsBits = 0x697665447364690ALL;
  v10._object = 0xED00003A64496563;
  String.append(_:)(v10);
  String.append(_:)(*(v0 + 24));
  v11._countAndFlagsBits = 0x3A656D616E0ALL;
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  String.append(_:)(*(v0 + 40));
  return 0;
}

uint64_t sub_100171A48(void *a1)
{
  v3 = sub_10004B564(&qword_1005ADA28, &qword_1004CAF00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_10017E91C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100171C28()
{
  v1 = *v0;
  v2 = 0x6143654D6F747561;
  v3 = 25705;
  v4 = 0x6369766544736469;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100171CC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100177AC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100171CF0(uint64_t a1)
{
  v2 = sub_10017E91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100171D2C(uint64_t a1)
{
  v2 = sub_10017E91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100171D68@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100177C80(a2, v6);
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

uint64_t sub_100171DD4(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD918, &qword_1004CAE70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100011AEC(a1, a1[3]);
  sub_100031AD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10017220C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100177F74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100172240(uint64_t a1)
{
  v2 = sub_100031AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017227C(uint64_t a1)
{
  v2 = sub_100031AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1001722D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_10017723C(v11, v12);
}

uint64_t sub_100172354(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x454E4F5952455645;
  }

  else
  {
    v3 = 0x53444E45495246;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x454E4F5952455645;
  }

  else
  {
    v5 = 0x53444E45495246;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001723FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100172480(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001724F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100172570(uint64_t *a1@<X8>)
{
  v2 = 0x53444E45495246;
  if (*v1)
  {
    v2 = 0x454E4F5952455645;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100172600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_10004B564(&qword_1005AD9A8, &qword_1004CAEB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100011AEC(a1, a1[3]);
  sub_10017E564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100172794()
{
  if (*v0)
  {
    return 0x726564726FLL;
  }

  else
  {
    return 25705;
  }
}

void sub_1001727C0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
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

uint64_t sub_100172890(uint64_t a1)
{
  v2 = sub_10017E564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001728CC(uint64_t a1)
{
  v2 = sub_10017E564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100172908@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001785FC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100172958()
{
  v1 = *v0;
  v2 = v0[1];
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8285;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  return 91;
}

double sub_100172A00(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_100172B14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001787D4(*a1);
  *a2 = result;
  return result;
}

void sub_100172B44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x61636F4C65646968;
  v5 = 0xD000000000000013;
  v6 = 0x80000001004DDFE0;
  v7 = 0xEC0000006C69616DLL;
  v8 = 0x457972616D697270;
  if (v2 != 4)
  {
    v8 = 0x657469726F766166;
    v7 = 0xE900000000000073;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001004DDFC0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001004DDFA0;
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
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100172C20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001787D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100172C48(uint64_t a1)
{
  v2 = sub_100031B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100172C84(uint64_t a1)
{
  v2 = sub_100031B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100172CC0()
{
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(123);
  v15 = v17;
  v1._countAndFlagsBits = 0x61636F4C65646968;
  v1._object = 0xEE00203A6E6F6974;
  String.append(_:)(v1);
  String.append(_:)(v0[2]);
  v2._object = 0x80000001004E3320;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  String.append(_:)(v0[3]);
  v3._object = 0x80000001004E3340;
  v3._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v3);
  v16 = v0[4];
  v17 = v16;
  sub_100005F04(&v17, &v14, &qword_1005A96A8, &qword_1004C3320);
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7972616D6972700ALL;
  v5._object = 0xEF203A6C69616D45;
  String.append(_:)(v5);
  v16 = *v0;
  v14 = *v0;
  sub_100005F04(&v16, &countAndFlagsBits, &qword_1005A96A8, &qword_1004C3320);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x80000001004E3360;
  String.append(_:)(v7);
  LOBYTE(v14._countAndFlagsBits) = v0[1]._countAndFlagsBits;
  sub_10004B564(&qword_1005AD7F8, &qword_1004CA2E0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x7469726F7661660ALL;
  v9._object = 0xEC000000203A7365;
  String.append(_:)(v9);
  v14._countAndFlagsBits = v0[1]._object;
  countAndFlagsBits = v14._countAndFlagsBits;
  sub_100005F04(&v14, v12, &qword_1005AD800, &qword_1004CA2E8);
  sub_10004B564(&qword_1005AD800, &qword_1004CA2E8);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  return v15;
}

uint64_t sub_100172F4C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD928, &qword_1004CAE78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_100031B24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v15 = 1;
    sub_10017E2A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 24);
    v10[15] = 5;
    sub_10004B564(&qword_1005AD940, &qword_1004CAE80);
    sub_10017E2F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1001731AC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v11 = a2[2];
  v12 = v5;
  v13 = a2[4];
  v6 = *a2;
  v10 = a2[1];
  v8[4] = v3;
  v9 = v6;
  return sub_100177548(v8, &v9, v10);
}

Swift::Int sub_100173214()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001732E4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001733A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10017346C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100178820(*a1);
  *a2 = result;
  return result;
}

void sub_10017349C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000070;
  v3 = 0x614D737574617473;
  v4 = 0xED0000736E656B6FLL;
  v5 = 0x5474736575716572;
  if (*v1 != 2)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F43737574617473;
    v2 = 0xEA00000000006564;
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

uint64_t sub_100173528()
{
  v1 = 0x614D737574617473;
  v2 = 0x5474736575716572;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x6F43737574617473;
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

unint64_t sub_1001735B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100178820(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001735D8(uint64_t a1)
{
  v2 = sub_10017E74C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100173614(uint64_t a1)
{
  v2 = sub_10017E74C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100173650(char a1)
{
  result = 0x7972746E756F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x726464416C6C7566;
      break;
    case 5:
      result = 0x7974696C61636F6CLL;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x65646F4374736F70;
      break;
    case 8:
      result = 0x736573696D657270;
      break;
    case 9:
      result = 0x64644174726F6873;
      break;
    case 10:
      result = 0x646F436574617473;
      break;
    case 11:
      result = 0x6441746565727473;
      break;
    case 12:
      result = 0x614E746565727473;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x6C61636F4C627573;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

double sub_100173824@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_10017886C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100173880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10017901C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001738B4(uint64_t a1)
{
  v2 = sub_10017E4A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001738F0(uint64_t a1)
{
  v2 = sub_10017E4A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10017392C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100179500(a2, v11);
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

void sub_1001739BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for FenceRecord(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v6, &qword_1005AE720, &qword_1004CA2F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100002CE0(v6, &qword_1005AE720, &qword_1004CA2F0);
  }

  else
  {
    sub_100176988(v6, v10);
    v11 = &v10[v7[5]];
    v13 = *v11;
    v12 = *(v11 + 1);

    *(v2 + 384) = v13;
    *(v2 + 392) = v12;
    v14 = &v10[v7[10]];
    v15 = *(v14 + 3);
    v50 = *(v14 + 2);
    v51 = v15;
    v16 = *(v14 + 5);
    v52 = *(v14 + 4);
    v53 = v16;
    v17 = *(v14 + 1);
    v48 = *v14;
    v49 = v17;
    v18 = *(&v52 + 1);
    v19 = v52;
    sub_1001A5924(v44);
    v20._countAndFlagsBits = v44;
    DarwinNotification.init(name:value:)(v20, v21);
    v22 = *(v2 + 336);
    v46[12] = *(v2 + 320);
    v46[13] = v22;
    v47 = *(v2 + 352);
    v23 = *(v2 + 272);
    v46[8] = *(v2 + 256);
    v46[9] = v23;
    v24 = *(v2 + 304);
    v46[10] = *(v2 + 288);
    v46[11] = v24;
    v25 = *(v2 + 208);
    v46[4] = *(v2 + 192);
    v46[5] = v25;
    v26 = *(v2 + 240);
    v46[6] = *(v2 + 224);
    v46[7] = v26;
    v27 = *(v2 + 144);
    v46[0] = *(v2 + 128);
    v46[1] = v27;
    v28 = *(v2 + 176);
    v46[2] = *(v2 + 160);
    v46[3] = v28;
    v29 = v44[13];
    *(v2 + 320) = v44[12];
    *(v2 + 336) = v29;
    *(v2 + 352) = v45;
    v30 = v44[9];
    *(v2 + 256) = v44[8];
    *(v2 + 272) = v30;
    v31 = v44[11];
    *(v2 + 288) = v44[10];
    *(v2 + 304) = v31;
    v32 = v44[5];
    *(v2 + 192) = v44[4];
    *(v2 + 208) = v32;
    v33 = v44[7];
    *(v2 + 224) = v44[6];
    *(v2 + 240) = v33;
    v34 = v44[1];
    *(v2 + 128) = v44[0];
    *(v2 + 144) = v34;
    v35 = v44[3];
    *(v2 + 160) = v44[2];
    *(v2 + 176) = v35;

    sub_100002CE0(v46, &qword_1005AD808, &qword_1004CA2F8);
    if (!v18)
    {
      v19 = *(v2 + 16);
    }

    *(v2 + 16) = v19;
    *(v2 + 24) = v18;
    v36 = *&v10[v7[6]];
    [v36 coordinate];
    *(v2 + 448) = v37;
    *(v2 + 456) = 0;
    [v36 coordinate];
    *(v2 + 416) = v38;
    *(v2 + 424) = 0;
    [v36 horizontalAccuracy];
    *(v2 + 488) = v39;
    *(v2 + 496) = 0;
    v43 = *&v10[v7[7]];
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_1001769EC(v10);

    *(v2 + 432) = v40;
    *(v2 + 440) = v42;
  }
}

uint64_t sub_100173CF4()
{
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004CA270;
  _StringGuts.grow(_:)(22);

  v176._countAndFlagsBits = 0xD000000000000013;
  v176._object = 0x80000001004E33B0;
  v2 = *(v0 + 8);
  if (v2)
  {
    v3 = *v0;
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v3;
    v158._object = v2;
    _print_unlocked<A, B>(_:_:)();
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    String.append(_:)(v4);
  }

  else
  {
    v5._countAndFlagsBits = 7104878;
    v5._object = 0xE300000000000000;
    String.append(_:)(v5);
  }

  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  object = v176._object;
  *(v1 + 32) = v176._countAndFlagsBits;
  *(v1 + 40) = object;
  v176._countAndFlagsBits = 0x3A73736572646461;
  v176._object = 0xEA00000000002720;
  v8 = *(v0 + 24);
  if (v8)
  {
    v9 = *(v0 + 16);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v9;
    v158._object = v8;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.append(_:)(v10);
  }

  else
  {
    v11._countAndFlagsBits = 7104878;
    v11._object = 0xE300000000000000;
    String.append(_:)(v11);
  }

  v12._countAndFlagsBits = 39;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = v176._object;
  *(v1 + 48) = v176._countAndFlagsBits;
  *(v1 + 56) = v13;
  _StringGuts.grow(_:)(18);

  v176._countAndFlagsBits = 0x64726F6365526B63;
  v176._object = 0xEF27203A656D614ELL;
  v14 = *(v0 + 40);
  if (v14)
  {
    v15 = *(v0 + 32);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v15;
    v158._object = v14;
    _print_unlocked<A, B>(_:_:)();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.append(_:)(v16);
  }

  else
  {
    v17._countAndFlagsBits = 7104878;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);
  }

  v18._countAndFlagsBits = 39;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v176._object;
  *(v1 + 64) = v176._countAndFlagsBits;
  *(v1 + 72) = v19;
  _StringGuts.grow(_:)(27);

  v176._countAndFlagsBits = 0xD000000000000018;
  v176._object = 0x80000001004E33D0;
  v20 = *(v0 + 56);
  if (v20)
  {
    v21 = *(v0 + 48);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v21;
    v158._object = v20;
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.append(_:)(v22);
  }

  else
  {
    v23._countAndFlagsBits = 7104878;
    v23._object = 0xE300000000000000;
    String.append(_:)(v23);
  }

  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = v176._object;
  *(v1 + 80) = v176._countAndFlagsBits;
  *(v1 + 88) = v25;
  strcpy(&v176, "createdById: '");
  HIBYTE(v176._object) = -18;
  v26 = *(v0 + 72);
  if (v26)
  {
    v27 = *(v0 + 64);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v27;
    v158._object = v26;
    _print_unlocked<A, B>(_:_:)();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    String.append(_:)(v28);
  }

  else
  {
    v29._countAndFlagsBits = 7104878;
    v29._object = 0xE300000000000000;
    String.append(_:)(v29);
  }

  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v176._object;
  *(v1 + 96) = v176._countAndFlagsBits;
  *(v1 + 104) = v31;
  v176._countAndFlagsBits = 0x203A736C69616D65;
  v176._object = 0xE900000000000027;
  v32 = *(v0 + 80);
  if (v32)
  {
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v32;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    String.append(_:)(v33);
  }

  else
  {
    v34._countAndFlagsBits = 7104878;
    v34._object = 0xE300000000000000;
    String.append(_:)(v34);
  }

  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v176._object;
  *(v1 + 112) = v176._countAndFlagsBits;
  *(v1 + 120) = v36;
  v176._countAndFlagsBits = 0x3A644965636E6566;
  v176._object = 0xEA00000000002720;
  v37 = *(v0 + 96);
  if (v37)
  {
    v38 = *(v0 + 88);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v38;
    v158._object = v37;
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    String.append(_:)(v39);
  }

  else
  {
    v40._countAndFlagsBits = 7104878;
    v40._object = 0xE300000000000000;
    String.append(_:)(v40);
  }

  v41._countAndFlagsBits = 39;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = v176._object;
  *(v1 + 128) = v176._countAndFlagsBits;
  *(v1 + 136) = v42;
  strcpy(&v176, "followerIds: '");
  HIBYTE(v176._object) = -18;
  v43 = *(v0 + 104);
  if (v43)
  {
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v43;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    String.append(_:)(v44);
  }

  else
  {
    v45._countAndFlagsBits = 7104878;
    v45._object = 0xE300000000000000;
    String.append(_:)(v45);
  }

  v46._countAndFlagsBits = 39;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47 = v176._object;
  *(v1 + 144) = v176._countAndFlagsBits;
  *(v1 + 152) = v47;
  v191 = 0x6449646E65697266;
  v192 = 0xEB0000000027203ALL;
  v48 = *(v0 + 120);
  if (v48)
  {
    v49 = *(v0 + 112);
    v176._countAndFlagsBits = 0;
    v176._object = 0xE000000000000000;
    *&v173[0] = v49;
    *(&v173[0] + 1) = v48;
    _print_unlocked<A, B>(_:_:)();
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    String.append(_:)(v50);
  }

  else
  {
    v51._countAndFlagsBits = 7104878;
    v51._object = 0xE300000000000000;
    String.append(_:)(v51);
  }

  v52._countAndFlagsBits = 39;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  v53 = v192;
  *(v1 + 160) = v191;
  *(v1 + 168) = v53;
  strcpy(v175, "fullAddress: '");
  HIBYTE(v175[1]) = -18;
  v54 = *(v0 + 336);
  v188 = *(v0 + 320);
  v189 = v54;
  v190 = *(v0 + 352);
  v55 = *(v0 + 272);
  v184 = *(v0 + 256);
  v185 = v55;
  v56 = *(v0 + 304);
  v186 = *(v0 + 288);
  v187 = v56;
  v57 = *(v0 + 208);
  v180 = *(v0 + 192);
  v181 = v57;
  v58 = *(v0 + 240);
  v182 = *(v0 + 224);
  v183 = v58;
  v59 = *(v0 + 144);
  v176 = *(v0 + 128);
  v177 = v59;
  v60 = *(v0 + 176);
  v178 = *(v0 + 160);
  v179 = v60;
  if (sub_10004AFD4(&v176) == 1)
  {
    v61._countAndFlagsBits = 7104878;
    v61._object = 0xE300000000000000;
    String.append(_:)(v61);
  }

  else
  {
    v62 = *(v0 + 304);
    v63 = *(v0 + 336);
    v170 = *(v0 + 320);
    v171 = v63;
    v64 = *(v0 + 240);
    v65 = *(v0 + 272);
    v166 = *(v0 + 256);
    v167 = v65;
    v66 = *(v0 + 272);
    v67 = *(v0 + 304);
    v168 = *(v0 + 288);
    v169 = v67;
    v68 = *(v0 + 176);
    v69 = *(v0 + 208);
    v162 = *(v0 + 192);
    v163 = v69;
    v70 = *(v0 + 208);
    v71 = *(v0 + 240);
    v164 = *(v0 + 224);
    v165 = v71;
    v72 = *(v0 + 144);
    v158 = *(v0 + 128);
    v159 = v72;
    v73 = *(v0 + 176);
    v75 = *(v0 + 128);
    v74 = *(v0 + 144);
    v160 = *(v0 + 160);
    v161 = v73;
    v76 = *(v0 + 336);
    v173[12] = v170;
    v173[13] = v76;
    v173[8] = v166;
    v173[9] = v66;
    v173[10] = v168;
    v173[11] = v62;
    v173[4] = v162;
    v173[5] = v70;
    v173[6] = v164;
    v173[7] = v64;
    v173[0] = v75;
    v173[1] = v74;
    v172 = *(v0 + 352);
    v174 = *(v0 + 352);
    v173[2] = v160;
    v173[3] = v68;
    sub_10017E4FC(v173, &v156);
    v77 = String.init<A>(describing:)();
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v77;
    v157 = v78;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v79._countAndFlagsBits = 39;
  v79._object = 0xE100000000000000;
  String.append(_:)(v79);
  v80 = v175[1];
  *(v1 + 176) = v175[0];
  *(v1 + 184) = v80;
  *&v173[0] = 0x27203A6469;
  *(&v173[0] + 1) = 0xE500000000000000;
  v81 = *(v0 + 368);
  if (v81)
  {
    v82 = *(v0 + 360);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v82;
    v157 = v81;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v83._countAndFlagsBits = 7104878;
    v83._object = 0xE300000000000000;
    String.append(_:)(v83);
  }

  v84._countAndFlagsBits = 39;
  v84._object = 0xE100000000000000;
  String.append(_:)(v84);
  v85 = *(&v173[0] + 1);
  *(v1 + 192) = *&v173[0];
  *(v1 + 200) = v85;
  strcpy(v173, "isOn: '");
  *(&v173[0] + 1) = 0xE700000000000000;
  v86 = *(v0 + 376);
  if (v86 == 2)
  {
    v87._countAndFlagsBits = 7104878;
    v87._object = 0xE300000000000000;
    String.append(_:)(v87);
  }

  else
  {
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    LOBYTE(v156) = v86 & 1;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v88._countAndFlagsBits = 39;
  v88._object = 0xE100000000000000;
  String.append(_:)(v88);
  v89 = *(&v173[0] + 1);
  *(v1 + 208) = *&v173[0];
  *(v1 + 216) = v89;
  strcpy(v173, "label: '");
  BYTE9(v173[0]) = 0;
  WORD5(v173[0]) = 0;
  HIDWORD(v173[0]) = -402653184;
  v90 = *(v0 + 392);
  if (v90)
  {
    v91 = *(v0 + 384);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v91;
    v157 = v90;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v92._countAndFlagsBits = 7104878;
    v92._object = 0xE300000000000000;
    String.append(_:)(v92);
  }

  v93._countAndFlagsBits = 39;
  v93._object = 0xE100000000000000;
  String.append(_:)(v93);
  v94 = *(&v173[0] + 1);
  *(v1 + 224) = *&v173[0];
  *(v1 + 232) = v94;
  *&v173[0] = 0xD000000000000017;
  *(&v173[0] + 1) = 0x80000001004E33F0;
  v95 = *(v0 + 408);
  if (v95)
  {
    v96 = *(v0 + 400);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v96;
    v157 = v95;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v97._countAndFlagsBits = 7104878;
    v97._object = 0xE300000000000000;
    String.append(_:)(v97);
  }

  v98._countAndFlagsBits = 39;
  v98._object = 0xE100000000000000;
  String.append(_:)(v98);
  v99 = *(&v173[0] + 1);
  *(v1 + 240) = *&v173[0];
  *(v1 + 248) = v99;
  strcpy(v173, "latitude: '");
  HIDWORD(v173[0]) = -352321536;
  if (*(v0 + 424))
  {
    v100._countAndFlagsBits = 7104878;
    v100._object = 0xE300000000000000;
    String.append(_:)(v100);
  }

  else
  {
    v101 = *(v0 + 416);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v101;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v102._countAndFlagsBits = 39;
  v102._object = 0xE100000000000000;
  String.append(_:)(v102);
  v103 = *(&v173[0] + 1);
  *(v1 + 256) = *&v173[0];
  *(v1 + 264) = v103;
  *&v173[0] = 0x6E6F697461636F6CLL;
  *(&v173[0] + 1) = 0xEF27203A65707954;
  v104 = *(v0 + 440);
  if (v104)
  {
    v105 = *(v0 + 432);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v105;
    v157 = v104;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v106._countAndFlagsBits = 7104878;
    v106._object = 0xE300000000000000;
    String.append(_:)(v106);
  }

  v107._countAndFlagsBits = 39;
  v107._object = 0xE100000000000000;
  String.append(_:)(v107);
  v108 = *(&v173[0] + 1);
  *(v1 + 272) = *&v173[0];
  *(v1 + 280) = v108;
  strcpy(v173, "longitude: '");
  BYTE13(v173[0]) = 0;
  HIWORD(v173[0]) = -5120;
  if (*(v0 + 456))
  {
    v109._countAndFlagsBits = 7104878;
    v109._object = 0xE300000000000000;
    String.append(_:)(v109);
  }

  else
  {
    v110 = *(v0 + 448);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v110;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v111._countAndFlagsBits = 39;
  v111._object = 0xE100000000000000;
  String.append(_:)(v111);
  v112 = *(&v173[0] + 1);
  *(v1 + 288) = *&v173[0];
  *(v1 + 296) = v112;
  strcpy(v173, "onetimeonly: '");
  HIBYTE(v173[0]) = -18;
  v113 = *(v0 + 457);
  if (v113 == 2)
  {
    v114._countAndFlagsBits = 7104878;
    v114._object = 0xE300000000000000;
    String.append(_:)(v114);
  }

  else
  {
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    LOBYTE(v156) = v113 & 1;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v115._countAndFlagsBits = 39;
  v115._object = 0xE100000000000000;
  String.append(_:)(v115);
  v116 = *(&v173[0] + 1);
  *(v1 + 304) = *&v173[0];
  *(v1 + 312) = v116;
  *&v173[0] = 0x6D754E656E6F6870;
  *(&v173[0] + 1) = 0xEF27203A73726562;
  v117 = *(v0 + 464);
  if (v117)
  {
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v117;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v118._countAndFlagsBits = 7104878;
    v118._object = 0xE300000000000000;
    String.append(_:)(v118);
  }

  v119._countAndFlagsBits = 39;
  v119._object = 0xE100000000000000;
  String.append(_:)(v119);
  v120 = *(&v173[0] + 1);
  *(v1 + 320) = *&v173[0];
  *(v1 + 328) = v120;
  *&v173[0] = 0xD000000000000010;
  *(&v173[0] + 1) = 0x80000001004E3410;
  v121 = *(v0 + 480);
  if (v121)
  {
    v122 = *(v0 + 472);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v122;
    v157 = v121;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v123._countAndFlagsBits = 7104878;
    v123._object = 0xE300000000000000;
    String.append(_:)(v123);
  }

  v124._countAndFlagsBits = 39;
  v124._object = 0xE100000000000000;
  String.append(_:)(v124);
  v125 = *(&v173[0] + 1);
  *(v1 + 336) = *&v173[0];
  *(v1 + 344) = v125;
  strcpy(v173, "radius: '");
  WORD5(v173[0]) = 0;
  HIDWORD(v173[0]) = -385875968;
  if (*(v0 + 496))
  {
    v126._countAndFlagsBits = 7104878;
    v126._object = 0xE300000000000000;
    String.append(_:)(v126);
  }

  else
  {
    v127 = *(v0 + 488);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v127;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v128._countAndFlagsBits = 39;
  v128._object = 0xE100000000000000;
  String.append(_:)(v128);
  v129 = *(&v173[0] + 1);
  *(v1 + 352) = *&v173[0];
  *(v1 + 360) = v129;
  strcpy(v173, "status: '");
  WORD5(v173[0]) = 0;
  HIDWORD(v173[0]) = -385875968;
  v130 = *(v0 + 512);
  if (v130)
  {
    v131 = *(v0 + 504);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v131;
    v157 = v130;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v132._countAndFlagsBits = 7104878;
    v132._object = 0xE300000000000000;
    String.append(_:)(v132);
  }

  v133._countAndFlagsBits = 39;
  v133._object = 0xE100000000000000;
  String.append(_:)(v133);
  v134 = *(&v173[0] + 1);
  *(v1 + 368) = *&v173[0];
  *(v1 + 376) = v134;
  strcpy(v173, "streetName: '");
  HIWORD(v173[0]) = -4864;
  v135 = *(v0 + 528);
  if (v135)
  {
    v136 = *(v0 + 520);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v136;
    v157 = v135;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v137._countAndFlagsBits = 7104878;
    v137._object = 0xE300000000000000;
    String.append(_:)(v137);
  }

  v138._countAndFlagsBits = 39;
  v138._object = 0xE100000000000000;
  String.append(_:)(v138);
  v139 = *(&v173[0] + 1);
  *(v1 + 384) = *&v173[0];
  *(v1 + 392) = v139;
  strcpy(v173, "trigger: '");
  BYTE11(v173[0]) = 0;
  HIDWORD(v173[0]) = -369098752;
  v140 = *(v0 + 544);
  if (v140)
  {
    v141 = *(v0 + 536);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v141;
    v157 = v140;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v142._countAndFlagsBits = 7104878;
    v142._object = 0xE300000000000000;
    String.append(_:)(v142);
  }

  v143._countAndFlagsBits = 39;
  v143._object = 0xE100000000000000;
  String.append(_:)(v143);
  v144 = *(&v173[0] + 1);
  *(v1 + 400) = *&v173[0];
  *(v1 + 408) = v144;
  strcpy(v173, "type: '");
  *(&v173[0] + 1) = 0xE700000000000000;
  v145 = *(v0 + 560);
  if (v145)
  {
    v146 = *(v0 + 552);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v146;
    v157 = v145;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v147._countAndFlagsBits = 7104878;
    v147._object = 0xE300000000000000;
    String.append(_:)(v147);
  }

  v148._countAndFlagsBits = 39;
  v148._object = 0xE100000000000000;
  String.append(_:)(v148);
  v149 = *(&v173[0] + 1);
  *(v1 + 416) = *&v173[0];
  *(v1 + 424) = v149;
  *&v173[0] = 0xD000000000000012;
  *(&v173[0] + 1) = 0x80000001004E3430;
  if (*(v0 + 576))
  {
    v150._countAndFlagsBits = 7104878;
    v150._object = 0xE300000000000000;
    String.append(_:)(v150);
  }

  else
  {
    v151 = *(v0 + 568);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v151;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v152._countAndFlagsBits = 39;
  v152._object = 0xE100000000000000;
  String.append(_:)(v152);
  v153 = *(&v173[0] + 1);
  *(v1 + 432) = *&v173[0];
  *(v1 + 440) = v153;
  *&v173[0] = v1;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10013E894();
  v154 = BidirectionalCollection<>.joined(separator:)();

  return v154;
}

unint64_t sub_100174FAC(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x64726F6365526B63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x4264657461657263;
      break;
    case 5:
      result = 0x736C69616D65;
      break;
    case 6:
      result = 0x644965636E6566;
      break;
    case 7:
      result = 0x7265776F6C6C6F66;
      break;
    case 8:
      result = 0x6449646E65697266;
      break;
    case 9:
      result = 0x726464416C6C7566;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 1850700649;
      break;
    case 12:
      result = 0x6C6562616CLL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x656475746974616CLL;
      break;
    case 15:
      result = 0x6E6F697461636F6CLL;
      break;
    case 16:
      result = 0x64757469676E6F6CLL;
      break;
    case 17:
      result = 0x6F656D6974656E6FLL;
      break;
    case 18:
      result = 0x6D754E656E6F6870;
      break;
    case 19:
      result = 0x6441797474657270;
      break;
    case 20:
      result = 0x737569646172;
      break;
    case 21:
      result = 0x737574617473;
      break;
    case 22:
      result = 0x614E746565727473;
      break;
    case 23:
      result = 0x72656767697274;
      break;
    case 24:
      result = 1701869940;
      break;
    case 25:
      result = 0x6954657461647075;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_100175280(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656C746974;
    v7 = 1954047348;
    if (a1 != 2)
    {
      v7 = 0x6E6F747475426B6FLL;
    }

    if (a1)
    {
      v6 = 0x7079547472656C61;
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
    v1 = 0x79616C6564;
    if (a1 != 9)
    {
      v1 = 0x64497472656C61;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0x6E6F747475426B6FLL;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x75426C65636E6163;
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
      return v2;
    }
  }
}

unint64_t sub_100175404(char a1)
{
  result = 0x6F666E49796DLL;
  switch(a1)
  {
    case 1:
      result = 0x73656369766564;
      break;
    case 2:
      result = 0x7366657270;
      break;
    case 3:
      result = 0x7265776F6C6C6F66;
      break;
    case 4:
      result = 0x6E69776F6C6C6F66;
      break;
    case 5:
    case 6:
      result = 0x6F46657275747566;
      break;
    case 7:
      result = 0x4F676E69646E6570;
      break;
    case 8:
      result = 0x52646E616D6D6F63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6E6F697461636F6CLL;
      break;
    case 11:
      result = 0x6174536863746566;
      break;
    case 12:
      result = 0x6F43726576726573;
      break;
    case 13:
      result = 0x6769666E6F63;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x7365636E6546796DLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10017563C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100179F44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100175664(uint64_t a1)
{
  v2 = sub_10017E6A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001756A0(uint64_t a1)
{
  v2 = sub_10017E6A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001756DC(void *a1@<X8>, void *a2@<X0>)
{
  sub_10017A764(a2, __src);
  if (!v2)
  {
    memcpy(a1, __src, 0x241uLL);
  }
}

uint64_t sub_100175734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10017BD38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100175768(uint64_t a1)
{
  v2 = sub_10017E5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001757A4(uint64_t a1)
{
  v2 = sub_10017E5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1001757E0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10017C0C4(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v9[10];
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

uint64_t sub_100175844(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100175404(*a1);
  v5 = v4;
  if (v3 == sub_100175404(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001758CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100175404(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100175930(uint64_t a1)
{
  sub_100175404(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100175984()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100175404(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001759E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10017C780(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100175A14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100175404(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100175A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10017C780(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100175A90(uint64_t a1)
{
  v2 = sub_10017D9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100175ACC(uint64_t a1)
{
  v2 = sub_10017D9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100175B08(char a1)
{
  sub_10004B564(&qword_1005AD8F0, &qword_1004CAE58);
  sub_10004B564(&qword_1005AD818, &qword_1004CAE18);
  sub_10017E1CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  return v2;
}

uint64_t sub_100175D88(char a1)
{
  sub_10004B564(&qword_1005AD818, &qword_1004CAE18);
  sub_10017E0FC();
  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100176040()
{
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(292);
  v71 = v72;
  v1._countAndFlagsBits = 0x203A6F666E49796DLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_100032B70();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x736563697665640ALL;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A73666572700ALL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6 = *(v0 + 120);
  v7 = *(v0 + 152);
  v104[2] = *(v0 + 136);
  v104[3] = v7;
  v104[4] = *(v0 + 168);
  v104[0] = *(v0 + 104);
  v104[1] = v6;
  v8 = *(v0 + 120);
  v9 = *(v0 + 152);
  v74 = *(v0 + 136);
  v75 = v9;
  v76 = *(v0 + 168);
  v72 = *(v0 + 104);
  v73 = v8;
  sub_100005F04(v104, v70, &qword_1005AD7A8, &qword_1004CA280);
  sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x65776F6C6C6F660ALL;
  v11._object = 0xEB000000003A7372;
  String.append(_:)(v11);
  v103 = *(v0 + 184);
  *&v72 = v103;
  sub_100005F04(&v103, v70, &qword_1005AD7B0, &qword_1004CA288);
  sub_10004B564(&qword_1005AD7B0, &qword_1004CA288);
  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x69776F6C6C6F660ALL;
  v13._object = 0xEB000000003A676ELL;
  String.append(_:)(v13);
  v102 = *(v0 + 192);
  *&v72 = v102;
  sub_100005F04(&v102, v70, &qword_1005AD7B0, &qword_1004CA288);
  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  v15._object = 0x80000001004E2F30;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);
  v101 = *(v0 + 200);
  *&v72 = v101;
  sub_100005F04(&v101, v70, &qword_1005AD7B8, &qword_1004CA290);
  sub_10004B564(&qword_1005AD7B8, &qword_1004CA290);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  v17._object = 0x80000001004E2F50;
  v17._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v17);
  v100 = *(v0 + 208);
  *&v72 = v100;
  sub_100005F04(&v100, v70, &qword_1005AD7B8, &qword_1004CA290);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._object = 0x80000001004E2F70;
  v19._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v19);
  v20 = *(v0 + 240);
  v98[0] = *(v0 + 224);
  v98[1] = v20;
  v99 = *(v0 + 256);
  v21 = *(v0 + 240);
  v72 = *(v0 + 224);
  v73 = v21;
  *&v74 = *(v0 + 256);
  sub_100005F04(v98, v70, &qword_1005AD7C0, &qword_1004CA298);
  sub_10004B564(&qword_1005AD7C0, &qword_1004CA298);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0xD000000000000012;
  v23._object = 0x80000001004E2F90;
  String.append(_:)(v23);
  v97 = *(v0 + 264);
  *&v72 = v97;
  sub_100005F04(&v97, v70, &qword_1005AD7C8, &qword_1004CA2A0);
  sub_10004B564(&qword_1005AD7C8, &qword_1004CA2A0);
  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x6F697461636F6C0ALL;
  v25._object = 0xEB000000003A736ELL;
  String.append(_:)(v25);
  v96 = *(v0 + 272);
  *&v72 = v96;
  sub_100005F04(&v96, v70, &qword_1005AD7D0, &qword_1004CA2A8);
  sub_10004B564(&qword_1005AD7D0, &qword_1004CA2A8);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x745368637465660ALL;
  v27._object = 0xED00003A73757461;
  String.append(_:)(v27);
  LOBYTE(v72) = *(v0 + 280);
  sub_10004B564(&qword_1005AD7D8, &unk_1004CA2B0);
  v28._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x437265767265730ALL;
  v29._object = 0xEF3A747865746E6FLL;
  String.append(_:)(v29);
  v30 = *(v0 + 400);
  v31 = *(v0 + 368);
  v92 = *(v0 + 384);
  v93 = v30;
  v32 = *(v0 + 400);
  v33 = *(v0 + 432);
  v94 = *(v0 + 416);
  v95 = v33;
  v34 = *(v0 + 336);
  v35 = *(v0 + 304);
  v88 = *(v0 + 320);
  v89 = v34;
  v36 = *(v0 + 336);
  v37 = *(v0 + 368);
  v90 = *(v0 + 352);
  v91 = v37;
  v38 = *(v0 + 304);
  v87[0] = *(v0 + 288);
  v87[1] = v38;
  v78 = v92;
  v79 = v32;
  v39 = *(v0 + 432);
  v80 = v94;
  v81 = v39;
  v74 = v88;
  v75 = v36;
  v76 = v90;
  v77 = v31;
  v72 = v87[0];
  v73 = v35;
  sub_100005F04(v87, v70, &qword_1005A9328, &unk_1004C7F20);
  sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
  v40._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x3A6769666E6F630ALL;
  v41._object = 0xE800000000000000;
  String.append(_:)(v41);
  v42 = *(v0 + 560);
  v78 = *(v0 + 544);
  v79 = v42;
  v80 = *(v0 + 576);
  v43 = *(v0 + 496);
  v74 = *(v0 + 480);
  v75 = v43;
  v44 = *(v0 + 528);
  v76 = *(v0 + 512);
  v77 = v44;
  v45 = *(v0 + 464);
  v72 = *(v0 + 448);
  v73 = v45;
  sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
  v46._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0xD000000000000013;
  v47._object = 0x80000001004E2FB0;
  String.append(_:)(v47);
  v86 = *(v0 + 592);
  *&v72 = v86;
  sub_100005F04(&v86, v70, &qword_1005AD7E8, &qword_1004CA2C8);
  sub_10004B564(&qword_1005AD7E8, &qword_1004CA2C8);
  v48._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0xD000000000000018;
  v49._object = 0x80000001004E2FD0;
  String.append(_:)(v49);
  v85 = *(v0 + 600);
  *&v72 = v85;
  sub_100005F04(&v85, v70, &qword_1005AD7E8, &qword_1004CA2C8);
  v50._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0x65636E6546796D0ALL;
  v51._object = 0xEF203A7465534973;
  String.append(_:)(v51);
  v84 = *(v0 + 608);
  *&v72 = v84;
  sub_100005F04(&v84, v70, &qword_1005AD7E8, &qword_1004CA2C8);
  v52._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0xD000000000000014;
  v53._object = 0x80000001004E2FF0;
  String.append(_:)(v53);
  v83 = *(v0 + 616);
  *&v72 = v83;
  sub_100005F04(&v83, v70, &qword_1005AD7E8, &qword_1004CA2C8);
  v54._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x417265767265730ALL;
  v55._object = 0xEE00203A7472656CLL;
  String.append(_:)(v55);
  v56 = *(v0 + 736);
  v57 = *(v0 + 768);
  v80 = *(v0 + 752);
  v81 = v57;
  v58 = *(v0 + 768);
  v82 = *(v0 + 784);
  v59 = *(v0 + 672);
  v60 = *(v0 + 704);
  v76 = *(v0 + 688);
  v77 = v60;
  v61 = *(v0 + 704);
  v62 = *(v0 + 736);
  v78 = *(v0 + 720);
  v79 = v62;
  v63 = *(v0 + 640);
  v72 = *(v0 + 624);
  v73 = v63;
  v64 = *(v0 + 672);
  v66 = *(v0 + 624);
  v65 = *(v0 + 640);
  v74 = *(v0 + 656);
  v75 = v64;
  v70[8] = v80;
  v70[9] = v58;
  v70[10] = *(v0 + 784);
  v70[4] = v76;
  v70[5] = v61;
  v70[6] = v78;
  v70[7] = v56;
  v70[0] = v66;
  v70[1] = v65;
  v70[2] = v74;
  v70[3] = v59;
  sub_100005F04(&v72, &v69, &qword_1005AD7F0, &unk_1004CA2D0);
  sub_10004B564(&qword_1005AD7F0, &unk_1004CA2D0);
  v67._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v67);

  return v71;
}

void *sub_100176938@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10017C7D4(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x320uLL);
  }

  return result;
}

uint64_t sub_100176988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001769EC(uint64_t a1)
{
  v2 = type metadata accessor for FenceRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100176A48(uint64_t a1, __int128 *a2)
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
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100176A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 232))
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

uint64_t sub_100176AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100176BD4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_100176C3C(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100176C70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
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

uint64_t sub_100176CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 577))
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

uint64_t sub_100176DC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 568) = 0;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 576) = 0;
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
      *(result + 577) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 577) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176ED0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_100176F2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100176FA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100176FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017704C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100177078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 800))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001770C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 792) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 800) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 800) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001771E8()
{
  result = qword_1005AD810;
  if (!qword_1005AD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD810);
  }

  return result;
}

BOOL sub_10017723C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || ((*(a1 + 96) ^ *(a2 + 96)) & 1) != 0 || ((*(a1 + 97) ^ *(a2 + 97)) & 1) != 0 || ((*(a1 + 98) ^ *(a2 + 98)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 99);
  v4 = *(a2 + 99);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == 2 || ((v4 ^ v3) & 1) != 0)
    {
      return v5;
    }
  }

  if (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120) || ((*(a1 + 128) ^ *(a2 + 128)) & 1) != 0)
  {
    return 0;
  }

  return *(a1 + 136) == *(a2 + 136);
}

BOOL sub_1001773BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)))
  {
    return 0;
  }

  v15 = a1;
  v16 = a2;
  if ((sub_10022BB24(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  if (*(v15 + 56) != *(v16 + 56) || (v17 = v15, v18 = v16, *(v15 + 64) != *(v16 + 64)))
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = v16;
    v17 = v15;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(v17 + 72) ^ *(v18 + 72)))
  {
    return 0;
  }

  v21 = *(v17 + 88);
  v22 = *(v18 + 88);
  if (v21)
  {
    return v22 && (*(v17 + 80) == *(v18 + 80) && v21 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v22;
}

BOOL sub_100177548(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v5 = a1[1];
  v6 = *(a2 + 8);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == 2)
    {
      return 0;
    }

    if (v8)
    {
      v10 = 0x454E4F5952455645;
    }

    else
    {
      v10 = 0x53444E45495246;
    }

    if (v8)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (v9)
    {
      v12 = 0x454E4F5952455645;
    }

    else
    {
      v12 = 0x53444E45495246;
    }

    if (v9)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v10 == v12 && v11 == v13)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v16 = a1[3];
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!v17 || (sub_10022BBB4(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[9];
  v19 = *(a2 + 72);
  if (v18)
  {
    return v19 && (a1[8] == *(a2 + 64) && v18 == v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v19;
}

uint64_t sub_10017770C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _StringGuts.grow(_:)(27);

  sub_10004B564(&qword_1005ADA10, &qword_1004CAEF0);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x437375746174730ALL;
  v4._object = 0xED0000203A65646FLL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10018166C(v2);
  String.append(_:)(v5);

  return 0x614D737574617473;
}

uint64_t sub_100177800(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001004E3470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954656369766564 && a2 == 0xEF706D617453656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xEE00654D6F747541 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xEA00000000006449)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100177AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6143654D6F747561 && a2 == 0xED0000656C626170;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E3740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369766544736469 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100177C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADA18, &qword_1004CAEF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10017E91C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v34[0] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v34[0] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v34[0] = 2;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v11;
  v34[0] = 3;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v12;
  v42 = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v9 & 1;
  v14 = v10 & 1;
  v25 = v14;
  v15 = v13;
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v30) = v41;
  BYTE1(v30) = v14;
  v18 = v28;
  v19 = v29;
  *(&v30 + 1) = v28;
  *&v31 = v29;
  v20 = v26;
  v21 = v27;
  *(&v31 + 1) = v26;
  *&v32 = v27;
  *(&v32 + 1) = v15;
  v33 = v17;
  sub_10017E970(&v30, v34);
  sub_100004984(a1);
  v34[0] = v41;
  v34[1] = v25;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v15;
  v40 = v17;
  result = sub_10017E9A8(v34);
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  return result;
}

uint64_t sub_100177F74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001004E34B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6C6F4678616DLL && a2 == 0xEC00000073726577 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E34D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E34F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6569724678616DLL && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004E3510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3530 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001004E3550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E3570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004E3590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E35B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E35D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x464D466B636F6C62 && a2 == 0xEF6C656E6E616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E35F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001004E3610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001004E3630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEB000000004C5454 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E3660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E3680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004E36A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5465636172474C65 && a2 == 0xEE006E694D656D69)
  {

    return 20;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1001785FC(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD998, &qword_1004CAEA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E564();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100004984(a1);
  return v7;
}

unint64_t sub_1001787D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B370, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100178820(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B420, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10017886C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD9E0, &qword_1004CAED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v65 - v7;
  sub_100011AEC(a1, *(a1 + 24));
  sub_10017E74C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
    return;
  }

  LOBYTE(v77) = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 0;
  v12 = HIBYTE(v10) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    v80 = 11;
    goto LABEL_75;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v32 = v8;
    v79 = 0;
    v17 = sub_1004BA5C8();
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_68;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v77 = v9;
    v78 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v9 == 43)
    {
      if (v12)
      {
        v13 = v12 - 1;
        if (v12 == 1)
        {
          goto LABEL_66;
        }

        v17 = 0;
        v27 = &v77 + 1;
        do
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_66;
          }

          v29 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            goto LABEL_66;
          }

          v17 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_66;
          }

          ++v27;
          --v13;
        }

        while (v13);
LABEL_56:
        v32 = v8;
        goto LABEL_67;
      }
    }

    else
    {
      if (v9 != 45)
      {
        if (!v12)
        {
          goto LABEL_66;
        }

        v17 = 0;
        v33 = &v77;
        do
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            goto LABEL_66;
          }

          v35 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            goto LABEL_66;
          }

          v17 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            goto LABEL_66;
          }

          v33 = (v33 + 1);
          --v12;
        }

        while (v12);
        v32 = v8;
        goto LABEL_58;
      }

      if (v12)
      {
        v13 = v12 - 1;
        if (v12 == 1)
        {
          goto LABEL_66;
        }

        v17 = 0;
        v21 = &v77 + 1;
        do
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            goto LABEL_66;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            goto LABEL_66;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            goto LABEL_66;
          }

          ++v21;
          --v13;
        }

        while (v13);
        goto LABEL_56;
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
    }

    __break(1u);
    return;
  }

  if ((v9 & 0x1000000000000000) == 0)
  {
    goto LABEL_102;
  }

  v15 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
  while (1)
  {
    v16 = *v15;
    if (v16 == 43)
    {
      if (v13 < 1)
      {
        goto LABEL_105;
      }

      if (!--v13)
      {
        goto LABEL_66;
      }

      if (v15)
      {
        v17 = 0;
        v24 = v15 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            goto LABEL_66;
          }

          v26 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            goto LABEL_66;
          }

          v17 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_66;
          }

          ++v24;
          if (!--v13)
          {
            goto LABEL_56;
          }
        }
      }
    }

    else if (v16 == 45)
    {
      if (v13 < 1)
      {
        __break(1u);
        goto LABEL_104;
      }

      if (!--v13)
      {
        goto LABEL_66;
      }

      if (v15)
      {
        v17 = 0;
        v18 = v15 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          ++v18;
          if (!--v13)
          {
            goto LABEL_56;
          }
        }

LABEL_66:
        v32 = v8;
        v17 = 0;
        LOBYTE(v13) = 1;
        goto LABEL_67;
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_66;
      }

      if (v15)
      {
        v17 = 0;
        while (1)
        {
          v30 = *v15 - 48;
          if (v30 > 9)
          {
            goto LABEL_66;
          }

          v31 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            goto LABEL_66;
          }

          v17 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            goto LABEL_66;
          }

          ++v15;
          if (!--v13)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v32 = v8;
    v17 = 0;
LABEL_58:
    LOBYTE(v13) = 0;
LABEL_67:
    v79 = v13;
    v36 = v13;

    if (v36)
    {
LABEL_68:
      v37 = 11;
    }

    else
    {
LABEL_71:
      v40 = sub_100181DA8(v17);
      v37 = v40 == 21 ? 0 : v40;
    }

    v80 = v37;
    v8 = v32;
LABEL_75:
    sub_10004B564(&qword_1005AD9F0, &unk_1004CAED8);
    v79 = 2;
    sub_10017E7A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v11)
    {

      v11 = 0;
    }

    else
    {
      v11 = v77;
    }

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v79 = 3;
    sub_10017E8A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v78;
    v76 = v77;
    LOBYTE(v77) = 0;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      break;
    }

    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v79 = 0;
    sub_10017E824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v8;
    v67 = v6;
    v68 = v5;
    v69 = a2;
    v70 = a1;
    v43 = v77;
    sub_10004B564(&qword_1005ADA08, &qword_1004CAEE8);
    v44 = static _DictionaryStorage.copy(original:)();
    v42 = v44;
    a1 = 0;
    v73 = v11;
    v74 = v43;
    v45 = 1 << *(v43 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v6 = v43 + 64;
    a2 = v46 & *(v43 + 64);
    v8 = ((v45 + 63) >> 6);
    v71 = v41;
    v72 = v44 + 64;
    if (a2)
    {
      while (1)
      {
        v47 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
LABEL_90:
        v5 = v47 | (a1 << 6);
        v50 = *(v74 + 56);
        v51 = (*(v74 + 48) + 16 * v5);
        v52 = v51[1];
        v75 = *v51;
        v53 = (v50 + 16 * v5);
        v54 = *v53;
        v55 = v53[1];

        v56 = sub_1004B9544(v54, v55);
        if (v57)
        {
          v58 = 11;
        }

        else
        {
          v59 = sub_100181DA8(v56);
          v58 = v59 == 21 ? 0 : v59;
        }

        v11 = v73;
        *(v72 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
        v60 = (v42[6] + 16 * v5);
        *v60 = v75;
        v60[1] = v52;
        *(v42[7] + v5) = v58;
        v61 = v42[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          break;
        }

        v42[2] = v63;
        v41 = v71;
        if (!a2)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
LABEL_85:
      v48 = a1;
      while (1)
      {
        a1 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (a1 >= v8)
        {

          (*(v67 + 8))(v66, v68);
          a2 = v69;
          a1 = v70;
          goto LABEL_99;
        }

        v49 = *(v6 + 8 * a1);
        v48 = (v48 + 1);
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          a2 = (v49 - 1) & v49;
          goto LABEL_90;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    v15 = _StringObject.sharedUTF8.getter();
    v13 = v64;
  }

  (*(v6 + 8))(v8, v5);
  v42 = 0;
LABEL_99:
  sub_100004984(a1);
  *a2 = v42;
  *(a2 + 8) = v11;
  *(a2 + 16) = v80;
  *(a2 + 24) = v76;
  *(a2 + 32) = v41;
}

uint64_t sub_10017901C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001004E2A10 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E2A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736573696D657270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64644174726F6873 && a2 == 0xEC00000073736572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646F436574617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6441746565727473 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E36C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

void sub_100179500(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD988, &qword_1004CAEA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = a1[3];
  v71 = a1;
  sub_100011AEC(a1, v9);
  sub_10017E4A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(v71);
  }

  else
  {
    LOBYTE(v87[0]) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v11;
    LOBYTE(v87[0]) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v13;
    v68 = v12;
    LOBYTE(v87[0]) = 2;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = 0;
    v58 = v14;
    v66 = v15;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    LOBYTE(v72) = 3;
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v16 = v70;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v16)
    {
      v70 = v16;
      (*(v6 + 8))(v8, v5);
      LODWORD(v68) = 0;
      sub_100004984(v71);

      if (v68)
      {
      }
    }

    else
    {
      v65 = v87[0];
      LOBYTE(v87[0]) = 4;
      v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v64 = v17;
      LOBYTE(v87[0]) = 5;
      v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v63 = v18;
      LOBYTE(v87[0]) = 6;
      v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v62 = v19;
      LOBYTE(v87[0]) = 7;
      v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v61 = v20;
      LOBYTE(v87[0]) = 8;
      v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v60 = v21;
      v70 = 0;
      LOBYTE(v87[0]) = 9;
      v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v59 = v23;
      v70 = 0;
      v24 = v22;
      LOBYTE(v87[0]) = 10;
      v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v52 = v25;
      v70 = 0;
      LOBYTE(v87[0]) = 11;
      v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v50 = v26;
      LOBYTE(v87[0]) = 12;
      v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v48 = v27;
      v70 = 0;
      LOBYTE(v87[0]) = 13;
      v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v47 = v28;
      v70 = 0;
      v88 = 14;
      v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v43 = v30;
      v44 = v29;
      v70 = 0;
      MEMORY[8](v8, v5);
      v31 = v68;
      *&v72 = v10;
      *(&v72 + 1) = v69;
      v33 = v66;
      v32 = v67;
      *&v73 = v68;
      *(&v73 + 1) = v67;
      *&v74 = v58;
      *(&v74 + 1) = v66;
      v34 = v64;
      *&v75 = v65;
      *(&v75 + 1) = v57;
      *&v76 = v64;
      *(&v76 + 1) = v56;
      v35 = v63;
      *&v77 = v63;
      *(&v77 + 1) = v55;
      *&v78 = v62;
      *(&v78 + 1) = v54;
      *&v79 = v61;
      *(&v79 + 1) = v53;
      *&v80 = v60;
      *(&v80 + 1) = v24;
      *&v81 = v59;
      *(&v81 + 1) = v51;
      *&v82 = v52;
      *(&v82 + 1) = v49;
      *&v83 = v50;
      *(&v83 + 1) = v46;
      *&v84 = v48;
      *(&v84 + 1) = v45;
      *&v85 = v47;
      *(&v85 + 1) = v44;
      v86 = v43;
      sub_10017E4FC(&v72, v87);
      sub_100004984(v71);
      v87[0] = v10;
      v87[1] = v69;
      v87[2] = v31;
      v87[3] = v32;
      v87[4] = v58;
      v87[5] = v33;
      v87[6] = v65;
      v87[7] = v57;
      v87[8] = v34;
      v87[9] = v56;
      v87[10] = v35;
      v87[11] = v55;
      v87[12] = v62;
      v87[13] = v54;
      v87[14] = v61;
      v87[15] = v53;
      v87[16] = v60;
      v87[17] = v24;
      v87[18] = v59;
      v87[19] = v51;
      v87[20] = v52;
      v87[21] = v49;
      v87[22] = v50;
      v87[23] = v46;
      v87[24] = v48;
      v87[25] = v45;
      v87[26] = v47;
      v87[27] = v44;
      v87[28] = v43;
      sub_10017E534(v87);
      v36 = v85;
      *(a2 + 192) = v84;
      *(a2 + 208) = v36;
      *(a2 + 224) = v86;
      v37 = v81;
      *(a2 + 128) = v80;
      *(a2 + 144) = v37;
      v38 = v83;
      *(a2 + 160) = v82;
      *(a2 + 176) = v38;
      v39 = v77;
      *(a2 + 64) = v76;
      *(a2 + 80) = v39;
      v40 = v79;
      *(a2 + 96) = v78;
      *(a2 + 112) = v40;
      v41 = v73;
      *a2 = v72;
      *(a2 + 16) = v41;
      v42 = v75;
      *(a2 + 32) = v74;
      *(a2 + 48) = v42;
    }
  }
}

uint64_t sub_100179F44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E29F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726F6365526B63 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E29D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xEB00000000644979 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x644965636E6566 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7265776F6C6C6F66 && a2 == 0xEB00000000736449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6449646E65697266 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1850700649 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6F656D6974656E6FLL && a2 == 0xEB00000000796C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6441797474657270 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x72656767697274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL)
  {

    return 25;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

void sub_10017A764(void *a1@<X0>, void *a2@<X8>)
{
  v84 = sub_10004B564(&qword_1005AD9C8, &unk_1004CAEC0);
  v5 = *(v84 - 8);
  __chkstk_darwin(v84);
  v7 = &v41 - v6;
  sub_10017E674(v201);
  v197 = v201[11];
  v198 = v201[12];
  v199 = v201[13];
  v193 = v201[7];
  v194 = v201[8];
  v195 = v201[9];
  v196 = v201[10];
  v189 = v201[3];
  v190 = v201[4];
  v191 = v201[5];
  v192 = v201[6];
  v186 = v201[0];
  v187 = v201[1];
  v200 = v202;
  v188 = v201[2];
  v8 = a1[3];
  v203 = a1;
  sub_100011AEC(a1, v8);
  sub_10017E6A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(v203);

    v98 = v198;
    v99 = v199;
    *&v100 = v200;
    v94 = v194;
    v95 = v195;
    v96 = v196;
    v97 = v197;
    v90 = v190;
    v91 = v191;
    v92 = v192;
    v93 = v193;
    v86 = v186;
    v87 = v187;
    v88 = v188;
    v89 = v189;
    sub_100002CE0(&v86, &qword_1005AD808, &qword_1004CA2F8);
  }

  else
  {
    v9 = v5;
    v83 = a2;
    LOBYTE(v86) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v11;
    LOBYTE(v86) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v13;
    LOBYTE(v86) = 2;
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v14;
    LOBYTE(v86) = 3;
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v77 = v12;
    v69 = v15;
    LOBYTE(v86) = 4;
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v10;
    v68 = v16;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v85[0] = 5;
    v75 = sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v86;
    LOBYTE(v86) = 6;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v18;
    v85[0] = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v72 = v17;
    v65 = v86;
    LOBYTE(v86) = 8;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v19;
    v161 = 9;
    sub_10017E6F8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v156 = v174;
    v157 = v175;
    v158 = v176;
    v152 = v170;
    v153 = v171;
    v154 = v172;
    v155 = v173;
    v148 = v166;
    v149 = v167;
    v150 = v168;
    v151 = v169;
    v144 = v162;
    v145 = v163;
    v146 = v164;
    v147 = v165;
    v159[11] = v197;
    v159[12] = v198;
    v159[13] = v199;
    v160 = v200;
    v159[8] = v194;
    v159[9] = v195;
    v159[10] = v196;
    v159[4] = v190;
    v159[5] = v191;
    v159[6] = v192;
    v159[7] = v193;
    v159[0] = v186;
    v159[1] = v187;
    v159[2] = v188;
    v159[3] = v189;
    sub_100002CE0(v159, &qword_1005AD808, &qword_1004CA2F8);
    v197 = v155;
    v198 = v156;
    v199 = v157;
    v193 = v151;
    v194 = v152;
    v195 = v153;
    v196 = v154;
    v189 = v147;
    v190 = v148;
    v191 = v149;
    v192 = v150;
    v186 = v144;
    v187 = v145;
    v200 = v158;
    v188 = v146;
    LOBYTE(v86) = 10;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v21;
    v22 = v20;
    LOBYTE(v86) = 11;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v86) = 12;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = v24;
    LOBYTE(v86) = 13;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v25;
    LOBYTE(v86) = 14;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v184 = v26 & 1;
    LOBYTE(v86) = 15;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v81 = v27;
    LOBYTE(v86) = 16;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v182 = v28 & 1;
    LOBYTE(v86) = 17;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85[0] = 18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v86;
    LOBYTE(v86) = 19;
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v60 = v29;
    LOBYTE(v86) = 20;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v179 = v30 & 1;
    LOBYTE(v86) = 21;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v31;
    LOBYTE(v86) = 22;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v32;
    LOBYTE(v86) = 23;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v33;
    LOBYTE(v86) = 24;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v34;
    v143 = 25;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v36;
    (*(v9 + 8))(v7, v84);
    v177 = v37 & 1;
    *v85 = v74;
    *&v85[8] = v80;
    *&v85[16] = v77;
    *&v85[24] = v79;
    *&v85[32] = v78;
    *&v85[40] = v70;
    *&v85[48] = v76;
    *&v85[56] = v69;
    *&v85[64] = v73;
    *&v85[72] = v68;
    *&v85[80] = v67;
    *&v85[88] = v72;
    *&v85[96] = v66;
    *&v85[104] = v65;
    *&v85[112] = v71;
    *&v85[120] = v64;
    *&v85[320] = v156;
    *&v85[336] = v157;
    *&v85[256] = v152;
    *&v85[272] = v153;
    *&v85[304] = v155;
    *&v85[288] = v154;
    *&v85[192] = v148;
    *&v85[208] = v149;
    *&v85[240] = v151;
    *&v85[224] = v150;
    *&v85[128] = v144;
    *&v85[144] = v145;
    *&v85[176] = v147;
    *&v85[160] = v146;
    *&v85[352] = v158;
    v44 = v22;
    *&v85[360] = v22;
    v38 = v63;
    *&v85[368] = v63;
    v43 = v23;
    v85[376] = v23;
    *&v85[377] = *v185;
    *&v85[380] = *&v185[3];
    *&v85[384] = v56;
    *&v85[392] = v82;
    *&v85[400] = v55;
    *&v85[408] = v62;
    *&v85[416] = v54;
    LODWORD(v84) = v184;
    v85[424] = v184;
    *&v85[425] = *v183;
    *&v85[428] = *&v183[3];
    *&v85[432] = v53;
    *&v85[440] = v81;
    *&v85[448] = v52;
    *&v85[458] = v180;
    v42 = v182;
    v85[456] = v182;
    v85[457] = v51;
    *&v85[462] = v181;
    *&v85[464] = v61;
    *&v85[472] = v75;
    v39 = v59;
    *&v85[480] = v60;
    *&v85[488] = v50;
    *&v85[497] = *v178;
    LOBYTE(v22) = v179;
    v85[496] = v179;
    *&v85[500] = *&v178[3];
    *&v85[504] = v49;
    *&v85[512] = v59;
    *&v85[520] = v48;
    v40 = v58;
    *&v85[528] = v58;
    *&v85[536] = v47;
    *&v85[544] = v57;
    *&v85[552] = v46;
    *&v85[560] = v35;
    *&v85[568] = v45;
    HIDWORD(v41) = v177;
    v85[576] = v177;
    sub_10005D0C0(v85, &v86);
    sub_100004984(v203);
    *&v86 = v74;
    *(&v86 + 1) = v80;
    *&v87 = v77;
    *(&v87 + 1) = v79;
    *&v88 = v78;
    *(&v88 + 1) = v70;
    *&v89 = v76;
    *(&v89 + 1) = v69;
    *&v90 = v73;
    *(&v90 + 1) = v68;
    *&v91 = v67;
    *(&v91 + 1) = v72;
    *&v92 = v66;
    *(&v92 + 1) = v65;
    *&v93 = v71;
    *(&v93 + 1) = v64;
    v110 = v38;
    v94 = v186;
    v95 = v187;
    v98 = v190;
    v99 = v191;
    v96 = v188;
    v97 = v189;
    v102 = v194;
    v103 = v195;
    v100 = v192;
    v101 = v193;
    v106 = v198;
    v107 = v199;
    v104 = v196;
    v105 = v197;
    v108 = v200;
    v109 = v44;
    v111 = v43;
    *v112 = *v185;
    *&v112[3] = *&v185[3];
    v113 = v56;
    v114 = v82;
    v115 = v55;
    v116 = v62;
    v117 = v54;
    v118 = v84;
    *v119 = *v183;
    *&v119[3] = *&v183[3];
    v120 = v53;
    v121 = v81;
    v122 = v52;
    v123 = v42;
    v124 = v51;
    v125 = v180;
    v126 = v181;
    v127 = v61;
    v128 = v75;
    v129 = v60;
    v130 = v50;
    v131 = v22;
    *v132 = *v178;
    *&v132[3] = *&v178[3];
    v133 = v49;
    v134 = v39;
    v135 = v48;
    v136 = v40;
    v137 = v47;
    v138 = v57;
    v139 = v46;
    v140 = v35;
    v141 = v45;
    v142 = BYTE4(v41);
    sub_10005D11C(&v86);
    memcpy(v83, v85, 0x241uLL);
  }
}

uint64_t sub_10017BD38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547472656C61 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F747475426B6FLL && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F747475426B6FLL && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F747475426B6FLL && a2 == 0xEE006E6F69746341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E36E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75426C65636E6163 && a2 == 0xEF4C52556E6F7474 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E3700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64497472656C61 && a2 == 0xE700000000000000)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_10017C0C4(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = sub_10004B564(&qword_1005AD9B8, &qword_1004CAEB8);
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v35 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10017E5B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v67[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    LOBYTE(v67[0]) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v13;
    v48 = v12;
    LOBYTE(v67[0]) = 2;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v14;
    LOBYTE(v67[0]) = 3;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v15;
    LOBYTE(v67[0]) = 4;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v16;
    LOBYTE(v67[0]) = 5;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v17;
    LOBYTE(v67[0]) = 6;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v18;
    LOBYTE(v67[0]) = 7;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v20;
    v39 = v19;
    LOBYTE(v67[0]) = 8;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v21;
    v54 = 0;
    LOBYTE(v67[0]) = 9;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = 0;
    v71 = v22 & 1;
    v72 = 10;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v24;
    v54 = 0;
    v25 = v23;
    (*(v8 + 8))(v7, v55);
    *&v56 = v9;
    *(&v56 + 1) = v11;
    v35 = v11;
    v26 = v53;
    *&v57 = v48;
    *(&v57 + 1) = v53;
    v27 = v51;
    *&v58 = v47;
    *(&v58 + 1) = v52;
    *&v59 = v46;
    *(&v59 + 1) = v51;
    v28 = v49;
    *&v60 = v45;
    *(&v60 + 1) = v50;
    *&v61 = v44;
    *(&v61 + 1) = v49;
    *&v62 = v41;
    *(&v62 + 1) = v43;
    *&v63 = v39;
    *(&v63 + 1) = v42;
    *&v64 = v38;
    *(&v64 + 1) = v40;
    v29 = v36;
    *&v65 = v37;
    LODWORD(v55) = v71;
    BYTE8(v65) = v71;
    *&v66 = v25;
    *(&v66 + 1) = v36;
    sub_10017E60C(&v56, v67);
    sub_100004984(a1);
    v67[0] = v9;
    v67[1] = v35;
    v67[2] = v48;
    v67[3] = v26;
    v67[4] = v47;
    v67[5] = v52;
    v67[6] = v46;
    v67[7] = v27;
    v67[8] = v45;
    v67[9] = v50;
    v67[10] = v44;
    v67[11] = v28;
    v67[12] = v41;
    v67[13] = v43;
    v67[14] = v39;
    v67[15] = v42;
    v67[16] = v38;
    v67[17] = v40;
    v67[18] = v37;
    v68 = v55;
    v69 = v25;
    v70 = v29;
    sub_10017E644(v67);
    v30 = v65;
    a2[8] = v64;
    a2[9] = v30;
    a2[10] = v66;
    v31 = v61;
    a2[4] = v60;
    a2[5] = v31;
    v32 = v63;
    a2[6] = v62;
    a2[7] = v32;
    v33 = v57;
    *a2 = v56;
    a2[1] = v33;
    v34 = v59;
    a2[2] = v58;
    a2[3] = v34;
  }
}

unint64_t sub_10017C780(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10017C7D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD818, &qword_1004CAE18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = a1[3];
  v165 = a1;
  sub_100011AEC(a1, v9);
  sub_10017D9E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v165);
  }

  v75 = v6;
  v140 = 0;
  sub_1000325D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = v5;
  v161 = v143;
  v162 = v144;
  v163 = v145;
  v164 = v146;
  v159 = v141;
  v160 = v142;
  sub_10004B564(&qword_1005AD830, &qword_1004CAE20);
  v138 = 1;
  sub_10017DA34();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v52 = a2;
  v74 = v139;
  LOBYTE(v77[0]) = 2;
  sub_10017DB0C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v53 = v78;
  v72 = *(&v79 + 1);
  v51 = v79;
  v73 = *(&v78 + 1);
  v70 = *(&v80 + 1);
  v71 = v80;
  v68 = *(&v81 + 1);
  v69 = v81;
  v66 = *(&v82 + 1);
  v67 = v82;
  sub_10004B564(&qword_1005AD7B0, &qword_1004CA288);
  LOBYTE(v77[0]) = 3;
  sub_10017DB60();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v65 = v78;
  LOBYTE(v77[0]) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = v78;
  sub_10004B564(&qword_1005AD870, &qword_1004CAE30);
  LOBYTE(v77[0]) = 5;
  sub_10017DCBC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v63 = v78;
  LOBYTE(v77[0]) = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v62 = v78;
  sub_10004B564(&qword_1005AD888, &qword_1004CAE38);
  LOBYTE(v77[0]) = 7;
  sub_10017DD94();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v78;
  LOBYTE(v77[0]) = 8;
  sub_10017DE6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v60 = *(&v78 + 1);
  v58 = v78;
  v59 = v79;
  v56 = v80;
  v57 = *(&v79 + 1);
  sub_10004B564(&qword_1005AD8A8, &qword_1004CAE40);
  LOBYTE(v77[0]) = 9;
  sub_10017DEC0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55 = v78;
  sub_10004B564(&qword_1005AD8C0, &unk_1004CAE48);
  LOBYTE(v77[0]) = 10;
  sub_10017DF98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v54 = v78;
  LOBYTE(v77[0]) = 12;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v158[103] = v84;
  *&v158[119] = v85;
  *&v158[135] = v86;
  *&v158[151] = v87;
  *&v158[39] = v80;
  *&v158[55] = v81;
  *&v158[71] = v82;
  *&v158[87] = v83;
  *&v158[7] = v78;
  *&v158[23] = v79;
  LOBYTE(v77[0]) = 13;
  sub_10017E074();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v135 = v84;
  v136 = v85;
  v137 = v86;
  v131 = v80;
  v132 = v81;
  v134 = v83;
  v133 = v82;
  v130 = v79;
  v129 = v78;
  v50 = sub_100175B08(14);
  v49 = sub_100175B08(15);
  v48 = sub_100175B08(16);
  v47 = sub_100175B08(17);
  LOBYTE(v78) = 11;
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v11)
  {
    goto LABEL_4;
  }

  v18 = HIBYTE(v11) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_4;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v22 = sub_1004BA5C8();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
LABEL_69:
      v41 = sub_100181DA8(v22);
      if (v41 == 21)
      {
        v12 = 0;
      }

      else
      {
        v12 = v41;
      }

      goto LABEL_5;
    }

LABEL_4:
    v12 = 11;
LABEL_5:
    v46 = v12;
    sub_100175D88(18);
    (*(v75 + 8))(v8, v76);
    v77[2] = v161;
    v77[3] = v162;
    v77[4] = v163;
    v77[5] = v164;
    v77[0] = v159;
    v77[1] = v160;
    *&v77[6] = v74;
    *(&v77[6] + 1) = v53;
    v13 = v51;
    *&v77[7] = v73;
    *(&v77[7] + 1) = v51;
    *&v77[8] = v72;
    *(&v77[8] + 1) = v71;
    *&v77[9] = v70;
    *(&v77[9] + 1) = v69;
    *&v77[10] = v68;
    *(&v77[10] + 1) = v67;
    *&v77[11] = v66;
    *(&v77[11] + 1) = v65;
    *&v77[12] = v64;
    *(&v77[12] + 1) = v63;
    *&v77[13] = v62;
    *(&v77[13] + 1) = v61;
    *&v77[14] = v58;
    *(&v77[14] + 1) = v60;
    *&v77[15] = v59;
    *(&v77[15] + 1) = v57;
    *&v77[16] = v56;
    *(&v77[16] + 1) = v55;
    *&v77[17] = v54;
    BYTE8(v77[17]) = v12;
    *(&v77[25] + 9) = *&v158[128];
    *(&v77[26] + 9) = *&v158[144];
    *(&v77[21] + 9) = *&v158[64];
    *(&v77[22] + 9) = *&v158[80];
    *(&v77[23] + 9) = *&v158[96];
    *(&v77[24] + 9) = *&v158[112];
    *(&v77[17] + 9) = *v158;
    *(&v77[18] + 9) = *&v158[16];
    *(&v77[19] + 9) = *&v158[32];
    *(&v77[20] + 9) = *&v158[48];
    *(&v77[27] + 1) = *&v158[159];
    v77[34] = v135;
    v77[35] = v136;
    v77[36] = v137;
    v77[30] = v131;
    v77[31] = v132;
    v77[32] = v133;
    v77[33] = v134;
    v77[28] = v129;
    v77[29] = v130;
    v15 = v49;
    v14 = v50;
    *&v77[37] = v50;
    *(&v77[37] + 1) = v49;
    v17 = v47;
    v16 = v48;
    *&v77[38] = v48;
    *(&v77[38] + 1) = v47;
    v77[47] = v155;
    v77[48] = v156;
    v77[49] = v157;
    v77[43] = v151;
    v77[44] = v152;
    v77[45] = v153;
    v77[46] = v154;
    v77[39] = v147;
    v77[40] = v148;
    v77[41] = v149;
    v77[42] = v150;
    sub_10006DAC8(v77, &v78);
    sub_100004984(v165);
    v80 = v161;
    v81 = v162;
    v82 = v163;
    v83 = v164;
    v78 = v159;
    v79 = v160;
    *&v84 = v74;
    *(&v84 + 1) = v53;
    *&v85 = v73;
    *(&v85 + 1) = v13;
    *&v86 = v72;
    *(&v86 + 1) = v71;
    *&v87 = v70;
    *(&v87 + 1) = v69;
    v88 = v68;
    v89 = v67;
    v90 = v66;
    v91 = v65;
    v92 = v64;
    v93 = v63;
    v94 = v62;
    v95 = v61;
    v96 = v58;
    v97 = v60;
    v98 = v59;
    v99 = v57;
    v100 = v56;
    v101 = v55;
    v102 = v54;
    v103 = v46;
    v112 = *&v158[128];
    *v113 = *&v158[144];
    v108 = *&v158[64];
    v109 = *&v158[80];
    v110 = *&v158[96];
    v111 = *&v158[112];
    v104 = *v158;
    v105 = *&v158[16];
    v106 = *&v158[32];
    v107 = *&v158[48];
    *&v113[15] = *&v158[159];
    *&v113[119] = v135;
    *&v113[135] = v136;
    *&v113[151] = v137;
    *&v113[55] = v131;
    *&v113[71] = v132;
    *&v113[103] = v134;
    *&v113[87] = v133;
    *&v113[39] = v130;
    *&v113[23] = v129;
    v114 = v14;
    v115 = v15;
    v116 = v16;
    v117 = v17;
    v126 = v155;
    v127 = v156;
    v128 = v157;
    v122 = v151;
    v123 = v152;
    v125 = v154;
    v124 = v153;
    v118 = v147;
    v119 = v148;
    v121 = v150;
    v120 = v149;
    sub_10005D06C(&v78);
    return memcpy(v52, v77, 0x320uLL);
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v19 = v44;
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 >= 1)
      {
        if (--v19)
        {
          v22 = 0;
          if (result)
          {
            v29 = (result + 1);
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_67;
              }

              v31 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_67;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_67;
              }

              ++v29;
              if (!--v19)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_67;
      }

      goto LABEL_78;
    }

    if (v21 != 45)
    {
      if (v19)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_67;
            }

            v36 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_67;
            }

            v22 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_67;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_67:
      v22 = 0;
      LOBYTE(v19) = 1;
LABEL_68:
      LOBYTE(v77[0]) = v19;
      v40 = v19;

      if ((v40 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_4;
    }

    if (v19 >= 1)
    {
      if (--v19)
      {
        v22 = 0;
        if (result)
        {
          v23 = (result + 1);
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_67;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_67;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_67;
            }

            ++v23;
            if (!--v19)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_66:
        LOBYTE(v19) = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *&v78 = result;
  *(&v78 + 1) = v11 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v18)
      {
        v22 = 0;
        v37 = &v78;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v18)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_67;
    }

    if (v18)
    {
      v19 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        v26 = &v78 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_77;
  }

  if (v18)
  {
    v19 = v18 - 1;
    if (v18 != 1)
    {
      v22 = 0;
      v32 = &v78 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v19)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_79:
  __break(1u);
  return result;
}

unint64_t sub_10017D9E0()
{
  result = qword_1005AD820;
  if (!qword_1005AD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD820);
  }

  return result;
}

unint64_t sub_10017DA34()
{
  result = qword_1005AD838;
  if (!qword_1005AD838)
  {
    sub_10004B610(&qword_1005AD830, &qword_1004CAE20);
    sub_10017DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD838);
  }

  return result;
}

unint64_t sub_10017DAB8()
{
  result = qword_1005AD840;
  if (!qword_1005AD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD840);
  }

  return result;
}

unint64_t sub_10017DB0C()
{
  result = qword_1005AD848;
  if (!qword_1005AD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD848);
  }

  return result;
}

unint64_t sub_10017DB60()
{
  result = qword_1005AD850;
  if (!qword_1005AD850)
  {
    sub_10004B610(&qword_1005AD7B0, &qword_1004CA288);
    sub_10017DBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD850);
  }

  return result;
}

unint64_t sub_10017DBE4()
{
  result = qword_1005AD858;
  if (!qword_1005AD858)
  {
    sub_10004B610(&qword_1005AD860, &qword_1004CAE28);
    sub_10017DC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD858);
  }

  return result;
}

unint64_t sub_10017DC68()
{
  result = qword_1005AD868;
  if (!qword_1005AD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD868);
  }

  return result;
}

unint64_t sub_10017DCBC()
{
  result = qword_1005AD878;
  if (!qword_1005AD878)
  {
    sub_10004B610(&qword_1005AD870, &qword_1004CAE30);
    sub_10017DD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD878);
  }

  return result;
}

unint64_t sub_10017DD40()
{
  result = qword_1005AD880;
  if (!qword_1005AD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD880);
  }

  return result;
}

unint64_t sub_10017DD94()
{
  result = qword_1005AD890;
  if (!qword_1005AD890)
  {
    sub_10004B610(&qword_1005AD888, &qword_1004CAE38);
    sub_10017DE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD890);
  }

  return result;
}

unint64_t sub_10017DE18()
{
  result = qword_1005AD898;
  if (!qword_1005AD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD898);
  }

  return result;
}

unint64_t sub_10017DE6C()
{
  result = qword_1005AD8A0;
  if (!qword_1005AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8A0);
  }

  return result;
}

unint64_t sub_10017DEC0()
{
  result = qword_1005AD8B0;
  if (!qword_1005AD8B0)
  {
    sub_10004B610(&qword_1005AD8A8, &qword_1004CAE40);
    sub_10017DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8B0);
  }

  return result;
}

unint64_t sub_10017DF44()
{
  result = qword_1005AD8B8;
  if (!qword_1005AD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8B8);
  }

  return result;
}

unint64_t sub_10017DF98()
{
  result = qword_1005AD8C8;
  if (!qword_1005AD8C8)
  {
    sub_10004B610(&qword_1005AD8C0, &unk_1004CAE48);
    sub_10017E01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8C8);
  }

  return result;
}

unint64_t sub_10017E01C()
{
  result = qword_1005AD8D0;
  if (!qword_1005AD8D0)
  {
    type metadata accessor for ServerLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8D0);
  }

  return result;
}

unint64_t sub_10017E074()
{
  result = qword_1005AD8D8;
  if (!qword_1005AD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8D8);
  }

  return result;
}

double sub_10017E0C8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

unint64_t sub_10017E0FC()
{
  result = qword_1005AD8E0;
  if (!qword_1005AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8E0);
  }

  return result;
}

double sub_10017E150(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1004C6EC0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

unint64_t sub_10017E178()
{
  result = qword_1005AD8E8;
  if (!qword_1005AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8E8);
  }

  return result;
}

unint64_t sub_10017E1CC()
{
  result = qword_1005AD8F8;
  if (!qword_1005AD8F8)
  {
    sub_10004B610(&qword_1005AD8F0, &qword_1004CAE58);
    sub_10017E250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8F8);
  }

  return result;
}

unint64_t sub_10017E250()
{
  result = qword_1005AD900;
  if (!qword_1005AD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD900);
  }

  return result;
}

unint64_t sub_10017E2A4()
{
  result = qword_1005AD938;
  if (!qword_1005AD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD938);
  }

  return result;
}

unint64_t sub_10017E2F8()
{
  result = qword_1005AD948;
  if (!qword_1005AD948)
  {
    sub_10004B610(&qword_1005AD940, &qword_1004CAE80);
    sub_10017E37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD948);
  }

  return result;
}

unint64_t sub_10017E37C()
{
  result = qword_1005AD950;
  if (!qword_1005AD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD950);
  }

  return result;
}

unint64_t sub_10017E3D0()
{
  result = qword_1005AD970;
  if (!qword_1005AD970)
  {
    sub_10004B610(&qword_1005AD940, &qword_1004CAE80);
    sub_10017E454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD970);
  }

  return result;
}

unint64_t sub_10017E454()
{
  result = qword_1005AD978;
  if (!qword_1005AD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD978);
  }

  return result;
}

unint64_t sub_10017E4A8()
{
  result = qword_1005AD990;
  if (!qword_1005AD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD990);
  }

  return result;
}

unint64_t sub_10017E564()
{
  result = qword_1005AD9A0;
  if (!qword_1005AD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9A0);
  }

  return result;
}

unint64_t sub_10017E5B8()
{
  result = qword_1005AD9C0;
  if (!qword_1005AD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9C0);
  }

  return result;
}

double sub_10017E674(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1004C6EC0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return result;
}

unint64_t sub_10017E6A4()
{
  result = qword_1005AD9D0;
  if (!qword_1005AD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9D0);
  }

  return result;
}

unint64_t sub_10017E6F8()
{
  result = qword_1005AD9D8;
  if (!qword_1005AD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9D8);
  }

  return result;
}

unint64_t sub_10017E74C()
{
  result = qword_1005AD9E8;
  if (!qword_1005AD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9E8);
  }

  return result;
}

unint64_t sub_10017E7A0()
{
  result = qword_1005AD9F8;
  if (!qword_1005AD9F8)
  {
    sub_10004B610(&qword_1005AD9F0, &unk_1004CAED8);
    sub_10017E824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9F8);
  }

  return result;
}

unint64_t sub_10017E824()
{
  result = qword_1005AC970;
  if (!qword_1005AC970)
  {
    sub_10004B610(&qword_1005AC968, &qword_1004C7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC970);
  }

  return result;
}

unint64_t sub_10017E8A0()
{
  result = qword_1005ADA00;
  if (!qword_1005ADA00)
  {
    sub_10004B610(&qword_1005A96A8, &qword_1004C3320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA00);
  }

  return result;
}

unint64_t sub_10017E91C()
{
  result = qword_1005ADA20;
  if (!qword_1005ADA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerAlert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ServerAlert.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ServerFence.FullAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerFence.FullAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for ServerBaseResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerBaseResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017EECC()
{
  result = qword_1005ADA30;
  if (!qword_1005ADA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA30);
  }

  return result;
}

unint64_t sub_10017EF24()
{
  result = qword_1005ADA38;
  if (!qword_1005ADA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA38);
  }

  return result;
}

unint64_t sub_10017EF7C()
{
  result = qword_1005ADA40;
  if (!qword_1005ADA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA40);
  }

  return result;
}

unint64_t sub_10017EFD4()
{
  result = qword_1005ADA48;
  if (!qword_1005ADA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA48);
  }

  return result;
}

unint64_t sub_10017F02C()
{
  result = qword_1005ADA50;
  if (!qword_1005ADA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA50);
  }

  return result;
}

unint64_t sub_10017F084()
{
  result = qword_1005ADA58;
  if (!qword_1005ADA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA58);
  }

  return result;
}

unint64_t sub_10017F0DC()
{
  result = qword_1005ADA60;
  if (!qword_1005ADA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA60);
  }

  return result;
}

unint64_t sub_10017F134()
{
  result = qword_1005ADA68;
  if (!qword_1005ADA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA68);
  }

  return result;
}

unint64_t sub_10017F18C()
{
  result = qword_1005ADA70;
  if (!qword_1005ADA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA70);
  }

  return result;
}

unint64_t sub_10017F1E4()
{
  result = qword_1005ADA78;
  if (!qword_1005ADA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA78);
  }

  return result;
}

unint64_t sub_10017F23C()
{
  result = qword_1005ADA80;
  if (!qword_1005ADA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA80);
  }

  return result;
}

unint64_t sub_10017F294()
{
  result = qword_1005ADA88;
  if (!qword_1005ADA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA88);
  }

  return result;
}

unint64_t sub_10017F2EC()
{
  result = qword_1005ADA90;
  if (!qword_1005ADA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA90);
  }

  return result;
}

unint64_t sub_10017F344()
{
  result = qword_1005ADA98;
  if (!qword_1005ADA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA98);
  }

  return result;
}

unint64_t sub_10017F39C()
{
  result = qword_1005ADAA0;
  if (!qword_1005ADAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAA0);
  }

  return result;
}

unint64_t sub_10017F3F4()
{
  result = qword_1005ADAA8;
  if (!qword_1005ADAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAA8);
  }

  return result;
}

unint64_t sub_10017F44C()
{
  result = qword_1005ADAB0;
  if (!qword_1005ADAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAB0);
  }

  return result;
}

unint64_t sub_10017F4A4()
{
  result = qword_1005ADAB8;
  if (!qword_1005ADAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAB8);
  }

  return result;
}

unint64_t sub_10017F4FC()
{
  result = qword_1005ADAC0;
  if (!qword_1005ADAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAC0);
  }

  return result;
}

unint64_t sub_10017F554()
{
  result = qword_1005ADAC8;
  if (!qword_1005ADAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAC8);
  }

  return result;
}

unint64_t sub_10017F5AC()
{
  result = qword_1005ADAD0;
  if (!qword_1005ADAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAD0);
  }

  return result;
}

unint64_t sub_10017F604()
{
  result = qword_1005ADAD8;
  if (!qword_1005ADAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAD8);
  }

  return result;
}

unint64_t sub_10017F65C()
{
  result = qword_1005ADAE0;
  if (!qword_1005ADAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAE0);
  }

  return result;
}

unint64_t sub_10017F6B4()
{
  result = qword_1005ADAE8;
  if (!qword_1005ADAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAE8);
  }

  return result;
}

unint64_t sub_10017F70C()
{
  result = qword_1005ADAF0;
  if (!qword_1005ADAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAF0);
  }

  return result;
}

unint64_t sub_10017F764()
{
  result = qword_1005ADAF8;
  if (!qword_1005ADAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAF8);
  }

  return result;
}

unint64_t sub_10017F7BC()
{
  result = qword_1005ADB00;
  if (!qword_1005ADB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB00);
  }

  return result;
}

unint64_t sub_10017F814()
{
  result = qword_1005ADB08;
  if (!qword_1005ADB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB08);
  }

  return result;
}

unint64_t sub_10017F86C()
{
  result = qword_1005ADB10;
  if (!qword_1005ADB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB10);
  }

  return result;
}

uint64_t sub_10017F8CC()
{
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(390);
  v27 = v28;
  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004E3760;
  String.append(_:)(v1);
  Double.write<A>(to:)();
  v2._countAndFlagsBits = 0x3A73657220;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v28 = *(v0 + 8);
  v26 = *(v0 + 8);
  sub_10017FD08(&v28, &v25);
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001004E3780;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0x49746E65696C6320;
  v5._object = 0xEA00000000003A64;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + 32));
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001004E37A0;
  String.append(_:)(v6);
  if (*(v0 + 48))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v10._object = 0x80000001004E37D0;
  String.append(_:)(v10);
  Double.write<A>(to:)();
  v11._countAndFlagsBits = 0xD000000000000022;
  v11._object = 0x80000001004E37F0;
  String.append(_:)(v11);
  Double.write<A>(to:)();
  v12._countAndFlagsBits = 0xD00000000000001DLL;
  v12._object = 0x80000001004E3820;
  String.append(_:)(v12);
  Double.write<A>(to:)();
  v13._countAndFlagsBits = 0x3A644973727020;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  *&v26 = *(v0 + 88);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x80000001004E3840;
  String.append(_:)(v15);
  Double.write<A>(to:)();
  v16._object = 0x80000001004E3860;
  v16._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v16);
  Double.write<A>(to:)();
  v17._countAndFlagsBits = 0xD000000000000017;
  v17._object = 0x80000001004E3880;
  String.append(_:)(v17);
  Double.write<A>(to:)();
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000001004E38A0;
  String.append(_:)(v18);
  Double.write<A>(to:)();
  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = 0x80000001004E38C0;
  String.append(_:)(v19);
  String.append(_:)(*(v0 + 128));
  v20._countAndFlagsBits = 0xD000000000000011;
  v20._object = 0x80000001004E38E0;
  String.append(_:)(v20);
  *&v26 = *(v0 + 144);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._object = 0x80000001004E3900;
  v22._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v22);
  v23._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v23);

  return v27;
}

uint64_t sub_10017FD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10017FD78(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10017FDA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10017FE1C(char a1)
{
  result = 7562610;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6449746E65696C63;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0x6449737270;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x6F69746172657469;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_100180020(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADB18, &qword_1004CBB00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1001805B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 152);
    v10[7] = 16;
    sub_10004B564(&qword_1005ADB28, &qword_1004CBB08);
    sub_10018147C(&qword_1005ADB30, &protocol witness table for Int, &protocol witness table for Int64, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100180418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001808F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100180440(uint64_t a1)
{
  v2 = sub_1001805B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018047C(uint64_t a1)
{
  v2 = sub_1001805B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001804B8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100180E24(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

unint64_t sub_100180530(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_100180710(v13, v14) & 1;
}

unint64_t sub_1001805B4()
{
  result = qword_1005ADB20;
  if (!qword_1005ADB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB20);
  }

  return result;
}

unint64_t sub_100180608(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1001FD770(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100180710(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || v2 != v3)
  {
    v5 = a1;
    v6 = a2;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v9 = a1;
    v10 = a2;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v10;
    v12 = v11;
    a1 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 48) ^ *(a2 + 48)) & 1) != 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  if (*(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136))
  {
    v13 = a1;
    v14 = a2;
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v14;
    v16 = v15;
    a1 = v13;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 144) != *(a2 + 144))
  {
    return 0;
  }

  v17 = *(a1 + 152);
  v18 = *(a2 + 152);

  return sub_100180608(v17, v18);
}

uint64_t sub_1001808F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001004E3920 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562610 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E3940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001004E3630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E3960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001004E3980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001004E39A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004E39D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6449737270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E39F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E3A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E3A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F69746172657469 && a2 == 0xEF7265626D754E6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3A90 == a2)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

void sub_100180E24(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = sub_10004B564(&qword_1005ADB38, &qword_1004CBB10);
  v5 = *(v83 - 8);
  __chkstk_darwin(v83);
  v7 = &v44 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_1001805B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v63[0]) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    LOBYTE(v63[0]) = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v52 = v11;
    LOBYTE(v63[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    LOBYTE(v63[0]) = 3;
    *&v51 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v51 + 1) = v16;
    LOBYTE(v63[0]) = 4;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v63[0]) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    LOBYTE(v63[0]) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v20;
    LOBYTE(v63[0]) = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v17;
    v23 = v22;
    v50 = a2;
    LOBYTE(v63[0]) = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v24;
    LOBYTE(v63[0]) = 9;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v63[0]) = 10;
    KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v26;
    LOBYTE(v63[0]) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    LOBYTE(v63[0]) = 12;
    KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v30;
    LOBYTE(v63[0]) = 13;
    KeyedDecodingContainer.decode(_:forKey:)();
    v46 = v31;
    LOBYTE(v63[0]) = 14;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v33;
    LOBYTE(v63[0]) = 15;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10004B564(&qword_1005ADB28, &qword_1004CBB08);
    v80 = 16;
    sub_10018147C(&qword_1005ADB40, &protocol witness table for Int, &protocol witness table for Int64, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v49 & 1;
    (*(v8 + 8))(v7, v83);
    v83 = v81;
    *&v53 = v10;
    v36 = v52;
    *(&v53 + 1) = v52;
    *&v54 = v13;
    *(&v54 + 1) = v15;
    v37 = v51;
    v55 = v51;
    LOBYTE(v56) = v35;
    *(&v56 + 1) = v19;
    *&v57 = v21;
    *(&v57 + 1) = v23;
    *&v58 = v25;
    *(&v58 + 1) = v48;
    *&v59 = v27;
    *(&v59 + 1) = v29;
    *&v60 = v47;
    *(&v60 + 1) = v46;
    *&v61 = v32;
    *(&v61 + 1) = v34;
    *&v62 = v45;
    *(&v62 + 1) = v81;
    sub_1001814EC(&v53, v63);
    sub_100004984(a1);
    v63[0] = v10;
    v63[1] = v36;
    v63[2] = v13;
    v63[3] = v15;
    v64 = __PAIR128__(*(&v51 + 1), v37);
    v65 = v35;
    *v66 = v82[0];
    *&v66[3] = *(v82 + 3);
    v67 = v19;
    v68 = v21;
    v69 = v23;
    v70 = v25;
    v71 = v48;
    v72 = v27;
    v73 = v29;
    v74 = v47;
    v75 = v46;
    v76 = v32;
    v77 = v34;
    v78 = v45;
    v79 = v83;
    sub_100181524(v63);
    v38 = v60;
    v39 = v50;
    v50[6] = v59;
    v39[7] = v38;
    v40 = v62;
    v39[8] = v61;
    v39[9] = v40;
    v41 = v56;
    v39[2] = v55;
    v39[3] = v41;
    v42 = v58;
    v39[4] = v57;
    v39[5] = v42;
    v43 = v54;
    *v39 = v53;
    v39[1] = v43;
  }
}

uint64_t sub_10018147C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADB28, &qword_1004CBB08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100181568()
{
  result = qword_1005ADB48;
  if (!qword_1005ADB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB48);
  }

  return result;
}

unint64_t sub_1001815C0()
{
  result = qword_1005ADB50;
  if (!qword_1005ADB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB50);
  }

  return result;
}

unint64_t sub_100181618()
{
  result = qword_1005ADB58;
  if (!qword_1005ADB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB58);
  }

  return result;
}

uint64_t sub_10018166C(char a1)
{
  switch(a1)
  {
    case 2:
      strcpy(v4, ".pending(");
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -385875968;
      break;
    case 3:
      _StringGuts.grow(_:)(16);

      strcpy(v4, ".notModified(");
      HIWORD(v4[1]) = -4864;
      break;
    case 4:
      strcpy(v4, ".badRequest(");
      BYTE5(v4[1]) = 0;
      HIWORD(v4[1]) = -5120;
      break;
    case 5:
      _StringGuts.grow(_:)(17);

      strcpy(v4, ".unauthorized(");
      HIBYTE(v4[1]) = -18;
      break;
    case 6:
      strcpy(v4, ".forbidden(");
      HIDWORD(v4[1]) = -352321536;
      break;
    case 7:
      _StringGuts.grow(_:)(19);

      v4[0] = 0xD000000000000010;
      v4[1] = 0x80000001004E3BD0;
      break;
    case 8:
      _StringGuts.grow(_:)(23);

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000001004E3BB0;
      break;
    case 9:
      _StringGuts.grow(_:)(21);

      v4[0] = 0xD000000000000012;
      v4[1] = 0x80000001004E3B90;
      break;
    case 10:
      strcpy(v4, ".locked(");
      BYTE1(v4[1]) = 0;
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -402653184;
      break;
    case 11:
      _StringGuts.grow(_:)(16);

      strcpy(v4, ".serverError(");
      HIWORD(v4[1]) = -4864;
      break;
    case 12:
      _StringGuts.grow(_:)(20);

      v4[0] = 0xD000000000000011;
      v4[1] = 0x80000001004E3B70;
      break;
    case 13:
      _StringGuts.grow(_:)(21);

      v4[0] = 0xD000000000000012;
      v4[1] = 0x80000001004E3B50;
      break;
    case 14:
      _StringGuts.grow(_:)(23);

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000001004E3B30;
      break;
    case 15:
      _StringGuts.grow(_:)(24);

      v4[0] = 0xD000000000000015;
      v4[1] = 0x80000001004E3B10;
      break;
    case 16:
      strcpy(v4, ".noMeDevice(");
      BYTE5(v4[1]) = 0;
      HIWORD(v4[1]) = -5120;
      break;
    case 17:
      _StringGuts.grow(_:)(28);

      v4[0] = 0xD000000000000019;
      v4[1] = 0x80000001004E3AF0;
      break;
    case 18:
      _StringGuts.grow(_:)(23);

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000001004E3AD0;
      break;
    case 19:
      _StringGuts.grow(_:)(30);

      v4[0] = 0xD00000000000001BLL;
      v4[1] = 0x80000001004E3AB0;
      break;
    case 20:
      _StringGuts.grow(_:)(18);

      v4[0] = 0x614D65636E65662ELL;
      v4[1] = 0xEF2874696D694C78;
      break;
    default:
      strcpy(v4, ".success(");
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -385875968;
      break;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

Swift::Int sub_100181BD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1004CBD60[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100181C60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1004CBD60[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100181CAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100181DA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100181DA8(uint64_t result)
{
  if (result <= 303)
  {
    if (result)
    {
      if (result == 200)
      {
        return 1;
      }

      else if (result == 217)
      {
        return 2;
      }

      else
      {
        return 21;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 400:
        result = 4;
        break;
      case 401:
        result = 5;
        break;
      case 402:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 410:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
        return 21;
      case 403:
        result = 6;
        break;
      case 409:
        result = 7;
        break;
      case 411:
        result = 9;
        break;
      case 412:
        result = 8;
        break;
      case 423:
        result = 10;
        break;
      case 500:
        result = 11;
        break;
      case 541:
        result = 12;
        break;
      case 542:
        result = 13;
        break;
      case 543:
        result = 14;
        break;
      case 544:
        result = 15;
        break;
      case 545:
        result = 16;
        break;
      case 546:
        result = 17;
        break;
      case 547:
        result = 18;
        break;
      case 548:
        result = 19;
        break;
      case 549:
        result = 20;
        break;
      default:
        if (result != 304)
        {
          return 21;
        }

        result = 3;
        break;
    }
  }

  return result;
}