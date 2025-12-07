unint64_t sub_10088D40C()
{
  result = qword_1016AC370;
  if (!qword_1016AC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC370);
  }

  return result;
}

unint64_t sub_10088D464()
{
  result = qword_1016AC378;
  if (!qword_1016AC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC378);
  }

  return result;
}

uint64_t sub_10088D4B8()
{
  v0 = type metadata accessor for NSScanner.NumberRepresentation();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithString:v9];

  static CharacterSet.letters.getter();
  v23 = NSScanner.scanCharacters(from:)();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    v13 = enum case for NSScanner.NumberRepresentation.decimal(_:);
    v14 = *(v1 + 104);
    v14(v3, enum case for NSScanner.NumberRepresentation.decimal(_:), v0);
    v22 = NSScanner.scanInt(representation:)();
    v16 = v15;
    v17 = *(v1 + 8);
    v17(v3, v0);
    if ((v16 & 1) != 0 || (v18._countAndFlagsBits = 44, v18._object = 0xE100000000000000, !NSScanner.scanString(_:)(v18).value._object))
    {

      return 0;
    }

    v14(v3, v13, v0);
    NSScanner.scanInt(representation:)();
    v20 = v19;

    v17(v3, v0);
    if (v20)
    {

      return 0;
    }

    return v23;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_10088D764()
{
  result = qword_1016BBF20;
  if (!qword_1016BBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBF20);
  }

  return result;
}

uint64_t sub_10088D7B8(void *a1)
{
  v3 = a1[3];
  sub_1000035D0(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    v3 = v12;
    sub_1000035D0(v11, v12);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;

    v8 = sub_10088D4B8();
    if (v9)
    {
      v3 = v8;

      sub_100007BAC(v11);
      sub_100007BAC(a1);
      return v3;
    }

    sub_10088D8F4();
    swift_allocError();
    *v10 = v5;
    v10[1] = v7;
    swift_willThrow();
    sub_100007BAC(v11);
  }

  sub_100007BAC(a1);
  return v3;
}

unint64_t sub_10088D8F4()
{
  result = qword_1016AC380;
  if (!qword_1016AC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC380);
  }

  return result;
}

BOOL sub_10088D968(void *a1)
{
  v2 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-1] - v3;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_1000035D0(a1, v9);
  if (((*(v10 + 112))(v9, v10) & 1) == 0)
  {
    return 1;
  }

  sub_10001F280(a1, v19);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v11 = swift_dynamicCast();
  v12 = *(v6 + 56);
  if (v11)
  {
    v12(v4, 0, 1, v5);
    sub_100591C20(v4, v8);
    My = type metadata accessor for Feature.FindMy();
    v19[3] = My;
    v19[4] = sub_10004521C();
    v14 = sub_1000280DC(v19);
    (*(*(My - 8) + 104))(v14, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v19);
    if (My)
    {
      v15 = v8[*(v5 + 64)];
      sub_1003949D0(v8);
      return v15 != 4 && v15 != 1;
    }

    else
    {
      sub_1003949D0(v8);
      return 0;
    }
  }

  else
  {
    v12(v4, 1, 1, v5);
    sub_10088DBD8(v4);
    return 1;
  }
}

uint64_t sub_10088DBD8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static SendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double SendPairingStatusCommandPayload.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10088DE70(a2, v6);
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

uint64_t sub_10088DD74@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 60)
  {
    goto LABEL_34;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v12 != 2)
  {
    goto LABEL_35;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = v13;
  }

LABEL_20:
  if (v13 == 4)
  {
    if ((a6 >> 62) > 1)
    {
      if (a6 >> 62 == 2)
      {
        v18 = *(a5 + 16);
        v17 = *(a5 + 24);
        v11 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (!v11)
        {
LABEL_27:
          if (v16 == 1286)
          {
            *a7 = result;
            a7[1] = a2;
            a7[2] = a3;
            a7[3] = a4;
            a7[4] = a5;
            a7[5] = a6;
            return result;
          }

          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if (a6 >> 62 == 1)
    {
      LODWORD(v16) = HIDWORD(a5) - a5;
      if (!__OFSUB__(HIDWORD(a5), a5))
      {
        v16 = v16;
        goto LABEL_27;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10088DE70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v15, v16);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v15);
    return sub_100007BAC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v15, v16);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v18 = v10;
    sub_10015049C(v15, v16);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_10088DD74(v7, v8, v9, v18, v11, v12, v17);
    sub_100007BAC(v15);
    result = sub_100007BAC(a1);
    v14 = v17[1];
    *a2 = v17[0];
    a2[1] = v14;
    a2[2] = v17[2];
  }

  return result;
}

unint64_t sub_10088DFF0(uint64_t a1)
{
  *(a1 + 8) = sub_10088E020();
  result = sub_10088E074();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10088E020()
{
  result = qword_1016AC390;
  if (!qword_1016AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC390);
  }

  return result;
}

unint64_t sub_10088E074()
{
  result = qword_1016AC398;
  if (!qword_1016AC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC398);
  }

  return result;
}

uint64_t sub_10088E0D8(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10088E198()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177B550 = result;
  return result;
}

uint64_t sub_10088E1F4(uint64_t a1)
{
  v13 = *(v1 + *(a1 + 36));
  v3 = sub_100260984(&v13, v14);
  v5 = v4;
  v6 = (*(*(a1 + 24) + 40))(*(a1 + 16));
  v8 = v7;
  v15[0] = v6;
  v15[1] = v7;
  v14[3] = &type metadata for Data;
  v14[4] = &protocol witness table for Data;
  v14[0] = v3;
  v14[1] = v5;
  v9 = sub_1000035D0(v14, &type metadata for Data);
  v10 = *v9;
  v11 = v9[1];
  sub_100017D5C(v6, v8);
  sub_100017DB0(v10, v11, v15);
  sub_100016590(v6, v8);
  sub_100007BAC(v14);
  return v15[0];
}

uint64_t sub_10088E2F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Optional();
  v60 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v62 = &v54 - v13;
  v61 = *(a3 - 8);
  __chkstk_darwin(v12);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v65);
  v15 = *(&v65 + 1);
  v16 = v65;
  v17 = *(&v65 + 1) >> 62;
  if ((*(&v65 + 1) >> 62) > 1)
  {
    if (v17 != 2)
    {
      *(&v64 + 6) = 0;
      *&v64 = 0;
      v18 = &v64;
      goto LABEL_30;
    }

    v56 = v11;
    v57 = v5;
    v55 = a5;
    v58 = a4;
    v19 = *(v65 + 16);
    v20 = *(v65 + 24);
    v21 = __DataStorage._bytes.getter();
    if (v21)
    {
      v22 = __DataStorage._offset.getter();
      if (__OFSUB__(v19, v22))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v21 += v19 - v22;
    }

    v23 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v23)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = __DataStorage._length.getter();
    if (v25 >= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    v27 = v26 + v21;
    if (v21)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v21;
    v30 = a3;
    a4 = v58;
  }

  else
  {
    if (!v17)
    {
      LODWORD(v64) = v65;
      WORD2(v64) = WORD2(v65);
      *(&v64 + 6) = *(&v65 + 6);
      v18 = &v64 + BYTE14(v65);
LABEL_30:
      sub_10088E8FC(&v64, v18, a3, a4, &v63);
      if (v5)
      {
        goto LABEL_31;
      }

      v56 = v11;
      sub_100016590(v16, v15);
      v39 = v63;
      goto LABEL_33;
    }

    v57 = v5;
    v58 = a4;
    v31 = (v65 >> 32) - v65;
    if (v65 >> 32 < v65)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v55 = a5;
    v56 = v11;
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v33))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v32 += v16 - v33;
    }

    a4 = v58;
    v34 = __DataStorage._length.getter();
    if (v34 >= v31)
    {
      v35 = (v16 >> 32) - v16;
    }

    else
    {
      v35 = v34;
    }

    v36 = v35 + v32;
    if (v32)
    {
      v28 = v36;
    }

    else
    {
      v28 = 0;
    }

    v29 = v32;
    v30 = a3;
  }

  v37 = v57;
  sub_10088E8FC(v29, v28, v30, a4, &v64);
  if (v37)
  {
LABEL_31:
    sub_100016590(a1, a2);
    v40 = v16;
    v41 = v15;
    return sub_100016590(v40, v41);
  }

  sub_100016590(v16, v15);
  v39 = v64;
  a5 = v55;
LABEL_33:
  *(a5 + *(type metadata accessor for KeyIndexMapGenerator.Record(0, a3, a4, v38) + 36)) = v39;
  v42 = a2 >> 62;
  v43 = v62;
  if ((a2 >> 62) > 1)
  {
    v44 = 0;
    if (v42 != 2)
    {
      goto LABEL_42;
    }

    v46 = *(a1 + 16);
    v45 = *(a1 + 24);
    v23 = __OFSUB__(v45, v46);
    v44 = v45 - v46;
    if (!v23)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  else if (!v42)
  {
    v44 = BYTE6(a2);
    goto LABEL_42;
  }

  LODWORD(v44) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_52;
  }

  v44 = v44;
LABEL_42:
  v47 = v44 - 4;
  if (__OFSUB__(v44, 4))
  {
    __break(1u);
    goto LABEL_48;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v47, a1, a2, &v65);
  v64 = v65;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v48 = v61;
  if ((*(v61 + 48))(v43, 1, a3) == 1)
  {
    (*(v60 + 8))(v43, v56);
    type metadata accessor for KeyIndexMapGenerator.Error(0, a3, a4, v49);
    swift_getWitnessTable();
    swift_allocError();
    *v50 = 1;
    *(v50 + 4) = 2;
    swift_willThrow();
    v40 = a1;
    v41 = a2;
    return sub_100016590(v40, v41);
  }

  sub_100016590(a1, a2);
  v52 = *(v48 + 32);
  v53 = v59;
  v52(v59, v43, a3);
  return (v52)(a5, v53, a3);
}

uint64_t sub_10088E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a4 + 40);
  v7 = v6(a3, a4);
  v9 = v8;
  v10 = v6(v5, a4);
  v12 = v11;
  LOBYTE(v5) = static Data.< infix(_:_:)();
  sub_100016590(v10, v12);
  sub_100016590(v7, v9);
  return v5 & 1;
}

_DWORD *sub_10088E8FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  if (result && (a2 - result + 3) >= 7)
  {
    *a5 = *result;
  }

  else
  {
    type metadata accessor for KeyIndexMapGenerator.Error(0, a3, a4, a4);
    swift_getWitnessTable();
    swift_allocError();
    *v5 = 1;
    *(v5 + 4) = 2;
    return swift_willThrow();
  }

  return result;
}

BOOL sub_10088E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for KeyIndexMapGenerator.Record(0, a3, a4, v8);
  return *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36));
}

Swift::Int sub_10088EA5C(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

Swift::Int sub_10088EAFC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_10088EA10(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_10088EB4C()
{
  v1 = qword_1016AC3A0;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10088EBBC()
{
  sub_10088EB4C();

  return swift_deallocClassInstance();
}

uint64_t sub_10088EC2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10088ECA4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_10088EDA8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_10088EF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for LocalFindableAccessoryFirmwareVersionNumber(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DatabaseError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10088EFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10088F018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10088F05C(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10088F074(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_10088F090(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v2, qword_10177BA58);
  (*(v3 + 16))(v6, v9, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (a1 != 3 && a1 != 2 && a1 != 1)
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C388, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);
  }

  URL.appendingPathComponent(_:)();
  return (v10)(v8, v2);
}

uint64_t sub_10088F30C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v8 = sub_1000076D4(v4, qword_10177BA58);
  (*(v5 + 16))(v7, v8, v4);
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v5 + 8))(v7, v4);
  if (a1 == 3)
  {
    v9 = 0x646572616853;
    v10 = 0xE600000000000000;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = 0x65746176697250;
LABEL_12:
    v10 = 0xE700000000000000;
    goto LABEL_13;
  }

  if (a1 != 1)
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v23 = v11;
      swift_once();
      v11 = v23;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C388, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);
    v9 = 0x6E776F6E6B6E55;
    goto LABEL_12;
  }

  v9 = 0x63696C627550;
  v10 = 0xE600000000000000;
LABEL_13:
  URL.appendPathComponent(_:)(*&v9);
  v12 = [a2 ownerName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  URL.appendPathComponent(_:)(v16);

  v17 = [a2 zoneName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v24._countAndFlagsBits = v18;
  v24._object = v20;
  v21._countAndFlagsBits = 0x6E656B6F742ELL;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  URL.appendPathComponent(_:)(v24);
}

uint64_t sub_10088F5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v26 = 0;
  LODWORD(v4) = [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v26];

  v12 = v26;
  if (!v4)
  {
    v25 = v26;
LABEL_8:
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v13 = objc_opt_self();
  v26 = 0;
  v14 = v12;
  v15 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v26];
  v16 = v26;
  if (!v15)
  {
    v25 = v16;
    goto LABEL_8;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_1010B6FB0(v17, v19, 0);
  if (!v2)
  {
    v22 = v20;
    v23 = v21;
    Data.write(to:excludeFromBackup:options:)();
    sub_100016590(v22, v23);
  }

  return sub_100016590(v17, v19);
}

id sub_10088F860()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10088F948(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CryptoError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 fileExistsAtPath:v8];

  result = 0;
  if (v9)
  {
    v22 = v4;
    v23 = Data.init(contentsOf:options:)();
    v21 = v11;
    v12 = *(a2 + 72);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10088FFBC;
    *(v13 + 24) = a2;
    v29 = sub_1000D2FB0;
    v30 = v13;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10013FE14;
    v28 = &unk_101637B40;
    v14 = _Block_copy(&aBlock);

    dispatch_sync(v12, v14);
    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      __chkstk_darwin(result);
      v19[-4] = a2;
      v15 = v21;
      v19[-3] = v23;
      v19[-2] = v15;
      OS_dispatch_queue.sync<A>(execute:)();
      v17 = aBlock;
      v16 = v26;
      v19[1] = sub_100008BB8(0, &qword_1016AC5D8, NSKeyedUnarchiver_ptr);
      sub_1000BC4D4(&qword_1016AC5E0, &qword_1013C1198);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      *(v18 + 32) = sub_100008BB8(0, &qword_1016AC5E8, CKServerChangeToken_ptr);
      v20 = v16;
      static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
      sub_100016590(v17, v20);
      sub_100016590(v23, v15);

      if (v28)
      {
        if (swift_dynamicCast())
        {
          return v24;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        sub_1004AB638(&aBlock);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10088FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22[0] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationFetcher(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v3 + 16);
  sub_10089043C(v3, v14);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1008904A0(v14, v17 + v15);
  *(v17 + v16) = a1;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = v22[0];
  v18[1] = v19;
  aBlock[4] = sub_100890504;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101637B90;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v7, v5);
  (*(v8 + 8))(v10, v24);
}

BOOL sub_100890374()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  return *(v1 + 16) == 1 && sub_1005C8928(1, v1);
}

uint64_t sub_10089039C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_10089043C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationFetcher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008904A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationFetcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100890504()
{
  v1 = *(type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);

  sub_10062743C(v5, (v0 + v2), v6, v7);
}

uint64_t sub_1008905D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a3;
  v21 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v22;
  v17 = v23;
  v15[2] = v21;
  v15[3] = v17;
  v15[4] = v16;
  aBlock[4] = sub_1008909DC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101637BE0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v24);
}

uint64_t sub_100890934()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return 2;
}

__n128 sub_100890A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100890A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100890A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100890AF4()
{
  result = qword_1016AC5F0;
  if (!qword_1016AC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC5F0);
  }

  return result;
}

unint64_t sub_100890B48()
{
  result = qword_1016AC5F8;
  if (!qword_1016AC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC5F8);
  }

  return result;
}

unint64_t sub_100890B9C(uint64_t a1)
{
  result = sub_100890BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100890BC4()
{
  result = qword_1016AC600;
  if (!qword_1016AC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC600);
  }

  return result;
}

uint64_t sub_100890C20()
{

  sub_1000BB27C(v0[10], v0[11]);
  sub_1000BB27C(v0[12], v0[13]);

  return swift_deallocClassInstance();
}

uint64_t sub_100890CB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_100890D84, a3, 0);
}

uint64_t sub_100890D84()
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

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1002EB3A8, v6, v8);
}

uint64_t sub_100890F1C(uint64_t result, char a2)
{
  if (result > 2u)
  {
    if (result != 4)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      type metadata accessor for SPBeaconSharingError(0);
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100890FD4();
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }

    if (result != 1)
    {
      return 0;
    }
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_100890FD4()
{
  result = qword_101696340;
  if (!qword_101696340)
  {
    type metadata accessor for SPBeaconSharingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696340);
  }

  return result;
}

uint64_t sub_10089102C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "#Durian: Will try to connect async on the queue for device %@.", 62, 2, v11);

  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  swift_allocObject();
  v15 = Future.init()();
  v16 = v27;
  v25[1] = *&v27[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v7 + 16))(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v7 + 32))(v18 + v17, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_1008A3EAC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638140;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  v21 = v26;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v22 = v30;
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v31 + 8))(v22, v23);
  (*(v28 + 8))(v21, v29);

  return v15;
}

uint64_t sub_1008914EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v21 = v13;
    swift_once();
    v13 = v21;
  }

  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C398, "#Durian: Will call unpair async on queue.", 41, 2, _swiftEmptyArrayStorage);
  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  swift_allocObject();
  v14 = Future.init()();
  v22 = *&v2[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v11 + 32))(v16 + v15, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_1008A3DD0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638078;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v19 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v25 + 8))(v6, v19);
  (*(v23 + 8))(v9, v24);

  return v14;
}

uint64_t sub_10089193C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v13 = v8;
    swift_once();
    v8 = v13;
  }

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C398, "#Durian: scan for tags nearby owner.", 36, 2, _swiftEmptyArrayStorage);
  v14[1] = *&v0[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_1008A402C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016384D8;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v15);
}

uint64_t sub_100891C74(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "#Durian: Will fetch firwmare version for device %@.", 51, 2, v11);

  sub_1000BC4D4(&qword_1016AC9B0, &unk_1013C15A0);
  swift_allocObject();
  v15 = Future.init()();
  v16 = v27;
  v25[1] = *&v27[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v7 + 16))(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v7 + 32))(v18 + v17, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_1008A3EFC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638230;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  v21 = v26;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v22 = v30;
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v31 + 8))(v22, v23);
  (*(v28 + 8))(v21, v29);

  return v15;
}

uint64_t sub_100892134(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v21 = v13;
    swift_once();
    v13 = v21;
  }

  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C398, "#Durian: Will call fetch user stats async on queue.", 51, 2, _swiftEmptyArrayStorage);
  sub_1000BC4D4(&qword_1016AC9A0, &qword_1013C1588);
  swift_allocObject();
  v14 = Future.init()();
  v22 = *&v2[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v11 + 32))(v16 + v15, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_1008A3DA0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101637FB0;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v19 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v25 + 8))(v6, v19);
  (*(v23 + 8))(v9, v24);

  return v14;
}

void *sub_100892584()
{

  return v0;
}

uint64_t sub_1008925E4()
{
  sub_100892584();

  return swift_deallocClassInstance();
}

id sub_10089263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v18 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue;
  v16 = sub_1000BC488();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_batteryFetchInFlight] = &_swiftEmptySetSingleton;
  v10 = &v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers] = _swiftEmptyDictionarySingleton;
  v11 = v19;
  *&v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_beaconStore] = v18;
  v12 = &v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManagerCreator];
  v13 = v20;
  *v12 = v11;
  v12[1] = v13;
  v14 = type metadata accessor for TagCommandManager();
  v21.receiver = v3;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_10089292C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = (v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    if (*(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager))
    {
      v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManagerCreator);

      v9 = v10(v0, &off_101637E80);
      v12 = v11;

      *v8 = v9;
      v8[1] = v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100892AF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TagCommandManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100892BDC(char *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v53 = a3;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UUID();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43[1] = v8;
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = type metadata accessor for DispatchTimeInterval();
  v9 = *(v43[0] - 8);
  __chkstk_darwin(v43[0]);
  v11 = (v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for DispatchTime();
  v46 = *(v54 - 8);
  v12 = __chkstk_darwin(v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v43 - v15;
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v18 = *&a1[v17];
  if (!*(v18 + 16))
  {
    goto LABEL_8;
  }

  v19 = sub_1000210EC(a2);
  if ((v20 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for CommandCompletion();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 1;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0;
    *(v26 + 64) = v53;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *&a1[v17];
    *&a1[v17] = 0x8000000000000000;
    sub_10100008C(v26, a2, isUniquelyReferenced_nonNull_native);
    *&a1[v17] = v56;
    swift_endAccess();
LABEL_9:

    sub_10089292C();
    v29 = v28;
    ObjectType = swift_getObjectType();
    (*(v29 + 16))(a2, ObjectType, v29);
    static DispatchTime.now()();
    *v11 = 62;
    v31 = v43[0];
    (*(v9 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v43[0]);
    + infix(_:_:)();
    (*(v9 + 8))(v11, v31);
    v53 = *(v46 + 8);
    v53(v14, v54);
    v46 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
    v32 = v44;
    v33 = v45;
    (*(v7 + 16))(v44, a2, v45);
    v34 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    (*(v7 + 32))(v35 + v34, v32, v33);
    aBlock[4] = sub_1008A3EC4;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101638190;
    v36 = _Block_copy(aBlock);
    v37 = a1;
    v38 = v47;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v39 = v49;
    v40 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v36);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v39, v40);
    (*(v48 + 8))(v38, v50);
    v53(v16, v54);
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if (!*(v21 + 64))
  {
    *(v21 + 64) = v53;

    goto LABEL_9;
  }

  v22 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    v42 = v22;
    swift_once();
    v22 = v42;
  }

  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: Connect already pending.", 33, 2, _swiftEmptyArrayStorage, v43[0]);
  type metadata accessor for CommandError(0);
  v56 = 1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v24;
  *(inited + 48) = 0xD00000000000003ALL;
  *(inited + 56) = 0x8000000101362890;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  v25 = aBlock[0];
  Future.finish(error:)();
}

uint64_t sub_1008934A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v16 = *(a1 + v14);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(v16 + 56);
      v35 = v4;
      v20 = *(v19 + 8 * v17);

      v21 = *(v20 + 64);

      if (v21)
      {
        v34 = v21;
        v22 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          v32 = v22;
          swift_once();
          v22 = v32;
        }

        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting to connect. #Bug: CL should have completed.", 69, 2, _swiftEmptyArrayStorage);
        v23 = *(a1 + v14);
        if (*(v23 + 16))
        {

          v24 = sub_1000210EC(a2);
          if (v25)
          {
            v26 = *(*(v23 + 56) + 8 * v24);

            *(v26 + 64) = 0;
          }

          else
          {
          }
        }

        v27 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v27 = 0;
        v27[1] = 0;
        swift_unknownObjectRelease();
        sub_1000BC488();
        (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
        v28 = static OS_dispatch_queue.global(qos:)();
        (*(v11 + 8))(v13, v10);
        v29 = swift_allocObject();
        *(v29 + 16) = v34;
        aBlock[4] = sub_1008A3EDC;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_1016381E0;
        v30 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v39 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v31 = v35;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v6, v31);
        (*(v36 + 8))(v9, v37);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1008939BC(char *a1, uint64_t a2, uint64_t a3)
{
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v8;
  v48 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = (v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for DispatchTime();
  v51 = *(v58 - 8);
  v12 = __chkstk_darwin(v58);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v45 - v15;
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v18 = *&a1[v17];
  if (!*(v18 + 16))
  {
    goto LABEL_8;
  }

  v19 = sub_1000210EC(a2);
  if ((v20 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for CommandCompletion();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 1;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 88) = a3;
    *(v26 + 96) = 0;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *&a1[v17];
    *&a1[v17] = 0x8000000000000000;
    sub_10100008C(v26, a2, isUniquelyReferenced_nonNull_native);
    *&a1[v17] = v60;
    swift_endAccess();
LABEL_9:

    v45[1] = sub_10089292C();
    v29 = v28;
    ObjectType = swift_getObjectType();
    (*(v29 + 80))(a2, ObjectType, v29);
    static DispatchTime.now()();
    *v11 = 62;
    v31 = v46;
    (*(v9 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v46);
    + infix(_:_:)();
    (*(v9 + 8))(v11, v31);
    v51 = *(v51 + 8);
    (v51)(v14, v58);
    v46 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
    v32 = v49;
    v33 = v48;
    v34 = a2;
    v35 = v50;
    (*(v49 + 16))(v48, v34, v50);
    v36 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v37 = (v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 2) = a1;
    (*(v32 + 32))(&v38[v36], v33, v35);
    *&v38[v37] = a3;
    aBlock[4] = sub_1008A3F14;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101638280;
    v39 = _Block_copy(aBlock);

    v40 = a1;
    v41 = v52;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v42 = v54;
    v43 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v39);
    swift_unknownObjectRelease();
    (*(v56 + 8))(v42, v43);
    (*(v53 + 8))(v41, v55);
    (v51)(v16, v58);

    return;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if (!*(v21 + 88))
  {
    *(v21 + 88) = a3;

    goto LABEL_9;
  }

  v22 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    v44 = v22;
    swift_once();
    v22 = v44;
  }

  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: fetch firwmare already pending.", 40, 2, _swiftEmptyArrayStorage);
  type metadata accessor for CommandError(0);
  v60 = 1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v24;
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x8000000101362990;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  v25 = aBlock[0];
  Future.finish(error:)();
}

uint64_t sub_1008942AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v15 = *(a1 + v13);
  if (*(v15 + 16))
  {

    v16 = sub_1000210EC(a2);
    if (v17)
    {
      v18 = *(v15 + 56);
      v38 = v7;
      v19 = *(v18 + 8 * v16);

      v20 = *(v19 + 88);

      if (v20)
      {
        v37 = v6;
        aBlock[0] = a3;
        v45 = v20;
        sub_1000BC4D4(&qword_1016AC9B0, &unk_1013C15A0);
        sub_1000041A4(&qword_1016AC9B8, &qword_1016AC9B0, &unk_1013C15A0, &protocol conformance descriptor for Future<A>);

        v21 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v21)
        {
          v22 = static os_log_type_t.error.getter();
          if (qword_101695050 != -1)
          {
            v35 = v22;
            swift_once();
            v22 = v35;
          }

          os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting to fetch firwmare version. #Bug: CL should have completed.", 84, 2, _swiftEmptyArrayStorage);
          v23 = *(a1 + v13);
          if (*(v23 + 16))
          {

            v24 = sub_1000210EC(a2);
            if (v25)
            {
              v26 = *(*(v23 + 56) + 8 * v24);

              *(v26 + 88) = 0;
            }

            else
            {
            }
          }

          v27 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
          *v27 = 0;
          v27[1] = 0;
          swift_unknownObjectRelease();
          sub_1000BC488();
          v28 = v39;
          (*(v39 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v10);
          v29 = static OS_dispatch_queue.global(qos:)();
          (*(v28 + 8))(v12, v10);
          v30 = swift_allocObject();
          *(v30 + 16) = v20;
          aBlock[4] = sub_1008A90D4;
          aBlock[5] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006684;
          aBlock[3] = &unk_1016382D0;
          v31 = _Block_copy(aBlock);

          v32 = v40;
          static DispatchQoS.unspecified.getter();
          v45 = _swiftEmptyArrayStorage;
          sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v33 = v42;
          v34 = v37;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v31);

          (*(v38 + 8))(v33, v34);
          (*(v41 + 8))(v32, v43);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100894860(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_100894920(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "#Durian: Will call play sound async on queue for device %@.", 59, 2, v12);

  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  swift_allocObject();
  v30[0] = Future.init()();
  swift_allocObject();
  v16 = Future.init()();
  v17 = v31;
  v18 = v32;
  v30[1] = *&v32[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v7 + 16))(v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v31);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v7 + 32))(v22 + v19, v9, v17);
  *(v22 + v20) = v33;
  v23 = v30[0];
  *(v22 + v21) = v30[0];
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = sub_1008A3F64;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016383E8;
  v24 = _Block_copy(aBlock);
  v25 = v18;

  v26 = v34;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v27 = v37;
  v28 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v26, v36);

  return v23;
}

uint64_t sub_100894E38(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v78 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UUID();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v13;
  v69 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for DispatchTime();
  v74 = *(v84 - 8);
  v15 = __chkstk_darwin(v84);
  v64 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = &v62 - v17;
  sub_100895950(a2);
  v18 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v19 = *&a1[v18];
  if (*(v19 + 16))
  {

    v20 = sub_1000210EC(a2);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      goto LABEL_6;
    }
  }

  type metadata accessor for CommandCompletion();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0;
LABEL_6:
  *(v22 + 16) = a3;
  *(v22 + 24) = 0;
  *(v22 + 32) = a4;
  v75 = a4;

  *(v22 + 40) = a5;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = *&a1[v18];
  *&a1[v18] = 0x8000000000000000;
  sub_10100008C(v22, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v18] = v91;
  swift_endAccess();
  v72 = a1;
  v24 = sub_10089292C();
  v26 = v25;
  v63 = static os_log_type_t.default.getter();
  v27 = a2;
  v28 = a3;
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  v62 = xmmword_101385D80;
  *(v30 + 16) = xmmword_101385D80;
  aBlock = v24;
  v86 = v26;
  v82 = v26;
  v83 = v24;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v31 = String.init<A>(describing:)();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_100008C00();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v29, "#Durian: Playing sound using [%{public}@]", 41, 2, v30);

  v35 = static os_log_type_t.default.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = v62;
  v37 = UUID.uuidString.getter();
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v34;
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  v39 = v28;
  if (v28 <= 1)
  {
    v40 = v72;
    if (!v39)
    {
      os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v29, "#Durian: Playing default sound sequence on %{mask.hash}@.", 57, 2, v36);

      swift_getObjectType();
      v41 = [objc_opt_self() defaultSequence];
      goto LABEL_17;
    }

    if (v39 == 1)
    {
      os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v29, "#Durian: Playing ranging sound sequence on %{mask.hash}@.", 57, 2, v36);

      swift_getObjectType();
      v41 = [objc_opt_self() rangingSequence];
LABEL_17:
      v42 = v41;
      v43 = v27;
      (*(v82 + 32))();
      goto LABEL_18;
    }

LABEL_15:
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v29, "#Durian: Unknown context. Playing default sound sequence on %{mask.hash}@.", 74, 2, v36);

    swift_getObjectType();
    v41 = [objc_opt_self() defaultSequence];
    goto LABEL_17;
  }

  v40 = v72;
  if (v39 == 2)
  {
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v29, "#Durian: Playing unauthorized sound sequence on %{mask.hash}@.", 62, 2, v36);

    ObjectType = swift_getObjectType();
    v43 = v27;
    (*(v82 + 40))(v27, ObjectType);
    goto LABEL_19;
  }

  if (v39 != 5)
  {
    goto LABEL_15;
  }

  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v29, "#Durian: Playing unauthorized short sound sequence on %{mask.hash}@.", 68, 2, v36);

  swift_getObjectType();
  v42 = [objc_opt_self() shortSequence];
  v43 = v27;
  (*(v82 + 48))();
LABEL_18:

LABEL_19:
  v44 = v64;
  static DispatchTime.now()();
  v45 = v65;
  *v65 = 62;
  v46 = v66;
  v47 = v67;
  (*(v66 + 104))(v45, enum case for DispatchTimeInterval.seconds(_:), v67);
  v48 = v73;
  + infix(_:_:)();
  (*(v46 + 8))(v45, v47);
  v82 = *(v74 + 8);
  (v82)(v44, v84);
  v74 = *&v40[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v49 = v70;
  v50 = v69;
  v51 = v71;
  (*(v70 + 16))(v69, v43, v71);
  v52 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v53 = (v68 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v40;
  (*(v49 + 32))(v54 + v52, v50, v51);
  *(v54 + v53) = v75;
  v89 = sub_1008A400C;
  v90 = v54;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_100006684;
  v88 = &unk_101638438;
  v55 = _Block_copy(&aBlock);

  v56 = v40;
  v57 = v76;
  static DispatchQoS.unspecified.getter();
  v91 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v58 = v78;
  v59 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v55);

  swift_unknownObjectRelease();
  (*(v80 + 8))(v58, v59);
  (*(v77 + 8))(v57, v79);
  (v82)(v48, v84);
}

uint64_t sub_100895950(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_1000210EC(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (v8[4])
      {

        v9 = static os_log_type_t.default.getter();
        if (qword_101695008 != -1)
        {
          LODWORD(v13) = v9;
          swift_once();
          v9 = v13;
        }

        os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10177C340, "#Durian: Previous play sound exists. Completing it as success.", 62, 2, _swiftEmptyArrayStorage, v13);
        HIBYTE(v13) = 0;
        Future.finish(result:)();
      }

      if (v8[5])
      {

        v10 = static os_log_type_t.default.getter();
        if (qword_101695008 != -1)
        {
          LODWORD(v13) = v10;
          swift_once();
          v10 = v13;
        }

        os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C340, "#Durian: Previous play sound completion exists. Completing it as success.", 73, 2, _swiftEmptyArrayStorage, v13);
        Future.finish(result:)();
      }

      if (v8[6])
      {

        v11 = static os_log_type_t.default.getter();
        if (qword_101695008 != -1)
        {
          v12 = v11;
          swift_once();
          v11 = v12;
        }

        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C340, "#Durian: Previous stop sound exists. Completing it as success.", 62, 2, _swiftEmptyArrayStorage);
        Future.finish(result:)();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100895B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_1000210EC(a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      v17 = *(v16 + 32);

      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = *(a1 + v12);
  if (*(v18 + 16))
  {

    v19 = sub_1000210EC(a2);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      v22 = *(v21 + 40);

      if (!v17)
      {
      }

      goto LABEL_12;
    }
  }

  v22 = 0;
  if (!v17)
  {
  }

LABEL_12:
  v44 = v6;
  aBlock[0] = a3;
  v53 = v17;
  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  sub_1000041A4(&unk_1016AC9C0, &qword_10169F320, &qword_1013A0780, &protocol conformance descriptor for Future<A>);

  v23 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v23)
  {
    v24 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      v43 = v24;
      swift_once();
      v24 = v43;
    }

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting to play sound. #Bug: CL should have completed.", 72, 2, _swiftEmptyArrayStorage);
    v25 = *(a1 + v12);
    if (*(v25 + 16))
    {

      v26 = sub_1000210EC(a2);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);

        *(v28 + 40) = 0;
      }

      else
      {
      }
    }

    v29 = *(a1 + v12);
    if (*(v29 + 16))
    {

      v30 = sub_1000210EC(a2);
      if (v31)
      {
        v32 = *(*(v29 + 56) + 8 * v30);

        *(v32 + 32) = 0;
      }

      else
      {
      }
    }

    v33 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    *v33 = 0;
    v33[1] = 0;
    swift_unknownObjectRelease();
    sub_1000BC488();
    v35 = v45;
    v34 = v46;
    (*(v45 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v46);
    v36 = static OS_dispatch_queue.global(qos:)();
    (*(v35 + 8))(v11, v34);
    v37 = swift_allocObject();
    *(v37 + 16) = v17;
    *(v37 + 24) = v22;
    aBlock[4] = sub_1008A4024;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101638488;
    v38 = _Block_copy(aBlock);

    v39 = v47;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v40 = v49;
    v41 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v51 + 8))(v40, v41);
    (*(v48 + 8))(v39, v50);
  }

  else
  {
  }
}

void sub_100896210(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  if (a2)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_100896354(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v21 = v13;
    swift_once();
    v13 = v21;
  }

  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C398, "#Durian: Will call stop sound async on queue.", 45, 2, _swiftEmptyArrayStorage);
  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  swift_allocObject();
  v14 = Future.init()();
  v22 = *&v2[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v11 + 32))(v16 + v15, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_1008A3F2C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638320;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v19 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v25 + 8))(v6, v19);
  (*(v23 + 8))(v9, v24);

  return v14;
}

uint64_t sub_1008967A4(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v61 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v53 = v10;
  v54 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchTimeInterval();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v12 = (v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for DispatchTime();
  v58 = *(v65 - 8);
  v13 = __chkstk_darwin(v65);
  v50 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = v48 - v15;
  sub_100895950(a2);
  v16 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v17 = *&a1[v16];
  if (*(v17 + 16))
  {

    v18 = sub_1000210EC(a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      goto LABEL_6;
    }
  }

  type metadata accessor for CommandCompletion();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0;
LABEL_6:
  *(v20 + 48) = a3;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *&a1[v16];
  *&a1[v16] = 0x8000000000000000;
  sub_10100008C(v20, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v16] = v72;
  swift_endAccess();
  v22 = sub_10089292C();
  v49 = a2;
  v24 = v23;
  v25 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  aBlock = v22;
  v67 = v24;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100008C00();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "#Durian: Stoping sound using [%@]", 33, 2, v27);

  ObjectType = swift_getObjectType();
  v32 = v49;
  (*(v24 + 56))(v49, ObjectType, v24);
  v33 = v50;
  static DispatchTime.now()();
  *v12 = 62;
  v34 = v51;
  v35 = v52;
  (*(v51 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v52);
  v48[1] = v22;
  v36 = v57;
  + infix(_:_:)();
  (*(v34 + 8))(v12, v35);
  v58 = *(v58 + 8);
  (v58)(v33, v65);
  v52 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v38 = v55;
  v37 = v56;
  v39 = v54;
  (*(v55 + 16))(v54, v32, v56);
  v40 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  (*(v38 + 32))(v41 + v40, v39, v37);
  v70 = sub_1008A3F44;
  v71 = v41;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100006684;
  v69 = &unk_101638370;
  v42 = _Block_copy(&aBlock);
  v43 = a1;
  v44 = v59;
  static DispatchQoS.unspecified.getter();
  v72 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v45 = v61;
  v46 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v42);

  swift_unknownObjectRelease();
  (*(v63 + 8))(v45, v46);
  (*(v60 + 8))(v44, v62);
  (v58)(v36, v65);
}

uint64_t sub_100896FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v16 = *(a1 + v14);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(v16 + 56);
      v34 = v4;
      v20 = *(v19 + 8 * v17);

      v21 = *(v20 + 48);

      if (v21)
      {
        v33 = v21;
        v22 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          v31 = v22;
          swift_once();
          v22 = v31;
        }

        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting to stop sound. #Bug: CL should have completed.", 72, 2, _swiftEmptyArrayStorage);
        v23 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v23 = 0;
        v23[1] = 0;
        swift_unknownObjectRelease();
        v24 = *(a1 + v14);
        if (*(v24 + 16))
        {

          v25 = sub_1000210EC(a2);
          if (v26)
          {
            v27 = *(*(v24 + 56) + 8 * v25);

            *(v27 + 48) = 0;
          }

          else
          {
          }
        }

        sub_1000BC488();
        (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
        v28 = static OS_dispatch_queue.global(qos:)();
        (*(v11 + 8))(v13, v10);
        aBlock[4] = sub_1008A3F5C;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638398;
        v29 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v38 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v30 = v34;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v6, v30);
        (*(v35 + 8))(v9, v36);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1008974B8()
{
  type metadata accessor for CommandError(0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000029;
  *(inited + 56) = 0x8000000101362AE0;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_100897600(char *a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v73 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for UUID();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v12;
  v67 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchTimeInterval();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v14 = (v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for DispatchTime();
  v72 = *(v75 - 8);
  v15 = __chkstk_darwin(v75);
  v63 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = v58 - v17;
  v18 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v19 = *&a1[v18];
  v20 = *(v19 + 16);
  v70 = a2;
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = sub_1000210EC(a2);
  if ((v22 & 1) == 0)
  {

LABEL_8:
    v59 = v10;
    v61 = v9;
    type metadata accessor for CommandCompletion();
    v28 = a2;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    *(v29 + 96) = 0;
    *(v29 + 56) = v74;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *&a1[v18];
    *&a1[v18] = 0x8000000000000000;
    sub_10100008C(v29, v28, isUniquelyReferenced_nonNull_native);
    *&a1[v18] = v82;
    swift_endAccess();
    goto LABEL_9;
  }

  v23 = *(*(v19 + 56) + 8 * v21);

  if (*(v23 + 56))
  {
    v24 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      v57 = v24;
      swift_once();
      v24 = v57;
    }

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177C398, "#Durian: Unpair already pending.", 32, 2, _swiftEmptyArrayStorage);
    type metadata accessor for CommandError(0);
    v82 = 1;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000035;
    *(inited + 56) = 0x8000000101362760;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = aBlock;
    Future.finish(error:)();

    return;
  }

  v59 = v10;
  v61 = v9;
  *(v23 + 56) = v74;

LABEL_9:
  v60 = v8;
  v62 = v6;
  v74 = v5;
  v31 = sub_10089292C();
  v33 = v32;
  v34 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  aBlock = v31;
  v77 = v33;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v37 = String.init<A>(describing:)();
  v38 = v31;
  v40 = v39;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_100008C00();
  *(v36 + 32) = v37;
  *(v36 + 40) = v40;
  os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "#Durian: Unpairing using [%@]", 29, 2, v36);

  v58[1] = v38;
  ObjectType = swift_getObjectType();
  v42 = v70;
  (*(v33 + 64))(v70, ObjectType, v33);
  v43 = v63;
  static DispatchTime.now()();
  *v14 = 62;
  v44 = v64;
  v45 = v65;
  (*(v64 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v65);
  v46 = v71;
  + infix(_:_:)();
  (*(v44 + 8))(v14, v45);
  v72 = *(v72 + 8);
  (v72)(v43, v75);
  v65 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v47 = v68;
  v48 = v67;
  v49 = v69;
  (*(v68 + 16))(v67, v42, v69);
  v50 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  (*(v47 + 32))(v51 + v50, v48, v49);
  v80 = sub_1008A3E8C;
  v81 = v51;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = sub_100006684;
  v79 = &unk_1016380C8;
  v52 = _Block_copy(&aBlock);
  v53 = a1;
  v54 = v73;
  static DispatchQoS.unspecified.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v55 = v60;
  v56 = v74;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v52);
  swift_unknownObjectRelease();

  (*(v62 + 8))(v55, v56);
  (*(v59 + 8))(v54, v61);
  (v72)(v46, v75);
}

uint64_t sub_100898038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v16 = *(a1 + v14);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(v16 + 56);
      v34 = v4;
      v20 = *(v19 + 8 * v17);

      v21 = *(v20 + 56);

      if (v21)
      {
        v33 = v21;
        v22 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          v31 = v22;
          swift_once();
          v22 = v31;
        }

        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting for unpair. #Bug: CL should have completed.", 69, 2, _swiftEmptyArrayStorage);
        v23 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v23 = 0;
        v23[1] = 0;
        swift_unknownObjectRelease();
        v24 = *(a1 + v14);
        if (*(v24 + 16))
        {

          v25 = sub_1000210EC(a2);
          if (v26)
          {
            v27 = *(*(v24 + 56) + 8 * v25);

            *(v27 + 56) = 0;
          }

          else
          {
          }
        }

        sub_1000BC488();
        (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
        v28 = static OS_dispatch_queue.global(qos:)();
        (*(v11 + 8))(v13, v10);
        aBlock[4] = sub_1008A3EA4;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_1016380F0;
        v29 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v38 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v30 = v34;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v6, v30);
        (*(v35 + 8))(v9, v36);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100898534()
{
  type metadata accessor for CommandError(0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000025;
  *(inited + 56) = 0x80000001013627F0;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_10089867C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v70 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v63 = v12;
  v64 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchTimeInterval();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v14 = (v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for DispatchTime();
  v68 = *(v72 - 8);
  v15 = __chkstk_darwin(v72);
  v60 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = v55 - v17;
  v18 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v19 = *&a1[v18];
  v20 = *(v19 + 16);
  v59 = a2;
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = sub_1000210EC(a2);
  if ((v22 & 1) == 0)
  {

LABEL_8:
    v57 = v9;
    type metadata accessor for CommandCompletion();
    v26 = a2;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 1;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 80) = 0u;
    *(v27 + 96) = 0;
    *(v27 + 72) = a3;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *&a1[v18];
    *&a1[v18] = 0x8000000000000000;
    sub_10100008C(v27, v26, isUniquelyReferenced_nonNull_native);
    *&a1[v18] = v79;
    swift_endAccess();
    goto LABEL_9;
  }

  v23 = *(*(v19 + 56) + 8 * v21);

  if (*(v23 + 72))
  {
    v24 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      v54 = v24;
      swift_once();
      v24 = v54;
    }

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177C398, "#Durian: Fetch user stats already pending.", 42, 2, _swiftEmptyArrayStorage);
    type metadata accessor for CommandError(0);
    v79 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = aBlock;
    Future.finish(error:)();

    return;
  }

  v57 = v9;
  *(v23 + 72) = a3;

LABEL_9:
  v56 = v8;
  v58 = v6;
  v29 = sub_10089292C();
  v31 = v30;
  v32 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101385D80;
  aBlock = v29;
  v74 = v31;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_100008C00();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "#Durian: Fetching User Stats using [%@]", 39, 2, v34);

  v55[1] = v29;
  ObjectType = swift_getObjectType();
  v39 = v59;
  (*(v31 + 72))(0, v59, ObjectType, v31);
  v40 = v60;
  static DispatchTime.now()();
  *v14 = 62;
  v41 = v61;
  v42 = v62;
  (*(v61 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v62);
  v43 = v67;
  + infix(_:_:)();
  (*(v41 + 8))(v14, v42);
  v68 = *(v68 + 8);
  (v68)(v40, v72);
  v62 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v45 = v64;
  v44 = v65;
  v46 = v66;
  (*(v65 + 16))(v64, v39, v66);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = a1;
  (*(v44 + 32))(v48 + v47, v45, v46);
  v77 = sub_1008A3DB8;
  v78 = v48;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100006684;
  v76 = &unk_101638000;
  v49 = _Block_copy(&aBlock);
  v50 = a1;
  v51 = v69;
  static DispatchQoS.unspecified.getter();
  v79 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v52 = v56;
  v53 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v49);
  swift_unknownObjectRelease();

  (*(v71 + 8))(v52, v53);
  (*(v70 + 8))(v51, v57);
  (v68)(v43, v72);
}

uint64_t sub_100898F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v16 = *(a1 + v14);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(v16 + 56);
      v34 = v4;
      v20 = *(v19 + 8 * v17);

      v21 = *(v20 + 72);

      if (v21)
      {
        v33 = v21;
        v22 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          v31 = v22;
          swift_once();
          v22 = v31;
        }

        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting for fetch user stats. #Bug: CL should have completed.", 79, 2, _swiftEmptyArrayStorage);
        v23 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v23 = 0;
        v23[1] = 0;
        swift_unknownObjectRelease();
        v24 = *(a1 + v14);
        if (*(v24 + 16))
        {

          v25 = sub_1000210EC(a2);
          if (v26)
          {
            v27 = *(*(v24 + 56) + 8 * v25);

            *(v27 + 72) = 0;
          }

          else
          {
          }
        }

        sub_1000BC488();
        (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
        v28 = static OS_dispatch_queue.global(qos:)();
        (*(v11 + 8))(v13, v10);
        aBlock[4] = sub_1008A90A8;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638028;
        v29 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v38 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v30 = v34;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v6, v30);
        (*(v35 + 8))(v9, v36);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100899490()
{
  sub_10089292C();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1008994EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v55 = a3;
  v58 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (*(v18 + 16))
  {

    v19 = sub_1000210EC(v58);
    if (v20)
    {
      v21 = *(v18 + 56);
      v52 = v11;
      v53 = v13;
      v22 = a1;
      v23 = v9;
      v24 = v6;
      v25 = v10;
      v26 = v7;
      v27 = *(v21 + 8 * v19);

      v28 = *(v27 + 88);

      v29 = v26;
      v30 = v25;
      v31 = v24;
      v32 = v23;
      a1 = v22;
      v33 = v53;

      if (v28)
      {
        sub_1000BC488();
        v51 = v30;
        v34 = v54;
        v54[13](v16, enum case for DispatchQoS.QoSClass.default(_:), v14);
        v50 = static OS_dispatch_queue.global(qos:)();
        (v34[1])(v16, v14);
        v35 = swift_allocObject();
        v36 = v56;
        v35[2] = v55;
        v35[3] = v28;
        v37 = v57;
        v35[4] = v36;
        v35[5] = v37;
        aBlock[4] = sub_1008A8F3C;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638F50;
        v54 = _Block_copy(aBlock);

        swift_errorRetain();
        sub_100017D5C(v36, v37);
        static DispatchQoS.unspecified.getter();
        v59 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v38 = v33;
        v39 = v29;
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v40 = v54;
        v41 = v50;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v40);

        (*(v39 + 8))(v32, v31);
        (*(v52 + 8))(v38, v51);

        v42 = v58;
        return sub_100899AA0(a1, v42);
      }
    }

    else
    {
    }
  }

  v43 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v44 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_101385D80;
  type metadata accessor for UUID();
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v42 = v58;
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = sub_100008C00();
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "#Durian: fetchFirmwareVersionFuture not found for [%@]. #Bug: command's future is missing.", 90, 2, v45);

  return sub_100899AA0(a1, v42);
}

uint64_t sub_100899AA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 88) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100899B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(v53);
    if (v18)
    {
      v19 = *(v16 + 56);
      v49 = v9;
      v50 = v11;
      v20 = a1;
      v21 = v7;
      v22 = v4;
      v23 = v8;
      v24 = v5;
      v25 = *(v19 + 8 * v17);

      v26 = *(v25 + 80);

      v27 = v24;
      v28 = v23;
      v29 = v22;
      v30 = v21;
      a1 = v20;
      v31 = v50;

      if (v26)
      {
        sub_1000BC488();
        v48 = v28;
        v32 = v51;
        v51[13](v14, enum case for DispatchQoS.QoSClass.default(_:), v12);
        v47 = static OS_dispatch_queue.global(qos:)();
        (v32[1])(v14, v12);
        v33 = swift_allocObject();
        *(v33 + 16) = v52;
        *(v33 + 24) = v26;
        aBlock[4] = sub_1008A8D2C;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638EB0;
        v51 = _Block_copy(aBlock);

        swift_errorRetain();
        static DispatchQoS.unspecified.getter();
        v54 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v34 = v31;
        v35 = v27;
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v36 = v51;
        v37 = v47;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v36);

        (*(v35 + 8))(v30, v29);
        (*(v49 + 8))(v34, v48);

        v38 = v53;
        return sub_10089A0E4(a1, v38);
      }
    }

    else
    {
    }
  }

  v39 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v40 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_101385D80;
  type metadata accessor for UUID();
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v38 = v53;
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = v43;
  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = sub_100008C00();
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "#Durian: setIdentifierFuture not found for [%@]. #Bug: command's future is missing.", 83, 2, v41);

  return sub_10089A0E4(a1, v38);
}

uint64_t sub_10089A0E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 80) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10089A190(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v2 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "#Durian: setObfuscatedIdentifier completed with error - %@", 58, 2, v3);

    Future.finish(error:)();
  }

  else
  {
    v8 = static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      v9 = v8;
      swift_once();
      v8 = v9;
    }

    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C398, "#Durian: setObfuscatedIdentifier completed successfully.", 56, 2, _swiftEmptyArrayStorage);
    return Future.finish(result:)();
  }
}

uint64_t sub_10089A350(uint64_t a1, char *a2, uint64_t a3)
{
  v182 = a3;
  v167 = type metadata accessor for DispatchTimeInterval();
  v166 = *(v167 - 1);
  __chkstk_darwin(v167);
  v165 = (&v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v164 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v143 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v12 - 8);
  v156 = &v143 - v13;
  v173 = type metadata accessor for UUID();
  v14 = *(v173 - 8);
  v15 = __chkstk_darwin(v173);
  v163 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v16;
  __chkstk_darwin(v15);
  v158 = &v143 - v17;
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v18 - 8);
  v161 = &v143 - v19;
  v160 = type metadata accessor for OwnedBeaconRecord(0);
  v159 = *(v160 - 1);
  __chkstk_darwin(v160);
  v157 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for BeaconObservation(0);
  v21 = *(v168 - 8);
  v22 = __chkstk_darwin(v168);
  v155 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v143 - v24;
  v172 = type metadata accessor for Date();
  v169 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DispatchWorkItemFlags();
  v184 = *(v181 - 8);
  __chkstk_darwin(v181);
  v179 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for DispatchQoS();
  v183 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchQoS.QoSClass();
  v174 = *(v175 - 1);
  __chkstk_darwin(v175);
  v29 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = *(v31 + 16);
  v176 = a1;
  if (v32)
  {

    v33 = sub_1000210EC(a2);
    if (v34)
    {
      v35 = v30;
      v36 = a2;
      v37 = v11;
      v38 = v29;
      v39 = v6;
      v40 = v21;
      v41 = v7;
      v42 = v14;
      v43 = *(*(v31 + 56) + 8 * v33);

      v177 = *(v43 + 32);

      v14 = v42;
      v7 = v41;
      v21 = v40;
      v6 = v39;
      v29 = v38;
      v11 = v37;
      a2 = v36;
      v30 = v35;
      a1 = v176;

      goto LABEL_6;
    }
  }

  v177 = 0;
LABEL_6:
  v44 = *(a1 + v30);
  if (!*(v44 + 16))
  {
    goto LABEL_9;
  }

  v45 = sub_1000210EC(a2);
  if (v46)
  {
    v47 = v30;
    v48 = a2;
    v49 = v11;
    v50 = v29;
    v51 = v6;
    v52 = v21;
    v53 = v7;
    v54 = v14;
    v55 = *(*(v44 + 56) + 8 * v45);

    *(v55 + 32) = 0;
    v14 = v54;
    v7 = v53;
    v21 = v52;
    v6 = v51;
    v29 = v50;
    v11 = v49;
    a2 = v48;
    v30 = v47;
    a1 = v176;

LABEL_9:
    if (v182)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v182)
  {
LABEL_10:
    v56 = *(a1 + v30);
    v57 = *(v56 + 16);
    swift_errorRetain();
    if (v57)
    {

      v58 = sub_1000210EC(a2);
      if (v59)
      {
        v60 = *(*(v56 + 56) + 8 * v58);

        v61 = *(v60 + 40);

LABEL_22:
        v77 = *(a1 + v30);
        if (*(v77 + 16))
        {

          v78 = sub_1000210EC(a2);
          if (v79)
          {
            v80 = *(*(v77 + 56) + 8 * v78);

            *(v80 + 40) = 0;
          }

          else
          {
          }
        }

        v81 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        v82 = qword_10177C398;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_101385D80;
        v84 = v182;
        swift_getErrorValue();
        v85 = Error.localizedDescription.getter();
        v87 = v86;
        *(v83 + 56) = &type metadata for String;
        *(v83 + 64) = sub_100008C00();
        *(v83 + 32) = v85;
        *(v83 + 40) = v87;
        os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v82, "#Durian: playSound started with error - %@", 42, 2, v83);

        sub_1000BC488();
        v88 = v174;
        v89 = v175;
        (*(v174 + 104))(v29, enum case for DispatchQoS.QoSClass.default(_:), v175);
        v176 = static OS_dispatch_queue.global(qos:)();
        (*(v88 + 8))(v29, v89);
        v90 = swift_allocObject();
        v90[2] = v177;
        v90[3] = v84;
        v90[4] = v61;
        v190 = sub_1008A8C80;
        v191 = v90;
        aBlock = _NSConcreteStackBlock;
        v187 = 1107296256;
        v188 = sub_100006684;
        v189 = &unk_101638DE8;
        v91 = _Block_copy(&aBlock);
        swift_errorRetain();

        v92 = v178;
        static DispatchQoS.unspecified.getter();
        v185 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v93 = v179;
        v94 = v181;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v95 = v176;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v91);

        (*(v184 + 8))(v93, v94);
        (*(v183 + 8))(v92, v180);
      }
    }

    v61 = 0;
    goto LABEL_22;
  }

LABEL_14:
  v149 = v11;
  v62 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v141 = v7;
    v142 = v62;
    swift_once();
    v62 = v142;
    v7 = v141;
  }

  v150 = v7;
  v182 = v6;
  os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, qword_10177C398, "#Durian: playSound started.", 27, 2, _swiftEmptyArrayStorage);
  v63 = v171;
  static Date.trustedNow.getter(v171);
  v154 = v14;
  v64 = *(v14 + 16);
  v65 = v170;
  v152 = v14 + 16;
  v151 = v64;
  v64(v170, a2, v173);
  v66 = v168;
  v67 = v65 + *(v168 + 20);
  v147 = *(v169 + 16);
  v147(v67, v63, v172);
  *(v65 + *(v66 + 24)) = 25;
  v68 = a2;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v69 = qword_10177B2E8;
  v70 = sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v71 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v144 = *(v21 + 72);
  v145 = v70;
  v72 = swift_allocObject();
  v143 = xmmword_101385D80;
  *(v72 + 16) = xmmword_101385D80;
  sub_100034ED4(v65, v72 + v71, type metadata accessor for BeaconObservation);
  v73 = type metadata accessor for Transaction();
  __chkstk_darwin(v73);
  v148 = v69;
  *(&v143 - 4) = v69;
  *(&v143 - 3) = v72;
  *(&v143 - 2) = 0;
  *(&v143 - 1) = 0;
  v146 = v73;
  static Transaction.named<A>(_:with:)();

  v74 = v176;

  v75 = v161;
  v153 = v68;
  sub_100AA33AC(v68, v161);

  v76 = v160;
  if ((*(v159 + 6))(v75, 1, v160) == 1)
  {
    sub_10000B3A8(v75, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v159 = 0;
    v96 = v157;
    sub_1008A8B70(v75, v157, type metadata accessor for OwnedBeaconRecord);
    v97 = v156;
    sub_1000D2A70(v96 + *(v76 + 7), v156, &qword_1016980D0, &unk_10138F3B0);
    v98 = v154;
    v99 = v173;
    if ((*(v154 + 48))(v97, 1, v173) == 1)
    {
      sub_1008A8BD8(v96, type metadata accessor for OwnedBeaconRecord);
      sub_10000B3A8(v97, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v100 = v158;
      (*(v98 + 32))(v158, v97, v99);
      v101 = v155;
      v151(v155, v100, v99);
      v102 = v168;
      v147(v101 + *(v168 + 20), v171, v172);
      *(v101 + *(v102 + 24)) = 25;
      v103 = swift_allocObject();
      *(v103 + 16) = v143;
      v104 = sub_100034ED4(v101, v103 + v71, type metadata accessor for BeaconObservation);
      __chkstk_darwin(v104);
      *(&v143 - 4) = v148;
      *(&v143 - 3) = v103;
      *(&v143 - 2) = 0;
      *(&v143 - 1) = 0;
      static Transaction.named<A>(_:with:)();

      sub_1008A8BD8(v101, type metadata accessor for BeaconObservation);
      (*(v154 + 8))(v158, v99);
      sub_1008A8BD8(v96, type metadata accessor for OwnedBeaconRecord);
    }

    v74 = v176;
  }

  sub_1000BC488();
  v105 = v174;
  v106 = v175;
  (*(v174 + 104))(v29, enum case for DispatchQoS.QoSClass.default(_:), v175);
  v107 = static OS_dispatch_queue.global(qos:)();
  (*(v105 + 8))(v29, v106);
  v108 = swift_allocObject();
  *(v108 + 16) = v177;
  v190 = sub_1008A90A4;
  v191 = v108;
  aBlock = _NSConcreteStackBlock;
  v187 = 1107296256;
  v175 = &v188;
  v188 = sub_100006684;
  v189 = &unk_101638D48;
  v109 = _Block_copy(&aBlock);

  v110 = v178;
  static DispatchQoS.unspecified.getter();
  v185 = _swiftEmptyArrayStorage;
  v111 = sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v112 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  v113 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v114 = v179;
  v168 = v112;
  v161 = v113;
  v115 = v181;
  v174 = v111;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v109);

  v116 = *(v184 + 8);
  v184 += 8;
  v160 = v116;
  (v116)(v114, v115);
  v117 = *(v183 + 8);
  v183 += 8;
  v159 = v117;
  v117(v110, v180);

  v118 = *&v74[v30];
  if (*(v118 + 16))
  {

    v119 = sub_1000210EC(v153);
    v120 = v149;
    if (v121)
    {
      v122 = *(*(v118 + 56) + 8 * v119);

      v123 = *(v122 + 40);
    }

    else
    {

      v123 = 0;
    }
  }

  else
  {
    v123 = 0;
    v120 = v149;
  }

  v124 = v164;
  static DispatchTime.now()();
  v125 = v165;
  *v165 = 40;
  v126 = v166;
  v127 = v167;
  (*(v166 + 104))(v125, enum case for DispatchTimeInterval.seconds(_:), v167);
  + infix(_:_:)();
  (*(v126 + 8))(v125, v127);
  v167 = *(v150 + 8);
  (v167)(v124, v182);
  v166 = *&v74[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v128 = v163;
  v129 = v74;
  v130 = v173;
  v151(v163, v153, v173);
  v131 = v154;
  v132 = (*(v154 + 80) + 24) & ~*(v154 + 80);
  v133 = (v162 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v134 = swift_allocObject();
  *(v134 + 16) = v129;
  (*(v131 + 32))(v134 + v132, v128, v130);
  *(v134 + v133) = v123;
  v190 = sub_1008A8B58;
  v191 = v134;
  aBlock = _NSConcreteStackBlock;
  v187 = 1107296256;
  v188 = sub_100006684;
  v189 = &unk_101638D98;
  v135 = _Block_copy(&aBlock);

  v136 = v129;
  v137 = v178;
  static DispatchQoS.unspecified.getter();
  v185 = _swiftEmptyArrayStorage;
  v138 = v179;
  v139 = v181;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v135);

  (v160)(v138, v139);
  v159(v137, v180);
  (v167)(v120, v182);
  sub_1008A8BD8(v170, type metadata accessor for BeaconObservation);
  (*(v169 + 8))(v171, v172);
}

uint64_t sub_10089BA34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v16 = *(a1 + v14);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(v16 + 56);
      v35 = v6;
      v20 = *(v19 + 8 * v17);

      v21 = *(v20 + 40);

      if (v21)
      {
        aBlock[0] = v21;
        if (a3)
        {
          v42 = a3;
          sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
          sub_1000041A4(&unk_1016AC9C0, &qword_10169F320, &qword_1013A0780, &protocol conformance descriptor for Future<A>);

          v22 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v22)
          {
            v23 = static os_log_type_t.error.getter();
            if (qword_101695050 != -1)
            {
              v34 = v23;
              swift_once();
              v23 = v34;
            }

            os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C398, "#Durian: Finished waiting to play sound to complete. #Bug: CL should have completed.", 84, 2, _swiftEmptyArrayStorage);
            v24 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
            *v24 = 0;
            v24[1] = 0;
            swift_unknownObjectRelease();
            v25 = *(a1 + v14);
            if (*(v25 + 16))
            {

              v26 = sub_1000210EC(a2);
              if (v27)
              {
                v28 = *(*(v25 + 56) + 8 * v26);

                *(v28 + 40) = 0;
              }

              else
              {
              }
            }

            sub_1000BC488();
            v29 = v36;
            (*(v36 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v11);
            v30 = static OS_dispatch_queue.global(qos:)();
            (*(v29 + 8))(v13, v11);
            aBlock[4] = sub_1008A8CA0;
            aBlock[5] = v21;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006684;
            aBlock[3] = &unk_101638E10;
            v31 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            v42 = _swiftEmptyArrayStorage;
            sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v32 = v37;
            v33 = v35;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v31);

            (*(v40 + 8))(v32, v33);
            (*(v38 + 8))(v10, v39);
          }
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10089BFCC()
{
  type metadata accessor for CommandError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

uint64_t sub_10089C080(uint64_t a1)
{
  v2 = v1;
  v43 = type metadata accessor for SharedBeaconRecord(0);
  v40 = *(v43 - 8);
  v4 = __chkstk_darwin(v43);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v40 - v6;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v40 - v8);
  v10 = type metadata accessor for WildModeAssociationRecord(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v21 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
    swift_beginAccess();
    v22 = *(v2 + v21);
    if (*(v22 + 16))
    {

      v23 = sub_1000210EC(a1);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);

        v26 = *(v25 + 16);
        v27 = *(v25 + 24);

        if ((v27 & 1) == 0 && v26 == 2)
        {

          sub_100023184(a1, v9);

          if ((*(v11 + 48))(v9, 1, v10) == 1)
          {
            sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
          }

          else
          {
            sub_1008A8B70(v9, v13, type metadata accessor for WildModeAssociationRecord);
            v39 = v13[*(v10 + 52)];
            sub_1008A8BD8(v13, type metadata accessor for WildModeAssociationRecord);
            if (v39 == 1)
            {
              return 1;
            }
          }
        }
      }

      else
      {
      }
    }

    v28 = *(v2 + v21);
    if (*(v28 + 16))
    {

      v29 = sub_1000210EC(a1);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      v31 = *(*(v28 + 56) + 8 * v29);

      v32 = *(v31 + 16);
      v33 = *(v31 + 24);

      if ((v33 & 1) != 0 || v32 != 2)
      {
        return 0;
      }

      v34 = sub_100030068();

      __chkstk_darwin(v35);
      *(&v40 - 2) = a1;
      v36 = sub_10013D0F8(sub_1008A8830, (&v40 - 4), v34);
      if (v36[2])
      {
        v37 = v41;
        sub_100034ED4(v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v41, type metadata accessor for SharedBeaconRecord);

        v38 = v42;
        sub_1008A8B70(v37, v42, type metadata accessor for SharedBeaconRecord);
        LODWORD(v37) = *(v38 + *(v43 + 64));
        sub_1008A8BD8(v38, type metadata accessor for SharedBeaconRecord);
        if (v37 == 5)
        {
          return 1;
        }
      }

      else
      {
LABEL_16:
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10089C5B0(char *a1, void (*a2)(void, void), uint64_t a3)
{
  v152 = type metadata accessor for DispatchTimeInterval();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = (&v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v150 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v148 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = &v136 - v10;
  v144 = type metadata accessor for BeaconObservation(0);
  v145 = *(v144 - 8);
  __chkstk_darwin(v144);
  v155 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v154 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for UUID();
  v156 = *(v166 - 8);
  v15 = __chkstk_darwin(v166);
  v147 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v141 = &v136 - v18;
  v146 = v19;
  __chkstk_darwin(v17);
  v21 = &v136 - v20;
  v165 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for DispatchQoS();
  v168 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchQoS.QoSClass();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v27 = *&a1[v26];
  v28 = *(v27 + 16);
  v167 = a2;
  if (v28)
  {

    v29 = sub_1000210EC(a2);
    if (v30)
    {
      v31 = *(*(v27 + 56) + 8 * v29);

      v161 = *(v31 + 32);

      a2 = v167;

      goto LABEL_6;
    }
  }

  v161 = 0;
LABEL_6:
  v32 = *&a1[v26];
  if (*(v32 + 16))
  {

    v33 = sub_1000210EC(a2);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);

      *(v35 + 32) = 0;
      a2 = v167;
    }

    else
    {
    }
  }

  v36 = *&a1[v26];
  if (!*(v36 + 16))
  {
LABEL_18:
    v160 = 0;
    v169 = v22;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v37 = sub_1000210EC(a2);
  if ((v38 & 1) == 0)
  {

    goto LABEL_18;
  }

  v39 = *(*(v36 + 56) + 8 * v37);

  v160 = *(v39 + 40);

  a2 = v167;

  v169 = v22;
  if (!a3)
  {
LABEL_13:
    v140 = v14;
    v137 = a1;
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = sub_1000076D4(v40, qword_10177C430);
    v42 = v156;
    v43 = *(v156 + 16);
    v44 = v166;
    v143 = v156 + 16;
    v142 = v43;
    v43(v21, a2, v166);
    v136 = v41;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v138 = v12;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v42 + 8))(v21, v166);
      v53 = sub_1000136BC(v50, v52, &aBlock);
      v12 = v138;

      *(v48 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "#Durian: Unauthorized playSound started for %{private,mask.hash}s", v48, 0x16u);
      sub_100007BAC(v49);
      v44 = v166;

      a2 = v167;
    }

    else
    {

      (*(v42 + 8))(v21, v44);
    }

    v76 = v169;
    v139 = v7;
    v77 = v140;
    static Date.trustedNow.getter(v140);
    v78 = v155;
    v142(v155, a2, v44);
    v79 = v144;
    (*(v154 + 16))(v78 + *(v144 + 20), v77, v12);
    *(v78 + *(v79 + 24)) = 25;
    v80 = a2;
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v81 = qword_10177B2E8;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v82 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_101385D80;
    sub_100034ED4(v78, v83 + v82, type metadata accessor for BeaconObservation);
    v84 = type metadata accessor for Transaction();
    __chkstk_darwin(v84);
    *(&v136 - 4) = v81;
    *(&v136 - 3) = v83;
    *(&v136 - 2) = 0;
    *(&v136 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    sub_1000BC488();
    v85 = v158;
    v86 = v157;
    v87 = v159;
    (*(v158 + 104))(v157, enum case for DispatchQoS.QoSClass.default(_:), v159);
    v88 = static OS_dispatch_queue.global(qos:)();
    (*(v85 + 8))(v86, v87);
    v89 = swift_allocObject();
    *(v89 + 16) = v161;
    v175 = sub_1008A90A4;
    v176 = v89;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v173 = sub_100006684;
    v174 = &unk_101638BB8;
    v90 = _Block_copy(&aBlock);

    v91 = v162;
    static DispatchQoS.unspecified.getter();
    v170 = _swiftEmptyArrayStorage;
    v92 = sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v93 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v94 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v95 = v163;
    v158 = v93;
    v157 = v94;
    v96 = v165;
    v159 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v90);

    v145 = *(v76 + 8);
    (v145)(v95, v96);
    v97 = v168 + 8;
    v144 = *(v168 + 8);
    (v144)(v91, v164);

    v98 = v137;
    v99 = sub_10089C080(v80);
    v168 = v97;
    v169 = v76 + 8;
    if (v99)
    {
      v100 = v141;
      v101 = v166;
      v142(v141, v80, v166);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        aBlock = v105;
        *v104 = 141558531;
        *(v104 + 4) = 1752392040;
        *(v104 + 12) = 2081;
        sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v106 = dispatch thunk of CustomStringConvertible.description.getter();
        v108 = v107;
        (*(v156 + 8))(v100, v166);
        v109 = sub_1000136BC(v106, v108, &aBlock);

        *(v104 + 14) = v109;
        *(v104 + 22) = 2048;
        *(v104 + 24) = 14;
        _os_log_impl(&_mh_execute_header, v102, v103, "#Durian: Forcing play sound complete future for %{private,mask.hash}s in %ld seconds.", v104, 0x20u);
        sub_100007BAC(v105);
        v80 = v167;

        v101 = v166;
      }

      else
      {

        (*(v156 + 8))(v100, v101);
      }

      v117 = v148;
      static DispatchTime.now()();
      v118 = v149;
      *v149 = 14;
      v119 = v151;
      v120 = v152;
      (*(v151 + 104))(v118, enum case for DispatchTimeInterval.seconds(_:), v152);
      + infix(_:_:)();
      (*(v119 + 8))(v118, v120);
      v121 = *(v150 + 8);
      v152 = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v167 = v121;
      v121(v117, v139);
      v116 = 0;
      v115 = 0;
    }

    else
    {
      v110 = v148;
      static DispatchTime.now()();
      v111 = v149;
      *v149 = 40;
      v112 = v151;
      v113 = v152;
      (*(v151 + 104))(v111, enum case for DispatchTimeInterval.seconds(_:), v152);
      + infix(_:_:)();
      (*(v112 + 8))(v111, v113);
      v114 = *(v150 + 8);
      v152 = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v167 = v114;
      v114(v110, v139);
      v115 = 0x80000001013632C0;
      v116 = 0xD00000000000001FLL;
      v101 = v166;
    }

    v166 = *&v98[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
    v122 = v147;
    v142(v147, v80, v101);
    v123 = v156;
    v124 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v125 = v101;
    v126 = (v146 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    *(v127 + 16) = v98;
    (*(v123 + 32))(v127 + v124, v122, v125);
    *(v127 + v126) = v160;
    v128 = (v127 + ((v126 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v128 = v116;
    v128[1] = v115;
    v175 = sub_1008A8AE0;
    v176 = v127;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v173 = sub_100006684;
    v174 = &unk_101638C08;
    v129 = _Block_copy(&aBlock);

    v130 = v98;
    v131 = v162;
    static DispatchQoS.unspecified.getter();
    v170 = _swiftEmptyArrayStorage;
    v132 = v163;
    v133 = v165;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v134 = v153;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v129);

    (v145)(v132, v133);
    (v144)(v131, v164);
    v167(v134, v139);
    sub_1008A8BD8(v155, type metadata accessor for BeaconObservation);
    (*(v154 + 8))(v140, v138);
  }

LABEL_19:
  v54 = *&a1[v26];
  v55 = *(v54 + 16);
  swift_errorRetain();
  if (v55)
  {

    v56 = sub_1000210EC(v167);
    if (v57)
    {
      v58 = *(*(v54 + 56) + 8 * v56);

      *(v58 + 40) = 0;
    }

    else
    {
    }
  }

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_1000076D4(v59, qword_10177C430);
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136446210;
    swift_getErrorValue();
    v64 = Error.localizedDescription.getter();
    v66 = sub_1000136BC(v64, v65, &aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "#Durian: Unauthorized playSound started with error - %{public}s", v62, 0xCu);
    sub_100007BAC(v63);
  }

  sub_1000BC488();
  v67 = v158;
  v68 = v157;
  v69 = v159;
  (*(v158 + 104))(v157, enum case for DispatchQoS.QoSClass.default(_:), v159);
  v70 = static OS_dispatch_queue.global(qos:)();
  (*(v67 + 8))(v68, v69);
  v71 = swift_allocObject();
  v71[2] = v161;
  v71[3] = a3;
  v71[4] = v160;
  v175 = sub_1008A917C;
  v176 = v71;
  aBlock = _NSConcreteStackBlock;
  v172 = 1107296256;
  v173 = sub_100006684;
  v174 = &unk_101638C58;
  v72 = _Block_copy(&aBlock);
  swift_errorRetain();

  v73 = v162;
  static DispatchQoS.unspecified.getter();
  v170 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v74 = v163;
  v75 = v165;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v72);

  (*(v169 + 8))(v74, v75);
  (*(v168 + 8))(v73, v164);
}

uint64_t sub_10089DBEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v18 = *(a1 + v16);
  if (*(v18 + 16))
  {

    v19 = sub_1000210EC(a2);
    if (v20)
    {
      v21 = *(v18 + 56);
      v50 = v8;
      v22 = *(v21 + 8 * v19);

      v23 = *(v22 + 40);

      if (v23)
      {
        aBlock[0] = v23;
        if (a3)
        {
          v59 = a3;
          sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
          sub_1000041A4(&unk_1016AC9C0, &qword_10169F320, &qword_1013A0780, &protocol conformance descriptor for Future<A>);

          v24 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v24)
          {
            v48 = v23;
            if (qword_1016950D8 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_1000076D4(v25, qword_10177C430);
            v26 = v57;

            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.error.getter();

            v49 = v27;
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v30 = swift_slowAlloc();
              aBlock[0] = v30;
              *v29 = 136315138;
              if (v57)
              {
                v31 = v56;
              }

              else
              {
                v31 = 0;
              }

              v47 = v28;
              if (v57)
              {
                v32 = v57;
              }

              else
              {
                v32 = 0xE000000000000000;
              }

              v33 = sub_1000136BC(v31, v32, aBlock);

              *(v29 + 4) = v33;
              v34 = v49;
              _os_log_impl(&_mh_execute_header, v49, v47, "#Durian: Finished waiting for Unauthorized play sound to complete. %s", v29, 0xCu);
              sub_100007BAC(v30);

              v26 = v57;
            }

            else
            {
            }

            v35 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
            *v35 = 0;
            v35[1] = 0;
            swift_unknownObjectRelease();
            v36 = *(a1 + v16);
            if (*(v36 + 16))
            {

              v37 = sub_1000210EC(a2);
              if (v38)
              {
                v39 = *(*(v36 + 56) + 8 * v37);

                *(v39 + 40) = 0;
              }

              else
              {
              }
            }

            sub_1000BC488();
            v40 = v51;
            (*(v51 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v13);
            v41 = static OS_dispatch_queue.global(qos:)();
            (*(v40 + 8))(v15, v13);
            v42 = swift_allocObject();
            v42[2] = v56;
            v42[3] = v26;
            v42[4] = v48;
            aBlock[4] = sub_1008A8AF8;
            aBlock[5] = v42;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006684;
            aBlock[3] = &unk_101638CA8;
            v43 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            v59 = _swiftEmptyArrayStorage;
            sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v44 = v52;
            v45 = v50;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v43);

            (*(v55 + 8))(v44, v45);
            (*(v53 + 8))(v12, v54);
          }
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10089E2A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  else
  {
    Future.finish(result:)();
  }
}

uint64_t sub_10089E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v58 = *(v19 + 40);

      goto LABEL_6;
    }
  }

  v58 = 0;
LABEL_6:
  v20 = *(a1 + v15);
  if (!*(v20 + 16))
  {
    goto LABEL_9;
  }

  v21 = sub_1000210EC(a2);
  if (v22)
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    *(v23 + 40) = 0;

LABEL_9:
    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_10:
    v57 = v10;
    v24 = *(a1 + v15);
    v25 = *(v24 + 16);
    swift_errorRetain();
    if (v25)
    {

      v26 = sub_1000210EC(a2);
      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v26);

        v29 = *(v28 + 32);

LABEL_19:
        v37 = *(a1 + v15);
        if (*(v37 + 16))
        {

          v38 = sub_1000210EC(a2);
          if (v39)
          {
            v40 = *(*(v37 + 56) + 8 * v38);

            *(v40 + 32) = 0;
          }

          else
          {
          }
        }

        v41 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        v42 = qword_10177C398;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_101385D80;
        swift_getErrorValue();
        v44 = Error.localizedDescription.getter();
        v46 = v45;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_100008C00();
        *(v43 + 32) = v44;
        *(v43 + 40) = v46;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "#Durian: Unauthorized playSound completed with error - %@", 57, 2, v43);

        sub_1000BC488();
        (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
        v56 = static OS_dispatch_queue.global(qos:)();
        (*(v12 + 8))(v14, v11);
        v47 = swift_allocObject();
        v47[2] = v29;
        v47[3] = a3;
        v47[4] = v58;
        v69 = sub_1008A917C;
        v70 = v47;
        aBlock = _NSConcreteStackBlock;
        v66 = 1107296256;
        v67 = sub_100006684;
        v68 = &unk_101638B18;
        v48 = _Block_copy(&aBlock);
        swift_errorRetain();

        v49 = v57;
        static DispatchQoS.unspecified.getter();
        v64 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v50 = v59;
        v51 = v63;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v52 = v56;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v48);

        (*(v62 + 8))(v50, v51);
        (*(v60 + 8))(v49, v61);
      }
    }

    v29 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v30 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v54 = v30;
    swift_once();
    v30 = v54;
  }

  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10177C398, "#Durian: Unauthorized playSound completed.", 42, 2, _swiftEmptyArrayStorage);
  sub_1000BC488();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v32 = swift_allocObject();
  *(v32 + 16) = v58;
  v69 = sub_1008A90A4;
  v70 = v32;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100006684;
  v68 = &unk_101638AC8;
  v33 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v34 = v10;
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v35 = v59;
  v36 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v62 + 8))(v35, v36);
  (*(v60 + 8))(v34, v61);
}

uint64_t sub_10089EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v58 = *(v19 + 40);

      goto LABEL_6;
    }
  }

  v58 = 0;
LABEL_6:
  v20 = *(a1 + v15);
  if (!*(v20 + 16))
  {
    goto LABEL_9;
  }

  v21 = sub_1000210EC(a2);
  if (v22)
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    *(v23 + 40) = 0;

LABEL_9:
    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_10:
    v57 = v10;
    v24 = *(a1 + v15);
    v25 = *(v24 + 16);
    swift_errorRetain();
    if (v25)
    {

      v26 = sub_1000210EC(a2);
      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v26);

        v29 = *(v28 + 32);

LABEL_19:
        v37 = *(a1 + v15);
        if (*(v37 + 16))
        {

          v38 = sub_1000210EC(a2);
          if (v39)
          {
            v40 = *(*(v37 + 56) + 8 * v38);

            *(v40 + 32) = 0;
          }

          else
          {
          }
        }

        v41 = static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        v42 = qword_10177C398;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_101385D80;
        swift_getErrorValue();
        v44 = Error.localizedDescription.getter();
        v46 = v45;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_100008C00();
        *(v43 + 32) = v44;
        *(v43 + 40) = v46;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "#Durian: playSound completed with error - %@", 44, 2, v43);

        sub_1000BC488();
        (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
        v56 = static OS_dispatch_queue.global(qos:)();
        (*(v12 + 8))(v14, v11);
        v47 = swift_allocObject();
        v47[2] = v29;
        v47[3] = a3;
        v47[4] = v58;
        v69 = sub_1008A917C;
        v70 = v47;
        aBlock = _NSConcreteStackBlock;
        v66 = 1107296256;
        v67 = sub_100006684;
        v68 = &unk_101638A28;
        v48 = _Block_copy(&aBlock);
        swift_errorRetain();

        v49 = v57;
        static DispatchQoS.unspecified.getter();
        v64 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v50 = v59;
        v51 = v63;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v52 = v56;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v48);

        (*(v62 + 8))(v50, v51);
        (*(v60 + 8))(v49, v61);
      }
    }

    v29 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v30 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v54 = v30;
    swift_once();
    v30 = v54;
  }

  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10177C398, "#Durian: playSound completed.", 29, 2, _swiftEmptyArrayStorage);
  sub_1000BC488();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v32 = swift_allocObject();
  *(v32 + 16) = v58;
  v69 = sub_1008A90A4;
  v70 = v32;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100006684;
  v68 = &unk_1016389D8;
  v33 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v34 = v10;
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v35 = v59;
  v36 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v62 + 8))(v35, v36);
  (*(v60 + 8))(v34, v61);
}

uint64_t sub_10089F500(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = Future.finish(error:)();
  }

  if (a3)
  {
    return Future.finish(error:)();
  }

  return result;
}

uint64_t sub_10089F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v89 = a2;
  *&v77 = type metadata accessor for BeaconObservation(0);
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v85 = *(v9 - 8);
  v86 = v9;
  __chkstk_darwin(v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS.QoSClass();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_1000210EC(v89);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = *(v17 + 48);

      goto LABEL_6;
    }
  }

  v18 = 0;
LABEL_6:
  v19 = *(a1 + v13);
  if (*(v19 + 16))
  {

    v20 = sub_1000210EC(v89);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = *(v22 + 32);

      goto LABEL_11;
    }
  }

  v23 = 0;
LABEL_11:
  v24 = *(a1 + v13);
  if (*(v24 + 16))
  {

    v25 = sub_1000210EC(v89);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 8 * v25);

      v28 = *(v27 + 40);

      goto LABEL_16;
    }
  }

  v28 = 0;
LABEL_16:
  v79 = a1;
  v83 = v28;
  v78 = v23;
  if (v23 | v28)
  {
    sub_1000BC488();
    v29 = v81;
    v30 = *(v81 + 104);
    v76 = v4;
    v31 = v80;
    v32 = v82;
    v30(v80, enum case for DispatchQoS.QoSClass.default(_:), v82);
    v75 = static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v31, v32);
    v33 = swift_allocObject();
    v34 = v83;
    *(v33 + 16) = v23;
    *(v33 + 24) = v34;
    v95 = sub_1008A8A90;
    v96 = v33;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100006684;
    v94 = &unk_101638938;
    v74 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v35 = v11;
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v36 = v87;
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v37 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v74;
    v39 = v75;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    v40 = v36;
    v4 = v76;
    v41 = v37;
    v11 = v35;
    (*(v40 + 8))(v41, v7);
    (*(v85 + 8))(v35, v86);
  }

  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 16))(v6, v89, v42);
  v43 = v77;
  static Date.trustedNow.getter(&v6[*(v77 + 20)]);
  v6[*(v43 + 24)] = 27;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v44 = qword_10177B2E8;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v45 = (v4[80] + 32) & ~v4[80];
  v46 = swift_allocObject();
  v77 = xmmword_101385D80;
  *(v46 + 16) = xmmword_101385D80;
  sub_100034ED4(v6, v46 + v45, type metadata accessor for BeaconObservation);
  v47 = type metadata accessor for Transaction();
  __chkstk_darwin(v47);
  *(&v73 - 4) = v44;
  *(&v73 - 3) = v46;
  *(&v73 - 2) = 0;
  *(&v73 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  if (v88)
  {
    v76 = v6;
    swift_errorRetain();
    v48 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v49 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = v77;
    v51 = v88;
    swift_getErrorValue();
    v52 = Error.localizedDescription.getter();
    v54 = v53;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "#Durian: stopSound completed with error - %@", 44, 2, v50);

    sub_1000BC488();
    v55 = v81;
    v56 = v80;
    v57 = v82;
    (*(v81 + 104))(v80, enum case for DispatchQoS.QoSClass.default(_:), v82);
    v58 = static OS_dispatch_queue.global(qos:)();
    (*(v55 + 8))(v56, v57);
    v59 = swift_allocObject();
    *(v59 + 16) = v18;
    *(v59 + 24) = v51;
    v95 = sub_1008A8A60;
    v96 = v59;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100006684;
    v94 = &unk_1016388E8;
    v60 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v61 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);

    (*(v87 + 8))(v61, v7);
    (*(v85 + 8))(v11, v86);
    v62 = v76;
  }

  else
  {
    v63 = static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      v72 = v63;
      swift_once();
      v63 = v72;
    }

    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, qword_10177C398, "#Durian: stopSound completed.", 29, 2, _swiftEmptyArrayStorage);
    sub_1000BC488();
    v64 = v81;
    v65 = v80;
    v66 = v82;
    (*(v81 + 104))(v80, enum case for DispatchQoS.QoSClass.default(_:), v82);
    v67 = static OS_dispatch_queue.global(qos:)();
    (*(v64 + 8))(v65, v66);
    v68 = swift_allocObject();
    *(v68 + 16) = v18;
    v95 = sub_1008A8A5C;
    v96 = v68;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100006684;
    v94 = &unk_101638898;
    v69 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v70 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v87 + 8))(v70, v7);
    (*(v85 + 8))(v11, v86);
    v62 = v6;
  }

  sub_1008A8BD8(v62, type metadata accessor for BeaconObservation);

  sub_1008A02C0(v79, v89);
}

uint64_t sub_1008A02C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 32) = 0;
    }

    else
    {
    }
  }

  v10 = *(a1 + v4);
  if (*(v10 + 16))
  {

    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      *(v13 + 48) = 0;
    }

    else
    {
    }
  }

  return result;
}

void sub_1008A03D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for CommandError(0);
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v4;
    *(inited + 48) = 0xD000000000000028;
    *(inited + 56) = 0x8000000101363160;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  if (a2)
  {
    type metadata accessor for CommandError(0);
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 72) = &type metadata for String;
    *(v5 + 40) = v6;
    *(v5 + 48) = 0xD000000000000028;
    *(v5 + 56) = 0x8000000101363160;
    sub_10090403C(v5);
    swift_setDeallocating();
    sub_10000B3A8(v5 + 32, &unk_101695C20, &unk_101386D90);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_1008A0628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v30 = a1;
  v31 = a2;
  v17 = *(a1 + v16);
  if (!*(v17 + 16))
  {
    goto LABEL_5;
  }

  v18 = sub_1000210EC(a2);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 56);

LABEL_6:
  sub_1000BC488();
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v21;
  aBlock[4] = sub_1008A8A3C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016387F8;
  v24 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);

  return sub_1008A0A60(v30, v31);
}

uint64_t sub_1008A0A60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 56) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008A0B0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "#Durian: Unpair completed with error - %@", 41, 2, v5);

    if (a2)
    {
      Future.finish(error:)();
    }
  }

  else
  {
    v10 = static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      v11 = v10;
      swift_once();
      v10 = v11;
    }

    result = os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C398, "#Durian: Unpair completed.", 26, 2, _swiftEmptyArrayStorage);
    if (a2)
    {
      return Future.finish(result:)();
    }
  }

  return result;
}

uint64_t sub_1008A0CD4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C430);
  v38 = *(v7 + 16);
  v38(v11, a1, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a1;
    v16 = v15;
    v35 = swift_slowAlloc();
    v47[0] = v35;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v8;
    v18 = v3;
    v20 = v19;
    (*(v7 + 8))(v11, v6);
    v21 = sub_1000136BC(v17, v20, v47);
    v3 = v18;
    v8 = v36;

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "TagCommandManager handling user stats fetch result. Beacon: %{private,mask.hash}s.", v16, 0x16u);
    sub_100007BAC(v35);

    a1 = v37;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v22 = v40;
  v23 = v39;
  v38(v39, a1, v6);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v7 + 32))(v25 + v24, v23, v6);
  v26 = v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = v41;
  v28 = *(v41 + 48);
  *(v26 + 32) = *(v41 + 32);
  *(v26 + 48) = v28;
  *(v26 + 64) = *(v27 + 64);
  v29 = *(v27 + 16);
  *v26 = *v27;
  *(v26 + 16) = v29;
  aBlock[4] = sub_1008A88B0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638708;
  v30 = _Block_copy(aBlock);
  v31 = v22;
  sub_1000D2A70(v27, v47, &qword_1016AC9D8, &unk_1013C15B0);
  v32 = v42;
  static DispatchQoS.unspecified.getter();
  v47[0] = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v33 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v46 + 8))(v33, v3);
  (*(v43 + 8))(v32, v45);
}

uint64_t sub_1008A1310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v32);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v39 = a1;
  v40 = a2;
  v15 = *(a1 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_5;
  }

  v16 = sub_1000210EC(a2);
  if ((v17 & 1) == 0)
  {

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  v19 = *(v18 + 72);

LABEL_6:
  sub_1000BC488();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v21 = v40;
  v22 = v32;
  (*(v8 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v32);
  v23 = (*(v8 + 80) + 82) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = *(a3 + 48);
  *(v24 + 48) = *(a3 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(a3 + 64);
  v26 = *(a3 + 16);
  *(v24 + 16) = *a3;
  *(v24 + 32) = v26;
  (*(v8 + 32))(v24 + v23, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  *(v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_1008A8940;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638758;
  v27 = _Block_copy(aBlock);
  sub_1000D2A70(a3, &v41, &qword_1016AC9D8, &unk_1013C15B0);

  v28 = v33;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v29 = v36;
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v37 + 8))(v29, v30);
  (*(v34 + 8))(v28, v35);

  return sub_1008A189C(v39, v21);
}

uint64_t sub_1008A189C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 72) = 0;
    }

    else
    {
    }
  }

  return result;
}

void sub_1008A1948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  if (*(a1 + 65))
  {
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C430);
    (*(v8 + 16))(v11, a2, v7);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10000B3A8(a1, &qword_1016AC9D8, &unk_1013C15B0);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      v38 = swift_slowAlloc();
      v39 = v38;
      *v17 = 138543875;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = a3;
      v23 = v22;
      (*(v8 + 8))(v11, v7);
      v24 = sub_1000136BC(v20, v23, &v39);

      *(v17 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "#Durian: Fetch user stats completed with error - %{public}@, device: %{private,mask.hash}s.", v17, 0x20u);
      sub_10000B3A8(v37, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v38);

      if (!v21)
      {
        return;
      }
    }

    else
    {

      (*(v8 + 8))(v11, v7);
      if (!a3)
      {
        return;
      }
    }

    Future.finish(error:)();
    return;
  }

  v25 = *(a1 + 24);
  v43 = *(a1 + 8);
  v44 = v25;
  v45[0] = *(a1 + 40);
  *(v45 + 9) = *(a1 + 49);
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000076D4(v26, qword_10177C430);
  (*(v8 + 16))(v13, a2, v7);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v27, v28))
  {

    (*(v8 + 8))(v13, v7);
    if (!a3)
    {
      return;
    }

    goto LABEL_15;
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v38 = v6;
  v39 = v30;
  v31 = v30;
  *v29 = 141558275;
  *(v29 + 4) = 1752392040;
  *(v29 + 12) = 2081;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v34 = v33;
  (*(v8 + 8))(v13, v7);
  v35 = sub_1000136BC(v32, v34, &v39);

  *(v29 + 14) = v35;
  _os_log_impl(&_mh_execute_header, v27, v28, "#Durian: Fetch user stats completed: device: %{private,mask.hash}s.", v29, 0x16u);
  sub_100007BAC(v31);
  v6 = v38;

  if (a3)
  {
LABEL_15:
    v39 = v6;
    v40 = v43;
    v41 = v44;
    v42[0] = v45[0];
    *(v42 + 9) = *(v45 + 9);
    Future.finish(result:)();
  }
}

uint64_t sub_1008A1EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v37 = a1;
  v38 = a2;
  v17 = *(a1 + v16);
  if (!*(v17 + 16))
  {
LABEL_6:
    v21 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = sub_1000210EC(a2);
  if ((v19 & 1) == 0)
  {

    goto LABEL_6;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 64);

  if (!a3)
  {
LABEL_4:
    sub_1000BC488();
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v33 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v15, v12);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    aBlock[4] = sub_1008A8898;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016386B8;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v33;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v36 + 8))(v8, v6);
    (*(v34 + 8))(v11, v35);

    return sub_1008A240C(v37, v38);
  }

LABEL_7:
  swift_errorRetain();
  v25 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v28 = Error.localizedDescription.getter();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100008C00();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "#Durian: Connect finished with error - %@", 41, 2, v27);

  if (v21)
  {

    Future.finish(error:)();
  }

  else
  {
  }

  return sub_1008A240C(v37, v38);
}

uint64_t sub_1008A240C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 64) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008A24B8(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  result = os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C398, "#Durian: Device is connected.", 29, 2, _swiftEmptyArrayStorage);
  if (a1)
  {
    return Future.finish(result:)();
  }

  return result;
}

void sub_1008A2560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeaconObservation(0);
  v49 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10089C080(a2))
  {
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C430);
    v53 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v53, v17, "#Durian: AirTag is playing unauthorized sound. Not forcing completion.", v18, 2u);
    }

    v19 = v53;

    return;
  }

  v47 = v7;
  v48 = v8;
  v20 = v5;
  v21 = v4;
  v22 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v23 = *(a1 + v22);
  if (!*(v23 + 16))
  {
    goto LABEL_13;
  }

  v24 = sub_1000210EC(a2);
  if ((v25 & 1) == 0)
  {

LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = *(v26 + 40);

  v28 = v27;

LABEL_14:
  v29 = *(a1 + v22);
  v30 = *(v29 + 16);
  v46 = v20;
  if (v30)
  {

    v31 = sub_1000210EC(a2);
    if (v32)
    {
      v33 = *(*(v29 + 56) + 8 * v31);

      *(v33 + 40) = 0;
    }

    else
    {
    }
  }

  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 16))(v15, a2, v34);
  static Date.trustedNow.getter(&v15[*(v13 + 20)]);
  v15[*(v13 + 24)] = 29;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v35 = qword_10177B2E8;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v36 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  sub_100034ED4(v15, v37 + v36, type metadata accessor for BeaconObservation);
  v38 = type metadata accessor for Transaction();
  __chkstk_darwin(v38);
  *(&v46 - 4) = v35;
  *(&v46 - 3) = v37;
  *(&v46 - 2) = 0;
  *(&v46 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1000BC488();
  v40 = v50;
  v39 = v51;
  (*(v50 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v51);
  v41 = static OS_dispatch_queue.global(qos:)();
  (*(v40 + 8))(v12, v39);
  v42 = swift_allocObject();
  *(v42 + 16) = v28;
  aBlock[4] = sub_1008A8810;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638618;
  v43 = _Block_copy(aBlock);

  v44 = v52;
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v45 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

  (*(v46 + 8))(v45, v21);
  (v53[1].isa)(v44, v48);
  sub_1008A8BD8(v15, type metadata accessor for BeaconObservation);
}

uint64_t sub_1008A2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v55 = a3;
  v58 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (*(v18 + 16))
  {

    v19 = sub_1000210EC(v58);
    if (v20)
    {
      v21 = *(v18 + 56);
      v52 = v11;
      v53 = v13;
      v22 = a1;
      v23 = v9;
      v24 = v6;
      v25 = v10;
      v26 = v7;
      v27 = *(v21 + 8 * v19);

      v28 = *(v27 + 96);

      v29 = v26;
      v30 = v25;
      v31 = v24;
      v32 = v23;
      a1 = v22;
      v33 = v53;

      if (v28)
      {
        sub_1000BC488();
        v51 = v30;
        v34 = v54;
        v54[13](v16, enum case for DispatchQoS.QoSClass.default(_:), v14);
        v50 = static OS_dispatch_queue.global(qos:)();
        (v34[1])(v16, v14);
        v35 = swift_allocObject();
        v36 = v56;
        v35[2] = v55;
        v35[3] = v28;
        v37 = v57;
        v35[4] = v36;
        v35[5] = v37;
        aBlock[4] = sub_1008A8748;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638578;
        v54 = _Block_copy(aBlock);

        swift_errorRetain();
        sub_100017D5C(v36, v37);
        static DispatchQoS.unspecified.getter();
        v59 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v38 = v33;
        v39 = v29;
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v40 = v54;
        v41 = v50;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v40);

        (*(v39 + 8))(v32, v31);
        (*(v52 + 8))(v38, v51);

        v42 = v58;
        return sub_1008A32B4(a1, v42);
      }
    }

    else
    {
    }
  }

  v43 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v44 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_101385D80;
  type metadata accessor for UUID();
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v42 = v58;
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = sub_100008C00();
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "#Durian: fetchHawkeyeSerialNumberFuture not found for [%@]. #Bug: command's future is missing.", 94, 2, v45);

  return sub_1008A32B4(a1, v42);
}

uint64_t sub_1008A32B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      *(v9 + 96) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008A3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7, uint64_t a8)
{
  if (a1)
  {
    swift_errorRetain();
    v10 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, a5, a6, 2, v12);

    Future.finish(error:)();
  }

  else
  {
    v19 = static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      v20 = v19;
      swift_once();
      v19 = v20;
    }

    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C398, a7, a8, 2, _swiftEmptyArrayStorage);
    return Future.finish(result:)();
  }
}

uint64_t sub_1008A357C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *, id))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = a5;
  a6(v13, a5, v15);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1008A3C30(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(uint64_t, unint64_t, char *, void *, id))
{
  v24 = a7;
  v25 = type metadata accessor for UUID();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a1;
  v19 = a6;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v24(v20, v22, v14, a6, v18);

  sub_100016590(v20, v22);
  return (*(v12 + 8))(v14, v25);
}

uint64_t sub_1008A3DE8(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1008A3F64()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  return sub_100894E38(v8, v0 + v2, v5, v6, v7);
}

uint64_t sub_1008A4034(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a5;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "#Durian: didFetchFirmwareVersion: %@", 36, 2, v16);

  v20 = v35;
  v33 = *&v35[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v11 + 32))(v23 + v21, v13, v10);
  v24 = v37;
  *(v23 + v22) = v36;
  v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v38;
  *v25 = v24;
  v25[1] = v26;
  aBlock[4] = sub_1008A8E28;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638F00;
  v27 = _Block_copy(aBlock);
  v28 = v20;
  swift_errorRetain();
  sub_100017D5C(v24, v26);
  v29 = v34;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v30 = v41;
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
}

uint64_t sub_1008A4528(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: didSetObfuscatedIdentifierOnDevice: %@", 47, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8CBC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638E60;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A49F4(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: didStartPlayingSoundOnDevice: %@", 41, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8B04;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638CF8;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A4EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a3;
  v43 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v34 = v9;
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C430);
  v33 = *(v7 + 16);
  v33(v11, v43, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v11, v6);
    v21 = sub_1000136BC(v18, v20, aBlock);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "#Durian: didStartPlayingUnauthorizedSoundOnDevice: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v17);

    v3 = v32;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v22 = v37;
  v23 = v35;
  v33(v35, v43, v6);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = (v34 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  (*(v7 + 32))(v26 + v24, v23, v6);
  *(v26 + v25) = v36;
  aBlock[4] = sub_1008A8AC8;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638B68;
  v27 = _Block_copy(aBlock);
  v28 = v22;
  swift_errorRetain();
  v29 = v38;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v30 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v42 + 8))(v30, v3);
  (*(v39 + 8))(v29, v41);
}

uint64_t sub_1008A548C(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: didCompletePlayingUnauthorizedSoundOnDevice: %@", 56, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8AB0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638A78;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A5958(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: didCompletePlayingSoundOnDevice: %@", 44, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8A98;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638988;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A5E24(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: didStopPlayingSoundOnDevice: %@", 40, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8A44;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638848;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A62F0(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: TagCommandManager: didUnpairFromDevice: %@", 51, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8A24;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016387A8;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A67BC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v52 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000076D4(v16, qword_10177C430);
  v18 = *(v11 + 16);
  v46 = v11 + 16;
  v45 = v18;
  v18(v15, a3, v10);
  sub_10002E98C(a1, a2);
  sub_10002E98C(a1, a2);
  swift_errorRetain();
  v47 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v49 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v48 = v11;
  if (v21)
  {
    v43 = v19;
    v51 = a1;
    v50 = a3;
    v44 = a5;
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v56[0] = v42;
    *v22 = 141558787;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v15, v10);
    v26 = sub_1000136BC(v23, v25, v56);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2048;
    v27 = a2 >> 60;
    if (a2 >> 60 == 15)
    {
      v28 = 0;
LABEL_6:
      a3 = v50;
      v29 = v51;
LABEL_7:
      *(v22 + 24) = v28;
      sub_100006654(v29, a2);
      *(v22 + 32) = 2114;
      if (a4)
      {
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v22 + 34) = v30;
      v33 = v41;
      *v41 = v31;
      v34 = v43;
      _os_log_impl(&_mh_execute_header, v43, v49, "#Durian: TagCommandManager: didFetchUserStats: %{private,mask.hash}s, statsData: %ld, error: %{public}@.", v22, 0x2Au);
      sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v42);

      goto LABEL_15;
    }

    v32 = a2 >> 62;
    v29 = v51;
    if ((a2 >> 62) > 1)
    {
      if (v32 != 2)
      {
        sub_100006654(v51, a2);
        v28 = 0;
        a3 = v50;
        goto LABEL_7;
      }

      v37 = *(v51 + 24);
      a3 = *(v51 + 16);
      sub_100006654(v51, a2);
      v28 = v37 - a3;
      if (!__OFSUB__(v37, a3))
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      a3 = v50;
      if (!v32)
      {
        sub_100006654(v51, a2);
        v28 = BYTE6(a2);
        goto LABEL_7;
      }
    }

    v38 = HIDWORD(v51);
    result = sub_100006654(v51, a2);
    v39 = __OFSUB__(v38, v51);
    LODWORD(v28) = v38 - v51;
    v29 = v51;
    if (v39)
    {
      __break(1u);
      return result;
    }

    v28 = v28;
    goto LABEL_7;
  }

  sub_100006654(a1, a2);
  sub_100006654(a1, a2);

  (*(v11 + 8))(v15, v10);
  v29 = a1;
  v27 = a2 >> 60;
LABEL_15:
  if (v27 <= 0xE)
  {
    sub_10002E98C(v29, a2);
    sub_100017D5C(v29, a2);
    sub_1010BED5C(v29, a2, v54);
    v56[2] = v54[2];
    v56[3] = v54[3];
    v57 = v55;
    v56[0] = v54[0];
    v56[1] = v54[1];
    v53[71] = 0;
    v58 = 0;
    sub_100766AC0(v54, v53);
    sub_1008A0CD4(a3, v56);
    sub_100006654(v29, a2);
    sub_100766C08(v54);
    return sub_100766C08(v54);
  }

  else
  {
    v35 = a4;
    if (!a4)
    {
      sub_1008A89D0();
      v35 = swift_allocError();
    }

    LOBYTE(v54[0]) = 1;
    *&v56[0] = v35;
    v58 = 1;
    swift_errorRetain();
    swift_errorRetain();
    sub_1008A0CD4(a3, v56);
  }
}

uint64_t sub_1008A703C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000076D4(v13, qword_10177C430);
  v34 = *(v8 + 16);
  v34(v12, a2, v7);
  swift_errorRetain();
  v35 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v38 = a2;
    v39 = a4;
    v17 = v8;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v44[0] = v31;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v7;
    v23 = v22;
    v32 = v17;
    v24 = *(v17 + 8);
    v33 = v21;
    v36 = v24;
    v24(v12, v21);
    v25 = sub_1000136BC(v20, v23, v44);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2114;
    if (a3)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v18 + 24) = v26;
    *v19 = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "#Durian: TagCommandManager: didFetchUserStats object: %{private,mask.hash}s, error: %{public}@.", v18, 0x20u);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v31);

    a2 = v38;
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_7:
    LOBYTE(v42[0]) = 1;
    *&v44[0] = a3;
    v46 = 1;
    return sub_1008A0CD4(a2, v44);
  }

  v36 = *(v8 + 8);
  v36(v12, v7);
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_10:
  v29 = v40;
  sub_1008EC570(v29, v42);
  v44[2] = v42[2];
  v44[3] = v42[3];
  v45 = v43;
  v44[0] = v42[0];
  v44[1] = v42[1];

  v41[71] = 0;
  v46 = 0;
  sub_100766AC0(v42, v41);
  sub_1008A0CD4(a2, v44);
  sub_100766C08(v42);
  return sub_100766C08(v42);
}

uint64_t sub_1008A7700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v7 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  v17[1] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1000D2A70(a2, v6, &qword_1016980D0, &unk_10138F3B0);
  v14 = String.init<A>(describing:)();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "#Durian: TagCommandManager: didFailWithError: %@, forDevice: %@", 63, 2, v9);
}

uint64_t sub_1008A78C0(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "#Durian: TagCommandManager: didConnectDevice: %@", 48, 2, v13);

  v17 = v28;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1008A8880;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638668;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_errorRetain();
  v22 = v27;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_1008A7D8C(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "#Durian: didDisconnectDevice: %@", 32, 2, v12);

  v16 = v26;
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1008A8780;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016385C8;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  v21 = v25;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v22 = v29;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v30 + 8))(v22, v23);
  (*(v27 + 8))(v21, v28);
}

uint64_t sub_1008A823C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a5;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "#Durian: didFetchHawkeyeSerialNumber: %@", 40, 2, v16);

  v20 = v35;
  v33 = *&v35[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v11 + 32))(v23 + v21, v13, v10);
  v24 = v37;
  *(v23 + v22) = v36;
  v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v38;
  *v25 = v24;
  v25[1] = v26;
  aBlock[4] = sub_1008A8730;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638528;
  v27 = _Block_copy(aBlock);
  v28 = v20;
  swift_errorRetain();
  sub_100017D5C(v24, v26);
  v29 = v34;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v30 = v41;
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
}

uint64_t sub_1008A8798(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1008A88A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if (a10)
  {
  }

  else
  {
    return sub_100006654(a1, a2);
  }
}

uint64_t sub_1008A88B0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1008A1310(v3, v0 + v2, v4);
}

void sub_1008A8940()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 82) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1008A1948(v0 + 16, v0 + v2, v3);
}

unint64_t sub_1008A89D0()
{
  result = qword_1016AC9E0;
  if (!qword_1016AC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC9E0);
  }

  return result;
}

uint64_t sub_1008A8A60()
{
  if (*(v0 + 16))
  {
    return Future.finish(error:)();
  }

  return result;
}

uint64_t sub_1008A8B1C()
{
  if (*(v0 + 16))
  {
    return Future.finish(result:)();
  }

  return result;
}

uint64_t sub_1008A8B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008A8BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008A8C38()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1008A8CD4(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32);
}

uint64_t sub_1008A8D34()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1008A8E40(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + v4);
  v7 = (v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a1(v5, v1 + v3, v6, v8, v9);
}

uint64_t sub_1008A8EF4()
{

  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

unint64_t sub_1008A8F88()
{
  result = qword_1016AC9E8;
  if (!qword_1016AC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC9E8);
  }

  return result;
}

uint64_t sub_1008A9180()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B558);
  sub_1000076D4(v0, qword_10177B558);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008A9200(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_1008A9294;

  return daemon.getter();
}

uint64_t sub_1008A9294(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019540(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019540(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1008A9470;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008A9470(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5(3);
  }

  else
  {

    return _swift_task_switch(sub_1008A95E8, a1, 0);
  }
}

uint64_t sub_1008A95E8()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1008A96D4;
  v3 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_1008A96D4()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_1008A97EC, v1, 0);
}

uint64_t sub_1008A9810()
{
  v1 = v0[11];
  v0[14] = *(v0[13] + 16);

  return _swift_task_switch(sub_1008A9884, v1, 0);
}

uint64_t sub_1008A9884()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_1008A9970;
  v3 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_1008A9970()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_1008A9A88, v1, 0);
}

uint64_t sub_1008A9AAC()
{
  v1 = v0[14];
  v2 = *(v0[16] + 16);

  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v0[17] = v1 + v2;
    if (qword_101694940 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v3 = qword_10177B348;
  v0[18] = qword_10177B348;

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1008A9BCC;

  return unsafeBlocking<A>(_:)(v0 + 4, sub_1000D2BE0, v3, &type metadata for Configuration);
}

uint64_t sub_1008A9BCC()
{

  return _swift_task_switch(sub_1008A9CE4, 0, 0);
}

uint64_t sub_1008A9CE4()
{
  v1 = sub_101074D58(v0[4]);

  if (v1)
  {
    AnyCurrentValuePublisher.value.getter();
    v2 = v0[5] > 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0[6] + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator);
  if (v3)
  {
    v4 = [v3 path];
    v5 = [v4 status];

    if (v5 == 1)
    {
LABEL_12:
      v5 = 3;
      goto LABEL_14;
    }

    if (v5 == 3)
    {
      goto LABEL_14;
    }
  }

  if (v0[17] <= 0 && !v2)
  {
    goto LABEL_12;
  }

  if (qword_101694A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B558);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17] > 0;
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v9;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v2;
    _os_log_impl(&_mh_execute_header, v7, v8, "Network is down - policy is no maintenance. hasShares: %{BOOL}d, hasOtherDeviecs: %{BOOL}d.", v10, 0xEu);
  }

  v5 = 0;
LABEL_14:

  v11 = v0[1];

  return v11(v5);
}

void *sub_1008A9EFC()
{
  v1 = v0;
  swift_defaultActor_initialize();
  sub_1000BC4D4(&qword_1016ACB58, &qword_1013C17B8);
  swift_allocObject();
  v0[15] = CurrentValueSubject.init(_:)();
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v0[16] = v2;
    v0[17] = [objc_allocWithZone(type metadata accessor for NetworkMonitor()) init];
    v0[18] = _swiftEmptyArrayStorage;
    v0[19] = 0;
    v0[20] = _swiftEmptyArrayStorage;

    v3 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

    v0[14] = v3;
    if (qword_101694A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B558);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Created iOS Maintenance Connection Observer", v7, 2u);
    }

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1008AA0DC()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      notify_cancel(*(v1 + v3));
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1008AA178()
{
  sub_1008AA0DC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008AA1C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1008AA264(a2);
}

uint64_t sub_1008AA264(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016ACB38, &qword_1013C1778);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016ACB40, &unk_1013C1780);
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1008AA488, v1, 0);
}

uint64_t sub_1008AA488()
{
  v17 = v0[22];
  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[19];
  v20 = v0[18];
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v15 = v0[12];
  v16 = v0[17];
  v18 = v0[11];
  v19 = v0[10];
  *(v0[9] + 152) = v0[8];

  v0[5] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC488();
  v14 = enum case for DispatchQoS.QoSClass.default(_:);
  v13 = *(v2 + 104);
  v13(v1);
  v9 = static OS_dispatch_queue.global(qos:)();
  v12 = *(v2 + 8);
  v12(v1, v3);
  v0[6] = v9;
  v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v10 = *(*(v11 - 8) + 56);
  v10(v4, 1, 1, v11);
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100019540(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_100422F3C(v4);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (v13)(v1, v14, v3);
  v5 = static OS_dispatch_queue.global(qos:)();
  v12(v1, v3);
  v0[7] = v5;
  v10(v4, 1, 1, v11);
  sub_1000041A4(&qword_1016ACB48, &qword_1016ACB38, &qword_1013C1778, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100422F3C(v4);

  (*(v18 + 8))(v15, v19);
  (*(v20 + 8))(v23, v16);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016ACB50, &qword_1016ACB40, &unk_1013C1780, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v17, v21);
  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  sub_1008AB64C();
  v6 = swift_allocObject();
  swift_weakInit();

  NetworkMonitor.startMonitoring(block:)(sub_1008ABE30, v6);

  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_1008AA9C8;

  return sub_1008AAD18();
}

uint64_t sub_1008AA9C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008AAB58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1008AABF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008AAD18();
}

uint64_t sub_1008AAC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1008AAD18()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1008AADD8, v0, 0);
}

void sub_1008AADD8()
{
  v32 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 152);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = *(v1 + 136);

    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_1008AB1C0;

    sub_1008A9200(v3, v2);
  }

  else
  {
    v5 = [*(v1 + 128) getActivePairedDevice];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    AnyCurrentValuePublisher.value.getter();
    v7 = *(v0 + 64);
    *(v0 + 65) = v6;
    CurrentValueSubject.send(_:)();
    if (qword_101694A28 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B558);
    v9 = v5;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v30 = v9;
      v12 = 1701736302;
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136446979;
      if (v5)
      {
        v14 = 1684826487;
      }

      else
      {
        v14 = 7105633;
      }

      if (v5)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_1000136BC(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v17 = 0xE400000000000000;
      v18 = 7105633;
      if (v7 == 1)
      {
        v18 = 1684826487;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if (v7)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1701736302;
      }

      if (v7)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      v21 = sub_1000136BC(v19, v20, &v31);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2160;
      *(v13 + 24) = 1752392040;
      *(v13 + 32) = 2081;
      if (v5)
      {
        v22 = [v9 pairingID];

        if (!v22)
        {
          __break(1u);
          return;
        }

        v23 = *(v0 + 32);
        v24 = *(v0 + 40);
        v25 = *(v0 + 24);
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = UUID.uuidString.getter();
        v27 = v26;
        (*(v23 + 8))(v24, v25);
        v9 = v30;
      }

      else
      {
        v27 = 0xE400000000000000;
      }

      v28 = sub_1000136BC(v12, v27, &v31);

      *(v13 + 34) = v28;
      _os_log_impl(&_mh_execute_header, v10, v11, "Updated iOS Maintenance Connection policy (New: %{public}s, Old: %{public}s) - activePairedDevice:%{private,mask.hash}s.", v13, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 8);

    v29();
  }
}

uint64_t sub_1008AB1C0(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 67) = a1;

  return _swift_task_switch(sub_1008AB2D8, v2, 0);
}

void sub_1008AB2D8()
{
  v29 = v0;
  v1 = *(v0 + 67);
  if (v1 == 3)
  {

    v2 = [*(*(v0 + 16) + 128) getActivePairedDevice];
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    AnyCurrentValuePublisher.value.getter();
    v4 = *(v0 + 64);
    *(v0 + 65) = v3;
    CurrentValueSubject.send(_:)();
    if (qword_101694A28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B558);
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v27 = v6;
      v9 = 1701736302;
      v10 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v10 = 136446979;
      if (v2)
      {
        v11 = 1684826487;
      }

      else
      {
        v11 = 7105633;
      }

      if (v2)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      v13 = sub_1000136BC(v11, v12, &v28);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = 0xE400000000000000;
      v15 = 7105633;
      if (v4 == 1)
      {
        v15 = 1684826487;
      }

      else
      {
        v14 = 0xE300000000000000;
      }

      if (v4)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1701736302;
      }

      if (v4)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      v18 = sub_1000136BC(v16, v17, &v28);

      *(v10 + 14) = v18;
      *(v10 + 22) = 2160;
      *(v10 + 24) = 1752392040;
      *(v10 + 32) = 2081;
      if (v2)
      {
        v19 = [v6 pairingID];

        if (!v19)
        {
          __break(1u);
          return;
        }

        v20 = *(v0 + 32);
        v21 = *(v0 + 40);
        v22 = *(v0 + 24);
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v9 = UUID.uuidString.getter();
        v24 = v23;
        (*(v20 + 8))(v21, v22);
        v6 = v27;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      v25 = sub_1000136BC(v9, v24, &v28);

      *(v10 + 34) = v25;
      _os_log_impl(&_mh_execute_header, v7, v8, "Updated iOS Maintenance Connection policy (New: %{public}s, Old: %{public}s) - activePairedDevice:%{private,mask.hash}s.", v10, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 66) = v1;
    CurrentValueSubject.send(_:)();
  }

  v26 = *(v0 + 8);

  v26();
}

void sub_1008AB64C()
{
  v35 = type metadata accessor for UUID();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[8] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42[9] = v6;
  v42[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42[11] = v7;
  v42[12] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42[13] = v8;
  sub_1000BC488();
  v9 = 0;
  v38 = enum case for DispatchQoS.QoSClass.default(_:);
  v37 = *(v3 + 104);
  v39 = v3 + 104;
  v10 = (v3 + 8);
  v36 = v42;
  do
  {
    out_token = 0;
    v37(v5, v38, v2);

    v11 = static OS_dispatch_queue.global(qos:)();
    (*v10)(v5, v2);
    v12 = swift_allocObject();
    swift_weakInit();
    v42[2] = sub_1008ABD90;
    v42[3] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v42[0] = sub_1008ABD3C;
    v42[1] = &unk_101639048;
    v13 = _Block_copy(aBlock);

    v14 = String.utf8CString.getter();

    notify_register_dispatch((v14 + 32), &out_token, v11, v13);

    _Block_release(v13);

    v15 = out_token;
    v16 = *(v0 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 144) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_100A5E14C(0, *(v16 + 2) + 1, 1, v16);
      *(v0 + 144) = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_100A5E14C((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    *&v16[4 * v19 + 32] = v15;
    *(v0 + 144) = v16;
    v9 += 16;
  }

  while (v9 != 48);
  v20 = [*(v0 + 128) getActivePairedDevice];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 pairingID];

    if (!v22)
    {
      __break(1u);
      return;
    }

    swift_arrayDestroy();
    v23 = v33;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v34 + 8))(v23, v35);
  }

  else
  {
    swift_arrayDestroy();
    v26 = 0xE400000000000000;
    v24 = 1701736302;
  }

  if (qword_101694A28 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177B558);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 141558275;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    v32 = sub_1000136BC(v24, v26, aBlock);

    *(v30 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "Registered active paired device changed handlers. Current device: %{private,mask.hash}s", v30, 0x16u);
    sub_100007BAC(v31);
  }

  else
  {
  }
}

uint64_t sub_1008ABC14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1008ABCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008AAD18();
}

uint64_t sub_1008ABD3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1008ABD98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008ABCAC();
}

uint64_t sub_1008ABE38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008AABF0();
}

uint64_t sub_1008ABEC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008AABF0();
}

uint64_t type metadata accessor for AccessoryPairingLockAckResponse(uint64_t a1)
{
  result = qword_1016ACBB8;
  if (!qword_1016ACBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008ABFCC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008AC048@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = type metadata accessor for UUID();
  v16 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016ACBF0, &qword_1013C1808);
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AccessoryPairingLockAckResponse(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_1008AC4EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v13;
  v21 = 1;
  sub_100395BEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1008AC540(v10, v17);
  sub_100007BAC(a1);
  return sub_1008AC5A4(v10);
}