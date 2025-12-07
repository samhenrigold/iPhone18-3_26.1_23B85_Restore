uint64_t getEnumTagSinglePayload for MulticastConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 8))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MulticastConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Layer3Protocol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008ADB4()
{
  result = qword_10058BBC8;
  if (!qword_10058BBC8)
  {
    result = swift_getWitnessTable(asc_1004815E4, &type metadata for NANPeerServiceIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058BBC8);
  }

  return result;
}

unint64_t sub_10008AE0C()
{
  result = qword_10058BBD0;
  if (!qword_10058BBD0)
  {
    result = swift_getWitnessTable(a5, &type metadata for NANPeerServiceIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058BBD0);
  }

  return result;
}

unint64_t sub_10008AE64()
{
  result = qword_10058BBD8;
  if (!qword_10058BBD8)
  {
    result = swift_getWitnessTable(byte_10048157C, &type metadata for NANPeerServiceIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058BBD8);
  }

  return result;
}

unint64_t sub_10008AEB8()
{
  result = qword_10058BBE0;
  if (!qword_10058BBE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MulticastServiceType, &type metadata for MulticastServiceType, v0, v1);
    atomic_store(result, &qword_10058BBE0);
  }

  return result;
}

uint64_t Either<>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v15, v4);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v18;
}

uint64_t Either.customMirror.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v12, v1);
    v18 = v1;
    v14 = sub_1000297D4(v17);
    (*(v2 + 16))(v14, v4, v1);
    Mirror.init(reflecting:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v18 = v6;
    v16 = sub_1000297D4(v17);
    (*(v7 + 16))(v16, v9, v6);
    Mirror.init(reflecting:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v51 = a1;
  v52 = a2;
  v49 = *(a4 - 8);
  __chkstk_darwin();
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v41 - v8;
  v48 = *(v9 - 8);
  __chkstk_darwin();
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v41 - v11;
  v50 = v12;
  v14 = type metadata accessor for Either(0, v13, v12, v12);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v41 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v21 = __chkstk_darwin();
  v23 = &v41 - v22;
  v25 = *(v24 + 48);
  v26 = *(v15 + 16);
  v26(&v41 - v22, v51, v14, v21);
  (v26)(&v23[v25], v52, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v26)(v19, v23, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v48;
      v35 = *(v48 + 32);
      v36 = v41;
      v35(v41, v19, a3);
      v37 = v42;
      v35(v42, &v23[v25], a3);
      v38 = v36;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v34 + 8);
      v39(v37, a3);
      v39(v38, a3);
      goto LABEL_9;
    }

    (*(v48 + 8))(v19, a3);
    goto LABEL_7;
  }

  (v26)(v17, v23, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v49 + 8))(v17, v50);
LABEL_7:
    v32 = 0;
    v15 = v46;
    v14 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v28 = v49;
  v27 = v50;
  v29 = *(v49 + 32);
  v29(v47, v17, v50);
  v30 = v43;
  v29(v43, &v23[v25], v27);
  v31 = v47;
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v28 + 8);
  v33(v30, v27);
  v33(v31, v27);
LABEL_9:
  (*(v15 + 8))(v23, v14);
  return v32 & 1;
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v16, v5);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v11 + 8))(v13, v10);
  }
}

Swift::Int Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10008BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_10008BC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 16) + 8);
  v5[0] = *(*(a3 - 8) + 8);
  v5[1] = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> Either<A, B>, a1, v5);
}

uint64_t sub_10008BCAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008BD28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10008BE50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10008C018(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073707041;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x6269726373627573;
    v12 = 0xEE00746E756F4365;
    if (a1 != 2)
    {
      v11 = 0xD000000000000016;
      v12 = 0x80000001004B7050;
    }

    v13 = 0x436873696C627570;
    v14 = 0xEC000000746E756FLL;
    if (!a1)
    {
      v13 = 0x664F7265626D756ELL;
      v14 = 0xEC00000073707041;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 1)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x80000001004B70B0;
    v5 = 0xD000000000000013;
    v6 = 0x80000001004B70D0;
    if (a1 != 7)
    {
      v6 = 0x80000001004B70F0;
    }

    if (a1 != 6)
    {
      v5 = 0xD00000000000001BLL;
      v4 = v6;
    }

    v7 = 0x80000001004B7070;
    v8 = 0xD000000000000011;
    if (a1 == 4)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x80000001004B7090;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v16 = "datapathInitiatorCount";
LABEL_44:
        v2 = (v16 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v2 = 0xEE00746E756F4365;
      if (v9 != 0x6269726373627573)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v2 = 0xEC000000746E756FLL;
      if (v9 != 0x436873696C627570)
      {
        goto LABEL_52;
      }
    }

    else if (v9 != 0x664F7265626D756ELL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001004B70B0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (a2 == 7)
        {
          v15 = "concurrentDatapathInitiator";
        }

        else
        {
          v15 = "concurrentDatapathResponder";
        }

        v2 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v16 = "datapathResponderCount";
      goto LABEL_44;
    }

    v2 = 0x80000001004B7090;
    if (v9 != 0xD000000000000011)
    {
LABEL_52:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v2)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_10008C2D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x80000001004B5FF0;
  if (a1 != 5)
  {
    v4 = 0x44495353656D6173;
    v5 = 0xE800000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x424453796DLL;
  if (a1 != 3)
  {
    v7 = 0x42445372656570;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6172666E49796DLL;
  if (a1 != 1)
  {
    v9 = 0x72666E4972656570;
    v8 = 0xE900000000000061;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65636976726573;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6172666E49796DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE900000000000061;
        if (v10 != 0x72666E4972656570)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x65636976726573)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x80000001004B5FF0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x44495353656D6173)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x424453796DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x42445372656570)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10008C504(char a1, char a2)
{
  if (qword_100482218[a1] == qword_100482218[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10008C56C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF74696D736E6172;
  v3 = 0x546873696C627570;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4)
    {
      v6 = 0x80000001004B6420;
    }

    else
    {
      v6 = 0x80000001004B6400;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x546873696C627570;
    v6 = 0xEF74696D736E6172;
  }

  else if (a1 == 3)
  {
    v5 = 0x526873696C627570;
    v6 = 0xEE00657669656365;
  }

  else
  {
    v5 = 0x73655265676E6172;
    v6 = 0xED000065736E6F70;
  }

  v7 = 0x526873696C627570;
  v8 = 0xEE00657669656365;
  if (a2 != 3)
  {
    v7 = 0x73655265676E6172;
    v8 = 0xED000065736E6F70;
  }

  if (a2 != 2)
  {
    v3 = v7;
    v2 = v8;
  }

  v9 = 0xD000000000000011;
  v10 = 0x80000001004B6420;
  if (a2)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v10 = 0x80000001004B6400;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10008C738(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000796C6E4FLL;
  v3 = 0x656C626172696170;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6972696150796E61;
    }

    else
    {
      v5 = 7105633;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E4F646572696170;
    }

    else
    {
      v5 = 0x656C626172696170;
    }

    if (v4)
    {
      v6 = 0xEA0000000000796CLL;
    }

    else
    {
      v6 = 0xEC000000796C6E4FLL;
    }
  }

  v7 = 0x6972696150796E61;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 7105633;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 0x6E4F646572696170;
    v2 = 0xEA0000000000796CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10008C880(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00657275746375;
  v3 = 0x7274736172666E69;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1818523489;
    }

    else
    {
      v5 = 0x7274736172666E69;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEE00657275746375;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x67616E614D6E616ELL;
    v6 = 0xED0000746E656D65;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x617461446E616ELL;
    }

    else
    {
      v5 = 0x6E6574614C776F6CLL;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA00000000007963;
    }
  }

  v7 = 0x67616E614D6E616ELL;
  v8 = 0xED0000746E656D65;
  v9 = 0xE700000000000000;
  v10 = 0x617461446E616ELL;
  if (a2 != 3)
  {
    v10 = 0x6E6574614C776F6CLL;
    v9 = 0xEA00000000007963;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 1818523489;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10008CA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v25 = a3;
  v26 = a5;
  v6 = a4;
  v7 = type metadata accessor for Logger();
  v24 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v27 = 0;
  v13 = Apple80211Open();
  if (v13 || (v16 = v27) == 0)
  {

LABEL_3:
    sub_10000B02C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    swift_willThrow();

    sub_100010520(*(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler), *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8));
    type metadata accessor for AppleDevice.InterfaceHandle(0);
    swift_deallocPartialClassInstance();
    return v5;
  }

  v17 = String._bridgeToObjectiveC()();

  v13 = Apple80211BindToInterfaceWithService();

  if (v13)
  {
    Apple80211Close();
    goto LABEL_3;
  }

  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service) = v6;
  v18 = v26;
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) = v26;
  Logger.init(subsystem:category:)();
  (*(v24 + 32))(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_logger, v9, v7);
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference) = v16;
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex) = v25;
  if (v18 - 2 >= 2)
  {
    if (v18 == 1)
    {
      if (qword_10058AA30 != -1)
      {
        swift_once();
      }

      v19 = &static OS_dispatch_queue.awdl;
    }

    else
    {
      if (qword_10058AA38 != -1)
      {
        swift_once();
      }

      v19 = &static OS_dispatch_queue.p2p;
    }
  }

  else
  {
    if (qword_10058AA28 != -1)
    {
      swift_once();
    }

    v19 = &static OS_dispatch_queue.nan;
  }

  v20 = *v19;
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue) = v20;
  v21 = *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service);
  v22 = v20;
  IOObjectRetain(v21);
  return v5;
}

void sub_10008CE30()
{
  v1 = (v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
  if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler))
  {
    __break(1u);
  }

  else
  {
    IOObjectRelease(*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service));
    Apple80211Close();
    if ((*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer + 16) & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer))
      {
      }
    }

    v2 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_logger;
    v3 = type metadata accessor for Logger();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);

    sub_100010520(*v1, v1[1]);
  }
}

uint64_t sub_10008CF3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = a2;
  v12 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue;
  if (a1)
  {
    v13 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v14 = a1;
  }

  else
  {
    v13 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v14 = v13;
  }

  *&v12[v4] = v14;
  v15 = v14;
  v16 = a1;

  *v11 = v15;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v17 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = (v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer);
  if ((*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer + 16) & 1) == 0 && *v18)
  {
  }

  v11 = swift_slowAlloc();
  v15 = v11 + 256;
  *v18 = v11;
  *(v18 + 1) = v11 + 256;
  v18[16] = 0;
  v19 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role;
  if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) > 1u || *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role))
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v17 = *&v12[v4];
  v21 = *(v4 + v19);
  if ((v21 - 2) < 2)
  {
    v22 = qword_10058AA28;
    v23 = v17;
    if (v22 == -1)
    {
LABEL_14:
      v24 = &static OS_dispatch_queue.nan;
      goto LABEL_22;
    }

LABEL_39:
    swift_once();
    goto LABEL_14;
  }

  if (v21 == 1)
  {
    v25 = qword_10058AA30;
    v26 = v17;
    if (v25 != -1)
    {
      swift_once();
    }

    v24 = &static OS_dispatch_queue.awdl;
  }

  else
  {
    v27 = qword_10058AA38;
    v28 = v17;
    if (v27 != -1)
    {
      swift_once();
    }

    v24 = &static OS_dispatch_queue.p2p;
  }

LABEL_22:
  v29 = *v24;
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v30 = v29;
  v31 = static NSObject.== infix(_:_:)();

  if (v31)
  {
    v32 = sub_10008D42C;
    v33 = 1;
    goto LABEL_25;
  }

LABEL_24:
  v33 = 0;
  v32 = sub_10008D44C;
LABEL_25:
  v17 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference);
  v34 = *&v12[v4];
  v4 = swift_allocObject();
  *(v4 + 16) = v42;
  *(v4 + 24) = a3;
  *(v4 + 32) = v11;
  *(v4 + 40) = v15;
  v12 = v34;

  v35 = v32(v17, v34, sub_100002DDC, v4);

  if (v35)
  {
    LODWORD(result) = v35;
LABEL_27:
    v37 = result;
    sub_10000B02C();
    swift_allocError();
    *v38 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    return swift_willThrow();
  }

  else if (v33)
  {
    v39 = 0;
    while (v39 != 120)
    {
      v40 = *(&off_100555FD8 + v39 + 32);
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (HIDWORD(v40))
      {
        goto LABEL_37;
      }

      result = Apple80211StartMonitoringEvent();
      v39 += 8;
      if (result)
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t sub_10008D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100002B8C;
    v12[3] = a5;
    v7 = a1;
    v8 = a2;
    v9 = _Block_copy(v12);

    a1 = v7;
    a2 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a6(a1, a2, v9);
  _Block_release(v9);
  return v10;
}

uint64_t sub_10008D540()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin();
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    Apple80211EventMonitoringHalt();
    v9 = (v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v10 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v11 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    *v9 = 0;
    v9[1] = 0;
    return sub_100010520(v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10008D678(void (*a1)(char *), void (*a2)(char *))
{
  v3 = v2;
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v13 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    *v12 = v13;
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
    sub_10001F89C(a1, a2);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v8);
    if (v13)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;

      sub_10008CF3C(0, sub_1000B2C04, v15);

      v16 = (v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v17 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v18 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
      *v16 = a1;
      v16[1] = a2;

      sub_100010520(v17, v18);
      *v7 = 3;
      swift_storeEnumTagMultiPayload();
      a1(v7);
      sub_100010520(a1, a2);
      sub_100012468(v7, type metadata accessor for DriverEvent);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10008DA5C(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  if (*(v1 + 32))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10008DB9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (*(v0 + 32))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10008DD68(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008DEB0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10008C880(v2, v5) & 1) == 0)
  {
    return 0;
  }

  result = (v4 | v7) == 0;
  if (v4 && v7)
  {
    if (v3 == v6 && v4 == v7)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

id sub_10008DF90()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(WiFiSoftError);
    v4 = String._bridgeToObjectiveC()();
    v2 = [v3 initWithName:v4];

    v5 = *(v0 + 64);
    *(v0 + 64) = v2;
    v6 = v2;
    sub_1000AEAEC(v5);
  }

  sub_1000B1DC4(v1);
  return v2;
}

uint64_t AppleDevice.keychain.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t AppleDevice.preferencesStorage.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 208);

  v3 = v2;
  return v1;
}

IONotificationPort *AppleDevice.init()()
{
  v1 = v0;
  v59 = *v0;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v54 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin();
  v48 = v4;
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BC88, &unk_1004818B0);
  __chkstk_darwin();
  v58 = &v48 - v5;
  v6 = type metadata accessor for RoutingSocket(0);
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin();
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin();
  v63 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v51 = type metadata accessor for DispatchQoS();
  v50 = *(v51 - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Lock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  v0[3] = v12;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v0[5] = _swiftEmptyArrayStorage;
  v0[6] = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v64 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
  v65 = v11;
  v0[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[8] = 1;
  *(v0 + 9) = 0u;
  v0[19] = 0;
  *(v0 + 11) = 0u;
  *(v0 + 13) = 0u;
  *(v0 + 15) = 0u;
  v0[17] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = &_swiftEmptyDictionarySingleton;
  result = kSecAttrViewHintHome;
  if (kSecAttrViewHintHome)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    type metadata accessor for AppleKeychain(0);
    swift_allocObject();
    *(v1 + 23) = AppleKeychain.init(accessGroup:view:)(0xD000000000000012, 0x80000001004B4EC0, v15, v17);
    if (qword_10058A838 != -1)
    {
      swift_once();
    }

    v18 = static SCPreferencesRef.p2pPreferences;
    type metadata accessor for InMemoryPreferenceStorage();
    v19 = swift_allocObject();
    *(v19 + 16) = &_swiftEmptyDictionarySingleton;
    v20 = swift_allocObject();
    v21 = v18;
    v22 = swift_slowAlloc();
    *(v20 + 16) = v22;
    *v22 = 0;
    *(v1 + 24) = v20;
    *(v1 + 25) = v19;
    *(v1 + 26) = v21;
    v23 = v1 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
    *(v23 + 32) = 0;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    v24 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
    Logger.init(subsystem:category:)();
    type metadata accessor for Socket();
    swift_allocObject();
    v25 = Socket.init(domain:type:proto:)(2, 2, 0);
    if (!v25)
    {
      goto LABEL_7;
    }

    v26 = v25;
    v27 = v58;
    RoutingSocket.init()(v58);
    if ((*(v56 + 48))(v27, 1, v57) == 1)
    {

      sub_100016290(v27, &qword_10058BC88, &unk_1004818B0);
LABEL_7:

      sub_1000AEAEC(*(v1 + 8));
      sub_100016290((v1 + 18), &qword_10058BA80, &qword_1004818C0);

      sub_100016290(v23, &qword_10058BCA8, &qword_1004818C8);
      (*(v60 + 8))(v1 + v24, v61);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v28 = v55;
    sub_100016DFC(v27, v55, type metadata accessor for RoutingSocket);
    *(v1 + 2) = v26;
    sub_10001251C(v28, v1 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_neighborDiscoveryRoutingSocket, type metadata accessor for RoutingSocket);

    result = IONotificationPortCreate(kIOMainPortDefault);
    if (result)
    {
      *(v1 + 18) = result;
      if (qword_10058AA38 != -1)
      {
        v47 = result;
        swift_once();
        result = v47;
      }

      IONotificationPortSetDispatchQueue(result, static OS_dispatch_queue.p2p);
      sub_1000824E4(&off_100556070);
      sub_100016290(&unk_100556090, &qword_10058BCB8, &qword_1004818D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = *(v1 + 18);
      swift_beginAccess();
      v31 = isa;
      LODWORD(isa) = IOServiceAddMatchingNotification(v30, "IOServiceMatched", v31, sub_100090D14, v1, v1 + 38);
      swift_endAccess();
      if (isa)
      {

        sub_100012468(v28, type metadata accessor for RoutingSocket);
      }

      else
      {
        v32 = *(v1 + 18);
        swift_beginAccess();
        LODWORD(v32) = IOServiceAddMatchingNotification(v32, "IOServiceTerminate", v31, sub_10009179C, v1, v1 + 39);
        swift_endAccess();
        if (!v32)
        {
          [*(v1 + 6) setTargetQueue:*(v1 + 7)];
          v33 = *(v1 + 6);
          v34 = swift_allocObject();
          swift_weakInit();
          v71 = sub_1000AED24;
          v72 = v34;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_100091F90;
          v70 = &unk_10055EC90;
          v35 = _Block_copy(&aBlock);
          v36 = v33;

          [v36 setEventHandler:v35];
          _Block_release(v35);

          [*(v1 + 6) activate];
          v37 = *(v1 + 6);
          v64 = *(v1 + 7);
          v39 = v60;
          v38 = v61;
          v40 = v49;
          (*(v60 + 16))(v49, v1 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger, v61);
          v41 = (*(v39 + 80) + 24) & ~*(v39 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = v37;
          (*(v39 + 32))(v42 + v41, v40, v38);
          v71 = sub_1000AED2C;
          v72 = v42;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_10000C8B8;
          v70 = &unk_10055ECE0;
          v43 = _Block_copy(&aBlock);
          v63 = v37;
          v44 = v65;
          static DispatchQoS.unspecified.getter();
          v66 = _swiftEmptyArrayStorage;
          sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10005DC58(&unk_100595270, &unk_1004AEC80);
          sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
          v45 = v52;
          v46 = v54;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v43);

          (*(v53 + 8))(v45, v46);
          (*(v50 + 8))(v44, v51);
          sub_100012468(v55, type metadata accessor for RoutingSocket);

          return v1;
        }

        sub_100012468(v28, type metadata accessor for RoutingSocket);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10008EF20(io_iterator_t a1)
{
  v2 = v1;
  v172 = *v1;
  v166 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v166 - 8);
  __chkstk_darwin();
  v169 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for DispatchQoS();
  v6 = *(v165 - 8);
  __chkstk_darwin();
  v170 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Logger();
  v171 = *(v168 - 8);
  v8 = *(v171 + 64);
  __chkstk_darwin();
  v167 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v2[3];
  os_unfair_lock_lock(*(v173 + 16));
  v9 = IOIteratorNext(a1);
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
    v12 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
    swift_beginAccess();
    swift_beginAccess();
    v152 = v12;
    swift_beginAccess();
    v180 = 0;
    v13 = kCFAllocatorDefault;
    v163 = "IO80211VirtualInterfaceRole";
    v164 = "%02X:%02X:%02X:%02X:%02X:%02X";
    v153 = 0x80000001004B8250;
    v158 = v8 + 7;
    v159 = v171 + 16;
    v157 = v171 + 32;
    v162 = (v4 + 8);
    v160 = &v184;
    v161 = (v6 + 8);
    v150 = 0x80000001004B8230;
    v151 = &v189;
    *&v14 = 136315138;
    v175 = v14;
    *&v14 = 136315394;
    v154 = v14;
    *&v14 = 136315650;
    v155 = v14;
    v176 = a1;
    v177 = v11;
    v178 = kCFAllocatorDefault;
    v179 = v2;
    while (1)
    {
      v15 = String._bridgeToObjectiveC()();
      CFProperty = IORegistryEntryCreateCFProperty(v10, v15, v13, 0);

      if (!CFProperty || (*&v183 = CFProperty, (swift_dynamicCast() & 1) == 0))
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Matched a service but unable to query its interface name", v38, 2u);
        }

        goto LABEL_3;
      }

      v18 = *(&v188 + 1);
      v17 = v188;
      v19 = v2[4];
      if (*(v19 + 16))
      {

        v20 = sub_1000102E8(v17, v18);
        if (v21)
        {
          v22 = v20;
          v23 = v13;
          v24 = v18;
          v25 = v17;
          v26 = *(v19 + 36);

          if (v22 < 0)
          {
            goto LABEL_153;
          }

          v27 = v179[4];
          if (v22 >= 1 << *(v27 + 32))
          {
            goto LABEL_153;
          }

          if (((*(v27 + 8 * (v22 >> 6) + 64) >> v22) & 1) == 0)
          {
            goto LABEL_154;
          }

          if (v26 != *(v27 + 36))
          {
            goto LABEL_155;
          }

          v28 = *(*(v27 + 56) + 8 * v22);
          v29 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service;
          v30 = *(v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service);
          *(v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service) = v10;

          IOObjectRelease(v30);
          IOObjectRetain(*(v28 + v29));

          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *&v188 = v34;
            *v33 = v175;
            v35 = sub_100002320(v25, v24, &v188);

            *(v33 + 4) = v35;
            v11 = v177;
            _os_log_impl(&_mh_execute_header, v31, v32, "Already discovered %s", v33, 0xCu);
            sub_100002A00(v34);
            a1 = v176;
          }

          else
          {
          }

          IOObjectRelease(v10);
          v10 = IOIteratorNext(a1);
          v13 = v23;
          v2 = v179;
          goto LABEL_5;
        }
      }

      memset(v193, 0, 44);
      KeyPath = swift_getKeyPath();

      v40 = v180;
      sub_1000AEE10(v17, v18, v193, KeyPath, 0x10uLL);

      sub_10001C288(0);
      if (ioctl(_:_:_:)() || (v193[1] & 0xE0) != 0x80)
      {
        v180 = v40;

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = v17;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *&v188 = v54;
          *v53 = v175;
          v55 = sub_100002320(v52, v18, &v188);

          *(v53 + 4) = v55;
          v11 = v177;
          _os_log_impl(&_mh_execute_header, v50, v51, "Ignoring %s because its not a WiFi interface", v53, 0xCu);
          sub_100002A00(v54);
          a1 = v176;
        }

        else
        {
        }

        v13 = v178;
        goto LABEL_4;
      }

      sub_10001F8F4(&qword_10058BD10, type metadata accessor for AppleDevice, protocol conformance descriptor for AppleDevice);
      static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for UInt32, &v188);
      v180 = v40;
      if (BYTE4(v188))
      {

        v36 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        v42 = os_log_type_enabled(v36, v41);
        v13 = v178;
        if (v42)
        {
          v43 = v17;
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v188 = v45;
          *v44 = v175;
          v46 = sub_100002320(v43, v18, &v188);

          *(v44 + 4) = v46;
          v11 = v177;
          v47 = v41;
          v48 = v36;
          v49 = "Ignoring %s because no interface index found";
          goto LABEL_150;
        }

LABEL_151:

LABEL_3:

LABEL_4:
        IOObjectRelease(v10);
        v10 = IOIteratorNext(a1);
        goto LABEL_5;
      }

      v174 = v17;
      LODWORD(v156) = v188;
      v56 = String._bridgeToObjectiveC()();
      v13 = v178;
      v57 = IORegistryEntryCreateCFProperty(v10, v56, v178, 0);

      if (v57 && (*&v182[0] = v57, (swift_dynamicCast() & 1) != 0))
      {
        v58 = *(&v183 + 1);
        v59 = v183;
        if (!*(&v183 + 1))
        {
          goto LABEL_148;
        }
      }

      else
      {
        v60 = String._bridgeToObjectiveC()();
        v61 = IORegistryEntryCreateCFProperty(v10, v60, v13, 0);

        if (!v61)
        {
          goto LABEL_148;
        }

        *&v183 = v61;
        v62 = swift_dynamicCast();
        v58 = *(&v188 + 1);
        if (v62)
        {
          v59 = v188;
        }

        else
        {
          v58 = 0;
          v59 = 0;
        }

        if (!v58)
        {
          goto LABEL_148;
        }
      }

      if (v59 == 0x7274736172666E49 && v58 == 0xEE00657275746375)
      {
        v147 = 0;
        v2 = v179;
        goto LABEL_52;
      }

      v149 = v58;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v147 = 0;
        v2 = v179;
        goto LABEL_52;
      }

      v2 = v179;
      if (v59 == 0x6B6E694C726941 && v149 == 0xE700000000000000)
      {
        v147 = 1;
        goto LABEL_52;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v147 = 1;
        goto LABEL_52;
      }

      if (v59 == 0xD000000000000014 && v153 == v149)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_124;
      }

      if (v59 == 0xD000000000000019 && v150 == v149)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
LABEL_124:
        v147 = 2;
      }

      else if (v59 == 0x6177412D69466957 && v149 == 0xEF61746144206572)
      {
        v147 = 3;
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v138 = v174;
          if ((v59 != 0x6E6574614C776F4CLL || v149 != 0xEA00000000007963) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v59 == 0x504174666F53 && v149 == 0xE600000000000000)
            {

LABEL_147:

              IOObjectRelease(v10);
              a1 = v176;
              v10 = IOIteratorNext(v176);
              v11 = v177;
              v13 = v178;
              v2 = v179;
              goto LABEL_5;
            }

            v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a1 = v176;
            v11 = v177;
            v13 = v178;
            if (v139)
            {
              goto LABEL_147;
            }

LABEL_148:

            v2 = v179;
            v36 = Logger.logObject.getter();
            v140 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v36, v140))
            {
              goto LABEL_151;
            }

            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *&v188 = v45;
            *v44 = v175;
            v141 = sub_100002320(v174, v18, &v188);

            *(v44 + 4) = v141;
            v11 = v177;
            v47 = v140;
            v48 = v36;
            v49 = "Unable to find role for interface: %s";
LABEL_150:
            _os_log_impl(&_mh_execute_header, v48, v47, v49, v44, 0xCu);
            sub_100002A00(v45);
            a1 = v176;

            goto LABEL_3;
          }

          v65 = 4;
          v64 = v138;
LABEL_54:
          sub_100092524(v2, v65, v64, v18);

          goto LABEL_4;
        }

        v147 = 3;
      }

LABEL_52:

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v63)
      {
        v64 = v174;
        v65 = v147;
        goto LABEL_54;
      }

      type metadata accessor for AppleDevice.InterfaceHandle(0);
      swift_allocObject();

      v66 = v174;
      v67 = v180;
      v68 = sub_10008CA1C(v174, v18, v156, v10, v147);
      if (v67)
      {

        swift_errorRetain();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          LODWORD(v149) = v70;
          v72 = v71;
          v148 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          *&v188 = v156;
          *v72 = v155;
          *(v72 + 4) = sub_100002320(v66, v18, &v188);
          *(v72 + 12) = 2080;
          v180 = v69;
          v73 = v147;
          v74 = 5128526;
          if (v147 != 2)
          {
            v74 = 0x61746144204E414ELL;
          }

          v75 = 0xE300000000000000;
          if (v147 != 2)
          {
            v75 = 0xE800000000000000;
          }

          v76 = 0x7274736172666E49;
          if (v147)
          {
            v76 = 1279547201;
          }

          v77 = 0xEE00657275746375;
          if (v147)
          {
            v77 = 0xE400000000000000;
          }

          if (v147 <= 1)
          {
            v78 = v76;
          }

          else
          {
            v78 = v74;
          }

          if (v147 <= 1)
          {
            v79 = v77;
          }

          else
          {
            v79 = v75;
          }

          v80 = sub_100002320(v78, v79, &v188);

          *(v72 + 14) = v80;
          a1 = v176;
          *(v72 + 22) = 2112;
          swift_errorRetain();
          v81 = _swift_stdlib_bridgeErrorToNSError();
          *(v72 + 24) = v81;
          v82 = v148;
          *v148 = v81;
          _os_log_impl(&_mh_execute_header, v180, v149, "Failed to bind to %s[%s]: %@", v72, 0x20u);
          sub_100016290(v82, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();

          v66 = v174;
        }

        else
        {

          v73 = v147;
        }

        sub_100092524(v2, v73, v66, v18);

        IOObjectRelease(v10);
        v10 = IOIteratorNext(a1);
        v180 = 0;
        v13 = v178;
        goto LABEL_5;
      }

      v83 = v68;

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      v86 = os_log_type_enabled(v84, v85);
      v143 = v83;
      if (v86)
      {
        LODWORD(v156) = v85;
        v180 = v84;
        v87 = swift_slowAlloc();
        *&v188 = swift_slowAlloc();
        *v87 = v154;
        *(v87 + 4) = sub_100002320(v66, v18, &v188);
        *(v87 + 12) = 2080;
        v88 = 5128526;
        if (v147 != 2)
        {
          v88 = 0x61746144204E414ELL;
        }

        v89 = 0xE300000000000000;
        if (v147 != 2)
        {
          v89 = 0xE800000000000000;
        }

        v90 = 0x7274736172666E49;
        if (v147)
        {
          v90 = 1279547201;
        }

        v91 = 0xEE00657275746375;
        if (v147)
        {
          v91 = 0xE400000000000000;
        }

        if (v147 <= 1)
        {
          v92 = v90;
        }

        else
        {
          v92 = v88;
        }

        if (v147 <= 1)
        {
          v93 = v91;
        }

        else
        {
          v93 = v89;
        }

        v94 = sub_100002320(v92, v93, &v188);

        *(v87 + 14) = v94;
        v95 = v180;
        _os_log_impl(&_mh_execute_header, v180, v156, "Found new interface %s with role %s", v87, 0x16u);
        swift_arrayDestroy();

        v66 = v174;
        v83 = v143;
      }

      else
      {
      }

      *&v190 = 0;
      v188 = 0u;
      v189 = 0u;
      __chkstk_darwin();
      *(&v142 - 6) = &v188;
      *(&v142 - 5) = v66;
      *(&v142 - 4) = v18;
      *(&v142 - 3) = v83;
      *(&v142 - 2) = v172;
      v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v180 = 0;
      v97 = (v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
      *v97 = v96;
      v97[1] = v98;

      v13 = v178;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v2[4];
      sub_100080578(v83, v66, v18, isUniquelyReferenced_nonNull_native);

      v2[4] = v183;
      swift_endAccess();
      v156 = *(v2[5] + 16);
      if (v156)
      {
        v148 = 0;
        v100 = 0;
        LODWORD(v149) = 1;
        v101 = 32;
        v102 = _swiftEmptyArrayStorage;
        while (1)
        {
          v103 = v2[5];
          if (v100 >= *(v103 + 16))
          {
            goto LABEL_156;
          }

          v104 = (v103 + v101);
          v199 = *v104;
          v105 = v104[1];
          v106 = v104[2];
          v107 = v104[3];
          v202 = *(v104 + 8);
          *&v200[16] = v106;
          v201 = v107;
          *v200 = v105;
          if (v199 == __PAIR128__(v18, v174) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          if (*&v200[16] && (*&v200[8] == __PAIR128__(v18, v174) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            v146 = *&v200[24];
            v110 = v171;
            (*(v171 + 16))(v167, v2 + v11, v168);
            v111 = (*(v110 + 80) + 88) & ~*(v110 + 80);
            v145 = (v158 + v111) & 0xFFFFFFFFFFFFFFF8;
            v144 = (v145 + 23) & 0xFFFFFFFFFFFFFFF8;
            v112 = swift_allocObject();
            v113 = v201;
            *(v112 + 48) = *&v200[16];
            *(v112 + 64) = v113;
            *(v112 + 80) = v202;
            v114 = *v200;
            *(v112 + 16) = v199;
            *(v112 + 32) = v114;
            (*(v110 + 32))(v112 + v111, v167, v168);
            v115 = (v112 + v145);
            *v115 = v174;
            v115[1] = v18;
            *(v112 + v144) = v2;
            *&v185 = sub_1000B2818;
            *(&v185 + 1) = v112;
            *&v183 = _NSConcreteStackBlock;
            *(&v183 + 1) = 1107296256;
            *&v184 = sub_10000C8B8;
            *(&v184 + 1) = &unk_10055FFC8;
            v145 = _Block_copy(&v183);
            sub_1000B22A8(&v199, &v188);

            sub_1000B22A8(&v199, &v188);

            static DispatchQoS.unspecified.getter();
            *&v188 = _swiftEmptyArrayStorage;
            v144 = sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10005DC58(&unk_100595270, &unk_1004AEC80);
            sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
            v116 = v166;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v117 = v145;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v117);
            v13 = v178;
            (*v162)(v169, v116);
            (*v161)(v170, v165);

            goto LABEL_99;
          }

LABEL_94:
          ++v100;
          v101 += 72;
          if (v156 == v100)
          {
            if (v149)
            {
              v66 = v174;
              goto LABEL_110;
            }

            if ((v148 & 0x8000000000000000) == 0)
            {
              v123 = v2[5];
              if (v148 < *(v123 + 16))
              {
                v124 = v123 + 72 * v148;
                v125 = *(v124 + 80);
                v126 = *(v124 + 96);
                v127 = *(v124 + 48);
                v196 = *(v124 + 64);
                v128 = *(v124 + 32);
                v198 = v126;
                v197 = v125;
                v194 = v128;
                v195 = v127;
                v156 = *(&v196 + 1);
                v129 = swift_allocObject();
                v130 = v194;
                *(v129 + 40) = v195;
                v131 = v197;
                *(v129 + 56) = v196;
                *(v129 + 72) = v131;
                *(v129 + 16) = v143;
                *(v129 + 88) = v198;
                *(v129 + 24) = v130;
                *&v185 = sub_1000B27EC;
                *(&v185 + 1) = v129;
                *&v183 = _NSConcreteStackBlock;
                *(&v183 + 1) = 1107296256;
                *&v184 = sub_10000C8B8;
                *(&v184 + 1) = &unk_10055FF78;
                v149 = _Block_copy(&v183);
                sub_1000B22A8(&v194, &v188);

                sub_1000B22A8(&v194, &v188);
                v132 = v170;
                static DispatchQoS.unspecified.getter();
                *&v188 = _swiftEmptyArrayStorage;
                sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_10005DC58(&unk_100595270, &unk_1004AEC80);
                sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
                v133 = v169;
                v134 = v166;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v135 = v149;
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v135);
                sub_1000B22E0(&v194);
                (*v162)(v133, v134);
                (*v161)(v132, v165);
                goto LABEL_121;
              }

LABEL_158:
              __break(1u);
            }

LABEL_157:
            __break(1u);
            goto LABEL_158;
          }
        }

        sub_1000B22A8(&v199, &v188);
        LODWORD(v149) = 0;
        v148 = v100;
LABEL_99:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_100116640(0, *(v102 + 2) + 1, 1, v102);
        }

        v109 = *(v102 + 2);
        v108 = *(v102 + 3);
        if (v109 >= v108 >> 1)
        {
          v102 = sub_100116640((v108 > 1), v109 + 1, 1, v102);
        }

        sub_1000B22E0(&v199);
        *(v102 + 2) = v109 + 1;
        *&v102[8 * v109 + 32] = v100;
        v11 = v177;
        goto LABEL_94;
      }

      v102 = _swiftEmptyArrayStorage;
LABEL_110:
      if (v147 > 1)
      {
        if (v147 != 2)
        {
          sub_1000956AC(v66, v18);
        }
      }

      else if (v147)
      {
        sub_10009550C(v66, v18);
      }

      else
      {
        sub_100012400(v2 + v152, &v188, &qword_10058BCA8, &qword_1004818C8);
        if (*(&v189 + 1))
        {
          sub_100029954(&v188, &v183);
          if (qword_10058AA38 != -1)
          {
            swift_once();
          }

          v156 = static OS_dispatch_queue.p2p;
          sub_10002B154(&v183, v182);
          v118 = swift_allocObject();
          sub_100029954(v182, v118 + 16);
          *(v118 + 56) = v2;
          *(v118 + 64) = 0;
          *(v118 + 72) = v174;
          *(v118 + 80) = v18;
          *&v190 = sub_1000B27D8;
          *(&v190 + 1) = v118;
          *&v188 = _NSConcreteStackBlock;
          *(&v188 + 1) = 1107296256;
          *&v189 = sub_10000C8B8;
          *(&v189 + 1) = &unk_10055FF28;
          v149 = _Block_copy(&v188);

          v119 = v170;
          static DispatchQoS.unspecified.getter();
          v181 = _swiftEmptyArrayStorage;
          sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10005DC58(&unk_100595270, &unk_1004AEC80);
          sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
          v120 = v169;
          v121 = v166;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v122 = v149;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v122);
          (*v162)(v120, v121);
          (*v161)(v119, v165);
          sub_100002A00(&v183);
LABEL_121:

          v11 = v177;
          v13 = v178;
        }

        else
        {
          sub_100016290(&v188, &qword_10058BCA8, &qword_1004818C8);
        }
      }

      v136 = *(v102 + 2);
      if (v136)
      {
        do
        {
          v137 = *&v102[8 * v136 + 24];
          swift_beginAccess();
          sub_10019957C(v137, &v183);
          swift_endAccess();
          v190 = v185;
          v191 = v186;
          v192 = v187;
          v188 = v183;
          v189 = v184;
          sub_1000B22E0(&v188);
          if (!--v136)
          {
            goto LABEL_136;
          }
        }

        while (v136 <= *(v102 + 2));
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

LABEL_136:

      sub_100092524(v2, v147, v174, v18);

      IOObjectRelease(v10);
      a1 = v176;
      v10 = IOIteratorNext(v176);
LABEL_5:
      if (!v10)
      {
        goto LABEL_152;
      }
    }

    v147 = 2;
    goto LABEL_52;
  }

LABEL_152:
  os_unfair_lock_unlock(*(v173 + 16));
}

void sub_100090D2C(uint64_t a1)
{
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v81 - 8);
  __chkstk_darwin();
  v80 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v5 = *(v79 - 8);
  __chkstk_darwin();
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v1;
  v73 = *(v1 + 24);
  os_unfair_lock_lock(*(v73 + 16));
  v7 = IOIteratorNext(a1);
  if (v7)
  {
    v9 = v7;
    v75 = 0;
    v10 = kCFAllocatorDefault;
    v76 = (v3 + 8);
    v77 = v91;
    v74 = (v5 + 8);
    *&v8 = 136315138;
    v83 = v8;
    v82 = a1;
    v84 = kCFAllocatorDefault;
    v86 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
    while (1)
    {
      while (1)
      {
        v11 = String._bridgeToObjectiveC()();
        CFProperty = IORegistryEntryCreateCFProperty(v9, v11, v10, 0);

        if (CFProperty)
        {
          *&v92 = CFProperty;
          if (swift_dynamicCast())
          {
            break;
          }
        }

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Unable to query interface name from service that was removed", v39, 2u);
        }

        IOObjectRelease(v9);
        v9 = IOIteratorNext(a1);
        if (!v9)
        {
          goto LABEL_38;
        }
      }

      v13 = v97;
      v14 = v98;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = v10;
        v18 = a1;
        v19 = v13;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v97 = v21;
        *v20 = v83;
        *(v20 + 4) = sub_100002320(v19, v14, &v97);
        _os_log_impl(&_mh_execute_header, v15, v16, "Removed interface %s", v20, 0xCu);
        sub_100002A00(v21);

        v13 = v19;
        a1 = v18;
        v10 = v17;
      }

      swift_beginAccess();
      v22 = sub_1000102E8(v13, v14);
      if (v23)
      {
        break;
      }

      swift_endAccess();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v13;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v97 = v44;
        *v43 = v83;
        v45 = sub_100002320(v42, v14, &v97);

        *(v43 + 4) = v45;
        v10 = v84;
        _os_log_impl(&_mh_execute_header, v40, v41, "No handle found for %s", v43, 0xCu);
        sub_100002A00(v44);
      }

      else
      {
      }

      IOObjectRelease(v9);
      v9 = IOIteratorNext(a1);
LABEL_35:
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    v24 = v22;
    v25 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v25 + 32);
    *&v92 = v27;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001968A8();
      v27 = v92;
    }

    v87 = *(*(v27 + 56) + 8 * v24);
    sub_100193530(v24, v27);
    *(v88 + 32) = v27;
    swift_endAccess();
    v28 = String._bridgeToObjectiveC()();
    v29 = IORegistryEntryCreateCFProperty(v9, v28, v10, 0);

    v85 = v13;
    if (v29)
    {
      *&v92 = v29;
      if (swift_dynamicCast())
      {
        v30 = v97;
        v31 = v98;
        v32 = sub_100033AA8(_swiftEmptyArrayStorage);
        v33 = type metadata accessor for BinaryDecoder();
        v34 = swift_allocObject();
        v35 = 0;
        v34[5] = &_swiftEmptyDictionarySingleton;
        v34[2] = v30;
        v34[3] = v31;
        v36 = v31 >> 62;
        if ((v31 >> 62) > 1)
        {
          if (v36 == 2)
          {
            v35 = *(v30 + 16);
          }
        }

        else if (v36)
        {
          v35 = v30;
        }

        v34[4] = v35;
        swift_beginAccess();
        v34[5] = v32;
        v100 = v33;
        v101 = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v97 = v34;
        sub_10000AB0C(v30, v31);

        v46 = v75;
        v47 = sub_1000380FC(&v97);
        if (!v46)
        {
          v29 = v47;
          v75 = 0;

          sub_1000124C8(v30, v31);
          v48 = 0;
          goto LABEL_28;
        }

        sub_1000124C8(v30, v31);
        v29 = 0;
        v75 = 0;
      }

      else
      {
        v29 = 0;
      }
    }

    v48 = 1;
LABEL_28:
    v49 = *(v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role);
    v51 = *(v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
    v50 = *(v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName + 8);
    v52 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue;
    v53 = *(v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v54 = (v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v55 = *(v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v56 = *(v87 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    LOBYTE(v89) = v48;
    *&v92 = v85;
    *(&v92 + 1) = v14;
    LOBYTE(v93) = v49;
    *(&v93 + 1) = v51;
    *&v94 = v50;
    *(&v94 + 1) = v53;
    WORD2(v95) = WORD2(v29);
    LODWORD(v95) = v29;
    BYTE6(v95) = v48;
    *(&v95 + 1) = v55;
    v96 = v56;
    v97 = v85;
    v98 = v14;
    v99 = v49;
    v100 = v51;
    v101 = v50;
    v102 = v53;
    v104 = WORD2(v29);
    v103 = v29;
    v105 = v48;
    v106 = v55;
    v107 = v56;

    v57 = v53;
    sub_10001F89C(v55, v56);
    sub_1000B22A8(&v92, v90);
    sub_1000B22E0(&v97);
    v58 = v88;
    swift_beginAccess();
    v59 = *(v58 + 40);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 40) = v59;
    if ((v60 & 1) == 0)
    {
      v59 = sub_100116744(0, *(v59 + 2) + 1, 1, v59);
      *(v88 + 40) = v59;
    }

    v62 = *(v59 + 2);
    v61 = *(v59 + 3);
    if (v62 >= v61 >> 1)
    {
      v59 = sub_100116744((v61 > 1), v62 + 1, 1, v59);
    }

    *(v59 + 2) = v62 + 1;
    v63 = &v59[72 * v62];
    *(v63 + 2) = v92;
    v64 = v93;
    v65 = v94;
    v66 = v95;
    *(v63 + 12) = v96;
    *(v63 + 4) = v65;
    *(v63 + 5) = v66;
    *(v63 + 3) = v64;
    *(v88 + 40) = v59;
    swift_endAccess();
    if (*v54)
    {
      v67 = *(v87 + v52);
      v91[2] = sub_1000B2310;
      v91[3] = v87;
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 1107296256;
      v91[0] = sub_10000C8B8;
      v91[1] = &unk_10055FE10;
      v68 = _Block_copy(v90);
      v69 = v67;

      v70 = v78;
      static DispatchQoS.unspecified.getter();
      v89 = _swiftEmptyArrayStorage;
      sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
      v72 = v80;
      v71 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v68);

      (*v76)(v72, v71);
      (*v74)(v70, v79);
    }

    IOObjectRelease(v9);
    a1 = v82;
    v9 = IOIteratorNext(v82);
    v10 = v84;
    goto LABEL_35;
  }

LABEL_38:
  os_unfair_lock_unlock(*(v73 + 16));
}

uint64_t sub_1000917B4(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  if (result)
  {

    a3(a2);
  }

  return result;
}

uint64_t sub_100091810(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin();
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v15[1] = static OS_dispatch_queue.p2p;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1000B28B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100560018;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_100091B20(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100091B80(a2);
  }

  return result;
}

void sub_100091B80(void *a1)
{
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v9 = static OS_dispatch_queue.p2p;
  *v8 = static OS_dispatch_queue.p2p;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ([a1 type] == 12)
  {
    v11 = [a1 info];
    if (v11)
    {
      v12 = v11;
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v13 + 16))
      {
        v16 = v1;
        v17 = sub_1000102E8(v14, v15);
        v19 = v18;

        if (v19)
        {
          sub_100002B30(*(v13 + 56) + 32 * v17, v36);

          sub_100018AB4(0, &qword_10058C848, CWFAutoJoinStatus_ptr);
          if (swift_dynamicCast())
          {
            v20 = v35;
            v21 = [v35 interfaceName];
            if (v21)
            {
              v22 = v21;
              v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v24;

              v26 = v16;
              v27 = *(v16 + 24);
              os_unfair_lock_lock(*(v27 + 16));
              swift_beginAccess();
              v28 = *(v26 + 32);
              if (*(v28 + 16) && (v29 = sub_1000102E8(v23, v25), (v30 & 1) != 0))
              {
                v31 = *(*(v28 + 56) + 8 * v29);
                swift_endAccess();

                v33 = *(v31 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
                v32 = *(v31 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
                sub_10001F89C(v33, v32);

                os_unfair_lock_unlock(*(v27 + 16));
                if (v33)
                {

                  *v4 = [v20 state] == 0;
                  *(v4 + 8) = 0u;
                  *(v4 + 24) = 0u;
                  *(v4 + 20) = 0;
                  swift_storeEnumTagMultiPayload();
                  v33(v4);

                  sub_100010520(v33, v32);
                  sub_100010520(v33, v32);
                  sub_100012468(v4, type metadata accessor for DriverEvent);
                  return;
                }
              }

              else
              {
                swift_endAccess();

                os_unfair_lock_unlock(*(v27 + 16));
              }
            }
          }

          return;
        }
      }

      else
      {
      }
    }
  }
}

void sub_100091F90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100091FF8(void *a1)
{
  v10 = 0;
  v1 = [a1 startMonitoringEventType:12 error:&v10];
  v2 = v10;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to monitor for autjoin status changed event: %@", v7, 0xCu);
      sub_100016290(v8, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
    }
  }
}

uint64_t AppleDevice.deinit()
{
  IONotificationPortDestroy(*(v0 + 144));
  swift_beginAccess();
  IOObjectRelease(*(v0 + 152));
  swift_beginAccess();
  IOObjectRelease(*(v0 + 156));
  [*(v0 + 48) stopMonitoringEventType:12];
  [*(v0 + 48) invalidate];

  sub_1000AEAEC(*(v0 + 64));
  sub_100016290(v0 + 72, &qword_10058BA80, &qword_1004818C0);

  sub_100012468(v0 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_neighborDiscoveryRoutingSocket, type metadata accessor for RoutingSocket);
  sub_100016290(v0 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer, &qword_10058BCA8, &qword_1004818C8);
  v1 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppleDevice.__deallocating_deinit()
{
  AppleDevice.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000923E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(v2 + 2);
    *(a2 + 4) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 56))(a9, 1, 1, a7);
  static ApplePlatform.enumerateInterfaceAddresses(_:)(sub_1000AED90);
  if (v11)
  {
    v10 = type metadata accessor for Optional();
    (*(*(v10 - 8) + 8))(a9, v10);
  }
}

void sub_100092524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 176);
  if (*(v8 + 16) && (v9 = sub_10007D084(a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 24 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);

    v15 = v12;
    swift_endAccess();
    sub_1000AEDD0(v12, v13, v14);
    swift_beginAccess();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 176);
    *(a1 + 176) = 0x8000000000000000;
    sub_100080424(v16, a3, a4, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 176) = v18;
    swift_endAccess();
      ;
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100092660(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();

  sub_10000F344(a4, a5, a3, KeyPath, 0x10uLL);

  *(a3 + 16) = 97;
  if (a1)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(v13))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = a1;
  v14 = Apple80211RawGet();
  if (v14)
  {
    a2 = v14;
    sub_10000B02C();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  else if (a2)
  {
    v16 = 0;
    while (*(a1 + v16))
    {
      if (a2 == ++v16)
      {
        return a2;
      }
    }

    return v16;
  }

  return a2;
}

void sub_100092798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*(a1 + 54))
  {
    v9 = sub_1002AB05C();
    v10 = HIDWORD(v9);
    v11 = v9 >> 40;
    LOBYTE(v12) = v9 & 0xFC | 2;
    v42 = v9 >> 16;
    v43 = v9 >> 8;
    v41 = v9 >> 24;
  }

  else
  {
    LODWORD(v10) = *(a1 + 52);
    v12 = *(a1 + 48);
    v13 = v12 | (*(a1 + 52) << 32);
    v42 = v13 >> 16;
    v43 = v13 >> 8;
    v41 = v13 >> 24;
    LODWORD(v11) = v10 >> 8;
  }

  sub_1000B22A8(a1, v45);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_1000B22E0(a1);

  if (os_log_type_enabled(v14, v15))
  {
    v39 = a2;
    v40 = a5;
    v16 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100002320(*a1, *(a1 + 8), v45);
    *(v16 + 12) = 2080;
    v17 = 0xEE00657275746375;
    v18 = 0x7274736172666E49;
    v19 = *(a1 + 16);
    v20 = 0xE300000000000000;
    v21 = 5128526;
    v22 = 0xE800000000000000;
    v23 = 0x61746144204E414ELL;
    if (v19 != 3)
    {
      v23 = 0x6574614C20776F4CLL;
      v22 = 0xEB0000000079636ELL;
    }

    if (v19 != 2)
    {
      v21 = v23;
      v20 = v22;
    }

    if (*(a1 + 16))
    {
      v18 = 1279547201;
      v17 = 0xE400000000000000;
    }

    if (*(a1 + 16) <= 1u)
    {
      v24 = v18;
    }

    else
    {
      v24 = v21;
    }

    if (*(a1 + 16) <= 1u)
    {
      v25 = v17;
    }

    else
    {
      v25 = v20;
    }

    v26 = sub_100002320(v24, v25, v45);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = ((v10 << 32) | (v11 << 40) | (v41 << 24) | (v42 << 16) | (v43 << 8) | v12);
    v28 = WiFiAddress.description.getter(v27);
    v30 = sub_100002320(v28, v29, v45);

    *(v16 + 24) = v30;
    *(v16 + 32) = 2080;
    v31 = a3;
    *(v16 + 34) = sub_100002320(a3, a4, v45);
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting recovery for %s[%s] with %s on %s", v16, 0x2Au);
    swift_arrayDestroy();

    a2 = v39;
    a5 = v40;
  }

  else
  {

    v32 = (v10 << 32) | (v11 << 40) | (v41 << 24) | (v42 << 16);
    v31 = a3;
    v27 = (v32 & 0xFFFFFFFFFFFF0000 | (v43 << 8) | v12);
  }

  v33._countAndFlagsBits = v31;
  v33._object = a4;
  v34 = AppleDevice.findOrCreateInterface(for:on:with:)(*(a1 + 16), v33, v27);
  if (v34.value._object)
  {
    v35 = *(a5 + 24);
    os_unfair_lock_lock(*(v35 + 16));
    swift_beginAccess();
    if (*(*(a5 + 32) + 16))
    {
      sub_1000102E8(v34.value._countAndFlagsBits, v34.value._object);
      if (v36)
      {
        swift_endAccess();

        os_unfair_lock_unlock(*(v35 + 16));
        sub_10008D678(*(a1 + 56), *(a1 + 64));

        return;
      }
    }

    swift_endAccess();

    os_unfair_lock_unlock(*(v35 + 16));
    v37 = 0x80000001004B8270;
    v38 = 0xD000000000000010;
  }

  else
  {
    v38 = 0x6E6F697461657263;
    v37 = 0xEF64656C69616620;
  }

  sub_100092BB4(v38, v37, a2, a1, a5);
}

void sub_100092BB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000B22A8(a4, v32);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  sub_1000B22E0(a4);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100002320(*a4, *(a4 + 8), v32);
    *(v11 + 12) = 2080;
    v12 = 0xEE00657275746375;
    v13 = 0x7274736172666E49;
    v14 = *(a4 + 16);
    v15 = 0xE300000000000000;
    v16 = 5128526;
    v17 = 0xE800000000000000;
    v18 = 0x61746144204E414ELL;
    if (v14 != 3)
    {
      v18 = 0x6574614C20776F4CLL;
      v17 = 0xEB0000000079636ELL;
    }

    if (v14 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (*(a4 + 16))
    {
      v13 = 1279547201;
      v12 = 0xE400000000000000;
    }

    if (*(a4 + 16) <= 1u)
    {
      v19 = v13;
    }

    else
    {
      v19 = v16;
    }

    if (*(a4 + 16) <= 1u)
    {
      v20 = v12;
    }

    else
    {
      v20 = v15;
    }

    v21 = sub_100002320(v19, v20, v32);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_100002320(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to recover the interface for %s[%s] because %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v22 = *(a5 + 24);
  os_unfair_lock_lock(*(v22 + 16));
  swift_beginAccess();
  v23 = *(a5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 40) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100116744(0, *(v23 + 2) + 1, 1, v23);
    *(a5 + 40) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_100116744((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[72 * v26];
  *(v27 + 2) = *a4;
  v28 = *(a4 + 16);
  v29 = *(a4 + 32);
  v30 = *(a4 + 48);
  *(v27 + 12) = *(a4 + 64);
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  *(v27 + 3) = v28;
  *(a5 + 40) = v23;
  swift_endAccess();
  v31 = *(v22 + 16);
  sub_1000B22A8(a4, v32);
  os_unfair_lock_unlock(v31);
}

Swift::String_optional __swiftcall AppleDevice.findOrCreateInterface(for:on:with:)(CoreP2P::WiFiInterfaceRole a1, Swift::String on, CoreP2P::WiFiAddress *with)
{
  v235 = with;
  v246 = on;
  v250 = a1;
  v239 = 0x6E6574614C776F6CLL;
  v244 = type metadata accessor for DispatchTimeInterval();
  v236 = *(v244 - 8);
  __chkstk_darwin();
  v242 = (&v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v245 = type metadata accessor for DispatchTime();
  v237 = *(v245 - 8);
  __chkstk_darwin();
  v241 = &v235 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v243 = &v235 - v7;
  v247 = *(v3 + 24);
  os_unfair_lock_lock(*(v247 + 16));
  swift_beginAccess();
  v249 = v3;
  v8 = *(v3 + 32);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
LABEL_5:
  v14 = 0x7274736172666E69;
  if (v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_166:
      v151 = 0uLL;
      v254 = 0u;
      v255 = 0u;
      if (!HIDWORD(v12))
      {
        LODWORD(v254) = v12;
        v152 = v235;
        v153 = v235 >> 40;
        v154 = 9;
        goto LABEL_172;
      }

      __break(1u);
LABEL_241:
      __break(1u);
      goto LABEL_242;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v13 << 6);
      v17 = *(*(v8 + 56) + 8 * v16);
      v18 = *(v17 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role);
      if (v18 <= 1)
      {
        if (*(v17 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role))
        {
          v19 = 1818523489;
        }

        else
        {
          v19 = 0x7274736172666E69;
        }

        if (*(v17 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role))
        {
          v4 = 0xE400000000000000;
        }

        else
        {
          v4 = 0xEE00657275746375;
        }
      }

      else if (v18 == 2)
      {
        v19 = 0x67616E614D6E616ELL;
        v4 = 0xED0000746E656D65;
      }

      else
      {
        if (v18 == 3)
        {
          v19 = 0x617461446E616ELL;
        }

        else
        {
          v19 = 0x6E6574614C776F6CLL;
        }

        if (v18 == 3)
        {
          v4 = 0xE700000000000000;
        }

        else
        {
          v4 = 0xEA00000000007963;
        }
      }

      v11 &= v11 - 1;
      v20 = (*(v8 + 48) + 16 * v16);
      v21 = v20[1];
      v240 = *v20;
      if (v250 == 3)
      {
        v22 = 0x617461446E616ELL;
      }

      else
      {
        v22 = 0x6E6574614C776F6CLL;
      }

      v23 = 0xEA00000000007963;
      if (v250 == 3)
      {
        v23 = 0xE700000000000000;
      }

      if (v250 == 2)
      {
        v22 = 0x67616E614D6E616ELL;
        v23 = 0xED0000746E656D65;
      }

      if (v250)
      {
        v14 = 1818523489;
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xEE00657275746375;
      }

      if (v250 <= 1u)
      {
        v25 = v14;
      }

      else
      {
        v25 = v22;
      }

      if (v250 <= 1u)
      {
        v26 = v24;
      }

      else
      {
        v26 = v23;
      }

      v248 = v21;
      if (v19 == v25 && v4 == v26)
      {

        goto LABEL_45;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
LABEL_45:
        v28 = *(v17 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName + 8);
        if (v28)
        {
          v29 = *(v17 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName) == v246._countAndFlagsBits && v28 == v246._object;
          if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v30 = v240;
            goto LABEL_193;
          }
        }
      }

      goto LABEL_5;
    }
  }

  if (v250 == 4)
  {
    v31 = v249;
    swift_beginAccess();
    v32 = *(v31 + 176);
    if (*(v32 + 16))
    {
      v33 = (v236 + 104);
      v34 = enum case for DispatchTimeInterval.seconds(_:);
      v35 = (v236 + 8);
      v36 = (v237 + 8);
      v37 = v241;
      v38 = v243;
      do
      {
        v39 = sub_10007D084(4);
        if ((v40 & 1) == 0)
        {
          break;
        }

        v41 = *(v32 + 56) + 24 * v39;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);

        v45 = v42;
        swift_endAccess();
        sub_1000AEDD0(v42, v43, v44);
        v46 = v247;
        os_unfair_lock_unlock(*(v247 + 16));
        static DispatchTime.now()();
        v47 = v242;
        *v242 = 30;
        v48 = v244;
        (*v33)(v47, v34, v244);
        + infix(_:_:)();
        (*v35)(v47, v48);
        v49 = *v36;
        v50 = v245;
        (*v36)(v37, v245);
        OS_dispatch_semaphore.wait(timeout:)();
        v49(v38, v50);
        os_unfair_lock_lock(*(v46 + 16));

        v51 = v249;
        swift_beginAccess();
        v32 = *(v51 + 176);
      }

      while (*(v32 + 16));
    }

    swift_endAccess();
  }

  v52 = dispatch_semaphore_create(0);
  v53 = v249;
  swift_beginAccess();
  v54 = v52;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v251 = *(v53 + 176);
  sub_100080424(v54, 0, 0, v250, isUniquelyReferenced_nonNull_native);
  *(v53 + 176) = v251;
  swift_endAccess();
  swift_beginAccess();
  v56 = *(v53 + 32);
  if (*(v56 + 16))
  {
    v57 = sub_1000102E8(v246._countAndFlagsBits, v246._object);
    if (v58)
    {
      v59 = *(*(v56 + 56) + 8 * v57);
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  swift_endAccess();
  v238 = v54;
  if (v250 >= 4u)
  {

    if (!v59)
    {
      v12 = 0;
      goto LABEL_71;
    }

    goto LABEL_68;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v12 = 0;
  if ((v60 & 1) != 0 && v59)
  {
LABEL_68:
    if (*(v59 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) == 2)
    {

      v12 = 1;
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v12 = v61 & 1;
    }
  }

LABEL_71:
  v240 = v59;
  do
  {
    v62 = v12 + 1;
    *&v256 = 0;
    *(&v256 + 1) = 0xE000000000000000;
    v63 = 7826540;
    if (v250 == 3)
    {
      v63 = 29289;
      v64 = 0xE200000000000000;
    }

    else
    {
      v64 = 0xE300000000000000;
    }

    if (v250 == 2)
    {
      v63 = 7233902;
      v64 = 0xE300000000000000;
    }

    v65 = 28261;
    if (v250)
    {
      v65 = 1818523489;
      v66 = 0xE400000000000000;
    }

    else
    {
      v66 = 0xE200000000000000;
    }

    if (v250 <= 1u)
    {
      v67 = v65;
    }

    else
    {
      v67 = v63;
    }

    if (v250 <= 1u)
    {
      v68 = v66;
    }

    else
    {
      v68 = v64;
    }

    v69 = v68;
    String.append(_:)(*&v67);

    *&v251 = v12;
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v71 = v256;
    v72 = v249;
    swift_beginAccess();
    if (!*(*(v72 + 32) + 16))
    {

LABEL_95:
      swift_endAccess();
      os_unfair_lock_unlock(*(v247 + 16));
      if (v250 <= 1u)
      {
        v13 = v249;
        v90 = v240;
        if (!v250)
        {
          v91 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
          swift_beginAccess();
          v92 = &qword_1004818C8;
          sub_100012400(v13 + v91, &v256, &qword_10058BCA8, &qword_1004818C8);
          v93 = *(&v257 + 1);
          sub_100016290(&v256, &qword_10058BCA8, &qword_1004818C8);
          if (!v93)
          {
            swift_beginAccess();
            sub_10008EF20(*(v13 + 152));
            swift_beginAccess();
            sub_10008EF20(*(v13 + 156));
          }

          os_unfair_lock_lock(*(v247 + 16));
          v94 = *(v13 + 32);
          v95 = 1 << *(v94 + 32);
          v96 = -1;
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          v4 = v96 & *(v94 + 64);
          v97 = (v95 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v98 = 0;
          while (v4)
          {
            v99 = v98;
LABEL_114:
            v100 = __clz(__rbit64(v4)) | (v99 << 6);
            v101 = (*(v94 + 48) + 16 * v100);
            v102 = *v101;
            v92 = *(*(v94 + 56) + 8 * v100);
            v103 = *(v92 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role);
            v248 = v101[1];
            if (v103 <= 2 && v103 != 1 && v103 != 2)
            {

LABEL_225:

              v110 = v238;
              v30 = v102;
LABEL_130:
              swift_beginAccess();
              v111 = sub_10007F874(0);
              v113 = v112;
              v115 = v114;
              swift_endAccess();
              sub_1000AEDD0(v111, v113, v115);
                ;
              }

              goto LABEL_217;
            }

            LOBYTE(v62) = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v62)
            {

              goto LABEL_225;
            }

            v4 &= v4 - 1;

            v98 = v99;
            v90 = v240;
          }

          while (1)
          {
            v99 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              break;
            }

            if (v99 >= v97)
            {

              v30 = 0;
              v248 = 0;
              v110 = v238;
              goto LABEL_130;
            }

            v4 = *(v94 + 64 + 8 * v99);
            ++v98;
            if (v4)
            {
              goto LABEL_114;
            }
          }

          __break(1u);
          goto LABEL_228;
        }

        v4 = v238;
        if (!v240)
        {
          object = v246._object;

          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v121, v122))
          {
LABEL_148:

LABEL_149:
            sub_10000B02C();
            swift_allocError();
            *v131 = xmmword_1004817E0;
            *(v131 + 16) = 0;
            swift_willThrow();
            goto LABEL_175;
          }

          v123 = swift_slowAlloc();
          *&v256 = swift_slowAlloc();
          *v123 = 136315394;
          v124 = 1279547201;
          v125 = 0xE400000000000000;
LABEL_147:
          *(v123 + 4) = sub_100002320(v124, v125, &v256);
          *(v123 + 12) = 2080;
          *(v123 + 14) = sub_100002320(v246._countAndFlagsBits, object, &v256);
          _os_log_impl(&_mh_execute_header, v121, v122, "Cannot create %s interface because the parent interface %s is missing", v123, 0x16u);
          swift_arrayDestroy();

          goto LABEL_148;
        }

        v259 = 0;
        v260 = 0;
        v262 = 0;
        v261 = 0;
        v258 = 0;
        v256 = 0u;
        v257 = 0u;
        KeyPath = swift_getKeyPath();

        sub_10000F344(v246._countAndFlagsBits, v246._object, &v256, KeyPath, 0x10uLL);

        LODWORD(v257) = 12;
        DWORD2(v257) = 21;
        v258 = &v259 + 4;
        v83 = Apple80211RawGet();
        if (!v83)
        {
          if ((v260 & 1) == 0)
          {
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              *&v251 = v87;
              *v86 = 136315138;
              v88 = 1279547201;
              v89 = 0xE400000000000000;
              goto LABEL_157;
            }

            goto LABEL_158;
          }

          v151 = 0uLL;
          v254 = 0u;
          v255 = 0u;
          if (!HIDWORD(v12))
          {
            LODWORD(v254) = v12;
            v152 = v235;
            v153 = v235 >> 40;
            v154 = 6;
LABEL_172:
            HIDWORD(v254) = v154;
            WORD2(v254) = v152;
            BYTE6(v254) = BYTE2(v152);
            BYTE7(v254) = BYTE3(v152);
            BYTE8(v254) = BYTE4(v152);
            BYTE9(v254) = v153;
            v253 = 0;
            v252 = v151;
            v251 = v151;
            v155 = swift_getKeyPath();

            sub_10000F344(v246._countAndFlagsBits, v246._object, &v251, v155, 0x10uLL);

            LODWORD(v252) = 94;
            DWORD2(v252) = 32;
            v253 = &v254;
            v156 = Apple80211RawSet();
            if (v156)
            {
              v157 = v156;
              sub_10000B02C();
              swift_allocError();
              *v133 = v157;
              *(v133 + 8) = 0;
              goto LABEL_174;
            }

            v178 = v241;
            static DispatchTime.now()();
            v179 = v242;
            *v242 = 30;
            v180 = v236;
            v181 = v244;
            (*(v236 + 104))(v179, enum case for DispatchTimeInterval.seconds(_:), v244);
            v182 = v243;
            + infix(_:_:)();
            (*(v180 + 8))(v179, v181);
            v183 = *(v237 + 8);
            v184 = v245;
            v183(v178, v245);
            OS_dispatch_semaphore.wait(timeout:)();
            v183(v182, v184);
            os_unfair_lock_lock(*(v247 + 16));
            if (static DispatchTimeoutResult.== infix(_:_:)())
            {
              v94 = Logger.logObject.getter();
              LOBYTE(v62) = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v94, v62))
              {

                goto LABEL_231;
              }

              v92 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              *&v256 = v90;
              *v92 = 136315138;
              if (v250 != 1)
              {
                if (v250 == 2)
                {
                  v185 = 0xE300000000000000;
                  v186 = 5128526;
                }

                else
                {
                  v185 = 0xE800000000000000;
                  v186 = 0x61746144204E414ELL;
                }

                goto LABEL_230;
              }

LABEL_228:
              v186 = 1279547201;
              v185 = 0xE400000000000000;
LABEL_230:
              v222 = sub_100002320(v186, v185, &v256);

              *(v92 + 4) = v222;
              _os_log_impl(&_mh_execute_header, v94, v62, "Timed out while waiting for interface %s", v92, 0xCu);
              sub_100002A00(v90);

LABEL_231:
              swift_beginAccess();
              v223 = sub_10007F874(v250);
              v225 = v224;
              v227 = v226;
              swift_endAccess();
              sub_1000AEDD0(v223, v225, v227);
                ;
              }

LABEL_191:

              goto LABEL_192;
            }

            swift_beginAccess();
            v195 = *(v13 + 176);
            if (*(v195 + 16) && (v196 = sub_10007D084(v250), (v197 & 1) != 0))
            {
              v198 = *(v195 + 56) + 24 * v196;
              v199 = *v198;
              v30 = *(v198 + 8);
              v200 = *(v198 + 16);
              swift_bridgeObjectRetain_n();
              v201 = v199;
              swift_endAccess();
              sub_1000AEDD0(v199, v30, v200);
              if (v200)
              {
                v248 = v200;
                swift_beginAccess();
                v202 = sub_10007F874(v250);
                v204 = v203;
                v206 = v205;
                swift_endAccess();
                sub_1000AEDD0(v202, v204, v206);
                  ;
                }

                goto LABEL_216;
              }
            }

            else
            {
              swift_endAccess();
            }

            v216 = Logger.logObject.getter();
            v217 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v216, v217))
            {
              v218 = swift_slowAlloc();
              v219 = swift_slowAlloc();
              *&v256 = v219;
              *v218 = 136315138;
              if (v250 == 1)
              {
                v221 = 1279547201;
                v220 = 0xE400000000000000;
              }

              else if (v250 == 2)
              {
                v220 = 0xE300000000000000;
                v221 = 5128526;
              }

              else
              {
                v220 = 0xE800000000000000;
                v221 = 0x61746144204E414ELL;
              }

              v228 = sub_100002320(v221, v220, &v256);

              *(v218 + 4) = v228;
              _os_log_impl(&_mh_execute_header, v216, v217, "Failed to find the interface name returned when creating the %s interface", v218, 0xCu);
              sub_100002A00(v219);
            }

            else
            {
            }

            swift_beginAccess();
            v229 = sub_10007F874(v250);
            v231 = v230;
            v233 = v232;
            swift_endAccess();
            sub_1000AEDD0(v229, v231, v233);
              ;
            }

            goto LABEL_191;
          }

LABEL_242:
          __break(1u);
        }
      }

      else
      {
        v13 = v249;
        if (v250 != 2)
        {
          if (v250 == 3)
          {
            v4 = v238;
            if (v240)
            {
              v259 = 0;
              v260 = 0;
              v262 = 0;
              v261 = 0;
              v258 = 0;
              v256 = 0u;
              v257 = 0u;
              v82 = swift_getKeyPath();

              sub_10000F344(v246._countAndFlagsBits, v246._object, &v256, v82, 0x10uLL);

              LODWORD(v257) = 12;
              DWORD2(v257) = 21;
              v258 = &v259 + 4;
              v83 = Apple80211RawGet();
              if (!v83)
              {
                if ((v260 & 0x10000000000) == 0)
                {
                  v84 = Logger.logObject.getter();
                  v85 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v84, v85))
                  {
                    v86 = swift_slowAlloc();
                    v87 = swift_slowAlloc();
                    *&v251 = v87;
                    *v86 = 136315138;
                    v88 = 0x61746144204E414ELL;
                    v89 = 0xE800000000000000;
LABEL_157:
                    *(v86 + 4) = sub_100002320(v88, v89, &v251);
                    _os_log_impl(&_mh_execute_header, v84, v85, "Cannot create %s interface because the device is missing the capability", v86, 0xCu);
                    sub_100002A00(v87);

                    goto LABEL_158;
                  }

                  goto LABEL_158;
                }

                v151 = 0uLL;
                v254 = 0u;
                v255 = 0u;
                if (!HIDWORD(v12))
                {
                  LODWORD(v254) = v12;
                  v152 = v235;
                  v153 = v235 >> 40;
                  v154 = 10;
                  goto LABEL_172;
                }

                goto LABEL_241;
              }

              goto LABEL_128;
            }

            object = v246._object;

            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v121, v122))
            {
              goto LABEL_148;
            }

            v123 = swift_slowAlloc();
            *&v256 = swift_slowAlloc();
            *v123 = 136315394;
            v124 = 0x61746144204E414ELL;
            v125 = 0xE800000000000000;
            goto LABEL_147;
          }

          v105 = sub_1000969C4(v240, v246._countAndFlagsBits, v246._object, v12);
          v4 = v238;
          if (v106)
          {
            v30 = v105;
            v248 = v106;
            os_unfair_lock_lock(*(v247 + 16));
            swift_beginAccess();
            v126 = sub_10007F874(4);
            v128 = v127;
            v130 = v129;
            swift_endAccess();
            sub_1000AEDD0(v126, v128, v130);
              ;
            }

            goto LABEL_216;
          }

          v134 = v241;
          static DispatchTime.now()();
          v135 = v242;
          *v242 = 30;
          v136 = v236;
          v137 = v244;
          (*(v236 + 104))(v135, enum case for DispatchTimeInterval.seconds(_:), v244);
          v138 = v243;
          + infix(_:_:)();
          (*(v136 + 8))(v135, v137);
          v139 = *(v237 + 8);
          v140 = v245;
          v139(v134, v245);
          OS_dispatch_semaphore.wait(timeout:)();
          v139(v138, v140);
          os_unfair_lock_lock(*(v247 + 16));
          if (static DispatchTimeoutResult.== infix(_:_:)())
          {
            v141 = v246._object;

            v142 = Logger.logObject.getter();
            v143 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v142, v143))
            {
              v144 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              *&v256 = v145;
              *v144 = 136315138;
              *(v144 + 4) = sub_100002320(v246._countAndFlagsBits, v141, &v256);
              _os_log_impl(&_mh_execute_header, v142, v143, "Timed out while waiting for the low latency interface with parent %s", v144, 0xCu);
              sub_100002A00(v145);
            }

            swift_beginAccess();
            v146 = sub_10007F874(4);
            v148 = v147;
            v150 = v149;
            swift_endAccess();
            sub_1000AEDD0(v146, v148, v150);
              ;
            }

            goto LABEL_191;
          }

          swift_beginAccess();
          v187 = *(v13 + 176);
          v188 = v246._object;
          if (*(v187 + 16) && (v189 = sub_10007D084(4), (v190 & 1) != 0))
          {
            v191 = *(v187 + 56) + 24 * v189;
            v192 = *v191;
            v30 = *(v191 + 8);
            v193 = *(v191 + 16);
            swift_bridgeObjectRetain_n();
            v194 = v192;
            swift_endAccess();
            sub_1000AEDD0(v192, v30, v193);
            if (v193)
            {
LABEL_214:
              v248 = v193;
              swift_beginAccess();
              v211 = sub_10007F874(4);
              v213 = v212;
              v215 = v214;
              swift_endAccess();
              sub_1000AEDD0(v211, v213, v215);
                ;
              }

LABEL_216:

LABEL_217:

              goto LABEL_193;
            }
          }

          else
          {
            swift_endAccess();
            v30 = 0;
          }

          v207 = Logger.logObject.getter();
          v208 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v207, v208))
          {
            v209 = swift_slowAlloc();
            v210 = swift_slowAlloc();
            *&v256 = v210;
            *v209 = 136315138;
            *(v209 + 4) = sub_100002320(v246._countAndFlagsBits, v188, &v256);
            _os_log_impl(&_mh_execute_header, v207, v208, "Failed to find the interface name returned when creating the low latency interface for %s", v209, 0xCu);
            sub_100002A00(v210);
          }

          v193 = 0;
          goto LABEL_214;
        }

        if (!v240)
        {
          v116 = v246._object;

          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            *&v256 = swift_slowAlloc();
            *v119 = 136315394;
            *(v119 + 4) = sub_100002320(5128526, 0xE300000000000000, &v256);
            *(v119 + 12) = 2080;
            *(v119 + 14) = sub_100002320(v246._countAndFlagsBits, v116, &v256);
            _os_log_impl(&_mh_execute_header, v117, v118, "Cannot create %s interface because the parent interface %s is missing", v119, 0x16u);
            swift_arrayDestroy();
          }

          v4 = v238;
          goto LABEL_149;
        }

        v259 = 0;
        v260 = 0;
        v262 = 0;
        v261 = 0;
        v258 = 0;
        v256 = 0u;
        v257 = 0u;
        v104 = swift_getKeyPath();

        sub_10000F344(v246._countAndFlagsBits, v246._object, &v256, v104, 0x10uLL);

        LODWORD(v257) = 12;
        DWORD2(v257) = 21;
        v258 = &v259 + 4;
        v83 = Apple80211RawGet();
        v4 = v238;
        if (!v83)
        {
          if ((v260 & 0x10000000000) == 0)
          {
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              *&v251 = v87;
              *v86 = 136315138;
              v88 = 5128526;
              v89 = 0xE300000000000000;
              goto LABEL_157;
            }

LABEL_158:

            sub_10000B02C();
            swift_allocError();
            *v133 = xmmword_1004817E0;
LABEL_174:
            *(v133 + 16) = 0;
            swift_willThrow();

            goto LABEL_175;
          }

          goto LABEL_166;
        }
      }

LABEL_128:
      v108 = v83;
      sub_10000B02C();
      swift_allocError();
      *v109 = v108;
      *(v109 + 8) = 0;
      *(v109 + 16) = 0;
      swift_willThrow();

LABEL_175:
      os_unfair_lock_lock(*(v247 + 16));

      swift_errorRetain();
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        *&v256 = swift_slowAlloc();
        v162 = v250;
        *v160 = 136315650;
        v163 = 0xE400000000000000;
        v164 = 0xE800000000000000;
        v165 = 0x61746144204E414ELL;
        if (v162 != 3)
        {
          v165 = 0x6574614C20776F4CLL;
          v164 = 0xEB0000000079636ELL;
        }

        v166 = 5128526;
        if (v162 == 1)
        {
          v166 = 1279547201;
        }

        else
        {
          v163 = 0xE300000000000000;
        }

        if (v162 <= 2)
        {
          v167 = v166;
        }

        else
        {
          v167 = v165;
        }

        if (v162 <= 2)
        {
          v168 = v163;
        }

        else
        {
          v168 = v164;
        }

        v169 = sub_100002320(v167, v168, &v256);

        *(v160 + 4) = v169;
        *(v160 + 12) = 2080;
        *(v160 + 14) = sub_100002320(v246._countAndFlagsBits, v246._object, &v256);
        *(v160 + 22) = 2112;
        swift_errorRetain();
        v170 = _swift_stdlib_bridgeErrorToNSError();
        *(v160 + 24) = v170;
        *v161 = v170;
        _os_log_impl(&_mh_execute_header, v158, v159, "Failed to create interface %s on %s with error %@", v160, 0x20u);
        sub_100016290(v161, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();
      }

      else
      {
      }

      swift_beginAccess();
      v171 = sub_10007F874(v250);
      v173 = v172;
      v175 = v174;
      swift_endAccess();
      sub_1000AEDD0(v171, v173, v175);
        ;
      }

      goto LABEL_191;
    }

    sub_1000102E8(v71, *(&v71 + 1));
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      goto LABEL_95;
    }

    swift_endAccess();
    ++v12;
  }

  while (v62 != 0x7FFFFFFFFFFFFFFFLL);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *&v256 = swift_slowAlloc();
    *v77 = 136315394;
    v78 = v238;
    if (v250 <= 1u)
    {
      if (v250)
      {
        v79 = 1279547201;
        v80 = sub_100002320(1818523489, 0xE400000000000000, &v256);
        v81 = 0xE400000000000000;
      }

      else
      {
        v80 = sub_100002320(28261, 0xE200000000000000, &v256);
        v79 = 0x7274736172666E49;
        v81 = 0xEE00657275746375;
      }
    }

    else if (v250 == 2)
    {
      v79 = 5128526;
      v80 = sub_100002320(7233902, 0xE300000000000000, &v256);
      v81 = 0xE300000000000000;
    }

    else if (v250 == 3)
    {
      v79 = 0x61746144204E414ELL;
      v80 = sub_100002320(29289, 0xE200000000000000, &v256);
      v81 = 0xE800000000000000;
    }

    else
    {
      v79 = 0x6574614C20776F4CLL;
      v80 = sub_100002320(7826540, 0xE300000000000000, &v256);
      v81 = 0xEB0000000079636ELL;
    }

    *(v77 + 4) = v80;
    *(v77 + 12) = 2080;
    v132 = sub_100002320(v79, v81, &v256);

    *(v77 + 14) = v132;
    _os_log_impl(&_mh_execute_header, v75, v76, "Could not find a suitable unit number (with %s) to use for a new %s interface", v77, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_192:

  v30 = 0;
  v248 = 0;
LABEL_193:
  os_unfair_lock_unlock(*(v247 + 16));
  v176 = v30;
  v177 = v248;
  result.value._object = v177;
  result.value._countAndFlagsBits = v176;
  return result;
}

uint64_t sub_1000953E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a1[3];
  v9 = a1[4];
  sub_100029B34(a1, v8);
  v10 = type metadata accessor for AppleIO80211Driver(0);
  swift_allocObject();

  v15 = AppleIO80211Driver.init(device:role:name:)(v11, v7, a4, a5);
  v12 = *(v9 + 8);
  v13 = sub_10001F8F4(&unk_10058C838, type metadata accessor for AppleIO80211Driver, protocol conformance descriptor for AppleIO80211Driver);
  v12(&v15, v10, &protocol witness table for AppleIO80211Driver, v13, &protocol witness table for AppleIO80211Driver, &protocol witness table for AppleIO80211Driver, v8, v9);
}

uint64_t sub_10009550C(uint64_t a1, unint64_t a2)
{
  v13 = 0;

  v4 = sub_1000AEF40(a1, a2, &v13);
  v6 = v5;

  if (v6)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_100002320(v4, v6, &v12);

      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100002320(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s when removing %s from legacy preferences", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return v13;
}

void sub_1000956AC(uint64_t a1, void *a2)
{

  v4 = sub_1000AF1E4(a1, a2);
  v6 = v5;

  if (v6)
  {

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = sub_100002320(v4, v6, &v11);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100002320(a1, a2, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%s when configuring DHCP networking for %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10009585C(uint64_t a1)
{
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    *v3 = 2;
    swift_storeEnumTagMultiPayload();

    v4(v3);
    sub_100010520(v4, v5);
    sub_100012468(v3, type metadata accessor for DriverEvent);
  }

  return sub_10008D540();
}

uint64_t sub_100095944(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_1000102E8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = *(v9 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
  }

  else
  {
    swift_endAccess();
    v10 = 0;
  }

  os_unfair_lock_unlock(*(v5 + 16));
  return v10;
}

void AppleDevice.startMonitoringEvents(on:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v11 = *(v4 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  v12 = *(v4 + 32);
  if (*(v12 + 16) && (v13 = sub_1000102E8(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = *(v11 + 16);
    swift_retain_n();
    os_unfair_lock_unlock(v16);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    sub_10008CF3C(0, sub_100003298, v17);
    if (v6)
    {
    }

    else
    {

      v19 = (v15 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v20 = *(v15 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v21 = *(v15 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
      *v19 = a3;
      v19[1] = a4;

      sub_100010520(v20, v21);
    }
  }

  else
  {
    swift_endAccess();
    sub_10000B02C();
    swift_allocError();
    *v18 = xmmword_1004817F0;
    *(v18 + 16) = 0;
    swift_willThrow();
    os_unfair_lock_unlock(*(v11 + 16));
  }
}

void AppleDevice.startMonitoringEvents(on:customQueue:eventHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  if (*(*(v5 + 32) + 16) && (sub_1000102E8(a1, a2), (v12 & 1) != 0))
  {
    swift_endAccess();
    v13 = *(v11 + 16);

    os_unfair_lock_unlock(v13);
    sub_10008CF3C(a3, a4, a5);
  }

  else
  {
    swift_endAccess();
    sub_10000B02C();
    swift_allocError();
    *v14 = xmmword_1004817F0;
    *(v14 + 16) = 0;
    swift_willThrow();
    os_unfair_lock_unlock(*(v11 + 16));
  }
}

Swift::Void __swiftcall AppleDevice.stopMonitoringEvents(on:)(Swift::String on)
{
  object = on._object;
  countAndFlagsBits = on._countAndFlagsBits;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 24);
  os_unfair_lock_lock(*(v12 + 16));
  swift_beginAccess();
  v13 = *(v1 + 32);
  if (*(v13 + 16) && (v14 = sub_1000102E8(countAndFlagsBits, object), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(*(v12 + 16));
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    aBlock[4] = sub_1000AF470;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_10055ED58;
    v22 = _Block_copy(aBlock);
    v23 = v8;
    v21 = v17;

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    v20 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v23);
  }
}

uint64_t AppleDevice.loadCapabilities(on:)(uint64_t a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  AppleDevice.getRequest(requestType:data:on:)(0xCuLL, v3 + 4, &v4 + 1, 0, a1, a2);
  return v3[0];
}

void AppleDevice.attachForDriverDiscovery<A>(_:)(uint64_t a1, void (__cdecl *a2)(const void *), CFStringRef (__cdecl *a3)(const void *))
{
  context.release = a2;
  context.copyDescription = a3;
  v6 = sub_1000297D4(&context.version);
  (*(*(a2 - 1) + 16))(v6, a1, a2);
  v7 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
  swift_beginAccess();
  sub_1000B1B78(&context, v3 + v7, &qword_10058BCA8, &qword_1004818C8);
  swift_endAccess();
  v8 = *(v3 + 192);
  v9 = *(v3 + 208);
  os_unfair_lock_lock(*(v8 + 16));
  context.version = 0;
  context.info = v3;
  context.retain = j__swift_unknownObjectRetain;
  context.release = j__swift_unknownObjectRelease;
  context.copyDescription = sub_1000964EC;
  SCPreferencesSetCallback(v9, sub_100096574, &context);
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v10 = static OS_dispatch_queue.p2p;
  SCPreferencesSetDispatchQueue(v9, static OS_dispatch_queue.p2p);
  os_unfair_lock_unlock(*(v8 + 16));
  if (!*(v3 + 172))
  {
    swift_beginAccess();
    swift_beginAccess();
    v11 = IORegisterForSystemPower(v3, (v3 + 160), sub_10001F0F8, (v3 + 168));
    swift_endAccess();
    swift_endAccess();
    *(v3 + 172) = v11;
    v12 = *(v3 + 160);
    if (v12)
    {
      IONotificationPortSetDispatchQueue(v12, v10);
    }

    else
    {
      v13 = v3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to monitor for system power notifications", v16, 2u);
      }

      v3 = v13;
    }
  }

  swift_beginAccess();
  sub_10008EF20(*(v3 + 152));
  swift_beginAccess();
  sub_100090D2C(*(v3 + 156));
}

NSString sub_1000964EC(uint64_t a1)
{

  type metadata accessor for AppleDevice(0);
  _print_unlocked<A, B>(_:_:)();

  v1 = String._bridgeToObjectiveC()();

  return v1;
}

void sub_100096574(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_1000AF4C0(v4, a3);
}

Swift::Void __swiftcall AppleDevice.detachDriverDiscovery()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 168))
  {
    swift_beginAccess();
    IODeregisterForSystemPower((v0 + 168));
    swift_endAccess();
  }

  v7 = *(v0 + 172);
  if (v7)
  {
    IOObjectRelease(v7);
  }

  swift_beginAccess();
  v8 = *(v0 + 160);
  if (v8)
  {
    IONotificationPortDestroy(v8);
  }

  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  v9 = *(v0 + 192);
  v10 = *(v0 + 208);
  os_unfair_lock_lock(*(v9 + 16));
  SCPreferencesSetDispatchQueue(v10, 0);
  SCPreferencesSetCallback(v10, 0, 0);
  os_unfair_lock_unlock(*(v9 + 16));
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1000AF498;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10055ED80;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);
}

uint64_t sub_100096950(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
  swift_beginAccess();
  sub_1000B1B78(v4, a1 + v2, &qword_10058BCA8, &qword_1004818C8);
  return swift_endAccess();
}

uint64_t sub_1000969C4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v33 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100002320(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to create low latency interface because parent %s was not found", v19, 0xCu);
      sub_100002A00(v20);
    }

    sub_10000B02C();
    swift_allocError();
    *v21 = xmmword_1004817E0;
    *(v21 + 16) = 0;
    swift_willThrow();
    return a2;
  }

  v31 = 0;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (HIDWORD(a4))
  {
    goto LABEL_32;
  }

  v30[0] = a4;
  v30[1] = 1;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  KeyPath = swift_getKeyPath();

  sub_10000F344(a2, a3, &v33, KeyPath, 0x10uLL);

  LODWORD(v34) = 293;
  DWORD2(v34) = 24;
  v35 = v30;
  v8 = Apple80211RawSet();
  if (v8)
  {
    v9 = v8;
    sub_10000B02C();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    swift_willThrow();

    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v36 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100002320(a2, a3, v36);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to create low latency interface for %s because %@", v13, 0x16u);
      sub_100016290(v14, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v15);
    }

    swift_willThrow();

    return a2;
  }

  HIBYTE(v32) = 0;
  v23 = String.init(cString:)();
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    a2 = v23;
    sub_10001F8F4(&qword_10058BD10, type metadata accessor for AppleDevice, protocol conformance descriptor for AppleDevice);
    static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for Bool, v36);
    if (v36[0] != 2 && (v36[0] & 1) != 0)
    {

      return a2;
    }
  }

  v26 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role;
  if (*(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) <= 1u && *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role))
  {

    goto LABEL_22;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_22:
    *v36 = xmmword_100481810;
    if (if_nametoindex(v36))
    {

      return 813132908;
    }
  }

  if (*(a1 + v26) == 2)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {

      return 0;
    }
  }

  *v36 = xmmword_100481820;
  v29 = if_nametoindex(v36);

  if (v29)
  {
    return 829910124;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10009708C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    __break(1u);
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v2 = sub_1002AAFAC(&v5 + *(v1 + 5), *(v1 + 6));
  return (sub_1000172CC(v2, v3) & 0x1000000000000) == 0;
}

BOOL sub_100097110@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009708C(a1);
  *a2 = result;
  return result;
}

void *sub_100097170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6[0] = a1;
      v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = v6;
      return if_nametoindex(v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return if_nametoindex(v4);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100097200(uint64_t result, uint64_t a3, char *__dst)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    *__source = result;
    v7 = a3 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v5 = __source;
      return strlcpy(__dst, v5, 0x10uLL);
    }

    __break(1u);
    goto LABEL_11;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if (__dst)
  {
    v5 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    return strlcpy(__dst, v5, 0x10uLL);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1000972AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return nw_interface_create_with_name();
  }

  sub_10005DC58(&qword_10058C780, &qword_100481FB0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDevice.neighborDiscoveryTableClear(on:)(Swift::String on)
{
  object = on._object;
  countAndFlagsBits = on._countAndFlagsBits;
  v4 = *(v1 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  sub_10001F8F4(&qword_10058BD10, type metadata accessor for AppleDevice, protocol conformance descriptor for AppleDevice);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for WiFiAddress, &v12);
  v5 = v12 | (v13 << 32);
  v6 = v14;
  swift_beginAccess();
  v7 = *(v1 + 32);
  if (*(v7 + 16) && (v8 = sub_1000102E8(countAndFlagsBits, object), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = *(v10 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex);
  }

  else
  {
    swift_endAccess();
    v11 = sub_100097170(countAndFlagsBits, object, sub_1000B29FC);
  }

  swift_beginAccess();
  sub_100200B90(v5 & 0xFFFFFFFFFFFFLL | (v6 << 48), v11);
  swift_endAccess();
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_100097578(const __SCPreferences *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = SCNetworkSetCopyAll(a1);
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SCNetworkSet(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0;
}

uint64_t sub_1000979A4(const __SCPreferences *a1, uint64_t a2, void *a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = _SCNetworkInterfaceCreateWithBSDName();

  v14 = v7;
  if (v7)
  {
    v8 = SCNetworkSetCopyCurrent(a1);
    if (v8)
    {
      v9 = v8;
      if (SCNetworkSetEstablishDefaultInterfaceConfiguration() || !SCError())
      {
        v10 = SCNetworkServiceCopyAll(a1);
        if (v10)
        {
          v11 = v10;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            type metadata accessor for SCNetworkService(0);
            static Array._conditionallyBridgeFromObjectiveC(_:result:)();
          }
        }
      }

      return 0;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v15 = 0xD000000000000028;
    v16 = 0x80000001004B7E60;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    return 0;
  }
}

id sub_1000985B8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 200);
  v4 = *(*v1 + 208);
  *a1 = *(*v1 + 192);
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

uint64_t sub_100098614@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  *a1 = *(v3 + 184);
}

uint64_t sub_100098660(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 184) = v2;
}

uint64_t sub_100098728(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v10 - v6;
  v10[1] = *v1;
  v10[0] = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void static ApplePlatform.enumerateInterfaceAddresses(_:)(uint64_t (*a1)(__int128 *))
{
  v8 = 0;
  if (!getifaddrs(&v8))
  {
    v3 = v8;
    if (v8)
    {
      while (1)
      {
        ifa_flags = v3->ifa_flags;
        v7 = *&v3->ifa_next;
        v9 = *&v3->ifa_next;
        v10 = ifa_flags;
        v11 = *&v3->ifa_addr;
        v12 = *&v3->ifa_dstaddr;
        v5 = a1(&v9);
        if (v1)
        {
          break;
        }

        v3 = v7;
        if ((v5 & (v7 != 0)) == 0)
        {
          v6 = v8;
          goto LABEL_7;
        }
      }

      freeifaddrs(v8);
    }

    else
    {
      v6 = 0;
LABEL_7:
      freeifaddrs(v6);
    }
  }
}

uint64_t sub_100098A14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, void (*a6)(uint64_t), _BOOL8 a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v26 = a5;
  v28 = a9;
  v29 = a7;
  v14 = type metadata accessor for Optional();
  v27 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v26 - v17;
  result = *(a1 + 8);
  if (result)
  {
    result = String.init(cString:)();
    if (result != a2 || v20 != a3)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        return 1;
      }
    }

    v22 = *(a1 + 24);
    if (v22)
    {

      if (*(v22 + 1) == a4)
      {
        v23 = v29;
        v30(a1);
        if (!v9)
        {
          v24 = v26;
          v25 = v27;
          (*(v27 + 40))(v26, v18, v14);
          (*(v25 + 16))(v16, v24, v14);
          v23 = (*(*(v28 - 8) + 48))(v16, 1) == 1;
          (*(v25 + 8))(v16, v14);
        }
      }

      else
      {
        return 1;
      }

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ApplePlatform.withInterface<A>(_:matchingAllInFamily:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = Array.init()();
  static ApplePlatform.enumerateInterfaceAddresses(_:)(sub_1000AF6D0);
  if (v7)
  {
  }

  return v9;
}

uint64_t sub_100098D18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v30 = a6;
  v31 = a5;
  v13 = type metadata accessor for Optional();
  v26 = *(v13 - 8);
  v27 = v13;
  __chkstk_darwin();
  v15 = &v26 - v14;
  v29 = *(a9 - 8);
  __chkstk_darwin();
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v26 - v18;
  result = *(a1 + 8);
  if (result)
  {
    result = String.init(cString:)();
    if (result != a2 || v21 != a3)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        return 1;
      }
    }

    v23 = *(a1 + 24);
    if (v23)
    {

      if (*(v23 + 1) == a4)
      {
        v24 = v32;
        v31(a1);
        if (!v24)
        {
          v25 = v29;
          if ((*(v29 + 48))(v15, 1, a9) == 1)
          {
            (*(v26 + 8))(v15, v27);
          }

          else
          {
            (*(v25 + 32))(v19, v15, a9);
            (*(v25 + 16))(v17, v19, a9);
            type metadata accessor for Array();
            Array.append(_:)();
            (*(v25 + 8))(v19, a9);
          }
        }
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppleDevice.NetworkPathMonitor.__allocating_init(evaluator:queue:updatedHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v13[4] = sub_1000B01E4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000991C0;
  v13[3] = &unk_10055EDD0;
  v10 = _Block_copy(v13);
  swift_unknownObjectRetain_n();
  v11 = a2;

  nw_path_evaluator_set_update_handler();
  _Block_release(v10);
  swift_unknownObjectRelease();

  nw_path_evaluator_start();
  swift_unknownObjectRelease();

  return v8;
}

uint64_t AppleDevice.NetworkPathMonitor.init(evaluator:queue:updatedHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000B00C8(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_100099168(uint64_t result, void (*a2)(uint64_t))
{
  if (result)
  {
    v3 = swift_unknownObjectRetain();
    a2(v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000991C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t AppleDevice.NetworkPathMonitor.deinit()
{
  nw_path_evaluator_cancel();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppleDevice.NetworkPathMonitor.__deallocating_deinit()
{
  nw_path_evaluator_cancel();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AppleDevice.NetworkPathMonitor.path.getter()
{
  result = nw_path_evaluator_copy_path();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t static AppleDevice.NetworkPathMonitor.statusDescription(from:)(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x6673697461736E75;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6169667369746173;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6569667369746173;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x64696C61766E69;
  }
}

uint64_t sub_10009935C()
{
  if (!*(v0 + 16))
  {
    return 0x6E696469766F7250;
  }

  if (*(v0 + 16) == 1)
  {
    return 0x676E696764697242;
  }

  if (*v0 == 0)
  {
    return 1701602377;
  }

  return 0x74616E696D726554;
}

uint64_t sub_1000993E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1000509F8(a1, a2, a3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100050988(a1, a2, a3);

  v10 = &qword_10058B000;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = 0xE900000000000067;
    v12 = 0x6E696469766F7250;
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v13 = 136315394;
    if (a3)
    {
      if (a3 == 1)
      {
        v14 = 0x676E696764697242;
        v15 = 0xEF64656C69614620;
      }

      else
      {
        if (a1 | a2)
        {
          v14 = 0x74616E696D726554;
        }

        else
        {
          v14 = 1701602377;
        }

        if (a1 | a2)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE400000000000000;
        }
      }
    }

    else
    {
      v14 = 0x6E696469766F7250;
      v15 = 0xE900000000000067;
    }

    v16 = sub_100002320(v14, v15, &v31);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = (v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state);
    if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
    {
      if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16) == 1)
      {
        v12 = 0x676E696764697242;
        v11 = 0xEF64656C69614620;
      }

      else
      {
        if (*v17 == 0)
        {
          v12 = 1701602377;
        }

        else
        {
          v12 = 0x74616E696D726554;
        }

        if (*v17 == 0)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xEA00000000006465;
        }
      }
    }

    v18 = sub_100002320(v12, v11, &v31);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Provider state changed: %s -> %s", v13, 0x16u);
    swift_arrayDestroy();

    v10 = &qword_10058B000;
  }

  else
  {
  }

  v19 = v4 + v10[434];
  if (*(v19 + 16) == 1)
  {
    v20 = *v19;
    v21 = *(v19 + 8);

    sub_1000509F8(v20, v21, 1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100002320(*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface), *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8), &v31);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100002320(*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface), *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface + 8), &v31);
      *(v24 + 22) = 2080;
      v25 = sub_100002320(v20, v21, &v31);
      sub_100050988(v20, v21, 1);
      *(v24 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v22, v23, "Provider bridging failed from %s to %s because %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100050988(v20, v21, 1);
    }
  }

  v26 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler);
  v27 = *v19;
  v28 = *(v19 + 8);
  v29 = *(v19 + 16);
  sub_1000509F8(*v19, v28, *(v19 + 16));
  v26(v27, v28, v29);

  return sub_100050988(v27, v28, v29);
}

uint64_t sub_100099848()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  if (*(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
  {
    (*(v3 + 8))(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger, v2, v4);
  }

  else
  {
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger, v2, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Internet sharing provider session will automatically terminate because it was released", v10, 2u);
    }

    v11 = *(v3 + 8);
    v11(v6, v2);
    sub_100099A64();
    (v11)(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger, v2, v12);
  }

  sub_100050988(*v7, *(v7 + 8), *(v7 + 16));

  return v1;
}

void sub_100099A64()
{
  v1 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  if (!*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
  {
    if ((_NETRBClientStopService() & 1) == 0)
    {
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Failed to stop netrb client service", v4, 2u);
      }
    }

    if ((_NETRBClientDestroy() & 1) == 0)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Failed to destroy netrb client", v7, 2u);
      }
    }

    v8 = *v1;
    v9 = *(v1 + 8);
    *v1 = xmmword_10047CE70;
    v10 = *(v1 + 16);
    *(v1 + 16) = 2;
    sub_1000993E8(v8, v9, v10);

    sub_100050988(v8, v9, v10);
  }
}

void sub_100099C3C()
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v100[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v100[-v5];
  type metadata accessor for DispatchTimeInterval();
  __chkstk_darwin();
  v10 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16) != 2 || *v10 != 0)
  {
    return;
  }

  v123 = v2;
  v124 = v7;
  v121 = v1;
  v125 = v9;
  v126 = &v100[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v120 = (v11 + 16);
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v11;
  v14[4] = v12;
  aBlock[4] = sub_1000B1DE4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009B1FC;
  aBlock[3] = &unk_10055FBE0;
  v15 = _Block_copy(aBlock);

  v16 = v12;

  v17 = _NETRBClientCreate();
  _Block_release(v15);
  if (!v17)
  {
    sub_10009B268(0xD00000000000001DLL, 0x80000001004B8010);
LABEL_16:

    return;
  }

  v122 = v11;
  if (!_NETRBClientSetGlobalServiceState())
  {
    _NETRBClientDestroy();
    sub_10009B268(0xD000000000000025, 0x80000001004B8030);
    goto LABEL_16;
  }

  v117 = v16;
  v118 = v17;
  v18 = v126;
  *v126 = 2;
  (*(v125 + 104))(v18, enum case for DispatchTimeInterval.seconds(_:), v124);
  empty = xpc_dictionary_create_empty();
  v20 = netrbClientInterfaceName;
  if (!netrbClientInterfaceName)
  {
    __break(1u);
    goto LABEL_107;
  }

  v21 = empty;
  v22 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface + 8);
  v111 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface);
  v110 = v22;
  v23 = String.utf8CString.getter();
  v116 = v21;
  xpc_dictionary_set_string(v21, v20, (v23 + 32));

  v24 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode);
  v25 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger;
  v119 = v0;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v112 = v24;
  if (v24 != 1)
  {
    if (v28)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Starting in internet sharing mode", v42, 2u);
    }

    if (netrbClientDeviceType)
    {
      xpc_dictionary_set_uint64(v116, netrbClientDeviceType, 6uLL);
      if (_NETRBClientStartService() && (static DispatchTime.now()(), + infix(_:_:)(), v43 = *(v123 + 8), v44 = v4, v45 = v121, v43(v44, v121), OS_dispatch_semaphore.wait(timeout:)(), v43(v6, v45), (static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0) && (v46 = v120, swift_beginAccess(), v47 = 0, v48 = 0, (*v46 & 1) != 0))
      {
LABEL_80:

        v78 = v119;

        v79 = v78;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *v82 = 136315394;
          *(v82 + 4) = sub_100002320(v111, v110, &v129);
          *(v82 + 12) = 2080;
          v106 = v47;
          v83 = v47;
          v84 = v48;
          if (!v48)
          {
            v83 = *(v79 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
            v48 = *(v79 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);
          }

          v85 = sub_100002320(v83, v48, &v129);

          *(v82 + 14) = v85;
          _os_log_impl(&_mh_execute_header, v80, v81, "Configured infra relay bridge with internal interface %s external interface %s", v82, 0x16u);
          swift_arrayDestroy();

          v18 = v126;
          v48 = v84;
          v47 = v106;
        }

        else
        {
        }

        v86 = v112;
        v87 = *(v79 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName);
        v88 = *(v79 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName + 8);
        if (!v48)
        {
          v47 = *(v79 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
          v48 = *(v79 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);
        }

        v89 = v86 ^ 1u;
        if (v87 == v47 && v88 == v48)
        {

          v90 = 0;
        }

        else
        {
          v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v90 = 256;
          if (v91)
          {
            v90 = 0;
          }
        }

        v92 = *v10;
        v93 = *(v10 + 8);
        *v10 = v118;
        *(v10 + 8) = v90 | v89;
        v94 = *(v10 + 16);
        *(v10 + 16) = 0;
        sub_1000993E8(v92, v93, v94);
        sub_100050988(v92, v93, v94);

        swift_unknownObjectRelease();
      }

      else
      {
        _NETRBClientDestroy();
        v127 = 0;
        v128 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        v127 = 0xD000000000000026;
        v128 = 0x80000001004B8060;
        String.append(_:)(*(v119 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface));
        sub_10009B268(v127, v128);

        swift_unknownObjectRelease();
      }

      (*(v125 + 8))(v18, v124);
      goto LABEL_96;
    }

    goto LABEL_108;
  }

  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Starting in bridged mode", v29, 2u);
  }

  v108 = v25;

  v30 = v119;
  if (!netrbClientDeviceType)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    return;
  }

  xpc_dictionary_set_uint64(v116, netrbClientDeviceType, 2uLL);
  v31 = swift_slowAlloc();
  v32 = *(v30 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);
  v114 = *(v30 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
  v113 = v32;
  sub_100097200(v114, v32, v31);
  swift_unknownObjectRetain();
  v109 = v31;
  started = _NETRBClientStartService();
  static DispatchTime.now()();
  + infix(_:_:)();
  v35 = v123 + 8;
  v34 = *(v123 + 8);
  v36 = v121;
  v34(v4, v121);
  OS_dispatch_semaphore.wait(timeout:)();
  v123 = v35;
  v107 = v34;
  v34(v6, v36);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100002320(v114, v113, aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "Timed out while waiting to start the netrb service for %s", v39, 0xCu);
      sub_100002A00(v40);
    }

    v41 = v125;
    v18 = v126;
    swift_unknownObjectRelease();
    goto LABEL_95;
  }

  if (started)
  {
    v49 = v120;
    swift_beginAccess();
    if (*v49 == 1)
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v48 = 0;
      v18 = v126;
      goto LABEL_79;
    }
  }

  v50 = nwi_state_copy();
  v18 = v126;
  v105 = v50;
  if (!v50)
  {
    swift_unknownObjectRelease();
    v41 = v125;
    goto LABEL_95;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_100002320(v114, v113, aBlock);
    _os_log_impl(&_mh_execute_header, v51, v52, "Failed to start the netrb service for %s", v53, 0xCu);
    sub_100002A00(v54);
  }

  nwi_state_get_interface_names();
  v115 = swift_slowAlloc();
  interface_names = nwi_state_get_interface_names();
  if (!interface_names)
  {
    swift_unknownObjectRelease();
    v77 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_78;
  }

  v56 = interface_names;
  swift_beginAccess();
  v57 = 0;
  v104 = 0;
  v106 = 0;
  v58 = 0;
  *&v59 = 136315138;
  v103 = v59;
  while (1)
  {
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_100;
    }

    if (v58)
    {
      v18 = v106;
      v52 = v104;
      if (v60 == v56)
      {
        goto LABEL_98;
      }

      goto LABEL_35;
    }

    v61 = *(v115 + 8 * v57);
    if (!v61 || (static String.Encoding.utf8.getter(), v62 = String.init(cString:encoding:)(), !v63))
    {
      if (v60 == v56)
      {
        goto LABEL_75;
      }

      goto LABEL_49;
    }

    v52 = v63;
    v64 = v62 == v114 && v63 == v113;
    if (v64 || (v18 = v62, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v18 = v126;
      if (v60 == v56)
      {
LABEL_75:
        swift_unknownObjectRelease();
        v77 = 0;
        goto LABEL_76;
      }

LABEL_49:
      if (v60 < v56)
      {
        while (1)
        {
          v65 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          v61 = *(v115 + 8 * v60);
          if (v61 && (static String.Encoding.utf8.getter(), v66 = String.init(cString:encoding:)(), v67))
          {
            v52 = v67;
            if (v66 != v114 || v67 != v113)
            {
              v18 = v66;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                ++v60;
                goto LABEL_64;
              }
            }

            v18 = v126;
            if (v65 == v56)
            {
              goto LABEL_75;
            }
          }

          else if (v65 == v56)
          {
            goto LABEL_75;
          }

          ++v60;
          if (v65 >= v56)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
LABEL_99:
        __break(1u);
      }

LABEL_100:
      __break(1u);
LABEL_101:
      swift_unknownObjectRelease();

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v129 = v98;
        *v97 = v103;
        v99 = sub_100002320(v18, v52, &v129);

        *(v97 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v95, v96, "Timed out while waiting to start the netrb service for %s", v97, 0xCu);
        sub_100002A00(v98);
      }

      else
      {
      }

      v77 = 0;
      v18 = v126;
LABEL_76:
      v48 = v104;
      v47 = v106;
      goto LABEL_78;
    }

LABEL_64:
    strlcpy(v109, v61, 0x10uLL);
    if (_NETRBClientStartService())
    {
      static DispatchTime.now()();
      + infix(_:_:)();
      v69 = v107;
      v107(v4, v121);
      OS_dispatch_semaphore.wait(timeout:)();
      v69(v6, v121);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        goto LABEL_101;
      }

      if (*v120)
      {

        if (v60 == v56)
        {
LABEL_98:
          swift_unknownObjectRelease();
          v77 = 1;
          v47 = v18;
          v48 = v52;
          v18 = v126;
          goto LABEL_78;
        }

LABEL_35:
        v58 = 1;
        v106 = v18;
        v104 = v52;
LABEL_36:
        v18 = v126;
        goto LABEL_37;
      }
    }

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      break;
    }

    v18 = v126;
    if (v60 == v56)
    {
      goto LABEL_75;
    }

    v58 = 0;
LABEL_37:
    v57 = v60;
    if (v60 >= v56)
    {
      goto LABEL_99;
    }
  }

  v72 = swift_slowAlloc();
  v101 = v71;
  v73 = v72;
  v102 = swift_slowAlloc();
  v129 = v102;
  *v73 = v103;
  v74 = sub_100002320(v18, v52, &v129);
  v75 = v70;
  v76 = v74;

  *(v73 + 4) = v76;
  _os_log_impl(&_mh_execute_header, v75, v101, "Failed to start the netrb service for %s", v73, 0xCu);
  sub_100002A00(v102);

  if (v60 != v56)
  {
    v58 = 0;
    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v77 = 0;
  v48 = v104;
  v47 = v106;
  v18 = v126;
LABEL_78:

  nwi_state_release();
  v41 = v125;
  if (v77)
  {
LABEL_79:

    goto LABEL_80;
  }

LABEL_95:
  _NETRBClientDestroy();
  sub_10009B268(0xD00000000000004ALL, 0x80000001004B8090);

  swift_unknownObjectRelease();
  (*(v41 + 8))(v18, v124);
LABEL_96:
}

const _xpc_type_s *sub_10009AEA8(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v7 = swift_unknownObjectRetain();
  type = xpc_get_type(v7);
  result = XPC_TYPE_DICTIONARY.getter();
  if (type != result || a1 != 1001)
  {
    goto LABEL_13;
  }

  if (netrbClientNotificationKey)
  {
    v10 = xpc_dictionary_get_value(a2, netrbClientNotificationKey);
    if (v10)
    {
      v11 = v10;
      v12 = xpc_get_type(v10);
      if (v12 == XPC_TYPE_UINT64.getter())
      {
        value = xpc_uint64_get_value(v11);
        swift_beginAccess();
        *(a4 + 16) = value == 5002;
        if (value == 5002)
        {
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Successfully configured infra relay bridge service", v19, 2u);
LABEL_21:
          }

LABEL_22:

          OS_dispatch_semaphore.signal()();

          swift_unknownObjectRelease();
          goto LABEL_14;
        }
      }

      else
      {
        swift_beginAccess();
        *(a4 + 16) = 0;
      }

      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315138;
        xpc_copy_description(v11);
        v23 = String.init(cString:)();
        v25 = sub_100002320(v23, v24, &v26);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v20, "Failed to start infra relay bridge service with error %s", v21, 0xCu);
        sub_100002A00(v22);

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to get value from NETRB client", v15, 2u);
    }

    swift_beginAccess();
    *(a4 + 16) = 0;
    OS_dispatch_semaphore.signal()();
LABEL_13:

LABEL_14:
    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009B1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10009B268(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100002320(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "Tearing down infra relay bridge because: %s", v8, 0xCu);
    sub_100002A00(v9);
  }

  sub_100099A64();
  v10 = v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  v11 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state);
  v12 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 8);
  *v10 = a1;
  *(v10 + 8) = a2;
  v13 = *(v10 + 16);
  *(v10 + 16) = 1;

  sub_1000993E8(v11, v12, v13);

  return sub_100050988(v11, v12, v13);
}

uint64_t sub_10009B3DC()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v1 - 8);
  v8 = v1;
  __chkstk_darwin();
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v6[2] = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  if (qword_10058AA28 != -1)
  {
    swift_once();
  }

  v6[1] = "g for network path to satisfy";
  v4 = static OS_dispatch_queue.nan;
  static DispatchQoS.unspecified.getter();
  v9 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = NANBitmap.Channel.operatingClass.getter;
  *(v0 + 48) = 0;
  Logger.init(subsystem:category:)();
  return v0;
}

uint64_t sub_10009B6FC(uint64_t a1)
{
  if (*(v1 + 24))
  {
    sub_10009C6A8(a1);
  }

  v2 = OBJC_IVAR____TtCCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession26NetworkConnectivityMonitor_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_10009B7BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  oslog = Logger.logObject.getter();
  if (v6)
  {
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Already monitoring network path status", v8, 2u);
    }

    return;
  }

  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v9, "Start monitoring network path status", v10, 2u);
  }

  v11 = nw_parameters_create();
  v12 = sub_1000972AC(a1, a2);
  nw_parameters_require_interface(v11, v12);
  swift_unknownObjectRelease();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (!evaluator_for_endpoint)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = evaluator_for_endpoint;
  v15 = *(v3 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  type metadata accessor for AppleDevice.NetworkPathMonitor();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000B1800;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1000B2C08;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991C0;
  aBlock[3] = &unk_10055F398;
  v20 = _Block_copy(aBlock);
  v21 = v15;
  swift_unknownObjectRetain_n();
  v22 = v21;

  nw_path_evaluator_set_update_handler();
  _Block_release(v20);
  swift_unknownObjectRelease();

  nw_path_evaluator_start();
  swift_unknownObjectRelease();

  *(v3 + 24) = v18;

  v23 = nw_path_evaluator_copy_path();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    return;
  }

  status = nw_path_get_status(v23);

  swift_unknownObjectRelease();
  if (status != *(v3 + 32))
  {
    *(v3 + 32) = status;
    v25 = *(v3 + 40);

    v25(status == nw_path_status_satisfied);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10009BB68@<X0>(uint64_t *a2@<X8>)
{
  result = nw_interface_create_with_name();
  *a2 = result;
  return result;
}

void sub_10009BB98(NSObject *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  status = nw_path_get_status(a1);
  v79 = 0;
  if (getifaddrs(&v79))
  {
    v76 = 1;
    v77 = 0;
    goto LABEL_18;
  }

  v10 = v79;
  if (!v79)
  {
LABEL_5:
    v76 = 1;
    v77 = 0;
    goto LABEL_17;
  }

  while (1)
  {
    if (!v10->ifa_name)
    {
      goto LABEL_118;
    }

    ifa_addr = v10->ifa_addr;
    v10 = v10->ifa_next;
    v13 = String.init(cString:)() == a3 && v12 == a4;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      goto LABEL_7;
    }

    if (!ifa_addr)
    {
      goto LABEL_119;
    }

    if (ifa_addr->sa_family == 2)
    {
      break;
    }

LABEL_7:
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v76 = 0;
  v77 = *&ifa_addr->sa_data[2];
LABEL_17:
  freeifaddrs(v79);
LABEL_18:
  v79 = 0;

  if (getifaddrs(&v79))
  {
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = v79;
    if (v79)
    {
      v14 = _swiftEmptyArrayStorage;
      while (v15->ifa_name)
      {
        v17 = v15->ifa_addr;
        v15 = v15->ifa_next;
        v19 = String.init(cString:)() == a3 && v18 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!v17)
          {
            goto LABEL_117;
          }

          if (v17->sa_family == 30)
          {
            v22 = &v17->sa_data[6];
            v21 = *&v17->sa_data[6];
            v20 = *(v22 + 1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_100116970(0, *(v14 + 2) + 1, 1, v14);
            }

            v24 = *(v14 + 2);
            v23 = *(v14 + 3);
            if (v24 >= v23 >> 1)
            {
              v14 = sub_100116970((v23 > 1), v24 + 1, 1, v14);
            }

            *(v14 + 2) = v24 + 1;
            v16 = &v14[32 * v24];
            *(v16 + 4) = v21;
            *(v16 + 5) = v20;
            *(v16 + 6) = 0;
            *(v16 + 7) = 0;
          }

          if (!v15)
          {
LABEL_37:
            v25 = v79;
            goto LABEL_39;
          }
        }

        else
        {

          if (!v15)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
    }

    v25 = 0;
    v14 = _swiftEmptyArrayStorage;
LABEL_39:
    freeifaddrs(v25);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v26, v27))
  {

    if (status == nw_path_status_satisfied)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

  v28 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  *v28 = 136315650;
  v74 = v8;
  if (status > nw_path_status_satisfied)
  {
    if (status == nw_path_status_unsatisfied)
    {
      v29 = 0x6673697461736E75;
      v31 = 6579561;
    }

    else
    {
      if (status != nw_path_status_satisfiable)
      {
        goto LABEL_50;
      }

      v29 = 0x6169667369746173;
      v31 = 6646882;
    }

    v30 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  else if (status)
  {
    if (status == nw_path_status_satisfied)
    {
      v29 = 0x6569667369746173;
      v30 = 0xE900000000000064;
      goto LABEL_54;
    }

LABEL_50:
    v30 = 0xE700000000000000;
    v29 = 0x6E776F6E6B6E75;
  }

  else
  {
    v29 = 0x64696C61766E69;
    v30 = 0xE700000000000000;
  }

LABEL_54:
  v32 = sub_100002320(v29, v30, &v79);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  if (v76)
  {
    v33 = 0;
  }

  else
  {
    v33 = v77;
  }

  v34 = swift_slowAlloc();
  v78 = v33;
  inet_ntop(2, &v78, v34, 0x10u);
  v35 = String.init(cString:)();
  v37 = v36;

  v38 = sub_100002320(v35, v37, &v79);

  *(v28 + 14) = v38;
  *(v28 + 22) = 2080;
  v39 = Array.description.getter();
  v41 = sub_100002320(v39, v40, &v79);

  *(v28 + 24) = v41;
  _os_log_impl(&_mh_execute_header, v26, v27, "Path became %s with ipv4: %s, ipv6: %s", v28, 0x20u);
  swift_arrayDestroy();

  v8 = v74;
  if (status != nw_path_status_satisfied)
  {
LABEL_46:

    goto LABEL_66;
  }

LABEL_58:
  v42 = v76;
  if (v77 == 65193)
  {
    v42 = 1;
  }

  if (v42)
  {
    v43 = *(v14 + 2) + 1;
    v44 = 32;
    while (--v43)
    {
      v45 = *&v14[v44];
      if (v45 == 254)
      {
        v44 += 32;
        if ((v45 & 0xC000) == 0x8000)
        {
          continue;
        }
      }

      goto LABEL_65;
    }

    status = nw_path_status_unsatisfied;
  }

  else
  {
LABEL_65:

    status = nw_path_status_satisfied;
  }

LABEL_66:
  if (*(v8 + 32) != status)
  {

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v53, v54))
    {

LABEL_107:
      *(v8 + 32) = status;
      v68 = *(v8 + 40);

      v68(status == nw_path_status_satisfied);

      if (*(v8 + 32) == 1)
      {
        if (qword_10058A758 != -1)
        {
          swift_once();
        }

        v69 = qword_10058BC80;
        v70 = String._bridgeToObjectiveC()();
        [v69 setLinkEvent:1 isInvoluntary:1 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:0 forInterface:v70];

        v71 = String._bridgeToObjectiveC()();
        [v69 notifyInterfaceRankingState:1 forInterface:v71];
      }

      else
      {
        if (qword_10058A758 != -1)
        {
          swift_once();
        }

        v72 = qword_10058BC80;
        v73 = String._bridgeToObjectiveC()();
        [v72 notifyInterfaceRankingState:0 forInterface:v73];

        v71 = String._bridgeToObjectiveC()();
        [v72 setLinkEvent:0 isInvoluntary:1 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:0 forInterface:v71];
      }

      return;
    }

    v55 = status;
    v56 = 0x64696C61766E69;
    v57 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v57 = 136315650;
    *(v57 + 4) = sub_100002320(a3, a4, &v79);
    *(v57 + 12) = 2080;
    v58 = *(v8 + 32);
    v75 = v8;
    if (v58 > 1)
    {
      if (v58 == 2)
      {
        v59 = 0x6673697461736E75;
        v62 = 6579561;
      }

      else
      {
        if (v58 != 3)
        {
LABEL_86:
          v60 = 0xE700000000000000;
          v59 = 0x6E776F6E6B6E75;
          goto LABEL_95;
        }

        v59 = 0x6169667369746173;
        v62 = 6646882;
      }

      v60 = v62 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    }

    else
    {
      if (v58)
      {
        if (v58 == 1)
        {
          v59 = 0x6569667369746173;
          v60 = 0xE900000000000064;
          goto LABEL_95;
        }

        goto LABEL_86;
      }

      v60 = 0xE700000000000000;
      v59 = 0x64696C61766E69;
    }

LABEL_95:
    v64 = sub_100002320(v59, v60, &v79);

    *(v57 + 14) = v64;
    *(v57 + 22) = 2080;
    if (v55 <= 1)
    {
      if (!v55)
      {
        v65 = 0xE700000000000000;
        goto LABEL_106;
      }

      if (v55 == 1)
      {
        v56 = 0x6569667369746173;
        v65 = 0xE900000000000064;
LABEL_106:
        v67 = sub_100002320(v56, v65, &v79);

        *(v57 + 24) = v67;
        _os_log_impl(&_mh_execute_header, v53, v54, "Network path status on %s changed from %s to %s", v57, 0x20u);
        swift_arrayDestroy();

        v8 = v75;
        status = v55;
        goto LABEL_107;
      }

LABEL_102:
      v65 = 0xE700000000000000;
      v56 = 0x6E776F6E6B6E75;
      goto LABEL_106;
    }

    if (v55 == 2)
    {
      v56 = 0x6673697461736E75;
      v66 = 6579561;
    }

    else
    {
      if (v55 != 3)
      {
        goto LABEL_102;
      }

      v56 = 0x6169667369746173;
      v66 = 6646882;
    }

    v65 = v66 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_106;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v79 = v49;
    *v48 = 136315138;
    v50 = *(v8 + 32);
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v51 = 0x6673697461736E75;
        v61 = 6579561;
      }

      else
      {
        if (v50 != 3)
        {
          goto LABEL_85;
        }

        v51 = 0x6169667369746173;
        v61 = 6646882;
      }

      v52 = v61 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    }

    else if (v50)
    {
      if (v50 == 1)
      {
        v51 = 0x6569667369746173;
        v52 = 0xE900000000000064;
        goto LABEL_91;
      }

LABEL_85:
      v52 = 0xE700000000000000;
      v51 = 0x6E776F6E6B6E75;
    }

    else
    {
      v51 = 0x64696C61766E69;
      v52 = 0xE700000000000000;
    }

LABEL_91:
    v63 = sub_100002320(v51, v52, &v79);

    *(v48 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring path status update when %s", v48, 0xCu);
    sub_100002A00(v49);
  }
}

void sub_10009C6A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  oslog = Logger.logObject.getter();
  if (v3)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Stop monitoring network path status", v5, 2u);
    }

    *(v2 + 32) = 2;
    *(v2 + 24) = 0;
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Already stopped monitoring network path status", v7, 2u);
    }
  }
}

uint64_t sub_10009C804()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return 0x6961462050434844;
    }

    else if (*v0 == 0)
    {
      return 0x72756769666E6F43;
    }

    else
    {
      return 0x74616E696D726554;
    }
  }

  else
  {
    v2 = 0x6673697461736E55;
    if (*v0)
    {
      v2 = 0x6569667369746153;
    }

    v4 = v2;

    v3._countAndFlagsBits = 0x7473657571655220;
    v3._object = 0xEA00000000007265;
    String.append(_:)(v3);

    return v4;
  }
}

id sub_10009C91C()
{
  result = [objc_opt_self() sharedInstance];
  qword_10058BC80 = result;
  return result;
}

uint64_t sub_10009C958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1000509F8(a1, a2, a3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100050988(a1, a2, a3);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0x6961462050434844;
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v11 = 136315394;
    if (a3)
    {
      if (a3 == 1)
      {
        v12 = 0xEB0000000064656CLL;
        v13 = 0x6961462050434844;
      }

      else
      {
        if (a1 | a2)
        {
          v13 = 0x74616E696D726554;
        }

        else
        {
          v13 = 0x72756769666E6F43;
        }

        if (a1 | a2)
        {
          v12 = 0xEA00000000006465;
        }

        else
        {
          v12 = 0xEB00000000676E69;
        }
      }
    }

    else
    {
      v14 = 0x6673697461736E55;
      if (a1)
      {
        v14 = 0x6569667369746153;
        v15 = 0xE900000000000064;
      }

      else
      {
        v15 = 0xEB00000000646569;
      }

      v38 = v14;
      v39 = v15;

      v16._countAndFlagsBits = 0x7473657571655220;
      v16._object = 0xEA00000000007265;
      String.append(_:)(v16);

      v13 = v38;
      v12 = v15;
    }

    v17 = sub_100002320(v13, v12, &v40);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    v19 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state);
    if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
    {
      if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16) == 1)
      {
        v20 = 0xEB0000000064656CLL;
      }

      else
      {
        if (v19 | *(v18 + 8))
        {
          v10 = 0x74616E696D726554;
        }

        else
        {
          v10 = 0x72756769666E6F43;
        }

        if (v19 | *(v18 + 8))
        {
          v20 = 0xEA00000000006465;
        }

        else
        {
          v20 = 0xEB00000000676E69;
        }
      }
    }

    else
    {
      v21 = (v19 & 1) == 0;
      v22 = 0x6673697461736E55;
      if (v21)
      {
        v23 = 0xEB00000000646569;
      }

      else
      {
        v22 = 0x6569667369746153;
        v23 = 0xE900000000000064;
      }

      v38 = v22;
      v39 = v23;

      v24._countAndFlagsBits = 0x7473657571655220;
      v24._object = 0xEA00000000007265;
      String.append(_:)(v24);

      v10 = v38;
      v20 = v39;
    }

    v25 = sub_100002320(v10, v20, &v40);

    *(v11 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v8, v9, "Requester state changed: %s -> %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v26 = v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  v27 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state);
  v28 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 8);
  v29 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16);
  if (v29 == 1)
  {

    sub_1000509F8(v27, v28, 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_100002320(*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface), *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8), &v38);
      *(v32 + 12) = 2080;
      v33 = sub_100002320(v27, v28, &v38);
      sub_100050988(v27, v28, 1);
      *(v32 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v30, v31, "Requester DHCP failed on %s because %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100050988(v27, v28, 1);
    }

    v34 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v35 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    sub_1000AF710(v34, v35, 0);

    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
  }

  v36 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_stateUpdatedHandler);
  sub_1000509F8(v27, v28, v29);
  v36(v27, v28, v29);

  return sub_100050988(v27, v28, v29);
}

uint64_t sub_10009CEB8(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  if (!*(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
  {
    v3 = v1;
    sub_10009C6A8(result);
    v4 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v5 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    sub_1000AF710(v4, v5, 0);

    v6 = *v2;
    v7 = *(v2 + 8);
    *v2 = xmmword_10047CE70;
    v8 = *(v2 + 16);
    *(v2 + 16) = 2;
    sub_10009C958(v6, v7, v8);

    return sub_100050988(v6, v7, v8);
  }

  return result;
}

uint64_t sub_10009CFAC(uint64_t a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  if (!*(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
  {
    sub_10009C6A8(a1);
    v4 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v5 = *(v2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    sub_1000AF710(v4, v5, 0);

    v6 = *v3;
    v7 = *(v3 + 8);
    *v3 = xmmword_10047CE70;
    v8 = *(v3 + 16);
    *(v3 + 16) = 2;
    sub_10009C958(v6, v7, v8);
    sub_100050988(v6, v7, v8);
  }

  v9 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  sub_100050988(*v3, *(v3 + 8), *(v3 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10009D140(const __SCPreferences *a1, uint64_t a2, void *a3, char a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = _SCNetworkInterfaceCreateWithBSDName();

  if (v8)
  {
    v9 = SCNetworkServiceCopyAll(a1);
    if (v9)
    {
      v10 = v9;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SCNetworkService(0);
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    return 0;
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v13 = 0xD000000000000028;
    v14 = 0x80000001004B7E60;
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    String.append(_:)(v11);
    return 0;
  }
}

uint64_t sub_10009D794(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    if (!*(result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v4 = *(v2 + 8);
        *v2 = 0xD00000000000002DLL;
        *(v2 + 8) = 0x80000001004B7F90;
        *(v2 + 16) = 1;
        sub_10009C958(v3, v4, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10009D834(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    if (!*(result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
    {
      v5 = *v4;
      if (*v4)
      {
        if ((a1 & 1) == 0)
        {
          sub_10009CEB8(v5);
          v6 = *v4;
          v7 = *(v4 + 8);
          *v4 = 0xD000000000000018;
          *(v4 + 8) = 0x80000001004B7F70;
          v8 = *(v4 + 16);
          *(v4 + 16) = 1;
          sub_10009C958(v6, v7, v8);
          sub_100050988(v6, v7, v8);
        }
      }

      else if (a1)
      {
        v9 = *(v4 + 8);
        *v4 = xmmword_10047CE70;
        *(v4 + 16) = 0;
        sub_10009C958(v5, v9, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10009D934(uint64_t a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor;
  *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor) = 0;
  RoutingSocket.init()(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket);
  v5 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -1;
  v6 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v6 + 4) = 0;
  *v6 = 0;
  *(v6 + 6) = 1;
  v7 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = nw_parameters_create();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);

  v12 = sub_1000972AC(v10, v11);

  nw_parameters_require_interface(v9, v12);
  swift_unknownObjectRelease();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Start monitoring network path for gateway address updates", v15, 2u);
  }

  result = nw_path_create_evaluator_for_endpoint();
  if (result)
  {
    v17 = result;
    v26 = v4;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v18 = static OS_dispatch_queue.p2p;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1000B1C30;
    *(v22 + 24) = v20;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055F8C0;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    swift_unknownObjectRetain_n();
    v25 = v24;

    nw_path_evaluator_set_update_handler();
    _Block_release(v23);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v2 + v26) = v21;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009DD00(uint64_t a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor;
  *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor) = 0;
  RoutingSocket.init()(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket);
  v5 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -1;
  v6 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v6 + 4) = 0;
  *v6 = 0;
  *(v6 + 6) = 1;
  v7 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = nw_parameters_create();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);

  v12 = sub_1000972AC(v10, v11);

  nw_parameters_require_interface(v9, v12);
  swift_unknownObjectRelease();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Start monitoring network path for gateway address updates", v15, 2u);
  }

  result = nw_path_create_evaluator_for_endpoint();
  if (result)
  {
    v17 = result;
    v26 = v4;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v18 = static OS_dispatch_queue.p2p;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1000B1B44;
    *(v22 + 24) = v20;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055F528;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    swift_unknownObjectRetain_n();
    v25 = v24;

    nw_path_evaluator_set_update_handler();
    _Block_release(v23);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v2 + v26) = v21;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009E0CC(NSObject *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136315138;
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);

      v13 = sub_100002320(v11, v12, aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Network path for interface %s was updated", v9, 0xCu);
      sub_100002A00(v10);
    }

    else
    {
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000B1C38;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1000B2C10;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A08B8;
    aBlock[3] = &unk_10055F938;
    v16 = _Block_copy(aBlock);

    nw_path_enumerate_gateways(a1, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009E35C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136315138;
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);

      v13 = sub_100002320(v11, v12, aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Network path for interface %s was updated", v9, 0xCu);
      sub_100002A00(v10);
    }

    else
    {
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000B2A14;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1000B1B4C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A08B8;
    aBlock[3] = &unk_10055F5A0;
    v16 = _Block_copy(aBlock);

    nw_path_enumerate_gateways(a1, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009E5EC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = &v29 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v33 = a3;
    v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *(v8 + 16);
    v32(v11, a3, a4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = v16;
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v16 = 136315138;
      v17 = a5;
      v18 = *(*(a5 + 16) + 40);
      v30 = v15;
      v19 = v18(a4);
      v21 = v20;
      (*(v8 + 8))(v11, a4);
      v22 = sub_100002320(v19, v21, aBlock);
      a5 = v17;

      v23 = v29;
      *(v29 + 1) = v22;
      _os_log_impl(&_mh_execute_header, v14, v30, "Network path for interface %s was updated", v23, 0xCu);
      sub_100002A00(v31);
    }

    else
    {

      (*(v8 + 8))(v11, a4);
    }

    v24 = v34;
    v32(v34, v33, a4);
    v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = a4;
    *(v26 + 3) = a5;
    *(v26 + 4) = v13;
    (*(v8 + 32))(&v26[v25], v24, a4);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1000B1F28;
    *(v27 + 24) = v26;
    aBlock[4] = sub_1000B2C10;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A08B8;
    aBlock[3] = &unk_10055FCD0;
    v28 = _Block_copy(aBlock);

    nw_path_enumerate_gateways(v35, v28);

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009E9D4(NSObject *a1, uint64_t a2, void *a3)
{
  v100 = a3;
  sub_10005DC58(&qword_10058BC88, &unk_1004818B0);
  __chkstk_darwin();
  v105 = &v88 - v5;
  v104 = type metadata accessor for RoutingSocket(0);
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v106 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v101 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v88 - v10;
  __chkstk_darwin();
  v13 = &v88 - v12;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v98 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v88 - v15;
  v17 = type metadata accessor for DispatchTime();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v88 - v21;
  address = nw_endpoint_get_address(a1);
  if (address->sa_family != 2)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Currently support gateway IP address translation for IPv4 only", v27, 2u);
    }

    return 0;
  }

  v99 = *&address->sa_data[2];
  v118[0] = v99;
  memset(&v118[1], 0, 24);
  v119 = 0;
  v23 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  swift_beginAccess();
  v96 = v23;
  sub_100012400(a2 + v23, v16, &unk_100597330, &unk_100481FA0);
  v24 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100016290(v16, &unk_100597330, &unk_100481FA0);
LABEL_12:
    v41 = v99;
    v43 = v105;
    v42 = v106;
    goto LABEL_13;
  }

  v28 = *(v18 + 32);
  v29 = v102;
  v28(v102, v16, v17);
  v30 = (a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress);
  v31 = *(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32);
  if (v31 == 255)
  {
    (*(v24 + 8))(v29, v17);
    goto LABEL_12;
  }

  v97 = v17;
  v95 = a2;
  v32 = *v30;
  v33 = v30[1];
  v34 = v30[2];
  v35 = v30[3];
  v92 = v31;
  v91 = v32;
  v88 = v33;
  v89 = v34;
  v90 = v35;
  sub_1000B1BE0(v32, v33, v34, v35, v31 & 1);
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  DispatchTime.distance(to:)();
  v94 = v24;
  v93 = *(v24 + 8);
  v93(v20, v97);
  *v11 = 300;
  v36 = v101;
  v37 = *(v101 + 104);
  v37(v11, enum case for DispatchTimeInterval.seconds(_:), v7);
  v38 = enum case for DispatchTimeInterval.never(_:);
  v37(v9, enum case for DispatchTimeInterval.never(_:), v7);
  v39 = static DispatchTimeInterval.== infix(_:_:)();
  v101 = *(v36 + 8);
  (v101)(v9, v7);
  if (v39)
  {
    sub_1000B17D8(v91, v88, v89, v90, v92);
    v40 = v101;
    (v101)(v11, v7);
    v40(v13, v7);
    v17 = v97;
    v93(v102, v97);
    a2 = v95;
    v24 = v94;
    goto LABEL_12;
  }

  v37(v9, v38, v7);
  v71 = static DispatchTimeInterval.== infix(_:_:)();
  v72 = v101;
  (v101)(v9, v7);
  if (v71)
  {
    v72(v11, v7);
    v72(v13, v7);
    a2 = v95;
    v17 = v97;
    v24 = v94;
    v43 = v105;
    v42 = v106;
  }

  else
  {
    v73 = sub_100028EF8();
    v74 = sub_100028EF8();
    v72(v11, v7);
    v72(v13, v7);
    v75 = v73 < v74;
    a2 = v95;
    v17 = v97;
    v24 = v94;
    v43 = v105;
    v42 = v106;
    if (!v75)
    {
      v93(v102, v97);
      sub_1000B17D8(v91, v88, v89, v90, v92);
      v41 = v99;
      goto LABEL_13;
    }
  }

  v41 = v99;
  v76 = v93;
  if (v92)
  {
    sub_1000B17D8(v91, v88, v89, v90, v92);
  }

  else if (v99 == v91)
  {
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Skip updating gateway IP address", v79, 2u);
    }

    v76(v102, v97);
    return 0;
  }

  v76(v102, v17);
LABEL_13:
  sub_100012400(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v43, &qword_10058BC88, &unk_1004818B0);
  if ((*(v103 + 48))(v43, 1, v104) == 1)
  {
    sub_100016290(v43, &qword_10058BC88, &unk_1004818B0);
    return 0;
  }

  v97 = v17;
  sub_100016DFC(v43, v42, type metadata accessor for RoutingSocket);
  v45 = RoutingSocket.macAddress(for:)(v118);
  sub_100012468(v42, type metadata accessor for RoutingSocket);
  if ((v45 & 0x1000000000000) != 0)
  {
    return 0;
  }

  v46 = a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  v47 = v45 >> 40;
  v106 = HIDWORD(v45);
  v48 = *(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32);
  if (v48 == 255 || (v48 & 1) != 0 || v41 != *v46 || (v49 = (a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress), (*(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress + 6) & 1) != 0) || ((v50 = *(v49 + 2), v51 = *v49, LOWORD(v108) = v45, BYTE2(v108) = BYTE2(v45), BYTE3(v108) = BYTE3(v45), BYTE4(v108) = v106, BYTE5(v108) = BYTE5(v45), v107[0] = v51, v52.i64[0] = 0xFFFFFFFFFFFFLL, v52.i64[1] = 0xFFFFFFFFFFFFLL, v53 = vandq_s8(vdupq_n_s64(v51 | (v50 << 32)), v52), v54 = vshlq_u64(v53, xmmword_1004817A0), *v53.i8 = vmovn_s64(vshlq_u64(v53, xmmword_100481790)), *v54.i8 = vmovn_s64(v54), v54.i16[1] = v54.i16[2], v54.i16[2] = v53.i16[0], v54.i16[3] = v53.i16[2], *&v107[1] = vmovn_s16(v54).u32[0], v107[5] = BYTE1(v50), v108 == *v107) ? (v55 = WORD2(v108) == *&v107[4]) : (v55 = 0), !v55))
  {
    v103 = v45 >> 8;
    v104 = v45 >> 16;
    v105 = (v45 >> 24);
    v102 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v101 = v45 >> 40;
      v108 = v59;
      *v58 = 136315394;
      v60 = swift_slowAlloc();
      *v107 = v99;
      inet_ntop(2, v107, v60, 0x10u);
      v61 = String.init(cString:)();
      v95 = a2;
      v94 = v24;
      v62 = v61;
      v64 = v63;

      v65 = sub_100002320(v62, v64, &v108);

      *(v58 + 4) = v65;
      *(v58 + 12) = 2080;
      v66 = WiFiAddress.description.getter(v45 & 0xFFFFFFFFFFFFLL);
      v68 = sub_100002320(v66, v67, &v108);
      v41 = v99;

      *(v58 + 14) = v68;
      v24 = v94;
      a2 = v95;
      _os_log_impl(&_mh_execute_header, v56, v57, "Gateway (%s) has MAC address %s", v58, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v47) = v101;
    }

    v116 = 0;
    v115 = 0u;
    LODWORD(v108) = 1;
    BYTE4(v108) = v45;
    BYTE5(v108) = v103;
    BYTE6(v108) = v104;
    HIBYTE(v108) = v105;
    v109 = v106;
    v110 = v47;
    v111 = 34603008;
    v112 = 0;
    v113 = v41;
    v114 = 0u;
    v69 = v100[2];
    v70 = v100[3];

    AppleDevice.setRequest(requestType:data:on:)(0x1C2uLL, &v108, v117, 0, v69, v70);
  }

  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  v80 = v98;
  (*(*algn_10059B518 + 8))();
  (*(v24 + 56))(v80, 0, 1, v97);
  v81 = v96;
  swift_beginAccess();
  sub_1000B1B78(v80, a2 + v81, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  v82 = *v46;
  v83 = *(v46 + 8);
  v84 = *(v46 + 16);
  v85 = *(v46 + 24);
  *v46 = v41;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v86 = *(v46 + 32);
  *(v46 + 32) = 0;
  sub_1000B17D8(v82, v83, v84, v85, v86);
  result = 1;
  v87 = a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v87 + 4) = v106;
  *v87 = v45;
  *(v87 + 6) = 0;
  return result;
}

uint64_t sub_10009F99C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v101 = a4;
  v100 = a3;
  sub_10005DC58(&qword_10058BC88, &unk_1004818B0);
  __chkstk_darwin();
  v107 = &v88 - v7;
  v8 = type metadata accessor for RoutingSocket(0);
  v105 = *(v8 - 8);
  v106 = v8;
  __chkstk_darwin();
  v108 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v103 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v88 - v13;
  __chkstk_darwin();
  v16 = &v88 - v15;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v99 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v88 - v18;
  v20 = type metadata accessor for DispatchTime();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v88 - v24;
  address = nw_endpoint_get_address(a1);
  if (address->sa_family != 2)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Currently support gateway IP address translation for IPv4 only", v29, 2u);
    }

    return 0;
  }

  v97 = *&address->sa_data[2];
  v111[0] = v97;
  memset(&v111[1], 0, 24);
  v112 = 0;
  v26 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  swift_beginAccess();
  v96 = v26;
  sub_100012400(a2 + v26, v19, &unk_100597330, &unk_100481FA0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100016290(v19, &unk_100597330, &unk_100481FA0);
LABEL_12:
    v43 = v108;
LABEL_13:
    v44 = v107;
    goto LABEL_14;
  }

  v30 = v104;
  (*(v21 + 32))(v104, v19, v20);
  v31 = (a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress);
  v32 = *(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32);
  if (v32 == 255)
  {
    (*(v21 + 8))(v30, v20);
    goto LABEL_12;
  }

  v98 = v20;
  v95 = a2;
  v33 = *v31;
  v34 = v31[1];
  v35 = v31[2];
  v36 = v31[3];
  v92 = v32;
  v91 = v33;
  v88 = v34;
  v89 = v35;
  v90 = v36;
  sub_1000B1BE0(v33, v34, v35, v36, v32 & 1);
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  DispatchTime.distance(to:)();
  v94 = v21;
  v93 = *(v21 + 8);
  v93(v23, v98);
  *v14 = 300;
  v37 = v103;
  v38 = *(v103 + 104);
  v38(v14, enum case for DispatchTimeInterval.seconds(_:), v10);
  v39 = enum case for DispatchTimeInterval.never(_:);
  v38(v12, enum case for DispatchTimeInterval.never(_:), v10);
  v40 = static DispatchTimeInterval.== infix(_:_:)();
  v103 = *(v37 + 8);
  (v103)(v12, v10);
  if (v40)
  {
    sub_1000B17D8(v91, v88, v89, v90, v92);
    v41 = v103;
    (v103)(v14, v10);
    v41(v16, v10);
    v42 = v98;
    v93(v104, v98);
    a2 = v95;
    v20 = v42;
    v21 = v94;
    goto LABEL_12;
  }

  v38(v12, v39, v10);
  v70 = static DispatchTimeInterval.== infix(_:_:)();
  v71 = v103;
  (v103)(v12, v10);
  if (v70)
  {
    v71(v14, v10);
    v71(v16, v10);
    a2 = v95;
    v20 = v98;
    v21 = v94;
    v43 = v108;
  }

  else
  {
    v72 = sub_100028EF8();
    v73 = sub_100028EF8();
    v71(v14, v10);
    v71(v16, v10);
    v74 = v72 < v73;
    a2 = v95;
    v20 = v98;
    v21 = v94;
    v43 = v108;
    if (!v74)
    {
      v93(v104, v98);
      sub_1000B17D8(v91, v88, v89, v90, v92);
      goto LABEL_13;
    }
  }

  v44 = v107;
  v75 = v93;
  if (v92)
  {
    sub_1000B17D8(v91, v88, v89, v90, v92);
  }

  else if (v97 == v91)
  {
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Skip updating gateway IP address", v78, 2u);
    }

    v75(v104, v98);
    return 0;
  }

  v75(v104, v20);
LABEL_14:
  sub_100012400(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v44, &qword_10058BC88, &unk_1004818B0);
  if ((*(v105 + 48))(v44, 1, v106) == 1)
  {
    sub_100016290(v44, &qword_10058BC88, &unk_1004818B0);
    return 0;
  }

  v98 = v20;
  sub_100016DFC(v44, v43, type metadata accessor for RoutingSocket);
  v46 = RoutingSocket.macAddress(for:)(v111);
  sub_100012468(v43, type metadata accessor for RoutingSocket);
  if ((v46 & 0x1000000000000) != 0)
  {
    return 0;
  }

  v95 = a2;
  v47 = a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  v48 = *(v47 + 32);
  if (v48 == 255 || (v48 & 1) != 0 || v97 != *v47 || (v49 = (v95 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress), (*(v95 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress + 6) & 1) != 0) || ((v50 = *(v49 + 2), v51 = *v49, LOWORD(v110[0]) = v46, BYTE2(v110[0]) = BYTE2(v46), BYTE3(v110[0]) = BYTE3(v46), BYTE4(v110[0]) = BYTE4(v46), BYTE5(v110[0]) = BYTE5(v46), v109[0] = v51, v52.i64[0] = 0xFFFFFFFFFFFFLL, v52.i64[1] = 0xFFFFFFFFFFFFLL, v53 = vandq_s8(vdupq_n_s64(v51 | (v50 << 32)), v52), v54 = vshlq_u64(v53, xmmword_1004817A0), *v53.i8 = vmovn_s64(vshlq_u64(v53, xmmword_100481790)), *v54.i8 = vmovn_s64(v54), v54.i16[1] = v54.i16[2], v54.i16[2] = v53.i16[0], v54.i16[3] = v53.i16[2], *&v109[1] = vmovn_s16(v54).u32[0], v109[5] = BYTE1(v50), LODWORD(v110[0]) == *v109) ? (v55 = WORD2(v110[0]) == *&v109[4]) : (v55 = 0), !v55))
  {
    v56 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v110[0] = v107;
      *v59 = 136315394;
      v60 = swift_slowAlloc();
      *v109 = v97;
      inet_ntop(2, v109, v60, 0x10u);
      v61 = String.init(cString:)();
      v108 = v56;
      v62 = v61;
      v64 = v63;

      v65 = sub_100002320(v62, v64, v110);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2080;
      v66 = v46 & 0xFFFFFFFFFFFFLL;
      v67 = WiFiAddress.description.getter(v46 & 0xFFFFFFFFFFFFLL);
      v69 = sub_100002320(v67, v68, v110);

      *(v59 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v57, v58, "Gateway (%s) has MAC address %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v66 = v46 & 0xFFFFFFFFFFFFLL;
    }

    (*(v102 + 128))(v66, v111, v101);
  }

  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  v79 = v99;
  (*(*algn_10059B518 + 8))();
  (*(v21 + 56))(v79, 0, 1, v98);
  v80 = v95;
  v81 = v96;
  swift_beginAccess();
  sub_1000B1B78(v79, v80 + v81, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  v82 = *v47;
  v83 = *(v47 + 8);
  v84 = *(v47 + 16);
  v85 = *(v47 + 24);
  *v47 = v97;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v86 = *(v47 + 32);
  *(v47 + 32) = 0;
  sub_1000B17D8(v82, v83, v84, v85, v86);
  result = 1;
  v87 = v80 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v87 + 4) = WORD2(v46);
  *v87 = v46;
  *(v87 + 6) = 0;
  return result;
}

uint64_t sub_1000A08B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v4 = v3(a2);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1000A0908()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger, v2, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stop monitoring network path for gateway address updates", v10, 2u);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v11((v1 + v7), v2);

  sub_100016290(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, &qword_10058BC88, &unk_1004818B0);
  sub_1000B17D8(*(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 8), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 16), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 24), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32));
  sub_100016290(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate, &unk_100597330, &unk_100481FA0);
  return v1;
}

uint64_t sub_1000A0B04(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A0B5C()
{
  v1 = v0;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resetting gateway IP address", v6, 2u);
  }

  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  swift_beginAccess();
  sub_1000B1B78(v3, v1 + v8, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  v9 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  v10 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress);
  v11 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 8);
  v12 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 16);
  v13 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 24);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v14 = *(v9 + 32);
  *(v9 + 32) = -1;
  result = sub_1000B17D8(v10, v11, v12, v13, v14);
  v16 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v16 + 4) = 0;
  *v16 = 0;
  *(v16 + 6) = 1;
  return result;
}

uint64_t sub_1000A0D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  sub_10005DC58(&qword_10058BC88, &unk_1004818B0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = type metadata accessor for RoutingSocket(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012400(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v10, &qword_10058BC88, &unk_1004818B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = &qword_10058BC88;
    v16 = &unk_1004818B0;
    v17 = v10;
  }

  else
  {
    sub_100016DFC(v10, v14, type metadata accessor for RoutingSocket);
    RoutingSocket.ipAddress(for:)(a1 & 0xFFFFFFFFFFFFLL, v45);
    v41 = a2;
    v38 = v45[1];
    v39 = v45[0];
    v36 = v45[3];
    v37 = v45[2];
    sub_100012400(v45, v44, &unk_10058C790, qword_100481FB8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    sub_100016290(v45, &unk_10058C790, qword_100481FB8);
    v40 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v35 = v19;
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v21 = 136315394;
      v22 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v24 = sub_100002320(v22, v23, v44);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      if (v46)
      {
        v25 = IPv6Address.description.getter(v39, v38, v37, v36);
        v27 = v26;
      }

      else
      {
        v28 = swift_slowAlloc();
        v43[0] = v39;
        inet_ntop(2, v43, v28, 0x10u);
        v29 = String.init(cString:)();
        v27 = v30;

        v25 = v29;
      }

      v31 = sub_100002320(v25, v27, v44);

      *(v21 + 14) = v31;
      v32 = v35;
      _os_log_impl(&_mh_execute_header, v35, v40, "Infra peer (%s) has IP address %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(a4 + 136))(a1 & 0xFFFFFFFFFFFFLL, v45, v42, a4);
    sub_100012468(v14, type metadata accessor for RoutingSocket);
    v15 = &unk_10058C790;
    v16 = qword_100481FB8;
    v17 = v45;
  }

  return sub_100016290(v17, v15, v16);
}

uint64_t static DeviceDriver<>.interfaceName(for:)(unsigned int a1)
{
  v2 = swift_slowAlloc();
  if (if_indextoname(a1, v2))
  {
    v3 = String.init(cString:)();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t DeviceDriver<>.linkState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for WiFiInterfaceLinkState, &v7);

  return v7;
}

uint64_t DeviceDriver<>.update(linkState:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v23 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v20 = &v19 - v8;
  v27 = 0u;
  v28 = 0u;
  v9 = *(a4 + 40);
  v10 = v9(a2, a4);
  v12 = v11;
  KeyPath = swift_getKeyPath();

  sub_10000F344(v10, v12, &v27, KeyPath, 0x10uLL);

  v9(a2, a4);
  v14 = v21;
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for UInt32, &v25);
  v15 = v20;

  v16 = v25 & 0xFFBE;
  if (v26)
  {
    v16 = 0;
  }

  if (v23)
  {
    v17 = 65;
  }

  else
  {
    v17 = 0;
  }

  LOWORD(v28) = v16 | v17;
  (*(v22 + 56))(a2);
  (*(v14 + 16))(1, &v27, AssociatedTypeWitness, v14);
  return (*(v24 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_1000A16C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 16);
  *(a2 + 4) = 0;
  return result;
}

unint64_t DeviceDriver<>.macAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for WiFiAddress, &v7);

  return v7 | (v8 << 32) | (v9 << 48);
}

uint64_t sub_1000A17B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    __break(1u);
  }

  v4 = *(v3 + 5);
  v5 = *(v3 + 6);
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v9 = v11;
  v10 = v12;
  v6 = sub_1002AAFAC(&v9 + v4, v5);
  result = sub_1000172CC(v6, v7);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  *(a2 + 6) = BYTE6(result) & 1;
  return result;
}

uint64_t sub_1000A1860(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v14 = HIDWORD(a1);
  v15 = a1 >> 40;
  v17 = 0u;
  v18 = 0u;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  KeyPath = swift_getKeyPath();

  sub_10000F344(v6, v7, &v17, KeyPath, 0x10uLL);

  v16 = v18;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004817D0;
  *(v9 + 32) = v2;
  *(v9 + 33) = v3;
  *(v9 + 34) = v4;
  *(v9 + 35) = v5;
  *(v9 + 36) = v14;
  *(v9 + 37) = v15;
  v10 = sub_10002D874(v9);
  v12 = v11;

  sub_1000A1CDC(v10, v12, &v16 + 2, &v17);
  sub_1000124C8(v10, v12);
  v18 = v16;
  LOWORD(v18) = 4614;

  AppleDevice.send(request:data:)(2, &v17);
}

uint64_t DeviceDriver<>.update(macAddress:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v8 = a1;
  v26 = a1 >> 8;
  v28 = a1 >> 16;
  v30 = a1 >> 24;
  v27 = HIDWORD(a1);
  v29 = a1 >> 40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v25 - v10;
  v34 = 0u;
  v35 = 0u;
  v12 = (*(a4 + 40))(a2, a4);
  v14 = v13;
  KeyPath = swift_getKeyPath();

  v16 = v25;
  sub_10000F344(v12, v14, &v34, KeyPath, 0x10uLL);
  v25 = v16;

  v33 = v35;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004817D0;
  *(v17 + 32) = v8;
  *(v17 + 33) = v26;
  *(v17 + 34) = v28;
  *(v17 + 35) = v30;
  *(v17 + 36) = v27;
  *(v17 + 37) = v29;
  v18 = sub_10002D874(v17);
  v20 = v19;

  sub_1000A1CDC(v18, v20, &v33 + 2, &v34);
  sub_1000124C8(v18, v20);
  v35 = v33;
  LOWORD(v35) = 4614;
  v21 = *(a3 + 56);
  v22 = a3;
  v23 = AssociatedTypeWitness;
  v21(a2, v22);
  (*(v32 + 16))(2, &v34, v23);
  return (*(v9 + 8))(v11, v23);
}

void sub_1000A1CDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10005DC58(&qword_10058C7B8, &qword_100481FD8);
  __chkstk_darwin();
  v10 = &v14[-v9];
  v16 = a1;
  v17 = a2;
  if (!a3)
  {
    return;
  }

  __chkstk_darwin();
  *&v14[-32] = &v16;
  *&v14[-24] = a3;
  *&v14[-16] = a4;
  *&v14[-8] = a3;
  if ((sub_1000AEAFC(sub_1000B1F68, &v14[-48], a1, a2) & 1) == 0)
  {
    return;
  }

  v11 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v11)
  {
    goto LABEL_8;
  }

  sub_10000AB0C(v16, v17);
LABEL_8:
  Data.Iterator.init(_:at:)();
  type metadata accessor for Data.Iterator();
  sub_10001F8F4(&qword_10058C7C0, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  v12 = 0;
  if (v15)
  {
LABEL_12:
    *&v10[*(v8 + 36)] = v12;
    sub_100016290(v10, &qword_10058C7B8, &qword_100481FD8);
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      *(a3 + v13) = v14[6];
      dispatch thunk of IteratorProtocol.next()();
      ++v13;
      if (v15 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t DeviceDriver<>.ipv4Address.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for IPv4Address, &v7);

  return v7 | (v8 << 32);
}

uint64_t sub_1000A1FBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(v2 + 4);
    *(a2 + 4) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}