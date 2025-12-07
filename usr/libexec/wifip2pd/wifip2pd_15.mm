Swift::Int InfraAssociationJoinStatus.hashValue.getter(unint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  v5 = a2;
  v6 = a1;
  v7 = a1 >> 8;
  v8 = a1 >> 16;
  v9 = a1 >> 24;
  v10 = HIDWORD(a1);
  v11 = a1 >> 40;
  v12 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v12);
  sub_1000DF2D0(v15, a3);
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int sub_1001285B8()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 12);
  v3 = *(v0 + 16);
  v11 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  v8 = *(v0 + 4);
  v9 = *(v0 + 5);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  sub_1000DF2D0(v12, v3);
  Hasher._combine(_:)(v11);
  return Hasher._finalize()();
}

void sub_1001286B0(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  v11 = *(v1 + 24);
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 5);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  sub_1000DF2D0(a1, v5);
  Hasher._combine(_:)(v11);
}

Swift::Int sub_100128774(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 12);
  v4 = *(v1 + 16);
  v12 = *(v1 + 24);
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 5);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  sub_1000DF2D0(v13, v4);
  Hasher._combine(_:)(v12);
  return Hasher._finalize()();
}

void InfraAssociationReadyEvent.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 40) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10012795C(a1);
  }
}

Swift::Int InfraAssociationReadyEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 40);
  if (v1 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 24);
    v5 = *(v0 + 8);
    v6 = v2;
    v7 = v1 & 1;
    Hasher._combine(_:)(1u);
    sub_10012795C(v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1001289D8()
{
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  v1 = *(v0 + 40);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v1 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = v1 & 1;
    Hasher._combine(_:)(1u);
    sub_10012795C(v6);
  }

  return Hasher._finalize()();
}

void sub_100128A7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher._combine(_:)(*v1);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10012795C(a1);
  }
}

Swift::Int sub_100128B0C(uint64_t a1)
{
  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  v2 = *(v1 + 40);
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = v2 & 1;
    Hasher._combine(_:)(1u);
    sub_10012795C(v7);
  }

  return Hasher._finalize()();
}

BOOL sub_100128BAC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s7CoreP2P26InfraAssociationReadyEventV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

BOOL sub_100128BF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOBYTE(v10) = BYTE4(a3);
  HIBYTE(v10) = BYTE5(a3);
  if (a1 != a3 || v11 != v10)
  {
    return 0;
  }

  v6 = a3 & 0xFF00000000000000;
  if (HIBYTE(a1) == 34)
  {
    if (v6 != 0x2200000000000000)
    {
      return 0;
    }
  }

  else if (v6 == 0x2200000000000000 || word_10048810E[(a1 << 8) >> 56] != word_10048810E[a3 << 8 >> 56] || word_10048817C[a1 >> 56] != word_10048817C[a3 >> 56])
  {
    return 0;
  }

  v7 = a4 & 0xFF00;
  if ((a2 & 0xFF00) == 0x2200)
  {
    if (v7 != 8704)
    {
      return 0;
    }
  }

  else if (v7 == 8704 || word_10048810E[a2] != word_10048810E[a4] || word_10048817C[a2 >> 8] != word_10048817C[a4 >> 8])
  {
    return 0;
  }

  v8 = a4 & 0xFF000000;
  if ((a2 & 0xFF000000) == 0x22000000)
  {
    if (v8 != 570425344)
    {
      return 0;
    }
  }

  else if (v8 == 570425344 || word_10048810E[a2 << 40 >> 56] != word_10048810E[a4 << 40 >> 56] || word_10048817C[a2 >> 24] != word_10048817C[a4 >> 24])
  {
    return 0;
  }

  v9 = a4 & 0xFF0000000000;
  if ((a2 & 0xFF0000000000) != 0x220000000000)
  {
    return v9 != 0x220000000000 && word_10048810E[a2 << 24 >> 56] == word_10048810E[a4 << 24 >> 56] && word_10048817C[a2 << 16 >> 56] == word_10048817C[a4 << 16 >> 56];
  }

  return v9 == 0x220000000000;
}

uint64_t sub_100128E44(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LOBYTE(v13) = BYTE4(a1);
  HIBYTE(v13) = BYTE5(a1);
  LOBYTE(v12) = BYTE4(a5);
  HIBYTE(v12) = BYTE5(a5);
  if (a1 == a5 && v13 == v12 && a2 == a6)
  {
    return sub_1000BE73C(a3, a7) & (a4 == a8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058DB70, &qword_100487CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100128F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058DB70, &qword_100487CD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s7CoreP2P26InfraAssociationReadyEventV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 == 255)
  {
    return v3 == 255;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a2 + 1);
  if ((v2 & 1) == 0)
  {
    return (v3 & 1) == 0 && v4 == v5;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  sub_1000B1BE0(*(a2 + 1), v9, v10, v11, 1);
  v13 = _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(v4, v6, v7, v8, v5, v9, v10, v11);
  sub_1001295EC(a2);
  result = 1;
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1001290EC()
{
  result = qword_10058DB78;
  if (!qword_10058DB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfraScanStartEvent, &type metadata for InfraScanStartEvent, v0, v1);
    atomic_store(result, &qword_10058DB78);
  }

  return result;
}

unint64_t sub_100129144()
{
  result = qword_10058DB80;
  if (!qword_10058DB80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfraScanCompleteEvent, &type metadata for InfraScanCompleteEvent, v0, v1);
    atomic_store(result, &qword_10058DB80);
  }

  return result;
}

unint64_t sub_10012919C()
{
  result = qword_10058DB88;
  if (!qword_10058DB88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfraAssociationStartEvent, &type metadata for InfraAssociationStartEvent, v0, v1);
    atomic_store(result, &qword_10058DB88);
  }

  return result;
}

unint64_t sub_1001291F4()
{
  result = qword_10058DB90;
  if (!qword_10058DB90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfraAssociationJoinStatus.SubstateInformation, &type metadata for InfraAssociationJoinStatus.SubstateInformation, v0, v1);
    atomic_store(result, &qword_10058DB90);
  }

  return result;
}

unint64_t sub_10012924C()
{
  result = qword_10058DB98;
  if (!qword_10058DB98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfraAssociationJoinStatus, &type metadata for InfraAssociationJoinStatus, v0, v1);
    atomic_store(result, &qword_10058DB98);
  }

  return result;
}

unint64_t sub_1001292A4()
{
  result = qword_10058DBA0;
  if (!qword_10058DBA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InfraAssociationReadyEvent, &type metadata for InfraAssociationReadyEvent, v0, v1);
    atomic_store(result, &qword_10058DBA0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Channel(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Channel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 6))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Channel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

__n128 sub_1001293C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1001293D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_100129420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InfraAssociationJoinStatus.SubstateInformation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDE && *(a1 + 14))
  {
    return (*a1 + 222);
  }

  v3 = *(a1 + 7);
  if (v3 <= 0x22)
  {
    v4 = 34;
  }

  else
  {
    v4 = *(a1 + 7);
  }

  v5 = v4 - 35;
  if (v3 < 0x22)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for InfraAssociationJoinStatus.SubstateInformation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xDD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 222;
    if (a3 >= 0xDE)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xDE)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 34;
    }
  }

  return result;
}

uint64_t sub_10012952C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100129540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_10012958C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

uint64_t sub_100129620(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100129748(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v26 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v28 = a3;

  v15 = 0;
  while (v12)
  {
    v29 = v4;
LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = v28;
    v19 = *(v28 + 48);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(v8, v19 + *(*(v20 - 8) + 72) * v17, v20);
    v21 = *(v18 + 56);
    v22 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    sub_10012A6E4(v21 + *(*(v22 - 8) + 72) * v17, &v8[*(v26 + 48)], type metadata accessor for NANPairedDeviceSharedAssociation);
    v23 = v29;
    v24 = v27(v8);
    v4 = v23;
    result = sub_100016290(v8, &unk_100597500, &unk_1004939B0);
    if (v23)
    {
      goto LABEL_14;
    }

    v12 &= v12 - 1;
    if (v24)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
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
      a2 = 0;
      goto LABEL_14;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v29 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10012996C(uint64_t a1, unint64_t a2)
{
  sub_100033AA8(_swiftEmptyArrayStorage);
  v10 = xmmword_100480A90;
  swift_beginAccess();
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_100029B34(v9, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000AB0C(a1, a2);
  sub_100178A18(v5, v6, &v10);
  sub_100002A00(v9);
  swift_endAccess();
  v7 = v10;
  sub_10000AB0C(v10, *(&v10 + 1));
  sub_1000124C8(v7, *(&v7 + 1));

  return v7;
}

void static NANPairing.authenticatedSetup(password:cipherSuite:pairingCaching:pairingBootstrapRequest:pairingBootstrapResponse:initiatorAddress:responderAddress:publishID:)(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, __int128 *a5@<X4>, __int128 *a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 a10)
{
  v127 = a8;
  v113 = a7;
  LODWORD(v106) = a4;
  v108 = a9;
  v15 = a6[1];
  v123 = *a6;
  v124[0] = v15;
  *(v124 + 10) = *(a6 + 26);
  v16 = a5[1];
  v125 = *a5;
  v126[0] = v16;
  *(v126 + 10) = *(a5 + 26);
  v17 = type metadata accessor for NANPairing.SharedAssociation(0);
  __chkstk_darwin();
  v99 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10005DC58(&qword_10058DBA8, &qword_1004881F0);
  __chkstk_darwin();
  v105 = &v88 - v19;
  v102 = sub_10005DC58(&qword_10058DBB0, &qword_1004881F8);
  __chkstk_darwin();
  v103 = &v88 - v20;
  v111 = type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v101 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = (&v88 - v22);
  __chkstk_darwin();
  v100 = &v88 - v23;
  __chkstk_darwin();
  v109 = (&v88 - v24);
  __chkstk_darwin();
  v26 = &v88 - v25;
  _s3SAEVMa(0);
  __chkstk_darwin();
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v107) = a3;
  if (a3 == 6)
  {
    v98 = v17;
    v29 = 0;
  }

  else
  {
    if (a3 != 7)
    {
      sub_10000B02C();
      swift_allocError();
      *v55 = xmmword_1004881C0;
      *(v55 + 16) = 1;
      swift_willThrow();
      return;
    }

    v98 = v17;
    v29 = 1;
  }

  sub_10000AB0C(a1, a2);
  v30 = v112;
  sub_100220CE0(v29, v113 & 0xFFFFFFFFFFFFLL, v127 & 0xFFFFFFFFFFFFLL, a1, a2, v28);
  if (!v30)
  {
    v112 = 0;
    v97 = a10;
    v31 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    v32 = *(v31 + 48);
    *&v122[7] = v125;
    *&v122[23] = v126[0];
    *&v122[33] = *(v126 + 10);
    *(v121 + 6) = v123;
    *(&v121[1] + 6) = v124[0];
    v121[2] = *(v124 + 10);
    v33 = v26;
    *v26 = v106 & 1;
    v34 = *&v122[16];
    v35 = *&v122[32];
    v26[49] = v122[48];
    *(v26 + 33) = v35;
    *(v26 + 17) = v34;
    v36 = v121[2];
    *(v26 + 1) = *v122;
    v37 = v121[0];
    v38 = v121[1];
    *(v26 + 82) = v36;
    *(v26 + 66) = v38;
    *(v26 + 50) = v37;
    v106 = v28;
    sub_10012A6E4(v28, &v26[v32], _s3SAEVMa);
    swift_storeEnumTagMultiPayload();
    v95 = v31;
    v96 = v26;
    if (v107 == 6)
    {
      v39 = v127;
      v107 = v127 >> 40;
      v104 = v127 >> 24;
      v105 = HIDWORD(v127);
      v101 = v127 >> 16;
      v40 = v113;
      v93 = v113 >> 40;
      v94 = v127 >> 8;
      v91 = v113 >> 24;
      v92 = HIDWORD(v113);
      v89 = v113 >> 8;
      v90 = v113 >> 16;
      v41 = v109;
      sub_10012A6E4(v26, v109, type metadata accessor for NANPairing.Mode);
      v42 = v102;
      v43 = v108;
      v108[3] = v102;
      v43[4] = &off_100562538;
      v110 = sub_1000297D4(v43);
      sub_10012A628(a5, &v114);
      sub_10012A628(a6, &v114);
      v44 = v103;
      Logger.init(subsystem:category:)();
      P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
      *(v44 + v42[23]) = 1;
      v45 = v42[25];
      type metadata accessor for SHA256Digest();
      sub_10014400C(&qword_10058DBD0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      *(v44 + v45) = dispatch thunk of static Digest.byteCount.getter() / 2;
      v46 = v42[13];
      sub_10012A6E4(v41, v44 + v46, type metadata accessor for NANPairing.Mode);
      v47 = (v44 + v42[19]);
      *v47 = v40;
      v48 = v90;
      v47[1] = v89;
      v47[2] = v48;
      v49 = v92;
      v47[3] = v91;
      v47[4] = v49;
      v47[5] = v93;
      v50 = (v44 + v42[20]);
      *v50 = v39;
      v51 = v42;
      v50[1] = v94;
      v50[2] = v101;
      v50[3] = v104;
      v50[4] = v105;
      v50[5] = v107;
      *(v44 + v42[21]) = v97;
      v52 = v44 + v46;
      v53 = v100;
      sub_10012A6E4(v52, v100, type metadata accessor for NANPairing.Mode);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_10012A684(v53, type metadata accessor for NANPairing.Mode);
          *(v44 + v42[18]) = 20;
        }

        else
        {
          v79 = v99;
          sub_100142410(v53, v99, type metadata accessor for NANPairing.SharedAssociation);
          v80 = *(v79 + *(v98 + 36));
          sub_10012A684(v79, type metadata accessor for NANPairing.SharedAssociation);
          *(v44 + v51[18]) = v80;
        }
      }

      else
      {
        v71 = *(v53 + 80);
        v118 = *(v53 + 64);
        v119 = v71;
        v120 = *(v53 + 96);
        v72 = *(v53 + 16);
        v114 = *v53;
        v115 = v72;
        v73 = *(v53 + 48);
        v116 = *(v53 + 32);
        v117 = v73;
        sub_100141458(&v114);
        v74 = *(v95 + 48);
        *(v44 + v42[18]) = 7;
        sub_10012A684(v53 + v74, _s3SAEVMa);
      }

      v81 = v96;
      v82 = v106;
      v83 = v110;
      *(v44 + v51[14]) = 6;
      *(v44 + v51[15]) = 3;
      static SymmetricKeySize.bits128.getter();
      sub_10012A684(v109, type metadata accessor for NANPairing.Mode);
      *(v44 + v51[16]) = 0;
      sub_10005DC58(&qword_10058DBD8, &qword_100488210);
      swift_storeEnumTagMultiPayload();
      v84 = &qword_10058DBB0;
      v85 = &qword_1004881F8;
    }

    else
    {
      v56 = v127;
      v107 = v127 >> 40;
      v102 = v127 >> 24;
      v103 = HIDWORD(v127);
      v100 = v127 >> 16;
      v57 = v113;
      v93 = v113 >> 40;
      v94 = v127 >> 8;
      v91 = v113 >> 24;
      v92 = HIDWORD(v113);
      v89 = v113 >> 8;
      v90 = v113 >> 16;
      v58 = v110;
      sub_10012A6E4(v33, v110, type metadata accessor for NANPairing.Mode);
      v59 = v104;
      v60 = v108;
      v108[3] = v104;
      v60[4] = &off_100562538;
      v109 = sub_1000297D4(v60);
      sub_10012A628(a5, &v114);
      sub_10012A628(a6, &v114);
      v44 = v105;
      Logger.init(subsystem:category:)();
      P384.KeyAgreement.PrivateKey.init(compactRepresentable:)();
      *(v44 + v59[23]) = 1;
      v61 = v59[25];
      type metadata accessor for SHA384Digest();
      sub_10014400C(&qword_10058DBC0, &type metadata accessor for SHA384Digest, &protocol conformance descriptor for SHA384Digest);
      *(v44 + v61) = dispatch thunk of static Digest.byteCount.getter() / 2;
      v62 = v59[13];
      sub_10012A6E4(v58, v44 + v62, type metadata accessor for NANPairing.Mode);
      v63 = (v44 + v59[19]);
      *v63 = v57;
      v64 = v59;
      v65 = v90;
      v63[1] = v89;
      v63[2] = v65;
      v66 = v92;
      v63[3] = v91;
      v63[4] = v66;
      v63[5] = v93;
      v67 = (v44 + v59[20]);
      *v67 = v56;
      v67[1] = v94;
      v67[2] = v100;
      v67[3] = v102;
      v67[4] = v103;
      v67[5] = v107;
      *(v44 + v59[21]) = v97;
      v68 = v44 + v62;
      v69 = v101;
      sub_10012A6E4(v68, v101, type metadata accessor for NANPairing.Mode);
      v70 = swift_getEnumCaseMultiPayload();
      if (v70)
      {
        if (v70 == 1)
        {
          sub_10012A684(v69, type metadata accessor for NANPairing.Mode);
          *(v44 + v59[18]) = 20;
        }

        else
        {
          v86 = v99;
          sub_100142410(v69, v99, type metadata accessor for NANPairing.SharedAssociation);
          v87 = *(v86 + *(v98 + 36));
          sub_10012A684(v86, type metadata accessor for NANPairing.SharedAssociation);
          *(v44 + v64[18]) = v87;
        }
      }

      else
      {
        v75 = *(v69 + 80);
        v118 = *(v69 + 64);
        v119 = v75;
        v120 = *(v69 + 96);
        v76 = *(v69 + 16);
        v114 = *v69;
        v115 = v76;
        v77 = *(v69 + 48);
        v116 = *(v69 + 32);
        v117 = v77;
        sub_100141458(&v114);
        v78 = *(v95 + 48);
        *(v44 + v59[18]) = 7;
        sub_10012A684(v69 + v78, _s3SAEVMa);
      }

      v81 = v96;
      v82 = v106;
      v83 = v109;
      *(v44 + v64[14]) = 7;
      *(v44 + v64[15]) = 8;
      static SymmetricKeySize.bits256.getter();
      sub_10012A684(v110, type metadata accessor for NANPairing.Mode);
      *(v44 + v64[16]) = 1;
      sub_10005DC58(&qword_10058DBC8, &qword_100488208);
      swift_storeEnumTagMultiPayload();
      v84 = &qword_10058DBA8;
      v85 = &qword_1004881F0;
    }

    sub_10001CEA8(v44, v83, v84, v85);
    sub_10012A684(v81, type metadata accessor for NANPairing.Mode);
    sub_10012A684(v82, _s3SAEVMa);
  }
}

uint64_t sub_10012A684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012A6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static NANPairing.opportunisticSetup(cipherSuite:pairingCaching:pairingBootstrapRequest:pairingBootstrapResponse:initiatorAddress:responderAddress:publishID:)@<X0>(int a1@<W0>, int a2@<W1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v84 = a7;
  v83 = a6;
  v82 = a5;
  LODWORD(v85) = a2;
  LODWORD(v86) = a1;
  v81 = a8;
  v78 = type metadata accessor for NANPairing.SharedAssociation(0);
  __chkstk_darwin();
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10005DC58(&qword_10058DBA8, &qword_1004881F0);
  __chkstk_darwin();
  v13 = &v68 - v12;
  v14 = sub_10005DC58(&qword_10058DBB0, &qword_1004881F8);
  __chkstk_darwin();
  v16 = &v68 - v15;
  type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v68 - v18;
  __chkstk_darwin();
  v20 = &v68 - v19;
  __chkstk_darwin();
  v96 = (&v68 - v21);
  __chkstk_darwin();
  v23 = &v68 - v22;
  v24 = a3[1];
  *&v95[7] = *a3;
  *&v95[23] = v24;
  *&v95[33] = *(a3 + 26);
  v25 = a4[1];
  *&v94[6] = *a4;
  *&v94[22] = v25;
  *&v94[32] = *(a4 + 26);
  *v23 = v85;
  v26 = *&v95[16];
  v27 = *&v95[32];
  v23[49] = v95[48];
  *(v23 + 33) = v27;
  *(v23 + 17) = v26;
  v28 = *&v94[32];
  *(v23 + 1) = *v95;
  v29 = *v94;
  v30 = *&v94[16];
  *(v23 + 82) = v28;
  *(v23 + 66) = v30;
  *(v23 + 50) = v29;
  v85 = v31;
  swift_storeEnumTagMultiPayload();
  if (v86 == 7)
  {
    v41 = v83;
    v86 = (v83 >> 40);
    v76 = HIDWORD(v83);
    v75 = v83 >> 24;
    v74 = v83 >> 16;
    v73 = v83 >> 8;
    v42 = v82;
    v72 = v82 >> 40;
    v71 = HIDWORD(v82);
    v70 = v82 >> 24;
    v69 = v82 >> 16;
    v68 = (v82 >> 8);
    sub_10012A6E4(v23, v80, type metadata accessor for NANPairing.Mode);
    v43 = v81;
    v81[3] = v11;
    v43[4] = &off_100562538;
    v96 = sub_1000297D4(v43);
    sub_10012A628(a3, &v87);
    sub_10012A628(a4, &v87);
    Logger.init(subsystem:category:)();
    P384.KeyAgreement.PrivateKey.init(compactRepresentable:)();
    v13[v11[23]] = 1;
    v44 = v11[25];
    type metadata accessor for SHA384Digest();
    sub_10014400C(&qword_10058DBC0, &type metadata accessor for SHA384Digest, &protocol conformance descriptor for SHA384Digest);
    *&v13[v44] = dispatch thunk of static Digest.byteCount.getter() / 2;
    v45 = v11[13];
    v46 = v80;
    sub_10012A6E4(v80, &v13[v45], type metadata accessor for NANPairing.Mode);
    v47 = &v13[v11[19]];
    *v47 = v42;
    v47[1] = v68;
    v47[2] = v69;
    v47[3] = v70;
    v47[4] = v71;
    v47[5] = v72;
    v48 = &v13[v11[20]];
    *v48 = v41;
    v48[1] = v73;
    v48[2] = v74;
    v48[3] = v75;
    v48[4] = v76;
    v48[5] = v86;
    v13[v11[21]] = v84;
    v49 = &v13[v45];
    v50 = v79;
    sub_10012A6E4(v49, v79, type metadata accessor for NANPairing.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10012A684(v50, type metadata accessor for NANPairing.Mode);
        v13[v11[18]] = 20;
      }

      else
      {
        v64 = v77;
        sub_100142410(v50, v77, type metadata accessor for NANPairing.SharedAssociation);
        v65 = *(v64 + *(v78 + 36));
        sub_10012A684(v64, type metadata accessor for NANPairing.SharedAssociation);
        v13[v11[18]] = v65;
      }
    }

    else
    {
      v57 = *(v50 + 80);
      v91 = *(v50 + 64);
      v92 = v57;
      v93 = *(v50 + 96);
      v58 = *(v50 + 16);
      v87 = *v50;
      v88 = v58;
      v59 = *(v50 + 32);
      v90 = *(v50 + 48);
      v89 = v59;
      sub_100141458(&v87);
      v60 = *(sub_10005DC58(&qword_10058DBB8, &qword_100488200) + 48);
      v13[v11[18]] = 7;
      sub_10012A684(v50 + v60, _s3SAEVMa);
    }

    v66 = v96;
    v13[v11[14]] = 7;
    v13[v11[15]] = 8;
    static SymmetricKeySize.bits256.getter();
    sub_10012A684(v46, type metadata accessor for NANPairing.Mode);
    v13[v11[16]] = 1;
    sub_10005DC58(&qword_10058DBC8, &qword_100488208);
    swift_storeEnumTagMultiPayload();
    sub_10001CEA8(v13, v66, &qword_10058DBA8, &qword_1004881F0);
  }

  else if (v86 == 6)
  {
    v32 = v83;
    v80 = v83 >> 40;
    v79 = HIDWORD(v83);
    v76 = v83 >> 24;
    v75 = v83 >> 16;
    v74 = v83 >> 8;
    v33 = v82;
    v73 = v82 >> 40;
    v72 = HIDWORD(v82);
    v71 = v82 >> 24;
    v70 = v82 >> 16;
    v69 = v82 >> 8;
    v68 = type metadata accessor for NANPairing.Mode;
    sub_10012A6E4(v23, v96, type metadata accessor for NANPairing.Mode);
    v34 = v81;
    v81[3] = v14;
    v34[4] = &off_100562538;
    v86 = sub_1000297D4(v34);
    sub_10012A628(a3, &v87);
    sub_10012A628(a4, &v87);
    Logger.init(subsystem:category:)();
    P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
    v16[v14[23]] = 1;
    v35 = v14[25];
    type metadata accessor for SHA256Digest();
    sub_10014400C(&qword_10058DBD0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    *&v16[v35] = dispatch thunk of static Digest.byteCount.getter() / 2;
    v36 = v14[13];
    v37 = v68;
    sub_10012A6E4(v96, &v16[v36], v68);
    v38 = &v16[v14[19]];
    *v38 = v33;
    v38[1] = v69;
    v38[2] = v70;
    v38[3] = v71;
    v38[4] = v72;
    v38[5] = v73;
    v39 = &v16[v14[20]];
    *v39 = v32;
    v39[1] = v74;
    v39[2] = v75;
    v39[3] = v76;
    v39[4] = v79;
    v39[5] = v80;
    v16[v14[21]] = v84;
    sub_10012A6E4(&v16[v36], v20, v37);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40)
    {
      if (v40 == 1)
      {
        sub_10012A684(v20, type metadata accessor for NANPairing.Mode);
        v16[v14[18]] = 20;
      }

      else
      {
        v61 = v77;
        sub_100142410(v20, v77, type metadata accessor for NANPairing.SharedAssociation);
        v62 = *(v61 + *(v78 + 36));
        sub_10012A684(v61, type metadata accessor for NANPairing.SharedAssociation);
        v16[v14[18]] = v62;
      }
    }

    else
    {
      v53 = *(v20 + 5);
      v91 = *(v20 + 4);
      v92 = v53;
      v93 = *(v20 + 48);
      v54 = *(v20 + 1);
      v87 = *v20;
      v88 = v54;
      v55 = *(v20 + 2);
      v90 = *(v20 + 3);
      v89 = v55;
      sub_100141458(&v87);
      v56 = *(sub_10005DC58(&qword_10058DBB8, &qword_100488200) + 48);
      v16[v14[18]] = 7;
      sub_10012A684(&v20[v56], _s3SAEVMa);
    }

    v63 = v86;
    v16[v14[14]] = 6;
    v16[v14[15]] = 3;
    static SymmetricKeySize.bits128.getter();
    sub_10012A684(v96, type metadata accessor for NANPairing.Mode);
    v16[v14[16]] = 0;
    sub_10005DC58(&qword_10058DBD8, &qword_100488210);
    swift_storeEnumTagMultiPayload();
    sub_10001CEA8(v16, v63, &qword_10058DBB0, &qword_1004881F8);
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v52 = xmmword_1004881C0;
    *(v52 + 16) = 1;
    swift_willThrow();
    sub_10012A628(a3, &v87);
    sub_10012A628(a4, &v87);
  }

  return sub_10012A684(v23, type metadata accessor for NANPairing.Mode);
}

uint64_t static NANPairing.authenticatedVerify(cipherSuite:pairingKey:initiatorIdentityKey:initiatorIdentityKeyNonce:responderIdentityKey:responderIdentityKeyNonce:baseAuthenticationKeyManagementSuite:initiatorAddress:responderAddress:publishID:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10, unsigned __int8 a11, unint64_t a12, unint64_t a13, unsigned __int8 a14)
{
  v115 = a8;
  v106 = a7;
  v107 = a6;
  v105 = a4;
  LODWORD(v103) = a1;
  v97 = a9;
  v100 = a14;
  v99 = a13;
  v98 = a12;
  v101 = a10;
  LODWORD(v102) = a11;
  v17 = type metadata accessor for NANPairing.SharedAssociation(0);
  __chkstk_darwin();
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10005DC58(&qword_10058DBA8, &qword_1004881F0);
  __chkstk_darwin();
  v20 = &v81 - v19;
  v94 = sub_10005DC58(&qword_10058DBB0, &qword_1004881F8);
  __chkstk_darwin();
  v22 = &v81 - v21;
  v23 = type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v92 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v25;
  __chkstk_darwin();
  v93 = &v81 - v26;
  __chkstk_darwin();
  v96 = &v81 - v27;
  __chkstk_darwin();
  v29 = (&v81 - v28);
  sub_10012A6E4(v105, &v81 + v17[5] - v28, type metadata accessor for NANIdentityKey);
  sub_10012A6E4(v106, v29 + v17[7], type metadata accessor for NANIdentityKey);
  v104 = a2;
  v105 = a3;
  *v29 = a2;
  v29[1] = a3;
  v30 = (v29 + v17[6]);
  v106 = a5;
  v31 = v107;
  *v30 = a5;
  v30[1] = v31;
  v32 = (v29 + v17[8]);
  v33 = v17;
  v34 = v101;
  *v32 = v115;
  v32[1] = v34;
  v89 = v33;
  *(v29 + v33[9]) = v102;
  v102 = v23;
  swift_storeEnumTagMultiPayload();
  if (v103 == 7)
  {
    v48 = v99;
    v96 = v99 >> 40;
    v94 = HIDWORD(v99);
    v93 = v99 >> 24;
    v88 = v99 >> 16;
    v87 = v99 >> 8;
    v49 = v98;
    v86 = v98 >> 40;
    v85 = HIDWORD(v98);
    v84 = v98 >> 24;
    v83 = v98 >> 16;
    v82 = v98 >> 8;
    v81 = type metadata accessor for NANPairing.Mode;
    v50 = v91;
    sub_10012A6E4(v29, v91, type metadata accessor for NANPairing.Mode);
    v51 = v95;
    v52 = v97;
    v97[3] = v95;
    v52[4] = &off_100562538;
    v103 = sub_1000297D4(v52);
    sub_10000AB0C(v104, v105);
    sub_10000AB0C(v106, v107);
    sub_10000AB0C(v115, v34);
    Logger.init(subsystem:category:)();
    P384.KeyAgreement.PrivateKey.init(compactRepresentable:)();
    v20[v51[23]] = 1;
    v53 = v51[25];
    type metadata accessor for SHA384Digest();
    sub_10014400C(&qword_10058DBC0, &type metadata accessor for SHA384Digest, &protocol conformance descriptor for SHA384Digest);
    *&v20[v53] = dispatch thunk of static Digest.byteCount.getter() / 2;
    v54 = v51[13];
    v55 = v81;
    sub_10012A6E4(v50, &v20[v54], v81);
    v56 = &v20[v51[19]];
    *v56 = v49;
    v56[1] = v82;
    v56[2] = v83;
    v56[3] = v84;
    v56[4] = v85;
    v56[5] = v86;
    v57 = &v20[v51[20]];
    *v57 = v48;
    v57[1] = v87;
    v57[2] = v88;
    v57[3] = v93;
    v57[4] = v94;
    v57[5] = v96;
    v20[v51[21]] = v100;
    v58 = v92;
    sub_10012A6E4(&v20[v54], v92, v55);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10012A684(v58, type metadata accessor for NANPairing.Mode);
        v20[v51[18]] = 20;
      }

      else
      {
        v77 = v90;
        sub_100142410(v58, v90, type metadata accessor for NANPairing.SharedAssociation);
        v78 = *(v77 + v89[9]);
        sub_10012A684(v77, type metadata accessor for NANPairing.SharedAssociation);
        v20[v51[18]] = v78;
      }
    }

    else
    {
      v65 = *(v58 + 80);
      v112 = *(v58 + 64);
      v113 = v65;
      v114 = *(v58 + 96);
      v66 = *(v58 + 16);
      v108 = *v58;
      v109 = v66;
      v67 = *(v58 + 48);
      v110 = *(v58 + 32);
      v111 = v67;
      sub_100141458(&v108);
      v68 = *(sub_10005DC58(&qword_10058DBB8, &qword_100488200) + 48);
      v20[v51[18]] = 7;
      sub_10012A684(v58 + v68, _s3SAEVMa);
    }

    v79 = v103;
    v20[v51[14]] = 7;
    v20[v51[15]] = 8;
    static SymmetricKeySize.bits256.getter();
    sub_10012A684(v50, type metadata accessor for NANPairing.Mode);
    v20[v51[16]] = 1;
    sub_10005DC58(&qword_10058DBC8, &qword_100488208);
    swift_storeEnumTagMultiPayload();
    v73 = &qword_10058DBA8;
    v74 = &qword_1004881F0;
    v75 = v20;
    v76 = v79;
    goto LABEL_16;
  }

  if (v103 == 6)
  {
    v35 = v99;
    v103 = (v99 >> 40);
    v95 = HIDWORD(v99);
    v92 = v99 >> 24;
    v91 = v99 >> 16;
    v88 = v99 >> 8;
    v36 = v98;
    v87 = v98 >> 40;
    v86 = HIDWORD(v98);
    v85 = v98 >> 24;
    v84 = v98 >> 16;
    v83 = v98 >> 8;
    v37 = v34;
    v38 = v96;
    sub_10012A6E4(v29, v96, type metadata accessor for NANPairing.Mode);
    v39 = v94;
    v40 = v97;
    v97[3] = v94;
    v40[4] = &off_100562538;
    v97 = sub_1000297D4(v40);
    sub_10000AB0C(v104, v105);
    sub_10000AB0C(v106, v107);
    sub_10000AB0C(v115, v37);
    Logger.init(subsystem:category:)();
    P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
    v22[v39[23]] = 1;
    v41 = v39[25];
    type metadata accessor for SHA256Digest();
    sub_10014400C(&qword_10058DBD0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    *&v22[v41] = dispatch thunk of static Digest.byteCount.getter() / 2;
    v42 = v39[13];
    sub_10012A6E4(v38, &v22[v42], type metadata accessor for NANPairing.Mode);
    v43 = &v22[v39[19]];
    *v43 = v36;
    v43[1] = v83;
    v43[2] = v84;
    v43[3] = v85;
    v43[4] = v86;
    v43[5] = v87;
    v44 = &v22[v39[20]];
    *v44 = v35;
    v44[1] = v88;
    v44[2] = v91;
    v44[3] = v92;
    v44[4] = v95;
    v44[5] = v103;
    v22[v39[21]] = v100;
    v45 = &v22[v42];
    v46 = v93;
    sub_10012A6E4(v45, v93, type metadata accessor for NANPairing.Mode);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47)
    {
      if (v47 == 1)
      {
        sub_10012A684(v46, type metadata accessor for NANPairing.Mode);
        v22[v39[18]] = 20;
      }

      else
      {
        v69 = v90;
        sub_100142410(v46, v90, type metadata accessor for NANPairing.SharedAssociation);
        v70 = *(v69 + v89[9]);
        v71 = v69;
        v38 = v96;
        sub_10012A684(v71, type metadata accessor for NANPairing.SharedAssociation);
        v22[v39[18]] = v70;
      }
    }

    else
    {
      v61 = *(v46 + 80);
      v112 = *(v46 + 64);
      v113 = v61;
      v114 = *(v46 + 96);
      v62 = *(v46 + 16);
      v108 = *v46;
      v109 = v62;
      v63 = *(v46 + 48);
      v110 = *(v46 + 32);
      v111 = v63;
      sub_100141458(&v108);
      v64 = *(sub_10005DC58(&qword_10058DBB8, &qword_100488200) + 48);
      v22[v39[18]] = 7;
      sub_10012A684(v46 + v64, _s3SAEVMa);
    }

    v72 = v97;
    v22[v39[14]] = 6;
    v22[v39[15]] = 3;
    static SymmetricKeySize.bits128.getter();
    sub_10012A684(v38, type metadata accessor for NANPairing.Mode);
    v22[v39[16]] = 0;
    sub_10005DC58(&qword_10058DBD8, &qword_100488210);
    swift_storeEnumTagMultiPayload();
    v73 = &qword_10058DBB0;
    v74 = &qword_1004881F8;
    v75 = v22;
    v76 = v72;
LABEL_16:
    sub_10001CEA8(v75, v76, v73, v74);
    return sub_10012A684(v29, type metadata accessor for NANPairing.Mode);
  }

  sub_10000B02C();
  swift_allocError();
  *v60 = xmmword_1004881C0;
  *(v60 + 16) = 1;
  swift_willThrow();
  sub_10000AB0C(v104, v105);
  sub_10000AB0C(v106, v107);
  sub_10000AB0C(v115, v34);
  return sub_10012A684(v29, type metadata accessor for NANPairing.Mode);
}

uint64_t sub_10012BF38(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10012A684(v5, type metadata accessor for NANPairing.GeneratedKeys);
      return 0x656D7269666E6F63;
    }

    else
    {
      return 0x696C616974696E69;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v8 = sub_10005DC58(&qword_10058DF58, &qword_1004884E0);
    sub_1000124C8(*&v5[*(v8 + 48)], *&v5[*(v8 + 48) + 8]);
    sub_10012A684(v5, type metadata accessor for NANPairing.GeneratedKeys);
    return 0x65646E6F70736572;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0x6574736575716572;
  }
}

uint64_t sub_10012C0E8(uint64_t a1)
{
  type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10012A6E4(v1 + *(a1 + 52), v4, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_10012A684(v4, type metadata accessor for NANPairing.Mode);
      return 1;
    }

    v6 = *v4;
    v7 = *(v4 + 24);
    v18 = *(v4 + 8);
    v19[0] = v7;
    *(v19 + 10) = *(v4 + 34);
    v8 = *(v4 + 72);
    v20 = *(v4 + 56);
    v21[0] = v8;
    *(v21 + 10) = *(v4 + 82);
  }

  else
  {
    v6 = *v4;
    v9 = *(v4 + 24);
    v18 = *(v4 + 8);
    v19[0] = v9;
    *(v19 + 10) = *(v4 + 34);
    v10 = *(v4 + 72);
    v20 = *(v4 + 56);
    v21[0] = v10;
    *(v21 + 10) = *(v4 + 82);
    v11 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_10012A684(&v4[*(v11 + 48)], _s3SAEVMa);
  }

  v14[0] = v6;
  v15 = v18;
  v16[0] = v19[0];
  *(v16 + 10) = *(v19 + 10);
  v16[2] = v20;
  v17[0] = v21[0];
  *(v17 + 10) = *(v21 + 10);
  sub_100141458(v14);
  return v6;
}

uint64_t sub_10012C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v5;
  v6 = type metadata accessor for NANPairing.PASN.State(0, v20);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v20 - v8;
  v10 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v11 = __chkstk_darwin();
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v2 + *(a1 + 96), v6, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 8))(v9, v6);
LABEL_5:
      sub_10000B02C();
      swift_allocError();
      *v15 = xmmword_1004881C0;
      *(v15 + 16) = 1;
      return swift_willThrow();
    }

    v17 = sub_10005DC58(&qword_10058DF58, &qword_1004884E0);
    sub_1000124C8(*&v9[*(v17 + 48)], *&v9[*(v17 + 48) + 8]);
  }

  sub_100142410(v9, v13, type metadata accessor for NANPairing.GeneratedKeys);
  v18 = *(v10 + 24);
  v19 = type metadata accessor for SymmetricKey();
  (*(*(v19 - 8) + 16))(a2, &v13[v18], v19);
  return sub_10012A684(v13, type metadata accessor for NANPairing.GeneratedKeys);
}

uint64_t sub_10012C4F0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v15[0] = *(a1 + 16);
  v15[1] = v3;
  v4 = type metadata accessor for NANPairing.PASN.State(0, v15);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v9 = __chkstk_darwin();
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v1 + *(a1 + 96), v4, v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100142410(v7, v11, type metadata accessor for NANPairing.GeneratedKeys);
    v12 = &v11[*(v8 + 28)];
    v1 = *v12;
    sub_10000AB0C(*v12, *(v12 + 1));
    sub_10012A684(v11, type metadata accessor for NANPairing.GeneratedKeys);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    sub_10000B02C();
    swift_allocError();
    *v13 = xmmword_1004881C0;
    *(v13 + 16) = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10012C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v5;
  v6 = type metadata accessor for NANPairing.PASN.State(0, v20);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v20 - v8;
  v10 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v11 = __chkstk_darwin();
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v2 + *(a1 + 96), v6, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 8))(v9, v6);
LABEL_5:
      sub_10000B02C();
      swift_allocError();
      *v15 = xmmword_1004881C0;
      *(v15 + 16) = 1;
      return swift_willThrow();
    }

    v17 = sub_10005DC58(&qword_10058DF58, &qword_1004884E0);
    sub_1000124C8(*&v9[*(v17 + 48)], *&v9[*(v17 + 48) + 8]);
  }

  sub_100142410(v9, v13, type metadata accessor for NANPairing.GeneratedKeys);
  v18 = *(v10 + 32);
  v19 = type metadata accessor for SymmetricKey();
  (*(*(v19 - 8) + 16))(a2, &v13[v18], v19);
  return sub_10012A684(v13, type metadata accessor for NANPairing.GeneratedKeys);
}

uint64_t sub_10012C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v5;
  v6 = type metadata accessor for NANPairing.PASN.State(0, v20);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v20 - v8;
  v10 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v11 = __chkstk_darwin();
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v2 + *(a1 + 96), v6, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 8))(v9, v6);
LABEL_5:
      sub_10000B02C();
      swift_allocError();
      *v15 = xmmword_1004881C0;
      *(v15 + 16) = 1;
      return swift_willThrow();
    }

    v17 = sub_10005DC58(&qword_10058DF58, &qword_1004884E0);
    sub_1000124C8(*&v9[*(v17 + 48)], *&v9[*(v17 + 48) + 8]);
  }

  sub_100142410(v9, v13, type metadata accessor for NANPairing.GeneratedKeys);
  v18 = *(v10 + 20);
  v19 = type metadata accessor for SymmetricKey();
  (*(*(v19 - 8) + 16))(a2, &v13[v18], v19);
  return sub_10012A684(v13, type metadata accessor for NANPairing.GeneratedKeys);
}

uint64_t sub_10012CBB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a3;
  v7 = *(a4 + 40);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v21[0] = a1;
  v21[1] = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 8);
  sub_10000AB0C(a1, a2);
  v14 = v21[3];
  result = v13(v21, &type metadata for Data, &protocol witness table for Data, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v14)
  {
    v16 = v18;
    (*(v7 + 40))(v11, v8, v7);
    return (*(v16 + 8))(v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_10012CD54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_100143300(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_10004AF78(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_1000124C8(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10012CEA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a3;
  v7 = *(a4 + 40);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v21[0] = a1;
  v21[1] = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 16);
  sub_10000AB0C(a1, a2);
  v14 = v21[3];
  result = v13(v21, &type metadata for Data, &protocol witness table for Data, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v14)
  {
    v16 = v18;
    (*(v7 + 40))(v11, v8, v7);
    return (*(v16 + 8))(v11, AssociatedTypeWitness);
  }

  return result;
}

uint8_t *sub_10012D044(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = v8;
  v70 = a5;
  v71 = a6;
  *&v69 = a1;
  *(&v69 + 1) = a2;
  v13 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v14 = *(v13 - 1);
  __chkstk_darwin();
  v68 = &v55 - v15;
  v67 = type metadata accessor for SymmetricKey();
  v16 = *(v67 - 8);
  __chkstk_darwin();
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for String.Encoding();
  v18 = *(v73 - 8);
  __chkstk_darwin();
  v72 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = HIBYTE(a4) & 0xF;
  v74 = a3;
  v75 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v20 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v48 = "Invalid label passed to KDF";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v46, v47, v48, v7, 2u);
    }

LABEL_33:

    sub_10000B02C();
    swift_allocError();
    *v49 = xmmword_1004881C0;
    *(v49 + 16) = 1;
    swift_willThrow();
    return v7;
  }

  if (a7 < 1)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v48 = "Invalid output bit length passed to KDF";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v21 = static SHA256Digest.byteCount.getter();
  if ((v21 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_36;
  }

  v22 = ceil(a7 / (8 * v21));
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v63 = xmmword_100480A90;
  v82 = xmmword_100480A90;
  if (a7 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v23 = v22;
  LOWORD(v79) = a7;
  v64 = sub_10004F3B0(&v79, &v79 + 2);
  v65 = v24;
  v62 = v23;
  if (v23 < 1)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  v55 = a7;
  p_dst = &__dst;
  v60 = (v18 + 8);
  v59 = (v14 + 16);
  v58 = (v14 + 8);
  v57 = (v16 + 8);
  v25 = 1;
  v26 = v66;
  while (1)
  {
    v77 = v25;
    v80 = &type metadata for UnsafeRawBufferPointer;
    v81 = &protocol witness table for UnsafeRawBufferPointer;
    *&v79 = &v77;
    *(&v79 + 1) = p_dst;
    v27 = sub_100029B34(&v79, &type metadata for UnsafeRawBufferPointer);
    v28 = *v27;
    v76 = v9;
    if (v28 && (v29 = v27[1], v30 = v29 - v28, v29 != v28))
    {
      if (v30 <= 14)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v29 - v28;
        memcpy(&__dst, v28, v29 - v28);
        v31 = __dst;
        v32 = v56 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v56 = v32;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v40 = __DataStorage.init(bytes:length:)();
        v41 = v40;
        if (v30 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          *(v31 + 24) = v30;
          v32 = v41 | 0x8000000000000000;
        }

        else
        {
          v31 = v30 << 32;
          v32 = v40 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v31 = 0;
      v32 = 0xC000000000000000;
    }

    sub_100002A00(&v79);
    __dst = v63;
    Data.append(_:)();
    v33 = v72;
    static String.Encoding.ascii.getter();
    v34 = String.data(using:allowLossyConversion:)();
    v36 = v35;
    (*v60)(v33, v73);
    if (v36 >> 60 == 15)
    {
      goto LABEL_42;
    }

    Data.append(_:)();
    sub_100017554(v34, v36);
    Data.append(_:)();
    Data.append(_:)();
    v79 = v69;
    sub_10000AB0C(v69, *(&v69 + 1));
    SymmetricKey.init<A>(data:)();
    v79 = __dst;
    sub_10000AB0C(__dst, *(&__dst + 1));
    type metadata accessor for SHA256();
    sub_10014400C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1000BA0A4();
    v37 = v68;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(v79, *(&v79 + 1));
    v80 = v13;
    v81 = sub_10000CADC(&qword_10058DF80, &qword_10058CB98, &unk_100488540, &protocol conformance descriptor for HashedAuthenticationCode<A>);
    v38 = sub_1000297D4(&v79);
    (*v59)(v38, v37, v13);
    sub_100029B34(&v79, v80);
    __chkstk_darwin();
    *(&v55 - 2) = &v82;
    v39 = v76;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v9 = v39;
    sub_1000124C8(v31, v32);
    (*v58)(v37, v13);
    (*v57)(v26, v67);
    sub_1000124C8(__dst, *(&__dst + 1));
    sub_100002A00(&v79);
    if (v62 == v25)
    {
      break;
    }

    if (++v25 == 0x10000)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  v42 = v55;
  v43 = v82;
  sub_10000AB0C(v82, *(&v82 + 1));
  sub_1002B9AE4((v42 + 7) >> 3, v43, *(&v43 + 1), &__dst);
  if ((v42 & 7) == 0 || (v44 = sub_1001433B4(__dst, *(&__dst + 1)), (v44 & 0x100) != 0))
  {
    sub_1000124C8(v82, *(&v82 + 1));
    v51 = v64;
    v52 = v65;
  }

  else
  {
    v45 = v44 & ~(-1 << (v55 & 7));
    sub_10012D9F0();
    v50 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
    v80 = v50;
    v81 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
    LOBYTE(v79) = v45;
    LOBYTE(v77) = *sub_100029B34(&v79, v50);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_100002A00(&v79);
    sub_1000124C8(v64, v65);
    v52 = *(&v82 + 1);
    v51 = v82;
  }

  sub_1000124C8(v51, v52);
  v53 = *(&__dst + 1);
  v7 = __dst;
  sub_10000AB0C(__dst, *(&__dst + 1));
  sub_1000124C8(v7, v53);
  return v7;
}

void sub_10012D9F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_22;
    }
  }

  if ((sub_100143218() & 0x100) == 0)
  {
    return;
  }

  v8 = *v0;
  v9 = v0[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(v8 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v9);
    v12 = v8 >> 32;
    if (!v10)
    {
      v12 = v11;
    }
  }

  if (__OFSUB__(v12, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_10014316C(v12 - 1);
}

uint64_t sub_10012DAB4(uint64_t a1)
{
  v242 = type metadata accessor for Logger();
  v240 = *(v242 - 8);
  __chkstk_darwin();
  *&v244 = &v216 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v223 = *(AssociatedTypeWitness - 8);
  v224 = AssociatedTypeWitness;
  __chkstk_darwin();
  v222 = &v216 - v7;
  *&v225 = type metadata accessor for NANPairing.SharedAssociation(0);
  __chkstk_darwin();
  v232 = &v216 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s3SAEVMa(0);
  __chkstk_darwin();
  v235 = &v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v237 = v4;
  v238 = &v216 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v236 = v5;
  *&v12 = v5;
  v234 = v11;
  *(&v12 + 1) = v11;
  *&v13 = v4;
  v233 = *(a1 + 40);
  *(&v13 + 1) = v233;
  v252 = v12;
  v253 = v13;
  v14 = type metadata accessor for NANPairing.PASN.State(0, &v252);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v230 = &v216 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v243 = &v216 - v17;
  __chkstk_darwin();
  v19 = &v216 - v18;
  __chkstk_darwin();
  v221 = (&v216 - v20);
  v21 = __chkstk_darwin();
  v23 = &v216 - v22;
  v24 = (v1 + *(a1 + 80));
  v229 = *v24;
  v25 = v24[1];
  v227 = *(v24 + 2);
  v228 = v25;
  v26 = *(a1 + 96);
  v241 = *(v15 + 16);
  v241(&v216 - v22, v1 + v26, v14, v21);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v275 = *(v15 + 8);
    v275(v23, v14);
    v48 = v241;
    (v241)(v19, v1 + v26, v14);
    v49 = v240;
    v50 = v242;
    (*(v240 + 16))(v244, v1, v242);
    v48(v243, v19, v14);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      LODWORD(v238) = v52;
      v53 = v227 << 16;
      v54 = swift_slowAlloc();
      v55 = v14;
      v239 = v19;
      v237 = v51;
      v56 = v54;
      v236 = swift_slowAlloc();
      *&v252 = v236;
      *v56 = 136315394;
      v57 = WiFiAddress.description.getter(v229 | (v228 << 8) | v53);
      v59 = sub_100002320(v57, v58, &v252);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v60 = v230;
      v61 = v243;
      (v241)(v230, v243, v55);
      v62 = v275;
      v275(v61, v55);
      v220 = v15 + 8;
      v63 = sub_10012BF38(v55);
      v65 = v64;
      v62(v60, v55);
      v66 = sub_100002320(v63, v65, &v252);

      *(v56 + 14) = v66;
      v67 = v237;
      _os_log_impl(&_mh_execute_header, v237, v238, "Cannot generate a PASN request for %s when in state: %s", v56, 0x16u);
      swift_arrayDestroy();

      v19 = v239;
      v14 = v55;

      (*(v49 + 8))(v244, v242);
    }

    else
    {
      v62 = v275;
      v275(v243, v14);

      (*(v49 + 8))(v244, v50);
    }

    sub_10000B02C();
    swift_allocError();
    *v68 = xmmword_1004881C0;
    *(v68 + 16) = 1;
    swift_willThrow();
    v62(v19, v14);
    return v14;
  }

  v228 = v26;
  v229 = v14;
  (*(v15 + 8))(v23, v14);
  sub_10005DC58(&qword_10058DF88, &unk_100488550);
  v27 = swift_allocObject();
  v28 = *(a1 + 52);
  v29 = v1;
  v30 = *(v1 + *(a1 + 56));
  v244 = xmmword_100480F40;
  v27[1] = xmmword_100480F40;
  v31 = *(v1 + *(a1 + 84));
  *(v27 + 32) = v30;
  v241 = v27;
  *(v27 + 33) = v31;
  v32 = v1 + v28;
  v33 = v238;
  sub_10012A6E4(v32, v238, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v231 = v29;
  v220 = v15;
  v226 = a1;
  if (!EnumCaseMultiPayload)
  {
    v69 = *(v33 + 80);
    v256 = *(v33 + 64);
    v257 = v69;
    v258 = *(v33 + 96);
    v70 = *(v33 + 16);
    v252 = *v33;
    v253 = v70;
    v71 = *(v33 + 48);
    v254 = *(v33 + 32);
    v255 = v71;
    v72 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(v33 + *(v72 + 48), v235, _s3SAEVMa);
    v73 = v255;
    if (v255 == 0x8000)
    {
      v74 = 0;
    }

    else
    {
      *&v259 = 0;
      swift_stdlib_random();
      v74 = v259;
    }

    sub_1000449CC(0, 0, 0, 0xF000000000000000);
    LOBYTE(v247) = v74;
    *(&v247 + 1) = 1;
    *(&v247 + 1) = 0;
    v248[0] = 0uLL;
    *&v248[1] = 0xF000000000000000;
    WORD4(v248[1]) = v73;
    LOBYTE(v249) = v74;
    *(&v249 + 1) = 1;
    *(&v249 + 1) = 0;
    v250 = 0uLL;
    *&v251 = 0xF000000000000000;
    WORD4(v251) = v73;
    sub_10012A628(&v247, &v259);
    sub_1001440B0(&v249);
    sub_10005DC58(&unk_100597530, &qword_100482F50);
    v125 = type metadata accessor for NANAttribute(0);
    v126 = *(*(v125 - 8) + 72);
    v239 = (*(*(v125 - 8) + 80) + 32) & ~*(*(v125 - 8) + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_100480F30;
    if (qword_10058AB40 != -1)
    {
      v215 = v127;
      swift_once();
      v127 = v215;
    }

    v123 = static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
    v240 = v127;
    if (v252 == 1)
    {
      v128 = qword_10058AB48;

      if (v128 != -1)
      {
        swift_once();
      }

      v121 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
    }

    else
    {
      v121 = _swiftEmptyArrayStorage;
    }

    v246 = v123;
    v129 = *(v123 + 16);
    v130 = *(v121 + 2);
    v242 = v126;
    v243 = v125;
    if (v129 && v130)
    {
      v131 = 0;
      v120 = v130 - 1;
      v110 = v129 - 1;
      while (1)
      {
        v45 = v121[v131 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1000C28C4(v123);
        }

        v129 = *(v123 + 16);
        if (v131 >= v129)
        {
          goto LABEL_115;
        }

        *(v123 + v131 + 32) |= v45;
        if (v110 != v131)
        {
          v124 = v120 == v131++;
          if (!v124)
          {
            continue;
          }
        }

        break;
      }
    }

    v132 = (v240 + v239);
    v246 = v123;
    if (v129 >= v130)
    {
    }

    else
    {
      sub_100234FC0(v121, (v121 + 32), v129, (2 * v130) | 1);
      v123 = v246;
    }

    v14 = v275;
    v150 = v241;
    *v132 = v123;
    swift_storeEnumTagMultiPayload();
    v151 = v242;
    v152 = (v132 + v242);
    v153 = v248[0];
    *v152 = v247;
    v152[1] = v153;
    *(v152 + 26) = *(v248 + 10);
    swift_storeEnumTagMultiPayload();
    v154 = v132 + 2 * v151;
    *v154 = 0;
    *(v154 + 1) = v150;
    swift_storeEnumTagMultiPayload();
    sub_10012A628(&v247, v245);
    v155 = v235;
    v157 = sub_1002210A4(v156);
    if (v14)
    {
      sub_10012A684(v155, _s3SAEVMa);

      sub_1001440B0(&v247);
      sub_100141458(&v252);
      return v14;
    }

    v193 = v157;
    v194 = v158;
    v14 = v159;
    v195 = v160;
    v196 = sub_100033AA8(_swiftEmptyArrayStorage);
    v275 = 0;
    v197 = v196;
    v198 = type metadata accessor for BinaryEncoder();
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_100480A90;
    *(v199 + 32) = v197;
    v245[3] = v198;
    v245[4] = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v245[0] = v199;

    v200 = v275;
    IEEE80211Frame.Management.Authentication.encode(to:)(v245, v193, v194, v14, v195);
    if (v200)
    {
      sub_1001440B0(&v247);
      sub_100141458(&v252);

      sub_1000B21F4(v193, v194, v14, v195);
      sub_10012A684(v235, _s3SAEVMa);
      sub_100002A00(v245);
      return v14;
    }

    sub_1000B21F4(v193, v194, v14, v195);
    sub_100002A00(v245);
    swift_beginAccess();
    v210 = *(v199 + 16);
    v211 = *(v199 + 24);
    sub_10000AB0C(v210, v211);

    v212 = v211 >> 62;
    v117 = v240;
    if ((v211 >> 62) > 1)
    {
      v110 = v231;
      if (v212 != 2)
      {
        goto LABEL_111;
      }

      result = *(v210 + 16);
      v213 = *(v210 + 24);
    }

    else
    {
      v110 = v231;
      if (!v212)
      {
        goto LABEL_111;
      }

      result = v210;
      v213 = v210 >> 32;
    }

    if (v213 < result)
    {
      __break(1u);
      goto LABEL_119;
    }

LABEL_111:
    v275 = 0;
    v111 = Data.subdata(in:)();
    v112 = v214;
    sub_1000124C8(v210, v211);
    sub_100141458(&v252);
    sub_1001440B0(&v247);
    sub_10012A684(v235, _s3SAEVMa);
    v109 = v226;
    if (*(v110 + *(v226 + 92)))
    {
      LODWORD(v239) = 0;
      v116 = 0;
      v263 = v259;
      v264 = v260;
      v265 = v261;
      v243 = 0xF000000000000000;
      LODWORD(v238) = 3;
      v113 = 5;
      goto LABEL_76;
    }

    LODWORD(v239) = 0;
    v116 = 0;
    v266 = v259;
    v267 = v260;
    v268 = v261;
    v243 = 0xF000000000000000;
    LODWORD(v238) = 3;
    v113 = 5;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v35 = *(v33 + 80);
    v256 = *(v33 + 64);
    v257 = v35;
    v258 = *(v33 + 96);
    v36 = *(v33 + 16);
    v252 = *v33;
    v253 = v36;
    v37 = *(v33 + 48);
    v254 = *(v33 + 32);
    v255 = v37;
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v230 = swift_allocObject();
    *(v230 + 1) = v244;
    v38 = sub_10005DC58(&unk_100597530, &qword_100482F50);
    v39 = type metadata accessor for NANAttribute(0);
    v40 = *(*(v39 - 8) + 80);
    v41 = (v40 + 32) & ~v40;
    v242 = *(*(v39 - 8) + 72);
    v227 = 3 * v242;
    v232 = v40;
    v42 = swift_allocObject();
    v225 = xmmword_100480F30;
    *(v42 + 16) = xmmword_100480F30;
    v235 = v41;
    v219 = v42;
    v43 = (v42 + v41);
    *(v43 + 26) = *(v33 + 34);
    v44 = *(v33 + 24);
    *v43 = *(v33 + 8);
    v43[1] = v44;
    v243 = v39;
    swift_storeEnumTagMultiPayload();
    sub_10012A628(&v252 + 8, &v259);
    if (qword_10058AB40 != -1)
    {
      swift_once();
    }

    v45 = static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
    LODWORD(v238) = v252;
    if (v252 == 1)
    {
      v46 = qword_10058AB48;

      if (v46 != -1)
      {
        swift_once();
      }

      v47 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
    }

    else
    {
      v47 = _swiftEmptyArrayStorage;
    }

    *&v247 = v45;
    v118 = *(v45 + 16);
    v119 = v47[2];
    v239 = &v252 + 8;
    v240 = v38;
    v217 = v119;
    *&v218 = v47;
    if (v118 && v119)
    {
      v120 = 0;
      v121 = (v119 - 1);
      v122 = v118 - 1;
      v123 = v45;
      while (1)
      {
        LODWORD(v110) = *(v47 + v120 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1000C28C4(v123);
        }

        v118 = *(v123 + 16);
        if (v120 >= v118)
        {
          break;
        }

        *(v123 + v120 + 32) |= v110;
        if (v122 != v120)
        {
          v124 = v121 == v120++;
          if (!v124)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v123 = v45;
LABEL_31:
    *&v247 = v123;
    if (v118 >= v217)
    {
    }

    else
    {
      sub_100234FC0(v218, v218 + 32, v118, (2 * v217) | 1);
      v123 = v247;
    }

    v135 = v241;
    v136 = v239;
    v137 = v242;
    *(v43 + v242) = v123;
    swift_storeEnumTagMultiPayload();
    v138 = 2 * v137;
    v139 = v43 + v138;
    *v139 = 0;
    *(v139 + 1) = v135;
    swift_storeEnumTagMultiPayload();
    v140 = v230;
    *(v230 + 4) = v219;
    v141 = v260;
    *(v140 + 40) = v259;
    *(v140 + 56) = v141;
    *(v140 + 72) = v261;
    v140[88] = 8;
    v142 = v235;
    v143 = swift_allocObject();
    *(v143 + 16) = v225;
    v121 = (v143 + v142);
    *(v121 + 26) = *(v136 + 26);
    v144 = v136[1];
    *v121 = *v136;
    *(v121 + 1) = v144;
    swift_storeEnumTagMultiPayload();
    if (v238)
    {
      sub_10012A628(v136, &v249);
      v145 = qword_10058AB48;

      if (v145 != -1)
      {
        swift_once();
      }

      v146 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
    }

    else
    {
      sub_10012A628(v136, &v249);

      v146 = _swiftEmptyArrayStorage;
    }

    v245[0] = v45;
    v147 = *(v45 + 16);
    v123 = v146[2];
    v239 = v146;
    v240 = v143;
    *&v218 = v138;
    if (v147 && v123)
    {
      v120 = 0;
      v110 = (v146 + 4);
      v148 = v147 - 1;
      while (1)
      {
        v149 = *(v110 + v120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1000C28C4(v45);
        }

        v147 = *(v45 + 16);
        if (v120 >= v147)
        {
          goto LABEL_116;
        }

        *(v45 + v120 + 32) |= v149;
        if (v148 != v120)
        {
          v124 = v123 - 1 == v120++;
          if (!v124)
          {
            continue;
          }
        }

        break;
      }
    }

    v245[0] = v45;
    if (v147 >= v123)
    {
    }

    else
    {
      sub_100234FC0(v239, v239 + 32, v147, (2 * v123) | 1);
      v45 = v245[0];
    }

    v110 = v231;
    v109 = v226;
    v117 = v240;
    v161 = v241;
    *&v121[v242] = v45;
    swift_storeEnumTagMultiPayload();
    v162 = &v121[v218];
    *v162 = 0;
    *(v162 + 1) = v161;
    swift_storeEnumTagMultiPayload();
    sub_100141458(&v252);
    if (*(v110 + v109[23]))
    {
      v111 = 0;
      v112 = 0;
      LODWORD(v238) = 0;
      v116 = 0;
      v263 = v249;
      v264 = v250;
      v265 = v251;
      v243 = 0xF000000000000000;
      LODWORD(v239) = 1;
      v113 = -1;
LABEL_76:
      v115 = v233;
      v114 = v234;
      goto LABEL_77;
    }

    v111 = 0;
    v112 = 0;
    LODWORD(v238) = 0;
    v116 = 0;
    v266 = v249;
    v267 = v250;
    v268 = v251;
    v243 = 0xF000000000000000;
    LODWORD(v239) = 1;
    v113 = -1;
LABEL_79:
    v134 = v233;
    v133 = v234;
    goto LABEL_80;
  }

  v75 = v33;
  v76 = v232;
  sub_100142410(v75, v232, type metadata accessor for NANPairing.SharedAssociation);
  v77 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*(v29 + *(a1 + 76)) | (*(v29 + *(a1 + 76) + 2) << 16), *(v76 + *(v225 + 24)), *(v76 + *(v225 + 24) + 8));
  v79 = v78;
  v81 = v80;
  v83 = v82;
  *&v259 = v77;
  *(&v259 + 1) = v78;
  *(&v253 + 1) = &type metadata for Data;
  *&v254 = &protocol witness table for Data;
  *&v252 = v80;
  *(&v252 + 1) = v82;
  v84 = sub_100029B34(&v252, &type metadata for Data);
  v85 = *v84;
  v86 = v84[1];
  v227 = v77;
  v235 = v79;
  sub_10000AB0C(v77, v79);
  v238 = v81;
  v239 = v83;
  sub_10000AB0C(v81, v83);
  v87 = v275;
  sub_100178A18(v85, v86, &v259);
  v275 = v87;
  sub_100002A00(&v252);
  result = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v259, *(&v259 + 1));
  v242 = result;
  v243 = v89;
  if (v89 >> 60 != 15)
  {
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v90 = swift_allocObject();
    *(v90 + 16) = v244;
    v240 = sub_10005DC58(&unk_100597530, &qword_100482F50);
    v91 = *(type metadata accessor for NANAttribute(0) - 8);
    v92 = *(v91 + 72);
    v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    *&v225 = v93 + 2 * v92;
    v94 = v92;
    v219 = v92;
    v95 = swift_allocObject();
    v218 = xmmword_100483520;
    *(v95 + 16) = xmmword_100483520;
    v96 = (v95 + v93);
    v97 = v227;
    v98 = v235;
    *v96 = v227;
    v96[1] = v98;
    v99 = v239;
    v96[2] = v238;
    v96[3] = v99;
    swift_storeEnumTagMultiPayload();
    v100 = v95 + v93 + v94;
    *v100 = 0;
    v101 = v241;
    *(v100 + 8) = v241;
    swift_storeEnumTagMultiPayload();
    *(v90 + 32) = v95;
    v102 = v260;
    *(v90 + 40) = v259;
    *(v90 + 56) = v102;
    *(v90 + 72) = v261;
    v230 = v90;
    *(v90 + 88) = 8;
    v103 = swift_allocObject();
    *(v103 + 16) = v218;
    v240 = v103;
    v104 = (v103 + v93);
    v105 = v235;
    *v104 = v97;
    v104[1] = v105;
    v106 = v238;
    v107 = v239;
    v104[2] = v238;
    v104[3] = v107;
    swift_storeEnumTagMultiPayload();
    v108 = v104 + v219;
    *v108 = 0;
    *(v108 + 1) = v101;
    swift_storeEnumTagMultiPayload();

    sub_10000AB0C(v97, v105);
    sub_10000AB0C(v106, v107);
    sub_10012A684(v232, type metadata accessor for NANPairing.SharedAssociation);
    v109 = v226;
    v110 = v231;
    if (*(v231 + *(v226 + 92)) == 1)
    {
      v111 = 0;
      v112 = 0;
      LODWORD(v238) = 0;
      v263 = v252;
      v264 = v253;
      v265 = v254;
      LODWORD(v239) = 1;
      v113 = -1;
      v115 = v233;
      v114 = v234;
      v116 = v242;
      v117 = v240;
LABEL_77:
      LODWORD(v235) = sub_100143BF0(v110 + v109[22], v236, v114, v237, v115);
      v240 = v164;
      v241 = v163;
      v165 = &v263;
      goto LABEL_81;
    }

    v111 = 0;
    v112 = 0;
    LODWORD(v238) = 0;
    v266 = v252;
    v267 = v253;
    v268 = v254;
    LODWORD(v239) = 1;
    v113 = -1;
    v134 = v233;
    v133 = v234;
    v116 = v242;
    v117 = v240;
LABEL_80:
    LODWORD(v235) = sub_100143A98(v110 + v109[22], v236, v133, v237, v134);
    v240 = v167;
    v241 = v166;
    v165 = &v266;
LABEL_81:
    v270 = 0u;
    v271 = 0u;
    v168 = v165[1];
    *&v274[8] = *v165;
    *&v269 = v111;
    *(&v269 + 1) = v112;
    v272 = 0;
    v273 = v113;
    *v274 = v117;
    *&v274[24] = v168;
    *&v274[40] = v165[2];
    v274[56] = 8;
    sub_10005DC58(&qword_10058CC88, &unk_100482F90);
    v123 = swift_allocObject();
    *(v123 + 16) = v244;
    *(v123 + 32) = *(v110 + v109[15]);
    sub_10005DC58(&qword_10058CC80, &qword_100482F88);
    v45 = swift_allocObject();
    *(v45 + 16) = v244;
    LODWORD(v110) = *(v110 + v109[18]);
    *(v45 + 32) = v110;
    sub_10005DC58(&qword_10058CC08, &unk_100488510);
    v169 = swift_allocObject();
    *(v169 + 32) = v116;
    v120 = v169 + 32;
    v170 = v243;
    *(v169 + 40) = v243;
    sub_10005D67C(v116, v170);
    v242 = v116;
    if (v170 >> 60 == 15)
    {
      v121 = _swiftEmptyArrayStorage;
LABEL_87:
      v175 = v275;
      swift_setDeallocating();
      sub_100016290(v120, &qword_10058CC10, &qword_100482F10);
      swift_deallocClassInstance();
      if (v110 == 7)
      {
        v176 = v231;
        if (qword_10058AAE8 != -1)
        {
          swift_once();
        }

        v177 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
      }

      else
      {
        v177 = _swiftEmptyArrayStorage;
        v176 = v231;
      }

      v178 = *(v176 + *(v226 + 64));
      LOBYTE(v247) = 0;
      sub_10005DC58(&qword_10058D640, &unk_100488520);
      v179 = swift_allocObject();
      *(v179 + 16) = xmmword_100480F30;
      *(v179 + 32) = 1;
      *(v179 + 34) = 6;
      *(v179 + 40) = v123;
      *(v179 + 48) = v45;
      *(v179 + 56) = 16576;
      *(v179 + 64) = v121;
      *(v179 + 72) = 6;
      *(v179 + 88) = 0;
      v180 = *&v274[16];
      *(v179 + 96) = *v274;
      *(v179 + 112) = v180;
      *(v179 + 128) = *&v274[32];
      *(v179 + 137) = *&v274[41];
      *(v179 + 160) = v177;
      *(v179 + 216) = 1;
      v259 = v269;
      v260 = v270;
      v261 = v271;
      v262 = v272;
      v181 = v273;
      v182 = v240;
      sub_10005D67C(v241, v240);
      sub_1000C2DC8(v274, &v252);
      if (v181 != 255)
      {
        sub_100012400(&v269, &v252, &qword_10058DF90, &unk_100488560);
        v179 = sub_10011727C(1, 4, 1, v179);
        *(v179 + 16) = 4;
        v183 = v260;
        *(v179 + 224) = v259;
        *(v179 + 240) = v183;
        *(v179 + 256) = v261;
        *(v179 + 272) = v262;
        *(v179 + 280) = v181;
      }

      v184 = swift_allocObject();
      *(v184 + 16) = v244;
      v185 = v247;
      *(v184 + 32) = v238;
      *(v184 + 40) = 0;
      *(v184 + 48) = 0;
      *(v184 + 56) = 0xF000000000000000;
      *(v184 + 64) = v178;
      *(v184 + 65) = v235;
      *(v184 + 66) = v185;
      v186 = v241;
      *(v184 + 72) = v241;
      *(v184 + 80) = v182;
      *(v184 + 88) = 6;
      *&v252 = v179;

      sub_1002353A8(v184);
      v14 = v252;

      v187 = sub_100033AA8(_swiftEmptyArrayStorage);
      v188 = v182;
      v189 = type metadata accessor for BinaryEncoder();
      v190 = swift_allocObject();
      *(v190 + 16) = xmmword_100480A90;
      *(v190 + 32) = v187;
      *(&v253 + 1) = v189;
      *&v254 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      *&v252 = v190;

      IEEE80211Frame.Management.Authentication.encode(to:)(&v252, v14, 0, 0, 0);
      if (v175)
      {

        sub_100016290(&v269, &qword_10058DF90, &unk_100488560);
        sub_1000C2E24(v274);
        sub_100017554(v186, v188);
        sub_100017554(v242, v243);

        sub_100002A00(&v252);
        if (v239)
        {
        }
      }

      else
      {
        sub_100002A00(&v252);
        swift_beginAccess();
        v191 = *(v190 + 16);
        v192 = *(v190 + 24);
        sub_10000AB0C(v191, v192);

        *&v249 = sub_10012996C(v191, v192);
        *(&v249 + 1) = v201;
        sub_1000BA0A4();
        v241 = v186;
        v202 = v222;
        static HashFunction.hash<A>(data:)();
        sub_1000124C8(v249, *(&v249 + 1));
        v203 = v224;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v205 = sub_1001434FC(v202, v203, *(AssociatedConformanceWitness + 32));
        v207 = v206;
        (*(v223 + 8))(v202, v203);
        sub_100017554(v242, v243);
        sub_1000C2E24(v274);
        sub_100016290(&v269, &qword_10058DF90, &unk_100488560);
        sub_100017554(v241, v240);
        sub_1000124C8(v191, v192);
        v208 = v221;
        *v221 = v205;
        v208[1] = v207;
        v209 = v229;
        swift_storeEnumTagMultiPayload();
        (*(v220 + 40))(v231 + v228, v208, v209);
        if (v239)
        {
        }
      }

      return v14;
    }

    sub_10000AB0C(v116, v170);
    v121 = _swiftEmptyArrayStorage;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_84:
      v172 = *(v121 + 2);
      v171 = *(v121 + 3);
      if (v172 >= v171 >> 1)
      {
        v121 = sub_100117388((v171 > 1), v172 + 1, 1, v121);
      }

      *(v121 + 2) = v172 + 1;
      v173 = &v121[16 * v172];
      v174 = v243;
      *(v173 + 4) = v242;
      *(v173 + 5) = v174;
      goto LABEL_87;
    }

LABEL_117:
    v121 = sub_100117388(0, *(v121 + 2) + 1, 1, v121);
    goto LABEL_84;
  }

LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_10012F7D8(uint64_t a1, uint64_t a2, char *a3, int a4, int *a5)
{
  v6 = v5;
  LODWORD(v704) = a4;
  v703 = a3;
  v665 = a2;
  v698 = a1;
  v8 = *(a5 + 4);
  v9 = *(a5 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v669 = *(AssociatedTypeWitness - 8);
  v670 = AssociatedTypeWitness;
  __chkstk_darwin();
  v666 = &v633 - v11;
  v12 = type metadata accessor for HashedAuthenticationCode();
  v663 = *(v12 - 8);
  v664 = v12;
  __chkstk_darwin();
  v662 = &v633 - v13;
  v657 = sub_10005DC58(&qword_10058DF68, &unk_1004884F0);
  __chkstk_darwin();
  v658 = &v633 - v14;
  v15 = type metadata accessor for SymmetricKeySize();
  v655 = *(v15 - 8);
  v656 = v15;
  __chkstk_darwin();
  v654 = &v633 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = type metadata accessor for SymmetricKey();
  v671 = *(v676 - 8);
  __chkstk_darwin();
  v660 = &v633 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v672 = &v633 - v18;
  __chkstk_darwin();
  v673 = &v633 - v19;
  __chkstk_darwin();
  v674 = &v633 - v20;
  __chkstk_darwin();
  v675 = &v633 - v21;
  _s3SAEVMa(0);
  __chkstk_darwin();
  v653 = &v633 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v643 = type metadata accessor for NANPairing.SharedAssociation(0);
  __chkstk_darwin();
  v649 = (&v633 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v682 = &v633 - v24;
  v752 = type metadata accessor for Logger();
  v714 = *(v752 - 8);
  __chkstk_darwin();
  *&v693 = &v633 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v713 = &v633 - v26;
  __chkstk_darwin();
  v701 = (&v633 - v27);
  __chkstk_darwin();
  v700 = (&v633 - v28);
  __chkstk_darwin();
  v697 = &v633 - v29;
  __chkstk_darwin();
  v695 = &v633 - v30;
  __chkstk_darwin();
  v694 = &v633 - v31;
  __chkstk_darwin();
  v686 = &v633 - v32;
  __chkstk_darwin();
  v659 = &v633 - v33;
  __chkstk_darwin();
  v645 = &v633 - v34;
  __chkstk_darwin();
  v644 = &v633 - v35;
  __chkstk_darwin();
  v646 = &v633 - v36;
  __chkstk_darwin();
  v647 = &v633 - v37;
  __chkstk_darwin();
  v648 = &v633 - v38;
  __chkstk_darwin();
  v680 = &v633 - v39;
  __chkstk_darwin();
  v641 = &v633 - v40;
  __chkstk_darwin();
  v640 = &v633 - v41;
  __chkstk_darwin();
  v684 = (&v633 - v42);
  __chkstk_darwin();
  v679 = &v633 - v43;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v639 = (&v633 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v683 = &v633 - v45;
  __chkstk_darwin();
  v681 = &v633 - v46;
  v685 = type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v642 = &v633 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  *&v687 = &v633 - v48;
  v49 = type metadata accessor for SharedSecret();
  v50 = *(v49 - 8);
  v689 = v49;
  v690 = v50;
  __chkstk_darwin();
  *&v692 = &v633 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  *(&v687 + 1) = &v633 - v52;
  __chkstk_darwin();
  v688 = &v633 - v53;
  v54 = *(a5 + 3);
  v667 = v9;
  v668 = v8;
  *&v55 = v9;
  v651 = v54;
  *(&v55 + 1) = v54;
  *&v56 = v8;
  v650 = *(a5 + 5);
  *(&v56 + 1) = v650;
  v677 = v56;
  v678 = v55;
  *v725 = v55;
  *&v725[16] = v56;
  v57 = type metadata accessor for NANPairing.PASN.State(0, v725);
  v58 = *(v57 - 8);
  __chkstk_darwin();
  *&v712 = &v633 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v633 - v60;
  __chkstk_darwin();
  v699 = &v633 - v62;
  v63 = __chkstk_darwin();
  v65 = &v633 - v64;
  v66 = (v6 + a5[19]);
  v706 = *v66;
  v705 = v66[1];
  v707 = v66[2];
  v708 = v66[3];
  v709 = v66[4];
  v652 = v66;
  *&v710 = v66[5];
  v696 = a5;
  v67 = a5[24];
  v68 = v6;
  v711 = *(v58 + 16);
  v711(&v633 - v64, &v67[v6], v57, v63);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  v661 = v58;
  v70 = *(v58 + 8);
  v69 = v58 + 8;
  v71 = v65;
  v72 = v57;
  v702 = v70;
  (v70)(v71, v57);
  if (v6 != 3)
  {
    v704 = v69;
    v83 = v711;
    (v711)(v61, &v67[v68], v57);
    v84 = v714;
    v85 = v68;
    v86 = v752;
    (*(v714 + 16))(v713, v85, v752);
    (v83)(v712, v61, v72);
    v77 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v87))
    {
      v88 = swift_slowAlloc();
      v703 = v61;
      v700 = v77;
      v77 = v72;
      v89 = v88;
      v701 = swift_slowAlloc();
      *v725 = v701;
      *v89 = 136315394;
      v90 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v92 = sub_100002320(v90, v91, v725);

      *(v89 + 4) = v92;
      *(v89 + 12) = 2080;
      v93 = v699;
      v94 = v712;
      (v711)(v699, v712, v77);
      v95 = v702;
      (v702)(v94, v77);
      v96 = sub_10012BF38(v77);
      v98 = v97;
      (v95)(v93, v77);
      v99 = sub_100002320(v96, v98, v725);

      *(v89 + 14) = v99;
      v100 = v700;
      _os_log_impl(&_mh_execute_header, v700, v87, "Cannot generate a PASN response to %s when in state: %s", v89, 0x16u);
      swift_arrayDestroy();

      v72 = v77;
      v61 = v703;

      (*(v714 + 8))(v713, v752);
    }

    else
    {
      v95 = v702;
      (v702)(v712, v72);

      (*(v84 + 8))(v713, v86);
    }

    sub_10000B02C();
    swift_allocError();
    *v101 = xmmword_1004881C0;
    *(v101 + 16) = 1;
    swift_willThrow();
    (v95)(v61, v72);
    return v77;
  }

  v713 = v67;
  if (((v703 & 0x1000000000000000) != 0) | (2 * v704))
  {
    v73 = v714;
    v74 = v701;
    v75 = v752;
    (*(v714 + 16))(v701, v68, v752);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v725 = v79;
      *v78 = 136315138;
      v80 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v82 = sub_100002320(v80, v81, v725);

      *(v78 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "Cannot generate a PASN response to %s because the authentication frame received was not a PASN request frame", v78, 0xCu);
      sub_100002A00(v79);

      (*(v73 + 8))(v74, v752);
    }

    else
    {

      (*(v73 + 8))(v74, v75);
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v121 = xmmword_1004881C0;
    *(v121 + 16) = 1;
    swift_willThrow();
    return v77;
  }

  v102 = v698;
  sub_100135CC0(v698, &v732);
  v103 = v733;
  if (!v733)
  {
LABEL_17:
    v113 = v714;
    v77 = v700;
    v114 = v752;
    (*(v714 + 16))(v700, v68, v752);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v117 = 136315138;
      v118 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v120 = sub_100002320(v118, v119, v725);

      *(v117 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v115, v116, "Cannot generate a PASN response for the PASN request from %s because the RSN capabilities, extended RSN capabilities or PASN parameters are missing", v117, 0xCu);
      sub_100002A00(v77);

      (*(v113 + 8))(v700, v114);
    }

    else
    {

      (*(v113 + 8))(v77, v114);
    }

    goto LABEL_21;
  }

  v711 = v57;
  v77 = v732;
  v104 = v734;
  v105 = v735;
  *&v712 = v736;
  v106 = v737;
  v107 = v102 - 32;
  v108 = *(v102 + 16) + 1;
  do
  {
    if (!--v108)
    {
      goto LABEL_16;
    }

    v109 = *(v107 + 120);
    v107 += 64;
  }

  while (v109 != 1);

  if (!v110)
  {
LABEL_16:
    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    goto LABEL_17;
  }

  v701 = (v102 + 32);
  v702 = v110;
  sub_100135D74(v102, &v738);
  v111 = v740;
  v112 = v740;
  if (v740 == 3)
  {

    goto LABEL_16;
  }

  v743[0] = *v739;
  *(v743 + 15) = *&v739[15];
  if (v77 != 1 || (v77 & 0xFF0000) != 0x60000 || v106 != 6)
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    v123 = v714;
    goto LABEL_30;
  }

  v123 = v714;
  if ((v105 & 0x80) == 0 || (v105 & 0x40) == 0)
  {
LABEL_28:

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
LABEL_30:
    v124 = v68;
    goto LABEL_31;
  }

  v637 = v738;
  v638 = v741;
  v700 = v742;
  v77 = v696;
  v636 = v696[18];
  if (!sub_1001B4ED4(*(v68 + v636), v104))
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    v124 = v68;
    goto LABEL_31;
  }

  v134 = *(v77 + 60);
  if (!sub_1001B4F04(*(v68 + v134), v103))
  {
    goto LABEL_28;
  }

  if (v112 == 2)
  {
    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    goto LABEL_30;
  }

  v634 = v134;
  v635 = v68;
  v135 = *(v77 + 64);
  if (*(v68 + v135))
  {
    v136 = 20;
  }

  else
  {
    v136 = 19;
  }

  if ((v111 & 1) + 19 != v136)
  {
    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

LABEL_52:
    v124 = v635;
    v123 = v714;
LABEL_31:
    v125 = v697;
    v126 = v752;
    (*(v123 + 16))(v697, v124, v752);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v129 = 136315138;
      v130 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v132 = sub_100002320(v130, v131, v725);

      *(v129 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v127, v128, "Cannot generate a PASN response for the PASN request from %s because the RSN capabilities or PASN parameters do not match", v129, 0xCu);
      sub_100002A00(v77);

      (*(v123 + 8))(v697, v126);
    }

    else
    {

      (*(v123 + 8))(v125, v126);
    }

LABEL_34:
    sub_10000B02C();
    swift_allocError();
    *v133 = xmmword_1004881C0;
    *(v133 + 16) = 1;
    swift_willThrow();
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
    return v77;
  }

  v744 = *(v743 + 7);
  v745 = *(&v743[1] + 7);
  if (*(&v743[1] + 7) >> 60 != 15)
  {
    sub_100012400(&v744, v725, &qword_10058DF78, &unk_100488530);
    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    sub_100016290(&v744, &qword_10058DF78, &unk_100488530);
    goto LABEL_52;
  }

  if (v700 >> 60 == 15)
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    (*(v714 + 16))(v695, v635, v752);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v139 = 136315138;
      v140 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v142 = sub_100002320(v140, v141, v725);

      *(v139 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v137, v138, "Cannot generate a PASN response for the PASN request from %s because the public key in the request could not be found", v139, 0xCu);
      sub_100002A00(v77);
    }

    (*(v714 + 8))(v695, v752);
    goto LABEL_34;
  }

  if ((v111 & 0x10000) != 0)
  {
    sub_10005D67C(v638, v700);

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    (*(v714 + 16))(v694, v635, v752);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v147 = 136315138;
      v148 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v150 = sub_100002320(v148, v149, v725);

      *(v147 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v145, v146, "Cannot generate a PASN response for the PASN request from %s because the public key type in the request could not be found", v147, 0xCu);
      sub_100002A00(v77);
    }

    (*(v714 + 8))(v694, v752);
    sub_10000B02C();
    swift_allocError();
    *v151 = xmmword_1004881C0;
    *(v151 + 16) = 1;
    goto LABEL_64;
  }

  v143 = v696[22];
  sub_10000AB0C(v638, v700);
  if ((v111 & 0xFF00) == 0x400)
  {
    v144 = v691;
    sub_10012CBB0(v638, v700, v635 + v143, v696, *(&v687 + 1));
    v697 = v144;
    if (!v144)
    {
      *&v692 = *(&v687 + 1);
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  v152 = v691;
  sub_10012CEA0(v638, v700, v635 + v143, v696, v692);
  v697 = v152;
  if (v152)
  {
LABEL_61:

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    (*(v714 + 16))(v693, v635, v752);
    swift_errorRetain();
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v155 = 136315394;
      v157 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v159 = sub_100002320(v157, v158, v725);

      *(v155 + 4) = v159;
      *(v155 + 12) = 2112;
      swift_errorRetain();
      v160 = _swift_stdlib_bridgeErrorToNSError();
      *(v155 + 14) = v160;
      *v156 = v160;
      _os_log_impl(&_mh_execute_header, v153, v154, "Cannot generate a PASN response for the PASN request from %s because the shared secret agreement failed with error: %@", v155, 0x16u);
      sub_100016290(v156, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v77);
    }

    (*(v714 + 8))(v693, v752);
LABEL_64:
    swift_willThrow();
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v638, v700);
    return v77;
  }

LABEL_65:
  (*(v690 + 32))(v688, v692, v689);
  v695 = sub_100135E3C(v698);
  if (!v695)
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    (*(v714 + 16))(v686, v635, v752);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v172 = 136315138;
      v173 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v175 = sub_100002320(v173, v174, v725);

      *(v172 + 4) = v175;
      _os_log_impl(&_mh_execute_header, v170, v171, "Cannot generate a PASN response for the PASN request from %s because no NAN information element was carried in the request", v172, 0xCu);
      sub_100002A00(v77);
    }

    (*(v714 + 8))(v686, v752);
    goto LABEL_108;
  }

  sub_10005DC58(&qword_10058DF88, &unk_100488550);
  v161 = swift_allocObject();
  v162 = v696;
  v163 = v696[13];
  v164 = v635;
  v165 = *(v635 + v696[14]);
  v692 = xmmword_100480F40;
  *(v161 + 16) = xmmword_100480F40;
  LOBYTE(v162) = *(v164 + v162[21]);
  *(v161 + 32) = v165;
  v694 = v161;
  *(v161 + 33) = v162;
  *&v693 = v163;
  sub_10012A6E4(v164 + v163, v687, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v176 = v687;
    v167 = *v687;
    v177 = *(v687 + 24);
    v728 = *(v687 + 8);
    v729[0] = v177;
    *(v729 + 10) = *(v687 + 34);
    v178 = *(v687 + 72);
    *v725 = *(v687 + 56);
    *&v725[16] = v178;
    *&v725[26] = *(v687 + 82);
    v179 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_10012A684(v176 + *(v179 + 48), _s3SAEVMa);
    v730 = *v725;
    v731[0] = *&v725[16];
    *(v731 + 10) = *&v725[26];
    goto LABEL_73;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100142410(v687, v682, type metadata accessor for NANPairing.SharedAssociation);
    v186 = v695;

    v187 = v683;
    Array<A>.retrieve(attribute:)(34, v186, v683);

    v188 = type metadata accessor for NANAttribute(0);
    v189 = *(*(v188 - 8) + 48);
    if (v189(v187, 1, v188) == 1)
    {

      sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

      sub_100016290(v683, &unk_100595C00, &qword_10048F790);
    }

    else if (swift_getEnumCaseMultiPayload() == 30)
    {
      v691 = &v633;
      v194 = *(v683 + 8);
      __chkstk_darwin();
      v195 = v677;
      *(&v633 - 3) = v678;
      *(&v633 - 2) = v195;
      *(&v633 - 2) = v635;
      v196 = *(v194 + 16);
      if (v196)
      {
        v77 = v194 + 33;
        while (1)
        {
          *v725 = *(v77 - 1);
          v197 = v697;
          v198 = sub_100144120(v725);
          v697 = v197;
          if (v197 || v198)
          {
            break;
          }

          v77 += 2;
          if (!--v196)
          {
            goto LABEL_88;
          }
        }

        v221 = v695;

        v222 = v639;
        Array<A>.retrieve(attribute:)(43, v221, v639);

        if (v189(v222, 1, v188) == 1)
        {

          sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

          sub_100016290(v639, &unk_100595C00, &qword_10048F790);
        }

        else if (swift_getEnumCaseMultiPayload() == 38)
        {
          v226 = *v639;
          v225 = v639[1];
          v77 = v639[2];
          v691 = v639[3];
          v227 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*v652 | (*(v652 + 2) << 16), v226, v225);
          v229 = v228;
          v231 = v230;
          v233 = v232;
          *&v687 = v226;
          *(&v687 + 1) = v225;
          if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v227, v228, v226, v225))
          {
            v234 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v231, v233, v77, v691);
            sub_1000124C8(v227, v229);
            sub_1000124C8(v231, v233);
            if (v234)
            {
              *&v712 = sub_1001F8188(v712);
              sub_10005DC58(&qword_10058CC08, &unk_100488510);
              v235 = swift_allocObject();
              *(v235 + 16) = v692;
              v201 = *(&v687 + 1);
              v236 = v687;
              v722 = v687;
              *&v725[24] = &type metadata for Data;
              *&v725[32] = &protocol witness table for Data;
              *v725 = v77;
              v237 = v691;
              *&v725[8] = v691;
              v238 = sub_100029B34(v725, &type metadata for Data);
              v239 = *v238;
              v240 = v238[1];
              sub_10000AB0C(v236, v201);
              sub_10000AB0C(v77, v237);
              v241 = v697;
              sub_100178A18(v239, v240, &v722);
              v697 = v241;
              sub_100002A00(v725);
              *(v235 + 32) = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v722, *(&v722 + 1));
              *(v235 + 40) = v242;
              v193 = sub_1000BFCF4(v712, v235);

              swift_setDeallocating();
              sub_10005DC58(&qword_10058CC10, &qword_100482F10);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              if (v193)
              {
                sub_10012A684(v682, type metadata accessor for NANPairing.SharedAssociation);
                sub_1000124C8(v687, *(&v687 + 1));
                sub_1000124C8(v77, v691);
                *&v712 = _swiftEmptyArrayStorage;
                goto LABEL_139;
              }

              sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

              (*(v714 + 16))(v640, v635, v752);
              v447 = Logger.logObject.getter();
              v448 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v447, v448))
              {
                v449 = swift_slowAlloc();
                v450 = swift_slowAlloc();
                *v725 = v450;
                *v449 = 136315138;
                v451 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
                v453 = sub_100002320(v451, v452, v725);

                *(v449 + 4) = v453;
                _os_log_impl(&_mh_execute_header, v447, v448, "Cannot generate a PASN response for the PASN request from %s because the RSN capability PMK ID was invalid", v449, 0xCu);
                sub_100002A00(v450);
              }

              (*(v714 + 8))(v640, v752);
              sub_10000B02C();
              swift_allocError();
              *v454 = xmmword_1004881C0;
              *(v454 + 16) = 1;
              swift_willThrow();
              sub_100017554(v638, v700);
              sub_1000124C8(v687, *(&v687 + 1));
              sub_1000124C8(v77, v691);
LABEL_101:
              sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
              v212 = type metadata accessor for NANPairing.SharedAssociation;
              v213 = v682;
LABEL_102:
              sub_10012A684(v213, v212);
LABEL_109:
              (*(v690 + 8))(v688, v689);
              return v77;
            }

            sub_1000124C8(v687, *(&v687 + 1));
            sub_1000124C8(v77, v691);
            sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
          }

          else
          {

            sub_1000124C8(v687, *(&v687 + 1));
            sub_1000124C8(v77, v691);
            sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

            sub_1000124C8(v227, v229);
            sub_1000124C8(v231, v233);
          }
        }

        else
        {

          sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

          sub_10012A684(v639, type metadata accessor for NANAttribute);
        }

        (*(v714 + 16))(v641, v635, v752);
        v330 = Logger.logObject.getter();
        v331 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v330, v331))
        {
          v332 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v725 = v77;
          *v332 = 136315138;
          v333 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
          v335 = sub_100002320(v333, v334, v725);

          *(v332 + 4) = v335;
          _os_log_impl(&_mh_execute_header, v330, v331, "Cannot generate a PASN response for the PASN request from %s because the pairing identity resolution attribute was invalid", v332, 0xCu);
          sub_100002A00(v77);
        }

        (*(v714 + 8))(v641, v752);
LABEL_100:
        sub_10000B02C();
        swift_allocError();
        *v211 = xmmword_1004881C0;
        *(v211 + 16) = 1;
        swift_willThrow();
        sub_100017554(v638, v700);
        goto LABEL_101;
      }

LABEL_88:

      sub_100016290(&v732, &qword_10058DF70, &unk_100488500);
    }

    else
    {

      sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

      sub_10012A684(v683, type metadata accessor for NANAttribute);
    }

    (*(v714 + 16))(v680, v635, v752);
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v207 = 136315138;
      v208 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v210 = sub_100002320(v208, v209, v725);

      *(v207 + 4) = v210;
      _os_log_impl(&_mh_execute_header, v205, v206, "Cannot generate a PASN response for the PASN request from %s because the cipher suites information attribute was invalid", v207, 0xCu);
      sub_100002A00(v77);
    }

    (*(v714 + 8))(v680, v752);
    goto LABEL_100;
  }

  v167 = *v687;
  v168 = *(v687 + 24);
  v728 = *(v687 + 8);
  v729[0] = v168;
  *(v729 + 10) = *(v687 + 34);
  v169 = *(v687 + 72);
  v730 = *(v687 + 56);
  v731[0] = v169;
  *(v731 + 10) = *(v687 + 82);
LABEL_73:
  v725[0] = v167;
  *&v725[34] = *(v729 + 10);
  *&v725[24] = v729[0];
  *&v725[8] = v728;
  *&v725[56] = v730;
  *&v725[72] = v731[0];
  *&v725[82] = *(v731 + 10);
  if (*(v712 + 16))
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    (*(v714 + 16))(v684, v635, v752);
    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v722 = v77;
      *v182 = 136315138;
      v183 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v185 = sub_100002320(v183, v184, &v722);

      *(v182 + 4) = v185;
      sub_100141458(v725);
      _os_log_impl(&_mh_execute_header, v180, v181, "Cannot generate a PASN response for the PASN request from %s because the RSN capability included a PMK ID", v182, 0xCu);
      sub_100002A00(v77);
    }

    else
    {
      sub_100141458(v725);
    }

    (*(v714 + 8))(v684, v752);
LABEL_108:
    sub_10000B02C();
    swift_allocError();
    *v220 = xmmword_1004881C0;
    *(v220 + 16) = 1;
    swift_willThrow();
    sub_100017554(v638, v700);
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
    goto LABEL_109;
  }

  v190 = v695;

  v191 = v681;
  Array<A>.retrieve(attribute:)(34, v190, v681);

  v192 = type metadata accessor for NANAttribute(0);
  v193 = *(v192 - 8);
  if ((*(v193 + 48))(v191, 1, v192) == 1)
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    sub_100016290(v681, &unk_100595C00, &qword_10048F790);
LABEL_104:
    (*(v714 + 16))(v679, v635, v752);
    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v722 = v77;
      *v216 = 136315138;
      v217 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v219 = sub_100002320(v217, v218, &v722);

      *(v216 + 4) = v219;
      sub_100141458(v725);
      _os_log_impl(&_mh_execute_header, v214, v215, "Cannot generate a PASN response for the PASN request from %s because the cipher suites information attribute was invalid", v216, 0xCu);
      sub_100002A00(v77);
    }

    else
    {
      sub_100141458(v725);
    }

    (*(v714 + 8))(v679, v752);
    goto LABEL_108;
  }

  if (swift_getEnumCaseMultiPayload() != 30)
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    sub_10012A684(v681, type metadata accessor for NANAttribute);
    goto LABEL_104;
  }

  *&v712 = &v633;
  __chkstk_darwin();
  v200 = v677;
  *(&v633 - 3) = v678;
  *(&v633 - 2) = v200;
  *(&v633 - 2) = v635;
  v201 = v199;
  v202 = *(v199 + 16);
  if (!v202)
  {
LABEL_95:

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    goto LABEL_104;
  }

  v77 = v199 + 33;
  while (1)
  {
    LOWORD(v722) = *(v77 - 1);
    v203 = v697;
    v204 = sub_100144274(&v722);
    v697 = v203;
    if (v203 || v204)
    {
      break;
    }

    v77 += 2;
    if (!--v202)
    {
      goto LABEL_95;
    }
  }

  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v223 = *(v193 + 72);
  v686 = (*(v193 + 80) + 32) & ~*(v193 + 80);
  *&v687 = v223;
  *(&v687 + 1) = swift_allocObject();
  *(*(&v687 + 1) + 16) = xmmword_100480F30;
  if (qword_10058AB40 != -1)
  {
    swift_once();
  }

  v224 = static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
  if (v167)
  {
    if (qword_10058AB48 != -1)
    {
      swift_once();
    }

    v691 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
  }

  else
  {
    v691 = _swiftEmptyArrayStorage;
  }

  *&v722 = v224;
  v243 = *(v224 + 2);
  *&v712 = v691[2];

  if (v243 && v712)
  {
    v201 = 0;
    v244 = v691 + 4;
    v77 = v712 - 1;
    v245 = v243 - 1;
    while (1)
    {
      v193 = *(v244 + v201);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = sub_1000C28C4(v224);
      }

      v243 = *(v224 + 2);
      if (v201 >= v243)
      {
        break;
      }

      v224[v201 + 32] |= v193;
      if (v245 != v201 && v77 != v201++)
      {
        continue;
      }

      goto LABEL_133;
    }

    __break(1u);
    goto LABEL_256;
  }

LABEL_133:
  v247 = (*(&v687 + 1) + v686);
  *&v722 = v224;
  if (v243 >= v712)
  {
  }

  else
  {
    sub_100234FC0(v691, (v691 + 4), v243, (2 * v712) | 1);
    v224 = v722;
  }

  *v247 = v224;
  swift_storeEnumTagMultiPayload();
  v248 = v687;
  v249 = (v247 + v687);
  v250 = v731[0];
  *v249 = v730;
  v249[1] = v250;
  *(v249 + 26) = *(v731 + 10);
  swift_storeEnumTagMultiPayload();
  v251 = v247 + 2 * v248;
  *v251 = 0;
  *(v251 + 1) = v694;
  swift_storeEnumTagMultiPayload();
  sub_10012A628(&v730, &v722);

  sub_100141458(v725);
  v252 = sub_10011727C(0, 1, 1, _swiftEmptyArrayStorage);
  v254 = *(v252 + 2);
  v253 = *(v252 + 3);
  *&v712 = v252;
  if (v254 >= v253 >> 1)
  {
    *&v712 = sub_10011727C((v253 > 1), v254 + 1, 1, v712);
  }

  v255 = v712;
  *(v712 + 16) = v254 + 1;
  v256 = v255 + (v254 << 6);
  *(v256 + 32) = *(&v687 + 1);
  *(v256 + 88) = 8;
LABEL_139:
  sub_10012A6E4(v635 + v693, v642, type metadata accessor for NANPairing.Mode);
  v257 = swift_getEnumCaseMultiPayload();
  if (!v257)
  {
    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    v264 = v642;
    v265 = *(v642 + 80);
    *&v725[64] = *(v642 + 64);
    *&v725[80] = v265;
    *&v725[96] = *(v642 + 96);
    v266 = *(v642 + 16);
    *v725 = *v642;
    *&v725[16] = v266;
    v267 = *(v642 + 48);
    *&v725[32] = *(v642 + 32);
    *&v725[48] = v267;
    sub_100141458(v725);
    v268 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(v264 + *(v268 + 48), v653, _s3SAEVMa);
    if (qword_10058AAE8 != -1)
    {
      swift_once();
    }

    v192 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    *&v722 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    v269 = *(static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement + 16);
    v245 = *(v702 + 16);

    if (v269 <= v245)
    {
      v270 = v192;
    }

    else
    {
      sub_100235DAC((v269 - v245));
      v270 = v722;
      v269 = *(v722 + 16);
    }

    if (v269)
    {
      v278 = 0;
      v77 = v702 + 32;
      while (1)
      {
        if (v245 == v278)
        {
          goto LABEL_162;
        }

        v193 = *(v77 + v278);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v270 = sub_1000C28C4(v270);
        }

        if (v278 >= *(v270 + 2))
        {
          break;
        }

        v270[v278 + 32] &= v193;
        *&v722 = v270;
        if (v269 == ++v278)
        {
          goto LABEL_162;
        }
      }

      __break(1u);
      goto LABEL_259;
    }

LABEL_162:

    v279 = sub_1000C2E80();

    if ((v279 & 1) != 0 && v637 == 3)
    {
      v280 = *(v698 + 16);
      if (v280)
      {
        while (1)
        {
          v281 = *v701;
          v282 = v701[1];
          v283 = v701[2];
          *(v724 + 9) = *(v701 + 41);
          v723 = v282;
          v724[0] = v283;
          v722 = v281;
          if (BYTE8(v724[1]) == 5)
          {
            break;
          }

          v701 += 4;
          if (!--v280)
          {
            goto LABEL_167;
          }
        }

        v336 = v722;
        sub_1000C2DC8(&v722, &v719);
        sub_1000C2DC8(&v722, &v719);
        v337 = sub_100033AA8(_swiftEmptyArrayStorage);
        v338 = type metadata accessor for BinaryDecoder();
        swift_allocObject();
        v339 = BinaryDecoder.init(data:userInfo:)(v336, *(&v336 + 1), v337);
        v717 = v338;
        v718 = sub_10014400C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v715 = v339;
        sub_1000C2DC8(&v722, &v719);

        v340 = v697;
        v341 = sub_1001F5414(&v715);
        v278 = v340;
        if (v340)
        {
          sub_100017554(v638, v700);

          sub_1000C2E24(&v722);
          sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v722);
          sub_10012A684(v653, _s3SAEVMa);
          (*(v690 + 8))(v688, v689);

          return v77;
        }

        v193 = v341;
        v77 = v342;
        v245 = v343;
        LOBYTE(v192) = v344;

        sub_1000C2E24(&v722);
        if ((((v245 & 0x1000000000000000) != 0) | (2 * v192)) != 3 || (v245 & 0x2000000000000000) != 0)
        {
          sub_1000B21F4(v193, v77, v245, v192);

LABEL_246:
          (*(v714 + 16))(v648, v635, v752);
          v482 = Logger.logObject.getter();
          v483 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v482, v483))
          {
            v484 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *&v719 = v77;
            *v484 = 136315138;
            v485 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
            v487 = sub_100002320(v485, v486, &v719);

            *(v484 + 4) = v487;
            _os_log_impl(&_mh_execute_header, v482, v483, "Cannot generate a PASN response for the PASN request from %s because the SAE wrapped data could not be decoded", v484, 0xCu);
            sub_100002A00(v77);
          }

          (*(v714 + 8))(v648, v752);
          sub_10000B02C();
          swift_allocError();
          *v488 = xmmword_1004881C0;
          *(v488 + 16) = 1;
          swift_willThrow();
          sub_100017554(v638, v700);
          sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v722);
          goto LABEL_174;
        }

        if (*(v635 + v135))
        {
          v478 = 20;
        }

        else
        {
          v478 = 19;
        }

        if ((v193 & 1) + 19 != v478)
        {
LABEL_256:

          sub_1000B21F4(v193, v77, v245, v192);
          goto LABEL_246;
        }

        v694 = sub_1002210A4(v477);
        v695 = v479;
        v702 = v480;
        LODWORD(v687) = v481;
LABEL_259:
        sub_100144000(v193, v77, v245 & 0xEFFFFFFFFFFFFFFFLL);
        v683 = sub_100221278(v77, v245 & 0xEFFFFFFFFFFFFFFFLL, v509);
        v684 = v510;
        v685 = v511;
        LODWORD(v686) = v512;
        v697 = v278;
        if (v278)
        {
          sub_100017554(v638, v700);
          v513 = v193;
          v514 = v77;
          v515 = v245;
          v516 = v192;
        }

        else
        {
          sub_1000B21F4(v193, v77, v245, v192);
          v701 = sub_100033AA8(_swiftEmptyArrayStorage);
          v521 = type metadata accessor for BinaryEncoder();
          v522 = swift_allocObject();
          v693 = xmmword_100480A90;
          *(v522 + 16) = xmmword_100480A90;
          *(v522 + 32) = v701;
          v701 = v521;
          *(&v720 + 1) = v521;
          v691 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
          v721 = v691;
          *&v719 = v522;

          v523 = v697;
          IEEE80211Frame.Management.Authentication.encode(to:)(&v719, v694, v695, v702, v687);
          v697 = v523;
          if (v523)
          {
            sub_100017554(v638, v700);
            sub_1000B21F4(v683, v684, v685, v686);
            sub_1000B21F4(v694, v695, v702, v687);
LABEL_265:
            sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);

            sub_1000B21F4(v193, v77, v245, v192);
            sub_1000C2E24(&v722);
            sub_10012A684(v653, _s3SAEVMa);
            (*(v690 + 8))(v688, v689);
            sub_100002A00(&v719);
            goto LABEL_266;
          }

          sub_100002A00(&v719);
          swift_beginAccess();
          v562 = *(v522 + 16);
          v563 = *(v522 + 24);
          sub_10000AB0C(v562, v563);

          v564 = v697;
          v682 = sub_1000D4CB4(v562, v563);
          *(&v687 + 1) = v565;
          v697 = v564;
          if (!v564)
          {
            v681 = sub_100033AA8(_swiftEmptyArrayStorage);
            v595 = v701;
            v298 = swift_allocObject();
            *(v298 + 16) = v693;
            *(v298 + 32) = v681;
            v721 = v691;
            *(&v720 + 1) = v595;
            *&v719 = v298;

            v596 = v697;
            sub_100142A80(&v719, v682, *(&v687 + 1));
            v697 = v596;
            if (v596)
            {
              sub_100017554(v638, v700);
              sub_1000B21F4(v683, v684, v685, v686);
              sub_1000B21F4(v694, v695, v702, v687);
              v597 = v682;
              v598 = *(&v687 + 1);
LABEL_289:
              sub_1000124C8(v597, v598);
              goto LABEL_265;
            }

LABEL_287:
            sub_1000124C8(v682, *(&v687 + 1));
            sub_100002A00(&v719);
            swift_beginAccess();
            v599 = *(v298 + 24);
            *(&v687 + 1) = *(v298 + 16);
            v681 = v599;
            sub_10000AB0C(*(&v687 + 1), v599);

            v682 = sub_100033AA8(_swiftEmptyArrayStorage);
            v600 = v701;
            v601 = swift_allocObject();
            *(v601 + 16) = v693;
            *(v601 + 32) = v682;
            v721 = v691;
            *(&v720 + 1) = v600;
            *&v719 = v601;

            v602 = v697;
            IEEE80211Frame.Management.Authentication.encode(to:)(&v719, v683, v684, v685, v686);
            v697 = v602;
            if (v602)
            {
              sub_100017554(v638, v700);
              sub_1000B21F4(v683, v684, v685, v686);
              sub_1000B21F4(v694, v695, v702, v687);
              v597 = *(&v687 + 1);
              v598 = v681;
              goto LABEL_289;
            }

            sub_100002A00(&v719);
            swift_beginAccess();
            v603 = *(v601 + 16);
            v604 = *(v601 + 24);
            sub_10000AB0C(v603, v604);

            v605 = v697;
            v680 = sub_1000D4CB4(v603, v604);
            v682 = v606;
            v697 = v605;
            if (v605)
            {
              sub_100017554(v638, v700);
              sub_1000B21F4(v683, v684, v685, v686);
              sub_1000B21F4(v694, v695, v702, v687);
              sub_1000124C8(*(&v687 + 1), v681);
              goto LABEL_262;
            }

            v679 = sub_100033AA8(_swiftEmptyArrayStorage);
            v607 = v701;
            v608 = swift_allocObject();
            *(v608 + 16) = v693;
            *(v608 + 32) = v679;
            v721 = v691;
            *(&v720 + 1) = v607;
            *&v719 = v608;

            v609 = v697;
            sub_100142A80(&v719, v680, v682);
            v697 = v609;
            if (v609)
            {
              sub_100017554(v638, v700);
              sub_1000B21F4(v683, v684, v685, v686);
              sub_1000B21F4(v694, v695, v702, v687);
              sub_1000124C8(*(&v687 + 1), v681);
              v597 = v680;
              v598 = v682;
              goto LABEL_289;
            }

            sub_1000124C8(v680, v682);
            sub_100002A00(&v719);
            swift_beginAccess();
            v610 = *(v608 + 16);
            v691 = *(v608 + 24);
            sub_10000AB0C(v610, v691);

            v715 = *(&v687 + 1);
            v201 = v681;
            v716 = v681;
            *(&v720 + 1) = &type metadata for Data;
            v721 = &protocol witness table for Data;
            *&v719 = v610;
            v611 = v691;
            *(&v719 + 1) = v691;
            v612 = sub_100029B34(&v719, &type metadata for Data);
            v613 = v612[1];
            v701 = *v612;
            *&v693 = v613;
            sub_10000AB0C(*(&v687 + 1), v201);
            sub_10000AB0C(v610, v611);
            v614 = v697;
            sub_100178A18(v701, v693, &v715);
            v701 = v614;
            sub_1000124C8(v610, v611);
            sub_1000124C8(*(&v687 + 1), v201);
            sub_100002A00(&v719);
            v615 = v715;
            v616 = v716;
            v617 = v716 >> 62;
            if ((v716 >> 62) > 1)
            {
              if (v617 != 2)
              {
                goto LABEL_301;
              }

              v618 = *(v715 + 16);
              v619 = *(v715 + 24);
            }

            else
            {
              if (!v617)
              {
                goto LABEL_301;
              }

              v618 = v715;
              v619 = v715 >> 32;
            }

            if (v619 < v618)
            {
              goto LABEL_312;
            }

LABEL_301:
            v201 = Data.subdata(in:)();
            v697 = v620;
            sub_1000124C8(v615, v616);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_302;
            }

            goto LABEL_313;
          }

LABEL_273:
          sub_100017554(v638, v700);
          v513 = v683;
          v514 = v684;
          v515 = v685;
          v516 = v686;
        }

        sub_1000B21F4(v513, v514, v515, v516);
        sub_1000B21F4(v694, v695, v702, v687);
LABEL_262:
        sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
        sub_1000B21F4(v193, v77, v245, v192);
        sub_1000C2E24(&v722);
        sub_10012A684(v653, _s3SAEVMa);
        (*(v690 + 8))(v688, v689);
LABEL_266:

        return v77;
      }

LABEL_167:

      (*(v714 + 16))(v647, v635, v752);
      v284 = Logger.logObject.getter();
      v285 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v284, v285))
      {
        v286 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v722 = v77;
        *v286 = 136315138;
        v287 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
        v289 = sub_100002320(v287, v288, &v722);

        *(v286 + 4) = v289;
        _os_log_impl(&_mh_execute_header, v284, v285, "Cannot generate a PASN response for the PASN request from %s because no SAE wrapped data was included", v286, 0xCu);
        sub_100002A00(v77);
      }

      (*(v714 + 8))(v647, v752);
    }

    else
    {

      (*(v714 + 16))(v646, v635, v752);
      v290 = Logger.logObject.getter();
      v291 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v290, v291))
      {
        v292 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v722 = v77;
        *v292 = 136315138;
        v293 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
        v295 = sub_100002320(v293, v294, &v722);

        *(v292 + 4) = v295;
        _os_log_impl(&_mh_execute_header, v290, v291, "Cannot generate a PASN response for the PASN request from %s because the SAE parameters were invalid", v292, 0xCu);
        sub_100002A00(v77);
      }

      (*(v714 + 8))(v646, v752);
    }

    sub_10000B02C();
    swift_allocError();
    *v296 = xmmword_1004881C0;
    *(v296 + 16) = 1;
    swift_willThrow();
    sub_100017554(v638, v700);
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
LABEL_174:
    v212 = _s3SAEVMa;
    v213 = v653;
    goto LABEL_102;
  }

  if (v257 != 1)
  {
    sub_100142410(v642, v649, type metadata accessor for NANPairing.SharedAssociation);
    if (!v637)
    {
      v305 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*(v635 + v696[20]) | (*(v635 + v696[20] + 2) << 16), *(v649 + *(v643 + 32)), *(v649 + *(v643 + 32) + 8));
      v307 = v306;
      v309 = v308;
      v311 = v310;
      v701 = sub_10005DC58(&unk_100597530, &qword_100482F50);
      v312 = *(type metadata accessor for NANAttribute(0) - 8);
      v313 = *(v312 + 72);
      v314 = (*(v312 + 80) + 32) & ~*(v312 + 80);
      v315 = swift_allocObject();
      *(v315 + 16) = xmmword_100483520;
      v691 = v315;
      v316 = (v315 + v314);
      *v316 = v305;
      v316[1] = v307;
      v316[2] = v309;
      v316[3] = v311;
      swift_storeEnumTagMultiPayload();
      v317 = v316 + v313;
      *v317 = 0;
      *(v317 + 1) = v694;
      swift_storeEnumTagMultiPayload();

      *&v687 = v305;
      *&v693 = v307;
      sub_10000AB0C(v305, v307);
      v701 = v309;
      v77 = v311;
      sub_10000AB0C(v309, v311);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v712 = sub_10011727C(0, *(v712 + 16) + 1, 1, v712);
      }

      v192 = *(v712 + 16);
      v318 = *(v712 + 24);
      if (v192 >= v318 >> 1)
      {
        *&v712 = sub_10011727C((v318 > 1), v192 + 1, 1, v712);
      }

      v319 = v712;
      *(v712 + 16) = v192 + 1;
      v320 = v319 + (v192 << 6);
      *(v320 + 32) = v691;
      v321 = *v725;
      v322 = *&v725[16];
      *(v320 + 72) = *&v725[32];
      *(v320 + 56) = v322;
      *(v320 + 40) = v321;
      *(v320 + 88) = 8;
      v201 = v687;
      *&v719 = v687;
      v323 = v693;
      *(&v719 + 1) = v693;
      *(&v723 + 1) = &type metadata for Data;
      *&v724[0] = &protocol witness table for Data;
      v324 = v701;
      *&v722 = v701;
      *(&v722 + 1) = v77;
      v325 = sub_100029B34(&v722, &type metadata for Data);
      v245 = *v325;
      v193 = v325[1];
      sub_10000AB0C(v201, v323);
      sub_10000AB0C(v324, v77);
      v326 = v697;
      sub_100178A18(v245, v193, &v719);
      v697 = v326;
      sub_100002A00(&v722);
      *(&v687 + 1) = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v719, *(&v719 + 1));
      v691 = v327;
      if (v327 >> 60 == 15)
      {
        goto LABEL_311;
      }

      sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

      sub_1000124C8(v687, v693);
      sub_1000124C8(v701, v77);
      v328 = v649;
      v329 = v649[1];
      v701 = *v649;
      *&v693 = v329;
      sub_10000AB0C(v701, v329);
      sub_10012A684(v328, type metadata accessor for NANPairing.SharedAssociation);
      goto LABEL_199;
    }

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    (*(v714 + 16))(v645, v635, v752);
    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v273 = 136315138;
      v274 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v276 = sub_100002320(v274, v275, v725);

      *(v273 + 4) = v276;
      _os_log_impl(&_mh_execute_header, v271, v272, "Cannot generate a PASN response for the PASN request from %s because a wrapped data format was provided for pair verification", v273, 0xCu);
      sub_100002A00(v77);
    }

    (*(v714 + 8))(v645, v752);
    sub_10000B02C();
    swift_allocError();
    *v277 = xmmword_1004881C0;
    *(v277 + 16) = 1;
    swift_willThrow();
    sub_100017554(v638, v700);
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
    (*(v690 + 8))(v688, v689);
    sub_10012A684(v649, type metadata accessor for NANPairing.SharedAssociation);
    return v77;
  }

  sub_10012A684(v642, type metadata accessor for NANPairing.Mode);
  if (v637)
  {

    sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

    (*(v714 + 16))(v644, v635, v752);
    v258 = Logger.logObject.getter();
    v259 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v258, v259))
    {
      v260 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v725 = v77;
      *v260 = 136315138;
      v261 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
      v263 = sub_100002320(v261, v262, v725);

      *(v260 + 4) = v263;
      _os_log_impl(&_mh_execute_header, v258, v259, "Cannot generate a PASN response for the PASN request from %s because a wrapped data format was provided for opportunistic pair setup", v260, 0xCu);
      sub_100002A00(v77);
    }

    (*(v714 + 8))(v644, v752);
    goto LABEL_108;
  }

  v192 = sub_10016FD40(2051755344, 0xE400000000000000);
  v298 = v297;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v299 = __DataStorage.init(length:)();
  *&v722 = v192;
  *(&v722 + 1) = v298;
  *&v725[24] = &type metadata for Data;
  *&v725[32] = &protocol witness table for Data;
  *v725 = 0x1C00000000;
  *&v725[8] = v299 | 0x4000000000000000;
  v300 = sub_100029B34(v725, &type metadata for Data);
  v301 = *v300;
  v245 = v300[1];
  sub_10000AB0C(v192, v298);
  v302 = v697;
  sub_100178A18(v301, v245, &v722);
  v697 = v302;
  sub_1000124C8(v192, v298);
  sub_100002A00(v725);
  *&v693 = *(&v722 + 1);
  v701 = v722;
  v303 = *(&v722 + 1) >> 62;
  if ((*(&v722 + 1) >> 62) > 1)
  {
    if (v303 != 2)
    {
      goto LABEL_310;
    }

    v346 = *(v701 + 2);
    v345 = *(v701 + 3);
    v347 = __OFSUB__(v345, v346);
    v304 = v345 - v346;
    if (!v347)
    {
      goto LABEL_197;
    }

    __break(1u);
    goto LABEL_195;
  }

  if (v303)
  {
LABEL_195:
    LODWORD(v304) = HIDWORD(v701) - v701;
    if (!__OFSUB__(HIDWORD(v701), v701))
    {
      v304 = v304;
      goto LABEL_197;
    }

    __break(1u);
    goto LABEL_287;
  }

  v304 = BYTE6(v693);
LABEL_197:
  if (v304 != 32)
  {
    goto LABEL_310;
  }

  sub_100016290(&v732, &qword_10058DF70, &unk_100488500);

  *(&v687 + 1) = 0;
  v691 = 0xF000000000000000;
  while (1)
  {
LABEL_199:
    sub_10005DC58(&qword_10058CC88, &unk_100482F90);
    v348 = swift_allocObject();
    *(v348 + 16) = v692;
    v349 = v635;
    v350 = *(v635 + v634);
    v695 = v348;
    *(v348 + 32) = v350;
    sub_10005DC58(&qword_10058CC80, &qword_100482F88);
    v351 = swift_allocObject();
    *(v351 + 16) = v692;
    v352 = *(v349 + v636);
    v694 = v351;
    *(v351 + 32) = v352;
    sub_10005DC58(&qword_10058CC08, &unk_100488510);
    v353 = swift_allocObject();
    v354 = *(&v687 + 1);
    *(v353 + 32) = *(&v687 + 1);
    v355 = (v353 + 32);
    v356 = v691;
    *(v353 + 40) = v691;
    sub_10005D67C(v354, v356);
    v357 = *(v353 + 40);
    if (v357 >> 60 == 15)
    {
      v702 = _swiftEmptyArrayStorage;
    }

    else
    {
      v358 = *v355;
      sub_10000AB0C(*v355, *(v353 + 40));
      v702 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v702 = sub_100117388(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v360 = *(v702 + 16);
      v359 = *(v702 + 24);
      if (v360 >= v359 >> 1)
      {
        v702 = sub_100117388((v359 > 1), v360 + 1, 1, v702);
      }

      v361 = v702;
      *(v702 + 16) = v360 + 1;
      v362 = &v361[16 * v360];
      *(v362 + 4) = v358;
      *(v362 + 5) = v357;
    }

    swift_setDeallocating();
    sub_100016290(v355, &qword_10058CC10, &qword_100482F10);
    swift_deallocClassInstance();
    if (v352 == 7)
    {
      if (qword_10058AAE8 != -1)
      {
        swift_once();
      }

      *&v692 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    }

    else
    {
      *&v692 = _swiftEmptyArrayStorage;
    }

    v683 = v696[25];
    v363 = sub_10014345C(*(v635 + v683));
    v364 = v363;
    v366 = v365;
    v367 = v365 >> 62;
    if ((v365 >> 62) > 1)
    {
      if (v367 != 2)
      {
        goto LABEL_219;
      }

      v363 = *(v363 + 16);
      v368 = *(v364 + 24);
    }

    else
    {
      if (!v367)
      {
        goto LABEL_219;
      }

      v363 = v363;
      v368 = v364 >> 32;
    }

    if (v368 < v363)
    {
      __break(1u);
    }

LABEL_219:
    v369 = Data.subdata(in:)();
    v371 = v370;
    sub_1000124C8(v364, v366);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v712 = sub_10011727C(0, *(v712 + 16) + 1, 1, v712);
    }

    v373 = *(v712 + 16);
    v372 = *(v712 + 24);
    if (v373 >= v372 >> 1)
    {
      *&v712 = sub_10011727C((v372 > 1), v373 + 1, 1, v712);
    }

    v374 = v712;
    *(v712 + 16) = v373 + 1;
    v375 = v374 + (v373 << 6);
    *(v375 + 32) = v369;
    *(v375 + 40) = v371;
    v376 = v722;
    v377 = v723;
    *(v375 + 80) = *&v724[0];
    *(v375 + 48) = v376;
    *(v375 + 64) = v377;
    *(v375 + 88) = 7;
    v378 = v696[22];
    if (*(v635 + v696[23]) == 1)
    {
      v379 = sub_100143BF0(v635 + v378, v667, v651, v668, v650);
    }

    else
    {
      v379 = sub_100143A98(v635 + v378, v667, v651, v668, v650);
    }

    v382 = v379;
    v686 = v380;
    *&v687 = v381;
    v383 = *(v635 + v135);
    v384 = v635;
    v727 = 0;
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v385 = swift_allocObject();
    LOWORD(v749) = 1;
    BYTE2(v749) = 6;
    *(&v749 + 1) = v695;
    *&v750 = v694;
    WORD4(v750) = 16576;
    *v751 = v702;
    v751[8] = 6;
    v751[24] = 0;
    v386 = v749;
    v387 = v750;
    *(v385 + 16) = xmmword_100480F30;
    *(v385 + 32) = v386;
    v388 = *v751;
    *(v385 + 48) = v387;
    *(v385 + 64) = v388;
    *(v385 + 73) = *&v751[9];
    *&v746 = v692;
    v748[24] = 1;
    v389 = v746;
    v390 = v747;
    v391 = *v748;
    *(v385 + 137) = *&v748[9];
    *(v385 + 112) = v390;
    *(v385 + 128) = v391;
    *(v385 + 96) = v389;
    v392 = v727;
    *(v385 + 160) = v637;
    *(v385 + 168) = 0;
    *(v385 + 176) = 0;
    *(v385 + 184) = 0xF000000000000000;
    *(v385 + 192) = v383;
    *(v385 + 193) = v382;
    *(v385 + 194) = v392;
    v394 = v686;
    v393 = v687;
    *(v385 + 200) = v686;
    *(v385 + 208) = v393;
    *(v385 + 216) = 6;
    *v725 = v385;
    sub_10005D67C(v394, v393);

    sub_1002353A8(v712);
    v77 = *v725;
    v395 = v652;
    v396 = *(v652 + 2);
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v397 = swift_allocObject();
    v712 = xmmword_1004817D0;
    *(v397 + 16) = xmmword_1004817D0;
    *(v397 + 32) = *v395;
    *(v397 + 36) = v396;
    v398 = sub_10002D874(v397);
    v400 = v399;

    v401 = (v384 + v696[20]);
    v402 = v401[2];
    v403 = swift_allocObject();
    *(v403 + 16) = v712;
    v684 = v401;
    *(v403 + 32) = *v401;
    *(v403 + 36) = v402;
    v404 = sub_10002D874(v403);
    v406 = v405;

    v715 = v398;
    v716 = v400;
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    *v725 = v404;
    *&v725[8] = v406;
    v407 = sub_100029B34(v725, &type metadata for Data);
    v408 = *v407;
    v409 = v407[1];
    sub_10000AB0C(v398, v400);
    sub_10000AB0C(v404, v406);
    v410 = v697;
    sub_100178A18(v408, v409, &v715);
    sub_1000124C8(v404, v406);
    sub_1000124C8(v398, v400);
    sub_100002A00(v725);
    v411 = v715;
    v412 = v716;
    SharedSecret.withUnsafeBytes<A>(_:)();
    *&v712 = v410;
    v413 = *v725;
    v414 = *&v725[8];
    *&v719 = v411;
    *(&v719 + 1) = v412;
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    v415 = sub_100029B34(v725, &type metadata for Data);
    v201 = *v415;
    v416 = v415[1];
    sub_10000AB0C(v411, v412);
    sub_10000AB0C(v413, v414);
    v417 = v712;
    sub_100178A18(v201, v416, &v719);
    *&v712 = v417;
    sub_1000124C8(v413, v414);
    sub_1000124C8(v411, v412);
    sub_100002A00(v725);
    v245 = *(&v719 + 1);
    v193 = v719;
    v418 = v654;
    static SymmetricKeySize.bits256.getter();
    v419 = SymmetricKeySize.bitCount.getter();
    v420 = *(v655 + 8);
    v135 = v655 + 8;
    (v420)(v418, v656);
    v697 = v696[17];
    v421 = SymmetricKeySize.bitCount.getter();
    v347 = __OFADD__(v419, v421);
    v422 = v419 + v421;
    if (v347)
    {
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      v561 = v702;
      v192 = v702 >> 32;
      goto LABEL_277;
    }

    v423 = v654;
    static SymmetricKeySize.bits256.getter();
    v201 = SymmetricKeySize.bitCount.getter();
    (v420)(v423, v656);
    if (__OFADD__(v422, v201))
    {
      goto LABEL_275;
    }

    v424 = v712;
    v685 = sub_10012D044(v701, v693, 0xD000000000000013, 0x80000001004B9950, v193, v245, v422 + v201);
    *&v712 = v425;
    if (v424)
    {
      sub_100017554(v638, v700);
      sub_100017554(*(&v687 + 1), v691);
      sub_100017554(v686, v687);
      sub_1000124C8(v193, v245);
      sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);

      (*(v690 + 8))(v688, v689);

LABEL_230:
      sub_1000124C8(v701, v693);
      return v77;
    }

    sub_1000124C8(v193, v245);
    __chkstk_darwin();
    v426 = v677;
    *(&v633 - 3) = v678;
    *(&v633 - 2) = v426;
    *(&v633 - 2) = v635;
    v427 = v658;
    sub_100143034(sub_10014413C, (&v633 - 8), v685, v712);
    v428 = *(v657 + 48);
    v429 = *(v657 + 64);
    v430 = v671[4];
    v431 = v676;
    v430(v674, v427, v676);
    v430(v673, &v427[v428], v431);
    v430(v675, &v427[v429], v431);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v681 = *&v725[8];
    v682 = *v725;
    v679 = *v652 | (*(v652 + 2) << 16);
    v680 = "PASN PTK Derivation";
    v432 = WiFiAddress.data.getter(v679);
    v434 = v433;
    v684 = (*v684 | (*(v684 + 1) << 16));
    v435 = WiFiAddress.data.getter(v684);
    v437 = v436;
    *&v719 = v432;
    *(&v719 + 1) = v434;
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    *v725 = v435;
    *&v725[8] = v436;
    v438 = sub_100029B34(v725, &type metadata for Data);
    v440 = *v438;
    v439 = v438[1];
    sub_10000AB0C(v432, v434);
    sub_10000AB0C(v435, v437);
    sub_100178A18(v440, v439, &v719);
    sub_1000124C8(v435, v437);
    sub_1000124C8(v432, v434);
    sub_100002A00(v725);
    v441 = v719;
    v442 = SymmetricKeySize.bitCount.getter();
    v443 = v682;
    v444 = v681;
    v445 = sub_10012D044(v682, v681, 0xD00000000000001DLL, v680 | 0x8000000000000000, v441, *(&v441 + 1), v442);
    v697 = 0;
    v455 = v445;
    v456 = v446;
    sub_1000124C8(v441, *(&v441 + 1));
    sub_1000124C8(v443, v444);
    *v725 = v455;
    *&v725[8] = v456;
    SymmetricKey.init<A>(data:)();
    v457 = v697;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v681 = v457;
    v682 = *v725;
    v458 = *&v725[8];
    v697 = "NAN Management KEK Derivation";
    v459 = WiFiAddress.data.getter(v679);
    v461 = v460;
    v462 = WiFiAddress.data.getter(v684);
    v464 = v463;
    v715 = v459;
    v716 = v461;
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    *v725 = v462;
    *&v725[8] = v463;
    v465 = sub_100029B34(v725, &type metadata for Data);
    v466 = *v465;
    v467 = v465[1];
    sub_10000AB0C(v459, v461);
    sub_10000AB0C(v462, v464);
    v468 = v681;
    sub_100178A18(v466, v467, &v715);
    sub_1000124C8(v462, v464);
    sub_1000124C8(v459, v461);
    sub_100002A00(v725);
    v469 = v715;
    v470 = v716;
    v471 = v682;
    v472 = v458;
    v473 = sub_10012D044(v682, v458, 0xD000000000000012, v697 | 0x8000000000000000, v715, v716, 0x100uLL);
    v697 = v468;
    if (v468)
    {

      sub_100017554(v638, v700);
      sub_1000124C8(v469, v470);
      sub_1000124C8(v471, v458);
      sub_1000124C8(v685, v712);
      sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
      sub_100017554(v686, v687);
      sub_100017554(*(&v687 + 1), v691);
      v475 = v671[1];
      v476 = v676;
      v475(v672, v676);
      v475(v673, v476);
      v475(v674, v476);
      v475(v675, v476);
      (*(v690 + 8))(v688, v689);
      goto LABEL_237;
    }

    v489 = v473;
    v490 = v474;
    sub_1000124C8(v469, v470);
    sub_1000124C8(v471, v472);
    *v725 = v489;
    *&v725[8] = v490;
    v491 = v660;
    SymmetricKey.init<A>(data:)();
    sub_10005DC58(&qword_10058DF50, &qword_1004884C8);
    v492 = v697;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v201 = (v671 + 1);
    v193 = v671[1];
    (v193)(v491, v676);
    v696 = *(&v719 + 1);
    if (*(&v719 + 1) >> 60 == 15)
    {

      (*(v714 + 16))(v659, v635, v752);
      v493 = Logger.logObject.getter();
      v494 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v493, v494))
      {
        v495 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v725 = v77;
        *v495 = 136315138;
        v496 = WiFiAddress.description.getter(v706 | (v705 << 8) | (v707 << 16) | (v708 << 24) | (v709 << 32) | (v710 << 40));
        v498 = sub_100002320(v496, v497, v725);

        *(v495 + 4) = v498;
        _os_log_impl(&_mh_execute_header, v493, v494, "Cannot generate a PASN confirmation for the PASN response from %s because the ND-PMK derivation failed", v495, 0xCu);
        sub_100002A00(v77);
      }

      (*(v714 + 8))(v659, v752);
      sub_10000B02C();
      swift_allocError();
      *v499 = xmmword_1004881C0;
      *(v499 + 16) = 1;
      swift_willThrow();
      sub_100017554(v638, v700);
      sub_1000124C8(v685, v712);
      sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
      sub_100017554(v686, v687);
      sub_100017554(*(&v687 + 1), v691);
      v500 = v676;
      (v193)(v672, v676);
      (v193)(v673, v500);
      (v193)(v674, v500);
      (v193)(v675, v500);
      (*(v690 + 8))(v688, v689);
      goto LABEL_230;
    }

    v752 = v719;
    v501 = sub_100033AA8(_swiftEmptyArrayStorage);
    v502 = type metadata accessor for BinaryEncoder();
    v503 = swift_allocObject();
    v710 = xmmword_100480A90;
    *(v503 + 16) = xmmword_100480A90;
    *(v503 + 32) = v501;
    v714 = v502;
    *&v725[24] = v502;
    v709 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    *&v725[32] = v709;
    *v725 = v503;

    IEEE80211Frame.Management.Authentication.encode(to:)(v725, v77, 0, 0x1000000000000000, 0);
    if (v492)
    {

      sub_100017554(v638, v700);
      sub_1000124C8(v685, v712);
      sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
      sub_100017554(v752, v696);

      sub_100017554(v686, v687);
      sub_100017554(*(&v687 + 1), v691);
      v508 = v676;
      (v193)(v672, v676);
      (v193)(v673, v508);
      (v193)(v674, v508);
      (v193)(v675, v508);
      (*(v690 + 8))(v688, v689);
      sub_100002A00(v725);

      sub_1000124C8(v701, v693);
      return v77;
    }

    sub_100002A00(v725);
    swift_beginAccess();
    v504 = *(v503 + 24);
    v707 = *(v503 + 16);
    v708 = v504;
    sub_10000AB0C(v707, v504);

    v505 = sub_100033AA8(_swiftEmptyArrayStorage);
    v506 = v714;
    v507 = swift_allocObject();
    *(v507 + 16) = v710;
    *(v507 + 32) = v505;
    *&v725[32] = v709;
    *&v725[24] = v506;
    *v725 = v507;

    IEEE80211InformationElement.encode(to:)(v725);

    sub_100002A00(v725);
    swift_beginAccess();
    v517 = *(v507 + 24);
    v705 = *(v507 + 16);
    v706 = v517;
    sub_10000AB0C(v705, v517);

    v518 = sub_100033AA8(_swiftEmptyArrayStorage);
    v519 = v714;
    v520 = swift_allocObject();
    *(v520 + 16) = v710;
    *(v520 + 32) = v518;
    *&v725[32] = v709;
    *&v725[24] = v519;
    *v725 = v520;

    IEEE80211InformationElement.encode(to:)(v725);
    v697 = 0;

    sub_100002A00(v725);
    swift_beginAccess();
    v524 = *(v520 + 24);
    *&v692 = *(v520 + 16);
    v694 = v524;
    sub_10000AB0C(v692, v524);

    v525 = WiFiAddress.data.getter(v684);
    v527 = v526;
    v528 = WiFiAddress.data.getter(v679);
    v530 = v529;
    *&v726[0] = v525;
    *(&v726[0] + 1) = v527;
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    *v725 = v528;
    *&v725[8] = v529;
    v531 = sub_100029B34(v725, &type metadata for Data);
    v532 = v531[1];
    v702 = *v531;
    v695 = v532;
    sub_10000AB0C(v525, v527);
    sub_10000AB0C(v528, v530);
    v533 = v697;
    sub_100178A18(v702, v695, v726);
    v702 = v533;
    sub_1000124C8(v528, v530);
    sub_1000124C8(v525, v527);
    sub_100002A00(v725);
    v535 = *(&v726[0] + 1);
    v534 = *&v726[0];
    v719 = v726[0];
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    v536 = v705;
    *v725 = v705;
    v537 = v706;
    *&v725[8] = v706;
    v538 = sub_100029B34(v725, &type metadata for Data);
    v539 = v538[1];
    v697 = *v538;
    v695 = v539;
    sub_10000AB0C(v536, v537);
    sub_10000AB0C(v534, v535);
    v540 = v702;
    sub_100178A18(v697, v695, &v719);
    v702 = v540;
    sub_1000124C8(v534, v535);
    sub_100002A00(v725);
    v542 = *(&v719 + 1);
    v541 = v719;
    v726[0] = v719;
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    v543 = v692;
    *v725 = v692;
    v544 = v694;
    *&v725[8] = v694;
    v545 = sub_100029B34(v725, &type metadata for Data);
    v546 = *v545;
    v697 = v545[1];
    sub_10000AB0C(v543, v544);
    sub_10000AB0C(v541, v542);
    v547 = v702;
    sub_100178A18(v546, v697, v726);
    v702 = v547;
    sub_1000124C8(v541, v542);
    sub_100002A00(v725);
    v549 = *(&v726[0] + 1);
    v548 = *&v726[0];
    v719 = v726[0];
    *&v725[24] = &type metadata for Data;
    *&v725[32] = &protocol witness table for Data;
    v550 = v707;
    *v725 = v707;
    v551 = v708;
    *&v725[8] = v708;
    v135 = &type metadata for Data;
    v552 = sub_100029B34(v725, &type metadata for Data);
    v553 = v552[1];
    v697 = *v552;
    v695 = v553;
    sub_10000AB0C(v550, v551);
    sub_10000AB0C(v548, v549);
    v554 = v702;
    sub_100178A18(v697, v695, &v719);
    v697 = v554;
    sub_1000124C8(v548, v549);
    sub_100002A00(v725);
    *v725 = v719;
    v555 = sub_1000BA0A4();
    v245 = v662;
    v684 = v555;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(*v725, *&v725[8]);
    v556 = v664;
    v557 = HashedAuthenticationCode.rawRepresentation.getter(v664);
    v559 = v558;
    (*(v663 + 8))(v245, v556);
    sub_1002B9AE4(*(v635 + v683), v557, v559, v725);
    v702 = *v725;
    v420 = *(v77 + 16);
    v695 = *&v725[8];
    v560 = *&v725[8] >> 62;
    if ((*&v725[8] >> 62) <= 1)
    {
      if (!v560)
      {
        break;
      }

      goto LABEL_276;
    }

    if (v560 != 2)
    {
      break;
    }

    v561 = *(v702 + 16);
    v192 = *(v702 + 24);
LABEL_277:
    sub_10000AB0C(v702, v695);
    if (v192 >= v561)
    {
      break;
    }

LABEL_309:
    __break(1u);
LABEL_310:
    sub_1000124C8(v701, v693);
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    *&v712 = sub_10011727C(0, *(v712 + 16) + 1, 1, v712);
LABEL_302:
    v622 = *(v712 + 16);
    v621 = *(v712 + 24);
    if (v622 >= v621 >> 1)
    {
      *&v712 = sub_10011727C((v621 > 1), v622 + 1, 1, v712);
    }

    v623 = v712;
    *(v712 + 16) = v622 + 1;
    v624 = v623 + (v622 << 6);
    v625 = v697;
    *(v624 + 32) = v201;
    *(v624 + 40) = v625;
    v626 = v719;
    v627 = v720;
    *(v624 + 80) = v721;
    *(v624 + 48) = v626;
    *(v624 + 64) = v627;
    *(v624 + 88) = 5;
    v628 = v701;
    sub_1002217CC(v626);
    v701 = v629;
    *&v693 = v630;
    *(&v687 + 1) = v631;
    v691 = v632;
    v697 = v628;
    if (v628)
    {
      goto LABEL_273;
    }

    sub_10012A684(v653, _s3SAEVMa);
    sub_1000C2E24(&v722);
    sub_1000B21F4(v683, v684, v685, v686);
    sub_1000B21F4(v694, v695, v702, v687);
    sub_1000B21F4(v193, v77, v245, v192);
  }

  v245 = v702;
  v135 = v695;
  v566 = Data.subdata(in:)();
  v192 = v567;
  sub_1000124C8(v245, v135);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v420)
    {
      goto LABEL_280;
    }

LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v77 = sub_1000C2B78(v77);
  if (!v420)
  {
    goto LABEL_307;
  }

LABEL_280:
  if (v420 > *(v77 + 16))
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v568 = v77 + (v420 << 6);
  v569 = *(v568 - 32);
  v570 = *(v568 - 16);
  v571 = *v568;
  *&v725[41] = *(v568 + 9);
  *&v725[16] = v570;
  *&v725[32] = v571;
  *v725 = v569;
  *(v568 - 32) = v566;
  *(v568 - 24) = v192;
  *(v568 + 24) = 7;
  sub_1000C2E24(v725);
  v572 = sub_100033AA8(_swiftEmptyArrayStorage);
  v573 = v714;
  v574 = swift_allocObject();
  *(v574 + 16) = v710;
  *(v574 + 32) = v572;
  v721 = v709;
  *(&v720 + 1) = v573;
  *&v719 = v574;

  v575 = v697;
  IEEE80211Frame.Management.Authentication.encode(to:)(&v719, v698, v665, v703, v704);
  v697 = v575;
  if (v575)
  {
    sub_100017554(v638, v700);
    sub_1000124C8(v685, v712);
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v752, v696);

    sub_1000124C8(v702, v695);
    sub_1000124C8(v707, v708);
    sub_1000124C8(v692, v694);
    sub_1000124C8(v705, v706);
    sub_100017554(v686, v687);
    sub_100017554(*(&v687 + 1), v691);
    v576 = v676;
    (v193)(v672, v676);
    (v193)(v673, v576);
    (v193)(v674, v576);
    (v193)(v675, v576);
    (*(v690 + 8))(v688, v689);
    sub_100002A00(&v719);
LABEL_237:

    sub_1000124C8(v701, v693);
  }

  else
  {
    sub_100002A00(&v719);
    swift_beginAccess();
    v577 = *(v574 + 24);
    v714 = *(v574 + 16);
    *&v710 = v577;
    sub_10000AB0C(v714, v577);

    v578 = sub_10005DC58(&qword_10058DF58, &qword_1004884E0);
    v709 = &v699[*(v578 + 48)];
    v579 = v671[2];
    v580 = v699;
    v581 = v676;
    v579();
    v582 = type metadata accessor for NANPairing.GeneratedKeys(0);
    (v579)(&v580[v582[5]], v674, v581);
    (v579)(&v580[v582[6]], v673, v581);
    (v579)(&v580[v582[8]], v672, v581);
    v583 = &v580[v582[7]];
    v584 = v752;
    v585 = v696;
    *v583 = v752;
    *(v583 + 1) = v585;
    *&v726[0] = v714;
    *(&v726[0] + 1) = v710;
    sub_10000AB0C(v584, v585);
    v586 = v666;
    static HashFunction.hash<A>(data:)();
    v587 = v670;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v589 = sub_1001434FC(v586, v587, *(AssociatedConformanceWitness + 32));
    v704 = v590;
    (*(v669 + 8))(v586, v587);
    sub_100017554(v638, v700);
    sub_1000124C8(v714, v710);
    sub_1000124C8(v685, v712);
    sub_100016290(&v738, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v752, v585);
    sub_1000124C8(v702, v695);
    sub_1000124C8(v707, v708);
    sub_1000124C8(v692, v694);
    sub_1000124C8(v705, v706);
    sub_100017554(v686, v687);
    sub_100017554(*(&v687 + 1), v691);
    (v193)(v672, v581);
    (v193)(v673, v581);
    (v193)(v674, v581);
    (v193)(v675, v581);
    (*(v690 + 8))(v688, v689);
    sub_1000124C8(v701, v693);
    v591 = v709;
    v592 = v704;
    *v709 = v589;
    *(v591 + 8) = v592;
    v593 = v699;
    v594 = v711;
    swift_storeEnumTagMultiPayload();
    (*(v661 + 40))(&v713[v635], v593, v594);
  }

  return v77;
}

uint64_t sub_100135CC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = (result + 64);
    v5 = *(result + 88);
    result += 64;
    if (!v5)
    {
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 4);
      v9 = *v4;
      v10 = *(v4 + 8);
      v11 = *(v4 - 4) & 0xFFFFFF;

      goto LABEL_6;
    }
  }

  v11 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_6:
  *a2 = v11;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_100135D74@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16) + 1;
  v4 = 3;
  while (--v3)
  {
    v5 = (result + 64);
    v6 = *(result + 88);
    result += 64;
    if (v6 == 6)
    {
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v4 = *v5;
      v11 = v5[1];
      v12 = v5[2];
      v14[0] = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v4;
      v14[5] = v11;
      v14[6] = v12;
      v15 = 6;
      result = sub_100144054(v14, v13);
      goto LABEL_6;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
LABEL_6:
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v4;
  a2[5] = v11;
  a2[6] = v12;
  return result;
}

uint64_t sub_100135E3C(uint64_t a1)
{
  v1 = a1 - 32;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = *(v1 + 120);
    v1 += 64;
    if (v3 == 8)
    {
    }
  }

  return 0;
}

unint64_t sub_100135E8C(char *a1, uint64_t a2, uint64_t a3, int a4, int *a5, __n128 a6)
{
  LODWORD(v794) = a4;
  *&v793 = a3;
  v756 = a2;
  v791 = a1;
  v8 = *(a5 + 2);
  v9 = *(a5 + 4);
  v10 = type metadata accessor for HashedAuthenticationCode();
  v763 = *(v10 - 8);
  v764 = v10;
  __chkstk_darwin();
  v760 = &v721[-v11];
  v751 = sub_10005DC58(&qword_10058DF68, &unk_1004884F0);
  __chkstk_darwin();
  v752 = &v721[-v12];
  v13 = type metadata accessor for SymmetricKeySize();
  v749 = *(v13 - 8);
  v750 = v13;
  __chkstk_darwin();
  v748 = &v721[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v770 = type metadata accessor for SymmetricKey();
  v765 = *(v770 - 8);
  __chkstk_darwin();
  *&v754 = &v721[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v766 = &v721[-v16];
  __chkstk_darwin();
  v767 = &v721[-v17];
  __chkstk_darwin();
  v768 = &v721[-v18];
  __chkstk_darwin();
  v769 = &v721[-v19];
  _s3SAEVMa(0);
  __chkstk_darwin();
  v755 = &v721[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v735 = type metadata accessor for NANPairing.SharedAssociation(0);
  __chkstk_darwin();
  v744 = &v721[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v774 = &v721[-v22];
  v853 = type metadata accessor for Logger();
  v806 = *(v853 - 1);
  __chkstk_darwin();
  v746 = &v721[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v786 = &v721[-v24];
  __chkstk_darwin();
  v805 = &v721[-v25];
  __chkstk_darwin();
  v796 = &v721[-v26];
  __chkstk_darwin();
  *&v795 = &v721[-v27];
  __chkstk_darwin();
  v790 = &v721[-v28];
  __chkstk_darwin();
  v788 = &v721[-v29];
  __chkstk_darwin();
  v787 = &v721[-v30];
  __chkstk_darwin();
  v753 = &v721[-v31];
  __chkstk_darwin();
  *(&v754 + 1) = &v721[-v32];
  __chkstk_darwin();
  v759 = &v721[-v33];
  __chkstk_darwin();
  v758 = &v721[-v34];
  __chkstk_darwin();
  v757 = &v721[-v35];
  __chkstk_darwin();
  v740 = &v721[-v36];
  __chkstk_darwin();
  v741 = &v721[-v37];
  __chkstk_darwin();
  v742 = &v721[-v38];
  __chkstk_darwin();
  v743 = &v721[-v39];
  __chkstk_darwin();
  v745 = &v721[-v40];
  __chkstk_darwin();
  v747 = &v721[-v41];
  __chkstk_darwin();
  v773 = &v721[-v42];
  __chkstk_darwin();
  v737 = &v721[-v43];
  __chkstk_darwin();
  v738 = &v721[-v44];
  __chkstk_darwin();
  *&v777 = &v721[-v45];
  __chkstk_darwin();
  v736 = &v721[-v46];
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v733 = &v721[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v775 = &v721[-v48];
  __chkstk_darwin();
  v734 = &v721[-v49];
  __chkstk_darwin();
  *(&v777 + 1) = &v721[-v50];
  v776 = type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v739 = &v721[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v778 = &v721[-v52];
  v53 = type metadata accessor for SharedSecret();
  v54 = *(v53 - 8);
  v781 = v53;
  v782 = v54;
  __chkstk_darwin();
  *(&v785 + 1) = &v721[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v779 = &v721[-v56];
  __chkstk_darwin();
  v780 = &v721[-v57];
  v58 = *(a5 + 3);
  v761 = v8;
  v762 = v9;
  *&v59 = v8;
  *&v785 = v58;
  *(&v59 + 1) = v58;
  *&v60 = v9;
  v784 = *(a5 + 5);
  *(&v60 + 1) = v784;
  v771 = v60;
  v772 = v59;
  v807[0] = v59;
  v807[1] = v60;
  v61 = type metadata accessor for NANPairing.PASN.State(0, v807);
  v62 = *(v61 - 8);
  __chkstk_darwin();
  v792 = &v721[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v804 = &v721[-v64];
  __chkstk_darwin();
  v66 = &v721[-v65];
  v67 = __chkstk_darwin();
  v69 = &v721[-v68];
  v70 = &v6[a5[20]];
  v798 = *v70;
  v797 = v70[1];
  v799 = v70[2];
  v800 = v70[3];
  v801 = v70[4];
  v802 = v70[5];
  v789 = a5;
  v71 = a5[24];
  v803 = v6;
  v72 = &v6[v71];
  v73 = v62;
  v76 = *(v62 + 16);
  v75 = v62 + 16;
  v74 = v76;
  v76(&v721[-v68], v72, v61, v67);
  if (swift_getEnumCaseMultiPayload())
  {
    v796 = *(v73 + 8);
    (v796)(v69, v61);
    v74(v66, v72, v61);
    v77 = v806;
    v78 = v853;
    (*(v806 + 16))(v805, v803, v853);
    v803 = v66;
    v74(v804, v66, v61);
    v79 = Logger.logObject.getter();
    LODWORD(v795) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v795))
    {
      v80 = swift_slowAlloc();
      *&v793 = v79;
      v81 = v80;
      v794 = swift_slowAlloc();
      *&v807[0] = v794;
      *v81 = 136315394;
      v82 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v84 = sub_100002320(v82, v83, v807);

      *(v81 + 4) = v84;
      *(v81 + 12) = 2080;
      v85 = v792;
      v86 = v804;
      v74(v792, v804, v61);
      v87 = v796;
      (v796)(v86, v61);
      v88 = sub_10012BF38(v61);
      v90 = v89;
      v87(v85, v61);
      v91 = sub_100002320(v88, v90, v807);

      *(v81 + 14) = v91;
      v92 = v793;
      _os_log_impl(&_mh_execute_header, v793, v795, "Cannot generate a PASN confirmation to %s when in state: %s", v81, 0x16u);
      swift_arrayDestroy();

      (*(v806 + 8))(v805, v853);
    }

    else
    {
      v87 = v796;
      (v796)(v804, v61);

      (*(v77 + 8))(v805, v78);
    }

    sub_10000B02C();
    swift_allocError();
    *v119 = xmmword_1004881C0;
    *(v119 + 16) = 1;
    swift_willThrow();
    v87(v803, v61);
    return v75;
  }

  v75 = v795;
  v804 = v70;
  v731 = v72;
  v732 = v73;
  v792 = v61;
  v94 = *v69;
  v93 = v69[1];
  if ((((v793 & 0x1000000000000000) != 0) | (2 * v794)) != 1)
  {
    v120 = v806;
    v121 = v796;
    v122 = v853;
    (*(v806 + 16))(v796, v803, v853);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v805 = v93;
      v127 = v126;
      *&v807[0] = v126;
      *v125 = 136315138;
      v128 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v75 = v94;
      v130 = v120;
      v131 = sub_100002320(v128, v129, v807);

      *(v125 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v123, v124, "Cannot generate a PASN confirmation to %s because the authentication frame received was not a PASN response frame", v125, 0xCu);
      sub_100002A00(v127);
      v93 = v805;

      (*(v130 + 8))(v796, v853);
    }

    else
    {

      (*(v120 + 8))(v121, v122);
    }

    goto LABEL_21;
  }

  v95 = v791;
  sub_100135CC0(v791, &v828);
  v96 = v830;
  v97 = v806;
  v805 = v93;
  if (!v830)
  {
LABEL_13:
    v108 = v853;
    (*(v97 + 16))(v75, v803, v853);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v807[0] = v112;
      *v111 = 136315138;
      v113 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v115 = v97;
      v116 = v94;
      v117 = sub_100002320(v113, v114, v807);
      v93 = v805;

      *(v111 + 4) = v117;
      v94 = v116;
      _os_log_impl(&_mh_execute_header, v109, v110, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capabilities, extended RSN capabilities or PASN parameters are missing", v111, 0xCu);
      sub_100002A00(v112);

      v118 = *(v115 + 8);
      v75 = v115 + 8;
      v118(v795, v853);
    }

    else
    {

      (*(v97 + 8))(v75, v108);
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v132 = xmmword_1004881C0;
    *(v132 + 16) = 1;
    swift_willThrow();
    v133 = v94;
    goto LABEL_22;
  }

  v98 = v828;
  v99 = v829;
  LODWORD(v796) = v832;
  v728 = v833;
  v100 = v834;
  v101 = *(v95 + 2);
  v729 = (v95 + 32);
  v730 = v831;
  v102 = v95 - 32;
  v103 = v101 + 1;
  do
  {
    if (!--v103)
    {
      goto LABEL_12;
    }

    v104 = v102[120];
    v102 += 64;
  }

  while (v104 != 1);

  if (!v105)
  {
LABEL_12:
    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    v93 = v805;
    goto LABEL_13;
  }

  v725 = v96;
  v726 = v94;
  v727 = v105;
  sub_100135D74(v95, &v835);
  v106 = v837;
  v107 = v837;
  if (v837 == 3)
  {

    v94 = v726;
    goto LABEL_12;
  }

  v840[0] = *v836;
  *(v840 + 15) = *&v836[15];
  if (v98 != 1)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    v93 = v805;
LABEL_35:
    v75 = v803;
    goto LABEL_36;
  }

  v93 = v805;
  v75 = v803;
  if (v99 != 6 || v100 != 6 || (v796 & 0x80) == 0 || (v796 & 0x40) == 0 || (v722 = v835, v723 = v838, v724 = v839, sub_10005DC58(&qword_10058CC80, &qword_100482F88), v136 = swift_allocObject(), v795 = xmmword_100480F40, *(v136 + 16) = xmmword_100480F40, *(v136 + 32) = *(v75 + v789[18]), v137 = sub_1000C2E80(), swift_setDeallocating(), swift_deallocClassInstance(), (v137 & 1) == 0) || (sub_10005DC58(&qword_10058CC88, &unk_100482F90), v138 = swift_allocObject(), *(v138 + 16) = v795, *(v138 + 32) = *(v75 + v789[15]), v139 = sub_1000BC9A4(v725, v138), swift_setDeallocating(), swift_deallocClassInstance(), (v139 & 1) == 0) || v107 == 2)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
LABEL_36:
    v140 = v790;
    v141 = v75;
    v75 = v853;
    (*(v97 + 16))(v790, v141, v853);
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *&v807[0] = v145;
      *v144 = 136315138;
      v146 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v75 = v93;
      v148 = sub_100002320(v146, v147, v807);

      *(v144 + 4) = v148;
      _os_log_impl(&_mh_execute_header, v142, v143, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capabilities or PASN parameters do not match", v144, 0xCu);
      sub_100002A00(v145);

      (*(v97 + 8))(v790, v853);
    }

    else
    {

      (*(v97 + 8))(v140, v75);
    }

    v149 = v726;
    sub_10000B02C();
    swift_allocError();
    *v150 = xmmword_1004881C0;
    *(v150 + 16) = 1;
    swift_willThrow();
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    v133 = v149;
LABEL_22:
    v134 = v93;
LABEL_23:
    sub_1000124C8(v133, v134);
    return v75;
  }

  v151 = v789[16];
  if (*(v75 + v151))
  {
    v152 = 20;
  }

  else
  {
    v152 = 19;
  }

  if ((v106 & 1) + 19 != v152)
  {

    v163 = &qword_10058DF70;
    v164 = &unk_100488500;
    v165 = &v828;
LABEL_51:
    sub_100016290(v165, v163, v164);
    v93 = v805;
    v97 = v806;
    goto LABEL_35;
  }

  v841 = *(v840 + 7);
  v842 = *(&v840[1] + 7);
  if (*(&v840[1] + 7) >> 60 != 15)
  {
    sub_100012400(&v841, v807, &qword_10058DF78, &unk_100488530);

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    v165 = &v841;
    v163 = &qword_10058DF78;
    v164 = &unk_100488530;
    goto LABEL_51;
  }

  if (v724 >> 60 == 15)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    (*(v806 + 16))(v788, v803, v853);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      *&v807[0] = swift_slowAlloc();
      *v155 = 136315394;
      v156 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v158 = sub_100002320(v156, v157, v807);

      *(v155 + 4) = v158;
      *(v155 + 12) = 2080;
      swift_getAssociatedTypeWitness();
      v159 = _typeName(_:qualified:)();
      v161 = sub_100002320(v159, v160, v807);

      *(v155 + 14) = v161;
      _os_log_impl(&_mh_execute_header, v153, v154, "Cannot generate a PASN confirmation for the PASN response from %s because the public key in the response could not be decoded into a %s", v155, 0x16u);
      swift_arrayDestroy();
    }

    (*(v806 + 8))(v788, v853);
    sub_10000B02C();
    swift_allocError();
    *v162 = xmmword_1004881C0;
    *(v162 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(v726, v805);
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    return v75;
  }

  if ((v106 & 0x10000) != 0)
  {
    sub_10005D67C(v723, v724);

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    (*(v806 + 16))(v787, v803, v853);
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&v807[0] = v171;
      *v170 = 136315138;
      v172 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v174 = sub_100002320(v172, v173, v807);

      *(v170 + 4) = v174;
      _os_log_impl(&_mh_execute_header, v168, v169, "Cannot generate a PASN confirmation for the PASN request from %s because the public key type in the request could not be found", v170, 0xCu);
      sub_100002A00(v171);
    }

    (*(v806 + 8))(v787, v853);
    sub_10000B02C();
    swift_allocError();
    *v175 = xmmword_1004881C0;
    *(v175 + 16) = 1;
    goto LABEL_63;
  }

  v166 = v789[22];
  sub_10000AB0C(v723, v724);
  if ((v106 & 0xFF00) == 0x400)
  {
    v167 = v783;
    sub_10012CBB0(v723, v724, &v803[v166], v789, v779);
    v790 = v167;
    if (!v167)
    {
      *(&v785 + 1) = v779;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  v176 = v783;
  sub_10012CEA0(v723, v724, &v803[v166], v789, *(&v785 + 1));
  v790 = v176;
  if (v176)
  {
LABEL_60:

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    (*(v806 + 16))(v786, v803, v853);
    swift_errorRetain();
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      *&v807[0] = v181;
      *v179 = 136315394;
      v182 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v184 = sub_100002320(v182, v183, v807);

      *(v179 + 4) = v184;
      *(v179 + 12) = 2112;
      swift_errorRetain();
      v185 = _swift_stdlib_bridgeErrorToNSError();
      *(v179 + 14) = v185;
      *v180 = v185;
      _os_log_impl(&_mh_execute_header, v177, v178, "Cannot generate a PASN confirmation for the PASN response from %s because the shared secret agreement failed with error: %@", v179, 0x16u);
      sub_100016290(v180, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v181);
    }

    (*(v806 + 8))(v786, v853);
LABEL_63:
    swift_willThrow();
    sub_1000124C8(v726, v805);
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v723, v724);
    return v75;
  }

LABEL_64:
  (*(v782 + 32))(v780, *(&v785 + 1), v781);
  v788 = sub_100135E3C(v791);
  if (!v788)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
LABEL_86:
    sub_10000B02C();
    swift_allocError();
    *v218 = xmmword_1004881C0;
    *(v218 + 16) = 1;
    swift_willThrow();
    sub_100017554(v723, v724);
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v726, v805);
LABEL_101:
    (*(v782 + 8))(v780, v781);
    return v75;
  }

  v786 = v789[13];
  sub_10012A6E4(&v803[v786], v778, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v190 = v778;
    v187 = *v778;
    v191 = *(v778 + 24);
    v823 = *(v778 + 8);
    v824[0] = v191;
    *(v824 + 10) = *(v778 + 34);
    v192 = *(v778 + 72);
    v825 = *(v778 + 56);
    v826 = v192;
    v827 = *(v778 + 11);
    LODWORD(v787) = *(v778 + 48);
    v193 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_10012A684(&v190[*(v193 + 48)], _s3SAEVMa);
    goto LABEL_70;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100142410(v778, v774, type metadata accessor for NANPairing.SharedAssociation);
    v206 = v788;

    v207 = v775;
    Array<A>.retrieve(attribute:)(34, v206, v775);

    v208 = type metadata accessor for NANAttribute(0);
    v209 = *(v208 - 8);
    v210 = *(v209 + 48);
    v75 = v209 + 48;
    if (v210(v207, 1, v208) == 1)
    {

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      sub_100016290(v775, &unk_100595C00, &qword_10048F790);
    }

    else if (swift_getEnumCaseMultiPayload() == 30)
    {
      v787 = v721;
      __chkstk_darwin();
      v220 = v771;
      *&v721[-48] = v772;
      *&v721[-32] = v220;
      *&v721[-16] = v803;
      v221 = *(v219 + 16);
      if (v221)
      {
        v222 = v219 + 33;
        while (1)
        {
          LOWORD(v807[0]) = *(v222 - 1);
          v223 = v790;
          v224 = sub_100144274(v807);
          v790 = v223;
          if (v223 || v224)
          {
            break;
          }

          v222 += 2;
          if (!--v221)
          {
            goto LABEL_93;
          }
        }

        v238 = v788;

        v239 = v733;
        Array<A>.retrieve(attribute:)(43, v238, v733);

        if (v210(v239, 1, v208) == 1)
        {

          sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

          sub_100016290(v733, &unk_100595C00, &qword_10048F790);
        }

        else if (swift_getEnumCaseMultiPayload() == 38)
        {
          v241 = *v733;
          v240 = v733[1];
          v202 = v733[3];
          v787 = v733[2];
          v75 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*v804 | (*(v804 + 2) << 16), v241, v240);
          v243 = v242;
          v245 = v244;
          v247 = v246;
          *&v785 = v241;
          *(&v785 + 1) = v240;
          if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v75, v242, v241, v240))
          {
            v248 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v245, v247, v787, v202);
            sub_1000124C8(v75, v243);
            sub_1000124C8(v245, v247);
            if (v248)
            {
              v784 = sub_1001F8188(v728);
              sub_10005DC58(&qword_10058CC08, &unk_100488510);
              v249 = swift_allocObject();
              *(v249 + 16) = v795;
              v198 = v785;
              v819 = v785;
              v250 = *(&v785 + 1);
              *(&v807[1] + 1) = &type metadata for Data;
              *&v807[2] = &protocol witness table for Data;
              v199 = v787;
              *&v807[0] = v787;
              *(&v807[0] + 1) = v202;
              v251 = sub_100029B34(v807, &type metadata for Data);
              v252 = *v251;
              v253 = v251[1];
              sub_10000AB0C(v198, v250);
              sub_10000AB0C(v199, v202);
              v254 = v790;
              sub_100178A18(v252, v253, &v819);
              v790 = v254;
              sub_100002A00(v807);
              *(v249 + 32) = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v819, *(&v819 + 1));
              *(v249 + 40) = v255;
              v75 = sub_1000BFCF4(v784, v249);

              swift_setDeallocating();
              sub_10005DC58(&qword_10058CC10, &qword_100482F10);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              if (v75)
              {
                sub_10012A684(v774, type metadata accessor for NANPairing.SharedAssociation);
                sub_1000124C8(v785, *(&v785 + 1));
                sub_1000124C8(v787, v202);
                goto LABEL_120;
              }

              sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

              (*(v806 + 16))(v738, v803, v853);
              v452 = Logger.logObject.getter();
              v453 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v452, v453))
              {
                v454 = swift_slowAlloc();
                v455 = swift_slowAlloc();
                *&v807[0] = v455;
                *v454 = 136315138;
                v456 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
                v75 = v457;
                v458 = sub_100002320(v456, v457, v807);

                *(v454 + 4) = v458;
                _os_log_impl(&_mh_execute_header, v452, v453, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capability PMK ID was invalid", v454, 0xCu);
                sub_100002A00(v455);
              }

              (*(v806 + 8))(v738, v853);
              sub_10000B02C();
              swift_allocError();
              *v459 = xmmword_1004881C0;
              *(v459 + 16) = 1;
              swift_willThrow();
              sub_100017554(v723, v724);
              sub_1000124C8(v785, *(&v785 + 1));
              sub_1000124C8(v787, v202);
LABEL_99:
              sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
              sub_1000124C8(v726, v805);
              v233 = type metadata accessor for NANPairing.SharedAssociation;
              v234 = v774;
LABEL_100:
              sub_10012A684(v234, v233);
              goto LABEL_101;
            }

            sub_1000124C8(v785, *(&v785 + 1));
            sub_1000124C8(v787, v202);

            sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
          }

          else
          {
            sub_1000124C8(v785, *(&v785 + 1));
            sub_1000124C8(v787, v202);

            sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

            sub_1000124C8(v75, v243);
            sub_1000124C8(v245, v247);
          }
        }

        else
        {

          sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

          sub_10012A684(v733, type metadata accessor for NANAttribute);
        }

        (*(v806 + 16))(v737, v803, v853);
        v445 = Logger.logObject.getter();
        v446 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v445, v446))
        {
          v447 = swift_slowAlloc();
          v448 = swift_slowAlloc();
          *&v807[0] = v448;
          *v447 = 136315138;
          v449 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
          v451 = sub_100002320(v449, v450, v807);

          *(v447 + 4) = v451;
          _os_log_impl(&_mh_execute_header, v445, v446, "Cannot generate a PASN confirmation for the PASN response from %s because the pairing identity resolution attribute was invalid", v447, 0xCu);
          sub_100002A00(v448);
        }

        (*(v806 + 8))(v737, v853);
LABEL_98:
        sub_10000B02C();
        swift_allocError();
        *v232 = xmmword_1004881C0;
        *(v232 + 16) = 1;
        swift_willThrow();
        sub_100017554(v723, v724);
        goto LABEL_99;
      }

LABEL_93:

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    }

    else
    {

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      sub_10012A684(v775, type metadata accessor for NANAttribute);
    }

    (*(v806 + 16))(v773, v803, v853);
    v225 = Logger.logObject.getter();
    v226 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      *&v807[0] = v228;
      *v227 = 136315138;
      v229 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v231 = sub_100002320(v229, v230, v807);

      *(v227 + 4) = v231;
      _os_log_impl(&_mh_execute_header, v225, v226, "Cannot generate a PASN confirmation for the PASN response from %s because the cipher suites information attribute was invalid", v227, 0xCu);
      sub_100002A00(v228);
    }

    (*(v806 + 8))(v773, v853);
    goto LABEL_98;
  }

  v187 = *v778;
  v188 = *(v778 + 24);
  v823 = *(v778 + 8);
  v824[0] = v188;
  *(v824 + 10) = *(v778 + 34);
  v189 = *(v778 + 72);
  v825 = *(v778 + 56);
  v826 = v189;
  v827 = *(v778 + 11);
  LODWORD(v787) = *(v778 + 48);
LABEL_70:
  LOBYTE(v807[0]) = v187;
  *(v807 + 8) = v823;
  *(&v807[1] + 8) = v824[0];
  *(&v807[2] + 2) = *(v824 + 10);
  *(&v807[3] + 8) = v825;
  *(&v807[4] + 8) = v826;
  *(&v807[5] + 1) = v827;
  v808 = v787;
  v194 = v788;

  v195 = *(&v777 + 1);
  Array<A>.retrieve(attribute:)(34, v194, *(&v777 + 1));

  v196 = type metadata accessor for NANAttribute(0);
  v197 = *(v196 - 8);
  v198 = *(v197 + 48);
  v199 = (v197 + 48);
  if ((v198)(v195, 1, v196) == 1)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

    sub_100016290(*(&v777 + 1), &unk_100595C00, &qword_10048F790);
LABEL_82:
    (*(v806 + 16))(v777, v803, v853);
    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      *&v819 = v214;
      *v213 = 136315138;
      v215 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v217 = sub_100002320(v215, v216, &v819);

      *(v213 + 4) = v217;
      sub_100141458(v807);
      _os_log_impl(&_mh_execute_header, v211, v212, "Cannot generate a PASN confirmation for the PASN response from %s because the cipher suites information attribute was invalid", v213, 0xCu);
      sub_100002A00(v214);
    }

    else
    {
      sub_100141458(v807);
    }

    (*(v806 + 8))(v777, v853);
    goto LABEL_86;
  }

  if (swift_getEnumCaseMultiPayload() != 30)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

    sub_10012A684(*(&v777 + 1), type metadata accessor for NANAttribute);
    goto LABEL_82;
  }

  *(&v785 + 1) = v721;
  __chkstk_darwin();
  v201 = v771;
  *&v721[-48] = v772;
  *&v721[-32] = v201;
  *&v721[-16] = v803;
  v202 = v200;
  v75 = *(v200 + 16);
  if (!v75)
  {
LABEL_78:

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

    goto LABEL_82;
  }

  v203 = v200 + 33;
  while (1)
  {
    LOWORD(v819) = *(v203 - 1);
    v204 = v790;
    v205 = sub_100144274(&v819);
    v790 = v204;
    if (v204 || v205)
    {
      break;
    }

    v203 += 2;
    if (!--v75)
    {
      goto LABEL_78;
    }
  }

  v235 = v788;

  v236 = v734;
  Array<A>.retrieve(attribute:)(44, v235, v734);

  if ((v198)(v236, 1, v196) == 1)
  {
    sub_100141458(v807);
    sub_100016290(v734, &unk_100595C00, &qword_10048F790);
  }

  else if (swift_getEnumCaseMultiPayload() == 39)
  {
    *(v820 + 10) = *(v734 + 26);
    v237 = v734[1];
    v819 = *v734;
    v820[0] = v237;
    if (WORD4(v820[1]) == v787)
    {
      sub_100141458(v807);
      sub_1001440B0(&v819);
    }

    else
    {
      (*(v806 + 16))(v736, v803, v853);
      v202 = Logger.logObject.getter();
      v256 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v202, v256))
      {
        v257 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        *&v813 = v198;
        *v257 = 136315138;
        v258 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
        v75 = v259;
        v260 = sub_100002320(v258, v259, &v813);

        *(v257 + 4) = v260;
        sub_100141458(v807);
        _os_log_impl(&_mh_execute_header, v202, v256, "Cannot generate a PASN confirmation for the PASN response from %s because the pairing bootstraping attribute was invalid", v257, 0xCu);
        sub_100002A00(v198);

        sub_1001440B0(&v819);
      }

      else
      {
        sub_100141458(v807);
        sub_1001440B0(&v819);
      }

      (*(v806 + 8))(v736, v853);
    }
  }

  else
  {
    sub_100141458(v807);
    sub_10012A684(v734, type metadata accessor for NANAttribute);
  }

LABEL_120:
  sub_10012A6E4(&v803[v786], v739, type metadata accessor for NANPairing.Mode);
  v261 = swift_getEnumCaseMultiPayload();
  if (!v261)
  {

    v276 = v739;
    v277 = *(v739 + 5);
    v807[4] = *(v739 + 4);
    v807[5] = v277;
    v808 = *(v739 + 48);
    v278 = *(v739 + 1);
    v807[0] = *v739;
    v807[1] = v278;
    v279 = *(v739 + 3);
    v807[2] = *(v739 + 2);
    v807[3] = v279;
    sub_100141458(v807);
    v280 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(&v276[*(v280 + 48)], v755, _s3SAEVMa);
    if (qword_10058AAE8 != -1)
    {
      swift_once();
    }

    v202 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    *&v819 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    v281 = *(static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement + 16);
    v268 = *(v727 + 16);

    if (v281 <= v268)
    {
      v267 = v202;
    }

    else
    {
      sub_100235DAC((v281 - v268));
      v267 = v819;
      v281 = *(v819 + 16);
    }

    if (v281)
    {
      v75 = 0;
      v199 = (v727 + 32);
      do
      {
        if (v268 == v75)
        {
          break;
        }

        v262 = v199[v75];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v267 = sub_1000C28C4(v267);
        }

        v300 = v267[2];
        if (v75 >= v300)
        {
          __break(1u);
          goto LABEL_227;
        }

        *(v267 + v75 + 32) &= v262;
        *&v819 = v267;
        ++v75;
      }

      while (v281 != v75);
    }

    v301 = sub_1000C2E80();

    if ((v301 & 1) != 0 && v722 == 3)
    {
      v302 = *(v791 + 2);
      if (v302)
      {
        while (1)
        {
          v303 = *v729;
          v304 = v729[1];
          v305 = v729[2];
          *(&v820[1] + 9) = *(v729 + 41);
          v820[0] = v304;
          v820[1] = v305;
          v819 = v303;
          if (BYTE8(v820[2]) == 5)
          {
            break;
          }

          v729 += 4;
          if (!--v302)
          {
            goto LABEL_151;
          }
        }

        v400 = v819;
        sub_1000C2DC8(&v819, &v813);
        sub_1000C2DC8(&v819, &v813);
        v401 = sub_100033AA8(_swiftEmptyArrayStorage);
        v402 = type metadata accessor for BinaryDecoder();
        swift_allocObject();
        v403 = BinaryDecoder.init(data:userInfo:)(v400, *(&v400 + 1), v401);
        *(&v814 + 1) = v402;
        v75 = sub_10014400C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        *&v815[0] = v75;
        *&v813 = v403;

        v404 = v790;
        v405 = sub_1001427AC(&v813);
        v790 = v404;
        if (v404 || (v407 = v405, v408 = v406, v409 = sub_100033AA8(_swiftEmptyArrayStorage), swift_allocObject(), v410 = BinaryDecoder.init(data:userInfo:)(v407, v408, v409), *&v815[0] = v75, *(&v814 + 1) = v402, *&v813 = v410, v411 = v790, *&v785 = sub_1001F5414(&v813), v784 = v412, v788 = v413, DWORD2(v785) = v414, (v790 = v411) != 0))
        {

          sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
          v415 = 0;
LABEL_192:
          (*(v806 + 16))(v746, v803, v853);
          v416 = Logger.logObject.getter();
          v417 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v416, v417))
          {
            v418 = swift_slowAlloc();
            v419 = swift_slowAlloc();
            *&v813 = v419;
            *v418 = 136315138;
            v420 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
            v75 = sub_100002320(v420, v421, &v813);

            *(v418 + 4) = v75;
            _os_log_impl(&_mh_execute_header, v416, v417, "Cannot generate a PASN confirmation for the PASN response from %s because the SAE wrapped data could not be decoded into a commit and confirmation", v418, 0xCu);
            sub_100002A00(v419);
          }

          (*(v806 + 8))(v746, v853);
          swift_willThrow();
          sub_100017554(v723, v724);
          sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v819);
          sub_1000124C8(v726, v805);
          sub_10012A684(v755, _s3SAEVMa);
          (*(v782 + 8))(v780, v781);
          if (v415)
          {
            sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
          }

          return v75;
        }

        *&v815[0] = v75;
        *(&v814 + 1) = v402;
        *&v813 = v403;

        v486 = v790;
        v487 = sub_1001427AC(&v813);
        v790 = v486;
        if (v486)
        {

LABEL_222:
          sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
          v415 = 1;
          goto LABEL_192;
        }

        v489 = v487;
        v490 = v488;
        v491 = sub_100033AA8(_swiftEmptyArrayStorage);
        swift_allocObject();
        v492 = BinaryDecoder.init(data:userInfo:)(v489, v490, v491);
        *&v815[0] = v75;
        *(&v814 + 1) = v402;
        *&v813 = v492;
        sub_10000AB0C(v489, v490);
        v493 = v790;
        *(&v777 + 1) = sub_1001F5414(&v813);
        v778 = v494;
        v783 = v495;
        LODWORD(v779) = v496;
        v790 = v493;
        if (v493)
        {

          sub_1000124C8(v489, v490);

          goto LABEL_222;
        }

        sub_1000124C8(v489, v490);
        if ((((v788 & 0x1000000000000000) != 0) | (2 * BYTE8(v785))) == 3 && (v788 & 0x2000000000000000) == 0 && (!v803[v151] ? (v504 = 19) : (v504 = 20), (v785 & 1) + 19 == v504))
        {
          if ((((v783 & 0x1000000000000000) != 0) | (2 * v779)) == 3 && (v783 & 0x2000000000000000) != 0)
          {
            v588 = v785;
            v589 = v784;
            v590 = v788;
            v591 = BYTE8(v785);
            sub_100143FBC(v785, v784, v788, SBYTE8(v785));
            sub_100143FBC(v588, v589, v590, v591);
            sub_100143FBC(*(&v777 + 1), v778, v783, v779);
            v592 = v790;
            v270 = sub_100221278(v589, v590 & 0xEFFFFFFFFFFFFFFFLL, v593);
            v790 = v592;
            if (v592)
            {

              sub_100017554(v723, v724);
              v594 = v785;
              v595 = v784;
              v596 = v788;
              v597 = BYTE8(v785);
              sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
              sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
              sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
              v598 = *(&v777 + 1);
              v75 = v778;
              v599 = v783;
              v600 = v779;
              sub_1000B21F4(*(&v777 + 1), v778, v783, v779);
              sub_1000B21F4(v594, v595, v596, v597);
              sub_1000B21F4(v598, v75, v599, v600);
              sub_1000C2E24(&v819);
              sub_1000124C8(v726, v805);
              sub_1000B21F4(v594, v595, v596, v597);
              sub_10012A684(v755, _s3SAEVMa);
              (*(v782 + 8))(v780, v781);
              return v75;
            }

            goto LABEL_271;
          }

          v505 = v788;
          v506 = v785;
          v507 = v784;
          sub_100144000(v785, v784, v788 & 0xEFFFFFFFFFFFFFFFLL);

          sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
          sub_1000B21F4(v506, v507, v505, SBYTE8(v785));
        }

        else
        {

          sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
        }

        (*(v806 + 16))(v745, v803, v853);
        v508 = Logger.logObject.getter();
        v509 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v508, v509))
        {
          v510 = swift_slowAlloc();
          v511 = swift_slowAlloc();
          *&v813 = v511;
          *v510 = 136315138;
          v512 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
          v75 = v513;
          v514 = sub_100002320(v512, v513, &v813);

          *(v510 + 4) = v514;
          _os_log_impl(&_mh_execute_header, v508, v509, "Cannot generate a PASN confirmation for the PASN response from %s because SAE wrapped data could not be decoded into a valid commit and confirmation", v510, 0xCu);
          sub_100002A00(v511);
        }

        (*(v806 + 8))(v745, v853);
        sub_10000B02C();
        swift_allocError();
        *v515 = xmmword_1004881C0;
        *(v515 + 16) = 1;
        swift_willThrow();
        sub_100017554(v723, v724);
        sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
        sub_1000B21F4(*(&v777 + 1), v778, v783, v779);
        sub_1000C2E24(&v819);
        sub_1000124C8(v726, v805);
        sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
        goto LABEL_158;
      }

LABEL_151:

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
      (*(v806 + 16))(v743, v803, v853);
      v306 = Logger.logObject.getter();
      v307 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        *&v819 = v309;
        *v308 = 136315138;
        v310 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
        v312 = sub_100002320(v310, v311, &v819);

        *(v308 + 4) = v312;
        _os_log_impl(&_mh_execute_header, v306, v307, "Cannot generate a PASN confirmation for the PASN response from %s because no SAE wrapped data was included", v308, 0xCu);
        sub_100002A00(v309);
      }

      (*(v806 + 8))(v743, v853);
    }

    else
    {

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
      (*(v806 + 16))(v742, v803, v853);
      v313 = Logger.logObject.getter();
      v314 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v313, v314))
      {
        v315 = swift_slowAlloc();
        v316 = swift_slowAlloc();
        *&v819 = v316;
        *v315 = 136315138;
        v317 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
        v319 = sub_100002320(v317, v318, &v819);

        *(v315 + 4) = v319;
        _os_log_impl(&_mh_execute_header, v313, v314, "Cannot generate a PASN confirmation for the PASN response from %s because the SAE parameters were invalid", v315, 0xCu);
        sub_100002A00(v316);
      }

      (*(v806 + 8))(v742, v853);
    }

    sub_10000B02C();
    swift_allocError();
    *v320 = xmmword_1004881C0;
    *(v320 + 16) = 1;
    swift_willThrow();
    sub_100017554(v723, v724);
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v726, v805);
LABEL_158:
    v233 = _s3SAEVMa;
    v234 = v755;
    goto LABEL_100;
  }

  if (v261 == 1)
  {
    sub_10012A684(v739, type metadata accessor for NANPairing.Mode);
    if (*(v728 + 16) || v722)
    {

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      (*(v806 + 16))(v741, v803, v853);
      v290 = Logger.logObject.getter();
      v291 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v290, v291))
      {
        v292 = swift_slowAlloc();
        *&v807[0] = swift_slowAlloc();
        *v292 = 136315394;
        v293 = v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40);
        v294 = WiFiAddress.description.getter(v293);
        v296 = sub_100002320(v294, v295, v807);

        *(v292 + 4) = v296;
        *(v292 + 12) = 2080;
        v297 = WiFiAddress.description.getter(v293);
        v299 = sub_100002320(v297, v298, v807);

        *(v292 + 14) = v299;
        _os_log_impl(&_mh_execute_header, v290, v291, "Cannot generate a PASN confirmation for the PASN response from %s from %s because a wrapped data format or PMK ID was provided for opportunistic pair setup", v292, 0x16u);
        swift_arrayDestroy();
      }

      (*(v806 + 8))(v741, v853);
      goto LABEL_86;
    }

    v262 = sub_10016FD40(2051755344, 0xE400000000000000);
    v264 = v263;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v265 = __DataStorage.init(length:)();
    *&v819 = v262;
    *(&v819 + 1) = v264;
    *(&v807[1] + 1) = &type metadata for Data;
    *&v807[2] = &protocol witness table for Data;
    *&v807[0] = 0x1C00000000;
    *(&v807[0] + 1) = v265 | 0x4000000000000000;
    v266 = sub_100029B34(v807, &type metadata for Data);
    v267 = *v266;
    v268 = v266[1];
    sub_10000AB0C(v262, v264);
    v269 = v790;
    sub_100178A18(v267, v268, &v819);
    v790 = v269;
    sub_1000124C8(v262, v264);
    v270 = sub_100002A00(v807);
    v786 = *(&v819 + 1);
    v787 = v819;
    v274 = *(&v819 + 1) >> 62;
    if ((*(&v819 + 1) >> 62) > 1)
    {
      if (v274 != 2)
      {
        goto LABEL_300;
      }

      v324 = *(v787 + 2);
      v323 = *(v787 + 3);
      v325 = __OFSUB__(v323, v324);
      v275 = v323 - v324;
      if (!v325)
      {
LABEL_167:
        if (v275 == 32)
        {

          goto LABEL_169;
        }

LABEL_300:
        sub_1000124C8(v787, v786);
        __break(1u);
        goto LABEL_301;
      }

      __break(1u);
    }

    else if (!v274)
    {
      v275 = BYTE6(v786);
      goto LABEL_167;
    }

    LODWORD(v275) = HIDWORD(v787) - v787;
    if (!__OFSUB__(HIDWORD(v787), v787))
    {
      v275 = v275;
      goto LABEL_167;
    }

    __break(1u);
LABEL_271:
    v619 = v270;
    v199 = v271;
    v620 = v272;
    v621 = v273;
    sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
    v622 = sub_100033AA8(_swiftEmptyArrayStorage);
    v262 = type metadata accessor for BinaryEncoder();
    v267 = swift_allocObject();
    *(v267 + 1) = xmmword_100480A90;
    v268 = (v267 + 2);
    v267[4] = v622;
    *(&v814 + 1) = v262;
    *&v815[0] = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    *&v813 = v267;

    v623 = v790;
    IEEE80211Frame.Management.Authentication.encode(to:)(&v813, v619, v199, v620, v621);
    v790 = v623;
    if (!v623)
    {
      sub_1000B21F4(v619, v199, v620, v621);
      sub_100002A00(&v813);
      swift_beginAccess();
      v202 = v267[2];
      v75 = v267[3];
      sub_10000AB0C(v202, v75);

      v518 = v75 >> 62;
      if ((v75 >> 62) > 1)
      {
        if (v518 != 2)
        {
          goto LABEL_292;
        }

        v674 = *(v202 + 16);
        v675 = *(v202 + 24);
        goto LABEL_291;
      }

      if (!v518)
      {
        goto LABEL_292;
      }

      goto LABEL_290;
    }

    sub_100017554(v723, v724);
    sub_1000B21F4(v619, v199, v620, v621);
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    v624 = *(&v777 + 1);
    v75 = v778;
    v625 = v783;
    v626 = v779;
    sub_1000B21F4(*(&v777 + 1), v778, v783, v779);

    v627 = v785;
    v628 = v784;
    v629 = v788;
    v630 = BYTE8(v785);
    sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
    sub_1000B21F4(v624, v75, v625, v626);
    sub_1000C2E24(&v819);
    sub_1000124C8(v726, v805);
    sub_1000B21F4(v627, v628, v629, v630);
    sub_10012A684(v755, _s3SAEVMa);
    (*(v782 + 8))(v780, v781);
    sub_100002A00(&v813);
    return v75;
  }

  sub_100142410(v739, v744, type metadata accessor for NANPairing.SharedAssociation);
  if (v722)
  {

    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    (*(v806 + 16))(v740, v803, v853);
    v282 = Logger.logObject.getter();
    v283 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      v285 = swift_slowAlloc();
      *&v807[0] = v285;
      *v284 = 136315138;
      v286 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
      v288 = sub_100002320(v286, v287, v807);

      *(v284 + 4) = v288;
      _os_log_impl(&_mh_execute_header, v282, v283, "Cannot generate a PASN confirmation for the PASN response from %s because a wrapped data format was provided for pair verification", v284, 0xCu);
      sub_100002A00(v285);
    }

    (*(v806 + 8))(v740, v853);
    sub_10000B02C();
    swift_allocError();
    *v289 = xmmword_1004881C0;
    *(v289 + 16) = 1;
    swift_willThrow();
    sub_100017554(v723, v724);
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v726, v805);
    v233 = type metadata accessor for NANPairing.SharedAssociation;
    v234 = v744;
    goto LABEL_100;
  }

  v321 = v744;
  v322 = v744[1];
  v787 = *v744;
  v786 = v322;
  sub_10000AB0C(v787, v322);
  sub_10012A684(v321, type metadata accessor for NANPairing.SharedAssociation);
LABEL_169:
  v199 = _swiftEmptyArrayStorage;
  while (1)
  {
    v779 = v789[25];
    v326 = sub_10014345C(*&v803[v779]);
    v327 = v326;
    v329 = v328;
    v330 = v328 >> 62;
    if ((v328 >> 62) > 1)
    {
      if (v330 != 2)
      {
        goto LABEL_178;
      }

      v326 = *(v326 + 16);
      v331 = *(v327 + 24);
    }

    else
    {
      if (!v330)
      {
        goto LABEL_178;
      }

      v326 = v326;
      v331 = v327 >> 32;
    }

    if (v331 < v326)
    {
      __break(1u);
    }

LABEL_178:
    v332 = Data.subdata(in:)();
    v334 = v333;
    sub_1000124C8(v327, v329);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_10011727C(0, *(v199 + 2) + 1, 1, v199);
    }

    v336 = *(v199 + 2);
    v335 = *(v199 + 3);
    if (v336 >= v335 >> 1)
    {
      v199 = sub_10011727C((v335 > 1), v336 + 1, 1, v199);
    }

    *(v199 + 2) = v336 + 1;
    v337 = &v199[64 * v336];
    *(v337 + 4) = v332;
    *(v337 + 5) = v334;
    v338 = v820[3];
    v339 = v820[4];
    *(v337 + 10) = v821;
    *(v337 + 3) = v338;
    *(v337 + 4) = v339;
    v337[88] = 7;
    v822 = 1;
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v340 = swift_allocObject();
    *(v340 + 16) = v795;
    v341 = v822;
    *(v340 + 32) = v722;
    *(v340 + 40) = 0;
    *(v340 + 48) = 0;
    *(v340 + 56) = 0xF000000000000000;
    *(v340 + 64) = 2;
    *(v340 + 66) = v341;
    *(v340 + 72) = xmmword_100483C50;
    *(v340 + 88) = 6;
    *&v807[0] = v340;
    sub_1002353A8(v199);
    v788 = *&v807[0];
    v342 = &v803[v789[19]];
    v343 = *(v342 + 2);
    v344 = sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v345 = swift_allocObject();
    v795 = xmmword_1004817D0;
    *(v345 + 16) = xmmword_1004817D0;
    v783 = v342;
    *(v345 + 32) = *v342;
    *(v345 + 36) = v343;
    v346 = sub_10002D874(v345);
    v348 = v347;

    v349 = v804;
    LOWORD(v342) = *(v804 + 2);
    v784 = v344;
    v350 = swift_allocObject();
    *(v350 + 16) = v795;
    *(v350 + 32) = *v349;
    *(v350 + 36) = v342;
    v351 = sub_10002D874(v350);
    v353 = v352;

    *&v813 = v346;
    *(&v813 + 1) = v348;
    v262 = &type metadata for Data;
    *(&v807[1] + 1) = &type metadata for Data;
    *&v807[2] = &protocol witness table for Data;
    *&v807[0] = v351;
    *(&v807[0] + 1) = v353;
    v354 = sub_100029B34(v807, &type metadata for Data);
    v355 = *v354;
    v356 = v354[1];
    sub_10000AB0C(v346, v348);
    sub_10000AB0C(v351, v353);
    v357 = v790;
    sub_100178A18(v355, v356, &v813);
    sub_1000124C8(v351, v353);
    sub_1000124C8(v346, v348);
    sub_100002A00(v807);
    v358 = v813;
    SharedSecret.withUnsafeBytes<A>(_:)();
    v360 = *(&v807[0] + 1);
    v359 = *&v807[0];
    v819 = v358;
    *(&v807[1] + 1) = &type metadata for Data;
    *&v807[2] = &protocol witness table for Data;
    v361 = sub_100029B34(v807, &type metadata for Data);
    v363 = *v361;
    v362 = v361[1];
    sub_10000AB0C(v358, *(&v358 + 1));
    sub_10000AB0C(v359, v360);
    sub_100178A18(v363, v362, &v819);
    sub_1000124C8(v359, v360);
    sub_1000124C8(v358, *(&v358 + 1));
    sub_100002A00(v807);
    v364 = *(&v819 + 1);
    v75 = v819;
    v365 = v748;
    static SymmetricKeySize.bits256.getter();
    v366 = SymmetricKeySize.bitCount.getter();
    v367 = *(v749 + 8);
    v367(v365, v750);
    v790 = v789[17];
    v368 = SymmetricKeySize.bitCount.getter();
    v325 = __OFADD__(v366, v368);
    v369 = v366 + v368;
    if (v325)
    {
      __break(1u);
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v370 = v748;
    static SymmetricKeySize.bits256.getter();
    v262 = SymmetricKeySize.bitCount.getter();
    v367(v370, v750);
    if (__OFADD__(v369, v262))
    {
      goto LABEL_252;
    }

    *&v785 = sub_10012D044(v787, v786, 0xD000000000000013, 0x80000001004B9950, v75, v364, v369 + v262);
    *(&v785 + 1) = v371;
    if (v357)
    {
      (*(v782 + 8))(v780, v781);
      sub_100017554(v723, v724);
      sub_1000124C8(v726, v805);
      sub_1000124C8(v75, v364);
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      goto LABEL_186;
    }

    sub_1000124C8(v75, v364);
    __chkstk_darwin();
    v372 = v771;
    *&v721[-48] = v772;
    *&v721[-32] = v372;
    *&v721[-16] = v803;
    v373 = v752;
    sub_100143034(sub_100144254, &v721[-64], v785, *(&v785 + 1));
    v374 = *(v751 + 48);
    v375 = *(v751 + 64);
    v376 = (v765 + 32);
    v377 = *(v765 + 32);
    v378 = v770;
    (v377)(v768, v373, v770);
    (v377)(v767, &v373[v374], v378);
    v745 = v377;
    v746 = v376;
    (v377)(v769, &v373[v375], v378);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    *(&v777 + 1) = *(&v807[0] + 1);
    v778 = *&v807[0];
    v776 = 0;
    *&v777 = "PASN PTK Derivation";
    LODWORD(v375) = *v783;
    LODWORD(v378) = *(v783 + 1);
    LODWORD(v373) = *(v783 + 2);
    LODWORD(v377) = *(v783 + 3);
    v379 = *(v783 + 4);
    LODWORD(v374) = *(v783 + 5);
    v380 = swift_allocObject();
    *(v380 + 16) = v795;
    LODWORD(v774) = v375;
    *(v380 + 32) = v375;
    LODWORD(v773) = v378;
    *(v380 + 33) = v378;
    LODWORD(v772) = v373;
    *(v380 + 34) = v373;
    LODWORD(v771) = v377;
    *(v380 + 35) = v377;
    LODWORD(v755) = v379;
    *(v380 + 36) = v379;
    LODWORD(v752) = v374;
    *(v380 + 37) = v374;
    v783 = sub_10002D874(v380);
    v775 = v381;

    LODWORD(v374) = *v804;
    LODWORD(v373) = v804[1];
    LODWORD(v377) = v804[2];
    v382 = v804[3];
    LODWORD(v375) = v804[4];
    LODWORD(v378) = v804[5];
    v383 = swift_allocObject();
    *(v383 + 16) = v795;
    LODWORD(v804) = v374;
    *(v383 + 32) = v374;
    LODWORD(v751) = v373;
    *(v383 + 33) = v373;
    LODWORD(v750) = v377;
    *(v383 + 34) = v377;
    LODWORD(v749) = v382;
    *(v383 + 35) = v382;
    LODWORD(v748) = v375;
    *(v383 + 36) = v375;
    LODWORD(v747) = v378;
    *(v383 + 37) = v378;
    v384 = sub_10002D874(v383);
    v386 = v385;

    v387 = v783;
    *&v819 = v783;
    v388 = v775;
    *(&v819 + 1) = v775;
    *(&v807[1] + 1) = &type metadata for Data;
    *&v807[2] = &protocol witness table for Data;
    *&v807[0] = v384;
    *(&v807[0] + 1) = v386;
    v389 = sub_100029B34(v807, &type metadata for Data);
    v390 = *v389;
    v391 = v389[1];
    sub_10000AB0C(v387, v388);
    sub_10000AB0C(v384, v386);
    v392 = v776;
    sub_100178A18(v390, v391, &v819);
    sub_1000124C8(v384, v386);
    sub_1000124C8(v387, v388);
    sub_100002A00(v807);
    v393 = v819;
    v394 = SymmetricKeySize.bitCount.getter();
    v75 = v778;
    v395 = *(&v777 + 1);
    v396 = sub_10012D044(v778, *(&v777 + 1), 0xD00000000000001DLL, v777 | 0x8000000000000000, v393, *(&v393 + 1), v394);
    v790 = v392;
    if (v392)
    {

      sub_100017554(v723, v724);
      sub_1000124C8(v393, *(&v393 + 1));
      sub_1000124C8(v75, v395);
      sub_1000124C8(v785, *(&v785 + 1));
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
      sub_1000124C8(v726, v805);
      v398 = *(v765 + 8);
      v399 = v770;
      v398(v767, v770);
      v398(v768, v399);
      v398(v769, v399);
      (*(v782 + 8))(v780, v781);

      sub_1000124C8(v787, v786);
      return v75;
    }

    v422 = v396;
    v423 = v397;
    sub_1000124C8(v393, *(&v393 + 1));
    sub_1000124C8(v75, v395);
    *&v807[0] = v422;
    *(&v807[0] + 1) = v423;
    SymmetricKey.init<A>(data:)();
    v424 = v790;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v778 = v424;
    v425 = *(&v807[0] + 1);
    v790 = *&v807[0];
    v783 = "NAN Management KEK Derivation";
    v426 = swift_allocObject();
    *(v426 + 16) = v795;
    *(v426 + 32) = v774;
    *(v426 + 33) = v773;
    *(v426 + 34) = v772;
    *(v426 + 35) = v771;
    *(v426 + 36) = v755;
    *(v426 + 37) = v752;
    v427 = sub_10002D874(v426);
    v429 = v428;

    v430 = swift_allocObject();
    *(v430 + 16) = v795;
    *(v430 + 32) = v804;
    *(v430 + 33) = v751;
    *(v430 + 34) = v750;
    *(v430 + 35) = v749;
    *(v430 + 36) = v748;
    *(v430 + 37) = v747;
    v431 = sub_10002D874(v430);
    v433 = v432;

    *&v813 = v427;
    *(&v813 + 1) = v429;
    *(&v807[1] + 1) = &type metadata for Data;
    *&v807[2] = &protocol witness table for Data;
    *&v807[0] = v431;
    *(&v807[0] + 1) = v433;
    v434 = sub_100029B34(v807, &type metadata for Data);
    v435 = *v434;
    v436 = v434[1];
    sub_10000AB0C(v427, v429);
    sub_10000AB0C(v431, v433);
    v437 = v778;
    sub_100178A18(v435, v436, &v813);
    v75 = v437;
    sub_1000124C8(v431, v433);
    sub_1000124C8(v427, v429);
    sub_100002A00(v807);
    v438 = v813;
    v439 = v790;
    v440 = v425;
    v441 = sub_10012D044(v790, v425, 0xD000000000000012, v783 | 0x8000000000000000, v813, *(&v813 + 1), 0x100uLL);
    if (v437)
    {

      sub_100017554(v723, v724);
      sub_1000124C8(v438, *(&v438 + 1));
      sub_1000124C8(v439, v425);
      sub_1000124C8(v785, *(&v785 + 1));
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
      sub_1000124C8(v726, v805);
      v443 = *(v765 + 8);
      v444 = v770;
      v443(v766, v770);
      v443(v767, v444);
      v443(v768, v444);
      v443(v769, v444);
      (*(v782 + 8))(v780, v781);

      sub_1000124C8(v787, v786);
      return v75;
    }

    v460 = v441;
    v461 = v442;
    sub_1000124C8(v438, *(&v438 + 1));
    sub_1000124C8(v439, v440);
    *&v807[0] = v460;
    *(&v807[0] + 1) = v461;
    v462 = v754;
    SymmetricKey.init<A>(data:)();
    sub_10005DC58(&qword_10058DF50, &qword_1004884C8);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v267 = 0;
    v463 = *(v765 + 8);
    v765 += 8;
    v789 = v463;
    (v463)(v462, v770);
    v262 = *(&v819 + 1);
    if (*(&v819 + 1) >> 60 == 15)
    {

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      (*(v806 + 16))(v753, v803, v853);
      v464 = Logger.logObject.getter();
      v465 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v464, v465))
      {
        v466 = swift_slowAlloc();
        v467 = swift_slowAlloc();
        *&v807[0] = v467;
        *v466 = 136315138;
        v468 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
        v470 = sub_100002320(v468, v469, v807);

        *(v466 + 4) = v470;
        _os_log_impl(&_mh_execute_header, v464, v465, "Cannot generate a PASN confirmation for the PASN response from %s because the ND-PMK derivation failed", v466, 0xCu);
        sub_100002A00(v467);
      }

      (*(v806 + 8))(v753, v853);
      sub_10000B02C();
      swift_allocError();
      *v471 = xmmword_1004881C0;
      *(v471 + 16) = 1;
      swift_willThrow();
      sub_100017554(v723, v724);
      sub_1000124C8(v785, *(&v785 + 1));
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v726, v805);
      v472 = v770;
      v473 = v789;
      (v789)(v766, v770);
      v473(v767, v472);
      v473(v768, v472);
      v473(v769, v472);
      goto LABEL_210;
    }

    v783 = v819;
    v474 = *(v791 + 2);
    if (!v474)
    {
LABEL_215:
      sub_100143FBC(v791, v756, v793, v794);

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      (*(v806 + 16))(*(&v754 + 1), v803, v853);
      v476 = Logger.logObject.getter();
      v477 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v476, v477))
      {
        v478 = swift_slowAlloc();
        v479 = swift_slowAlloc();
        *&v807[0] = v479;
        *v478 = 136315138;
        v480 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
        v482 = sub_100002320(v480, v481, v807);

        *(v478 + 4) = v482;
        _os_log_impl(&_mh_execute_header, v476, v477, "Cannot generate a PASN confirmation for the PASN response from %s because no MIC element was found", v478, 0xCu);
        sub_100002A00(v479);
      }

      (*(v806 + 8))(*(&v754 + 1), v853);
      sub_10000B02C();
      swift_allocError();
      *v483 = xmmword_1004881C0;
      *(v483 + 16) = 1;
      swift_willThrow();
      sub_100017554(v723, v724);
      sub_100017554(v783, v262);
      sub_1000124C8(v785, *(&v785 + 1));
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v726, v805);
      v484 = v770;
      v485 = v789;
      (v789)(v766, v770);
      v485(v767, v484);
      v485(v768, v484);
      v485(v769, v484);
      (*(v782 + 8))(v780, v781);
      sub_1000124C8(v787, v786);
      sub_1000B21F4(v791, v756, v793, v794);
      return v75;
    }

    v199 = 0;
    v281 = 0;
    while (1)
    {
      v475 = &v199[v791];
      if (v199[v791 + 88] == 7)
      {
        break;
      }

      ++v281;
      v199 += 64;
      if (v474 == v281)
      {
        goto LABEL_215;
      }
    }

    v497 = *(v475 + 2);
    v498 = *(v475 + 3);
    v499 = *(v475 + 4);
    *(&v807[2] + 9) = *(v475 + 73);
    v807[1] = v498;
    v807[2] = v499;
    v807[0] = v497;
    v500 = *&v803[v779];
    sub_100143FBC(v791, v756, v793, v794);
    sub_1000C2DC8(v807, &v819);
    v778 = v500;
    v501 = sub_10014345C(v500);
    v202 = v501;
    v268 = v502;
    v300 = v502 >> 62;
    if ((v502 >> 62) > 1)
    {
LABEL_227:
      if (v300 != 2)
      {
        goto LABEL_245;
      }

      v501 = *(v202 + 16);
      v503 = *(v202 + 24);
    }

    else
    {
      if (!v300)
      {
        goto LABEL_245;
      }

      v501 = v501;
      v503 = v202 >> 32;
    }

    if (v503 < v501)
    {
      __break(1u);
    }

LABEL_245:
    v75 = Data.subdata(in:)();
    v517 = v516;
    sub_1000124C8(v202, v268);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v791 = sub_1000C2B78(v791);
    }

    v518 = *(v791 + 2);
    if (v281 < v518)
    {
      break;
    }

    __break(1u);
LABEL_290:
    v674 = v202;
    v675 = v202 >> 32;
LABEL_291:
    if (v675 >= v674)
    {
LABEL_292:
      v267 = Data.subdata(in:)();
      v268 = v676;
      sub_1000124C8(v202, v75);
      v199 = sub_10011727C(0, 1, 1, _swiftEmptyArrayStorage);
      v262 = *(v199 + 2);
      v518 = *(v199 + 3);
      v202 = v262 + 1;
      if (v262 < v518 >> 1)
      {
        goto LABEL_293;
      }

      goto LABEL_306;
    }

LABEL_305:
    __break(1u);
LABEL_306:
    v199 = sub_10011727C((v518 > 1), v202, 1, v199);
LABEL_293:
    *(v199 + 2) = v202;
    v677 = &v199[64 * v262];
    *(v677 + 4) = v267;
    *(v677 + 5) = v268;
    v677[88] = 5;
    v678 = v783;
    v680 = WORD4(v777);
    v679 = v778;
    sub_100144000(*(&v777 + 1), v778, v783 & 0xEFFFFFFFFFFFFFFFLL);
    v681 = v790;
    sub_100221C40(v680, v679, v678 & 0xCFFFFFFFFFFFFFFFLL, v682);
    if (v681)
    {

      sub_100017554(v723, v724);
      v684 = *(&v777 + 1);
      v683 = v778;
      v685 = v783;
      v686 = v779;
      sub_1000B21F4(*(&v777 + 1), v778, v783, v779);
      sub_1000B21F4(v684, v683, v685, v686);
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
      sub_1000B21F4(v684, v683, v685, v686);
      v687 = v785;
      v688 = v784;
      v689 = v788;
      v690 = BYTE8(v785);
      sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
      sub_1000C2E24(&v819);
      sub_1000124C8(v726, v805);
      sub_1000B21F4(v687, v688, v689, v690);
      sub_10012A684(v755, _s3SAEVMa);
      (*(v782 + 8))(v780, v781);
      goto LABEL_269;
    }

    sub_1000B21F4(*(&v777 + 1), v778, v783, v779);
    sub_1002217CC(v691);
    v787 = v692;
    v786 = v693;
    v790 = 0;
    v695 = v694;
    v697 = v696;
    sub_10005DC58(&qword_10058CC78, &qword_100482F80);
    v698 = swift_allocObject();
    *(v698 + 16) = v795;
    *(v698 + 32) = v695;
    *(v698 + 40) = v697;
    sub_10000AB0C(v695, v697);
    v699 = _s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(v728, v698);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v699 & 1) == 0)
    {

      sub_100016290(&v828, &qword_10058DF70, &unk_100488500);

      (*(v806 + 16))(v747, v803, v853);
      v707 = Logger.logObject.getter();
      v708 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v707, v708))
      {
        v709 = swift_slowAlloc();
        v710 = swift_slowAlloc();
        *&v813 = v710;
        *v709 = 136315138;
        v711 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
        v713 = sub_100002320(v711, v712, &v813);

        *(v709 + 4) = v713;
        _os_log_impl(&_mh_execute_header, v707, v708, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capability PMK ID was invalid", v709, 0xCu);
        sub_100002A00(v710);
      }

      (*(v806 + 8))(v747, v853);
      sub_10000B02C();
      swift_allocError();
      *v714 = xmmword_1004881C0;
      *(v714 + 16) = 1;
      swift_willThrow();
      sub_100017554(v723, v724);
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v695, v697);
      v715 = *(&v777 + 1);
      v75 = v778;
      v716 = v783;
      v717 = v779;
      sub_1000B21F4(*(&v777 + 1), v778, v783, v779);
      v718 = v785;
      v719 = v784;
      v720 = v788;
      sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
      sub_1000B21F4(v715, v75, v716, v717);
      sub_1000C2E24(&v819);
      sub_1000124C8(v726, v805);
      sub_1000B21F4(v718, v719, v720, SBYTE8(v785));
      sub_10012A684(v755, _s3SAEVMa);
LABEL_210:
      (*(v782 + 8))(v780, v781);
LABEL_186:
      v133 = v787;
      v134 = v786;
      goto LABEL_23;
    }

    sub_1000124C8(v695, v697);
    v700 = *(&v777 + 1);
    v701 = v778;
    v702 = v783;
    v703 = v779;
    sub_1000B21F4(*(&v777 + 1), v778, v783, v779);
    v704 = v785;
    v705 = v784;
    v706 = v788;
    sub_1000B21F4(v785, v784, v788, SBYTE8(v785));
    sub_1000B21F4(v700, v701, v702, v703);
    sub_1000C2E24(&v819);
    sub_1000B21F4(v704, v705, v706, SBYTE8(v785));
    sub_10012A684(v755, _s3SAEVMa);
  }

  v519 = v791;
  v520 = &v199[v791];
  v521 = *&v199[v791 + 32];
  v522 = *&v199[v791 + 48];
  v523 = *&v199[v791 + 64];
  *(&v820[1] + 9) = *&v199[v791 + 73];
  v820[0] = v522;
  v820[1] = v523;
  v819 = v521;
  *(v520 + 4) = v75;
  *(v520 + 5) = v517;
  v520[88] = 7;
  sub_1000C2E24(&v819);
  v524 = sub_100033AA8(_swiftEmptyArrayStorage);
  v525 = type metadata accessor for BinaryEncoder();
  v75 = swift_allocObject();
  v793 = xmmword_100480A90;
  *(v75 + 16) = xmmword_100480A90;
  *(v75 + 32) = v524;
  v794 = v525;
  v818[3] = v525;
  v779 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v818[4] = v779;
  v818[0] = v75;

  IEEE80211Frame.Management.Authentication.encode(to:)(v818, v519, 0, 0x1000000000000000, 0);
  if (v267)
  {

    sub_100017554(v723, v724);
    sub_100017554(v783, v262);
    sub_1000124C8(v785, *(&v785 + 1));
    sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
    sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
    sub_1000124C8(v726, v805);
    sub_1000C2E24(v807);

    v526 = v770;
    v527 = v789;
    (v789)(v766, v770);
    v527(v767, v526);
    v527(v768, v526);
    v527(v769, v526);
    (*(v782 + 8))(v780, v781);
    sub_100002A00(v818);

    sub_1000124C8(v787, v786);

    return v75;
  }

  sub_100002A00(v818);
  swift_beginAccess();
  v528 = *(v75 + 24);
  *&v777 = *(v75 + 16);
  *(&v777 + 1) = v528;
  sub_10000AB0C(v777, v528);

  v845 = 1;
  v846 = 6;
  v847 = v725;
  v848 = v730;
  v849 = v796;
  v850 = v728;
  v851 = 6;
  v852 = 0;
  v529 = sub_100033AA8(_swiftEmptyArrayStorage);
  v530 = v794;
  v531 = swift_allocObject();
  *(v531 + 16) = v793;
  *(v531 + 32) = v529;
  v817[4] = v779;
  v817[3] = v530;
  v817[0] = v531;

  IEEE80211InformationElement.encode(to:)(v817);
  sub_100016290(&v828, &qword_10058DF70, &unk_100488500);
  sub_100002A00(v817);
  swift_beginAccess();
  v532 = *(v531 + 24);
  v776 = *(v531 + 16);
  v796 = v532;
  sub_10000AB0C(v776, v532);

  v843 = v727;
  v844 = 1;
  v533 = sub_100033AA8(_swiftEmptyArrayStorage);
  v534 = v794;
  v75 = swift_allocObject();
  *(v75 + 16) = v793;
  *(v75 + 32) = v533;
  v816[4] = v779;
  v816[3] = v534;
  v816[0] = v75;

  IEEE80211InformationElement.encode(to:)(v816);
  v790 = 0;
LABEL_253:

  sub_100002A00(v816);
  swift_beginAccess();
  v535 = *(v75 + 24);
  *&v754 = *(v75 + 16);
  *(&v754 + 1) = v535;
  sub_10000AB0C(v754, v535);

  v536 = swift_allocObject();
  *(v536 + 16) = v795;
  *(v536 + 32) = v804;
  *(v536 + 33) = v751;
  *(v536 + 34) = v750;
  *(v536 + 35) = v749;
  *(v536 + 36) = v748;
  *(v536 + 37) = v747;
  v537 = sub_10002D874(v536);
  v539 = v538;

  v540 = swift_allocObject();
  *(v540 + 16) = v795;
  *(v540 + 32) = v774;
  *(v540 + 33) = v773;
  *(v540 + 34) = v772;
  *(v540 + 35) = v771;
  *(v540 + 36) = v755;
  *(v540 + 37) = v752;
  v541 = sub_10002D874(v540);
  v543 = v542;

  *&v812 = v537;
  *(&v812 + 1) = v539;
  *(&v814 + 1) = &type metadata for Data;
  *&v815[0] = &protocol witness table for Data;
  *&v813 = v541;
  *(&v813 + 1) = v543;
  v544 = sub_100029B34(&v813, &type metadata for Data);
  v545 = *v544;
  v546 = v544[1];
  sub_10000AB0C(v537, v539);
  sub_10000AB0C(v541, v543);
  v547 = v790;
  sub_100178A18(v545, v546, &v812);
  sub_1000124C8(v541, v543);
  sub_1000124C8(v537, v539);
  sub_100002A00(&v813);
  v548 = v812;
  v809[0] = v812;
  *(&v814 + 1) = &type metadata for Data;
  *&v815[0] = &protocol witness table for Data;
  v549 = v776;
  *&v813 = v776;
  v550 = v796;
  *(&v813 + 1) = v796;
  v551 = sub_100029B34(&v813, &type metadata for Data);
  v552 = *v551;
  v553 = v551[1];
  sub_10000AB0C(v549, v550);
  sub_10000AB0C(v548, *(&v548 + 1));
  sub_100178A18(v552, v553, v809);
  sub_1000124C8(v548, *(&v548 + 1));
  sub_100002A00(&v813);
  v554 = v809[0];
  v812 = v809[0];
  *(&v814 + 1) = &type metadata for Data;
  *&v815[0] = &protocol witness table for Data;
  v556 = *(&v754 + 1);
  v555 = v754;
  v813 = v754;
  v557 = sub_100029B34(&v813, &type metadata for Data);
  v558 = *v557;
  v559 = v557[1];
  sub_10000AB0C(v555, v556);
  sub_10000AB0C(v554, *(&v554 + 1));
  sub_100178A18(v558, v559, &v812);
  sub_1000124C8(v554, *(&v554 + 1));
  sub_100002A00(&v813);
  v560 = v812;
  v809[0] = v812;
  *(&v814 + 1) = &type metadata for Data;
  *&v815[0] = &protocol witness table for Data;
  v561 = *(&v777 + 1);
  v75 = v777;
  v813 = v777;
  v562 = sub_100029B34(&v813, &type metadata for Data);
  v563 = *v562;
  v564 = v562[1];
  sub_10000AB0C(v75, v561);
  sub_10000AB0C(v560, *(&v560 + 1));
  sub_100178A18(v563, v564, v809);
  v753 = v547;
  sub_1000124C8(v560, *(&v560 + 1));
  sub_100002A00(&v813);
  v813 = v809[0];
  v565 = sub_1000BA0A4();
  v566 = v760;
  v744 = v565;
  static HMAC.authenticationCode<A>(for:using:)();
  sub_1000124C8(v813, *(&v813 + 1));
  v567 = v764;
  v568 = HashedAuthenticationCode.rawRepresentation.getter(v764);
  v570 = v569;
  v571 = *(v763 + 8);
  v763 += 8;
  v743 = v571;
  (v571)(v566, v567);
  sub_1002B9AE4(v778, v568, v570, &v813);
  v775 = *(&v813 + 1);
  v756 = v813;
  if (BYTE8(v807[3]) != 7)
  {

    v790 = *(v806 + 16);
    (v790)(v759, v803, v853);
    goto LABEL_266;
  }

  v572 = v807[0];
  v790 = *(v806 + 16);
  (v790)(v757, v803, v853);
  sub_10000AB0C(*&v807[0], *(&v807[0] + 1));
  v573 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v573, v75))
  {
    v574 = swift_slowAlloc();
    v575 = swift_slowAlloc();
    *&v813 = v575;
    *v574 = 136315138;
    v576 = Data.hexString.getter(v572, *(&v572 + 1));
    v578 = sub_100002320(v576, v577, &v813);

    *(v574 + 4) = v578;
    _os_log_impl(&_mh_execute_header, v573, v75, "Responder MIC: %s", v574, 0xCu);
    sub_100002A00(v575);
  }

  v579 = v757;
  v757 = *(v806 + 8);
  (v757)(v579, v853);
  (v790)(v758, v803, v853);
  v580 = v756;
  v581 = v775;
  sub_10000AB0C(v756, v775);
  v582 = Logger.logObject.getter();
  v583 = static os_log_type_t.error.getter();
  sub_1000124C8(v580, v581);
  if (os_log_type_enabled(v582, v583))
  {
    v584 = swift_slowAlloc();
    v585 = swift_slowAlloc();
    *&v813 = v585;
    *v584 = 136315138;
    v586 = Data.hexString.getter(v756, v775);
    v75 = sub_100002320(v586, v587, &v813);

    *(v584 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v582, v583, "Expected responder MIC: %s", v584, 0xCu);
    sub_100002A00(v585);

    sub_1000C2E24(v807);
  }

  else
  {
    sub_1000C2E24(v807);
  }

  (v757)(v758, v853);
  v601 = *(&v807[0] + 1);
  v602 = *&v807[0];
  sub_1000C2DC8(v807, &v813);
  if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v602, v601, v756, v775))
  {
    v603 = sub_100033AA8(_swiftEmptyArrayStorage);
    v604 = v794;
    v605 = swift_allocObject();
    *(v605 + 16) = v793;
    *(v605 + 32) = v603;
    *&v815[0] = v779;
    *(&v814 + 1) = v604;
    *&v813 = v605;

    v606 = v753;
    IEEE80211Frame.Management.Authentication.encode(to:)(&v813, v788, 0, 0, 1);
    v790 = v606;
    if (v606)
    {
      sub_100017554(v723, v724);
      sub_100017554(v783, v262);
      sub_1000124C8(v785, *(&v785 + 1));
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v756, v775);
      sub_1000124C8(v726, v805);

      sub_1000C2E24(v807);
      sub_1000C2E24(v807);
      sub_1000124C8(v777, *(&v777 + 1));
      sub_1000124C8(v754, *(&v754 + 1));
      sub_1000124C8(v776, v796);
      v607 = v770;
      v608 = v789;
      (v789)(v766, v770);
      v608(v767, v607);
      v608(v768, v607);
      v608(v769, v607);
      (*(v782 + 8))(v780, v781);
      sub_100002A00(&v813);

      sub_1000124C8(v787, v786);
      goto LABEL_269;
    }

    sub_100002A00(&v813);
    swift_beginAccess();
    v631 = *(v605 + 24);
    v853 = *(v605 + 16);
    v806 = v631;
    sub_10000AB0C(v853, v631);

    v632 = swift_allocObject();
    *(v632 + 16) = v795;
    *(v632 + 32) = v774;
    *(v632 + 33) = v773;
    *(v632 + 34) = v772;
    *(v632 + 35) = v771;
    *(v632 + 36) = v755;
    *(v632 + 37) = v752;
    v633 = sub_10002D874(v632);
    v635 = v634;

    v636 = swift_allocObject();
    *(v636 + 16) = v795;
    *(v636 + 32) = v804;
    *(v636 + 33) = v751;
    *(v636 + 34) = v750;
    *(v636 + 35) = v749;
    *(v636 + 36) = v748;
    *(v636 + 37) = v747;
    v637 = sub_10002D874(v636);
    v639 = v638;

    *&v809[0] = v633;
    *(&v809[0] + 1) = v635;
    *(&v814 + 1) = &type metadata for Data;
    *&v815[0] = &protocol witness table for Data;
    *&v813 = v637;
    *(&v813 + 1) = v639;
    v640 = sub_100029B34(&v813, &type metadata for Data);
    v641 = *v640;
    v642 = v640[1];
    sub_10000AB0C(v633, v635);
    sub_10000AB0C(v637, v639);
    v643 = v790;
    sub_100178A18(v641, v642, v809);
    sub_1000124C8(v637, v639);
    sub_1000124C8(v633, v635);
    sub_100002A00(&v813);
    v645 = *(&v809[0] + 1);
    v644 = *&v809[0];
    v811 = v809[0];
    *(&v814 + 1) = &type metadata for Data;
    *&v815[0] = &protocol witness table for Data;
    v646 = v726;
    *&v813 = v726;
    v647 = v805;
    *(&v813 + 1) = v805;
    v648 = sub_100029B34(&v813, &type metadata for Data);
    v649 = *v648;
    v650 = v648[1];
    sub_10000AB0C(v644, v645);
    sub_10000AB0C(v646, v647);
    sub_100178A18(v649, v650, &v811);
    sub_1000124C8(v644, v645);
    sub_100002A00(&v813);
    v652 = *(&v811 + 1);
    v651 = v811;
    v809[0] = v811;
    *(&v814 + 1) = &type metadata for Data;
    *&v815[0] = &protocol witness table for Data;
    v199 = v853;
    *&v813 = v853;
    v653 = v806;
    *(&v813 + 1) = v806;
    v654 = sub_100029B34(&v813, &type metadata for Data);
    v655 = *v654;
    v656 = v654[1];
    sub_10000AB0C(v199, v653);
    sub_10000AB0C(v651, v652);
    sub_100178A18(v655, v656, v809);
    v790 = v643;
    sub_1000124C8(v651, v652);
    sub_100002A00(&v813);
    v813 = v809[0];
    v657 = v760;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(v813, *(&v813 + 1));
    v658 = v764;
    v659 = HashedAuthenticationCode.rawRepresentation.getter(v764);
    v661 = v660;
    (v743)(v657, v658);
    sub_1002B9AE4(v778, v659, v661, &v813);
    v264 = *(&v813 + 1);
    v267 = v813;
    v75 = *(v788 + 16);
    v662 = *(&v813 + 1) >> 62;
    if ((*(&v813 + 1) >> 62) > 1)
    {
      v268 = 0;
      v202 = 0;
      if (v662 == 2)
      {
        v268 = *(v813 + 16);
        v202 = *(v813 + 24);
        goto LABEL_282;
      }

LABEL_283:
      v198 = Data.subdata(in:)();
      v199 = v663;
      sub_1000124C8(v267, v264);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_301:
        v788 = sub_1000C2B78(v788);
      }

      sub_100017554(v723, v724);
      sub_1000124C8(v785, *(&v785 + 1));
      sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v756, v775);
      sub_1000124C8(v267, v264);
      sub_1000124C8(v853, v806);
      sub_1000124C8(v726, v805);
      sub_1000C2E24(v807);
      sub_1000C2E24(v807);
      sub_1000124C8(v777, *(&v777 + 1));
      sub_1000124C8(v754, *(&v754 + 1));
      sub_1000124C8(v776, v796);
      (*(v782 + 8))(v780, v781);
      if (v75)
      {
        v518 = *(v788 + 16);
        if (v75 <= v518)
        {
          v664 = v788 + (v75 << 6);
          v75 = v788;
          v665 = *(v664 - 32);
          v666 = *(v664 - 16);
          v667 = *v664;
          *(v815 + 9) = *(v664 + 9);
          v814 = v666;
          v815[0] = v667;
          v813 = v665;
          *(v664 - 32) = v198;
          *(v664 - 24) = v199;
          v668 = v809[1];
          *(v664 - 16) = v809[0];
          *v664 = v668;
          *(v664 + 16) = v810;
          *(v664 + 24) = 7;
          sub_1000C2E24(&v813);
          v669 = v731;
          (*(v732 + 8))(v731, v792);
          v670 = v770;
          v671 = v745;
          (v745)(v669, v769, v770);
          v672 = type metadata accessor for NANPairing.GeneratedKeys(0);
          v671(&v669[v672[5]], v768, v670);
          v671(&v669[v672[6]], v767, v670);
          v671(&v669[v672[8]], v766, v670);
          sub_1000124C8(v787, v786);
          v673 = &v669[v672[7]];
          *v673 = v783;
          v673[1] = v262;
          swift_storeEnumTagMultiPayload();

          return v75;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (!v662)
      {
        v268 = 0;
        v202 = BYTE14(v813);
        goto LABEL_283;
      }

      v268 = v813;
      v202 = v813 >> 32;
LABEL_282:
      sub_10000AB0C(v813, *(&v813 + 1));
      if (v202 >= v268)
      {
        goto LABEL_283;
      }
    }

    __break(1u);
    goto LABEL_305;
  }

  sub_1000C2E24(v807);
  (v790)(v759, v803, v853);
LABEL_266:
  v609 = Logger.logObject.getter();
  v610 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v609, v610))
  {
    v611 = swift_slowAlloc();
    v612 = swift_slowAlloc();
    *&v813 = v612;
    *v611 = 136315138;
    v613 = WiFiAddress.description.getter(v798 | (v797 << 8) | (v799 << 16) | (v800 << 24) | (v801 << 32) | (v802 << 40));
    v615 = sub_100002320(v613, v614, &v813);

    *(v611 + 4) = v615;
    _os_log_impl(&_mh_execute_header, v609, v610, "Cannot generate a PASN confirmation for the PASN response from %s because the MIC was invalid", v611, 0xCu);
    sub_100002A00(v612);
  }

  (*(v806 + 8))(v759, v853);
  sub_10000B02C();
  swift_allocError();
  *v616 = xmmword_1004881C0;
  *(v616 + 16) = 1;
  swift_willThrow();
  sub_100017554(v723, v724);
  sub_100017554(v783, v262);
  sub_1000124C8(v785, *(&v785 + 1));
  sub_100016290(&v835, &qword_10058DF60, &qword_1004884E8);
  sub_1000124C8(v756, v775);
  sub_1000124C8(v726, v805);
  sub_1000C2E24(v807);
  sub_1000124C8(v777, *(&v777 + 1));
  sub_1000124C8(v754, *(&v754 + 1));
  sub_1000124C8(v776, v796);
  v617 = v770;
  v618 = v789;
  (v789)(v766, v770);
  v618(v767, v617);
  v618(v768, v617);
  v618(v769, v617);
  (*(v782 + 8))(v780, v781);
  sub_1000124C8(v787, v786);
LABEL_269:

  return v75;
}

uint64_t sub_10013CED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a8;
  v46 = a6;
  v47 = a7;
  v44 = a4;
  v45 = a5;
  v48 = a3;
  v10 = type metadata accessor for SymmetricKey();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin();
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v38 - v12;
  v14 = type metadata accessor for SymmetricKeySize();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SymmetricKeySize.bits256.getter();
  v18 = SymmetricKeySize.bitCount.getter();
  v19 = *(v15 + 8);
  result = v19(v17, v14);
  v21 = a2;
  if (a1)
  {
    v22 = a2 - a1;
  }

  else
  {
    v22 = 0;
  }

  v23 = v18 + 7;
  if (v18 >= 0)
  {
    v23 = v18;
  }

  v24 = v23 >> 3;
  v55 = v22;
  if (v18 < -7 || v22 < v24)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v51 = 0;
  v52 = v23 >> 3;
  v49 = a1;
  v50 = v21;
  v53 = a1;
  v54 = v21;
  sub_10005DC58(&qword_10058C7F8, &unk_100482000);
  sub_1000B2394();
  v39 = v13;
  SymmetricKey.init<A>(data:)();
  v51 = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v26 = type metadata accessor for NANPairing.PASN(0, &v51);
  (*(v15 + 16))(v17, v48 + *(v26 + 68), v14);
  v27 = SymmetricKeySize.bitCount.getter();
  result = v19(v17, v14);
  v28 = v27 + 7;
  if (v27 >= 0)
  {
    v28 = v27;
  }

  v29 = v24 + (v28 >> 3);
  if (v29 < 0 || v55 < v29)
  {
    goto LABEL_20;
  }

  if (v27 < -7)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v24;
  v52 = v24 + (v28 >> 3);
  v53 = v49;
  v54 = v50;
  v30 = v43;
  SymmetricKey.init<A>(data:)();
  static SymmetricKeySize.bits256.getter();
  v31 = SymmetricKeySize.bitCount.getter();
  result = v19(v17, v14);
  v32 = v29 + v31 / 8;
  if (v32 < 0 || v55 < v32)
  {
    goto LABEL_22;
  }

  if (v31 >= -7)
  {
    v51 = v29;
    v52 = v29 + v31 / 8;
    v53 = v49;
    v54 = v50;
    v33 = sub_10005DC58(&qword_10058DF68, &unk_1004884F0);
    v34 = v42;
    SymmetricKey.init<A>(data:)();
    v35 = *(v33 + 48);
    v36 = *(v40 + 32);
    v37 = v41;
    v36(v34, v39, v41);
    return (v36)(v34 + v35, v30, v37);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10013D264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21[3] = &type metadata for UnsafeRawBufferPointer;
  v21[4] = &protocol witness table for UnsafeRawBufferPointer;
  v21[0] = a1;
  v21[1] = a2;
  v4 = sub_100029B34(v21, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (!*v4 || (v6 = v4[1], v7 = v6 - v5, v6 == v5))
  {
    result = sub_100002A00(v21);
LABEL_4:
    v9 = 0;
    v10 = 0xF000000000000000;
LABEL_5:
    *a3 = v9;
    a3[1] = v10;
    return result;
  }

  if (v7 <= 14)
  {
    v9 = sub_10000AD84(v5, v6);
    v14 = BYTE6(v13);
    v10 = v13 & 0xFFFFFFFFFFFFFFLL;
    result = sub_100002A00(v21);
    if (v14 == 32)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (v7 >= 0x7FFFFFFF)
  {
    v9 = sub_100178EFC(v5, v6);
    v16 = v15;
    result = sub_100002A00(v21);
    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (v19)
    {
      goto LABEL_17;
    }

    v10 = v16 | 0x8000000000000000;
    if (v20 == 32)
    {
      goto LABEL_5;
    }

LABEL_15:
    result = sub_1000124C8(v9, v10);
    goto LABEL_4;
  }

  v9 = sub_10004F46C(v5, v6);
  v12 = v11;
  result = sub_100002A00(v21);
  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v10 = v12 | 0x4000000000000000;
    if (HIDWORD(v9) - v9 == 32)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10013D3A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __n128 a6)
{
  LODWORD(v342) = a4;
  *&v341 = a3;
  v322 = a2;
  v331 = a1;
  v8 = (a5 + 24);
  v9 = *(a5 + 16);
  v10 = *(a5 + 32);
  v11 = (a5 + 40);
  v12 = type metadata accessor for HashedAuthenticationCode();
  v313 = *(v12 - 8);
  v314 = v12;
  __chkstk_darwin();
  v310 = &v307 - v13;
  v363 = type metadata accessor for Logger();
  v346 = *(v363 - 8);
  __chkstk_darwin();
  v345 = &v307 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v332 = (&v307 - v15);
  __chkstk_darwin();
  v329 = &v307 - v16;
  __chkstk_darwin();
  v327 = &v307 - v17;
  __chkstk_darwin();
  v319 = &v307 - v18;
  __chkstk_darwin();
  v315 = &v307 - v19;
  __chkstk_darwin();
  v320 = &v307 - v20;
  __chkstk_darwin();
  v321 = &v307 - v21;
  __chkstk_darwin();
  v318 = &v307 - v22;
  __chkstk_darwin();
  v316 = &v307 - v23;
  __chkstk_darwin();
  v308 = &v307 - v24;
  _s3SAEVMa(0);
  __chkstk_darwin();
  v324 = &v307 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v328 = (&v307 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v311 = v9;
  v312 = v10;
  *&v27 = v9;
  *(&v27 + 1) = *v8;
  *&v28 = v10;
  *(&v28 + 1) = *v11;
  v347 = v27;
  v348 = v28;
  v29 = type metadata accessor for NANPairing.PASN.State(0, &v347);
  v30 = *(v29 - 1);
  __chkstk_darwin();
  v330 = &v307 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v339 = &v307 - v32;
  __chkstk_darwin();
  v344 = (&v307 - v33);
  __chkstk_darwin();
  v35 = &v307 - v34;
  v309 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v36 = __chkstk_darwin();
  v38 = &v307 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &v6[*(a5 + 76)];
  v334 = *v39;
  v333 = v39[1];
  v335 = v39[2];
  v336 = v39[3];
  v40 = v39[4];
  v41 = v39[5];
  v337 = v40;
  v338 = v41;
  v326 = a5;
  v42 = *(a5 + 96);
  v43 = v6;
  v343 = *(v30 + 16);
  (v343)(v35, &v42[v6], v29, v36);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v342 = *(v30 + 8);
    v60 = v29;
    v340 = v30 + 8;
    (v342)(v35, v29);
    v61 = &v42[v6];
    v63 = v343;
    v62 = v344;
    (v343)(v344, v61, v29);
    v64 = v346;
    v65 = v363;
    (*(v346 + 16))(v345, v6, v363);
    v66 = v339;
    v63(v339, v62, v60);
    v67 = Logger.logObject.getter();
    LODWORD(v341) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v341))
    {
      v68 = swift_slowAlloc();
      v332 = v67;
      v69 = v68;
      *&v347 = swift_slowAlloc();
      *v69 = 136315394;
      v70 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
      v72 = sub_100002320(v70, v71, &v347);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;
      v73 = v330;
      (v343)(v330, v66, v60);
      v74 = v342;
      (v342)(v66, v60);
      v75 = sub_10012BF38(v60);
      v77 = v76;
      v74(v73, v60);
      v78 = sub_100002320(v75, v77, &v347);

      *(v69 + 14) = v78;
      v79 = v332;
      _os_log_impl(&_mh_execute_header, v332, v341, "Cannot verify a PASN confirmation from %s when in state: %s", v69, 0x16u);
      swift_arrayDestroy();

      v62 = v344;
      (*(v346 + 8))(v345, v363);
    }

    else
    {
      (v342)(v66, v60);

      (*(v64 + 8))(v345, v65);
    }

    sub_10000B02C();
    swift_allocError();
    *v92 = xmmword_1004881C0;
    *(v92 + 16) = 1;
    swift_willThrow();
    return (v342)(v62, v60);
  }

  v343 = v42;
  v344 = v29;
  v340 = v30;
  v44 = &v35[*(sub_10005DC58(&qword_10058DF58, &qword_1004884E0) + 48)];
  v45 = v44[1];
  v345 = *v44;
  sub_100142410(v35, v38, type metadata accessor for NANPairing.GeneratedKeys);
  v323 = v38;
  if ((((v341 & 0x1000000000000000) != 0) | (2 * v342)) != 2)
  {
    v80 = v346;
    v81 = v332;
    v82 = v363;
    (*(v346 + 16))(v332, v43, v363);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v347 = v86;
      *v85 = 136315138;
      v87 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
      v89 = v45;
      v90 = sub_100002320(v87, v88, &v347);

      *(v85 + 4) = v90;
      v45 = v89;
      _os_log_impl(&_mh_execute_header, v83, v84, "Cannot verify a PASN confirmation from %s because the authentication frame received was not a PASN confirm frame", v85, 0xCu);
      sub_100002A00(v86);
      v91 = v345;

      (*(v80 + 8))(v332, v363);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
      v91 = v345;
    }

    sub_10000B02C();
    swift_allocError();
    *v108 = xmmword_1004881C0;
    *(v108 + 16) = 1;
    swift_willThrow();
    v109 = v91;
    goto LABEL_26;
  }

  v46 = v331;
  sub_100135D74(v331, v360);
  v47 = v363;
  if (v361 == 3)
  {
    v48 = v346;
    v49 = v329;
    (*(v346 + 16))(v329, v6, v363);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v347 = v53;
      *v52 = 136315138;
      v54 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
      v56 = v48;
      v57 = v45;
      v58 = sub_100002320(v54, v55, &v347);
      v59 = v345;

      *(v52 + 4) = v58;
      v45 = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Cannot verify a PASN confirmation from %s because the PASN parameters are missing", v52, 0xCu);
      sub_100002A00(v53);

      (*(v56 + 8))(v329, v363);
    }

    else
    {

      (*(v48 + 8))(v49, v47);
      v59 = v345;
    }

    sub_10000B02C();
    swift_allocError();
    *v121 = xmmword_1004881C0;
    *(v121 + 16) = 1;
    swift_willThrow();
    v109 = v59;
LABEL_26:
    v122 = v45;
LABEL_27:
    sub_1000124C8(v109, v122);
LABEL_28:
    v123 = type metadata accessor for NANPairing.GeneratedKeys;
    v124 = v323;
    return sub_10012A684(v124, v123);
  }

  if (v361 != 2 || v362 >> 60 != 15 || v360[3] >> 60 != 15)
  {
    v110 = v323;
    v111 = v346;
    v112 = v327;
    (*(v346 + 16))();
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v344 = swift_slowAlloc();
      *&v347 = v344;
      *v115 = 136315138;
      v116 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
      v118 = v111;
      v119 = sub_100002320(v116, v117, &v347);
      v120 = v345;
      v110 = v323;

      *(v115 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v113, v114, "Cannot verify a PASN confirmation from %s because the PASN parameters are invalid", v115, 0xCu);
      sub_100002A00(v344);

      (*(v118 + 8))(v327, v363);
    }

    else
    {

      (*(v111 + 8))(v112, v47);
      v120 = v345;
    }

    sub_10000B02C();
    swift_allocError();
    *v125 = xmmword_1004881C0;
    *(v125 + 16) = 1;
    swift_willThrow();
    sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v120, v45);
    v123 = type metadata accessor for NANPairing.GeneratedKeys;
    v124 = v110;
    return sub_10012A684(v124, v123);
  }

  v339 = v45;
  v94 = LOBYTE(v360[0]);
  sub_10012A6E4(&v43[v326[13]], v328, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v126 = v328;
    v127 = v328[5];
    v349[2] = v328[4];
    v349[3] = v127;
    v350 = *(v328 + 48);
    v128 = v328[1];
    v347 = *v328;
    v348 = v128;
    v129 = v328[3];
    v349[0] = v328[2];
    v349[1] = v129;
    sub_100141458(&v347);
    v130 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(v126 + *(v130 + 48), v324, _s3SAEVMa);
    if (v94 == 3)
    {
      v131 = *(v46 + 16);
      v132 = v346;
      if (v131)
      {
        v133 = (v46 + 32);
        while (1)
        {
          v134 = *v133;
          v135 = v133[1];
          v136 = v133[2];
          *&v359[9] = *(v133 + 41);
          v358 = v135;
          *v359 = v136;
          v357 = v134;
          if (v359[24] == 5)
          {
            break;
          }

          v133 += 4;
          if (!--v131)
          {
            goto LABEL_37;
          }
        }

        v198 = v357;
        sub_10000AB0C(v357, *(&v357 + 1));
        sub_10000AB0C(v198, *(&v198 + 1));
        v199 = sub_100033AA8(_swiftEmptyArrayStorage);
        v200 = type metadata accessor for BinaryDecoder();
        v201 = swift_allocObject();
        v202 = 0;
        *(v201 + 40) = &_swiftEmptyDictionarySingleton;
        *(v201 + 16) = v198;
        v203 = *(&v198 + 1) >> 62;
        if ((*(&v198 + 1) >> 62) > 1)
        {
          v204 = v317;
          v205 = v324;
          if (v203 == 2)
          {
            v202 = *(v198 + 16);
          }
        }

        else
        {
          v204 = v317;
          v205 = v324;
          if (v203)
          {
            v202 = v198;
          }
        }

        *(v201 + 32) = v202;
        swift_beginAccess();
        *(v201 + 40) = v199;
        v352 = v200;
        v353 = sub_10014400C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        *&v351 = v201;
        v207 = v204;
        v208 = sub_1001F5414(&v351);
        v212 = v346;
        if (v207)
        {
          sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v357);
          sub_1000124C8(v345, v339);
          sub_10012A684(v205, _s3SAEVMa);
          return sub_10012A684(v323, type metadata accessor for NANPairing.GeneratedKeys);
        }

        if ((((v210 & 0x1000000000000000) != 0) | (2 * v211)) == 3 && (v210 & 0x2000000000000000) != 0)
        {
          LODWORD(v332) = v211;
          v330 = v43;
          v282 = v210;
          v283 = v208;
          v284 = v209;
          sub_100144000(v208, v209, v210 & 0xEFFFFFFFFFFFFFFFLL);
          v329 = v282;
          sub_100221C40(v283, v284, v282 & 0xCFFFFFFFFFFFFFFFLL, v285);
          v317 = 0;
          sub_1000C2E24(&v357);
          v305 = v329;
          v306 = v332;
          sub_1000B21F4(v283, v284, v329, v332);
          sub_1000B21F4(v283, v284, v305, v306);
          sub_10012A684(v205, _s3SAEVMa);
          v43 = v330;
          v46 = v331;
          v96 = v346;
          v168 = *(v331 + 16);
          if (v168)
          {
            goto LABEL_50;
          }

LABEL_53:
          v172 = v319;
          v173 = v363;
          (*(v96 + 16))(v319, v43, v363);
          v174 = v322;
          sub_100143FBC(v46, v322, v341, v342);
          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v175, v176))
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            *&v347 = v178;
            *v177 = 136315138;
            v179 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
            v181 = v96;
            v182 = sub_100002320(v179, v180, &v347);
            v183 = v345;

            *(v177 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v175, v176, "Cannot verify a PASN confirmation from %s because no MIC element was found", v177, 0xCu);
            sub_100002A00(v178);
            v174 = v322;

            (*(v181 + 8))(v319, v363);
            v184 = v323;
            v185 = v339;
          }

          else
          {

            (*(v96 + 8))(v172, v173);
            v184 = v323;
            v185 = v339;
            v183 = v345;
          }

          sub_10000B02C();
          swift_allocError();
          *v188 = xmmword_1004881C0;
          *(v188 + 16) = 1;
          swift_willThrow();
          sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
          sub_1000124C8(v183, v185);
          sub_10012A684(v184, type metadata accessor for NANPairing.GeneratedKeys);
          return sub_1000B21F4(v331, v174, v341, v342);
        }

        sub_1000B21F4(v208, v209, v210, v211);
        v291 = v308;
        v292 = v363;
        (*(v212 + 16))(v308, v43, v363);
        v293 = Logger.logObject.getter();
        v294 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v293, v294))
        {
          v295 = v291;
          v296 = swift_slowAlloc();
          v297 = swift_slowAlloc();
          *&v351 = v297;
          *v296 = 136315138;
          v298 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
          v300 = v212;
          v301 = sub_100002320(v298, v299, &v351);
          v205 = v324;

          *(v296 + 4) = v301;
          _os_log_impl(&_mh_execute_header, v293, v294, "Cannot verify a PASN confirmation from %s because the SAE wrapped data could not be decoded into a confirmation", v296, 0xCu);
          sub_100002A00(v297);

          (*(v300 + 8))(v295, v363);
        }

        else
        {

          (*(v212 + 8))(v291, v292);
        }

        v302 = v339;
        v303 = v345;
        sub_10000B02C();
        swift_allocError();
        *v304 = xmmword_1004881C0;
        *(v304 + 16) = 1;
        swift_willThrow();
        sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
        sub_1000C2E24(&v357);
        sub_1000124C8(v303, v302);
        v167 = v205;
LABEL_47:
        sub_10012A684(v167, _s3SAEVMa);
        goto LABEL_28;
      }

LABEL_37:
      v137 = v316;
      (*(v346 + 16))(v316, v43, v47);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v357 = v141;
        *v140 = 136315138;
        v142 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
        v144 = v132;
        v145 = sub_100002320(v142, v143, &v357);
        v146 = v345;

        *(v140 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v138, v139, "Cannot verify a PASN confirmation from %s because no SAE wrapped data was included", v140, 0xCu);
        sub_100002A00(v141);

        (*(v144 + 8))(v316, v363);
LABEL_44:
        v165 = v339;
LABEL_46:
        sub_10000B02C();
        swift_allocError();
        *v166 = xmmword_1004881C0;
        *(v166 + 16) = 1;
        swift_willThrow();
        sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
        sub_1000124C8(v146, v165);
        v167 = v324;
        goto LABEL_47;
      }
    }

    else
    {
      v132 = v346;
      v137 = v318;
      (*(v346 + 16))(v318, v43, v47);
      v138 = Logger.logObject.getter();
      v158 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v138, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v357 = v160;
        *v159 = 136315138;
        v161 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
        v163 = v132;
        v164 = sub_100002320(v161, v162, &v357);
        v146 = v345;

        *(v159 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v138, v158, "Cannot verify a PASN confirmation from %s because the SAE parameters were invalid", v159, 0xCu);
        sub_100002A00(v160);

        (*(v163 + 8))(v318, v363);
        goto LABEL_44;
      }
    }

    (*(v132 + 8))(v137, v47);
    v165 = v339;
    v146 = v345;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10012A684(v328, type metadata accessor for NANPairing.Mode);
    v96 = v346;
    if (v94)
    {
      v97 = v321;
      (*(v346 + 16))(v321, v43, v47);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v347 = v101;
        *v100 = 136315138;
        v102 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
        v104 = v96;
        v105 = sub_100002320(v102, v103, &v347);
        v106 = v345;

        *(v100 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v98, v99, "Cannot verify a PASN confirmation from %s because a wrapped data format was provided for opportunistic pair setup", v100, 0xCu);
        sub_100002A00(v101);

        (*(v104 + 8))(v321, v363);
        v107 = v339;
      }

      else
      {

        (*(v96 + 8))(v97, v47);
        v107 = v339;
        v106 = v345;
      }

      sub_10000B02C();
      swift_allocError();
      *v186 = xmmword_1004881C0;
      *(v186 + 16) = 1;
      swift_willThrow();
      sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
      v109 = v106;
      v122 = v107;
      goto LABEL_27;
    }
  }

  else
  {
    v96 = v346;
    if (v94)
    {
      v147 = v320;
      (*(v346 + 16))(v320, v43, v47);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        *&v347 = v151;
        *v150 = 136315138;
        v152 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
        v154 = v96;
        v155 = sub_100002320(v152, v153, &v347);
        v156 = v345;

        *(v150 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v148, v149, "Cannot verify a PASN confirmation from %s because a wrapped data format was provided for pair verification", v150, 0xCu);
        sub_100002A00(v151);

        (*(v154 + 8))(v320, v363);
        v157 = v339;
      }

      else
      {

        (*(v96 + 8))(v147, v47);
        v157 = v339;
        v156 = v345;
      }

      sub_10000B02C();
      swift_allocError();
      *v187 = xmmword_1004881C0;
      *(v187 + 16) = 1;
      swift_willThrow();
      sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v156, v157);
      sub_10012A684(v323, type metadata accessor for NANPairing.GeneratedKeys);
      v123 = type metadata accessor for NANPairing.Mode;
      v124 = v328;
      return sub_10012A684(v124, v123);
    }

    sub_10012A684(v328, type metadata accessor for NANPairing.Mode);
  }

  v168 = *(v46 + 16);
  if (!v168)
  {
    goto LABEL_53;
  }

LABEL_50:
  v169 = 0;
  v170 = 0;
  while (1)
  {
    v171 = (v46 + v169);
    if (*(v46 + v169 + 88) == 7)
    {
      break;
    }

    ++v170;
    v169 += 64;
    if (v168 == v170)
    {
      goto LABEL_53;
    }
  }

  v189 = v171[2];
  v190 = v171[3];
  v191 = v171[4];
  *(v349 + 9) = *(v171 + 73);
  v348 = v190;
  v349[0] = v191;
  v347 = v189;
  v192 = *&v43[v326[25]];
  sub_100143FBC(v46, v322, v341, v342);
  sub_1000C2DC8(&v347, &v357);
  v193 = sub_10014345C(v192);
  v194 = v193;
  v196 = v195;
  v197 = v195 >> 62;
  v332 = v192;
  if ((v195 >> 62) <= 1)
  {
    if (!v197)
    {
      goto LABEL_76;
    }

    v193 = v193;
    v206 = v194 >> 32;
LABEL_74:
    if (v206 < v193)
    {
      __break(1u);
    }

    goto LABEL_76;
  }

  if (v197 == 2)
  {
    v193 = *(v193 + 16);
    v206 = *(v194 + 24);
    goto LABEL_74;
  }

LABEL_76:
  v213 = Data.subdata(in:)();
  v215 = v214;
  sub_1000124C8(v194, v196);
  v216 = v331;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B78(v216);
    v216 = result;
  }

  if (v170 >= *(v216 + 16))
  {
    __break(1u);
  }

  else
  {
    v217 = v216 + v169;
    v218 = *(v216 + v169 + 32);
    v219 = *(v216 + v169 + 48);
    v220 = *(v216 + v169 + 64);
    *&v359[9] = *(v216 + v169 + 73);
    v358 = v219;
    *v359 = v220;
    v357 = v218;
    *(v217 + 32) = v213;
    *(v217 + 40) = v215;
    *(v217 + 88) = 7;
    sub_1000C2E24(&v357);
    v221 = sub_100033AA8(_swiftEmptyArrayStorage);
    v222 = type metadata accessor for BinaryEncoder();
    v223 = swift_allocObject();
    *(v223 + 16) = xmmword_100480A90;
    *(v223 + 32) = v221;
    v356[3] = v222;
    v356[4] = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v356[0] = v223;

    v224 = v317;
    IEEE80211Frame.Management.Authentication.encode(to:)(v356, v216, 0, 0, 1);
    v225 = v323;
    if (v224)
    {
      sub_1000124C8(v345, v339);
      sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
      sub_1000C2E24(&v347);

      sub_10012A684(v225, type metadata accessor for NANPairing.GeneratedKeys);
      sub_100002A00(v356);
    }

    else
    {
      v331 = v216;
      sub_100002A00(v356);
      swift_beginAccess();
      v226 = *(v223 + 24);
      v342 = *(v223 + 16);
      sub_10000AB0C(v342, v226);

      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v227 = swift_allocObject();
      v341 = xmmword_1004817D0;
      *(v227 + 16) = xmmword_1004817D0;
      v228 = v333;
      *(v227 + 32) = v334;
      *(v227 + 33) = v228;
      v229 = v336;
      *(v227 + 34) = v335;
      *(v227 + 35) = v229;
      v230 = v338;
      *(v227 + 36) = v337;
      *(v227 + 37) = v230;
      v231 = sub_10002D874(v227);
      v317 = 0;
      v232 = v231;
      v234 = v233;

      v235 = v326[20];
      v330 = v43;
      v236 = &v43[v235];
      v237 = *&v43[v235 + 4];
      v238 = swift_allocObject();
      *(v238 + 16) = v341;
      *(v238 + 32) = *v236;
      *(v238 + 36) = v237;
      v239 = sub_10002D874(v238);
      v241 = v240;

      *&v355[0] = v232;
      *(&v355[0] + 1) = v234;
      v352 = &type metadata for Data;
      v353 = &protocol witness table for Data;
      *&v351 = v239;
      *(&v351 + 1) = v241;
      v242 = sub_100029B34(&v351, &type metadata for Data);
      v244 = *v242;
      v243 = v242[1];
      sub_10000AB0C(v232, v234);
      sub_10000AB0C(v239, v241);
      v245 = v317;
      sub_100178A18(v244, v243, v355);
      *&v341 = v245;
      sub_1000124C8(v239, v241);
      sub_1000124C8(v232, v234);
      sub_100002A00(&v351);
      v246 = v355[0];
      v354 = v355[0];
      v352 = &type metadata for Data;
      v353 = &protocol witness table for Data;
      v247 = v345;
      v248 = v339;
      *&v351 = v345;
      *(&v351 + 1) = v339;
      v249 = sub_100029B34(&v351, &type metadata for Data);
      v250 = *v249;
      v251 = v249[1];
      sub_10000AB0C(v246, *(&v246 + 1));
      sub_10000AB0C(v247, v248);
      sub_100178A18(v250, v251, &v354);
      sub_1000124C8(v246, *(&v246 + 1));
      sub_100002A00(&v351);
      v253 = *(&v354 + 1);
      v252 = v354;
      v355[0] = v354;
      v352 = &type metadata for Data;
      v353 = &protocol witness table for Data;
      v254 = v342;
      *&v351 = v342;
      *(&v351 + 1) = v226;
      v255 = sub_100029B34(&v351, &type metadata for Data);
      v257 = *v255;
      v256 = v255[1];
      *&v341 = v226;
      sub_10000AB0C(v254, v226);
      sub_10000AB0C(v252, v253);
      sub_100178A18(v257, v256, v355);
      sub_1000124C8(v252, v253);
      sub_100002A00(&v351);
      v351 = v355[0];
      v258 = v323;
      sub_1000BA0A4();
      v259 = v310;
      static HMAC.authenticationCode<A>(for:using:)();
      sub_1000124C8(v351, *(&v351 + 1));
      v260 = v314;
      v261 = HashedAuthenticationCode.rawRepresentation.getter(v314);
      v263 = v262;
      (*(v313 + 8))(v259, v260);
      sub_1002B9AE4(v332, v261, v263, &v351);
      v265 = *(&v351 + 1);
      v264 = v351;
      if (BYTE8(v349[1]) == 7 && (v266 = *(&v347 + 1), v267 = v347, sub_1000C2DC8(&v347, &v351), LOBYTE(v266) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v267, v266, v264, v265), sub_1000C2E24(&v347), (v266 & 1) != 0))
      {
        sub_1000124C8(v345, v339);
        sub_1000C2E24(&v347);
        sub_1000124C8(v264, v265);
        sub_1000124C8(v342, v341);
        sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
        v268 = v330;
        v269 = v343;
        (*(v340 + 8))(&v343[v330], v344);
        sub_100142410(v258, &v269[v268], type metadata accessor for NANPairing.GeneratedKeys);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v270 = v346;
        v271 = v315;
        v272 = v363;
        (*(v346 + 16))(v315, v330, v363);
        v273 = Logger.logObject.getter();
        v274 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v344 = v264;
          v277 = v276;
          *&v351 = v276;
          *v275 = 136315138;
          v278 = WiFiAddress.description.getter(v334 | (v333 << 8) | (v335 << 16) | (v336 << 24) | (v337 << 32) | (v338 << 40));
          v280 = v265;
          v281 = sub_100002320(v278, v279, &v351);

          *(v275 + 4) = v281;
          v265 = v280;
          v258 = v323;
          _os_log_impl(&_mh_execute_header, v273, v274, "Cannot verify a PASN confirmation from %s because the MIC was invalid", v275, 0xCu);
          sub_100002A00(v277);
          v264 = v344;

          (*(v270 + 8))(v315, v363);
        }

        else
        {

          (*(v270 + 8))(v271, v272);
        }

        v286 = v339;
        v287 = v345;
        v288 = v342;
        v289 = v341;
        sub_10000B02C();
        swift_allocError();
        *v290 = xmmword_1004881C0;
        *(v290 + 16) = 1;
        swift_willThrow();
        sub_1000124C8(v264, v265);
        sub_100016290(v360, &qword_10058DF60, &qword_1004884E8);
        sub_1000C2E24(&v347);
        sub_1000124C8(v288, v289);
        sub_1000124C8(v287, v286);
        sub_10012A684(v258, type metadata accessor for NANPairing.GeneratedKeys);
      }
    }
  }

  return result;
}