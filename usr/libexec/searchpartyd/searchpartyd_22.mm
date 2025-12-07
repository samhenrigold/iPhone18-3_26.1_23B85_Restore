uint64_t sub_100288C6C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100288CDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100288D24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100288DC4()
{
  result = qword_10169C2C8;
  if (!qword_10169C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsLEPairingLockAckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AirPodsLEPairingLockAckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100288F6C()
{
  result = qword_10169C2D0;
  if (!qword_10169C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2D0);
  }

  return result;
}

unint64_t sub_100288FC4()
{
  result = qword_10169C2D8;
  if (!qword_10169C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2D8);
  }

  return result;
}

unint64_t sub_10028901C()
{
  result = qword_10169C2E0;
  if (!qword_10169C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2E0);
  }

  return result;
}

uint64_t sub_100289070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C636341616162 && a2 == 0xEE00747265436661 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49636341616162 && a2 == 0xEC00000031414374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEF74736574744179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
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

unint64_t sub_1002895EC(uint64_t a1)
{
  *(a1 + 8) = sub_10028961C();
  result = sub_100289670();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10028961C()
{
  result = qword_10169C2E8;
  if (!qword_10169C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2E8);
  }

  return result;
}

unint64_t sub_100289670()
{
  result = qword_10169C2F0;
  if (!qword_10169C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2F0);
  }

  return result;
}

uint64_t sub_1002896C4(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v6, v6[3]);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(a2, a3);
  return sub_100007BAC(v6);
}

uint64_t sub_100289784@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v10, v10[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v10);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_100007BAC(v10);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_1002898F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1002899C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void sub_100289AB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  type metadata accessor for UUID();
  if (v7 <= 0x3F)
  {
    sub_100289B54(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100289B54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100289BA8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C428, &unk_101397900);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10028A9A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for UUID();
  sub_10028AB88(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for LegacySelfBeaconingKeyEnvelope(0) + 20));
    v10[15] = 1;
    sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
    sub_10028AA50(&qword_10169C440, &qword_10169C448, &protocol conformance descriptor for CryptoKeys, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100289DC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for UUID();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169C478, &qword_101397920);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LegacySelfBeaconingKeyEnvelope(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10028A9A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_10028AB88(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v26;
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
  v28 = 1;
  sub_10028AA50(&qword_10169C480, &qword_10169C488, &protocol conformance descriptor for CryptoKeys, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_10028ABD0(v18, v22, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
  sub_100007BAC(a1);
  return sub_10028AC38(v18, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
}

uint64_t sub_10028A18C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C450, &unk_101397910);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10028A9FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for UUID();
  sub_10028AB88(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SelfBeaconingKeyEnvelope(0) + 20));
    v10[15] = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_10028AAEC(&qword_10169C468, &qword_10169C470, &unk_1013E9BB4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10028A3A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for UUID();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169C490, &qword_101397928);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SelfBeaconingKeyEnvelope(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10028A9FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_10028AB88(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v26;
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v28 = 1;
  sub_10028AAEC(&qword_10169C498, &qword_10169C4A0, &unk_1013E9BDC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_10028ABD0(v18, v22, type metadata accessor for SelfBeaconingKeyEnvelope);
  sub_100007BAC(a1);
  return sub_10028AC38(v18, type metadata accessor for SelfBeaconingKeyEnvelope);
}

uint64_t sub_10028A770(uint64_t a1)
{
  v2 = sub_10028A9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028A7AC(uint64_t a1)
{
  v2 = sub_10028A9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028A818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000)
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
  return result;
}

uint64_t sub_10028A900(uint64_t a1)
{
  v2 = sub_10028A9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028A93C(uint64_t a1)
{
  v2 = sub_10028A9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10028A9A8()
{
  result = qword_10169C430;
  if (!qword_10169C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C430);
  }

  return result;
}

unint64_t sub_10028A9FC()
{
  result = qword_10169C458;
  if (!qword_10169C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C458);
  }

  return result;
}

uint64_t sub_10028AA50(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C438, &qword_10140A060);
    sub_10028AB88(a2, type metadata accessor for CryptoKeys, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028AAEC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_10028AB88(a2, type metadata accessor for FamilyCryptoKeysV1, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028AB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028ABD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028AC38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10028ACBC()
{
  result = qword_10169C4A8;
  if (!qword_10169C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4A8);
  }

  return result;
}

unint64_t sub_10028AD14()
{
  result = qword_10169C4B0;
  if (!qword_10169C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4B0);
  }

  return result;
}

unint64_t sub_10028AD6C()
{
  result = qword_10169C4B8;
  if (!qword_10169C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4B8);
  }

  return result;
}

unint64_t sub_10028ADC4()
{
  result = qword_10169C4C0;
  if (!qword_10169C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4C0);
  }

  return result;
}

unint64_t sub_10028AE1C()
{
  result = qword_10169C4C8;
  if (!qword_10169C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4C8);
  }

  return result;
}

unint64_t sub_10028AE74()
{
  result = qword_10169C4D0;
  if (!qword_10169C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4D0);
  }

  return result;
}

void sub_10028AEE0(uint64_t a1)
{
  sub_1002359B8(319, &qword_10169C540, &type metadata for Int64);
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169C548, &type metadata for UInt8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_10028B040(319, &qword_10169C550, type metadata accessor for ObservedAdvertisement.Location);
        if (v4 <= 0x3F)
        {
          sub_10028B040(319, &unk_10169C558, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10028B040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10028B094(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10028B118(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10028B19C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6449766461;
    v7 = 0x7369747265766461;
    v8 = 0x737574617473;
    if (a1 != 3)
    {
      v8 = 0x79654B6172747865;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656372756F73;
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
    v1 = 0x6E6F697461636F6CLL;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x68736F507369;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 1953393000;
    v4 = 1769173874;
    if (a1 != 6)
    {
      v4 = 0x657461446E616373;
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

uint64_t sub_10028B2F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C748, &qword_101397F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10028E754();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 9);
    v14 = 1;
    sub_10028E8F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 24);
    v12 = *(v3 + 16);
    v13 = v9;
    v14 = 2;
    sub_100029784(v12, v9);
    sub_10028E94C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001E524(v12, v13);
    LOBYTE(v12) = *(v3 + 32);
    v14 = 3;
    sub_10028E9A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 33);
    v14 = 4;
    sub_10028E9F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for ObservedAdvertisement(0);
    LOBYTE(v12) = 7;
    type metadata accessor for Date();
    sub_100019F1C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 8;
    type metadata accessor for ObservedAdvertisement.Location(0);
    sub_100019F1C(&qword_10169C770, type metadata accessor for ObservedAdvertisement.Location, &unk_101397C18);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 9;
    type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    sub_100019F1C(&qword_10169C778, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation, &unk_101397D20);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10028B734(uint64_t a1)
{
  v3 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *v1;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v10);
  }

  Hasher._combine(_:)(*(v1 + 9));
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  Hasher._combine(_:)((v12 >> 61) & 1);
  sub_100017D5C(v11, v12 & 0xDFFFFFFFFFFFFFFFLL);
  Data.hash(into:)();
  sub_10001E524(v11, v12);
  Hasher._combine(_:)(*(v1 + 32));
  Hasher._combine(_:)(*(v1 + 33));
  if (*(v1 + 35))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v1 + 34);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(*(v1 + 36));
  v14 = type metadata accessor for ObservedAdvertisement(0);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_100EF2240(a1);
  sub_1000D2A70(v1 + *(v14 + 52), v9, &qword_101699DB0, &unk_101393100);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_10003461C(v9, v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    Hasher._combine(_:)(1u);
    type metadata accessor for UUID();
    sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    String.hash(into:)();

    Hasher._combine(_:)(*&v6[*(v3 + 24)]);
    sub_100034494(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  Hasher._combine(_:)(*(v1 + *(v14 + 56)));
}

uint64_t sub_10028BAD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  __chkstk_darwin(v3 - 8);
  v27 = &v25 - v4;
  v5 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Date();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_10169C708, &qword_101397F78);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ObservedAdvertisement(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v34 = a1;
  sub_1000035D0(a1, v16);
  sub_10028E754();
  v32 = v12;
  v17 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(v34);
  }

  v18 = v10;
  v20 = v29;
  v19 = v30;
  v26 = v13;
  v33 = v8;
  LOBYTE(v35) = 0;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[8] = v21 & 1;
  v36 = 1;
  sub_10028E7A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[9] = v35;
  v36 = 2;
  sub_10028E7FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + 1) = v35;
  v36 = 3;
  sub_10028E850();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[32] = v35;
  v36 = 4;
  sub_10028E8A4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[33] = v35;
  LOBYTE(v35) = 5;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[34] = v22;
  v15[35] = HIBYTE(v22) & 1;
  LOBYTE(v35) = 6;
  *(v15 + 9) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v35) = 7;
  sub_100019F1C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 32))(&v15[v26[11]], v18, v33);
  type metadata accessor for ObservedAdvertisement.Location(0);
  LOBYTE(v35) = 8;
  sub_100019F1C(&qword_10169C738, type metadata accessor for ObservedAdvertisement.Location, &unk_101397C40);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v7, &v15[v26[12]], &qword_1016AA430, &unk_101392650);
  type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  LOBYTE(v35) = 9;
  sub_100019F1C(&qword_10169C740, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation, &unk_101397D48);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v27, &v15[v26[13]], &qword_101699DB0, &unk_101393100);
  LOBYTE(v35) = 10;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v32, v31);
  v15[v26[14]] = v23 & 1;
  sub_10001BAD0(v15, v19, type metadata accessor for ObservedAdvertisement);
  sub_100007BAC(v34);
  return sub_100034494(v15, type metadata accessor for ObservedAdvertisement);
}

uint64_t sub_10028C2A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028EEE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10028C2D0(uint64_t a1)
{
  v2 = sub_10028E754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028C30C(uint64_t a1)
{
  v2 = sub_10028E754();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10028C37C()
{
  Hasher.init(_seed:)();
  sub_10028B734(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10028C3C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10028B734(v2);
  return Hasher._finalize()();
}

uint64_t sub_10028C400(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169C7C8, &qword_101397FB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10028EB44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for ObservedAdvertisement.Location(0);
    v8[12] = 3;
    type metadata accessor for Date();
    sub_100019F1C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10028C63C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for ObservedAdvertisement.Location(0);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10028C714()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  type metadata accessor for ObservedAdvertisement.Location(0);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10028C80C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Date();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169C7B8, &qword_101397FA8);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ObservedAdvertisement.Location(0);
  __chkstk_darwin(v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v29 = a1;
  sub_1000035D0(a1, v13);
  sub_10028EB44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v6;
    v33 = 0;
    v15 = v27;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v12 = v16;
    v32 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v15;
    v12[1] = v18;
    v31 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v12;
    v12[2] = v21;
    v30 = 3;
    sub_100019F1C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = v14;
    v23 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v23);
    (*(v25 + 32))(v20 + *(v10 + 28), v22, v4);
    sub_10003461C(v20, v26, type metadata accessor for ObservedAdvertisement.Location);
  }

  return sub_100007BAC(v29);
}

uint64_t sub_10028CC2C()
{
  v1 = 0x6E776F6E6B6E752ELL;
  v2 = 0x6353686365656C2ELL;
  if (*v0 != 2)
  {
    v2 = 0x6E7363612ELL;
  }

  if (*v0)
  {
    v1 = 0x747365767261682ELL;
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

unint64_t sub_10028CCB4()
{
  v1 = 0x656475746974616CLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
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

uint64_t sub_10028CD40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028F25C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10028CD68(uint64_t a1)
{
  v2 = sub_10028EB44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028CDA4(uint64_t a1)
{
  v2 = sub_10028EB44();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10028CE18(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10028CF54()
{
  v1 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  if (*(v0 + *(v1 + 20)))
  {
    v2 = 0x61646E6F6365732ELL;
  }

  else
  {
    v2 = 0x7972616D6972702ELL;
  }

  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0xEA00000000007972;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 47;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 125;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 123;
}

uint64_t sub_10028D04C()
{
  type metadata accessor for UUID();
  sub_100019F1C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  if (*(v0 + *(v3 + 20)))
  {
    v4 = 0x61646E6F6365732ELL;
  }

  else
  {
    v4 = 0x7972616D6972702ELL;
  }

  if (*(v0 + *(v3 + 20)))
  {
    v5 = 0xEA00000000007972;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 125;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 123;
}

uint64_t sub_10028D1B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C7A8, &qword_101397FA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10028EA48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for UUID();
  sub_100019F1C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0) + 20));
    v10[13] = 1;
    sub_10028EAF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10028D3B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169C790, &qword_101397F98);
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10028EA48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v11;
  v13 = v19;
  v26 = 0;
  sub_100019F1C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v22, v4);
  v24 = 1;
  sub_10028EA9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + *(v9 + 20)) = v25;
  v23 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v15;
  sub_10001BAD0(v12, v18, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(a1);
  return sub_100034494(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
}

uint64_t sub_10028D760()
{
  v1 = 0x65636E6575716573;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10028D7BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028F3D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10028D7E4(uint64_t a1)
{
  v2 = sub_10028EA48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028D820(uint64_t a1)
{
  v2 = sub_10028EA48();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10028D894(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_10028D98C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_10028DA6C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

unint64_t sub_10028DBF8()
{
  result = qword_10169C6F8;
  if (!qword_10169C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C6F8);
  }

  return result;
}

uint64_t sub_10028DC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_10028DCD8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x7261646E6F636553;
  }

  else
  {
    v8 = 0x7972616D697250;
  }

  if (v6)
  {
    v9 = 0xE900000000000079;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v7)
  {
    v10 = 0x7261646E6F636553;
  }

  else
  {
    v10 = 0x7972616D697250;
  }

  if (v7)
  {
    v11 = 0xE900000000000079;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_10028DDD0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for ObservedAdvertisement.Location(0);

  return static Date.== infix(_:_:)();
}

uint64_t sub_10028DE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  __chkstk_darwin(v7 - 8);
  v68 = &v62 - v8;
  v69 = sub_1000BC4D4(&qword_10169C780, &qword_101397F88);
  __chkstk_darwin(v69);
  v10 = &v62 - v9;
  v11 = type metadata accessor for ObservedAdvertisement.Location(0);
  v71 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v14 - 8);
  v16 = (&v62 - v15);
  v17 = sub_1000BC4D4(&qword_10169C788, &qword_101397F90);
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  v20 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v20 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_42;
    }
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
LABEL_42:
    v20 = 0;
    return v20 & 1;
  }

  v65 = v10;
  v66 = v6;
  v64 = v4;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v67 = a2;
  v24 = *(a2 + 16);
  v23 = *(a2 + 24);
  if ((v22 & 0x2000000000000000) != 0)
  {
    if ((v23 & 0x2000000000000000) == 0)
    {
      goto LABEL_42;
    }

    sub_100029784(v21, v22);
    sub_100029784(v24, v23);
    v26 = v22 & 0xDFFFFFFFFFFFFFFFLL;
    v28 = v23 & 0xDFFFFFFFFFFFFFFFLL;
    v25 = v21;
    v27 = v24;
  }

  else
  {
    if ((v23 & 0x2000000000000000) != 0)
    {
      goto LABEL_42;
    }

    sub_100029784(v21, v22);
    sub_100029784(v24, v23);
    v25 = v21;
    v26 = v22;
    v27 = v24;
    v28 = v23;
  }

  LODWORD(v63) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v25, v26, v27, v28);
  sub_10001E524(v24, v23);
  sub_10001E524(v21, v22);
  if ((v63 & 1) == 0)
  {
    goto LABEL_42;
  }

  v29 = v67;
  if (*(a1 + 32) != *(v67 + 32) || *(a1 + 33) != *(v67 + 33))
  {
    goto LABEL_42;
  }

  v20 = *(v67 + 35);
  if ((*(a1 + 35) & 1) == 0)
  {
    if (*(a1 + 34) != *(v67 + 34))
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_42;
    }

LABEL_22:
    if (*(a1 + 36) != *(v67 + 36))
    {
      goto LABEL_42;
    }

    v30 = type metadata accessor for ObservedAdvertisement(0);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_42;
    }

    v63 = v30;
    v31 = *(v30 + 48);
    v32 = *(v17 + 48);
    sub_1000D2A70(a1 + v31, v19, &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v29 + v31, &v19[v32], &qword_1016AA430, &unk_101392650);
    v33 = *(v71 + 48);
    if (v33(v19, 1, v11) == 1)
    {
      v34 = v33(&v19[v32], 1, v11);
      v35 = v66;
      if (v34 == 1)
      {
        sub_10000B3A8(v19, &qword_1016AA430, &unk_101392650);
        goto LABEL_27;
      }
    }

    else
    {
      sub_1000D2A70(v19, v16, &qword_1016AA430, &unk_101392650);
      if (v33(&v19[v32], 1, v11) != 1)
      {
        sub_10003461C(&v19[v32], v13, type metadata accessor for ObservedAdvertisement.Location);
        if (*v16 == *v13 && v16[1] == v13[1] && v16[2] == v13[2])
        {
          v46 = static Date.== infix(_:_:)();
          sub_100034494(v13, type metadata accessor for ObservedAdvertisement.Location);
          sub_100034494(v16, type metadata accessor for ObservedAdvertisement.Location);
          sub_10000B3A8(v19, &qword_1016AA430, &unk_101392650);
          v35 = v66;
          if ((v46 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_27:
          v36 = *(v63 + 52);
          v37 = *(v69 + 48);
          v38 = v65;
          sub_1000D2A70(a1 + v36, v65, &qword_101699DB0, &unk_101393100);
          v39 = v67 + v36;
          v40 = v38;
          sub_1000D2A70(v39, v38 + v37, &qword_101699DB0, &unk_101393100);
          v41 = *(v70 + 48);
          v42 = v38;
          v43 = v64;
          if (v41(v42, 1, v64) == 1)
          {
            if (v41(v40 + v37, 1, v43) == 1)
            {
              sub_10000B3A8(v40, &qword_101699DB0, &unk_101393100);
LABEL_30:
              v20 = *(a1 + *(v63 + 56)) ^ *(v67 + *(v63 + 56)) ^ 1;
              return v20 & 1;
            }

            goto LABEL_46;
          }

          v49 = v68;
          sub_1000D2A70(v40, v68, &qword_101699DB0, &unk_101393100);
          if (v41(v40 + v37, 1, v43) == 1)
          {
            sub_100034494(v49, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
LABEL_46:
            v44 = &qword_10169C780;
            v45 = &qword_101397F88;
            v47 = v40;
            goto LABEL_41;
          }

          sub_10003461C(v40 + v37, v35, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          if (static UUID.== infix(_:_:)())
          {
            v50 = *(v43 + 20);
            v51 = *(v49 + v50);
            v52 = *(v35 + v50);
            if (v51)
            {
              v53 = 0x7261646E6F636553;
            }

            else
            {
              v53 = 0x7972616D697250;
            }

            if (v51)
            {
              v54 = 0xE900000000000079;
            }

            else
            {
              v54 = 0xE700000000000000;
            }

            if (v52)
            {
              v55 = 0x7261646E6F636553;
            }

            else
            {
              v55 = 0x7972616D697250;
            }

            if (v52)
            {
              v56 = 0xE900000000000079;
            }

            else
            {
              v56 = 0xE700000000000000;
            }

            if (v53 == v55 && v54 == v56)
            {

              v49 = v68;
              goto LABEL_64;
            }

            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v49 = v68;
            if (v57)
            {
LABEL_64:
              v58 = *(v43 + 24);
              v59 = v49;
              v60 = *(v49 + v58);
              v61 = *(v35 + v58);
              sub_100034494(v35, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
              sub_100034494(v59, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
              sub_10000B3A8(v40, &qword_101699DB0, &unk_101393100);
              if (v60 == v61)
              {
                goto LABEL_30;
              }

              goto LABEL_42;
            }
          }

          sub_100034494(v35, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          sub_100034494(v49, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          v44 = &qword_101699DB0;
          v45 = &unk_101393100;
          v47 = v40;
          goto LABEL_41;
        }

        sub_100034494(v13, type metadata accessor for ObservedAdvertisement.Location);
        sub_100034494(v16, type metadata accessor for ObservedAdvertisement.Location);
        v44 = &qword_1016AA430;
        v45 = &unk_101392650;
LABEL_40:
        v47 = v19;
LABEL_41:
        sub_10000B3A8(v47, v44, v45);
        goto LABEL_42;
      }

      sub_100034494(v16, type metadata accessor for ObservedAdvertisement.Location);
    }

    v44 = &qword_10169C788;
    v45 = &qword_101397F90;
    goto LABEL_40;
  }

  if (*(v67 + 35))
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

unint64_t sub_10028E700()
{
  result = qword_10169C700;
  if (!qword_10169C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C700);
  }

  return result;
}

unint64_t sub_10028E754()
{
  result = qword_10169C710;
  if (!qword_10169C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C710);
  }

  return result;
}

unint64_t sub_10028E7A8()
{
  result = qword_10169C718;
  if (!qword_10169C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C718);
  }

  return result;
}

unint64_t sub_10028E7FC()
{
  result = qword_10169C720;
  if (!qword_10169C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C720);
  }

  return result;
}

unint64_t sub_10028E850()
{
  result = qword_10169C728;
  if (!qword_10169C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C728);
  }

  return result;
}

unint64_t sub_10028E8A4()
{
  result = qword_10169C730;
  if (!qword_10169C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C730);
  }

  return result;
}

unint64_t sub_10028E8F8()
{
  result = qword_10169C750;
  if (!qword_10169C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C750);
  }

  return result;
}

unint64_t sub_10028E94C()
{
  result = qword_10169C758;
  if (!qword_10169C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C758);
  }

  return result;
}

unint64_t sub_10028E9A0()
{
  result = qword_10169C760;
  if (!qword_10169C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C760);
  }

  return result;
}

unint64_t sub_10028E9F4()
{
  result = qword_10169C768;
  if (!qword_10169C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C768);
  }

  return result;
}

unint64_t sub_10028EA48()
{
  result = qword_10169C798;
  if (!qword_10169C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C798);
  }

  return result;
}

unint64_t sub_10028EA9C()
{
  result = qword_10169C7A0;
  if (!qword_10169C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7A0);
  }

  return result;
}

unint64_t sub_10028EAF0()
{
  result = qword_10169C7B0;
  if (!qword_10169C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7B0);
  }

  return result;
}

unint64_t sub_10028EB44()
{
  result = qword_10169C7C0;
  if (!qword_10169C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7C0);
  }

  return result;
}

unint64_t sub_10028EBCC()
{
  result = qword_10169C7D0;
  if (!qword_10169C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7D0);
  }

  return result;
}

unint64_t sub_10028EC24()
{
  result = qword_10169C7D8;
  if (!qword_10169C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7D8);
  }

  return result;
}

unint64_t sub_10028EC7C()
{
  result = qword_10169C7E0;
  if (!qword_10169C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7E0);
  }

  return result;
}

unint64_t sub_10028ECD4()
{
  result = qword_10169C7E8;
  if (!qword_10169C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7E8);
  }

  return result;
}

unint64_t sub_10028ED2C()
{
  result = qword_10169C7F0;
  if (!qword_10169C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7F0);
  }

  return result;
}

unint64_t sub_10028ED84()
{
  result = qword_10169C7F8;
  if (!qword_10169C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7F8);
  }

  return result;
}

unint64_t sub_10028EDDC()
{
  result = qword_10169C800;
  if (!qword_10169C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C800);
  }

  return result;
}

unint64_t sub_10028EE34()
{
  result = qword_10169C808;
  if (!qword_10169C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C808);
  }

  return result;
}

unint64_t sub_10028EE8C()
{
  result = qword_10169C810;
  if (!qword_10169C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C810);
  }

  return result;
}

uint64_t sub_10028EEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449766461 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xED0000746E656D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79654B6172747865 && a2 == 0xEC00000073746942 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657461446E616373 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F9D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x68736F507369 && a2 == 0xE600000000000000)
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

uint64_t sub_10028F25C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101347FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_10028F3D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10028F4FC(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1000BC4D4(&qword_10169C898, &qword_101398428);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1000BC4D4(&qword_10169C8A0, &qword_101398430);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1000BC4D4(&qword_10169C8A8, &qword_101398438);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1000BC4D4(&qword_10169C8B0, &qword_101398440);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000BC4D4(&qword_10169C8B8, &qword_101398448);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1000BC4D4(&qword_10169C8C0, &qword_101398450);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_1000035D0(a1, a1[3]);
  sub_100290828();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_100290978();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1002909CC();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_100290924();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1002908D0();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_10029087C();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

unint64_t sub_10028FA70()
{
  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  else
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_10028FAE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028FF08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10028FB10(uint64_t a1)
{
  v2 = sub_100290828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FB4C(uint64_t a1)
{
  v2 = sub_100290828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FB88(uint64_t a1)
{
  v2 = sub_100290978();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FBC4(uint64_t a1)
{
  v2 = sub_100290978();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FC00(uint64_t a1)
{
  v2 = sub_1002908D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FC3C(uint64_t a1)
{
  v2 = sub_1002908D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FC78(uint64_t a1)
{
  v2 = sub_10029087C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FCB4(uint64_t a1)
{
  v2 = sub_10029087C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FCF0(uint64_t a1)
{
  v2 = sub_1002909CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FD2C(uint64_t a1)
{
  v2 = sub_1002909CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FD68(uint64_t a1)
{
  v2 = sub_100290924();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FDA4(uint64_t a1)
{
  v2 = sub_100290924();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FE00@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002900C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10028FE4C()
{
  result = qword_10169C818;
  if (!qword_10169C818)
  {
    sub_1000BC580(&qword_10169C820, qword_101398348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C818);
  }

  return result;
}

unint64_t sub_10028FEB4()
{
  result = qword_10169C828;
  if (!qword_10169C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C828);
  }

  return result;
}

uint64_t sub_10028FF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000010134FA20 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FA40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FA60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FA80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FAA0 == a2)
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

uint64_t sub_1002900C4(void *a1)
{
  v45 = sub_1000BC4D4(&qword_10169C830, &qword_1013983F0);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_1000BC4D4(&qword_10169C838, &qword_1013983F8);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_1000BC4D4(&qword_10169C840, &qword_101398400);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_1000BC4D4(&qword_10169C848, &qword_101398408);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1000BC4D4(&qword_10169C850, &qword_101398410);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000BC4D4(&qword_10169C858, &qword_101398418);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_1000035D0(a1, v17);
  sub_100290828();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1002E2778();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_1000BC4D4(&qword_10169C868, &qword_101398420);
    *v31 = &type metadata for MessagingCapability;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_100007BAC(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_100290978();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_1002909CC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_100290924();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_1002908D0();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_10029087C();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_100007BAC(v49);
  return v14;
}

unint64_t sub_100290828()
{
  result = qword_10169C860;
  if (!qword_10169C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C860);
  }

  return result;
}

unint64_t sub_10029087C()
{
  result = qword_10169C870;
  if (!qword_10169C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C870);
  }

  return result;
}

unint64_t sub_1002908D0()
{
  result = qword_10169C878;
  if (!qword_10169C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C878);
  }

  return result;
}

unint64_t sub_100290924()
{
  result = qword_10169C880;
  if (!qword_10169C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C880);
  }

  return result;
}

unint64_t sub_100290978()
{
  result = qword_10169C888;
  if (!qword_10169C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C888);
  }

  return result;
}

unint64_t sub_1002909CC()
{
  result = qword_10169C890;
  if (!qword_10169C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C890);
  }

  return result;
}

unint64_t sub_100290A84()
{
  result = qword_10169C8C8;
  if (!qword_10169C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8C8);
  }

  return result;
}

unint64_t sub_100290ADC()
{
  result = qword_10169C8D0;
  if (!qword_10169C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8D0);
  }

  return result;
}

unint64_t sub_100290B34()
{
  result = qword_10169C8D8;
  if (!qword_10169C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8D8);
  }

  return result;
}

unint64_t sub_100290B8C()
{
  result = qword_10169C8E0;
  if (!qword_10169C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8E0);
  }

  return result;
}

unint64_t sub_100290BE4()
{
  result = qword_10169C8E8;
  if (!qword_10169C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8E8);
  }

  return result;
}

unint64_t sub_100290C3C()
{
  result = qword_10169C8F0;
  if (!qword_10169C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8F0);
  }

  return result;
}

unint64_t sub_100290C94()
{
  result = qword_10169C8F8;
  if (!qword_10169C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8F8);
  }

  return result;
}

unint64_t sub_100290CEC()
{
  result = qword_10169C900;
  if (!qword_10169C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C900);
  }

  return result;
}

unint64_t sub_100290D44()
{
  result = qword_10169C908;
  if (!qword_10169C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C908);
  }

  return result;
}

unint64_t sub_100290D9C()
{
  result = qword_10169C910;
  if (!qword_10169C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C910);
  }

  return result;
}

unint64_t sub_100290DF4()
{
  result = qword_10169C918;
  if (!qword_10169C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C918);
  }

  return result;
}

unint64_t sub_100290E4C()
{
  result = qword_10169C920;
  if (!qword_10169C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C920);
  }

  return result;
}

unint64_t sub_100290EA4()
{
  result = qword_10169C928;
  if (!qword_10169C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C928);
  }

  return result;
}

uint64_t sub_100290F08(void *a1)
{
  v2 = [a1 recordZoneID];
  if (v2)
  {

    v3 = [a1 databaseScope];
    v4 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v5 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    *(v6 + 56) = sub_100008BB8(0, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v6 + 64) = sub_1002917A0(&qword_10169C960, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v6 + 32) = a1;
    v7 = a1;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "RecordZoneNotification: %@", 26, 2, v6);

    if ((v3 - 2) < 2)
    {
      return QueueSynchronizer.conditionalSync<A>(_:)();
    }

    if (v3 == 1)
    {
      v13 = static os_log_type_t.default.getter();

      return os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v5, "Nothing", 7, 2, _swiftEmptyArrayStorage);
    }

    v14 = static os_log_type_t.error.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v16 = CKDatabaseScope.description.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v5, "Unknown databaseScope: %@", 25, 2, v15);
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *(v11 + 56) = sub_100008BB8(0, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v11 + 64) = sub_1002917A0(&qword_10169C960, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v11 + 32) = a1;
    v12 = a1;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "No recordZoneID in %@", 21, 2, v11);
  }
}

void sub_100291298(void *a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = sub_100008BB8(0, &qword_10169C930, APSIncomingMessage_ptr);
  *(v4 + 64) = sub_1002917A0(&qword_10169C938, &qword_10169C930, APSIncomingMessage_ptr);
  *(v4 + 32) = a1;
  v5 = a1;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "ContainerPushDelegate: didReceiveMessage: %@", 44, 2, v4);

  v6 = [v5 userInfo];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

  if (!v28)
  {
    v11 = static os_log_type_t.error.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    sub_1000BC4D4(&qword_10169C940, &qword_1013989C8);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v3, "Unknown notification: %@", 24, 2, v12);

    return;
  }

  v9 = [v28 notificationType];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v26 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v3, "Read notifications are not handled", 34, 2, _swiftEmptyArrayStorage, 1, 2);
      goto LABEL_19;
    }

    if (v9 == 4)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v18 = static os_log_type_t.default.getter();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_101385D80;
        *(v19 + 56) = sub_100008BB8(0, &qword_10169C948, CKDatabaseNotification_ptr);
        *(v19 + 64) = sub_1002917A0(&qword_10169C950, &qword_10169C948, CKDatabaseNotification_ptr);
        *(v19 + 32) = v17;
        v28 = v28;
        os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v3, "DatabaseNotification: %@", 24, 2, v19);

        QueueSynchronizer.conditionalSync<A>(_:)();
        goto LABEL_19;
      }

LABEL_18:
      v27 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v3, "Unable to cast to CKRecordZoneNotification", 42, 2, _swiftEmptyArrayStorage, 1, 2);
      goto LABEL_19;
    }

LABEL_15:
    v20 = static os_log_type_t.error.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    type metadata accessor for NotificationType(0);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v3, "Unknown notificationType: %@", 28, 2, v21);

    return;
  }

  if (v9 == 1)
  {
    v25 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v3, "Query notifications are not handled", 35, 2, _swiftEmptyArrayStorage, 1, 2);
    goto LABEL_19;
  }

  if (v9 != 2)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_18;
  }

  sub_100290F08(v10);
LABEL_19:
}

uint64_t sub_1002917A0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008BB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100291824()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A818);
  sub_1000076D4(v0, qword_10177A818);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002918A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A830);
  sub_1000076D4(v0, qword_10177A830);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100291924(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 120) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  return _swift_task_switch(sub_100291950, v6, 0);
}

uint64_t sub_100291950()
{
  v28 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = v0[8];
    v24 = v0[7];
    v5 = v0[4];
    v22 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315650;
    v25 = v7;
    v26 = 0x7972616D6972702ELL;
    v27 = 0xEA0000000000282FLL;
    v0[2] = v5;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_1000136BC(v26, v27, &v25);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v26 = 0x7972616D6972702ELL;
    v27 = 0xEA0000000000282FLL;
    v0[3] = v22;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_1000136BC(v26, v27, &v25);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2080;
    if (v23)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0x6C646E75622D6F6ELL;
    }

    if (v23)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0xE900000000000065;
    }

    v16 = sub_1000136BC(v14, v15, &v25);

    *(v6 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "BeaconSharingService begin fetchSharedBeacons. Index start: %s, End: %s, bundle: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_100291C84;
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];

  return sub_100291FEC(v20, v18, v19);
}

uint64_t sub_100291C84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v6 + 104) = v10;
    *v10 = v7;
    v10[1] = sub_100291E1C;
    v11 = *(v6 + 64);
    v12 = *(v6 + 56);
    v13 = *(v6 + 120);

    return sub_10029B590(a1, a2, v13, v12, v11);
  }
}

uint64_t sub_100291E1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 72);

    return _swift_task_switch(sub_100291F80, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_100291F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100291FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[98] = v3;
  v4[97] = a3;
  v4[96] = a2;
  v4[95] = a1;
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v4[99] = v5;
  v4[100] = *(v5 - 8);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v6 = type metadata accessor for HashAlgorithm();
  v4[103] = v6;
  v4[104] = *(v6 - 8);
  v4[105] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = *(type metadata accessor for KeyDropFetchItem(0) - 8);
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[113] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v4[114] = v7;
  v4[115] = *(v7 - 8);
  v4[116] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle(0);
  v4[117] = v8;
  v4[118] = *(v8 - 8);
  v4[119] = swift_task_alloc();
  v9 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v4[120] = v9;
  v4[121] = *(v9 - 8);
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[129] = v10;
  v11 = *(v10 - 8);
  v4[130] = v11;
  v4[131] = *(v11 + 64);
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();

  return _swift_task_switch(sub_100292470, v3, 0);
}

uint64_t sub_100292470()
{
  v1 = *(v0 + 776);
  *(v0 + 712) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  *(v0 + 1136) = v2;
  if (v2)
  {
    v3 = *(v0 + 784);
    *(v0 + 1680) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 1160) = _swiftEmptyArrayStorage;
    *(v0 + 1144) = 0u;
    sub_10001F280(v1 + 32, v0 + 144);
    v4 = *(v3 + 136);
    *(v0 + 1168) = v4;
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v5);
    (*(*(*(v6 + 8) + 8) + 32))(v5);

    return _swift_task_switch(sub_100292788, v4, 0);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100292788()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v4 + 16);
  *(v0 + 1176) = v6;
  *(v0 + 1184) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = *(v4 + 80);
  *(v0 + 1684) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 1192) = v9;
  *(v9 + 16) = v1;
  v10 = *(v4 + 32);
  *(v0 + 1200) = v10;
  *(v0 + 1208) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 1216) = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_10029295C;

  return unsafeBlocking<A>(context:_:)(v0 + 688, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC6C, v9, v12);
}

uint64_t sub_10029295C()
{
  v1 = *(*v0 + 1168);

  return _swift_task_switch(sub_100292ABC, v1, 0);
}

uint64_t sub_100292ABC()
{
  v1 = v0[141];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[98];
  v5 = *(v2 + 8);
  v0[153] = v5;
  v0[154] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[155] = v0[86];

  return _swift_task_switch(sub_100292B80, v4, 0);
}

uint64_t sub_100292B80()
{
  v1 = v0[155];
  v2 = *(v1 + 16);
  v0[156] = v2;
  if (v2)
  {
    v3 = v0[143];
    v0[159] = 0;
    v0[158] = _swiftEmptyArrayStorage;
    v0[157] = v3;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v4 = v0[147];
    v5 = v0[139];
    v6 = v0[138];
    v7 = v0[129];
    v8 = v0[117];
    v9 = *(v0[118] + 80);
    v10 = v1 + ((v9 + 32) & ~v9);
    v0[160] = *(v0[98] + 128);
    v4(v5, v10 + *(v8 + 28), v7);
    v4(v6, v10 + *(v8 + 24), v7);
    v11 = sub_100292DFC;
    v12 = 0;
  }

  else
  {

    v13 = v0[145];
    v14 = v0[143];
    sub_10039845C(_swiftEmptyArrayStorage);
    v15 = v0[142];
    v16 = v0[144] + 1;
    sub_100007BAC(v0 + 18);
    if (v16 == v15)
    {
      v0[180] = v13;
      v0[179] = 0;
      v17 = v0[146];
      sub_10001F280(v0[97] + 32, (v0 + 28));
      v18 = v0[31];
      v19 = v0[32];
      sub_1000035D0(v0 + 28, v18);
      (*(*(*(v19 + 8) + 8) + 32))(v18);
      v20 = sub_10029639C;
    }

    else
    {
      v21 = v0[144];
      v0[145] = v13;
      v0[144] = v21 + 1;
      v0[143] = v14;
      v22 = v0[98];
      sub_10001F280(v0[97] + 40 * v21 + 72, (v0 + 18));
      v17 = *(v22 + 136);
      v0[146] = v17;
      v23 = v0[21];
      v24 = v0[22];
      sub_1000035D0(v0 + 18, v23);
      (*(*(*(v24 + 8) + 8) + 32))(v23);
      v20 = sub_100292788;
    }

    v11 = v20;
    v12 = v17;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100292DFC()
{
  v1 = *(*(v0 + 1280) + 120);
  *(v0 + 1288) = v1;

  return _swift_task_switch(sub_100292E90, v1, 0);
}

uint64_t sub_100292E90()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1032);
  v5 = (*(v0 + 1684) + 24) & ~*(v0 + 1684);
  (*(v0 + 1176))(v3, *(v0 + 1112), v4);
  v6 = swift_allocObject();
  *(v0 + 1296) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1304) = v7;
  v8 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v7 = v0;
  v7[1] = sub_100293034;

  return unsafeBlocking<A>(context:_:)(v0 + 664, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB6D0, v6, v8);
}

uint64_t sub_100293034()
{
  v1 = *(*v0 + 1288);

  return _swift_task_switch(sub_100293194, v1, 0);
}

uint64_t sub_100293194()
{
  *(v0 + 1312) = *(v0 + 664);

  return _swift_task_switch(sub_100293228, 0, 0);
}

uint64_t sub_100293228()
{
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF08);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[164];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Got %ld keys in the sharing circle secrets keychain.", v6, 0xCu);
  }

  else
  {
  }

  v7 = v0[157];
  sub_100D0E5C0(v0[164], (v0 + 2));
  v0[165] = v7;
  if (v7)
  {

    v0[167] = v7;
    v8 = v0[153];
    v9 = v0[139];
    v10 = v0[129];
    v11 = v0[98];
    v8(v0[138], v10);
    v8(v9, v10);

    v12 = sub_100293914;
    v13 = v11;
  }

  else
  {
    v13 = v0[160];
    v12 = sub_100293444;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_100293444()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {

    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v0[167] = v2;
    v4 = v0[153];
    v5 = v0[139];
    v6 = v0[129];
    v7 = v0[98];
    v4(v0[138], v6);
    v4(v5, v6);

    v8 = sub_100293914;
    v9 = v7;
  }

  else
  {
    v10 = v0[153];
    v19 = v0[150];
    v11 = v0[139];
    v12 = v0[138];
    v13 = v0[129];
    v14 = v0[128];
    v15 = v0[120];
    v18 = v0[98];
    v16 = v0[7];
    sub_100017D5C(v16, v1);
    sub_1001BAF34((v0 + 2));
    v10(v11, v13);
    v19(v14 + *(v15 + 20), v12, v13);
    *v14 = v16;
    v14[1] = v1;
    v8 = sub_10029361C;
    v9 = v18;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10029361C()
{
  sub_1002DB760(*(v0 + 1024), *(v0 + 1016), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 1264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C82C(0, v2[2] + 1, 1, *(v0 + 1264));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5C82C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v0 + 1328) = v2;
  v5 = *(v0 + 1248);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 968);
  v8 = *(v0 + 1272) + 1;
  sub_1002DBBF0(*(v0 + 1024), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v2[2] = v4 + 1;
  sub_1002DB7C8(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v8 == v5)
  {
    v9 = *(v0 + 1240);
    v10 = *(*(v0 + 944) + 80);
    *(v0 + 1688) = v10;
    v11 = *(v0 + 1320);
    *(v0 + 1360) = *(v0 + 1160);
    *(v0 + 1352) = 0;
    *(v0 + 1344) = v11;
    if (*(v9 + 16))
    {
      v12 = *(v0 + 1168);
      sub_1002DB760(v9 + ((v10 + 32) & ~v10), *(v0 + 952), type metadata accessor for MemberSharingCircle);
      v13 = *(v0 + 168);
      v14 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v13);
      (*(*(*(v14 + 8) + 8) + 32))(v13);
      v15 = sub_100293D20;
      v16 = v12;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v17 = *(v0 + 1320);
  v18 = *(v0 + 1272) + 1;
  *(v0 + 1272) = v18;
  *(v0 + 1264) = v2;
  *(v0 + 1256) = v17;
  v19 = *(v0 + 1240);
  if (v18 >= *(v19 + 16))
  {
    goto LABEL_14;
  }

  v20 = *(v0 + 1176);
  v21 = *(v0 + 1112);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 1032);
  v24 = *(v0 + 936);
  v25 = v19 + ((*(*(v0 + 944) + 80) + 32) & ~*(*(v0 + 944) + 80)) + *(*(v0 + 944) + 72) * v18;
  *(v0 + 1280) = *(*(v0 + 784) + 128);
  v20(v21, v25 + *(v24 + 28), v23);
  v20(v22, v25 + *(v24 + 24), v23);
  v15 = sub_100292DFC;
  v16 = 0;
LABEL_10:

  return _swift_task_switch(v15, v16, 0);
}

uint64_t sub_100293914()
{
  v31 = v0;
  v1 = v0[145];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = v0[153];
    v5 = v0[141];
    v6 = v0[129];
    v29 = v1;
    v7 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[26];
    v8 = v0[27];
    sub_1000035D0(v0 + 23, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v28(v5, v6);
    sub_100007BAC(v0 + 23);
    v13 = sub_1000136BC(v10, v12, &v30);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, &v30);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();

    v1 = v29;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v17 = v0[142];
  v18 = v0[144] + 1;
  sub_100007BAC(v0 + 18);
  if (v18 == v17)
  {
    v0[180] = v1;
    v0[179] = 0;
    v19 = v0[146];
    sub_10001F280(v0[97] + 32, (v0 + 28));
    v20 = v0[31];
    v21 = v0[32];
    sub_1000035D0(v0 + 28, v20);
    (*(*(*(v21 + 8) + 8) + 32))(v20);
    v22 = sub_10029639C;
  }

  else
  {
    v23 = v0[144];
    v0[145] = v1;
    v0[144] = v23 + 1;
    v0[143] = 0;
    v24 = v0[98];
    sub_10001F280(v0[97] + 40 * v23 + 72, (v0 + 18));
    v19 = *(v24 + 136);
    v0[146] = v19;
    v25 = v0[21];
    v26 = v0[22];
    sub_1000035D0(v0 + 18, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    v22 = sub_100292788;
  }

  return _swift_task_switch(v22, v19, 0);
}

uint64_t sub_100293D20()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1032);
  v5 = (*(v0 + 1684) + 24) & ~*(v0 + 1684);
  (*(v0 + 1176))(v3, *(v0 + 1128), v4);
  v6 = swift_allocObject();
  *(v0 + 1368) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1376) = v7;
  *v7 = v0;
  v7[1] = sub_100293EB0;
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB6E8, v6, v9);
}

uint64_t sub_100293EB0()
{
  v1 = *(*v0 + 1224);
  v2 = *(*v0 + 1128);
  v3 = *(*v0 + 1032);
  v4 = *(*v0 + 784);

  v1(v2, v3);

  return _swift_task_switch(sub_10029407C, v4, 0);
}

uint64_t sub_10029407C()
{
  v139 = v1;
  v2 = *(v1 + 912);
  v3 = *(v1 + 904);
  if ((*(*(v1 + 920) + 48))(v3, 1, v2) == 1)
  {
    sub_1002DBBF0(*(v1 + 952), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
    v4 = *(v1 + 1352) + 1;
    if (v4 == *(v1 + 1248))
    {
      v5 = *(v1 + 1344);
      v6 = *(v1 + 1360);

      sub_10039845C(*(v1 + 1328));
LABEL_4:
      v7 = *(v1 + 1136);
      v8 = *(v1 + 1152) + 1;
      sub_100007BAC((v1 + 144));
      if (v8 == v7)
      {
        *(v1 + 1440) = v6;
        *(v1 + 1432) = 0;
        v9 = *(v1 + 1168);
        sub_10001F280(*(v1 + 776) + 32, v1 + 224);
        v10 = *(v1 + 248);
        v11 = *(v1 + 256);
        sub_1000035D0((v1 + 224), v10);
        (*(*(*(v11 + 8) + 8) + 32))(v10);
        v12 = sub_10029639C;
      }

      else
      {
        v85 = *(v1 + 1152);
        *(v1 + 1160) = v6;
        *(v1 + 1152) = v85 + 1;
        *(v1 + 1144) = v5;
        v86 = *(v1 + 784);
        sub_10001F280(*(v1 + 776) + 40 * v85 + 72, v1 + 144);
        v9 = *(v86 + 136);
        *(v1 + 1168) = v9;
        v87 = *(v1 + 168);
        v88 = *(v1 + 176);
        sub_1000035D0((v1 + 144), v87);
        (*(*(*(v88 + 8) + 8) + 32))(v87);
        v12 = sub_100292788;
      }

LABEL_124:

      return _swift_task_switch(v12, v9, 0);
    }

    *(v1 + 1352) = v4;
    v20 = *(v1 + 1240);
    if (v4 < *(v20 + 16))
    {
      v9 = *(v1 + 1168);
      sub_1002DB760(v20 + ((*(v1 + 1688) + 32) & ~*(v1 + 1688)) + *(*(v1 + 944) + 72) * v4, *(v1 + 952), type metadata accessor for MemberSharingCircle);
      v21 = *(v1 + 168);
      v22 = *(v1 + 176);
      sub_1000035D0((v1 + 144), v21);
      (*(*(*(v22 + 8) + 8) + 32))(v21);
      v12 = sub_100293D20;
      goto LABEL_124;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    swift_once();
    goto LABEL_146;
  }

  v13 = *(v1 + 928);
  sub_1002DB7C8(v3, v13, type metadata accessor for SharedBeaconRecord);
  v15 = *(v1 + 168);
  v14 = *(v1 + 176);
  sub_1000035D0((v1 + 144), v15);
  (*(*(*(v14 + 8) + 8) + 32))(v15);
  v16 = *(v13 + *(v2 + 64));
  v17 = *(v1 + 168);
  v18 = *(v1 + 176);
  sub_1000035D0((v1 + 144), v17);
  v19 = (*(v18 + 88))(v17, v18);
  if (v16 > 2)
  {
    if (v16 == 3 || v16 != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v16)
  {
    v89 = *(v1 + 952);
    v90 = *(v1 + 928);
    (*(v1 + 1224))(*(v1 + 1096), *(v1 + 1032));

    type metadata accessor for SPBeaconSharingError(0);
    *(v1 + 544) = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1002DB700(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1002DBBF0(v90, type metadata accessor for SharedBeaconRecord);
    sub_1002DBBF0(v89, type metadata accessor for MemberSharingCircle);

    v6 = *(v1 + 1360);
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_1000076D4(v91, qword_10177A818);
    sub_10001F280(v1 + 144, v1 + 184);
    swift_errorRetain();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v135 = *(v1 + 1224);
      v94 = *(v1 + 1128);
      v95 = *(v1 + 1032);
      v96 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v96 = 141558531;
      *(v96 + 4) = 1752392040;
      *(v96 + 12) = 2081;
      v98 = *(v1 + 208);
      v97 = *(v1 + 216);
      sub_1000035D0((v1 + 184), v98);
      (*(*(*(v97 + 8) + 8) + 32))(v98);
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v100;
      v135(v94, v95);
      sub_100007BAC((v1 + 184));
      v102 = sub_1000136BC(v99, v101, &v138);

      *(v96 + 14) = v102;
      *(v96 + 22) = 2080;
      swift_getErrorValue();
      v103 = Error.localizedDescription.getter();
      v105 = sub_1000136BC(v103, v104, &v138);

      *(v96 + 24) = v105;
      _os_log_impl(&_mh_execute_header, v92, v93, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v96, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC((v1 + 184));
    }

    v5 = 0;
    goto LABEL_4;
  }

  if (v16 == 1)
  {
LABEL_17:
    if (v19)
    {
      LOBYTE(v16) = 2;
    }

    else
    {
      LOBYTE(v16) = 1;
    }

    goto LABEL_20;
  }

  LOBYTE(v16) = 0;
LABEL_20:
  *(v1 + 1718) = v16;
  v24 = *(v1 + 1328);
  (*(v1 + 1176))(*(v1 + 1088), *(v1 + 952) + *(*(v1 + 936) + 28), *(v1 + 1032));
  v25 = *(v24 + 16);
  v26 = _swiftEmptyArrayStorage;
  if (!v25)
  {
LABEL_120:
    *(v1 + 1384) = v26;
    v79 = swift_task_alloc();
    *(v1 + 1392) = v79;
    *v79 = v1;
    v79[1] = sub_1002952F4;
    v80 = *(v1 + 1096);
    v81 = *(v1 + 1088);
    v82 = *(v1 + 768);
    v83 = *(v1 + 760);

    return sub_10029D71C(v80, v81, v83, v82);
  }

  v3 = v1 + 648;
  v131 = (v1 + 656);
  v27 = *(v1 + 1328);
  v28 = *(v1 + 968);
  *(v1 + 648) = _swiftEmptyArrayStorage;
  sub_1011247A4(0, v25, 0);
  v29 = 0;
  v26 = *(v1 + 648);
  v132 = v25;
  v133 = v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v0 = *(v1 + 1344);
  while (1)
  {
    if (v29 >= *(*(v1 + 1328) + 16))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v30 = *(v1 + 1008);
    v137 = v29;
    sub_1002DB760(v133 + *(*(v1 + 968) + 72) * v29, v30, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v3 = *v30;
    v31 = v30[1];
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_34;
      }

      v33 = *(v3 + 16);
      v35 = *(v3 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_34;
      }

      v33 = v3;
      v35 = v3 >> 32;
    }

    sub_100017D5C(v3, v31);
    if (v35 < v33)
    {
      goto LABEL_156;
    }

    if (v32 == 2)
    {
      v34 = *(v3 + 16);
      v36 = *(v3 + 24);
    }

    else
    {
      v34 = v3;
      v36 = v3 >> 32;
    }

LABEL_34:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_157;
    }

    if (__OFSUB__(v35, v33))
    {
      goto LABEL_158;
    }

    if ((v35 - v33) < 0x39)
    {
      if (v32 <= 1)
      {
        if (!v32)
        {
          goto LABEL_61;
        }

        v37 = v3 >> 32;
LABEL_57:
        v40 = v3;
        goto LABEL_60;
      }

      if (v32 != 2)
      {
        goto LABEL_61;
      }

      v37 = *(v3 + 24);
LABEL_59:
      v40 = *(v3 + 16);
      goto LABEL_60;
    }

    v37 = v33 + 57;
    if (__OFADD__(v33, 57))
    {
      goto LABEL_162;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v38 = *(v3 + 16);
        v39 = *(v3 + 24);
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }
    }

    else if (v32)
    {
      v38 = v3;
      v39 = v3 >> 32;
    }

    else
    {
      v38 = 0;
      v39 = BYTE6(v31);
    }

    if (v39 < v37 || v37 < v38)
    {
      goto LABEL_163;
    }

    v40 = 0;
    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    if (v32 != 3)
    {
      goto LABEL_59;
    }

LABEL_60:
    if (v37 < v40)
    {
      goto LABEL_159;
    }

LABEL_61:
    v41 = Data._Representation.subscript.getter();
    v43 = v42;
    sub_100016590(v3, v31);
    v44 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v44 != 2)
      {
        goto LABEL_132;
      }

      v47 = *(v41 + 16);
      v46 = *(v41 + 24);
      v48 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (v48)
      {
        goto LABEL_167;
      }
    }

    else if (v44)
    {
      LODWORD(v45) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_166;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE6(v43);
    }

    if (v45 != 57)
    {
LABEL_132:
      sub_100016590(v41, v43);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v49 = sub_100A7A194(v41, v43, 0, 0);
    if (v0)
    {
      goto LABEL_145;
    }

    v50 = v49;
    v136 = v26;
    *(v1 + 680) = 57;
    type metadata accessor for __DataStorage();
    v3 = swift_allocObject();
    v51 = __DataStorage.init(length:)();
    *(v1 + 456) = 0x3900000000;
    *(v1 + 464) = v51 | 0x4000000000000000;
    v52 = sub_100A7AF80((v1 + 456), 2, v1 + 680, 0, v50);
    if (v52)
    {
      break;
    }

    v53 = *(v1 + 680);
    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_160;
    }

    v3 = *(v1 + 456);
    v0 = *(v1 + 464);
    v54 = v0 >> 62;
    v134 = v41;
    if ((v0 >> 62) > 1)
    {
      if (v54 != 2)
      {
        v56 = 0;
        v55 = 0;
        goto LABEL_82;
      }

      v55 = *(v3 + 16);
      v56 = *(v3 + 24);
      goto LABEL_80;
    }

    if (v54)
    {
      v55 = v3;
      v56 = v3 >> 32;
LABEL_80:
      sub_100017D5C(v3, v0);
      goto LABEL_82;
    }

    v55 = 0;
    v56 = BYTE6(v0);
LABEL_82:
    v57 = sub_10002F330(v55, v56, v3, v0);
    if (v53 && v57 < v53)
    {
      if (v54 <= 1)
      {
        if (!v54)
        {
          goto LABEL_107;
        }

        v58 = v3 >> 32;
LABEL_103:
        v61 = v3;
        goto LABEL_106;
      }

      if (v54 != 2)
      {
        goto LABEL_107;
      }

      v58 = *(v3 + 24);
LABEL_105:
      v61 = *(v3 + 16);
      goto LABEL_106;
    }

    v58 = v55 + v53;
    if (__OFADD__(v55, v53))
    {
      goto LABEL_164;
    }

    if (v54 > 1)
    {
      if (v54 == 2)
      {
        v59 = *(v3 + 16);
        v60 = *(v3 + 24);
      }

      else
      {
        v60 = 0;
        v59 = 0;
      }
    }

    else if (v54)
    {
      v59 = v3;
      v60 = v3 >> 32;
    }

    else
    {
      v59 = 0;
      v60 = BYTE6(v0);
    }

    if (v60 < v58 || v58 < v59)
    {
      goto LABEL_165;
    }

    v61 = 0;
    if (v54 <= 1)
    {
      if (!v54)
      {
        goto LABEL_106;
      }

      goto LABEL_103;
    }

    if (v54 != 3)
    {
      goto LABEL_105;
    }

LABEL_106:
    if (v58 < v61)
    {
      goto LABEL_161;
    }

LABEL_107:
    v62 = Data._Representation.subscript.getter();
    v64 = v63;
    sub_100016590(v3, v0);
    sub_100016590(v3, v0);
    CCECCryptorRelease();
    v65 = v64 >> 62;
    if ((v64 >> 62) > 1)
    {
      if (v65 != 2)
      {
        v118 = 0;
        goto LABEL_152;
      }

      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      v48 = __OFSUB__(v67, v68);
      v66 = v67 - v68;
      if (v48)
      {
        goto LABEL_169;
      }
    }

    else if (v65)
    {
      LODWORD(v66) = HIDWORD(v62) - v62;
      if (__OFSUB__(HIDWORD(v62), v62))
      {
        goto LABEL_168;
      }

      v66 = v66;
    }

    else
    {
      v66 = BYTE6(v64);
    }

    if (v66 != 28)
    {
      if (v65 == 2)
      {
        v127 = *(v62 + 16);
        v126 = *(v62 + 24);
        v118 = v126 - v127;
        if (!__OFSUB__(v126, v127))
        {
          goto LABEL_152;
        }

        __break(1u);
      }

      else if (v65 == 1)
      {
        if (__OFSUB__(HIDWORD(v62), v62))
        {
          __break(1u);
        }

        v118 = HIDWORD(v62) - v62;
        goto LABEL_152;
      }

      v118 = BYTE6(v64);
LABEL_152:
      sub_100018350();
      v124 = swift_allocError();
      *v128 = 28;
      *(v128 + 8) = v118;
      *(v128 + 16) = 0;
      swift_willThrow();
      sub_100016590(v62, v64);
      goto LABEL_153;
    }

    v3 = *(v1 + 1680);
    v69 = *(v1 + 1008);
    v70 = *(v1 + 840);
    v71 = *(v1 + 832);
    v72 = *(v1 + 824);
    sub_100016590(v134, v43);
    (*(v71 + 104))(v70, v3, v72);
    v73 = Data.hash(algorithm:)();
    v75 = v74;
    sub_100016590(v62, v64);
    (*(v71 + 8))(v70, v72);
    sub_1002DBBF0(v69, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v26 = v136;
    *(v1 + 648) = v136;
    v77 = v136[2];
    v76 = v136[3];
    if (v77 >= v76 >> 1)
    {
      v3 = v1 + 648;
      sub_1011247A4((v76 > 1), v77 + 1, 1);
      v26 = *(v1 + 648);
    }

    v0 = 0;
    v29 = v137 + 1;
    v26[2] = v77 + 1;
    v78 = &v26[2 * v77];
    v78[4] = v73;
    v78[5] = v75;
    if (v132 == v137 + 1)
    {
      goto LABEL_120;
    }
  }

  v106 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v107 = *(v1 + 864);
  v108 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_101385D80;
  *(v109 + 56) = &type metadata for Int32;
  *(v109 + 64) = &protocol witness table for Int32;
  *(v109 + 32) = v52;
  os_log(_:dso:log:_:_:)(v106, &_mh_execute_header, v108, "Error running CCECCryptorExportKey. Code: %d.", v130);

  CryptoError.init(rawValue:)();
  v110 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  v111 = swift_allocError();
  v113 = v112;
  v114 = *(v110 - 8);
  v115 = *(v114 + 48);
  v116 = v115(v107, 1, v110);
  v117 = *(v1 + 864);
  if (v116 == 1)
  {
    (*(v114 + 104))(v113, enum case for CryptoError.unspecifiedError(_:), v110);
    if (v115(v117, 1, v110) != 1)
    {
      sub_10000B3A8(*(v1 + 864), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v114 + 32))(v113, *(v1 + 864), v110);
  }

  swift_willThrow();
  v0 = v111;
  sub_100016590(*(v1 + 456), *(v1 + 464));
LABEL_145:
  v3 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_171;
  }

LABEL_146:
  v119 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_101385D80;
  *v131 = v0;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v121 = String.init<A>(describing:)();
  v123 = v122;
  *(v120 + 56) = &type metadata for String;
  *(v120 + 64) = sub_100008C00();
  *(v120 + 32) = v121;
  *(v120 + 40) = v123;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v119, "Error deriving advertisementKey: %@", 35, 2, v120);

  sub_1001BAF88();
  v124 = swift_allocError();
  *v125 = 0;
  swift_willThrow();

LABEL_153:
  _StringGuts.grow(_:)(35);
  *(v1 + 472) = 0;
  *(v1 + 480) = 0xE000000000000000;
  v129._countAndFlagsBits = 0xD000000000000021;
  v129._object = 0x800000010134CB30;
  String.append(_:)(v129);
  *(v1 + 672) = v124;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002952F4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1400) = a1;

  if (v1)
  {

    v3[178] = v1;
    v4 = v3[153];
    v5 = v3[137];
    v6 = v3[129];
    v7 = v3[98];
    v4(v3[136], v6);
    v4(v5, v6);

    v8 = sub_100295F54;
    v9 = v7;
  }

  else
  {
    v9 = v3[98];
    v8 = sub_1002954BC;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1002954BC()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1176);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1032);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A818);
  v1(v3, v2, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1400);
  v10 = *(v0 + 1224);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1032);
  if (v8)
  {
    v47 = v7;
    log = v6;
    v13 = swift_slowAlloc();
    *(v0 + 696) = swift_slowAlloc();
    *v13 = 134218755;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_1000136BC(v14, v16, (v0 + 696));

    *(v13 + 24) = v17;
    buf = v13;
    *(v13 + 32) = 2082;
    v18 = *(v9 + 16);
    if (v18)
    {
      v19 = *(v0 + 1400);
      *(v0 + 704) = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v18, 0);
      v20 = *(v0 + 704);
      v21 = (v19 + 64);
      do
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 1);
        v49 = *(v21 - 2);
        v24 = *v21;
        *(v0 + 720) = *(v21 - 4);
        sub_100017D5C(v23, v24);
        *(v0 + 440) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 448) = v25;
        v26._countAndFlagsBits = 8250;
        v26._object = 0xE200000000000000;
        String.append(_:)(v26);
        *(v0 + 728) = v22;
        v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v27);

        v28._countAndFlagsBits = 45;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        *(v0 + 736) = v49;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        sub_100016590(v23, v24);
        v30 = *(v0 + 440);
        v31 = *(v0 + 448);
        *(v0 + 704) = v20;
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_101123BB8((v32 > 1), v33 + 1, 1);
          v20 = *(v0 + 704);
        }

        v21 += 5;
        *(v20 + 16) = v33 + 1;
        v34 = v20 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        --v18;
      }

      while (v18);
    }

    v35 = Array.description.getter();
    v37 = v36;

    v38 = sub_1000136BC(v35, v37, (v0 + 696));

    *(buf + 34) = v38;
    _os_log_impl(&_mh_execute_header, log, v47, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v10(v11, v12);
  }

  v39 = swift_task_alloc();
  *(v0 + 1408) = v39;
  *v39 = v0;
  v39[1] = sub_100295968;
  v40 = *(v0 + 1400);
  v41 = *(v0 + 1384);
  v42 = *(v0 + 1088);
  v43 = *(v0 + 888);
  v44 = *(v0 + 1718);

  return sub_10029E154(v43, v40, v42, v44, v41);
}

uint64_t sub_100295968()
{
  v2 = *v1;
  *(*v1 + 1416) = v0;

  v3 = *(v2 + 784);
  if (v0)
  {
    v4 = sub_100295E50;
  }

  else
  {
    v4 = sub_100295AC0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100295AC0()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1032);

  v1(v3, v4);
  v1(v2, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 1360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100A5C854(0, v6[2] + 1, 1, *(v0 + 1360));
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100A5C854((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 952);
  v10 = *(v0 + 888);
  v11 = *(v0 + 872);
  sub_1002DBBF0(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v9, type metadata accessor for MemberSharingCircle);
  v6[2] = v8 + 1;
  sub_1002DB7C8(v10, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8, type metadata accessor for KeyDropFetchItem);
  v12 = *(v0 + 1416);
  v13 = *(v0 + 1352) + 1;
  if (v13 == *(v0 + 1248))
  {

    sub_10039845C(*(v0 + 1328));
    v14 = *(v0 + 1136);
    v15 = *(v0 + 1152) + 1;
    sub_100007BAC((v0 + 144));
    if (v15 == v14)
    {
      *(v0 + 1440) = v6;
      *(v0 + 1432) = 0;
      v16 = *(v0 + 1168);
      sub_10001F280(*(v0 + 776) + 32, v0 + 224);
      v17 = *(v0 + 248);
      v18 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v17);
      (*(*(*(v18 + 8) + 8) + 32))(v17);
      v19 = sub_10029639C;
    }

    else
    {
      v23 = *(v0 + 1152);
      *(v0 + 1160) = v6;
      *(v0 + 1152) = v23 + 1;
      *(v0 + 1144) = v12;
      v24 = *(v0 + 784);
      sub_10001F280(*(v0 + 776) + 40 * v23 + 72, v0 + 144);
      v16 = *(v24 + 136);
      *(v0 + 1168) = v16;
      v25 = *(v0 + 168);
      v26 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v25);
      (*(*(*(v26 + 8) + 8) + 32))(v25);
      v19 = sub_100292788;
    }
  }

  else
  {
    *(v0 + 1360) = v6;
    *(v0 + 1352) = v13;
    *(v0 + 1344) = v12;
    v20 = *(v0 + 1240);
    if (v13 >= *(v20 + 16))
    {
      __break(1u);
    }

    v16 = *(v0 + 1168);
    sub_1002DB760(v20 + ((*(v0 + 1688) + 32) & ~*(v0 + 1688)) + *(*(v0 + 944) + 72) * v13, *(v0 + 952), type metadata accessor for MemberSharingCircle);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v21);
    (*(*(*(v22 + 8) + 8) + 32))(v21);
    v19 = sub_100293D20;
  }

  return _swift_task_switch(v19, v16, 0);
}

uint64_t sub_100295E50()
{

  v0[178] = v0[177];
  v1 = v0[153];
  v2 = v0[137];
  v3 = v0[129];
  v4 = v0[98];
  v1(v0[136], v3);
  v1(v2, v3);

  return _swift_task_switch(sub_100295F54, v4, 0);
}

uint64_t sub_100295F54()
{
  v32 = v0;
  v1 = v0[119];
  sub_1002DBBF0(v0[116], type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v1, type metadata accessor for MemberSharingCircle);
  v2 = v0[170];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v29 = v0[153];
    v6 = v0[141];
    v7 = v0[129];
    v30 = v2;
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = v0[26];
    v9 = v0[27];
    sub_1000035D0(v0 + 23, v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v29(v6, v7);
    sub_100007BAC(v0 + 23);
    v14 = sub_1000136BC(v11, v13, &v31);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, &v31);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v8, 0x20u);
    swift_arrayDestroy();

    v2 = v30;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v18 = v0[142];
  v19 = v0[144] + 1;
  sub_100007BAC(v0 + 18);
  if (v19 == v18)
  {
    v0[180] = v2;
    v0[179] = 0;
    v20 = v0[146];
    sub_10001F280(v0[97] + 32, (v0 + 28));
    v21 = v0[31];
    v22 = v0[32];
    sub_1000035D0(v0 + 28, v21);
    (*(*(*(v22 + 8) + 8) + 32))(v21);
    v23 = sub_10029639C;
  }

  else
  {
    v24 = v0[144];
    v0[145] = v2;
    v0[144] = v24 + 1;
    v0[143] = 0;
    v25 = v0[98];
    sub_10001F280(v0[97] + 40 * v24 + 72, (v0 + 18));
    v20 = *(v25 + 136);
    v0[146] = v20;
    v26 = v0[21];
    v27 = v0[22];
    sub_1000035D0(v0 + 18, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    v23 = sub_100292788;
  }

  return _swift_task_switch(v23, v20, 0);
}

uint64_t sub_10029639C()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1032);
  v5 = (*(v0 + 1684) + 24) & ~*(v0 + 1684);
  v6 = (v5 + *(v0 + 1048) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 1176))(v3, *(v0 + 1128), v4);
  v7 = swift_allocObject();
  *(v0 + 1448) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v5, v3, v4);
  *(v7 + v6) = 0;

  v8 = swift_task_alloc();
  *(v0 + 1456) = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_100296550;

  return unsafeBlocking<A>(context:_:)(v0 + 640, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v7, v9);
}

uint64_t sub_100296550()
{
  v1 = *(*v0 + 1168);

  return _swift_task_switch(sub_1002966B0, v1, 0);
}

uint64_t sub_1002966B0()
{
  v1 = *(v0 + 1168);
  (*(v0 + 1224))(*(v0 + 1128), *(v0 + 1032));
  *(v0 + 1464) = *(v0 + 640);

  return _swift_task_switch(sub_10029675C, v1, 0);
}

uint64_t sub_10029675C()
{

  v1 = swift_task_alloc();
  *(v0 + 1472) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100296868;
  v3 = *(v0 + 1168);

  return unsafeBlocking<A>(context:_:)(v0 + 624, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100296868()
{
  v1 = *(*v0 + 1168);

  return _swift_task_switch(sub_1002969AC, v1, 0);
}

uint64_t sub_1002969AC()
{
  v1 = v0[98];
  v0[185] = v0[78];

  return _swift_task_switch(sub_100296A40, v1, 0);
}

uint64_t sub_100296A40()
{
  v1 = *(v0 + 1464);
  v2 = *(v1 + 16);
  *(v0 + 1488) = v2;
  if (v2)
  {
    *(v0 + 1504) = 0;
    *(v0 + 1496) = _swiftEmptyArrayStorage;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v3 = *(v0 + 1480);
    v4 = *(*(v0 + 800) + 80);
    sub_1002DB760(v1 + ((v4 + 32) & ~v4), *(v0 + 816), type metadata accessor for OwnerSharingCircle);
    sub_10001F280(v0 + 224, v0 + 264);
    v5 = swift_allocObject();
    *(v0 + 1512) = v5;
    *(v5 + 16) = v3;
    sub_10000A748((v0 + 264), v5 + 24);

    v6 = swift_task_alloc();
    *(v0 + 1520) = v6;
    v7 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    *v6 = v0;
    v6[1] = sub_100296ED8;

    return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DBC50, v5, v7);
  }

  else
  {

    v8 = *(v0 + 1440);
    sub_10039845C(_swiftEmptyArrayStorage);

    v9 = *(v0 + 1136);
    v10 = *(v0 + 1432) + 1;
    sub_100007BAC((v0 + 224));
    if (v10 == v9)
    {
      v17 = *(v0 + 712);

      v11 = *(v0 + 8);

      return v11(v8, v17);
    }

    else
    {
      v12 = *(v0 + 1432);
      *(v0 + 1440) = v8;
      *(v0 + 1432) = v12 + 1;
      v13 = *(v0 + 1168);
      sub_10001F280(*(v0 + 776) + 40 * v12 + 72, v0 + 224);
      v14 = *(v0 + 248);
      v15 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v14);
      (*(*(*(v15 + 8) + 8) + 32))(v14);

      return _swift_task_switch(sub_10029639C, v13, 0);
    }
  }
}

uint64_t sub_100296ED8()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v3 = *(v2 + 784);

    v4 = sub_10029AFF4;
  }

  else
  {
    v3 = *(v2 + 784);

    v4 = sub_100297064;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100297064()
{
  v1 = *(v0 + 1000);
  sub_100016590(*(v0 + 344), *(v0 + 352));
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  *(v0 + 1536) = v2;
  *(v0 + 1544) = v3;
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  sub_1000035D0((v0 + 224), v4);
  v6 = *(*(v5 + 8) + 8);
  v7 = *(v6 + 32);
  sub_100017D5C(v2, v3);
  v7(v4, v6);
  *v1 = v2;
  v1[1] = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 1496);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5C82C(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100A5C82C((v10 > 1), v11 + 1, 1, v9);
  }

  *(v0 + 1552) = v9;
  v12 = *(v0 + 1000);
  v13 = *(v0 + 968);
  v14 = *(v0 + 816);
  v15 = *(v0 + 792);
  v16 = *(v0 + 784);
  v9[2] = v11 + 1;
  v17 = *(v13 + 80);
  *(v0 + 1692) = v17;
  v18 = *(v13 + 72);
  *(v0 + 1560) = v18;
  sub_1002DB7C8(v12, v9 + ((v17 + 32) & ~v17) + v18 * v11, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  *(v0 + 1568) = *(v16 + 128);
  v19 = *(v15 + 20);
  *(v0 + 1696) = *(v15 + 24);
  v20 = swift_task_alloc();
  *(v0 + 1576) = v20;
  *v20 = v0;
  v20[1] = sub_100297280;

  return sub_100C7BA0C(v0 + 80, v14 + v19);
}

uint64_t sub_100297280()
{
  v2 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {

    v2[200] = v0;
    v3 = v2[98];

    v4 = sub_1002987EC;
    v5 = v3;
  }

  else
  {
    v5 = v2[196];
    v4 = sub_100297400;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100297400()
{
  v1 = *(v0 + 128);
  if (v1 >> 60 == 15)
  {

    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34(v0 + 80);
    *(v0 + 1600) = v2;
    v4 = *(v0 + 784);

    v5 = sub_1002987EC;
    v6 = v4;
  }

  else
  {
    v7 = *(v0 + 1696);
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1032);
    v10 = *(v0 + 992);
    v11 = *(v0 + 960);
    v12 = *(v0 + 816);
    v15 = *(v0 + 784);
    v13 = *(v0 + 120);
    sub_100017D5C(v13, v1);
    sub_1001BAF34(v0 + 80);
    v8(v10 + *(v11 + 20), v12 + v7, v9);
    *v10 = v13;
    v10[1] = v1;
    v5 = sub_100297590;
    v6 = v15;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100297590()
{
  v1 = *(v0 + 1552);
  sub_1002DB760(*(v0 + 992), *(v0 + 984), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v3 + 1;
  v5 = *(v0 + 1552);
  v134 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    goto LABEL_136;
  }

LABEL_2:
  *(v0 + 1592) = v5;
  v6 = *(v0 + 1560);
  v7 = *(v0 + 1488);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v10 = *(v0 + 816);
  v11 = (*(v0 + 1692) + 32) & ~*(v0 + 1692);
  v12 = *(v0 + 1504) + 1;
  sub_100016590(*(v0 + 1536), *(v0 + 1544));
  sub_1002DBBF0(v8, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  sub_1002DBBF0(v10, type metadata accessor for OwnerSharingCircle);
  *(v5 + 16) = v134;
  sub_1002DB7C8(v9, v5 + v11 + v6 * v3, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v12 != v7)
  {
    v75 = *(v0 + 1504) + 1;
    *(v0 + 1504) = v75;
    *(v0 + 1496) = v5;
    v76 = *(v0 + 1464);
    if (v75 < *(v76 + 16))
    {
      v77 = *(v0 + 1480);
      sub_1002DB760(v76 + ((*(*(v0 + 800) + 80) + 32) & ~*(*(v0 + 800) + 80)) + *(*(v0 + 800) + 72) * v75, *(v0 + 816), type metadata accessor for OwnerSharingCircle);
      sub_10001F280(v0 + 224, v0 + 264);
      v78 = swift_allocObject();
      *(v0 + 1512) = v78;
      *(v78 + 16) = v77;
      sub_10000A748((v0 + 264), v78 + 24);

      v79 = swift_task_alloc();
      *(v0 + 1520) = v79;
      v80 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
      *v79 = v0;
      v79[1] = sub_100296ED8;

      return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DBC50, v78, v80);
    }

    goto LABEL_140;
  }

  v13 = *(v0 + 1464);
  v14 = *(v0 + 800);
  *(v0 + 1608) = *(v5 + 16);
  v15 = *(v14 + 80);
  *(v0 + 1700) = v15;
  v16 = *(v0 + 1584);
  *(v0 + 1624) = *(v0 + 1440);
  *(v0 + 1616) = 0;
  if (!*(v13 + 16))
  {
    goto LABEL_139;
  }

  v3 = *(v0 + 1176);
  v17 = *(v0 + 1072);
  v18 = *(v0 + 1032);
  v19 = *(v0 + 808);
  v20 = *(v0 + 792);
  sub_1002DB760(v13 + ((v15 + 32) & ~v15), v19, type metadata accessor for OwnerSharingCircle);
  (v3)(v17, v19 + *(v20 + 24), v18);
  *(v0 + 1719) = 0x4000201u >> (8 * *(v19 + *(v20 + 28)));
  v21 = *(v0 + 1608);
  (*(v0 + 1176))(*(v0 + 1064), *(v0 + 808) + *(*(v0 + 792) + 20), *(v0 + 1032));
  v22 = _swiftEmptyArrayStorage;
  if (!v21)
  {
LABEL_91:
    *(v0 + 1632) = v22;
    v81 = swift_task_alloc();
    *(v0 + 1640) = v81;
    *v81 = v0;
    v81[1] = sub_100298D98;
    v82 = *(v0 + 1072);
    v83 = *(v0 + 1064);
    v84 = *(v0 + 768);
    v85 = *(v0 + 760);

    return sub_10029D71C(v82, v83, v85, v84);
  }

  v9 = (v0 + 568);
  v5 = v0 + 576;
  v23 = *(v0 + 1608);
  v24 = *(v0 + 1592);
  v25 = *(v0 + 968);
  *(v0 + 576) = _swiftEmptyArrayStorage;
  v131 = (v0 + 560);
  sub_1011247A4(0, v23, 0);
  v26 = 0;
  v22 = *(v0 + 576);
  v132 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  while (1)
  {
    v2 = *(*(v0 + 1592) + 16);
    if (v26 >= v2)
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v5 = sub_100A5C82C((v2 > 1), v4, 1, v5);
      goto LABEL_2;
    }

    v27 = *(v0 + 976);
    v134 = v26;
    sub_1002DB760(v132 + *(*(v0 + 968) + 72) * v26, v27, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v5 = *v27;
    v28 = v27[1];
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        v3 = 0;
        v30 = 0;
        v31 = 0;
        v2 = 0;
        goto LABEL_18;
      }

      v30 = *(v5 + 16);
      v3 = *(v5 + 24);
    }

    else
    {
      if (!v29)
      {
        v30 = 0;
        v2 = 0;
        v3 = BYTE6(v28);
        v31 = BYTE6(v28);
        goto LABEL_18;
      }

      v30 = v5;
      v3 = v5 >> 32;
    }

    sub_100017D5C(v5, v28);
    if (v3 < v30)
    {
      goto LABEL_132;
    }

    if (v29 == 2)
    {
      v2 = *(v5 + 16);
      v31 = *(v5 + 24);
    }

    else
    {
      v2 = v5;
      v31 = v5 >> 32;
    }

LABEL_18:
    if (v31 < v3 || v3 < v2)
    {
      goto LABEL_133;
    }

    v2 = v3 - v30;
    if (__OFSUB__(v3, v30))
    {
      goto LABEL_134;
    }

    if (v2 < 0x39)
    {
      if (v29 <= 1)
      {
        if (!v29)
        {
          goto LABEL_45;
        }

        v4 = v5 >> 32;
LABEL_41:
        v33 = v5;
        goto LABEL_44;
      }

      if (v29 != 2)
      {
        goto LABEL_45;
      }

      v4 = *(v5 + 24);
LABEL_43:
      v33 = *(v5 + 16);
      goto LABEL_44;
    }

    v4 = v30 + 57;
    if (__OFADD__(v30, 57))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      swift_once();
      goto LABEL_122;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v2 = *(v5 + 16);
        v32 = *(v5 + 24);
      }

      else
      {
        v32 = 0;
        v2 = 0;
      }
    }

    else if (v29)
    {
      v2 = v5;
      v32 = v5 >> 32;
    }

    else
    {
      v2 = 0;
      v32 = BYTE6(v28);
    }

    if (v32 < v4 || v4 < v2)
    {
      goto LABEL_138;
    }

    v33 = 0;
    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v29 != 3)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v4 < v33)
    {
      goto LABEL_135;
    }

LABEL_45:
    v34 = Data._Representation.subscript.getter();
    v36 = v35;
    sub_100016590(v5, v28);
    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_94;
      }

      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v41)
      {
        goto LABEL_142;
      }
    }

    else if (v37)
    {
      LODWORD(v38) = HIDWORD(v34) - v34;
      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_141;
      }

      v38 = v38;
    }

    else
    {
      v38 = BYTE6(v36);
    }

    if (v38 != 57)
    {
LABEL_94:
      sub_100016590(v34, v36);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v9 = 0;
    if (v37 == 2)
    {
      v46 = *(v34 + 16);
      v47 = __DataStorage._bytes.getter();
      if (!v47)
      {
        goto LABEL_113;
      }

      v48 = v47;
      v5 = v36 & 0x3FFFFFFFFFFFFFFFLL;
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_144;
      }

      v50 = v46 - v49 + v48;
      v5 = v36 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v50)
      {
        goto LABEL_114;
      }

      if (__OFSUB__(*(v34 + 24), *(v34 + 16)))
      {
        goto LABEL_146;
      }
    }

    else if (v37 == 1)
    {
      if (v34 > v34 >> 32)
      {
        goto LABEL_143;
      }

      v42 = __DataStorage._bytes.getter();
      if (!v42)
      {
LABEL_113:
        __DataStorage._length.getter();
LABEL_114:
        v99 = type metadata accessor for CryptoError();
        sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        v91 = swift_allocError();
        v101 = v116;
        v102 = &enum case for CryptoError.memoryFailure(_:);
LABEL_115:
        (*(*(v99 - 8) + 104))(v101, *v102, v99);
        goto LABEL_116;
      }

      v43 = v42;
      v5 = v36 & 0x3FFFFFFFFFFFFFFFLL;
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v44))
      {
        goto LABEL_145;
      }

      v45 = v34 - v44 + v43;
      v5 = v36 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v45)
      {
        goto LABEL_114;
      }

      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_147;
      }
    }

    else
    {
      *(v0 + 1704) = v34;
      *(v0 + 1712) = v36;
      *(v0 + 1714) = BYTE2(v36);
      *(v0 + 1715) = BYTE3(v36);
      *(v0 + 1716) = BYTE4(v36);
      *(v0 + 1717) = BYTE5(v36);
    }

    v51 = CCECCryptorImportKey();
    if (v51)
    {
      v86 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v87 = *(v0 + 856);
      v88 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_101385D80;
      *(v89 + 56) = &type metadata for Int32;
      *(v89 + 64) = &protocol witness table for Int32;
      *(v89 + 32) = v51;
      os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, v88, "Error running CCECCryptorImportKey. Code: %d.", v130);

      CryptoError.init(rawValue:)();
      v90 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v91 = swift_allocError();
      v93 = v92;
      v94 = *(v90 - 8);
      v95 = *(v94 + 48);
      v96 = v95(v87, 1, v90);
      v97 = *(v0 + 856);
      if (v96 == 1)
      {
        (*(v94 + 104))(v93, enum case for CryptoError.unspecifiedError(_:), v90);
        if (v95(v97, 1, v90) != 1)
        {
          sub_10000B3A8(*(v0 + 856), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v94 + 32))(v93, *(v0 + 856), v90);
      }

LABEL_116:
      v9 = v91;
      swift_willThrow();
      goto LABEL_121;
    }

    v133 = v22;
    v52 = *v9;
    if (!*v9)
    {
      v98 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        v128 = v98;
        swift_once();
        v98 = v128;
      }

      os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, qword_10177BA00, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", 67, 2, _swiftEmptyArrayStorage);
      v99 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v91 = swift_allocError();
      v101 = v100;
      v102 = &enum case for CryptoError.unspecifiedError(_:);
      goto LABEL_115;
    }

    *(v0 + 552) = 57;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v53 = __DataStorage.init(length:)();
    *(v0 + 520) = 0x3900000000;
    *(v0 + 528) = v53 | 0x4000000000000000;
    v54 = sub_100A7AF80((v0 + 520), 2, v0 + 552, 0, v52);
    if (v16)
    {
      v9 = v16;
      goto LABEL_120;
    }

    v55 = v54;
    if (v54)
    {
      break;
    }

    v56 = *(v0 + 520);
    v57 = *(v0 + 528);
    v58 = *(v0 + 552);
    sub_100017D5C(v56, v57);
    sub_10002EA98(v58, v56, v57, (v0 + 504));
    sub_100016590(v56, v57);
    v59 = *(v0 + 504);
    v5 = *(v0 + 512);
    CCECCryptorRelease();
    v60 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v60 != 2)
      {
        v115 = 0;
        goto LABEL_130;
      }

      v63 = *(v59 + 16);
      v62 = *(v59 + 24);
      v41 = __OFSUB__(v62, v63);
      v61 = v62 - v63;
      if (v41)
      {
        goto LABEL_148;
      }
    }

    else if (v60)
    {
      LODWORD(v61) = HIDWORD(v59) - v59;
      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_149;
      }

      v61 = v61;
    }

    else
    {
      v61 = BYTE6(v5);
    }

    if (v61 != 28)
    {
      if (v60 == 2)
      {
        v126 = *(v59 + 16);
        v125 = *(v59 + 24);
        v115 = v125 - v126;
        if (!__OFSUB__(v125, v126))
        {
          goto LABEL_130;
        }

        __break(1u);
      }

      else if (v60 == 1)
      {
        if (__OFSUB__(HIDWORD(v59), v59))
        {
          __break(1u);
        }

        v115 = HIDWORD(v59) - v59;
        goto LABEL_130;
      }

      v115 = BYTE6(v5);
LABEL_130:
      sub_100018350();
      v122 = swift_allocError();
      *v127 = 28;
      *(v127 + 8) = v115;
      *(v127 + 16) = 0;
      swift_willThrow();
      sub_100016590(v59, v5);
      goto LABEL_123;
    }

    v64 = *(v0 + 1680);
    v65 = *(v0 + 976);
    v66 = *(v0 + 840);
    v67 = *(v0 + 832);
    v68 = *(v0 + 824);
    sub_100016590(v34, v36);
    (*(v67 + 104))(v66, v64, v68);
    v3 = Data.hash(algorithm:)();
    v70 = v69;
    sub_100016590(v59, v5);
    (*(v67 + 8))(v66, v68);
    sub_1002DBBF0(v65, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v22 = v133;
    *(v0 + 576) = v133;
    v72 = v133[2];
    v71 = v133[3];
    if (v72 >= v71 >> 1)
    {
      v5 = v0 + 576;
      sub_1011247A4((v71 > 1), v72 + 1, 1);
      v22 = *(v0 + 576);
    }

    v16 = 0;
    v26 = v134 + 1;
    v73 = *(v0 + 1608);
    v22[2] = v72 + 1;
    v74 = &v22[2 * v72];
    v74[4] = v3;
    v74[5] = v70;
    v9 = (v0 + 568);
    if (v134 + 1 == v73)
    {
      goto LABEL_91;
    }
  }

  v103 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v104 = *(v0 + 848);
  v105 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_101385D80;
  *(v106 + 56) = &type metadata for Int32;
  *(v106 + 64) = &protocol witness table for Int32;
  *(v106 + 32) = v55;
  os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v105, "Error running CCECCryptorExportKey. Code: %d.", v130);

  CryptoError.init(rawValue:)();
  v107 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  v108 = swift_allocError();
  v110 = v109;
  v111 = *(v107 - 8);
  v112 = *(v111 + 48);
  v113 = v112(v104, 1, v107);
  v114 = *(v0 + 848);
  if (v113 == 1)
  {
    (*(v111 + 104))(v110, enum case for CryptoError.unspecifiedError(_:), v107);
    if (v112(v114, 1, v107) != 1)
    {
      sub_10000B3A8(*(v0 + 848), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v111 + 32))(v110, *(v0 + 848), v107);
  }

  v9 = v108;
  swift_willThrow();
LABEL_120:
  sub_100016590(*(v0 + 520), *(v0 + 528));
LABEL_121:
  v5 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_150;
  }

LABEL_122:
  v117 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_101385D80;
  *v131 = v9;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v119 = String.init<A>(describing:)();
  v121 = v120;
  *(v118 + 56) = &type metadata for String;
  *(v118 + 64) = sub_100008C00();
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v117, "Error deriving advertisementKey: %@", 35, 2, v118);

  sub_1001BAF88();
  v122 = swift_allocError();
  *v123 = 0;
  swift_willThrow();

LABEL_123:
  _StringGuts.grow(_:)(35);
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  v124._countAndFlagsBits = 0xD000000000000021;
  v124._object = 0x800000010134CB30;
  String.append(_:)(v124);
  *(v0 + 752) = v122;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002987EC()
{
  v29 = v0;
  v1 = v0[102];
  sub_100016590(v0[192], v0[193]);

  sub_1002DBBF0(v1, type metadata accessor for OwnerSharingCircle);
  v27 = v0[180];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v26 = v0[153];
    v5 = v0[141];
    v6 = v0[129];
    v7 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[41];
    v8 = v0[42];
    sub_1000035D0(v0 + 38, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v26(v5, v6);
    sub_100007BAC(v0 + 38);
    v13 = sub_1000136BC(v10, v12, v28);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v28);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v17 = v0[142];
  v18 = v0[179] + 1;
  sub_100007BAC(v0 + 28);
  if (v18 == v17)
  {
    v25 = v0[89];

    v19 = v0[1];

    return v19(v27, v25);
  }

  else
  {
    v21 = v0[179];
    v0[180] = v27;
    v0[179] = v21 + 1;
    v22 = v0[146];
    sub_10001F280(v0[97] + 40 * v21 + 72, (v0 + 28));
    v23 = v0[31];
    v24 = v0[32];
    sub_1000035D0(v0 + 28, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);

    return _swift_task_switch(sub_10029639C, v22, 0);
  }
}

uint64_t sub_100298D98(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1648) = a1;

  if (v1)
  {

    v3[209] = v1;
    v4 = v3[153];
    v5 = v3[134];
    v6 = v3[129];
    v7 = v3[98];
    v4(v3[133], v6);
    v4(v5, v6);

    v8 = sub_10029AA58;
    v9 = v7;
  }

  else
  {
    v9 = v3[98];
    v8 = sub_100298F60;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100298F60()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1176);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1032);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A818);
  v1(v3, v2, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1648);
  v10 = *(v0 + 1224);
  v11 = *(v0 + 1056);
  v12 = *(v0 + 1032);
  if (v8)
  {
    v47 = v7;
    log = v6;
    v13 = swift_slowAlloc();
    *(v0 + 536) = swift_slowAlloc();
    *v13 = 134218755;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_1000136BC(v14, v16, (v0 + 536));

    *(v13 + 24) = v17;
    buf = v13;
    *(v13 + 32) = 2082;
    v18 = *(v9 + 16);
    if (v18)
    {
      v19 = *(v0 + 1648);
      *(v0 + 584) = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v18, 0);
      v20 = *(v0 + 584);
      v21 = (v19 + 64);
      do
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 1);
        v49 = *(v21 - 2);
        v24 = *v21;
        *(v0 + 600) = *(v21 - 4);
        sub_100017D5C(v23, v24);
        *(v0 + 488) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 496) = v25;
        v26._countAndFlagsBits = 8250;
        v26._object = 0xE200000000000000;
        String.append(_:)(v26);
        *(v0 + 608) = v22;
        v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v27);

        v28._countAndFlagsBits = 45;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        *(v0 + 616) = v49;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        sub_100016590(v23, v24);
        v30 = *(v0 + 488);
        v31 = *(v0 + 496);
        *(v0 + 584) = v20;
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_101123BB8((v32 > 1), v33 + 1, 1);
          v20 = *(v0 + 584);
        }

        v21 += 5;
        *(v20 + 16) = v33 + 1;
        v34 = v20 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        --v18;
      }

      while (v18);
    }

    v35 = Array.description.getter();
    v37 = v36;

    v38 = sub_1000136BC(v35, v37, (v0 + 536));

    *(buf + 34) = v38;
    _os_log_impl(&_mh_execute_header, log, v47, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v10(v11, v12);
  }

  v39 = swift_task_alloc();
  *(v0 + 1656) = v39;
  *v39 = v0;
  v39[1] = sub_10029940C;
  v40 = *(v0 + 1648);
  v41 = *(v0 + 1632);
  v42 = *(v0 + 1064);
  v43 = *(v0 + 880);
  v44 = *(v0 + 1719);

  return sub_10029E154(v43, v40, v42, v44, v41);
}

uint64_t sub_10029940C()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 784);
  if (v0)
  {
    v4 = sub_10029A954;
  }

  else
  {
    v4 = sub_100299564;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100299564()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1032);

  v1(v3, v4);
  v1(v2, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 1624);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_2:
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100A5C854((v7 > 1), v8 + 1, 1, v6);
  }

  v10 = *(v0 + 1488);
  v11 = *(v0 + 880);
  v12 = *(v0 + 872);
  v13 = *(v0 + 1616) + 1;
  sub_1002DBBF0(*(v0 + 808), type metadata accessor for OwnerSharingCircle);
  *(v6 + 16) = v9;
  sub_1002DB7C8(v11, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8, type metadata accessor for KeyDropFetchItem);
  if (v13 == v10)
  {

    sub_10039845C(*(v0 + 1592));

    v14 = *(v0 + 1136);
    v15 = *(v0 + 1432) + 1;
    sub_100007BAC((v0 + 224));
    if (v15 == v14)
    {
      v135 = *(v0 + 712);

      v16 = *(v0 + 8);

      return v16(v6, v135);
    }

    else
    {
      v82 = *(v0 + 1432);
      *(v0 + 1440) = v6;
      *(v0 + 1432) = v82 + 1;
      v83 = *(v0 + 1168);
      sub_10001F280(*(v0 + 776) + 40 * v82 + 72, v0 + 224);
      v84 = *(v0 + 248);
      v85 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v84);
      (*(*(*(v85 + 8) + 8) + 32))(v84);

      return _swift_task_switch(sub_10029639C, v83, 0);
    }
  }

  v18 = *(v0 + 1664);
  v19 = *(v0 + 1616) + 1;
  *(v0 + 1624) = v6;
  *(v0 + 1616) = v19;
  v20 = *(v0 + 1464);
  if (v19 >= *(v20 + 16))
  {
    goto LABEL_144;
  }

  v21 = *(v0 + 1176);
  v22 = *(v0 + 1072);
  v23 = *(v0 + 1032);
  v24 = *(v0 + 808);
  v25 = *(v0 + 792);
  sub_1002DB760(v20 + ((*(v0 + 1700) + 32) & ~*(v0 + 1700)) + *(*(v0 + 800) + 72) * v19, v24, type metadata accessor for OwnerSharingCircle);
  v21(v22, v24 + *(v25 + 24), v23);
  *(v0 + 1719) = 0x4000201u >> (8 * *(v24 + *(v25 + 28)));
  v26 = *(v0 + 1608);
  (*(v0 + 1176))(*(v0 + 1064), *(v0 + 808) + *(*(v0 + 792) + 20), *(v0 + 1032));
  v27 = _swiftEmptyArrayStorage;
  if (!v26)
  {
LABEL_96:
    *(v0 + 1632) = v27;
    v86 = swift_task_alloc();
    *(v0 + 1640) = v86;
    *v86 = v0;
    v86[1] = sub_100298D98;
    v87 = *(v0 + 1072);
    v88 = *(v0 + 1064);
    v89 = *(v0 + 768);
    v90 = *(v0 + 760);

    return sub_10029D71C(v87, v88, v90, v89);
  }

  v8 = v0 + 568;
  v28 = *(v0 + 1608);
  v6 = *(v0 + 1592);
  v29 = *(v0 + 968);
  *(v0 + 576) = _swiftEmptyArrayStorage;
  v136 = (v0 + 560);
  sub_1011247A4(0, v28, 0);
  v30 = 0;
  v27 = *(v0 + 576);
  v137 = (v6 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
  while (1)
  {
    if (v30 >= *(*(v0 + 1592) + 16))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      v6 = sub_100A5C854(0, *(v6 + 16) + 1, 1, v6);
      goto LABEL_2;
    }

    v31 = *(v0 + 976);
    v139 = v30;
    sub_1002DB760(&v137[*(*(v0 + 968) + 72) * v30], v31, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v9 = *v31;
    v32 = v31[1];
    v6 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v6 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_24;
      }

      v33 = *(v9 + 16);
      v35 = *(v9 + 24);
    }

    else
    {
      if (!v6)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v32);
        v36 = BYTE6(v32);
        goto LABEL_24;
      }

      v33 = v9;
      v35 = v9 >> 32;
    }

    sub_100017D5C(v9, v32);
    if (v35 < v33)
    {
      goto LABEL_137;
    }

    if (v6 == 2)
    {
      v34 = *(v9 + 16);
      v36 = *(v9 + 24);
    }

    else
    {
      v34 = v9;
      v36 = v9 >> 32;
    }

LABEL_24:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_138;
    }

    if (__OFSUB__(v35, v33))
    {
      goto LABEL_139;
    }

    if ((v35 - v33) < 0x39)
    {
      if (v6 <= 1)
      {
        if (!v6)
        {
          goto LABEL_51;
        }

        v37 = v9 >> 32;
LABEL_47:
        v40 = v9;
        goto LABEL_50;
      }

      if (v6 != 2)
      {
        goto LABEL_51;
      }

      v37 = *(v9 + 24);
LABEL_49:
      v40 = *(v9 + 16);
      goto LABEL_50;
    }

    v37 = v33 + 57;
    if (__OFADD__(v33, 57))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      swift_once();
      goto LABEL_127;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v38 = *(v9 + 16);
        v39 = *(v9 + 24);
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }
    }

    else if (v6)
    {
      v38 = v9;
      v39 = v9 >> 32;
    }

    else
    {
      v38 = 0;
      v39 = BYTE6(v32);
    }

    if (v39 < v37 || v37 < v38)
    {
      goto LABEL_143;
    }

    v40 = 0;
    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (v6 != 3)
    {
      goto LABEL_49;
    }

LABEL_50:
    if (v37 < v40)
    {
      goto LABEL_140;
    }

LABEL_51:
    v41 = Data._Representation.subscript.getter();
    v43 = v42;
    sub_100016590(v9, v32);
    v44 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v44 != 2)
      {
        goto LABEL_99;
      }

      v47 = *(v41 + 16);
      v46 = *(v41 + 24);
      v48 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (v48)
      {
        goto LABEL_146;
      }
    }

    else if (v44)
    {
      LODWORD(v45) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_145;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE6(v43);
    }

    if (v45 != 57)
    {
LABEL_99:
      sub_100016590(v41, v43);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v8 = 0;
    if (v44 == 2)
    {
      v53 = *(v41 + 16);
      v54 = __DataStorage._bytes.getter();
      if (!v54)
      {
        goto LABEL_118;
      }

      v55 = v54;
      v9 = v43 & 0x3FFFFFFFFFFFFFFFLL;
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v53, v56))
      {
        goto LABEL_148;
      }

      v57 = v53 - v56 + v55;
      v9 = v43 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v57)
      {
        goto LABEL_119;
      }

      if (__OFSUB__(*(v41 + 24), *(v41 + 16)))
      {
        goto LABEL_150;
      }
    }

    else if (v44 == 1)
    {
      if (v41 > v41 >> 32)
      {
        goto LABEL_147;
      }

      v49 = __DataStorage._bytes.getter();
      if (!v49)
      {
LABEL_118:
        __DataStorage._length.getter();
LABEL_119:
        v104 = type metadata accessor for CryptoError();
        sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        v96 = swift_allocError();
        v106 = v121;
        v107 = &enum case for CryptoError.memoryFailure(_:);
LABEL_120:
        (*(*(v104 - 8) + 104))(v106, *v107, v104);
        goto LABEL_121;
      }

      v50 = v49;
      v9 = v43 & 0x3FFFFFFFFFFFFFFFLL;
      v51 = __DataStorage._offset.getter();
      if (__OFSUB__(v41, v51))
      {
        goto LABEL_149;
      }

      v52 = v41 - v51 + v50;
      v9 = v43 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      if (!v52)
      {
        goto LABEL_119;
      }

      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_151;
      }
    }

    else
    {
      *(v0 + 1704) = v41;
      *(v0 + 1712) = v43;
      *(v0 + 1714) = BYTE2(v43);
      *(v0 + 1715) = BYTE3(v43);
      *(v0 + 1716) = BYTE4(v43);
      *(v0 + 1717) = BYTE5(v43);
    }

    v58 = CCECCryptorImportKey();
    if (v58)
    {
      v91 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v92 = *(v0 + 856);
      v93 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_101385D80;
      *(v94 + 56) = &type metadata for Int32;
      *(v94 + 64) = &protocol witness table for Int32;
      *(v94 + 32) = v58;
      os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v93, "Error running CCECCryptorImportKey. Code: %d.", v134);

      CryptoError.init(rawValue:)();
      v95 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v96 = swift_allocError();
      v98 = v97;
      v99 = *(v95 - 8);
      v100 = *(v99 + 48);
      v101 = v100(v92, 1, v95);
      v102 = *(v0 + 856);
      if (v101 == 1)
      {
        (*(v99 + 104))(v98, enum case for CryptoError.unspecifiedError(_:), v95);
        if (v100(v102, 1, v95) != 1)
        {
          sub_10000B3A8(*(v0 + 856), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v99 + 32))(v98, *(v0 + 856), v95);
      }

LABEL_121:
      v8 = v96;
      swift_willThrow();
      goto LABEL_126;
    }

    v138 = v27;
    v59 = *v8;
    if (!*v8)
    {
      v103 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        v133 = v103;
        swift_once();
        v103 = v133;
      }

      os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, qword_10177BA00, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", 67, 2, _swiftEmptyArrayStorage);
      v104 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v96 = swift_allocError();
      v106 = v105;
      v107 = &enum case for CryptoError.unspecifiedError(_:);
      goto LABEL_120;
    }

    *(v0 + 552) = 57;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v60 = __DataStorage.init(length:)();
    *(v0 + 520) = 0x3900000000;
    *(v0 + 528) = v60 | 0x4000000000000000;
    v61 = sub_100A7AF80((v0 + 520), 2, v0 + 552, 0, v59);
    if (v18)
    {
      v8 = v18;
      goto LABEL_125;
    }

    v62 = v61;
    if (v61)
    {
      break;
    }

    v63 = *(v0 + 520);
    v64 = *(v0 + 528);
    v65 = *(v0 + 552);
    sub_100017D5C(v63, v64);
    sub_10002EA98(v65, v63, v64, (v0 + 504));
    sub_100016590(v63, v64);
    v66 = *(v0 + 504);
    v9 = *(v0 + 512);
    CCECCryptorRelease();
    v67 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v67 != 2)
      {
        v120 = 0;
        goto LABEL_135;
      }

      v70 = *(v66 + 16);
      v69 = *(v66 + 24);
      v48 = __OFSUB__(v69, v70);
      v68 = v69 - v70;
      if (v48)
      {
        goto LABEL_152;
      }
    }

    else if (v67)
    {
      LODWORD(v68) = HIDWORD(v66) - v66;
      if (__OFSUB__(HIDWORD(v66), v66))
      {
        goto LABEL_153;
      }

      v68 = v68;
    }

    else
    {
      v68 = BYTE6(v9);
    }

    if (v68 != 28)
    {
      if (v67 == 2)
      {
        v131 = *(v66 + 16);
        v130 = *(v66 + 24);
        v120 = v130 - v131;
        if (!__OFSUB__(v130, v131))
        {
          goto LABEL_135;
        }

        __break(1u);
      }

      else if (v67 == 1)
      {
        if (__OFSUB__(HIDWORD(v66), v66))
        {
          __break(1u);
        }

        v120 = HIDWORD(v66) - v66;
        goto LABEL_135;
      }

      v120 = BYTE6(v9);
LABEL_135:
      sub_100018350();
      v127 = swift_allocError();
      *v132 = 28;
      *(v132 + 8) = v120;
      *(v132 + 16) = 0;
      swift_willThrow();
      sub_100016590(v66, v9);
      goto LABEL_128;
    }

    v71 = *(v0 + 1680);
    v72 = *(v0 + 976);
    v73 = *(v0 + 840);
    v74 = *(v0 + 832);
    v75 = *(v0 + 824);
    sub_100016590(v41, v43);
    (*(v74 + 104))(v73, v71, v75);
    v76 = Data.hash(algorithm:)();
    v78 = v77;
    sub_100016590(v66, v9);
    (*(v74 + 8))(v73, v75);
    sub_1002DBBF0(v72, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v27 = v138;
    *(v0 + 576) = v138;
    v6 = v138[2];
    v79 = v138[3];
    if (v6 >= v79 >> 1)
    {
      sub_1011247A4((v79 > 1), v6 + 1, 1);
      v27 = *(v0 + 576);
    }

    v18 = 0;
    v30 = v139 + 1;
    v80 = *(v0 + 1608);
    v27[2] = v6 + 1;
    v81 = &v27[2 * v6];
    v81[4] = v76;
    v81[5] = v78;
    v8 = v0 + 568;
    if (v139 + 1 == v80)
    {
      goto LABEL_96;
    }
  }

  v108 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v109 = *(v0 + 848);
  v110 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_101385D80;
  *(v111 + 56) = &type metadata for Int32;
  *(v111 + 64) = &protocol witness table for Int32;
  *(v111 + 32) = v62;
  os_log(_:dso:log:_:_:)(v108, &_mh_execute_header, v110, "Error running CCECCryptorExportKey. Code: %d.", v134);

  CryptoError.init(rawValue:)();
  v112 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  v113 = swift_allocError();
  v115 = v114;
  v116 = *(v112 - 8);
  v117 = *(v116 + 48);
  v118 = v117(v109, 1, v112);
  v119 = *(v0 + 848);
  if (v118 == 1)
  {
    (*(v116 + 104))(v115, enum case for CryptoError.unspecifiedError(_:), v112);
    if (v117(v119, 1, v112) != 1)
    {
      sub_10000B3A8(*(v0 + 848), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v116 + 32))(v115, *(v0 + 848), v112);
  }

  v8 = v113;
  swift_willThrow();
LABEL_125:
  sub_100016590(*(v0 + 520), *(v0 + 528));
LABEL_126:
  v9 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_154;
  }

LABEL_127:
  v122 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_101385D80;
  *v136 = v8;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v124 = String.init<A>(describing:)();
  v126 = v125;
  *(v123 + 56) = &type metadata for String;
  *(v123 + 64) = sub_100008C00();
  *(v123 + 32) = v124;
  *(v123 + 40) = v126;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v122, "Error deriving advertisementKey: %@", 35, 2, v123);

  sub_1001BAF88();
  v127 = swift_allocError();
  *v128 = 0;
  swift_willThrow();

LABEL_128:
  _StringGuts.grow(_:)(35);
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  v129._countAndFlagsBits = 0xD000000000000021;
  v129._object = 0x800000010134CB30;
  String.append(_:)(v129);
  *(v0 + 752) = v127;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10029A954()
{

  v0[209] = v0[208];
  v1 = v0[153];
  v2 = v0[134];
  v3 = v0[129];
  v4 = v0[98];
  v1(v0[133], v3);
  v1(v2, v3);

  return _swift_task_switch(sub_10029AA58, v4, 0);
}

uint64_t sub_10029AA58()
{
  v29 = v0;
  v1 = v0[101];

  sub_1002DBBF0(v1, type metadata accessor for OwnerSharingCircle);
  v27 = v0[203];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v26 = v0[153];
    v5 = v0[141];
    v6 = v0[129];
    v7 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[41];
    v8 = v0[42];
    sub_1000035D0(v0 + 38, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v26(v5, v6);
    sub_100007BAC(v0 + 38);
    v13 = sub_1000136BC(v10, v12, v28);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v28);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v17 = v0[142];
  v18 = v0[179] + 1;
  sub_100007BAC(v0 + 28);
  if (v18 == v17)
  {
    v25 = v0[89];

    v19 = v0[1];

    return v19(v27, v25);
  }

  else
  {
    v21 = v0[179];
    v0[180] = v27;
    v0[179] = v21 + 1;
    v22 = v0[146];
    sub_10001F280(v0[97] + 40 * v21 + 72, (v0 + 28));
    v23 = v0[31];
    v24 = v0[32];
    sub_1000035D0(v0 + 28, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);

    return _swift_task_switch(sub_10029639C, v22, 0);
  }
}

uint64_t sub_10029AFF4()
{
  v29 = v0;
  v1 = v0[102];

  sub_1002DBBF0(v1, type metadata accessor for OwnerSharingCircle);
  v27 = v0[180];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v26 = v0[153];
    v5 = v0[141];
    v6 = v0[129];
    v7 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[41];
    v8 = v0[42];
    sub_1000035D0(v0 + 38, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v26(v5, v6);
    sub_100007BAC(v0 + 38);
    v13 = sub_1000136BC(v10, v12, v28);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v28);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v17 = v0[142];
  v18 = v0[179] + 1;
  sub_100007BAC(v0 + 28);
  if (v18 == v17)
  {
    v25 = v0[89];

    v19 = v0[1];

    return v19(v27, v25);
  }

  else
  {
    v21 = v0[179];
    v0[180] = v27;
    v0[179] = v21 + 1;
    v22 = v0[146];
    sub_10001F280(v0[97] + 40 * v21 + 72, (v0 + 28));
    v23 = v0[31];
    v24 = v0[32];
    sub_1000035D0(v0 + 28, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);

    return _swift_task_switch(sub_10029639C, v22, 0);
  }
}

uint64_t sub_10029B590(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 160) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10029B5BC, v5, 0);
}

uint64_t sub_10029B5BC()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 56) = sub_1000076D4(v2, qword_10177A818);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;

      _os_log_impl(&_mh_execute_header, v3, v4, "Fetching %ld items.", v5, 0xCu);
    }

    else
    {
    }

    v13 = *(*(v0 + 48) + 256);

    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_10029B8B0;
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v17 = *(v0 + 16);
    v18 = *(v0 + 160);

    return sub_100F0645C(v17, v18, v15, v16, v13);
  }

  else
  {
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A818);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No items to fetch.", v9, 2u);
    }

    v10 = sub_1009089B8(_swiftEmptyArrayStorage);
    v11 = *(v0 + 8);

    return v11(v10);
  }
}

uint64_t sub_10029B8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;

  if (v3)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v5[6];

    return _swift_task_switch(sub_10029B9FC, v9, 0);
  }
}

uint64_t sub_10029B9FC()
{
  type metadata accessor for KeyDropInterface();
  v1 = swift_allocObject();
  v0[12] = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10029BAB8;
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  return sub_100F096C8(v5, v3, v4);
}

uint64_t sub_10029BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v9 = *v5;
  v8[14] = a2;
  v8[15] = a4;
  v8[16] = v4;

  if (v4)
  {
    v10 = v8[6];

    return _swift_task_switch(sub_10029BEC4, v10, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v8[17] = v11;
    *v11 = v9;
    v11[1] = sub_10029BC58;
    v13 = v8[3];

    return sub_1002AD6F8(v11, a2, v12, a4, v13);
  }
}

uint64_t sub_10029BC58(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_10029BF3C;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_10029BD88;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10029BD88()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  v5 = v0[11];
  v6 = v0[10];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Fetch returning results for %ld beacon(s).", v7, 0xCu);
  }

  else
  {
  }

  sub_100016590(v6, v5);

  v8 = v0[18];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10029BEC4()
{

  sub_100016590(v0[10], v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10029BF3C()
{

  sub_100016590(v0[10], v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10029BFD0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v2[28] = *(v7 + 64);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10029C200, v1, 0);
}

uint64_t sub_10029C200()
{
  v1 = *(*(v0 + 104) + 136);
  *(v0 + 272) = v1;
  return _swift_task_switch(sub_10029C224, v1, 0);
}

uint64_t sub_10029C224()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 96);
  v7 = *(v4 + 16);
  *(v0 + 280) = v7;
  *(v0 + 288) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v5);
  v8 = *(v4 + 80);
  *(v0 + 432) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 296) = v11;
  *(v11 + 16) = v1;
  v12 = *(v4 + 32);
  *(v0 + 304) = v12;
  *(v0 + 312) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v9, v2, v5);
  *(v11 + v10) = 0;

  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  v14 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v13 = v0;
  v13[1] = sub_10029C3CC;

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v11, v14);
}

uint64_t sub_10029C3CC()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_10029C4F8, v1, 0);
}

uint64_t sub_10029C4F8()
{
  v1 = v0[13];
  v0[41] = v0[10];
  return _swift_task_switch(sub_10029C51C, v1, 0);
}

uint64_t sub_10029C51C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[41];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v8 = v3[21];
    v7 = v3[22];
    v18 = v8;
    while (v6 < *(v4 + 16))
    {
      v9 = v3[25];
      v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v11 = *(v7 + 72);
      sub_1002DB760(v3[41] + v10 + v11 * v6, v9, type metadata accessor for OwnerSharingCircle);
      v12 = v3[25];
      if (*(v9 + *(v8 + 36)) == 2)
      {
        a1 = sub_1002DBBF0(v12, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_1002DB7C8(v12, v3[24], type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_101123FE4((v13 > 1), v14 + 1, 1);
        }

        v15 = v3[24];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        a1 = sub_1002DB7C8(v15, _swiftEmptyArrayStorage + v10 + v14 * v11, type metadata accessor for OwnerSharingCircle);
        v8 = v18;
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v3[42] = _swiftEmptyArrayStorage;
    v16 = v3[34];

    a1 = sub_10029C70C;
    a2 = v16;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10029C70C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 208);
  v5 = (*(v0 + 432) + 24) & ~*(v0 + 432);
  (*(v0 + 280))(v2, *(v0 + 96), v4);
  v6 = swift_allocObject();
  *(v0 + 344) = v6;
  *(v6 + 16) = v3;
  v1(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 352) = v7;
  v8 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v7 = v0;
  v7[1] = sub_10029C870;

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB610, v6, v8);
}

uint64_t sub_10029C870()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_10029C99C, v1, 0);
}

uint64_t sub_10029C99C()
{
  v1 = v0[13];
  v0[45] = v0[11];
  return _swift_task_switch(sub_10029C9C0, v1, 0);
}

uint64_t sub_10029C9C0()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 432);
    v4 = *(v0 + 176);
    v42 = *(v0 + 168);
    v44 = *(v0 + 216);
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v40 = *(v4 + 72);
    v6 = (v3 + 32) & ~v3;
    do
    {
      v7 = *(v0 + 280);
      v8 = *(v0 + 256);
      v9 = *(v0 + 208);
      v10 = *(v0 + 184);
      sub_1002DB760(v5, v10, type metadata accessor for OwnerSharingCircle);
      v7(v8, v10 + *(v42 + 20), v9);
      sub_1002DBBF0(v10, type metadata accessor for OwnerSharingCircle);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123D4C((v11 > 1), v12 + 1, 1);
      }

      v13 = *(v0 + 304);
      v14 = *(v0 + 256);
      v15 = *(v0 + 208);
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13(_swiftEmptyArrayStorage + v6 + *(v44 + 72) * v12, v14, v15);
      v5 += v40;
      --v2;
    }

    while (v2);
  }

  v16 = *(v0 + 360);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v0 + 432);
    v19 = *(v0 + 152);
    v43 = *(v0 + 144);
    v45 = *(v0 + 216);
    sub_101123D4C(0, v17, 0);
    v20 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v39 = (v18 + 32) & ~v18;
    v41 = *(v19 + 72);
    do
    {
      v21 = *(v0 + 280);
      v22 = *(v0 + 248);
      v23 = *(v0 + 208);
      v24 = *(v0 + 160);
      sub_1002DB760(v20, v24, type metadata accessor for MemberSharingCircle);
      v21(v22, v24 + *(v43 + 28), v23);
      sub_1002DBBF0(v24, type metadata accessor for MemberSharingCircle);
      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        sub_101123D4C((v25 > 1), v26 + 1, 1);
      }

      v27 = *(v0 + 304);
      v28 = *(v0 + 248);
      v29 = *(v0 + 208);
      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27(_swiftEmptyArrayStorage + v39 + *(v45 + 72) * v26, v28, v29);
      v20 += v41;
      --v17;
    }

    while (v17);
  }

  sub_100398278(_swiftEmptyArrayStorage);
  *(v0 + 368) = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage[2];
  *(v0 + 376) = v30;
  if (v30)
  {
    v31 = *(v0 + 432);
    *(v0 + 384) = *(*(v0 + 104) + 128);
    v32 = (v31 + 32) & ~v31;
    v33 = *(v0 + 208);
    v34 = *(*(v0 + 216) + 72);
    *(v0 + 400) = 0;
    *(v0 + 408) = _swiftEmptyArrayStorage;
    *(v0 + 392) = v34;
    (*(v0 + 280))(*(v0 + 240), _swiftEmptyArrayStorage + v32, v33);
    v35 = swift_task_alloc();
    *(v0 + 416) = v35;
    *v35 = v0;
    v35[1] = sub_10029CE40;
    v36 = *(v0 + 240);

    return sub_100C7BA0C(v0 + 16, v36);
  }

  else
  {

    v38 = *(v0 + 8);

    return v38(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10029CE40()
{
  v2 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v3 = v2[13];
    v4 = sub_10029D344;
  }

  else
  {
    v3 = v2[48];
    v4 = sub_10029CF64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10029CF64()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v0[53] = v2;
    v4 = v0[13];
    v5 = sub_10029D344;
  }

  else
  {
    v6 = v0[35];
    v7 = v0[26];
    v8 = v0[17];
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[12];
    v12 = v0[7];
    sub_100017D5C(v12, v0[8]);
    sub_1001BAF34((v0 + 2));
    v6(v8 + *(v10 + 20), v11, v7);
    *v8 = v12;
    v8[1] = v1;
    v5 = sub_10029D08C;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10029D08C()
{
  sub_1002DB760(*(v0 + 136), *(v0 + 128), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C82C(0, v2[2] + 1, 1, *(v0 + 408));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5C82C((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 128);
  v9 = *(v0 + 120);
  sub_1002DBBF0(*(v0 + 136), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  (*(v7 + 8))(v5, v6);
  v2[2] = v4 + 1;
  sub_1002DB7C8(v8, v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v4, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v10 = *(v0 + 400) + 1;
  if (v10 == *(v0 + 376))
  {

    v11 = *(v0 + 8);

    return v11(v2);
  }

  else
  {
    *(v0 + 400) = v10;
    *(v0 + 408) = v2;
    (*(v0 + 280))(*(v0 + 240), *(v0 + 368) + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v0 + 392) * v10, *(v0 + 208));
    v13 = swift_task_alloc();
    *(v0 + 416) = v13;
    *v13 = v0;
    v13[1] = sub_10029CE40;
    v14 = *(v0 + 240);

    return sub_100C7BA0C(v0 + 16, v14);
  }
}

uint64_t sub_10029D344()
{
  v29 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v1(v2, v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 208);
  v12 = (*(v0 + 216) + 8);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v10;
    v16 = v15;
    v17 = *v12;
    (*v12)(v9, v11);
    v18 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "No own device key for shareId %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v26);

    v17(v25, v11);
  }

  else
  {

    v19 = *v12;
    (*v12)(v9, v11);
    v19(v10, v11);
  }

  v20 = *(v0 + 400) + 1;
  if (v20 == *(v0 + 376))
  {
    v27 = *(v0 + 408);

    v21 = *(v0 + 8);

    return v21(v27);
  }

  else
  {
    *(v0 + 400) = v20;
    (*(v0 + 280))(*(v0 + 240), *(v0 + 368) + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v0 + 392) * v20, *(v0 + 208));
    v23 = swift_task_alloc();
    *(v0 + 416) = v23;
    *v23 = v0;
    v23[1] = sub_10029CE40;
    v24 = *(v0 + 240);

    return sub_100C7BA0C(v0 + 16, v24);
  }
}

uint64_t sub_10029D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = type metadata accessor for UUID();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10029D7E4, v4, 0);
}

uint64_t sub_10029D7E4()
{
  v41 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = type metadata accessor for Logger();
  v0[25] = sub_1000076D4(v5, qword_10177A818);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = v0[19];
    v37 = v0[20];
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v13 = 141558787;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v38);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    v39 = 0x7972616D6972702ELL;
    v40 = 0xEA0000000000282FLL;
    v0[15] = v12;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = sub_1000136BC(v39, v40, &v38);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2080;
    v39 = 0x7972616D6972702ELL;
    v40 = 0xEA0000000000282FLL;
    v0[16] = v37;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = sub_1000136BC(v39, v40, &v38);

    *(v13 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Bundle Decryption for shareId: %{private,mask.hash}s for primary range: %s - %s.", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v24 = v0[20];
  if (v24 >= v0[19])
  {
    v0[26] = *(v0[21] + 128);
    v0[27] = _swiftEmptyArrayStorage;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315138;
      v0[12] = 0x7972616D6972702ELL;
      v0[13] = 0xEA0000000000282FLL;
      v0[14] = v24;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = sub_1000136BC(v0[12], v0[13], &v39);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Create bundle decryption for primaryIndex: %s.", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v34 = swift_task_alloc();
    v0[28] = v34;
    *v34 = v0;
    v34[1] = sub_10029DD28;
    v35 = v0[17];
    v36 = v0[18];

    return sub_100D015EC((v0 + 2), v35, v36, v24);
  }

  else
  {

    v25 = v0[1];

    return v25(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10029DD28()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 168);

    return _swift_task_switch(sub_10029DE80, v6, 0);
  }
}

uint64_t sub_10029DE80()
{
  v24 = v0;
  sub_1002DB880(v0 + 16, v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 216);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C70C(0, *(v2 + 2) + 1, 1, *(v0 + 216));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5C70C((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 152);
  *(v2 + 2) = v4 + 1;
  v6 = &v2[40 * v4];
  v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  *(v6 + 8) = *(v0 + 48);
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  sub_1002DB8DC(v0 + 16);
  v9 = *(v0 + 24);
  if (v9 && (v10 = v9 - 1, v9 - 1 >= v5))
  {
    *(v0 + 216) = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v0 + 96) = 0x7972616D6972702ELL;
      *(v0 + 104) = 0xEA0000000000282FLL;
      *(v0 + 112) = v10;
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = sub_1000136BC(*(v0 + 96), *(v0 + 104), &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Create bundle decryption for primaryIndex: %s.", v13, 0xCu);
      sub_100007BAC(v14);
    }

    v18 = swift_task_alloc();
    *(v0 + 224) = v18;
    *v18 = v0;
    v18[1] = sub_10029DD28;
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);

    return sub_100D015EC(v0 + 16, v19, v20, v10);
  }

  else
  {

    v22 = *(v0 + 8);

    return v22(v2);
  }
}

uint64_t sub_10029E154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 176) = a5;
  *(v6 + 184) = v5;
  *(v6 + 484) = a4;
  *(v6 + 160) = a2;
  *(v6 + 168) = a3;
  *(v6 + 152) = a1;
  *(v6 + 192) = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v6 + 232) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v6 + 240) = v7;
  v8 = *(v7 - 8);
  *(v6 + 248) = v8;
  *(v6 + 256) = *(v8 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v6 + 304) = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle(0);
  *(v6 + 312) = v9;
  *(v6 + 320) = *(v9 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_10029E39C, v5, 0);
}

uint64_t sub_10029E39C()
{
  v1 = *(*(v0 + 184) + 136);
  *(v0 + 344) = v1;
  return _swift_task_switch(sub_10029E3C0, v1, 0);
}

uint64_t sub_10029E3C0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);
  v4 = *(v0 + 240);
  v5 = *(v0 + 168);
  v6 = *(v3 + 16);
  *(v0 + 352) = v6;
  *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 480) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 368) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 376) = v10;
  *(v0 + 384) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = sub_10029E544;
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB748, v9, v13);
}

uint64_t sub_10029E544()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_10029E670, v1, 0);
}

uint64_t sub_10029E670()
{
  v1 = v0[38];
  if ((*(v0[40] + 48))(v1, 1, v0[39]) == 1)
  {
    v2 = v0[43];
    sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_10029F274, v2, 0);
  }

  else
  {
    v3 = v0[23];
    sub_1002DB7C8(v1, v0[42], type metadata accessor for MemberSharingCircle);
    v0[50] = *(v3 + 128);
    v4 = swift_task_alloc();
    v0[51] = v4;
    *v4 = v0;
    v4[1] = sub_10029E7B0;
    v5 = v0[21];

    return sub_100C7BA0C((v0 + 10), v5);
  }
}

uint64_t sub_10029E7B0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2[54] = v0;
    v3 = v2[23];
    v4 = sub_10029F164;
  }

  else
  {
    v3 = v2[50];
    v4 = sub_10029E8D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10029E8D8()
{
  v1 = v0[14];
  v0[53] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[23];

    sub_1001BAF34((v0 + 10));
    v3 = sub_10029E9B4;
    v4 = v2;
  }

  else
  {
    sub_1001BAEE0();
    v5 = swift_allocError();
    *v6 = 13;
    swift_willThrow();
    sub_1001BAF34((v0 + 10));
    v0[54] = v5;
    v4 = v0[23];
    v3 = sub_10029F164;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10029E9B4()
{
  v66 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v64 = sub_10013D028(sub_1002DB830, v3, v1);

  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 280);
  v9 = *(v0 + 240);
  v10 = *(v0 + 168);
  v63 = type metadata accessor for Logger();
  sub_1000076D4(v63, qword_10177A818);
  v5(v8, v10, v9);
  sub_1002DB760(v6, v7, type metadata accessor for MemberSharingCircle);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 328);
  if (v13)
  {
    v61 = v12;
    v15 = *(v0 + 280);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v18 = 141558787;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v62 = *(v16 + 8);
    v62(v15, v17);
    v22 = sub_1000136BC(v19, v21, v65);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2081;
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1002DBBF0(v14, type metadata accessor for MemberSharingCircle);
    v26 = sub_1000136BC(v23, v25, v65);

    *(v18 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v11, v61, "Found member sharing circle %{private,mask.hash}s with owner: %{private,mask.hash}s.", v18, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v27 = *(v0 + 280);
    v28 = *(v0 + 240);
    v29 = *(v0 + 248);

    sub_1002DBBF0(v14, type metadata accessor for MemberSharingCircle);
    v62 = *(v29 + 8);
    v62(v27, v28);
  }

  sub_1002DBBF0(*(v0 + 336), type metadata accessor for MemberSharingCircle);
  v30 = v64;
  v31 = v64[2];
  if (v31 >= 2)
  {
    if (p_weak_ivar_lyt[162] != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 352);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    v35 = *(v0 + 168);
    sub_1000076D4(v63, qword_10177A818);
    v32(v33, v35, v34);
    swift_bridgeObjectRetain_n();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 264);
    v40 = *(v0 + 240);
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65[0] = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v62(v39, v40);
      v46 = sub_1000136BC(v43, v45, v65);
      v30 = v64;

      *(v41 + 14) = v46;
      *(v41 + 22) = 2048;
      v47 = v64[2];

      *(v41 + 24) = v47;

      _os_log_impl(&_mh_execute_header, v36, v37, "Multiple join tokens found for sharingCircleIdentifier: %{private,mask.hash}s, count: %ld.", v41, 0x20u);
      sub_100007BAC(v42);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v62(v39, v40);
    }

    v31 = v30[2];
  }

  if (v31)
  {
    v48 = *(v0 + 352);
    v49 = *(v0 + 240);
    v50 = *(v0 + 200);
    v60 = *(v0 + 484);
    v52 = *(v0 + 168);
    v51 = *(v0 + 176);
    v53 = *(*(v0 + 192) + 80);
    v55 = *(v0 + 152);
    v54 = *(v0 + 160);
    sub_1002DB760(v30 + ((v53 + 32) & ~v53), v50, type metadata accessor for KeyDropJoinToken);

    v48(v55, v52, v49);
    Item = type metadata accessor for KeyDropFetchItem(0);
    sub_1002DB7C8(v50, v55 + Item[8], type metadata accessor for KeyDropJoinToken);
    *(v55 + Item[5]) = v60;
    *(v55 + Item[6]) = v51;
    *(v55 + Item[7]) = v54;
  }

  else
  {

    sub_1001BAEE0();
    swift_allocError();
    *v58 = 13;
    swift_willThrow();
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_10029F164()
{
  sub_1002DBBF0(*(v0 + 336), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029F274()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);
  v4 = *(v0 + 240);
  v5 = (*(v0 + 480) + 24) & ~*(v0 + 480);
  (*(v0 + 352))(v3, *(v0 + 168), v4);
  v6 = swift_allocObject();
  *(v0 + 440) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  *v7 = v0;
  v7[1] = sub_10029F3C4;
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC70, v6, v9);
}

uint64_t sub_10029F3C4()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_10029F4F0, v1, 0);
}

uint64_t sub_10029F4F0()
{
  v1 = v0[29];
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  if (v3 == 1)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v0[57] = *(v0[23] + 128);
    v7 = swift_task_alloc();
    v0[58] = v7;
    *v7 = v0;
    v7[1] = sub_10029F6FC;
    v8 = v0[21];

    return sub_100C7BA0C((v0 + 2), v8);
  }
}

uint64_t sub_10029F6FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 456);

    return _swift_task_switch(sub_10029F8D8, v6, 0);
  }
}

uint64_t sub_10029F8D8()
{
  v1 = v0[6];
  v0[18] = v1;
  v0[59] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[23];

    sub_1001BAF34((v0 + 2));

    return _swift_task_switch(sub_10029FA74, v2, 0);
  }

  else
  {
    sub_1001BAEE0();
    swift_allocError();
    *v3 = 13;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10029FA74()
{
  v64 = v0;
  v2 = *(*(v0 + 472) + 16);
  if (v2)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = *(v0 + 192);
    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    while (1)
    {
      v7 = *(v0 + 472);
      if (v3 >= *(v7 + 16))
      {
        break;
      }

      v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v1 = *(v5 + 72);
      sub_1002DB760(v7 + v8 + v1 * v3, *(v0 + 216), type metadata accessor for KeyDropJoinToken);
      if (p_weak_ivar_lyt[172] != -1)
      {
        swift_once();
      }

      sub_1000076D4(*(v0 + 240), qword_10177A900);
      v9 = static UUID.== infix(_:_:)();
      v10 = *(v0 + 216);
      if (v9)
      {
        sub_1002DB7C8(v10, *(v0 + 208), type metadata accessor for KeyDropJoinToken);
        v63[0] = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112406C(0, v4[2] + 1, 1);
          v4 = v63[0];
        }

        v12 = v4[2];
        v11 = v4[3];
        if (v12 >= v11 >> 1)
        {
          sub_10112406C((v11 > 1), v12 + 1, 1);
          v4 = v63[0];
        }

        v13 = *(v0 + 208);
        v4[2] = v12 + 1;
        sub_1002DB7C8(v13, v4 + v8 + v12 * v1, type metadata accessor for KeyDropJoinToken);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      }

      else
      {
        sub_1002DBBF0(v10, type metadata accessor for KeyDropJoinToken);
      }

      if (v2 == ++v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_16;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_10000B3A8(v0 + 144, &qword_10169C9C0, &qword_101398A48);
  v1 = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694510 != -1)
  {
    goto LABEL_33;
  }

LABEL_16:
  v14 = *(v0 + 352);
  v15 = *(v0 + 272);
  v16 = *(v0 + 240);
  v17 = *(v0 + 168);
  v60 = type metadata accessor for Logger();
  sub_1000076D4(v60, qword_10177A818);
  v14(v15, v17, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 272);
  v23 = *(v0 + 240);
  v22 = *(v0 + 248);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63[0] = v59;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v62 = *(v22 + 8);
    v62(v21, v23);
    v28 = v25;
    v1 = (&BeaconKeyManager + 56);
    v29 = sub_1000136BC(v28, v27, v63);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found owner sharing circle %{private,mask.hash}s for owner.", v24, 0x16u);
    sub_100007BAC(v59);
  }

  else
  {

    v62 = *(v22 + 8);
    v62(v21, v23);
  }

  v30 = v4[2];
  if (v30 >= 2)
  {
    if (v1[162] != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 352);
    v32 = *(v0 + 264);
    v33 = *(v0 + 240);
    v34 = *(v0 + 168);
    sub_1000076D4(v60, qword_10177A818);
    v31(v32, v34, v33);
    swift_bridgeObjectRetain_n();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 264);
    v39 = *(v0 + 240);
    if (v37)
    {
      v40 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63[0] = v61;
      *v40 = 141558531;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v62(v38, v39);
      v44 = sub_1000136BC(v41, v43, v63);

      *(v40 + 14) = v44;
      *(v40 + 22) = 2048;
      v45 = v4[2];

      *(v40 + 24) = v45;

      _os_log_impl(&_mh_execute_header, v35, v36, "Multiple join tokens found for sharingCircleIdentifier: %{private,mask.hash}s, count: %ld.", v40, 0x20u);
      sub_100007BAC(v61);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v62(v38, v39);
    }

    v30 = v4[2];
  }

  if (v30)
  {
    v46 = *(v0 + 352);
    v47 = *(v0 + 240);
    v48 = *(v0 + 200);
    v58 = *(v0 + 484);
    v50 = *(v0 + 168);
    v49 = *(v0 + 176);
    v51 = *(*(v0 + 192) + 80);
    v52 = *(v0 + 152);
    v53 = *(v0 + 160);
    sub_1002DB760(v4 + ((v51 + 32) & ~v51), v48, type metadata accessor for KeyDropJoinToken);

    v46(v52, v50, v47);
    Item = type metadata accessor for KeyDropFetchItem(0);
    sub_1002DB7C8(v48, v52 + Item[8], type metadata accessor for KeyDropJoinToken);
    *(v52 + Item[5]) = v58;
    *(v52 + Item[6]) = v49;
    *(v52 + Item[7]) = v53;
  }

  else
  {

    sub_1001BAEE0();
    swift_allocError();
    *v56 = 13;
    swift_willThrow();
  }

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1002A0294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 176) = a4;
  *(v7 + 16) = a3;
  *(v7 + 24) = a5;
  v9 = type metadata accessor for Date();
  *(v7 + 48) = v9;
  v10 = *(v9 - 8);
  *(v7 + 56) = v10;
  *(v7 + 64) = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  *(v7 + 72) = v11;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v7 + 112) = v12;
  (*(v10 + 16))();
  *(v12 + *(v11 + 48)) = a2;

  return _swift_task_switch(sub_1002A0420, v6, 0);
}

uint64_t sub_1002A0420()
{
  v39 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A818);
  sub_1000D2A70(v2, v1, &qword_10169C9C8, &qword_101398A58);
  sub_1000D2A70(v2, v3, &qword_10169C9C8, &qword_101398A58);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v10 = v0[11];
    v37 = v7;
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v33 = v0[9];
    v34 = v0[4];
    v35 = v0[3];
    log = v6;
    v14 = v0[2];
    v32 = v0[12];
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v15 = 134218754;
    *(v15 + 4) = *(v14 + 16);

    *(v15 + 12) = 2080;
    sub_1000D2A70(v9, v10, &qword_10169C9C8, &qword_101398A58);
    (*(v12 + 32))(v11, v10, v13);
    sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    sub_10000B3A8(v9, &qword_10169C9C8, &qword_101398A58);
    v20 = sub_1000136BC(v16, v18, &v38);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    sub_1000D2A70(v32, v10, &qword_10169C9C8, &qword_101398A58);
    v21 = *(v10 + *(v33 + 48));
    v19(v10, v13);
    sub_10000B3A8(v32, &qword_10169C9C8, &qword_101398A58);
    *(v15 + 24) = v21;
    *(v15 + 32) = 2080;
    if (v34)
    {
      v22 = v35;
    }

    else
    {
      v22 = 0x6C646E75622D6F6ELL;
    }

    if (v34)
    {
      v23 = v4;
    }

    else
    {
      v23 = 0xE900000000000065;
    }

    v24 = sub_1000136BC(v22, v23, &v38);

    *(v15 + 34) = v24;
    _os_log_impl(&_mh_execute_header, log, v37, "BeaconSharingService begin fetchSharedBeacons %ld. Date Interval: %s - %ld days back count, bundle: %s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10000B3A8(v0[12], &qword_10169C9C8, &qword_101398A58);

    sub_10000B3A8(v9, &qword_10169C9C8, &qword_101398A58);
  }

  v25 = v0[9];
  v26 = v0[10];
  sub_1000D2A70(v0[14], v26, &qword_10169C9C8, &qword_101398A58);
  v27 = *(v26 + *(v25 + 48));
  v28 = swift_task_alloc();
  v0[15] = v28;
  *v28 = v0;
  v28[1] = sub_1002A088C;
  v29 = v0[10];
  v30 = v0[2];

  return sub_1002A0E2C(v29, v27, v30);
}

uint64_t sub_1002A088C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v8 = *(v6 + 40);

    return _swift_task_switch(sub_1002A0C8C, v8, 0);
  }

  else
  {
    v9 = *(v6 + 80);
    v10 = *(v6 + 48);
    v11 = *(v6 + 56);
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    (*(v11 + 8))(v9, v10);
    v12 = swift_task_alloc();
    *(v6 + 152) = v12;
    *v12 = v7;
    v12[1] = sub_1002A0A48;
    v13 = *(v6 + 32);
    v14 = *(v6 + 24);
    v15 = *(v6 + 176);

    return sub_10029B590(a1, a2, v15, v14, v13);
  }
}

uint64_t sub_1002A0A48(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1002A0D6C;
  }

  else
  {
    v4[21] = a1;
    v6 = sub_1002A0BC4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002A0BC4()
{
  sub_10000B3A8(v0[14], &qword_10169C9C8, &qword_101398A58);

  v1 = v0[1];
  v2 = v0[21];

  return v1(v2);
}

uint64_t sub_1002A0C8C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_10000B3A8(v0[14], &qword_10169C9C8, &qword_101398A58);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A0D6C()
{
  sub_10000B3A8(*(v0 + 112), &qword_10169C9C8, &qword_101398A58);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A0E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[94] = v3;
  v4[93] = a3;
  v7 = type metadata accessor for OwnerSharingCircle(0);
  v4[95] = v7;
  v4[96] = *(v7 - 8);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v8 = type metadata accessor for HashAlgorithm();
  v4[99] = v8;
  v4[100] = *(v8 - 8);
  v4[101] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = *(type metadata accessor for KeyDropFetchItem(0) - 8);
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v4[108] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[109] = swift_task_alloc();
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v4[110] = v9;
  v4[111] = *(v9 - 8);
  v4[112] = swift_task_alloc();
  v10 = type metadata accessor for MemberSharingCircle(0);
  v4[113] = v10;
  v4[114] = *(v10 - 8);
  v4[115] = swift_task_alloc();
  v11 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v4[116] = v11;
  v4[117] = *(v11 - 8);
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[125] = v12;
  v13 = *(v12 - 8);
  v4[126] = v13;
  v4[127] = *(v13 + 64);
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  v4[138] = v14;
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v15 = swift_task_alloc();
  v4[145] = v15;
  v16 = type metadata accessor for Date();
  v4[146] = v16;
  v17 = *(v16 - 8);
  v4[147] = v17;
  v18 = *(v17 + 16);
  v4[148] = v18;
  v4[149] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v15, a1, v16);
  *(v15 + *(v14 + 48)) = a2;

  return _swift_task_switch(sub_1002A13B4, v3, 0);
}

uint64_t sub_1002A13B4()
{
  v1 = *(v0 + 744);
  *(v0 + 712) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  *(v0 + 1200) = v2;
  if (v2)
  {
    v3 = *(v0 + 752);
    *(v0 + 1776) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 1224) = _swiftEmptyArrayStorage;
    *(v0 + 1208) = 0u;
    sub_10001F280(v1 + 32, v0 + 144);
    v4 = *(v3 + 136);
    *(v0 + 1232) = v4;
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v5);
    (*(*(*(v6 + 8) + 8) + 32))(v5);

    return _swift_task_switch(sub_1002A174C, v4, 0);
  }

  else
  {
    sub_10000B3A8(*(v0 + 1160), &qword_10169C9C8, &qword_101398A58);

    v7 = *(v0 + 8);

    return v7(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_1002A174C()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v4 + 16);
  *(v0 + 1240) = v6;
  *(v0 + 1248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = *(v4 + 80);
  *(v0 + 1780) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 1256) = v9;
  *(v9 + 16) = v1;
  v10 = *(v4 + 32);
  *(v0 + 1264) = v10;
  *(v0 + 1272) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 1280) = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_1002A1920;

  return unsafeBlocking<A>(context:_:)(v0 + 688, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC6C, v9, v12);
}

uint64_t sub_1002A1920()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_1002A1A80, v1, 0);
}

uint64_t sub_1002A1A80()
{
  v1 = v0[137];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[94];
  v5 = *(v2 + 8);
  v0[161] = v5;
  v0[162] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[163] = v0[86];

  return _swift_task_switch(sub_1002A1B44, v4, 0);
}

uint64_t sub_1002A1B44()
{
  v1 = v0[163];
  v2 = *(v1 + 16);
  v0[164] = v2;
  if (v2)
  {
    v3 = v0[151];
    v0[167] = 0;
    v0[166] = _swiftEmptyArrayStorage;
    v0[165] = v3;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v4 = v0[155];
    v5 = v0[135];
    v6 = v0[134];
    v7 = v0[125];
    v8 = v0[113];
    v9 = *(v0[114] + 80);
    v10 = v1 + ((v9 + 32) & ~v9);
    v0[168] = *(v0[94] + 128);
    v4(v5, v10 + *(v8 + 28), v7);
    v4(v6, v10 + *(v8 + 24), v7);
    v11 = sub_1002A1DC0;
    v12 = 0;
  }

  else
  {

    v13 = v0[153];
    v14 = v0[151];
    sub_10039845C(_swiftEmptyArrayStorage);
    v15 = v0[150];
    v16 = v0[152] + 1;
    sub_100007BAC(v0 + 18);
    if (v16 == v15)
    {
      v0[190] = v13;
      v0[189] = 0;
      v17 = v0[154];
      sub_10001F280(v0[93] + 32, (v0 + 28));
      v18 = v0[31];
      v19 = v0[32];
      sub_1000035D0(v0 + 28, v18);
      (*(*(*(v19 + 8) + 8) + 32))(v18);
      v20 = sub_1002A571C;
    }

    else
    {
      v21 = v0[152];
      v0[153] = v13;
      v0[152] = v21 + 1;
      v0[151] = v14;
      v22 = v0[94];
      sub_10001F280(v0[93] + 40 * v21 + 72, (v0 + 18));
      v17 = *(v22 + 136);
      v0[154] = v17;
      v23 = v0[21];
      v24 = v0[22];
      sub_1000035D0(v0 + 18, v23);
      (*(*(*(v24 + 8) + 8) + 32))(v23);
      v20 = sub_1002A174C;
    }

    v11 = v20;
    v12 = v17;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1002A1DC0()
{
  v1 = *(*(v0 + 1344) + 120);
  *(v0 + 1352) = v1;

  return _swift_task_switch(sub_1002A1E54, v1, 0);
}

uint64_t sub_1002A1E54()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1000);
  v5 = (*(v0 + 1780) + 24) & ~*(v0 + 1780);
  (*(v0 + 1240))(v3, *(v0 + 1080), v4);
  v6 = swift_allocObject();
  *(v0 + 1360) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1368) = v7;
  v8 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v7 = v0;
  v7[1] = sub_1002A1FF8;

  return unsafeBlocking<A>(context:_:)(v0 + 680, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC74, v6, v8);
}

uint64_t sub_1002A1FF8()
{
  v1 = *(*v0 + 1352);

  return _swift_task_switch(sub_1002A2158, v1, 0);
}

uint64_t sub_1002A2158()
{
  *(v0 + 1376) = *(v0 + 680);

  return _swift_task_switch(sub_1002A21EC, 0, 0);
}

uint64_t sub_1002A21EC()
{
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF08);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[172];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Got %ld keys in the sharing circle secrets keychain.", v6, 0xCu);
  }

  else
  {
  }

  v7 = v0[165];
  sub_100D0E5C0(v0[172], (v0 + 2));
  v0[173] = v7;
  if (v7)
  {

    v0[175] = v7;
    v8 = v0[161];
    v9 = v0[135];
    v10 = v0[125];
    v11 = v0[94];
    v8(v0[134], v10);
    v8(v9, v10);

    v12 = sub_1002A28D8;
    v13 = v11;
  }

  else
  {
    v13 = v0[168];
    v12 = sub_1002A2408;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1002A2408()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {

    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v0[175] = v2;
    v4 = v0[161];
    v5 = v0[135];
    v6 = v0[125];
    v7 = v0[94];
    v4(v0[134], v6);
    v4(v5, v6);

    v8 = sub_1002A28D8;
    v9 = v7;
  }

  else
  {
    v10 = v0[161];
    v19 = v0[158];
    v11 = v0[135];
    v12 = v0[134];
    v13 = v0[125];
    v14 = v0[124];
    v15 = v0[116];
    v18 = v0[94];
    v16 = v0[7];
    sub_100017D5C(v16, v1);
    sub_1001BAF34((v0 + 2));
    v10(v11, v13);
    v19(v14 + *(v15 + 20), v12, v13);
    *v14 = v16;
    v14[1] = v1;
    v8 = sub_1002A25E0;
    v9 = v18;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1002A25E0()
{
  sub_1002DB760(*(v0 + 992), *(v0 + 984), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 1328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C82C(0, v2[2] + 1, 1, *(v0 + 1328));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5C82C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v0 + 1392) = v2;
  v5 = *(v0 + 1312);
  v6 = *(v0 + 984);
  v7 = *(v0 + 936);
  v8 = *(v0 + 1336) + 1;
  sub_1002DBBF0(*(v0 + 992), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v2[2] = v4 + 1;
  sub_1002DB7C8(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v8 == v5)
  {
    v9 = *(v0 + 1304);
    v10 = *(*(v0 + 912) + 80);
    *(v0 + 1784) = v10;
    v11 = *(v0 + 1384);
    *(v0 + 1424) = *(v0 + 1224);
    *(v0 + 1416) = 0;
    *(v0 + 1408) = v11;
    if (*(v9 + 16))
    {
      v12 = *(v0 + 1232);
      sub_1002DB760(v9 + ((v10 + 32) & ~v10), *(v0 + 920), type metadata accessor for MemberSharingCircle);
      v13 = *(v0 + 168);
      v14 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v13);
      (*(*(*(v14 + 8) + 8) + 32))(v13);
      v15 = sub_1002A2CE4;
      v16 = v12;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v17 = *(v0 + 1384);
  v18 = *(v0 + 1336) + 1;
  *(v0 + 1336) = v18;
  *(v0 + 1328) = v2;
  *(v0 + 1320) = v17;
  v19 = *(v0 + 1304);
  if (v18 >= *(v19 + 16))
  {
    goto LABEL_14;
  }

  v20 = *(v0 + 1240);
  v21 = *(v0 + 1080);
  v22 = *(v0 + 1072);
  v23 = *(v0 + 1000);
  v24 = *(v0 + 904);
  v25 = v19 + ((*(*(v0 + 912) + 80) + 32) & ~*(*(v0 + 912) + 80)) + *(*(v0 + 912) + 72) * v18;
  *(v0 + 1344) = *(*(v0 + 752) + 128);
  v20(v21, v25 + *(v24 + 28), v23);
  v20(v22, v25 + *(v24 + 24), v23);
  v15 = sub_1002A1DC0;
  v16 = 0;
LABEL_10:

  return _swift_task_switch(v15, v16, 0);
}

uint64_t sub_1002A28D8()
{
  v31 = v0;
  v1 = v0[153];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = v0[161];
    v5 = v0[137];
    v6 = v0[125];
    v29 = v1;
    v7 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[26];
    v8 = v0[27];
    sub_1000035D0(v0 + 23, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v28(v5, v6);
    sub_100007BAC(v0 + 23);
    v13 = sub_1000136BC(v10, v12, &v30);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, &v30);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();

    v1 = v29;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v17 = v0[150];
  v18 = v0[152] + 1;
  sub_100007BAC(v0 + 18);
  if (v18 == v17)
  {
    v0[190] = v1;
    v0[189] = 0;
    v19 = v0[154];
    sub_10001F280(v0[93] + 32, (v0 + 28));
    v20 = v0[31];
    v21 = v0[32];
    sub_1000035D0(v0 + 28, v20);
    (*(*(*(v21 + 8) + 8) + 32))(v20);
    v22 = sub_1002A571C;
  }

  else
  {
    v23 = v0[152];
    v0[153] = v1;
    v0[152] = v23 + 1;
    v0[151] = 0;
    v24 = v0[94];
    sub_10001F280(v0[93] + 40 * v23 + 72, (v0 + 18));
    v19 = *(v24 + 136);
    v0[154] = v19;
    v25 = v0[21];
    v26 = v0[22];
    sub_1000035D0(v0 + 18, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    v22 = sub_1002A174C;
  }

  return _swift_task_switch(v22, v19, 0);
}