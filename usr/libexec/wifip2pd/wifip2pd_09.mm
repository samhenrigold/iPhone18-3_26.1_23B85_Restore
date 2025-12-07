uint64_t storeEnumTagSinglePayload for WiFiInterfaceRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B7548()
{
  result = qword_10058CB10;
  if (!qword_10058CB10)
  {
    result = swift_getWitnessTable(byte_10048275C, &type metadata for WiFiAwarePairedDeviceMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB10);
  }

  return result;
}

unint64_t sub_1000B75A0()
{
  result = qword_10058CB18;
  if (!qword_10058CB18)
  {
    result = swift_getWitnessTable(byte_1004826CC, &type metadata for WiFiAwarePairedDeviceMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB18);
  }

  return result;
}

unint64_t sub_1000B75F8()
{
  result = qword_10058CB20;
  if (!qword_10058CB20)
  {
    result = swift_getWitnessTable(aM, &type metadata for WiFiAwarePairedDeviceMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB20);
  }

  return result;
}

uint64_t sub_1000B764C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E676E6972696170 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E726F646E6576 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_1000B7814(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(&qword_10058CA58, &qword_100482540);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B78BC@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::NANReasonCode_optional *a2@<X8>)
{
  result = _s7CoreP2P13NANReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Swift::Int sub_1000B78E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B7930(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t NANReasonCode.description.getter(char a1)
{
  result = 0x6465767265736572;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E75;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000002CLL;
      break;
    case 5:
      result = 0x6D65766F6D206F6ELL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x7974697275636573;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s7CoreP2P13NANReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 0xEu)
  {
    return 14;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1000B7C24()
{
  result = qword_10058CB38;
  if (!qword_10058CB38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANReasonCode, &type metadata for NANReasonCode, v0, v1);
    atomic_store(result, &qword_10058CB38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANReasonCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NANReasonCode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B7DC8()
{
  result = qword_10058CB40;
  if (!qword_10058CB40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANReasonCode, &type metadata for NANReasonCode, v0, v1);
    atomic_store(result, &qword_10058CB40);
  }

  return result;
}

uint64_t NANPMK.init(pmk:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_12:
    if (v3 == 32)
    {
      return result;
    }
  }

  sub_100017554(result, a2);
  return 0;
}

void *NANPMK.init(from:)(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v4 = v8;
    v5 = v9;
    sub_100031694(v7, v8);
    v3 = UnkeyedDecodingContainer.decodeData(with:)(32, v4, v5);
    sub_100002A00(v7);
    sub_100002A00(a1);
  }

  return v3;
}

uint64_t static NANPMK.zero.getter()
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(length:)();
  return 0x2000000000;
}

uint64_t NANPMK.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v6, v6[3]);
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(a2, a3);
  return sub_100002A00(v6);
}

unint64_t sub_1000B8088()
{
  result = qword_10058CB58;
  if (!qword_10058CB58)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_10058CB58);
  }

  return result;
}

uint64_t sub_1000B80E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v5 = v12;
  v6 = v13;
  sub_100031694(v11, v12);
  v7 = UnkeyedDecodingContainer.decodeData(with:)(32, v5, v6);
  v9 = v8;
  sub_100002A00(v11);
  result = sub_100002A00(a1);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

uint64_t sub_1000B81D0()
{
  result = sub_10016FD40(0x204B4D50204E414ELL, 0xEC000000656D614ELL);
  qword_10058CB48 = result;
  unk_10058CB50 = v1;
  return result;
}

uint64_t NANPMK.pmkid(for:initiatorAddress:responderAddress:serviceName:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1 << a1;
  v8 = a2 & 0xFFFFFFFFFFFFLL;
  v9 = a3 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x55) != 0)
  {
    return sub_1000B8248(v8, v9, a4, a5, a6, a7);
  }

  else
  {
    return sub_1000B8944(v8, v9, a4, a5, a6, a7);
  }
}

uint64_t sub_1000B8248(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v63 = a5;
  *(&v63 + 1) = a6;
  v56 = a4;
  v55 = a3;
  v8 = type metadata accessor for SymmetricKey();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin();
  v64 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SHA256Digest();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SHA256();
  v53 = *(v60 - 8);
  __chkstk_darwin();
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin();
  v59 = &v45 - v13;
  if (qword_10058A760 != -1)
  {
    swift_once();
  }

  v51 = a2 >> 40;
  v50 = HIDWORD(a2);
  v49 = a2 >> 24;
  v48 = a2 >> 16;
  v47 = a2 >> 8;
  v46 = a2;
  v14 = qword_10058CB48;
  v15 = unk_10058CB50;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v16 = swift_allocObject();
  v45 = xmmword_1004817D0;
  *(v16 + 16) = xmmword_1004817D0;
  *(v16 + 32) = a1;
  *(v16 + 34) = BYTE2(a1);
  *(v16 + 35) = BYTE3(a1);
  *(v16 + 36) = BYTE4(a1);
  *(v16 + 37) = BYTE5(a1);
  v17 = sub_10002D874(v16);
  v19 = v18;

  *&v71 = v14;
  *(&v71 + 1) = v15;
  v68 = &type metadata for Data;
  v69 = &protocol witness table for Data;
  *&v67 = v17;
  *(&v67 + 1) = v19;
  v20 = sub_100029B34(&v67, &type metadata for Data);
  v22 = *v20;
  v21 = v20[1];
  sub_10000AB0C(v14, v15);
  sub_10000AB0C(v17, v19);
  sub_100178A18(v22, v21, &v71);
  sub_1000124C8(v17, v19);
  sub_100002A00(&v67);
  v23 = v71;
  v24 = swift_allocObject();
  *(v24 + 16) = v45;
  *(v24 + 32) = v46;
  *(v24 + 33) = v47;
  *(v24 + 34) = v48;
  *(v24 + 35) = v49;
  *(v24 + 36) = v50;
  *(v24 + 37) = v51;
  v25 = sub_10002D874(v24);
  v27 = v26;

  v70 = v23;
  v68 = &type metadata for Data;
  v69 = &protocol witness table for Data;
  *&v67 = v25;
  *(&v67 + 1) = v27;
  v28 = sub_100029B34(&v67, &type metadata for Data);
  v29 = *v28;
  v30 = v28[1];
  sub_10000AB0C(v23, *(&v23 + 1));
  sub_10000AB0C(v25, v27);
  sub_100178A18(v29, v30, &v70);
  sub_1000124C8(v25, v27);
  sub_1000124C8(v23, *(&v23 + 1));
  sub_100002A00(&v67);
  v33 = v70;
  v31 = v33 >> 64;
  v32 = v33;
  v34 = v52;
  SHA256.init()();
  v35 = String.lowercased()();

  sub_1001F93A4(v35._countAndFlagsBits, v35._object, v34);

  v36 = v54;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v57 + 8))(v36, v58);
  v37 = v67;
  (*(v53 + 8))(v34, v60);
  v71 = __PAIR128__(v31, v32);
  v68 = &type metadata for Data;
  v69 = &protocol witness table for Data;
  v67 = v37;
  v38 = sub_100029B34(&v67, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_10000AB0C(v32, v31);
  sub_10000AB0C(v37, *(&v37 + 1));
  sub_100178A18(v39, v40, &v71);
  sub_1000124C8(v37, *(&v37 + 1));
  sub_1000124C8(v32, v31);
  sub_100002A00(&v67);
  v67 = v71;
  v70 = v63;
  sub_10000AB0C(v63, *(&v63 + 1));
  v41 = v64;
  SymmetricKey.init<A>(data:)();
  sub_1000BA0F8(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000BA0A4();
  v42 = v59;
  static HMAC.authenticationCode<A>(for:using:)();
  (*(v65 + 8))(v41, v66);
  sub_1000124C8(v67, *(&v67 + 1));
  v43 = v62;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v61 + 8))(v42, v43);
  return v67;
}

uint64_t sub_1000B8944(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v63 = a5;
  *(&v63 + 1) = a6;
  v57 = a4;
  v56 = a3;
  v8 = type metadata accessor for SymmetricKey();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin();
  v64 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SHA256Digest();
  v58 = *(v59 - 8);
  __chkstk_darwin();
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SHA256();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10005DC58(&qword_10058CBA8, &unk_100482C98);
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin();
  v60 = &v45 - v13;
  if (qword_10058A760 != -1)
  {
    swift_once();
  }

  v51 = a2 >> 40;
  v50 = HIDWORD(a2);
  v49 = a2 >> 24;
  v48 = a2 >> 16;
  v47 = a2 >> 8;
  v46 = a2;
  v14 = qword_10058CB48;
  v15 = unk_10058CB50;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v16 = swift_allocObject();
  v45 = xmmword_1004817D0;
  *(v16 + 16) = xmmword_1004817D0;
  *(v16 + 32) = a1;
  *(v16 + 34) = BYTE2(a1);
  *(v16 + 35) = BYTE3(a1);
  *(v16 + 36) = BYTE4(a1);
  *(v16 + 37) = BYTE5(a1);
  v17 = sub_10002D874(v16);
  v19 = v18;

  *&v71 = v14;
  *(&v71 + 1) = v15;
  v68 = &type metadata for Data;
  v69 = &protocol witness table for Data;
  *&v67 = v17;
  *(&v67 + 1) = v19;
  v20 = sub_100029B34(&v67, &type metadata for Data);
  v22 = *v20;
  v21 = v20[1];
  sub_10000AB0C(v14, v15);
  sub_10000AB0C(v17, v19);
  sub_100178A18(v22, v21, &v71);
  sub_1000124C8(v17, v19);
  sub_100002A00(&v67);
  v23 = v71;
  v24 = swift_allocObject();
  *(v24 + 16) = v45;
  *(v24 + 32) = v46;
  *(v24 + 33) = v47;
  *(v24 + 34) = v48;
  *(v24 + 35) = v49;
  *(v24 + 36) = v50;
  *(v24 + 37) = v51;
  v25 = sub_10002D874(v24);
  v27 = v26;

  v70 = v23;
  v68 = &type metadata for Data;
  v69 = &protocol witness table for Data;
  *&v67 = v25;
  *(&v67 + 1) = v27;
  v28 = sub_100029B34(&v67, &type metadata for Data);
  v29 = *v28;
  v30 = v28[1];
  sub_10000AB0C(v23, *(&v23 + 1));
  sub_10000AB0C(v25, v27);
  sub_100178A18(v29, v30, &v70);
  sub_1000124C8(v25, v27);
  sub_1000124C8(v23, *(&v23 + 1));
  sub_100002A00(&v67);
  v33 = v70;
  v31 = v33 >> 64;
  v32 = v33;
  v34 = v52;
  SHA256.init()();
  v35 = String.lowercased()();

  sub_1001F93A4(v35._countAndFlagsBits, v35._object, v34);

  v36 = v54;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v58 + 8))(v36, v59);
  v37 = v67;
  (*(v53 + 8))(v34, v55);
  v71 = __PAIR128__(v31, v32);
  v68 = &type metadata for Data;
  v69 = &protocol witness table for Data;
  v67 = v37;
  v38 = sub_100029B34(&v67, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_10000AB0C(v32, v31);
  sub_10000AB0C(v37, *(&v37 + 1));
  sub_100178A18(v39, v40, &v71);
  sub_1000124C8(v37, *(&v37 + 1));
  sub_1000124C8(v32, v31);
  sub_100002A00(&v67);
  v67 = v71;
  v70 = v63;
  sub_10000AB0C(v63, *(&v63 + 1));
  v41 = v64;
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA384();
  sub_1000BA0F8(&qword_10058CBB0, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  sub_1000BA0A4();
  v42 = v60;
  static HMAC.authenticationCode<A>(for:using:)();
  (*(v65 + 8))(v41, v66);
  sub_1000124C8(v67, *(&v67 + 1));
  v43 = v62;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v61 + 8))(v42, v43);
  return v67;
}

_BYTE *sub_1000B9048@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v3 = sub_1002AAFAC(result, 0x10uLL);
    result = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v3, v4);
    if (v5 >> 60 != 15)
    {
      *a2 = result;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NANPMK.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v19 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x22203A4B4D50;
  v26 = 0xE600000000000000;
  sub_10000AB0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1000BA0F8(&qword_10058C7C0, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v24)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v20 = xmmword_100480F40;
    do
    {
      v9 = v23;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v10 = swift_allocObject();
      *(v10 + 16) = v20;
      *(v10 + 56) = &type metadata for UInt8;
      *(v10 + 64) = &protocol witness table for UInt8;
      *(v10 + 32) = v9;
      v11 = String.init(format:_:)();
      v13 = v12;
      v21 = v7;
      v22 = v8;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v7 = v21;
      v8 = v22;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v24 != 1);
  }

  (*(v19 + 8))(v6, v4);
  v15._countAndFlagsBits = v7;
  v15._object = v8;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 34;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v25;
}

uint64_t NANPMK.customMirror.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v9 = v12 - v8;
  v12[2] = a1;
  v12[3] = a2;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  sub_10000AB0C(a1, a2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1000B9510(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v12[2] = v9;
  v12[3] = v8;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10000AB0C(v9, v8);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

Swift::Int PairedDevicesStoreEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000B976C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000B97BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1000B9844(uint64_t a1)
{
  v2 = sub_1000B9DC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9880(uint64_t a1)
{
  v2 = sub_1000B9DC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANPMK.ID.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10005DC58(&qword_10058CB60, &qword_100482920);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v11 - v8;
  sub_100029B34(a1, a1[3]);
  sub_1000B9DC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

Swift::Int InterfaceIdentifier.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B9A7C()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B9AC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1000B9B10@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000B9B58(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_1000B9B58(void *a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v7[0] = 0x1000000000;
  v7[1] = __DataStorage.init(length:)();
  sub_100061640(v7, 0);
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
  }

  else
  {
    v4 = v8;
    v5 = v9;
    sub_100031694(v7, v8);
    v3 = UnkeyedDecodingContainer.decodeData(with:)(16, v4, v5);

    sub_100002A00(v7);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(uint64_t a1, unint64_t a2)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v10[0] = 0x1000000000;
  v10[1] = __DataStorage.init(length:)();
  sub_100061640(v10, 0);

  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
LABEL_10:
      if (v6 == 16)
      {
        return a1;
      }

LABEL_11:
      sub_1000124C8(a1, a2);
      return 0;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v6) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v6 = v6;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000B9D64()
{
  result = qword_10058C7A8;
  if (!qword_10058C7A8)
  {
    v3 = sub_10005DD04(&qword_10058C7A0, &qword_100481FD0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_10058C7A8);
  }

  return result;
}

unint64_t sub_1000B9DC8()
{
  result = qword_10058CB68;
  if (!qword_10058CB68)
  {
    result = swift_getWitnessTable(aQ_1, &type metadata for NANPMK.ID.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB68);
  }

  return result;
}

unint64_t sub_1000B9E20()
{
  result = qword_10058CB70;
  if (!qword_10058CB70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPMK, &type metadata for NANPMK, v0, v1);
    atomic_store(result, &qword_10058CB70);
  }

  return result;
}

unint64_t sub_1000B9E78()
{
  result = qword_10058CB78;
  if (!qword_10058CB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPMK.ID, &type metadata for NANPMK.ID, v0, v1);
    atomic_store(result, &qword_10058CB78);
  }

  return result;
}

uint64_t sub_1000B9EDC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000B9F30(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B9FA0()
{
  result = qword_10058CB80;
  if (!qword_10058CB80)
  {
    result = swift_getWitnessTable(byte_100482C20, &type metadata for NANPMK.ID.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB80);
  }

  return result;
}

unint64_t sub_1000B9FF8()
{
  result = qword_10058CB88;
  if (!qword_10058CB88)
  {
    result = swift_getWitnessTable(byte_100482B90, &type metadata for NANPMK.ID.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB88);
  }

  return result;
}

unint64_t sub_1000BA050()
{
  result = qword_10058CB90;
  if (!qword_10058CB90)
  {
    result = swift_getWitnessTable(byte_100482BB8, &type metadata for NANPMK.ID.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CB90);
  }

  return result;
}

unint64_t sub_1000BA0A4()
{
  result = qword_10058CBA0;
  if (!qword_10058CBA0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_10058CBA0);
  }

  return result;
}

uint64_t sub_1000BA0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id sub_1000BA168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1000BA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BA794(a1);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << v9[32];
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 8);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
LABEL_10:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v11 << 6);
      v20 = (*(v10 + 6) + 16 * v19);
      v21 = *(*(v10 + 7) + 8 * v19);
      v22 = *v20 == a2 && v20[1] == a3;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v21 + 16))
      {

        v23 = sub_1000102E8(a4, a5);
        if (v24)
        {
          sub_100002B30(*(v21 + 56) + 32 * v23, v31);

          sub_100018AB4(0, &qword_10058CBB8, NSDictionary_ptr);
          if (swift_dynamicCast())
          {

            return 1;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        return 0;
      }

      v15 = *&v12[8 * v17];
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else if (qword_10058AA08 == -1)
  {
    goto LABEL_22;
  }

  swift_once();
LABEL_22:
  v25 = type metadata accessor for Logger();
  sub_100037644(v25, qword_10059B5B8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error while getting bundle info for client", v28, 2u);
  }

  return 0;
}

uint64_t static LaunchServiceRecord.isExternalApi(for:)(uint64_t a1, uint64_t a2)
{
  sub_100018AB4(0, &qword_10058CBC0, LSBundleRecord_ptr);

  result = sub_1000BA6AC(a1, a2, 1);
  if (result)
  {
    v5 = result;
    v6 = [result entitlements];
    v7 = String._bridgeToObjectiveC()();
    sub_100018AB4(0, &qword_10058CBC8, NSArray_ptr);
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v9 = 0u;
      v10 = 0u;
    }

    v11[0] = v9;
    v11[1] = v10;
    if (*(&v10 + 1))
    {
      sub_10005DC58(&qword_10058CBD0, &qword_100482CA8);
      if (swift_dynamicCast())
      {

        return 1;
      }
    }

    else
    {
      sub_1000BA934(v11);
    }

    return 0;
  }

  return result;
}

id sub_1000BA6AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_1000BA794(int a1)
{
  sub_1001F8828(a1, v14);
  if (v15)
  {
    return 0;
  }

  v2 = v14[2];
  v1 = v14[3];
  v4 = v14[0];
  v3 = v14[1];
  sub_100018AB4(0, &qword_10058CBC0, LSBundleRecord_ptr);
  result = sub_1000BA168(v4, v3, v2, v1);
  if (result)
  {
    v6 = result;
    v7 = [result infoDictionary];
    v8 = String._bridgeToObjectiveC()();
    sub_100018AB4(0, &qword_10058CBB8, NSDictionary_ptr);
    v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_10005DC58(&qword_10058CBD8, &qword_100482CC8);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
      sub_1000BA934(v13);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000BA934(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BA9C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  sub_1000BAD00(v4);

  *a2 = v6;
  return result;
}

uint64_t sub_1000BAA40@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v8 = *v3;

  a2(v6);

  result = swift_bridgeObjectRelease_n();
  *a3 = v8;
  return result;
}

uint64_t sub_1000BAAC4(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_100237EE0(a1, *a2);

  return v2 & 1;
}

uint64_t sub_1000BAAFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BAB28(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BAB28(uint64_t a1)
{
  v3 = *v1;
  v10 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(a1 + 16);
  if (v4 <= v5)
  {
    swift_bridgeObjectRetain_n();
    v6 = v3;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100235DAC((v4 - v5));
    v6 = v10;
    v4 = *(v10 + 16);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  while (v5 != v7)
  {
    v8 = *(a1 + 32 + v7);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C28C4(v6);
      v6 = result;
    }

    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    *(v6 + v7++ + 32) &= v8;
    if (v4 == v7)
    {
      break;
    }
  }

LABEL_11:

  if (sub_1000BEAF0(v6, _swiftEmptyArrayStorage))
  {

    return 0;
  }

  else
  {
    sub_100238570(a1);
  }

  return v6;
}

uint64_t sub_1000BAC64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100238020(*a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000BACA8(uint64_t *a1)
{
  sub_10029F424();
}

unint64_t sub_1000BAD00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(a1 + 16);
  result = v4 - v5;
  if (v4 > v5)
  {
    result = sub_100235DAC(result);
    v3 = *v1;
    v4 = *(*v1 + 16);
  }

  if (v4)
  {
    v7 = 0;
    v8 = a1 + 32;
    while (v5 != v7)
    {
      v9 = *(v8 + v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000C28C4(v3);
        v3 = result;
      }

      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      *(v3 + v7 + 32) &= v9;
      *v1 = v3;
      if (v4 == ++v7)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000BADC4(uint64_t *a1)
{
  sub_100286C34();
}

uint64_t sub_1000BAE00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100286C38();

  *a1 = v2;
  return result;
}

uint64_t sub_1000BAE48(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v6 = *v1;

  sub_1000BAD00(v2);
  v4 = sub_1000BEAF0(v6, v3);

  return v4 & 1;
}

uint64_t sub_1000BAEC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = *a1;

  sub_1000BAD00(v3);
  LOBYTE(v2) = sub_1000BEAF0(v5, v2);

  return v2 & 1;
}

uint64_t sub_1000BAF8C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100286BE0();

  *a2 = v3;
  return result;
}

uint64_t sub_1000BAFCC()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsNAN = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsNAN.unsafeMutableAddressor()
{
  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsNAN;
}

uint64_t sub_1000BB064()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsAWDL = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsAWDL.unsafeMutableAddressor()
{
  if (qword_10058A770 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsAWDL;
}

uint64_t sub_1000BB0FC()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsDualBand = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor()
{
  if (qword_10058A778 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDualBand;
}

uint64_t sub_1000BB194()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsSimultaneousDualBand = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor()
{
  if (qword_10058A780 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsSimultaneousDualBand;
}

uint64_t sub_1000BB22C()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsAWDLSoloMode = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsAWDLSoloMode.unsafeMutableAddressor()
{
  if (qword_10058A788 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsAWDLSoloMode;
}

uint64_t sub_1000BB2C4()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.isClmRestricted = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.isClmRestricted.unsafeMutableAddressor()
{
  if (qword_10058A790 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.isClmRestricted;
}

uint64_t sub_1000BB35C()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.peerCountryCodeLearningCapable = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.peerCountryCodeLearningCapable.unsafeMutableAddressor()
{
  if (qword_10058A798 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.peerCountryCodeLearningCapable;
}

uint64_t sub_1000BB3F4()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsDFSProxy = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDFSProxy.unsafeMutableAddressor()
{
  if (qword_10058A7A0 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDFSProxy;
}

uint64_t sub_1000BB48C()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDisableAWDLOnInactivity.unsafeMutableAddressor()
{
  if (qword_10058A7A8 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity;
}

uint64_t sub_1000BB524()
{
  result = sub_100286BD4();
  static WiFiDriverCapabilities.supportsDynamicSDB = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDynamicSDB.unsafeMutableAddressor()
{
  if (qword_10058A7B0 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDynamicSDB;
}

uint64_t sub_1000BB5BC()
{
  if (qword_10058A768 != -1)
  {
LABEL_48:
    swift_once();
  }

  v27[0] = static WiFiDriverCapabilities.supportsNAN;
  v0 = qword_10058A770;

  if (v0 != -1)
  {
    swift_once();
  }

  v27[1] = static WiFiDriverCapabilities.supportsAWDL;
  v1 = qword_10058A778;

  if (v1 != -1)
  {
    swift_once();
  }

  v27[2] = static WiFiDriverCapabilities.supportsDualBand;
  v2 = qword_10058A780;

  if (v2 != -1)
  {
    swift_once();
  }

  v27[3] = static WiFiDriverCapabilities.supportsSimultaneousDualBand;
  v3 = qword_10058A788;

  if (v3 != -1)
  {
    swift_once();
  }

  v27[4] = static WiFiDriverCapabilities.supportsAWDLSoloMode;
  v4 = qword_10058A790;

  if (v4 != -1)
  {
    swift_once();
  }

  v27[5] = static WiFiDriverCapabilities.isClmRestricted;
  v5 = qword_10058A798;

  if (v5 != -1)
  {
    swift_once();
  }

  v27[6] = static WiFiDriverCapabilities.peerCountryCodeLearningCapable;
  v6 = qword_10058A7A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v27[7] = static WiFiDriverCapabilities.supportsDFSProxy;
  v7 = qword_10058A7A8;

  if (v7 != -1)
  {
    swift_once();
  }

  v27[8] = static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity;
  v8 = qword_10058A7B0;

  if (v8 != -1)
  {
    swift_once();
  }

  v27[9] = static WiFiDriverCapabilities.supportsDynamicSDB;
  v26 = _swiftEmptyArrayStorage;

  for (i = 0; i != 10; ++i)
  {
    v10 = v27[i];
    v11 = v26;
    v12 = *(v26 + 2);
    v13 = *(v10 + 16);
    if (v12 <= v13)
    {

      v14 = v26;
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    else
    {

      sub_100235DAC((v12 - v13));
      v14 = v26;
      v12 = *(v26 + 2);
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    v15 = 0;
    while (v13 != v15)
    {
      v16 = *(v10 + 32 + v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000C28C4(v14);
      }

      if (v15 >= *(v14 + 2))
      {
        __break(1u);
        goto LABEL_47;
      }

      v14[v15 + 32] &= v16;
      if (v12 == ++v15)
      {
        break;
      }
    }

LABEL_33:
    v17 = sub_1000BEAF0(v14, v10);

    if ((v17 & 1) == 0)
    {
      v18 = *(v26 + 2);
      v19 = *(v10 + 16);

      if (v18 && v19)
      {
        v20 = 0;
        v21 = v18 - 1;
        while (1)
        {
          v22 = *(v10 + 32 + v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1000C28C4(v11);
          }

          v18 = *(v11 + 2);
          if (v20 >= v18)
          {
            break;
          }

          v11[v20 + 32] |= v22;
          v26 = v11;
          if (v21 != v20 && v19 - 1 != v20++)
          {
            continue;
          }

          goto LABEL_43;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_43:
      if (v18 < v19)
      {

        sub_100234FC0(v24, v10 + 32, v18, (2 * v19) | 1);
      }
    }
  }

  result = swift_arrayDestroy();
  static WiFiDriverCapabilities.all = v26;
  return result;
}

uint64_t *WiFiDriverCapabilities.all.unsafeMutableAddressor()
{
  if (qword_10058A7B8 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.all;
}

uint64_t *WiFiDriverCapabilities.none.unsafeMutableAddressor()
{
  if (qword_10058A7C0 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.none;
}

uint64_t sub_1000BBB74(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1000BBBD4()
{
  sub_10005DC58(&qword_10058CD28, &qword_100483050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100482CD0;
  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = static WiFiDriverCapabilities.supportsNAN;
  *(v0 + 40) = 0x7374726F70707573;
  *(v0 + 48) = 0xEB000000004E414ELL;
  v1 = qword_10058A770;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = static WiFiDriverCapabilities.supportsAWDL;
  strcpy((v0 + 64), "supportsAWDL");
  *(v0 + 77) = 0;
  *(v0 + 78) = -5120;
  v2 = qword_10058A778;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = static WiFiDriverCapabilities.supportsDualBand;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000001004B8690;
  v3 = qword_10058A780;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = static WiFiDriverCapabilities.supportsSimultaneousDualBand;
  *(v0 + 112) = 0xD00000000000001CLL;
  *(v0 + 120) = 0x80000001004B86B0;
  v4 = qword_10058A788;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 128) = static WiFiDriverCapabilities.supportsAWDLSoloMode;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001004B86D0;
  v5 = qword_10058A790;

  if (v5 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = static WiFiDriverCapabilities.isClmRestricted;
  *(v0 + 160) = 0x7365526D6C437369;
  *(v0 + 168) = 0xEF64657463697274;
  v6 = qword_10058A798;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 176) = static WiFiDriverCapabilities.peerCountryCodeLearningCapable;
  *(v0 + 184) = 0xD00000000000001ELL;
  *(v0 + 192) = 0x80000001004B86F0;
  v7 = qword_10058A7A0;

  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + 200) = static WiFiDriverCapabilities.supportsDFSProxy;
  *(v0 + 208) = 0xD000000000000010;
  *(v0 + 216) = 0x80000001004B8710;
  v8 = qword_10058A7A8;

  if (v8 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity;
  *(v0 + 232) = 0xD00000000000001FLL;
  *(v0 + 240) = 0x80000001004B8730;
  v9 = qword_10058A7B0;

  if (v9 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = static WiFiDriverCapabilities.supportsDynamicSDB;
  *(v0 + 256) = 0xD000000000000012;
  *(v0 + 264) = 0x80000001004B8750;
  static WiFiDriverCapabilities.debugDescriptions = v0;
}

uint64_t *WiFiDriverCapabilities.debugDescriptions.unsafeMutableAddressor()
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.debugDescriptions;
}

uint64_t static WiFiDriverCapabilities.debugDescriptions.getter()
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static WiFiDriverCapabilities.debugDescriptions.setter(uint64_t a1)
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static WiFiDriverCapabilities.debugDescriptions = a1;
}

uint64_t (*static WiFiDriverCapabilities.debugDescriptions.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t WiFiDriverCapabilities.description.getter(uint64_t a1)
{
  if (qword_10058A7C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  swift_beginAccess();
  v1 = static WiFiDriverCapabilities.debugDescriptions;
  v2 = *(static WiFiDriverCapabilities.debugDescriptions + 16);

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    do
    {
      v27 = v3;
      while (1)
      {
        if (v4 >= *(v1 + 16))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v5 = (v1 + 32 + 24 * v4);
        v6 = *v5;
        v28 = v5[1];
        v7 = v5[2];
        v30 = *v5;
        v8 = *(*v5 + 16);
        v9 = *(a1 + 16);
        if (v8 <= v9)
        {
          swift_bridgeObjectRetain_n();

          v10 = v6;
          if (!v8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();

          sub_100235DAC((v8 - v9));
          v10 = v30;
          v8 = *(v30 + 16);
          if (!v8)
          {
            goto LABEL_16;
          }
        }

        v11 = 0;
        while (v9 != v11)
        {
          v12 = *(a1 + 32 + v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000C28C4(v10);
          }

          if (v11 >= *(v10 + 2))
          {
            __break(1u);
            goto LABEL_31;
          }

          v10[v11 + 32] &= v12;
          if (v8 == ++v11)
          {
            break;
          }
        }

LABEL_16:
        ++v4;
        v13 = sub_1000BEAF0(v10, v6);

        if (v13)
        {
          break;
        }

        if (v4 == v2)
        {
          v3 = v27;
          goto LABEL_24;
        }
      }

      v14 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C0484(0, v27[2] + 1, 1);
        v14 = v27;
      }

      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000C0484((v15 > 1), v16 + 1, 1);
        v14 = v27;
      }

      v14[2] = v16 + 1;
      v17 = &v14[3 * v16];
      v17[4] = v6;
      v17[5] = v28;
      v17[6] = v7;
      v3 = v14;
    }

    while (v4 != v2);
  }

LABEL_24:

  v18 = v3[2];
  if (v18)
  {
    sub_1000C0464(0, v18, 0);
    v19 = v3 + 6;
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];

      if (v23 >= v22 >> 1)
      {
        sub_1000C0464((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      v19 += 3;
      --v18;
    }

    while (v18);
  }

  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_1000C28D8();
  v25 = BidirectionalCollection<>.joined(separator:)();

  return v25;
}

uint64_t sub_1000BC518(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      if (*(v4 - 24) != *(i - 24) || *(v4 - 8) != *(i - 8))
      {
        return 0;
      }

      v8 = *(v4 - 1);
      v7 = *v4;
      v10 = *(i - 1);
      v9 = *i;
      v11 = *v4 >> 62;
      v12 = *i >> 62;
      if (v11 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v8 + 16);
          v18 = *(v8 + 24);
          v16 = __OFSUB__(v18, v19);
          v13 = v18 - v19;
          if (v16)
          {
            goto LABEL_61;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_62;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_29:
          if (v12)
          {
            LODWORD(v17) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_60;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v9);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v7);
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

LABEL_33:
      if (v13 != v17)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v30 = v3;
          v20 = *(v8 + 16);
          v29 = *(v8 + 24);
          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v21 = __DataStorage._bytes.getter();
          if (v21)
          {
            v22 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v22))
            {
              goto LABEL_65;
            }

            v21 += v20 - v22;
          }

          if (__OFSUB__(v29, v20))
          {
            goto LABEL_64;
          }

          __DataStorage._length.getter();
          v23 = v21;
          v24 = v10;
          v25 = v9;
          v3 = v30;
          goto LABEL_54;
        }

        memset(v32, 0, 14);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      else
      {
        if (v11)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_63;
          }

          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v27))
            {
              goto LABEL_66;
            }

            v26 += v8 - v27;
          }

          __DataStorage._length.getter();
          v23 = v26;
          v24 = v10;
          v25 = v9;
LABEL_54:
          sub_100031E04(v23, v24, v25, v32);
          sub_1000124C8(v10, v9);
          sub_1000124C8(v8, v7);
          if ((v32[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v32[0] = *(v4 - 1);
        LOWORD(v32[1]) = v7;
        BYTE2(v32[1]) = BYTE2(v7);
        BYTE3(v32[1]) = BYTE3(v7);
        BYTE4(v32[1]) = BYTE4(v7);
        BYTE5(v32[1]) = BYTE5(v7);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      sub_100031E04(v32, v10, v9, &v31);
      sub_1000124C8(v10, v9);
      sub_1000124C8(v8, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_6:
      v4 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v8 && v7 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v13 = 0;
      if (!v10 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_28:
    if (v12 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1000BC9A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    LODWORD(v5) = byte_100483072[v5];
    v8 = byte_100483072[v7];
    result = v5 == v8;
    if (v5 != v8 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BCA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 10)
    {
      v5 = a1 + i;
      v6 = a2 + i;
      v7 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 34) == *(a2 + i + 34);
      if (!v7 || *(a1 + i + 36) != *(a2 + i + 36))
      {
        break;
      }

      if (*(v5 + 40))
      {
        if (!*(v6 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v5 + 38) == *(v6 + 38))
        {
          v4 = *(v6 + 40);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000BCAE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 38);
    v4 = (a2 + 38);
    do
    {
      if (*(v3 - 6) != *(v4 - 6) || (0x801004u >> (8 * *(v3 - 2))) != (0x801004u >> (8 * *(v4 - 2))))
      {
        return 0;
      }

      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          result = 0;
          if (v6 != 2)
          {
            return result;
          }
        }

        else
        {
          if (v5 != 3)
          {
LABEL_23:
            if ((v6 - 2) < 5)
            {
              return 0;
            }

            result = 0;
            if ((v6 ^ v5))
            {
              return result;
            }

            goto LABEL_25;
          }

          result = 0;
          if (v6 != 3)
          {
            return result;
          }
        }
      }

      else
      {
        switch(v5)
        {
          case 4u:
            result = 0;
            if (v6 != 4)
            {
              return result;
            }

            break;
          case 5u:
            result = 0;
            if (v6 != 5)
            {
              return result;
            }

            break;
          case 6u:
            result = 0;
            if (v6 != 6)
            {
              return result;
            }

            break;
          default:
            goto LABEL_23;
        }
      }

LABEL_25:
      if (*v3 != *v4)
      {
        return result;
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL _s7CoreP2P15AWDLActionFrameV12SyncTreePathV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
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

  v3 = a1 + 37;
  v4 = a2 + 37;
  do
  {
    if (!v2)
    {
      __break(1u);
    }

    v5 = *(v3 - 5) ^ *(v4 - 5) | *(v3 - 1) ^ *(v4 - 1);
    result = v5 == 0;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 == 1;
    }

    --v2;
    v3 += 6;
    v4 += 6;
  }

  while (!v7);
  return result;
}

uint64_t sub_1000BCCE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_10000AB0C(v7, v6);
          sub_10000AB0C(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_10000AB0C(v7, v6);
        sub_10000AB0C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_10000AB0C(v7, v6);
          sub_10000AB0C(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_100031E04(v24, v25, v26, v33);
          sub_1000124C8(v9, v8);
          sub_1000124C8(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_10000AB0C(v7, v6);
        sub_10000AB0C(v9, v8);
      }

      sub_100031E04(v33, v9, v8, &v32);
      sub_1000124C8(v9, v8);
      sub_1000124C8(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1000BD0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4, v8);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v7, v14, v4);
    sub_1000C2CA8();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v7, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BD2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    for (i = (a2 + 32); ; i += 24)
    {
      if (*v4 != *i || v4[1] != i[1] || v4[2] != i[2])
      {
        return 0;
      }

      v9 = *(v4 + 1);
      v8 = *(v4 + 2);
      v11 = *(i + 1);
      v10 = *(i + 2);
      v12 = v8 >> 62;
      v13 = v10 >> 62;
      if (v8 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v20 = *(v9 + 16);
          v19 = *(v9 + 24);
          v17 = __OFSUB__(v19, v20);
          v14 = v19 - v20;
          if (v17)
          {
            goto LABEL_64;
          }

          goto LABEL_31;
        }

        v14 = 0;
        if (v13 <= 1)
        {
          goto LABEL_32;
        }
      }

      else if (v12)
      {
        LODWORD(v14) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_65;
        }

        v14 = v14;
        if (v13 <= 1)
        {
LABEL_32:
          if (v13)
          {
            LODWORD(v18) = HIDWORD(v11) - v11;
            if (__OFSUB__(HIDWORD(v11), v11))
            {
              goto LABEL_63;
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v10);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v14 = BYTE6(v8);
        if (v13 <= 1)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      if (v13 != 2)
      {
        if (v14)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_36:
      if (v14 != v18)
      {
        return 0;
      }

      if (v14 < 1)
      {
        goto LABEL_6;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v31 = v3;
          v21 = *(v9 + 16);
          v30 = *(v9 + 24);
          sub_10000AB0C(v9, v8);
          sub_10000AB0C(v11, v10);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_68;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_67;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v11;
          v26 = v10;
          v3 = v31;
          goto LABEL_57;
        }

        memset(v33, 0, 14);
        sub_10000AB0C(v9, v8);
        sub_10000AB0C(v11, v10);
      }

      else
      {
        if (v12)
        {
          if (v9 >> 32 < v9)
          {
            goto LABEL_66;
          }

          sub_10000AB0C(v9, v8);
          sub_10000AB0C(v11, v10);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v9, v28))
            {
              goto LABEL_69;
            }

            v27 += v9 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v11;
          v26 = v10;
LABEL_57:
          sub_100031E04(v24, v25, v26, v33);
          sub_1000124C8(v11, v10);
          sub_1000124C8(v9, v8);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 + 1);
        LOWORD(v33[1]) = v8;
        BYTE2(v33[1]) = BYTE2(v8);
        BYTE3(v33[1]) = BYTE3(v8);
        BYTE4(v33[1]) = BYTE4(v8);
        BYTE5(v33[1]) = BYTE5(v8);
        sub_10000AB0C(v9, v8);
        sub_10000AB0C(v11, v10);
      }

      sub_100031E04(v33, v11, v10, &v32);
      sub_1000124C8(v11, v10);
      sub_1000124C8(v9, v8);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    v14 = 0;
    if (!v9 && v8 == 0xC000000000000000 && v10 >> 62 == 3)
    {
      v14 = 0;
      if (!v11 && v10 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    if (v13 <= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_1000BD70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v51 = *(a1 + 16);
    v52 = a2 + 32;
    v53 = a1 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v5 = (v53 + 56 * v3);
      v6 = *v5;
      v7 = (v52 + 56 * v3);
      v8 = *v7;
      result = v6 == v8;
      if (v6 != v8)
      {
        return result;
      }

      v9 = *(v5 + 1);
      v10 = *(v5 + 2);
      v11 = *(v5 + 3);
      v12 = *(v5 + 5);
      v13 = *(v7 + 2);
      v59 = *(v7 + 1);
      v14 = *(v7 + 3);
      v15 = *(v7 + 5);
      v54 = v6 == v8;
      v55 = *(v5 + 48);
      v57 = *(v7 + 32);
      v58 = *(v5 + 32);
      v56 = *(v7 + 48);
      if (v11 >> 60 != 15)
      {
        break;
      }

      if (v14 >> 60 != 15)
      {
        goto LABEL_91;
      }

      sub_10005D4F4(v9, v10, v11);
      v16 = v11;
      v17 = v9;
      v18 = v12;

      sub_10005D4F4(v59, v13, v14);

      sub_10005D4F4(v9, v10, v16);
      sub_10005D4F4(v59, v13, v14);
LABEL_64:
      sub_10002F75C(v17, v10, v16);
      if (v58 != v57)
      {
        goto LABEL_87;
      }

      if (v55)
      {
        if ((v56 & 1) == 0)
        {
          goto LABEL_87;
        }

        v41 = *(v18 + 16);
        if (v41 != *(v15 + 16))
        {
          goto LABEL_87;
        }

        if (v41 && v18 != v15)
        {
          v42 = 0;
          do
          {
            v45 = v18 + v42;
            v46 = v15 + v42;
            if (*(v18 + v42 + 32) != *(v15 + v42 + 32) || *(v45 + 34) != *(v46 + 34) || *(v45 + 36) != *(v46 + 36))
            {
              goto LABEL_87;
            }

            if (*(v45 + 40))
            {
              if ((*(v46 + 40) & 1) == 0)
              {
                goto LABEL_87;
              }
            }

            else if ((*(v46 + 40) & 1) != 0 || *(v45 + 38) != *(v46 + 38))
            {
              goto LABEL_87;
            }

            v42 += 10;
          }

          while (--v41);
        }
      }

      else
      {
        if (v56)
        {
          goto LABEL_87;
        }

        v43 = *(v18 + 16);
        if (v43 != *(v15 + 16))
        {
          goto LABEL_87;
        }

        if (v43 && v18 != v15)
        {
          v44 = 32;
          while (*(v18 + v44) == *(v15 + v44))
          {
            ++v44;
            if (!--v43)
            {
              goto LABEL_6;
            }
          }

LABEL_87:
          sub_10002F75C(v59, v13, v14);

          sub_10002F75C(v17, v10, v16);
LABEL_88:

          return 0;
        }
      }

LABEL_6:
      ++v3;
      sub_10002F75C(v59, v13, v14);

      sub_10002F75C(v17, v10, v16);

      v2 = v51;
      result = v54;
      if (v3 == v51)
      {
        return result;
      }
    }

    if (v14 >> 60 == 15)
    {
LABEL_91:
      sub_10005D4F4(v9, v10, v11);
      sub_10005D4F4(v59, v13, v14);
      sub_10002F75C(v9, v10, v11);
      sub_10002F75C(v59, v13, v14);
      return 0;
    }

    if (*(v5 + 1) != v59)
    {
      goto LABEL_92;
    }

    v19 = v11 >> 62;
    v20 = v14 >> 62;
    if (v11 >> 62 == 3)
    {
      v21 = 0;
      if (!v10 && v11 == 0xC000000000000000 && v14 >> 62 == 3)
      {
        v21 = 0;
        if (!v13 && v14 == 0xC000000000000000)
        {
          sub_10005D4F4(v9, 0, 0xC000000000000000);
          v16 = 0xC000000000000000;
          v17 = v9;
          v18 = v12;

          sub_10005D4F4(v59, 0, 0xC000000000000000);

          sub_10005D4F4(v9, 0, 0xC000000000000000);
          sub_10005D4F4(v59, 0, 0xC000000000000000);
          v22 = v59;
          v23 = 0;
          v24 = 0xC000000000000000;
          goto LABEL_46;
        }
      }
    }

    else if (v19 > 1)
    {
      if (v19 != 2)
      {
        v21 = 0;
        if (v20 <= 1)
        {
LABEL_32:
          if (v20)
          {
            LODWORD(v28) = HIDWORD(v13) - v13;
            if (__OFSUB__(HIDWORD(v13), v13))
            {
              goto LABEL_95;
            }

            v28 = v28;
          }

          else
          {
            v28 = BYTE6(v14);
          }

          goto LABEL_39;
        }

LABEL_37:
        if (v20 != 2)
        {
          if (v21)
          {
LABEL_92:
            sub_10005D4F4(v9, v10, v11);

            sub_10005D4F4(v59, v13, v14);

            sub_10005D4F4(v9, v10, v11);
            sub_10005D4F4(v59, v13, v14);
            sub_10002F75C(v59, v13, v14);
LABEL_93:
            sub_10002F75C(v9, v10, v11);
            sub_10002F75C(v59, v13, v14);

            sub_10002F75C(v9, v10, v11);
            goto LABEL_88;
          }

LABEL_45:
          sub_10005D4F4(v9, v10, v11);
          v16 = v11;
          v17 = v9;
          v18 = v12;

          sub_10005D4F4(v59, v13, v14);

          sub_10005D4F4(v9, v10, v16);
          sub_10005D4F4(v59, v13, v14);
          v22 = v59;
          v23 = v13;
          v24 = v14;
LABEL_46:
          sub_10002F75C(v22, v23, v24);
          goto LABEL_64;
        }

        v30 = *(v13 + 16);
        v29 = *(v13 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
          goto LABEL_96;
        }

LABEL_39:
        if (v21 != v28)
        {
          goto LABEL_92;
        }

        if (v21 < 1)
        {
          goto LABEL_45;
        }

        v50 = v13;
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            memset(v61, 0, 14);
            sub_10005D4F4(v9, v10, v11);

            v31 = v59;
            sub_10005D4F4(v59, v13, v14);

            sub_10005D4F4(v9, v10, v11);
            sub_10005D4F4(v59, v13, v14);
            v32 = v13;
LABEL_57:
            sub_100031E04(v61, v32, v14, &v60);
            sub_10002F75C(v31, v13, v14);
            if (!v60)
            {
              goto LABEL_93;
            }

LABEL_63:
            v16 = v11;
            v17 = v9;
            v18 = v12;
            goto LABEL_64;
          }

          v47 = *(v10 + 24);
          v48 = *(v10 + 16);
          sub_10005D4F4(v9, v10, v11);

          sub_10005D4F4(v59, v13, v14);

          v49 = v9;
          sub_10005D4F4(v9, v10, v11);
          sub_10005D4F4(v59, v13, v14);
          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v34 = v33;
            v35 = __DataStorage._offset.getter();
            v36 = v48;
            if (__OFSUB__(v48, v35))
            {
              goto LABEL_101;
            }

            v37 = v48 - v35 + v34;
          }

          else
          {
            v37 = 0;
            v36 = v48;
          }

          if (__OFSUB__(v47, v36))
          {
            goto LABEL_100;
          }

          __DataStorage._length.getter();
          v40 = v37;
        }

        else
        {
          if (!v19)
          {
            v61[0] = v10;
            LOWORD(v61[1]) = v11;
            BYTE2(v61[1]) = BYTE2(v11);
            BYTE3(v61[1]) = BYTE3(v11);
            BYTE4(v61[1]) = BYTE4(v11);
            BYTE5(v61[1]) = BYTE5(v11);
            sub_10005D4F4(v9, v10, v11);

            v31 = v59;
            sub_10005D4F4(v59, v13, v14);

            sub_10005D4F4(v9, v10, v11);
            sub_10005D4F4(v59, v13, v14);
            v32 = v13;
            goto LABEL_57;
          }

          if (v10 >> 32 < v10)
          {
            goto LABEL_99;
          }

          sub_10005D4F4(v9, v10, v11);

          sub_10005D4F4(v59, v13, v14);

          v49 = v9;
          sub_10005D4F4(v9, v10, v11);
          sub_10005D4F4(v59, v13, v14);
          v38 = __DataStorage._bytes.getter();
          if (v38)
          {
            v39 = __DataStorage._offset.getter();
            if (__OFSUB__(v10, v39))
            {
              goto LABEL_102;
            }

            v38 += v10 - v39;
          }

          __DataStorage._length.getter();
          v40 = v38;
        }

        v13 = v50;
        sub_100031E04(v40, v50, v14, v61);
        sub_10002F75C(v59, v50, v14);
        v9 = v49;
        if ((v61[0] & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_63;
      }

      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      v27 = __OFSUB__(v25, v26);
      v21 = v25 - v26;
      if (v27)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (!v19)
      {
        v21 = BYTE6(v11);
        if (v20 <= 1)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      LODWORD(v21) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_97;
      }

      v21 = v21;
    }

    if (v20 <= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  return 1;
}

uint64_t _s7CoreP2P12NANAttributeO32FineTimingMeasurementRangeReportV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, double a3, int8x8_t a4, uint8x8_t a5)
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 16)
    {
      v7 = a1 + i;
      v8 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      a4.i32[0] = *(v7 + 36);
      a5.i32[0] = *(v7 + 42);
      v9 = vmovl_u8(a5);
      v10 = vuzp1_s8(*&vmovl_u8(a4), 0x8000400020001);
      v11 = v10.i32[0] == *(v8 + 36) && *(v7 + 40) == *(v8 + 40);
      v12 = !v11;
      v10.i32[0] = *(v8 + 42);
      a5 = (v9.i64[0] & 0xFF00FF00FF00FFLL);
      a4 = vand_s8(vceq_s16(a5, (vmovl_u8(v10).u64[0] & 0xFF00FF00FF00FFLL)), 0x8000400020001);
      a4.i16[0] = vaddv_s16(a4);
      if (v12 || (~a4.i32[0] & 0xF) != 0)
      {
        break;
      }

      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000BE1B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 33);
  v4 = (result + 33);
  while (v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v3 += 2;
    v7 = v6;
    result = *(v4 - 1) == v5 && *v4 == v7;
    v9 = result != 1 || v2-- == 1;
    v4 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P12NANAttributeO26SecurityContextInformationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    for (i = (a2 + 32); ; i += 24)
    {
      if (*v4 != *i || v4[1] != i[1])
      {
        return 0;
      }

      v8 = *(v4 + 1);
      v7 = *(v4 + 2);
      v10 = *(i + 1);
      v9 = *(i + 2);
      v11 = v7 >> 62;
      v12 = v9 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v8 + 16);
          v18 = *(v8 + 24);
          v16 = __OFSUB__(v18, v19);
          v13 = v18 - v19;
          if (v16)
          {
            goto LABEL_61;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_62;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_29:
          if (v12)
          {
            LODWORD(v17) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_60;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v9);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v7);
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

LABEL_33:
      if (v13 != v17)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v30 = v3;
          v20 = *(v8 + 16);
          v29 = *(v8 + 24);
          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v21 = __DataStorage._bytes.getter();
          if (v21)
          {
            v22 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v22))
            {
              goto LABEL_65;
            }

            v21 += v20 - v22;
          }

          if (__OFSUB__(v29, v20))
          {
            goto LABEL_64;
          }

          __DataStorage._length.getter();
          v23 = v21;
          v24 = v10;
          v25 = v9;
          v3 = v30;
          goto LABEL_54;
        }

        memset(v32, 0, 14);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      else
      {
        if (v11)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_63;
          }

          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v27))
            {
              goto LABEL_66;
            }

            v26 += v8 - v27;
          }

          __DataStorage._length.getter();
          v23 = v26;
          v24 = v10;
          v25 = v9;
LABEL_54:
          sub_100031E04(v23, v24, v25, v32);
          sub_1000124C8(v10, v9);
          sub_1000124C8(v8, v7);
          if ((v32[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v32[0] = *(v4 + 1);
        LOWORD(v32[1]) = v7;
        BYTE2(v32[1]) = BYTE2(v7);
        BYTE3(v32[1]) = BYTE3(v7);
        BYTE4(v32[1]) = BYTE4(v7);
        BYTE5(v32[1]) = BYTE5(v7);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      sub_100031E04(v32, v10, v9, &v31);
      sub_1000124C8(v10, v9);
      sub_1000124C8(v8, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_6:
      v4 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v8 && v7 == 0xC000000000000000 && v9 >> 62 == 3)
    {
      v13 = 0;
      if (!v10 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_28:
    if (v12 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1000BE660(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      return 1;
    }

    v4 = a2 + 38;
    for (i = a1 + 38; *(i - 6) == *(v4 - 6); i += 7)
    {
      a3.i32[0] = *(i - 5);
      v6 = vmovl_u8(a3).u64[0];
      a3 = vuzp1_s8(v6, v6);
      if (a3.i32[0] != *(v4 - 5) || *(i - 1) != *(v4 - 1))
      {
        break;
      }

      v4 += 7;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000BE73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 14)
    {
      v5 = *(a1 + i + 38);
      v6 = *(a1 + i + 40);
      v7 = *(a1 + i + 42);
      v8 = *(a1 + i + 44);
      v9 = *(a2 + i + 38);
      v10 = *(a2 + i + 40);
      v11 = *(a2 + i + 42);
      v12 = *(a2 + i + 44);
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 36) != *(a2 + i + 36))
      {
        break;
      }

      v14 = v9 & 0xFF00;
      if ((v5 & 0xFF00) == 0x2200)
      {
        if (v14 != 8704)
        {
          return 0;
        }
      }

      else if (v14 == 8704 || word_100483080[v5] != word_100483080[v9] || word_1004830EE[v5 >> 8] != word_1004830EE[v9 >> 8])
      {
        return 0;
      }

      v15 = v10 & 0xFF00;
      if ((v6 & 0xFF00) == 0x2200)
      {
        if (v15 != 8704)
        {
          return 0;
        }
      }

      else if (v15 == 8704 || word_100483080[v6] != word_100483080[v10] || word_1004830EE[v6 >> 8] != word_1004830EE[v10 >> 8])
      {
        return 0;
      }

      v16 = v11 & 0xFF00;
      if ((v7 & 0xFF00) == 0x2200)
      {
        if (v16 != 8704)
        {
          return 0;
        }
      }

      else if (v16 == 8704 || word_100483080[v7] != word_100483080[v11] || word_1004830EE[v7 >> 8] != word_1004830EE[v11 >> 8])
      {
        return 0;
      }

      v17 = v12 & 0xFF00;
      if ((v8 & 0xFF00) == 0x2200)
      {
        if (v17 != 8704)
        {
          return 0;
        }
      }

      else if (v17 == 8704 || word_100483080[v8] != word_100483080[v12] || word_1004830EE[v8 >> 8] != word_1004830EE[v12 >> 8])
      {
        return 0;
      }

      v4 = 1;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _s7CoreP2P19InfraScanStartEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 37);
    v4 = (a2 + 37);
    do
    {
      if (*(v3 - 5) != *(v4 - 5) || (0x801004u >> (8 * *(v3 - 1))) != (0x801004u >> (8 * *(v4 - 1))))
      {
        return 0;
      }

      v5 = *v3;
      v6 = *v4;
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v5 == 3)
        {
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        switch(v5)
        {
          case 4u:
            if (v6 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5u:
            if (v6 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6u:
            if (v6 != 6)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v6 - 2) < 5 || ((v6 ^ v5))
      {
        return 0;
      }

LABEL_6:
      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000BEA94(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BEAF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BEB4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v4 = (result + v3);
    v5 = (a2 + v3);
    v6.i64[0] = *(result + v3 + 36);
    v7.i64[0] = *(a2 + v3 + 36);
    v8.i64[0] = *(a2 + v3 + 68);
    v6.i64[1] = *(result + v3 + 52);
    v9.i64[1] = *(result + v3 + 84);
    v7.i64[1] = *(a2 + v3 + 52);
    v8.i64[1] = *(a2 + v3 + 84);
    v9.i64[0] = *(result + v3 + 68);
    v10 = (*(result + v3 + 32) == *(a2 + v3 + 32)) & vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v6, v7), vceqq_s32(v9, v8))));
    if (*(result + v3 + 33) != *(a2 + v3 + 33))
    {
      v10 = 0;
    }

    if (v4[44] != v5[44])
    {
      v10 = 0;
    }

    v11 = v4[65] == v5[65] && v4[76] == v5[76];
    v14 = v11 && v4[77] == v5[77] && *(result + v3 + 80) == v5[80];
    if (v4[48] != v5[48] || v4[49] != v5[49] || v4[60] != v5[60])
    {
      v10 = 0;
    }

    if (v4[64] != v5[64])
    {
      v10 = 0;
    }

    v17 = v4[81] == v5[81] && v4[92] == v5[92];
    v18 = v4[93];
    v19 = v5[93];
    if (v17)
    {
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    v11 = v18 == v19;
    LODWORD(v21) = v10 & v20;
    if (v11)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21 != 1 || v2-- == 1;
    v3 += 64;
    if (v22)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BED14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v10[0] = *v3;
        v10[1] = v5;
        v11[0] = v3[2];
        *(v11 + 9) = *(v3 + 41);
        v6 = v4[1];
        v12[0] = *v4;
        v12[1] = v6;
        v13[0] = v4[2];
        *(v13 + 9) = *(v4 + 41);
        sub_1000C2DC8(v10, v9);
        sub_1000C2DC8(v12, v9);
        v7 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(v10, v12);
        sub_1000C2E24(v12);
        sub_1000C2E24(v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000BEE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  a3(0);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_1000C2D00(v16, v13, a4);
        sub_1000C2D00(v17, v10, a4);
        v19 = a5(v13, v10);
        sub_1000C2D68(v10, a4);
        sub_1000C2D68(v13, a4);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1000BEFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 80);
    for (i = (a1 + 80); ; i += 7)
    {
      if (*(i - 48) != *(v3 - 48))
      {
        return 0;
      }

      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(v3 - 4);
      v83 = *(v3 - 5);
      v84 = *(i - 2);
      v9 = *(v3 - 2);
      v79 = *i;
      v80 = *(v3 - 3);
      v10 = *v3;
      v11 = v6 >> 62;
      v12 = v8 >> 62;
      v81 = v8;
      v82 = v5;
      v77 = *(v3 - 1);
      v78 = *(i - 1);
      if (v6 >> 62 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v22 = *(v5 + 16);
          v21 = *(v5 + 24);
          v19 = __OFSUB__(v21, v22);
          v13 = v21 - v22;
          if (v19)
          {
            goto LABEL_136;
          }

          goto LABEL_25;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_26;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_137;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_26:
          if (v12)
          {
            LODWORD(v20) = HIDWORD(v83) - v83;
            if (__OFSUB__(HIDWORD(v83), v83))
            {
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
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
            }

            v20 = v20;
          }

          else
          {
            v20 = BYTE6(v8);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v12 <= 1)
        {
          goto LABEL_26;
        }
      }

LABEL_19:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

LABEL_37:
        v14 = *(i - 5);
        sub_10000AB0C(v5, v6);
        sub_10005D67C(v7, v84);

        v15 = v83;
        v16 = v8;
LABEL_38:
        sub_10000AB0C(v15, v16);
        v25 = v80;
        sub_10005D67C(v80, v9);

        goto LABEL_61;
      }

      v18 = *(v83 + 16);
      v17 = *(v83 + 24);
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
      {
        goto LABEL_135;
      }

LABEL_32:
      if (v13 != v20)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_37;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v25 = *(v3 - 3);
          v75 = *(v5 + 16);
          v68 = *(v5 + 24);
          sub_10000AB0C(v5, v6);
          v70 = v7;
          sub_10005D67C(v7, v84);

          sub_10000AB0C(v83, v81);
          sub_10005D67C(v80, v9);

          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            v28 = v75;
            if (__OFSUB__(v75, v27))
            {
              goto LABEL_142;
            }

            v26 += v75 - v27;
          }

          else
          {
            v28 = v75;
          }

          if (__OFSUB__(v68, v28))
          {
            goto LABEL_141;
          }

          __DataStorage._length.getter();
          sub_100031E04(v26, v83, v81, v86);
          v7 = v70;
          if ((v86[0] & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_60;
        }

        memset(v86, 0, 14);
        v74 = v6;
        sub_10000AB0C(v5, v6);
        sub_10005D67C(v7, v84);

        v24 = v83;
        v23 = v8;
        sub_10000AB0C(v83, v8);
        v25 = v80;
        sub_10005D67C(v80, v9);
      }

      else
      {
        if (v11)
        {
          v29 = *(v3 - 4);
          v30 = *(i - 4);
          v31 = v5;
          if (v5 >> 32 < v5)
          {
            goto LABEL_140;
          }

          sub_10000AB0C(v5, v30);
          v71 = v7;
          sub_10005D67C(v7, v84);

          sub_10000AB0C(v83, v29);
          sub_10005D67C(v80, v9);

          v32 = __DataStorage._bytes.getter();
          if (v32)
          {
            v33 = __DataStorage._offset.getter();
            if (__OFSUB__(v31, v33))
            {
              goto LABEL_143;
            }

            v32 += v31 - v33;
          }

          __DataStorage._length.getter();
          sub_100031E04(v32, v83, v29, v86);
          v7 = v71;
          v6 = v30;
          v25 = v80;
          if ((v86[0] & 1) == 0)
          {
LABEL_129:
            sub_1000124C8(v83, v81);
            sub_100017554(v25, v9);

            sub_1000124C8(v82, v6);
            v66 = v7;
            v67 = v84;
LABEL_130:
            sub_100017554(v66, v67);
LABEL_131:

            return 0;
          }

          goto LABEL_60;
        }

        v86[0] = v5;
        LOWORD(v86[1]) = v6;
        BYTE2(v86[1]) = BYTE2(v6);
        BYTE3(v86[1]) = BYTE3(v6);
        BYTE4(v86[1]) = BYTE4(v6);
        BYTE5(v86[1]) = BYTE5(v6);
        v23 = v8;
        v74 = v6;
        sub_10000AB0C(v5, v6);
        sub_10005D67C(v7, v84);

        v24 = v83;
        sub_10000AB0C(v83, v8);
        v25 = v80;
        sub_10005D67C(v80, v9);
      }

      sub_100031E04(v86, v24, v23, &v85);
      v6 = v74;
      if (!v85)
      {
        goto LABEL_129;
      }

LABEL_60:
      v14 = v82;
LABEL_61:
      if (v84 >> 60 == 15)
      {
        if (v9 >> 60 != 15)
        {
          goto LABEL_124;
        }

        sub_10005D67C(v7, v84);
        sub_10005D67C(v25, v9);
        goto LABEL_115;
      }

      if (v9 >> 60 == 15)
      {
LABEL_124:
        v63 = v14;
        v64 = v84;
        sub_10005D67C(v7, v84);
        sub_10005D67C(v25, v9);
        sub_100017554(v7, v84);
        sub_100017554(v25, v9);
        sub_1000124C8(v83, v81);
        sub_100017554(v25, v9);

        v65 = v63;
LABEL_128:
        sub_1000124C8(v65, v6);
        v66 = v7;
        v67 = v64;
        goto LABEL_130;
      }

      v34 = v84 >> 62;
      v35 = v9 >> 62;
      if (v84 >> 62 == 3)
      {
        v36 = 0;
        if (!v7 && v84 == 0xC000000000000000 && v9 >> 62 == 3)
        {
          v36 = 0;
          if (!v25 && v9 == 0xC000000000000000)
          {
            sub_10005D67C(0, 0xC000000000000000);
            sub_10005D67C(0, 0xC000000000000000);
            v37 = 0;
            v38 = 0xC000000000000000;
            goto LABEL_94;
          }
        }

LABEL_81:
        if (v35 <= 1)
        {
          goto LABEL_82;
        }

        goto LABEL_75;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v43 = *(v7 + 16);
          v42 = *(v7 + 24);
          v19 = __OFSUB__(v42, v43);
          v36 = v42 - v43;
          if (v19)
          {
            goto LABEL_144;
          }

          goto LABEL_81;
        }

        v36 = 0;
        if (v35 <= 1)
        {
          goto LABEL_82;
        }
      }

      else if (v34)
      {
        LODWORD(v36) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_145;
        }

        v36 = v36;
        if (v35 <= 1)
        {
LABEL_82:
          if (v35)
          {
            LODWORD(v41) = HIDWORD(v25) - v25;
            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_139;
            }

            v41 = v41;
          }

          else
          {
            v41 = BYTE6(v9);
          }

          goto LABEL_88;
        }
      }

      else
      {
        v36 = BYTE6(v84);
        if (v35 <= 1)
        {
          goto LABEL_82;
        }
      }

LABEL_75:
      if (v35 != 2)
      {
        if (v36)
        {
          goto LABEL_126;
        }

LABEL_93:
        sub_10005D67C(v7, v84);
        sub_10005D67C(v25, v9);
        v37 = v25;
        v38 = v9;
LABEL_94:
        sub_100017554(v37, v38);
        goto LABEL_115;
      }

      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      v19 = __OFSUB__(v39, v40);
      v41 = v39 - v40;
      if (v19)
      {
        goto LABEL_138;
      }

LABEL_88:
      if (v36 != v41)
      {
LABEL_126:
        sub_10005D67C(v7, v84);
        sub_10005D67C(v25, v9);
        sub_100017554(v25, v9);
LABEL_127:
        v64 = v84;
        sub_100017554(v7, v84);
        sub_1000124C8(v83, v81);
        sub_100017554(v25, v9);

        v65 = v82;
        goto LABEL_128;
      }

      if (v36 < 1)
      {
        goto LABEL_93;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v73 = v10;
          v76 = v6;
          v49 = v25;
          v50 = *(v7 + 16);
          v51 = *(v7 + 24);
          v72 = v7;
          sub_10005D67C(v7, v84);
          sub_10005D67C(v49, v9);
          sub_10005D67C(v49, v9);
          v52 = __DataStorage._bytes.getter();
          if (v52)
          {
            v53 = __DataStorage._offset.getter();
            if (__OFSUB__(v50, v53))
            {
              goto LABEL_148;
            }

            v52 += v50 - v53;
          }

          if (__OFSUB__(v51, v50))
          {
            goto LABEL_147;
          }

          __DataStorage._length.getter();
          v25 = v49;
          sub_100031E04(v52, v49, v9, v86);
          sub_100017554(v49, v9);
          v54 = v49;
          v55 = v9;
          goto LABEL_111;
        }

        memset(v86, 0, 14);
        sub_10005D67C(v7, v84);
        sub_10005D67C(v25, v9);
        sub_10005D67C(v25, v9);
        v47 = v25;
        v48 = v9;
        v44 = i;
        v45 = v3;
        v46 = v6;
      }

      else
      {
        if (v34)
        {
          v69 = v9;
          v56 = v25;
          v73 = v10;
          v76 = v6;
          v57 = v7;
          if (v7 >> 32 < v7)
          {
            goto LABEL_146;
          }

          v72 = v7;
          sub_10005D67C(v7, v84);
          sub_10005D67C(v56, v69);
          sub_10005D67C(v56, v69);
          v58 = __DataStorage._bytes.getter();
          if (v58)
          {
            v59 = __DataStorage._offset.getter();
            if (__OFSUB__(v57, v59))
            {
              goto LABEL_149;
            }

            v58 += v57 - v59;
          }

          v25 = v56;
          __DataStorage._length.getter();
          v60 = v56;
          v9 = v69;
          sub_100031E04(v58, v60, v69, v86);
          sub_100017554(v25, v69);
          v54 = v25;
          v55 = v69;
LABEL_111:
          sub_100017554(v54, v55);
          v7 = v72;
          v10 = v73;
          v6 = v76;
          if ((v86[0] & 1) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_115;
        }

        v86[0] = v7;
        LODWORD(v86[1]) = v84;
        WORD2(v86[1]) = WORD2(v84);
        v44 = i;
        v45 = v3;
        v46 = v6;
        sub_10005D67C(v7, v84);
        sub_10005D67C(v25, v9);
        sub_10005D67C(v25, v9);
        v47 = v25;
        v48 = v9;
      }

      sub_100031E04(v86, v47, v48, &v85);
      v6 = v46;
      v3 = v45;
      i = v44;
      sub_100017554(v25, v9);
      sub_100017554(v25, v9);
      if (!v85)
      {
        goto LABEL_127;
      }

LABEL_115:
      sub_100017554(v7, v84);
      if (!v79)
      {
        sub_1000124C8(v83, v81);
        sub_100017554(v25, v9);
        if (v10)
        {

          sub_1000124C8(v82, v6);
          sub_100017554(v7, v84);
          goto LABEL_131;
        }

        sub_1000124C8(v82, v6);
        sub_100017554(v7, v84);
        goto LABEL_6;
      }

      if (!v10)
      {
        sub_1000124C8(v83, v81);
        sub_100017554(v25, v9);

        sub_1000124C8(v82, v6);
        sub_100017554(v7, v84);
        goto LABEL_131;
      }

      if (v78 == v77 && v79 == v10)
      {
        sub_1000124C8(v83, v81);
        sub_100017554(v25, v9);

        sub_1000124C8(v82, v6);
        sub_100017554(v7, v84);
LABEL_6:

        goto LABEL_7;
      }

      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000124C8(v83, v81);
      sub_100017554(v25, v9);

      sub_1000124C8(v82, v6);
      sub_100017554(v7, v84);

      if ((v61 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v5 && v6 == 0xC000000000000000 && v8 >> 62 == 3)
    {
      v13 = 0;
      if (!v83 && v8 == 0xC000000000000000)
      {
        v14 = 0;
        sub_10000AB0C(0, 0xC000000000000000);
        sub_10005D67C(v7, v84);

        v15 = 0;
        v16 = 0xC000000000000000;
        goto LABEL_38;
      }
    }

LABEL_25:
    if (v12 <= 1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  return 1;
}

uint64_t sub_1000BFCF4(uint64_t a1, uint64_t a2)
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

  v3 = 0;
  v4 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v9 = *(v4 - 1);
    v8 = *v4;
    v11 = *(i - 1);
    v10 = *i;
    if (*v4 >> 60 == 15)
    {
      if (*i >> 60 != 15)
      {
        goto LABEL_62;
      }

      sub_10005D67C(*(v4 - 1), *v4);
      sub_10005D67C(v11, v10);
      goto LABEL_8;
    }

    if (*i >> 60 == 15)
    {
LABEL_62:
      sub_10005D67C(*(v4 - 1), *v4);
      sub_10005D67C(v11, v10);
      sub_100017554(v9, v8);
      v31 = v11;
      v32 = v10;
      goto LABEL_64;
    }

    v12 = v8 >> 62;
    v13 = v10 >> 62;
    if (v8 >> 62 == 3)
    {
      v14 = 0;
      if (!v9 && v8 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v14 = 0;
        if (!v11 && v10 == 0xC000000000000000)
        {
          sub_10005D67C(0, 0xC000000000000000);
          sub_10005D67C(0, 0xC000000000000000);
          sub_10005D67C(0, 0xC000000000000000);
          sub_10005D67C(0, 0xC000000000000000);
          v6 = 0;
          v7 = 0xC000000000000000;
          goto LABEL_7;
        }
      }

LABEL_30:
      if (v13 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        v17 = __OFSUB__(v19, v20);
        v14 = v19 - v20;
        if (v17)
        {
          goto LABEL_67;
        }

        goto LABEL_30;
      }

      v14 = 0;
      if (v13 <= 1)
      {
        goto LABEL_31;
      }
    }

    else if (v12)
    {
      LODWORD(v14) = HIDWORD(v9) - v9;
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_68;
      }

      v14 = v14;
      if (v13 <= 1)
      {
LABEL_31:
        if (v13)
        {
          LODWORD(v18) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_66;
          }

          v18 = v18;
        }

        else
        {
          v18 = BYTE6(v10);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v14 = BYTE6(v8);
      if (v13 <= 1)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if (v13 != 2)
    {
      if (v14)
      {
        break;
      }

LABEL_6:
      sub_10005D67C(*(v4 - 1), *v4);
      sub_10005D67C(v11, v10);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
      v6 = v11;
      v7 = v10;
LABEL_7:
      sub_100017554(v6, v7);
      sub_100017554(v9, v8);
      sub_100017554(v11, v10);
LABEL_8:
      sub_100017554(v9, v8);
      goto LABEL_9;
    }

    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }

LABEL_35:
    if (v14 != v18)
    {
      break;
    }

    if (v14 < 1)
    {
      goto LABEL_6;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v34 = v3;
        v21 = *(v9 + 16);
        v33 = *(v9 + 24);
        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = __DataStorage._offset.getter();
          if (__OFSUB__(v21, v23))
          {
            goto LABEL_71;
          }

          v22 += v21 - v23;
        }

        if (__OFSUB__(v33, v21))
        {
          goto LABEL_70;
        }

        __DataStorage._length.getter();
        v24 = v22;
        v25 = v11;
        v26 = v10;
        v3 = v34;
        goto LABEL_56;
      }

      memset(v36, 0, 14);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
    }

    else
    {
      if (v12)
      {
        if (v9 >> 32 < v9)
        {
          goto LABEL_69;
        }

        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        v27 = __DataStorage._bytes.getter();
        if (v27)
        {
          v28 = __DataStorage._offset.getter();
          if (__OFSUB__(v9, v28))
          {
            goto LABEL_72;
          }

          v27 += v9 - v28;
        }

        __DataStorage._length.getter();
        v24 = v27;
        v25 = v11;
        v26 = v10;
LABEL_56:
        sub_100031E04(v24, v25, v26, v36);
        sub_100017554(v11, v10);
        v29 = v36[0];
        goto LABEL_59;
      }

      v36[0] = *(v4 - 1);
      LOWORD(v36[1]) = v8;
      BYTE2(v36[1]) = BYTE2(v8);
      BYTE3(v36[1]) = BYTE3(v8);
      BYTE4(v36[1]) = BYTE4(v8);
      BYTE5(v36[1]) = BYTE5(v8);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
    }

    sub_100031E04(v36, v11, v10, &v35);
    sub_100017554(v11, v10);
    v29 = v35;
LABEL_59:
    sub_100017554(v9, v8);
    sub_100017554(v11, v10);
    sub_100017554(v9, v8);
    if ((v29 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v4 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_10005D67C(*(v4 - 1), *v4);
  sub_10005D67C(v11, v10);
  sub_10005D67C(v9, v8);
  sub_10005D67C(v11, v10);
  sub_100017554(v11, v10);
  sub_100017554(v9, v8);
  sub_100017554(v11, v10);
  v31 = v9;
  v32 = v8;
LABEL_64:
  sub_100017554(v31, v32);
  return 0;
}

uint64_t sub_1000C02D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v8 = *(i - 1);
      v7 = *i;
      v14 = *(v3 - 3);
      v15 = *(v3 - 2);
      v12 = *(i - 3);
      v13 = *(i - 2);

      if (v14 != v12 || v15 != v13)
      {
        break;
      }

      if (v5)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        if (v6 == v8 && v5 == v7)
        {
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_20;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

LABEL_20:
  }

  return 0;
}

void *sub_1000C0444(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C08D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0464(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C0A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0484(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C0B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C04A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C0C5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C04C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C0D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C04E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C0E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0504(char *a1, int64_t a2, char a3)
{
  result = sub_10002D74C(a1, a2, a3, *v3, &qword_10058CC80, &qword_100482F88);
  *v3 = result;
  return result;
}

char *sub_1000C0534(char *a1, int64_t a2, char a3)
{
  result = sub_10002D74C(a1, a2, a3, *v3, &qword_10058CC88, &unk_100482F90);
  *v3 = result;
  return result;
}

void *sub_1000C0564(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C0F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0584(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C118C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C05A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C129C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C05C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C05E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C149C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0604(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C15A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0624(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C16C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0664(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C06A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C06C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C06E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0704(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &qword_10058F4E0, &unk_100482FD0, type metadata accessor for WiFiAwarePairedDevice);
  *v3 = result;
  return result;
}

void *sub_1000C0748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &qword_10058CCB8, &qword_100482FC8, &type metadata accessor for SymmetricKey);
  *v3 = result;
  return result;
}

void *sub_1000C078C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &qword_10058CC18, &qword_100482F18, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  *v3 = result;
  return result;
}

void *sub_1000C07D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C1FD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C07F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0810(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0830(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C234C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &unk_100597530, &qword_100482F50, type metadata accessor for NANAttribute);
  *v3 = result;
  return result;
}

char *sub_1000C0894(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C2670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C08B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C277C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C08D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CD08, &qword_100483020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CD10, &qword_100483028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C0A08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100595370, &qword_1004AF240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C0B14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CD28, &qword_100483050);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CD30, &qword_100483058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C0C5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC20, &qword_100482F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC28, &qword_100482F28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C0D90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC60, &qword_100482F68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1000C0E90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC78, &qword_100482F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C0F9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(&qword_10058CD20, &qword_100483038);
  v10 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000C118C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100598800, &qword_1004842A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 10 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000C129C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CD18, &qword_100483030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000C1390(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCC0, &qword_100492360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C149C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCA0, &qword_100482FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000C15A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CD40, &qword_100483068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 14);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[14 * v8])
    {
      memmove(v12, v13, 14 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 14 * v8);
  }

  return v10;
}

void *sub_1000C16C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC68, &unk_100482F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C180C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCF8, &qword_100483010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000C1910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCF0, &qword_100483008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 34);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[34 * v8])
    {
      memmove(v12, v13, 34 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 34 * v8);
  }

  return v10;
}

char *sub_1000C1A2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCE8, &qword_100483000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_1000C1B50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CD38, &qword_100483060);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1000C1C54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC08, &unk_100488510);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC10, &qword_100482F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C1D88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCD8, &unk_100482FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C1ED0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCC8, &qword_100482FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000C1FD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCB0, &unk_1004871A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C2108(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CCA8, &unk_100482FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1000C2204(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC90, &unk_100487190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC98, &qword_100482FA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C234C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC50, &qword_100482F58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC58, &qword_100482F60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C2494(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
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
        return result;
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
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

char *sub_1000C2670(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC48, &unk_100487170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C277C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058CC30, &qword_100482F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058CC38, &qword_100482F38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000C28D8()
{
  result = qword_10059A6F0;
  if (!qword_10059A6F0)
  {
    v3 = sub_10005DD04(&qword_10058CBE0, &qword_100482CF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_10059A6F0);
  }

  return result;
}

unint64_t sub_1000C293C(uint64_t a1)
{
  result = sub_1000C2964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C2964()
{
  result = qword_10058CBE8;
  if (!qword_10058CBE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiDriverCapabilities, &type metadata for WiFiDriverCapabilities, v0, v1);
    atomic_store(result, &qword_10058CBE8);
  }

  return result;
}

unint64_t sub_1000C29BC()
{
  result = qword_10058CBF0;
  if (!qword_10058CBF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiDriverCapabilities, &type metadata for WiFiDriverCapabilities, v0, v1);
    atomic_store(result, &qword_10058CBF0);
  }

  return result;
}

unint64_t sub_1000C2A14()
{
  result = qword_100598620;
  if (!qword_100598620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiDriverCapabilities, &type metadata for WiFiDriverCapabilities, v0, v1);
    atomic_store(result, &qword_100598620);
  }

  return result;
}

unint64_t sub_1000C2A6C()
{
  result = qword_10058CBF8;
  if (!qword_10058CBF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiDriverCapabilities, &type metadata for WiFiDriverCapabilities, v0, v1);
    atomic_store(result, &qword_10058CBF8);
  }

  return result;
}

unint64_t sub_1000C2AC4()
{
  result = qword_10058CC00;
  if (!qword_10058CC00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiDriverCapabilities, &type metadata for WiFiDriverCapabilities, v0, v1);
    atomic_store(result, &qword_10058CC00);
  }

  return result;
}

uint64_t sub_1000C2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100031E04(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_1000C2CA8()
{
  result = qword_100597540;
  if (!qword_100597540)
  {
    v3 = type metadata accessor for UUID();
    result = swift_getWitnessTable(&protocol conformance descriptor for UUID, v3, v0, v1);
    atomic_store(result, &qword_100597540);
  }

  return result;
}

uint64_t sub_1000C2D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C2D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{

  return sub_100050FFC(a1, a2);
}

unint64_t IEEE80211Status.description.getter(char a1)
{
  result = 0x6673736563637553;
  switch(a1)
  {
    case 1:
    case 15:
    case 42:
      result = 0xD000000000000013;
      break;
    case 2:
    case 25:
    case 35:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
    case 30:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x74756F656D6954;
      break;
    case 9:
      result = 0x6C6C7566205041;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
    case 18:
    case 29:
    case 38:
      result = 0xD000000000000016;
      break;
    case 12:
    case 26:
    case 46:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x5448206F4ELL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 16:
    case 27:
      v3 = 10;
      goto LABEL_18;
    case 17:
      v3 = 11;
LABEL_18:
      result = v3 | 0xD000000000000014;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
    case 23:
      result = 0x2064696C61766E49;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
    case 24:
    case 44:
      result = 0xD000000000000017;
      break;
    case 28:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0xD000000000000014;
      break;
    case 32:
    case 40:
      result = 0xD000000000000019;
      break;
    case 33:
    case 47:
      result = 0xD00000000000001ALL;
      break;
    case 34:
      result = 0x756C696166205854;
      break;
    case 36:
      result = 0xD000000000000026;
      break;
    case 37:
    case 39:
    case 41:
    case 45:
      result = 0xD00000000000001CLL;
      break;
    case 43:
      result = 0x20746F6E20535342;
      break;
    case 48:
      result = 0x6620584D20504145;
      break;
    case 49:
      result = 0xD000000000000020;
      break;
    case 50:
      result = 0x697420656E696F4ALL;
      break;
    case 51:
      result = 0x6F72726520564349;
      break;
    case 52:
      result = 0x6F6261206E696F4ALL;
      break;
    case 53:
      result = 0x736572206E696F4ALL;
      break;
    case 54:
      result = 0x616C696176616E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C3448@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000C3494()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000C351C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v2]);
  return Hasher._finalize()();
}

unint64_t IEEE80211Reason.description.getter(char a1)
{
  result = 0x6673736563637553;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E55;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
    case 23:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6576697463616E49;
      break;
    case 5:
      result = 0x6C7265766F205041;
      break;
    case 6:
      result = 0x6874756120746F4ELL;
      break;
    case 7:
      result = 0x6F73736120746F4ELL;
      break;
    case 8:
    case 31:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
    case 19:
      result = 0x2064696C61766E49;
      break;
    case 13:
      result = 0x6C6961662043494DLL;
      break;
    case 14:
      result = 0x6974207961772D34;
      break;
    case 15:
    case 17:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6E65726566666944;
      break;
    case 18:
    case 29:
      result = 0xD000000000000010;
      break;
    case 20:
    case 21:
    case 24:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000021;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0x6D69742072656550;
      break;
    case 33:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C3A18@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000C3A64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1004834AA[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000C3AEC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1004834AA[v2]);
  return Hasher._finalize()();
}

void IEEE80211StatusAndReason.hash(into:)(uint64_t a1, unsigned int a2)
{
  v2 = a2 >> 8;
  Hasher._combine(_:)(word_10048343C[a2]);
  Hasher._combine(_:)(word_1004834AA[v2]);
}

Swift::Int IEEE80211StatusAndReason.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  Hasher._combine(_:)(word_1004834AA[v2]);
  return Hasher._finalize()();
}

Swift::Int sub_1000C3D10()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  Hasher._combine(_:)(word_1004834AA[v2]);
  return Hasher._finalize()();
}

void sub_1000C3D80()
{
  v1 = v0[1];
  Hasher._combine(_:)(word_10048343C[*v0]);
  Hasher._combine(_:)(word_1004834AA[v1]);
}

Swift::Int sub_1000C3DD4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v2]);
  Hasher._combine(_:)(word_1004834AA[v3]);
  return Hasher._finalize()();
}

uint64_t _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(unsigned __int16 a1)
{
  if (a1 > 0x2Du)
  {
    return 34;
  }

  else
  {
    return byte_1004834EE[a1];
  }
}

uint64_t _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 > 0x3E7u)
  {
    if (a1 > 0x3EDu)
    {
      if (a1 <= 0x3F0u)
      {
        if (a1 == 1006)
        {
          return 49;
        }

        if (a1 == 1007)
        {
          return 50;
        }

        return 51;
      }

      switch(a1)
      {
        case 0x3F1u:
          return 52;
        case 0x3F2u:
          return 53;
        case 0xFFFFu:
          return 54;
      }
    }

    else
    {
      if (a1 > 0x3EAu)
      {
        if (a1 == 1003)
        {
          return 46;
        }

        if (a1 == 1004)
        {
          return 47;
        }

        return 48;
      }

      switch(a1)
      {
        case 0x3E8u:
          return 43;
        case 0x3E9u:
          return 44;
        case 0x3EAu:
          return 45;
      }
    }

    return 55;
  }

  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 10:
      result = 2;
      break;
    case 11:
      result = 3;
      break;
    case 12:
      result = 4;
      break;
    case 13:
      result = 5;
      break;
    case 14:
      result = 6;
      break;
    case 15:
      result = 7;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 9;
      break;
    case 18:
      result = 10;
      break;
    case 25:
      result = 11;
      break;
    case 26:
      result = 12;
      break;
    case 27:
      result = 13;
      break;
    case 28:
      result = 14;
      break;
    case 30:
      result = 15;
      break;
    case 33:
      result = 16;
      break;
    case 34:
      result = 17;
      break;
    case 35:
      result = 18;
      break;
    case 37:
      result = 19;
      break;
    case 40:
      result = 20;
      break;
    case 41:
      result = 21;
      break;
    case 42:
      result = 22;
      break;
    case 43:
      result = 23;
      break;
    case 44:
      result = 24;
      break;
    case 45:
      result = 25;
      break;
    case 46:
      result = 26;
      break;
    case 59:
      result = 27;
      break;
    case 60:
      result = 28;
      break;
    case 61:
      result = 29;
      break;
    case 62:
      result = 30;
      break;
    case 63:
      result = 31;
      break;
    case 64:
      result = 32;
      break;
    case 65:
      result = 33;
      break;
    case 66:
      result = 34;
      break;
    case 67:
      result = 35;
      break;
    case 68:
      result = 36;
      break;
    case 82:
      result = 37;
      break;
    case 83:
      result = 38;
      break;
    case 92:
      result = 39;
      break;
    case 93:
      result = 40;
      break;
    case 99:
      result = 41;
      break;
    case 126:
      result = 42;
      break;
    default:
      return 55;
  }

  return result;
}

unint64_t sub_1000C4124()
{
  result = qword_10058CD48;
  if (!qword_10058CD48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Status, &type metadata for IEEE80211Status, v0, v1);
    atomic_store(result, &qword_10058CD48);
  }

  return result;
}

unint64_t sub_1000C417C()
{
  result = qword_10058CD50;
  if (!qword_10058CD50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Reason, &type metadata for IEEE80211Reason, v0, v1);
    atomic_store(result, &qword_10058CD50);
  }

  return result;
}

unint64_t sub_1000C41D4()
{
  result = qword_10058CD58;
  if (!qword_10058CD58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211StatusAndReason, &type metadata for IEEE80211StatusAndReason, v0, v1);
    atomic_store(result, &qword_10058CD58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211StatusAndReason(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 65313 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65313 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65313;
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

      return (*a1 | (v4 << 16)) - 65313;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65313;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211StatusAndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65313 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65313 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 16) + 1;
    *result = a2 - 223;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C461C()
{
  result = qword_10058CD60;
  if (!qword_10058CD60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Reason, &type metadata for IEEE80211Reason, v0, v1);
    atomic_store(result, &qword_10058CD60);
  }

  return result;
}

unint64_t sub_1000C4670()
{
  result = qword_10058CD68;
  if (!qword_10058CD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Status, &type metadata for IEEE80211Status, v0, v1);
    atomic_store(result, &qword_10058CD68);
  }

  return result;
}

uint64_t sub_1000C46CC(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = a1;
    v11 = a2 & 0xFFFFFFFFFFFFFFLL;
    v8 = String.count.getter();
    sub_1002AAFAC(&v10, v8);
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    type metadata accessor for SymmetricKey();
    _StringGuts._slowWithCString<A>(_:)();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v6 = String.count.getter();
  v10 = sub_1002AAFAC((v5 + 32), v6);
  v11 = v7;
LABEL_6:
  SymmetricKey.init<A>(data:)();
}

CoreP2P::NANPassphrase __swiftcall NANPassphrase.init(_:)(CoreP2P::NANPassphrase result)
{
  v1 = HIBYTE(result.string._object) & 0xF;
  if ((result.string._object & 0x2000000000000000) == 0)
  {
    v1 = result.string._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t static NANPassphrase.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int NANPassphrase.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000C48AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000C4900(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C4948(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t NANPassphrase.description.getter(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(16);

  strcpy(v7, "Passphrase: ");
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 34;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

uint64_t NANPassphrase.customMirror.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v9 = v12 - v8;
  v12[2] = a1;
  v12[3] = a2;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v4);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1000C4BDC()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v6, "Passphrase: ");
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 34;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return v6[0];
}

uint64_t sub_1000C4C70(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v12[2] = v8;
  v12[3] = v9;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t NANPassphrase.pmk(for:serviceName:publisherAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v6 = a1;
  v7 = type metadata accessor for SHA256Digest();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v15 = String.lowercased()();

  sub_1001F93A4(v15._countAndFlagsBits, v15._object, v14);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v8 + 8))(v10, v7);
  v16 = v24;
  v17 = v25;
  (*(v12 + 8))(v14, v11);
  if (((1 << v6) & 0x55) != 0)
  {
    v18 = sub_1000C5220(v22, v23, v6, v16, v17, v21 & 0xFFFFFFFFFFFFLL, &qword_10058CB98, &unk_100488540, &off_1005561D0, &type metadata accessor for SHA256, &qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  else
  {
    v18 = sub_1000C5220(v22, v23, v6, v16, v17, v21 & 0xFFFFFFFFFFFFLL, &qword_10058CBA8, &unk_100482C98, &off_1005561F8, &type metadata accessor for SHA384, &qword_10058CBB0, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  }

  v19 = v18;
  sub_1000124C8(v16, v17);
  return v19;
}

uint64_t NANPassphrase.pmk(for:serviceNameHash:publisherAddress:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (((1 << a1) & 0x55) != 0)
  {
    return sub_1000C5220(a5, a6, a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL, &qword_10058CB98, &unk_100488540, &off_1005561D0, &type metadata accessor for SHA256, &qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  else
  {
    return sub_1000C5220(a5, a6, a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL, &qword_10058CBA8, &unk_100482C98, &off_1005561F8, &type metadata accessor for SHA384, &qword_10058CBB0, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  }
}

uint64_t sub_1000C5220(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t (*a10)(uint64_t), unint64_t *a11, uint64_t (*a12)(uint64_t), const char *a13)
{
  v13 = a6;
  v129 = a12;
  v130 = a11;
  v127 = a10;
  v128 = a13;
  *&v126 = a9;
  v117 = a6 >> 8;
  v123 = a6 >> 16;
  v125 = a6 >> 24;
  v122 = HIDWORD(a6);
  v124 = a6 >> 40;
  v119 = sub_10005DC58(a7, a8);
  v121 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v100 - v19;
  v102 = type metadata accessor for SymmetricKey();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v120 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000C46CC(a1, a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100483520;
  *(v21 + 32) = 0;
  *(v21 + 33) = a3 + 1;
  v22 = sub_10002D874(v21);
  v24 = v23;

  *&v135 = v22;
  *(&v135 + 1) = v24;
  v132 = &type metadata for Data;
  v133 = &protocol witness table for Data;
  *&v131 = a4;
  *(&v131 + 1) = a5;
  v25 = sub_100029B34(&v131, &type metadata for Data);
  v26 = *v25;
  v27 = v25[1];
  sub_10000AB0C(v22, v24);
  sub_10000AB0C(a4, a5);
  sub_100178A18(v26, v27, &v135);
  sub_1000124C8(v22, v24);
  sub_100002A00(&v131);
  v28 = v135;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004817D0;
  *(v29 + 32) = v13;
  *(v29 + 33) = v117;
  *(v29 + 34) = v123;
  *(v29 + 35) = v125;
  *(v29 + 36) = v122;
  *(v29 + 37) = v124;
  v30 = sub_10002D874(v29);
  v32 = v31;

  v134 = v28;
  v132 = &type metadata for Data;
  v133 = &protocol witness table for Data;
  *&v131 = v30;
  *(&v131 + 1) = v32;
  v33 = sub_100029B34(&v131, &type metadata for Data);
  v34 = *v33;
  v35 = v33[1];
  sub_10000AB0C(v28, *(&v28 + 1));
  sub_10000AB0C(v30, v32);
  sub_100178A18(v34, v35, &v134);
  sub_1000124C8(v30, v32);
  sub_1000124C8(v28, *(&v28 + 1));
  sub_100002A00(&v131);
  v38 = v134;
  v37 = v38 >> 64;
  v36 = v38;
  v39 = sub_10002D874(v126);
  v41 = v40;
  v135 = __PAIR128__(v37, v36);
  v132 = &type metadata for Data;
  v133 = &protocol witness table for Data;
  *&v131 = v39;
  *(&v131 + 1) = v40;
  v42 = sub_100029B34(&v131, &type metadata for Data);
  v43 = *v42;
  v44 = v42[1];
  sub_10000AB0C(v36, v37);
  sub_10000AB0C(v39, v41);
  sub_100178A18(v43, v44, &v135);
  sub_1000124C8(v39, v41);
  sub_1000124C8(v36, v37);
  sub_100002A00(&v131);
  v131 = v135;
  v45 = v127(0);
  v46 = sub_1000C623C(v130, v129, v128);
  v47 = sub_1000BA0A4();
  v48 = v118;
  v116 = v45;
  v115 = v46;
  v114 = v47;
  static HMAC.authenticationCode<A>(for:using:)();
  sub_1000124C8(v131, *(&v131 + 1));
  v49 = v119;
  v50 = v48;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v51 = 0;
  v52 = *(v121 + 8);
  v121 += 8;
  v113 = v52;
  v52(v50, v49);
  v54 = *(&v131 + 1);
  v53 = v131;
  sub_10000AB0C(v131, *(&v131 + 1));
  v55 = 2;
  v126 = xmmword_100480A90;
  while (2)
  {
    *&v135 = v53;
    *(&v135 + 1) = v54;
    sub_10000AB0C(v53, v54);
    v57 = v118;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(v135, *(&v135 + 1));
    v58 = v119;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    sub_1000124C8(v53, v54);
    v113(v57, v58);
    v54 = *(&v135 + 1);
    v53 = v135;
    v59 = *(&v135 + 1) >> 62;
    v125 = v135;
    v123 = v135 >> 32;
    v124 = BYTE14(v135);
    if ((*(&v135 + 1) >> 62) > 1)
    {
      v60 = 0;
      v61 = 0;
      if (v59 != 2)
      {
        goto LABEL_11;
      }

      v60 = *(v135 + 16);
      v61 = *(v135 + 24);
    }

    else
    {
      if (!v59)
      {
        v60 = 0;
        v61 = v124;
        goto LABEL_11;
      }

      v61 = v123;
      v60 = v125;
    }

    if (v61 < v60)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

LABEL_11:
    v122 = v51;
    if (v60 == v61)
    {
      goto LABEL_3;
    }

    v112 = v61 - 1;
    v62 = v60;
    v129 = v60;
    v130 = (*(&v135 + 1) >> 62);
    v128 = v61;
    v117 = v55;
    do
    {
      v63 = v62;
      v127 = v62;
      while (1)
      {
        if (v62 < v60 || v63 >= v61)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v65 = *(&v131 + 1);
        v66 = *(&v131 + 1) >> 62;
        if ((*(&v131 + 1) >> 62) > 1)
        {
          if (v66 != 2)
          {
            goto LABEL_120;
          }

          if (v63 < *(v131 + 16))
          {
            goto LABEL_100;
          }

          if (v63 >= *(v131 + 24))
          {
            goto LABEL_102;
          }

          v57 = *(&v131 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v71 = __DataStorage._bytes.getter();
          if (!v71)
          {
            goto LABEL_123;
          }

          v58 = v71;
          v57 = v65 & 0x3FFFFFFFFFFFFFFFLL;
          v72 = __DataStorage._offset.getter();
          v73 = v63 - v72;
          if (__OFSUB__(v63, v72))
          {
            goto LABEL_105;
          }

LABEL_39:
          v67 = *(v58 + v73);
          if (v59 > 1)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

        if (v66)
        {
          if (v63 >= v131 >> 32 || v63 < v131)
          {
            goto LABEL_101;
          }

          v57 = *(&v131 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v74 = __DataStorage._bytes.getter();
          if (!v74)
          {
            goto LABEL_122;
          }

          v58 = v74;
          v57 = v65 & 0x3FFFFFFFFFFFFFFFLL;
          v75 = __DataStorage._offset.getter();
          v73 = v63 - v75;
          if (__OFSUB__(v63, v75))
          {
            goto LABEL_103;
          }

          goto LABEL_39;
        }

        if (v63 >= BYTE14(v131))
        {
          goto LABEL_99;
        }

        LODWORD(v135) = v131;
        WORD2(v135) = WORD2(v131);
        *(&v135 + 6) = *(&v131 + 6);
        v67 = *(&v135 + v63);
        if (v59 > 1)
        {
LABEL_21:
          if (v59 != 2)
          {
            goto LABEL_121;
          }

          if (v63 < *(v53 + 16))
          {
            goto LABEL_104;
          }

          if (v63 >= *(v53 + 24))
          {
            goto LABEL_108;
          }

          v57 = v54 & 0x3FFFFFFFFFFFFFFFLL;
          v68 = __DataStorage._bytes.getter();
          if (!v68)
          {
            goto LABEL_125;
          }

          v58 = v68;
          v57 = v54 & 0x3FFFFFFFFFFFFFFFLL;
          v69 = __DataStorage._offset.getter();
          v70 = v63 - v69;
          if (__OFSUB__(v63, v69))
          {
            goto LABEL_110;
          }

          goto LABEL_47;
        }

LABEL_40:
        if (v59)
        {
          if (v63 < v125 || v63 >= v123)
          {
            goto LABEL_107;
          }

          v57 = v54 & 0x3FFFFFFFFFFFFFFFLL;
          v77 = __DataStorage._bytes.getter();
          if (!v77)
          {
            goto LABEL_124;
          }

          v58 = v77;
          v57 = v54 & 0x3FFFFFFFFFFFFFFFLL;
          v78 = __DataStorage._offset.getter();
          v70 = v63 - v78;
          if (__OFSUB__(v63, v78))
          {
            goto LABEL_109;
          }

LABEL_47:
          v76 = *(v58 + v70);
          goto LABEL_48;
        }

        if (v63 >= v124)
        {
          goto LABEL_106;
        }

        *&v135 = v53;
        WORD4(v135) = v54;
        BYTE10(v135) = BYTE2(v54);
        BYTE11(v135) = BYTE3(v54);
        BYTE12(v135) = BYTE4(v54);
        BYTE13(v135) = BYTE5(v54);
        v76 = *(&v135 + v63);
LABEL_48:
        v79 = v76 ^ v67;
        v57 = *(&v131 + 1);
        v59 = v131;
        if ((*(&v131 + 1) >> 62) <= 1)
        {
          break;
        }

        if (*(&v131 + 1) >> 62 != 2)
        {
          goto LABEL_116;
        }

        v80 = *(&v131 + 1) & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000124C8(v59, v57);
        v131 = v126;
        sub_1000124C8(0, 0xC000000000000000);
        if (v63 < *(v59 + 16))
        {
          goto LABEL_94;
        }

        if (v63 >= *(v59 + 24))
        {
          goto LABEL_96;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(v59 + 16);
          v81 = *(v59 + 24);
          v82 = __DataStorage._bytes.getter();
          if (v82)
          {
            v83 = v82;
            v57 = v80;
            v84 = __DataStorage._offset.getter();
            if (__OFSUB__(v58, v84))
            {
              goto LABEL_113;
            }

            v57 = v58 - v84 + v83;
            if (__OFSUB__(v81, v58))
            {
              goto LABEL_111;
            }
          }

          else
          {
            v57 = 0;
            if (__OFSUB__(v81, v58))
            {
              goto LABEL_111;
            }
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v58 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v80 = v58;
          v62 = v127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v59 + 16);
          v89 = *(v59 + 24);
          type metadata accessor for Data.RangeReference();
          v58 = swift_allocObject();
          *(v58 + 16) = v88;
          *(v58 + 24) = v89;
          v62 = v127;

          v59 = v58;
        }

        v57 = v80;
        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v90 = __DataStorage._bytes.getter();
        if (!v90)
        {
          goto LABEL_118;
        }

        v58 = v90;
        v57 = v80;
        v91 = __DataStorage._offset.getter();
        v87 = v63 - v91;
        if (__OFSUB__(v63, v91))
        {
          goto LABEL_98;
        }

        v64 = 0x8000000000000000;
LABEL_14:
        ++v63;
        *(v58 + v87) = v79;
        *&v131 = v59;
        *(&v131 + 1) = v64 | v80;
        v61 = v128;
        v60 = v129;
        LODWORD(v59) = v130;
        if (v128 == v63)
        {
          v55 = v117;
          goto LABEL_3;
        }
      }

      if (*(&v131 + 1) >> 62 == 1)
      {
        v80 = *(&v131 + 1) & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000124C8(v59, v57);
        v131 = v126;
        sub_1000124C8(0, 0xC000000000000000);
        if (v63 >= v59 >> 32)
        {
          goto LABEL_95;
        }

        v58 = v59;
        if (v63 < v59)
        {
          goto LABEL_95;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter())
          {
            v57 = v80;
            if (__OFSUB__(v59, __DataStorage._offset.getter()))
            {
              goto LABEL_112;
            }
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v58 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v80 = v58;
        }

        v57 = v80;
        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v85 = __DataStorage._bytes.getter();
        if (!v85)
        {
          goto LABEL_117;
        }

        v58 = v85;
        v57 = v80;
        v86 = __DataStorage._offset.getter();
        v87 = v63 - v86;
        v62 = v127;
        if (__OFSUB__(v63, v86))
        {
          goto LABEL_97;
        }

        v64 = 0x4000000000000000;
        goto LABEL_14;
      }

      v58 = v131 >> 8;
      v92 = v131 >> 16;
      v93 = v131 >> 24;
      v104 = DWORD1(v131);
      v105 = v131 >> 40;
      v106 = WORD3(v131);
      v107 = BYTE7(v131);
      v108 = *(&v131 + 1) >> 8;
      v109 = *(&v131 + 1) >> 16;
      v110 = *(&v131 + 1) >> 24;
      v111 = HIDWORD(*(&v131 + 1));
      v127 = (*(&v131 + 1) >> 40);
      v94 = HIWORD(*(&v131 + 1));
      sub_1000124C8(v131, *(&v131 + 1));
      LOBYTE(v135) = v59;
      BYTE1(v135) = v58;
      BYTE2(v135) = v92;
      BYTE3(v135) = v93;
      BYTE4(v135) = v104;
      BYTE5(v135) = v105;
      BYTE6(v135) = v106;
      BYTE7(v135) = v107;
      BYTE8(v135) = v57;
      BYTE9(v135) = v108;
      BYTE10(v135) = v109;
      BYTE11(v135) = v110;
      BYTE12(v135) = v111;
      BYTE13(v135) = v127;
      BYTE14(v135) = v94;
      if (v63 >= v94)
      {
        goto LABEL_115;
      }

      *(&v135 + v63) = v79;
      v62 = (v63 + 1);
      *&v131 = v135;
      *(&v131 + 1) = v103 & 0xF00000000000000 | DWORD2(v135) | ((WORD6(v135) | (BYTE14(v135) << 16)) << 32);
      v103 = *(&v131 + 1);
      v55 = v117;
      v60 = v129;
      LODWORD(v59) = v130;
      v61 = v128;
    }

    while (v112 != v63);
LABEL_3:
    v56 = v55++ == 4096;
    v51 = v122;
    if (!v56)
    {
      continue;
    }

    break;
  }

  v57 = *(&v131 + 1);
  v58 = v131;
  v95 = *(&v131 + 1) >> 62;
  if ((*(&v131 + 1) >> 62) <= 1)
  {
    if (!v95)
    {
      v96 = BYTE14(v131);
      goto LABEL_91;
    }

LABEL_88:
    if (!__OFSUB__(HIDWORD(v58), v58))
    {
      v96 = HIDWORD(v58) - v58;
      goto LABEL_90;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    sub_1000124C8(v58, v57);
    __break(1u);
  }

  if (v95 != 2)
  {
    goto LABEL_126;
  }

  v98 = *(v131 + 16);
  v97 = *(v131 + 24);
  v96 = v97 - v98;
  if (__OFSUB__(v97, v98))
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  sub_10000AB0C(v58, v57);
LABEL_91:
  if (v96 != 32)
  {
    goto LABEL_126;
  }

  (*(v101 + 8))(v120, v102);
  sub_1000124C8(v53, v54);
  sub_1000124C8(v131, *(&v131 + 1));
  return v58;
}