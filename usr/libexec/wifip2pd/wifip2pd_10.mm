uint64_t sub_1000C603C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = String.count.getter();
  sub_1002AAFAC(a1, v4);
  return SymmetricKey.init<A>(data:)();
}

uint64_t sub_1000C60B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_100029B34(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_10000AD84(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_100178EFC(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_10004F46C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_100002A00(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

unint64_t sub_1000C6180()
{
  result = qword_10058CD70;
  if (!qword_10058CD70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPassphrase, &type metadata for NANPassphrase, v0, v1);
    atomic_store(result, &qword_10058CD70);
  }

  return result;
}

uint64_t sub_1000C61D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C623C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WiFiNetwork.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  strcpy(v7, "WiFiNetwork[");
  v4._countAndFlagsBits = Channel.description.getter(a4 & 0xFFFFFFFFFFFFLL);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

void WiFiNetwork.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = a4;
  v7 = a4 >> 8;
  v8 = a4 >> 16;
  v9 = a4 >> 24;
  v10 = HIDWORD(a4);
  v11 = a4 >> 40;
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a5);
  Hasher._combine(_:)(0x801004u >> ((a5 >> 29) & 0xF8));
  if (BYTE5(a5) <= 3u)
  {
    if (BYTE5(a5) == 2)
    {
      v12 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a5) == 3)
    {
      v12 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a5))
    {
      case 4u:
        v12 = 3;
        goto LABEL_12;
      case 5u:
        v12 = 4;
        goto LABEL_12;
      case 6u:
        v12 = 5;
LABEL_12:
        Hasher._combine(_:)(v12);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a5) & 1);
}

Swift::Int WiFiNetwork.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  WiFiNetwork.hash(into:)(v9, a1, a2, a3 & 0xFFFFFFFFFFFFLL, a4 & 0xFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_1000C64C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  v6 = *(v0 + 24);
  v7 = *(v0 + 28);
  v8 = *(v0 + 29);
  Hasher.init(_seed:)();
  WiFiNetwork.hash(into:)(v10, v1, v2, v3 | (v4 << 32) | (v5 << 40), v6 | (v7 << 32) | (v8 << 40));
  return Hasher._finalize()();
}

Swift::Int sub_1000C657C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 21);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  v9 = *(v1 + 29);
  Hasher.init(_seed:)();
  WiFiNetwork.hash(into:)(v11, v2, v3, v4 | (v5 << 32) | (v6 << 40), v7 | (v8 << 32) | (v9 << 40));
  return Hasher._finalize()();
}

uint64_t sub_1000C6604()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 29);
  strcpy(v7, "WiFiNetwork[");
  v4._countAndFlagsBits = Channel.description.getter(v1 | (v2 << 32) | (v3 << 40));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

Swift::Int NANInternetSharingStatistics.Status.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_1000C676C()
{
  v1 = 0x6669636570736E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1000C67DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C7B8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C6804(uint64_t a1)
{
  v2 = sub_1000C6F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C6840(uint64_t a1)
{
  v2 = sub_1000C6F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C687C(uint64_t a1)
{
  v2 = sub_1000C7094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C68B8(uint64_t a1)
{
  v2 = sub_1000C7094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C68F4(uint64_t a1)
{
  v2 = sub_1000C7040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C6930(uint64_t a1)
{
  v2 = sub_1000C7040();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C696C(uint64_t a1)
{
  v2 = sub_1000C6FEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C69A8(uint64_t a1)
{
  v2 = sub_1000C6FEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InfrastructureDisableReason.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_10005DC58(&qword_10058CD78, &qword_100483620);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin();
  v22 = &v18 - v4;
  v5 = sub_10005DC58(&qword_10058CD80, &qword_100483628);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_10005DC58(&qword_10058CD88, &qword_100483630);
  v19 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = sub_10005DC58(&qword_10058CD90, &qword_100483638);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v18 - v13;
  sub_100029B34(a1, a1[3]);
  sub_1000C6F98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1000C7040();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1000C6FEC();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1000C7094();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1000C6D7C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000C70E8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1000C6DC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  LOWORD(v16) = a3;
  BYTE2(v16) = BYTE2(a3);
  HIBYTE(v16) = BYTE3(a3);
  LOBYTE(v17) = BYTE4(a3);
  HIBYTE(v17) = BYTE5(a3);
  LOWORD(v14) = a7;
  BYTE2(v14) = BYTE2(a7);
  HIBYTE(v14) = BYTE3(a7);
  LOBYTE(v15) = BYTE4(a7);
  HIBYTE(v15) = BYTE5(a7);
  v12 = v16 == v14 && v17 == v15;
  if (!v12 || a4 != a8 || ((0x801004u >> ((a4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a8 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a4) > 3u)
  {
    switch(BYTE5(a4))
    {
      case 4u:
        return BYTE5(a8) == 4;
      case 5u:
        return BYTE5(a8) == 5;
      case 6u:
        return BYTE5(a8) == 6;
    }

    return BYTE5(a8) - 2 >= 5 && (((a8 >> 40) ^ (a4 >> 40)) & 1) == 0;
  }

  if (BYTE5(a4) == 2)
  {
    return BYTE5(a8) == 2;
  }

  if (BYTE5(a4) != 3)
  {
    return BYTE5(a8) - 2 >= 5 && (((a8 >> 40) ^ (a4 >> 40)) & 1) == 0;
  }

  return BYTE5(a8) == 3;
}

unint64_t sub_1000C6F98()
{
  result = qword_10058CD98;
  if (!qword_10058CD98)
  {
    result = swift_getWitnessTable(aF, &type metadata for InfrastructureDisableReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CD98);
  }

  return result;
}

unint64_t sub_1000C6FEC()
{
  result = qword_10058CDA0;
  if (!qword_10058CDA0)
  {
    result = swift_getWitnessTable(byte_100483B80, &type metadata for InfrastructureDisableReason.UnspecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDA0);
  }

  return result;
}

unint64_t sub_1000C7040()
{
  result = qword_10058CDA8;
  if (!qword_10058CDA8)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for InfrastructureDisableReason.LowLatencyRequiredCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDA8);
  }

  return result;
}

unint64_t sub_1000C7094()
{
  result = qword_10058CDB0;
  if (!qword_10058CDB0)
  {
    result = swift_getWitnessTable(byte_100483AE0, &type metadata for InfrastructureDisableReason.InfrastructureRelayEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDB0);
  }

  return result;
}

uint64_t sub_1000C70E8(void *a1)
{
  v31 = sub_10005DC58(&qword_10058CE18, &qword_100483C20);
  v28 = *(v31 - 8);
  __chkstk_darwin();
  v33 = &v26 - v2;
  v32 = sub_10005DC58(&qword_10058CE20, &qword_100483C28);
  v30 = *(v32 - 8);
  __chkstk_darwin();
  v4 = &v26 - v3;
  v5 = sub_10005DC58(&qword_10058CE28, &qword_100483C30);
  v29 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = sub_10005DC58(&qword_10058CE30, &qword_100483C38);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100029B34(a1, v12);
  sub_1000C6F98();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100144290();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1000C7040();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_100002A00(v35);
          return v9;
        }

        v40 = 2;
        sub_1000C6FEC();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1000C7094();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
    *v22 = &type metadata for InfrastructureDisableReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_100002A00(v35);
  return v9;
}

unint64_t sub_1000C765C()
{
  result = qword_10058CDB8;
  if (!qword_10058CDB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiNetwork, &type metadata for WiFiNetwork, v0, v1);
    atomic_store(result, &qword_10058CDB8);
  }

  return result;
}

unint64_t sub_1000C76B4()
{
  result = qword_10058CDC0;
  if (!qword_10058CDC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoJoinState, &type metadata for AutoJoinState, v0, v1);
    atomic_store(result, &qword_10058CDC0);
  }

  return result;
}

unint64_t sub_1000C770C()
{
  result = qword_10058CDC8;
  if (!qword_10058CDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfrastructureDisableReason, &type metadata for InfrastructureDisableReason, v0, v1);
    atomic_store(result, &qword_10058CDC8);
  }

  return result;
}

__n128 sub_1000C7760(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_1000C7774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 30))
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

uint64_t sub_1000C77BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C7878()
{
  result = qword_10058CDD0;
  if (!qword_10058CDD0)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for InfrastructureDisableReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDD0);
  }

  return result;
}

unint64_t sub_1000C78D0()
{
  result = qword_10058CDD8;
  if (!qword_10058CDD8)
  {
    result = swift_getWitnessTable(byte_1004839D8, &type metadata for InfrastructureDisableReason.InfrastructureRelayEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDD8);
  }

  return result;
}

unint64_t sub_1000C7928()
{
  result = qword_10058CDE0;
  if (!qword_10058CDE0)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for InfrastructureDisableReason.InfrastructureRelayEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDE0);
  }

  return result;
}

unint64_t sub_1000C7980()
{
  result = qword_10058CDE8;
  if (!qword_10058CDE8)
  {
    result = swift_getWitnessTable(byte_100483988, &type metadata for InfrastructureDisableReason.LowLatencyRequiredCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDE8);
  }

  return result;
}

unint64_t sub_1000C79D8()
{
  result = qword_10058CDF0;
  if (!qword_10058CDF0)
  {
    result = swift_getWitnessTable(byte_1004839B0, &type metadata for InfrastructureDisableReason.LowLatencyRequiredCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDF0);
  }

  return result;
}

unint64_t sub_1000C7A30()
{
  result = qword_10058CDF8;
  if (!qword_10058CDF8)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for InfrastructureDisableReason.UnspecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CDF8);
  }

  return result;
}

unint64_t sub_1000C7A88()
{
  result = qword_10058CE00;
  if (!qword_10058CE00)
  {
    result = swift_getWitnessTable(byte_100483960, &type metadata for InfrastructureDisableReason.UnspecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_10058CE00);
  }

  return result;
}

unint64_t sub_1000C7AE0()
{
  result = qword_10058CE08;
  if (!qword_10058CE08)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for InfrastructureDisableReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CE08);
  }

  return result;
}

unint64_t sub_1000C7B38()
{
  result = qword_10058CE10;
  if (!qword_10058CE10)
  {
    result = swift_getWitnessTable(byte_100483A50, &type metadata for InfrastructureDisableReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CE10);
  }

  return result;
}

uint64_t sub_1000C7B8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001004B8F70 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B8F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569)
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

uint64_t sub_1000C7CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v21 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v24 = a1;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v24 + 56);
    v18 = *(*(v24 + 48) + v16);
    v19 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    sub_1000D2A28(v17 + *(*(v19 - 8) + 72) * v16, &v6[*(v21 + 48)], type metadata accessor for NANGenericServiceProtocol.Attribute);
    *v6 = v18;
    sub_1000CEEE0(v6, v22, v23);
    result = sub_100016290(v6, &qword_10058CE40, &unk_100483C90);
    if (v3)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C7EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v59 = a4;
  v60 = a3;
  v65 = a2;
  v58[1] = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v58 - v9;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v14 = v58 - v13;
  v15 = type metadata accessor for NWEndpoint.Port();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000D1338(a1);
  if (result <= 3u)
  {
    if (result <= 1u)
    {
      v20 = v60;
      if (!result)
      {
        v23 = v65;
        sub_100037568(v65, v60);
        if (v4)
        {
          v24 = v23;
        }

        else
        {
          NWEndpoint.Port.init(rawValue:)();
          if ((*(v16 + 48))(v14, 1, v15) != 1)
          {
            sub_1000124C8(v65, v20);
            v53 = *(v16 + 32);
            v53(v18, v14, v15);
            v53(v59, v18, v15);
            return swift_storeEnumTagMultiPayload();
          }

          sub_100016290(v14, &qword_10058BA40, &qword_100480D90);
          sub_10000B02C();
          swift_allocError();
          *v44 = xmmword_10047CE70;
          *(v44 + 16) = 2;
          swift_willThrow();
          v24 = v65;
        }

        goto LABEL_24;
      }

      v28 = v65;
      v29 = sub_100033CDC(v65, v60);
      if (v4)
      {
        goto LABEL_20;
      }

      if (v29 == 6)
      {
        v45 = 0;
      }

      else
      {
        if (v29 != 17)
        {
          sub_10000B02C();
          swift_allocError();
          *v57 = xmmword_10047CE70;
          *(v57 + 16) = 2;
          swift_willThrow();
LABEL_20:
          v24 = v28;
LABEL_24:
          v36 = v20;
          return sub_1000124C8(v24, v36);
        }

        v45 = 1;
      }

      sub_1000124C8(v28, v20);
      *v59 = v45;
      return swift_storeEnumTagMultiPayload();
    }

    v25 = v60;
    if (result != 2)
    {
      static String.Encoding.utf8.getter();
      v20 = v65;
      v30 = String.init(data:encoding:)();
      if (!v31)
      {
LABEL_71:
        sub_10000B02C();
        swift_allocError();
        *v54 = xmmword_10047CE70;
        goto LABEL_72;
      }

LABEL_22:
      v32 = v30;
      v33 = v31;
      sub_1000124C8(v20, v25);
      v34 = v59;
      *v59 = v32;
      *(v34 + 1) = v33;
      return swift_storeEnumTagMultiPayload();
    }

    v21 = v60 >> 62;
    v20 = v65;
    if ((v60 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_68;
      }

      v39 = *(v65 + 16);
      v38 = *(v65 + 24);
      v40 = __OFSUB__(v38, v39);
      v22 = v38 - v39;
      if (v40)
      {
        __break(1u);
LABEL_33:
        if (v22 == 2)
        {
          v21 = *(v16 + 16);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (!v21)
      {
        v22 = BYTE6(v60);
        goto LABEL_52;
      }

      LODWORD(v22) = HIDWORD(v65) - v65;
      if (__OFSUB__(HIDWORD(v65), v65))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v22 = v22;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v22 >> 16))
    {
LABEL_52:
      if (v22)
      {
        if (!v21)
        {
          goto LABEL_69;
        }

        if (v21 == 2)
        {
          v50 = *(v65 + 16);
          v49 = *(v65 + 24);
          v40 = __OFSUB__(v49, v50);
          v51 = v49 - v50;
          if (v40)
          {
            __break(1u);
LABEL_58:
            if (!__OFSUB__(HIDWORD(v5), v5))
            {
              if (HIDWORD(v5) - v5 == 16)
              {
                goto LABEL_17;
              }

              goto LABEL_60;
            }

            goto LABEL_84;
          }
        }

        else
        {
          LODWORD(v51) = HIDWORD(v65) - v65;
          if (__OFSUB__(HIDWORD(v65), v65))
          {
LABEL_85:
            __break(1u);
            return result;
          }

          v51 = v51;
        }

        if ((v51 & 0x8000000000000000) == 0)
        {
          if (!(v51 >> 16))
          {
            if (v51 > 0xFF)
            {
              goto LABEL_68;
            }

LABEL_69:
            static String.Encoding.utf8.getter();
            v55 = String.init(data:encoding:)();
            if (!v56)
            {
              goto LABEL_71;
            }

            v30 = _s7CoreP2P14NANServiceNameVyACSgSScfC_0(v55, v56);
            if (!v31)
            {
              goto LABEL_71;
            }

            goto LABEL_22;
          }

          goto LABEL_81;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_68:
      sub_10000B02C();
      swift_allocError();
      *v54 = 0;
      *(v54 + 8) = 0;
LABEL_72:
      *(v54 + 16) = 2;
      swift_willThrow();
      v24 = v20;
      v36 = v25;
      return sub_1000124C8(v24, v36);
    }

    __break(1u);
    goto LABEL_80;
  }

  if (result <= 5u)
  {
    v12 = v60;
    v5 = v65;
    if (result == 4)
    {
LABEL_17:
      v26 = v59;
      *v59 = v5;
      *(v26 + 1) = v12;
      return swift_storeEnumTagMultiPayload();
    }

    v37 = v60 >> 62;
    if ((v60 >> 62) <= 1)
    {
      if (!v37)
      {
        if (BYTE6(v60) == 16)
        {
          goto LABEL_17;
        }

LABEL_60:
        sub_10000B02C();
        swift_allocError();
        *v52 = 0;
        *(v52 + 8) = 0;
        *(v52 + 16) = 2;
        swift_willThrow();
        v24 = v5;
        v36 = v12;
        return sub_1000124C8(v24, v36);
      }

      goto LABEL_58;
    }

    if (v37 != 2)
    {
      goto LABEL_60;
    }

    v42 = *(v65 + 16);
    v41 = *(v65 + 24);
    v40 = __OFSUB__(v41, v42);
    v43 = v41 - v42;
    if (!v40)
    {
      if (v43 == 16)
      {
        goto LABEL_17;
      }

      goto LABEL_60;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v20 = v60;
  v16 = v65;
  if (result == 6)
  {
    v27 = v59;
    *v59 = v65;
    *(v27 + 1) = v20;
    return swift_storeEnumTagMultiPayload();
  }

  if (result != 7)
  {
    sub_10000B02C();
    swift_allocError();
    *v35 = xmmword_10047CE70;
    *(v35 + 16) = 2;
    swift_willThrow();
    v24 = v16;
    goto LABEL_24;
  }

  sub_10000AB0C(v65, v60);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v14 = swift_allocObject();
  v21 = 0;
  *(v14 + 5) = &_swiftEmptyDictionarySingleton;
  *(v14 + 2) = v16;
  *(v14 + 3) = v20;
  v22 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    goto LABEL_33;
  }

  if (v22)
  {
    v21 = v16;
  }

LABEL_35:
  *(v14 + 4) = v21;
  swift_beginAccess();
  *(v14 + 5) = v12;
  v63 = &type metadata for BinaryDecoder.UnkeyedContainer;
  v64 = sub_1000325F0();
  v62[0] = v14;
  sub_100031694(v62, &type metadata for BinaryDecoder.UnkeyedContainer);
  sub_1000317F0();

  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (v4)
  {

    sub_1000124C8(v16, v20);
    return sub_100002A00(v62);
  }

  else
  {
    v46 = v61;
    v47 = BYTE1(v61);
    v48 = BYTE2(v61);
    if (sub_1000319F0(v61 | (BYTE1(v61) << 8) | (BYTE2(v61) << 16), 0xF21700u))
    {
      sub_100031694(v62, v63);
      type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
      sub_1000D2C6C(&qword_10058CFB8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes, protocol conformance descriptor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      UnkeyedDecodingContainer.inferredDecode<A>()();

      sub_1000124C8(v65, v60);
      swift_storeEnumTagMultiPayload();
      sub_1000D2A90(v10, v59, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    else
    {
      sub_100031694(v62, v63);
      sub_100039F68();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();

      sub_1000124C8(v65, v60);
      *v8 = v46;
      v8[1] = v47;
      v8[2] = v48;
      *(v8 + 8) = v61;
      swift_storeEnumTagMultiPayload();
      sub_1000D2A90(v8, v59, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    return sub_100002A00(v62);
  }
}

uint64_t sub_1000C882C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for NWEndpoint.Port();
      v8 = *(v7 - 8);
      (*(v8 + 32))(a1, v5, v7);
      return (*(v8 + 56))(a1, 0, 1, v7);
    }
  }

  else if (EnumCaseMultiPayload <= 6)
  {
    sub_1000124C8(*v5, *(v5 + 1));
  }

  else
  {
    sub_1000D2AF8(v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  v10 = type metadata accessor for NWEndpoint.Port();
  return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
}

uint64_t sub_1000C8A08()
{
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v0, v2, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      sub_1000124C8(*v2, *(v2 + 1));
      return 2;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload > 1)
  {

    return 2;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_6:
    sub_1000D2AF8(v2, type metadata accessor for NANGenericServiceProtocol.Attribute);
    return 2;
  }

  return *v2;
}

uint64_t sub_1000C8B1C()
{
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v0, v2, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      sub_1000124C8(*v2, *(v2 + 1));
      return 0;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v4 = EnumCaseMultiPayload;
    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_6:
    sub_1000D2AF8(v2, type metadata accessor for NANGenericServiceProtocol.Attribute);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    return *v2;
  }

  return 0;
}

unint64_t sub_1000C8C44()
{
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v2 = (&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D2A28(v0, v2, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return *v2;
      }

      return 0;
    }

    v4 = EnumCaseMultiPayload;
    result = 0;
    if (v4)
    {
      return result;
    }
  }

  else if (EnumCaseMultiPayload <= 6)
  {
    sub_1000124C8(*v2, v2[1]);
    return 0;
  }

  sub_1000D2AF8(v2, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return 0;
}

uint64_t sub_1000C8D6C@<X0>(__int128 *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D2A28(v2, v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
  result = swift_getEnumCaseMultiPayload();
  v7 = xmmword_100483C50;
  if (result > 3)
  {
    if (result <= 6)
    {
      v7 = *v5;
      goto LABEL_10;
    }

    v9 = xmmword_100483C50;
    v8 = v5;
    goto LABEL_7;
  }

  if (result > 1)
  {
    v9 = xmmword_100483C50;

    v7 = v9;
    goto LABEL_10;
  }

  if (!result)
  {
    v8 = v5;
    v9 = xmmword_100483C50;
LABEL_7:
    result = sub_1000D2AF8(v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v7 = v9;
  }

LABEL_10:
  *a1 = v7;
  return result;
}

uint64_t sub_1000C8EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {

      goto LABEL_10;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

LABEL_7:
    sub_1000D2AF8(v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    sub_1000124C8(*v5, *(v5 + 1));
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_7;
  }

  sub_1000D2A90(v5, a1, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v7 = 0;
LABEL_11:
  v8 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_1000C9034()
{
  v1 = v0;
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWEndpoint.Port();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v1, v10, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v15 = *v10;
      v16 = *(v10 + 1);
      if (EnumCaseMultiPayload == 2)
      {
        v17 = &type metadata for NANServiceName;
      }

      else
      {
        v17 = &type metadata for String;
      }

      v29 = v17;
      v26 = v15;
      v27 = v16;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v6 + 32))(v8, v10, v5);
        v29 = v5;
        v14 = sub_1000297D4(&v26);
        (*(v6 + 16))(v14, v8, v5);
        Mirror.init(reflecting:)();
        return (*(v6 + 8))(v8, v5);
      }

      v22 = *v10;
      v29 = &type metadata for Layer3Protocol;
      LOBYTE(v26) = v22;
    }

    return Mirror.init(reflecting:)();
  }

  else
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v18 = *v10;
      v19 = *(v10 + 1);
      v20 = Data.hexString.getter(*v10, v19);
      v29 = &type metadata for String;
      v26 = v20;
      v27 = v21;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1000D2A90(v10, v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v29 = v2;
        v12 = sub_1000297D4(&v26);
        sub_1000D2A28(v4, v12, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        Mirror.init(reflecting:)();
        return sub_1000D2AF8(v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      }

      v23 = *v10;
      v24 = v10[2];
      v18 = *(v10 + 1);
      v19 = *(v10 + 2);
      v29 = sub_10005DC58(&qword_10058CF50, &qword_100484178);
      LOWORD(v26) = v23;
      BYTE2(v26) = v24;
      v27 = Data.hexString.getter(v18, v19);
      v28 = v25;
    }

    Mirror.init(reflecting:)();
    return sub_1000124C8(v18, v19);
  }
}

uint64_t sub_1000C9388(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWEndpoint.Port();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v14 = *v11;
      v15 = *(v11 + 1);
      if (EnumCaseMultiPayload == 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          sub_1000D2A90(v11, v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          Hasher._combine(_:)(7uLL);
          NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
          return sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        }

        v17 = *v11;
        v18 = v11[2];
        v14 = *(v11 + 1);
        v15 = *(v11 + 2);
        Hasher._combine(_:)(8uLL);
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_100480F30;
        *(v19 + 32) = v17;
        *(v19 + 34) = v18;
        v20 = sub_10002D874(v19);
        v22 = v21;

        Data.hash(into:)();
        sub_1000124C8(v20, v22);
        goto LABEL_20;
      }

      v14 = *v11;
      v15 = *(v11 + 1);
      v16 = 6;
    }

    Hasher._combine(_:)(v16);
LABEL_20:
    Data.hash(into:)();
    return sub_1000124C8(v14, v15);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      Hasher._combine(_:)(2uLL);
      String.lowercased()();
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      String.hash(into:)();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    (*(v7 + 32))(v9, v11, v6);
    Hasher._combine(_:)(0);
    sub_1000D2C6C(&qword_10058CF48, &type metadata accessor for NWEndpoint.Port, &protocol conformance descriptor for NWEndpoint.Port);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }
}

Swift::Int sub_1000C9770()
{
  Hasher.init(_seed:)();
  sub_1000C9388(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C97B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000C9388(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000C9834@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D1338(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000C9884()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xDD06050403020100 >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1000C9924(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xDD06050403020100 >> (8 * v2));
  return Hasher._finalize()();
}

uint64_t sub_1000C9A2C(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v11 = *v1;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t sub_1000C9C18()
{
  v1 = *v0;
  v2 = 1953656656;
  v3 = 1651469378;
  if (v1 != 6)
  {
    v3 = 0x5320726F646E6556;
  }

  v4 = 0x666E492074786554;
  if (v1 != 4)
  {
    v4 = 1145656661;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x2065636976726553;
  if (v1 != 2)
  {
    v5 = 0x65636E6174736E49;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t NANGenericServiceProtocol.port.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v7 = sub_10007CD10(0), (v8 & 1) != 0))
  {
    sub_1000D2A28(*(a1 + 56) + *(v4 + 72) * v7, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
    sub_1000C882C(a2);
    return sub_1000D2AF8(v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v10 = type metadata accessor for NWEndpoint.Port();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

uint64_t NANGenericServiceProtocol.port.setter(uint64_t a1)
{
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v3 = &v13 - v2;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v13 - v6;
  sub_100012400(a1, v3, &qword_10058BA40, &qword_100480D90);
  v8 = type metadata accessor for NWEndpoint.Port();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    v10 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  else
  {
    (*(v9 + 32))(v7, v3, v8);
    v11 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  }

  sub_100012400(v7, v5, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v5, 0);
  sub_100016290(a1, &qword_10058BA40, &qword_100480D90);
  return sub_100016290(v7, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.port.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NANGenericServiceProtocol.port.getter(*v1, v4);
  return sub_1000CA1C8;
}

void sub_1000CA1C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100012400(*(a1 + 16), v2, &qword_10058BA40, &qword_100480D90);
    NANGenericServiceProtocol.port.setter(v2);
    sub_100016290(v3, &qword_10058BA40, &qword_100480D90);
  }

  else
  {
    NANGenericServiceProtocol.port.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t NANGenericServiceProtocol.transportProtocol.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 2;
  }

  v5 = sub_10007CD10(1);
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  sub_1000D2A28(*(a1 + 56) + *(v2 + 72) * v5, v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v7 = sub_1000C8A08();
  sub_1000D2AF8(v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v7;
}

uint64_t NANGenericServiceProtocol.transportProtocol.setter(unsigned __int8 a1)
{
  v2 = a1;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v10 - v5;
  if (v2 == 2)
  {
    v7 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  else
  {
    *v6 = a1 & 1;
    v8 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  sub_100012400(v6, v4, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v4, 1);
  return sub_100016290(v6, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.transportProtocol.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = (v3 + 7);
  v6 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v6);
    v4[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v4[3] = v7;
  v8 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v4[6] = v10;
  v11 = *v1;
  if (*(v11 + 16) && (v12 = v10, v13 = sub_10007CD10(1), (v14 & 1) != 0))
  {
    sub_1000D2A28(*(v11 + 56) + *(v9 + 72) * v13, v12, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v15 = sub_1000C8A08();
    sub_1000D2AF8(v12, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v15 = 2;
  }

  *v5 = v15;
  return sub_1000CA6B4;
}

void sub_1000CA6B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    v6 = v2[1];
    if (v3 == 2)
    {
      (*(v5 + 56))(v2[1], 1, 1, v4);
    }

    else
    {
      *v6 = v3 & 1;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v6, 0, 1, v4);
    }

    v8 = v2[6];
    v9 = v2[2];
    v10 = v2[3];
    v11 = v2[1];
    sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v9, 1);
    v12 = v11;
  }

  else
  {
    v7 = v2[3];
    if (v3 == 2)
    {
      (*(v5 + 56))(v2[3], 1, 1, v4);
    }

    else
    {
      *v7 = v3 & 1;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v7, 0, 1, v4);
    }

    v8 = v2[6];
    v9 = v2[2];
    v11 = v2[3];
    v12 = v2[1];
    sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v9, 1);
    v10 = v11;
  }

  sub_100016290(v11, &qword_10058BB48, &unk_100483040);
  free(v8);
  free(v10);
  free(v9);
  free(v12);

  free(v2);
}

void (*NANGenericServiceProtocol.serviceName.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  v7 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[8] = v9;
  v10 = *v1;
  if (*(v10 + 16) && (v11 = v9, v12 = sub_10007CD10(2), (v13 & 1) != 0))
  {
    sub_1000D2A28(*(v10 + 56) + *(v8 + 72) * v12, v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v14 = sub_1000C8B1C();
    v16 = v15;
    sub_1000D2AF8(v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v4 = v14;
  v4[1] = v16;
  return sub_1000CAA5C;
}

uint64_t sub_1000CAA84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v9 = sub_10007CD10(a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = sub_1000D2A28(*(a1 + 56) + *(v6 + 72) * v9, v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v12 = a3(v11);
  sub_1000D2AF8(v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v12;
}

uint64_t sub_1000CABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v14 - v9);
  if (a2)
  {
    *v10 = a1;
    v10[1] = a2;
    v11 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  sub_100012400(v10, v8, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v8, a4);
  return sub_100016290(v10, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.instanceName.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  v7 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[8] = v9;
  v10 = *v1;
  if (*(v10 + 16) && (v11 = v9, v12 = sub_10007CD10(3), (v13 & 1) != 0))
  {
    sub_1000D2A28(*(v10 + 56) + *(v8 + 72) * v12, v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v14 = sub_1000C8C44();
    v16 = v15;
    sub_1000D2AF8(v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v4 = v14;
  v4[1] = v16;
  return sub_1000CAF0C;
}

void sub_1000CAF18(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    v9 = v5[3];
    if (v6)
    {
      *v9 = *v5;
      v9[1] = v6;
      v10 = v7;
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v8 + 56))(v5[3], 1, 1, v7);
    }

    v13 = v5[8];
    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    sub_100012400(v16, v15, &qword_10058BB48, &unk_100483040);

    sub_100072F88(v15, a4);
    sub_100016290(v16, &qword_10058BB48, &unk_100483040);
  }

  else
  {
    v11 = v5[5];
    if (v6)
    {
      *v11 = *v5;
      v11[1] = v6;
      v12 = v7;
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v8 + 56))(v5[5], 1, 1, v7);
    }

    v13 = v5[8];
    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    sub_100012400(v14, v15, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v15, a4);
    sub_100016290(v14, &qword_10058BB48, &unk_100483040);
  }

  free(v13);
  free(v14);
  free(v15);
  free(v16);

  free(v5);
}

void (*NANGenericServiceProtocol.textInfo.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  *v4 = NANGenericServiceProtocol.textInfo.getter(*v1);
  v4[1] = v7;
  return sub_1000CB204;
}

uint64_t sub_1000CB218(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v7 = sub_10007CD10(a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_1000D2A28(*(a1 + 56) + *(v4 + 72) * v7, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  sub_1000C8D6C(&v10);
  sub_1000D2AF8(v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v10;
}

uint64_t sub_1000CB330(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v14 - v9);
  if (a2 >> 60 == 15)
  {
    v11 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    *v10 = a1;
    v10[1] = a2;
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  sub_100012400(v10, v8, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v8, a4);
  return sub_100016290(v10, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.blob.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  *v4 = NANGenericServiceProtocol.blob.getter(*v1);
  v4[1] = v7;
  return sub_1000CB5C4;
}

void sub_1000CB5D0(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a2)
  {
    v7 = *v5;
    v6 = v5[1];
    v8 = v5[3];
    if (v6 >> 60 == 15)
    {
      v9 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    }

    else
    {
      *v8 = v7;
      v8[1] = v6;
      v13 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    }

    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    sub_100012400(v16, v15, &qword_10058BB48, &unk_100483040);
    sub_10005D67C(v7, v6);
    sub_100072F88(v15, a4);
    sub_100016290(v16, &qword_10058BB48, &unk_100483040);
    sub_100017554(*v5, v5[1]);
  }

  else
  {
    v10 = v5[1];
    v11 = v5[5];
    if (v10 >> 60 == 15)
    {
      v12 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    }

    else
    {
      *v11 = *v5;
      v11[1] = v10;
      v17 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    }

    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    sub_100012400(v14, v15, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v15, a4);
    sub_100016290(v14, &qword_10058BB48, &unk_100483040);
  }

  free(v14);
  free(v15);
  free(v16);

  free(v5);
}

void (*NANGenericServiceProtocol.uuid.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  *v4 = NANGenericServiceProtocol.uuid.getter(*v1);
  v4[1] = v7;
  return sub_1000CB954;
}

uint64_t sub_1000CB960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058CFD0, &unk_1004841C0);
  __chkstk_darwin();
  v8 = &v21 - v7;
  if (*(a1 + 16) && (v9 = sub_10007CD10(7), (v10 & 1) != 0))
  {
    sub_1000D2A28(*(a1 + 56) + *(v4 + 72) * v9, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
    sub_1000C8EB4(v8);
    sub_1000D2AF8(v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v11 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    if ((*(*(v11 - 1) + 48))(v8, 1, v11) != 1)
    {
      return sub_1000D2A90(v8, a2, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    }
  }

  else
  {
    v11 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    (*(*(v11 - 1) + 56))(v8, 1, 1, v11);
  }

  *a2 = 0;
  *(a2 + 2) = 1;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v12 = v11[6];
  v13 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = v11[7];
  v21 = xmmword_100483C50;
  *(a2 + v14) = xmmword_100483C50;
  *(a2 + v11[8]) = xmmword_100483C50;
  *(a2 + v11[9]) = xmmword_100483C50;
  v15 = v11[10];
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  *(a2 + v11[11]) = _swiftEmptyArrayStorage;
  v17 = v11[12];
  v18 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  *(a2 + v11[13]) = 0;
  v19 = (a2 + v11[14]);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 0;
  *(a2 + v11[15]) = v21;
  result = (*(*(v11 - 1) + 48))(v8, 1, v11);
  if (result != 1)
  {
    return sub_100016290(v8, &qword_10058CFD0, &unk_1004841C0);
  }

  return result;
}

uint64_t sub_1000CBCEC(char a1)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v1, v8);
  *v8 = a1;
  sub_1000D2A28(v8, v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v9 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_100012400(v6, v4, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v4, 7);
  sub_100016290(v6, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

uint64_t sub_1000CBEA8(int a1, char a2)
{
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v6);
  v7 = *v6;
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if ((v7 & a1) != 0)
  {
    v8 = ~a1;
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v7;
  if ((v7 & a1) == a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  v11 = v10 | v7;
  if (a2)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  return sub_1000CBCEC(v12);
}

uint64_t NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.getter(uint64_t a1)
{
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v3);
  LODWORD(a1) = *v3;
  sub_1000D2AF8(v3, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return (a1 >> 2) & 1;
}

void (*NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = *v6;
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *(a1 + 16) = (v7 & 4) != 0;
  return sub_1000CC0E0;
}

void sub_1000CC0E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000CBEA8(4, *(a1 + 16));

  free(v1);
}

uint64_t NANGenericServiceProtocol.datapathSubscribeID.getter(uint64_t a1)
{
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v3);
  LODWORD(a1) = v3[1];
  v4 = v3[2];
  sub_1000D2AF8(v3, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return a1 | (v4 << 8);
}

uint64_t NANGenericServiceProtocol.datapathSubscribeID.setter(__int16 a1)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v1, v8);
  v8[1] = a1;
  v8[2] = HIBYTE(a1) & 1;
  sub_1000D2A28(v8, v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v9 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_100012400(v6, v4, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v4, 7);
  sub_100016290(v6, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.datapathSubscribeID.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[2] = v6;
  v7 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v4[3] = v8;
  v9 = *v1;
  v4[4] = *v1;
  v10 = v8;
  sub_1000CB960(v9, v8);
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  sub_1000D2AF8(v10, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *(v4 + 40) = v11;
  *(v4 + 41) = v12;
  return sub_1000CC4DC;
}

void sub_1000CC4DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 41);
  sub_1000CB960(*(*a1 + 32), v2);
  v2[1] = v5;
  v2[2] = v6;
  sub_1000D2A28(v2, v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v7 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_100012400(v4, v3, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v3, 7);
  sub_100016290(v4, &qword_10058BB48, &unk_100483040);
  sub_1000D2AF8(v2, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  free(v2);
  free(v4);
  free(v3);

  free(v1);
}

uint64_t NANGenericServiceProtocol.publicKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v6);
  sub_100012400(&v6[*(v4 + 32)], a2, &unk_100595C40, &qword_100499070);
  return sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

uint64_t NANGenericServiceProtocol.publicKey.setter(uint64_t a1)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v1, v9);
  sub_1000D1274(a1, &v9[*(v7 + 32)]);
  sub_1000D2A28(v9, v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v10 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_100012400(v6, v4, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v4, 7);
  sub_100016290(a1, &unk_100595C40, &qword_100499070);
  sub_100016290(v6, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v9, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.publicKey.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[2] = v6;
  v7 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v4[3] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v9 = v8;
  v4[4] = v8;
  v10 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[5] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[5] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v4[6] = v11;
  v13 = *v1;
  v4[7] = *v1;
  sub_1000CB960(v13, v9);
  sub_100012400(v9 + *(v7 + 24), v12, &unk_100595C40, &qword_100499070);
  sub_1000D2AF8(v9, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return sub_1000CCAA8;
}

void sub_1000CCAA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 8);
  if (a2)
  {
    sub_100012400(*(*a1 + 48), v6, &unk_100595C40, &qword_100499070);
    sub_1000CB960(v4, v5);
    sub_1000D1274(v6, v5 + *(v8 + 24));
    sub_1000D2A28(v5, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v10 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_100012400(v7, v9, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v9, 7);
    sub_100016290(v6, &unk_100595C40, &qword_100499070);
    sub_100016290(v7, &qword_10058BB48, &unk_100483040);
    sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_100016290(v3, &unk_100595C40, &qword_100499070);
  }

  else
  {
    sub_1000CB960(*(*a1 + 56), *(*a1 + 32));
    sub_1000D1274(v3, v5 + *(v8 + 24));
    sub_1000D2A28(v5, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v11 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_100012400(v7, v9, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v9, 7);
    sub_100016290(v3, &unk_100595C40, &qword_100499070);
    sub_100016290(v7, &qword_10058BB48, &unk_100483040);
    sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  free(v3);
  free(v6);
  free(v5);
  free(v7);
  free(v9);

  free(v2);
}

uint64_t NANGenericServiceProtocol.publisherAuthenticationToken.getter(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v4);
  v5 = &v4[*(v2 + 36)];
  v6 = *v5;
  sub_10005D67C(*v5, *(v5 + 1));
  sub_1000D2AF8(v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v6;
}

uint64_t NANGenericServiceProtocol.publisherAuthenticationToken.setter(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v11);
  v12 = &v11[*(v9 + 36)];
  sub_100017554(*v12, *(v12 + 1));
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_1000D2A28(v11, v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v13 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_100012400(v8, v6, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v6, 7);
  sub_100016290(v8, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v11, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.publisherAuthenticationToken.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  a1[3] = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = (v6 + *(v3 + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_10005D67C(*v7, v9);
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *a1 = v8;
  a1[1] = v9;
  return sub_1000CD0D0;
}

uint64_t NANGenericServiceProtocol.encryptedSignature.getter(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v4);
  v5 = &v4[*(v2 + 40)];
  v6 = *v5;
  sub_10005D67C(*v5, *(v5 + 1));
  sub_1000D2AF8(v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v6;
}

uint64_t NANGenericServiceProtocol.encryptedSignature.setter(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v11);
  v12 = &v11[*(v9 + 40)];
  sub_100017554(*v12, *(v12 + 1));
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_1000D2A28(v11, v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v13 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_100012400(v8, v6, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v6, 7);
  sub_100016290(v8, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v11, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.encryptedSignature.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  a1[3] = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = (v6 + *(v3 + 32));
  v8 = *v7;
  v9 = v7[1];
  sub_10005D67C(*v7, v9);
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *a1 = v8;
  a1[1] = v9;
  return sub_1000CD458;
}

uint64_t NANGenericServiceProtocol.encryptedExtraServiceSpecificInfo.getter(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v4);
  v5 = &v4[*(v2 + 44)];
  v6 = *v5;
  sub_10005D67C(*v5, *(v5 + 1));
  sub_1000D2AF8(v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v6;
}

uint64_t NANGenericServiceProtocol.encryptedExtraServiceSpecificInfo.setter(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v11);
  v12 = &v11[*(v9 + 44)];
  sub_100017554(*v12, *(v12 + 1));
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_1000D2A28(v11, v8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v13 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_100012400(v8, v6, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v6, 7);
  sub_100016290(v8, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v11, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.encryptedExtraServiceSpecificInfo.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  a1[3] = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = (v6 + *(v3 + 36));
  v8 = *v7;
  v9 = v7[1];
  sub_10005D67C(*v7, v9);
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *a1 = v8;
  a1[1] = v9;
  return sub_1000CD7E0;
}

void sub_1000CD7F8(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  if (a2)
  {
    sub_10005D67C(*a1, v5);
    a3(v4, v5);
    sub_100017554(v4, v5);
  }

  else
  {
    a3(*a1, v5);
  }

  free(v6);
}

unint64_t NANGenericServiceProtocol.vendorSpecificData.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v12 - v5;
  __chkstk_darwin();
  v8 = &v12 - v7;
  if (*(a1 + 16))
  {
    v9 = sub_10007CD10(7);
    if (v10)
    {
      sub_1000D2A28(*(a1 + 56) + *(v2 + 72) * v9, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_1000D2A90(v6, v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_1000D2A90(v8, v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        return *v4 | (*(v4 + 2) << 16);
      }

      sub_1000D2AF8(v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }
  }

  return 0;
}

uint64_t NANGenericServiceProtocol.description.getter(uint64_t a1)
{
  v44 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
  __chkstk_darwin();
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v36 - v3;
  __chkstk_darwin();
  v41 = &v36 - v4;
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_1000C0464(0, v5, 0);
    v46 = v47;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v11 = *(a1 + 36);
    v36 = a1 + 72;
    v37 = v5;
    v38 = v11;
    v39 = a1 + 64;
    v40 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v45 = v10;
      v14 = v44;
      v15 = *(v44 + 48);
      v16 = *(a1 + 56);
      v17 = *(*(a1 + 48) + v9);
      v18 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      v19 = v41;
      sub_1000D2A28(v16 + *(*(v18 - 8) + 72) * v9, &v41[v15], type metadata accessor for NANGenericServiceProtocol.Attribute);
      v20 = v42;
      *v42 = v17;
      sub_1000D2A90(&v19[v15], v20 + *(v14 + 48), type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_100012400(v20, v43, &qword_10058CE40, &unk_100483C90);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      result = sub_100016290(v20, &qword_10058CE40, &unk_100483C90);
      v24 = v46;
      v47 = v46;
      v26 = v46[2];
      v25 = v46[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_1000C0464((v25 > 1), v26 + 1, 1);
        v24 = v47;
      }

      v24[2] = v26 + 1;
      v27 = &v24[2 * v26];
      v27[4] = v21;
      v27[5] = v23;
      a1 = v40;
      v12 = 1 << *(v40 + 32);
      if (v9 >= v12)
      {
        goto LABEL_25;
      }

      v7 = v39;
      v28 = *(v39 + 8 * v13);
      if ((v28 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v46 = v24;
      LODWORD(v11) = v38;
      if (v38 != *(v40 + 36))
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v9 & 0x3F));
      if (v29)
      {
        v12 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v13 << 6;
        v31 = v13 + 1;
        v32 = (v36 + 8 * v13);
        while (v31 < (v12 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_10002BEB8(v9, v38, 0);
            v12 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_10002BEB8(v9, v38, 0);
      }

LABEL_4:
      v10 = v45 + 1;
      v9 = v12;
      if (v45 + 1 == v37)
      {
        v6 = v46;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v47 = v6;
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0, &protocol conformance descriptor for [A]);
    v35 = BidirectionalCollection<>.joined(separator:)();

    return v35;
  }

  return result;
}

uint64_t NANGenericServiceProtocol.customMirror.getter(uint64_t a1)
{
  sub_10005DC58(&qword_10058CE48, &qword_100483CA0);

  return Mirror.init(reflecting:)();
}

unint64_t _s7CoreP2P25NANMulticastLinkConditionV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 56) + 24 * v12);
    v14 = *v13;
    v23 = *(v13 + 4);
    v15 = v13[20];
    result = sub_10007CCC8(*(*(v3 + 48) + v12));
    if (v16)
    {
      v17 = (*(a2 + 56) + 24 * result);
      v18 = *v17;
      v19 = v17[20];
      v20 = ~vaddvq_s32(vandq_s8(vceqq_s32(*(v17 + 4), v23), xmmword_100483C60)) & 0xF;
      v21 = v18 == v14 && v20 == 0;
      if (v21 && v19 == v15)
      {
        continue;
      }
    }

    return 0;
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

unint64_t sub_1000CE004(unint64_t result, uint64_t a2)
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
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 56) + 32 * v13;
    v15 = *v14;
    v16 = *(v14 + 4);
    v17 = *(v14 + 8);
    v18 = *(v14 + 16);
    v19 = *(v14 + 24);
    result = sub_10007CCC8(*(*(v3 + 48) + v13));
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = *(a2 + 56) + 32 * result;
    v22 = *v21 == v15 && *(v21 + 4) == v16;
    if (!v22 || *(v21 + 8) != v17)
    {
      return 0;
    }

    if (*(v21 + 24))
    {
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v21 + 16) == v18)
      {
        v9 = v19;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void _s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v40 - v6;
  sub_10005DC58(&qword_10058CFC8, &qword_1004841B8);
  __chkstk_darwin();
  __chkstk_darwin();
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v42 = a2;
    v43 = &v40 - v7;
    v44 = v8;
    v45 = v5;
    v9 = 0;
    v41 = a1;
    v12 = *(a1 + 64);
    v11 = a1 + 64;
    v10 = v12;
    v13 = 1 << *(v11 - 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    while (1)
    {
      v17 = v44;
      if (!v15)
      {
        break;
      }

      v18 = (v15 - 1) & v15;
      v19 = __clz(__rbit64(v15)) | (v9 << 6);
LABEL_16:
      v25 = *(*(v41 + 48) + v19);
      v26 = v46;
      sub_1000D2A28(*(v41 + 56) + *(v47 + 72) * v19, v46, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v27 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      v28 = *(v27 + 48);
      *v17 = v25;
      sub_1000D2A90(v26, &v17[v28], type metadata accessor for NANGenericServiceProtocol.Attribute);
      (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
      v22 = v45;
      v15 = v18;
LABEL_17:
      v29 = v17;
      v30 = v43;
      sub_10001CEA8(v29, v43, &qword_10058CFC8, &qword_1004841B8);
      v31 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        return;
      }

      v32 = *(v31 + 48);
      v33 = *v30;
      sub_1000D2A90(&v30[v32], v22, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v34 = v42;
      v35 = sub_10007CD10(v33);
      if ((v36 & 1) == 0)
      {
        sub_1000D2AF8(v22, type metadata accessor for NANGenericServiceProtocol.Attribute);
        return;
      }

      v37 = v46;
      sub_1000D2A28(*(v34 + 56) + *(v47 + 72) * v35, v46, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v38 = sub_1000D0734(v37, v22);
      sub_1000D2AF8(v37, type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_1000D2AF8(v22, type metadata accessor for NANGenericServiceProtocol.Attribute);
      if (!v38)
      {
        return;
      }
    }

    if (v16 <= v9 + 1)
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    v22 = v45;
    while (1)
    {
      v23 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v23 >= v16)
      {
        v39 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
        (*(*(v39 - 8) + 56))(v17, 1, 1, v39);
        v15 = 0;
        v9 = v21;
        goto LABEL_17;
      }

      v24 = *(v11 + 8 * v23);
      ++v9;
      if (v24)
      {
        v18 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v9 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1000CE5B8(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v4 = *(v51 - 8);
  __chkstk_darwin();
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v46 - v6;
  __chkstk_darwin();
  v50 = &v46 - v8;
  sub_10005DC58(&qword_10058CF68, qword_10049BC90);
  __chkstk_darwin();
  v53 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v52 = (&v46 - v10);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v4;
    v49 = v7;
    v11 = 0;
    v47 = a1;
    v12 = *(a1 + 64);
    v46 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v54 = (v15 - 1) & v15;
      v17 = __clz(__rbit64(v15)) | (v11 << 6);
LABEL_16:
      v22 = *(v47 + 48) - v17 + 8 * v17;
      v23 = *(v22 + 4);
      v24 = *(v22 + 6);
      v25 = *(v47 + 56) + *(v4 + 72) * v17;
      v26 = *v22;
      v27 = v50;
      sub_1000D2A28(v25, v50, type metadata accessor for NANInternetSharingStatistics.Requester);
      v28 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
      v29 = *(v28 + 48);
      v30 = v53;
      *v53 = v26;
      v31 = v30;
      *(v30 + 2) = v23;
      *(v30 + 6) = v24;
      sub_1000D2A90(v27, v30 + v29, type metadata accessor for NANInternetSharingStatistics.Requester);
      (*(*(v28 - 8) + 56))(v31, 0, 1, v28);
LABEL_17:
      v32 = v52;
      sub_10001CEA8(v31, v52, &qword_10058CF68, qword_10049BC90);
      v33 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = *(v32 + 2);
      v36 = *(v32 + 3);
      v37 = *v32;
      v38 = v49;
      sub_1000D2A90(v32 + v34, v49, type metadata accessor for NANInternetSharingStatistics.Requester);
      v39 = v37 | (v35 << 16);
      v40 = v38;
      v41 = sub_10007CD94(v39 | (v36 << 24));
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }

      v4 = v48;
      sub_1000D2A28(*(a2 + 56) + *(v48 + 72) * v41, v55, type metadata accessor for NANInternetSharingStatistics.Requester);
      if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
      {
        sub_1000D2AF8(v55, type metadata accessor for NANInternetSharingStatistics.Requester);
LABEL_25:
        sub_1000D2AF8(v40, type metadata accessor for NANInternetSharingStatistics.Requester);
        return;
      }

      v43 = v51;
      v44 = *(v55 + *(v51 + 20));
      sub_1000D2AF8(v55, type metadata accessor for NANInternetSharingStatistics.Requester);
      LODWORD(v43) = *(v40 + *(v43 + 20));
      sub_1000D2AF8(v40, type metadata accessor for NANInternetSharingStatistics.Requester);
      v15 = v54;
      if (v44 != v43)
      {
        return;
      }
    }

    if (v16 <= v11 + 1)
    {
      v18 = v11 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v45 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
        v31 = v53;
        (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
        v54 = 0;
        v11 = v19;
        goto LABEL_17;
      }

      v21 = *(v46 + 8 * v20);
      ++v11;
      if (v21)
      {
        v54 = (v21 - 1) & v21;
        v17 = __clz(__rbit64(v21)) | (v20 << 6);
        v11 = v20;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

Swift::Int NANGenericServiceProtocol.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_1000CEB18()
{
  sub_10005DC58(&qword_10058CE48, &qword_100483CA0);

  return Mirror.init(reflecting:)();
}

Swift::Int sub_1000CEB74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CEBC4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(v4, v2);
  return Hasher._finalize()();
}

BOOL sub_1000CEC50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000CEC80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000CECAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000CED44@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100286BEC();

  *a2 = v3;
  return result;
}

uint64_t NANGenericServiceProtocol.packetData(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryEncoder();
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_100480A90;
  v5[4] = v4;
  v10[3] = &type metadata for BinaryEncoder.UnkeyedContainer;
  v10[4] = sub_1000D12E4();
  v10[0] = v5;

  sub_1000C7CD8(a2, a1, v10);
  swift_beginAccess();
  v6 = v5[2];
  v7 = v5[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10000AB0C(v5[2], v5[3]);
LABEL_10:

  sub_100002A00(v10);
  return v6;
}

void sub_1000CEEE0(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v84 = a3;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWEndpoint.Port();
  v81 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058CE40, &unk_100483C90);
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = &v79 - v11;
  __chkstk_darwin();
  v16 = &v79 - v13;
  if ((a2 & 1) != 0 && *a1 < 7u)
  {
LABEL_10:
    v83 = v14;
    v80 = v15;
    sub_1000D2A28(&a1[*(v15 + 48)], v10, type metadata accessor for NANGenericServiceProtocol.Attribute);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = a1;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v42 = sub_10016FD40(*v10, *(v10 + 1));
        v41 = v43;
        v29 = v85;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v44 = *v10;
          sub_10005DC58(&qword_10058B3C0, &qword_100481920);
          v45 = swift_allocObject();
          v46 = a1;
          *(v45 + 16) = xmmword_100480F40;
          if (v44)
          {
            v47 = 17;
          }

          else
          {
            v47 = 6;
          }

          *(v45 + 32) = v47;
          v39 = sub_10002D874(v45);
          v41 = v48;
          v28 = v46;
        }

        else
        {
          v38 = v81;
          (*(v81 + 32))(v8, v10, v6);
          LOWORD(v90) = NWEndpoint.Port.rawValue.getter();
          v39 = sub_1002AAFAC(&v90, 2uLL);
          v41 = v40;
          (*(v38 + 8))(v8, v6);
        }

        v42 = v39;
        v29 = v85;
      }
    }

    else
    {
      v29 = v85;
      if (EnumCaseMultiPayload <= 6)
      {
        v42 = *v10;
        v41 = *(v10 + 1);
      }

      else
      {
        v30 = a1;
        if (EnumCaseMultiPayload == 7)
        {
          v31 = v82;
          sub_1000D2A90(v10, v82, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          v32 = sub_10002D874(&off_100552F80);
          v34 = v33;
          v35 = sub_100033AA8(_swiftEmptyArrayStorage);
          v36 = type metadata accessor for BinaryEncoder();
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100480A90;
          *(v37 + 32) = v35;
          v92 = v36;
          v93 = sub_1000D2C6C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
          v90 = v37;

          NANAttribute.CustomDeviceInformation.CustomAttributes.encode(to:)(&v90);
          if (v29)
          {

            sub_1000124C8(v32, v34);
            sub_1000D2AF8(v31, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
            sub_100002A00(&v90);
            return;
          }

          sub_100002A00(&v90);
          swift_beginAccess();
          v60 = *(v37 + 16);
          v61 = *(v37 + 24);
          sub_10000AB0C(v60, v61);

          v88 = v32;
          v89 = v34;
          v92 = &type metadata for Data;
          v93 = &protocol witness table for Data;
          v90 = v60;
          v91 = v61;
          v62 = sub_100029B34(&v90, &type metadata for Data);
          v63 = *v62;
          v64 = v62[1];
          sub_10000AB0C(v60, v61);
          sub_10000AB0C(v32, v34);
          sub_100178A18(v63, v64, &v88);
          sub_1000124C8(v60, v61);
          sub_1000124C8(v32, v34);
          sub_1000D2AF8(v31, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          sub_100002A00(&v90);
          v42 = v88;
          v41 = v89;
        }

        else
        {
          v49 = *v10;
          v50 = v10[2];
          v51 = *(v10 + 1);
          v52 = *(v10 + 2);
          sub_10005DC58(&qword_10058B3C0, &qword_100481920);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_100480F30;
          *(v53 + 32) = v49;
          *(v53 + 34) = v50;
          v54 = sub_10002D874(v53);
          v56 = v55;

          v86 = v54;
          v87 = v56;
          v92 = &type metadata for Data;
          v93 = &protocol witness table for Data;
          v90 = v51;
          v91 = v52;
          v57 = sub_100029B34(&v90, &type metadata for Data);
          v58 = *v57;
          v59 = v57[1];
          sub_10000AB0C(v54, v56);
          sub_100178A18(v58, v59, &v86);
          sub_1000124C8(v54, v56);
          sub_100002A00(&v90);
          v42 = v86;
          v41 = v87;
        }

        v28 = v30;
      }
    }

    v65 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_37;
      }

      v68 = *(v42 + 16);
      v67 = *(v42 + 24);
      v69 = __OFSUB__(v67, v68);
      v66 = v67 - v68;
      if (v69)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }
    }

    else
    {
      if (!v65)
      {
        goto LABEL_37;
      }

      LODWORD(v66) = HIDWORD(v42) - v42;
      if (__OFSUB__(HIDWORD(v42), v42))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v66 = v66;
    }

    if (v66 >= 0x10000)
    {
      v70 = v41;
LABEL_53:
      sub_1000124C8(v42, v70);
      return;
    }

LABEL_37:
    v85 = v42;
    v71 = v83;
    sub_100012400(v28, v83, &qword_10058CE40, &unk_100483C90);
    v72 = *(v80 + 48);
    sub_100031694(v84, *(v84 + 24));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v29)
    {
      sub_1000124C8(v85, v41);
      sub_1000D2AF8(v71 + v72, type metadata accessor for NANGenericServiceProtocol.Attribute);
      return;
    }

    sub_1000D2AF8(v71 + v72, type metadata accessor for NANGenericServiceProtocol.Attribute);
    if (v65 > 1)
    {
      v73 = v41;
      if (v65 != 2)
      {
        goto LABEL_51;
      }

      v74 = v84;
      v75 = v85;
      v77 = *(v85 + 16);
      v76 = *(v85 + 24);
      v78 = v76 - v77;
      if (!__OFSUB__(v76, v77))
      {
LABEL_48:
        if ((v78 & 0x8000000000000000) == 0)
        {
          if (!(v78 >> 16))
          {
LABEL_52:
            sub_100031694(v74, *(v74 + 24));
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            v90 = v75;
            v91 = v73;
            sub_100031694(v74, *(v74 + 24));
            sub_1000B8088();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            v42 = v75;
            v70 = v73;
            goto LABEL_53;
          }

          __break(1u);
LABEL_51:
          v74 = v84;
          v75 = v85;
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_55;
      }

      __break(1u);
    }

    else
    {
      v73 = v41;
      if (!v65)
      {
        goto LABEL_51;
      }
    }

    v75 = v85;
    if (__OFSUB__(HIDWORD(v85), v85))
    {
      goto LABEL_57;
    }

    v78 = HIDWORD(v85) - v85;
    v74 = v84;
    goto LABEL_48;
  }

  if ((a2 & 2) != 0 && *a1 >= 7u)
  {
    v83 = v14;
    v17 = v15;
    sub_100012400(a1, &v79 - v13, &qword_10058CE40, &unk_100483C90);
    v18 = v17;
    v19 = &v16[*(v17 + 48)];
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v20 = v19[2];
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      v23 = *v19;
      sub_1000124C8(v21, v22);
      v24 = sub_1000319F0(0xF21700u, v23 | (v20 << 16));
      v14 = v83;
      v15 = v18;
      if (v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000D2AF8(v19, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    sub_100012400(a1, v12, &qword_10058CE40, &unk_100483C90);
    v25 = *(v18 + 48);
    v26 = swift_getEnumCaseMultiPayload();
    sub_1000D2AF8(&v12[v25], type metadata accessor for NANGenericServiceProtocol.Attribute);
    v15 = v18;
    v14 = v83;
    if (v26 == 7)
    {
      goto LABEL_10;
    }
  }
}

void *NANGenericServiceProtocol.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000D201C(a1, a2);
  sub_1000124C8(a1, a2);
  return v4;
}

void *sub_1000CF874@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000D1D34(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1000CF8A0(__int128 *a1, uint64_t a2)
{
  v75 = a1;
  v80 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v80 - 8);
  __chkstk_darwin();
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v66 = *(v73 - 8);
  __chkstk_darwin();
  v81 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v7;
  sub_10005DC58(&qword_10058CF68, qword_10049BC90);
  __chkstk_darwin();
  v76 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v74 = &v59 - v9;
  v10 = *(a2 + 64);
  v77 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v63 = (v11 + 63) >> 6;
  v70 = (v3 + 88);
  v71 = (v3 + 16);
  v69 = enum case for DispatchTimeInterval.seconds(_:);
  v64 = enum case for DispatchTimeInterval.milliseconds(_:);
  v62 = enum case for DispatchTimeInterval.microseconds(_:);
  v61 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v60 = enum case for DispatchTimeInterval.never(_:);
  v59 = (v3 + 8);
  v68 = (v3 + 96);
  v67 = a2;

  v14 = 0;
  v15 = 0;
  v72 = v5;
  while (1)
  {
    v82 = v14;
    if (!v13)
    {
      break;
    }

    v24 = v15;
LABEL_21:
    v27 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v28 = v27 | (v24 << 6);
    v29 = *(v67 + 48) - v28 + 8 * v28;
    v30 = *(v29 + 4);
    v31 = *(v29 + 6);
    v32 = *v29;
    v33 = v65;
    sub_1000D2A28(*(v67 + 56) + *(v66 + 72) * v28, v65, type metadata accessor for NANInternetSharingStatistics.Requester);
    v34 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    v35 = *(v34 + 48);
    v36 = v76;
    *v76 = v32;
    *(v36 + 2) = v30;
    v37 = v36;
    *(v36 + 6) = v31;
    sub_1000D2A90(v33, v36 + v35, type metadata accessor for NANInternetSharingStatistics.Requester);
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);
LABEL_22:
    v38 = v37;
    v39 = v74;
    sub_10001CEA8(v38, v74, &qword_10058CF68, qword_10049BC90);
    v40 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      Hasher._combine(_:)(v82);
      return;
    }

    v41 = *(v40 + 48);
    v42 = *v39;
    v43 = v39[1];
    v44 = v39[2];
    v45 = v39[3];
    v46 = v39[4];
    v47 = v39[6];
    v78 = v39[5];
    v79 = v47;
    v48 = &v39[v41];
    v49 = v81;
    sub_1000D2A90(v48, v81, type metadata accessor for NANInternetSharingStatistics.Requester);
    v50 = v75[3];
    v85 = v75[2];
    v86 = v50;
    v87 = *(v75 + 8);
    v51 = v75[1];
    v83 = *v75;
    v84 = v51;
    Hasher._combine(_:)(v42);
    v52 = v80;
    Hasher._combine(_:)(v43);
    Hasher._combine(_:)(v44);
    Hasher._combine(_:)(v45);
    v53 = v46;
    v54 = v72;
    Hasher._combine(_:)(v53);
    Hasher._combine(_:)(v78);
    Hasher._combine(_:)(v79);
    (*v71)(v54, v49, v52);
    v55 = (*v70)(v54, v52);
    if (v55 == v69)
    {
      (*v68)(v54, v80);
      v16 = *v54;
      v17 = 1000000000;
LABEL_5:
      v18 = v16 * v17;
      v19 = (v16 * v17) >> 64 != (v16 * v17) >> 63;
      v20 = v16 <= 0;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (v20)
      {
        v21 = 0x8000000000000000;
      }

      if (v19)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      goto LABEL_10;
    }

    if (v55 == v64)
    {
      (*v68)(v54, v80);
      v16 = *v54;
      v17 = 1000000;
      goto LABEL_5;
    }

    if (v55 == v62)
    {
      (*v68)(v54, v80);
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      if (*v54 <= 0)
      {
        v56 = 0x8000000000000000;
      }

      if ((*v54 * 1000) >> 64 == (1000 * *v54) >> 63)
      {
        v22 = 1000 * *v54;
      }

      else
      {
        v22 = v56;
      }
    }

    else if (v55 == v61)
    {
      (*v68)(v54, v80);
      v22 = *v54;
    }

    else
    {
      if (v55 != v60)
      {
        (*v59)(v54, v80);
      }

      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_10:
    Hasher._combine(_:)(v22);
    v23 = v81;
    Hasher._combine(_:)(*(v81 + *(v73 + 20)));
    sub_1000D2AF8(v23, type metadata accessor for NANInternetSharingStatistics.Requester);
    v14 = Hasher._finalize()() ^ v82;
  }

  if (v63 <= v15 + 1)
  {
    v25 = v15 + 1;
  }

  else
  {
    v25 = v63;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v24 >= v63)
    {
      v57 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
      v58 = v76;
      (*(*(v57 - 8) + 56))(v76, 1, 1, v57);
      v13 = 0;
      v15 = v26;
      v37 = v58;
      goto LABEL_22;
    }

    v13 = *(v77 + 8 * v24);
    ++v15;
    if (v13)
    {
      v15 = v24;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  for (i = (v5 + 63) >> 6; v7; v2 = Hasher._finalize()() ^ v20)
  {
    v20 = v2;
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(a2 + 56) + 24 * v11;
    v13 = *(v12 + 4);
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = *v12;
    v18 = *(v12 + 16);
    v19 = *(v12 + 20);
    Hasher._combine(_:)(*(*(a2 + 48) + v11));
    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v19);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      Hasher._combine(_:)(v2);
      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v20 = v2;
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v32 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058CFC8, &qword_1004841B8);
  __chkstk_darwin();
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v31 - v6;
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  v33 = a2;

  v13 = 0;
  v36 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v19 = v18 | (v14 << 6);
      v20 = *(*(v33 + 48) + v19);
      sub_1000D2A28(*(v33 + 56) + *(v32 + 72) * v19, v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v21 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      v22 = *(v21 + 48);
      v23 = v35;
      *v35 = v20;
      v17 = v23;
      sub_1000D2A90(v4, &v23[v22], type metadata accessor for NANGenericServiceProtocol.Attribute);
      (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
      v16 = v14;
LABEL_13:
      sub_10001CEA8(v17, v7, &qword_10058CFC8, &qword_1004841B8);
      v24 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      if ((*(*(v24 - 8) + 48))(v7, 1, v24) == 1)
      {
        break;
      }

      v25 = *(v24 + 48);
      v26 = *v7;
      sub_1000D2A90(&v7[v25], v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v27 = *(v34 + 48);
      v37[2] = *(v34 + 32);
      v37[3] = v27;
      v38 = *(v34 + 64);
      v28 = *(v34 + 16);
      v37[0] = *v34;
      v37[1] = v28;
      Hasher._combine(_:)(0xDD06050403020100 >> (8 * v26));
      sub_1000C9388(v37);
      sub_1000D2AF8(v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v29 = Hasher._finalize()();
      v13 = v16;
      v36 ^= v29;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v36);
  }

  else
  {
LABEL_5:
    if (v12 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15 - 1;
    v17 = v35;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v30 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
        (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
        v11 = 0;
        goto LABEL_13;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1000D05AC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v19 = v2;
LABEL_15:
    v11 = __clz(__rbit64(v7)) | (v3 << 6);
    v12 = *(a2 + 56) + 32 * v11;
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 8);
    v18 = *(v12 + 16);
    v16 = *(v12 + 24);
    Hasher._combine(_:)(*(*(a2 + 48) + v11));
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v15);
    if (v16 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v18;
      }

      else
      {
        v9 = 0;
      }

      Hasher._combine(_:)(v9);
    }

    v7 &= v7 - 1;
    v2 = Hasher._finalize()() ^ v19;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      Hasher._combine(_:)(v2);
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v19 = v2;
      v3 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
}

BOOL sub_1000D0734(char *a1, uint64_t a2)
{
  v88 = a1;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v80 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint.Port();
  v86 = *(v4 - 8);
  *&v87 = v4;
  __chkstk_darwin();
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  __chkstk_darwin();
  v83 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v79 - v7;
  __chkstk_darwin();
  v82 = (&v79 - v8);
  __chkstk_darwin();
  v81 = (&v79 - v9);
  __chkstk_darwin();
  v11 = (&v79 - v10);
  __chkstk_darwin();
  v13 = (&v79 - v12);
  __chkstk_darwin();
  v15 = &v79 - v14;
  __chkstk_darwin();
  v17 = &v79 - v16;
  __chkstk_darwin();
  v19 = &v79 - v18;
  sub_10005DC58(&qword_10058CF58, &unk_100484180);
  __chkstk_darwin();
  v21 = &v79 - v20;
  v23 = &v79 + *(v22 + 56) - v20;
  sub_1000D2A28(v88, &v79 - v20, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v24 = a2;
  v25 = v23;
  sub_1000D2A28(v24, v23, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v31 = v19;
    v33 = v85;
    v32 = v86;
    v34 = v87;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v35 = v31;
        sub_1000D2A28(v21, v31, type metadata accessor for NANGenericServiceProtocol.Attribute);
        if (!swift_getEnumCaseMultiPayload())
        {
          (*(v32 + 32))(v33, v25, v34);
          sub_1000D2C6C(&qword_10058CF60, &type metadata accessor for NWEndpoint.Port, &protocol conformance descriptor for NWEndpoint.Port);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v76 = *(v32 + 8);
          v76(v33, v34);
          v30 = v90 == v89;
          v76(v35, v34);
          sub_1000D2AF8(v21, type metadata accessor for NANGenericServiceProtocol.Attribute);
          return v30;
        }

        (*(v32 + 8))(v35, v34);
        goto LABEL_51;
      }

      sub_1000D2A28(v21, v17, type metadata accessor for NANGenericServiceProtocol.Attribute);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (*v17)
        {
          v46 = 7365749;
        }

        else
        {
          v46 = 7365492;
        }

        if (*v25)
        {
          v47 = 7365749;
        }

        else
        {
          v47 = 7365492;
        }

        if (v46 == v47)
        {
          swift_bridgeObjectRelease_n();
LABEL_58:
          v77 = v21;
          goto LABEL_61;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if (v78)
        {
          goto LABEL_58;
        }

LABEL_18:
        sub_1000D2AF8(v21, type metadata accessor for NANGenericServiceProtocol.Attribute);
        return 0;
      }

LABEL_51:
      sub_100016290(v21, &qword_10058CF58, &unk_100484180);
      return 0;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1000D2A28(v21, v15, type metadata accessor for NANGenericServiceProtocol.Attribute);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = String.lowercased()();
        v37 = String.lowercased()();
        if (v36._countAndFlagsBits == v37._countAndFlagsBits && v36._object == v37._object)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v77 = v21;
LABEL_61:
        sub_1000D2AF8(v77, type metadata accessor for NANGenericServiceProtocol.Attribute);
        return 1;
      }
    }

    else
    {
      sub_1000D2A28(v21, v13, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v49 = *v13;
      v48 = v13[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v50 = v21;
        if (v49 == *v25 && v48 == *(v25 + 1))
        {
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v52 & 1) == 0)
          {
            sub_1000D2AF8(v50, type metadata accessor for NANGenericServiceProtocol.Attribute);
            return 0;
          }
        }

        v77 = v50;
        goto LABEL_61;
      }
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1000D2A28(v21, v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v40 = *v11;
      v41 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v72 = v81;
      sub_1000D2A28(v21, v81, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v40 = *v72;
      v41 = v72[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_47;
      }
    }

    v43 = v21;
    v44 = *v23;
    v45 = *(v23 + 1);
    goto LABEL_46;
  }

  v27 = v23;
  if (EnumCaseMultiPayload == 6)
  {
    v42 = v82;
    sub_1000D2A28(v21, v82, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v40 = *v42;
    v41 = v42[1];
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v43 = v21;
      v44 = *v23;
      v45 = *(v23 + 1);
LABEL_46:
      v30 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v40, v41, v44, v45);
      sub_1000124C8(v44, v45);
      sub_1000124C8(v40, v41);
      sub_1000D2AF8(v43, type metadata accessor for NANGenericServiceProtocol.Attribute);
      return v30;
    }

LABEL_47:
    v73 = v40;
    v74 = v41;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v53 = v83;
    sub_1000D2A28(v21, v83, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v88 = v21;
      v56 = *(v53 + 2);
      v57 = *v53;
      v58 = v23;
      v59 = *v23;
      v60 = v23[2];
      v61 = *(v27 + 1);
      v62 = *(v58 + 2);
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v63 = swift_allocObject();
      v87 = xmmword_100480F30;
      *(v63 + 16) = xmmword_100480F30;
      *(v63 + 32) = v57;
      *(v63 + 34) = v56;
      v64 = sub_10002D874(v63);
      v66 = v65;

      v67 = swift_allocObject();
      *(v67 + 16) = v87;
      *(v67 + 32) = v59;
      *(v67 + 34) = v60;
      v68 = sub_10002D874(v67);
      v70 = v69;

      v71 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v64, v66, v68, v70);
      sub_1000124C8(v68, v70);
      sub_1000124C8(v64, v66);
      if (v71)
      {
        v30 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v55, v54, v61, v62);
        sub_1000124C8(v61, v62);
        sub_1000124C8(v55, v54);
        sub_1000D2AF8(v88, type metadata accessor for NANGenericServiceProtocol.Attribute);
        return v30;
      }

      sub_1000124C8(v61, v62);
      sub_1000124C8(v55, v54);
      sub_1000D2AF8(v88, type metadata accessor for NANGenericServiceProtocol.Attribute);
      return 0;
    }

    v73 = v55;
    v74 = v54;
LABEL_50:
    sub_1000124C8(v73, v74);
    goto LABEL_51;
  }

  v28 = v84;
  sub_1000D2A28(v21, v84, type metadata accessor for NANGenericServiceProtocol.Attribute);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1000D2AF8(v28, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    goto LABEL_51;
  }

  v29 = v80;
  sub_1000D2A90(v23, v80, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v30 = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV0D10AttributesV23__derived_struct_equalsySbAG_AGtFZ_0(v28, v29);
  sub_1000D2AF8(v29, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  sub_1000D2AF8(v28, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  sub_1000D2AF8(v21, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v30;
}

uint64_t type metadata accessor for NANGenericServiceProtocol.Attribute(uint64_t a1)
{
  result = qword_10058CEF0;
  if (!qword_10058CEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D1274(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C40, &qword_100499070);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D12E4()
{
  result = qword_10058CE50;
  if (!qword_10058CE50)
  {
    result = swift_getWitnessTable(byte_1004986A4, &type metadata for BinaryEncoder.UnkeyedContainer, v0, v1);
    atomic_store(result, &qword_10058CE50);
  }

  return result;
}

uint64_t sub_1000D1338(uint64_t result)
{
  if (result == 221)
  {
    v1 = 7;
  }

  else
  {
    v1 = 8;
  }

  if (result >= 7u)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

void sub_1000D1358(uint64_t a1, char a2, void *a3)
{
  v6 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BB50, &unk_100480E80);
  __chkstk_darwin();
  v12 = &v41 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v43 = a1;
    v44 = v6;
    v14 = *(v9 + 48);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v46 = *(v10 + 72);
    v42 = v15;
    sub_100012400(a1 + v15, &v41 - v11, &qword_10058BB50, &unk_100480E80);
    v16 = *v12;
    v45 = v14;
    sub_1000D2A90(&v12[v14], v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v17 = *a3;
    v19 = sub_10007CD10(v16);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_23;
    }

    LOBYTE(v6) = v18;
    if (v17[3] >= v22)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_10018DDCC(v22, a2 & 1);
    v23 = sub_10007CD10(v16);
    if ((v6 & 1) == (v24 & 1))
    {
      v19 = v23;
LABEL_7:
      v25 = v44;
      while (1)
      {
        v44 = v13;
        v26 = *a3;
        if (v6)
        {
          v13 = *(v25 + 72);
          sub_1000D2C08(v8, v26[7] + v13 * v19);
        }

        else
        {
          v26[(v19 >> 6) + 8] |= 1 << v19;
          *(v26[6] + v19) = v16;
          v13 = *(v25 + 72);
          sub_1000D2A90(v8, v26[7] + v13 * v19, type metadata accessor for NANGenericServiceProtocol.Attribute);
          v27 = v26[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_24;
          }

          v26[2] = v29;
        }

        v30 = v44 - 1;
        if (v44 == 1)
        {
          return;
        }

        v6 = v43 + v46 + v42;
        while (1)
        {
          sub_100012400(v6, v12, &qword_10058BB50, &unk_100480E80);
          v16 = *v12;
          sub_1000D2A90(&v12[v45], v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
          v31 = *a3;
          v32 = sub_10007CD10(v16);
          v34 = v31[2];
          v35 = (v33 & 1) == 0;
          v28 = __OFADD__(v34, v35);
          v36 = v34 + v35;
          if (v28)
          {
            break;
          }

          v19 = v33;
          if (v31[3] < v36)
          {
            sub_10018DDCC(v36, 1);
            v32 = sub_10007CD10(v16);
            if ((v19 & 1) != (v37 & 1))
            {
              goto LABEL_26;
            }
          }

          v38 = *a3;
          if (v19)
          {
            sub_1000D2C08(v8, v38[7] + v13 * v32);
          }

          else
          {
            v38[(v32 >> 6) + 8] |= 1 << v32;
            *(v38[6] + v32) = v16;
            sub_1000D2A90(v8, v38[7] + v13 * v32, type metadata accessor for NANGenericServiceProtocol.Attribute);
            v39 = v38[2];
            v28 = __OFADD__(v39, 1);
            v40 = v39 + 1;
            if (v28)
            {
              goto LABEL_24;
            }

            v38[2] = v40;
          }

          v6 += v46;
          if (!--v30)
          {
            return;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v25 = v44;
        sub_100195C70();
      }
    }

LABEL_26:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void *sub_1000D1760(uint64_t a1)
{
  v2 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = v32 - v5;
  sub_10005DC58(&qword_10058CF98, &unk_1004841A8);
  __chkstk_darwin();
  v7 = v32 - v6;
  v8 = sub_10005DC58(&qword_10058BB50, &unk_100480E80);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v41 = v32 - v10;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v32 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v13 + 80);
    v32[1] = a1;
    v33 = v9;
    v17 = a1 + ((v16 + 32) & ~v16);
    v18 = *(v13 + 72);
    v38 = (v3 + 48);
    v39 = v18;
    v36 = (v9 + 48);
    v37 = (v9 + 56);
    v19 = _swiftEmptyArrayStorage;
    v34 = v2;
    v20 = v2;
    while (1)
    {
      v21 = v40;
      sub_100012400(v17, v40, &qword_10058BB48, &unk_100483040);
      sub_10001CEA8(v21, v12, &qword_10058BB48, &unk_100483040);
      v22 = 1;
      if ((*v38)(v12, 1, v20) != 1)
      {
        break;
      }

LABEL_22:
      (*v37)(v7, v22, 1, v8);
      if ((*v36)(v7, 1, v8) == 1)
      {
        sub_100016290(v7, &qword_10058CF98, &unk_1004841A8);
      }

      else
      {
        sub_10001CEA8(v7, v41, &qword_10058BB50, &unk_100480E80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100116088(0, v19[2] + 1, 1, v19);
        }

        v29 = v19[2];
        v28 = v19[3];
        if (v29 >= v28 >> 1)
        {
          v19 = sub_100116088((v28 > 1), v29 + 1, 1, v19);
        }

        v19[2] = v29 + 1;
        sub_10001CEA8(v41, v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, &qword_10058BB50, &unk_100480E80);
        v20 = v34;
      }

      v17 += v39;
      if (!--v15)
      {

        if (v19[2])
        {
          goto LABEL_30;
        }

LABEL_32:
        v30 = &_swiftEmptyDictionarySingleton;
        goto LABEL_33;
      }
    }

    v23 = v20;
    v24 = v42;
    sub_1000D2A90(v12, v42, type metadata accessor for NANGenericServiceProtocol.Attribute);
    sub_1000D2A28(v24, v35, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v20 = v23;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if ((EnumCaseMultiPayload - 7) >= 2)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v26 = 5;
        }

        else
        {
          v26 = 6;
        }
      }

      else
      {
        v26 = 7;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v26 = 1;
        goto LABEL_21;
      }

      v26 = 0;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v26 = 2;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    sub_1000D2AF8(v35, type metadata accessor for NANGenericServiceProtocol.Attribute);
LABEL_21:
    v27 = *(v8 + 48);
    *v7 = v26;
    sub_1000D2A90(v42, &v7[v27], type metadata accessor for NANGenericServiceProtocol.Attribute);
    v22 = 0;
    goto LABEL_22;
  }

  v19 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_32;
  }

LABEL_30:
  sub_10005DC58(&qword_10058BB58, &unk_100492320);
  v30 = static _DictionaryStorage.allocate(capacity:)();
LABEL_33:
  v43 = v30;
  sub_1000D1358(v19, 1, &v43);

  return v43;
}

void *sub_1000D1D34(void *a1)
{
  v3 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_10058CF78, &qword_100484198);
    sub_100031694(v21, v21[3]);
    sub_1000D2B58();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v8 = v22;
    v9 = *(v22 + 16);
    if (v9)
    {
      v19 = a1;
      v20 = _swiftEmptyArrayStorage;
      sub_1000C0564(0, v9, 0);
      v10 = v20;
      v18 = v8;
      v11 = (v8 + 48);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = *(v11 - 16);
        sub_10000AB0C(v12, *v11);
        sub_1000C7EA8(v14, v12, v13, v5);
        v15 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
        (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
        v20 = v10;
        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          sub_1000C0564((v16 > 1), v17 + 1, 1);
          v10 = v20;
        }

        v11 += 3;
        v10[2] = v17 + 1;
        sub_10001CEA8(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, &qword_10058BB48, &unk_100483040);
        --v9;
      }

      while (v9);

      a1 = v19;
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
    }

    v6 = sub_1000D1760(v10);
    sub_100002A00(v21);
    sub_100002A00(a1);
  }

  return v6;
}

void *sub_1000D201C(uint64_t a1, unint64_t a2)
{
  v4 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
  __chkstk_darwin();
  v6 = &v34 - v5;
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  v8 = type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v10 = 0;
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v10 = *(a1 + 16);
    }
  }

  else if (v11)
  {
    v10 = a1;
  }

  v9[4] = v10;
  swift_beginAccess();
  v9[5] = v7;
  v13 = v9[2];
  v12 = v9[3];
  sub_10000AB0C(a1, a2);
  v14 = v12 >> 62;
  v39 = v13 >> 32;
  v40 = v13;
  v38 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v9[4];
    if (v14 <= 1)
    {
      break;
    }

    if (v14 == 2)
    {
      if (v15 >= *(v40 + 24))
      {
        goto LABEL_22;
      }
    }

    else if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    v41[3] = v8;
    v41[4] = sub_1000D2C6C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    v41[0] = v9;

    sub_100264884(v41, v42);
    v37 = LOBYTE(v42[0]);
    v35 = v42[2];
    v36 = v42[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v38;
    }

    else
    {
      v17 = sub_100116AF4(0, v38[2] + 1, 1, v38);
    }

    v19 = v17[2];
    v18 = v17[3];
    v20 = (v19 + 1);
    if (v19 >= v18 >> 1)
    {
      v38 = (v19 + 1);
      v34 = v19;
      v17 = sub_100116AF4((v18 > 1), v19 + 1, 1, v17);
      v20 = v38;
      v19 = v34;
    }

    v17[2] = v20;
    v38 = v17;
    v21 = &v17[3 * v19];
    *(v21 + 32) = v37;
    v22 = v35;
    v21[5] = v36;
    v21[6] = v22;
  }

  v16 = BYTE6(v12);
  if (v14)
  {
    v16 = v39;
  }

  if (v15 < v16)
  {
    goto LABEL_16;
  }

LABEL_22:

  v23 = v38[2];
  if (v23)
  {
    v41[0] = _swiftEmptyArrayStorage;
    v24 = v38;
    sub_1000C0564(0, v23, 0);
    v25 = v41[0];
    v26 = v24 + 6;
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v29 = *(v26 - 16);
      sub_10000AB0C(v27, *v26);
      sub_1000C7EA8(v29, v27, v28, v6);
      v30 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
      v41[0] = v25;
      v32 = v25[2];
      v31 = v25[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000C0564((v31 > 1), v32 + 1, 1);
        v25 = v41[0];
      }

      v26 += 3;
      v25[2] = v32 + 1;
      sub_10001CEA8(v6, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, &qword_10058BB48, &unk_100483040);
      --v23;
    }

    while (v23);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  return sub_1000D1760(v25);
}

unint64_t sub_1000D24D0()
{
  result = qword_10058CE58;
  if (!qword_10058CE58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANGenericServiceProtocol, &type metadata for NANGenericServiceProtocol, v0, v1);
    atomic_store(result, &qword_10058CE58);
  }

  return result;
}

unint64_t sub_1000D2528()
{
  result = qword_10058CE60;
  if (!qword_10058CE60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANGenericServiceProtocol.AttributeFilter, &type metadata for NANGenericServiceProtocol.AttributeFilter, v0, v1);
    atomic_store(result, &qword_10058CE60);
  }

  return result;
}

unint64_t sub_1000D2580()
{
  result = qword_10058CE68;
  if (!qword_10058CE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANGenericServiceProtocol.AttributeFilter, &type metadata for NANGenericServiceProtocol.AttributeFilter, v0, v1);
    atomic_store(result, &qword_10058CE68);
  }

  return result;
}

unint64_t sub_1000D25D8()
{
  result = qword_10058CE70;
  if (!qword_10058CE70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANGenericServiceProtocol.AttributeFilter, &type metadata for NANGenericServiceProtocol.AttributeFilter, v0, v1);
    atomic_store(result, &qword_10058CE70);
  }

  return result;
}

unint64_t sub_1000D2630()
{
  result = qword_10058CE78;
  if (!qword_10058CE78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANGenericServiceProtocol.AttributeFilter, &type metadata for NANGenericServiceProtocol.AttributeFilter, v0, v1);
    atomic_store(result, &qword_10058CE78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANCipherSuite(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NANCipherSuite(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000D281C(uint64_t a1)
{
  type metadata accessor for NWEndpoint.Port();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(319);
    if (v2 <= 0x3F)
    {
      sub_1000D28D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000D28D0()
{
  if (!qword_10058CF00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058CF00);
    }
  }
}

unint64_t sub_1000D2980()
{
  result = qword_10058CF38;
  if (!qword_10058CF38)
  {
    result = swift_getWitnessTable(byte_100484148, &type metadata for NANGenericServiceProtocol.AttributeID, v0, v1);
    atomic_store(result, &qword_10058CF38);
  }

  return result;
}

unint64_t sub_1000D29D4()
{
  result = qword_10058CF40;
  if (!qword_10058CF40)
  {
    result = swift_getWitnessTable(byte_100484110, &type metadata for NANGenericServiceProtocol.AttributeID, v0, v1);
    atomic_store(result, &qword_10058CF40);
  }

  return result;
}

uint64_t sub_1000D2A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000D2B58()
{
  result = qword_10058CF80;
  if (!qword_10058CF80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058CF78, &qword_100484198);
    v4[0] = sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0, protocol conformance descriptor for TypeLengthValue<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058CF80);
  }

  return result;
}

uint64_t sub_1000D2C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D2C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000D2CB8(void *result, uint64_t a2, uint64_t a3)
{
  v12 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C05A4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = a2;
    if (a2 <= v12)
    {
      v6 = v12;
    }

    v10 = v6 - v12 + 1;
    while (v5 < v4)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      sub_100031694(a3, *(a3 + 24));
      sub_1000E5328();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v3)
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        result = sub_1000C05A4((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v14;
      if (a2 < v12)
      {
        goto LABEL_20;
      }

      if (v10 == ++v5)
      {
        goto LABEL_21;
      }

      if (v7 == v4)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1000D2E40(void *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = v3;
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C0584(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a2;
    if (a2 <= v17)
    {
      v7 = v17;
    }

    v14 = v4;
    v15 = v7 - v17 + 1;
    while (v6 < v4)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

      sub_100031694(a3, *(a3 + 24));
      sub_1000E537C();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v5)
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = v22;
      v10 = v23;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_1000C0584((v11 > 1), v12 + 1, 1);
        v10 = v23;
        v9 = v22;
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = _swiftEmptyArrayStorage + 10 * v12;
      v13[32] = v19;
      *(v13 + 17) = v20;
      v13[36] = v21;
      *(v13 + 19) = v9;
      v13[40] = v10;
      if (a2 < v17)
      {
        goto LABEL_20;
      }

      if (v15 == ++v6)
      {
        goto LABEL_21;
      }

      v4 = v14;
      v5 = 0;
      if (v8 == v14)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

CoreP2P::NANBitmap::Band_optional __swiftcall NANBitmap.Band.Iterator.next()()
{
  v1 = *(v0 + 1);
  if (v1 <= 7)
  {
    if ((v1 - 9) >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v4 = *v0;
      v3 = *(v0 + 1);
      if (v1 < 0)
      {
        goto LABEL_10;
      }

LABEL_6:
      if (v3 > 7)
      {
LABEL_11:
        LOBYTE(v2) = 0;
      }

      else
      {
        v5 = 1 << v3;
        while ((v5 & ~v4) != 0)
        {
          *(v0 + 1) = ++v3;
          if ((v3 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_10:
          v5 = 0;
          if (v3 <= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_11;
          }
        }

        v2 = 1 << v3;
        if (v3 > 7)
        {
          LOBYTE(v2) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v3 = *(v0 + 1);
    }

    *(v0 + 1) = v3 + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return (v2 | ((v1 > 7) << 8));
}

CoreP2P::NANBitmap::Band_optional sub_1000D3138@<W0>(Swift::UInt8 *a1@<X8>)
{
  result = NANBitmap.Band.Iterator.next()();
  *a1 = result.value.rawValue;
  a1[1] = result.is_nil;
  return result;
}

CoreP2P::NANBitmap::Band::Iterator __swiftcall NANBitmap.Band.makeIterator()()
{
  v0 = 0;
  result.currentIndex = v0;
  return result;
}

uint64_t NANBitmap.Band.bands.getter(uint64_t result)
{
  v1 = 0;
  v2 = result;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v1 >= 8)
    {
      v4 = 0;
LABEL_7:
      v5 = v1;
      goto LABEL_8;
    }

    v4 = 1 << v1;
    if (((1 << v1) & v2) != 0)
    {
      goto LABEL_7;
    }

    v5 = v1 + 1;
    if (v1 == 7)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 2;
    if (v1 > 5)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 3;
    if (v1 == 5)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 4;
    if (v1 > 3)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 5;
    if (v1 == 3)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 6;
    if (v1 > 1)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 7;
    if (v1)
    {
LABEL_35:
      v4 = 0;
    }

    else
    {
      if ((v2 & 0x80u) == 0)
      {
        v5 = 8;
      }

      v4 = v2 & 0x80;
    }

LABEL_8:
    v1 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    switch(v4)
    {
      case 4:
        v6 = 0;
        goto LABEL_15;
      case 128:
        v6 = 2;
        goto LABEL_15;
      case 16:
        v6 = 1;
LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100116C3C(0, *(v3 + 2) + 1, 1, v3);
          v3 = result;
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          result = sub_100116C3C((v7 > 1), v8 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 2) = v8 + 1;
        v3[v8 + 32] = v6;
        break;
    }

    if (v1 >= 8)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D3410@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_100286BE8();

  *a2 = v3;
  return result;
}

uint64_t NANBitmap.Channel.auxiliaryChannelBitmap.setter(uint64_t result)
{
  *(v1 + 6) = result;
  *(v1 + 8) = BYTE2(result) & 1;
  return result;
}

CoreP2P::NANBitmap::Channel __swiftcall NANBitmap.Channel.init(operatingClass:channelBitmap:primaryChannelBitmap:auxiliaryChannelBitmap:)(Swift::UInt8 operatingClass, Swift::UInt16 channelBitmap, Swift::UInt8 primaryChannelBitmap, Swift::UInt16_optional auxiliaryChannelBitmap)
{
  v4 = operatingClass | (channelBitmap << 16) | (primaryChannelBitmap << 32) | (*&auxiliaryChannelBitmap.value << 48);
  is_nil = auxiliaryChannelBitmap.is_nil;
  result.operatingClass = v4;
  result.gap1 = BYTE1(v4);
  result.channelBitmap = WORD1(v4);
  result.primaryChannelBitmap = BYTE4(v4);
  result.gap5 = BYTE5(v4);
  result.auxiliaryChannelBitmap.value = HIWORD(v4);
  result.auxiliaryChannelBitmap.is_nil = is_nil;
  return result;
}

unint64_t sub_1000D3518()
{
  v1 = 0x6E6974617265706FLL;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x426C656E6E616863;
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

uint64_t sub_1000D35B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E245C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D35D8(uint64_t a1)
{
  v2 = sub_1000DD454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D3614(uint64_t a1)
{
  v2 = sub_1000DD454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANBitmap.Channel.__derived_struct_equals(_:_:)(unint64_t a1, char a2, unint64_t a3, char a4)
{
  result = 0;
  if (a1 == a3 && ((a1 >> 16) & 0xFFFFFF) == ((a3 >> 16) & 0xFFFFFF))
  {
    if (a2)
    {
      if (a4)
      {
        return 1;
      }
    }

    else if (!((a3 ^ a1) >> 48) && (a4 & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t NANBitmap.Channel.encode(to:)(void *a1, unint64_t a2, char a3)
{
  v5 = sub_10005DC58(&qword_10058CFD8, &qword_100484288);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100029B34(a1, a1[3]);
  sub_1000DD454();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

void NANBitmap.Channel.hash(into:)(int a1, unint64_t a2, char a3)
{
  v4 = HIWORD(a2);
  v5 = a2 >> 16;
  v6 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }
}

Swift::Int NANBitmap.Channel.hashValue.getter(unint64_t a1, char a2)
{
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIWORD(a1));
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D39A0()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_1000D3A4C()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 8);
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_1000D3ACC(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

unint64_t sub_1000D3B74@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E1140(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = WORD1(result);
    *(a1 + 4) = BYTE4(result);
    *(a1 + 6) = HIWORD(result);
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1000D3C34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || a1[4] != a2[4])
  {
    return 0;
  }

  v5 = a2[8];
  if (a1[8])
  {
    if (a2[8])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t NANBitmap.Time.Control.bitDuration.getter(__int16 a1)
{
  v1 = sub_10002F09C(0, 3uLL, a1);
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v1);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000D3CF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1000D3F78(a1, a2, a3, a4);
  if (!v4 && result > 3)
  {
    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t NANBitmap.Time.Control.period.getter(__int16 a1)
{
  v1 = sub_10002F09C(3, 3uLL, a1);
  result = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v1);
  if (result == 8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000D3E1C(uint64_t result, unint64_t a2, __int16 a3)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v6 < 0x40)
      {
        v3 |= 1 << v6;
      }

      if (v7 == a2)
      {
        goto LABEL_13;
      }

      ++v6;
      if (v7 >= a2)
      {
        __break(1u);
LABEL_13:
        if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        if (result < 0)
        {
          goto LABEL_28;
        }

        if (result == 64)
        {
          return 0;
        }

LABEL_21:
        v8 = (a3 & (v3 << result)) >> result;
        while (v8 > 0xFF)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          if (result == -64)
          {
            return 0;
          }

LABEL_31:
          v3 = (a3 & (v3 >> -result));
          v8 = v3 << -result;
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }
        }

        return v8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  v8 = 0;
  v3 = 0;
  if (result < 0)
  {
    if (result != -64)
    {
      goto LABEL_31;
    }
  }

  else if (result != 64)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_1000D3F78@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (a4 == -64)
    {
      return 0;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  a4 = result;
  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 < 0x40)
      {
        result |= 1 << v5;
      }

      if (v6 == a2)
      {
        break;
      }

      ++v5;
      if (v6 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a4 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (a4 != 64)
      {
        return (a3 & (result << a4)) >> a4;
      }

      return 0;
    }

    goto LABEL_27;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  result = 0;
  if (a4 < 0)
  {
    if (a4 == -64)
    {
      return result;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if (a4 != 64)
  {
    return (a3 & (result << a4)) >> a4;
  }

  return result;
}

uint64_t sub_1000D40C8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (a4 == -64)
    {
      return 0;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if ((result + a2) > 8)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  a4 = result;
  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 < 0x40)
      {
        result |= 1 << v5;
      }

      if (v6 == a2)
      {
        break;
      }

      ++v5;
      if (v6 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a4 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (a4 != 64)
      {
        return (a3 & (result << a4)) >> a4;
      }

      return 0;
    }

    goto LABEL_27;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  result = 0;
  if (a4 < 0)
  {
    if (a4 == -64)
    {
      return result;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if (a4 != 64)
  {
    return (a3 & (result << a4)) >> a4;
  }

  return result;
}

uint64_t sub_1000D4218(uint64_t result, unint64_t a2, unsigned int a3)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 32)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v6 < 0x40)
      {
        v3 |= 1 << v6;
      }

      if (v7 == a2)
      {
        goto LABEL_13;
      }

      ++v6;
      if (v7 >= a2)
      {
        __break(1u);
LABEL_13:
        if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        if (result < 0)
        {
          goto LABEL_28;
        }

        if (result == 64)
        {
          return 0;
        }

LABEL_21:
        v9 = v3 << result;
        v3 = a3;
        v8 = (v9 & a3) >> result;
        while (v8 > 0xFF)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          if (result == -64)
          {
            return 0;
          }

LABEL_31:
          v3 = (v3 >> -result) & a3;
          v8 = v3 << -result;
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }
        }

        return v8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  v8 = 0;
  v3 = 0;
  if (result < 0)
  {
    if (result != -64)
    {
      goto LABEL_31;
    }
  }

  else if (result != 64)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t NANBitmap.Time.Control.startOffset.getter@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = sub_10002F214(6, 9uLL, a1, a2);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v2 >> 60))
  {
    return 16 * v2;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

CoreP2P::NANBitmap::Time::Control __swiftcall NANBitmap.Time.Control.init(bitDuration:period:startOffset:)(CoreP2P::NANIntervalDuration bitDuration, CoreP2P::NANTimeUnit::SchedulePeriod period, CoreP2P::NANTimeUnit startOffset)
{
  if ((startOffset.rawValue & 0xFFFFFFFFFFFFE00FLL) != 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result.rawValue = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v5 = sub_100286BB0(bitDuration, 0, 3uLL);
    v6 = sub_100286BB0(period, 3, 3uLL);
    v7 = sub_1002388F4(startOffset.rawValue >> 4, 6, 9uLL);
    if ((v6 & ~v5) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | v5;
    if ((v7 & ~v9) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    return (v10 | v9);
  }

  return result;
}

CoreP2P::NANBitmap::Time::Control __swiftcall NANBitmap.Time.Control.offset(by:)(CoreP2P::NANTimeUnit by)
{
  v2 = v1;
  v4 = sub_10002F09C(0, 3uLL, v1);
  v5 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v4);
  if (v5 == 4)
  {
    v5 = 0;
  }

  v6 = sub_10002F09C(3, 3uLL, v2);
  v7 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v6);
  v8 = v7;
  if (v7 == 8)
  {
    v7 = 0;
  }

  v9 = sub_10002F214(6, 9uLL, v2, v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 >> 60)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = by.rawValue + 16 * v9;
  if (__CFADD__(by.rawValue, 16 * v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v10 & 0xF) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 >> 13)
  {
LABEL_21:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result.rawValue = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v11 = sub_100286BB0(v5, 0, 3uLL);
  v12 = sub_100286BB0(v7, 3, 3uLL);
  v13 = sub_1002388F4(v10 >> 4, 6, 9uLL);
  if ((v12 & ~v11) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | v11;
  if ((v13 & ~v15) != 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  return (v16 | v15);
}

_WORD *NANBitmap.Time.Control.availability.unsafeMutableAddressor()
{
  if (qword_10058A7D0 != -1)
  {
    swift_once();
  }

  return &static NANBitmap.Time.Control.availability;
}

unint64_t sub_1000D4768(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v4 = a2;
  v5 = sub_100286BB0(0, 0, 3uLL);
  v6 = sub_100286BB0(v4, 3, 3uLL);
  result = sub_1002388F4(0, 6, 9uLL);
  if ((v6 & ~v5) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v5;
  if ((result & ~v9) != 0)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10 | v9;
  return result;
}

__int16 *NANBitmap.Time.Control.perDiscoveryWindow.unsafeMutableAddressor()
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  return &static NANBitmap.Time.Control.perDiscoveryWindow;
}

uint64_t sub_1000D48DC(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1000D49D4@<X0>(_WORD *a2@<X8>)
{
  v3 = sub_100286BE4();

  *a2 = v3;
  return result;
}

uint64_t NANBitmap.Time.encode(to:)(void *a1, __int16 a2, uint64_t a3, unint64_t a4)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v11, v12);
  sub_1000E1584();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    sub_10000AB0C(a3, a4);
    v9 = sub_1000D4BE0(a3, a4);
    v10 = v7;
    sub_100031694(v11, v12);
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_10000CADC(&qword_10058CFF0, &qword_10058CC70, &unk_100484290, "e)\n");
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v9, v10);
  }

  return sub_100002A00(v11);
}

uint64_t sub_1000D4BE0(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 255)
      {
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result < 255)
      {
        return result;
      }

LABEL_11:
      v8 = result;
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      swift_willThrow();
      return sub_1000124C8(v8, a2);
    }

    goto LABEL_13;
  }

  if (BYTE6(a2) == 255)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000D4CB4(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    LODWORD(v3) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v3 = v3;
      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 != 2)
  {
    return result;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v3 >= 0xFFFF)
  {
    v8 = result;
    sub_10000B02C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
    return sub_1000124C8(v8, a2);
  }

  return result;
}

uint64_t NANBitmap.Time.description.getter(unsigned __int16 a1, unsigned __int128 *a2, unint64_t a3)
{
  type metadata accessor for Data.Iterator();
  __chkstk_darwin();
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB0C(a2, a3);
  v7 = sub_10002D9E4(a1, a2, a3);
  v9 = v7;
  v11 = v10;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  if (v7 == v10)
  {
    return 0;
  }

  v13 = v7 >> 7;
  v26 = HIBYTE(v8);
  v24 = v8 >> 40;
  *&v25 = HIWORD(v8);
  v22 = xmmword_100480F40;
  v23 = HIDWORD(v8);
  v14 = v8 >> 24;
  v15 = v8 >> 16;
  v16 = v8 >> 8;
  while (1)
  {
    v27[0] = v8;
    v27[1] = v16;
    v27[2] = v15;
    v27[3] = v14;
    v27[4] = v23;
    v27[5] = v24;
    v27[6] = v25;
    v27[7] = v26;
    v17 = v9 + 128;
    if (v9 >= 0xFFFFFFFFFFFFFF80)
    {
      break;
    }

    v18 = v27[v13];
    v19 = v8;
    sub_10005DC58(&qword_100599FF0, &qword_100486D20);
    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 56) = &type metadata for UInt8;
    *(v20 + 64) = &protocol witness table for UInt8;
    *(v20 + 32) = v18;
    v21._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v21);

    v8 = v19;
    v9 += 128;
    ++v13;
    if (v17 == v11)
    {
      return v28[0];
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TimeBitmap.init(bitmap:)(uint64_t a1, unsigned __int128 *a2, unint64_t a3)
{
  result = sub_10002D9E4(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t NANBitmap.Time.hash(into:)(uint64_t a1, Swift::UInt16 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int NANBitmap.Time.hashValue.getter(Swift::UInt16 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000D5384()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D53E8(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return Data.hash(into:)();
}

Swift::Int sub_1000D543C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D549C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E1404(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t IEEE80211Frame.header.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

double sub_1000D5534()
{
  result = 0.0;
  static TimeBitmap.zero = xmmword_1004841D0;
  qword_10059B370 = 0;
  return result;
}

uint64_t static TimeBitmap.zero.getter()
{
  if (qword_10058A7E0 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.zero;
}

double sub_1000D55B8()
{
  result = 0.0;
  static TimeBitmap.all = xmmword_1004841D0;
  qword_10059B390 = -1;
  return result;
}

__int128 *TimeBitmap.all.unsafeMutableAddressor()
{
  if (qword_10058A7E8 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.all;
}

uint64_t static TimeBitmap.all.getter()
{
  if (qword_10058A7E8 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.all;
}

int8x8_t TimeBitmap.SlotsView.formUnion(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = vorr_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

int8x8_t TimeBitmap.SlotsView.formIntersection(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = vand_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

int8x8_t TimeBitmap.SlotsView.formSymmetricDifference(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = veor_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

int8x8_t TimeBitmap.SlotsView.subtract(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = vbic_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

Swift::Void __swiftcall TimeBitmap.invert()()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 != v2)
  {
    v3 = v0 + 2;
    for (i = v1 >> 7; ; ++i)
    {
      v5 = v1 + 128;
      if (v1 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v6 = *v3;
      *(v3 + i) = ~*(&v6 + i);
      v1 += 128;
      if (v5 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t TimeBitmap.inverted()(unint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  if (result != a2)
  {
    v3 = result >> 7;
    for (i = result; ; i += 128)
    {
      v5 = i + 128;
      if (i >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v6 = v7;
      *(&v7 + v3) = ~*(&v6 + v3);
      ++v3;
      if (v5 == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t *(*TimeBitmap.subscript.modify(uint64_t a1, unint64_t a2))(unint64_t *result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *(v2 + 16);
  *(a1 + 16) = (*(&v4 + (a2 >> 7)) >> ((a2 >> 4) & 7)) & 1;
  return sub_1000D5B18;
}

unint64_t *sub_1000D5B18(unint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = *result >> 7;
  v4 = *(v1 + 16);
  *(v1 + 16 + v3) = *(&v4 + v3) | (1 << ((v2 >> 4) & 7));
  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.index(after:)(CoreP2P::NANTimeUnit after)
{
  v1 = __CFADD__(after.rawValue, 16);
  result.rawValue = after.rawValue + 16;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.index(before:)(CoreP2P::NANTimeUnit before)
{
  v1 = before.rawValue >= 0x10;
  result.rawValue = before.rawValue - 16;
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.index(_:offsetBy:)(CoreP2P::NANTimeUnit _, Swift::Int offsetBy)
{
  if (offsetBy < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (offsetBy >> 60)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = __CFADD__(_.rawValue, 16 * offsetBy);
  _.rawValue += 16 * offsetBy;
  if (v2)
  {
LABEL_7:
    __break(1u);
  }

  return _;
}

Swift::Int __swiftcall TimeBitmap.distance(from:to:)(Swift::Int from, CoreP2P::NANTimeUnit to)
{
  if (to.rawValue >= from)
  {
    return (to.rawValue - from) >> 4;
  }

  __break(1u);
  return from;
}

unint64_t TimeBitmap.description.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0xE000000000000000;
  if (result == a2)
  {
    return 0;
  }

  v5 = result;
  for (i = result >> 7; ; ++i)
  {
    v11 = a3;
    v7 = v5 + 128;
    if (v5 >= 0xFFFFFFFFFFFFFF80)
    {
      break;
    }

    v8 = *(&v11 + i);
    sub_10005DC58(&qword_100599FF0, &qword_100486D20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100480F40;
    *(v9 + 56) = &type metadata for UInt8;
    *(v9 + 64) = &protocol witness table for UInt8;
    *(v9 + 32) = v8;
    v10._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v10);

    v5 += 128;
    if (v7 == a2)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TimeBitmap.Slot.setBit(_:)(Swift::UInt8 a1)
{
  if (a1 > 7u)
  {
    __break(1u);
  }

  else
  {
    *v1 |= 1 << a1;
  }
}

Swift::Void __swiftcall TimeBitmap.Slot.clearBit(_:)(Swift::UInt8 a1)
{
  if (a1 > 7u)
  {
    __break(1u);
  }

  else
  {
    *v1 &= (-1 << a1) - 1;
  }
}

Swift::Int InfraScanCompleteEvent.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t (*TimeBitmap.SlotsView.subscript.modify(uint64_t a1, unint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *(v2 + 16);
  *(a1 + 16) = *(&v4 + (a2 >> 7));
  return sub_1000D5DE4;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.SlotsView.index(after:)(CoreP2P::NANTimeUnit after)
{
  v1 = __CFADD__(after.rawValue, 128);
  result.rawValue = after.rawValue + 128;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.SlotsView.index(_:offsetBy:)(CoreP2P::NANTimeUnit _, Swift::Int offsetBy)
{
  if (offsetBy < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (offsetBy >> 57)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = __CFADD__(_.rawValue, offsetBy << 7);
  _.rawValue += offsetBy << 7;
  if (v2)
  {
LABEL_7:
    __break(1u);
  }

  return _;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.SlotsView.index(before:)(CoreP2P::NANTimeUnit before)
{
  v1 = before.rawValue >= 0x80;
  result.rawValue = before.rawValue - 128;
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall TimeBitmap.SlotsView.distance(from:to:)(Swift::Int from, CoreP2P::NANTimeUnit to)
{
  if (to.rawValue >= from)
  {
    return (to.rawValue - from) >> 7;
  }

  __break(1u);
  return from;
}

void *sub_1000D5EA4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result < 0x80uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 128;
  }

  return result;
}

void *sub_1000D5EBC(void *result)
{
  if (*result < 0x80uLL)
  {
    __break(1u);
  }

  else
  {
    *result -= 128;
  }

  return result;
}

void (*sub_1000D5ED4(_BYTE *a1, unint64_t *a2))()
{
  v3 = *a2;
  v5 = *(v2 + 16);
  *a1 = *(&v5 + (v3 >> 7));
  return NANBitmap.Channel.operatingClass.getter;
}

unint64_t *sub_1000D5F18@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = v2[1];
  if (v5 < *v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *result;
  if (*result < v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result[1];
  if (v5 >= v7)
  {
    *(a2 + 8) = v7;
    *(a2 + 16) = v3;
    *(a2 + 24) = v4;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 sub_1000D5F60@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  result = *(v1 + 1);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = result.n128_u64[0];
  return result;
}

void *sub_1000D5FD0@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 >> 57)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__CFADD__(*result, a2 << 7))
  {
    *a3 = *result + (a2 << 7);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t *sub_1000D5FFC@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *a3 - *result;
  if (*a3 < *result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0)
  {
    if (v5 < 0x80)
    {
      if (!a2)
      {
        goto LABEL_9;
      }

LABEL_7:
      v6 = 0;
      v7 = 1;
LABEL_11:
      *a4 = v6;
      *(a4 + 8) = v7;
      return result;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 > v5 >> 7)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = __CFADD__(v4, a2 << 7);
  v6 = v4 + (a2 << 7);
  if (!v8)
  {
    v7 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1000D6060(void *result, void *a2)
{
  if (*a2 >= *result)
  {
    return ((*a2 - *result) >> 7);
  }

  __break(1u);
  return result;
}

void *sub_1000D607C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= 0xFFFFFFFFFFFFFF80)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 128;
  }

  return result;
}

void *sub_1000D6094(void *result)
{
  if (*result >= 0xFFFFFFFFFFFFFF80)
  {
    __break(1u);
  }

  else
  {
    *result += 128;
  }

  return result;
}

__n128 sub_1000D60AC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  result = *(v1 + 1);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

unint64_t sub_1000D60C4()
{
  v1 = v0[1];
  if (v1 >= *v0)
  {
    return (v1 - *v0) >> 7;
  }

  __break(1u);
  return result;
}

void sub_1000D60DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 - *v0;
  if (v2 < *v0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  if (v3 >= 0x80)
  {
    v4 = v0[2];
    v5 = (v3 >> 7);
    v6 = sub_1000DD4A8(v3 >> 7, 0, &qword_10058D350, &qword_100486958);
    if (sub_1002066EC(v7, (v6 + 4), v5, v1, v2, v4) != v5)
    {
      goto LABEL_6;
    }
  }
}

unint64_t *sub_1000D618C(unint64_t *result, unint64_t a2, unint64_t a3)
{
  v3 = a2 - result;
  if (a2 < result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v3 < 0x10)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = (v3 >> 4);
  v8 = sub_1000DD4A8(v3 >> 4, 0, &qword_10058D348, &qword_100486950);
  result = sub_1000DD900(v9, (v8 + 4), v7, v6, a2, a3);
  if (result != v7)
  {
    goto LABEL_8;
  }

  return v8;
}

void sub_1000D6250(int a1, int a2, int a3, unint64_t a4)
{
  v4 = a4 >> 8;
  v5 = a4 >> 16;
  v6 = a4 >> 24;
  v7 = HIDWORD(a4);
  v8 = a4 >> 40;
  v9 = HIWORD(a4);
  v10 = HIBYTE(a4);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
}

Swift::Int _s7CoreP2P10TimeBitmapV9SlotsViewV9hashValueSivg_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = HIWORD(a3);
  v10 = HIBYTE(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  return Hasher._finalize()();
}

Swift::Int sub_1000D63BC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[23];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

void sub_1000D6494()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[23];
  Hasher._combine(_:)(v0[16]);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int sub_1000D6534(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  v8 = v1[22];
  v9 = v1[23];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

void *sub_1000D6614@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result < 0x10uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 16;
  }

  return result;
}

void *sub_1000D662C(void *result)
{
  if (*result < 0x10uLL)
  {
    __break(1u);
  }

  else
  {
    *result -= 16;
  }

  return result;
}

void *sub_1000D66A4@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 >> 60)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__CFADD__(*result, 16 * a2))
  {
    *a3 = *result + 16 * a2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t *sub_1000D66D0@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *a3 - *result;
  if (*a3 < *result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0)
  {
    if (v5 < 0x10)
    {
      if (!a2)
      {
        goto LABEL_9;
      }

LABEL_7:
      v6 = 0;
      v7 = 1;
LABEL_11:
      *a4 = v6;
      *(a4 + 8) = v7;
      return result;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 > v5 >> 4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = __CFADD__(v4, 16 * a2);
  v6 = v4 + 16 * a2;
  if (!v8)
  {
    v7 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1000D6734(void *result, void *a2)
{
  if (*a2 >= *result)
  {
    return ((*a2 - *result) >> 4);
  }

  __break(1u);
  return result;
}

void *sub_1000D6750(void *result, void *a2)
{
  if (*result < *a2 || *result >= a2[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D676C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D6788(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D67A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= 0xFFFFFFFFFFFFFFF0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 16;
  }

  return result;
}

void *sub_1000D67BC(void *result)
{
  if (*result >= 0xFFFFFFFFFFFFFFF0)
  {
    __break(1u);
  }

  else
  {
    *result += 16;
  }

  return result;
}

unint64_t sub_1000D67D4()
{
  v1 = v0[1];
  if (v1 >= *v0)
  {
    return (v1 - *v0) >> 4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D6804(char a1)
{
  v1 = 2 * (a1 & 1);
  if ((a1 & 2) != 0)
  {
    v1 |= 0xCu;
  }

  if ((a1 & 4) != 0)
  {
    v1 |= 0x28u;
  }

  if ((a1 & 8) != 0)
  {
    v1 |= 0x8Cu;
  }

  if ((a1 & 0x10) != 0)
  {
    v1 |= 0x210u;
  }

  if ((a1 & 0x20) != 0)
  {
    v1 |= 0x814u;
  }

  if ((a1 & 0x40) != 0)
  {
    v1 |= 0x2018u;
  }

  if (a1 >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = v1 | 0x801C;
  }

  v4 = v2;
  return sub_10004F3B0(&v4, &v5);
}

unint64_t sub_1000D68D4(char a1)
{
  v1 = 2 * (a1 & 1);
  if ((a1 & 2) != 0)
  {
    v1 |= 0x30u;
  }

  if ((a1 & 4) != 0)
  {
    v1 |= 0x220u;
  }

  if ((a1 & 8) != 0)
  {
    v1 |= 0x2030u;
  }

  if ((a1 & 0x10) != 0)
  {
    v1 |= 0x20040u;
  }

  if ((a1 & 0x20) != 0)
  {
    v1 |= 0x200050u;
  }

  if ((a1 & 0x40) != 0)
  {
    v1 |= 0x2000060u;
  }

  if (a1 >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = v1 | 0x20000070;
  }

  v4 = v2;
  return sub_10004F3B0(&v4, &v5);
}

uint64_t TimeBitmap.nanBitmap.getter(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = a1 >> 7;
  v7 = a1;
  while (a2 != v7)
  {
    v31 = a3;
    if (*(&v31 + v6))
    {
      goto LABEL_8;
    }

    ++v6;
    v8 = __CFADD__(v7, 128);
    v7 += 128;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v7 = a2;
LABEL_8:
  v9 = a2;
  while (a1 != v9)
  {
    v8 = v9 >= 0x80;
    v9 -= 128;
    if (!v8)
    {
      __break(1u);
      goto LABEL_38;
    }

    v31 = a3;
    if (*(&v31 + (v9 >> 7)))
    {
      v10 = v9 + 128;
      goto LABEL_15;
    }
  }

  v10 = a1;
LABEL_15:
  v11 = v7 - a1;
  if (v7 < a1)
  {
    goto LABEL_40;
  }

  if ((v11 & 0xFFFFFFFFFFFFE00FLL) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = sub_100286BB0(0, 0, 3uLL);
  v13 = sub_100286BB0(4u, 3, 3uLL);
  v14 = sub_1002388F4(v11 >> 4, 6, 9uLL);
  v15 = v14;
  v16 = v10 - v7;
  if (v10 > v7)
  {
    if (a2 < a1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v7 < a1)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v10 > a2)
    {
LABEL_44:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v17 = _swiftEmptyArrayStorage;
    if (v16 >= 0x80)
    {
      v27 = v14;
      v28 = v13;
      v29 = v12;
      v18 = v16 >> 7;
      v31 = _swiftEmptyArrayStorage;
      sub_10002D838(0, v16 >> 7, 0);
      v17 = v31;
      v19 = v7 >> 7;
      while (v7 < v10)
      {
        v30[0] = a3;
        v20 = *(v30 + v19);
        v31 = v17;
        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_10002D838((v21 > 1), v22 + 1, 1);
          v17 = v31;
        }

        v17[2] = v22 + 1;
        *(v17 + v22 + 32) = v20;
        if (v7 >= 0xFFFFFFFFFFFFFF80)
        {
          goto LABEL_39;
        }

        ++v19;
        v7 += 128;
        if (!--v18)
        {
          v13 = v28;
          v12 = v29;
          v15 = v27;
          goto LABEL_30;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_30:
    sub_10002D874(v17);
  }

  if ((v13 & ~v12) != 0)
  {
    v23 = v13;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | v12;
  if ((v15 & ~v24) != 0)
  {
    v25 = v15;
  }

  else
  {
    v25 = 0;
  }

  return v25 | v24;
}

uint64_t TimeBitmap.init(period:repeating:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = sub_100286BB0(0, 0, 3uLL);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v6 = v5;
    v7 = sub_100286BB0(v4, 3, 3uLL);
    v8 = sub_1002388F4(0, 6, 9uLL);
    v9 = *(a2 + 16);
    if (v9)
    {
      sub_10002D838(0, v9, 0);
      v10 = _swiftEmptyArrayStorage[2];
      v11 = 32;
      do
      {
        v12 = *(a2 + v11);
        v13 = _swiftEmptyArrayStorage[3];
        if (v10 >= v13 >> 1)
        {
          sub_10002D838((v13 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        *(&_swiftEmptyArrayStorage[4] + v10) = v12;
        ++v11;
        ++v10;
        --v9;
      }

      while (v9);
    }

    if ((v7 & ~v6) != 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | v6;
    if ((v8 & ~v15) != 0)
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | v15;
    v18 = sub_10002D874(_swiftEmptyArrayStorage);
    v20 = v19;

    return sub_10002D9E4(v17, v18, v20);
  }

  return result;
}

uint64_t sub_1000D6E78()
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  v0 = static NANBitmap.Time.Control.perDiscoveryWindow;
  sub_10002D838(0, 4, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10002D838((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 15;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10002D838((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 0;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10002D838((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10002D838((v7 > 1), v2 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 4;
  *(&_swiftEmptyArrayStorage[4] + v6) = 0;
  v8 = sub_10002D874(_swiftEmptyArrayStorage);
  v10 = v9;

  result = sub_10002D9E4(v0, v8, v10);
  static TimeBitmap.primaryDiscoveryWindow = result;
  unk_10059B3A0 = v12;
  LOWORD(qword_10059B3A8) = v13;
  BYTE2(qword_10059B3A8) = v14;
  BYTE3(qword_10059B3A8) = v15;
  BYTE4(qword_10059B3A8) = v16;
  BYTE5(qword_10059B3A8) = v17;
  BYTE6(qword_10059B3A8) = v18;
  HIBYTE(qword_10059B3A8) = v19;
  return result;
}

uint64_t *TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor()
{
  if (qword_10058A7F0 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.primaryDiscoveryWindow;
}

uint64_t static TimeBitmap.primaryDiscoveryWindow.getter()
{
  if (qword_10058A7F0 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.primaryDiscoveryWindow;
}

uint64_t sub_1000D7148()
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  v0 = static NANBitmap.Time.Control.perDiscoveryWindow;
  sub_10002D838(0, 4, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10002D838((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10002D838((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 15;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10002D838((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10002D838((v7 > 1), v2 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 4;
  *(&_swiftEmptyArrayStorage[4] + v6) = 0;
  v8 = sub_10002D874(_swiftEmptyArrayStorage);
  v10 = v9;

  result = sub_10002D9E4(v0, v8, v10);
  static TimeBitmap.secondaryDiscoveryWindow = result;
  *algn_10059B3B8 = v12;
  LOWORD(qword_10059B3C0) = v13;
  BYTE2(qword_10059B3C0) = v14;
  BYTE3(qword_10059B3C0) = v15;
  BYTE4(qword_10059B3C0) = v16;
  BYTE5(qword_10059B3C0) = v17;
  BYTE6(qword_10059B3C0) = v18;
  HIBYTE(qword_10059B3C0) = v19;
  return result;
}

uint64_t *TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor()
{
  if (qword_10058A7F8 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.secondaryDiscoveryWindow;
}

uint64_t static TimeBitmap.secondaryDiscoveryWindow.getter()
{
  if (qword_10058A7F8 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.secondaryDiscoveryWindow;
}

double sub_1000D7418()
{
  static TimeBitmap.twoGHzOutOfBoundFrameBitmap = xmmword_1004841D0;
  *&result = 0xFF000000FFLL;
  qword_10059B3E0 = 0xFF000000FFLL;
  return result;
}

__int128 *TimeBitmap.twoGHzOutOfBoundFrameBitmap.unsafeMutableAddressor()
{
  if (qword_10058A800 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.twoGHzOutOfBoundFrameBitmap;
}

uint64_t static TimeBitmap.twoGHzOutOfBoundFrameBitmap.getter()
{
  if (qword_10058A800 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.twoGHzOutOfBoundFrameBitmap;
}

double sub_1000D74E0()
{
  static TimeBitmap.fiveGHzOutOfBoundFrameBitmap = xmmword_1004841D0;
  *&result = 0xFF000000FF00;
  qword_10059B400 = 0xFF000000FF00;
  return result;
}

__int128 *TimeBitmap.fiveGHzOutOfBoundFrameBitmap.unsafeMutableAddressor()
{
  if (qword_10058A808 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.fiveGHzOutOfBoundFrameBitmap;
}

uint64_t static TimeBitmap.fiveGHzOutOfBoundFrameBitmap.getter()
{
  if (qword_10058A808 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.fiveGHzOutOfBoundFrameBitmap;
}

double sub_1000D75A8()
{
  static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap = xmmword_1004841D0;
  *&result = 0xFFFFFFFFLL;
  qword_10059B420 = 0xFFFFFFFFLL;
  return result;
}

__int128 *TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor()
{
  if (qword_10058A810 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap;
}

uint64_t static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.getter()
{
  if (qword_10058A810 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap;
}

double sub_1000D7670()
{
  result = 0.0;
  static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap = xmmword_1004841D0;
  qword_10059B440 = 0xFFFFFFFF0000;
  return result;
}

__int128 *TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor()
{
  if (qword_10058A818 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap;
}

uint64_t static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap.getter()
{
  if (qword_10058A818 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap;
}

unint64_t sub_1000D7768@<X0>(Swift::Int *a1@<X0>, CoreP2P::NANAvailabilityEntry::UsagePreference_optional *a2@<X8>)
{
  result = _s7CoreP2P20NANAvailabilityEntryV15UsagePreferenceO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t NANAvailabilityEntry.Control.usagePreference.getter@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1000D3F78(3, 2uLL, a1, a2);
  if (result > 3)
  {
    sub_10000B02C();
    swift_allocError();
    *v3 = xmmword_10047CE70;
    *(v3 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

double NANAvailabilityEntry.Control.utilization.getter@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = sub_1000D3F78(5, 2uLL, a1, a2);
  result = 0.0;
  if (v2 <= 4)
  {
    return v2 * 0.2;
  }

  return result;
}

Swift::Int sub_1000D79A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D79F0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000D7A34@<X0>(_WORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E0CB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

CoreP2P::WiFiInterfaceLinkState_optional __swiftcall WiFiInterfaceLinkState.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = CoreP2P_WiFiInterfaceLinkState_linkUp;
  }

  else
  {
    v1.value = CoreP2P_WiFiInterfaceLinkState_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t NANAvailabilityEntry.BandChannelEntries.Control.entriesType.getter(char a1)
{
  v1 = sub_100038D34(0, 1uLL, a1);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  sub_10000B02C();
  swift_allocError();
  *v3 = xmmword_10047CE70;
  *(v3 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.Control.entriesType.setter(char a1)
{
  v3 = *v1;
  result = sub_100038D34(0, 1uLL, *v1);
  if (result == 1)
  {
    if (a1)
    {
      return result;
    }
  }

  else
  {
    if (result)
    {
      sub_10000B02C();
      swift_allocError();
      *v7 = xmmword_10047CE70;
      *(v7 + 16) = 2;
      swift_willThrow();
      goto LABEL_11;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  v5 = sub_1000D40C8(4, 4uLL, v3, result);
  if (v5 > 15)
  {
    __break(1u);

    __break(1u);
LABEL_11:
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = sub_100286B98(a1 & 1, 0, 1uLL);
  result = sub_100286B80(v5, 4, 4uLL);
  *v1 = v6 | v3 & 2 | result;
  return result;
}

CoreP2P::NANAvailabilityEntry::BandChannelEntries::Control_optional __swiftcall NANAvailabilityEntry.BandChannelEntries.Control.init(entriesType:nonContiguousBandwidth:numberOfEntries:)(CoreP2P::NANAvailabilityEntry::BandChannelEntries::Control::EntriesType entriesType, Swift::Bool nonContiguousBandwidth, Swift::Int numberOfEntries)
{
  if (numberOfEntries > 15)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v5 = sub_100286B98(entriesType & 1, 0, 1uLL);
    v6 = sub_100286B80(numberOfEntries, 4, 4uLL);
    v8 = 0;
    if (nonContiguousBandwidth)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v7 = v5 | v10 | v6;
  }

  return (v7 | (v8 << 8));
}

uint64_t (*NANAvailabilityEntry.BandChannelEntries.Control.entriesType.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *v1;
  *(a1 + 17) = *v1;
  v4 = sub_100038D34(0, 1uLL, v3);
  *(a1 + 8) = 0;
  if (v4 > 1u)
  {
    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v4;
    return sub_1000D7EF0;
  }

  return result;
}

uint64_t sub_1000D7EF0(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 16);
  result = sub_100038D34(0, 1uLL, v5);
  if (a2)
  {
    if (!v4)
    {
      if (result == 1)
      {
        if (v6)
        {
          return result;
        }

LABEL_12:
        v8 = sub_1000D40C8(4, 4uLL, v5, result);
        if (v8 <= 15)
        {
          goto LABEL_17;
        }

        __break(1u);
        goto LABEL_20;
      }

      if (!result)
      {
        if ((v6 & 1) == 0)
        {
          return result;
        }

        goto LABEL_12;
      }

LABEL_21:
      sub_10000B02C();
      swift_allocError();
      *v10 = xmmword_10047CE70;
      *(v10 + 16) = 2;
      swift_willThrow();
    }

LABEL_22:
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v4)
  {
    goto LABEL_22;
  }

  if (result == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    if (result)
    {
      goto LABEL_21;
    }

    if (!v6)
    {
      return result;
    }
  }

  v8 = sub_1000D40C8(4, 4uLL, v5, result);
  if (v8 > 15)
  {
LABEL_20:
    __break(1u);

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  v9 = sub_100286B98(v6, 0, 1uLL);
  result = sub_100286B80(v8, 4, 4uLL);
  **a1 = v9 | v5 & 2 | result;
  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.Control.numberOfEntries.setter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = sub_1000D40C8(4, 4uLL, *v2, a2);
  if (result != a1)
  {
    v6 = sub_100038D34(0, 1uLL, v4);
    if (v6 == 1)
    {
      if (a1 <= 15)
      {
        v7 = 1;
LABEL_8:
        v8 = sub_100286B98(v7, 0, 1uLL);
        result = sub_100286B80(a1, 4, 4uLL);
        *v2 = v8 | v4 & 2 | result;
        return result;
      }

      __break(1u);
    }

    else
    {
      if (v6)
      {
        sub_10000B02C();
        swift_allocError();
        *v9 = xmmword_10047CE70;
        *(v9 + 16) = 2;
        swift_willThrow();
        goto LABEL_13;
      }

      if (a1 <= 15)
      {
        v7 = 0;
        goto LABEL_8;
      }
    }

    __break(1u);

    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*NANAvailabilityEntry.BandChannelEntries.Control.numberOfEntries.modify@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 8) = v2;
  v4 = *v2;
  *(a1 + 24) = *v2;
  v5 = sub_1000D40C8(4, 4uLL, v4, a2);
  *(a1 + 16) = 0;
  *a1 = v5;
  return sub_1000D82E4;
}

uint64_t sub_1000D82E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  result = sub_1000D40C8(4, 4uLL, v6, a3);
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if (result == v7)
      {
        return result;
      }

      v11 = sub_100038D34(0, 1uLL, v6);
      if (v11 == 1)
      {
        if (v7 <= 15)
        {
          v10 = 1;
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (!v11)
      {
        if (v7 <= 15)
        {
          v10 = 0;
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10000B02C();
      swift_allocError();
      *v13 = xmmword_10047CE70;
      *(v13 + 16) = 2;
      swift_willThrow();
      goto LABEL_26;
    }

LABEL_24:
    swift_unexpectedError();
    __break(1u);
LABEL_26:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v5)
  {
    goto LABEL_24;
  }

  if (result == v7)
  {
    return result;
  }

  v9 = sub_100038D34(0, 1uLL, v6);
  if (v9 != 1)
  {
    if (!v9)
    {
      if (v7 <= 15)
      {
        v10 = 0;
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v7 > 15)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);

    __break(1u);
    goto LABEL_24;
  }

  v10 = 1;
LABEL_18:
  v12 = sub_100286B98(v10, 0, 1uLL);
  result = sub_100286B80(v7, 4, 4uLL);
  **(a1 + 8) = result | v12 | v6 & 2;
  return result;
}