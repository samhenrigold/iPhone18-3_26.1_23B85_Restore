unint64_t CBUseCase.description.getter(int a1)
{
  if (a1 <= 65554)
  {
    switch(a1)
    {
      case 65536:
        goto LABEL_12;
      case 65540:
        _StringGuts.grow(_:)(36);

        v5 = 0xD000000000000021;
        goto LABEL_16;
      case 65542:
        _StringGuts.grow(_:)(40);

        v5 = 0xD000000000000025;
        goto LABEL_16;
    }
  }

  else
  {
    if (a1 <= 65556)
    {
      if (a1 != 65555)
      {
        _StringGuts.grow(_:)(31);

        v5 = 0xD00000000000001CLL;
LABEL_16:
        v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v2);

        v3._countAndFlagsBits = 41;
        v3._object = 0xE100000000000000;
        String.append(_:)(v3);
        return v5;
      }

LABEL_12:
      _StringGuts.grow(_:)(27);

      v5 = 0xD000000000000018;
      goto LABEL_16;
    }

    if (a1 == 65557)
    {
      _StringGuts.grow(_:)(30);

      v5 = 0xD00000000000001BLL;
      goto LABEL_16;
    }

    if (a1 == 65558)
    {
      _StringGuts.grow(_:)(34);

      v5 = 0xD00000000000001FLL;
      goto LABEL_16;
    }
  }

  v5 = 0x7361436573554243;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v5;
}

void sub_1010BFE0C(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccessoryCommand(0) + 24));
  v4 = v3[1];
  v5 = v3[4];
  v6 = (v5 >> 59) & 6 | ((v4 & 0x2000000000000000) != 0);
  v7 = v6 == 4;
  if (v6 >= 4)
  {
    v13 = *v3;
    if (v7)
    {
      v14 = 0;
      v15 = v13;
      v16 = 0x1000000000000000;
    }

    else
    {
      v18 = v3[5];
      v19 = v3[2] | v3[3];
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v5 == 0x2000000000000000;
      }

      if (v20 && v4 == 0x2000000000000000 && (v19 | v13) == 0)
      {
        goto LABEL_2;
      }

      v23 = !v18 && v5 == 0x2000000000000000;
      v24 = v23 && v4 == 0x2000000000000000;
      v25 = v24 && v13 == 1;
      if (v25 && v19 == 0)
      {
        goto LABEL_2;
      }

      v27 = !v18 && v5 == 0x2000000000000000;
      v28 = v27 && v4 == 0x2000000000000000;
      v29 = v28 && v13 == 2;
      v30 = v29 && v19 == 0;
      if (v30 || !v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 3 && !v19 || !v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 4 && !v19)
      {
        goto LABEL_2;
      }

      if (!v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 5 && !v19)
      {
        v31 = 0;
LABEL_68:
        *(a1 + 24) = &type metadata for AccessoryOwnerCommand;
        *(a1 + 32) = sub_100EDE524();
        *(a1 + 40) = sub_100DDA200();
        v32 = swift_allocObject();
        *a1 = v32;
        *(v32 + 16) = v31;
        *(v32 + 24) = 0;
        *(v32 + 32) = 0;
        *(v32 + 40) = 0;
        *(v32 + 48) = 2;
        return;
      }

      if (!v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 6 && !v19)
      {
        v31 = 1;
        goto LABEL_68;
      }

      if (!v18 && (v16 = 0x2000000000000000, v5 == 0x2000000000000000) && v4 == 0x2000000000000000 && v13 == 7 && !v19)
      {
        v14 = 1;
        v15 = 3;
      }

      else
      {
        v15 = v13 != 8;
        v14 = 1;
        v16 = 0x2000000000000000;
      }
    }

    *(a1 + 24) = &type metadata for AccessoryNonOwnerCommand;
    *(a1 + 32) = sub_10038BDD8();
    *(a1 + 40) = sub_10038BD74();
    v17 = swift_allocObject();
    *a1 = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 40) = v16;
    *(v17 + 48) = v14;
    return;
  }

LABEL_2:
  sub_1010BF57C(&v33);
  v8 = v34;
  v9 = v36;
  if ((~(v34 & v36) & 0x3000000000000000) != 0)
  {
    v10 = v33;
    v11 = v37;
    *(a1 + 24) = &type metadata for AccessoryConfigCommand;
    *(a1 + 32) = sub_10067C180();
    *(a1 + 40) = sub_10067C1D4();
    v12 = swift_allocObject();
    *a1 = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v8;
    *(v12 + 32) = v35;
    *(v12 + 48) = v9;
    *(v12 + 56) = v11;
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

uint64_t sub_1010C00BC()
{
  _StringGuts.grow(_:)(63);
  v1._countAndFlagsBits = 0x646E616D6D6F633CLL;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1002FFBAC();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A6570797420;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for AccessoryCommand(0);
  v5._countAndFlagsBits = sub_1010C02C0();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6573614365737520;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v7 = sub_1010BF910();
  v8._countAndFlagsBits = CBUseCase.description.getter(v7);
  String.append(_:)(v8);

  v9._object = 0x800000010137ACC0;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v9);
  if (*(v0 + *(v4 + 32)))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + *(v4 + 32)))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t type metadata accessor for AccessoryCommand(uint64_t a1)
{
  result = qword_1016C7398;
  if (!qword_1016C7398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1010C02C0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  v4 = v1 | ((*(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32)) << 8);
  v5 = (v3 >> 59) & 6 | ((v2 & 0x2000000000000000) != 0);
  if (v5 <= 2)
  {
    if (!v5)
    {
      v14 = 0x28726961706E752ELL;
      if (v1)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v1)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = v8;
      goto LABEL_19;
    }

    if (v5 == 1)
    {
      v14 = 0x756F5379616C702ELL;
LABEL_18:
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_19:
      String.append(_:)(*&v7);

      v11._countAndFlagsBits = 41;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      return v14;
    }

    _StringGuts.grow(_:)(19);

    v6 = 0xD000000000000010;
LABEL_17:
    v14 = v6;
    goto LABEL_18;
  }

  if (v5 == 3)
  {
    return 0xD000000000000013;
  }

  if (v5 == 4)
  {
    _StringGuts.grow(_:)(27);

    v6 = 0xD000000000000018;
    goto LABEL_17;
  }

  v12 = *(v0 + 5);
  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && !(*(v0 + 2) | *(v0 + 3) | v4))
  {
    return 0x7463656E6E6F632ELL;
  }

  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 1 && *(v0 + 1) == 0)
  {
    return 0x756F53706F74732ELL;
  }

  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 2 && *(v0 + 1) == 0)
  {
    return 0x465442706F74732ELL;
  }

  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 3 && *(v0 + 1) == 0)
  {
    return 0x585468637465662ELL;
  }

  result = 0xD000000000000013;
  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 4 && *(v0 + 1) == 0 || !v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 5 && *(v0 + 1) == 0)
  {
    return 0xD000000000000015;
  }

  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 6 && *(v0 + 1) == 0)
  {
    return 0xD000000000000014;
  }

  if (!v12 && v3 == 0x2000000000000000 && v2 == 0x2000000000000000 && v4 == 7 && *(v0 + 1) == 0)
  {
    return 0xD000000000000016;
  }

  if (v12 || v3 != 0x2000000000000000 || v2 != 0x2000000000000000 || v4 != 8 || *(v0 + 1) != 0)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_1010C0720(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1010C07A8(uint64_t a1)
{
  v1 = (*(a1 + 32) >> 59) & 6 | ((*(a1 + 8) & 0x2000000000000000) != 0);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1010C07D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 48))
  {
    return (*a1 + 11);
  }

  v3 = ((((*(a1 + 32) >> 58) & 0xC | (*(a1 + 8) >> 60) & 2) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0))) ^ 0xF;
  if (v3 >= 0xA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1010C083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 & 8) != 0) | ((2 * (-a2 & 0xF)) & 3)) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 3) & 1 | (2 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_1010C08A8(uint64_t result)
{
  v1 = *(result + 32) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 8) &= ~0x2000000000000000uLL;
  *(result + 32) = v1;
  return result;
}

void *sub_1010C08C4(void *result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = result[4] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    result[4] = v2;
  }

  else
  {
    *result = a2 - 5;
    result[1] = 0x2000000000000000;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_10139BF70;
  }

  return result;
}

uint64_t sub_1010C0920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 200))
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

uint64_t sub_1010C0974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1010C0A04(void *a1)
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
    v15 = v1[5];
    v5 = v1[5];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v15, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v14 = v1[6];
    v5 = v1[6];
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
    v11 = v1[7];
    v5 = v1[7];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v11, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v10 = v1[8];
    v5 = v1[8];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[9];
    v5 = v1[9];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[10];
    v5 = v1[10];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v5, *(&v5 + 1));
  return sub_100007BAC(v6);
}

__n128 sub_1010C0E3C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1010C0F5C(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11;
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1010C0ED8(uint64_t a1)
{
  *(a1 + 8) = sub_1010C0F08();
  result = sub_100A22174();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1010C0F08()
{
  result = qword_1016C73E0;
  if (!qword_1016C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C73E0);
  }

  return result;
}

uint64_t sub_1010C0F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v76, v77);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
LABEL_22:
    sub_100007BAC(v76);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v76, v77);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v79 = v10;
  sub_10015049C(v76, v77);
  v74 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v75 = v11;
  sub_10015049C(v76, v77);
  v72 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v73 = v12;
  v13 = v78;
  sub_10015049C(v76, v77);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v15;
  v17 = static MACAddress.length.getter();
  if ((v17 * 3) >> 64 != (3 * v17) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v70 = v14;
  v71 = v16;
  if (__OFADD__(3 * v17, 60))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    if (qword_1016950D0 == -1)
    {
LABEL_19:
      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177C418);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v37, v38, "Invalid beaconPartId %ld!", v39, 0xCu);
      }

      v40 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v40 - 8) + 104))(v41, enum case for BinaryDecodingError.decodingError(_:), v40);
      swift_willThrow();
      sub_100016590(v50, v13);
      sub_100016590(v51, v52);
      sub_100016590(v53, v54);
      sub_100016590(v55, v56);
      sub_100016590(v57, v58);
      sub_100016590(v59, v60);
      sub_100016590(v61, v62);
      sub_100016590(v63, v64);
      sub_100016590(v66, v67);
      sub_100016590(v68, v69);
      sub_100016590(v70, v71);
      sub_100016590(v72, v73);
      sub_100016590(v74, v75);
      sub_100016590(v9, v79);
      sub_100016590(v7, v8);
      goto LABEL_22;
    }

LABEL_49:
    swift_once();
    goto LABEL_19;
  }

  sub_10015049C(v76, v77);
  v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v19 = v18;
  LOBYTE(v65) = sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v22 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  result = static MACAddress.length.getter();
  v21 = result + 20;
  if (__OFADD__(result, 20))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22 * v21;
  v21 = (v22 * v21) >> 64;
  if (v21 != v23 >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v68 = v13;
  v69 = v19;
  v66 = Data.subdata(in:)();
  v67 = v24;
  sub_10015049C(v76, v77);
  v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v26 = v25;
  result = DataProtocol.intValue.getter();
  v21 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = 21 * v21;
  v21 = (v21 * 21) >> 64;
  if (v21 != v27 >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v27 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v63 = v13;
  v64 = v26;
  v61 = Data.subdata(in:)();
  v62 = v28;
  sub_10015049C(v76, v77);
  v59 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v60 = v29;
  sub_10015049C(v76, v77);
  v57 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v58 = v30;
  sub_10015049C(v76, v77);
  v55 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v56 = v31;
  sub_10015049C(v76, v77);
  v53 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v54 = v32;
  sub_10015049C(v76, v77);
  v51 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v52 = v33;
  v65 = DataProtocol.intValue.getter();
  sub_10015049C(v76, v77);
  v50 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v13 = v34;
  if (v65 > 3)
  {
    goto LABEL_18;
  }

  sub_100016590(v51, v52);
  sub_100016590(v63, v26);
  result = sub_100016590(v68, v69);
  if (v65 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v21 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v21)
    {
      v35 = BYTE6(v8);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_30:
  if (v21 != 2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v42 = *(v7 + 16);
  v43 = *(v7 + 24);
  v44 = __OFSUB__(v43, v42);
  v35 = v43 - v42;
  if (v44)
  {
    __break(1u);
LABEL_34:
    LODWORD(v35) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v35 = v35;
  }

LABEL_36:
  if (v35 != 32)
  {
    goto LABEL_52;
  }

  v45 = v71 >> 62;
  if ((v71 >> 62) <= 1)
  {
    if (!v45)
    {
      v46 = BYTE6(v71);
      goto LABEL_46;
    }

LABEL_44:
    LODWORD(v46) = HIDWORD(v70) - v70;
    if (!__OFSUB__(HIDWORD(v70), v70))
    {
      v46 = v46;
      goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (v45 != 2)
  {
    goto LABEL_53;
  }

  v48 = *(v70 + 16);
  v47 = *(v70 + 24);
  v44 = __OFSUB__(v47, v48);
  v46 = v47 - v48;
  if (v44)
  {
    __break(1u);
    goto LABEL_44;
  }

LABEL_46:
  if (v46 == 1)
  {
    sub_100007BAC(v76);
    result = sub_100007BAC(a1);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v70;
    *(a2 + 24) = v71;
    v49 = v79;
    *(a2 + 32) = v9;
    *(a2 + 40) = v49;
    *(a2 + 48) = v66;
    *(a2 + 56) = v67;
    *(a2 + 64) = v61;
    *(a2 + 72) = v62;
    *(a2 + 80) = v74;
    *(a2 + 88) = v75;
    *(a2 + 96) = v72;
    *(a2 + 104) = v73;
    *(a2 + 112) = v59;
    *(a2 + 120) = v60;
    *(a2 + 128) = v57;
    *(a2 + 136) = v58;
    *(a2 + 144) = v55;
    *(a2 + 152) = v56;
    *(a2 + 160) = v53;
    *(a2 + 168) = v54;
    *(a2 + 176) = v65;
    *(a2 + 184) = v50;
    *(a2 + 192) = v13;
    return result;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1010C16DC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6 && (v7 = String._bridgeToObjectiveC()(), v8 = [v4 BOOLForKey:v7], v7, (v8 & 1) != 0))
  {
    v9 = &enum case for FMNAccountType.none(_:);
  }

  else if (a1 == 2)
  {
    v9 = &enum case for FMNAccountType.thirdPartyAccessory(_:);
  }

  else
  {
    v9 = &enum case for FMNAccountType.accessory(_:);
  }

  v10 = *v9;
  v11 = type metadata accessor for FMNAccountType();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t type metadata accessor for AccessoryInfoEndPoint(uint64_t a1)
{
  result = qword_1016C7440;
  if (!qword_1016C7440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1010C18AC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FMNAccountType();
  v5 = *(v42 - 8);
  v6 = __chkstk_darwin(v42);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C218;
  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 isInternalBuild];

  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [v13 BOOLForKey:v17];

    if (v18)
    {
      URLComponents.init(string:)();
      v5 = v12;
      if ((*(v3 + 48))(v12, 1, v2) != 1)
      {
        return (*(v3 + 32))(a1, v5, v2);
      }

      __break(1u);
    }
  }

  v37 = v14;
  v38 = v13;
  v39 = v3;
  v40 = v2;
  v35 = a1;
  v19 = v5;
  v36 = *(v5 + 2);
  v20 = v44;
  v21 = v42;
  v36(v9, v44, v42);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  v22 = sub_1010B32C8(v9);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  v34 = v22;
  OS_dispatch_queue.sync<A>(execute:)();
  v5 = v43;
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v23 = v41;
  v36(v41, v20, v21);
  if ((*(v19 + 11))(v23, v21) == enum case for FMNAccountType.thirdPartyAccessory(_:))
  {
    v24 = URLComponents.path.modify();
    v25._object = 0x800000010137ADC0;
    v25._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v25);
    v24(&v45, 0);
  }

  else
  {
    URLComponents.path.setter();
    (*(v19 + 1))(v23, v21);
  }

  v26 = [v37 sharedInstance];
  v27 = [v26 isInternalBuild];

  v3 = v39;
  v2 = v40;
  v28 = v38;
  if (v27)
  {
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 stringForKey:v29];

    if (v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v32 = result;
    v33 = [result aa_primaryAppleAccount];

    if (v33)
    {
    }

    else
    {
      URLComponents.host.setter();
    }

    a1 = v35;
    return (*(v3 + 32))(a1, v5, v2);
  }

  __break(1u);
  return result;
}

void *sub_1010C1E70(double a1, double a2, double a3)
{
  v7 = sub_1000BC4D4(&qword_1016C7478, &qword_1014047B8);
  __chkstk_darwin(v7 - 8);
  v99 = &v87 - v8;
  updated = type metadata accessor for UpdateDeviceState(0);
  v94 = *(updated - 8);
  v9 = __chkstk_darwin(updated);
  v103 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v88 = &v87 - v12;
  __chkstk_darwin(v11);
  v87 = &v87 - v13;
  v101 = type metadata accessor for UUID();
  v105 = *(v101 - 8);
  v14 = __chkstk_darwin(v101);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v97 = &v87 - v17;
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = sub_100034838(v106);

  v19 = sub_1010C6214(v18, 9, a1);
  sub_1010C3744(v18, a2);
  v21 = v20;
  sub_1010C6C3C(v18, a2, a3);

  v23 = sub_1010C7B3C(v22, v3);
  v102 = v3;

  v24 = *(v21 + 16);
  v25 = v19[2];
  v89 = 0;
  if (v24 > v25 >> 3)
  {
    v26 = sub_100610BC8(v21, v19);
  }

  else
  {
    v106 = v19;
    sub_10087D5B4(v21);
    v26 = v106;
  }

  if (*(v23 + 16) <= v26[2] >> 3)
  {
    v106 = v26;
    sub_10087D5B4(v23);
    v100 = v106;
  }

  else
  {
    v100 = sub_100610BC8(v23, v26);
  }

  v96 = v23;
  v104 = v21;
  v27 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v28 = qword_10177C400;
  v29 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  v95 = xmmword_101385D80;
  *(v30 + 16) = xmmword_101385D80;
  v92 = sub_1010C8B3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = Set.description.getter();
  v33 = v32;

  *(v30 + 56) = &type metadata for String;
  v34 = sub_100008C00();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v93 = v28;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Firmware update not eligible: %@", 32, 2, v30);

  v35 = static os_log_type_t.default.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = v95;
  v37 = Set.description.getter();
  v39 = v38;

  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v34;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v28, "Firmware update not eligible and not forced: %@", 47, 2, v36);

  v40 = static os_log_type_t.default.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v95;
  v42 = Set.description.getter();
  v44 = v43;

  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = v34;
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  v45 = v93;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v93, "Firmware update in progress beacons: %@", 39, 2, v41);

  v46 = static os_log_type_t.default.getter();
  v91 = v29;
  v47 = swift_allocObject();
  *(v47 + 16) = v95;
  v48 = v100;
  v49 = Set.description.getter();
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = v34;
  v90 = v34;
  *(v47 + 32) = v49;
  *(v47 + 40) = v50;
  os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v45, "Firmware notified, but not in progress: %@", 42, 2, v47);

  v51 = v48 + 7;
  v52 = 1 << *(v48 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v48[7];
  v55 = (v52 + 63) >> 6;
  v104 = (v105 + 16);
  v96 = v105 + 8;
  v56 = (v94 + 48);
  swift_retain_n();

  v57 = 0;
  v92 = _swiftEmptyArrayStorage;
  v58 = v16;
LABEL_11:
  v59 = v57;
  v27 = v99;
  if (!v54)
  {
    goto LABEL_13;
  }

  do
  {
    v57 = v59;
LABEL_16:
    v60 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v61 = v101;
    v62 = v105;
    v63 = v97;
    (*(v105 + 16))(v97, v100[6] + *(v105 + 72) * (v60 | (v57 << 6)), v101);
    sub_1010C4828(v63, v27);
    v27 = v99;
    (*(v62 + 8))(v63, v61);
    if ((*v56)(v27, 1, updated) != 1)
    {
      v64 = v87;
      sub_100029488(v27, v87, type metadata accessor for UpdateDeviceState);
      sub_100029488(v64, v88, type metadata accessor for UpdateDeviceState);
      v65 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_100A5C4A8(0, v65[2] + 1, 1, v65);
      }

      v16 = v58;
      v92 = v65;
      v67 = v65[2];
      v66 = v65[3];
      if (v67 >= v66 >> 1)
      {
        v92 = sub_100A5C4A8((v66 > 1), v67 + 1, 1, v92);
      }

      v68 = v92;
      v92[2] = v67 + 1;
      sub_100029488(v88, v68 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v67, type metadata accessor for UpdateDeviceState);
      goto LABEL_11;
    }

    sub_10000B3A8(v27, &qword_1016C7478, &qword_1014047B8);
    v59 = v57;
    v16 = v58;
  }

  while (v54);
  while (1)
  {
LABEL_13:
    v57 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = v51[v57];
    ++v59;
    if (v54)
    {
      goto LABEL_16;
    }
  }

  v106 = v92;

  v69 = v89;
  sub_1010C369C(&v106);
  if (v69)
  {

    __break(1u);
  }

  else
  {

    v70 = v106;
    v71 = v106[2];
    v72 = v101;
    v73 = v94;
    if (v71)
    {
      v106 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v71, 0);
      v74 = v106;
      v75 = *(v73 + 80);
      v100 = v70;
      v76 = v70 + ((v75 + 32) & ~v75);
      v77 = *(v73 + 72);
      do
      {
        v78 = v103;
        sub_10003500C(v76, v103, type metadata accessor for UpdateDeviceState);
        (*v104)(v16, v78, v72);
        sub_1010C8B84(v78, type metadata accessor for UpdateDeviceState);
        v106 = v74;
        v80 = v74[2];
        v79 = v74[3];
        if (v80 >= v79 >> 1)
        {
          sub_101123D4C((v79 > 1), v80 + 1, 1);
          v74 = v106;
        }

        v74[2] = v80 + 1;
        (*(v105 + 32))(v74 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v80, v16, v72);
        v76 += v77;
        --v71;
      }

      while (v71);
    }

    else
    {

      v74 = _swiftEmptyArrayStorage;
    }

    v81 = static os_log_type_t.default.getter();
    v82 = swift_allocObject();
    *(v82 + 16) = v95;
    v83 = Array.description.getter();
    v84 = v90;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = v84;
    *(v82 + 32) = v83;
    *(v82 + 40) = v85;
    os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v93, "Firmware all pending update: %@", 31, 2, v82);

    return v74;
  }

  return result;
}

void sub_1010C294C(double a1)
{
  v2 = type metadata accessor for BeaconObservation(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v66 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v59 - v7;
  v9 = __chkstk_darwin(v6);
  v69 = v59 - v10;
  __chkstk_darwin(v9);
  v12 = v59 - v11;
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = sub_100034838(v71);

  v14 = v13[2];

  v70 = v2;
  if (v14)
  {
    v15 = 0;
    v67 = _swiftEmptyArrayStorage;
    while (v15 < v13[2])
    {
      v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v17 = *(v3 + 72);
      sub_10003500C(v13 + v16 + v17 * v15, v12, type metadata accessor for BeaconObservation);
      v18 = v12[*(v2 + 24)];
      if ((v18 - 12) < 0x20 || ((1 << v18) & 0x67F) != 0)
      {
        sub_1010C8B84(v12, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_100029488(v12, v69, type metadata accessor for BeaconObservation);
        v19 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, *(v19 + 16) + 1, 1);
          v19 = v71;
        }

        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        v23 = (v22 + 1);
        if (v22 >= v21 >> 1)
        {
          v68 = (v22 + 1);
          sub_101124308((v21 > 1), v22 + 1, 1);
          v23 = v68;
          v19 = v71;
        }

        *(v19 + 16) = v23;
        v67 = v19;
        sub_100029488(v69, v19 + v16 + v22 * v17, type metadata accessor for BeaconObservation);
        v2 = v70;
      }

      if (v14 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v67 = _swiftEmptyArrayStorage;
LABEL_15:

    v69 = v13[2];
    if (!v69)
    {
LABEL_32:

      return;
    }

    v24 = 0;
    v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v68 = v13 + v25;
    v26 = -a1;
    v63 = v67 + v25;
    v64 = xmmword_10138B360;
    while (v24 < v13[2])
    {
      v27 = *(v3 + 72);
      sub_10003500C(&v68[v27 * v24], v8, type metadata accessor for BeaconObservation);
      v28 = v8[*(v2 + 24)];
      if ((v28 - 10) >= 0x22 && ((1 << v28) & 0x1BF) == 0)
      {
        Date.timeIntervalSinceNow.getter();
        if (v29 >= v26)
        {
          v61 = static os_log_type_t.default.getter();
          if (qword_1016950B8 != -1)
          {
            swift_once();
          }

          v62 = qword_10177C400;
          v59[3] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v30 = swift_allocObject();
          *(v30 + 16) = v64;
          v31 = UUID.uuidString.getter();
          v33 = v32;
          *(v30 + 56) = &type metadata for String;
          v34 = sub_100008C00();
          *(v30 + 64) = v34;
          *(v30 + 32) = v31;
          *(v30 + 40) = v33;
          v35 = sub_10091E6AC(v28);
          *(v30 + 96) = &type metadata for String;
          *(v30 + 104) = v34;
          *(v30 + 72) = v35;
          *(v30 + 80) = v36;
          v37 = *(v70 + 20);
          v38 = type metadata accessor for Date();
          v39 = sub_1010C8B3C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v65 = v37;
          v59[1] = v39;
          v59[2] = v38;
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v30 + 136) = &type metadata for String;
          *(v30 + 144) = v34;
          v60 = v34;
          *(v30 + 112) = v40;
          *(v30 + 120) = v41;
          os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Possible pending update for beacon UUID: %@, type: %@, date: %@", 63, 2, v30);

          v42 = v67;
          v43 = v67[2];
          if (!v43)
          {
LABEL_33:

            v50 = static os_log_type_t.default.getter();
            v51 = swift_allocObject();
            *(v51 + 16) = v64;
            v52 = UUID.uuidString.getter();
            v53 = v60;
            *(v51 + 56) = &type metadata for String;
            *(v51 + 64) = v53;
            *(v51 + 32) = v52;
            *(v51 + 40) = v54;
            v55 = sub_10091E6AC(v28);
            *(v51 + 96) = &type metadata for String;
            *(v51 + 104) = v53;
            *(v51 + 72) = v55;
            *(v51 + 80) = v56;
            v57 = dispatch thunk of CustomStringConvertible.description.getter();
            *(v51 + 136) = &type metadata for String;
            *(v51 + 144) = v53;
            *(v51 + 112) = v57;
            *(v51 + 120) = v58;
            os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v62, "The firmware update for the beacon with uuid: %@ (type: %@, date: %@) is not yet completed.", 91, 2, v51);

            sub_1010C8B84(v8, type metadata accessor for BeaconObservation);
            return;
          }

          v44 = 0;
          v45 = v63;
          while (v44 < v42[2])
          {
            v46 = v66;
            sub_10003500C(v45, v66, type metadata accessor for BeaconObservation);
            if (static UUID.== infix(_:_:)())
            {
              v47 = static Date.> infix(_:_:)();
              v48 = v46;
              v49 = v47;
              sub_1010C8B84(v48, type metadata accessor for BeaconObservation);
              if (v49)
              {
                goto LABEL_17;
              }
            }

            else
            {
              sub_1010C8B84(v46, type metadata accessor for BeaconObservation);
            }

            ++v44;
            v45 += v27;
            v42 = v67;
            if (v43 == v44)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_36;
        }
      }

LABEL_17:
      ++v24;
      sub_1010C8B84(v8, type metadata accessor for BeaconObservation);
      v2 = v70;
      if (v24 == v69)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

char *sub_1010C3064(signed __int8 a1, uint64_t a2)
{
  v58 = a2;
  v3 = a1;
  v55 = type metadata accessor for UUID();
  v60 = *(v55 - 8);
  __chkstk_darwin(v55);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for BeaconObservation(0);
  v52 = *(v54 - 8);
  v6 = __chkstk_darwin(v54);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v56 = &v49 - v9;
  __chkstk_darwin(v8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = sub_100034838(v61);

  if (v3 == 44)
  {

    return _swiftEmptyArrayStorage;
  }

  v18 = a1;
  v49 = v5;
  v50 = v13;
  v19 = *(v13 + 16);
  v51 = v12;
  result = v19(v15, v58, v12);
  v21 = v16[2];
  v53 = v15;
  if (!v21)
  {
    v57 = _swiftEmptyArrayStorage;
    v24 = v55;
    v26 = v52;
LABEL_16:

    v33 = v57[2];
    if (v33)
    {
      v61 = _swiftEmptyArrayStorage;
      v34 = v57;
      sub_101123D4C(0, v33, 0);
      v35 = v34 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v36 = *(v26 + 72);
      v37 = v61;
      v38 = (v60 + 16);
      v39 = v49;
      do
      {
        v40 = v59;
        sub_10003500C(v35, v59, type metadata accessor for BeaconObservation);
        (*v38)(v39, v40, v24);
        sub_1010C8B84(v40, type metadata accessor for BeaconObservation);
        v61 = v37;
        v41 = v24;
        v43 = v37[2];
        v42 = v37[3];
        if (v43 >= v42 >> 1)
        {
          sub_101123D4C((v42 > 1), v43 + 1, 1);
          v37 = v61;
        }

        v37[2] = v43 + 1;
        (*(v60 + 32))(v37 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v43, v39, v41);
        v35 += v36;
        --v33;
        v24 = v41;
      }

      while (v33);
    }

    else
    {

      v37 = _swiftEmptyArrayStorage;
    }

    v44 = sub_10000954C(v37);

    v45 = *(v44 + 16);
    v47 = v50;
    v46 = v51;
    if (v45)
    {
      v17 = sub_1003A85FC(*(v44 + 16), 0);
      v48 = sub_1003A9D58(&v61, &v17[(*(v60 + 80) + 32) & ~*(v60 + 80)], v45, v44);
      sub_1000128F8(v61);
      if (v48 == v45)
      {
LABEL_27:
        (*(v47 + 8))(v53, v46);
        return v17;
      }

      __break(1u);
    }

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v22 = v21;
  v23 = 0;
  v58 = v18;
  v57 = _swiftEmptyArrayStorage;
  v25 = v54;
  v24 = v55;
  v26 = v52;
  while (v23 < v16[2])
  {
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = *(v26 + 72);
    sub_10003500C(v16 + v27 + v28 * v23, v11, type metadata accessor for BeaconObservation);
    if (qword_1014047C0[v11[*(v25 + 24)]] == qword_1014047C0[v58] && (DateInterval.contains(_:)() & 1) != 0)
    {
      sub_100029488(v11, v56, type metadata accessor for BeaconObservation);
      v29 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101124308(0, v29[2] + 1, 1);
        v29 = v61;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        sub_101124308((v31 > 1), v32 + 1, 1);
        v29 = v61;
      }

      v29[2] = v32 + 1;
      v57 = v29;
      result = sub_100029488(v56, v29 + v27 + v32 * v28, type metadata accessor for BeaconObservation);
      v25 = v54;
      v24 = v55;
    }

    else
    {
      result = sub_1010C8B84(v11, type metadata accessor for BeaconObservation);
    }

    if (v22 == ++v23)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1010C369C(uint64_t *a1)
{
  v2 = *(type metadata accessor for UpdateDeviceState(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3205C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1010C4FD0(v6);
  *a1 = v3;
  return result;
}

void sub_1010C3744(uint64_t a1, double a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v124 = &v123 - v5;
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v6 - 8);
  v133 = &v123 - v7;
  v137 = type metadata accessor for Date();
  v142 = *(v137 - 8);
  v8 = __chkstk_darwin(v137);
  v125 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v126 = &v123 - v11;
  v12 = __chkstk_darwin(v10);
  v132 = &v123 - v13;
  __chkstk_darwin(v12);
  v136 = &v123 - v14;
  v15 = type metadata accessor for UUID();
  v151 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v144 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v143 = &v123 - v19;
  __chkstk_darwin(v18);
  v21 = &v123 - v20;
  v145 = 0;
  v155 = type metadata accessor for BeaconObservation(0);
  v22 = *(v155 - 8);
  v23 = __chkstk_darwin(v155);
  v153 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v150 = &v123 - v26;
  v27 = __chkstk_darwin(v25);
  v148 = &v123 - v28;
  v29 = __chkstk_darwin(v27);
  v154 = &v123 - v30;
  v31 = __chkstk_darwin(v29);
  v131 = &v123 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v123 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v123 - v37;
  __chkstk_darwin(v36);
  v40 = &v123 - v39;
  v41 = *(a1 + 16);

  v147 = v15;
  v152 = v22;
  v141 = a1;
  if (v41)
  {
    v42 = *(v22 + 72);
    v149 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v43 = a1 + v149;
    v44 = -a2;
    v146 = _swiftEmptyArrayStorage;
    v45 = v21;
    do
    {
      sub_10003500C(v43, v40, type metadata accessor for BeaconObservation);
      if (v40[*(v155 + 24)] == 6 && (Date.timeIntervalSinceNow.getter(), v46 >= v44))
      {
        sub_100029488(v40, v38, type metadata accessor for BeaconObservation);
        v47 = v146;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156[0] = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, *(v47 + 16) + 1, 1);
          v47 = v156[0];
        }

        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_101124308((v49 > 1), v50 + 1, 1);
          v47 = v156[0];
        }

        *(v47 + 16) = v50 + 1;
        v146 = v47;
        sub_100029488(v38, v47 + v149 + v50 * v42, type metadata accessor for BeaconObservation);
        v15 = v147;
        v21 = v45;
      }

      else
      {
        sub_1010C8B84(v40, type metadata accessor for BeaconObservation);
      }

      v43 += v42;
      --v41;
    }

    while (v41);
  }

  else
  {
    v146 = _swiftEmptyArrayStorage;
  }

  v51 = v146[2];
  if (v51)
  {
    v156[0] = _swiftEmptyArrayStorage;
    v52 = v146;
    sub_101123D4C(0, v51, 0);
    v53 = v156[0];
    v54 = v52 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v149 = *(v152 + 72);
    v55 = (v151 + 16);
    do
    {
      sub_10003500C(v54, v35, type metadata accessor for BeaconObservation);
      (*v55)(v21, v35, v15);
      sub_1010C8B84(v35, type metadata accessor for BeaconObservation);
      v156[0] = v53;
      v56 = v15;
      v58 = v53[2];
      v57 = v53[3];
      if (v58 >= v57 >> 1)
      {
        sub_101123D4C((v57 > 1), v58 + 1, 1);
        v53 = v156[0];
      }

      v53[2] = v58 + 1;
      (*(v151 + 32))(v53 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v58, v21, v56);
      v54 += v149;
      --v51;
      v15 = v56;
    }

    while (v51);
  }

  else
  {

    v53 = _swiftEmptyArrayStorage;
  }

  v59 = v142;
  v60 = sub_10000954C(v53);

  v156[6] = v60;
  v61 = v60 + 56;
  v62 = 1 << *(v60 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v60 + 56);
  v146 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
  v65 = (v62 + 63) >> 6;
  v142 = v151 + 16;
  v141 = v151 + 32;
  v130 = (v59 + 16);
  v129 = (v59 + 32);
  v128 = (v152 + 48);
  v127 = (v59 + 8);
  v138 = (v151 + 8);
  v149 = v60;

  v66 = 0;
  v123 = xmmword_101385D80;
  v67 = v145;
  v68 = v144;
  v69 = v153;
  v140 = v60 + 56;
  v139 = v65;
  while (1)
  {
    if (!v64)
    {
      while (1)
      {
        v70 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_68;
        }

        if (v70 >= v65)
        {

          return;
        }

        v64 = *(v61 + 8 * v70);
        ++v66;
        if (v64)
        {
          v66 = v70;
          break;
        }
      }
    }

    v71 = v151;
    v72 = v143;
    v73 = v147;
    (*(v151 + 16))(v143, *(v149 + 48) + *(v151 + 72) * (__clz(__rbit64(v64)) | (v66 << 6)), v147);
    (*(v71 + 32))(v68, v72, v73);
    v74 = objc_autoreleasePoolPush();
    sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
    OS_dispatch_queue.sync<A>(execute:)();
    v75 = v156[0];
    v76 = *(v156[0] + 16);
    v145 = v67;
    if (v76)
    {
      break;
    }

    v84 = _swiftEmptyArrayStorage;
    v78 = v152;
LABEL_50:
    v64 &= v64 - 1;
    objc_autoreleasePoolPop(v74);
    v94 = v84[2];
    if (v94)
    {
      v95 = v84 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      sub_10003500C(v95, v154, type metadata accessor for BeaconObservation);
      v96 = v155;
      if (v94 != 1)
      {
        v107 = 1;
        while (v107 < v84[2])
        {
          sub_10003500C(v95 + *(v78 + 72) * v107, v69, type metadata accessor for BeaconObservation);
          v108 = v154;
          if (static Date.< infix(_:_:)())
          {
            sub_1010C8B84(v108, type metadata accessor for BeaconObservation);
            v69 = v153;
            sub_100029488(v153, v108, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_1010C8B84(v69, type metadata accessor for BeaconObservation);
          }

          if (v94 == ++v107)
          {
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_52:

      v97 = v96;
      v98 = v131;
      sub_100029488(v154, v131, type metadata accessor for BeaconObservation);
      v99 = v98 + *(v97 + 20);
      v100 = v132;
      v101 = v137;
      v134 = *v130;
      v134(v132, v99, v137);
      sub_1010C8B84(v98, type metadata accessor for BeaconObservation);
      v102 = v144;
      v103 = v136;
      v135 = *v129;
      (v135)(v136, v100, v101);
      v104 = swift_allocObject();
      *(v104 + 16) = &off_1016084E8;
      v105 = sub_100035730(v102, sub_1010C8BF0, v104);

      v106 = v133;
      sub_1012BB138(v105, v133);

      if ((*v128)(v106, 1, v97) == 1)
      {
        (*v127)(v103, v101);
        (*v138)(v102, v147);
        sub_10000B3A8(v106, &qword_1016A42E0, &qword_1013B0010);
        v68 = v102;
        goto LABEL_65;
      }

      v134(v125, v106 + *(v97 + 20), v101);
      sub_1010C8B84(v106, type metadata accessor for BeaconObservation);
      v109 = v126;
      v135();
      if (static Date.< infix(_:_:)())
      {
        v110 = static os_log_type_t.debug.getter();
        v65 = v139;
        if (qword_1016950B8 != -1)
        {
          swift_once();
        }

        v111 = qword_10177C400;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v112 = swift_allocObject();
        *(v112 + 16) = v123;
        v113 = v144;
        v114 = UUID.uuidString.getter();
        v116 = v115;
        *(v112 + 56) = &type metadata for String;
        *(v112 + 64) = sub_100008C00();
        *(v112 + 32) = v114;
        *(v112 + 40) = v116;
        v117 = v111;
        v68 = v113;
        os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, v117, "Removing beacon from inProgress list: %@", 40, 2, v112);

        v118 = v124;
        sub_1010F6584(v113, v124);
        sub_10000B3A8(v118, &qword_1016980D0, &unk_10138F3B0);
        v119 = *v127;
        v120 = v137;
        (*v127)(v126, v137);
        v119(v136, v120);
        (*v138)(v68, v147);
        v69 = v153;
        v61 = v140;
        v67 = v145;
      }

      else
      {
        v121 = v109;
        v122 = *v127;
        (*v127)(v121, v101);
        v122(v103, v101);
        v68 = v144;
        (*v138)(v144, v147);
LABEL_65:
        v69 = v153;
        v61 = v140;
        v65 = v139;
        v67 = v145;
      }
    }

    else
    {

      (*v138)(v68, v147);
      v61 = v140;
      v65 = v139;
    }
  }

  v77 = sub_1000210EC(v68);
  v78 = v152;
  if ((v79 & 1) == 0)
  {

    v84 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v80 = *(*(v75 + 56) + 8 * v77);

  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = sub_100034824(*(v80 + 16), 0);
    v83 = sub_1000364B4(v156, v82 + 4, v81, v80);
    sub_1000128F8(v156[0]);
    if (v83 != v81)
    {
      goto LABEL_70;
    }
  }

  else
  {

    v82 = _swiftEmptyArrayStorage;
  }

  v135 = v74;
  v85 = sub_100034838(v82);

  v86 = v85[2];
  v87 = v148;
  if (!v86)
  {
    v84 = _swiftEmptyArrayStorage;
LABEL_49:

    v67 = v145;
    v68 = v144;
    v78 = v152;
    v69 = v153;
    v74 = v135;
    goto LABEL_50;
  }

  v88 = 0;
  v84 = _swiftEmptyArrayStorage;
  while (v88 < v85[2])
  {
    v89 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v90 = *(v152 + 72);
    sub_10003500C(v85 + v89 + v90 * v88, v87, type metadata accessor for BeaconObservation);
    if (*(v87 + *(v155 + 24)) == 6)
    {
      sub_100029488(v87, v150, type metadata accessor for BeaconObservation);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v156[0] = v84;
      if ((v91 & 1) == 0)
      {
        sub_101124308(0, v84[2] + 1, 1);
        v84 = v156[0];
      }

      v93 = v84[2];
      v92 = v84[3];
      if (v93 >= v92 >> 1)
      {
        sub_101124308((v92 > 1), v93 + 1, 1);
        v84 = v156[0];
      }

      v84[2] = v93 + 1;
      sub_100029488(v150, v84 + v89 + v93 * v90, type metadata accessor for BeaconObservation);
      v87 = v148;
    }

    else
    {
      sub_1010C8B84(v87, type metadata accessor for BeaconObservation);
    }

    if (v86 == ++v88)
    {
      goto LABEL_49;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_1010C4828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v53 - v7;
  v8 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v9 = __chkstk_darwin(v8 - 8);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v60 = &v53 - v12;
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v64 = a1;
  v22 = sub_100035730(a1, sub_1010C4F44, 0);
  sub_1012BB138(v22, v14);

  v23 = type metadata accessor for BeaconObservation(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v14, 1, v23) == 1)
  {
    sub_10000B3A8(v14, &qword_1016A42E0, &qword_1013B0010);
    v25 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v26 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_101385D80;
    v28 = UUID.uuidString.getter();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100008C00();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Firmware Update skipping beacon never seen paired, nearby, connected or forced: %@", 82, 2, v27);

    updated = type metadata accessor for UpdateDeviceState(0);
    return (*(*(updated - 8) + 56))(a2, 1, 1, updated);
  }

  else
  {
    v59 = a2;
    v33 = &v14[*(v23 + 20)];
    v54 = *(v16 + 16);
    v54(v19, v33, v15);
    sub_1010C8B84(v14, type metadata accessor for BeaconObservation);
    v57 = v16;
    v58 = v21;
    v55 = *(v16 + 32);
    v56 = v16 + 32;
    v55(v21, v19, v15);
    v34 = swift_allocObject();
    *(v34 + 16) = 9;
    v35 = sub_100035730(v64, sub_1010C8BE4, v34);

    v36 = v60;
    sub_1012BB138(v35, v60);

    v37 = v24(v36, 1, v23);
    v53 = v16 + 16;
    if (v37 == 1)
    {
      sub_10000B3A8(v36, &qword_1016A42E0, &qword_1013B0010);
      v38 = 1;
      v39 = v62;
    }

    else
    {
      v39 = v62;
      v54(v62, (v36 + *(v23 + 20)), v15);
      sub_1010C8B84(v36, type metadata accessor for BeaconObservation);
      v38 = 0;
    }

    v40 = v15;
    v41 = *(v57 + 56);
    v41(v39, v38, 1, v15);
    v42 = swift_allocObject();
    *(v42 + 16) = 6;
    v43 = v64;
    v44 = sub_100035730(v64, sub_1010C8C0C, v42);

    v45 = v61;
    sub_1012BB138(v44, v61);

    if (v24(v45, 1, v23) == 1)
    {
      sub_10000B3A8(v45, &qword_1016A42E0, &qword_1013B0010);
      v46 = 1;
      v47 = v63;
    }

    else
    {
      v47 = v63;
      v54(v63, (v45 + *(v23 + 20)), v40);
      sub_1010C8B84(v45, type metadata accessor for BeaconObservation);
      v46 = 0;
    }

    v48 = v40;
    v49 = v58;
    v41(v47, v46, 1, v48);
    v50 = type metadata accessor for UUID();
    v51 = v59;
    (*(*(v50 - 8) + 16))(v59, v43, v50);
    v52 = type metadata accessor for UpdateDeviceState(0);
    v55((v51 + v52[5]), v49, v48);
    sub_1001578A0(v39, v51 + v52[6]);
    sub_1001578A0(v47, v51 + v52[7]);
    return (*(*(v52 - 1) + 56))(v51, 0, 1, v52);
  }
}

BOOL sub_1010C4F88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for BeaconObservation(0) + 24));

  return sub_1005C8B3C(v3, a2);
}

Swift::Int sub_1010C4FD0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UpdateDeviceState(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UpdateDeviceState(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1010C5344(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1010C50FC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1010C50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  updated = type metadata accessor for UpdateDeviceState(0);
  v8 = __chkstk_darwin(updated);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_10003500C(v23, v17, type metadata accessor for UpdateDeviceState);
      sub_10003500C(v20, v13, type metadata accessor for UpdateDeviceState);
      v24 = static Date.> infix(_:_:)();
      sub_1010C8B84(v13, type metadata accessor for UpdateDeviceState);
      result = sub_1010C8B84(v17, type metadata accessor for UpdateDeviceState);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_100029488(v23, v10, type metadata accessor for UpdateDeviceState);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100029488(v10, v20, type metadata accessor for UpdateDeviceState);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010C5344(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  updated = type metadata accessor for UpdateDeviceState(0);
  v112 = *(updated - 8);
  v10 = __chkstk_darwin(updated);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1010C5C70(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = updated;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_10003500C(v110 + v24 * v23, v18, type metadata accessor for UpdateDeviceState);
      v26 = v25 + v24 * v20;
      v27 = v116;
      sub_10003500C(v26, v116, type metadata accessor for UpdateDeviceState);
      LODWORD(v111) = static Date.> infix(_:_:)();
      sub_1010C8B84(v27, type metadata accessor for UpdateDeviceState);
      result = sub_1010C8B84(v18, type metadata accessor for UpdateDeviceState);
      v102 = v20;
      v28 = v20 + 2;
      v113 = v24;
      v29 = v110 + v24 * (v20 + 2);
      while (v19 != v28)
      {
        sub_10003500C(v29, v18, type metadata accessor for UpdateDeviceState);
        v30 = v116;
        sub_10003500C(v5, v116, type metadata accessor for UpdateDeviceState);
        v31 = static Date.> infix(_:_:)() & 1;
        sub_1010C8B84(v30, type metadata accessor for UpdateDeviceState);
        result = sub_1010C8B84(v18, type metadata accessor for UpdateDeviceState);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v19 = v28 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v32 = v113 * (v19 - 1);
          v33 = v19;
          v34 = v19 * v113;
          v111 = v19;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_100029488(v38 + v37, v107, type metadata accessor for UpdateDeviceState);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100029488(v107, v38 + v32, type metadata accessor for UpdateDeviceState);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v22 = v36;
          v19 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v22 + a4;
        }

        if (v40 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v40)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      result = sub_100A5B430((v41 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v20;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_1010C5C70(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v21[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_100B31E68(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        result = sub_100B31DDC(v44);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v19;
  v86 = v22;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v19 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v19;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    a4 = type metadata accessor for UpdateDeviceState;
    sub_10003500C(v5, v18, type metadata accessor for UpdateDeviceState);
    v92 = v116;
    sub_10003500C(v89, v116, type metadata accessor for UpdateDeviceState);
    v93 = static Date.> infix(_:_:)();
    sub_1010C8B84(v92, type metadata accessor for UpdateDeviceState);
    result = sub_1010C8B84(v18, type metadata accessor for UpdateDeviceState);
    if ((v93 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for UpdateDeviceState;
    v94 = v115;
    sub_100029488(v5, v115, type metadata accessor for UpdateDeviceState);
    swift_arrayInitWithTakeFrontToBack();
    sub_100029488(v94, v89, type metadata accessor for UpdateDeviceState);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1010C5C70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  updated = type metadata accessor for UpdateDeviceState(0);
  v8 = __chkstk_darwin(updated);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_10003500C(v30, v43, type metadata accessor for UpdateDeviceState);
          v32 = v44;
          sub_10003500C(v27, v44, type metadata accessor for UpdateDeviceState);
          v33 = static Date.> infix(_:_:)();
          sub_1010C8B84(v32, type metadata accessor for UpdateDeviceState);
          sub_1010C8B84(v31, type metadata accessor for UpdateDeviceState);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_10003500C(a2, v43, type metadata accessor for UpdateDeviceState);
        v21 = v44;
        sub_10003500C(a4, v44, type metadata accessor for UpdateDeviceState);
        v22 = static Date.> infix(_:_:)();
        sub_1010C8B84(v21, type metadata accessor for UpdateDeviceState);
        sub_1010C8B84(v20, type metadata accessor for UpdateDeviceState);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AAFC(&v48, &v47, &v46);
  return 1;
}

unint64_t *sub_1010C6178(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1010C70E4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1010C6214(uint64_t a1, char a2, double a3)
{
  v90 = type metadata accessor for UUID();
  v73 = *(v90 - 8);
  __chkstk_darwin(v90);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A9620, &qword_1013BB5A0);
  __chkstk_darwin(v8 - 8);
  v71 = &v69 - v9;
  v70 = type metadata accessor for TimeZone();
  v76 = *(v70 - 8);
  __chkstk_darwin(v70);
  v84 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Date();
  v81 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for BeaconObservation(0);
  v12 = *(v92 - 8);
  v13 = __chkstk_darwin(v92);
  v72 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v83 = &v69 - v16;
  v17 = __chkstk_darwin(v15);
  v88 = &v69 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - v20;
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = *(a1 + 16);

  v74 = v7;
  v89 = v12;
  v82 = a1;
  if (v24)
  {
    v25 = *(v12 + 72);
    v91 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = a1 + v91;
    v27 = a2;
    v28 = _swiftEmptyArrayStorage;
    do
    {
      sub_10003500C(v26, v23, type metadata accessor for BeaconObservation);
      if (qword_1014047C0[v23[*(v92 + 24)]] == qword_1014047C0[v27] && (Date.timeIntervalSinceNow.getter(), v29 >= -a3))
      {
        sub_100029488(v23, v21, type metadata accessor for BeaconObservation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93[0] = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, v28[2] + 1, 1);
          v28 = v93[0];
        }

        v32 = v28[2];
        v31 = v28[3];
        v33 = v28;
        if (v32 >= v31 >> 1)
        {
          sub_101124308((v31 > 1), v32 + 1, 1);
          v33 = v93[0];
        }

        *(v33 + 16) = v32 + 1;
        sub_100029488(v21, v33 + v91 + v32 * v25, type metadata accessor for BeaconObservation);
        v7 = v74;
        v28 = v33;
      }

      else
      {
        sub_1010C8B84(v23, type metadata accessor for BeaconObservation);
      }

      v26 += v25;
      --v24;
    }

    while (v24);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v34 = v90;
  v35 = v28;
  v82 = v28[2];
  if (v82)
  {
    result = objc_opt_self();
    v37 = 0;
    v38 = v89;
    v39 = v28 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v80 = (v76 + 6);
    ++v81;
    v77 = (v76 + 4);
    v78 = result;
    ++v76;
    *&v40 = 141558531;
    v69 = v40;
    v41 = v71;
    v42 = v70;
    v43 = v88;
    v87 = v28;
    v79 = v39;
    do
    {
      if (v37 >= v35[2])
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v75 = *(v38 + 72);
      sub_10003500C(v39 + v75 * v37, v43, type metadata accessor for BeaconObservation);
      v45 = v85;
      Date.addingTimeInterval(_:)();
      v46.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*v81)(v45, v86);
      TimeZone.init(secondsFromGMT:)();
      result = (*v80)(v41, 1, v42);
      if (result == 1)
      {
        goto LABEL_32;
      }

      v47 = v84;
      (*v77)(v84, v41, v42);
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*v76)(v47, v42);
      v49 = [v78 stringFromDate:v46.super.isa timeZone:isa formatOptions:1907];

      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = static os_log_type_t.default.getter();
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v53 = qword_10177C400;
      v54 = v83;
      sub_10003500C(v43, v83, type metadata accessor for BeaconObservation);
      if (os_log_type_enabled(v53, v52))
      {
        v55 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v55 = v69;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        sub_1010C8B3C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        sub_1010C8B84(v54, type metadata accessor for BeaconObservation);
        v59 = sub_1000136BC(v56, v58, v93);

        *(v55 + 14) = v59;
        v42 = v70;
        *(v55 + 22) = 2082;
        v60 = sub_1000136BC(v91, v51, v93);

        *(v55 + 24) = v60;
        v41 = v71;
        _os_log_impl(&_mh_execute_header, v53, v52, "Beacon %{private,mask.hash}s next eligible: %{public}s", v55, 0x20u);
        swift_arrayDestroy();
        v34 = v90;

        v7 = v74;

        v44 = v88;
        v43 = v88;
      }

      else
      {

        sub_1010C8B84(v54, type metadata accessor for BeaconObservation);
        v44 = v43;
      }

      result = sub_1010C8B84(v44, type metadata accessor for BeaconObservation);
      v38 = v89;
      ++v37;
      v35 = v87;
      v39 = v79;
    }

    while (v82 != v37);
    v61 = v87[2];
    if (!v61)
    {
      goto LABEL_29;
    }

    v93[0] = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v61, 0);
    v62 = v93[0];
    v63 = (v73 + 16);
    v64 = v75;
    do
    {
      v65 = v72;
      sub_10003500C(v39, v72, type metadata accessor for BeaconObservation);
      (*v63)(v7, v65, v34);
      sub_1010C8B84(v65, type metadata accessor for BeaconObservation);
      v93[0] = v62;
      v67 = v62[2];
      v66 = v62[3];
      if (v67 >= v66 >> 1)
      {
        sub_101123D4C((v66 > 1), v67 + 1, 1);
        v62 = v93[0];
      }

      v62[2] = v67 + 1;
      (*(v73 + 32))(v62 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v67, v7, v34);
      v39 += v64;
      --v61;
    }

    while (v61);
  }

  else
  {
LABEL_29:

    v62 = _swiftEmptyArrayStorage;
  }

  v68 = sub_10000954C(v62);

  return v68;
}

uint64_t sub_1010C6C3C(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for UUID();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconObservation(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v48 = (&v44 - v14);
  __chkstk_darwin(v13);
  v16 = &v44 - v15;
  v17 = *(a1 + 16);

  v18 = _swiftEmptyArrayStorage;
  v47 = v10;
  if (v17)
  {
    v19 = *(v10 + 72);
    v45 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v46 = a1;
    v20 = a1 + v45;
    v21 = -a3;
    v22 = -a2;
    do
    {
      sub_10003500C(v20, v16, type metadata accessor for BeaconObservation);
      v23 = v16[*(v9 + 24)];
      if ((v23 - 13) >= 0x1F)
      {
        v24 = 1 << v23;
        if ((v24 & 0x67F) == 0)
        {
          if ((v24 & 0x980) != 0)
          {
            Date.timeIntervalSinceNow.getter();
            if (v25 >= v22)
            {
              goto LABEL_12;
            }
          }

          else
          {
            Date.timeIntervalSinceNow.getter();
            if (v26 >= v21)
            {
LABEL_12:
              sub_100029488(v16, v48, type metadata accessor for BeaconObservation);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51 = v18;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_101124308(0, v18[2] + 1, 1);
                v18 = v51;
              }

              v29 = v18[2];
              v28 = v18[3];
              v30 = v29 + 1;
              if (v29 >= v28 >> 1)
              {
                sub_101124308((v28 > 1), v29 + 1, 1);
                v30 = v29 + 1;
                v18 = v51;
              }

              v18[2] = v30;
              sub_100029488(v48, v18 + v45 + v29 * v19, type metadata accessor for BeaconObservation);
              goto LABEL_6;
            }
          }
        }
      }

      sub_1010C8B84(v16, type metadata accessor for BeaconObservation);
LABEL_6:
      v20 += v19;
      --v17;
    }

    while (v17);
  }

  v31 = v18[2];
  if (v31)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v31, 0);
    v32 = *(v47 + 80);
    v48 = v18;
    v33 = v18 + ((v32 + 32) & ~v32);
    v34 = *(v47 + 72);
    v35 = v51;
    v36 = (v50 + 16);
    do
    {
      v37 = v49;
      sub_10003500C(v33, v49, type metadata accessor for BeaconObservation);
      (*v36)(v8, v37, v6);
      sub_1010C8B84(v37, type metadata accessor for BeaconObservation);
      v51 = v35;
      v38 = v8;
      v39 = v6;
      v41 = v35[2];
      v40 = v35[3];
      if (v41 >= v40 >> 1)
      {
        sub_101123D4C((v40 > 1), v41 + 1, 1);
        v35 = v51;
      }

      v35[2] = v41 + 1;
      (*(v50 + 32))(v35 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v38, v39);
      v33 += v34;
      --v31;
      v6 = v39;
      v8 = v38;
    }

    while (v31);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v42 = sub_10000954C(v35);

  return v42;
}

uint64_t sub_1010C70E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v71[0] = a2;
  v72 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v81 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = v71 - v9;
  v102 = type metadata accessor for BeaconObservation(0);
  v10 = *(v102 - 8);
  v11 = __chkstk_darwin(v102);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v71 - v14;
  v16 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v17 = __chkstk_darwin(v16 - 8);
  v80 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v71 - v19;
  v21 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v22 = __chkstk_darwin(v21 - 8);
  v89 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v85 = v71 - v25;
  __chkstk_darwin(v24);
  v99 = v71 - v26;
  v100 = type metadata accessor for UUID();
  result = __chkstk_darwin(v100);
  v101 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = 0;
  v30 = 0;
  v31 = *(a3 + 56);
  v75 = a3 + 56;
  v32 = 1 << *(a3 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v74 = (v32 + 63) >> 6;
  v86 = v28 + 16;
  v103 = v10;
  v82 = (v6 + 16);
  v83 = (v10 + 56);
  v96 = (v6 + 56);
  v97 = (v10 + 48);
  v90 = (v6 + 48);
  v79 = (v6 + 32);
  v78 = (v6 + 8);
  v87 = v28;
  v84 = (v28 + 8);
  v91 = v20;
  v92 = a3;
  v76 = v5;
  do
  {
    do
    {
      if (!v34)
      {
        v43 = v30;
        while (1)
        {
          v30 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_36;
          }

          if (v30 >= v74)
          {
            goto LABEL_34;
          }

          v44 = *(v75 + 8 * v30);
          ++v43;
          if (v44)
          {
            v42 = __clz(__rbit64(v44));
            v94 = (v44 - 1) & v44;
            goto LABEL_13;
          }
        }
      }

      v42 = __clz(__rbit64(v34));
      v94 = (v34 - 1) & v34;
LABEL_13:
      v45 = v42 | (v30 << 6);
      v46 = *(a3 + 48);
      v47 = *(v87 + 72);
      v77 = v45;
      v48 = v101;
      (*(v87 + 16))(v101, v46 + v47 * v45, v100);
      v49 = sub_100035730(v48, sub_100023854, 0);
      v50 = v49[2];
      if (v50)
      {
        v51 = v49 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
        result = sub_10003500C(v51, v15, type metadata accessor for BeaconObservation);
        v52 = v102;
        if (v50 == 1)
        {
LABEL_15:
          v20 = v91;
          sub_100029488(v15, v91, type metadata accessor for BeaconObservation);
          (*v83)(v20, 0, 1, v52);

          a3 = v92;
          v53 = v52;
          v5 = v76;
          goto LABEL_17;
        }

        v68 = 1;
        while (1)
        {
          v69 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          sub_10003500C(v51 + *(v103 + 72) * v68, v13, type metadata accessor for BeaconObservation);
          if (static Date.< infix(_:_:)())
          {
            sub_1010C8B84(v15, type metadata accessor for BeaconObservation);
            v52 = v102;
            result = sub_100029488(v13, v15, type metadata accessor for BeaconObservation);
          }

          else
          {
            result = sub_1010C8B84(v13, type metadata accessor for BeaconObservation);
          }

          ++v68;
          if (v69 == v50)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v53 = v102;
      (*v83)(v20, 1, 1, v102);

LABEL_17:
      v93 = *v97;
      v54 = v93(v20, 1, v53);
      v55 = v85;
      if (v54 == 1)
      {
        sub_10000B3A8(v20, &qword_1016A42E0, &qword_1013B0010);
        v56 = 1;
        v57 = v99;
      }

      else
      {
        v58 = &v20[*(v53 + 20)];
        v57 = v99;
        (*v82)(v99, v58, v5);
        sub_1010C8B84(v20, type metadata accessor for BeaconObservation);
        v56 = 0;
      }

      v59 = *v96;
      (*v96)(v57, v56, 1, v5);
      sub_1000D3410(v57, v55);
      v60 = *v90;
      if ((*v90)(v55, 1, v5) == 1)
      {
        sub_10000B3A8(v99, &unk_101696900, &unk_10138B1E0);
        sub_10000B3A8(v55, &unk_101696900, &unk_10138B1E0);
        result = (*v84)(v101, v100);
        v34 = v94;
        break;
      }

      v61 = v5;
      v88 = *v79;
      v88(v95, v55, v5);
      v62 = swift_allocObject();
      *(v62 + 16) = &off_101608510;
      v63 = sub_100035730(v101, sub_1010C8BF0, v62);

      v64 = v80;
      sub_1012BB138(v63, v80);

      v65 = v102;
      if (v93(v64, 1, v102) == 1)
      {
        sub_10000B3A8(v64, &qword_1016A42E0, &qword_1013B0010);
        v66 = v89;
        v59(v89, 1, 1, v61);
        v36 = v81;
        static Date.distantPast.getter();
        v67 = v60(v66, 1, v61);
        v5 = v61;
        a3 = v92;
        if (v67 != 1)
        {
          sub_10000B3A8(v89, &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v35 = v89;
        (*v82)(v89, (v64 + *(v65 + 20)), v61);
        sub_1010C8B84(v64, type metadata accessor for BeaconObservation);
        v59(v35, 0, 1, v61);
        v36 = v81;
        v88(v81, v35, v61);
        v5 = v61;
        a3 = v92;
      }

      v37 = v95;
      v38 = static Date.> infix(_:_:)();
      v39 = v36;
      v40 = v38;
      v41 = *v78;
      (*v78)(v39, v5);
      v41(v37, v5);
      sub_10000B3A8(v99, &unk_101696900, &unk_10138B1E0);
      result = (*v84)(v101, v100);
      v20 = v91;
      v34 = v94;
    }

    while ((v40 & 1) != 0);
    *(v72 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
  }

  while (!__OFADD__(v73++, 1));
  __break(1u);
LABEL_34:

  return sub_10060AF64(v72, v71[0], v73, a3);
}

uint64_t sub_1010C7B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v67 - v8;
  v98 = type metadata accessor for BeaconObservation(0);
  v9 = *(v98 - 8);
  v10 = __chkstk_darwin(v98);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v67 - v13;
  v15 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v16 = __chkstk_darwin(v15 - 8);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v82 = &v67 - v18;
  v19 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v20 = __chkstk_darwin(v19 - 8);
  v85 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v83 = &v67 - v23;
  __chkstk_darwin(v22);
  v90 = &v67 - v24;
  v95 = type metadata accessor for UUID();
  v25 = *(v95 - 8);
  __chkstk_darwin(v95);
  v97 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *(a1 + 32);
  v27 = v26 & 0x3F;
  v68 = ((1 << v26) + 63) >> 6;
  v28 = 8 * v68;
  v96 = a2;

  if (v27 > 0xD)
  {
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v65 = swift_slowAlloc();
      v66 = v96;

      v63 = sub_1010C6178(v65, v68, a1, v66);

      return v63;
    }
  }

  v91 = v4;
  v67 = &v67;
  __chkstk_darwin(v29);
  v69 = &v67 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v69, v28);
  v70 = 0;
  v30 = 0;
  v31 = *(a1 + 56);
  v72 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v71 = (v32 + 63) >> 6;
  v84 = v25 + 16;
  v78 = (v9 + 56);
  v94 = (v9 + 48);
  v77 = (v5 + 16);
  v93 = (v5 + 56);
  v86 = (v5 + 32);
  v87 = (v5 + 48);
  v74 = (v5 + 8);
  v79 = (v25 + 8);
  v99 = v9;
  v28 = v90;
  v80 = v25;
  v81 = a1;
  do
  {
    do
    {
      if (!v34)
      {
        v43 = v30;
        v4 = v91;
        while (1)
        {
          v30 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_38;
          }

          if (v30 >= v71)
          {
            goto LABEL_35;
          }

          v44 = *(v72 + 8 * v30);
          ++v43;
          if (v44)
          {
            v89 = (v44 - 1) & v44;
            v42 = __clz(__rbit64(v44)) | (v30 << 6);
            goto LABEL_14;
          }
        }
      }

      v89 = (v34 - 1) & v34;
      v42 = __clz(__rbit64(v34)) | (v30 << 6);
      v4 = v91;
LABEL_14:
      v45 = *(a1 + 48);
      v46 = *(v25 + 72);
      v73 = v42;
      v47 = v97;
      (*(v25 + 16))(v97, v45 + v46 * v42, v95);
      v48 = sub_100035730(v47, sub_100023854, 0);
      v5 = v48;
      v25 = v48[2];
      if (v25)
      {
        v28 = v48 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        sub_10003500C(v28, v14, type metadata accessor for BeaconObservation);
        a1 = v98;
        if (v25 == 1)
        {
LABEL_16:
          v49 = v82;
          sub_100029488(v14, v82, type metadata accessor for BeaconObservation);
          (*v78)(v49, 0, 1, a1);

          v28 = v90;
          v4 = v91;
          goto LABEL_18;
        }

        v4 = 1;
        while (1)
        {
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          sub_10003500C(v28 + *(v99 + 72) * v4, v12, type metadata accessor for BeaconObservation);
          if (static Date.< infix(_:_:)())
          {
            sub_1010C8B84(v14, type metadata accessor for BeaconObservation);
            a1 = v98;
            sub_100029488(v12, v14, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_1010C8B84(v12, type metadata accessor for BeaconObservation);
          }

          ++v4;
          if (v9 == v25)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v49 = v82;
      a1 = v98;
      (*v78)(v82, 1, 1, v98);

LABEL_18:
      v88 = *v94;
      v50 = v88(v49, 1, a1);
      v5 = v83;
      if (v50 == 1)
      {
        sub_10000B3A8(v49, &qword_1016A42E0, &qword_1013B0010);
        v51 = 1;
      }

      else
      {
        (*v77)(v28, v49 + *(a1 + 20), v4);
        sub_1010C8B84(v49, type metadata accessor for BeaconObservation);
        v51 = 0;
      }

      v52 = v86;
      v53 = *v93;
      (*v93)(v28, v51, 1, v4);
      sub_1000D3410(v28, v5);
      v54 = *v87;
      if ((*v87)(v5, 1, v4) == 1)
      {
        sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
        sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
        (*v79)(v97, v95);
        v25 = v80;
        a1 = v81;
        v9 = v99;
        v34 = v89;
        break;
      }

      v55 = *v52;
      (*v52)(v92, v5, v4);
      v56 = swift_allocObject();
      *(v56 + 16) = &off_101608510;
      v57 = sub_100035730(v97, sub_1010C8BF0, v56);

      v58 = v75;
      sub_1012BB138(v57, v75);

      v59 = v98;
      if (v88(v58, 1, v98) == 1)
      {
        sub_10000B3A8(v58, &qword_1016A42E0, &qword_1013B0010);
        v60 = v85;
        v53(v85, 1, 1, v4);
        v36 = v76;
        static Date.distantPast.getter();
        v61 = v54(v60, 1, v4);
        v37 = v99;
        if (v61 != 1)
        {
          sub_10000B3A8(v85, &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v35 = v85;
        (*v77)(v85, v58 + *(v59 + 20), v4);
        sub_1010C8B84(v58, type metadata accessor for BeaconObservation);
        v53(v35, 0, 1, v4);
        v36 = v76;
        v55(v76, v35, v4);
        v37 = v99;
      }

      v38 = v92;
      v39 = static Date.> infix(_:_:)();
      v40 = v36;
      v5 = v39;
      v41 = *v74;
      (*v74)(v40, v4);
      v41(v38, v4);
      v28 = v90;
      sub_10000B3A8(v90, &unk_101696900, &unk_10138B1E0);
      (*v79)(v97, v95);
      v34 = v89;
      v9 = v37;
      v25 = v80;
      a1 = v81;
    }

    while ((v5 & 1) != 0);
    *&v69[(v73 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v73;
  }

  while (!__OFADD__(v70++, 1));
  __break(1u);
LABEL_35:
  v63 = sub_10060AF64(v69, v68, v70, a1);

  return v63;
}

uint64_t sub_1010C86EC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v39 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BeaconObservation(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v38 = &v33 - v11;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = *(a1 + 16);

  v35 = v6;
  v36 = a1;
  if (v14)
  {
    v15 = *(v6 + 72);
    v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = a1 + v37;
    v17 = _swiftEmptyArrayStorage;
    do
    {
      sub_10003500C(v16, v13, type metadata accessor for BeaconObservation);
      if (((1 << v13[*(v5 + 24)]) & 0xFFDFFFE7BFDLL) != 0)
      {
        sub_1010C8B84(v13, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_100029488(v13, v38, type metadata accessor for BeaconObservation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, v17[2] + 1, 1);
          v17 = v40;
        }

        v20 = v17[2];
        v19 = v17[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v34 = v20 + 1;
          sub_101124308((v19 > 1), v20 + 1, 1);
          v21 = v34;
          v17 = v40;
        }

        v17[2] = v21;
        sub_100029488(v38, v17 + v37 + v20 * v15, type metadata accessor for BeaconObservation);
      }

      v16 += v15;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v22 = v17[2];
  if (v22)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v22, 0);
    v23 = v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v24 = *(v35 + 72);
    v37 = v17;
    v38 = v24;
    v25 = v40;
    v26 = (v39 + 16);
    do
    {
      sub_10003500C(v23, v9, type metadata accessor for BeaconObservation);
      (*v26)(v4, v9, v2);
      sub_1010C8B84(v9, type metadata accessor for BeaconObservation);
      v40 = v25;
      v27 = v4;
      v28 = v2;
      v30 = v25[2];
      v29 = v25[3];
      if (v30 >= v29 >> 1)
      {
        sub_101123D4C((v29 > 1), v30 + 1, 1);
        v25 = v40;
      }

      v25[2] = v30 + 1;
      (*(v39 + 32))(v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30, v27, v28);
      v23 += v38;
      --v22;
      v2 = v28;
      v4 = v27;
    }

    while (v22);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v31 = sub_10000954C(v25);

  return v31;
}

uint64_t sub_1010C8B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1010C8B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010C8C10(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v21 = a2;
  v22 = v12;
  v13 = type metadata accessor for MessagingMessageContext(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  sub_100D2577C(a6, v16);
  v17 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v21;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = v6;
  *(v19 + 56) = a5;
  sub_100476E9C(v16, v19 + v17);
  *(v19 + v18) = v22;
  sub_100017D5C(a3, a4);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1010C8DC4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C630);
  v1 = sub_1000076D4(v0, qword_10177C630);
  if (qword_1016947E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AF70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010C8EB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 64) = a1;
  type metadata accessor for PeerTrustAckEnvelopeV1(0);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1010C8F48, 0, 0);
}

uint64_t sub_1010C8F48()
{
  if (*(v0 + 64))
  {
    if (qword_101695238 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C630);
    sub_100017D5C(v1, v2);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    if (v6)
    {
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v9 + 1;
      sub_100016590(v8, v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "Ignoring non peertrust message: %d", v10, 8u);
    }

    else
    {
      sub_100016590(*(v0 + 24), *(v0 + 32));
    }

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v11 = *(v0 + 40);

    return _swift_task_switch(sub_1010C90FC, v11, 0);
  }
}

uint64_t sub_1010C90FC()
{
  v1 = v0[2];
  if (v1 == 1)
  {
    sub_100596538(v0[6]);
    v0[7] = *(v0[5] + 112);
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1010C9204, v4, v5);
  }

  else
  {
    sub_1010C943C(0, v1, v0[3], v0[4]);

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1010C9204()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  type metadata accessor for PeerTrustService();
  sub_1010C9628();
  sub_100E8B550(v1);

  return _swift_task_switch(sub_1010C9294, v2, 0);
}

uint64_t sub_1010C9294()
{
  sub_1010C9680(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C92FC()
{
  type metadata accessor for MessagingMessageContext(0);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_1010C8EB0(v6, v2, v3, v4, v5);
}

void sub_1010C943C(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_101695238 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C630);
  sub_100017D5C(a3, a4);
  sub_100017D5C(a3, a4);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    sub_100016590(a3, a4);
    *(v9 + 14) = a2;
    sub_100016590(a3, a4);
    _os_log_impl(&_mh_execute_header, oslog, v8, "Unsupported version of %{public}s: %ld", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    sub_100016590(a3, a4);
    sub_100016590(a3, a4);
  }
}

unint64_t sub_1010C9628()
{
  result = qword_1016B1188;
  if (!qword_1016B1188)
  {
    type metadata accessor for PeerTrustService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1188);
  }

  return result;
}

uint64_t sub_1010C9680(uint64_t a1)
{
  v2 = type metadata accessor for PeerTrustAckEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1010C96DC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 96))())
  {
    return 1;
  }

  if ((*(a2 + 104))(a1, a2))
  {
    return 3;
  }

  return 2;
}

uint64_t sub_1010C9750(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100B320FC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1010C9FE8(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1010C97CC(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    v7 = 0;
LABEL_13:

    return v7;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v7 = 0;
  if (v6)
  {
    return v7;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    v7 = 1;
    goto LABEL_13;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return 1;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    v7 = 2;
    goto LABEL_13;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    return 2;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    v7 = 3;
    goto LABEL_13;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return 3;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    v7 = 4;
    goto LABEL_13;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    return 4;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    v7 = 5;
    goto LABEL_13;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    return 5;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    v7 = 10;
    goto LABEL_13;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    return 10;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
    v7 = 11;
    goto LABEL_13;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    return 11;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
    v7 = 6;
    goto LABEL_13;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    return 6;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
    v7 = 7;
    goto LABEL_13;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    return 7;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
    v7 = 8;
    goto LABEL_13;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    return 8;
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {
    v7 = 9;
    goto LABEL_13;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    return 9;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {
    v7 = 15;
    goto LABEL_13;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {
    return 15;
  }

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
  {
    v7 = 16;
    goto LABEL_13;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
    return 16;
  }

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
  {
    v7 = 17;
    goto LABEL_13;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v79)
  {
    return 17;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {
    v7 = 18;
    goto LABEL_13;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
    return 18;
  }

  _StringGuts.grow(_:)(60);
  v85._object = 0x800000010137B0D0;
  v85._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v85);
  type metadata accessor for SPBeaconLocationSource(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1010C9FE8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1010CA31C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1010CA0FC(0, v2, 1, a1);
  }
}

void sub_1010CA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 timestamp];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.< infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1010CA31C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_100B31E68(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1010CAB8C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100B31E68(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        *(v109 + 1) = v108;
        v126 = v107;
        sub_100B31DDC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 timestamp];
      v24 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 timestamp];
      v26 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v121) = static Date.< infix(_:_:)();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 timestamp];
        v34 = v123;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 timestamp];
        v36 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v35) = static Date.< infix(_:_:)() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_100A5B430(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_100A5B430((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1010CAB8C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100B31E68(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_100B31DDC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 timestamp];
    v53 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v51 timestamp];
    v55 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v54) = static Date.< infix(_:_:)();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1010CAB8C(id *a1, id *a2, id *a3, void **a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 timestamp];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 timestamp];
        v43 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v42) = static Date.< infix(_:_:)();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 timestamp];
        v21 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 timestamp];
        v23 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static Date.< infix(_:_:)();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

void *sub_1010CB028(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1003CC318();
  sub_1010CB58C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1010CB0BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100652D24(&qword_1016C75B8, &qword_1016C75B0, &qword_101404A08);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C75B0, &qword_101404A08);
            v9 = sub_100268264(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010CB25C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100652D24(&qword_1016C75A8, &qword_1016C75A0, &qword_101404A00);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C75A0, &qword_101404A00);
            v9 = sub_100268264(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010CB3FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100652D24(&qword_1016C7598, &qword_1016C7590, &qword_1014049F8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C7590, &qword_1014049F8);
            v9 = sub_1002682E4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DarwinNotification.Listener();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010CB58C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100652D24(&qword_1016C7560, &qword_1016C7558, &unk_1014049D8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C7558, &unk_1014049D8);
            v9 = sub_10026863C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010CB72C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100652D24(&qword_1016C7568, &unk_1016C1A90, &unk_1013F54D0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&unk_1016C1A90, &unk_1013F54D0);
            v9 = sub_100268264(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BB8(0, &qword_1016C1A78, SPCommandKeys_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010CB8CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100652D24(&qword_1016C7588, &qword_1016C7580, &qword_1014049F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C7580, &qword_1014049F0);
            v9 = sub_100268264(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BB8(0, &qword_1016C1A88, SPCommandKey_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1010CBA6C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_allocWithZone(CLReductiveFilterOptions) initWithBeaconType:a2 transmitPower:a3];
  v12 = v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v34 = v11;
    v35 = v10;
    v39[5] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = a1 + 32;
    v15 = (v7 + 8);
    do
    {
      sub_10001F280(v14, v39);
      sub_10001F280(v39, v36);
      v16 = v37;
      v17 = v38;
      sub_1000035D0(v36, v37);
      v18 = (*(v17 + 16))(v16, v17);
      v19 = v37;
      v20 = v38;
      sub_1000035D0(v36, v37);
      v21 = (*(v20 + 24))(v19, v20);
      v22 = objc_allocWithZone(CLLocation);
      v23 = v37;
      v24 = v38;
      sub_1000035D0(v36, v37);
      v25 = (*(v24 + 32))(v23, v24);
      v26 = v37;
      v27 = v38;
      sub_1000035D0(v36, v37);
      (*(v27 + 8))(v26, v27);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v15)(v9, v6);
      [v22 initWithCoordinate:isa altitude:v18 horizontalAccuracy:v21 verticalAccuracy:-1.0 timestamp:{v25, -1.0}];

      sub_100007BAC(v39);
      sub_100007BAC(v36);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 40;
      --v13;
    }

    while (v13);
    v12 = v34;
    v10 = v35;
  }

  v39[0] = sub_1010CB028(v29);
  sub_1010C9750(v39);

  v30 = objc_opt_self();
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 applyFilterToLocationTrace:v31 options:v12];

  objc_autoreleasePoolPop(v10);
  return v32;
}

id sub_1010CBE04(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_allocWithZone(CLReductiveFilterOptions) initWithBeaconType:a2 transmitPower:a3];
  v8 = *(a1 + 16);
  if (v8)
  {
    v26[5] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
    v10 = a1 + 32;
    do
    {
      sub_10001F280(v10, v26);
      sub_10001F280(v26, v23);
      v11 = v24;
      v12 = v25;
      v13 = sub_10015049C(v23, v24);
      __chkstk_darwin(v13);
      v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_100F949B8(v15, v9, v11, v12);
      sub_100007BAC(v26);
      sub_100007BAC(v23);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v26[0] = sub_1010CB028(v17);
  sub_1010C9750(v26);

  v18 = objc_opt_self();
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 applyFilterToLocationObservations:isa options:v7];

  objc_autoreleasePoolPop(v6);
  return v20;
}

uint64_t sub_1010CC0B8()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((*(v0 + 40) & 1) != 0 || (isUserAgent.getter() & 1) == 0)
  {
    if (*(*(v0 + 32) + 128))
    {

      v6 = sub_10021D518(v5);

      v13 = v6;
    }

    else
    {
      if (qword_101695248 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000076D4(v9, qword_1016C75C0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "No observation store on this platform!", v12, 2u);
      }

      v13 = 0;
    }

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1010CC3BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1010CC3E0, v2, 0);
}

uint64_t sub_1010CC3E0(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v9 = *(v1[4] + 128);
  if (v9)
  {
    v11 = v1[2];
    v10 = v1[3];

    sub_100228740(v11, v10, v9);
    v17 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v6 = v17;
LABEL_7:
    v7 = v1[1];

    return v7(v6);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016C75C0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No observation store on this platform!", v15, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v16 = v1[1];

  return v16();
}

uint64_t sub_1010CC680(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1010CC6A4, v1, 0);
}

uint64_t sub_1010CC6A4()
{
  if (*(*(v0 + 3) + 128))
  {
    v1 = v0[2];

    v3 = sub_10021CAC0(v2, v1);

    v4 = *(v0 + 1);

    return v4(v3);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016C75C0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No observation store on this platform!", v9, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v10 = *(v0 + 1);

    return v10();
  }
}

uint64_t sub_1010CC864(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CC884, v1, 0);
}

uint64_t sub_1010CC884(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    goto LABEL_7;
  }

  v7 = *(v1[3] + 128);
  if (v7)
  {
    v8 = v1[2];

    sub_10022077C(v8, v7);

LABEL_7:
    v6 = v1[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016C75C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No observation store on this platform!", v12, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v6 = v1[1];
LABEL_15:

  return v6();
}

uint64_t sub_1010CCAC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CCAE8, v1, 0);
}

uint64_t sub_1010CCAE8(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    goto LABEL_7;
  }

  v7 = *(v1[3] + 128);
  if (v7)
  {
    v8 = v1[2];

    sub_1002207A8(v8, v7);

LABEL_7:
    v6 = v1[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016C75C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No observation store on this platform!", v12, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v6 = v1[1];
LABEL_15:

  return v6();
}

uint64_t sub_1010CCD4C(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  if (*(*(v1 + 16) + 128))
  {

    sub_100216764(v3);

LABEL_2:
    v2 = *(v1 + 8);
    goto LABEL_10;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016C75C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No observation store on this platform!", v7, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v2 = *(v1 + 8);
LABEL_10:

  return v2();
}

uint64_t sub_1010CCEF0()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 40) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
    goto LABEL_15;
  }

  if (*(*(v0 + 32) + 128))
  {

    sub_10020DFE8(v6);

    goto LABEL_17;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016C75C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
  }

LABEL_16:

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
LABEL_17:
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1010CD178(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1010CD19C, v1, 0);
}

uint64_t sub_1010CD19C(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = &_swiftEmptySetSingleton;
    goto LABEL_7;
  }

  if (*(*(v1 + 3) + 128))
  {
    v9 = v1[2];

    v11 = sub_10021783C(v10, v9);

    v6 = v11;
LABEL_7:
    v7 = *(v1 + 1);

    return v7(v6);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016C75C0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No observation store on this platform!", v15, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v16 = *(v1 + 1);

  return v16();
}

uint64_t sub_1010CD424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v4[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_1010CD550;

  return sub_1010D4938(v6, a2);
}

uint64_t sub_1010CD550()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1010CD660, v1, 0);
}

uint64_t sub_1010CD660()
{
  v1 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 56), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 48), &qword_10169E358, &qword_101404C50);
    v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    sub_10112CE20(*(v0 + 40));
    sub_1010D6FB8(v4, type metadata accessor for KeySyncSnapshot);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1010D4F70(*(v0 + 24), v8, *(v0 + 16));
  sub_10000B3A8(v8, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v7, &qword_10169E358, &qword_101404C50);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1010CD810(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1010CD834, v2, 0);
}

uint64_t sub_1010CD834(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = v1[2];

    v7 = type metadata accessor for ObservedAdvertisement(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    goto LABEL_7;
  }

  v9 = *(v1[4] + 128);
  if (v9)
  {
    v11 = v1[2];
    v10 = v1[3];

    sub_10021AE2C(v10, v9, v11);

LABEL_7:
    v8 = v1[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016C75C0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No observation store on this platform!", v15, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v8 = v1[1];
LABEL_15:

  return v8();
}

uint64_t sub_1010CDAC4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CDAE4, v1, 0);
}

uint64_t sub_1010CDAE4(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    goto LABEL_7;
  }

  v7 = *(v1[3] + 128);
  if (v7)
  {
    v8 = v1[2];

    sub_10021F1B0(v8, v7);

LABEL_7:
    v6 = v1[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016C75C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No observation store on this platform!", v12, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v6 = v1[1];
LABEL_15:

  return v6();
}

uint64_t sub_1010CDD28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CDD48, v1, 0);
}

uint64_t sub_1010CDD48(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v3 = *(v1[3] + 128);
  if (v3)
  {
    v4 = v1[2];

    sub_10021593C(v4, v3);

LABEL_2:
    v2 = v1[1];
    goto LABEL_10;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C75C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "No observation store on this platform!", v8, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v2 = v1[1];
LABEL_10:

  return v2();
}

uint64_t sub_1010CDED8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CDEF8, v1, 0);
}

uint64_t sub_1010CDEF8(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v3 = *(v1[3] + 128);
  if (v3)
  {
    v4 = v1[2];

    sub_10021614C(v4, v3);

LABEL_2:
    v2 = v1[1];
    goto LABEL_10;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C75C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "No observation store on this platform!", v8, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v2 = v1[1];
LABEL_10:

  return v2();
}

uint64_t sub_1010CE088(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1010CE0AC, v2, 0);
}

uint64_t sub_1010CE0AC()
{
  v1 = *(v0[4] + 128);
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];

    sub_10021C328(v2, v1, v3);

    v4 = v0[1];
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016C75C0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No observation store on this platform!", v8, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_1010CE238(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CE258, v1, 0);
}

uint64_t sub_1010CE258(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v9 = *(v1[3] + 128);
  if (v9)
  {
    v10 = v1[2];

    sub_1002283A4(v10, v9);
    v16 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v6 = v16;
LABEL_7:
    v7 = v1[1];

    return v7(v6);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C75C0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No observation store on this platform!", v14, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v15 = v1[1];

  return v15();
}

uint64_t sub_1010CE514()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 40) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_18:

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }

  if (!*(*(v0 + 32) + 128))
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform.";
    goto LABEL_17;
  }

  v7 = sub_10020B708(v6);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1010CE7E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 48) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_1010CE80C, v4, 0);
}

uint64_t sub_1010CE80C(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = *(v1 + 16);

    v7 = type metadata accessor for DeviceEvent(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    goto LABEL_7;
  }

  v9 = *(*(v1 + 40) + 128);
  if (v9)
  {
    v11 = *(v1 + 24);
    v10 = *(v1 + 32);
    v12 = *(v1 + 16);
    v13 = *(v1 + 48);

    sub_100221138(v11, v13, v10, v9, v12);

LABEL_7:
    v8 = *(v1 + 8);
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_1016C75C0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "No observation store on this platform!", v17, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v8 = *(v1 + 8);
LABEL_15:

  return v8();
}

uint64_t sub_1010CEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1010CEAD8, v3, 0);
}

uint64_t sub_1010CEAD8()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 64) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
    goto LABEL_15;
  }

  v6 = *(*(v0 + 56) + 128);
  if (v6)
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);

    sub_100223CF0(v8, v7, v6, v9);

    v10 = *(v0 + 8);
    goto LABEL_17;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C75C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
  }

LABEL_16:

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v10 = *(v0 + 8);
LABEL_17:

  return v10();
}

uint64_t sub_1010CED94(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1010CEDB4, v1, 0);
}

uint64_t sub_1010CEDB4()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 48) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_16:

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }

  v6 = *(*(v0 + 40) + 128);
  if (!v6)
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
    goto LABEL_15;
  }

  v7 = *(v0 + 32);

  sub_100219688(v7, v6);
  v11 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1010CF0A8(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for BeaconIdentifier(0);
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  *v6 = v3;
  v6[1] = sub_1010CF210;

  return daemon.getter();
}

uint64_t sub_1010CF210(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1010D6F70(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1010D6F70(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1010CF3F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010CF3F4(uint64_t a1)
{
  v4 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = sub_1010CFCF8;
  }

  else
  {

    v6 = sub_1010CF52C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010CF52C()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_1010CF618;
  v3 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_1010CF618()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_1010CF730, v1, 0);
}

uint64_t sub_1010CF730()
{
  v1 = v0[4];
  v0[19] = v0[2];
  return _swift_task_switch(sub_1010CF754, v1, 0);
}

void sub_1010CF754()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 72);
    v32 = *(v0 + 64);
    v30 = *(v0 + 152);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v0 + 96);
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      sub_10001BBA0(*(v0 + 152) + v6 + v7 * v3, v5, type metadata accessor for SharedBeaconRecord);
      v8 = *(v5 + *(v32 + 64));
      if (v8 == 4 || v8 == 1)
      {
        sub_1010D7018(*(v0 + 96), *(v0 + 88), type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10112421C((v10 > 1), v11 + 1, 1);
        }

        v12 = *(v0 + 88);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1010D7018(v12, _swiftEmptyArrayStorage + v6 + v11 * v7, type metadata accessor for SharedBeaconRecord);
        v1 = v30;
      }

      else
      {
        sub_1010D6FB8(*(v0 + 96), type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v31 = *(v0 + 40);
      v33 = *(v0 + 64);
      sub_101124760(0, v13, 0);
      v16 = _swiftEmptyArrayStorage + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v29 = *(v14 + 72);
      do
      {
        v17 = *(v0 + 80);
        v18 = *(v0 + 56);
        sub_10001BBA0(v16, v17, type metadata accessor for SharedBeaconRecord);
        v19 = getuid();
        sub_1000294F0(v19);
        v20 = *(v33 + 20);
        v21 = *(v31 + 20);
        v22 = type metadata accessor for UUID();
        (*(*(v22 - 8) + 16))(v18 + v21, v17 + v20, v22);
        sub_1010D6FB8(v17, type metadata accessor for SharedBeaconRecord);
        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          sub_101124760((v23 > 1), v24 + 1, 1);
        }

        v25 = *(v0 + 56);
        _swiftEmptyArrayStorage[2] = v24 + 1;
        sub_1010D7018(v25, _swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v24, type metadata accessor for BeaconIdentifier);
        v16 += v29;
        --v13;
      }

      while (v13);
    }

    *(v0 + 160) = _swiftEmptyArrayStorage;
    v26 = swift_task_alloc();
    *(v0 + 168) = v26;
    *v26 = v0;
    v26[1] = sub_1010CFB0C;
    v27 = *(v0 + 192);
    v28 = *(v0 + 24);

    sub_1010D2DD4(_swiftEmptyArrayStorage, v28, v27);
  }
}

uint64_t sub_1010CFB0C(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1010CFD8C;
  }

  else
  {
    v4[23] = a1;
    v6 = sub_1010CFC48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010CFC48()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_1010CFCF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CFD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CFE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C75C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected isUserAgent is true on non-macOS platform!", v10, 2u);
    }

    v11 = type metadata accessor for ObservedAdvertisement(0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v13 = *(v3 + 128);
    if (v13)
    {

      sub_10021B7F4(a1, a2, v13, a3);
    }

    else
    {
      if (qword_101695248 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_1016C75C0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "No observation store on this platform!", v17, 2u);
      }

      sub_1010D6C78();
      swift_allocError();
      return swift_willThrow();
    }
  }
}

uint64_t sub_1010D0080(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D00A0, v1, 0);
}

uint64_t sub_1010D00A0(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    goto LABEL_7;
  }

  if (*(v1[3] + 128))
  {
    v7 = v1[2];

    sub_100228CEC(v7);

LABEL_7:
    v6 = v1[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_1016C75C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "No observation store on this platform!", v11, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v6 = v1[1];
LABEL_15:

  return v6();
}

uint64_t sub_1010D02E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for DeviceEvent(0);
  v2[4] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016C7750, &unk_101404C90);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B3CF0, &qword_1013D4A70);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1010D0444, v1, 0);
}

uint64_t sub_1010D0444(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    goto LABEL_7;
  }

  v18 = *(v1[3] + 128);
  if (v18)
  {
    v19 = v1[2];

    sub_1002256D0(v19, v18);

LABEL_7:
    v6 = *(v1[3] + 144);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v1[9];
      v27 = *(v8 + 16);
      v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v25 = (v1[6] + 8);
      v26 = *(v8 + 72);
      v10 = (v8 + 8);

      do
      {
        v11 = v1[10];
        v13 = v1[7];
        v12 = v1[8];
        v15 = v1[4];
        v14 = v1[5];
        v16 = v1[2];
        v27(v11, v9, v12);
        sub_10001BBA0(v16, v15, type metadata accessor for DeviceEvent);
        AsyncStream.Continuation.yield(_:)();
        (*v25)(v13, v14);
        (*v10)(v11, v12);
        v9 += v26;
        --v7;
      }

      while (v7);
    }

    v17 = v1[1];
    goto LABEL_19;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_1016C75C0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "No observation store on this platform!", v23, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();

  v17 = v1[1];
LABEL_19:

  return v17();
}

uint64_t sub_1010D07D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a1;
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v6 = swift_task_alloc();
  v4[10] = v6;
  v7 = type metadata accessor for KeySyncSnapshot(0);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[14] = v8;
  *v8 = v4;
  v8[1] = sub_1010D0914;

  return sub_1010D4938(v6, a2);
}

uint64_t sub_1010D0914()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1010D0A24, v1, 0);
}

uint64_t sub_1010D0A24()
{
  v1 = *(v0 + 80);
  if ((*(*(v0 + 96) + 48))(v1, 1, *(v0 + 88)) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E358, &qword_101404C50);
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 64);
    sub_1010D7018(v1, v5, type metadata accessor for KeySyncSnapshot);
    sub_10112D9E4(v6, (v0 + 16));
    sub_1010D6FB8(v5, type metadata accessor for KeySyncSnapshot);
    if ((*(v0 + 48) & 1) == 0)
    {
      v2 = 0;
      v8 = *(v0 + 32);
      v9 = *(v0 + 16);
      goto LABEL_4;
    }
  }

  v8 = 0u;
  v9 = 0u;
  v2 = 1;
LABEL_4:
  v3 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  v4 = *(v0 + 8);

  return v4();
}

NSString sub_1010D0B90()
{
  result = String._bridgeToObjectiveC()();
  qword_10177C648 = result;
  return result;
}

uint64_t sub_1010D0BC8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C75C0);
  v1 = sub_1000076D4(v0, qword_1016C75C0);
  if (qword_101695250 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010D0C90(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000017;
  *(v1 + 120) = 0x8000000101404A20;
  *(v1 + 136) = _swiftEmptyArrayStorage;
  *(v1 + 144) = _swiftEmptyArrayStorage;
  *(v1 + 152) = xmmword_10139D920;
  if (isUserAgent.getter())
  {

    a1 = 0;
  }

  *(v1 + 128) = a1;
  return v1;
}

uint64_t sub_1010D0D28()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  v0[3] = v2;
  if (v2)
  {

    return _swift_task_switch(sub_1010D0E18, 0, 0);
  }

  else
  {
    type metadata accessor for StateCapture();
    swift_allocObject();

    *(v1 + 160) = StateCapture.init(_:)();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1010D0E18()
{
  if (qword_101695468 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  v3 = sub_1000076D4(v2, qword_10177CCE0);
  sub_100C630FC(v3);

  return _swift_task_switch(sub_1010D0EC4, v1, 0);
}

uint64_t sub_1010D0EC4()
{
  v1 = *(v0 + 16);
  type metadata accessor for StateCapture();
  swift_allocObject();

  *(v1 + 160) = StateCapture.init(_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010D0F70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v3 = type metadata accessor for StateCaptureDateType();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceEvent(0);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for StateCaptureHintAPI();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  StateCaptureHint.api.getter();
  (*(v12 + 104))(v15, enum case for StateCaptureHintAPI.request(_:), v11);
  sub_1010D6F70(&qword_101698DD0, 255, &type metadata accessor for StateCaptureHintAPI, &protocol conformance descriptor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (v38 != v39)
  {
    v28 = 1;
    v27 = v37;
    goto LABEL_9;
  }

  if (*(v36 + 128))
  {

    sub_100222D9C(v19);

    if (!v2)
    {
      v38 = _swiftEmptyDictionarySingleton;
      dispatch thunk of _AnySequenceBox._makeIterator()();
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v21 = v35;
      v22 = *(v34 + 48);
      if (v22(v10, 1, v35) != 1)
      {
        do
        {
          sub_1010D7018(v10, v7, type metadata accessor for DeviceEvent);
          sub_1010D156C(&v38, v7);
          sub_1010D6FB8(v7, type metadata accessor for DeviceEvent);
          dispatch thunk of _AnyIteratorBoxBase.next()();
        }

        while (v22(v10, 1, v21) != 1);
      }

      v23 = objc_opt_self();
      sub_1000BC4D4(&qword_1016C7758, &unk_101404D20);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v38 = 0;
      v25 = [v23 dataWithPropertyList:isa format:200 options:0 error:&v38];

      v26 = v38;
      v27 = v37;
      if (v25)
      {
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v32 + 104))(v31, enum case for StateCaptureDateType.serialized(_:), v33);
        StateCaptureStateData.init(type:title:data:)();

        v28 = 0;
LABEL_9:
        v29 = type metadata accessor for StateCaptureStateData();
        return (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
      }

      v30 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_1010D6C78();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1010D156C(void *a1, uint64_t a2)
{
  type metadata accessor for DeviceEvent(0);
  type metadata accessor for BeaconIdentifier(0);
  v28 = UUID.uuidString.getter();
  v30 = v4;
  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6 = 0xE800000000000000;
  v7 = 0x6E776F6E6B6E752ELL;
  v8 = *(a2 + 9);
  v9 = 0xEC00000064657261;
  v10 = 0x657070617369642ELL;
  if (v8 != 6)
  {
    v10 = 0x726961702ELL;
    v9 = 0xE500000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x6863617465642ELL;
  if (v8 != 4)
  {
    v12 = 0x657463657465642ELL;
    v11 = 0xEF79627261654E64;
  }

  if (*(a2 + 9) <= 5u)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0xEB00000000746365;
  v14 = 0x6E6E6F637369642ELL;
  if (v8 != 2)
  {
    v14 = 0x6863617474612ELL;
    v13 = 0xE700000000000000;
  }

  if (*(a2 + 9))
  {
    v7 = 0x7463656E6E6F632ELL;
    v6 = 0xE800000000000000;
  }

  if (*(a2 + 9) > 1u)
  {
    v7 = v14;
    v6 = v13;
  }

  if (*(a2 + 9) <= 3u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v10;
  }

  if (*(a2 + 9) <= 3u)
  {
    v16 = v6;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18 = v28;
  v19 = *a1;
  if (!*(*a1 + 16) || (v20 = sub_100771D58(v28, v30), (v21 & 1) == 0))
  {
    sub_1000BC4D4(&qword_1016B3C30, &qword_1013D49B8);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    *(v26 + 32) = sub_100EEFCD4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    v25 = v26;
    goto LABEL_24;
  }

  v22 = *(*(v19 + 56) + 8 * v20);
  if (*(v22 + 16) < 3uLL)
  {
    sub_1000BC4D4(&qword_1016B3C30, &qword_1013D49B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;

    *(inited + 32) = sub_100EEFCD4();
    sub_10039B714(inited);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    v25 = v22;
LABEL_24:
    sub_101002C58(v25, v18, v30, isUniquelyReferenced_nonNull_native);

    *a1 = v29;
    return result;
  }
}

uint64_t sub_1010D185C()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 integerForKey:v3];

  if (v4 != 1)
  {
    sub_1010D1AD8(0);
    v5 = [v1 standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v5 setInteger:1 forKey:v6];
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1010D1AD8(uint64_t a1)
{
  v2 = *(v1 + 128);
  if (v2)
  {

    v4 = sub_100207454(a1, v2);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016C75C0);
    v6 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, v4, "No observation store on this platform!", v7, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1010D1C20()
{
  v1[2] = v0;
  v1[3] = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_1010D1D68;

  return daemon.getter();
}

uint64_t sub_1010D1D68(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1010D6F70(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1010D6F70(&unk_1016AA520, 255, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_1010D1F4C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010D1F4C(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v4 = v3[2];
    v5 = sub_1010D28FC;
  }

  else
  {
    v6 = v3[2];

    v5 = sub_1010D2074;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1010D2074()
{
  v1 = *(v0[2] + 128);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[11];

    return _swift_task_switch(sub_1010D2228, v2, 0);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016C75C0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No observation store on this platform!", v6, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1010D2228()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1010D22BC;

  return sub_100031364();
}

uint64_t sub_1010D22BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 16);
  if (v1)
  {
    v6 = sub_1010D25FC;
  }

  else
  {
    v6 = sub_1010D23F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010D23F0()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      sub_10001BBA0(v5, v8, type metadata accessor for LocalFindableAccessoryRecord);
      (*(v3 + 16))(v6, v8, v7);
      sub_1010D6FB8(v8, type metadata accessor for LocalFindableAccessoryRecord);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[7];
      v12 = v0[5];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v0[17] = _swiftEmptyArrayStorage;
  v13 = v0[13];
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_1010D2680;

  return sub_10020C214(_swiftEmptyArrayStorage, v13);
}

uint64_t sub_1010D25FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D2680(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[2];
    v5 = sub_1010D2974;
  }

  else
  {
    v6 = v3[2];

    v5 = sub_1010D27A8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1010D27A8()
{
  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C75C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 152);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted %ld device events.", v5, 0xCu);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1010D28FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D2974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D2A04()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1010D2A5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ObservationStoreService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1010D2B04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010D183C();
}

uint64_t sub_1010D2B90(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ObservationStoreService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1010D2C38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010D0D08();
}

uint64_t sub_1010D2CC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ObservationStoreService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1010D2D6C()
{
  type metadata accessor for ObservationStoreService();
  sub_1010D6F70(&qword_1016AA450, v0, type metadata accessor for ObservationStoreService, &unk_101404B80);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1010D2DD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1010D2DFC, v3, 0);
}

uint64_t sub_1010D2DFC(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v9 = *(*(v1 + 32) + 128);
  if (v9)
  {
    v10 = *(v1 + 40);
    v12 = *(v1 + 16);
    v11 = *(v1 + 24);

    sub_100214264(v12, v11, v10, v9);
    v18 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v6 = v18;
LABEL_7:
    v7 = *(v1 + 8);

    return v7(v6);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C75C0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "No observation store on this platform!", v16, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1010D30B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D30D0, v1, 0);
}

uint64_t sub_1010D30D0(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v9 = *(v1[3] + 128);
  if (v9)
  {
    v10 = v1[2];

    sub_100216ED0(v10, v9);
    v16 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v6 = v16;
LABEL_7:
    v7 = v1[1];

    return v7(v6);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C75C0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No observation store on this platform!", v14, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v15 = v1[1];

  return v15();
}

uint64_t sub_1010D336C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D338C, v1, 0);
}

uint64_t sub_1010D338C(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v9 = *(v1[3] + 128);
  if (v9)
  {
    v10 = v1[2];

    sub_1002183B8(v10, v9);
    v16 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v6 = v16;
LABEL_7:
    v7 = v1[1];

    return v7(v6);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C75C0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No observation store on this platform!", v14, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v15 = v1[1];

  return v15();
}

uint64_t sub_1010D3628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D3648, v1, 0);
}

uint64_t sub_1010D3648(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    LOBYTE(v3) = 0;
    v6 = 1;
    goto LABEL_7;
  }

  v9 = *(v1[3] + 128);
  if (v9)
  {
    v3 = v1[2];

    LODWORD(v3) = sub_10021A3F4(v3, v9);

    v6 = (v3 >> 8) & 1;
LABEL_7:
    v7 = v1[1];

    return v7(v3 | (v6 << 8));
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016C75C0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No observation store on this platform!", v13, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v14 = v1[1];

  return v14();
}

uint64_t sub_1010D38DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for DeviceEvent(0);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1010D3B34, v3, 0);
}

uint64_t sub_1010D3B34()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v0[2] = 0x7365547265646E75;
  v0[3] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v0[29] & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_16:

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();

    v11 = v0[1];
    goto LABEL_17;
  }

  v6 = *(v0[7] + 128);
  if (!v6)
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
    goto LABEL_15;
  }

  v7 = v0[25];
  v9 = v0[5];
  v8 = v0[6];

  sub_100221138(v9, 8, v8, v6, v7);
  v13 = v0[26];
  v14 = v0[25];
  v15 = (*(v0[27] + 48))(v14, 1, v13);
  if (v15 == 1)
  {

    v16 = &unk_1016AA500;
    v17 = &unk_1013B3600;
  }

  else
  {
    v18 = v0[28];
    v19 = v0[14];
    sub_1010D7018(v14, v18, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v18 + *(v13 + 32), v19, &unk_1016AA510, &unk_101393150);
    v20 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
    {
      v71 = v0[24];
      v23 = v0[17];
      v24 = v0[18];
      v25 = v0[15];
      v26 = v0[16];
      v28 = v0[13];
      v27 = v0[14];
      v69 = v0[5];
      v29 = *(v26 + 16);
      v29(v23, v27, v25);
      sub_1010D6FB8(v27, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v26 + 32))(v24, v23, v25);
      v29(v28, v24, v25);
      v30 = *(v26 + 56);
      v30(v28, 0, 1, v25);
      v31 = v0;
      sub_100221138(v69, 3, v28, v6, v71);
      v32 = v0[15];
      v33 = v0[13];
      v74 = v0[23];
      v34 = v0[18];
      v35 = v30;
      v36 = v31[12];
      v37 = v31[5];
      sub_10000B3A8(v33, &qword_1016980D0, &unk_10138F3B0);
      v29(v36, v34, v32);
      v72 = v35;
      v35(v36, 0, 1, v32);
      sub_100221138(v37, 4, v36, v6, v74);
      v38 = v31[18];
      v39 = v31[22];
      v40 = v31[15];
      v41 = v31[11];
      v42 = v31[5];
      sub_10000B3A8(v31[12], &qword_1016980D0, &unk_10138F3B0);
      v29(v41, v38, v40);
      v35(v41, 0, 1, v40);
      sub_100221138(v42, 1, v41, v6, v39);
      v43 = v31;
      v44 = v31[21];
      v45 = v43[18];
      v46 = v43[15];
      v47 = v43[10];
      v0 = v43;
      v48 = v43[5];
      sub_10000B3A8(v43[11], &qword_1016980D0, &unk_10138F3B0);
      v29(v47, v45, v46);
      v72(v47, 0, 1, v46);
      sub_100221138(v48, 2, v47, v6, v44);
      v49 = v0[20];
      v50 = v0[18];
      v51 = v0[15];
      v52 = v0[9];
      v53 = v0[5];
      sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
      v29(v52, v50, v51);
      v72(v52, 0, 1, v51);
      sub_100221138(v53, 5, v52, v6, v49);
      v55 = v0[18];
      v54 = v0[19];
      v56 = v0[15];
      v57 = v0[8];
      v58 = v0[5];
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
      v29(v57, v55, v56);
      v72(v57, 0, 1, v56);
      sub_100221138(v58, 6, v57, v6, v54);
      v59 = v0[23];
      v60 = v0[24];
      v61 = v0[22];
      v68 = v0[21];
      v70 = v0[28];
      v73 = v0[20];
      v62 = v0[18];
      v75 = v0[19];
      v63 = v0[15];
      v64 = v0[16];
      v65 = v0[8];
      v66 = v0[4];

      sub_10000B3A8(v65, &qword_1016980D0, &unk_10138F3B0);
      (*(v64 + 8))(v62, v63);
      sub_1010D6FB8(v70, type metadata accessor for DeviceEvent);
      sub_1000D2AD8(v60, v66, &unk_1016AA500, &unk_1013B3600);
      v67 = type metadata accessor for AttachedAccessoryEventsTransport(0);
      sub_1000D2AD8(v59, v66 + v67[5], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v61, v66 + v67[6], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v68, v66 + v67[7], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v73, v66 + v67[8], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v75, v66 + v67[9], &unk_1016AA500, &unk_1013B3600);
      v21 = v67;
      v22 = 0;
      goto LABEL_25;
    }

    v14 = v0[14];
    sub_1010D6FB8(v0[28], type metadata accessor for DeviceEvent);

    v16 = &unk_1016AA510;
    v17 = &unk_101393150;
  }

  sub_10000B3A8(v14, v16, v17);
  v21 = type metadata accessor for AttachedAccessoryEventsTransport(0);
  v22 = 1;
LABEL_25:
  (*(*(v21 - 8) + 56))(v0[4], v22, 1);

  v11 = v0[1];
LABEL_17:

  return v11();
}

uint64_t sub_1010D4938(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1010D49D8;

  return sub_1010CC3BC(a2, &off_101607728);
}

uint64_t sub_1010D49D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_1010D4D8C;
  }

  else
  {
    v5 = sub_1010D4B04;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1010D4B04()
{
  if (*(v0[5] + 16))
  {
    v1 = v0[6];
    sub_1011305AC(v0[5], v0[2]);
    if (v1)
    {
      if (qword_101695270 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000076D4(v2, qword_10177C6B8);
      swift_errorRetain();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        *v5 = 138543362;
        swift_errorRetain();
        v7 = _swift_stdlib_bridgeErrorToNSError();
        *(v5 + 4) = v7;
        *v6 = v7;
        _os_log_impl(&_mh_execute_header, v3, v4, "Couldn't create KeySyncSnapshot, %{public}@", v5, 0xCu);
        sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
      }

      else
      {
      }

      v12 = v0[2];
      v13 = type metadata accessor for KeySyncSnapshot(0);
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    }

    else
    {
      v10 = v0[2];
      v11 = type metadata accessor for KeySyncSnapshot(0);
      (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    }
  }

  else
  {
    v8 = v0[2];
    v9 = type metadata accessor for KeySyncSnapshot(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1010D4D8C()
{
  if (qword_101695270 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C6B8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Couldn't create KeySyncSnapshot, %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v8 = type metadata accessor for KeySyncSnapshot(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1010D4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v5 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v19 - v10);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v7, &unk_1016AF8A0, &unk_10139D7C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &unk_1016AF8A0, &unk_10139D7C0);
    (*(v13 + 16))(v15, v20, v12);
    v16 = *(v13 + 32);
    v17 = 1;
  }

  else
  {
    sub_1000D2AD8(v7, v11, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v11 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = *v11;
    }

    v16 = *(v13 + 32);
    v16(v15, v11 + *(v8 + 36), v12);
  }

  *a3 = v17;
  return (v16)(a3 + *(v8 + 36), v15, v12);
}

uint64_t sub_1010D51F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v4[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_1010D5324;

  return sub_1010D4938(v6, a2);
}

uint64_t sub_1010D5324()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1010D5434, v1, 0);
}

uint64_t sub_1010D5434()
{
  v1 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 56), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 48), &qword_10169E358, &qword_101404C50);
    v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    sub_10112D3D0(*(v0 + 40));
    sub_1010D6FB8(v4, type metadata accessor for KeySyncSnapshot);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1010D4F70(*(v0 + 24), v8, *(v0 + 16));
  sub_10000B3A8(v8, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v7, &qword_10169E358, &qword_101404C50);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1010D5604(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C75C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    goto LABEL_7;
  }

  if (*(*(v1 + 16) + 128))
  {

    sub_100220C64();

LABEL_7:
    v6 = *(v1 + 8);
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016C75C0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "No observation store on this platform!", v10, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v6 = *(v1 + 8);
LABEL_15:

  return v6();
}

uint64_t sub_1010D586C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_1016B3DF8, &qword_101404C30);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010D593C, a4, 0);
}

uint64_t sub_1010D593C()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 136) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5F0C4(0, v2[2] + 1, 1, v2);
    *(v1 + 136) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5F0C4((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 136) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1010D5A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_10025EDD4(0, 0, v15, a6, v18);
}

uint64_t sub_1010D5C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_1016B3CF0, &qword_1013D4A70);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010D5D4C, a4, 0);
}

uint64_t sub_1010D5D4C()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 144) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5F0E8(0, v2[2] + 1, 1, v2);
    *(v1 + 144) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5F0E8((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 144) = v2;

  v9 = v0[1];

  return v9();
}