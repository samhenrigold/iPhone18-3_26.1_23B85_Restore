uint64_t sub_100D18BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v39 = v36 - v4;
  v5 = type metadata accessor for Date();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v36 - v11;
  v46 = sub_1000BC4D4(&qword_1016BA0C8, &qword_1013E41B0);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = v36 - v13;
  v15 = type metadata accessor for BeaconEstimatedLocation(0);
  v16 = __chkstk_darwin(v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18[*(v16 + 52)] = 0;
  v19 = a1[3];
  v48 = a1;
  sub_1000035D0(a1, v19);
  sub_100D199BC();
  v45 = v14;
  v20 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(v48);
  }

  v21 = v10;
  v22 = v44;
  v47 = v15;
  v37 = v7;
  v50 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v18 = v49;
  LOBYTE(v49) = 1;
  sub_100D198C8(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v23 = v12;
  v24 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v47;
  v26 = &v18[v47[5]];
  v36[0] = *(v43 + 32);
  (v36[0])(v26, v23, v24);
  LOBYTE(v49) = 2;
  v36[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v36[0])(&v18[v25[6]], v21, v24);
  LOBYTE(v49) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v25;
  *&v18[v25[7]] = v28;
  LOBYTE(v49) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v42;
  *&v18[v25[8]] = v30;
  LOBYTE(v49) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v18[v25[9]] = v31;
  LOBYTE(v49) = 6;
  sub_100D198C8(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v32 = v29;
  v33 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v41 + 32))(&v18[v27[10]], v33, v32);
  v50 = 7;
  sub_100479640();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18[v27[11]] = v49;
  LOBYTE(v49) = 8;
  v34 = v39;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v22 + 8))(v45, v46);
  sub_1001578A0(v34, &v18[v27[12]]);
  sub_100D19A10(v18, v38);
  sub_100007BAC(v48);
  return sub_100D19A74(v18);
}

uint64_t sub_100D193A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA0E8, &qword_1013E41B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D199BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v14 = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v12, v13);
  }

  else
  {
    sub_100016590(v12, v13);
    v10 = type metadata accessor for BeaconEstimatedLocation(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_100D198C8(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    type metadata accessor for Date();
    sub_100D198C8(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + *(v10 + 44));
    v14 = 7;
    sub_1004797F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 8;
    sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    sub_100D19AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100D1975C()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177BF38);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100D19844(uint64_t a1)
{
  *(a1 + 8) = sub_100D198C8(&qword_1016BA0A8, type metadata accessor for BeaconEstimatedLocation, &unk_1013E4148);
  result = sub_100D198C8(&qword_1016BA0B0, type metadata accessor for BeaconEstimatedLocation, &unk_1013E4120);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100D198C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D19910(uint64_t a1)
{
  result = sub_100D198C8(&unk_1016B1710, type metadata accessor for BeaconEstimatedLocation, &unk_1013E4170);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D19968()
{
  result = qword_1016BA0B8;
  if (!qword_1016BA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0B8);
  }

  return result;
}

unint64_t sub_100D199BC()
{
  result = qword_1016BA0D0;
  if (!qword_1016BA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0D0);
  }

  return result;
}

uint64_t sub_100D19A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D19A74(uint64_t a1)
{
  v2 = type metadata accessor for BeaconEstimatedLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100D19AD0()
{
  result = qword_1016BA0F0;
  if (!qword_1016BA0F0)
  {
    sub_1000BC580(&unk_101696900, &unk_10138B1E0);
    sub_100D198C8(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0F0);
  }

  return result;
}

uint64_t sub_100D19B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v14 = type metadata accessor for BeaconEstimatedLocation(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v14[7]) != *(a2 + v14[7]) || *(a1 + v14[8]) != *(a2 + v14[8]) || *(a1 + v14[9]) != *(a2 + v14[9]) || (static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v14[11]) != *(a2 + v14[11]))
  {
    return 0;
  }

  v15 = v14[12];
  v16 = *(v11 + 48);
  sub_1000D3410(a1 + v15, v13);
  v26 = v16;
  sub_1000D3410(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_1000D3410(v13, v10);
    if (v17(&v13[v26], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v26], v4);
      sub_100D198C8(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_10000B3A8(v13, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  if (v17(&v13[v26], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
LABEL_18:
  v21 = v14[13];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (v23)
    {

      v24 = sub_10038F9D4(v22, v23);

      if (v24)
      {
        return 1;
      }
    }
  }

  else if (!v23)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100D19FA4()
{
  result = qword_1016BA0F8;
  if (!qword_1016BA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0F8);
  }

  return result;
}

unint64_t sub_100D19FFC()
{
  result = qword_1016BA100;
  if (!qword_1016BA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA100);
  }

  return result;
}

unint64_t sub_100D1A054()
{
  result = qword_1016BA108;
  if (!qword_1016BA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA108);
  }

  return result;
}

unint64_t sub_100D1A0AC()
{
  result = qword_1016BA110;
  if (!qword_1016BA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA110);
  }

  return result;
}

unint64_t sub_100D1A100(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C3D0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for KeySyncMetadataDisplay(uint64_t a1)
{
  result = qword_1016BA178;
  if (!qword_1016BA178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D1A1C4(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100D1A25C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BA1C0, &qword_1013E4448);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100D1ABA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100D1ABFC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for KeySyncMetadataDisplay(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for Date();
    sub_100D1ABFC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100D1A4EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_1016BA1D0, &qword_1013E4450);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for KeySyncMetadataDisplay(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100D1ABA8();
  v32 = v9;
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100007BAC(a1);
  }

  v33 = v4;
  v14 = v28;
  v38 = 0;
  sub_100D1ABFC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v12, v31, v5);
  v37 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = &v12[v10[5]];
  *v16 = v15;
  v16[1] = v17;
  v36 = 2;
  *&v12[v10[6]] = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = a1;
  v19 = &v12[v10[7]];
  *v19 = v18;
  v19[1] = v20;
  v34 = 4;
  sub_100D1ABFC(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = v33;
  v22 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v32, v30);
  (*(v25 + 32))(&v12[v10[8]], v21, v22);
  sub_100D1AC44(v12, v26);
  sub_100007BAC(v31);
  return sub_100D1ACA8(v12);
}

unint64_t sub_100D1AA40()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7865646E69;
  v4 = 0x65636E6575716573;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_100D1AAD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100D1AE1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100D1AB00(uint64_t a1)
{
  v2 = sub_100D1ABA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D1AB3C(uint64_t a1)
{
  v2 = sub_100D1ABA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100D1ABA8()
{
  result = qword_1016BA1C8;
  if (!qword_1016BA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1C8);
  }

  return result;
}

uint64_t sub_100D1ABFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D1AC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadataDisplay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D1ACA8(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadataDisplay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100D1AD18()
{
  result = qword_1016BA1D8;
  if (!qword_1016BA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1D8);
  }

  return result;
}

unint64_t sub_100D1AD70()
{
  result = qword_1016BA1E0;
  if (!qword_1016BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1E0);
  }

  return result;
}

unint64_t sub_100D1ADC8()
{
  result = qword_1016BA1E8;
  if (!qword_1016BA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1E8);
  }

  return result;
}

uint64_t sub_100D1AE1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_100D1AFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_101123BB8(0, v1, 0);
  v24 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_101123BB8((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      v7 = v23;
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000BB408(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_100D1B288(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016BA350, &qword_1013E47B0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v8 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    v12 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v5 &= v5 - 1;
    v10 = v2[6] + 40 * v9;
    *(v10 + 32) = v22;
    *v10 = v20;
    *(v10 + 16) = v21;
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100D1B4BC(uint64_t a1)
{
  v47 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v38 = *(v47 - 8);
  v2 = __chkstk_darwin(v47);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v37 - v4;
  v6 = type metadata accessor for UUID();
  v48 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v37 - v9;
  v49 = a1;
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
    v10 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = v49 + 56;
  v12 = 1 << *(v49 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v49 + 56);
  v15 = (v12 + 63) >> 6;
  v41 = v48 + 16;
  v16 = v48 + 32;
  v39 = v48 + 48;
  v37 = (v48 + 8);
  v17 = v10 + 56;

  v18 = 0;
  v42 = v11;
  v45 = v5;
  v50 = v10;
  v40 = v15;
  while (v14)
  {
    v20 = v16;
    v21 = v5;
LABEL_16:
    v23 = v48;
    v24 = v43;
    (*(v48 + 16))(v43, *(v49 + 48) + *(v48 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v6);
    v25 = *(v23 + 32);
    v26 = v44;
    v25(v44, v24, v6);
    swift_dynamicCast();
    Hasher.init(_seed:)();
    v27 = v46;
    sub_1000D2A70(v21, v46, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v23 + 48))(v27, 1, v6) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v25(v26, v27, v6);
      Hasher._combine(_:)(1u);
      sub_100D26ADC(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*v37)(v26, v6);
    }

    v11 = v42;
    v16 = v20;
    v28 = Hasher._finalize()();
    v29 = v50;
    v30 = -1 << v50[32];
    v31 = v28 & ~v30;
    v32 = v31 >> 6;
    v5 = v45;
    v15 = v40;
    if (((-1 << v31) & ~*&v17[8 * (v31 >> 6)]) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *&v17[8 * v32];
        if (v36 != -1)
        {
          v19 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_30;
    }

    v19 = __clz(__rbit64((-1 << v31) & ~*&v17[8 * (v31 >> 6)])) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *&v17[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
    sub_10012C154(v5, *(v29 + 6) + *(v38 + 72) * v19);
    ++*(v29 + 2);
  }

  while (1)
  {
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v22 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v22);
    ++v18;
    if (v14)
    {
      v20 = v16;
      v21 = v5;
      v18 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_100D1B9C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF50);
  v1 = sub_1000076D4(v0, qword_10177BF50);
  if (qword_101694E18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100D1BA90()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = 0xD00000000000002BLL;
  v0[15] = 0x80000001013E45C0;
  v0[17] = _swiftEmptyDictionarySingleton;
  v0[18] = _swiftEmptyDictionarySingleton;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v9[1] = _swiftEmptyArrayStorage;
  sub_100D26ADC(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&qword_1016BA368, &unk_1013E48C0);
  swift_allocObject();
  sub_100D25FBC(0xD000000000000037, 0x800000010134CCC0, 6, 60.0, 30.0);
  v0[16] = v7;
  return v0;
}

uint64_t sub_100D1BDB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  v3 = v2[18];
  v4 = v2[19];
  v2[18] = sub_100D25264;
  v2[19] = v1;

  sub_1000BB27C(v3, v4);
  v5 = v2[20];
  v6 = v2[21];
  v2[20] = sub_100D25274;
  v2[21] = v1;

  sub_1000BB27C(v5, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100D2527C;
  *(v7 + 24) = v1;
  v8 = v2[22];
  v9 = v2[23];
  v2[22] = sub_10058AFF0;
  v2[23] = v7;

  sub_1000BB27C(v8, v9);
  v10 = v2[24];
  v11 = v2[25];
  v2[24] = sub_100D252AC;
  v2[25] = v1;

  sub_1000BB27C(v10, v11);
  v12 = v2[26];
  v13 = v2[27];
  v2[26] = sub_100D252E4;
  v2[27] = v1;

  sub_1000BB27C(v12, v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100D1BF24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v20 = a4;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v19[1] = type metadata accessor for Transaction();
  (*(v13 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a7;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;
  (*(v13 + 32))(&v16[v15], v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v17 = &v16[(v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = v20;
  *(v17 + 1) = v21;
  *(v17 + 2) = a6;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D1C0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a7;
  v25 = a6;
  v24 = a4;
  v23 = a3;
  v22 = a1;
  v15 = type metadata accessor for MessagingMessageContext(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v27 = type metadata accessor for Transaction();
  sub_100D2577C(a11, &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 104) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = v22;
  *(v19 + 16) = a12;
  *(v19 + 24) = v20;
  *(v19 + 32) = a2;
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  *(v19 + 56) = a5;
  *(v19 + 64) = v25;
  *(v19 + 72) = v26;
  *(v19 + 80) = a8;
  *(v19 + 88) = a9;
  *(v19 + 96) = a10;
  sub_100476E9C(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);

  sub_100017D5C(a8, a9);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D1C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D1C33C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = [objc_allocWithZone(IDSServiceDelegateProperties) init];
  [v5 setWantsCrossAccountMessaging:1];
  v6 = type metadata accessor for MessagingServiceDelegateTrampoline();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_101661488;
  swift_unknownObjectWeakAssign();
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, "init");
  v9 = v1[5];
  v1[5] = v8;

  v10 = v1[8];
  [v10 addDelegate:v8 withDelegateProperties:v5 queue:v1[6]];
  v11 = [v10 devices];
  if (v11)
  {
    v12 = v11;
    sub_100008BB8(0, &qword_10169EF70, IDSDevice_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v14);
    *&v20[-16] = v1;
    *&v20[-8] = v13;
    sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  type metadata accessor for StateCapture();
  swift_allocObject();

  v1[17] = StateCapture.init(_:)();

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  v18 = sub_1008CE048(0, 0, v4, &unk_1013E4748, v17);

  sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
  v1[16] = v18;
}

uint64_t sub_100D1C654(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for UUID();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100D1C724, v2, 0);
}

uint64_t sub_100D1C724(uint64_t a1)
{
  v27 = v1;
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[11];
  v6 = v1[10];
  UUID.init()();
  v7 = *(v4 + 16);
  v7(v2, v6, v3);
  sub_10001F280(v5, (v1 + 2));
  swift_beginAccess();
  sub_1001E11C4((v1 + 2), v2);
  swift_endAccess();
  if (qword_101694E10 != -1)
  {
    swift_once();
  }

  v8 = v1[15];
  v9 = v1[13];
  v10 = v1[10];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BF50);
  v7(v8, v10, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v1[14];
  v15 = v1[15];
  v17 = v1[13];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136446210;
    sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_1000136BC(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Added client: %{public}s", v18, 0xCu);
    sub_100007BAC(v19);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v24 = v1[1];

  return v24();
}

uint64_t sub_100D1C9D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 144) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = type metadata accessor for UUID();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100D1CAE8, v6, 0);
}

uint64_t sub_100D1CAE8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v15 = *(v0 + 48);
  v4 = *(v0 + 40);
  v14 = *(v0 + 24);
  v5 = *(v0 + 144);
  (*(*(v0 + 72) + 56))(v1, 1, 1, *(v0 + 64));
  v6 = sub_101129A8C(_swiftEmptyArrayStorage);
  *(v0 + 104) = v6;
  v7 = sub_101129A8C(_swiftEmptyArrayStorage);
  *(v0 + 112) = v7;
  UUID.init()();
  v16 = sub_100D26ADC(&qword_1016BA320, v8, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E4710);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v5;
  *(v9 + 40) = v14;
  *(v9 + 56) = v4;
  *(v9 + 64) = v15;
  *(v9 + 72) = v1;
  *(v9 + 80) = 0;
  *(v9 + 88) = 1;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_100D1CCBC;
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v16, 0xD000000000000083, 0x8000000101370090, sub_100D24CE8, v9, v12);
}

uint64_t sub_100D1CCBC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_100D1CEE0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100D1CE00;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D1CE00()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  (*(v3 + 32))(v0[2], v0[10], v4);
  (*(v3 + 8))(v1, v4);
  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D1CEE0()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D1CFC0(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v69 = a8;
  v84 = a6;
  v85 = a7;
  v65 = a5;
  v64 = a4;
  v54 = a3;
  v86 = a2;
  v80 = a1;
  v73 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a13;
  v68 = a12;
  v67 = a11;
  v66 = a10;
  v62 = a9;
  v77 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v20 = *(v19 - 8);
  v61 = v20[8];
  __chkstk_darwin(v19);
  v83 = &v54 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v60 = *(v22 - 8);
  v59 = *(v60 + 64);
  __chkstk_darwin(v22 - 8);
  v82 = &v54 - v23;
  v24 = sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  __chkstk_darwin(v24 - 8);
  v26 = &v54 - v25;
  v27 = type metadata accessor for UUID();
  v57 = *(v27 - 8);
  v28 = v57;
  v29 = *(v57 + 64);
  __chkstk_darwin(v27);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v28 + 16);
  v56 = v27;
  v31(v30, a3, v27);
  v81 = v20;
  v55 = v20[2];
  v55(v26, v80, v19);
  v32 = v20[7];
  v33 = v19;
  v58 = v19;
  v32(v26, 0, 1, v19);
  v34 = v86;
  swift_beginAccess();
  sub_1001E1300(v26, v30);
  swift_endAccess();
  v63 = *(v34 + 152);
  v31(v30, v54, v27);
  sub_1000D2A70(v62, v82, &qword_1016980D0, &unk_10138F3B0);
  v55(v83, v80, v33);
  v35 = v57;
  v36 = (*(v57 + 80) + 56) & ~*(v57 + 80);
  v37 = (v29 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v60 + 80) + v37 + 8) & ~*(v60 + 80);
  v39 = (v59 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v39 + 17) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v81 + 80) + v41 + 16) & ~*(v81 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v86;
  *(v43 + 24) = v64;
  v45 = v84;
  v44 = v85;
  *(v43 + 32) = v65;
  *(v43 + 40) = v45;
  *(v43 + 48) = v44;
  (*(v35 + 32))(v43 + v36, v30, v56);
  *(v43 + v37) = v69;
  sub_10012C154(v82, v43 + v38);
  v46 = v43 + v39;
  *v46 = v66;
  *(v46 + 8) = v67 & 1;
  *(v46 + 9) = v68;
  *(v43 + v80) = v70;
  *(v43 + v40) = v71;
  v47 = (v43 + v41);
  v48 = v73;
  *v47 = v72;
  v47[1] = v48;
  (v81[4])(v43 + v42, v83, v58);
  aBlock[4] = sub_100D24D40;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164F0F0;
  v49 = _Block_copy(aBlock);

  sub_100017D5C(v84, v85);

  v50 = v74;
  static DispatchQoS.unspecified.getter();
  v87 = _swiftEmptyArrayStorage;
  sub_100D26ADC(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v51 = v75;
  v52 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v79 + 8))(v51, v52);
  (*(v76 + 8))(v50, v78);
}

uint64_t sub_100D1D7BC(uint64_t a1, unsigned int a2, NSObject *a3, uint64_t a4, unint64_t a5, void (*a6)(NSObject *, uint64_t), uint64_t a7, void (*a8)(void, void, void), uint64_t a9, char a10, unsigned __int8 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v37 = a7;
  v38 = a8;
  v33 = a3;
  v34 = a4;
  v35 = a9;
  v31 = a11;
  v32 = a2;
  v30 = a12;
  v29 = a13;
  v27 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v26[1] = *(v27 - 8);
  __chkstk_darwin(v27);
  v26[2] = v26 - v17;
  v18 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v18 - 8);
  v39 = v26 - v19;
  v36 = type metadata accessor for UUID();
  v20 = *(v36 - 8);
  v21 = __chkstk_darwin(v36);
  __chkstk_darwin(v21);
  v23 = v26 - v22;
  v28 = a1;
  *(&v25 + 1) = a14;
  *&v25 = v29;
  sub_100D1DB84(v32, v33, v34, a5, a6, v37, v38, v35, v26 - v22, a10 & 1, v31, v30, *(&v30 + 1), v25);
  return (*(v20 + 8))(v23, v36);
}

void sub_100D1DB84(char a1@<W0>, NSObject *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(NSObject *, uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v16 = v15;
  v17 = v14;
  v254 = a8;
  v258 = a7;
  v259 = a5;
  v241 = a9;
  v257 = v17;
  v253 = *v17;
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = __chkstk_darwin(v23 - 8);
  v242 = &v236[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v249 = &v236[-v27];
  __chkstk_darwin(v26);
  v29 = &v236[-v28];
  v30 = type metadata accessor for UUID();
  v260 = *(v30 - 8);
  v31 = __chkstk_darwin(v30);
  v246 = &v236[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v31);
  v243 = &v236[-v34];
  v35 = __chkstk_darwin(v33);
  v251 = &v236[-v36];
  v37 = __chkstk_darwin(v35);
  v252 = &v236[-v38];
  v39 = __chkstk_darwin(v37);
  v250 = &v236[-v40];
  v41 = __chkstk_darwin(v39);
  v255 = &v236[-v42];
  v43 = __chkstk_darwin(v41);
  v245 = &v236[-v44];
  v266[0] = a1;
  v267 = a2;
  v268 = a3;
  v269 = a4;
  v45 = *(a6 + 16);
  v46 = _swiftEmptyArrayStorage;
  v261 = v43;
  if (v45)
  {
    *&v264 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v45, 0);
    v46 = v264;
    v47 = (a6 + 48);
    do
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      *&v264 = v46;
      v51 = v46[2];
      v50 = v46[3];

      if (v51 >= v50 >> 1)
      {
        sub_101123BB8((v50 > 1), v51 + 1, 1);
        v46 = v264;
      }

      v46[2] = v51 + 1;
      v52 = &v46[2 * v51];
      v52[4] = v49;
      v52[5] = v48;
      v47 += 3;
      --v45;
    }

    while (v45);
    v30 = v261;
  }

  v53 = sub_101129930(v46);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016BA330, &qword_1013E4788);
  sub_1000041A4(&qword_1016BA338, &qword_1016BA330, &qword_1013E4788, &protocol conformance descriptor for Message<A>);
  v54 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v16)
  {

    return;
  }

  v247 = v53;
  v240 = v54;
  v248 = v55;
  v256 = 0;
  LODWORD(v244) = a11;

  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v57;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v58 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  v62 = UUID.data.getter();
  v265 = &type metadata for Data;
  *&v264 = v62;
  *(&v264 + 1) = v63;
  sub_1001E6224(&v264, v263);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v262 = v58;
  sub_100FFB368(v263, v59, v61, isUniquelyReferenced_nonNull_native);

  v65 = v262;
  sub_1000D2A70(v258, v29, &qword_1016980D0, &unk_10138F3B0);
  v66 = v260;
  v67 = v260 + 48;
  v239 = *(v260 + 48);
  if (v239(v29, 1, v30) == 1)
  {
    sub_10000B3A8(v29, &qword_1016980D0, &unk_10138F3B0);
    v68 = v65;
    if (a10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v69 = *(v66 + 32);
  v237 = a10;
  v70 = v245;
  v69(v245, v29, v30);
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;
  v74 = UUID.uuidString.getter();
  v265 = &type metadata for String;
  *&v264 = v74;
  *(&v264 + 1) = v75;
  sub_1001E6224(&v264, v263);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v262 = v65;
  sub_100FFB368(v263, v71, v73, v76);

  v77 = v70;
  LOBYTE(v70) = v237;
  (*(v66 + 8))(v77, v30);
  v68 = v262;
  if ((v70 & 1) == 0)
  {
LABEL_13:
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;
    v265 = &type metadata for Double;
    *&v264 = v254;
    sub_1001E6224(&v264, v263);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v262 = v68;
    sub_100FFB368(v263, v78, v80, v81);

    v68 = v262;
  }

LABEL_14:
  if (v244)
  {
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v68;
    v85 = v84;
    v265 = &type metadata for Bool;
    LOBYTE(v264) = 1;
    sub_1001E6224(&v264, v263);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v262 = v83;
    sub_100FFB368(v263, v82, v85, v86);

    v68 = v262;
  }

  if (*(&a14 + 1))
  {
    v87 = v68;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;
    v265 = &type metadata for String;
    v264 = a14;
    sub_1001E6224(&v264, v263);

    v91 = swift_isUniquelyReferenced_nonNull_native();
    v262 = v87;
    sub_100FFB368(v263, v88, v90, v91);

    v68 = v262;
  }

  v92 = v256;
  v93 = v255;
  if (*(a12 + 16))
  {
    v94 = sub_100D1AFDC(a12);
    v95 = sub_101129930(v94);

    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v68;
    v99 = v98;
    v265 = sub_1000BC4D4(&qword_1016BA340, &qword_1013E4790);
    *&v264 = v95;
    sub_1001E6224(&v264, v263);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v262 = v97;
    sub_100FFB368(v263, v96, v99, v100);

    v68 = v262;
  }

  if (*(a13 + 16))
  {
    v101 = sub_100D1AFDC(a13);
    v102 = sub_101129930(v101);

    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;
    v265 = sub_1000BC4D4(&qword_1016BA340, &qword_1013E4790);
    *&v264 = v102;
    sub_1001E6224(&v264, v263);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v262 = v68;
    sub_100FFB368(v263, v103, v105, v106);

    v68 = v262;
  }

  if (v244)
  {
    v107 = 0xD000000000000017;
  }

  else
  {
    v107 = 0x6567617373656DLL;
  }

  if (v244)
  {
    v108 = 0x800000010135AAC0;
  }

  else
  {
    v108 = 0xE700000000000000;
  }

  v109 = v249;
  sub_1000D2A70(v258, v249, &qword_1016980D0, &unk_10138F3B0);
  v110 = v239(v109, 1, v30);
  v258 = v108;
  v256 = v92;
  v238 = v67;
  v254 = v68;
  v245 = v107;
  if (v110 == 1)
  {
    sub_10000B3A8(v109, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    sub_1000076D4(v111, qword_10177C4F0);
    LODWORD(v252) = v266[0];
    v112 = v268;
    v250 = v267;
    v113 = v269;
    v114 = *(v260 + 16);
    v114(v251, v259, v261);
    sub_100017D5C(v112, v113);

    sub_100017D5C(v112, v113);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();

    LODWORD(v255) = v116;
    v117 = os_log_type_enabled(v115, v116);
    v249 = v114;
    if (v117)
    {
      v118 = swift_slowAlloc();
      v263[0] = swift_slowAlloc();
      *v118 = 136316162;
      *&v264 = v253;
      sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
      v119 = String.init<A>(describing:)();
      v244 = v115;
      v121 = v108;
      v122 = sub_1000136BC(v119, v120, v263);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2080;
      *(v118 + 14) = sub_1000136BC(v245, v121, v263);
      *(v118 + 22) = 2080;
      sub_100D47A68(v252, v250, v112, v113);
      v124 = v123;
      v126 = v125;
      sub_100016590(v112, v113);
      sub_100016590(v112, v113);
      v127 = sub_1000136BC(v124, v126, v263);

      *(v118 + 24) = v127;
      *(v118 + 32) = 2080;
      v128 = Set.description.getter();
      v130 = sub_1000136BC(v128, v129, v263);

      *(v118 + 34) = v130;
      *(v118 + 42) = 2080;
      sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v131 = v251;
      v132 = v261;
      v133 = dispatch thunk of CustomStringConvertible.description.getter();
      v135 = v134;
      v259 = *(v260 + 8);
      v259(v131, v132);
      v136 = sub_1000136BC(v133, v135, v263);

      *(v118 + 44) = v136;
      v137 = v244;
      _os_log_impl(&_mh_execute_header, v244, v255, "%s: Sending %s: %s to %s with identifier: %s", v118, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100016590(v112, v113);
      sub_100016590(v112, v113);

      v259 = *(v260 + 8);
      v259(v251, v261);
    }
  }

  else
  {
    v138 = v260;
    (*(v260 + 32))(v93, v109, v30);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    sub_1000076D4(v139, qword_10177C4F0);
    LODWORD(v251) = v266[0];
    v140 = v268;
    v244 = v267;
    v141 = v269;
    v142 = *(v138 + 16);
    v142(v250, v93, v30);
    v249 = v142;
    v142(v252, v259, v30);
    sub_100017D5C(v140, v141);
    sub_100017D5C(v140, v141);
    v143 = v258;

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v259 = swift_slowAlloc();
      v263[0] = v259;
      *v146 = 136316418;
      *&v264 = v253;
      sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
      v147 = String.init<A>(describing:)();
      v237 = v145;
      v149 = v143;
      v150 = sub_1000136BC(v147, v148, v263);

      *(v146 + 4) = v150;
      *(v146 + 12) = 2080;
      *(v146 + 14) = sub_1000136BC(v245, v149, v263);
      *(v146 + 22) = 2080;
      sub_100D47A68(v251, v244, v140, v141);
      v152 = v151;
      v154 = v153;
      sub_100016590(v140, v141);
      sub_100016590(v140, v141);
      v155 = sub_1000136BC(v152, v154, v263);

      *(v146 + 24) = v155;
      *(v146 + 32) = 2080;
      v156 = Set.description.getter();
      v158 = sub_1000136BC(v156, v157, v263);

      *(v146 + 34) = v158;
      *(v146 + 42) = 2080;
      sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v159 = v250;
      v160 = dispatch thunk of CustomStringConvertible.description.getter();
      v162 = v161;
      v163 = *(v260 + 8);
      v163(v159, v261);
      v164 = sub_1000136BC(v160, v162, v263);

      *(v146 + 44) = v164;
      *(v146 + 52) = 2080;
      v165 = v252;
      v166 = dispatch thunk of CustomStringConvertible.description.getter();
      v168 = v167;
      v163(v165, v261);
      v169 = sub_1000136BC(v166, v168, v263);

      *(v146 + 54) = v169;
      _os_log_impl(&_mh_execute_header, v144, v237, "%s: Sending %s: %s to %s\nin response to %s with identifier: %s", v146, 0x3Eu);
      swift_arrayDestroy();

      v259 = v163;
      v163(v255, v261);
    }

    else
    {
      sub_100016590(v140, v141);

      sub_100016590(v140, v141);
      v170 = *(v260 + 8);
      v170(v252, v30);
      v170(v250, v30);
      v259 = v170;
      v170(v93, v30);
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v171 = type metadata accessor for Logger();
  v172 = sub_1000076D4(v171, qword_10177C4F0);

  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.default.getter();

  v175 = os_log_type_enabled(v173, v174);
  v255 = v172;
  if (v175)
  {
    v176 = swift_slowAlloc();
    v263[0] = swift_slowAlloc();
    *v176 = 136315394;
    *&v264 = v253;
    sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
    v177 = String.init<A>(describing:)();
    v179 = sub_1000136BC(v177, v178, v263);

    *(v176 + 4) = v179;
    *(v176 + 12) = 2080;
    v180 = Dictionary.description.getter();
    v182 = sub_1000136BC(v180, v181, v263);

    *(v176 + 14) = v182;
    _os_log_impl(&_mh_execute_header, v173, v174, "%s: IDSSendMessageOptions: %s", v176, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for AnalyticsEvent(0);
  v183 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v183 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v184 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v185 = type metadata accessor for DispatchTime();
  v186 = *(*(v185 - 8) + 56);
  v186(&v183[v184], 1, 1, v185);
  v186(&v183[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v185);
  *(v183 + 15) = 0xD000000000000026;
  *(v183 + 16) = 0x8000000101370120;
  type metadata accessor for Transaction();
  LOBYTE(v184) = v266[0];
  v188 = v267;
  v187 = v268;
  v189 = v269;
  v190 = swift_allocObject();
  *(v190 + 16) = v183;
  *(v190 + 24) = v184;
  *(v190 + 32) = v188;
  *(v190 + 40) = v187;
  *(v190 + 48) = v189;

  sub_100017D5C(v187, v189);
  static Transaction.asyncTask(name:block:)();

  v191 = v257[8];
  v192 = v240;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100D1B288(v247);
  v194 = Set._bridgeToObjectiveC()().super.isa;

  sub_1006950E0(v254);
  v195 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v264 = 0;
  v263[0] = 0;
  v196 = [v191 sendData:isa toDestinations:v194 priority:300 options:v195 identifier:&v264 error:v263];

  v198 = v263[0];
  v199 = v264;
  if (v196)
  {
    v200 = v257[15];
    __chkstk_darwin(v197);
    *&v236[-32] = v266;
    *&v236[-24] = v192;
    *&v236[-16] = v248;
    v201 = v198;
    v202 = v199;
    os_unfair_lock_lock(v200 + 16);
    v203 = v256;
    sub_100D25150(&v200[4]);
    v256 = v203;
    v204 = v200 + 16;
    if (v203)
    {
      os_unfair_lock_unlock(v204);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v204);

      v205 = v246;
      if (v202)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v242;
        UUID.init(uuidString:)();

        v207 = v261;
        if (v239(v206, 1, v261) == 1)
        {
          sub_10000B3A8(v206, &qword_1016980D0, &unk_10138F3B0);
          sub_1001DCF6C();
          swift_allocError();
          *v208 = 0;
          swift_willThrow();

          sub_100016590(v240, v248);
        }

        else
        {
          v212 = v243;
          v258 = *(v260 + 32);
          v258(v243, v206, v207);
          LODWORD(v257) = v266[0];
          v213 = v268;
          v254 = v267;
          v214 = v269;
          (v249)(v205, v212, v207);
          sub_100017D5C(v213, v214);
          sub_100017D5C(v213, v214);
          v215 = Logger.logObject.getter();
          v216 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v215, v216))
          {
            v217 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            v263[0] = v255;
            *v217 = 136315650;
            *&v264 = v253;
            sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
            v218 = String.init<A>(describing:)();
            v253 = v215;
            v220 = sub_1000136BC(v218, v219, v263);
            LODWORD(v252) = v216;
            v221 = v220;

            *(v217 + 4) = v221;
            *(v217 + 12) = 2080;
            sub_100D47A68(v257, v254, v213, v214);
            v223 = v222;
            v225 = v224;
            sub_100016590(v213, v214);
            sub_100016590(v213, v214);
            v226 = sub_1000136BC(v223, v225, v263);

            *(v217 + 14) = v226;
            *(v217 + 22) = 2080;
            sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v227 = v246;
            v228 = v261;
            v229 = dispatch thunk of CustomStringConvertible.description.getter();
            v231 = v230;
            v259(v227, v228);
            v232 = sub_1000136BC(v229, v231, v263);

            *(v217 + 24) = v232;
            v233 = v253;
            _os_log_impl(&_mh_execute_header, v253, v252, "%s: Sent message %s with identifier: %s", v217, 0x20u);
            swift_arrayDestroy();

            sub_100016590(v240, v248);

            v234 = v228;
          }

          else
          {
            sub_100016590(v213, v214);

            sub_100016590(v240, v248);
            sub_100016590(v213, v214);

            v235 = v261;
            v259(v205, v261);
            v234 = v235;
          }

          v258(v241, v243, v234);
        }
      }

      else
      {
        sub_1001DCF6C();
        swift_allocError();
        *v211 = 0;
        swift_willThrow();

        sub_100016590(v240, v248);
      }
    }
  }

  else
  {
    v209 = v263[0];
    v210 = v199;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v192, v248);
  }
}

uint64_t sub_100D1F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D1F8A0, a4, 0);
}

uint64_t sub_100D1F8A0()
{
  v1 = *(v0 + 56);
  sub_100D1F9C4(*(v0 + 32), v1);
  sub_10000B3A8(v1, &qword_1016998B0, &qword_101392020);

  return _swift_task_switch(sub_100D1F928, 0, 0);
}

uint64_t sub_100D1F928()
{
  v0[2] = v0[6];
  swift_errorRetain();
  sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  CheckedContinuation.resume(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100D1F9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1000210EC(a1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 144);
    v18 = *(v3 + 144);
    *(v3 + 144) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100D1CC();
      v10 = v18;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v10 + 56);
    v14 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
    v15 = *(v14 - 8);
    (*(v15 + 32))(a2, v13 + *(v15 + 72) * v8, v14);
    sub_100AF9EC8(v8, v10);
    *(v3 + 144) = v10;

    (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_100D1FBB0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D1FC2C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100D1FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100D1FD98(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100D1FE40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100D1BD94();
}

uint64_t sub_100D1FEEC()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100D1FFAC;
  v2 = *(v0 + 16);

  return unsafeBlocking<A>(_:)(v1, sub_100D201BC, v2, &type metadata for () + 1);
}

uint64_t sub_100D1FFAC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(Database.await(state:), v1, 0);
}

uint64_t sub_100D200C4()
{
  type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  sub_100D26ADC(&qword_1016B1180, v0, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D201E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 80) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_100D2020C, 0, 0);
}

uint64_t sub_100D2020C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_100D20318;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_1013E4890, v6, &type metadata for () + 1);
}

uint64_t sub_100D20318()
{

  return _swift_task_switch(sub_1007FFC84, 0, 0);
}

uint64_t sub_100D20430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 216) = a8;
  *(v8 + 224) = v14;
  *(v8 + 288) = a7;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 176) = a2;
  v10 = type metadata accessor for UUID();
  *(v8 + 232) = v10;
  v11 = *(v10 - 8);
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 + 64);
  *(v8 + 256) = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_100D20558, a3, 0);
}

uint64_t sub_100D20558()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 280) = *(v1 + 136);

  return _swift_task_switch(sub_100D205E0, 0, 0);
}

void sub_100D205E0()
{
  v1 = 0;
  v2 = *(v0 + 280);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v32 = v4;
  v33 = *(v0 + 280);
  v7 = -1 << *(v33 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v29 = *(v0 + 248) + 7;
  v30 = v9;
  v31 = *(v0 + 240);
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 272);
    v35 = v13;
    v41 = *(v0 + 264);
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v34 = v15;
    v40 = *(v0 + 224);
    v38 = *(v0 + 288);
    v16 = *(v0 + 208);
    v39 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = *(v0 + 200);
    sub_10001F280(*(v33 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v17 = type metadata accessor for TaskPriority();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v13, 1, 1, v17);
    sub_100031694((v0 + 16), v0 + 56);
    (*(v31 + 16))(v14, v16, v15);
    v19 = (*(v31 + 80) + 88) & ~*(v31 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    sub_100031694((v0 + 56), (v20 + 32));
    *(v20 + 9) = v36;
    *(v20 + 10) = v37;
    (*(v31 + 32))(&v20[v19], v14, v34);
    v21 = &v20[(v29 + v19) & 0xFFFFFFFFFFFFFFF8];
    *v21 = v38;
    *(v21 + 1) = v39;
    *(v21 + 2) = v40;
    sub_1000D2A70(v35, v41, &qword_101698C00, &qword_10138B570);
    LODWORD(v14) = (*(v18 + 48))(v41, 1, v17);

    v22 = *(v0 + 264);
    if (v14 == 1)
    {
      sub_10000B3A8(*(v0 + 264), &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v18 + 8))(v22, v17);
    }

    if (*(v20 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = **(v0 + 176);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_1013E48A0;
    *(v27 + 24) = v20;

    if (v25 | v23)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v23;
      *(v0 + 120) = v25;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 272);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v26;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v4 = v32;
    v9 = v30;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_100D20A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 48) = v10;
  *(v8 + 56) = v11;
  *(v8 + 72) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return _swift_task_switch(sub_100D20A74, 0, 0);
}

uint64_t sub_100D20A74()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v12 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10001E3DC;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 72);
  v10 = *(v0 + 24);

  return v12(v10, v7, v8, v9, v5, v6, v2, v3);
}

uint64_t sub_100D20BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 88) = v12;
  *(v8 + 64) = v10;
  *(v8 + 113) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 112) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_100D20BF0, 0, 0);
}

uint64_t sub_100D20BF0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 113);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 112);
  v6 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12 = *(v0 + 56);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = *(v0 + 80);
  *(v7 + 16) = v11;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v2;
  *(v7 + 72) = v12;
  *(v7 + 88) = v1;
  *(v7 + 96) = v8;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_100D20D2C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_1013E4858, v7, &type metadata for () + 1);
}

uint64_t sub_100D20D2C()
{

  return _swift_task_switch(sub_1007FFC84, 0, 0);
}

uint64_t sub_100D20E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v16;
  *(v8 + 224) = v14;
  *(v8 + 240) = v15;
  *(v8 + 313) = v13;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 312) = a6;
  *(v8 + 192) = a4;
  *(v8 + 200) = a5;
  *(v8 + 176) = a2;
  *(v8 + 184) = a3;
  v10 = *(type metadata accessor for MessagingMessageContext(0) - 8);
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 + 64);
  *(v8 + 280) = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_100D20F7C, a3, 0);
}

uint64_t sub_100D20F7C()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 304) = *(v1 + 136);

  return _swift_task_switch(sub_100D21004, 0, 0);
}

void sub_100D21004()
{
  v1 = 0;
  v2 = *(v0 + 304);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v29 = *(v0 + 264);
  v30 = v4;
  v6 = -1;
  v31 = *(v0 + 304);
  v7 = -1 << *(v31 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v28 = v9;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 296);
    v32 = v13;
    v41 = *(v0 + 288);
    v14 = *(v0 + 280);
    v15 = *(v0 + 256);
    v40 = *(v0 + 248);
    v38 = *(v0 + 232);
    v39 = *(v0 + 240);
    v16 = *(v0 + 216);
    v37 = *(v0 + 224);
    v36 = *(v0 + 313);
    v17 = *(v0 + 200);
    v35 = *(v0 + 208);
    v34 = *(v0 + 312);
    v33 = *(v0 + 192);
    sub_10001F280(*(v31 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v18 = type metadata accessor for TaskPriority();
    v42 = *(v18 - 8);
    (*(v42 + 56))(v13, 1, 1, v18);
    sub_100031694((v0 + 16), v0 + 56);
    sub_100D2577C(v15, v14);
    v19 = (*(v29 + 80) + 152) & ~*(v29 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_100031694((v0 + 56), v20 + 32);
    *(v20 + 72) = v33;
    *(v20 + 80) = v17;
    *(v20 + 88) = v34;
    *(v20 + 96) = v35;
    *(v20 + 104) = v16;
    *(v20 + 112) = v36;
    *(v20 + 120) = v37;
    *(v20 + 128) = v38;
    *(v20 + 136) = v39;
    *(v20 + 144) = v40;
    sub_100476E9C(v14, v20 + v19);
    sub_1000D2A70(v32, v41, &qword_101698C00, &qword_10138B570);
    LODWORD(v19) = (*(v42 + 48))(v41, 1, v18);

    sub_100017D5C(v38, v39);

    v21 = *(v0 + 288);
    if (v19 == 1)
    {
      sub_10000B3A8(*(v0 + 288), &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v42 + 8))(v21, v18);
    }

    if (*(v20 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = **(v0 + 176);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_1013E4868;
    *(v26 + 24) = v20;

    if (v24 | v22)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v22;
      *(v0 + 120) = v24;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 296);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v25;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v4 = v30;
    v9 = v28;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v27 = *(v0 + 8);

  v27();
}

uint64_t sub_100D2146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v15;
  *(v8 + 120) = v16;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 137) = v11;
  *(v8 + 80) = v10;
  *(v8 + 88) = v12;
  *(v8 + 136) = a7;
  *(v8 + 64) = a6;
  *(v8 + 72) = a8;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  return _swift_task_switch(sub_100D214BC, 0, 0);
}

void sub_100D214BC()
{
  v1 = *(v0 + 104);
  v6 = *(v0 + 88);
  v2 = *(v0 + 137);
  v3 = *(v0 + 48);
  v4 = v3[4];
  sub_1000035D0(v3, v3[3]);
  *(v0 + 16) = v2;
  *(v0 + 24) = v6;
  *(v0 + 40) = v1;
  v7 = *(v4 + 32) + **(v4 + 32);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_100865E18;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_100D21630(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100D21650, 0, 0);
}

uint64_t sub_100D21650()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100D21734;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_1013E4820, v1, &type metadata for () + 1);
}

uint64_t sub_100D21734()
{

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100D2184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100D218FC, a3, 0);
}

uint64_t sub_100D218FC()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 136);

  return _swift_task_switch(sub_100D21984, 0, 0);
}

void sub_100D21984()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v28 = v4;
  v29 = *(v0 + 216);
  v7 = -1 << *(v29 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v27 = v9;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);
    sub_10001F280(*(v29 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v16 = type metadata accessor for TaskPriority();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14, 1, 1, v16);
    sub_100031694((v0 + 16), v0 + 56);
    v18 = swift_allocObject();
    v18[2] = 0;
    v19 = v18 + 2;
    v18[3] = 0;
    sub_100031694((v0 + 56), (v18 + 4));
    v18[9] = v15;
    sub_1000D2A70(v14, v13, &qword_101698C00, &qword_10138B570);
    LODWORD(v13) = (*(v17 + 48))(v13, 1, v16);

    v20 = *(v0 + 200);
    if (v13 == 1)
    {
      sub_10000B3A8(*(v0 + 200), &qword_101698C00, &qword_10138B570);
      if (*v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v17 + 8))(v20, v16);
      if (*v19)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v21 = 0;
    v23 = 0;
LABEL_16:
    v24 = **(v0 + 176);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_1013E4830;
    *(v25 + 24) = v18;

    if (v23 | v21)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v21;
      *(v0 + 120) = v23;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 208);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v24;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v9 = v27;
    v4 = v28;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v26 = *(v0 + 8);

  v26();
}

uint64_t sub_100D21D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100D21D2C, 0, 0);
}

uint64_t sub_100D21D2C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1001B7B20;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_100D21E58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100D21E78, 0, 0);
}

uint64_t sub_100D21E78()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100D21F5C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_1013E47E8, v1, &type metadata for () + 1);
}

uint64_t sub_100D21F5C()
{

  return _swift_task_switch(sub_1007FFC84, 0, 0);
}

uint64_t sub_100D22074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100D22124, a3, 0);
}

uint64_t sub_100D22124()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 136);

  return _swift_task_switch(sub_100D221AC, 0, 0);
}

void sub_100D221AC()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v28 = v4;
  v29 = *(v0 + 216);
  v7 = -1 << *(v29 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v27 = v9;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);
    sub_10001F280(*(v29 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v16 = type metadata accessor for TaskPriority();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14, 1, 1, v16);
    sub_100031694((v0 + 16), v0 + 56);
    v18 = swift_allocObject();
    v18[2] = 0;
    v19 = v18 + 2;
    v18[3] = 0;
    sub_100031694((v0 + 56), (v18 + 4));
    v18[9] = v15;
    sub_1000D2A70(v14, v13, &qword_101698C00, &qword_10138B570);
    LODWORD(v13) = (*(v17 + 48))(v13, 1, v16);

    v20 = *(v0 + 200);
    if (v13 == 1)
    {
      sub_10000B3A8(*(v0 + 200), &qword_101698C00, &qword_10138B570);
      if (*v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v17 + 8))(v20, v16);
      if (*v19)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v21 = 0;
    v23 = 0;
LABEL_16:
    v24 = **(v0 + 176);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_1013E47F8;
    *(v25 + 24) = v18;

    if (v23 | v21)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v21;
      *(v0 + 120) = v23;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 208);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v24;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v9 = v27;
    v4 = v28;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v26 = *(v0 + 8);

  v26();
}

uint64_t sub_100D22534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100D22554, 0, 0);
}

uint64_t sub_100D22554()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);

  v5 = sub_10112B800(v4);
  v0[4] = v5;

  v8 = (*(v3 + 48) + **(v3 + 48));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_100D226A4;

  return v8(v5, v2, v3);
}

uint64_t sub_100D226A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100D227B4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF68);
  sub_1000076D4(v0, qword_10177BF68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D22834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1016951A8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v5 = *(a1 + 64);
  swift_beginAccess();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = qword_10177C528;
  qword_10177C528 = 0x8000000000000000;
  sub_100FFE0D8(a2, a3, v6, isUniquelyReferenced_nonNull_native);

  qword_10177C528 = v10;
  return swift_endAccess();
}

BOOL sub_100D22928(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 64);
    v5 = v2;
    v6 = sub_10039D39C(a2);
    sub_100475D70(v4, v6);
  }

  return v2 == 0;
}

uint64_t sub_100D229A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for StateCaptureDateType();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateCaptureHintAPI();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  StateCaptureHint.api.getter();
  (*(v7 + 104))(v10, enum case for StateCaptureHintAPI.request(_:), v6);
  sub_100D26ADC(&qword_101698DD0, 255, &type metadata accessor for StateCaptureHintAPI, &protocol conformance descriptor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v13(v12, v6);
  if (LODWORD(v29[0]) == v30)
  {
    v14 = *(a1 + 120);
    os_unfair_lock_lock((v14 + 64));
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v32 = *(v14 + 32);
    v33 = v16;
    v35 = v32;
    v36 = v16;
    v31 = v15;
    v34 = v15;
    sub_1008CCDD0(&v34, v29);
    sub_1000D2A70(&v35, v29, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(&v35 + 8, v29, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(&v36, v29, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(&v36 + 8, v29, &qword_1016BA328, &qword_1013E4758);
    os_unfair_lock_unlock((v14 + 64));
    v17 = objc_opt_self();
    sub_1010459A4();
    v19 = v18;
    sub_1002FFC04(&v34);
    sub_10000B3A8(&v35, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(&v35 + 8, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(&v36, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(&v36 + 8, &qword_1016BA328, &qword_1013E4758);
    v29[0] = 0;
    v20 = [v17 dataWithPropertyList:v19 format:200 options:0 error:v29];

    v21 = v29[0];
    if (!v20)
    {
      v26 = v21;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v27 + 104))(v5, enum case for StateCaptureDateType.serialized(_:), v3);
    v22 = v28;
    StateCaptureStateData.init(type:title:data:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v22 = v28;
  }

  v24 = type metadata accessor for StateCaptureStateData();
  return (*(*(v24 - 8) + 56))(v22, v23, 1, v24);
}

uint64_t sub_100D22E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_100D22F74, 0, 0);
}

uint64_t sub_100D22F74(uint64_t a1)
{
  if (static Task<>.isCancelled.getter())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 288);
    v4 = *(v1 + 296);
    v6 = *(v1 + 280);
    static Clock<>.continuous.getter();
    *(v1 + 128) = xmmword_1013E4580;
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
    *(v1 + 104) = 1;
    v7 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v8 = *(v5 + 8);
    *(v1 + 336) = v8;
    *(v1 + 344) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);
    v9 = swift_task_alloc();
    *(v1 + 352) = v9;
    *v9 = v1;
    v9[1] = sub_100D231B0;
    v11 = *(v1 + 304);
    v10 = *(v1 + 312);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v1 + 88, v10, v7);
  }
}

uint64_t sub_100D231B0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[42];
    v4 = v2[38];
    v5 = v2[35];

    v3(v4, v5);
    v6 = sub_100D2389C;
  }

  else
  {
    v8 = v2[40];
    v7 = v2[41];
    v9 = v2[39];
    (v2[42])(v2[38], v2[35]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_100D2331C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D2331C()
{
  v26 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 120);

    os_unfair_lock_lock((v2 + 64));
    v3 = *(v2 + 16);
    v4 = *(v2 + 48);
    *(v0 + 32) = *(v2 + 32);
    *(v0 + 48) = v4;
    *(v0 + 16) = v3;
    *(v0 + 112) = *(v2 + 16);
    v5 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 176) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 192) = v5;
    sub_1008CCDD0(v0 + 112, v0 + 144);
    sub_1000D2A70(v0 + 200, v0 + 208, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 216, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 224, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 232, &qword_1016BA328, &qword_1013E4758);
    os_unfair_lock_unlock((v2 + 64));

    if (qword_101695198 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C508);
    sub_1008CCDD0(v0 + 112, v0 + 160);
    sub_1000D2A70(v0 + 200, v0 + 240, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 248, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 256, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 264, &qword_1016BA328, &qword_1013E4758);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_1002FFC04(v0 + 112);
    sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    if (!os_log_type_enabled(v7, v8))
    {

      sub_1002FFC04(v0 + 112);
      sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v11 = sub_101049994();
    v13 = v12;
    sub_1002FFC04(v0 + 112);
    sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    v14 = sub_1000136BC(v11, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  if (static Task<>.isCancelled.getter())
  {
LABEL_7:

    v15 = *(v0 + 8);

    return v15();
  }

LABEL_11:
  v18 = *(v0 + 288);
  v17 = *(v0 + 296);
  v19 = *(v0 + 280);
  static Clock<>.continuous.getter();
  *(v0 + 128) = xmmword_1013E4580;
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  *(v0 + 104) = 1;
  v20 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v21 = *(v18 + 8);
  *(v0 + 336) = v21;
  *(v0 + 344) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v17, v19);
  v22 = swift_task_alloc();
  *(v0 + 352) = v22;
  *v22 = v0;
  v22[1] = sub_100D231B0;
  v24 = *(v0 + 304);
  v23 = *(v0 + 312);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v24, v0 + 88, v23, v20);
}

uint64_t sub_100D2389C()
{
  v26 = v0;
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 120);

    os_unfair_lock_lock((v2 + 64));
    v3 = *(v2 + 16);
    v4 = *(v2 + 48);
    *(v0 + 32) = *(v2 + 32);
    *(v0 + 48) = v4;
    *(v0 + 16) = v3;
    *(v0 + 112) = *(v2 + 16);
    v5 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 176) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 192) = v5;
    sub_1008CCDD0(v0 + 112, v0 + 144);
    sub_1000D2A70(v0 + 200, v0 + 208, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 216, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 224, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 232, &qword_1016BA328, &qword_1013E4758);
    os_unfair_lock_unlock((v2 + 64));

    if (qword_101695198 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C508);
    sub_1008CCDD0(v0 + 112, v0 + 160);
    sub_1000D2A70(v0 + 200, v0 + 240, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 248, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 256, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 264, &qword_1016BA328, &qword_1013E4758);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_1002FFC04(v0 + 112);
    sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      v11 = sub_101049994();
      v13 = v12;
      sub_1002FFC04(v0 + 112);
      sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
      v14 = sub_1000136BC(v11, v13, &v25);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
      sub_100007BAC(v10);
    }

    else
    {

      sub_1002FFC04(v0 + 112);
      sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    }
  }

  if (static Task<>.isCancelled.getter())
  {

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 280);
    static Clock<>.continuous.getter();
    *(v0 + 128) = xmmword_1013E4580;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 1;
    v20 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v21 = *(v18 + 8);
    *(v0 + 336) = v21;
    *(v0 + 344) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v17, v19);
    v22 = swift_task_alloc();
    *(v0 + 352) = v22;
    *v22 = v0;
    v22[1] = sub_100D231B0;
    v24 = *(v0 + 304);
    v23 = *(v0 + 312);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v24, v0 + 88, v23, v20);
  }
}

uint64_t sub_100D23E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D22E4C(a1, v4, v5, v6);
}

uint64_t sub_100D23ED8()
{
  sub_1000041A4(&qword_1016BA378, &qword_1016BA368, &unk_1013E48C0, &unk_1013F98B8);
  v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_100D24004(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = a4;
  *(v4 + 240) = a2;
  *(v4 + 264) = a1;
  return _swift_task_switch(sub_100D2402C, 0, 0);
}

unint64_t sub_100D2402C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 264);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x546567617373656DLL;
  *(inited + 16) = xmmword_10138B360;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 72) = &type metadata for Int32;
  *(inited + 80) = sub_100D25210();
  *(inited + 48) = v3 + 1;
  *(inited + 88) = 2;
  strcpy((inited + 96), "messageVersion");
  *(inited + 111) = -18;
  *(inited + 136) = &type metadata for Int;
  result = sub_1000DFAD8();
  *(inited + 144) = result;
  *(inited + 112) = v2;
  *(inited + 152) = 2;
  v6 = v1 >> 62;
  *(inited + 160) = 0x536567617373656DLL;
  *(inited + 168) = 0xEB00000000657A69;
  if ((v1 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = *(*(v0 + 248) + 16);
    v9 = *(*(v0 + 248) + 24);
    v10 = __OFSUB__(v9, v8);
    v7 = v9 - v8;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = *(v0 + 262);
    goto LABEL_11;
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 252);
  v10 = __OFSUB__(v12, v11);
  LODWORD(v7) = v12 - v11;
  if (v10)
  {
    __break(1u);
    return result;
  }

  v7 = v7;
LABEL_11:
  *(inited + 200) = &type metadata for Int;
  *(inited + 208) = result;
  *(inited + 176) = v7;
  *(inited + 216) = 2;
  v13 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100D24214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100D24314, 0, 0);
}

uint64_t sub_100D24314()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100D244AC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100D244AC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100D24668, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100D24668()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100D246D4(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_100008BB8(0, &qword_1016A0AD8, IDSAccount_ptr);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

BOOL sub_100D24814@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100D22928(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100D24848(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(v2 + 16) = *a2;
  *(v2 + 24) = *(a2 + 8);
  *(v2 + 40) = v3;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_100D2487C, 0, 0);
}

uint64_t sub_100D2487C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100D2493C;

  return sub_101162604(&unk_1013E47C0, v1);
}

uint64_t sub_100D2493C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  type metadata accessor for AnalyticsPublisher();
  v2[9] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v3;
  v4[1] = sub_100D24AA0;
  v5 = v2[6];

  return sub_101163F78(v5);
}

uint64_t sub_100D24AA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100D24BB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      a3 = 0;
      return sub_101046408((v4 + 1), v5, a3);
    }

    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    a3 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      return sub_101046408((v4 + 1), v5, a3);
    }

    __break(1u);
  }

  else if (!v6)
  {
    a3 = BYTE6(a4);
    return sub_101046408((v4 + 1), v5, a3);
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    a3 = HIDWORD(a3) - a3;
    return sub_101046408((v4 + 1), v5, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100D24C34(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001BBA4C;

  return sub_100D24004(v5, v3, v2, v4);
}

uint64_t sub_100D24D40()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  *(&v10 + 1) = *(v0 + v8);
  *&v10 = *(v0 + v7);
  return sub_100D1D7BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + v2), *(v0 + v3), (v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 9), v10, *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100D24F08(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100D1F7FC(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_100D250A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100D24848(v2, v0 + 24);
}

uint64_t sub_100D25170()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BBA4C;

  return sub_100D24C34(v2);
}

unint64_t sub_100D25210()
{
  result = qword_1016BA358;
  if (!qword_1016BA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA358);
  }

  return result;
}

uint64_t sub_100D2531C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100D21E58(v2, v3);
}

uint64_t sub_100D253B4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100D22074(a1, a2, v7, v6);
}

uint64_t sub_100D25468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D22534(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100D25528()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100D21630(v2, v3);
}

uint64_t sub_100D255C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100D2184C(a1, a2, v7, v6);
}

uint64_t sub_100D25674()
{
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 32));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100D256BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D21D0C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100D2577C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingMessageContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D257E0()
{
  type metadata accessor for MessagingMessageContext(0);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v11 = *(v0 + 72);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100D20BAC(v2, v3, v4, v8, v5, v6, v7, v11);
}

uint64_t sub_100D25920(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 40);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100D20E44(a1, a2, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100D25A38(uint64_t a1)
{
  type metadata accessor for MessagingMessageContext(0);
  v9 = *(v1 + 24);
  v10 = *(v1 + 16);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v8 = *(v1 + 96);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100D2146C(a1, v10, v9, v1 + 32, v3, v4, v5, v8);
}

uint64_t sub_100D25B8C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100D201E0(v4, v5, v6, v0 + v3, v10, v8, v9);
}

uint64_t sub_100D25CC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 56);
  v11 = *(v2 + 48);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100D20430(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100D25DB0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[9];
  v8 = v1[10];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100D20A40(a1, v5, v6, (v1 + 4), v7, v8, v1 + v4, v9);
}

uint64_t sub_100D25F04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100010F48(a1, v4);
}

void sub_100D25FBC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v36 = a3;
  v46 = a2;
  v47 = a1;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v5 + 32) = v15;
  *(v5 + 40) = 0;
  v37 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v42 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v16 = *(v12 + 104);
  v43 = v12 + 104;
  v45 = v16;
  v16(v14);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  v39 = sub_100D26ADC(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v38 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v40 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 80) = sub_10090A9BC(_swiftEmptyArrayStorage);
  *(v5 + 88) = sub_100909A8C(_swiftEmptyArrayStorage);
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  v17 = v46;
  v18 = v47;
  *(v5 + 16) = v47;
  *(v5 + 24) = v17;
  v48 = 0;
  v49 = 0xE000000000000000;

  _StringGuts.grow(_:)(45);

  v48 = 0xD00000000000002BLL;
  v49 = 0x80000001013701B0;
  v19._countAndFlagsBits = v18;
  v19._object = v17;
  String.append(_:)(v19);
  v45(v14, v42, v44);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = objc_allocWithZone(IDSService);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithService:v21];

  if (v22)
  {
    *(v6 + 64) = v22;
    type metadata accessor for MessagingQueryController();
    swift_allocObject();

    *(v6 + 72) = sub_10126766C(v18, v17);
    *(v6 + 96) = a4;
    *(v6 + 104) = a5;
    *(v6 + 112) = v36;
    sub_1000BC4D4(&qword_1016BA370, &unk_1013E48D0);
    v23 = swift_allocObject();
    *(v23 + 64) = 0;
    *(v23 + 16) = v18;
    *(v23 + 24) = v17;
    *(v23 + 32) = _swiftEmptyDictionarySingleton;
    *(v23 + 40) = _swiftEmptyDictionarySingleton;
    *(v23 + 48) = _swiftEmptyDictionarySingleton;
    *(v23 + 56) = _swiftEmptyDictionarySingleton;
    *(v6 + 120) = v23;
    v24 = qword_101695190;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C4F0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136446210;
      v30 = sub_100D23ED8();
      v32 = v31;

      v33 = sub_1000136BC(v30, v32, &v48);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Created %{public}s", v28, 0xCu);
      sub_100007BAC(v29);
    }

    else
    {
    }

    if (qword_1016951A0 != -1)
    {
      v34 = swift_once();
    }

    __chkstk_darwin(v34);
    *(&v35 - 4) = v6;
    *(&v35 - 3) = v18;
    *(&v35 - 2) = v17;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D2663C(uint64_t a1, int a2, void *a3)
{
  v31 = a3;
  v32 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  sub_100D1F9C4(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &qword_1016998B0, &qword_101392020);
    if (qword_101694E10 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177BF50);
    (*(v5 + 16))(v8, a1, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v5 + 8))(v8, v4);
      v26 = sub_1000136BC(v23, v25, &v33);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Untracked identifier: %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    if (v32)
    {
      (*(v5 + 16))(v10, a1, v4);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      if (v31)
      {
        v27 = v31;
      }

      else
      {
        v28 = objc_allocWithZone(NSError);
        v29 = String._bridgeToObjectiveC()();
        v27 = [v28 initWithDomain:v29 code:0 userInfo:0];
      }

      v33 = v27;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_100D26ADC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100D26B44()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF80);
  v1 = sub_1000076D4(v0, qword_10177BF80);
  if (qword_101694E28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D26C0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 128))
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v4 = sub_100D42DB8(&qword_1016A4E68, a2, type metadata accessor for CircleTrustService, &unk_1013E496C);
    type metadata accessor for CircleTrustMessageRouter();
    v3 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v3 + 112) = v2;
    *(v3 + 120) = v4;
    *(v2 + 128) = v3;
  }

  return v3;
}

uint64_t sub_100D26CC8()
{
  v1[7] = v0;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_100D26DB8;

  return daemon.getter();
}

uint64_t sub_100D26DB8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D42DB8(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v3 = v9;
  v3[1] = sub_100D26F9C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D26F9C(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100D27368;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_100D270C4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D270C4(uint64_t a1)
{
  v2 = v1[7];
  v1[5] = type metadata accessor for CircleTrustService();
  v1[6] = sub_100D42DB8(&qword_1016BA538, v3, type metadata accessor for CircleTrustService, &unk_1013E4950);
  v1[2] = v2;

  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_100D271C0;
  v5 = v1[10];

  return sub_100D1C654(v5, (v1 + 2));
}

uint64_t sub_100D271C0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = sub_100D2751C;
  }

  else
  {
    v5 = v2[7];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_100007BAC(v2 + 2);
    v4 = sub_100D272FC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D272FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D27368()
{

  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100D2751C()
{

  sub_100007BAC((v0 + 16));
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100D276D8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100D2780C, v1, 0);
}

uint64_t sub_100D2780C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (!v2)
  {
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v3 + 80);
  *(v0 + 288) = v5;
  *(v0 + 224) = *(v3 + 72);
  *(v0 + 232) = 0;
  v6 = *(v0 + 208);
  sub_100D4A580(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for OwnerSharingCircle);
  v7 = *(v6 + *(v4 + 32));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_1003A85FC(*(v7 + 16), 0);
    v10 = sub_1003CC2CC();
    v11 = *(v0 + 16);

    sub_1000128F8(v11);
    if (v10 != v8)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v14 = v9[2];
  if (v14)
  {
    v15 = *(v0 + 160);
    v58 = *(v15 + 72);
    v16 = v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 176);
      v59 = v14;
      v60 = *(v0 + 168);
      v24 = *(v0 + 152);
      v23 = *(v0 + 160);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v25;
      v26._countAndFlagsBits = 124;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28 = String.utf8Data.getter();
      v30 = v29;

      *(v0 + 96) = v28;
      *(v0 + 104) = v30;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v28, v30);
      v31 = *(v23 + 16);
      v32 = v22;
      v31(v22, v21, v24);
      v31(v60, v16, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v17;
      v34 = sub_1000210EC(v32);
      v39 = v17[2];
      v40 = (v35 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return Sequence.asyncCompactMap<A>(_:)(v34, v35, v36, v37, v38);
      }

      v43 = v35;
      if (v17[3] < v42)
      {
        break;
      }

      v46 = v58;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v54 = v34;
      sub_101005D44();
      v34 = v54;
      v17 = *(v0 + 112);
      if (v43)
      {
LABEL_11:
        (*(*(v0 + 160) + 40))(v17[7] + v34 * v46, *(v0 + 168), *(v0 + 152));
        goto LABEL_12;
      }

LABEL_19:
      v48 = *(v0 + 168);
      v47 = *(v0 + 176);
      v49 = *(v0 + 152);
      v50 = *(v0 + 160);
      v17[(v34 >> 6) + 8] |= 1 << v34;
      v51 = v34 * v46;
      v31(v17[6] + v34 * v46, v47, v49);
      v34 = (*(v50 + 32))(v17[7] + v51, v48, v49);
      v52 = v17[2];
      v41 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v41)
      {
        goto LABEL_31;
      }

      v17[2] = v53;
LABEL_12:
      v18 = *(v0 + 184);
      v19 = *(v0 + 152);
      v20 = *(*(v0 + 160) + 8);
      v20(*(v0 + 176), v19);
      v20(v18, v19);
      v16 += v46;
      v14 = v59 - 1;
      if (v59 == 1)
      {
        goto LABEL_24;
      }
    }

    v44 = *(v0 + 176);
    sub_100FE80C8(v42, isUniquelyReferenced_nonNull_native);
    v34 = sub_1000210EC(v44);
    v46 = v58;
    if ((v43 & 1) != (v45 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_18:
    v17 = *(v0 + 112);
    if (v43)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v17 = _swiftEmptyDictionarySingleton;
LABEL_24:
  *(v0 + 240) = v17;

  *(v0 + 120) = v17;
  v55 = swift_task_alloc();
  *(v0 + 248) = v55;
  v56 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v57 = type metadata accessor for OwnerPeerTrust(0);
  v38 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10, &protocol conformance descriptor for [A : B].Values);
  *v55 = v0;
  v55[1] = sub_100D27DA8;
  v35 = *(v0 + 144);
  v34 = &unk_1013E4C08;
  v36 = v56;
  v37 = v57;

  return Sequence.asyncCompactMap<A>(_:)(v34, v35, v36, v37, v38);
}

uint64_t sub_100D27DA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v6 = v4[18];

    return _swift_task_switch(sub_100D28664, v6, 0);
  }

  else
  {
    v4[33] = a1;
    v7 = swift_task_alloc();
    v4[34] = v7;
    *v7 = v5;
    v7[1] = sub_100D27F60;
    v8 = v4[26];

    return sub_100D29C1C(v8, a1);
  }
}

uint64_t sub_100D27F60()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_100D28D70;
  }

  else
  {
    v4 = sub_100D280A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D280A8()
{
  sub_100D4A3EC(*(v0 + 208), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 232) + 1;
  if (v1 == *(v0 + 216))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  *(v0 + 232) = v1;
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  sub_100D4A580(*(v0 + 136) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 224) * v1, v4, type metadata accessor for OwnerSharingCircle);
  v6 = *(v4 + *(v5 + 32));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_1003A85FC(*(v6 + 16), 0);
    v9 = sub_1003CC2CC();
    v10 = *(v0 + 16);

    sub_1000128F8(v10);
    if (v9 == v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_9:
  v11 = v8[2];
  if (v11)
  {
    v12 = *(v0 + 160);
    v55 = *(v12 + 72);
    v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v18 = *(v0 + 184);
      v19 = *(v0 + 176);
      v56 = v11;
      v57 = *(v0 + 168);
      v21 = *(v0 + 152);
      v20 = *(v0 + 160);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v22;
      v23._countAndFlagsBits = 124;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25 = String.utf8Data.getter();
      v27 = v26;

      *(v0 + 96) = v25;
      *(v0 + 104) = v27;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v25, v27);
      v28 = *(v20 + 16);
      v29 = v19;
      v28(v19, v18, v21);
      v28(v57, v13, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v14;
      v31 = sub_1000210EC(v29);
      v36 = v14[2];
      v37 = (v32 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return Sequence.asyncCompactMap<A>(_:)(v31, v32, v33, v34, v35);
      }

      v40 = v32;
      if (v14[3] < v39)
      {
        break;
      }

      v43 = v55;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v51 = v31;
      sub_101005D44();
      v31 = v51;
      v14 = *(v0 + 112);
      if (v40)
      {
LABEL_11:
        (*(*(v0 + 160) + 40))(v14[7] + v31 * v43, *(v0 + 168), *(v0 + 152));
        goto LABEL_12;
      }

LABEL_19:
      v45 = *(v0 + 168);
      v44 = *(v0 + 176);
      v46 = *(v0 + 152);
      v47 = *(v0 + 160);
      v14[(v31 >> 6) + 8] |= 1 << v31;
      v48 = v31 * v43;
      v28(v14[6] + v31 * v43, v44, v46);
      v31 = (*(v47 + 32))(v14[7] + v48, v45, v46);
      v49 = v14[2];
      v38 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v38)
      {
        goto LABEL_31;
      }

      v14[2] = v50;
LABEL_12:
      v15 = *(v0 + 184);
      v16 = *(v0 + 152);
      v17 = *(*(v0 + 160) + 8);
      v17(*(v0 + 176), v16);
      v17(v15, v16);
      v13 += v43;
      v11 = v56 - 1;
      if (v56 == 1)
      {
        goto LABEL_24;
      }
    }

    v41 = *(v0 + 176);
    sub_100FE80C8(v39, isUniquelyReferenced_nonNull_native);
    v31 = sub_1000210EC(v41);
    v43 = v55;
    if ((v40 & 1) != (v42 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_18:
    v14 = *(v0 + 112);
    if (v40)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v14 = _swiftEmptyDictionarySingleton;
LABEL_24:
  *(v0 + 240) = v14;

  *(v0 + 120) = v14;
  v52 = swift_task_alloc();
  *(v0 + 248) = v52;
  v53 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v54 = type metadata accessor for OwnerPeerTrust(0);
  v35 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10, &protocol conformance descriptor for [A : B].Values);
  *v52 = v0;
  v52[1] = sub_100D27DA8;
  v32 = *(v0 + 144);
  v31 = &unk_1013E4C08;
  v33 = v53;
  v34 = v54;

  return Sequence.asyncCompactMap<A>(_:)(v31, v32, v33, v34, v35);
}

uint64_t sub_100D28664()
{
  v68 = v0;
  if (qword_101694E20 != -1)
  {
LABEL_36:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 208);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1000136BC(v8, v9, &v67);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't update the circle, error: %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  sub_100D4A3EC(v5, type metadata accessor for OwnerSharingCircle);
  v11 = *(v0 + 232) + 1;
  if (v11 == *(v0 + 216))
  {

    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 232) = v11;
  v14 = *(v0 + 208);
  v15 = *(v0 + 192);
  sub_100D4A580(*(v0 + 136) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 224) * v11, v14, type metadata accessor for OwnerSharingCircle);
  v16 = *(v14 + *(v15 + 32));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_1003A85FC(*(v16 + 16), 0);
    v19 = sub_1003CC2CC();
    v20 = *(v0 + 16);

    sub_1000128F8(v20);
    if (v19 == v17)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_13:
  v21 = v18[2];
  if (v21)
  {
    v22 = *(v0 + 160);
    v64 = *(v22 + 72);
    v23 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v28 = *(v0 + 184);
      v29 = *(v0 + 176);
      v65 = v21;
      v66 = *(v0 + 168);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v32;
      v33._countAndFlagsBits = 124;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35 = String.utf8Data.getter();
      v37 = v36;

      *(v0 + 96) = v35;
      *(v0 + 104) = v37;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v35, v37);
      v38 = *(v30 + 16);
      v39 = v29;
      v38(v29, v28, v31);
      v38(v66, v23, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v24;
      v41 = sub_1000210EC(v39);
      v43 = v24[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v47 = v42;
      if (v24[3] < v46)
      {
        break;
      }

      v50 = v64;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v58 = v41;
      sub_101005D44();
      v41 = v58;
      v24 = *(v0 + 112);
      if (v47)
      {
LABEL_15:
        (*(*(v0 + 160) + 40))(v24[7] + v41 * v50, *(v0 + 168), *(v0 + 152));
        goto LABEL_16;
      }

LABEL_23:
      v52 = *(v0 + 168);
      v51 = *(v0 + 176);
      v53 = *(v0 + 152);
      v54 = *(v0 + 160);
      v24[(v41 >> 6) + 8] |= 1 << v41;
      v55 = v41 * v50;
      v38(v24[6] + v41 * v50, v51, v53);
      (*(v54 + 32))(v24[7] + v55, v52, v53);
      v56 = v24[2];
      v45 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v45)
      {
        goto LABEL_35;
      }

      v24[2] = v57;
LABEL_16:
      v25 = *(v0 + 184);
      v26 = *(v0 + 152);
      v27 = *(*(v0 + 160) + 8);
      v27(*(v0 + 176), v26);
      v27(v25, v26);
      v23 += v50;
      v21 = v65 - 1;
      if (v65 == 1)
      {
        goto LABEL_28;
      }
    }

    v48 = *(v0 + 176);
    sub_100FE80C8(v46, isUniquelyReferenced_nonNull_native);
    v41 = sub_1000210EC(v48);
    v50 = v64;
    if ((v47 & 1) != (v49 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_22:
    v24 = *(v0 + 112);
    if (v47)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v24 = _swiftEmptyDictionarySingleton;
LABEL_28:
  *(v0 + 240) = v24;

  *(v0 + 120) = v24;
  v59 = swift_task_alloc();
  *(v0 + 248) = v59;
  v60 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v61 = type metadata accessor for OwnerPeerTrust(0);
  v62 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10, &protocol conformance descriptor for [A : B].Values);
  *v59 = v0;
  v59[1] = sub_100D27DA8;
  v63 = *(v0 + 144);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4C08, v63, v60, v61, v62);
}

uint64_t sub_100D28D70()
{
  v68 = v0;
  if (qword_101694E20 != -1)
  {
LABEL_36:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 208);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1000136BC(v8, v9, &v67);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't update the circle, error: %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  sub_100D4A3EC(v5, type metadata accessor for OwnerSharingCircle);
  v11 = *(v0 + 232) + 1;
  if (v11 == *(v0 + 216))
  {

    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 232) = v11;
  v14 = *(v0 + 208);
  v15 = *(v0 + 192);
  sub_100D4A580(*(v0 + 136) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 224) * v11, v14, type metadata accessor for OwnerSharingCircle);
  v16 = *(v14 + *(v15 + 32));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_1003A85FC(*(v16 + 16), 0);
    v19 = sub_1003CC2CC();
    v20 = *(v0 + 16);

    sub_1000128F8(v20);
    if (v19 == v17)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_13:
  v21 = v18[2];
  if (v21)
  {
    v22 = *(v0 + 160);
    v64 = *(v22 + 72);
    v23 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v28 = *(v0 + 184);
      v29 = *(v0 + 176);
      v65 = v21;
      v66 = *(v0 + 168);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v32;
      v33._countAndFlagsBits = 124;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35 = String.utf8Data.getter();
      v37 = v36;

      *(v0 + 96) = v35;
      *(v0 + 104) = v37;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v35, v37);
      v38 = *(v30 + 16);
      v39 = v29;
      v38(v29, v28, v31);
      v38(v66, v23, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v24;
      v41 = sub_1000210EC(v39);
      v43 = v24[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v47 = v42;
      if (v24[3] < v46)
      {
        break;
      }

      v50 = v64;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v58 = v41;
      sub_101005D44();
      v41 = v58;
      v24 = *(v0 + 112);
      if (v47)
      {
LABEL_15:
        (*(*(v0 + 160) + 40))(v24[7] + v41 * v50, *(v0 + 168), *(v0 + 152));
        goto LABEL_16;
      }

LABEL_23:
      v52 = *(v0 + 168);
      v51 = *(v0 + 176);
      v53 = *(v0 + 152);
      v54 = *(v0 + 160);
      v24[(v41 >> 6) + 8] |= 1 << v41;
      v55 = v41 * v50;
      v38(v24[6] + v41 * v50, v51, v53);
      (*(v54 + 32))(v24[7] + v55, v52, v53);
      v56 = v24[2];
      v45 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v45)
      {
        goto LABEL_35;
      }

      v24[2] = v57;
LABEL_16:
      v25 = *(v0 + 184);
      v26 = *(v0 + 152);
      v27 = *(*(v0 + 160) + 8);
      v27(*(v0 + 176), v26);
      v27(v25, v26);
      v23 += v50;
      v21 = v65 - 1;
      if (v65 == 1)
      {
        goto LABEL_28;
      }
    }

    v48 = *(v0 + 176);
    sub_100FE80C8(v46, isUniquelyReferenced_nonNull_native);
    v41 = sub_1000210EC(v48);
    v50 = v64;
    if ((v47 & 1) != (v49 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_22:
    v24 = *(v0 + 112);
    if (v47)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v24 = _swiftEmptyDictionarySingleton;
LABEL_28:
  *(v0 + 240) = v24;

  *(v0 + 120) = v24;
  v59 = swift_task_alloc();
  *(v0 + 248) = v59;
  v60 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v61 = type metadata accessor for OwnerPeerTrust(0);
  v62 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10, &protocol conformance descriptor for [A : B].Values);
  *v59 = v0;
  v59[1] = sub_100D27DA8;
  v63 = *(v0 + 144);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4C08, v63, v60, v61, v62);
}

uint64_t sub_100D2947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v3;
  v6[1] = sub_100D29578;

  return daemon.getter();
}

uint64_t sub_100D29578(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100D2975C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D2975C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100D29BAC;
  }

  else
  {

    *(v4 + 104) = a1;
    v6 = sub_100D29898;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D29898()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_100D29A10;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D4A654, v6, v8);
}

uint64_t sub_100D29A10()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100D29B3C, v1, 0);
}

uint64_t sub_100D29B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D29BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D29C1C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = *(type metadata accessor for PeerCommunicationIdentifier(0) - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D29DBC, v2, 0);
}

uint64_t sub_100D29DBC()
{
  v1 = *(v0[4] + 16);
  v0[15] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_100D29EB0;

    return daemon.getter();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100D29EB0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D42DB8(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v3 = v9;
  v3[1] = sub_100D2A094;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D2A094(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_100D2A94C;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_100D2A1BC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D2A1BC()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[4];
  sub_101124474(0, v0[15], 0);
  v5 = 0;
  v6 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7 = *(v2 + 72);
  do
  {
    v8 = v0[14];
    v9 = v0[12];
    sub_100D4A580(v6, v9, type metadata accessor for OwnerPeerTrust);
    sub_100D4A580(v9 + *(v3 + 28), v8, type metadata accessor for PeerCommunicationIdentifier);
    sub_100D4A3EC(v9, type metadata accessor for OwnerPeerTrust);
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_101124474((v10 > 1), v11 + 1, 1);
    }

    v0[25] = _swiftEmptyArrayStorage;
    v12 = v0[14];
    v13 = v0[15];
    ++v5;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_100D4A2D4(v12, _swiftEmptyArrayStorage + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, type metadata accessor for PeerCommunicationIdentifier);
    v6 += v7;
  }

  while (v5 != v13);
  v14 = v0[6];
  v0[2] = _swiftEmptyArrayStorage;
  v15 = swift_task_alloc();
  v0[21] = v15;
  *(v15 + 16) = v14;
  v16 = swift_task_alloc();
  v0[22] = v16;
  v17 = sub_1000BC4D4(&qword_1016BA518, &qword_1013E4BF8);
  v18 = sub_1000041A4(&qword_1016BA520, &qword_1016BA518, &qword_1013E4BF8, &protocol conformance descriptor for [A]);
  *v16 = v0;
  v16[1] = sub_100D2A434;

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4BF0, v15, v17, &type metadata for MessagingDestination, v18);
}

uint64_t sub_100D2A434(uint64_t a1)
{
  v3 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[5];

    return _swift_task_switch(sub_100D2A584, v5, 0);
  }
}

uint64_t sub_100D2A584()
{
  v21 = v0;
  v1 = v0[24];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = type metadata accessor for OwnerSharingCircle(0);
  (*(v3 + 16))(v6 + v5, v4 + *(v7 + 20), v2);
  sub_100539B70(5, 1, v6, v17);
  if (v1)
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v18;
    v10 = v19;
    v12 = v20;
    v0[26] = v19;
    v0[27] = v12;
    v13 = v17[0];
    v14 = swift_task_alloc();
    v0[28] = v14;
    *v14 = v0;
    v14[1] = sub_100D2A758;
    v15 = v0[23];
    v16 = v0[9];

    return sub_100D1C9D8(v16, v13, v11, v10, v12, v15);
  }
}

uint64_t sub_100D2A758()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[5];

    v4 = sub_100D2A9D8;
  }

  else
  {
    v3 = v2[5];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v4 = sub_100D2A8B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D2A8B8()
{
  v1 = v0[26];
  v2 = v0[27];

  sub_100016590(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D2A94C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D2A9D8()
{
  v1 = v0[26];
  v2 = v0[27];

  sub_100016590(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D2AA74(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  type metadata accessor for PeerCommunicationIdentifier(0);
  v2[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_100D2AB4C;

  return sub_100E8BEF8(a2);
}

uint64_t sub_100D2AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {
    v9 = sub_100D2AD04;
  }

  else
  {
    v8[11] = a3;
    v8[12] = a2;
    v8[13] = a1;
    v9 = sub_100D2AC88;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D2AC88()
{
  v1 = v0[5].i64[1];
  v2 = v0[3].i64[0];
  *v2 = vextq_s8(v0[6], v0[6], 8uLL);
  v2[1].i64[0] = v1;

  v3 = v0->i64[1];

  return v3();
}

uint64_t sub_100D2AD04()
{
  v20 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF80);
  sub_100D4A580(v1, v2, type metadata accessor for PeerCommunicationIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v9 = sub_100988F40();
    v11 = v10;
    sub_100D4A3EC(v7, type metadata accessor for PeerCommunicationIdentifier);
    v12 = sub_1000136BC(v9, v11, &v19);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2082;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v19);

    *(v8 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Can't get messagingDestination for communicationsIdentifier: %{private,mask.hash}s, error: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100D4A3EC(v7, type metadata accessor for PeerCommunicationIdentifier);
  }

  v16 = v0[6];
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D2AFC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CircleTrustService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100D2B070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CircleTrustService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100D2B134(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CircleTrustService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100D2B1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D26CC8();
}

uint64_t sub_100D2B268(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CircleTrustService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100D2B310()
{
  type metadata accessor for CircleTrustService();
  sub_100D42DB8(&unk_101698CE0, v0, type metadata accessor for CircleTrustService, &unk_1013E49D8);
  return ActorServiceProtocol.description.getter();
}

void sub_100D2B378(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, unint64_t a24)
{
  v90 = a8;
  v101 = a7;
  v102 = a5;
  v86 = a4;
  v89 = a3;
  v88 = a2;
  v87 = a1;
  v108 = a24;
  LODWORD(v109) = a22;
  v103 = a20;
  v92 = a18;
  v104 = a17;
  v105 = a21;
  v93 = a16;
  v94 = a19;
  v106 = a15;
  v99 = a13;
  v100 = a14;
  v91 = a12;
  v95 = a11;
  v98 = a10;
  v96 = a9;
  v97 = *v24;
  v85 = type metadata accessor for UUID();
  v26 = *(v85 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v85);
  v107 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v75 - v29;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v34);
  v36 = &v75 - v35;
  if ((sub_100E8F8C0() & 1) != 0 && v109 == 2)
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177BF80);
    v109 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v109, v38, "handleCircleTrust received by underage account. Ignoring it.", v39, 2u);
    }

    v40 = v109;
  }

  else
  {
    v84 = type metadata accessor for Transaction();
    sub_1000D2A70(v86, v36, &qword_1016980D0, &unk_10138F3B0);
    v86 = a6;
    v83 = a23;
    v41 = *(v26 + 16);
    v81 = v30;
    v42 = v30;
    v43 = v85;
    v41(v42, v87, v85);
    v41(v107, v88, v43);
    v82 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000D2A70(v89, v82, &qword_1016980D0, &unk_10138F3B0);
    v44 = *(v32 + 80);
    v45 = (v44 + 17) & ~v44;
    v46 = *(v26 + 80);
    v47 = (v33 + v46 + v45) & ~v46;
    v48 = (v27 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 31) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v46 + v50 + 16) & ~v46;
    v51 = (v27 + v44 + v75) & ~v44;
    v77 = (v33 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v80 + 19) & 0xFFFFFFFFFFFFFFF8;
    v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v109;
    sub_1000D2AD8(v36, v52 + v45, &qword_1016980D0, &unk_10138F3B0);
    v53 = *(v26 + 32);
    v53(v52 + v47, v81, v43);
    v54 = v52 + v48;
    *v54 = v92;
    v55 = v93;
    v56 = v103;
    *(v54 + 8) = v94;
    *(v54 + 16) = v56;
    v57 = (v52 + v49);
    v59 = v104;
    v58 = v105;
    *v57 = v55;
    v57[1] = v59;
    *(v52 + v76) = v58;
    v60 = (v52 + v50);
    v61 = v83;
    v62 = v107;
    v63 = v108;
    *v60 = v83;
    v60[1] = v63;
    v53(v52 + v75, v62, v43);
    sub_1000D2AD8(v82, v52 + v51, &qword_1016980D0, &unk_10138F3B0);
    v64 = (v52 + v77);
    v65 = v90;
    v66 = v91;
    *v64 = v95;
    v64[1] = v66;
    v67 = (v52 + v78);
    v68 = v102;
    *v67 = v101;
    v67[1] = v65;
    v69 = (v52 + v80);
    v70 = v86;
    *v69 = v68;
    v69[1] = v70;
    v71 = (v52 + v88);
    v72 = v98;
    *v71 = v96;
    v71[1] = v72;
    *(v52 + v89) = v99;
    v73 = (v52 + v87);
    v74 = v106;
    *v73 = v100;
    v73[1] = v74;
    *(v52 + v79) = v97;

    sub_100017D5C(v61, v108);

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_100D2BA20(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v28;
  *(v8 + 240) = v29;
  *(v8 + 868) = v26;
  *(v8 + 864) = v25;
  *(v8 + 216) = v24;
  *(v8 + 224) = v27;
  *(v8 + 200) = v23;
  *(v8 + 184) = v22;
  *(v8 + 168) = v21;
  *(v8 + 152) = v20;
  *(v8 + 136) = v19;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 881) = a4;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 880) = a1;
  v9 = type metadata accessor for PeerTrustEnvelopeV1(0);
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016BA4F0, &qword_1013E4B68);
  *(v8 + 272) = v10;
  *(v8 + 280) = *(v10 - 8);
  *(v8 + 288) = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  *(v8 + 312) = *(v12 + 64);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  *(v8 + 368) = v13;
  v14 = *(v13 - 8);
  *(v8 + 376) = v14;
  *(v8 + 384) = *(v14 + 64);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
  *(v8 + 440) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v8 + 472) = v15;
  *(v8 + 480) = *(v15 - 8);
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v8 + 528) = v16;
  *v16 = v8;
  v16[1] = sub_100D2BE2C;

  return daemon.getter();
}

uint64_t sub_100D2BE2C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[67] = a1;

  v3 = swift_task_alloc();
  v2[68] = v3;
  v4 = type metadata accessor for Daemon();
  v2[69] = v4;
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[70] = v6;
  v7 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_100D2C020;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D2C020(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 568) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100D2C1CC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 576) = v5;
    *v5 = v4;
    v5[1] = sub_100D2C3FC;

    return daemon.getter();
  }
}

uint64_t sub_100D2C1CC()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconSharingService available!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D2C3FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 584) = a1;

  v5 = swift_task_alloc();
  *(v3 + 592) = v5;
  v6 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v7 = sub_100D42DB8(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v5 = v4;
  v5[1] = sub_100D2C5B4;
  v8 = *(v2 + 560);
  v9 = *(v2 + 552);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D2C5B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {

    v4 = sub_100D2C708;
  }

  else
  {

    v4 = sub_100D2C944;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D2C708()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No IDSTransportService_ItemSharingCrossAccount available!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D2C944()
{
  v1 = *(v0 + 880);
  if (v1 == 2)
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 480);
    v4 = *(v0 + 464);
    sub_1000D2A70(*(v0 + 88), v4, &qword_1016980D0, &unk_10138F3B0);
    v5 = *(v3 + 48);
    *(v0 + 616) = v5;
    *(v0 + 624) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v5(v4, 1, v2) != 1)
    {
      v66 = *(v0 + 568);
      v67 = *(v0 + 520);
      v68 = *(v0 + 472);
      v69 = *(v0 + 480);
      v70 = *(v0 + 464);
      v71 = *(v69 + 32);
      *(v0 + 632) = v71;
      *(v0 + 640) = (v69 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v71(v67, v70, v68);
      v64 = sub_100D2D018;
      v65 = v66;
      goto LABEL_13;
    }

    sub_10000B3A8(*(v0 + 464), &qword_1016980D0, &unk_10138F3B0);
    LOBYTE(v1) = *(v0 + 880);
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 432);
  v9 = *(v0 + 368);
  v116 = *(v0 + 128);
  v119 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 881);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = v9[12];
  v16 = v8 + v9[16];
  v110 = v9;
  v17 = (v8 + v9[20]);
  v18 = *(v7 + 16);
  *(v0 + 712) = v18;
  *(v0 + 720) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v111 = v18;
  (v18)(v8, v13, v6);
  *(v8 + v15) = v1;
  *v16 = v12;
  *(v16 + 8) = v14;
  *(v16 + 16) = v11;
  *v17 = v10;
  v17[1] = v116;
  v19 = *(v119 + 16);
  if (v19)
  {
    v20 = *(v0 + 480);
    v117 = *(v0 + 272);
    v120 = *(v0 + 280);
    v21 = *(v0 + 256);
    v114 = *(v0 + 248);
    v22 = *(v0 + 136);

    sub_101125748(0, v19, 0);
    v23 = v22 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v112 = *(v21 + 72);
    v24 = (v20 + 32);
    do
    {
      v25 = *(v0 + 472);
      v26 = *(v0 + 288);
      v27 = *(v0 + 264);
      sub_100D4A580(v23, v27, type metadata accessor for PeerTrustEnvelopeV1);
      v28 = (v26 + *(v117 + 48));
      v29 = *(v117 + 64);
      (*v24)(v26, v27, v25);
      v30 = (v27 + *(v114 + 20));
      v32 = *v30;
      v31 = v30[1];
      *v28 = v32;
      v28[1] = v31;
      *(v26 + v29) = *(v27 + *(v114 + 24));
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_101125748((v33 > 1), v34 + 1, 1);
      }

      v35 = *(v0 + 288);
      _swiftEmptyArrayStorage[2] = v34 + 1;
      sub_1000D2AD8(v35, _swiftEmptyArrayStorage + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v34, &qword_1016BA4F0, &qword_1013E4B68);
      v23 += v112;
      --v19;
    }

    while (v19);
  }

  else
  {
  }

  v109 = *(v0 + 568);
  v36 = *(v0 + 424);
  v106 = *(v0 + 416);
  v38 = *(v0 + 360);
  v37 = *(v0 + 368);
  v39 = *(v0 + 352);
  v104 = *(v0 + 472);
  v105 = *(v0 + 344);
  v40 = *(v0 + 296);
  v115 = *(v0 + 240);
  v102 = *(v0 + 224);
  v103 = *(v0 + 232);
  v100 = *(v0 + 868);
  v98 = *(v0 + 864);
  v121 = *(v0 + 216);
  v96 = *(v0 + 208);
  v118 = *(v0 + 200);
  v92 = *(v0 + 192);
  v113 = *(v0 + 184);
  v41 = *(v0 + 160);
  v88 = *(v0 + 168);
  v90 = *(v0 + 176);
  v107 = *(v0 + 144);
  v108 = *(v0 + 152);
  v94 = *(v0 + 432);
  v42 = (v94 + *(v37 + 112));
  *(v94 + *(v37 + 96)) = _swiftEmptyArrayStorage;
  *v42 = v107;
  v42[1] = v108;
  v43 = (v38 + v40[16]);
  v44 = (v38 + v40[20]);
  v45 = (v38 + v40[24]);
  v46 = (v38 + v40[40]);
  v84 = v40[32];
  v86 = v40[28];
  v80 = v40[12];
  v82 = v40[36];
  v111(v38, v41);
  sub_1000D2A70(v88, v38 + v80, &qword_1016980D0, &unk_10138F3B0);
  *v43 = v90;
  v43[1] = v113;
  *v44 = v92;
  v44[1] = v118;
  *v45 = v96;
  v45[1] = v121;
  *(v38 + v86) = v98;
  *(v38 + v84) = v100;
  *(v38 + v82) = v102;
  *v46 = v103;
  v46[1] = v115;
  sub_1000D2A70(v94, v36, &qword_10169EF90, &unk_10139FCF0);
  LOBYTE(v103) = *(v36 + v110[12]);
  v47 = v36 + v110[16];
  LOBYTE(v102) = *v47;
  v99 = *(v47 + 16);
  v101 = *(v47 + 8);
  v48 = (v36 + v110[20]);
  v95 = v48[1];
  v97 = *v48;
  v93 = *(v36 + *(v37 + 96));
  v49 = (v36 + *(v37 + 112));
  v73 = v37;
  v74 = *v49;
  *(v0 + 728) = *v49;
  v50 = v49[1];
  *(v0 + 736) = v50;
  v51 = v50;
  sub_1000D2A70(v38, v39, &qword_10169EF88, &unk_1013E4B70);
  v52 = v40[12];
  *(v0 + 872) = v52;
  v53 = (v39 + v40[16]);
  v89 = v53[1];
  v91 = *v53;
  v54 = (v39 + v40[20]);
  v85 = v54[1];
  v87 = *v54;
  v55 = (v39 + v40[24]);
  v81 = v55[1];
  v83 = *v55;
  v78 = *(v39 + v40[32]);
  v79 = *(v39 + v40[28]);
  v56 = (v39 + v40[40]);
  v76 = *v56;
  v77 = *(v39 + v40[36]);
  v75 = v56[1];
  (v111)(v106, v36, v104);
  *(v106 + v110[12]) = v103;
  v57 = v106 + v110[16];
  *v57 = v102;
  *(v57 + 8) = v101;
  *(v57 + 16) = v99;
  v58 = (v106 + v110[20]);
  *v58 = v97;
  v58[1] = v95;
  *(v106 + *(v73 + 96)) = v93;
  v59 = (v106 + *(v73 + 112));
  *v59 = v74;
  v59[1] = v51;
  (v111)(v105, v39, v104);
  sub_1000D2A70(v39 + v52, v105 + v40[12], &qword_1016980D0, &unk_10138F3B0);
  v60 = (v105 + v40[16]);
  *v60 = v91;
  v60[1] = v89;
  v61 = (v105 + v40[20]);
  *v61 = v87;
  v61[1] = v85;
  v62 = (v105 + v40[24]);
  *v62 = v83;
  v62[1] = v81;
  *(v105 + v40[28]) = v79;
  *(v105 + v40[32]) = v78;
  *(v105 + v40[36]) = v77;
  v63 = (v105 + v40[40]);
  *v63 = v76;
  v63[1] = v75;
  sub_100017D5C(v107, v108);

  sub_100017D5C(v74, v51);
  v64 = sub_100D2E2A0;
  v65 = v109;
LABEL_13:

  return _swift_task_switch(v64, v65, 0);
}

uint64_t sub_100D2D018()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 520);
  swift_beginAccess();
  v3 = *(v1 + 240);

  *(v0 + 882) = sub_1005C8A30(v2, v3);

  return _swift_task_switch(sub_100D2D0BC, 0, 0);
}

uint64_t sub_100D2D0BC()
{
  v161 = v0;
  if (*(v0 + 882) == 1)
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 520);
    v3 = *(v0 + 504);
    v2 = *(v0 + 512);
    v4 = *(v0 + 472);
    v5 = *(v0 + 480);
    v6 = *(v0 + 96);
    v7 = type metadata accessor for Logger();
    *(v0 + 648) = sub_1000076D4(v7, qword_10177BF80);
    v8 = *(v5 + 16);
    *(v0 + 656) = v8;
    *(v0 + 664) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v2, v1, v4);
    v8(v3, v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    if (v11)
    {
      v151 = v10;
      v16 = swift_slowAlloc();
      v158[0] = swift_slowAlloc();
      *v16 = 141558787;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v148 = v9;
      v17 = v8;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v13;
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v12, v15);
      v22 = v18;
      v8 = v17;
      v23 = sub_1000136BC(v22, v20, v158);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v21(v145, v15);
      v27 = sub_1000136BC(v24, v26, v158);

      *(v16 + 34) = v27;
      _os_log_impl(&_mh_execute_header, v148, v151, "handleCircleTrust received for newly declined share with %{private,mask.hash}s. Declining it.\nDeclined share identifier %{private,mask.hash}s.", v16, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v21 = *(v14 + 8);
      v21(v13, v15);
      v21(v12, v15);
    }

    *(v0 + 672) = v21;
    v61 = *(v0 + 608);
    v62 = *(v0 + 440);
    v8(v62, *(v0 + 96), *(v0 + 472));
    sub_10053D23C(4, 1, v62, v158);
    if (v61)
    {
      v63 = *(v0 + 520);
      v64 = *(v0 + 472);

      v21(v63, v64);

      v65 = *(v0 + 8);

      return v65();
    }

    else
    {
      v96 = *(v0 + 104);
      v97 = *(v0 + 112);
      v98 = *(v0 + 881);
      v100 = v158[1];
      v99 = v159;
      *(v0 + 680) = v159;
      v101 = v160;
      *(v0 + 688) = v160;
      v102 = v158[0];
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v103 = swift_allocObject();
      *(v0 + 696) = v103;
      *(v103 + 16) = xmmword_101385D80;
      *(v103 + 32) = v98;
      *(v103 + 40) = v96;
      *(v103 + 48) = v97;

      v104 = swift_task_alloc();
      *(v0 + 704) = v104;
      *v104 = v0;
      v104[1] = sub_100D2DC64;
      v105 = *(v0 + 456);

      return sub_100D1C9D8(v105, v102, v100, v99, v101, v103);
    }
  }

  else
  {
    (*(*(v0 + 480) + 8))(*(v0 + 520), *(v0 + 472));
    v28 = *(v0 + 472);
    v29 = *(v0 + 480);
    v30 = *(v0 + 432);
    v31 = *(v0 + 368);
    v152 = *(v0 + 128);
    v155 = *(v0 + 136);
    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 881);
    v35 = *(v0 + 96);
    v36 = *(v0 + 104);
    v37 = *(v0 + 880);
    v38 = v31[12];
    v39 = v30 + v31[16];
    v143 = v31;
    v40 = (v30 + v31[20]);
    v41 = *(v29 + 16);
    *(v0 + 712) = v41;
    *(v0 + 720) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v144 = v41;
    (v41)(v30, v35, v28);
    *(v30 + v38) = v37;
    *v39 = v34;
    *(v39 + 8) = v36;
    *(v39 + 16) = v33;
    *v40 = v32;
    v40[1] = v152;
    v42 = *(v155 + 16);
    if (v42)
    {
      v43 = *(v0 + 480);
      v153 = *(v0 + 272);
      v156 = *(v0 + 280);
      v44 = *(v0 + 256);
      v149 = *(v0 + 248);
      v45 = *(v0 + 136);
      v158[0] = _swiftEmptyArrayStorage;

      sub_101125748(0, v42, 0);
      v46 = _swiftEmptyArrayStorage;
      v47 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v146 = *(v44 + 72);
      v48 = (v43 + 32);
      v49 = v0;
      do
      {
        v50 = *(v49 + 472);
        v51 = *(v49 + 288);
        v52 = *(v49 + 264);
        sub_100D4A580(v47, v52, type metadata accessor for PeerTrustEnvelopeV1);
        v53 = (v51 + *(v153 + 48));
        v54 = *(v153 + 64);
        (*v48)(v51, v52, v50);
        v55 = (v52 + *(v149 + 20));
        v57 = *v55;
        v56 = v55[1];
        *v53 = v57;
        v53[1] = v56;
        *(v51 + v54) = *(v52 + *(v149 + 24));
        v158[0] = v46;
        v59 = v46[2];
        v58 = v46[3];
        if (v59 >= v58 >> 1)
        {
          sub_101125748((v58 > 1), v59 + 1, 1);
          v46 = v158[0];
        }

        v60 = *(v49 + 288);
        v46[2] = v59 + 1;
        sub_1000D2AD8(v60, v46 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v59, &qword_1016BA4F0, &qword_1013E4B68);
        v47 += v146;
        --v42;
      }

      while (v42);
    }

    else
    {

      v46 = _swiftEmptyArrayStorage;
      v49 = v0;
    }

    v142 = *(v49 + 568);
    v67 = *(v49 + 424);
    v139 = *(v49 + 416);
    v69 = *(v49 + 360);
    v68 = *(v49 + 368);
    v70 = *(v49 + 352);
    v137 = *(v49 + 472);
    v138 = *(v49 + 344);
    v71 = v49;
    v72 = *(v49 + 296);
    v150 = *(v49 + 240);
    v135 = *(v49 + 224);
    v136 = *(v49 + 232);
    v133 = *(v49 + 868);
    v131 = *(v49 + 864);
    v157 = *(v49 + 216);
    v129 = *(v49 + 208);
    v154 = *(v49 + 200);
    v125 = *(v49 + 192);
    v147 = *(v49 + 184);
    v73 = *(v49 + 160);
    v121 = *(v49 + 168);
    v123 = *(v49 + 176);
    v140 = *(v49 + 144);
    v141 = *(v49 + 152);
    v127 = *(v49 + 432);
    v74 = (v127 + *(v68 + 112));
    *(v127 + *(v68 + 96)) = v46;
    *v74 = v140;
    v74[1] = v141;
    v75 = (v69 + v72[16]);
    v76 = (v69 + v72[20]);
    v77 = (v69 + v72[24]);
    v78 = (v69 + v72[40]);
    v117 = v72[32];
    v119 = v72[28];
    v113 = v72[12];
    v115 = v72[36];
    v144(v69, v73);
    sub_1000D2A70(v121, v69 + v113, &qword_1016980D0, &unk_10138F3B0);
    *v75 = v123;
    v75[1] = v147;
    *v76 = v125;
    v76[1] = v154;
    *v77 = v129;
    v77[1] = v157;
    *(v69 + v119) = v131;
    *(v69 + v117) = v133;
    *(v69 + v115) = v135;
    *v78 = v136;
    v78[1] = v150;
    sub_1000D2A70(v127, v67, &qword_10169EF90, &unk_10139FCF0);
    LOBYTE(v136) = *(v67 + v143[12]);
    v79 = v67 + v143[16];
    LOBYTE(v135) = *v79;
    v132 = *(v79 + 16);
    v134 = *(v79 + 8);
    v80 = (v67 + v143[20]);
    v128 = v80[1];
    v130 = *v80;
    v126 = *(v67 + *(v68 + 96));
    v81 = (v67 + *(v68 + 112));
    v106 = v68;
    v107 = *v81;
    *(v71 + 728) = *v81;
    v82 = v81[1];
    *(v71 + 736) = v82;
    v83 = v82;
    sub_1000D2A70(v69, v70, &qword_10169EF88, &unk_1013E4B70);
    v84 = v72[12];
    *(v71 + 872) = v84;
    v85 = (v70 + v72[16]);
    v122 = v85[1];
    v124 = *v85;
    v86 = (v70 + v72[20]);
    v118 = v86[1];
    v120 = *v86;
    v87 = (v70 + v72[24]);
    v114 = v87[1];
    v116 = *v87;
    v111 = *(v70 + v72[32]);
    v112 = *(v70 + v72[28]);
    v88 = (v70 + v72[40]);
    v109 = *v88;
    v110 = *(v70 + v72[36]);
    v108 = v88[1];
    (v144)(v139, v67, v137);
    *(v139 + v143[12]) = v136;
    v89 = v139 + v143[16];
    *v89 = v135;
    *(v89 + 8) = v134;
    *(v89 + 16) = v132;
    v90 = (v139 + v143[20]);
    *v90 = v130;
    v90[1] = v128;
    *(v139 + *(v106 + 96)) = v126;
    v91 = (v139 + *(v106 + 112));
    *v91 = v107;
    v91[1] = v83;
    (v144)(v138, v70, v137);
    sub_1000D2A70(v70 + v84, v138 + v72[12], &qword_1016980D0, &unk_10138F3B0);
    v92 = (v138 + v72[16]);
    *v92 = v124;
    v92[1] = v122;
    v93 = (v138 + v72[20]);
    *v93 = v120;
    v93[1] = v118;
    v94 = (v138 + v72[24]);
    *v94 = v116;
    v94[1] = v114;
    *(v138 + v72[28]) = v112;
    *(v138 + v72[32]) = v111;
    *(v138 + v72[36]) = v110;
    v95 = (v138 + v72[40]);
    *v95 = v109;
    v95[1] = v108;
    sub_100017D5C(v140, v141);

    sub_100017D5C(v107, v83);

    return _swift_task_switch(sub_100D2E2A0, v142, 0);
  }
}

uint64_t sub_100D2DC64()
{

  if (v0)
  {

    v1 = sub_100D2F59C;
  }

  else
  {

    v1 = sub_100D2DDAC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100D2DDAC()
{
  v42 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  (*(*(v0 + 480) + 56))(v3, 0, 1, v2);
  sub_1000D2A70(v3, v4, &qword_1016980D0, &unk_10138F3B0);
  v5 = v1(v4, 1, v2);
  v6 = *(v0 + 448);
  if (v5 == 1)
  {
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    v9 = *(v0 + 672);
    v10 = *(v0 + 520);
    v11 = *(v0 + 472);
    v12 = *(v0 + 456);

    sub_100016590(v8, v7);

    sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
    v9(v10, v11);
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v13 = *(v0 + 656);
    v15 = *(v0 + 488);
    v14 = *(v0 + 496);
    v16 = *(v0 + 472);
    (*(v0 + 632))(v14, *(v0 + 448), v16);
    v13(v15, v14, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v39 = *(v0 + 680);
    v40 = *(v0 + 688);
    v20 = *(v0 + 672);
    v21 = *(v0 + 520);
    v22 = *(v0 + 488);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 456);
    if (v19)
    {
      v36 = v18;
      v26 = *(v0 + 672);
      v27 = swift_slowAlloc();
      v38 = v21;
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = v25;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v23;
      v31 = v30;
      v26(v22, v24);
      v32 = sub_1000136BC(v29, v31, &v41);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v17, v36, "Decline message identifier is %{private,mask.hash}s.", v27, 0x16u);
      sub_100007BAC(v28);

      sub_100016590(v39, v40);

      v26(v35, v24);
      sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
      v26(v38, v24);
    }

    else
    {

      sub_100016590(v39, v40);

      v20(v22, v24);
      v20(v23, v24);
      sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
      v20(v21, v24);
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100D2E2A0()
{
  v66 = v0;
  v1 = qword_101698690;
  *(v0 + 744) = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  if (qword_101694480 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v64 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v65 = v7;
    *v6 = 136315138;
    *(v0 + 80) = v1;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v65);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Handle incoming share suggestion", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v63 = *(v0 + 712);
  v11 = *(v0 + 568);
  v46 = *(v0 + 472);
  v12 = *(v0 + 408);
  v40 = *(v0 + 400);
  v13 = *(v0 + 368);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = *(v0 + 296);
  sub_1000D2A70(*(v0 + 416), v12, &qword_10169EF90, &unk_10139FCF0);
  v18 = v12 + v13[16];
  v54 = *v18;
  v55 = *(v12 + v13[12]);
  v52 = *(v18 + 16);
  v53 = *(v18 + 8);
  v19 = (v12 + v13[20]);
  v50 = v19[1];
  v51 = *v19;
  v49 = *(v12 + v13[24]);
  v20 = (v12 + v13[28]);
  v21 = *v20;
  *(v0 + 752) = *v20;
  v44 = v20[1];
  v45 = v21;
  *(v0 + 760) = v44;
  sub_1000D2A70(v14, v15, &qword_10169EF88, &unk_1013E4B70);
  v43 = v17[12];
  *(v0 + 876) = v43;
  v22 = (v15 + v17[16]);
  v61 = v22[1];
  v62 = *v22;
  v23 = (v15 + v17[20]);
  v60 = *v23;
  v59 = v23[1];
  v24 = (v15 + v17[24]);
  v57 = *(v15 + v17[32]);
  v58 = *(v15 + v17[28]);
  v56 = *(v15 + v17[36]);
  v41 = v24[1];
  v42 = *v24;
  v25 = (v15 + v17[40]);
  v47 = v25[1];
  v48 = *v25;
  v26 = *(v11 + 200);
  *(v0 + 40) = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 48) = &off_1016634E8;
  *(v0 + 16) = v26;
  v27 = swift_allocObject();
  *(v0 + 768) = v27;
  swift_weakInit();
  v28 = swift_allocObject();
  *(v0 + 776) = v28;
  *(v28 + 16) = v27;
  *(v28 + 24) = v64;
  *(v28 + 32) = 0;
  v29 = swift_allocObject();
  *(v0 + 784) = v29;
  swift_weakInit();
  v30 = swift_allocObject();
  *(v0 + 792) = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v64;
  *(v30 + 32) = 0;
  v63(v40, v12, v46);
  *(v40 + v13[12]) = v55;
  v31 = v40 + v13[16];
  *v31 = v54;
  *(v31 + 8) = v53;
  *(v31 + 16) = v52;
  v32 = (v40 + v13[20]);
  *v32 = v51;
  v32[1] = v50;
  *(v40 + v13[24]) = v49;
  v33 = (v40 + v13[28]);
  *v33 = v45;
  v33[1] = v44;
  v63(v16, v15, v46);
  sub_1000D2A70(v15 + v43, v16 + v17[12], &qword_1016980D0, &unk_10138F3B0);
  v34 = (v16 + v17[16]);
  *v34 = v62;
  v34[1] = v61;
  v35 = (v16 + v17[20]);
  *v35 = v60;
  v35[1] = v59;
  v36 = (v16 + v17[24]);
  *v36 = v42;
  v36[1] = v41;
  *(v16 + v17[28]) = v58;
  *(v16 + v17[32]) = v57;
  *(v16 + v17[36]) = v56;
  v37 = (v16 + v17[40]);
  *v37 = v48;
  v37[1] = v47;

  sub_100017D5C(v45, v44);
  v38 = swift_task_alloc();
  *(v0 + 800) = v38;
  *v38 = v0;
  v38[1] = sub_100D2E7AC;

  return sub_1003AE100(v0 + 16);
}

uint64_t sub_100D2E7AC(uint64_t a1)
{
  *(*v2 + 808) = a1;

  if (v1)
  {

    v3 = sub_100D2EC78;
  }

  else
  {
    v3 = sub_100D2E8C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D2E8C8()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[101];
  v20 = v0[97];
  v21 = v0[99];
  v18 = v0[93];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[38];
  v8 = v0[39];
  sub_1000D2A70(v0[50], v2, &qword_10169EF90, &unk_10139FCF0);
  sub_1000D2A70(v5, v6, &qword_10169EF88, &unk_1013E4B70);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v4 + *(v7 + 80) + v9) & ~*(v7 + 80);
  v11 = (v10 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[102] = v12;
  *(v12 + 16) = v1;
  sub_1000D2AD8(v2, v12 + v9, &qword_10169EF90, &unk_10139FCF0);
  sub_1000D2AD8(v6, v12 + v10, &qword_10169EF88, &unk_1013E4B70);
  v13 = v12 + ((v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v18;
  *(v13 + 8) = 0;
  v14 = (v12 + v11);
  *v14 = &unk_1013E4B80;
  v14[1] = v20;
  v15 = (v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v15 = &unk_1013E4B88;
  v15[1] = v21;
  v19 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v16 = swift_task_alloc();
  v0[103] = v16;
  *v16 = v0;
  v16[1] = sub_100D2EB30;

  return v19(&unk_1013E4B90, v12);
}

uint64_t sub_100D2EB30()
{

  if (v0)
  {

    v1 = sub_100D2F180;
  }

  else
  {

    v1 = sub_100D2ED40;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100D2EC78()
{
  v1 = v0[95];
  v2 = v0[94];

  sub_100016590(v2, v1);
  v3 = v0[71];
  v4 = v0[50];
  sub_10000B3A8(v0[41], &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v4, &qword_10169EF90, &unk_10139FCF0);

  return _swift_task_switch(sub_100D2F254, v3, 0);
}

uint64_t sub_100D2ED40()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v12 = *(v0 + 568);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  v5 = *(v0 + 400);
  v10 = *(v0 + 876);
  v11 = *(v0 + 408);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);

  sub_100016590(v2, v1);

  sub_10000B3A8(v7, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v5, &qword_10169EF90, &unk_10139FCF0);

  sub_100007BAC((v0 + 16));
  sub_10000B3A8(v6 + v10, &qword_1016980D0, &unk_10138F3B0);
  v8 = *(v4 + 8);
  *(v0 + 832) = v8;
  *(v0 + 840) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v6, v3);
  v8(v11, v3);

  return _swift_task_switch(sub_100D2EEBC, v12, 0);
}

uint64_t sub_100D2EEBC()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 872);
  v3 = *(v0 + 472);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  sub_100016590(*(v0 + 728), *(v0 + 736));
  sub_10000B3A8(v7, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v5, &qword_10169EF90, &unk_10139FCF0);
  sub_10000B3A8(v6 + v2, &qword_1016980D0, &unk_10138F3B0);
  v1(v6, v3);
  v1(v4, v3);

  return _swift_task_switch(sub_100D2EFB8, 0, 0);
}

uint64_t sub_100D2EFB8()
{
  v1 = v0[54];
  v2 = v0[45];

  sub_10000B3A8(v2, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v1, &qword_10169EF90, &unk_10139FCF0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D2F180()
{
  v1 = v0[95];
  v2 = v0[94];

  sub_100016590(v2, v1);

  v3 = v0[71];
  v4 = v0[50];
  sub_10000B3A8(v0[41], &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v4, &qword_10169EF90, &unk_10139FCF0);

  return _swift_task_switch(sub_100D2F254, v3, 0);
}

uint64_t sub_100D2F254()
{
  v1 = *(v0 + 876);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  sub_100016590(*(v0 + 728), *(v0 + 736));
  sub_10000B3A8(v6, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v4, &qword_10169EF90, &unk_10139FCF0);

  sub_100007BAC((v0 + 16));
  sub_10000B3A8(v7 + v1, &qword_1016980D0, &unk_10138F3B0);
  v8 = *(v3 + 8);
  *(v0 + 848) = v8;
  *(v0 + 856) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v7, v2);
  v8(v5, v2);

  return _swift_task_switch(sub_100D2F394, 0, 0);
}

uint64_t sub_100D2F394()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 872);
  v3 = *(v0 + 472);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);

  sub_10000B3A8(v6, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v4, &qword_10169EF90, &unk_10139FCF0);
  sub_10000B3A8(v7 + v2, &qword_1016980D0, &unk_10138F3B0);
  v1(v7, v3);
  v1(v5, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D2F59C()
{
  v42 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  (*(*(v0 + 480) + 56))(v3, 1, 1, v2);
  sub_1000D2A70(v3, v4, &qword_1016980D0, &unk_10138F3B0);
  v5 = v1(v4, 1, v2);
  v6 = *(v0 + 448);
  if (v5 == 1)
  {
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    v9 = *(v0 + 672);
    v10 = *(v0 + 520);
    v11 = *(v0 + 472);
    v12 = *(v0 + 456);

    sub_100016590(v8, v7);

    sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
    v9(v10, v11);
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v13 = *(v0 + 656);
    v15 = *(v0 + 488);
    v14 = *(v0 + 496);
    v16 = *(v0 + 472);
    (*(v0 + 632))(v14, *(v0 + 448), v16);
    v13(v15, v14, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v39 = *(v0 + 680);
    v40 = *(v0 + 688);
    v20 = *(v0 + 672);
    v21 = *(v0 + 520);
    v22 = *(v0 + 488);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 456);
    if (v19)
    {
      v36 = v18;
      v26 = *(v0 + 672);
      v27 = swift_slowAlloc();
      v38 = v21;
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = v25;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v23;
      v31 = v30;
      v26(v22, v24);
      v32 = sub_1000136BC(v29, v31, &v41);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v17, v36, "Decline message identifier is %{private,mask.hash}s.", v27, 0x16u);
      sub_100007BAC(v28);

      sub_100016590(v39, v40);

      v26(v35, v24);
      sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
      v26(v38, v24);
    }

    else
    {

      sub_100016590(v39, v40);

      v20(v22, v24);
      v20(v23, v24);
      sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
      v20(v21, v24);
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100D2FA90(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 208) = a2;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v6 + 96) = v9;
  *v9 = v6;
  v9[1] = sub_100D2FBA0;

  return daemon.getter();
}

uint64_t sub_100D2FBA0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100D2FD94;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D2FD94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100D2FF40, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 144) = v5;
    *v5 = v4;
    v5[1] = sub_100D30064;

    return daemon.getter();
  }
}

uint64_t sub_100D2FF40()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D30064(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 152) = a1;

  v5 = swift_task_alloc();
  *(v3 + 160) = v5;
  v6 = type metadata accessor for PeerTrustService();
  v7 = sub_100D42DB8(&qword_1016B1190, 255, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v5 = v4;
  v5[1] = sub_100D3021C;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D3021C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100D303C8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 176) = v5;
    *v5 = v4;
    v5[1] = sub_100D304F8;

    return daemon.getter();
  }
}

uint64_t sub_100D303C8()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No PeerTrustService available!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D304F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 184) = a1;

  v5 = swift_task_alloc();
  *(v3 + 192) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_100D42DB8(&unk_1016AF840, 255, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_100D306B0;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D306B0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100D30804;
  }

  else
  {

    *(v4 + 200) = a1;
    v5 = sub_100D30948;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D30804()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No FamilyCircleService available!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D30948()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v16 = *(v0 + 168);
  v17 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 208);
  v14 = v3;
  v15 = *(v0 + 24);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v4 + 16))(v3, v8, v6);
  v10 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v9;
  *(v11 + 32) = v15;
  *(v11 + 40) = v7;
  *(v11 + 48) = v16;
  *(v11 + 56) = v2;
  (*(v4 + 32))(v11 + v10, v14, v6);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100D30B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 64) = a3;
  *(v7 + 352) = a2;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v7 + 104) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v7 + 112) = swift_task_alloc();
  v11 = type metadata accessor for OwnerSharingCircle(0);
  *(v7 + 120) = v11;
  *(v7 + 128) = *(v11 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v12 = type metadata accessor for OwnerPeerTrust(0);
  *(v7 + 152) = v12;
  *(v7 + 160) = *(v12 - 8);
  *(v7 + 168) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v7 + 176) = v13;
  *(v7 + 184) = *(v13 - 8);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v7 + 232) = v14;
  *v14 = v7;
  v14[1] = sub_100D30DC4;

  return sub_100D4E560(a2, a3, a4);
}

uint64_t sub_100D30DC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 240) = a2;
  *(v4 + 248) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100D31058, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v4 + 256) = v5;
    *v5 = v4;
    v5[1] = sub_100D30F3C;
    v6 = *(v4 + 72);
    v7 = *(v4 + 64);
    v8 = *(v4 + 352);

    return sub_100E86158(v8, v7, v6);
  }
}

uint64_t sub_100D30F3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_100D32B54;
  }

  else
  {
    v4 = sub_100D31380;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D31058()
{
  v23 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[12];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF80);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_1000136BC(v17, v18, &v22);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D31380()
{
  v1 = v0[33];
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = v0[28];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[21];
    v7 = v0[19];
    v8 = v0[11];
    v9 = *(v0[20] + 80);
    sub_100D4A580(v1 + ((v9 + 32) & ~v9), v6, type metadata accessor for OwnerPeerTrust);

    v10 = *(v7 + 20);
    v11 = *(v5 + 16);
    v0[35] = v11;
    v0[36] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v2, v6 + v10, v4);
    sub_100D4A3EC(v6, type metadata accessor for OwnerPeerTrust);
    (*(v5 + 32))(v3, v2, v4);

    return _swift_task_switch(sub_100D31578, v8, 0);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100D31578()
{

  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100D31664;
  v3 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_100D31664()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100D3177C, v1, 0);
}

uint64_t sub_100D317A0()
{
  v88 = v0;
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  *(swift_task_alloc() + 16) = v6;
  sub_1012BC194(sub_100D48D3C, v1, v5);

  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = v0[30];
  if (v7 == 1)
  {
    v9 = v0[14];
    (*(v0[23] + 8))(v0[28], v0[22]);

    sub_10000B3A8(v9, &unk_1016AFA00, &qword_10138C4D0);
LABEL_25:

    v59 = v0[1];

    return v59();
  }

  sub_100D4A2D4(v0[14], v0[18], type metadata accessor for OwnerSharingCircle);
  if (v8)
  {
  }

  else
  {
    sub_101129F64(&off_10160D0A8);
    v10 = sub_10112C0E0();

    if (v10)
    {
      if (qword_101694E20 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177BF80);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Ignoring incoming UTFS message from non-family member", v14, 2u);
      }

      v15 = v0[28];
      v16 = v0[22];
      v17 = v0[23];
      v18 = v0[18];

      (*(v17 + 8))(v15, v16);
      v19 = v18;
      goto LABEL_24;
    }
  }

  v20 = *(v0[18] + *(v0[15] + 32));
  v0[7] = v20;
  v21 = *(v20 + 16);

  if (!v21 || (v22 = sub_1000210EC(v0[28]), (v23 & 1) == 0) || *(*(v20 + 56) + v22) != 3)
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v40 = v0[35];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[22];
    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177BF80);
    v40(v42, v41, v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[28];
    v49 = v0[25];
    v50 = v0[22];
    v51 = v0[23];
    if (v47)
    {
      v52 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87[0] = v86;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v48;
      v55 = v54;
      v56 = *(v51 + 8);
      v56(v49, v50);
      v57 = sub_1000136BC(v53, v55, v87);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "Member already acked: %{private,mask.hash}s!", v52, 0x16u);
      sub_100007BAC(v86);

      v56(v85, v50);
    }

    else
    {

      v58 = *(v51 + 8);
      v58(v49, v50);
      v58(v48, v50);
    }

    v19 = v0[18];
LABEL_24:
    sub_100D4A3EC(v19, type metadata accessor for OwnerSharingCircle);
    goto LABEL_25;
  }

  v24 = v0 + 7;
  v25 = v0[28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v20;
  sub_100FFB6DC(0, v25, isUniquelyReferenced_nonNull_native);
  v0[7] = v20;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v29 = v0[17];
  v28 = v0[18];
  v30 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v30, qword_10177BF80);
  sub_100D4A580(v28, v29, type metadata accessor for OwnerSharingCircle);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[17];
    v34 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    v35 = v87[0];
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    sub_100D4A3EC(v33, type metadata accessor for OwnerSharingCircle);
    v39 = sub_1000136BC(v36, v38, v87);

    *(v34 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Data update on handle circle trust ack. Update %{private,mask.hash}s", v34, 0x16u);
    sub_100007BAC(v35);
    v24 = v0 + 7;

    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  }

  else
  {
    v61 = v0[17];

    sub_100D4A3EC(v61, type metadata accessor for OwnerSharingCircle);
  }

  v62 = v0[18];
  v63 = v0[13];
  v64 = swift_task_alloc();
  *(v64 + 16) = v62;
  *(v64 + 24) = v24;
  sub_100EC0C48(sub_100D48DA8, v63);
  if (v2)
  {
    v65 = v0[18];
    (*(v0[23] + 8))(v0[28], v0[22]);

    sub_100D4A3EC(v65, type metadata accessor for OwnerSharingCircle);
    if (p_weak_ivar_lyt[452] != -1)
    {
      swift_once();
    }

    v67 = v0[23];
    v66 = v0[24];
    v68 = v0[22];
    v69 = v0[12];
    sub_1000076D4(v30, qword_10177BF80);
    (*(v67 + 16))(v66, v69, v68);
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    v72 = os_log_type_enabled(v70, v71);
    v74 = v0[23];
    v73 = v0[24];
    v75 = v0[22];
    if (v72)
    {
      v76 = swift_slowAlloc();
      v87[0] = swift_slowAlloc();
      *v76 = 141558531;
      *(v76 + 4) = 1752392040;
      *(v76 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v74 + 8))(v73, v75);
      v80 = sub_1000136BC(v77, v79, v87);

      *(v76 + 14) = v80;
      *(v76 + 22) = 2082;
      swift_getErrorValue();
      v81 = Error.localizedDescription.getter();
      v83 = sub_1000136BC(v81, v82, v87);

      *(v76 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v76, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v74 + 8))(v73, v75);
    }

    goto LABEL_25;
  }

  v84 = v0[11];

  return _swift_task_switch(sub_100D32248, v84, 0);
}

uint64_t sub_100D32270()
{
  v1 = v0[40];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[41] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_100D32368;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100D32368()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_100D32768;
  }

  else
  {

    v2 = sub_100D32484;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D32484()
{
  v23 = v0;
  (*(v0 + 280))(*(v0 + 208), *(v0 + 96), *(v0 + 176));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 104);
  if (v3)
  {
    v21 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v7);
    v14 = sub_1000136BC(v10, v12, &v22);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Updated circle member %{private,mask.hash}s to unaccepted.", v9, 0x16u);
    sub_100007BAC(v20);

    v13(v4, v7);
    v15 = v21;
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
    v16(v4, v7);
    v15 = v8;
  }

  sub_10000B3A8(v15, &qword_1016975C8, &qword_10138C1F0);
  v17 = *(v0 + 144);

  sub_100D4A3EC(v17, type metadata accessor for OwnerSharingCircle);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100D32768()
{

  return _swift_task_switch(sub_100D327D0, 0, 0);
}

uint64_t sub_100D327D0()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[13];
  (*(v0[23] + 8))(v0[28], v0[22]);
  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[12];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177BF80);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v24);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100D32B54()
{
  v23 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[12];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF80);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_1000136BC(v17, v18, &v22);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D32E7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100D32F5C, 0, 0);
}

uint64_t sub_100D32F5C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v15 = *(v0 + 32);
  v14 = *(v0 + 96);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v2 + 16))(v1, v5, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + v7, v1, v4);
  v11 = v10 + v8;
  *v11 = v14;
  *(v11 + 8) = v15;
  *(v11 + 16) = v16;
  *(v10 + v9) = v6;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100D33120(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 504) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v5 + 96) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 104) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v5 + 112) = v6;
  *(v5 + 120) = *(v6 - 8);
  *(v5 + 128) = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust(0);
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle(0);
  *(v5 + 176) = v8;
  *(v5 + 184) = *(v8 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100D33340, 0, 0);
}

uint64_t sub_100D33340()
{
  v21 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v5, qword_10177BF80);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received handleCircleTrustAck -- identifier: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[28] = v18;
  *v18 = v0;
  v18[1] = sub_100D335C8;

  return daemon.getter();
}

uint64_t sub_100D335C8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[29] = a1;

  v3 = swift_task_alloc();
  v2[30] = v3;
  v4 = type metadata accessor for Daemon();
  v2[31] = v4;
  v5 = type metadata accessor for PeerTrustService();
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[32] = v6;
  v7 = sub_100D42DB8(&qword_1016B1190, 255, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v3 = v9;
  v3[1] = sub_100D337BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D337BC(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100D35DE8, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[35] = v4;
    *v4 = v3;
    v4[1] = sub_100D33930;

    return daemon.getter();
  }
}

uint64_t sub_100D33930(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 288) = a1;

  v5 = swift_task_alloc();
  *(v3 + 296) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100D33AE8;
  v8 = *(v2 + 256);
  v9 = *(v2 + 248);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D33AE8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  if (v1)
  {
    v5 = sub_100D35FD0;
    v6 = 0;
  }

  else
  {

    v5 = sub_100D33C24;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D33C4C()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_100D33D28;
  v2 = *(v0 + 320);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_100D33D28()
{

  return _swift_task_switch(sub_100D33E24, 0, 0);
}

uint64_t sub_100D33E40()
{

  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100D33F2C;
  v3 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_100D33F2C()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_100D34044, v1, 0);
}

uint64_t sub_100D34044()
{

  *(v0 + 344) = *(v0 + 48);

  return _swift_task_switch(sub_100D340B4, 0, 0);
}

uint64_t sub_100D340B4()
{
  v26 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  *(swift_task_alloc() + 16) = v5;
  sub_1012BC194(sub_100D4A658, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 104), &unk_1016AFA00, &qword_10138C4D0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "ownerSharingCircle cannot be found", v8, 2u);
    }

    sub_100D487D8();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1000136BC(v14, v15, &v25);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v12, 0xCu);
      sub_100007BAC(v13);
    }

    else
    {
    }

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    sub_100D4A2D4(*(v0 + 104), v17, type metadata accessor for OwnerSharingCircle);
    sub_100D4A580(v17, v18, type metadata accessor for OwnerSharingCircle);
    v19 = swift_task_alloc();
    *(v0 + 352) = v19;
    *v19 = v0;
    v19[1] = sub_100D344A4;
    v20 = *(v0 + 72);
    v21 = *(v0 + 80);
    v22 = *(v0 + 504);

    return sub_100E86158(v22, v20, v21);
  }
}

uint64_t sub_100D344A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_100D361C4;
  }

  else
  {
    v4 = sub_100D345B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D345B8()
{
  v50 = v0;
  v1 = v0[45];
  if (!*(v1 + 16))
  {
    goto LABEL_5;
  }

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = *(v0[18] + 80);
  sub_100D4A580(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for OwnerPeerTrust);

  sub_100D4A2D4(v4, v5, type metadata accessor for OwnerPeerTrust);
  v7 = *(v2 + *(v3 + 32));
  v0[47] = v7;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_1003A85FC(*(v7 + 16), 0);
    v10 = sub_1003CC2CC();

    sub_1000128F8(v49);
    if (v10 != v8)
    {
      __break(1u);
LABEL_5:

LABEL_11:

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = v0[9];
        v26 = v0[10];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49 = v29;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2081;
        *(v28 + 14) = sub_1000136BC(v27, v26, &v49);
        _os_log_impl(&_mh_execute_header, v24, v25, "Missing ownerPeerTrust for %{private,mask.hash}s.", v28, 0x16u);
        sub_100007BAC(v29);
      }

      v30 = v0[25];
      sub_100D487D8();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();

      v32 = 0;
LABEL_17:
      sub_100D4A3EC(v30, type metadata accessor for OwnerSharingCircle);
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v49 = v42;
        *v41 = 136446210;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = sub_1000136BC(v43, v44, &v49);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v41, 0xCu);
        sub_100007BAC(v42);

        if (!v32)
        {
          goto LABEL_22;
        }
      }

      else
      {

        if (!v32)
        {
LABEL_22:
          sub_100D4A3EC(v0[26], type metadata accessor for OwnerSharingCircle);

          v46 = v0[1];

          return v46();
        }
      }

      sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
      goto LABEL_22;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1005C8A30(v0[20] + *(v0[17] + 20), v9);

  if (!v11)
  {
    sub_100D4A3EC(v0[20], type metadata accessor for OwnerPeerTrust);
    goto LABEL_11;
  }

  v12 = v0[26];
  v13 = v0[24];
  sub_100D4A580(v0[20], v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A580(v12, v13, type metadata accessor for OwnerSharingCircle);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[24];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_100D4A3EC(v17, type metadata accessor for OwnerSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v49);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Data update on circle trust acceptance. Update %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v19);
  }

  else
  {

    sub_100D4A3EC(v17, type metadata accessor for OwnerSharingCircle);
  }

  v33 = v0[46];
  v34 = v0[26];
  v35 = v0[21];
  v36 = v0[12];
  v37 = swift_task_alloc();
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  sub_100EC0C48(sub_100D4882C, v36);
  if (v33)
  {
    v30 = v0[25];
    v38 = v0[20];

    sub_100D4A3EC(v38, type metadata accessor for OwnerPeerTrust);
    v32 = 1;
    goto LABEL_17;
  }

  v48 = v0[38];

  return _swift_task_switch(sub_100D34D00, v48, 0);
}

uint64_t sub_100D34D28()
{
  v1 = v0[48];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[49] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_100D34E20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100D34E20()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_100D352D8;
  }

  else
  {

    v2 = sub_100D34F3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D34F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  *v1 = v0;
  v1[1] = sub_100D34FCC;

  return daemon.getter();
}

uint64_t sub_100D34FCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 424) = a1;

  v5 = swift_task_alloc();
  *(v3 + 432) = v5;
  v6 = type metadata accessor for BeaconSharingService(0);
  v7 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v5 = v4;
  v5[1] = sub_100D35184;
  v8 = *(v2 + 256);
  v9 = *(v2 + 248);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D35184(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100D363F4;
  }

  else
  {

    *(v4 + 440) = a1;
    v5 = sub_100D355C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D352D8()
{

  return _swift_task_switch(sub_100D35340, 0, 0);
}

uint64_t sub_100D35340()
{
  v14 = v0;
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[12];

  sub_100D4A3EC(v2, type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v0[26], type metadata accessor for OwnerSharingCircle);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D355C8()
{
  v1 = *(v0 + 440);

  return _swift_task_switch(sub_100D35638, v1, 0);
}

uint64_t sub_100D35638()
{
  type metadata accessor for Transaction();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100D35744, 0, 0);
}

uint64_t sub_100D35744()
{

  v1 = v0[47];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[12];

  sub_100D4A3EC(v3, type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v2, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = sub_1003A85FC(*(v1 + 16), 0);
    v7 = sub_1003CC2CC();

    sub_1000128F8(v14);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[56] = v6;
  v0[7] = v6;
  v8 = swift_task_alloc();
  v0[57] = v8;
  v9 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v10 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v8 = v0;
  v8[1] = sub_100D35964;
  v11 = v0[38];
  v12 = v0[17];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4AE8, v11, v9, v12, v10);
}

uint64_t sub_100D35964(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
  }

  else
  {

    *(v4 + 472) = a1;

    return _swift_task_switch(sub_100D35AAC, 0, 0);
  }
}

uint64_t sub_100D35AAC()
{
  v1 = v0[59];
  v2 = v0[21];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_10013D090(sub_100D48928, v3, v1);
  v0[60] = v4;

  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_100D35BA0;
  v6 = v0[26];

  return sub_100D29C1C(v6, v4);
}

uint64_t sub_100D35BA0()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_100D3660C;
  }

  else
  {
    v2 = sub_100D35CD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D35CD4()
{

  v1 = v0[26];
  sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100D35DE8()
{
  v11 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D35FD0()
{
  v11 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D361C4()
{
  v12 = v0;
  v1 = v0[25];

  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  sub_100D4A3EC(v0[26], type metadata accessor for OwnerSharingCircle);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100D363F4()
{
  v1 = v0[47];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[12];

  sub_100D4A3EC(v3, type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v2, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = sub_1003A85FC(*(v1 + 16), 0);
    v7 = sub_1003CC2CC();

    sub_1000128F8(v14);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[56] = v6;
  v0[7] = v6;
  v8 = swift_task_alloc();
  v0[57] = v8;
  v9 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v10 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v8 = v0;
  v8[1] = sub_100D35964;
  v11 = v0[38];
  v12 = v0[17];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4AE8, v11, v9, v12, v10);
}

uint64_t sub_100D3660C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleTrustAccept, send update message: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = v0[26];
  sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v6, type metadata accessor for OwnerSharingCircle);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D36814(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OwnerPeerTrust(0) + 20);
  v5 = *(type metadata accessor for OwnerSharingCircle(0) + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + v5);
  result = sub_100FFB6DC(1, a2 + v4, isUniquelyReferenced_nonNull_native);
  *(a1 + v5) = v8;
  return result;
}

uint64_t sub_100D3688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100D3695C, a3, 0);
}

uint64_t sub_100D3695C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_1002E9E50;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D48948, v6, v8);
}

BOOL sub_100D36AD0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OwnerPeerTrust(0);
  type metadata accessor for UUID();
  sub_100D42DB8(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100D36B7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100D36C5C, 0, 0);
}

uint64_t sub_100D36C5C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v15 = *(v0 + 32);
  v14 = *(v0 + 96);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v2 + 16))(v1, v5, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + v7, v1, v4);
  *(v10 + v8) = v6;
  v11 = v10 + v9;
  *v11 = v14;
  *(v11 + 8) = v15;
  *(v11 + 16) = v16;
  *(v10 + ((v9 + 31) & 0xFFFFFFFFFFFFFFF8)) = v17;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100D36E28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 192) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100D36EFC, 0, 0);
}

uint64_t sub_100D36EFC()
{
  v23 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[10] = sub_1000076D4(v5, qword_10177BF80);
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received handleCircleTrustDecline -- identifier: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[13] = v17;
  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_100D37194;

  return daemon.getter();
}

uint64_t sub_100D37194(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_100D37378;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D37378(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_100D37C18;
    v5 = 0;
  }

  else
  {
    v6 = v3[3];

    v4 = sub_100D374A0;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100D374A0()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = qword_10177CEA0;

  return _swift_task_switch(sub_100D3753C, 0, 0);
}

uint64_t sub_100D3753C()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_100D375D0;

  return sub_100507C6C();
}

uint64_t sub_100D375D0(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 193) = a1;

  return _swift_task_switch(sub_100D376E8, v2, 0);
}

uint64_t sub_100D376E8()
{
  if (*(v0 + 193) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 176) = v1;
    *v1 = v0;
    v1[1] = sub_100D37A90;
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = *(v0 + 192);

    return sub_100199BAC(v4, v5, v2, v3);
  }

  else
  {
    *(v0 + 168) = *(*(v0 + 24) + 144);

    return _swift_task_switch(sub_100D377D8, 0, 0);
  }
}