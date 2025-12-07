uint64_t sub_1008AC33C()
{
  if (*v0)
  {
    return 0x6449616E6D66;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1008AC378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010134A130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
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

uint64_t sub_1008AC45C(uint64_t a1)
{
  v2 = sub_1008AC4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AC498(uint64_t a1)
{
  v2 = sub_1008AC4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008AC4EC()
{
  result = qword_1016ACBF8;
  if (!qword_1016ACBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACBF8);
  }

  return result;
}

uint64_t sub_1008AC540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryPairingLockAckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008AC5A4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryPairingLockAckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008AC614()
{
  result = qword_1016ACC00;
  if (!qword_1016ACC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC00);
  }

  return result;
}

unint64_t sub_1008AC66C()
{
  result = qword_1016ACC08;
  if (!qword_1016ACC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC08);
  }

  return result;
}

unint64_t sub_1008AC6C4()
{
  result = qword_1016ACC10;
  if (!qword_1016ACC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC10);
  }

  return result;
}

__n128 sub_1008AC718(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1008AC754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 184))
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

uint64_t sub_1008AC7A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1008AC834(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v17 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v17, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v5, *(&v5 + 1));
    v16 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v16, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v15 = v1[4];
    v5 = v1[4];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v15, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v14 = v1[5];
    v5 = v1[5];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v14, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v13 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v13, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v12 = v1[3];
    v5 = v1[3];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v12, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v11 = v1[6];
    v5 = v1[6];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v11, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v10 = v1[7];
    v5 = v1[7];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[8];
    v5 = v1[8];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[9];
    v5 = v1[9];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v5, *(&v5 + 1));
  return sub_100007BAC(v6);
}

double sub_1008ACC6C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1008ACDDC(a2, v10);
  if (!v2)
  {
    v5 = v18;
    *(a1 + 128) = v17;
    *(a1 + 144) = v5;
    *(a1 + 160) = v19;
    *(a1 + 176) = v20;
    v6 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v6;
    v7 = v16;
    *(a1 + 96) = v15;
    *(a1 + 112) = v7;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v9;
  }

  return result;
}

unint64_t sub_1008ACD04(uint64_t a1)
{
  *(a1 + 8) = sub_1008ACD34();
  result = sub_1008ACD88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008ACD34()
{
  result = qword_1016ACC18;
  if (!qword_1016ACC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC18);
  }

  return result;
}

unint64_t sub_1008ACD88()
{
  result = qword_1016ACC20;
  if (!qword_1016ACC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC20);
  }

  return result;
}

uint64_t sub_1008ACDDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v66, v67);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
LABEL_17:
    sub_100007BAC(v66);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v66, v67);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v69 = v10;
  sub_10015049C(v66, v67);
  v64 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v65 = v11;
  sub_10015049C(v66, v67);
  v62 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v63 = v12;
  v13 = v68;
  sub_10015049C(v66, v67);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v15;
  result = static MACAddress.length.getter();
  v18 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v60 = v14;
  v61 = v16;
  if (__OFADD__(v18, 60))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_10015049C(v66, v67);
  v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v20 = v19;
  LOBYTE(v56) = sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v21 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = static MACAddress.length.getter();
  v18 = result + 20;
  if (__OFADD__(result, 20))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21 * v18;
  v18 = (v21 * v18) >> 64;
  if (v18 != v22 >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v59 = v13;
  v57 = Data.subdata(in:)();
  v58 = v23;
  sub_10015049C(v66, v67);
  v54 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v55 = v24;
  sub_10015049C(v66, v67);
  v52 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v53 = v25;
  sub_10015049C(v66, v67);
  v50 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v51 = v26;
  sub_10015049C(v66, v67);
  v48 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v49 = v27;
  sub_10015049C(v66, v67);
  v46 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v47 = v28;
  v56 = DataProtocol.intValue.getter();
  sub_10015049C(v66, v67);
  v45 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v13 = v29;
  if (v56 > 3)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_14:
      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_10177C418);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid beaconPartId %ld!", v34, 0xCu);
      }

      v35 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v35 - 8) + 104))(v36, enum case for BinaryDecodingError.decodingError(_:), v35);
      swift_willThrow();
      sub_100016590(v45, v13);
      sub_100016590(v46, v47);
      sub_100016590(v48, v49);
      sub_100016590(v50, v51);
      sub_100016590(v52, v53);
      sub_100016590(v54, v55);
      sub_100016590(v57, v58);
      sub_100016590(v59, v20);
      sub_100016590(v60, v61);
      sub_100016590(v62, v63);
      sub_100016590(v64, v65);
      sub_100016590(v9, v69);
      sub_100016590(v7, v8);
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_14;
  }

  sub_100016590(v46, v47);
  result = sub_100016590(v59, v20);
  if (v56 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v18 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v18)
    {
      v30 = BYTE6(v8);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_24:
  if (v18 != 2)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v37 = *(v7 + 16);
  v38 = *(v7 + 24);
  v39 = __OFSUB__(v38, v37);
  v30 = v38 - v37;
  if (v39)
  {
    __break(1u);
LABEL_28:
    LODWORD(v30) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v30 = v30;
  }

LABEL_30:
  if (v30 != 32)
  {
    goto LABEL_46;
  }

  v40 = v61 >> 62;
  if ((v61 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v61);
      goto LABEL_40;
    }

LABEL_38:
    LODWORD(v41) = HIDWORD(v60) - v60;
    if (!__OFSUB__(HIDWORD(v60), v60))
    {
      v41 = v41;
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  if (v40 != 2)
  {
    goto LABEL_47;
  }

  v43 = *(v60 + 16);
  v42 = *(v60 + 24);
  v39 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v39)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_40:
  if (v41 == 1)
  {
    sub_100007BAC(v66);
    result = sub_100007BAC(a1);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v60;
    *(a2 + 24) = v61;
    v44 = v69;
    *(a2 + 32) = v9;
    *(a2 + 40) = v44;
    *(a2 + 48) = v57;
    *(a2 + 56) = v58;
    *(a2 + 64) = v64;
    *(a2 + 72) = v65;
    *(a2 + 80) = v62;
    *(a2 + 88) = v63;
    *(a2 + 96) = v54;
    *(a2 + 104) = v55;
    *(a2 + 112) = v52;
    *(a2 + 120) = v53;
    *(a2 + 128) = v50;
    *(a2 + 136) = v51;
    *(a2 + 144) = v48;
    *(a2 + 152) = v49;
    *(a2 + 160) = v56;
    *(a2 + 168) = v45;
    *(a2 + 176) = v13;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AirPodsPairingLockAckResponse(uint64_t a1)
{
  result = qword_1016ACC80;
  if (!qword_1016ACC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008AD518(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008AD59C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for UUID();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016ACCC0, &qword_1013C1F08);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AirPodsPairingLockAckResponse(0);
  __chkstk_darwin(v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_1008ADA30();
  v26 = v9;
  v13 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100007BAC(a1);
  }

  v27 = a1;
  v20 = v5;
  v21 = v3;
  v29 = 0;
  sub_1000E307C();
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v12;
  *v12 = v28;
  v29 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[1] = v28;
  v29 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v27;
  v12[2] = v28;
  LOBYTE(v28) = 3;
  sub_100395BEC();
  v18 = v20;
  v17 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v26, v14);
  (*(v22 + 32))(v15 + *(v10 + 28), v18, v17);
  sub_1008ADA84(v15, v23);
  sub_100007BAC(v16);
  return sub_1008ADAE8(v15);
}

uint64_t sub_1008AD9A0(uint64_t a1)
{
  v2 = sub_1008ADA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AD9DC(uint64_t a1)
{
  v2 = sub_1008ADA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008ADA30()
{
  result = qword_1016ACCC8;
  if (!qword_1016ACCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCC8);
  }

  return result;
}

uint64_t sub_1008ADA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsPairingLockAckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008ADAE8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsPairingLockAckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008ADB58()
{
  result = qword_1016ACCD0;
  if (!qword_1016ACCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCD0);
  }

  return result;
}

unint64_t sub_1008ADBB0()
{
  result = qword_1016ACCD8;
  if (!qword_1016ACCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCD8);
  }

  return result;
}

unint64_t sub_1008ADC08()
{
  result = qword_1016ACCE0;
  if (!qword_1016ACCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCE0);
  }

  return result;
}

uint64_t type metadata accessor for NFCTapEndPoint(uint64_t a1)
{
  result = qword_1016ACD40;
  if (!qword_1016ACD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008ADCD0()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x6970617463666E2FLL;
  v1._object = 0xEB000000006F666ELL;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t sub_1008ADDF0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008ADF98(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_1008ADE20(uint64_t a1)
{
  *(a1 + 8) = sub_1008ADE50();
  result = sub_1008ADEA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008ADE50()
{
  result = qword_1016ACD78;
  if (!qword_1016ACD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD78);
  }

  return result;
}

unint64_t sub_1008ADEA4()
{
  result = qword_1016ACD80;
  if (!qword_1016ACD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD80);
  }

  return result;
}

uint64_t sub_1008ADEF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 != 32)
  {
    goto LABEL_23;
  }

  if ((a4 >> 62) <= 1)
  {
    if (a4 >> 62 == 1)
    {
      LODWORD(v9) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v9 = v9;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a4 >> 62 != 2)
  {
    goto LABEL_22;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v8 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  if (v9 != 1326)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1008ADF98(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = sub_10015049C(v11, v12);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    sub_10015049C(v11, v12);
    v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v3 = sub_1008ADEF8(v6, v7, v8, v10);
  }

  sub_100007BAC(v11);
  sub_100007BAC(a1);
  return v3;
}

void *sub_1008AE0CC@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *sub_1008AE0E8(void *result, void *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *sub_1008AE104@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *sub_1008AE120(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

Swift::Int sub_1008AE18C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1008AE200(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_1008AE244@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (*result >= *v2)
  {
    if ((*result - *v2) >= 0)
    {
      *a2 = *result - *v2;
      return result;
    }
  }

  else
  {
    if ((v4 - v3) >= 0)
    {
      *a2 = v3 - v4;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1008AE27C@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    v5 = __CFADD__(v4, v3);
    v4 += v3;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = __OFSUB__(0, v3);
  v7 = -v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 >= v7;
  v4 -= v7;
  if (v5)
  {
LABEL_9:
    *a2 = v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t *sub_1008AE2BC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a4;
  v7 = *a6;
  if ((*a6 & 0x8000000000000000) == 0)
  {
    v8 = __CFADD__(v6, v7);
    v6 += v7;
    if (!v8)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v9 = __OFSUB__(0, v7);
  v10 = -v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v6 >= v10;
  v6 -= v10;
  if (v8)
  {
LABEL_9:
    *result = v6;
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t *sub_1008AE304(unint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if ((*a2 - *result) >= 0)
    {
      return (v4 == 0);
    }
  }

  else
  {
    if ((v2 - v3) >= 0)
    {
      v4 = v3 - v2;
      return (v4 == 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008AE33C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v5 = objc_autoreleasePoolPush();
  sub_1000035D0(v8, v8[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  objc_autoreleasePoolPop(v5);
  sub_100007BAC(v8);
  result = sub_100007BAC(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_1008AE424(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10015049C(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100007BAC(v2);
}

unint64_t sub_1008AE4CC()
{
  result = qword_1016ACD88;
  if (!qword_1016ACD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD88);
  }

  return result;
}

unint64_t sub_1008AE544()
{
  result = qword_1016ACD90;
  if (!qword_1016ACD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD90);
  }

  return result;
}

unint64_t sub_1008AE598(void *a1)
{
  a1[1] = sub_1008AE5F8();
  a1[2] = sub_1008AE64C();
  a1[3] = sub_1008AE6A0();
  a1[4] = sub_1008AE6F4();
  a1[5] = sub_1008AE748();
  a1[6] = sub_1008AE79C();
  a1[7] = sub_1008AE7F0();
  result = sub_1008AE844();
  a1[8] = result;
  return result;
}

unint64_t sub_1008AE5F8()
{
  result = qword_1016ACD98;
  if (!qword_1016ACD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD98);
  }

  return result;
}

unint64_t sub_1008AE64C()
{
  result = qword_1016ACDA0;
  if (!qword_1016ACDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDA0);
  }

  return result;
}

unint64_t sub_1008AE6A0()
{
  result = qword_1016ACDA8;
  if (!qword_1016ACDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDA8);
  }

  return result;
}

unint64_t sub_1008AE6F4()
{
  result = qword_1016ACDB0;
  if (!qword_1016ACDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDB0);
  }

  return result;
}

unint64_t sub_1008AE748()
{
  result = qword_1016ACDB8;
  if (!qword_1016ACDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDB8);
  }

  return result;
}

unint64_t sub_1008AE79C()
{
  result = qword_1016ACDC0;
  if (!qword_1016ACDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDC0);
  }

  return result;
}

unint64_t sub_1008AE7F0()
{
  result = qword_1016ACDC8;
  if (!qword_1016ACDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDC8);
  }

  return result;
}

unint64_t sub_1008AE844()
{
  result = qword_1016ACDD0;
  if (!qword_1016ACDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDD0);
  }

  return result;
}

uint64_t sub_1008AE89C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1008AE8BC, v1, 0);
}

uint64_t sub_1008AE8BC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing);
  type metadata accessor for AirPodsLEPairingValidator();
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_defaultActor_initialize();
  type metadata accessor for DeviceIdentityUtility(0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v0[5] = type metadata accessor for AirPodsLEPeripheralProvider();
  v0[6] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1008AEA50;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_1008AEA50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1008AEF38;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1008AEB78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008AEB78()
{
  *(v0[6] + 112) = v0[9];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1008AEC14;

  return daemon.getter();
}

uint64_t sub_1008AEC14(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1008AFB14(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008AFB14(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1008AEDF8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008AEDF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_1008AF17C;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 112) = a1;
    v6 = sub_1008AF028;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008AEF38()
{
  v1 = *(v0 + 24);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_1008AEFC4, v1, 0);
}

uint64_t sub_1008AEFC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008AF028()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[4];
  sub_1000BC4D4(&qword_1016ACE90, &qword_1013DD370);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  type metadata accessor for AirPodsLEPairingExecutor(0);
  v5 = swift_allocObject();

  v7 = sub_1008AF344(v6, v3, v2, v1, v5);
  v8 = sub_1008AFB14(&qword_1016A12F0, 255, type metadata accessor for AirPodsLEPairingExecutor, &unk_1013A50D8);
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_1008AF17C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008AF2B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1008AE89C(v2);
}

uint64_t sub_1008AF344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = type metadata accessor for AccessoryMetadata(0);
  v10 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v61 = sub_1008AFB14(&qword_1016ACE98, 255, type metadata accessor for AirPodsLEPairingValidator, &unk_10138FE58);
  v60 = sub_1008AFB14(&qword_1016ACEA0, 255, type metadata accessor for AirPodsLEPeripheralProvider, &unk_10140D338);
  v15 = sub_1008AFB14(&qword_1016ACEA8, 255, type metadata accessor for BeaconStoreActor, &unk_1013DDEA0);
  swift_defaultActor_initialize();
  UUID.init()();
  v16 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  v17 = enum case for PairingExecutorState.idle(_:);
  v18 = type metadata accessor for PairingExecutorState();
  (*(*(v18 - 8) + 104))(a5 + v16, v17, v18);
  *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_stateHistory) = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_streamProvider;
  sub_1000BC4D4(&qword_1016ACEB0, &unk_1013DC650);
  swift_allocObject();
  *(a5 + v19) = AsyncStreamProvider.init()();
  v20 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  *v22 = 0;
  v22[1] = 0;
  v23 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0;
  v25 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingConfiguration;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 56))(a5 + v26, 1, 1, v27);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic) = 0;
  *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo) = a1;
  v28 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator);
  v29 = v60;
  v30 = v61;
  *v28 = a2;
  v28[1] = v30;
  v31 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider);
  *v31 = a3;
  v31[1] = v29;
  v32 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  *v32 = a4;
  v32[1] = v15;
  v33 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
  swift_beginAccess();
  v34 = a1 + v33;
  v35 = v62;
  sub_1008AFB5C(v34, v14);
  if ((*(v10 + 48))(v14, 1, v35))
  {

    sub_1008AFBCC(v14);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v38 = v59;
    sub_1008AFCDC(v14, v59);

    sub_1008AFBCC(v14);
    v39 = v38 + *(v35 + 68);
    v36 = *v39;
    v40 = *(v39 + 4);
    sub_1008AFD40(v38);
    v37 = v40 ^ 1;
  }

  result = sub_10098E9DC(0x302E302E32, 0xE500000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v42 = result;

    if ((v37 & (v36 == v42)) == 1)
    {
      v43 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
      *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24) = &type metadata for AirpodsLEPairingSpec2_0;
      v44 = sub_1008AFC88();
    }

    else
    {
      if (qword_101694720 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_1016A1010);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v63[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_1000136BC(0xD00000000000003BLL, 0x8000000101363860, v63);
        _os_log_impl(&_mh_execute_header, v46, v47, "%s Missing metadata findMyVersion, using default spec", v48, 0xCu);
        sub_100007BAC(v49);
      }

      v43 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
      *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24) = &type metadata for AirpodsLEPairingSpec1_0;
      v44 = sub_1008AFC34();
    }

    *(a5 + v43 + 32) = v44;
    sub_10001F280(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec, v63);
    sub_1000BC4D4(&qword_1016ACEC0, &unk_1013C2540);
    v50 = String.init<A>(describing:)();
    v52 = v51;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177C418);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63[0] = v57;
      *v56 = 136446210;
      v58 = sub_1000136BC(v50, v52, v63);

      *(v56 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "Using PairingSpec: %{public}s", v56, 0xCu);
      sub_100007BAC(v57);
    }

    else
    {
    }

    return a5;
  }

  return result;
}

uint64_t sub_1008AFB14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1008AFB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008AFBCC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008AFC34()
{
  result = qword_1016ACEB8;
  if (!qword_1016ACEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACEB8);
  }

  return result;
}

unint64_t sub_1008AFC88()
{
  result = qword_1016ACEC8;
  if (!qword_1016ACEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACEC8);
  }

  return result;
}

uint64_t sub_1008AFCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008AFD40(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008AFD9C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B570);
  sub_1000076D4(v0, qword_10177B570);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008AFE18(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v346 = a3;
  v347 = a4;
  v342 = a2;
  v354 = a1;
  v355 = 0;
  v329 = type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  __chkstk_darwin(v329);
  v333 = (&v317 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  __chkstk_darwin(v6 - 8);
  v336 = &v317 - v7;
  v337 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v335 = *(v337 - 8);
  __chkstk_darwin(v337);
  v332 = &v317 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016ACED0, &qword_1013C2560);
  __chkstk_darwin(v9 - 8);
  v349 = (&v317 - v10);
  v348 = type metadata accessor for AirPodsLostModeContent.Device(0);
  v338 = *(v348 - 8);
  v11 = __chkstk_darwin(v348);
  v322 = &v317 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v318 = &v317 - v13;
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v14 - 8);
  v16 = (&v317 - v15);
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v339 = *(v17 - 8);
  v340 = v17;
  __chkstk_darwin(v17);
  v344 = &v317 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for AccessoryLostModeRequestContent(0);
  v19 = __chkstk_darwin(v327);
  v321 = &v317 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v328 = &v317 - v21;
  v22 = type metadata accessor for Date();
  v325 = *(v22 - 8);
  v326 = v22;
  __chkstk_darwin(v22);
  v324 = &v317 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v352 = v24;
  v353 = v25;
  v26 = __chkstk_darwin(v24);
  v350 = &v317 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v330 = &v317 - v29;
  v30 = __chkstk_darwin(v28);
  v331 = &v317 - v31;
  __chkstk_darwin(v30);
  v323 = &v317 - v32;
  v319 = type metadata accessor for LostModeRequestContent(0);
  __chkstk_darwin(v319);
  v320 = &v317 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v341);
  v35 = (&v317 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for LostModeRecord(0);
  v37 = __chkstk_darwin(v36);
  v334 = &v317 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v317 - v39;
  v41 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v41 - 8);
  v43 = &v317 - v42;
  v44 = type metadata accessor for OwnedBeaconRecord(0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v317 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = v4;
  v345 = v36;
  v48 = v354 + *(v36 + 24);
  sub_100AA33AC(v48, v43);
  v49 = *(v45 + 48);
  v343 = v44;
  if (v49(v43, 1, v44) != 1)
  {
    sub_1008BA1A0(v43, v47, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694A30 != -1)
    {
LABEL_99:
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177B570);
    sub_1008B9F58(v354, v40, type metadata accessor for LostModeRecord);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v350 = v48;
      v66 = v47;
      v67 = v65;
      v68 = swift_slowAlloc();
      *&v362 = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      sub_1008BA074(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      sub_1008B9FC0(v40, type metadata accessor for LostModeRecord);
      v72 = sub_1000136BC(v69, v71, &v362);

      *(v67 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v63, v64, "updateLostModeServer for beacon %{private,mask.hash}s", v67, 0x16u);
      sub_100007BAC(v68);

      v47 = v66;
      v48 = v350;
    }

    else
    {

      sub_1008B9FC0(v40, type metadata accessor for LostModeRecord);
    }

    v86 = v353;
    sub_1008B9F58(v47 + *(v343 + 24), v35, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v121 = *v35;
        v108 = v35[1];
        v119 = v35[3];
        v350 = v35[2];
        v100 = v35[5];
        v355 = v35[4];
        v117 = sub_100D5F668();
        if (v118 >> 60 == 15)
        {

LABEL_93:
          v311 = static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            v314 = v311;
            swift_once();
            v311 = v314;
          }

          os_log(_:dso:log:_:_:)(v311, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage, v317);
          sub_10025ED18();
          v89 = swift_allocError();
          *v312 = 0;
          goto LABEL_96;
        }

LABEL_64:
        v229 = v117;
        v93 = v118;
        v343 = v121;
        (*(v86 + 16))(v323, v48, v352);
        v230 = sub_100313B54(v229, v93);
        v86 = v231;
        v232 = Data.hexString.getter();
        v340 = v233;
        sub_100016590(v230, v86);
        v234 = v93 >> 62;
        v317 = v47;
        v348 = v100;
        v349 = v108;
        v344 = v119;
        v341 = v232;
        if ((v93 >> 62) > 1)
        {
          if (v234 != 2)
          {
LABEL_89:
            v269 = Data.subdata(in:)();
            v271 = v270;
            v272 = Data.hexString.getter();
            v339 = v93;
            v273 = v272;
            v275 = v274;
            sub_100016590(v269, v271);
            v276 = (v354 + *(v345 + 36));
            v277 = *v276;
            v278 = v276[1];
            v279 = (v354 + *(v345 + 28));
            v280 = *v279;
            v281 = v279[1];
            v282 = (v354 + *(v345 + 32));
            v354 = v229;
            v284 = *v282;
            v283 = v282[1];
            v285 = v320;
            (*(v353 + 32))(v320, v323, v352);
            v286 = v319;
            v287 = (v285 + *(v319 + 20));
            v288 = v344;
            *v287 = v350;
            v287[1] = v288;
            v289 = (v285 + v286[6]);
            v290 = v349;
            *v289 = v343;
            v289[1] = v290;
            v291 = (v285 + v286[7]);
            v292 = v348;
            *v291 = v355;
            v291[1] = v292;
            v293 = (v285 + v286[8]);
            v294 = v340;
            *v293 = v341;
            v293[1] = v294;
            v295 = (v285 + v286[9]);
            *v295 = v273;
            v295[1] = v275;
            *(v285 + v286[10]) = xmmword_1013C2550;
            v296 = (v285 + v286[11]);
            *v296 = v277;
            v296[1] = v278;
            v297 = (v285 + v286[12]);
            *v297 = v280;
            v297[1] = v281;
            v298 = (v285 + v286[13]);
            *v298 = v284;
            v298[1] = v283;
            v299 = (v285 + v286[14]);
            *v299 = 0x746C7561666564;
            v299[1] = 0xE700000000000000;
            *(v285 + v286[15]) = v342 & 1;

            sub_100F00C24(v285);
            if (v300)
            {
              v303 = v300;
              v304 = v301;
              v305 = v302;
              v306 = sub_1008B4D8C(0);
              sub_1008B46BC(v303, v304, v305, v306);

              v307 = swift_allocObject();
              v309 = v346;
              v308 = v347;
              *(v307 + 16) = v346;
              *(v307 + 24) = v308;

              Future.addFailure(block:)();

              v310 = swift_allocObject();
              v310[2] = v351;
              v310[3] = v309;
              v310[4] = v308;

              Future.addSuccess(block:)();

              sub_100165328(v303, v304, v305);
              sub_100006654(v354, v339);
LABEL_91:
              v223 = type metadata accessor for OwnedBeaconRecord;
              v224 = v317;
              return sub_1008B9FC0(v224, v223);
            }

            sub_100006654(v354, v339);
            v47 = v317;
            goto LABEL_93;
          }

          v267 = *(v229 + 16);
          v266 = *(v229 + 24);
          v227 = __OFSUB__(v266, v267);
          v268 = v266 - v267;
          if (!v227)
          {
LABEL_87:
            if (v268 < -1)
            {
              __break(1u);
            }

            goto LABEL_89;
          }

          __break(1u);
        }

        else if (!v234)
        {
          goto LABEL_89;
        }

        LODWORD(v268) = HIDWORD(v229) - v229;
        if (__OFSUB__(HIDWORD(v229), v229))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v268 = v268;
        goto LABEL_87;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v317 = v47;
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v161 = v331;
        v162 = v35;
        v163 = v352;
        (*(v86 + 32))(v331, v162, v352);
        v165 = *(v86 + 16);
        v86 += 16;
        v164 = v165;
        (v165)(v330, v161, v163);
        v166 = (v354 + *(v345 + 36));
        v168 = *v166;
        v167 = v166[1];
        v169 = *(v345 + 32);
        v170 = (v354 + *(v345 + 28));
        v171 = v170[1];
        v350 = *v170;
        v172 = *(v354 + v169 + 8);
        v354 = *(v354 + v169);

        v173 = sub_100907E70(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v362 = v173;
        sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
        v93 = v362;
        v175 = [objc_opt_self() currentDevice];
        if (!v175)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v176 = v175;
        v345 = v168;
        v348 = v167;
        v349 = v164;
        v177 = [v175 serverFriendlyDescription];

        if (!v177)
        {
LABEL_105:
          __break(1u);
LABEL_106:

          (*v341)(v93, v86);

          __break(1u);
          return result;
        }

        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        v181 = swift_isUniquelyReferenced_nonNull_native();
        *&v362 = v93;
        sub_100FFACA0(v178, v180, 0xD000000000000011, 0x800000010134EA40, v181);
        v182 = v362;
        v183 = v324;
        Date.init()();
        v184 = Date.epoch.getter();
        (*(v325 + 8))(v183, v326);
        *&v362 = v184;
        v185 = dispatch thunk of CustomStringConvertible.description.getter();
        v187 = v186;
        v188 = swift_isUniquelyReferenced_nonNull_native();
        *&v362 = v182;
        sub_100FFACA0(v185, v187, 0xD000000000000015, 0x800000010134EA60, v188);
        v189 = v362;
        *&v362 = 1;
        v190 = dispatch thunk of CustomStringConvertible.description.getter();
        v192 = v191;
        v193 = swift_isUniquelyReferenced_nonNull_native();
        *&v362 = v189;
        sub_100FFACA0(v190, v192, 0xD000000000000013, 0x800000010134EA80, v193);
        v194 = v362;
        v196 = sub_1008D9A78(v195);
        v198 = v197;
        v199 = swift_isUniquelyReferenced_nonNull_native();
        *&v362 = v194;
        sub_100FFACA0(v196, v198, 0x6567412D72657355, 0xEA0000000000746ELL, v199);
        v344 = v362;
        v200 = v328;
        v201 = v330;
        v202 = v352;
        (v349)(v328, v330, v352);
        v203 = v327;
        *(v200 + *(v327 + 20)) = xmmword_1013C2550;
        v204 = (v200 + v203[6]);
        v205 = v348;
        *v204 = v345;
        v204[1] = v205;
        v206 = (v200 + v203[7]);
        *v206 = v350;
        v206[1] = v171;
        v207 = (v200 + v203[8]);
        *v207 = v354;
        v207[1] = v172;
        *(v200 + v203[9]) = v342 & 1;
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_1008BA074(&qword_1016ACEF8, type metadata accessor for AccessoryLostModeRequestContent, &unk_1013F33B8);
        v208 = v355;
        v209 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v208)
        {

          v211 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v212 = swift_allocObject();
          *(v212 + 16) = xmmword_101385D80;
          sub_1008B9F58(v200, v321, type metadata accessor for AccessoryLostModeRequestContent);
          v213 = String.init<A>(describing:)();
          v214 = v201;
          v216 = v215;
          *(v212 + 56) = &type metadata for String;
          *(v212 + 64) = sub_100008C00();
          *(v212 + 32) = v213;
          *(v212 + 40) = v216;
          sub_10039722C();
          v217 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v211, &_mh_execute_header, v217, "Failed to encode lost mode request content %@", 45, 2, v212);

          sub_1008B9FC0(v200, type metadata accessor for AccessoryLostModeRequestContent);
          v218 = *(v353 + 8);
          v218(v214, v202);

          v219 = static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            v315 = v219;
            swift_once();
            v219 = v315;
          }

          os_log(_:dso:log:_:_:)(v219, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage);
          sub_10025ED18();
          swift_allocError();
          *v220 = 0;
          v346();

          v218(v331, v202);
        }

        else
        {
          v235 = v209;
          v236 = v210;

          sub_1008B9FC0(v200, type metadata accessor for AccessoryLostModeRequestContent);
          v355 = *(v353 + 8);
          (v355)(v201, v202);
          v237 = v344;

          sub_100017D5C(v235, v236);

          sub_100016590(v235, v236);
          if (sub_100E0EA64(*(v317 + *(v343 + 64)), *(v317 + *(v343 + 68))))
          {
            v238 = 2;
          }

          else
          {
            v238 = 1;
          }

          v239 = sub_1008B4D8C(v238);
          sub_1008B4354(v237, v235, v236, v239);

          v240 = swift_allocObject();
          v242 = v346;
          v241 = v347;
          *(v240 + 16) = v346;
          *(v240 + 24) = v241;

          Future.addFailure(block:)();

          v243 = swift_allocObject();
          v243[2] = v351;
          v243[3] = v242;
          v243[4] = v241;

          Future.addSuccess(block:)();

          sub_100016590(v235, v236);
          (v355)(v331, v352);
        }

        goto LABEL_91;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        sub_1008B3F98();
        swift_allocError();
        *v88 = 7;
        v346();

        sub_1008B9FC0(v47, type metadata accessor for OwnedBeaconRecord);
        return (*(v86 + 8))(v35, v352);
      }
    }

    sub_1008B9FC0(v35, type metadata accessor for StableIdentifier);
    sub_1008B3F98();
    v89 = swift_allocError();
    *v90 = 7;
LABEL_96:
    (v346)(v89);

    v223 = type metadata accessor for OwnedBeaconRecord;
    v224 = v47;
    return sub_1008B9FC0(v224, v223);
  }

  sub_10000B3A8(v43, &unk_1016A9A20, &qword_10138B280);
  sub_100AC53EC(v48, v16);
  if ((v339[6])(v16, 1, v340) != 1)
  {
    sub_1008BA1A0(v16, v344, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694A30 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    v74 = sub_1000076D4(v73, qword_10177B570);
    v75 = v334;
    sub_1008B9F58(v354, v334, type metadata accessor for LostModeRecord);
    v337 = v74;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v353;
    if (v78)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v362 = v81;
      *v80 = 141558275;
      *(v80 + 4) = 1752392040;
      *(v80 + 12) = 2081;
      sub_1008BA074(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      sub_1008B9FC0(v75, type metadata accessor for LostModeRecord);
      v85 = sub_1000136BC(v82, v84, &v362);

      *(v80 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v76, v77, "updateLostModeServer for group %{private,mask.hash}s", v80, 0x16u);
      sub_100007BAC(v81);
    }

    else
    {

      sub_1008B9FC0(v75, type metadata accessor for LostModeRecord);
    }

    v122 = v350;
    sub_100519FB0();
    v124 = v123 + 56;
    v125 = 1 << *(v123 + 32);
    v126 = -1;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    v47 = v126 & *(v123 + 56);
    v35 = ((v125 + 63) >> 6);
    v340 = v79 + 16;
    v341 = (v79 + 8);
    v40 = (v338 + 48);
    v343 = v123;

    v127 = 0;
    v339 = _swiftEmptyArrayStorage;
LABEL_30:
    v48 = v352;
    v128 = v127;
    if (!v47)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v127 = v128;
LABEL_35:
      (*(v79 + 16))(v122, *(v343 + 48) + *(v79 + 72) * (__clz(__rbit64(v47)) | (v127 << 6)), v48);
      v93 = v122;
      v129 = v349;
      v86 = v48;
      v130 = v355;
      sub_1008B28B8(v93, v349);
      v355 = v130;
      if (v130)
      {
        goto LABEL_106;
      }

      v47 &= v47 - 1;
      (*v341)(v93, v86);
      if ((*v40)(v129, 1, v348) != 1)
      {
        v131 = v129;
        v132 = v318;
        sub_1008BA1A0(v131, v318, type metadata accessor for AirPodsLostModeContent.Device);
        sub_1008BA1A0(v132, v322, type metadata accessor for AirPodsLostModeContent.Device);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v353;
        if ((v133 & 1) == 0)
        {
          v339 = sub_100A5D240(0, v339[2] + 1, 1, v339);
        }

        v122 = v350;
        v135 = v339[2];
        v134 = v339[3];
        if (v135 >= v134 >> 1)
        {
          v339 = sub_100A5D240((v134 > 1), v135 + 1, 1, v339);
        }

        v136 = v338;
        v137 = v339;
        v339[2] = v135 + 1;
        sub_1008BA1A0(v322, v137 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v135, type metadata accessor for AirPodsLostModeContent.Device);
        goto LABEL_30;
      }

      v48 = v86;
      sub_10000B3A8(v129, &qword_1016ACED0, &qword_1013C2560);
      v128 = v127;
      v79 = v353;
      v122 = v350;
      if (!v47)
      {
        while (1)
        {
LABEL_32:
          v127 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            __break(1u);
            goto LABEL_99;
          }

          if (v127 >= v35)
          {
            break;
          }

          v47 = *(v124 + 8 * v127);
          ++v128;
          if (v47)
          {
            goto LABEL_35;
          }
        }

        v138 = *(v354 + *(v345 + 36));
        v139 = *(v354 + *(v345 + 28));
        v140 = (v354 + *(v345 + 32));
        v142 = *v140;
        v141 = v140[1];
        v359[0] = xmmword_1013C2550;
        v359[1] = v138;
        v359[2] = v139;
        *&v360 = v142;
        *(&v360 + 1) = v141;
        LOBYTE(v361) = v342 & 1;
        *(&v361 + 1) = v339;
        v362 = xmmword_1013C2550;
        v363 = v138;
        v364 = v139;
        v365 = v360;
        v366 = v361;

        sub_1008B53FC(v359, v358);
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.info.getter();
        sub_1008B5458(v359);
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v357 = v146;
          *v145 = 136315138;
          v358[3] = v365;
          v358[4] = v366;
          v358[1] = v363;
          v358[2] = v364;
          v358[0] = v362;
          sub_1008B53FC(v359, &v356);
          v147 = String.init<A>(describing:)();
          v149 = sub_1000136BC(v147, v148, &v357);

          *(v145 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v143, v144, "AirPodsLostModeContent: %s", v145, 0xCu);
          sub_100007BAC(v146);
        }

        sub_100DE40D4(&v362);
        if (v150)
        {
          v153 = v150;
          v154 = v151;
          v155 = v152;
          v156 = sub_1008B4D8C(2u);
          sub_1008B3FEC(v153, v154, v155, v156);

          v157 = swift_allocObject();
          v159 = v346;
          v158 = v347;
          *(v157 + 16) = v346;
          *(v157 + 24) = v158;

          Future.addFailure(block:)();

          v160 = swift_allocObject();
          v160[2] = v351;
          v160[3] = v159;
          v160[4] = v158;

          Future.addSuccess(block:)();

          sub_100165328(v153, v154, v155);
        }

        else
        {
          v221 = static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            v313 = v221;
            swift_once();
            v221 = v313;
          }

          os_log(_:dso:log:_:_:)(v221, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage);
          sub_10025ED18();
          swift_allocError();
          *v222 = 0;
          v346();
        }

        v223 = type metadata accessor for OwnedBeaconGroup;
        v224 = v344;
        return sub_1008B9FC0(v224, v223);
      }
    }
  }

  sub_10000B3A8(v16, &unk_1016AF8B0, &unk_1013A0700);
  sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
  v50 = unsafeFromAsyncTask<A>(_:)();
  v51 = v362;
  __chkstk_darwin(v50);
  *(&v317 - 2) = v48;
  v52 = v336;
  sub_1012BC6C4(sub_1008B3F78, v51, v336);

  v53 = v337;
  if ((*(v335 + 48))(v52, 1, v337) != 1)
  {
    v91 = v332;
    sub_1008BA1A0(v52, v332, type metadata accessor for LocalFindableAccessoryRecord);
    v92 = (v354 + *(v345 + 36));
    v93 = v92[1];
    v350 = *v92;
    v94 = *(v345 + 32);
    v95 = (v354 + *(v345 + 28));
    v96 = *v95;
    v355 = v95[1];
    v97 = v354 + v94;
    v98 = *(v354 + v94);
    v99 = *(v97 + 8);
    v348 = v96;
    v349 = v98;
    sub_1000BC4D4(&qword_1016ACEE8, &qword_1013C2568);
    v344 = (*(v338 + 80) + 32) & ~*(v338 + 80);
    v345 = swift_allocObject();
    *(v345 + 16) = xmmword_101385D80;
    v100 = sub_1000BC4D4(&qword_1016ACEF0, &qword_1013C2570);
    v101 = v100[12];
    v102 = (v91 + v53[7]);
    v103 = *v102;
    v86 = v102[1];
    v104 = v333;
    *v333 = *v102;
    v104[1] = v86;
    (*(v353 + 16))(v104 + v101, v91 + v53[9], v352);
    v105 = v53[11];
    v106 = *(v91 + v53[10]);
    v107 = *(v91 + v105);
    v353 = v99;
    v108 = v355;

    v354 = v93;

    sub_100017D5C(v103, v86);
    v109 = sub_100314604(v106, v107);
    if (v110 >> 60 == 15)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v111 = (v104 + v100[16]);
    v112 = v109;
    v113 = v110;
    v93 = sub_100313B54(v109, v110);
    v48 = v114;
    sub_100006654(v112, v113);
    v115 = Data.hexString.getter();
    v86 = v116;
    sub_100016590(v93, v48);
    *v111 = v115;
    v111[1] = v86;
    v117 = sub_100314604(v106, v107);
    if (v118 >> 60 == 15)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v119 = v117;
    v47 = v118;
    v120 = v118 >> 62;
    v121 = v351;
    if ((v118 >> 62) <= 1)
    {
      v86 = v333;
      if (!v120)
      {
        goto LABEL_75;
      }

      LODWORD(v228) = HIDWORD(v117) - v117;
      if (!__OFSUB__(HIDWORD(v117), v117))
      {
        v228 = v228;
        goto LABEL_73;
      }

      __break(1u);
      goto LABEL_101;
    }

    v86 = v333;
    if (v120 != 2)
    {
LABEL_75:
      v244 = (v86 + v100[20]);
      v245 = Data.subdata(in:)();
      v247 = v246;
      sub_100006654(v119, v47);
      v248 = Data.hexString.getter();
      v250 = v249;
      sub_100016590(v245, v247);
      *v244 = v248;
      v244[1] = v250;
      swift_storeEnumTagMultiPayload();
      v251 = v345;
      sub_100DE3528(v86, v345 + v344);
      *&v252 = v348;
      *(&v252 + 1) = v108;
      v364 = v252;
      *&v252 = v350;
      *(&v252 + 1) = v354;
      v362 = xmmword_1013C2550;
      v363 = v252;
      *&v365 = v349;
      *(&v365 + 1) = v353;
      LOBYTE(v366) = v342 & 1;
      *(&v366 + 1) = v359[0];
      DWORD1(v366) = *(v359 + 3);
      *(&v366 + 1) = v251;
      sub_100DE40D4(&v362);
      if (v253)
      {
        v256 = v253;
        v257 = v254;
        v258 = v255;
        v259 = sub_1008B4D8C(3u);
        sub_1008B3FEC(v256, v257, v258, v259);

        v260 = swift_allocObject();
        v262 = v346;
        v261 = v347;
        *(v260 + 16) = v346;
        *(v260 + 24) = v261;

        Future.addFailure(block:)();

        v263 = swift_allocObject();
        v263[2] = v121;
        v263[3] = v262;
        v263[4] = v261;

        Future.addSuccess(block:)();

        sub_100165328(v256, v257, v258);
      }

      else
      {
        v264 = static os_log_type_t.error.getter();
        if (qword_1016950A0 != -1)
        {
          v316 = v264;
          swift_once();
          v264 = v316;
        }

        os_log(_:dso:log:_:_:)(v264, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage);
        sub_10025ED18();
        swift_allocError();
        *v265 = 0;
        v346();
      }

      v223 = type metadata accessor for LocalFindableAccessoryRecord;
      v224 = v332;
      return sub_1008B9FC0(v224, v223);
    }

    v226 = *(v117 + 16);
    v225 = *(v117 + 24);
    v227 = __OFSUB__(v225, v226);
    v228 = v225 - v226;
    if (!v227)
    {
LABEL_73:
      if (v228 < -1)
      {
        __break(1u);
      }

      goto LABEL_75;
    }

    __break(1u);
    goto LABEL_64;
  }

  sub_10000B3A8(v52, &qword_1016A9A30, &unk_1013BD120);
  v54 = static os_log_type_t.error.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v55 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_101385D80;
  v57 = UUID.uuidString.getter();
  v59 = v58;
  *(v56 + 56) = &type metadata for String;
  *(v56 + 64) = sub_100008C00();
  *(v56 + 32) = v57;
  *(v56 + 40) = v59;
  os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v55, "updateLostModeServer: beacon/group not found!", 45, 2, v56);

  sub_1008B3F98();
  swift_allocError();
  *v60 = 1;
  v346();
}

void sub_1008B237C(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    v3 = static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      v5 = v3;
      swift_once();
      v3 = v5;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C3E8, "Successfully reverted CK changes.", 33, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      v6 = v4;
      swift_once();
      v4 = v6;
    }

    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C3E8, "Failed to revert CK changes", 27, 2, _swiftEmptyArrayStorage);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1008B2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for LostModeRecord(0);
  v15 = (a1 + v14[8]);

  *v15 = a2;
  v15[1] = a3;
  v16 = (a1 + v14[9]);

  *v16 = a4;
  v16[1] = a5;
  v17 = (a1 + v14[7]);

  *v17 = a6;
  v17[1] = a7;
  return result;
}

void sub_1008B2554(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1008BA6D8(a1, v5);
  dispatch_group_leave(a3);
}

uint64_t sub_1008B25B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeRecord(0);
  v5 = v4[8];
  v7 = *(a2 + v5);
  v6 = *(a2 + v5 + 8);
  v8 = (a1 + v5);

  *v8 = v7;
  v8[1] = v6;
  v9 = v4[9];
  v11 = *(a2 + v9);
  v10 = *(a2 + v9 + 8);
  v12 = (a1 + v9);

  *v12 = v11;
  v12[1] = v10;
  v13 = v4[7];
  v15 = *(a2 + v13);
  v14 = *(a2 + v13 + 8);
  v16 = (a1 + v13);

  *v16 = v15;
  v16[1] = v14;
  return result;
}

void sub_1008B2678(uint64_t a1, NSObject *a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v4);
  v6 = (v16 - v5);
  sub_1008BA218(a1, v16 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177C3E8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v16[1] = v7;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Failed to revert CK changes due to %@", 37, 2, v10);
  }

  else
  {
    sub_10000B3A8(v6, &qword_1016B1840, &qword_1013B68F0);
    v14 = static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      v15 = v14;
      swift_once();
      v14 = v15;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C3E8, "Successfully reverted CK changes.", 33, 2, _swiftEmptyArrayStorage);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1008B28B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  __chkstk_darwin(v120);
  v119 = (&v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for UUID();
  v123 = *(v5 - 8);
  v124 = v5;
  v6 = __chkstk_darwin(v5);
  v122 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v107 - v8;
  v9 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v9);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v12 - 8);
  v14 = &v107 - v13;
  v15 = type metadata accessor for OwnedBeaconRecord(0);
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100AA33AC(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
    v19 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v20 = *(*(v19 - 8) + 56);
    v21 = a2;
    return v20(v21, 1, 1, v19);
  }

  v118 = a2;
  sub_1008BA1A0(v14, v18, type metadata accessor for OwnedBeaconRecord);
  v23 = sub_100314604(*&v18[v15[16]], *&v18[v15[17]]);
  v25 = v23;
  v26 = v24;
  if (v24 >> 60 == 15)
  {
    v114 = 0;
    v115 = 0;
    v117 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  sub_100017D5C(v23, v24);
  v28 = sub_100313B54(v25, v26);
  v30 = v29;
  sub_100006654(v25, v26);
  v115 = Data.hexString.getter();
  v27 = v31;
  result = sub_100016590(v28, v30);
  v32 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v32 != 2)
    {
LABEL_17:
      v36 = Data.subdata(in:)();
      v38 = v37;
      sub_100006654(v25, v26);
      v114 = Data.hexString.getter();
      v117 = v39;
      sub_100016590(v36, v38);
LABEL_18:
      sub_1008B9F58(&v18[v15[6]], v11, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 2)
        {
          sub_1008B9FC0(v18, type metadata accessor for OwnedBeaconRecord);
          sub_100006654(v25, v26);

          v67 = type metadata accessor for AirPodsLostModeContent.Device(0);
          (*(*(v67 - 8) + 56))(v118, 1, 1, v67);
          return sub_1008B9FC0(v11, type metadata accessor for StableIdentifier);
        }

        v116 = v27;
        v41 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v42 = &v11[v41[12]];
        v43 = *v42;
        v122 = *(v42 + 1);
        v44 = &v11[v41[16]];
        v45 = *(v44 + 1);
        v110 = *v44;
        v111 = v43;
        v46 = &v11[v41[20]];
        v48 = *v46;
        v47 = *(v46 + 1);

        v49 = v123;
        v50 = v121;
        v51 = v11;
        v52 = v124;
        v112 = *(v123 + 32);
        v113 = v123 + 32;
        v112(v121, v51, v124);
        v125 = v48;
        v126 = v47;
        sub_1000DF96C();
        v53 = Data.init<A>(hexString:)();
        if (v54 >> 60 == 15)
        {

          sub_100006654(v25, v26);
          (*(v49 + 8))(v50, v52);
          sub_1008B9FC0(v18, type metadata accessor for OwnedBeaconRecord);
          v19 = type metadata accessor for AirPodsLostModeContent.Device(0);
          v20 = *(*(v19 - 8) + 56);
          v21 = v118;
          return v20(v21, 1, 1, v19);
        }

        v68 = v54;
        v69 = v122;
        v70 = v53;
        if (v45)
        {
          v125 = v110;
          v126 = v45;
          v123 = Data.init<A>(hexString:)();
          v110 = v71;
          v72 = v124;
          if (v69)
          {
LABEL_27:
            v125 = v111;
            v126 = v69;
            v73 = Data.init<A>(hexString:)();
            v75 = v74;
            sub_100006654(v25, v26);
            sub_1008B9FC0(v18, type metadata accessor for OwnedBeaconRecord);
LABEL_36:
            v87 = sub_1000BC4D4(&qword_1016ACF10, &qword_1013E9420);
            v88 = v87[20];
            v89 = v119;
            v90 = (v119 + v87[24]);
            v91 = (v119 + v87[28]);
            v92 = v110;
            *v119 = v123;
            *(v89 + 1) = v92;
            *(v89 + 2) = v73;
            *(v89 + 3) = v75;
            *(v89 + 4) = v70;
            *(v89 + 5) = v68;
            v112(&v89[v88], v121, v72);
            v93 = v116;
            *v90 = v115;
            v90[1] = v93;
            v94 = v117;
            *v91 = v114;
            v91[1] = v94;
            swift_storeEnumTagMultiPayload();
            v95 = v118;
            v96 = v118;
            v97 = v89;
LABEL_37:
            sub_100DE3528(v97, v96);
            v98 = type metadata accessor for AirPodsLostModeContent.Device(0);
            return (*(*(v98 - 8) + 56))(v95, 0, 1, v98);
          }
        }

        else
        {
          v123 = 0;
          v110 = 0xF000000000000000;
          v72 = v124;
          if (v122)
          {
            goto LABEL_27;
          }
        }

        sub_100006654(v25, v26);
        sub_1008B9FC0(v18, type metadata accessor for OwnedBeaconRecord);
        v73 = 0;
        v75 = 0xF000000000000000;
        goto LABEL_36;
      }

      v116 = v27;
      v55 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v56 = &v11[v55[12]];
      v57 = *v56;
      v121 = *(v56 + 1);
      v58 = &v11[v55[16]];
      v60 = *v58;
      v59 = *(v58 + 1);
      v61 = &v11[v55[20]];
      v62 = *(v61 + 1);
      v112 = *v61;
      v113 = v57;
      v63 = v123;
      v64 = v124;
      v110 = *(v123 + 32);
      v111 = v123 + 32;
      v110(v122, v11, v124);
      v125 = v60;
      v126 = v59;
      sub_1000DF96C();
      v65 = Data.init<A>(hexString:)();
      if (v66 >> 60 == 15)
      {

        sub_100006654(v25, v26);
        (*(v63 + 8))(v122, v64);
      }

      else
      {
        v108 = v65;
        v109 = v66;
        v125 = v113;
        v126 = v121;
        v76 = Data.init<A>(hexString:)();
        if (v77 >> 60 != 15)
        {
          v80 = v76;
          v81 = v77;
          v125 = v112;
          v126 = v62;
          v82 = Data.init<A>(hexString:)();
          v84 = v83;
          sub_100006654(v25, v26);
          sub_1008B9FC0(v18, type metadata accessor for OwnedBeaconRecord);
          v85 = v122;
          v86 = v116;
          if (v84 >> 60 != 15)
          {
            v99 = sub_1000BC4D4(&qword_1016ACF10, &qword_1013E9420);
            v100 = v99[20];
            v101 = v119;
            v102 = (v119 + v99[24]);
            v103 = (v119 + v99[28]);
            v104 = v109;
            *v119 = v108;
            *(v101 + 1) = v104;
            *(v101 + 2) = v80;
            *(v101 + 3) = v81;
            *(v101 + 4) = v82;
            *(v101 + 5) = v84;
            v110(&v101[v100], v85, v124);
            v105 = v114;
            *v102 = v115;
            v102[1] = v86;
            v106 = v117;
            *v103 = v105;
            v103[1] = v106;
            swift_storeEnumTagMultiPayload();
            v95 = v118;
            v96 = v118;
            v97 = v101;
            goto LABEL_37;
          }

          (*(v123 + 8))(v122, v124);
          sub_100006654(v108, v109);
          sub_100006654(v80, v81);

LABEL_31:
          v78 = v118;
          v79 = type metadata accessor for AirPodsLostModeContent.Device(0);
          return (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
        }

        sub_100006654(v108, v109);

        sub_100006654(v25, v26);
        (*(v123 + 8))(v122, v124);
      }

      sub_1008B9FC0(v18, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_31;
    }

    v34 = *(v25 + 16);
    v33 = *(v25 + 24);
    v35 = v33 - v34;
    if (!__OFSUB__(v33, v34))
    {
LABEL_15:
      sub_100017D5C(v25, v26);
      if (v35 < -1)
      {
        __break(1u);
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v32)
  {
    goto LABEL_17;
  }

  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    v35 = HIDWORD(v25) - v25;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B3384(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Failed to submit lost mode info due to. Error - %@", 50, 2, v6);

  return a2(a1);
}

uint64_t sub_1008B34C4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v4 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  __chkstk_darwin(v4 - 8);
  v32 = v29 - v5;
  v6 = type metadata accessor for ServerStatusCode();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v29[3] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LostModeResponse(0);
  v9 = __chkstk_darwin(v8);
  v31 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = static os_log_type_t.debug.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  v30 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  v16 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v29[1] = sub_1008BA074(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
  v29[2] = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v15 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v35 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "updateLostModeServer raw response %@.", 37, 2, v15);

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v21 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v23 = v22;
  sub_1008BA074(&qword_1016ACF18, type metadata accessor for LostModeResponse, "Ł%");
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v21, v23);
  v24 = static os_log_type_t.default.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v30;
  sub_1008B9F58(v12, v31, type metadata accessor for LostModeResponse);
  v26 = String.init<A>(describing:)();
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = v20;
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v35, "updateLostModeServer: LostModeResponse %@.", 42, 2, v25);

  sub_1008B98F0(v12, v36);

  return sub_1008B9FC0(v12, type metadata accessor for LostModeResponse);
}

uint64_t sub_1008B3A5C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C3E8, "Removing lost mode info from server", 35, 2, _swiftEmptyArrayStorage);
    v12 = swift_allocObject();
    v12[2] = a4;
    v12[3] = a2;
    v12[4] = a3;

    sub_1008B3C38(a5, sub_1008BA0BC, v12);
  }
}

uint64_t sub_1008B3BB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    a3(a1);
  }

  else
  {
    sub_100A8306C(0xCu);
    return (a3)(0);
  }
}

uint64_t sub_1008B3C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_1008B9F58(a1, v9, type metadata accessor for LostModeRecord);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Attempting to remove: %@", 24, 2, v13);

  sub_100B156CC(a1, v3, sub_1008BA0C8, v10);
}

uint64_t sub_1008B3E10(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      v7 = v3;
      swift_once();
      v3 = v7;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C3E8, "Lost mode record removed", 24, 2, _swiftEmptyArrayStorage);
    return (a2)(0);
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C3E8, "Failed to remove Lost mode record.", 34, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v6 = 6;
    a2();
  }
}

unint64_t sub_1008B3F98()
{
  result = qword_1016ACEE0;
  if (!qword_1016ACEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACEE0);
  }

  return result;
}

uint64_t sub_1008B3FEC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-1] - v10;
  v27[3] = &type metadata for AirPodsLostModeRequest;
  v12 = sub_1008BA020();
  v27[0] = a1;
  v27[1] = a2;
  v27[4] = v12;
  v27[2] = a3;
  v13 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v13 lock];
  *(a4 + qword_1016A2668) = 0;
  [v13 unlock];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_10025EDD4(0, 0, v11, &unk_1013C2580, v16);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v17 = Future.init()();
  v18 = qword_1016A2650;
  v19 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v18, v26);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_10000A748(v26, v20 + 24);
  *(v20 + 64) = v19;

  sub_1004EAA98(v27, v25);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1008BA890;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0;
  *(v22 + 40) = v21;
  *(v22 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v27);
  return v17;
}

uint64_t sub_1008B4354(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-1] - v10;
  v27[3] = &type metadata for AccessoryLostModeRequest;
  v12 = sub_1008B5514();
  v27[0] = a1;
  v27[1] = a2;
  v27[4] = v12;
  v27[2] = a3;
  v13 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v13 lock];
  *(a4 + qword_1016A2668) = 0;
  [v13 unlock];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_10025EDD4(0, 0, v11, &unk_1013C2578, v16);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v17 = Future.init()();
  v18 = qword_1016A2650;
  v19 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v18, v26);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_10000A748(v26, v20 + 24);
  *(v20 + 64) = v19;

  sub_1004EAA98(v27, v25);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1008BA890;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0;
  *(v22 + 40) = v21;
  *(v22 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v27);
  return v17;
}

uint64_t sub_1008B46BC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-1] - v10;
  v27[3] = &type metadata for LostModeRequest;
  v12 = sub_1008B54AC();
  v27[0] = a1;
  v27[1] = a2;
  v27[4] = v12;
  v27[2] = a3;
  v13 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v13 lock];
  *(a4 + qword_1016A2668) = 0;
  [v13 unlock];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_10025EDD4(0, 0, v11, &unk_1013AB550, v16);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v17 = Future.init()();
  v18 = qword_1016A2650;
  v19 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v18, v26);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_10000A748(v26, v20 + 24);
  *(v20 + 64) = v19;

  sub_1004EAA98(v27, v25);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1008B5500;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0;
  *(v22 + 40) = v21;
  *(v22 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v27);
  return v17;
}

uint64_t sub_1008B4A24(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-1] - v10;
  v27[3] = &type metadata for ConfigurationRequest;
  v12 = sub_1008BA0D0();
  v27[0] = a1;
  v27[1] = a2;
  v27[4] = v12;
  v27[2] = a3;
  v13 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v13 lock];
  *(a4 + qword_1016A2668) = 0;
  [v13 unlock];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_10025EDD4(0, 0, v11, &unk_1013C2588, v16);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v17 = Future.init()();
  v18 = qword_1016A2650;
  v19 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v18, v26);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_10000A748(v26, v20 + 24);
  *(v20 + 64) = v19;

  sub_1004EAA98(v27, v25);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1008BA890;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0;
  *(v22 + 40) = v21;
  *(v22 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v27);
  return v17;
}

uint64_t sub_1008B4D8C(unsigned __int8 a1)
{
  v2 = type metadata accessor for URLComponents();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMNAccountType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  type metadata accessor for FindMyAppURLSessionFactory(0);
  swift_allocObject();
  v12 = type metadata accessor for FMNMockingPreferences();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v14 = (v6 + 104);
  if (a1 > 1u)
  {
    v15 = type metadata accessor for AirPodsLostModeEndPoint(0);
    v48 = v15;
    v49 = sub_1008BA074(&qword_1016ACF28, type metadata accessor for AirPodsLostModeEndPoint, "Ae$");
    v16 = sub_1000280DC(v47);
    v17 = &enum case for FMNAccountType.w2Accessory(_:);
    goto LABEL_5;
  }

  if (!a1)
  {
    v15 = type metadata accessor for LostModeEndPoint(0);
    v48 = v15;
    v49 = sub_1008BA074(&qword_1016ACF38, type metadata accessor for LostModeEndPoint, &unk_1013D0A14);
    v16 = sub_1000280DC(v47);
    v17 = &enum case for FMNAccountType.searchParty(_:);
LABEL_5:
    v18 = *v17;
    v19 = *v14;
    (*v14)(v8, v18, v5);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();

    *v16 = sub_1010B32C8(v8);
    v19(v16 + *(v15 + 20), v18, v5);
    goto LABEL_7;
  }

  v48 = type metadata accessor for AccessoryLostModeEndPoint(0);
  v49 = sub_1008BA074(&qword_1016ACF30, type metadata accessor for AccessoryLostModeEndPoint, &unk_1013B0A8C);
  v20 = sub_1000280DC(v47);
  (*v14)(v20, enum case for FMNAccountType.accessory(_:), v5);

LABEL_7:
  if (qword_101694A30 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B570);
  sub_10001F280(v47, v44);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    sub_1000035D0(v44, v45);
    dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
    sub_1008BA074(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
    v26 = v42;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v41 + 8))(v4, v26);
    sub_100007BAC(v44);
    v30 = sub_1000136BC(v27, v29, &v43);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Lost Mode endpoint: %{private,mask.hash}s", v24, 0x16u);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100007BAC(v44);
  }

  v31 = type metadata accessor for ServerInteractionController(0);
  sub_10001F280(v47, v44);
  v32 = v45;
  v33 = v46;
  v34 = sub_10015049C(v44, v45);
  __chkstk_darwin(v34);
  v36 = &v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36);
  v38 = sub_1004EB11C(v36, v13, v31, v32, v33);

  sub_100007BAC(v44);
  sub_100007BAC(v47);
  return v38;
}

unint64_t sub_1008B54AC()
{
  result = qword_1016ACF00;
  if (!qword_1016ACF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF00);
  }

  return result;
}

unint64_t sub_1008B5514()
{
  result = qword_1016ACF08;
  if (!qword_1016ACF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF08);
  }

  return result;
}

uint64_t sub_1008B5568()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1008B55B0(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v39 = a2;
  v4 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for LostModeRecord(0);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v32 - v10;
  v40 = swift_allocObject();
  *(v40 + 16) = a3;
  v36 = a3;
  _Block_copy(a3);
  v11 = static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v32 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  v14 = UUID.uuidString.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 64) = v17;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v33 = v12;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "disableLostMode for beacon %@.", 30, 2, v13);

  v18 = v39;
  sub_100ABD87C(v6);
  v19 = v37;
  if ((*(v37 + 48))(v6, 1, v38) == 1)
  {
    sub_10000B3A8(v6, &unk_1016A99E0, &qword_1013A07B0);
    v20 = static os_log_type_t.error.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    v22 = UUID.uuidString.getter();
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = v17;
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v33, "lostModeRecord not found for %@.", 32, 2, v21);

    sub_1008B3F98();
    swift_allocError();
    *v24 = 0;
    v25 = _convertErrorToNSError(_:)();
    v36[2](v36, v25);
  }

  else
  {
    v26 = v35;
    sub_1008BA1A0(v6, v35, type metadata accessor for LostModeRecord);
    v27 = v34;
    sub_1008B9F58(v26, v34, type metadata accessor for LostModeRecord);
    v28 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v29 = swift_allocObject();
    v30 = v40;
    v29[2] = sub_10001E370;
    v29[3] = v30;
    v29[4] = v18;
    sub_1008BA1A0(v27, v29 + v28, type metadata accessor for LostModeRecord);

    sub_1008AFE18(v26, 0, sub_1008BA790, v29);

    sub_1008B9FC0(v26, type metadata accessor for LostModeRecord);
  }
}

void sub_1008B59FC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8, void (**a9)(void, void))
{
  v123 = a7;
  v115 = a6;
  v116 = a5;
  v117 = a3;
  v112 = a2;
  v12 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v12);
  v113 = (v99 - v13);
  v14 = type metadata accessor for LostModeRecord(0);
  v109 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v118 = (v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = v16;
  __chkstk_darwin(v15);
  v18 = v99 - v17;
  v19 = static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v119 = a9;
  v20 = qword_10177C3E8;
  v21 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  v124 = xmmword_101385D80;
  *(v22 + 16) = xmmword_101385D80;
  sub_1008B9F58(a1, v18, type metadata accessor for LostModeRecord);
  v121 = v18;
  v23 = String.init<A>(describing:)();
  v120 = a1;
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  v26 = sub_100008C00();
  *(v22 + 64) = v26;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v114 = v20;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Updating existing lost mode record %@.", 38, 2, v22);

  v27 = dispatch_group_create();
  dispatch_group_enter(v27);
  v28 = swift_allocBox();
  v30 = v29;
  sub_1008B3F98();
  v31 = swift_allocError();
  *v32 = 8;
  *v30 = v31;
  v110 = v30;
  swift_storeEnumTagMultiPayload();
  v105 = a8;
  v33 = *(a8 + 280);
  v34 = swift_allocObject();
  v35 = v115;
  v36 = v116;
  v34[2] = a4;
  v34[3] = v36;
  v37 = v123;
  v34[4] = v35;
  v34[5] = v37;
  v38 = v117;
  v34[6] = v112;
  v34[7] = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v28;
  *(v39 + 24) = v27;
  v108 = v39;

  v117 = v28;

  v111 = v27;

  v40 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v112 = v12;
  v41 = qword_10177C380;
  v116 = v21;
  v42 = swift_allocObject();
  *(v42 + 16) = v124;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v26;
  v115 = v26;
  *(v42 + 32) = 0x65736C6166;
  *(v42 + 40) = 0xE500000000000000;
  v104 = v41;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Modify record. Disk First? (%@)", 31, 2, v42);

  v43 = objc_autoreleasePoolPush();
  v44 = v120;
  sub_1011217C0(v120);
  v123 = v45;
  objc_autoreleasePoolPop(v43);
  v46 = sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  v47 = type metadata accessor for CloudKitCoordinator();
  v103 = v46;
  v101 = v47;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v100 = 0;
  v48 = v121;
  sub_1008B9F58(v44, v121, type metadata accessor for LostModeRecord);
  v49 = *(v109 + 80);
  v122 = v33;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1008BA174;
  *(v50 + 24) = v34;
  v109 = type metadata accessor for LostModeRecord;
  v102 = (v49 + 32) & ~v49;
  sub_1008BA1A0(v48, v50 + v102, type metadata accessor for LostModeRecord);

  sub_100FDCA40(v123, sub_1008BA208, v50);

  v51 = swift_allocObject();
  v52 = v108;
  *(v51 + 16) = sub_1008BA184;
  *(v51 + 24) = v52;

  Future.addFailure(block:)();

  sub_1008B9F58(v44, v48, type metadata accessor for LostModeRecord);
  v53 = (v49 + 16) & ~v49;
  v54 = v122;
  v99[1] = v53 + v125;
  v55 = ((v53 + v125 + 7) & 0xFFFFFFFFFFFFFFF8);
  v107 = v49;
  v56 = swift_allocObject();
  v106 = v53;
  sub_1008BA1A0(v48, v56 + v53, v109);
  *&v55[v56] = v54;
  v109 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
  v57 = (v109 + v56);
  *v57 = sub_1008BA184;
  v57[1] = v52;

  Future.addSuccess(block:)();

  v58 = v111;
  OS_dispatch_group.wait()();
  v59 = v110;
  swift_beginAccess();
  v60 = v59;
  v61 = v113;
  sub_1008BA218(v60, v113);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = *v61;
    v63 = static os_log_type_t.error.getter();
    v64 = swift_allocObject();
    *(v64 + 16) = v124;
    v127 = v62;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v65 = String.init<A>(describing:)();
    v66 = v114;
    v67 = v115;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = v67;
    *(v64 + 32) = v65;
    *(v64 + 40) = v68;
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v66, "Unable to update LostModeRecord due to %@", 41, 2, v64);

    swift_errorRetain();
    v69 = _convertErrorToNSError(_:)();
    (v119)[2](v119, v69);

LABEL_11:

    return;
  }

  v123 = v55;
  v70 = v118;
  sub_1008BA1A0(v61, v118, type metadata accessor for LostModeRecord);
  v71 = static os_log_type_t.default.getter();
  v72 = v114;
  os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v114, "Successfully updated LostModeRecord.", 36, 2, _swiftEmptyArrayStorage);
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  dispatch_group_enter(v58);
  v74 = v58;

  sub_1008B6940(v70, 1, v105, v73, v74, &unk_101639908, &unk_101639A20, sub_100721A80, sub_1008BA8A0, &unk_101639A48, sub_1008BA88C, &unk_1016399D0, sub_1008BA8A0, &unk_1016399F8, sub_1008BA88C, sub_1008BA870, &unk_101639980, sub_1008BA8A0, &unk_1016399A8, sub_1008BA88C, &unk_101639930, sub_1008BA8A0, &unk_101639958, sub_1008BA88C);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  v75 = *(v73 + 16);
  v76 = v115;
  if (!v75)
  {
    v98 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v72, "updateLostModeServer succeeded", 30, 2, _swiftEmptyArrayStorage);
    sub_100A8306C(0xCu);
    v119[2](v119, 0);

    sub_1008B9FC0(v118, type metadata accessor for LostModeRecord);

    goto LABEL_11;
  }

  v113 = v73;
  swift_errorRetain();
  v77 = static os_log_type_t.error.getter();
  v78 = swift_allocObject();
  *(v78 + 16) = v124;
  v126 = v75;
  v112 = v75;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v79 = String.init<A>(describing:)();
  *(v78 + 56) = &type metadata for String;
  *(v78 + 64) = v76;
  *(v78 + 32) = v79;
  *(v78 + 40) = v80;
  os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v72, "updateLostModeServer failed - %@. Reverting CK changes", 54, 2, v78);

  dispatch_group_enter(v74);
  v81 = v121;
  sub_1008B9F58(v120, v121, type metadata accessor for LostModeRecord);
  v82 = swift_allocObject();
  sub_1008BA1A0(v81, v82 + v106, type metadata accessor for LostModeRecord);
  v83 = swift_allocObject();
  *(v83 + 16) = v74;
  v120 = v74;
  v84 = static os_log_type_t.default.getter();
  v85 = swift_allocObject();
  *(v85 + 16) = v124;
  *(v85 + 56) = &type metadata for String;
  *(v85 + 64) = v76;
  *(v85 + 32) = 0x65736C6166;
  *(v85 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v104, "Modify record. Disk First? (%@)", 31, 2, v85);

  v86 = objc_autoreleasePoolPush();
  v87 = v118;
  v88 = v100;
  sub_1011217C0(v118);
  *&v124 = v89;
  if (!v88)
  {
    objc_autoreleasePoolPop(v86);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1008B9F58(v87, v81, type metadata accessor for LostModeRecord);
    v90 = v102;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1008BA288;
    *(v91 + 24) = v82;
    sub_1008BA1A0(v81, v91 + v90, type metadata accessor for LostModeRecord);

    sub_100FDCA40(v124, sub_1008BA898, v91);

    v92 = swift_allocObject();
    *(v92 + 16) = sub_1008BA2F8;
    *(v92 + 24) = v83;

    Future.addFailure(block:)();

    sub_1008B9F58(v87, v81, type metadata accessor for LostModeRecord);
    v93 = v109;
    v94 = swift_allocObject();
    sub_1008BA1A0(v81, v94 + v106, type metadata accessor for LostModeRecord);
    *&v123[v94] = v122;
    v95 = (v93 + v94);
    *v95 = sub_1008BA2F8;
    v95[1] = v83;

    Future.addSuccess(block:)();

    v96 = v120;
    OS_dispatch_group.wait()();
    swift_errorRetain();
    v97 = _convertErrorToNSError(_:)();
    (v119)[2](v119, v97);

    sub_1008B9FC0(v87, type metadata accessor for LostModeRecord);

    goto LABEL_11;
  }

  _Block_release(v119);
  objc_autoreleasePoolPop(v86);
  __break(1u);
}

uint64_t sub_1008B6940(uint64_t a1, int a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(char *), uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(void, void))
{
  v378 = a8;
  v358 = a7;
  v395 = a6;
  v391 = a5;
  v384 = a2;
  v398 = a1;
  v399 = 0;
  v370 = type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  __chkstk_darwin(v370);
  v373 = (&v357 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_1000BC4D4(&qword_1016ACED0, &qword_1013C2560);
  __chkstk_darwin(v27 - 8);
  v393 = &v357 - v28;
  v392 = type metadata accessor for AirPodsLostModeContent.Device(0);
  v379 = *(v392 - 8);
  v29 = __chkstk_darwin(v392);
  v363 = &v357 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v359 = &v357 - v31;
  v32 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  __chkstk_darwin(v32 - 8);
  v376 = &v357 - v33;
  v377 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v375 = *(v377 - 8);
  __chkstk_darwin(v377);
  v372 = &v357 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = type metadata accessor for AccessoryLostModeRequestContent(0);
  v35 = __chkstk_darwin(v368);
  v362 = &v357 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v369 = &v357 - v37;
  v38 = type metadata accessor for Date();
  v366 = *(v38 - 8);
  v367 = v38;
  __chkstk_darwin(v38);
  v365 = &v357 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = type metadata accessor for LostModeRequestContent(0);
  __chkstk_darwin(v360);
  v361 = &v357 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  v396 = v41;
  v397 = v42;
  v43 = __chkstk_darwin(v41);
  v394 = &v357 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v364 = &v357 - v46;
  v47 = __chkstk_darwin(v45);
  v386 = &v357 - v48;
  __chkstk_darwin(v47);
  v371 = &v357 - v49;
  v382 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v382);
  v383 = (&v357 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v51 - 8);
  v53 = (&v357 - v52);
  v380 = type metadata accessor for OwnedBeaconGroup(0);
  v54 = *(v380 - 8);
  __chkstk_darwin(v380);
  v388 = &v357 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LostModeRecord(0);
  v57 = __chkstk_darwin(v56);
  v374 = &v357 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v381 = &v357 - v59;
  v60 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v60 - 8);
  v62 = &v357 - v61;
  v63 = type metadata accessor for OwnedBeaconRecord(0);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v357 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = swift_allocObject();
  v68 = a4;
  *(v67 + 16) = a4;
  v389 = v56;
  v390 = v67;
  v69 = v391;
  *(v67 + 24) = v391;
  v395 = a3;
  v70 = v398 + *(v56 + 24);
  v387 = v68;

  v391 = v69;
  sub_100AA33AC(v70, v62);
  v71 = *(v64 + 48);
  v385 = v63;
  if (v71(v62, 1, v63) != 1)
  {
    v85 = v70;
    sub_1008BA1A0(v62, v66, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694A30 != -1)
    {
LABEL_97:
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177B570);
    v87 = v381;
    sub_1008B9F58(v398, v381, type metadata accessor for LostModeRecord);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v406 = v91;
      *v90 = 141558275;
      *(v90 + 4) = 1752392040;
      *(v90 + 12) = 2081;
      sub_1008BA074(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      sub_1008B9FC0(v87, type metadata accessor for LostModeRecord);
      v95 = sub_1000136BC(v92, v94, &v406);

      *(v90 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v88, v89, "updateLostModeServer for beacon %{private,mask.hash}s", v90, 0x16u);
      sub_100007BAC(v91);
    }

    else
    {

      sub_1008B9FC0(v87, type metadata accessor for LostModeRecord);
    }

    v109 = v397;
    v110 = v383;
    sub_1008B9F58(v66 + *(v385 + 24), v383, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v112 = v386;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v139 = v110[1];
        v399 = *v110;
        v151 = v110[3];
        v252 = v110[4];
        v129 = v110[5];
        v393 = v110[2];
        v394 = v252;
        v147 = sub_100D5F668();
        if (v148 >> 60 == 15)
        {

          v253 = v391;
LABEL_90:
          v348 = static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            v354 = v348;
            swift_once();
            v348 = v354;
          }

          os_log(_:dso:log:_:_:)(v348, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage, v357, v358);
          sub_10025ED18();
          v349 = swift_allocError();
          *v350 = 0;
          v351 = v387;
          swift_beginAccess();
          *(v351 + 16) = v349;
          swift_errorRetain();

          v120 = v253;
          goto LABEL_93;
        }

LABEL_63:
        v262 = v147;
        v121 = v148;
        v386 = v151;
        (*(v109 + 16))(v364, v85, v396);
        v263 = sub_100313B54(v262, v121);
        v265 = v264;
        v109 = Data.hexString.getter();
        v267 = v266;
        sub_100016590(v263, v265);
        v268 = v121 >> 62;
        v357 = v66;
        v392 = v139;
        v388 = v129;
        v385 = v109;
        v383 = v267;
        if ((v121 >> 62) > 1)
        {
          if (v268 != 2)
          {
LABEL_87:
            v305 = Data.subdata(in:)();
            v307 = v306;
            v308 = Data.hexString.getter();
            v382 = v121;
            v309 = v308;
            v311 = v310;
            sub_100016590(v305, v307);
            v312 = (v398 + *(v389 + 36));
            v313 = *v312;
            v314 = v312[1];
            v315 = (v398 + *(v389 + 28));
            v316 = *v315;
            v317 = v315[1];
            v318 = (v398 + *(v389 + 32));
            v320 = *v318;
            v319 = v318[1];
            v321 = *(v397 + 32);
            v398 = v262;
            v322 = v361;
            v321(v361, v364, v396);
            v323 = v360;
            v324 = (v322 + *(v360 + 20));
            v325 = v386;
            *v324 = v393;
            v324[1] = v325;
            v326 = (v322 + v323[6]);
            v327 = v392;
            *v326 = v399;
            v326[1] = v327;
            v328 = (v322 + v323[7]);
            v329 = v388;
            *v328 = v394;
            v328[1] = v329;
            v330 = (v322 + v323[8]);
            v331 = v383;
            *v330 = v385;
            v330[1] = v331;
            v332 = (v322 + v323[9]);
            *v332 = v309;
            v332[1] = v311;
            *(v322 + v323[10]) = xmmword_1013C2550;
            v333 = (v322 + v323[11]);
            *v333 = v313;
            v333[1] = v314;
            v334 = (v322 + v323[12]);
            *v334 = v316;
            v334[1] = v317;
            v335 = (v322 + v323[13]);
            *v335 = v320;
            v335[1] = v319;
            v336 = (v322 + v323[14]);
            *v336 = 0x746C7561666564;
            v336[1] = 0xE700000000000000;
            *(v322 + v323[15]) = v384 & 1;

            sub_100F00C24(v322);
            if (v337)
            {
              v340 = v337;
              v341 = v338;
              v342 = v339;
              v399 = a11;
              v343 = sub_1008B4D8C(0);
              sub_1008B46BC(v340, v341, v342, v343);

              v344 = swift_allocObject();
              v345 = v378;
              v346 = v390;
              *(v344 + 16) = v378;
              *(v344 + 24) = v346;

              Future.addFailure(block:)();

              v347 = swift_allocObject();
              v347[2] = v395;
              v347[3] = v345;
              v347[4] = v346;

              Future.addSuccess(block:)();

              sub_100165328(v340, v341, v342);
              sub_100006654(v398, v382);
              sub_1008B9FC0(v357, type metadata accessor for OwnedBeaconRecord);
            }

            sub_100006654(v398, v382);
            v253 = v391;
            v66 = v357;
            goto LABEL_90;
          }

          v303 = *(v262 + 16);
          v302 = *(v262 + 24);
          v260 = __OFSUB__(v302, v303);
          v304 = v302 - v303;
          if (!v260)
          {
LABEL_85:
            if (v304 < -1)
            {
              __break(1u);
            }

            goto LABEL_87;
          }

          __break(1u);
        }

        else if (!v268)
        {
          goto LABEL_87;
        }

        LODWORD(v304) = HIDWORD(v262) - v262;
        if (__OFSUB__(HIDWORD(v262), v262))
        {
LABEL_99:
          __break(1u);
LABEL_100:

          __break(1u);
          goto LABEL_101;
        }

        v304 = v304;
        goto LABEL_85;
      }
    }

    else
    {
      v113 = v396;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v191 = v371;
        (*(v109 + 32))(v371, v110, v113);
        v192 = *(v109 + 16);
        v192(v112, v191, v113);
        v193 = (v398 + *(v389 + 36));
        v194 = v193[1];
        v394 = *v193;
        v195 = (v398 + *(v389 + 28));
        v196 = *v195;
        v197 = v195[1];
        v198 = (v398 + *(v389 + 32));
        v199 = *v198;
        v109 = v198[1];
        v392 = v196;
        v393 = v199;

        v398 = v194;

        v200 = sub_100907E70(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v406 = v200;
        sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
        v121 = v406;
        v202 = [objc_opt_self() currentDevice];
        if (v202)
        {
          v203 = v202;
          v389 = v192;
          v357 = v66;
          v204 = [v202 serverFriendlyDescription];

          if (v204)
          {
            v205 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v207 = v206;

            v208 = swift_isUniquelyReferenced_nonNull_native();
            *&v406 = v121;
            sub_100FFACA0(v205, v207, 0xD000000000000011, 0x800000010134EA40, v208);
            v209 = v406;
            v210 = v365;
            Date.init()();
            v211 = Date.epoch.getter();
            (*(v366 + 8))(v210, v367);
            *&v406 = v211;
            v212 = dispatch thunk of CustomStringConvertible.description.getter();
            v214 = v213;
            v215 = swift_isUniquelyReferenced_nonNull_native();
            *&v406 = v209;
            sub_100FFACA0(v212, v214, 0xD000000000000015, 0x800000010134EA60, v215);
            v216 = v406;
            *&v406 = 1;
            v217 = dispatch thunk of CustomStringConvertible.description.getter();
            v219 = v218;
            v220 = swift_isUniquelyReferenced_nonNull_native();
            *&v406 = v216;
            sub_100FFACA0(v217, v219, 0xD000000000000013, 0x800000010134EA80, v220);
            v221 = v406;
            v223 = sub_1008D9A78(v222);
            v225 = v224;
            v226 = swift_isUniquelyReferenced_nonNull_native();
            *&v406 = v221;
            sub_100FFACA0(v223, v225, 0x6567412D72657355, 0xEA0000000000746ELL, v226);
            v388 = v406;
            v227 = v369;
            v228 = v386;
            (v389)(v369, v386, v396);
            v229 = v368;
            *(v227 + *(v368 + 20)) = xmmword_1013C2550;
            v230 = (v227 + v229[6]);
            v231 = v398;
            *v230 = v394;
            v230[1] = v231;
            v232 = (v227 + v229[7]);
            v233 = v393;
            *v232 = v392;
            v232[1] = v197;
            v234 = (v227 + v229[8]);
            *v234 = v233;
            v234[1] = v109;
            *(v227 + v229[9]) = v384 & 1;
            type metadata accessor for JSONEncoder();
            swift_allocObject();
            JSONEncoder.init()();
            sub_1008BA074(&qword_1016ACEF8, type metadata accessor for AccessoryLostModeRequestContent, &unk_1013F33B8);
            v235 = v399;
            v236 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            if (v235)
            {

              v238 = static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v239 = swift_allocObject();
              *(v239 + 16) = xmmword_101385D80;
              sub_1008B9F58(v227, v362, type metadata accessor for AccessoryLostModeRequestContent);
              v240 = String.init<A>(describing:)();
              v242 = v241;
              *(v239 + 56) = &type metadata for String;
              *(v239 + 64) = sub_100008C00();
              *(v239 + 32) = v240;
              *(v239 + 40) = v242;
              sub_10039722C();
              v243 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v238, &_mh_execute_header, v243, "Failed to encode lost mode request content %@", 45, 2, v239);

              sub_1008B9FC0(v227, type metadata accessor for AccessoryLostModeRequestContent);
              v244 = v396;
              v245 = *(v397 + 8);
              v245(v228, v396);

              v246 = static os_log_type_t.error.getter();
              if (qword_1016950A0 != -1)
              {
                v355 = v246;
                swift_once();
                v246 = v355;
              }

              os_log(_:dso:log:_:_:)(v246, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage);
              sub_10025ED18();
              v247 = swift_allocError();
              *v248 = 0;
              v249 = v387;
              swift_beginAccess();
              *(v249 + 16) = v247;
              swift_errorRetain();

              dispatch_group_leave(v391);

              v245(v371, v244);
              v250 = type metadata accessor for OwnedBeaconRecord;
              v251 = v357;
            }

            else
            {
              v398 = a15;
              v269 = v236;
              v270 = v237;

              sub_1008B9FC0(v227, type metadata accessor for AccessoryLostModeRequestContent);
              v399 = *(v397 + 8);
              v399(v228, v396);
              v271 = v388;

              sub_100017D5C(v269, v270);

              v394 = v269;
              sub_100016590(v269, v270);
              if (sub_100E0EA64(*(v357 + *(v385 + 64)), *(v357 + *(v385 + 68))))
              {
                v272 = 2;
              }

              else
              {
                v272 = 1;
              }

              v273 = sub_1008B4D8C(v272);
              sub_1008B4354(v271, v269, v270, v273);

              v274 = swift_allocObject();
              v275 = v378;
              v276 = v390;
              *(v274 + 16) = v378;
              *(v274 + 24) = v276;

              Future.addFailure(block:)();

              v277 = swift_allocObject();
              v277[2] = v395;
              v277[3] = v275;
              v277[4] = v276;

              Future.addSuccess(block:)();

              sub_100016590(v394, v270);
              v399(v371, v396);
              v250 = type metadata accessor for OwnedBeaconRecord;
              v251 = v357;
            }

            goto LABEL_94;
          }

          goto LABEL_103;
        }

LABEL_102:

        __break(1u);
LABEL_103:

        __break(1u);
        goto LABEL_104;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        sub_1008B3F98();
        v114 = swift_allocError();
        *v115 = 7;
        v116 = v387;
        swift_beginAccess();
        *(v116 + 16) = v114;
        swift_errorRetain();

        dispatch_group_leave(v391);

        sub_1008B9FC0(v66, type metadata accessor for OwnedBeaconRecord);
        (*(v109 + 8))(v110, v113);
      }
    }

    sub_1008B9FC0(v110, type metadata accessor for StableIdentifier);
    sub_1008B3F98();
    v117 = swift_allocError();
    *v118 = 7;
    v119 = v387;
    swift_beginAccess();
    *(v119 + 16) = v117;
    swift_errorRetain();

    v120 = v391;
LABEL_93:
    dispatch_group_leave(v120);

    v250 = type metadata accessor for OwnedBeaconRecord;
    v251 = v66;
LABEL_94:
    sub_1008B9FC0(v251, v250);
  }

  sub_10000B3A8(v62, &unk_1016A9A20, &qword_10138B280);
  sub_100AC53EC(v70, v53);
  if ((*(v54 + 48))(v53, 1, v380) == 1)
  {
    sub_10000B3A8(v53, &unk_1016AF8B0, &unk_1013A0700);
    sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
    v72 = unsafeFromAsyncTask<A>(_:)();
    v73 = v406;
    __chkstk_darwin(v72);
    *(&v357 - 2) = v70;
    v74 = v376;
    sub_1012BC6C4(a16, v73, v376);

    v75 = v377;
    if ((*(v375 + 48))(v74, 1, v377) == 1)
    {
      sub_10000B3A8(v74, &qword_1016A9A30, &unk_1013BD120);
      v76 = static os_log_type_t.error.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      v77 = qword_10177C3E8;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_101385D80;
      v79 = UUID.uuidString.getter();
      v81 = v80;
      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_100008C00();
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      os_log(_:dso:log:_:_:)(v76, &_mh_execute_header, v77, "updateLostModeServer: beacon/group not found!", 45, 2, v78);

      sub_1008B3F98();
      v82 = swift_allocError();
      *v83 = 1;
      v84 = v387;
      swift_beginAccess();
      *(v84 + 16) = v82;
      swift_errorRetain();

      dispatch_group_leave(v391);
    }

    v121 = v372;
    sub_1008BA1A0(v74, v372, type metadata accessor for LocalFindableAccessoryRecord);
    v122 = (v398 + *(v389 + 36));
    v124 = *v122;
    v123 = v122[1];
    v393 = v124;
    v399 = v123;
    v125 = *(v389 + 32);
    v126 = (v398 + *(v389 + 28));
    v128 = *v126;
    v127 = v126[1];
    v392 = v128;
    v394 = v127;
    v109 = *(v398 + v125 + 8);
    v398 = *(v398 + v125);
    sub_1000BC4D4(&qword_1016ACEE8, &qword_1013C2568);
    v388 = (*(v379 + 80) + 32) & ~*(v379 + 80);
    v389 = swift_allocObject();
    *(v389 + 16) = xmmword_101385D80;
    v129 = sub_1000BC4D4(&qword_1016ACEF0, &qword_1013C2570);
    v130 = v129[12];
    v131 = (v121 + v75[7]);
    v132 = *v131;
    v133 = v131[1];
    v134 = v373;
    *v373 = *v131;
    v134[1] = v133;
    (*(v397 + 16))(v134 + v130, v121 + v75[9], v396);
    v135 = *(v121 + v75[10]);
    v136 = *(v121 + v75[11]);
    v397 = v109;

    sub_100017D5C(v132, v133);
    v137 = sub_100314604(v135, v136);
    if (v138 >> 60 == 15)
    {
      goto LABEL_100;
    }

    v139 = (v134 + v129[16]);
    v140 = v137;
    v141 = v138;
    v121 = sub_100313B54(v137, v138);
    v143 = v142;
    sub_100006654(v140, v141);
    v144 = Data.hexString.getter();
    v146 = v145;
    sub_100016590(v121, v143);
    *v139 = v144;
    v139[1] = v146;
    v147 = sub_100314604(v135, v136);
    if (v148 >> 60 == 15)
    {
LABEL_101:

      __break(1u);
      goto LABEL_102;
    }

    v149 = v147;
    v66 = v148;
    v150 = v148 >> 62;
    v85 = v391;
    if ((v148 >> 62) <= 1)
    {
      v151 = v373;
      if (!v150)
      {
LABEL_74:
        v278 = &v151[v129[20]];
        v279 = Data.subdata(in:)();
        v281 = v280;
        sub_100006654(v149, v66);
        v282 = Data.hexString.getter();
        v284 = v283;
        sub_100016590(v279, v281);
        *v278 = v282;
        v278[1] = v284;
        swift_storeEnumTagMultiPayload();
        v285 = v389;
        sub_100DE3528(v151, v389 + v388);
        *&v286 = v392;
        *(&v286 + 1) = v394;
        v408 = v286;
        *&v286 = v393;
        *(&v286 + 1) = v399;
        v406 = xmmword_1013C2550;
        v407 = v286;
        *&v409 = v398;
        *(&v409 + 1) = v397;
        LOBYTE(v410) = v384 & 1;
        *(&v410 + 1) = v402[0];
        DWORD1(v410) = *(v402 + 3);
        *(&v410 + 1) = v285;
        sub_100DE40D4(&v406);
        if (v287)
        {
          v290 = v287;
          v291 = v288;
          v292 = v289;
          v399 = a24;
          v293 = sub_1008B4D8C(3u);
          sub_1008B3FEC(v290, v291, v292, v293);

          v294 = swift_allocObject();
          v295 = v378;
          v296 = v390;
          *(v294 + 16) = v378;
          *(v294 + 24) = v296;

          Future.addFailure(block:)();

          v297 = swift_allocObject();
          v297[2] = v395;
          v297[3] = v295;
          v297[4] = v296;

          Future.addSuccess(block:)();

          sub_100165328(v290, v291, v292);
          v250 = type metadata accessor for LocalFindableAccessoryRecord;
          v251 = v372;
        }

        else
        {
          v298 = static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            v356 = v298;
            swift_once();
            v298 = v356;
          }

          os_log(_:dso:log:_:_:)(v298, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage);
          sub_10025ED18();
          v299 = swift_allocError();
          *v300 = 0;
          v301 = v387;
          swift_beginAccess();
          *(v301 + 16) = v299;
          swift_errorRetain();

          dispatch_group_leave(v85);

          v250 = type metadata accessor for LocalFindableAccessoryRecord;
          v251 = v372;
        }

        goto LABEL_94;
      }

      LODWORD(v261) = HIDWORD(v147) - v147;
      if (!__OFSUB__(HIDWORD(v147), v147))
      {
        v261 = v261;
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_99;
    }

    v151 = v373;
    if (v150 != 2)
    {
      goto LABEL_74;
    }

    v259 = *(v147 + 16);
    v258 = *(v147 + 24);
    v260 = __OFSUB__(v258, v259);
    v261 = v258 - v259;
    if (!v260)
    {
LABEL_72:
      if (v261 < -1)
      {
        __break(1u);
      }

      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_63;
  }

  sub_1008BA1A0(v53, v388, type metadata accessor for OwnedBeaconGroup);
  if (qword_101694A30 != -1)
  {
    swift_once();
  }

  v380 = a20;
  v377 = a19;
  v376 = a18;
  v375 = a17;
  v96 = type metadata accessor for Logger();
  v97 = sub_1000076D4(v96, qword_10177B570);
  v98 = v374;
  sub_1008B9F58(v398, v374, type metadata accessor for LostModeRecord);
  v381 = v97;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  v101 = os_log_type_enabled(v99, v100);
  v102 = v397;
  if (v101)
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v406 = v104;
    *v103 = 141558275;
    *(v103 + 4) = 1752392040;
    *(v103 + 12) = 2081;
    sub_1008BA074(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    sub_1008B9FC0(v98, type metadata accessor for LostModeRecord);
    v108 = sub_1000136BC(v105, v107, &v406);

    *(v103 + 14) = v108;
    _os_log_impl(&_mh_execute_header, v99, v100, "updateLostModeServer for group %{private,mask.hash}s", v103, 0x16u);
    sub_100007BAC(v104);
  }

  else
  {

    sub_1008B9FC0(v98, type metadata accessor for LostModeRecord);
  }

  v152 = v394;
  sub_100519FB0();
  v154 = v153 + 56;
  v155 = 1 << v153[32];
  v156 = -1;
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  v66 = v156 & *(v153 + 7);
  v157 = (v155 + 63) >> 6;
  v383 = (v102 + 16);
  v385 = v102 + 8;
  v386 = v153;
  v85 = (v379 + 48);

  v382 = _swiftEmptyArrayStorage;
  v158 = v396;
  v159 = 0;
  if (!v66)
  {
    while (1)
    {
LABEL_31:
      v160 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        __break(1u);
        goto LABEL_97;
      }

      if (v160 >= v157)
      {
        break;
      }

      v66 = *&v154[8 * v160];
      ++v159;
      if (v66)
      {
        goto LABEL_34;
      }
    }

    v167 = *(v398 + *(v389 + 36));
    v168 = *(v398 + *(v389 + 28));
    v169 = (v398 + *(v389 + 32));
    v171 = *v169;
    v170 = v169[1];
    v403[0] = xmmword_1013C2550;
    v403[1] = v167;
    v403[2] = v168;
    *&v404 = v171;
    *(&v404 + 1) = v170;
    LOBYTE(v405) = v384 & 1;
    *(&v405 + 1) = v382;
    v406 = xmmword_1013C2550;
    v407 = v167;
    v408 = v168;
    v409 = v404;
    v410 = v405;

    sub_1008B53FC(v403, v402);
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.info.getter();
    sub_1008B5458(v403);
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v401 = v175;
      *v174 = 136315138;
      v402[3] = v409;
      v402[4] = v410;
      v402[1] = v407;
      v402[2] = v408;
      v402[0] = v406;
      sub_1008B53FC(v403, &v400);
      v176 = String.init<A>(describing:)();
      v178 = sub_1000136BC(v176, v177, &v401);

      *(v174 + 4) = v178;
      _os_log_impl(&_mh_execute_header, v172, v173, "AirPodsLostModeContent: %s", v174, 0xCu);
      sub_100007BAC(v175);
    }

    v179 = v391;
    sub_100DE40D4(&v406);
    if (v180)
    {
      v183 = v180;
      v184 = v181;
      v185 = v182;
      v186 = sub_1008B4D8C(2u);
      sub_1008B3FEC(v183, v184, v185, v186);

      v187 = swift_allocObject();
      v188 = v378;
      v189 = v390;
      *(v187 + 16) = v378;
      *(v187 + 24) = v189;

      Future.addFailure(block:)();

      v190 = swift_allocObject();
      v190[2] = v395;
      v190[3] = v188;
      v190[4] = v189;

      Future.addSuccess(block:)();

      sub_100165328(v183, v184, v185);
      sub_1008B9FC0(v388, type metadata accessor for OwnedBeaconGroup);
    }

    v254 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      v353 = v254;
      swift_once();
      v254 = v353;
    }

    os_log(_:dso:log:_:_:)(v254, &_mh_execute_header, qword_10177C3E8, "Unable to init LostModeRequest.", 31, 2, _swiftEmptyArrayStorage);
    sub_10025ED18();
    v255 = swift_allocError();
    *v256 = 0;
    v257 = v387;
    swift_beginAccess();
    *(v257 + 16) = v255;
    swift_errorRetain();

    dispatch_group_leave(v179);

    v250 = type metadata accessor for OwnedBeaconGroup;
    v251 = v388;
    goto LABEL_94;
  }

  while (1)
  {
    v160 = v159;
LABEL_34:
    (*(v102 + 16))(v152, *(v386 + 6) + *(v102 + 72) * (__clz(__rbit64(v66)) | (v160 << 6)), v158);
    v121 = v152;
    v161 = v393;
    v109 = v158;
    v162 = v399;
    sub_1008B28B8(v121, v393);
    v399 = v162;
    if (v162)
    {
      break;
    }

    v66 &= v66 - 1;
    (*v385)(v121, v109);
    if ((v85->isa)(v161, 1, v392) == 1)
    {
      v158 = v109;
      sub_10000B3A8(v161, &qword_1016ACED0, &qword_1013C2560);
      v159 = v160;
      v102 = v397;
      v152 = v394;
      if (!v66)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v163 = v359;
      sub_1008BA1A0(v161, v359, type metadata accessor for AirPodsLostModeContent.Device);
      sub_1008BA1A0(v163, v363, type metadata accessor for AirPodsLostModeContent.Device);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v382 = sub_100A5D240(0, v382[2] + 1, 1, v382);
      }

      v152 = v394;
      v165 = v382[2];
      v164 = v382[3];
      if (v165 >= v164 >> 1)
      {
        v382 = sub_100A5D240((v164 > 1), v165 + 1, 1, v382);
      }

      v166 = v382;
      v382[2] = v165 + 1;
      sub_1008BA1A0(v363, v166 + ((*(v379 + 80) + 32) & ~*(v379 + 80)) + *(v379 + 72) * v165, type metadata accessor for AirPodsLostModeContent.Device);
      v158 = v396;
      v102 = v397;
      v159 = v160;
      if (!v66)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_104:

  (*v385)(v121, v109);

  __break(1u);
  return result;
}

uint64_t sub_1008B90DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v60 = a3;
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v4);
  v6 = (&v55 - v5);
  v7 = type metadata accessor for LostModeRecord(0);
  v8 = __chkstk_darwin(v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v61 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  sub_1008B9F58(a1, v11, type metadata accessor for LostModeRecord);
  v56 = v11;
  v57 = v7;
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v62 = v13;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Saving new LostModeRecord %@.", 29, 2, v14);

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = swift_allocBox();
  v22 = v21;
  sub_1008B3F98();
  v23 = swift_allocError();
  *v24 = 8;
  *v22 = v23;
  swift_storeEnumTagMultiPayload();
  v25 = v59;
  v26 = *(v59 + 280);
  v27 = v19;
  sub_100B13D74(a1, 0, v26, v20, v27);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  sub_1008BA218(v22, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v6;
    v29 = static os_log_type_t.error.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v61;
    v64 = v28;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = String.init<A>(describing:)();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v18;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v62, "Unable to save LostModeRecord due to %@", 39, 2, v30);

    swift_errorRetain();
    v33 = _convertErrorToNSError(_:)();
    (*(v60 + 16))(v60, v33);
  }

  else
  {
    v34 = v25;
    v35 = v58;
    sub_1008BA1A0(v6, v58, type metadata accessor for LostModeRecord);
    v36 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v62, "Successfully saved LostModeRecord.", 34, 2, _swiftEmptyArrayStorage);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    dispatch_group_enter(v27);
    v38 = v27;

    sub_1008B6940(v35, 1, v34, v37, v38, &unk_101639A70, &unk_101639B88, sub_100721F34, sub_1008BA8A0, &unk_101639BB0, sub_1008BA88C, &unk_101639B38, sub_1008BA8A0, &unk_101639B60, sub_1008BA88C, sub_1008BA870, &unk_101639AE8, sub_1008BA8A0, &unk_101639B10, sub_1008BA88C, &unk_101639A98, sub_1008BA8A0, &unk_101639AC0, sub_1008BA88C);

    OS_dispatch_group.wait()();
    swift_beginAccess();
    v39 = *(v37 + 16);
    if (v39)
    {
      v55 = v26;
      v59 = v20;
      swift_errorRetain();
      v40 = static os_log_type_t.error.getter();
      v41 = swift_allocObject();
      *(v41 + 16) = v61;
      v63 = v39;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v42 = String.init<A>(describing:)();
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = v18;
      v43 = v18;
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v62, "updateLostModeServer failed - %@. Deleting newly saved LostModeRecord", 69, 2, v41);

      dispatch_group_enter(v38);
      v45 = v38;
      v46 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v47 = qword_10177C380;
      v48 = swift_allocObject();
      *(v48 + 16) = v61;
      v49 = v58;
      sub_1008B9F58(v58, v56, type metadata accessor for LostModeRecord);
      v50 = String.init<A>(describing:)();
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v43;
      *(v48 + 32) = v50;
      *(v48 + 40) = v51;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "Attempting to remove: %@", 24, 2, v48);

      sub_100B144B8(v49, v55, v45);

      OS_dispatch_group.wait()();
      swift_errorRetain();
      v52 = _convertErrorToNSError(_:)();
      (*(v60 + 16))(v60, v52);

      sub_1008B9FC0(v49, type metadata accessor for LostModeRecord);
    }

    else
    {
      v53 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v62, "updateLostModeServer succeeded", 30, 2, _swiftEmptyArrayStorage);
      sub_100A8306C(0xCu);
      (*(v60 + 16))(v60, 0);

      sub_1008B9FC0(v35, type metadata accessor for LostModeRecord);
    }
  }
}

uint64_t sub_1008B98F0(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for ServerStatusCode();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = *(v5 + 16);
  v11(&v41 - v9, a1, v4);
  v12 = (*(v5 + 88))(v10, v4);
  if (v12 == enum case for ServerStatusCode.success(_:))
  {
    v13 = static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      v36 = v13;
      swift_once();
      v13 = v36;
    }

    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C3E8, "Successfully submitted lost mode info.", 38, 2, _swiftEmptyArrayStorage);
    return (a2)(0);
  }

  if (v12 == enum case for ServerStatusCode.notModified(_:))
  {
    v15 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      v37 = v15;
      swift_once();
      v15 = v37;
    }

    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177C3E8, "Failed to submit lost mode: notModified.", 40, 2, _swiftEmptyArrayStorage);
    sub_1008B3F98();
    v16 = swift_allocError();
    v18 = 6;
LABEL_9:
    *v17 = v18;
LABEL_14:
    (a2)(v16);
  }

  if (v12 == enum case for ServerStatusCode.badRequest(_:))
  {
    v19 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      v38 = v19;
      swift_once();
      v19 = v38;
    }

    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C3E8, "Failed to submit lost mode: badRequest.", 39, 2, _swiftEmptyArrayStorage);
    sub_1008B3F98();
    v16 = swift_allocError();
    *v20 = 2;
    goto LABEL_14;
  }

  if (v12 == enum case for ServerStatusCode.unauthorized(_:))
  {
    v21 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      v39 = v21;
      swift_once();
      v21 = v39;
    }

    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10177C3E8, "Failed to submit lost mode: unauthorized.", 41, 2, _swiftEmptyArrayStorage);
    sub_1008B3F98();
    v16 = swift_allocError();
    v18 = 3;
    goto LABEL_9;
  }

  v45 = a2;
  v22 = enum case for ServerStatusCode.serverConflict(_:);
  v23 = v12;
  v24 = static os_log_type_t.error.getter();
  if (v23 == v22)
  {
    v25 = v45;
    if (qword_1016950A0 != -1)
    {
      v40 = v24;
      swift_once();
      v24 = v40;
    }

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177C3E8, "Failed to submit lost mode: serverConflict.", 43, 2, _swiftEmptyArrayStorage);
    sub_1008B3F98();
    swift_allocError();
    *v26 = 5;
    v25();
  }

  v27 = v24;
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C3E8;
  v11(v8, a1, v4);
  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    v43 = v29;
    v44 = swift_slowAlloc();
    v46 = v44;
    *v29 = 136446210;
    sub_1008BA074(&qword_1016A88F8, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v5 + 8);
    v32(v8, v4);
    v33 = sub_1000136BC(v42, v31, &v46);

    v34 = v43;
    *(v43 + 1) = v33;
    _os_log_impl(&_mh_execute_header, v28, v27, "Failed to submit lost mode: %{public}s.", v34, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {
    v32 = *(v5 + 8);
    v32(v8, v4);
  }

  sub_1008B3F98();
  swift_allocError();
  *v35 = 4;
  v45();

  return (v32)(v10, v4);
}

uint64_t sub_1008B9F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008B9FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008BA020()
{
  result = qword_1016ACF20;
  if (!qword_1016ACF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF20);
  }

  return result;
}

uint64_t sub_1008BA074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1008BA0D0()
{
  result = qword_1016ACF40;
  if (!qword_1016ACF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF40);
  }

  return result;
}

uint64_t sub_1008BA124()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1008BA1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008BA218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BA288(uint64_t a1)
{
  v3 = *(type metadata accessor for LostModeRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1008B25B8(a1, v4);
}

uint64_t sub_1008BA300()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1008BA44C(id *a1)
{
  v3 = *(type metadata accessor for LostModeRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ED15C(a1, v4, v5, v6);
}

uint64_t sub_1008BA4C0()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1008BA62C(void **a1)
{
  v3 = *(type metadata accessor for LostModeRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *a1;

  return sub_1009EDFAC(v8, v1 + v4, v6, v7);
}

uint64_t sub_1008BA6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BA748(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_1008BA790(uint64_t a1)
{
  v3 = *(type metadata accessor for LostModeRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1008B3A5C(a1, v4, v5, v6, v7);
}

unint64_t sub_1008BA81C()
{
  result = qword_1016ACF48;
  if (!qword_1016ACF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF48);
  }

  return result;
}

unint64_t sub_1008BA96C()
{
  result = qword_1016ACF50;
  if (!qword_1016ACF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF50);
  }

  return result;
}

uint64_t sub_1008BA9C0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      _StringGuts.grow(_:)(21);

      v4[0] = 0xD000000000000012;
      v4[1] = 0x8000000101363DC0;
    }

    else if (a1 == 4)
    {
      strcpy(v4, ".automatic (");
      BYTE5(v4[1]) = 0;
      HIWORD(v4[1]) = -5120;
    }

    else
    {
      strcpy(v4, ".imported (");
      HIDWORD(v4[1]) = -352321536;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      _StringGuts.grow(_:)(22);

      v4[0] = 0xD000000000000013;
      v4[1] = 0x8000000101363DE0;
    }

    else
    {
      strcpy(v4, ".explicit (");
      HIDWORD(v4[1]) = -352321536;
    }
  }

  else
  {
    strcpy(v4, ".unknown (");
    BYTE3(v4[1]) = 0;
    HIDWORD(v4[1]) = -369098752;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

unint64_t sub_1008BAB78()
{
  result = qword_1016ACF58;
  if (!qword_1016ACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF58);
  }

  return result;
}

double sub_1008BABDC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1008BAF20(a2, v6);
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

unint64_t sub_1008BAC20(uint64_t a1)
{
  *(a1 + 8) = sub_1008BAC50();
  result = sub_10030FBD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008BAC50()
{
  result = qword_1016ACF60;
  if (!qword_1016ACF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF60);
  }

  return result;
}

uint64_t sub_1008BACBC(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  *&v9 = sub_100519EE8(*v1, *(v1 + 8));
  *(&v9 + 1) = v3;
  sub_10015049C(v10, v11);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v9, *(&v9 + 1));
    v8 = *(v1 + 16);
    sub_100235658();
    *&v9 = FixedWidthInteger.data.getter();
    *(&v9 + 1) = v4;
    sub_10015049C(v10, v11);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v9, *(&v9 + 1));
    v12 = *(v1 + 24);
    v9 = *(v1 + 24);
    sub_10015049C(v10, v11);
    sub_100590F20(&v12, &v8);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v9, *(&v9 + 1));
    LODWORD(v8) = *(v1 + 40);
    sub_100101824();
    *&v9 = FixedWidthInteger.data.getter();
    *(&v9 + 1) = v5;
    sub_10015049C(v10, v11);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v9, *(&v9 + 1));
    LODWORD(v8) = *(v1 + 44);
    *&v9 = FixedWidthInteger.data.getter();
    *(&v9 + 1) = v7;
    sub_10015049C(v10, v11);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v9, *(&v9 + 1));
  return sub_100007BAC(v10);
}

uint64_t sub_1008BAF20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v57, v58);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v55 = v6;
  v56 = v7;
  sub_100017D5C(v6, v7);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v8, v9);
    v10 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v10);
    swift_willThrow();
    v12 = v8;
    v13 = v9;
LABEL_8:
    sub_100016590(v12, v13);
LABEL_9:
    sub_100007BAC(v57);
    return sub_100007BAC(a1);
  }

  v54 = a2;
  v14 = Data.trimmed.getter();
  v59 = v15;
  sub_100016590(v8, v9);
  v16 = v9;
  sub_10015049C(v57, v58);
  v17 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v19 = v18;
  v51 = v16;
  v52 = v8;
  v53 = v14;
  sub_100017D5C(v17, v18);
  static Endianness.current.getter();
  sub_100235658();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v56 == 1)
  {
    v20 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for BinaryDecodingError.decodingError(_:), v20);
    swift_willThrow();
    v22 = v17;
    v23 = v19;
LABEL_6:
    sub_100016590(v22, v23);
    sub_100016590(v53, v59);
    v12 = v52;
    v13 = v51;
    goto LABEL_8;
  }

  v24 = v17;
  v50 = v19;
  sub_10015049C(v57, v58);
  v49 = v55;
  v26 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v28 = v27;
  sub_100017D5C(v26, v27);
  sub_100018000(v26, v28, &v55);
  v48 = v28;
  v29 = v55;
  v47 = v56;
  sub_10015049C(v57, v58);
  v30 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v32 = v30;
  v33 = v31;
  v46 = v29;
  sub_100017D5C(v30, v31);
  static Endianness.current.getter();
  sub_100101824();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v55) == 1)
  {
    v34 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for BinaryDecodingError.decodingError(_:), v34);
    swift_willThrow();
    sub_100016590(v32, v33);
    sub_100016590(v29, v47);
    sub_100016590(v26, v48);
    v22 = v24;
    v23 = v50;
    goto LABEL_6;
  }

  v36 = v55;
  sub_10015049C(v57, v58);
  v45 = v32;
  v37 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v39 = v38;
  sub_100017D5C(v37, v38);
  static Endianness.current.getter();
  v44 = v39;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v55) == 1)
  {
    v40 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, enum case for BinaryDecodingError.decodingError(_:), v40);
    swift_willThrow();
    sub_100016590(v37, v44);
    sub_100016590(v45, v33);
    sub_100016590(v46, v47);
    sub_100016590(v26, v48);
    sub_100016590(v24, v50);
    sub_100016590(v53, v59);
    v12 = v52;
    v13 = v51;
    goto LABEL_8;
  }

  v42 = v55;
  sub_100016590(v52, v51);
  sub_100016590(v24, v50);
  sub_100016590(v26, v48);
  sub_100016590(v45, v33);
  sub_100016590(v37, v44);
  sub_100007BAC(v57);
  result = sub_100007BAC(a1);
  v43 = v59;
  *v54 = v53;
  v54[1] = v43;
  v54[2] = v49;
  v54[3] = v46;
  v54[4] = v47;
  *(v54 + 10) = v36;
  *(v54 + 11) = v42;
  return result;
}

double sub_1008BB614@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1008BC434(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_1008BB678@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, __int128 a14, __int128 a15)
{
  v22 = result;
  *&v158 = a5;
  *(&v158 + 1) = a6;
  v23 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v23)
    {
      v24 = BYTE6(a6);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v23 != 2)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v25 = *(a5 + 16);
  v26 = *(a5 + 24);
  v27 = __OFSUB__(v26, v25);
  v24 = v26 - v25;
  if (v27)
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      __break(1u);
      goto LABEL_151;
    }

    v24 = HIDWORD(a5) - a5;
  }

LABEL_11:
  v15 = (60 - v24);
  if (__OFSUB__(60, v24))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v103 = a9;
  v112 = a5;
  v113 = a6;
  sub_100017D5C(a5, a6);
  v135 = sub_100845C88(v15);
  v136 = v28;
  sub_100776394(&v135, 0);
  v16 = v135;
  v159 = a8;
  v29 = v136;
  v15 = &v158;
  Data.append(_:)();
  v30 = v29;
  a8 = v159;
  result = sub_100016590(v16, v30);
  *&v157 = a7;
  *(&v157 + 1) = a8;
  v17 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v17)
    {
      a9 = BYTE6(a8);
      goto LABEL_22;
    }

LABEL_19:
    LODWORD(a9) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      a9 = a9;
      goto LABEL_22;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v17 == 2)
  {
    v32 = *(a7 + 16);
    v31 = *(a7 + 24);
    v27 = __OFSUB__(v31, v32);
    a9 = v31 - v32;
    if (v27)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_22:
  v15 = (100 - a9);
  if (__OFSUB__(100, a9))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v110 = v22;
  v111 = a4;
  v16 = a10;
  a4 = a11;
  sub_100017D5C(a7, a8);
  v135 = sub_100845C88(v15);
  v136 = v33;
  sub_100776394(&v135, 0);
  v34 = v135;
  v22 = v136;
  v15 = &v157;
  Data.append(_:)();
  result = sub_100016590(v34, v22);
  v155 = a10;
  v156 = a11;
  a8 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!a8)
    {
      a9 = BYTE6(a11);
      goto LABEL_33;
    }

LABEL_30:
    LODWORD(a9) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      a9 = a9;
      goto LABEL_33;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (a8 == 2)
  {
    v36 = *(a10 + 16);
    v35 = *(a10 + 24);
    v27 = __OFSUB__(v35, v36);
    a9 = v35 - v36;
    if (v27)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_33:
  v15 = (720 - a9);
  if (__OFSUB__(720, a9))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v109 = a2;
  sub_100017D5C(a10, a11);
  v135 = sub_100845C88(v15);
  v136 = v37;
  sub_100776394(&v135, 0);
  v38 = v135;
  v22 = v136;
  v15 = &v155;
  Data.append(_:)();
  result = sub_100016590(v38, v22);
  v39 = v158;
  v108 = v157;
  if (v17 <= 1)
  {
    if (!v17)
    {
      a9 = BYTE6(v159);
      goto LABEL_44;
    }

LABEL_41:
    LODWORD(a9) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      a9 = a9;
      goto LABEL_44;
    }

LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v17 == 2)
  {
    v41 = *(a7 + 16);
    v40 = *(a7 + 24);
    v27 = __OFSUB__(v40, v41);
    a9 = v40 - v41;
    if (v27)
    {
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_44:
  v154 = a9;
  v102 = v39;
  v116 = v39;
  sub_100017D5C(v39, *(&v39 + 1));
  v118 = v108;
  sub_100017D5C(v108, *(&v108 + 1));
  sub_1000C3258();
  v15 = FixedWidthInteger.data.getter();
  v22 = v42;
  *&v117 = Data.trimmed.getter();
  *(&v117 + 1) = v43;
  sub_100016590(v15, v22);
  result = v155;
  v17 = v156;
  if (a8 <= 1)
  {
    if (!a8)
    {
      a9 = BYTE6(a11);
      goto LABEL_54;
    }

LABEL_51:
    LODWORD(a9) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      a9 = a9;
      goto LABEL_54;
    }

LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (a8 == 2)
  {
    v45 = *(a10 + 16);
    v44 = *(a10 + 24);
    v27 = __OFSUB__(v44, v45);
    a9 = v44 - v45;
    if (v27)
    {
      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_54:
  v121 = a12;
  v153 = a9;
  *&v115 = result;
  sub_100017D5C(result, v17);
  v15 = FixedWidthInteger.data.getter();
  v22 = v46;
  v107 = Data.trimmed.getter();
  v114 = v47;
  result = sub_100016590(v15, v22);
  v120 = a13;
  a8 = a13 >> 62;
  if ((a13 >> 62) <= 1)
  {
    if (!a8)
    {
      a9 = BYTE6(a13);
      goto LABEL_64;
    }

LABEL_61:
    LODWORD(a9) = HIDWORD(a12) - a12;
    if (!__OFSUB__(HIDWORD(a12), a12))
    {
      a9 = a9;
      goto LABEL_64;
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (a8 == 2)
  {
    v49 = *(a12 + 16);
    v48 = *(a12 + 24);
    v27 = __OFSUB__(v48, v49);
    a9 = v48 - v49;
    if (v27)
    {
      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_64:
  *(&v115 + 1) = v17;
  v104 = a15;
  v105 = a14;
  v152 = a9;
  v50 = FixedWidthInteger.data.getter();
  v52 = v51;
  v15 = Data.trimmed.getter();
  v106 = v53;
  result = sub_100016590(v50, v52);
  v54 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v22 = v110;
    v17 = v111;
    if (v54 != 2)
    {
      goto LABEL_77;
    }

    v56 = *(v110 + 16);
    v55 = *(v110 + 24);
    v27 = __OFSUB__(v55, v56);
    a9 = v55 - v56;
    if (!v27)
    {
      if (a9 == 114)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

    goto LABEL_156;
  }

  v22 = v110;
  v17 = v111;
  if (v54)
  {
    LODWORD(a9) = HIDWORD(v110) - v110;
    if (!__OFSUB__(HIDWORD(v110), v110))
    {
      if (a9 == 114)
      {
        goto LABEL_71;
      }

LABEL_77:
      LOBYTE(v58) = 0;
LABEL_97:
      sub_1008BC228();
      swift_allocError();
      *v67 = v58;
      swift_willThrow();
      sub_100016590(v16, a4);
      sub_100016590(a7, v159);
      sub_100016590(v112, v113);
      sub_100016590(v104, *(&v104 + 1));
      sub_100016590(v105, *(&v105 + 1));
      sub_100016590(v15, v106);
      sub_100016590(v121, v120);
      sub_100016590(v107, v114);
      sub_100016590(v115, *(&v115 + 1));
      sub_100016590(v117, *(&v117 + 1));
      sub_100016590(v118, *(&v118 + 1));
      sub_100016590(v116, *(&v116 + 1));
      sub_100016590(a3, v17);
      sub_100016590(v22, a2);
      sub_100006654(0, 0xF000000000000000);
      sub_100016590(v155, v156);
      sub_100016590(v157, *(&v157 + 1));
      return sub_100016590(v158, *(&v158 + 1));
    }

LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (BYTE6(a2) != 114)
  {
    goto LABEL_77;
  }

LABEL_71:
  v57 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v57 != 2)
    {
      goto LABEL_87;
    }

    v60 = *(a3 + 16);
    v59 = *(a3 + 24);
    v27 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v27)
    {
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (v61 != 32)
    {
      goto LABEL_87;
    }
  }

  else
  {
    if (!v57)
    {
      if (BYTE6(v17) != 32)
      {
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (HIDWORD(a3) - a3 != 32)
    {
LABEL_87:
      LOBYTE(v58) = 1;
      goto LABEL_97;
    }
  }

LABEL_81:
  v62 = *(&v108 + 1) >> 62;
  if ((*(&v108 + 1) >> 62) > 1)
  {
    if (v62 != 2)
    {
      goto LABEL_96;
    }

    v64 = *(v108 + 16);
    v63 = *(v108 + 24);
    v27 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v27)
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    if (v65 != 100)
    {
      goto LABEL_96;
    }
  }

  else
  {
    if (!v62)
    {
      if (BYTE14(v108) != 100)
      {
        goto LABEL_96;
      }

      goto LABEL_91;
    }

    if (__OFSUB__(DWORD1(v108), v108))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (DWORD1(v108) - v108 != 100)
    {
LABEL_96:
      LOBYTE(v58) = 2;
      goto LABEL_97;
    }
  }

LABEL_91:
  v58 = *(&v117 + 1) >> 62;
  if ((*(&v117 + 1) >> 62) > 1)
  {
    if (v58 != 2)
    {
      goto LABEL_97;
    }

    v69 = *(v117 + 16);
    v68 = *(v117 + 24);
    v27 = __OFSUB__(v68, v69);
    v66 = v68 - v69;
    if (!v27)
    {
      goto LABEL_104;
    }

    __break(1u);
  }

  else if (!v58)
  {
    v66 = BYTE14(v117);
    goto LABEL_104;
  }

  LODWORD(v66) = DWORD1(v117) - v117;
  if (__OFSUB__(DWORD1(v117), v117))
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v66 = v66;
LABEL_104:
  if (v66 != 1)
  {
    LOBYTE(v58) = 3;
    goto LABEL_97;
  }

  v70 = *(&v116 + 1) >> 62;
  if ((*(&v116 + 1) >> 62) <= 1)
  {
    if (!v70)
    {
      v71 = BYTE14(v116);
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  if (v70 != 2)
  {
LABEL_120:
    LOBYTE(v58) = 4;
    goto LABEL_97;
  }

  v73 = *(v116 + 16);
  v72 = *(v116 + 24);
  v27 = __OFSUB__(v72, v73);
  v71 = v72 - v73;
  if (v27)
  {
    __break(1u);
LABEL_113:
    LODWORD(v71) = DWORD1(v116) - v116;
    if (__OFSUB__(DWORD1(v116), v116))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    v71 = v71;
  }

LABEL_115:
  if (v71 != 60)
  {
    goto LABEL_120;
  }

  v74 = *(&v115 + 1) >> 62;
  LOBYTE(v58) = 5;
  if ((*(&v115 + 1) >> 62) <= 1)
  {
    if (!v74)
    {
      goto LABEL_97;
    }

    LODWORD(v75) = DWORD1(v115) - v115;
    if (!__OFSUB__(DWORD1(v115), v115))
    {
      v75 = v75;
      goto LABEL_123;
    }

    goto LABEL_197;
  }

  if (v74 != 2)
  {
    goto LABEL_97;
  }

  v77 = *(v115 + 16);
  v76 = *(v115 + 24);
  v27 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v27)
  {
    goto LABEL_198;
  }

LABEL_123:
  if (v75 != 720)
  {
    LOBYTE(v58) = 5;
    goto LABEL_97;
  }

  v78 = v114 >> 62;
  if ((v114 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v114);
      goto LABEL_137;
    }

LABEL_135:
    LODWORD(v79) = HIDWORD(v107) - v107;
    if (!__OFSUB__(HIDWORD(v107), v107))
    {
      v79 = v79;
      goto LABEL_137;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  if (v78 != 2)
  {
LABEL_142:
    LOBYTE(v58) = 6;
    goto LABEL_97;
  }

  v81 = *(v107 + 16);
  v80 = *(v107 + 24);
  v27 = __OFSUB__(v80, v81);
  v79 = v80 - v81;
  if (v27)
  {
    __break(1u);
    goto LABEL_132;
  }

LABEL_137:
  if (v79 != 2)
  {
    goto LABEL_142;
  }

  LOBYTE(v58) = 7;
  if (a8 <= 1)
  {
    if (!a8)
    {
      goto LABEL_97;
    }

    LODWORD(v82) = HIDWORD(v121) - v121;
    if (!__OFSUB__(HIDWORD(v121), v121))
    {
      v82 = v82;
      goto LABEL_145;
    }

    goto LABEL_200;
  }

  if (a8 != 2)
  {
    goto LABEL_97;
  }

  v84 = *(v121 + 16);
  v83 = *(v121 + 24);
  v27 = __OFSUB__(v83, v84);
  v82 = v83 - v84;
  if (v27)
  {
    goto LABEL_201;
  }

LABEL_145:
  if (v82 != 554)
  {
    LOBYTE(v58) = 7;
    goto LABEL_97;
  }

  a9 = v106 >> 62;
  if ((v106 >> 62) <= 1)
  {
    if (!a9)
    {
      v85 = BYTE6(v106);
      goto LABEL_166;
    }

LABEL_164:
    LODWORD(v85) = HIDWORD(v15) - v15;
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      v85 = v85;
      goto LABEL_166;
    }

LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

LABEL_158:
  if (a9 != 2)
  {
    LOBYTE(v58) = 8;
    goto LABEL_97;
  }

  v87 = v15[2];
  v86 = v15[3];
  v27 = __OFSUB__(v86, v87);
  v85 = v86 - v87;
  if (v27)
  {
    __break(1u);
    goto LABEL_162;
  }

LABEL_166:
  if (v85 != 2)
  {
    LOBYTE(v58) = 8;
LABEL_195:
    a2 = v109;
    v22 = v110;
    v17 = v111;
    goto LABEL_97;
  }

  v88 = *(&v105 + 1) >> 62;
  if ((*(&v105 + 1) >> 62) <= 1)
  {
    if (!v88)
    {
      v89 = BYTE14(v105);
      goto LABEL_180;
    }

LABEL_178:
    LODWORD(v89) = DWORD1(v105) - v105;
    if (!__OFSUB__(DWORD1(v105), v105))
    {
      v89 = v89;
      goto LABEL_180;
    }

LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v88 != 2)
  {
LABEL_184:
    LOBYTE(v58) = 9;
    goto LABEL_195;
  }

  v91 = *(v105 + 16);
  v90 = *(v105 + 24);
  v27 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v27)
  {
    __break(1u);
    goto LABEL_176;
  }

LABEL_180:
  if (v89 != 8)
  {
    goto LABEL_184;
  }

  v92 = *(&v104 + 1) >> 62;
  if ((*(&v104 + 1) >> 62) > 1)
  {
    if (v92 != 2)
    {
LABEL_194:
      LOBYTE(v58) = 10;
      goto LABEL_195;
    }

    v95 = *(v104 + 16);
    v94 = *(v104 + 24);
    v27 = __OFSUB__(v94, v95);
    v93 = v94 - v95;
    if (!v27)
    {
LABEL_192:
      if (v93 == 24)
      {
        sub_100016590(v16, a4);
        sub_100016590(a7, v159);
        sub_100016590(v112, v113);
        *&v123 = v110;
        *(&v123 + 1) = v109;
        *&v124 = a3;
        *(&v124 + 1) = v111;
        v126 = v108;
        v125 = v102;
        v127 = v117;
        v128 = v115;
        *&v129 = v107;
        *(&v129 + 1) = v114;
        *&v130 = v121;
        *(&v130 + 1) = v120;
        *&v131 = v15;
        *(&v131 + 1) = v106;
        v132 = v105;
        v133 = v104;
        v134 = xmmword_10138BBF0;
        v135 = v110;
        v136 = v109;
        v137 = a3;
        v138 = v111;
        v140 = v108;
        v139 = v102;
        v141 = v117;
        v142 = v115;
        v143 = v107;
        v144 = v114;
        v145 = v121;
        v146 = v120;
        v147 = v15;
        v148 = v106;
        v149 = v105;
        v150 = v104;
        v151 = xmmword_10138BBF0;
        sub_1008BC27C(&v123, &v122);
        sub_1008BC2B4(&v135);
        sub_100016590(v115, *(&v115 + 1));
        sub_100016590(v118, *(&v118 + 1));
        result = sub_100016590(v116, *(&v116 + 1));
        v96 = v132;
        v103[8] = v131;
        v103[9] = v96;
        v97 = v134;
        v103[10] = v133;
        v103[11] = v97;
        v98 = v128;
        v103[4] = v127;
        v103[5] = v98;
        v99 = v130;
        v103[6] = v129;
        v103[7] = v99;
        v100 = v124;
        *v103 = v123;
        v103[1] = v100;
        v101 = v126;
        v103[2] = v125;
        v103[3] = v101;
        return result;
      }

      goto LABEL_194;
    }

    __break(1u);
    goto LABEL_189;
  }

  if (!v92)
  {
    v93 = BYTE14(v104);
    goto LABEL_192;
  }

LABEL_190:
  LODWORD(v93) = DWORD1(v104) - v104;
  if (!__OFSUB__(DWORD1(v104), v104))
  {
    v93 = v93;
    goto LABEL_192;
  }

LABEL_204:
  __break(1u);
  return result;
}

unint64_t sub_1008BC228()
{
  result = qword_1016ACF68;
  if (!qword_1016ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF68);
  }

  return result;
}

unint64_t sub_1008BC308()
{
  result = qword_1016ACF70;
  if (!qword_1016ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF70);
  }

  return result;
}

unint64_t sub_1008BC35C(uint64_t a1)
{
  *(a1 + 8) = sub_1008BC38C();
  result = sub_1008BC3E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008BC38C()
{
  result = qword_1016ACF78;
  if (!qword_1016ACF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF78);
  }

  return result;
}

unint64_t sub_1008BC3E0()
{
  result = qword_1016ACF80;
  if (!qword_1016ACF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF80);
  }

  return result;
}

uint64_t sub_1008BC434@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v129, v130);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_3;
  }

  v99 = v5;
  v131 = v6;
  sub_10015049C(v129, v130);
  *&v98 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v98 + 1) = v7;
  sub_10015049C(v129, v130);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v97 = v9;
  sub_10015049C(v129, v130);
  *&v95 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v95 + 1) = v10;
  sub_100017D5C(v8, v97);
  sub_1000E0A3C();
  v11 = DataProtocol.intValue.getter();
  v96 = v8;
  sub_10002EA98(v11, v8, v97, &v113);
  v12 = v113;
  v13 = v114;
  sub_10015049C(v129, v130);
  *&v92 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v92 + 1) = v14;
  *&v93 = v12;
  *(&v93 + 1) = v13;
  sub_10015049C(v129, v130);
  v15 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v16;
  sub_10015049C(v129, v130);
  *&v91 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v91 + 1) = v18;
  sub_100017D5C(v15, v17);
  v19 = DataProtocol.intValue.getter();
  v90 = v15;
  sub_10002EA98(v19, v15, v17, &v113);
  v20 = v113;
  v21 = v114;
  sub_10015049C(v129, v130);
  v22 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v88 = v23;
  v89 = v22;
  *&v87 = v20;
  *(&v87 + 1) = v21;
  v86 = v17;
  sub_10015049C(v129, v130);
  v24 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v26 = v25;
  *&v101 = v24;
  *(&v101 + 1) = v25;
  sub_100017D5C(v89, v88);
  v27 = DataProtocol.intValue.getter();
  sub_10002EA98(v27, v89, v88, &v113);
  v85 = v113;
  v94 = v114;
  sub_10015049C(v129, v130);
  *&v84 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v84 + 1) = v28;
  sub_10015049C(v129, v130);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v31 = result;
  v32 = v30;
  v33 = v131 >> 62;
  if ((v131 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = BYTE6(v131);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v33 != 2)
  {
LABEL_17:
    LOBYTE(v40) = 0;
    goto LABEL_40;
  }

  v35 = *(v99 + 16);
  v36 = *(v99 + 24);
  v37 = __OFSUB__(v36, v35);
  v34 = v36 - v35;
  if (v37)
  {
    __break(1u);
LABEL_11:
    LODWORD(v34) = HIDWORD(v99) - v99;
    if (__OFSUB__(HIDWORD(v99), v99))
    {
      __break(1u);
      goto LABEL_91;
    }

    v34 = v34;
  }

LABEL_13:
  if (v34 != 114)
  {
    goto LABEL_17;
  }

  v38 = *(&v98 + 1) >> 62;
  if ((*(&v98 + 1) >> 62) <= 1)
  {
    if (!v38)
    {
      v39 = BYTE14(v98);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v38 != 2)
  {
LABEL_28:
    LOBYTE(v40) = 1;
    goto LABEL_40;
  }

  v41 = *(v98 + 16);
  v42 = *(v98 + 24);
  v37 = __OFSUB__(v42, v41);
  v39 = v42 - v41;
  if (v37)
  {
    __break(1u);
LABEL_22:
    LODWORD(v39) = DWORD1(v98) - v98;
    if (__OFSUB__(DWORD1(v98), v98))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v39 = v39;
  }

LABEL_24:
  if (v39 != 32)
  {
    goto LABEL_28;
  }

  v43 = *(&v93 + 1) >> 62;
  if ((*(&v93 + 1) >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE14(v93);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v43 != 2)
  {
LABEL_39:
    LOBYTE(v40) = 2;
    goto LABEL_40;
  }

  v46 = *(v93 + 16);
  v45 = *(v93 + 24);
  v37 = __OFSUB__(v45, v46);
  v44 = v45 - v46;
  if (v37)
  {
    __break(1u);
LABEL_33:
    LODWORD(v44) = DWORD1(v93) - v93;
    if (__OFSUB__(DWORD1(v93), v93))
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v44 = v44;
  }

LABEL_35:
  if (v44 != 100)
  {
    goto LABEL_39;
  }

  v40 = *(&v95 + 1) >> 62;
  if ((*(&v95 + 1) >> 62) <= 1)
  {
    if (!v40)
    {
      v47 = BYTE14(v95);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v40 != 2)
  {
    goto LABEL_40;
  }

  v49 = *(v95 + 16);
  v50 = *(v95 + 24);
  v37 = __OFSUB__(v50, v49);
  v47 = v50 - v49;
  if (v37)
  {
    __break(1u);
LABEL_45:
    LODWORD(v47) = DWORD1(v95) - v95;
    if (__OFSUB__(DWORD1(v95), v95))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v47 = v47;
  }

LABEL_47:
  if (v47 != 1)
  {
    LOBYTE(v40) = 3;
    goto LABEL_40;
  }

  v51 = *(&v92 + 1) >> 62;
  if ((*(&v92 + 1) >> 62) <= 1)
  {
    if (!v51)
    {
      v52 = BYTE14(v92);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v51 != 2)
  {
LABEL_63:
    LOBYTE(v40) = 4;
    goto LABEL_40;
  }

  v54 = *(v92 + 16);
  v53 = *(v92 + 24);
  v37 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v37)
  {
    __break(1u);
LABEL_56:
    LODWORD(v52) = DWORD1(v92) - v92;
    if (__OFSUB__(DWORD1(v92), v92))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v52 = v52;
  }

LABEL_58:
  if (v52 != 60)
  {
    goto LABEL_63;
  }

  v55 = *(&v87 + 1) >> 62;
  LOBYTE(v40) = 5;
  if ((*(&v87 + 1) >> 62) <= 1)
  {
    if (!v55)
    {
      goto LABEL_40;
    }

    LODWORD(v56) = HIDWORD(v20) - v20;
    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      v56 = v56;
      goto LABEL_66;
    }

    goto LABEL_126;
  }

  if (v55 != 2)
  {
    goto LABEL_40;
  }

  v58 = *(v20 + 16);
  v57 = *(v20 + 24);
  v37 = __OFSUB__(v57, v58);
  v56 = v57 - v58;
  if (v37)
  {
    goto LABEL_127;
  }

LABEL_66:
  if (v56 != 720)
  {
    LOBYTE(v40) = 5;
    goto LABEL_40;
  }

  v59 = *(&v91 + 1) >> 62;
  if ((*(&v91 + 1) >> 62) <= 1)
  {
    if (!v59)
    {
      v60 = BYTE14(v91);
      goto LABEL_77;
    }

LABEL_75:
    LODWORD(v60) = DWORD1(v91) - v91;
    if (!__OFSUB__(DWORD1(v91), v91))
    {
      v60 = v60;
      goto LABEL_77;
    }

LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v59 != 2)
  {
LABEL_82:
    LOBYTE(v40) = 6;
    goto LABEL_40;
  }

  v62 = *(v91 + 16);
  v61 = *(v91 + 24);
  v37 = __OFSUB__(v61, v62);
  v60 = v61 - v62;
  if (v37)
  {
    __break(1u);
    goto LABEL_75;
  }

LABEL_77:
  if (v60 != 2)
  {
    goto LABEL_82;
  }

  v63 = v94 >> 62;
  LOBYTE(v40) = 7;
  if ((v94 >> 62) <= 1)
  {
    if (v63)
    {
      LODWORD(v64) = HIDWORD(v85) - v85;
      if (!__OFSUB__(HIDWORD(v85), v85))
      {
        v64 = v64;
        goto LABEL_85;
      }

      goto LABEL_129;
    }

LABEL_40:
    sub_1008BC228();
    swift_allocError();
    *v48 = v40;
    swift_willThrow();
    sub_100016590(v89, v88);
    sub_100016590(v90, v86);
    sub_100016590(v96, v97);
    sub_100016590(v31, v32);
    sub_100016590(v84, *(&v84 + 1));
    sub_100016590(v24, v26);
    sub_100016590(v85, v94);
    sub_100016590(v91, *(&v91 + 1));
    sub_100016590(v20, *(&v87 + 1));
    sub_100016590(v95, *(&v95 + 1));
    sub_100016590(v93, *(&v93 + 1));
    sub_100016590(v92, *(&v92 + 1));
    sub_100016590(v98, *(&v98 + 1));
    sub_100016590(v99, v131);
    sub_100006654(0, 0xF000000000000000);
LABEL_3:
    sub_100007BAC(v129);
    return sub_100007BAC(a1);
  }

  if (v63 != 2)
  {
    goto LABEL_40;
  }

  v66 = *(v85 + 16);
  v65 = *(v85 + 24);
  v37 = __OFSUB__(v65, v66);
  v64 = v65 - v66;
  if (v37)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

LABEL_85:
  if (v64 != 554)
  {
    LOBYTE(v40) = 7;
    goto LABEL_40;
  }

  v34 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v34)
    {
      v67 = BYTE6(v26);
      goto LABEL_98;
    }

LABEL_96:
    LODWORD(v67) = HIDWORD(v24) - v24;
    if (!__OFSUB__(HIDWORD(v24), v24))
    {
      v67 = v67;
      goto LABEL_98;
    }

LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

LABEL_91:
  if (v34 != 2)
  {
LABEL_102:
    LOBYTE(v40) = 8;
    goto LABEL_40;
  }

  v69 = *(v24 + 16);
  v68 = *(v24 + 24);
  v37 = __OFSUB__(v68, v69);
  v67 = v68 - v69;
  if (v37)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_98:
  if (v67 != 2)
  {
    goto LABEL_102;
  }

  v70 = *(&v84 + 1) >> 62;
  if ((*(&v84 + 1) >> 62) <= 1)
  {
    if (!v70)
    {
      v71 = BYTE14(v84);
      goto LABEL_110;
    }

LABEL_108:
    LODWORD(v71) = DWORD1(v84) - v84;
    if (!__OFSUB__(DWORD1(v84), v84))
    {
      v71 = v71;
      goto LABEL_110;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v70 != 2)
  {
LABEL_114:
    LOBYTE(v40) = 9;
    goto LABEL_40;
  }

  v73 = *(v84 + 16);
  v72 = *(v84 + 24);
  v37 = __OFSUB__(v72, v73);
  v71 = v72 - v73;
  if (v37)
  {
    __break(1u);
    goto LABEL_107;
  }

LABEL_110:
  if (v71 != 8)
  {
    goto LABEL_114;
  }

  v74 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v74 != 2)
    {
LABEL_124:
      LOBYTE(v40) = 10;
      goto LABEL_40;
    }

    v77 = *(result + 16);
    v76 = *(result + 24);
    v37 = __OFSUB__(v76, v77);
    v75 = v76 - v77;
    if (!v37)
    {
LABEL_122:
      if (v75 == 24)
      {
        sub_100016590(v89, v88);
        sub_100016590(v90, v86);
        sub_100016590(v96, v97);
        *&v101 = v99;
        *(&v101 + 1) = v131;
        v102 = v98;
        v103 = v92;
        v104 = v93;
        v105 = v95;
        v106 = v87;
        v107 = v91;
        *&v108 = v85;
        *(&v108 + 1) = v94;
        *&v109 = v24;
        *(&v109 + 1) = v26;
        v110 = v84;
        *&v111 = v31;
        *(&v111 + 1) = v32;
        v112 = xmmword_10138BBF0;
        v113 = v99;
        v114 = v131;
        v115 = v98;
        v116 = v92;
        v117 = v93;
        v118 = v95;
        v119 = v87;
        v120 = v91;
        v121 = v85;
        v122 = v94;
        v123 = v24;
        v124 = v26;
        v125 = v84;
        v126 = v31;
        v127 = v32;
        v128 = xmmword_10138BBF0;
        sub_1008BC27C(&v101, v100);
        sub_1008BC2B4(&v113);
        sub_100007BAC(v129);
        result = sub_100007BAC(a1);
        v78 = v110;
        a2[8] = v109;
        a2[9] = v78;
        v79 = v112;
        a2[10] = v111;
        a2[11] = v79;
        v80 = v106;
        a2[4] = v105;
        a2[5] = v80;
        v81 = v108;
        a2[6] = v107;
        a2[7] = v81;
        v82 = v102;
        *a2 = v101;
        a2[1] = v82;
        v83 = v104;
        a2[2] = v103;
        a2[3] = v83;
        return result;
      }

      goto LABEL_124;
    }

    __break(1u);
    goto LABEL_119;
  }

  if (!v74)
  {
    v75 = BYTE6(v30);
    goto LABEL_122;
  }

LABEL_120:
  LODWORD(v75) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v75 = v75;
    goto LABEL_122;
  }

LABEL_133:
  __break(1u);
  return result;
}

Swift::Int sub_1008BCF40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008BCFE8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1008BD07C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008BD120@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEAAC(*a1);
  *a2 = result;
  return result;
}

void sub_1008BD150(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 12589;
  v4 = 3223602;
  if (*v1 != 2)
  {
    v4 = 3354674;
  }

  if (*v1)
  {
    v3 = 3158066;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

Swift::Int sub_1008BD1C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008BD28C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1008BD344(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008BD40C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEAF8(*a1);
  *a2 = result;
  return result;
}

void sub_1008BD43C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  v4 = 0xE800000000000000;
  v5 = 0x676E696772616843;
  if (*v1 != 2)
  {
    v5 = 0x6772616843746F4ELL;
    v4 = 0xEB00000000676E69;
  }

  if (*v1)
  {
    v3 = 0x64656772616843;
    v2 = 0xE700000000000000;
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

Swift::Int sub_1008BD4C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008BD580(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1008BD624(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008BD6D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEF38(*a1);
  *a2 = result;
  return result;
}

void sub_1008BD708(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 4999502;
  v4 = 0xEA00000000004445;
  v5 = 0x5A49524F48545541;
  if (*v1 != 2)
  {
    v5 = 0x5249415045524E49;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 1414090313;
    v2 = 0xE400000000000000;
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

uint64_t sub_1008BD7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453726961706572 && a2 == 0xEB00000000657461)
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

uint64_t sub_1008BD888(uint64_t a1)
{
  v2 = sub_1008BF0F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008BD8C4(uint64_t a1)
{
  v2 = sub_1008BF0F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008BD900@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008BEF84(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1008BD92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v150 = *(v4 - 8);
  v151 = v4;
  __chkstk_darwin(v4);
  v149 = &v144[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v147 = &v144[-v7];
  v146 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  __chkstk_darwin(v146);
  v148 = &v144[-v8];
  v161 = type metadata accessor for Date();
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v154 = &v144[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = __chkstk_darwin(v10 - 8);
  v152 = &v144[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v153 = &v144[-v14];
  __chkstk_darwin(v13);
  v156 = &v144[-v15];
  v158 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v16 = __chkstk_darwin(v158);
  v155 = &v144[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v157 = &v144[-v19];
  __chkstk_darwin(v18);
  v160 = &v144[-v20];
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v144[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v25 - 8);
  v27 = &v144[-v26];
  v28 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v144[-v30];
  v32 = *(v29 + 56);
  v162 = a1;
  sub_1000D2A70(a1, &v144[-v30], &qword_1016980D0, &unk_10138F3B0);
  v163 = a2;
  sub_1000D2A70(a2, &v31[v32], &qword_1016980D0, &unk_10138F3B0);
  v33 = *(v22 + 48);
  if (v33(v31, 1, v21) == 1)
  {
    if (v33(&v31[v32], 1, v21) == 1)
    {
      sub_10000B3A8(v31, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_10;
    }

LABEL_6:
    v34 = &qword_1016AF880;
    v35 = &unk_10138CE20;
    v36 = v31;
LABEL_7:
    sub_10000B3A8(v36, v34, v35);
    return 0;
  }

  sub_1000D2A70(v31, v27, &qword_1016980D0, &unk_10138F3B0);
  if (v33(&v31[v32], 1, v21) == 1)
  {
    (*(v22 + 8))(v27, v21);
    goto LABEL_6;
  }

  (*(v22 + 32))(v24, &v31[v32], v21);
  sub_1008BEB90(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v22 + 8);
  v39(v24, v21);
  v39(v27, v21);
  sub_10000B3A8(v31, &qword_1016980D0, &unk_10138F3B0);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v41 = MyServiceDevice[5];
  v43 = v162;
  v42 = v163;
  v44 = (v162 + v41);
  v45 = *(v162 + v41 + 8);
  v46 = (v163 + v41);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = MyServiceDevice[6];
  v49 = (v43 + v48);
  v50 = *(v43 + v48 + 8);
  v51 = (v42 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v53 = MyServiceDevice[8];
  v54 = *(v43 + v53);
  v55 = *(v43 + v53 + 8);
  v56 = (v42 + v53);
  if ((v54 != *v56 || v55 != v56[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10076D5F8(*(v43 + MyServiceDevice[9]), *(v42 + MyServiceDevice[9])) & 1) == 0)
  {
    return 0;
  }

  v57 = MyServiceDevice[10];
  v58 = (v43 + v57);
  v59 = *(v43 + v57 + 8);
  v60 = (v42 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (*v58 != *v60 || v59 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = MyServiceDevice[11];
  v63 = *(v43 + v62);
  v64 = *(v43 + v62 + 8);
  v65 = (v42 + v62);
  if ((v63 != *v65 || v64 != v65[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v66 = MyServiceDevice[12];
  v67 = *(v43 + v66);
  v68 = *(v43 + v66 + 8);
  v69 = (v42 + v66);
  if ((v67 != *v69 || v68 != v69[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v70 = MyServiceDevice[13];
  v71 = *(v43 + v70);
  v72 = *(v43 + v70 + 8);
  v73 = (v42 + v70);
  if ((v71 != *v73 || v72 != v73[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v74 = MyServiceDevice[14];
  v75 = *(v43 + v74);
  v76 = *(v43 + v74 + 8);
  v77 = (v42 + v74);
  if ((v75 != *v77 || v76 != v77[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v78 = MyServiceDevice[15];
  v79 = (v43 + v78);
  v80 = *(v43 + v78 + 8);
  v81 = (v42 + v78);
  v82 = *(v42 + v78 + 8);
  if (v80)
  {
    if (!v82)
    {
      return 0;
    }
  }

  else
  {
    if (*v79 != *v81)
    {
      LOBYTE(v82) = 1;
    }

    if (v82)
    {
      return 0;
    }
  }

  v83 = MyServiceDevice[16];
  v84 = *(v43 + v83);
  v85 = *(v42 + v83);
  if (v84 == 4)
  {
    if (v85 != 4)
    {
      return 0;
    }
  }

  else if (v85 == 4 || (sub_10076D6E8(v84, v85) & 1) == 0)
  {
    return 0;
  }

  if (*(v43 + MyServiceDevice[17]) != *(v42 + MyServiceDevice[17]) || *(v43 + MyServiceDevice[18]) != *(v42 + MyServiceDevice[18]) || *(v43 + MyServiceDevice[19]) != *(v42 + MyServiceDevice[19]))
  {
    return 0;
  }

  v86 = MyServiceDevice;
  v87 = MyServiceDevice[20];
  v88 = *(v43 + v87);
  v89 = *(v43 + v87 + 8);
  v90 = (v42 + v87);
  if ((v88 != *v90 || v89 != v90[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v162 + MyServiceDevice[21]) != *(v163 + MyServiceDevice[21]))
  {
    return 0;
  }

  v91 = MyServiceDevice[22];
  v92 = *(v158 + 48);
  v93 = v160;
  sub_1000D2A70(v162 + v91, v160, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v163 + v91, v93 + v92, &unk_101696900, &unk_10138B1E0);
  v94 = *(v159 + 48);
  if (v94(v93, 1, v161) == 1)
  {
    if (v94(v160 + v92, 1, v161) == 1)
    {
      sub_10000B3A8(v160, &unk_101696900, &unk_10138B1E0);
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v95 = v160;
  sub_1000D2A70(v160, v156, &unk_101696900, &unk_10138B1E0);
  if (v94(v95 + v92, 1, v161) == 1)
  {
    (*(v159 + 8))(v156, v161);
LABEL_71:
    v34 = &unk_1016B1660;
    v35 = &unk_10138CE10;
    v36 = v160;
    goto LABEL_7;
  }

  v97 = v159;
  v96 = v160;
  v98 = v154;
  v99 = v161;
  (*(v159 + 32))(v154, v160 + v92, v161);
  sub_1008BEB90(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v100 = v156;
  v145 = dispatch thunk of static Equatable.== infix(_:_:)();
  v101 = *(v97 + 8);
  v101(v98, v99);
  v101(v100, v99);
  sub_10000B3A8(v96, &unk_101696900, &unk_10138B1E0);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_73:
  v102 = v86[23];
  v103 = v157;
  v104 = *(v158 + 48);
  sub_1000D2A70(v162 + v102, v157, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v163 + v102, &v103[v104], &unk_101696900, &unk_10138B1E0);
  if (v94(v103, 1, v161) == 1)
  {
    if (v94(&v157[v104], 1, v161) == 1)
    {
      sub_10000B3A8(v157, &unk_101696900, &unk_10138B1E0);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v105 = v157;
  sub_1000D2A70(v157, v153, &unk_101696900, &unk_10138B1E0);
  if (v94(&v105[v104], 1, v161) == 1)
  {
    (*(v159 + 8))(v153, v161);
LABEL_78:
    v34 = &unk_1016B1660;
    v35 = &unk_10138CE10;
    v36 = v157;
    goto LABEL_7;
  }

  v106 = v159;
  v107 = v157;
  v108 = v154;
  v109 = v161;
  (*(v159 + 32))(v154, &v157[v104], v161);
  sub_1008BEB90(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v110 = v153;
  LODWORD(v160) = dispatch thunk of static Equatable.== infix(_:_:)();
  v111 = *(v106 + 8);
  v111(v108, v109);
  v111(v110, v109);
  sub_10000B3A8(v107, &unk_101696900, &unk_10138B1E0);
  if ((v160 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  v112 = v86[24];
  v113 = *(v158 + 48);
  v114 = v155;
  sub_1000D2A70(v162 + v112, v155, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v163 + v112, &v114[v113], &unk_101696900, &unk_10138B1E0);
  if (v94(v114, 1, v161) == 1)
  {
    if (v94(&v155[v113], 1, v161) == 1)
    {
      sub_10000B3A8(v155, &unk_101696900, &unk_10138B1E0);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v115 = v155;
  sub_1000D2A70(v155, v152, &unk_101696900, &unk_10138B1E0);
  if (v94(&v115[v113], 1, v161) == 1)
  {
    (*(v159 + 8))(v152, v161);
LABEL_85:
    v34 = &unk_1016B1660;
    v35 = &unk_10138CE10;
    v36 = v155;
    goto LABEL_7;
  }

  v116 = v159;
  v117 = v155;
  v118 = &v155[v113];
  v119 = v154;
  v120 = v161;
  (*(v159 + 32))(v154, v118, v161);
  sub_1008BEB90(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v121 = v152;
  v122 = dispatch thunk of static Equatable.== infix(_:_:)();
  v123 = *(v116 + 8);
  v123(v119, v120);
  v123(v121, v120);
  sub_10000B3A8(v117, &unk_101696900, &unk_10138B1E0);
  if ((v122 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  if (*(v162 + v86[25]) != *(v163 + v86[25]))
  {
    return 0;
  }

  v124 = v86[26];
  v125 = (v162 + v124);
  v126 = *(v162 + v124 + 8);
  v127 = (v163 + v124);
  if ((*v125 != *v127 || v126 != v127[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v162 + v86[27]) != *(v163 + v86[27]) || *(v162 + v86[28]) != *(v163 + v86[28]) || *(v162 + v86[29]) != *(v163 + v86[29]))
  {
    return 0;
  }

  v128 = v86[30];
  v129 = *(v162 + v128);
  v130 = *(v163 + v128);
  if (v129 == 4)
  {
    if (v130 != 4)
    {
      return 0;
    }
  }

  else if (v130 == 4 || (sub_10076B9A8(v129, v130) & 1) == 0)
  {
    return 0;
  }

  v131 = v86[31];
  v132 = *(v146 + 48);
  v133 = v148;
  sub_1000D2A70(v162 + v131, v148, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(v163 + v131, &v133[v132], &unk_101696AC0, &qword_101390A60);
  v134 = *(v150 + 48);
  if (v134(v133, 1, v151) != 1)
  {
    v135 = v148;
    sub_1000D2A70(v148, v147, &unk_101696AC0, &qword_101390A60);
    if (v134(&v135[v132], 1, v151) != 1)
    {
      v137 = v149;
      v136 = v150;
      v138 = v148;
      v139 = &v148[v132];
      v140 = v151;
      (*(v150 + 32))(v149, v139, v151);
      sub_1008BEB90(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v141 = v147;
      v142 = dispatch thunk of static Equatable.== infix(_:_:)();
      v143 = *(v136 + 8);
      v143(v137, v140);
      v143(v141, v140);
      sub_10000B3A8(v138, &unk_101696AC0, &qword_101390A60);
      return (v142 & 1) != 0;
    }

    (*(v150 + 8))(v147, v151);
    goto LABEL_104;
  }

  if (v134(&v148[v132], 1, v151) != 1)
  {
LABEL_104:
    v34 = &qword_1016A8910;
    v35 = &qword_1013BE3A0;
    v36 = v148;
    goto LABEL_7;
  }

  sub_10000B3A8(v148, &unk_101696AC0, &qword_101390A60);
  return 1;
}

unint64_t sub_1008BEAAC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609B28, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008BEAF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609BA8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for FindMyServiceDevice(uint64_t a1)
{
  result = qword_1016ACFE0;
  if (!qword_1016ACFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BEB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1008BEC00(uint64_t a1)
{
  sub_1008BEE04(319, &qword_1016B1C20, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &unk_1016A0CD8, &type metadata for Double);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016ACFF0, &type metadata for FindMyServiceDevice.BatteryStatus);
          if (v5 <= 0x3F)
          {
            sub_1008BEE04(319, &qword_1016BA040, &type metadata accessor for Date);
            if (v6 <= 0x3F)
            {
              sub_1002359B8(319, &unk_1016ACFF8, &type metadata for FindMyServiceDeviceRepairStatus);
              if (v7 <= 0x3F)
              {
                sub_1008BEE04(319, &qword_1016A8128, &type metadata accessor for URL);
                if (v8 <= 0x3F)
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

void sub_1008BEE04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1008BEE8C()
{
  result = qword_1016AD090;
  if (!qword_1016AD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD090);
  }

  return result;
}

unint64_t sub_1008BEEE4()
{
  result = qword_1016AD098;
  if (!qword_1016AD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD098);
  }

  return result;
}

unint64_t sub_1008BEF38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C940, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1008BEF84(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AD0A0, &qword_1013C31E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1008BF0F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1008BF148();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1008BF0F4()
{
  result = qword_1016AD0A8;
  if (!qword_1016AD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0A8);
  }

  return result;
}

unint64_t sub_1008BF148()
{
  result = qword_1016AD0B0;
  if (!qword_1016AD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0B0);
  }

  return result;
}

unint64_t sub_1008BF1C0()
{
  result = qword_1016AD0B8;
  if (!qword_1016AD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0B8);
  }

  return result;
}

unint64_t sub_1008BF218()
{
  result = qword_1016AD0C0;
  if (!qword_1016AD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0C0);
  }

  return result;
}

unint64_t sub_1008BF270()
{
  result = qword_1016AD0C8;
  if (!qword_1016AD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0C8);
  }

  return result;
}

unint64_t sub_1008BF2C8()
{
  result = qword_1016AD0D0;
  if (!qword_1016AD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0D0);
  }

  return result;
}

unint64_t sub_1008BF31C()
{
  result = qword_1016AD0D8;
  if (!qword_1016AD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0D8);
  }

  return result;
}

uint64_t sub_1008BF394()
{
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1008BF558()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_1008C0D30();
}

uint64_t sub_1008BF5E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_1008C1A58();
}

uint64_t sub_1008BF678(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  type metadata accessor for DispatchQoS();
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1008BF70C, a2, 0);
}

uint64_t sub_1008BF70C()
{
  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  swift_retain_n();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1008BF818;
  v3 = v0[2];
  v2 = v0[3];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000002FLL, 0x8000000101363F20, v2, &unk_1013C3620, v3, &unk_1013C3630, v3);
}

uint64_t sub_1008BF818(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1008BF930, v2, 0);
}

uint64_t sub_1008BF930()
{
  *(v0[2] + 144) = v0[5];

  v1 = v0[1];

  return v1();
}

uint64_t sub_1008BF9A8()
{
  *(v1 + 16) = v0;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1008BFA44, v0, 0);
}

uint64_t sub_1008BFA44()
{
  v1 = v0[2];
  *(v1 + 152) = 1;
  v2 = *(v1 + 144);
  v0[4] = v2;
  if (v2)
  {
    v9 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1008BFBAC;
    v4 = v0[3];

    return v9(v4);
  }

  else
  {
    v6 = v0[3];
    v7 = type metadata accessor for XPCActivity.State();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10000B3A8(v6, &unk_10169BA88, &qword_101395670);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1008BFBAC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1008BFCD8, v1, 0);
}

uint64_t sub_1008BFCD8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1008BFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v5 = type metadata accessor for XPCActivity.Criteria.Options();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v3[25] = swift_task_alloc();
  v8 = type metadata accessor for XPCActivity.Criteria();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1008C0004, a3, 0);
}

uint64_t sub_1008C0004()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  sub_1000D2A70(v0[10], v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    sub_10000B3A8(v0[25], &qword_10169E370, &qword_1013BA3F0);
    if (*(v4 + 152))
    {
      goto LABEL_3;
    }

    v18 = v0[20];
    v19 = v0[21];
    v20 = v0[19];
    v21 = v0[11];
    v22 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
    swift_beginAccess();
    sub_1000D2A70(v21 + v22, v20, &unk_101696900, &unk_10138B1E0);
    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      sub_10000B3A8(v0[19], &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v37 = v0[23];
      v36 = v0[24];
      v38 = v0[20];
      v39 = v0[21];
      (*(v39 + 32))(v36, v0[19], v38);
      static Date.trustedNow.getter(v37);
      sub_1008CD500(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v40 = dispatch thunk of static Comparable.< infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v37, v38);
      v41(v36, v38);
      if ((v40 & 1) == 0)
      {
LABEL_3:
        v5 = v0[20];
        v6 = v0[21];
        v7 = v0[18];
        v8 = v0[11];
        v9 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
        swift_beginAccess();
        sub_1000D2A70(v8 + v9, v7, &unk_101696900, &unk_10138B1E0);
        v10 = *(v6 + 48);
        if (v10(v7, 1, v5) == 1)
        {
          v11 = v0[20];
          v12 = v0[18];
          static Date.distantPast.getter();
          if (v10(v12, 1, v11) != 1)
          {
            sub_10000B3A8(v0[18], &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          (*(v0[21] + 32))(v0[22], v0[18], v0[20]);
        }

        v24 = v0[22];
        v23 = v0[23];
        v25 = v0[20];
        v26 = v0[21];
        static Date.trustedNow.getter(v23);
        Date.timeIntervalSince(_:)();
        v28 = v27;
        v29 = v27;
        v30 = *(v26 + 8);
        v30(v23, v25);
        result = (v30)(v24, v25);
        v32 = 0.0;
        if (v28 >= 0.0 && (v32 = v28, (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
        {
          __break(1u);
        }

        else if (v32 > -9.22337204e18)
        {
          if (v32 < 9.22337204e18)
          {
            v33 = v0[27];
            v43 = v0[26];
            v34 = v0[9];
            (*(v0[16] + 104))(v0[17], enum case for XPCActivity.Priority.maintenance(_:), v0[15]);
            sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_10138BBE0;
            static XPCActivity.Criteria.Options.requiresNetwork.getter();
            static XPCActivity.Criteria.Options.requiresClassC.getter();
            v0[8] = v35;
            sub_1008CD500(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
            sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
            sub_100359D10();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
            (*(v33 + 56))(v34, 0, 1, v43);
            goto LABEL_17;
          }

LABEL_22:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    (*(v0[27] + 56))(v0[9], 1, 1, v0[26]);
    goto LABEL_17;
  }

  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[26];
  v16 = v0[9];
  v17 = *(v14 + 32);
  v17(v13, v0[25], v15);
  v17(v16, v13, v15);
  (*(v14 + 56))(v16, 0, 1, v15);
LABEL_17:

  v42 = v0[1];

  return v42();
}

uint64_t sub_1008C05B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for XPCActivity.State();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1008C0680, a3, 0);
}

uint64_t sub_1008C0680()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[8] = sub_1000076D4(v5, qword_10177B078);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Run fetch device list.", v8, 2u);
    }

    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1008C0920;

    return sub_1008C391C();
  }

  else if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    type metadata accessor for XPCActivity();
    sub_1008CD500(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008C0B04, v12, v11);
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1008C0920()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1008C0B70;
    v5 = 0;
  }

  else
  {
    type metadata accessor for XPCActivity();
    sub_1008CD500(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v4 = sub_1008C0A98;
    v3 = v6;
    v5 = v8;
  }

  return _swift_task_switch(v4, v3, v5);
}

uint64_t sub_1008C0A98()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1000EFE28, v1, 0);
}

uint64_t sub_1008C0B04()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1008CD60C, v1, 0);
}

uint64_t sub_1008C0B70()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "Failed to fetch devices, %{public}@.", v2, 0xCu);
    sub_10000B3A8(v3, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for XPCActivity();
  sub_1008CD500(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008C0A98, v6, v5);
}

uint64_t sub_1008C0D30()
{
  v1[5] = v0;
  v2 = sub_1000BC4D4(&qword_101698D30, &qword_1013908B8);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101698D38, &qword_1013908C0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_1008C0E94;

  return daemon.getter();
}

uint64_t sub_1008C0E94(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for APSNotificationService();
  v6 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008CD500(&qword_101698D40, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  *v3 = v9;
  v3[1] = sub_1008C1070;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008C1070(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v3 = *(v4 + 40);

    v5 = sub_1008C1734;
  }

  else
  {

    v5 = sub_1008C11C8;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_1008C11C8()
{
  v1 = *(v0 + 40);
  sub_100E7BD7C(0xD000000000000029, 0x8000000101363EC0);

  return _swift_task_switch(sub_1008C1250, v1, 0);
}

uint64_t sub_1008C1250()
{
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1008CD500(&qword_1016AD2B8, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3580);
  v0[16] = v1;
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1008C134C;
  v4 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v4);
}

uint64_t sub_1008C134C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1008C145C, v1, 0);
}

uint64_t sub_1008C145C()
{
  v1 = v0[2];
  if (v1)
  {
    sub_1008CD190(v1, v0[3], v0[4]);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1008C159C;

    return sub_1008C391C();
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[6];
    v9 = v0[7];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1008C159C()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_1008C185C, v3, 0);
  }

  else
  {
    v4 = v2[16];
    v5 = v2[5];
    v6 = swift_task_alloc();
    v2[17] = v6;
    *v6 = v2;
    v6[1] = sub_1008C134C;
    v7 = v2[6];

    return AsyncStream.Iterator.next(isolation:)(v2 + 2, v5, v4, v7);
  }
}

uint64_t sub_1008C1734()
{
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B078);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service: APSNotificationService", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1008C185C()
{
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B078);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch device list: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[16];
  v8 = v0[5];
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1008C134C;
  v10 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v8, v7, v10);
}

uint64_t sub_1008C1A58()
{
  v1[6] = v0;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for FindMyServiceDevice(0);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for FindMyServiceDeviceStore.ListChange(0);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016AD2E8, &qword_1013C35C8);
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016AD2F0, &qword_1013C35D0);
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[31] = v6;
  *v6 = v1;
  v6[1] = sub_1008C1D48;

  return daemon.getter();
}

uint64_t sub_1008C1D48(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[32] = a1;

  v3 = swift_task_alloc();
  v2[33] = v3;
  v4 = type metadata accessor for Daemon();
  v2[34] = v4;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[35] = v6;
  v7 = sub_1008CD500(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_1008C1F28;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_1008C1F28(uint64_t a1)
{
  v3 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_1008C36B8;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_1008C2050;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008C2050()
{
  if (*(v0[6] + 128))
  {
    v2 = v0[29];
    v1 = v0[30];
    v3 = v0[27];
    v4 = v0[28];
    AsyncStreamProvider.stream(initialEvents:)();
    (*(v4 + 32))(v1, v2, v3);
    AsyncStream.makeAsyncIterator()();
    v5 = sub_1008CD500(&qword_1016AD2B8, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3580);
    v0[38] = v5;
    v6 = v0[6];
    v7 = swift_task_alloc();
    v0[39] = v7;
    *v7 = v0;
    v7[1] = sub_1008C2358;
    v8 = v0[24];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, v6, v5, v8);
  }

  else
  {
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B078);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to subscribe to device list updates (missing deviceListStream).", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1008C2358()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1008C2468, v1, 0);
}

uint64_t sub_1008C2468()
{
  if (v0[2])
  {
    v1 = v0[3];

    v0[4] = &_swiftEmptySetSingleton;
    v0[5] = &_swiftEmptySetSingleton;
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[22];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v60 = *(v3 + 72);
      do
      {
        sub_1008CCF78(v4, v0[23], type metadata accessor for FindMyServiceDeviceStore.ListChange);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v15 = v0[23];
        v16 = v0[10];
        v17 = (v0[11] + 48);
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v18 = v0[19];
            v19 = v0[8];
            sub_1008CCD18(v15, v18);
            sub_1000D2A70(v18, v19, &qword_1016980D0, &unk_10138F3B0);
            v20 = *v17;
            if ((*v17)(v19, 1, v16) == 1)
            {
              v21 = v0[10];
              v22 = v0[8];
              v6 = *(v0[11] + 16);
              v6(v0[13], v0[19] + *(v0[17] + 28), v21);
              if (v20(v22, 1, v21) != 1)
              {
                sub_10000B3A8(v0[8], &qword_1016980D0, &unk_10138F3B0);
              }
            }

            else
            {
              v5 = v0[11];
              (*(v5 + 32))(v0[13], v0[8], v0[10]);
              v6 = *(v5 + 16);
            }

            v8 = v0[14];
            v7 = v0[15];
            v9 = v0[13];
            v11 = v0[10];
            v10 = v0[11];
            v6(v8, v9, v11);
            sub_100DE8BCC(v7, v8);
            v12 = *(v10 + 8);
            v12(v7, v11);
            v12(v9, v11);
            v13 = v0 + 19;
          }

          else
          {
            v29 = v0[18];
            v30 = v0[7];
            sub_1008CCD18(v15, v29);
            sub_1000D2A70(v29, v30, &qword_1016980D0, &unk_10138F3B0);
            if ((*v17)(v30, 1, v16) == 1)
            {
              v31 = v0[11];
              sub_10000B3A8(v0[7], &qword_1016980D0, &unk_10138F3B0);
              v32 = *(v31 + 16);
            }

            else
            {
              v41 = v0[14];
              v40 = v0[15];
              v42 = v0[11];
              v43 = v0[12];
              v44 = v0[10];
              (*(v42 + 32))(v43, v0[7], v44);
              v32 = *(v42 + 16);
              v32(v41, v43, v44);
              sub_100DE8BCC(v40, v41);
              v45 = *(v42 + 8);
              v45(v40, v44);
              v45(v43, v44);
            }

            v47 = v0[14];
            v46 = v0[15];
            v49 = v0[10];
            v48 = v0[11];
            v32(v47, v0[18] + *(v0[17] + 28), v49);
            sub_100DE8BCC(v46, v47);
            (*(v48 + 8))(v46, v49);
            v13 = v0 + 18;
          }
        }

        else
        {
          v23 = v0[20];
          v24 = v0[9];
          sub_1008CCD18(v15, v23);
          sub_1000D2A70(v23, v24, &qword_1016980D0, &unk_10138F3B0);
          v25 = *v17;
          if ((*v17)(v24, 1, v16) == 1)
          {
            v26 = v0[10];
            v27 = v0[9];
            v28 = *(v0[11] + 16);
            v28(v0[16], v0[20] + *(v0[17] + 28), v26);
            if (v25(v27, 1, v26) != 1)
            {
              sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
            }
          }

          else
          {
            v33 = v0[11];
            (*(v33 + 32))(v0[16], v0[9], v0[10]);
            v28 = *(v33 + 16);
          }

          v35 = v0[15];
          v34 = v0[16];
          v36 = v0[14];
          v38 = v0[10];
          v37 = v0[11];
          v28(v36, v34, v38);
          sub_100DE8BCC(v35, v36);
          v39 = *(v37 + 8);
          v39(v35, v38);
          v39(v34, v38);
          v13 = v0 + 20;
        }

        sub_1008CCEA8(*v13, type metadata accessor for FindMyServiceDevice);
        v4 += v60;
        --v2;
      }

      while (v2);

      v50 = v0[4];
    }

    else
    {

      v50 = &_swiftEmptySetSingleton;
    }

    v0[40] = v50;
    v59 = v0[36];

    return _swift_task_switch(sub_1008C2AF0, v59, 0);
  }

  else
  {
    v51 = v0[30];
    v52 = v0[27];
    v53 = v0[28];
    v55 = v0[25];
    v54 = v0[26];
    v56 = v0[24];

    (*(v55 + 8))(v54, v56);
    (*(v53 + 8))(v51, v52);

    v57 = v0[1];

    return v57();
  }
}

uint64_t sub_1008C2AF0()
{
  if (*(v0[40] + 16))
  {
    v1 = swift_task_alloc();
    v0[41] = v1;
    *v1 = v0;
    v1[1] = sub_1008C2BD0;

    return daemon.getter();
  }

  else
  {

    v2 = v0[36];
    v0[44] = v0[5];

    return _swift_task_switch(sub_1008C2EEC, v2, 0);
  }
}

uint64_t sub_1008C2BD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 336) = a1;

  v5 = swift_task_alloc();
  *(v3 + 344) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1008CD500(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1008C2D84;
  v8 = *(v2 + 280);
  v9 = *(v2 + 272);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1008C2D84(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 288);
  if (v1)
  {

    v7 = sub_1008C3104;
  }

  else
  {

    *(v5 + 360) = a1;
    v7 = sub_1008C2FC4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1008C2EEC()
{
  if (*(v0[44] + 16))
  {
    v1 = swift_task_alloc();
    v0[46] = v1;
    *v1 = v0;
    v1[1] = sub_1008C3174;

    return daemon.getter();
  }

  else
  {

    v2 = v0[6];

    return _swift_task_switch(sub_1008C3490, v2, 0);
  }
}

uint64_t sub_1008C2FC4()
{
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[36];
  type metadata accessor for WorkItemQueue.WorkItem();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[36];
  v0[44] = v0[5];

  return _swift_task_switch(sub_1008C2EEC, v5, 0);
}

uint64_t sub_1008C3104()
{

  v1 = v0[36];
  v0[44] = v0[5];

  return _swift_task_switch(sub_1008C2EEC, v1, 0);
}

uint64_t sub_1008C3174(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 376) = a1;

  v5 = swift_task_alloc();
  *(v3 + 384) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1008CD500(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1008C3328;
  v8 = *(v2 + 280);
  v9 = *(v2 + 272);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1008C3328(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 288);
  if (v1)
  {

    v7 = sub_1008C3650;
  }

  else
  {

    *(v5 + 392) = a1;
    v7 = sub_1008C3548;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1008C3490()
{
  v1 = v0[38];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_1008C2358;
  v4 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v4);
}

uint64_t sub_1008C3548()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[36];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[6];

  return _swift_task_switch(sub_1008C3490, v5, 0);
}

uint64_t sub_1008C3650()
{

  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1008C3490, v1, 0);
}

uint64_t sub_1008C36B8()
{

  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B078);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to subscribe to device list updates (missing service): %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C391C()
{
  v1[48] = v0;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  v1[49] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[50] = swift_task_alloc();
  v2 = type metadata accessor for Response();
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = type metadata accessor for FindMyServiceDeviceListEndpoint(0);
  v1[55] = swift_task_alloc();
  type metadata accessor for SearchpartyAccount(0);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = type metadata accessor for FindMyServiceDeviceListPayload(0);
  v1[60] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[61] = v3;
  v1[62] = *(v3 - 8);
  v1[63] = swift_task_alloc();
  v1[64] = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  v1[65] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[66] = v4;
  *v4 = v1;
  v4[1] = sub_1008C3BAC;

  return daemon.getter();
}

uint64_t sub_1008C3BAC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[67] = a1;

  v3 = swift_task_alloc();
  v2[68] = v3;
  v4 = type metadata accessor for Daemon();
  v2[69] = v4;
  v5 = type metadata accessor for APSNotificationService();
  v6 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[70] = v6;
  v7 = sub_1008CD500(&qword_101698D40, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  *v3 = v9;
  v3[1] = sub_1008C3D8C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008C3D8C(uint64_t a1)
{
  v4 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  if (v1)
  {
    v5 = v4[48];
    v6 = sub_1008C6768;
  }

  else
  {

    v6 = sub_1008C3EC8;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008C3EC8()
{
  v1 = v0[71];
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {

    v3 = sub_100771D58(0xD000000000000029, 0x8000000101363EC0);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      sub_100017D5C(*v5, v7);

      v0[76] = v7;
      v0[75] = v6;
      v8 = v0[48];

      return _swift_task_switch(sub_1008C4264, v8, 0);
    }
  }

  v9 = swift_task_alloc();
  v0[73] = v9;
  *v9 = v0;
  v9[1] = sub_1008C4034;

  return sub_100E7DE18(0xD000000000000029, 0x8000000101363EC0, 500000000000000000, 0);
}