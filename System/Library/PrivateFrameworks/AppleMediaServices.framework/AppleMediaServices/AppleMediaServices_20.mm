Swift::Int sub_1001EB8C0()
{
  v1 = v0[1];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = v0[4];
  v2 = v0[5];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001EB974(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[4];
  v3 = v1[5];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_1001EBA28()
{
  result = qword_1002E24F8[0];
  if (!qword_1002E24F8[0])
  {
    result = swift_getWitnessTable(byte_100249E44, &type metadata for PersistedIdentifierHistoryItemID, v0, v1);
    atomic_store(result, qword_1002E24F8);
  }

  return result;
}

uint64_t sub_1001EBA7C()
{
  _StringGuts.grow(_:)(56);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x8000000100249E00;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v2._object = 0x80000001002778D0;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_1001ECC0C();
  String.append(_:)(v3);

  v4._object = 0x8000000100276B00;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_1001EBB8C(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1001EBC20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1001EBD7C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v6 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1001EBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v55 = a2;
  sub_1000038DC();
  v56 = v4;
  __chkstk_darwin(v5);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v47 - v8;
  __chkstk_darwin(v9);
  v52 = &v47 - v10;
  __chkstk_darwin(v11);
  v48 = &v47 - v12;
  v53 = v13;
  v15 = type metadata accessor for PersistenceError(0, v14, v13, v13);
  sub_1000038DC();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000038DC();
  v49 = v25;
  v27 = __chkstk_darwin(v26);
  v29 = &v47 - v28;
  v31 = &v47 + *(v30 + 48) - v28;
  v32 = *(v17 + 16);
  v32(&v47 - v28, v54, v15, v27);
  (v32)(v31, v55, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v32)(v23, v29, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = v56;
      v44 = v48;
      (*(v56 + 32))(v48, v31, a3);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v43 + 8);
      v45(v44, a3);
      v45(v23, a3);
      goto LABEL_11;
    }

    (*(v56 + 8))(v23, a3);
    goto LABEL_8;
  }

  (v32)(v20, v29, v15);
  v33 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = *(v56 + 8);
    v42(&v20[v33], a3);
    v42(v20, a3);
LABEL_8:
    v41 = 0;
    v17 = v49;
    v15 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v34 = v56;
  v35 = *(v56 + 32);
  v35(v52, v31, a3);
  v35(v51, &v20[v33], a3);
  v35(v50, &v31[v33], a3);
  v36 = v52;
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v34 + 8);
  v38(v20, a3);
  if (v37)
  {
    v40 = v50;
    v39 = v51;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38(v40, a3);
    v38(v39, a3);
    v38(v36, a3);
  }

  else
  {
    v38(v50, a3);
    v38(v51, a3);
    v38(v36, a3);
    v41 = 0;
  }

LABEL_11:
  (*(v17 + 8))(v29, v15);
  return v41 & 1;
}

uint64_t sub_1001EC4BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EC4FC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001EC54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a1 == a5 && a2 == a6;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_8:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001EC5F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100099DF4(&qword_1002E2598, &qword_10024A0A8);
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_10000C4FC(a1, a1[3]);
  sub_1001ECD08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1001EC764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int sub_1001EC7E8()
{
  sub_10003821C();
  Hasher.init(_seed:)();
  if (v0)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EC870(void *a1)
{
  sub_100099DF4(&qword_1002E2588, &qword_10024A0A0);
  sub_100003724();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001ECD08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = sub_100002960();
    v7(v6);
  }

  sub_100004118(a1);
  return v4;
}

uint64_t sub_1001ECA30(uint64_t a1)
{
  v2 = sub_1001ECD08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ECA6C(uint64_t a1)
{
  v2 = sub_1001ECD08();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001ECAC0(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ECB48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001EC870(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1001ECBB8()
{
  result = qword_1002E2580;
  if (!qword_1002E2580)
  {
    result = swift_getWitnessTable(byte_100249FBC, &type metadata for PersistedIdentifierRecordID, v0, v1);
    atomic_store(result, &qword_1002E2580);
  }

  return result;
}

unint64_t sub_1001ECC0C()
{
  sub_10003821C();
  _StringGuts.grow(_:)(38);

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x617073656D616E20;
  v6._object = 0xEB000000003D6563;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000002FLL;
}

unint64_t sub_1001ECD08()
{
  result = qword_1002E2590;
  if (!qword_1002E2590)
  {
    result = swift_getWitnessTable(byte_10024A174, &type metadata for PersistedIdentifierRecordID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E2590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersistedIdentifierRecordID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001ECE3C()
{
  result = qword_1002E25A0;
  if (!qword_1002E25A0)
  {
    result = swift_getWitnessTable("\rh\a", &type metadata for PersistedIdentifierRecordID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E25A0);
  }

  return result;
}

unint64_t sub_1001ECE94()
{
  result = qword_1002E25A8;
  if (!qword_1002E25A8)
  {
    result = swift_getWitnessTable(byte_10024A0BC, &type metadata for PersistedIdentifierRecordID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E25A8);
  }

  return result;
}

unint64_t sub_1001ECEEC()
{
  result = qword_1002E25B0;
  if (!qword_1002E25B0)
  {
    result = swift_getWitnessTable(byte_10024A0E4, &type metadata for PersistedIdentifierRecordID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E25B0);
  }

  return result;
}

char *sub_1001ECF50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a8;
  v85 = a5;
  v97 = a4;
  v96 = a3;
  v83 = a1;
  v95 = type metadata accessor for Logger();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v80 - v15;
  v16 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v93 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v98 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v87 = &v80 - v19;
  v20 = type metadata accessor for PIDeviceKeypair(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v24 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  __chkstk_darwin(v24);
  v90 = &v80 - v25;
  v26 = type metadata accessor for PIAccountKeypair(0);
  __chkstk_darwin(v26 - 8);
  v91 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E6944();
  v29 = v28;
  v31 = v30;
  v89 = a2;
  sub_1001E6AA0();

  if (!v31)
  {
    v34 = 0xE300000000000000;
LABEL_10:
    v47 = v34;
    swift_bridgeObjectRetain_n();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v88 = a7;
      v101[0] = v51;
      *v50 = 136315394;
      *(v50 + 4) = sub_100009E5C(a6, v88, v101);
      *(v50 + 12) = 2080;
      if (v31)
      {
        v52 = v29;
      }

      else
      {
        v52 = 7104878;
      }

      v53 = sub_100009E5C(v52, v47, v101);

      *(v50 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v48, v49, "Persisted identifier record has account identifier that differs from personalized key's account identifier when creating mapping: keyAccountIdentifier=%s, recordAccountIdentifier=%s", v50, 0x16u);
      swift_arrayDestroy();
      a7 = v88;
    }

    v101[0] = a6;
    v101[1] = a7;
    v101[2] = v29;
    v101[3] = v31;
    v101[4] = 0;
    v101[5] = 0;
    v102 = 1;
    sub_1001FE928();
    result = swift_willThrowTypedImpl();
    *a10 = a6;
    *(a10 + 8) = a7;
    *(a10 + 16) = v29;
    *(a10 + 24) = v31;
    *(a10 + 40) = 0;
    *(a10 + 48) = 1;
    return result;
  }

  if (v29 != a6 || v31 != a7)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34 = v31;
    if ((v33 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v81 = a6;
  v88 = a7;

  v35 = v97;
  v36 = v85;
  sub_1001EDB2C(v91, v97, v85);
  v38 = v37;
  v39 = v86;
  v40 = sub_1001EE018(v22, v35, v36);
  v80 = a9;
  if (v39)
  {
    ErrorValue = swift_getErrorValue();
    v42 = v100;
    v43 = __chkstk_darwin(ErrorValue);
    v45 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v45, v43);
    sub_1001CBC4C(v45, v42, __src);

    memcpy(v90, __src, 0x60uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v55 = v40;
    sub_100039FFC();
    sub_100039FFC();
    swift_storeEnumTagMultiPayload();
    if (v38)
    {
    }

    else
    {
      v38 = v55;
    }
  }

  v56 = v96;
  v57 = v92;
  v58 = v87;
  if (v96)
  {
    if (v38)
    {
      v59 = v82;
      v60 = v97;
      (*(v92 + 16))(v82, v97, v95);
      swift_retain_n();

      sub_1001EE4B4(v38, v59, v99, v58);
      sub_1001DEAE0();
      v61 = v62;
      v63 = v62[2];
      v64 = v63 + 1;
      if (v63 >= v62[3] >> 1)
      {
LABEL_42:
        sub_1001DEAE0();
        v61 = v79;
      }

      v87 = v38;

      v61[2] = v64;
      sub_100039FFC();
    }

    else
    {
      v87 = 0;

      v61 = _swiftEmptyArrayStorage;
      v60 = v97;
    }

    v64 = sub_1000044BC(v56);
    v65 = 0;
    v92 = v56 & 0xC000000000000001;
    v38 = v56 & 0xFFFFFFFFFFFFFF8;
    v66 = (v57 + 16);
    while (v64 != v65)
    {
      if (v92)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v65 >= *(v38 + 16))
        {
          goto LABEL_41;
        }

        v56 = *(v56 + 8 * v65 + 32);
      }

      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v67 = v94;
      (*v66)(v94, v60, v95);

      sub_1001EE4B4(v68, v67, v99, v98);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DEAE0();
        v61 = v70;
      }

      v69 = v61[2];
      v57 = v69 + 1;
      if (v69 >= v61[3] >> 1)
      {
        sub_1001DEAE0();
        v61 = v71;
      }

      v61[2] = v57;
      sub_100039FFC();
      ++v65;
      v56 = v96;
      v60 = v97;
    }
  }

  else
  {
    v87 = v38;
    v61 = 0;
  }

  v72 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  v73 = v83;
  v74 = v90;
  sub_10003D1E4();
  v75 = v91;
  sub_100039EA8();
  v76 = *(v72 + 28);
  v77 = v88;

  v78 = v80;

  sub_1001EE9F4(v73 + v76);
  sub_1001E7374();
  sub_100004E24(v74, &unk_1002E2800, &qword_100245380);
  sub_100039FA4(v75, type metadata accessor for PIAccountKeypair);
  *v73 = v81;
  v73[1] = v77;
  v73[2] = v84;
  v73[3] = v78;
  *(v73 + *(v72 + 36)) = v61;
  return v87;
}

void sub_1001EDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  __chkstk_darwin(v5 - 8);
  v33 = v27 - v6;
  v7 = sub_100099DF4(&qword_1002E27B0, &qword_10024A370);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for P384.Signing.PrivateKey();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E6944();
  v14 = v13;
  sub_1001E6AA0();

  if (v14)
  {
    v32 = v12;
    v29 = v10;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = a1;
      v19 = v18;
      v34[0] = v18;
      *v17 = 136315138;
      sub_1001E6944();
      v31 = a3;
      v27[2] = v9;
      sub_1001E6AA0();
      v20 = sub_1001ECC0C();
      v27[1] = v7;
      v22 = v21;

      v23 = sub_100009E5C(v20, v22, v34);

      *(v17 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Loading existing account keypair", v17, 0xCu);
      sub_10003991C(v19);
      a1 = v28;
    }

    else
    {
    }

    sub_1001E6E58();
    v26 = v32;
    if (v25 >> 60 != 15)
    {
      v34[0] = v24;
      v34[1] = v25;
      P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
      (*(v30 + 32))(a1, v26, v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1001EE018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001E6944();
  v4 = sub_1001E6AA0();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v33 = v4;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136315138;

    v9 = sub_1001ECC0C();
    v10 = a2;
    v12 = v11;

    v13 = sub_100009E5C(v9, v12, &v39);
    a2 = v10;

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Loading existing device keypair", v7, 0xCu);
    sub_10003991C(v8);

    v4 = v33;
  }

  sub_1001E6EDC();
  if (v15 >> 60 == 15)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      v34 = a2;
      v20 = sub_1001ECC0C();
      v22 = v21;

      v23 = sub_100009E5C(v20, v22, &v39);

      *(v18 + 4) = v23;
      a2 = v34;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Existing device keypair data is missing, generating new device keypair", v18, 0xCu);
      sub_10003991C(v19);
    }

    else
    {
    }

    type metadata accessor for PIDeviceKeypair(0);
    v31 = sub_1001F0B08(a1, a2, a3);
    if (!v37)
    {
      return v31;
    }
  }

  else
  {
    v24 = v14;
    v25 = v15;

    sub_10000FF98(v24, v25);
    sub_1001BA128(v24, v25, a1);
    if (v37)
    {
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v35 = a2;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to initialize device keypair from previously persisted raw data when accessing persisted identifier record: %@. Generating a new keypair.", v28, 0xCu);
        sub_100004E24(v29, &qword_1002E2700, &unk_1002474D0);

        a2 = v35;
      }

      type metadata accessor for PIDeviceKeypair(0);
      v4 = sub_1001F0B08(a1, a2, a3);

      sub_10009A7A0(v24, v25);
    }

    else
    {
      sub_10009A7A0(v24, v25);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1001EE4B4@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v56 = a4;
  v7 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for PIAccountKeypair(0);
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  __chkstk_darwin(v13);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001EEDC0(v9);
  if (sub_100004DFC(v9, 1, v10) == 1)
  {
    sub_100004E24(v9, &qword_1002E27A8, &qword_10024A368);

    v65 = a2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v54 = v18;
      v56 = swift_slowAlloc();
      v57[0] = v56;
      *v18 = 136315138;
      sub_1001E46D8();
      v55 = v17;
      v20 = v19;
      v22 = v21;
      v23 = sub_1001E44DC(v19);
      v25 = v24;
      v26 = sub_1001E4880();
      v27 = sub_1001E48E4();
      v59 = v20;
      v60 = v22;
      v61 = v23;
      v62 = v25;
      v63 = v26;
      v64 = v27;
      v28 = sub_1001EBA7C();
      v30 = v29;

      v31 = sub_100009E5C(v28, v30, v57);

      v32 = v54;
      *(v54 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v16, v55, "Attempting to create a history item for a personalized mapping from a persisted history item that is missing an account keypair, persistedHistoryItem.id=%s", v32, 0xCu);
      sub_10003991C(v56);
    }

    else
    {
    }

    sub_1001E46D8();
    v44 = v43;
    v46 = v45;
    v47 = sub_1001E44DC(v43);
    v49 = v48;
    v50 = sub_1001E4880();
    v51 = sub_1001E48E4();
    v57[0] = v44;
    v57[1] = v46;
    v57[2] = v47;
    v57[3] = v49;
    v57[4] = v50;
    v57[5] = v51;
    v58 = 2;
    sub_1001FE928();
    swift_willThrowTypedImpl();

    v52 = type metadata accessor for Logger();
    result = (*(*(v52 - 8) + 8))(v65, v52);
    *a3 = v44;
    *(a3 + 8) = v46;
    *(a3 + 16) = v47;
    *(a3 + 24) = v49;
    *(a3 + 32) = v50;
    *(a3 + 40) = v51;
    *(a3 + 48) = 2;
  }

  else
  {
    sub_100039FFC();
    sub_100039EA8();
    sub_1001E46D8();

    sub_1001E44DC(v33);

    v34 = sub_1001E4880();
    v35 = sub_1001E48E4();
    *v15 = v34;
    v15[1] = v35;
    __chkstk_darwin(v35);
    *(&v54 - 2) = a1;
    *(&v54 - 1) = a2;
    sub_100038230(sub_100039F00, (&v54 - 4), &unk_1002E2800, &qword_100245380);
    v36 = sub_1001E4830();
    sub_1001E4A00(v36);
    sub_1001CCE80();
    v37 = v15 + *(v13 + 32);
    *v37 = v38;
    v37[8] = v39 & 1;
    v40 = sub_1001E4AD8();

    result = sub_100039FA4(v12, type metadata accessor for PIAccountKeypair);
    v42 = 0;
    switch(v40)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v42 = 1;
        goto LABEL_10;
      case 3:
        v42 = 2;
        goto LABEL_10;
      case 4:
        v42 = 3;
LABEL_10:
        *(v15 + *(v13 + 36)) = v42;
        sub_100039FFC();
        v53 = type metadata accessor for Logger();
        result = (*(*(v53 - 8) + 8))(a2, v53);
        break;
      default:
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_1001EE9F4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v3 - 8);
  v53 = type metadata accessor for Date();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v52 = type metadata accessor for UUID();
  v13 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E6F78(v16, v17, v18, v19, v20, v21, v22, v23, v41, v42, v43, v44, v45, v46, v47.i64[0], v47.i64[1], v48.i64[0], v48.i64[1]);
  sub_1001CCE80();
  v51 = v24;
  v50 = v25;
  result = sub_1001E7098(v24);
  v27 = 0;
  switch(result)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v27 = 1;
      goto LABEL_5;
    case 3:
      v27 = 2;
      goto LABEL_5;
    case 4:
      v27 = 3;
LABEL_5:
      v42 = sub_1001E6DFC();
      v41 = sub_1001E6E08();
      sub_1001E68AC();
      sub_1001E725C();
      sub_1001E6D10();
      sub_1001E7374();
      sub_1001E7340();
      sub_1001E7464(v54);
      v49 = v55 & 1;
      if (v55)
      {
        v28 = -1;
      }

      else
      {
        v28 = 0;
      }

      v29 = vdupq_n_s64(v28);
      v47 = vbicq_s8(v54[1], v29);
      v48 = vbicq_s8(v54[0], v29);
      v46 = sub_1001E7648();
      HIDWORD(v45) = v30;
      v44 = sub_1001E76B8();
      HIDWORD(v43) = v31;

      *a2 = v51;
      *(a2 + 8) = v50 & 1;
      *(a2 + 9) = v27;
      v32 = v41;
      *(a2 + 16) = v42;
      *(a2 + 24) = v32;
      v33 = type metadata accessor for PIPrivateIdentifierMetadata(0);
      (*(v13 + 32))(a2 + v33[7], v15, v52);
      v34 = *(v4 + 32);
      v35 = v12;
      v36 = v53;
      v34(a2 + v33[8], v35, v53);
      v34(a2 + v33[9], v9, v36);
      v34(a2 + v33[10], v6, v36);
      result = sub_100012D44();
      v37 = (a2 + v33[12]);
      v38 = v47;
      *v37 = v48;
      v37[1] = v38;
      v37[2].i8[0] = v49;
      v39 = a2 + v33[13];
      *v39 = v46;
      *(v39 + 8) = BYTE4(v45) & 1;
      v40 = a2 + v33[14];
      *v40 = v44;
      *(v40 + 8) = BYTE4(v43) & 1;
      break;
    default:
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1001EEDC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PIAccountKeypair(0);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for P384.Signing.PrivateKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  sub_1001E4948();
  if (v9 >> 60 == 15)
  {

    return sub_100002728(a1, 1, 1, v3);
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v15 = a1;
    v17 = v8;
    v18 = v9;
    sub_1001D035C(v8, v9);
    P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v13 = v15;
    (*(v5 + 32))(v15, v7, v4);
    sub_100002728(v13, 0, 1, v3);
    return sub_10009A7A0(v11, v12);
  }
}

SecAccessControlRef sub_1001EF0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v5 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  v10 = type metadata accessor for PIDeviceKeypair.SEP(0);
  __chkstk_darwin(v10 - 8);
  v40 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v48 = type metadata accessor for PIDeviceKeypair(0);
  __chkstk_darwin(v48);
  v39[1] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = v39 - v17;
  __chkstk_darwin(v18);
  v45 = v39 - v19;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v47 = v2;
  sub_1001E49A4();
  if (v24 >> 60 != 15)
  {
    v26 = v23;
    v27 = v24;
    sub_10000FF98(v23, v24);
    sub_1001BA128(v26, v27, a2);
    if (!v3)
    {
      return sub_10009A7A0(v26, v27);
    }

    v28 = v26;
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to initialize device keypair from previously persisted raw data when accessing persisted history item: %@. Generating a new keypair.", v31, 0xCu);
      sub_100004E24(v32, &qword_1002E2700, &unk_1002474D0);
    }

    if (static SecureEnclave.isAvailable.getter())
    {
      result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
      if (!result)
      {
        goto LABEL_20;
      }

      v34 = v43;
      SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
      (*(v41 + 32))(v40, v34, v42);
      sub_100039FFC();
      swift_storeEnumTagMultiPayload();
      sub_100039FFC();
    }

    else
    {
      P384.Signing.PrivateKey.init(compactRepresentable:)();
      swift_storeEnumTagMultiPayload();
    }

    sub_100039FFC();
    v37 = sub_1001BA3B8();
    sub_1001E49E0(v37, v38);
    sub_10009A7A0(v28, v27);

    return sub_100039FFC();
  }

  if (static SecureEnclave.isAvailable.getter())
  {
    result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
    if (result)
    {
      result = SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
      if (v3)
      {
        return result;
      }

      (*(v41 + 32))(v14, v9, v42);
      sub_100039FFC();
      swift_storeEnumTagMultiPayload();
      sub_100039FFC();
      goto LABEL_13;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  P384.Signing.PrivateKey.init(compactRepresentable:)();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  sub_100039FFC();
  v35 = sub_1001BA3B8();
  sub_1001E49E0(v35, v36);
  return sub_100039FFC();
}

uint64_t sub_1001EF6D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t **a8)
{
  v122 = a8;
  v104 = a6;
  v105 = a7;
  v111 = a5;
  v117 = a3;
  v118 = a4;
  v103 = a1;
  v116 = type metadata accessor for Logger();
  v109 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v99 - v11;
  v119 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v114 = *(v119 - 8);
  __chkstk_darwin(v119);
  v123 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v99 - v14);
  v16 = type metadata accessor for PIDeviceKeypair(0);
  __chkstk_darwin(v16 - 8);
  v110 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v19 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  __chkstk_darwin(v19);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v99 - v23;
  __chkstk_darwin(v25);
  v27 = &v99 - v26;
  sub_1001E6944();
  v121 = v28;
  v30 = v29;
  sub_1001E6AA0();

  if (v30)
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v124[0] = v34;
      *v33 = 136315138;
      v35 = v121;
      *(v33 + 4) = sub_100009E5C(v121, v30, v124);
      _os_log_impl(&_mh_execute_header, v31, v32, "Persisted identifier record unexpectedly has account identifier when creating mapping for unpersonalized key: %s", v33, 0xCu);
      sub_10003991C(v34);
    }

    else
    {

      v35 = v121;
    }

    v124[0] = v35;
    v124[1] = v30;
    sub_1001FE928();
    v125 = 0u;
    v126 = 0u;
    v127 = 0;
    swift_willThrowTypedImpl();
    v51 = v122;
    *v122 = v35;
    v51[1] = v30;
    *(v51 + 1) = 0u;
    *(v51 + 2) = 0u;
    *(v51 + 48) = 0;
    return v30;
  }

  v121 = v15;
  v112 = v24;
  v113 = v19;
  v107 = v21;
  v102 = v27;
  v36 = v118;
  v37 = v120;
  v38 = sub_1001EE018(v110, v118, v111);
  v101 = a2;
  if (!v37)
  {
    v100 = v38;
    v122 = 0;
    sub_100039FFC();
    sub_100039FFC();
    swift_storeEnumTagMultiPayload();
    v30 = v117;
    v45 = v107;
    if (!v117)
    {
      v121 = 0;
LABEL_40:
      v66 = v104;
      v65 = v105;
      v30 = v100;
      goto LABEL_41;
    }

    v52 = v100;
    if (v100)
    {
      v53 = v108;
      (*(v109 + 16))(v108, v36, v116);
      swift_retain_n();

      sub_1001E46D8();

      sub_1001E44DC(v54);

      v55 = sub_1001E4880();
      v56 = sub_1001E48E4();
      v57 = v121;
      *v121 = v55;
      v57[1] = v56;
      __chkstk_darwin(v56);
      *(&v99 - 2) = v52;
      *(&v99 - 1) = v53;
      v58 = v119;
      sub_100038230(sub_10003A3F4, (&v99 - 4), &unk_1002E2800, &qword_100245380);
      v59 = sub_1001E4830();
      sub_1001E4A00(v59);
      sub_1001CCE80();
      v60 = v57 + *(v58 + 28);
      *v60 = v61;
      v60[8] = v62 & 1;
      LOBYTE(v55) = sub_1001E4AD8();

      v64 = 0;
      switch(v55)
      {
        case 1:
          goto LABEL_18;
        case 2:
          v64 = 1;
          goto LABEL_18;
        case 3:
          v64 = 2;
          goto LABEL_18;
        case 4:
          v64 = 3;
LABEL_18:
          *(v57 + *(v58 + 32)) = v64;
          v49 = v116;
          (*(v109 + 8))(v108, v116);
          sub_1001DEBB8();
          v68 = v67[2];
          v69 = v67;
          v47 = v68 + 1;
          v50 = v115;
          if (v68 < v67[3] >> 1)
          {
            goto LABEL_19;
          }

          goto LABEL_45;
        default:
LABEL_47:
          __break(1u);
          return result;
      }
    }

LABEL_7:
    v46 = v119;
    v47 = v109;

    v100 = 0;
    v48 = _swiftEmptyArrayStorage;
    v50 = v115;
    v49 = v116;
    while (1)
    {
      v111 = sub_1000044BC(v30);
      if (!v111)
      {
        break;
      }

      v70 = 0;
      v106 = v30 & 0xFFFFFFFFFFFFFF8;
      v109 = v47 + 16;
      v110 = v30 & 0xC000000000000001;
      v108 = (v47 + 8);
      while (1)
      {
        if (v110)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v70 >= *(v106 + 16))
          {
            goto LABEL_44;
          }

          v47 = *(v30 + 8 * v70 + 32);
        }

        v30 = &qword_100245380;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        v120 = v70 + 1;
        v121 = v48;
        (*v109)(v50, v118, v49);

        sub_1001E46D8();

        sub_1001E44DC(v71);

        v72 = sub_1001E4880();
        v73 = sub_1001E48E4();
        v74 = v122;
        v75 = v123;
        *v123 = v72;
        v75[1] = v73;
        sub_1001EF0E0(v50, v45);
        if (v74)
        {
          ErrorValue = swift_getErrorValue();
          v77 = v128;
          v78 = __chkstk_darwin(ErrorValue);
          v80 = &v99 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v81 + 16))(v80, v78);
          v82 = v80;
          v46 = v119;
          v75 = v123;
          sub_1001CBC4C(v82, v77, __src);
          v45 = v107;

          memcpy(v112, __src, 0x60uLL);
          swift_storeEnumTagMultiPayload();
          v122 = 0;
        }

        else
        {
          v122 = 0;
          swift_storeEnumTagMultiPayload();
          sub_100012D44();
        }

        sub_100012D44();
        v83 = sub_1001E4830();
        v84 = sub_1001E4A00(v83);
        v85 = v75 + *(v46 + 28);
        *v85 = v84;
        v85[8] = v86 & 1;
        v87 = sub_1001E4AD8();

        v88 = 0;
        v50 = v115;
        v49 = v116;
        switch(v87)
        {
          case 1:
            break;
          case 2:
            v88 = 1;
            break;
          case 3:
            v88 = 2;
            break;
          case 4:
            v88 = 3;
            break;
          default:
            __break(1u);
            goto LABEL_47;
        }

        *(v123 + *(v46 + 32)) = v88;
        (*v108)(v50, v49);
        v89 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001DEBB8();
          v89 = v92;
        }

        v90 = v89[2];
        v91 = v89;
        if (v90 >= v89[3] >> 1)
        {
          sub_1001DEBB8();
          v91 = v93;
        }

        v91[2] = v90 + 1;
        v48 = v91;
        sub_100039FFC();
        ++v70;
        v46 = v119;
        v30 = v117;
        if (v120 == v111)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_1001DEBB8();
      v69 = v98;
LABEL_19:

      v69[2] = v47;
      v48 = v69;
      sub_100039FFC();
      v46 = v119;
      v47 = v109;
    }

LABEL_39:
    v121 = v48;

    goto LABEL_40;
  }

  v39 = swift_getErrorValue();
  v40 = v129;
  v41 = __chkstk_darwin(v39);
  v43 = &v99 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v43, v41);
  sub_1001CBC4C(v43, v40, v130);

  memcpy(v102, v130, 0x60uLL);
  swift_storeEnumTagMultiPayload();
  v30 = v117;
  v45 = v107;
  if (v117)
  {
    v122 = 0;
    goto LABEL_7;
  }

  v121 = 0;
  v122 = 0;
  v66 = v104;
  v65 = v105;
LABEL_41:
  v94 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  v95 = v102;
  v96 = v103;
  sub_10003D1E4();
  v97 = *(v94 + 24);

  sub_1001EE9F4(v96 + v97);
  sub_1001E7374();
  sub_100004E24(v95, &unk_1002E2800, &qword_100245380);
  *v96 = v66;
  v96[1] = v65;
  *(v96 + *(v94 + 32)) = v121;
  return v30;
}

uint64_t sub_1001F02C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  sub_1001E7374();
  sub_1000396D0(&qword_1002E27C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    v13 = *(v4 + 8);
    v13(a2, v3);
    v13(v12, v3);
    return 0;
  }

  else
  {
    v54 = _s29PrivateIdentifierHistoryModelCMa(0);
    sub_1001E6944();
    v16 = v15;
    v18 = v17;
    v19 = sub_1001E6AA0();
    v48 = v9;
    v20 = v19;
    v51 = a2;
    v22 = v21;
    v23 = sub_1001E6DFC();
    v47 = v6;
    v24 = v23;
    v25 = sub_1001E6E08();
    v55 = v16;
    v56 = v18;
    v57 = v20;
    v58 = v22;
    v59 = v24;
    v60 = v25;
    sub_1001E6E58();
    v52 = v27;
    v53 = v26;
    sub_1001E6EDC();
    v49 = v29;
    v50 = v28;
    v30 = *(v4 + 16);
    v31 = v48;
    v30(v48, v12, v3);
    v32 = v47;
    v33 = v51;
    v34 = (v30)(v47, v51, v3);
    v42 = sub_1001E6F78(v34, v35, v36, v37, v38, v39, v40, v41, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    LOBYTE(v30) = v43;
    v44 = sub_1001E7098(v42);
    v14 = sub_1001DCA60(&v55, v53, v52, v50, v49, v31, v32, v42, v30 & 1, v44);

    v45 = *(v4 + 8);
    v45(v33, v3);
    v45(v12, v3);
  }

  return v14;
}

SecAccessControlRef sub_1001F0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a2;
  v7 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PIDeviceKeypair.SEP(0);
  __chkstk_darwin(v9 - 8);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PIDeviceKeypair(0);
  __chkstk_darwin(v41);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v32 - v13;
  v14 = type metadata accessor for Date();
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v7;
    v20 = v19;
    v32 = swift_slowAlloc();
    v46 = v32;
    *v20 = 136315138;
    sub_1001E6944();
    v34 = a1;
    v35 = a3;
    sub_1001E6AA0();
    v21 = sub_1001ECC0C();
    v36 = v3;
    v23 = v22;

    v24 = sub_100009E5C(v21, v23, &v46);
    v4 = v36;

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: Generating new device keypair", v20, 0xCu);
    sub_10003991C(v32);

    v7 = v33;
  }

  else
  {
  }

  (*(v43 + 16))(v16, v45, v44);
  sub_1001E73E8();
  if ((static SecureEnclave.isAvailable.getter() & 1) == 0)
  {
    P384.Signing.PrivateKey.init(compactRepresentable:)();
    swift_storeEnumTagMultiPayload();
LABEL_12:
    sub_100039FFC();
    sub_1001BA3B8();
    return sub_1001E6F3C();
  }

  result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v26 = v40;
  SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
  if (!v4)
  {
    (*(v39 + 32))(v38, v26, v7);
    sub_100039FFC();
    swift_storeEnumTagMultiPayload();
    sub_100039FFC();
    goto LABEL_12;
  }

  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to generate device keypair: %@. Clearing device keypair data to try regenerating device keypair later.", v29, 0xCu);
    sub_100004E24(v30, &qword_1002E2700, &unk_1002474D0);
  }

  sub_1001E6F3C();
  return swift_willThrow();
}

uint64_t sub_1001F0B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v30 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v7;
    v14 = v13;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v14 = 136315138;
    sub_1001E6944();
    v27 = a3;
    v28 = v3;
    sub_1001E6AA0();
    v15 = sub_1001ECC0C();
    v25 = v8;
    v17 = v16;

    a3 = v27;

    v18 = v15;
    v4 = v28;
    v19 = sub_100009E5C(v18, v17, &v31);
    v8 = v25;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: Attempting to rotate device keypair", v14, 0xCu);
    sub_10003991C(v24);

    v7 = v26;
  }

  else
  {
  }

  (*(v8 + 16))(v10, a3, v7);

  v21 = sub_1001F02C0(v20, v10);
  sub_1001E6DFC();
  result = sub_1001E6E08();
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    sub_1001E6E14();
    sub_1001E6E34();
    sub_1001E7170(4);
    sub_1001F0580(v30, a3, v29);
    if (v4)
    {
    }

    return v21;
  }

  return result;
}

uint64_t sub_1001F0DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E27B8, &unk_10024A378);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v14 = 136315138;
    sub_1001E6944();
    v28 = a2;
    v26 = v7;
    sub_1001E6AA0();
    v15 = sub_1001ECC0C();
    v29 = v6;
    v17 = v16;

    v7 = v26;

    v18 = v15;
    a2 = v28;
    v19 = sub_100009E5C(v18, v17, &v30);
    v6 = v29;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: Attempting to rotate device keypair", v14, 0xCu);
    sub_10003991C(v25);

    a1 = v27;
  }

  else
  {
  }

  (*(v8 + 16))(v10, a2, v7);

  v21 = sub_1001F02C0(v20, v10);
  sub_1001E6DFC();
  result = sub_1001E6E08();
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    sub_1001E6E14();
    sub_1001E6E34();
    sub_1001E7170(4);
    sub_1001F0580(a1, a2, v6);
    v23 = type metadata accessor for PIDeviceKeypair(0);
    sub_100002728(v6, 0, 1, v23);
    sub_100004E24(v6, &qword_1002E27B8, &unk_10024A378);
    return v21;
  }

  return result;
}

unint64_t sub_1001F10D4(unint64_t a1, unint64_t a2)
{
  v4 = sub_1001E6DFC();
  result = sub_1001E6E08();
  v6 = result > a2;
  if (v4 != a1)
  {
    v6 = v4 > a1;
  }

  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1001E6E14();

    return sub_1001E6E34();
  }

  return result;
}

uint64_t sub_1001F1144(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2, v4);
  sub_1001E6DA8();
  (v7)(v6, a1, v2);
  sub_1001E72D0();
  (v7)(v6, a1, v2);
  return sub_1001E73E8();
}

uint64_t sub_1001F1254(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a7;
  v51 = a2;
  v52 = a6;
  v47 = a4;
  v48 = a5;
  v12 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_100099DF4(&qword_1002E27B8, &unk_10024A378);
  __chkstk_darwin(v15 - 8);
  v56 = &v45 - v16;
  v53 = type metadata accessor for Date();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v49 = a8;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57[0] = v21;
    *v20 = 136315138;
    sub_1001E6944();
    v46 = a3;
    sub_1001E6AA0();
    v22 = sub_1001ECC0C();
    v45 = a1;
    v23 = v14;
    v25 = v24;

    v26 = sub_100009E5C(v22, v25, v57);
    v14 = v23;
    a1 = v45;

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: Setting new account keypair", v20, 0xCu);
    sub_10003991C(v21);
  }

  else
  {
  }

  sub_1001E6944();
  v28 = v27;
  sub_1001E6AA0();

  v29 = type metadata accessor for PIAccountKeypair(0);
  result = sub_100004DFC(a1, 1, v29);
  v31 = v53;
  if (v28)
  {
    if (result != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (result != 1)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v32 = sub_1001E6DFC();
  v33 = sub_1001E6E08();
  v34 = v47;
  v35 = v33 < v48;
  if (v32 != v47)
  {
    v35 = v32 < v47;
  }

  if (v35)
  {
    v36 = v54;
    v37 = v48;
    (*(v55 + 16))(v54, a9, v31);

    v39 = sub_1001F02C0(v38, v36);
    sub_1001F10D4(v34, v37);
  }

  else
  {
    v39 = 0;
  }

  sub_1001F0580(v49, a9, v56);
  v40 = type metadata accessor for PIDeviceKeypair(0);
  v41 = v56;
  sub_100002728(v56, 0, 1, v40);
  sub_100004E24(v41, &qword_1002E27B8, &unk_10024A378);
  sub_10003D1E4();
  v42 = type metadata accessor for PIAccountKeypair(0);
  if (sub_100004DFC(v14, 1, v42) == 1)
  {
    sub_100004E24(v14, &qword_1002E27A8, &qword_10024A368);
  }

  else
  {
    P384.Signing.PrivateKey.rawRepresentation.getter();
    sub_100039FA4(v14, type metadata accessor for PIAccountKeypair);
  }

  sub_1001E6EB8();
  v43 = v54;
  v44 = *(v55 + 16);
  v44(v54, a9, v31);
  sub_1001E6DA8();
  sub_1001E7074();
  sub_1001E7170(v52);
  v44(v43, v50, v31);
  sub_1001E72D0();
  sub_1001E7464(v57);
  if ((v58 & 1) == 0)
  {
    sub_1001CE3D0(*v57, *&v57[1], *&v57[2], *&v57[3]);
  }

  sub_1001E767C();
  return v39;
}

uint64_t sub_1001F1778(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v8) = a2;
  v10 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  result = sub_1001E7098(v13);
  if (result)
  {
    __break(1u);
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v38 = a4;
      *&v39[0] = v19;
      v20 = v19;
      *v18 = 136315138;
      sub_1001E6944();
      v35 = v8;
      v34 = v12;
      sub_1001E6AA0();
      v8 = sub_1001ECC0C();
      v37 = a5;
      v22 = v21;

      v12 = v34;

      v23 = v8;
      LOBYTE(v8) = v35;
      v24 = sub_100009E5C(v23, v22, v39);
      a5 = v37;

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Initializing newly created record", v18, 0xCu);
      sub_10003991C(v20);
      a4 = v38;

      a1 = v36;
    }

    else
    {
    }

    if (*a3 != 3)
    {
      v25 = *(a3 + 40) & 1;
      if (v25)
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      v27 = vdupq_n_s64(v26);
      v28 = vbicq_s8(*(a3 + 24), v27);
      v39[0] = vbicq_s8(*(a3 + 8), v27);
      v39[1] = v28;
      v40 = v25;
      sub_1001E7584(v39);
      sub_1001E76C4();
    }

    sub_1001E6944();
    v30 = v29;
    sub_1001E6AA0();

    if (v30)
    {

      P384.Signing.PrivateKey.init(compactRepresentable:)();
      v31 = type metadata accessor for PIAccountKeypair(0);
      v32 = 0;
    }

    else
    {
      v31 = type metadata accessor for PIAccountKeypair(0);
      v32 = 1;
    }

    sub_100002728(v12, v32, 1, v31);
    sub_1001F1254(v12, a1, v8 & 1, 0, 0, 1, a5, a4, a5);

    return sub_100004E24(v12, &qword_1002E27A8, &qword_10024A368);
  }

  return result;
}

uint64_t sub_1001F1A88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  result = sub_1001E7098(v13);
  if (result)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = os_log_type_enabled(v15, v16);
    v37 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v33 = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v34 = v12;
      v21 = v20;
      v38 = v20;
      *v19 = 136315138;
      sub_1001E6944();
      v36 = a3;
      sub_1001E6AA0();
      v22 = sub_1001ECC0C();
      v35 = a4;
      v23 = a5;
      v25 = v24;

      a3 = v36;

      v26 = sub_100009E5C(v22, v25, &v38);
      a5 = v23;
      a4 = v35;

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Rotating both keypairs once", v19, 0xCu);
      sub_10003991C(v21);
      v12 = v34;

      a1 = v33;
    }

    else
    {
    }

    sub_1001E6944();
    v28 = v27;
    sub_1001E6AA0();

    if (v28)
    {

      P384.Signing.PrivateKey.init(compactRepresentable:)();
      v29 = type metadata accessor for PIAccountKeypair(0);
      v30 = 0;
    }

    else
    {
      v29 = type metadata accessor for PIAccountKeypair(0);
      v30 = 1;
    }

    sub_100002728(v12, v30, 1, v29);
    v31 = sub_1001E6DFC();
    result = sub_1001E6E08();
    if (v31 != -1)
    {
      v32 = sub_1001F1254(v12, a1, v37 & 1, v31 + 1, 0, 1, a4, a3, a4);
      sub_100099DF4(&qword_1002E27B0, &qword_10024A370);
      result = sub_100012D44();
      *a5 = v32;
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

void *sub_1001F1D78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v63 = a5;
  v75 = a4;
  v70 = a2;
  v71 = a1;
  v6 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  __chkstk_darwin(v6 - 8);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v69 = sub_100099DF4(&qword_1002E27B0, &qword_10024A370);
  __chkstk_darwin(v69);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = (&v59 - v14);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v65 = &v59 - v19;
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  __chkstk_darwin(v26);
  v28 = &v59 - v27;
  if (!sub_1001E7098(v29))
  {
    __break(1u);
LABEL_42:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_35:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v72 = v77;
LABEL_36:
    v54 = *v28;
    (*v28)(v25, v15);
    v54(v76, v15);
    if (v12)
    {
      sub_100004E24(v16, &qword_1002E27B0, &qword_10024A370);
    }

    else
    {
      v56 = v61;
      sub_10003D1E4();
      sub_100004E24(v16, &qword_1002E27B0, &qword_10024A370);
      v57 = type metadata accessor for PIAccountKeypair(0);
      sub_100004DFC(v56, 1, v57);
      sub_100004E24(v56, &qword_1002E27A8, &qword_10024A368);
    }

    return v72;
  }

  v30 = Logger.logObject.getter();
  LODWORD(v73) = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v30, v73);
  v76 = v28;
  v61 = v10;
  v74 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v80[0] = v72;
    *v32 = 136315394;
    v67 = v30;
    sub_1001E6944();
    v33 = v16;
    sub_1001E6AA0();
    v60 = sub_1001ECC0C();
    v35 = v34;

    v36 = sub_100009E5C(v60, v35, v80);
    v16 = v33;

    *(v32 + 4) = v36;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v63 & 1;
    v37 = v67;
    _os_log_impl(&_mh_execute_header, v67, v73, "%s: Populating history since last rotation according to current rotation schedule, performRotationNow=%{BOOL}d", v32, 0x12u);
    sub_10003991C(v72);
  }

  else
  {
  }

  v72 = _swiftEmptyArrayStorage;
  v77 = _swiftEmptyArrayStorage;
  sub_1001E7374();
  sub_1001E6D10();
  v38 = 0;
  v28 = (v16 + 1);
  v73 = (v16 + 4);
  v64 = v12;
  while (1)
  {
    sub_1001E76B8();
    if (v39)
    {
      v40.n128_f64[0] = sub_1001E7464(v80);
      if (v81)
      {
        goto LABEL_32;
      }

      sub_1001E7648();
      if (v41)
      {
        goto LABEL_32;
      }

      static Date.+ infix(_:_:)();
      v42 = 0;
    }

    else
    {
      sub_1001E7464(v78);
      if (v79 & 1) != 0 || (sub_1001E7648(), (v43))
      {
        static Date.+ infix(_:_:)();
        v42 = 1;
      }

      else
      {
        LODWORD(v67) = v38;
        v44 = v15;
        v45 = v65;
        static Date.+ infix(_:_:)();
        v46 = v66;
        static Date.+ infix(_:_:)();
        v47 = static Date.< infix(_:_:)();
        v48 = *v28;
        (*v28)(v46, v44);
        v49 = v45;
        v15 = v44;
        v48(v49, v44);
        static Date.+ infix(_:_:)();
        v42 = (v47 & 1) != 0;
        v12 = v64;
        v38 = v67;
      }
    }

    if (static Date.> infix(_:_:)())
    {
      break;
    }

    if (!v42)
    {
      sub_1001F1A88(v71, v70 & 1, v74, v22, v12);
      if (*v12)
      {
        swift_retain_n();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v72 = v77;
        (*v28)(v25, v15);

        if (v38)
        {
LABEL_24:
          sub_100004E24(v12, &qword_1002E27B0, &qword_10024A370);
          v38 = 1;
LABEL_29:
          v51 = v25;
          goto LABEL_30;
        }
      }

      else
      {
        (*v28)(v25, v15);
        if (v38)
        {
          goto LABEL_24;
        }
      }

      v52 = v68;
      sub_10003D1E4();
      sub_100004E24(v12, &qword_1002E27B0, &qword_10024A370);
      v53 = type metadata accessor for PIAccountKeypair(0);
      v38 = sub_100004DFC(v52, 1, v53) != 1;
      sub_100004E24(v52, &qword_1002E27A8, &qword_10024A368);
      goto LABEL_29;
    }

    if (sub_1001F0DAC(v74, v22))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = v76;
      v72 = v77;
      (*v28)(v76, v15);
    }

    else
    {
      v50 = v76;
      (*v28)(v76, v15);
    }

    v51 = v50;
LABEL_30:
    (*v73)(v51, v22, v15);
  }

  (*v28)(v22, v15);
LABEL_32:
  if (v63)
  {
    LOBYTE(v12) = v38;
    v16 = v62;
    sub_1001F1A88(v71, v70 & 1, v74, v75, v62);
    if (*v16)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v55 = *v28;
  (*v28)(v25, v15, v40);
  v55(v76, v15);
  return v72;
}

void *sub_1001F26E8(char a1, uint64_t a2, uint64_t a3)
{

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    sub_1001E6944();
    sub_1001E6AA0();
    v10 = sub_1001ECC0C();
    v16 = a1;
    v12 = v11;

    v13 = sub_100009E5C(v10, v12, &v17);
    a1 = v16;

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Rotating keypairs on demand", v8, 0xCu);
    sub_10003991C(v9);
  }

  else
  {
  }

  if (a1)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  return sub_1001F1D78(v14, 1, a2, a3, 1);
}

void *sub_1001F28A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_1001E6944();
    v19 = a4;
    sub_1001E6AA0();
    v12 = sub_1001ECC0C();
    v18 = a2;
    v14 = v13;

    v15 = v12;
    a4 = v19;
    v16 = sub_100009E5C(v15, v14, &v20);
    a2 = v18;

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: Rotating keypairs on schedule if needed", v10, 0xCu);
    sub_10003991C(v11);
  }

  else
  {
  }

  return sub_1001F1D78(a1, a2 & 1, a3, a4, 0);
}

void *sub_1001F2A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  result = sub_1001E7098(v7);
  if (result)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22 = a2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      sub_1001E6944();
      v21 = a1;
      sub_1001E6AA0();
      v14 = sub_1001ECC0C();
      v16 = v15;

      a1 = v21;

      v17 = sub_100009E5C(v14, v16, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: Preparing record for access", v12, 0xCu);
      sub_10003991C(v13);

      a2 = v22;
    }

    else
    {
    }

    v18 = sub_1001F28A4(1, 1, a1, a2);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 16))(v6, a2, v19);
    sub_100002728(v6, 0, 1, v19);
    sub_1001E6CF0();
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1001F2CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v24[0] = swift_slowAlloc();
    *v8 = 136315394;
    sub_1001E6944();
    v21 = a3;
    sub_1001E6AA0();
    v9 = sub_1001ECC0C();
    v11 = v10;

    v12 = sub_100009E5C(v9, v11, v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = PIScheduledRotationConfigurationUpdate.description.getter();
    v15 = sub_100009E5C(v13, v14, v24);

    *(v8 + 14) = v15;
    a3 = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Applying scheduled rotation configuration update %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  result = sub_1001E7098(v16);
  if (result)
  {
    v18 = *(a1 + 40);
    v19 = 0uLL;
    v20 = 0uLL;
    if ((v18 & 1) == 0)
    {
      v20 = *(a1 + 24);
      v19 = *(a1 + 8);
    }

    v24[0] = v19;
    v24[1] = v20;
    v25 = v18;
    sub_1001E7584(v24);
    sub_1001E7464(v22);
    if ((v23 & 1) == 0)
    {
      sub_1001CE3D0(v22[0], v22[1], v22[2], v22[3]);
    }

    sub_1001E767C();
    sub_1001E76C4();
    if (*a1)
    {
      if (*a1 == 1)
      {
        return sub_1001F28A4(2, 1, a2, a3);
      }

      else
      {
        sub_1001F1144(a3);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      return sub_1001F1D78(2, 1, a2, a3, 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F2F70(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_1000044BC(a3);
  v7 = result;
  for (i = 0; v7 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = v9;
    a1(&v10);

    if (v3)
    {
      return result;
    }
  }

  return result;
}

void sub_1001F3050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (sub_10003A5EC(v9))
  {
    v10 = sub_10003A5D4();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Handling incoming XPC request", v10, 2u);
    sub_1000327B4(v10);
  }

  if ((sub_1001F35F0(a3, a4) & 1) == 0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (sub_10003A5EC(v24))
    {
      *sub_10003A5D4() = 0;
      sub_10003A530();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_10003A540();
    }

    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
    goto LABEL_15;
  }

  v11 = sub_1001F3710(sub_1001F3648, 0, "PrivateIdentifiers/PIXPCServer.swift", 36, 2, 34);
  v12 = v11;
  if (v13)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_1001FE9B4(v12, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_10003A604();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      sub_1001FE9CC();
      swift_allocError();
      *v18 = v12;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      sub_10003A654(&_mh_execute_header, v20, v21, "Private Identifiers not available due to error: %@, rejecting XPC request");
      sub_100004E24(v17, &qword_1002E2700, &unk_1002474D0);
      sub_1000327B4(v17);
      sub_10003A514();
    }

    _StringGuts.grow(_:)(37);
    v22._object = 0x8000000100277BB0;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    _print_unlocked<A, B>(_:_:)();
    sub_10003A634();

    sub_1001FE9B4(v12, 1);
LABEL_15:
    sub_1000027F8();
    return;
  }

  if (v11)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (sub_10003A5EC(v31))
    {
      v32 = sub_10003A5D4();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Sync engine has previously been created, accepting XPC request", v32, 2u);
      sub_1000327B4(v32);
    }

    __chkstk_darwin(v33);
    type metadata accessor for XPCServer.PeerHandler(0);
    sub_1000396D0(&qword_1002E2828, type metadata accessor for XPCServer.PeerHandler, "!i\a");
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
    sub_1001FE9B4(v12, 0);
    sub_1001FE9B4(v12, 0);
    goto LABEL_15;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (sub_10003A5EC(v35))
  {
    *sub_10003A5D4() = 0;
    sub_10003A530();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    sub_10003A540();
  }

  dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  sub_1000027F8();

  sub_1001FE9B4(v41, v42);
}

uint64_t sub_1001F35F0(uint64_t a1, uint64_t a2)
{
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_1001F3648@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_1000396D0(&qword_1002E2818, type metadata accessor for XPCServer.SyncEngineOwner, "\ti\a");
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1001F3FE4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1001F3710(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if (swift_task_isCurrentExecutor())
  {
    a6 = swift_allocObject();
    *(a6 + 16) = a1;
    *(a6 + 24) = a2;
    v14 = sub_1001FE3C8(sub_10003A1B8, a6, v6);
    a4 = v15;
    a5 = v7;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      if (!isEscapingClosureAtFileLocation)
      {
        return v14;
      }

      __break(1u);
    }

    else if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v14;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(66);
  v17._object = 0x8000000100277A60;
  v17._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v17);
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, isEscapingClosureAtFileLocation, a4, a5, a6);
  __break(1u);
  return result;
}

uint64_t sub_1001F38C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1001F73B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  a3 = swift_allocObject();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  sub_1001FE468(sub_1000397A8, a3, v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v14._object = 0x8000000100277A60;
    v14._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, a3, a4, a5, a6);
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  a3 = swift_allocObject();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  sub_1001FE4FC(sub_100039980, a3, v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v14._object = 0x8000000100277A60;
    v14._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, a3, a4, a5, a6);
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F3C5C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  dispatch thunk of XPCSession.setTargetQueue(_:)();
  v7 = *(type metadata accessor for XPCServer.PeerHandler(0) + 20);
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 16))(&a4[v7], a3, v8);
  *a4 = a2;
}

void sub_1001F3D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v12 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  *(v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask) = 0;
  v15 = v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v6 + 16) = a1;
  v16 = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_logger;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = v6 + v16;
  v20 = a2;
  (*(v18 + 16))(v19, a2, v17);
  v21 = (v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_syncEngineCreator);
  *v22 = v27;
  v22[1] = a6;
  v23 = type metadata accessor for TaskPriority();
  sub_100002728(v14, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v6;
  v25 = a1;

  sub_10013ABD4(0, 0, v14, &unk_10024A3C8, v24);

  (*(v18 + 8))(v20, v17);
  sub_1000027F8();
}

uint64_t sub_1001F3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_1000396D0(&qword_1002E2818, type metadata accessor for XPCServer.SyncEngineOwner, "\ti\a");
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000385E4);
}

uint64_t sub_1001F3FE4()
{
  v1 = v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult;
  if (*(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult + 8) == 1)
  {
    sub_1001F4048();
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *v1;
  sub_1001FE9C0(*v1, v2);
  return v3;
}

void sub_1001F4048()
{
  v1 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask;
  if (!*(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask))
  {
    v5 = os_transaction_create();
    v6 = type metadata accessor for TaskPriority();
    sub_100002728(v3, 1, 1, v6);
    sub_10003A4E4();
    v9 = sub_1000396D0(v7, v8, "\ti\a");
    v10 = swift_allocObject();
    v10[2] = v0;
    v10[3] = v9;
    v10[4] = v0;
    v10[5] = v5;
    swift_retain_n();
    *(v0 + v4) = sub_10013ABD4(0, 0, v3, &unk_10024A3B8, v10);
  }
}

uint64_t sub_1001F418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10003863C;

  return sub_1001F4220();
}

uint64_t sub_1001F4220()
{
  sub_100004194();
  v1[2] = v0;
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_10003A4E4();
  sub_1000396D0(v2, v3, "\ti\a");
  v1[3] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v4;

  return _swift_task_switch(sub_100038820);
}

uint64_t sub_1001F42C4()
{
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_logger;
  type metadata accessor for Logger();
  sub_10000307C();
  (*(v2 + 8))(v0 + v1);

  sub_1001FE9B4(*(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult), *(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult + 8));
  return v0;
}

uint64_t sub_1001F4374()
{
  sub_1001F42C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001F43F4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F44B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F4508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1001F455C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_OWORD *sub_1001F4590@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for PIXPCMessage(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099DF4(&qword_1002E2720, &unk_10024A310);
  sub_1000326A8(&qword_1002E2728, &qword_1002E2720, &unk_10024A310, byte_10024AC98);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100039EA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = *(v9 + 1);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v27 = &v9[*(sub_100099DF4(&qword_1002E2730, &qword_100246D10) + 64)];
      *&v48[9] = *(v27 + 41);
      v28 = *(v27 + 1);
      v46 = *v27;
      v47 = v28;
      *v48 = *(v27 + 2);
      v29 = sub_100012D44();
      __chkstk_darwin(v29);
      *(&v37 - 6) = a1;
      *(&v37 - 5) = v12;
      *(&v37 - 4) = v11;
      *(&v37 - 3) = v6;
      *(&v37 - 2) = &v46;
      v30 = sub_100099DF4(&qword_1002E2738, &unk_10024A320);
      v31 = v43;
      v43[3] = v30;
      v31[4] = sub_1000326A8(&unk_1002E2740, &qword_1002E2738, &unk_10024A320, protocol conformance descriptor for PICodableResult<A>);
      sub_100007914(v31);
      sub_100038230(sub_100039860, (&v37 - 4), &qword_1002E2738, &unk_10024A320);

      v20 = v6;
      return sub_100004E24(v20, &qword_1002DA970, &qword_1002318B0);
    case 2:
      sub_1001F61D0(*v9, *(v9 + 1), *(v9 + 2), *(v9 + 3), v9[32]);
      if (v2)
      {

        ErrorValue = swift_getErrorValue();
        v22 = v44;
LABEL_9:
        v23 = __chkstk_darwin(ErrorValue);
        v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v25, v23);
        sub_1001CBC4C(v25, v22, &v46);
        v41 = v47;
        v42 = v46;
        v39 = *&v48[16];
        v40 = *v48;
        v37 = v50;
        v38 = v49;
      }

      else
      {

LABEL_13:

        v42 = 0u;
        v41 = 0u;
        v40 = 0u;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
      }

      v33 = v43;
      v43[3] = &type metadata for PIVoidCodableResult;
      v33[4] = sub_1001FE6B8();
      result = swift_allocObject();
      *v33 = result;
      v34 = v41;
      result[1] = v42;
      result[2] = v34;
      v35 = v39;
      result[3] = v40;
      result[4] = v35;
      v36 = v37;
      result[5] = v38;
      result[6] = v36;
      return result;
    case 3:
      sub_1001F6730(*v9, *(v9 + 1), v9[16]);
      if (!v2)
      {
        goto LABEL_13;
      }

      ErrorValue = swift_getErrorValue();
      v22 = v45;
      goto LABEL_9;
    default:
      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      v15 = &v9[*(sub_100099DF4(&qword_1002E0FF8, &qword_100246D18) + 64)];
      *&v48[9] = *(v15 + 41);
      v16 = *(v15 + 1);
      v46 = *v15;
      v47 = v16;
      *v48 = *(v15 + 2);
      v17 = sub_100012D44();
      *&v42 = &v37;
      __chkstk_darwin(v17);
      *(&v37 - 8) = a1;
      *(&v37 - 7) = v12;
      *(&v37 - 6) = v11;
      *(&v37 - 5) = v14;
      *(&v37 - 4) = v13;
      *(&v37 - 3) = v6;
      *(&v37 - 2) = &v46;
      v18 = sub_100099DF4(&qword_1002E2750, &unk_10024A330);
      v19 = v43;
      v43[3] = v18;
      v19[4] = sub_1000326A8(&qword_1002E2758, &qword_1002E2750, &unk_10024A330, protocol conformance descriptor for PICodableResult<A>);
      sub_100007914(v19);
      sub_100038230(sub_100039890, (&v37 - 5), &qword_1002E2750, &unk_10024A330);

      v20 = v6;
      return sub_100004E24(v20, &qword_1002DA970, &qword_1002318B0);
  }
}

uint64_t sub_1001F4BFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v101 = a5;
  v90 = a7;
  v13 = a6[1];
  v112 = *a6;
  v113 = v13;
  *v114 = a6[2];
  v115 = a6;
  *&v114[9] = *(a6 + 41);
  v98 = type metadata accessor for Date();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v77 - v16;
  v17 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v17 - 8);
  v84 = (&v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v95 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v83 = &v77 - v26;
  v28 = __chkstk_darwin(v27);
  v30 = &v77 - v29;
  v100 = a1;
  v103[0] = a1;
  v103[1] = a2;
  v99 = a3;
  v103[2] = a3;
  v103[3] = a4;
  v93 = v8;
  v31 = *(v23 + 16);
  v87 = *(v8 + 24);
  v85 = qword_100310708;
  v88 = v23 + 16;
  v86 = v31;
  (v31)(&v77 - v29, v87 + qword_100310708, v22, v28);
  sub_10003D1E4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v23;
  v94 = a2;
  v91 = a4;
  if (v34)
  {
    v79 = v32;
    v80 = v30;
    v81 = v22;
    v35 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v102 = v78;
    *v35 = 136315650;
    v36 = PIPersonalizedPrivateIdentifierMapping.Key.description.getter(v100, a2, v99, a4);
    v38 = v37;

    v39 = sub_100009E5C(v36, v38, &v102);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = v84;
    sub_10003D1E4();
    v41 = v98;
    if (sub_100004DFC(v40, 1, v98) == 1)
    {
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v47 = v96;
      v48 = v82;
      (*(v96 + 32))(v82, v40, v41);
      v43 = Date.description.getter();
      v42 = v49;
      (*(v47 + 8))(v48, v41);
    }

    v50 = v80;
    sub_100004E24(v21, &qword_1002DA970, &qword_1002318B0);
    v51 = sub_100009E5C(v43, v42, &v102);

    *(v35 + 14) = v51;
    *(v35 + 22) = 2080;
    v46 = v99;
    if (*v115 == 3)
    {
      v54 = 0xE300000000000000;
      v44 = v93;
      v45 = v92;
      v52 = 7104878;
    }

    else
    {
      v109 = v112;
      v110 = v113;
      *v111 = *v114;
      *&v111[9] = *&v114[9];
      v52 = PIScheduledRotationConfigurationUpdate.description.getter();
      v54 = v53;
      v44 = v93;
      v45 = v92;
    }

    v55 = sub_100009E5C(v52, v54, &v102);

    *(v35 + 24) = v55;
    v56 = v79;
    _os_log_impl(&_mh_execute_header, v79, v33, "Incoming query: key=%s, earliestHistoryDate=%s, rotationConfigurationUpdate=%s)", v35, 0x20u);
    swift_arrayDestroy();

    v22 = v81;
    v84 = *(v97 + 8);
    v84(v50, v81);
  }

  else
  {

    sub_100004E24(v21, &qword_1002DA970, &qword_1002318B0);
    v84 = *(v23 + 8);
    v84(v30, v22);
    v44 = v93;
    v45 = v92;
    v46 = v99;
  }

  v57 = static Date.now.getter();
  if (*v115 == 3)
  {
    v58 = v94;
    v59 = v91;
    v60 = v89;
  }

  else
  {
    v104 = *v115;
    v105 = *(v115 + 8);
    v106 = *(v115 + 24);
    v107 = *(v115 + 40);
    v108 = *(v115 + 56);
    __chkstk_darwin(v57);
    *(&v77 - 8) = v44;
    *(&v77 - 7) = &v104;
    v58 = v94;
    *(&v77 - 6) = v100;
    *(&v77 - 5) = v58;
    v59 = v91;
    *(&v77 - 4) = v46;
    *(&v77 - 3) = v59;
    *(&v77 - 2) = v45;
    v60 = v89;
    v57 = sub_1001F7C68(sub_100039904, (&v77 - 10));
    if (v60)
    {
      v86(v83, v87 + v85, v22);
      swift_errorRetain();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = v59;
        v65 = v22;
        v66 = swift_slowAlloc();
        *v63 = 138412290;
        swift_errorRetain();
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v67;
        *v66 = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to apply rotation configuration update: %@", v63, 0xCu);
        sub_100004E24(v66, &qword_1002E2700, &unk_1002474D0);
        v22 = v65;
        v59 = v64;
        v58 = v94;
      }

      else
      {
      }

      v57 = (v84)(v83, v22);
      v60 = 0;
      v46 = v99;
    }
  }

  __chkstk_darwin(v57);
  *(&v77 - 10) = v68;
  *(&v77 - 9) = v58;
  *(&v77 - 8) = v46;
  *(&v77 - 7) = v59;
  *(&v77 - 6) = v44;
  *(&v77 - 5) = v103;
  *(&v77 - 4) = v101;
  *(&v77 - 3) = v45;
  *(&v77 - 2) = v69;
  sub_1001F7CC4(sub_1000398E0, (&v77 - 12));
  if (v60)
  {

    v86(v95, v87 + v85, v22);
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v22;
      v74 = swift_slowAlloc();
      *v72 = 138412290;
      swift_errorRetain();
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&_mh_execute_header, v70, v71, "Query failed: %@", v72, 0xCu);
      sub_100004E24(v74, &qword_1002E2700, &unk_1002474D0);
      v22 = v73;
    }

    v84(v95, v22);
    swift_willThrow();
  }

  else
  {
  }

  sub_1001FDAA4(v45);
  return (*(v96 + 8))(v45, v98);
}

uint64_t sub_1001F5740@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a5;
  v8 = a4[1];
  v101 = *a4;
  v102 = v8;
  *v103 = a4[2];
  v82 = a4;
  *&v103[9] = *(a4 + 41);
  v90 = type metadata accessor for Date();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v70 - v11;
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v85 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v75 = &v70 - v22;
  v24 = __chkstk_darwin(v23);
  v26 = &v70 - v25;
  v27 = a1;
  v92[0] = a1;
  v28 = v104;
  v92[1] = a2;
  v29 = *(v19 + 16);
  v79 = *(v104 + 24);
  v77 = qword_100310708;
  v80 = v19 + 16;
  v78 = v29;
  (v29)(&v70 - v25, v79 + qword_100310708, v18, v24);
  v83 = a3;
  sub_10003D1E4();

  v30 = Logger.logObject.getter();
  LODWORD(v76) = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v30, v76);
  v88 = v19;
  v86 = a2;
  if (v31)
  {
    v72 = v30;
    v73 = v18;
    v32 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v91 = v71;
    *v32 = 136315650;
    v33 = v27;
    v34 = PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(v27, a2);
    v36 = v35;

    v37 = sub_100009E5C(v34, v36, &v91);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    sub_10003D1E4();
    v38 = v90;
    if (sub_100004DFC(v14, 1, v90) == 1)
    {
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      v43 = v87;
      v44 = v74;
      (*(v87 + 32))(v74, v14, v38);
      v40 = Date.description.getter();
      v39 = v45;
      (*(v43 + 8))(v44, v38);
    }

    v18 = v73;
    v42 = v82;
    sub_100004E24(v17, &qword_1002DA970, &qword_1002318B0);
    v46 = sub_100009E5C(v40, v39, &v91);

    *(v32 + 14) = v46;
    *(v32 + 22) = 2080;
    v47 = v88;
    if (*v42 == 3)
    {
      v50 = 0xE300000000000000;
      v41 = v89;
      v48 = 7104878;
    }

    else
    {
      v98 = v101;
      v99 = v102;
      *v100 = *v103;
      *&v100[9] = *&v103[9];
      v48 = PIScheduledRotationConfigurationUpdate.description.getter();
      v50 = v49;
      v41 = v89;
    }

    v51 = sub_100009E5C(v48, v50, &v91);

    *(v32 + 24) = v51;
    v52 = v72;
    _os_log_impl(&_mh_execute_header, v72, v76, "Incoming query: key=%s, earliestHistoryDate=%s, rotationConfigurationUpdate=%s)", v32, 0x20u);
    swift_arrayDestroy();

    v76 = *(v47 + 8);
    v76(v26, v18);
    v28 = v104;
  }

  else
  {

    sub_100004E24(v17, &qword_1002DA970, &qword_1002318B0);
    v76 = *(v19 + 8);
    v76(v26, v18);
    v41 = v89;
    v42 = v82;
    v33 = v27;
  }

  v53 = static Date.now.getter();
  if (*v42 == 3)
  {
    v54 = v86;
    v55 = v81;
  }

  else
  {
    v93 = *v42;
    v94 = *(v42 + 8);
    v95 = *(v42 + 24);
    v96 = *(v42 + 40);
    v97 = *(v42 + 56);
    __chkstk_darwin(v53);
    *(&v70 - 8) = v28;
    *(&v70 - 7) = &v93;
    *(&v70 - 6) = 0;
    *(&v70 - 5) = 0;
    v54 = v86;
    *(&v70 - 4) = v33;
    *(&v70 - 3) = v54;
    *(&v70 - 2) = v41;
    v55 = v81;
    v53 = sub_1001F7C68(sub_10003A424, (&v70 - 10));
    if (v55)
    {
      v104 = v33;
      v78(v75, v79 + v77, v18);
      swift_errorRetain();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = v18;
        v60 = swift_slowAlloc();
        *v58 = 138412290;
        swift_errorRetain();
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v60 = v61;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to apply rotation configuration update: %@", v58, 0xCu);
        sub_100004E24(v60, &qword_1002E2700, &unk_1002474D0);
        v18 = v59;
        v54 = v86;
      }

      else
      {
      }

      v53 = (v76)(v75, v18);
      v55 = 0;
      v33 = v104;
    }
  }

  __chkstk_darwin(v53);
  *(&v70 - 10) = 0;
  *(&v70 - 9) = 0;
  *(&v70 - 8) = v33;
  *(&v70 - 7) = v54;
  *(&v70 - 6) = v28;
  *(&v70 - 5) = v92;
  *(&v70 - 4) = v83;
  *(&v70 - 3) = v41;
  *(&v70 - 2) = v42;
  sub_1001F7D50(sub_100039F28, (&v70 - 12));
  v62 = v85;
  if (v55)
  {
    v78(v85, v79 + v77, v18);
    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v18;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v68;
      *v67 = v68;
      _os_log_impl(&_mh_execute_header, v63, v64, "Query failed: %@", v66, 0xCu);
      sub_100004E24(v67, &qword_1002E2700, &unk_1002474D0);
      v41 = v89;

      v18 = v65;
    }

    v76(v62, v18);
    swift_willThrow();
  }

  sub_1001FDAA4(v41);
  return (*(v87 + 8))(v41, v90);
}

uint64_t sub_1001F61D0(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v6 = v5;
  v57 = a5;
  v11 = type metadata accessor for Date();
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  __chkstk_darwin(v13);
  v61 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v49 - v17;
  v63[0] = a1;
  v63[1] = a2;
  v63[2] = a3;
  v63[3] = a4;
  v19 = *(v6 + 24);
  v56 = v20;
  v21 = *(v20 + 16);
  v53 = v20 + 16;
  v54 = v19;
  v51 = qword_100310708;
  v52 = v21;
  v62 = v22;
  (v21)(&v49 - v17, v19 + qword_100310708, v16);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v55 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v50 = v6;
    v64 = v27;
    *v26 = 136315394;
    v28 = PIPersonalizedPrivateIdentifierMapping.Key.description.getter(a1, a2, a3, a4);
    v30 = v29;

    v31 = sub_100009E5C(v28, v30, &v64);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = v57;
    if (v57)
    {
      v33 = 0xD000000000000014;
    }

    else
    {
      v33 = 0xD000000000000015;
    }

    if (v57)
    {
      v34 = "<NonSEP privateKey=";
    }

    else
    {
      v34 = "programmaticRotation";
    }

    v35 = sub_100009E5C(v33, v34 | 0x8000000000000000, &v64);

    *(v26 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v23, v24, "Incoming on-demand rotation: key=%s, reason=%s", v26, 0x16u);
    swift_arrayDestroy();
    v6 = v50;

    v11 = v55;

    v36 = *(v56 + 8);
    v37 = v62;
    v36(v18, v62);
    v38 = v32;
  }

  else
  {

    v36 = *(v56 + 8);
    v37 = v62;
    v36(v18, v62);
    v38 = v57;
  }

  v39 = v59;
  v40 = static Date.now.getter();
  __chkstk_darwin(v40);
  *(&v49 - 4) = v63;
  *(&v49 - 24) = v38 & 1;
  *(&v49 - 2) = v6;
  *(&v49 - 1) = v39;
  v41 = v58;
  sub_1001F7C68(sub_10003A054, (&v49 - 6));
  if (v41)
  {
    v52(v61, v54 + v51, v37);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v55 = v11;
      v45 = v44;
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "On-demand rotation failed: %@", v45, 0xCu);
      sub_100004E24(v46, &qword_1002E2700, &unk_1002474D0);

      v11 = v55;
      v37 = v62;
    }

    v36(v61, v37);
    swift_willThrow();
  }

  sub_1001FDAA4(v39);
  return (*(v60 + 8))(v39, v11);
}

uint64_t sub_1001F6730(uint64_t a1, void *a2, int a3)
{
  v48 = a3;
  v51 = type metadata accessor for Date();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v55[0] = a1;
  v55[1] = a2;
  v50 = v3;
  v15 = *(v3 + 24);
  v16 = *(v9 + 16);
  v46 = v9 + 16;
  v47 = v15;
  v44 = qword_100310708;
  v45 = v16;
  (v16)(&v43 - v13, v15 + qword_100310708, v8, v12);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v52 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(a1, a2);
    v43 = v6;
    v23 = v22;

    v24 = sub_100009E5C(v21, v23, &v56);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = v48;
    if (v48)
    {
      v26 = 0xD000000000000014;
    }

    else
    {
      v26 = 0xD000000000000015;
    }

    if (v48)
    {
      v27 = "<NonSEP privateKey=";
    }

    else
    {
      v27 = "programmaticRotation";
    }

    v28 = sub_100009E5C(v26, v27 | 0x8000000000000000, &v56);

    *(v20 + 14) = v28;
    v6 = v43;
    _os_log_impl(&_mh_execute_header, v17, v18, "Incoming on-demand rotation: key=%s, reason=%s", v20, 0x16u);
    swift_arrayDestroy();

    v29 = *(v52 + 8);
    v29(v14, v8);
    v30 = v8;
    v31 = v25;
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v14, v8);
    v30 = v8;
    v31 = v48;
  }

  v32 = v54;
  v33 = static Date.now.getter();
  __chkstk_darwin(v33);
  *(&v43 - 4) = v55;
  *(&v43 - 24) = v31 & 1;
  v34 = v49;
  *(&v43 - 2) = v50;
  *(&v43 - 1) = v32;
  sub_1001F7C68(sub_10003A094, (&v43 - 6));
  if (v34)
  {
    v45(v53, v47 + v44, v30);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v30;
      v39 = v6;
      v40 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "On-demand rotation failed: %@", v37, 0xCu);
      sub_100004E24(v40, &qword_1002E2700, &unk_1002474D0);
      v6 = v39;
      v30 = v38;

      v32 = v54;
    }

    v29(v53, v30);
    swift_willThrow();
  }

  sub_1001FDAA4(v32);
  return (*(v6 + 8))(v32, v51);
}

uint64_t sub_1001F6C50@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PIXPCMessage(0);
  sub_10000307C();
  __chkstk_darwin(v2);
  sub_10000306C();
  v5 = v4 - v3;
  sub_1000396D0(&qword_1002E2708, type metadata accessor for PIXPCMessage, byte_100246D60);
  v6 = XPCReceivedMessage.decode<A>(as:)();
  __chkstk_darwin(v6);
  *(&v11 - 2) = v5;
  sub_1001F38C8(sub_10003977C, (&v11 - 2), "PrivateIdentifiers/PIXPCServer.swift", 36, 2u, 128);
  v11 = v13;
  v7 = v13;
  v8 = sub_10000C4FC(__src, v13);
  *(a1 + 24) = v11;
  v9 = sub_100007914(a1);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  sub_100039FA4(v5, type metadata accessor for PIXPCMessage);
  return sub_10003991C(__src);
}

void sub_1001F6FA4(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  sub_1000038DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  type metadata accessor for XPCServer.PeerHandler(0);
  v9 = *(v4 + 16);
  v9(v8, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (sub_10003A5EC(v11))
  {
    v12 = sub_10003A604();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    sub_1000396D0(&qword_1002E26F8, &type metadata accessor for XPCRichError, &protocol conformance descriptor for XPCRichError);
    swift_allocError();
    v9(v14, v8, v2);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    (*(v4 + 8))(v8, v2);
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received cancellation from XPC peer: %@", v12, 0xCu);
    sub_100004E24(v13, &qword_1002E2700, &unk_1002474D0);
    sub_10003A514();
    sub_1000327B4(v12);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  sub_1000027F8();
}

void sub_1001F71D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = String._bridgeToObjectiveC()();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    if (v9)
    {

      if (swift_dynamicCast())
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      *a5 = v10;
    }

    else
    {
      v11 = *token.val;
      if (*token.val)
      {
        type metadata accessor for CFError(0);
        sub_1000396D0(&qword_1002E2840, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        swift_allocError();
        *v12 = v11;
      }

      else
      {
        sub_1001FEA74();
        swift_allocError();
      }

      swift_willThrow();
    }
  }

  else
  {
    sub_1001FEA20();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1001F73B4()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();

  return v2;
}

uint64_t sub_1001F7400(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v83 = a3;
  v84 = a4;
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v7 - 8);
  v81 = &v67 - v8;
  v74 = type metadata accessor for UUID();
  v69 = *(v74 - 8);
  __chkstk_darwin(v74);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100099DF4(&unk_1002E2780, &unk_10024A350);
  v80 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v67 - v15);
  __chkstk_darwin(v17);
  v19 = (&v67 - v18);
  v20 = a2[3];
  v21 = a2[4];
  sub_10000C4FC(a2, v20);
  v86 = a1;
  v87 = v79;
  v88 = v82;
  v22 = v90;
  result = (*(v21 + 120))(v83, v84, sub_1000399A8, v85, v11, v20, v21);
  if (v22)
  {
    return v19;
  }

  v78 = v19;
  v79 = a2;
  v68 = 0;
  v83 = v16;
  v71 = v13;
  v75 = v11;
  v70 = v10;
  v84 = *(result + 16);
  v67 = result;
  if (!v84)
  {
    v25 = _swiftEmptyArrayStorage;
    v47 = v80;
    v48 = v81;
LABEL_36:
    v19 = &v67;
    __chkstk_darwin(result);
    *(&v67 - 2) = v49;
    v50 = v68;
    sub_1001F2F70(sub_10003A4B4, (&v67 - 4), v25);
    if (v50)
    {
    }

    else
    {
      v68 = 0;

      if (v84)
      {
        v51 = v67 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v90 = (v69 + 32);
        v19 = _swiftEmptyArrayStorage;
        v52 = *(v47 + 72);
        v53 = &unk_1002E2780;
        v54 = &unk_10024A350;
        v55 = &qword_1002E12C8;
        do
        {
          sub_10003D1E4();
          sub_100012D44();

          sub_100012D44();
          v56 = v55;
          v57 = v74;
          if (sub_100004DFC(v48, 1, v74) == 1)
          {
            sub_100004E24(v48, v56, &qword_100248D50);
            v55 = v56;
          }

          else
          {
            v58 = v54;
            v59 = v53;
            v60 = v52;
            v61 = v56;
            v62 = *v90;
            (*v90)(v70, v48, v57);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1001DED68();
              v19 = v65;
            }

            v63 = v19[2];
            v64 = v69;
            if (v63 >= v19[3] >> 1)
            {
              sub_1001DED68();
              v64 = v69;
              v19 = v66;
            }

            v19[2] = v63 + 1;
            v62(v19 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63);
            v48 = v81;
            v55 = v61;
            v52 = v60;
            v53 = v59;
            v54 = v58;
          }

          v51 += v52;
          --v84;
        }

        while (v84);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }
    }

    return v19;
  }

  v24 = 0;
  v77 = result + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v25 = _swiftEmptyArrayStorage;
  v76 = *(v80 + 72);
  v26 = v75;
  while (1)
  {
    sub_10003D1E4();
    v27 = v83;
    sub_100012D44();
    v28 = *v27;
    sub_100004E24(v27 + *(v26 + 48), &qword_1002E12C8, &qword_100248D50);
    v29 = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v25 >> 62;
    result = v25 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = result + v29;
    if (__OFADD__(result, v29))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v30)
      {
        v32 = v25 & 0xFFFFFFFFFFFFFF8;
        if (v31 <= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v30)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v25 = result;
    v32 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v90 = v25;
    v33 = *(v32 + 16);
    v34 = (*(v32 + 24) >> 1) - v33;
    v35 = v32 + 8 * v33;
    v82 = v32;
    if (v28 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (v37)
      {
        v38 = v37;
        result = _CocoaArrayWrapper.endIndex.getter();
        if (v34 < result)
        {
          goto LABEL_55;
        }

        if (v38 < 1)
        {
          goto LABEL_57;
        }

        v36 = result;
        v72 = v29;
        v73 = v24;
        v39 = v35 + 32;
        sub_1000326A8(&qword_1002E2790, &qword_1002E17B8, &qword_100247878, &protocol conformance descriptor for [A]);
        for (i = 0; i != v38; ++i)
        {
          sub_100099DF4(&qword_1002E17B8, &qword_100247878);
          v41 = sub_1001FE718(v89, i, v28);
          v43 = *v42;

          (v41)(v89, 0);
          *(v39 + 8 * i) = v43;
        }

        v26 = v75;
        v24 = v73;
        v29 = v72;
        goto LABEL_26;
      }
    }

    else
    {
      v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        if (v34 < v36)
        {
          goto LABEL_56;
        }

        _s29PrivateIdentifierHistoryModelCMa(0);
        swift_arrayInitWithCopy();
LABEL_26:

        v25 = v90;
        if (v36 < v29)
        {
          goto LABEL_53;
        }

        if (v36 > 0)
        {
          v44 = *(v82 + 16);
          v45 = __OFADD__(v44, v36);
          v46 = v44 + v36;
          if (v45)
          {
            goto LABEL_54;
          }

          *(v82 + 16) = v46;
        }

        goto LABEL_31;
      }
    }

    v25 = v90;
    if (v29 > 0)
    {
      goto LABEL_53;
    }

LABEL_31:
    ++v24;
    v47 = v80;
    v48 = v81;
    if (v24 == v84)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1001F7C68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[2] = a1;
  return sub_1001F3A90(sub_100039964, v3, "PrivateIdentifiers/PISyncEngine.swift", 37, 2u, 244);
}

uint64_t sub_1001F7CC4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v4 = a1;
  return sub_100038420(sub_100039E50, v3, "PrivateIdentifiers/PISyncEngine.swift", 37, 2u, 244, &unk_1002C0D98, sub_100039E80, sub_1001FE590);
}

uint64_t sub_1001F7D50(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v4 = a1;
  return sub_100038420(sub_100039F74, v3, "PrivateIdentifiers/PISyncEngine.swift", 37, 2u, 244, &unk_1002C0DE8, sub_10003A46C, sub_1001FE624);
}

uint64_t sub_1001F7DDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12, uint64_t a13)
{
  v21 = a1[3];
  v20 = a1[4];
  sub_10000C4FC(a1, v21);
  v22 = (*(v20 + 64))(a2, a3, a4, a5, v21, v20);
  if (!v14)
  {
    if (v22)
    {
      sub_1001F8034(v22, a7, a8, a9, a10, a11, a1, a12, x8_0);
    }

    else
    {
      sub_1001FA01C(a2, a3, a4, a5, a7, a8, a9, a10, x8_0, a11, a13, a1, a12);
    }
  }

  return sub_10003991C(a1);
}

uint64_t sub_1001F7F10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = a1[3];
  v18 = a1[4];
  sub_10000C4FC(a1, v19);
  v20 = (*(v18 + 64))(a2, a3, a4, a5, v19, v18);
  if (!v12)
  {
    if (v20)
    {
      sub_1001F9040(v20, a7, a8, a9, a1, a10, x8_0);
    }

    else
    {
      sub_1001FAF3C(a2, a3, a4, a5, a7, a8, a9, a11, x8_0, a1, a10);
    }
  }

  return sub_10003991C(a1);
}

uint64_t sub_1001F8034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v151 = a8;
  v150 = a7;
  v143 = a6;
  v137 = a5;
  v140 = a4;
  v139 = a3;
  v138 = a2;
  v134 = a9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  __chkstk_darwin(v15 - 8);
  v136 = (&v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v17 - 8);
  v142 = &v128 - v18;
  v144 = type metadata accessor for Date();
  v148 = *(v144 - 8);
  __chkstk_darwin(v144);
  v135 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v129 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v149 = &v128 - v24;
  __chkstk_darwin(v25);
  v146 = &v128 - v26;
  __chkstk_darwin(v27);
  v145 = &v128 - v28;
  v30 = __chkstk_darwin(v29);
  v32 = &v128 - v31;
  v128 = v9;
  v33 = *(v21 + 16);
  v152 = *(v9 + 24);
  *&v156 = qword_100310708;
  v158 = v34;
  *&v155 = v21 + 16;
  v153 = v33;
  (v33)(&v128 - v31, v152 + qword_100310708, v30);
  swift_retain_n();
  v35 = Logger.logObject.getter();
  LODWORD(v157) = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v35, v157);
  v131 = v11;
  v133 = v12;
  v130 = v14;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v164 = v154;
    *v37 = 136315394;
    sub_1001E6944();
    sub_1001E6AA0();
    v38 = sub_1001ECC0C();
    v40 = v39;

    v41 = sub_100009E5C(v38, v40, &v164);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    sub_1001E9F28();
    v43 = v42;
    v45 = v44;

    v46 = sub_100009E5C(v43, v45, &v164);

    *(v37 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v157, "Loaded existing persisted record for persistedRecordID=%s: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v47 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v157 = *(v21 + 8);
  v157(v32, v158);
  v48 = v152;
  v49 = v156;
  v50 = v145;
  v51 = v158;
  v52 = v153;
  v153(v145, v152 + v156, v158);
  v154 = sub_1001F2A60(v50, v151);
  v132 = v53;
  v157(v50, v51);
  v54 = v146;
  v52(v146, v48 + v49, v51);
  v55 = v54;

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  v58 = os_log_type_enabled(v56, v57);
  v59 = a1;
  v141 = v47;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v164 = v61;
    *v60 = 136315138;
    sub_1001E9F28();
    v63 = v62;
    v64 = v55;
    v66 = v65;

    v67 = sub_100009E5C(v63, v66, &v164);

    *(v60 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v56, v57, "Prepared existing persisted record for access: %s", v60, 0xCu);
    sub_10003991C(v61);

    v68 = (v157)(v64, v158);
  }

  else
  {

    v68 = (v157)(v54, v158);
  }

  v69 = v150;
  v70 = v148;
  __chkstk_darwin(v68);
  v127 = v69;
  v71 = v154;

  v72 = v147;
  sub_1001F2F70(sub_10003A49C, (&v128 - 4), v71);
  v73 = v156;
  v74 = v149;
  if (v72)
  {
    return swift_bridgeObjectRelease_n();
  }

  v148 = 0;

  v76 = v142;
  sub_10003D1E4();
  v77 = v144;
  if (sub_100004DFC(v76, 1, v144) == 1)
  {
    sub_100004E24(v76, &qword_1002DA970, &qword_1002318B0);
    v78 = 0;
    v79 = v148;
  }

  else
  {
    v80 = v135;
    (*(v70 + 32))(v135, v76, v77);
    v81 = v69[3];
    v82 = v69[4];
    v147 = sub_10000C4FC(v69, v81);
    v83 = v70;
    v84 = v59;
    sub_1001E6944();
    v86 = v85;
    v88 = v87;
    v146 = v84;
    v89 = sub_1001E6AA0();
    v90 = v148;
    v92 = (*(v82 + 136))(v86, v88, v89, v91, v80, v81, v82);
    v79 = v90;
    if (v90)
    {
      (*(v83 + 8))(v80, v144);
    }

    v78 = v92;
    (*(v83 + 8))(v80, v144);

    v59 = v146;
    v69 = v150;
    v73 = v156;
    v74 = v149;
  }

  v93 = v152;
  v153(v74, v152 + v73, v158);
  v94 = sub_1001ECF50(v136, v59, v78, v74, v151, v138, v139, v140, v137, v160);
  v95 = v74;
  if (v79)
  {
    v96 = v161;
    v97 = v162;
    v98 = v163;
    v156 = v160[0];
    v155 = v160[1];
    v157(v95, v158);

    sub_1001FE928();
    result = swift_allocError();
    v99 = v155;
    *v100 = v156;
    *(v100 + 16) = v99;
    *(v100 + 32) = v96;
    *(v100 + 40) = v97;
    *(v100 + 48) = v98;
  }

  else
  {
    v101 = v94;
    v157(v95, v158);

    sub_100039FFC();
    if (v101)
    {
      v102 = v69;
      v103 = v69[3];
      v104 = v69[4];
      sub_10000C4FC(v102, v103);
      v105 = *(v104 + 144);

      v105(v106, &v159, v103, v104);

      v93 = v152;
      v73 = v156;
    }

    else
    {
    }

    if (v132)
    {
      v107 = v73;
      CKSyncEngine.state.getter();
      v108 = v130;
      sub_1001E68AC();
      v109 = *(v93 + 56);
      sub_10020A1EC(v108, v109);

      v110 = v133 + 8;
      *&v156 = *(v133 + 8);
      (v156)(v108, v131);
      v111 = v93 + v107;
      v112 = v129;
      v153(v129, v111, v158);
      swift_retain_n();
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *&v155 = swift_slowAlloc();
        v164 = v155;
        *v115 = 136315394;
        LODWORD(v154) = v114;
        sub_1001E6944();
        v133 = v110;
        sub_1001E6AA0();
        v116 = sub_1001ECC0C();
        v118 = v117;

        v119 = sub_100009E5C(v116, v118, &v164);

        *(v115 + 4) = v119;
        *(v115 + 12) = 2080;
        v120 = v130;
        sub_1001E68AC();

        sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v121 = v131;
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;

        (v156)(v120, v121);
        v125 = sub_100009E5C(v122, v124, &v164);

        *(v115 + 14) = v125;
        _os_log_impl(&_mh_execute_header, v113, v154, "Scheduled existing persisted record with persistedRecordID=%s uuid=%s for sending to cloud.", v115, 0x16u);
        swift_arrayDestroy();

        v126 = v129;
      }

      else
      {

        v126 = v112;
      }

      return (v157)(v126, v158);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001F9040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v146 = a6;
  v145 = a5;
  v138 = a4;
  v135 = a3;
  v134 = a2;
  v131 = a7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  __chkstk_darwin(v13 - 8);
  v133 = (&v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v15 - 8);
  v137 = &v125 - v16;
  v139 = type metadata accessor for Date();
  v143 = *(v139 - 8);
  __chkstk_darwin(v139);
  v132 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v126 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v144 = &v125 - v22;
  __chkstk_darwin(v23);
  v141 = &v125 - v24;
  __chkstk_darwin(v25);
  v140 = &v125 - v26;
  v28 = __chkstk_darwin(v27);
  v30 = &v125 - v29;
  v125 = v7;
  v31 = *(v19 + 16);
  v147 = *(v7 + 24);
  *&v151 = qword_100310708;
  v153 = v32;
  *&v150 = v19 + 16;
  v148 = v31;
  (v31)(&v125 - v29, v147 + qword_100310708, v28);
  swift_retain_n();
  v33 = Logger.logObject.getter();
  LODWORD(v152) = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v33, v152);
  v128 = v9;
  v130 = v10;
  v127 = v12;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v159 = v149;
    *v35 = 136315394;
    sub_1001E6944();
    sub_1001E6AA0();
    v36 = sub_1001ECC0C();
    v38 = v37;

    v39 = sub_100009E5C(v36, v38, &v159);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    sub_1001E9F28();
    v41 = v40;
    v43 = v42;

    v44 = sub_100009E5C(v41, v43, &v159);

    *(v35 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v33, v152, "Loaded existing persisted record for persistedRecordID=%s: %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v152 = *(v19 + 8);
  v152(v30, v153);
  v46 = v147;
  v47 = v151;
  v48 = v140;
  v49 = v153;
  v50 = v148;
  v148(v140, v147 + v151, v153);
  v149 = sub_1001F2A60(v48, v146);
  v129 = v51;
  v152(v48, v49);
  v52 = v141;
  v50(v141, v46 + v47, v49);
  v53 = v52;

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = a1;
  v136 = v45;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v159 = v59;
    *v58 = 136315138;
    sub_1001E9F28();
    v61 = v60;
    v62 = v53;
    v64 = v63;

    v65 = sub_100009E5C(v61, v64, &v159);

    *(v58 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v54, v55, "Prepared existing persisted record for access: %s", v58, 0xCu);
    sub_10003991C(v59);

    v66 = (v152)(v62, v153);
  }

  else
  {

    v66 = (v152)(v52, v153);
  }

  v67 = v145;
  v68 = v143;
  __chkstk_darwin(v66);
  *(&v125 - 2) = v67;
  v69 = v149;

  v70 = v142;
  sub_1001F2F70(sub_10003A4CC, (&v125 - 4), v69);
  v71 = v151;
  v72 = v144;
  if (v70)
  {
    return swift_bridgeObjectRelease_n();
  }

  v143 = 0;

  v74 = v137;
  sub_10003D1E4();
  v75 = v139;
  if (sub_100004DFC(v74, 1, v139) == 1)
  {
    sub_100004E24(v74, &qword_1002DA970, &qword_1002318B0);
    v76 = 0;
    v77 = v143;
  }

  else
  {
    v78 = v132;
    (*(v68 + 32))(v132, v74, v75);
    v79 = v67[3];
    v80 = v67[4];
    v142 = sub_10000C4FC(v67, v79);
    v81 = v68;
    v82 = v57;
    sub_1001E6944();
    v84 = v83;
    v86 = v85;
    v141 = v82;
    v87 = sub_1001E6AA0();
    v88 = v143;
    v90 = (*(v80 + 136))(v84, v86, v87, v89, v78, v79, v80);
    v77 = v88;
    if (v88)
    {
      (*(v81 + 8))(v78, v139);
    }

    v76 = v90;
    (*(v81 + 8))(v78, v139);

    v57 = v141;
    v67 = v145;
    v71 = v151;
    v72 = v144;
  }

  v91 = v147;
  v148(v72, v147 + v71, v153);
  v92 = sub_1001EF6D8(v133, v57, v76, v72, v146, v134, v135, v155);
  v93 = v72;
  if (v77)
  {
    v94 = v156;
    v95 = v157;
    v96 = v158;
    v151 = v155[0];
    v150 = v155[1];
    v152(v93, v153);

    sub_1001FE928();
    result = swift_allocError();
    v97 = v150;
    *v98 = v151;
    *(v98 + 16) = v97;
    *(v98 + 32) = v94;
    *(v98 + 40) = v95;
    *(v98 + 48) = v96;
  }

  else
  {
    v99 = v92;
    v152(v93, v153);

    sub_100039FFC();
    if (v99)
    {
      v100 = v67;
      v101 = v67[3];
      v102 = v67[4];
      sub_10000C4FC(v100, v101);
      v103 = *(v102 + 144);

      v103(v104, &v154, v101, v102);

      v91 = v147;
      v71 = v151;
    }

    else
    {
    }

    if (v129)
    {
      v105 = v71;
      CKSyncEngine.state.getter();
      v106 = v127;
      sub_1001E68AC();
      v107 = *(v91 + 56);
      sub_10020A1EC(v106, v107);

      v108 = v130 + 8;
      *&v151 = *(v130 + 8);
      (v151)(v106, v128);
      v109 = v91 + v105;
      v110 = v126;
      v148(v126, v109, v153);
      swift_retain_n();
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *&v150 = swift_slowAlloc();
        v159 = v150;
        *v113 = 136315394;
        LODWORD(v149) = v112;
        sub_1001E6944();
        v130 = v108;
        sub_1001E6AA0();
        v114 = sub_1001ECC0C();
        v116 = v115;

        v117 = sub_100009E5C(v114, v116, &v159);

        *(v113 + 4) = v117;
        *(v113 + 12) = 2080;
        v118 = v127;
        sub_1001E68AC();

        sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v119 = v128;
        v120 = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v121;

        (v151)(v118, v119);
        v123 = sub_100009E5C(v120, v122, &v159);

        *(v113 + 14) = v123;
        _os_log_impl(&_mh_execute_header, v111, v149, "Scheduled existing persisted record with persistedRecordID=%s uuid=%s for sending to cloud.", v113, 0x16u);
        swift_arrayDestroy();

        v124 = v126;
      }

      else
      {

        v124 = v110;
      }

      return (v152)(v124, v153);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001FA01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, NSObject *a10, uint64_t a11, void *a12, uint64_t a13)
{
  v154 = a8;
  v157 = a7;
  v156 = a6;
  v155 = a5;
  *&v168 = a3;
  *&v167 = a1;
  v149 = a9;
  *&v169 = a13;
  v163 = a12;
  v146 = type metadata accessor for UUID();
  v150 = *(v146 - 8);
  __chkstk_darwin(v146);
  v17 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  __chkstk_darwin(v18 - 8);
  v153 = (&v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v20 - 8);
  v151 = &v143 - v21;
  v22 = type metadata accessor for Logger();
  __chkstk_darwin(v22);
  v24 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v152 = &v143 - v26;
  __chkstk_darwin(v27);
  v159 = &v143 - v28;
  __chkstk_darwin(v29);
  v158 = &v143 - v30;
  __chkstk_darwin(v31);
  v160 = &v143 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v143 - v35;
  v144 = v13;
  v37 = *(v13 + 24);
  v38 = qword_100310708;
  v162 = v39;
  v40 = *(v39 + 16);
  v166 = v39 + 16;
  v161 = v37;
  *&v171 = v41;
  v165 = v40;
  (v40)(&v143 - v35, v37 + qword_100310708, v34);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  *&v170 = a4;
  v44 = a2;

  v45 = os_log_type_enabled(v42, v43);
  v148 = v24;
  v145 = v17;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = v38;
    v48 = v44;
    v49 = swift_slowAlloc();
    v178 = v49;
    *v46 = 136315138;
    v50 = sub_1001ECC0C();
    v52 = sub_100009E5C(v50, v51, &v178);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v42, v43, "Will create and insert new persisted record for persistedRecordID=%s", v46, 0xCu);
    sub_10003991C(v49);
    v44 = v48;
    v53 = v171;
    v38 = v47;

    v54 = v162;
    v55 = *(v162 + 8);
    v55(v36, v53);
  }

  else
  {

    v54 = v162;
    v55 = *(v162 + 8);
    v55(v36, v171);
  }

  v56 = v54;
  v57 = v163[3];
  v58 = v163[4];
  sub_10000C4FC(v163, v57);
  v59 = v169;
  v60 = v164;
  *&v170 = (*(v58 + 72))(v167, v44, v168, v170, v169, v176, v57, v58);
  if (v60)
  {
    LOBYTE(v178) = v177;
    sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
    sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8, byte_100249F30);
    v171 = v176[0];
    v169 = v176[1];
    v170 = v176[2];
    v168 = v176[3];
    result = swift_allocError();
    v62 = v169;
    *v63 = v171;
    *(v63 + 16) = v62;
    v64 = v168;
    *(v63 + 32) = v170;
    *(v63 + 48) = v64;
    *(v63 + 64) = v178;
    return result;
  }

  *&v167 = 0;
  *&v168 = a11;
  v164 = a10;
  v65 = v161;
  v66 = v55;
  v67 = v160;
  v68 = v171;
  v69 = v165;
  v165(v160, v161 + v38, v171);
  sub_1001F1778(0, 1, v168, v67, v59);
  v70 = v67;
  v71 = v66;
  *&v168 = v56 + 8;
  v66(v70, v68);
  v147 = v38;
  v72 = v65;
  v73 = v158;
  v69(v158, v65 + v38, v68);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v178 = v77;
    *v76 = 136315138;
    sub_1001E9F28();
    v79 = v78;
    v81 = v80;

    v82 = sub_100009E5C(v79, v81, &v178);
    v83 = v171;
    v84 = v71;

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v74, v75, "Initialized new persisted record: %s", v76, 0xCu);
    sub_10003991C(v77);
    v85 = v169;

    v72 = v161;

    v71(v158, v83);
    v86 = v159;
  }

  else
  {

    v71(v73, v171);
    v86 = v159;
    v84 = v71;
    v85 = v169;
  }

  v87 = v147;
  v88 = v160;
  v89 = v171;
  v90 = v165;
  v165(v160, v72 + v147, v171);
  sub_1001F2A60(v88, v85);

  v84(v88, v89);
  v90(v86, v72 + v87, v89);

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v178 = v94;
    *v93 = 136315138;
    sub_1001E9F28();
    v96 = v95;
    v98 = v97;

    v99 = sub_100009E5C(v96, v98, &v178);
    v100 = v171;

    *(v93 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v91, v92, "Prepared newly inserted record for access: %s", v93, 0xCu);
    sub_10003991C(v94);

    v101 = v161;

    v102 = v100;
    v103 = v84;
    v84(v159, v102);
    v104 = v153;
    v105 = v152;
  }

  else
  {

    v84(v86, v171);
    v104 = v153;
    v105 = v152;
    v101 = v72;
    v103 = v84;
  }

  v106 = v151;
  sub_10003D1E4();
  v107 = type metadata accessor for Date();
  v108 = sub_100004DFC(v106, 1, v107);
  v109 = 0;
  v110 = v165;
  if (v108 != 1)
  {
    sub_100004E24(v106, &qword_1002DA970, &qword_1002318B0);
    v109 = _swiftEmptyArrayStorage;
  }

  v111 = v147;
  v110(v105, v101 + v147, v171);
  v112 = v167;
  sub_1001ECF50(v104, v170, v109, v105, v169, v155, v156, v157, v154, v172);
  if (v112)
  {
    v113 = v173;
    v114 = v174;
    v115 = v175;
    v169 = v172[0];
    v167 = v172[1];
    v103(v105, v171);

    sub_1001FE928();
    swift_allocError();
    v116 = v167;
    *v117 = v169;
    *(v117 + 16) = v116;
    *(v117 + 32) = v113;
    *(v117 + 40) = v114;
    *(v117 + 48) = v115;
  }

  v103(v105, v171);
  sub_100039FFC();
  sub_1001E6944();
  v119 = v118;
  sub_1001E6AA0();

  if (!v119)
  {
  }

  *&v169 = v103;

  CKSyncEngine.state.getter();
  v120 = v145;
  sub_1001E68AC();
  v121 = v161;
  v122 = *(v161 + 56);
  sub_10020A1EC(v120, v122);

  v123 = v150 + 8;
  v124 = v146;
  *&v167 = *(v150 + 8);
  (v167)(v120, v146);
  v125 = v121 + v111;
  v126 = v148;
  v110(v148, v125, v171);
  swift_retain_n();
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    LODWORD(v165) = v128;
    v130 = v129;
    v166 = swift_slowAlloc();
    v178 = v166;
    *v130 = 136315394;
    v164 = v127;
    sub_1001E6944();
    v131 = v124;
    v150 = v123;
    sub_1001E6AA0();
    v132 = sub_1001ECC0C();
    v133 = v120;
    v135 = v134;

    v136 = sub_100009E5C(v132, v135, &v178);

    *(v130 + 4) = v136;
    *(v130 + 12) = 2080;
    sub_1001E68AC();

    sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v137 = dispatch thunk of CustomStringConvertible.description.getter();
    v139 = v138;

    (v167)(v133, v131);
    v140 = sub_100009E5C(v137, v139, &v178);

    *(v130 + 14) = v140;
    v141 = v164;
    _os_log_impl(&_mh_execute_header, v164, v165, "Scheduled newly inserted record with persistedRecordID=%s uuid=%s for sending to cloud.", v130, 0x16u);
    swift_arrayDestroy();

    v142 = v148;
  }

  else
  {

    v142 = v126;
  }

  return (v169)(v142, v171);
}

uint64_t sub_1001FAF3C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v137 = a8;
  v141 = a7;
  v144 = a6;
  v143 = a5;
  *&v158 = a3;
  *&v155 = a1;
  v135 = a9;
  *&v157 = a11;
  v148 = a10;
  v134 = type metadata accessor for UUID();
  v136 = *(v134 - 8);
  __chkstk_darwin(v134);
  v15 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  __chkstk_darwin(v16 - 8);
  v142 = (&v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v18 - 8);
  v139 = &v131 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v140 = &v131 - v25;
  __chkstk_darwin(v26);
  v138 = &v131 - v27;
  __chkstk_darwin(v28);
  v145 = &v131 - v29;
  __chkstk_darwin(v30);
  v147 = &v131 - v31;
  v33 = __chkstk_darwin(v32);
  v35 = &v131 - v34;
  v131 = v11;
  v36 = *(v11 + 24);
  v152 = qword_100310708;
  v37 = *(v21 + 16);
  v150 = v36;
  *&v159 = v38;
  v153 = v21 + 16;
  v151 = v37;
  (v37)(&v131 - v34, v36 + qword_100310708, v33);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  *&v156 = a4;

  v154 = a2;

  v41 = os_log_type_enabled(v39, v40);
  v133 = v23;
  v132 = v15;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v166 = v43;
    *v42 = 136315138;
    v44 = sub_1001ECC0C();
    v46 = sub_100009E5C(v44, v45, &v166);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Will create and insert new persisted record for persistedRecordID=%s", v42, 0xCu);
    sub_10003991C(v43);
  }

  v47 = *(v21 + 8);
  v47(v35, v159);
  v48 = v148[3];
  v49 = v148[4];
  sub_10000C4FC(v148, v48);
  v50 = v157;
  v51 = v149;
  *&v158 = (*(v49 + 72))(v155, v154, v158, v156, v157, v164, v48, v49);
  if (v51)
  {
    LOBYTE(v166) = v165;
    sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
    sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8, byte_100249F30);
    v159 = v164[0];
    v157 = v164[1];
    v158 = v164[2];
    v156 = v164[3];
    result = swift_allocError();
    v53 = v157;
    *v54 = v159;
    *(v54 + 16) = v53;
    v55 = v156;
    *(v54 + 32) = v158;
    *(v54 + 48) = v55;
    *(v54 + 64) = v166;
    return result;
  }

  *&v155 = 0;
  v56 = v150;
  v57 = v21;
  v58 = v152;
  v59 = v147;
  v60 = v159;
  v61 = v151;
  v151(v147, v150 + v152, v159);
  sub_1001F1778(0, 1, v137, v59, v50);
  v146 = v47;
  v47(v59, v60);
  v62 = v56 + v58;
  v63 = v145;
  v61(v145, v62, v60);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  v66 = os_log_type_enabled(v64, v65);
  *&v156 = v57 + 8;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v166 = v68;
    *v67 = 136315138;
    sub_1001E9F28();
    v70 = v69;
    v72 = v71;

    v73 = sub_100009E5C(v70, v72, &v166);
    v74 = v159;
    v75 = v146;

    *(v67 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "Initialized new persisted record: %s", v67, 0xCu);
    sub_10003991C(v68);
    v76 = v157;

    v56 = v150;

    v75(v145, v74);
  }

  else
  {

    v146(v63, v159);
    v76 = v157;
  }

  v77 = v152;
  v78 = v147;
  v79 = v159;
  v80 = v151;
  v151(v147, v56 + v152, v159);
  sub_1001F2A60(v78, v76);

  v146(v78, v79);
  v81 = v56 + v77;
  v82 = v138;
  v80(v138, v81, v79);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v166 = v86;
    *v85 = 136315138;
    sub_1001E9F28();
    v88 = v87;
    v90 = v89;

    v91 = sub_100009E5C(v88, v90, &v166);
    v92 = v159;
    v93 = v146;

    *(v85 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v83, v84, "Prepared newly inserted record for access: %s", v85, 0xCu);
    sub_10003991C(v86);
    v76 = v157;

    v93(v82, v92);
    v94 = v142;
    v95 = v140;
  }

  else
  {

    v96 = v146;
    v146(v82, v159);
    v94 = v142;
    v95 = v140;
    v93 = v96;
  }

  v97 = v139;
  sub_10003D1E4();
  v98 = type metadata accessor for Date();
  v99 = 0;
  if (sub_100004DFC(v97, 1, v98) != 1)
  {
    sub_100004E24(v97, &qword_1002DA970, &qword_1002318B0);
    v99 = _swiftEmptyArrayStorage;
  }

  v100 = v151;
  v151(v95, v150 + v152, v159);
  v101 = v155;
  sub_1001EF6D8(v94, v158, v99, v95, v76, v143, v144, v160);
  if (v101)
  {
    v102 = v161;
    v103 = v162;
    v104 = v163;
    v157 = v160[0];
    v155 = v160[1];
    v93(v95, v159);

    sub_1001FE928();
    swift_allocError();
    v105 = v155;
    *v106 = v157;
    *(v106 + 16) = v105;
    *(v106 + 32) = v102;
    *(v106 + 40) = v103;
    *(v106 + 48) = v104;
  }

  v93(v95, v159);
  sub_100039FFC();
  sub_1001E6944();
  v108 = v107;
  sub_1001E6AA0();

  if (!v108)
  {
  }

  CKSyncEngine.state.getter();
  v109 = v132;
  sub_1001E68AC();
  v110 = v150;
  v111 = *(v150 + 56);
  sub_10020A1EC(v109, v111);

  v112 = v136 + 8;
  v113 = *(v136 + 8);
  v113(v109, v134);
  v114 = v110 + v152;
  v115 = v133;
  v100(v133, v114, v159);
  swift_retain_n();
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v154 = v113;
    v119 = v118;
    *&v157 = swift_slowAlloc();
    v166 = v157;
    *v119 = 136315394;
    LODWORD(v155) = v117;
    sub_1001E6944();
    v136 = v112;
    sub_1001E6AA0();
    v120 = sub_1001ECC0C();
    v121 = v109;
    v123 = v122;

    v124 = sub_100009E5C(v120, v123, &v166);

    *(v119 + 4) = v124;
    *(v119 + 12) = 2080;
    sub_1001E68AC();

    sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v125 = v134;
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;

    v154(v121, v125);
    v129 = sub_100009E5C(v126, v128, &v166);

    *(v119 + 14) = v129;
    _os_log_impl(&_mh_execute_header, v116, v155, "Scheduled newly inserted record with persistedRecordID=%s uuid=%s for sending to cloud.", v119, 0x16u);
    swift_arrayDestroy();

    v130 = v133;
  }

  else
  {

    v130 = v115;
  }

  return (v146)(v130, v159);
}

uint64_t sub_1001FBDE4(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v46 = a5;
  LODWORD(v44) = a4;
  v9 = type metadata accessor for UUID();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v45 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v49 = a1;
  sub_10000C4FC(a1, v15);
  v17 = v48;
  v18 = (*(v16 + 64))(0, 0, a2, a3, v15, v16);
  if (!v17)
  {
    v21 = v47;
    v42 = v11;
    *&v48 = v9;
    if (v18)
    {
      v22 = *(v46 + 24);
      v23 = v45;
      v24 = v14;
      (*(v45 + 16))(v14, v22 + qword_100310708, v12);
      v25 = sub_1001F26E8(v44 & 1, v14, v21);
      v27 = v26;
      v28 = (*(v23 + 8))(v24, v12);
      __chkstk_darwin(v28);
      v19 = v49;
      *(&v41 - 2) = v49;

      sub_1001F2F70(sub_10003A484, (&v41 - 4), v25);
      swift_bridgeObjectRelease_n();
      if (v27)
      {
        CKSyncEngine.state.getter();
        v33 = v42;
        sub_1001E68AC();
        v34 = *(v22 + 56);
        sub_10020A1EC(v33, v34);

LABEL_14:
        (*(v43 + 8))(v33, v48);
        return sub_10003991C(v19);
      }
    }

    else
    {
      v19 = v49;
      v30 = v49[3];
      v29 = v49[4];
      sub_10000C4FC(v49, v30);
      v31 = a3;
      v32 = v21;
      (*(v29 + 72))(0, 0, a2, v31, v21, &v50, v30, v29);
      if (v44)
      {
        v35 = 4;
      }

      else
      {
        v35 = 3;
      }

      v51 = 3;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0;
      v36 = v45;
      v37 = *(v45 + 16);
      v44 = *(v46 + 24);
      v37(v14, v44 + qword_100310708, v12);
      sub_1001F1778(v35, 1, &v51, v14, v32);
      (*(v36 + 8))(v14, v12);
      sub_1001E6944();
      v39 = v38;
      sub_1001E6AA0();

      if (v39)
      {

        CKSyncEngine.state.getter();
        v33 = v42;
        sub_1001E68AC();
        v40 = *(v44 + 56);
        sub_10020A1EC(v33, v40);

        goto LABEL_14;
      }
    }

    return sub_10003991C(v19);
  }

  v19 = v49;
  return sub_10003991C(v19);
}

uint64_t sub_1001FC3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v59 = a8;
  *&v61 = a7;
  LODWORD(v60) = a6;
  *&v64 = a5;
  v57 = type metadata accessor for UUID();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v58 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v63 = a1;
  sub_10000C4FC(a1, v16);
  v18 = a2;
  v19 = v62;
  v20 = (*(v17 + 64))(a2, a3, a4, v64, v16, v17);
  if (!v19)
  {
    v53 = a4;
    v54 = v15;
    v22 = v59;
    *&v62 = 0;
    if (v20)
    {
      v23 = *(v61 + 24);
      v24 = v58;
      v25 = v54;
      v26 = v13;
      (*(v58 + 16))(v54, v23 + qword_100310708, v13);
      v27 = sub_1001F26E8(v60 & 1, v25, v22);
      v29 = v28;
      v30 = (*(v24 + 8))(v25, v26);
      __chkstk_darwin(v30);
      v21 = v63;
      *(&v52 - 2) = v63;

      v31 = v62;
      sub_1001F2F70(sub_10003A078, (&v52 - 4), v27);
      v32 = v57;
      v33 = v56;
      if (v31)
      {

        swift_bridgeObjectRelease_n();
        return sub_10003991C(v21);
      }

      swift_bridgeObjectRelease_n();
      if (v29)
      {
        *&v64 = CKSyncEngine.state.getter();
        v42 = v55;
        sub_1001E68AC();
        v43 = *(v23 + 56);
        sub_10020A1EC(v42, v43);

        (*(v33 + 8))(v42, v32);
        return sub_10003991C(v21);
      }
    }

    else
    {
      v34 = a3;
      v21 = v63;
      v35 = v63[3];
      v36 = v63[4];
      sub_10000C4FC(v63, v35);
      v37 = v62;
      (*(v36 + 72))(v18, v34, v53, v64, v22, v65, v35, v36);
      v38 = v54;
      if (v37)
      {
        v72 = v66;
        sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
        sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8, byte_100249F30);
        v64 = v65[0];
        v61 = v65[1];
        v62 = v65[2];
        v60 = v65[3];
        swift_allocError();
        v39 = v61;
        *v40 = v64;
        *(v40 + 16) = v39;
        v41 = v60;
        *(v40 + 32) = v62;
        *(v40 + 48) = v41;
        *(v40 + 64) = v72;
        return sub_10003991C(v21);
      }

      *&v62 = 0;
      if (v60)
      {
        v44 = 4;
      }

      else
      {
        v44 = 3;
      }

      v67 = 3;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
      v45 = v58;
      v46 = *(v58 + 16);
      *&v64 = *(v61 + 24);
      v46(v54, v64 + qword_100310708, v13);
      sub_1001F1778(v44, 1, &v67, v38, v22);
      (*(v45 + 8))(v38, v13);
      sub_1001E6944();
      v48 = v47;
      sub_1001E6AA0();

      if (v48)
      {

        CKSyncEngine.state.getter();
        v49 = v55;
        sub_1001E68AC();
        v50 = *(v64 + 56);
        sub_10020A1EC(v49, v50);

        (*(v56 + 8))(v49, v57);
        return sub_10003991C(v21);
      }
    }

    return sub_10003991C(v21);
  }

  v21 = v63;
  return sub_10003991C(v21);
}

uint64_t sub_1001FC9F8(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = *(v2 + 24);
  v11 = *(v4 + 16);
  v23 = qword_100310708;
  v24 = v11;
  (v11)(&v22 - v8, v10 + qword_100310708, v3, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to delete any stale persisted records.", v14, 2u);
    v2 = v22;
  }

  v15 = *(v4 + 8);
  v16 = v15(v9, v3);
  if (*(v10 + 88))
  {
    v17 = v26;
    v24(v26, v10 + v23, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No staleness interval configured for deletions, so no stale persisted records will be deleted.", v20, 2u);
    }

    return v15(v17, v3);
  }

  else
  {
    *(&v22 - 4) = __chkstk_darwin(v16);
    *(&v22 - 3) = v25;
    *(&v22 - 2) = v2;
    return sub_1001F7C68(sub_100039E30, (&v22 - 6));
  }
}

uint64_t sub_1001FCCBC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v83 = a3;
  v84 = type metadata accessor for Logger();
  v89 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for UUID();
  *&v80 = *(v73 - 8);
  __chkstk_darwin(v73);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v69 - v12;
  v14 = sub_100099DF4(&unk_1002E27D0, &qword_10024A3A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  v20 = a1[3];
  v21 = a1[4];
  sub_10000C4FC(a1, v20);
  (*(v21 + 96))(v94, a2, v20, v21, a4);
  v82 = v4;
  if (v4)
  {
    v22 = a1;
  }

  else
  {
    v86 = v19;
    v87 = v16;
    v77 = v10;
    v78 = a1;
    v23 = sub_10000C4FC(v94, v94[3]);
    v24 = __chkstk_darwin(v23);
    (*(v26 + 16))(&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_100007914(v91);
    dispatch thunk of Sequence.makeIterator()();
    v85 = (v80 + 32);
    v88 = (v80 + 8);
    v76 = (v89 + 16);
    v81 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
    v75 = (v80 + 16);
    v74 = (v89 + 8);
    *&v27 = 136315650;
    v69 = v27;
    v80 = xmmword_10022E400;
    v28 = v84;
    v29 = v73;
    v30 = v13;
    v89 = v13;
    while (1)
    {
      sub_100008494(v91, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v31 = v86;
      sub_100012D44();
      v32 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
      if (sub_100004DFC(v31, 1, v32) == 1)
      {
        break;
      }

      v33 = (v31 + *(v32 + 48));
      v35 = *v33;
      v34 = v33[1];
      (*v85)(v30, v31, v29);
      if (v34)
      {

        v36 = v83;
        CKSyncEngine.state.getter();
        sub_100099DF4(&qword_1002E1200, &qword_100247438);
        v37 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
        v38 = *(v37 - 8);
        v39 = v29;
        v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = v80;
        v42 = *(*(v36 + 24) + 56);
        sub_1001FE8E4();
        v43 = v42;
        v44._countAndFlagsBits = UUID.uuidString.getter();
        *(v41 + v40) = CKRecordID.init(recordName:zoneID:)(v44, v43);
        v45 = v41 + v40;
        v29 = v39;
        v30 = v89;
        (*(v38 + 104))(v45, v81, v37);
        v28 = v84;
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v41);

        (*v88)(v30, v29);
      }

      else
      {
        v46 = v78[3];
        v47 = v78[4];
        sub_10000C4FC(v78, v46);
        v48 = v82;
        (*(v47 + 112))(v30, v46, v47);
        if (v48)
        {
          (*v76)(v79, *(v83 + 24) + qword_100310708, v28);
          v49 = v77;
          (*v75)(v77, v30, v29);

          swift_errorRetain();
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();

          LODWORD(v82) = v51;
          if (os_log_type_enabled(v50, v51))
          {
            v52 = v49;
            v53 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v90 = v73;
            *v53 = v69;
            sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v71 = v50;
            v54 = dispatch thunk of CustomStringConvertible.description.getter();
            v56 = v55;
            v70 = v35;
            v57 = *v88;
            v58 = v52;
            v30 = v89;
            (*v88)(v58, v29);
            v59 = sub_100009E5C(v54, v56, &v90);

            *(v53 + 4) = v59;
            *(v53 + 12) = 2080;
            v60 = sub_1001ECC0C();
            v62 = v61;

            v63 = sub_100009E5C(v60, v62, &v90);

            *(v53 + 14) = v63;
            *(v53 + 22) = 2112;
            swift_errorRetain();
            v64 = _swift_stdlib_bridgeErrorToNSError();
            *(v53 + 24) = v64;
            v65 = v72;
            *v72 = v64;
            v66 = v71;
            _os_log_impl(&_mh_execute_header, v71, v82, "Failed to delete stale persisted record with %s and identifier %s: %@", v53, 0x20u);
            sub_100004E24(v65, &qword_1002E2700, &unk_1002474D0);

            swift_arrayDestroy();

            v28 = v84;
            (*v74)(v79, v84);
            v57(v30, v29);
          }

          else
          {

            v67 = *v88;
            (*v88)(v49, v29);
            v28 = v84;
            (*v74)(v79, v84);
            v67(v30, v29);
          }

          v82 = 0;
        }

        else
        {
          v82 = 0;
          (*v88)(v30, v29);
        }
      }
    }

    sub_10003991C(v91);
    sub_10003991C(v94);
    v22 = v78;
  }

  return sub_10003991C(v22);
}

uint64_t sub_1001FD69C(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = *(v2 + 24);
  v11 = *(v4 + 16);
  v24 = qword_100310708;
  v25 = v11;
  (v11)(&v23 - v8, v10 + qword_100310708, v3, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to delete any stale persisted history items.", v14, 2u);
  }

  v15 = *(v4 + 8);
  v16 = v15(v9, v3);
  if (*(v10 + 104))
  {
    v17 = v27;
    v25(v27, v10 + v24, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No staleness interval configured for deletions, so no stale persisted history items will be deleted.", v20, 2u);
    }

    return v15(v17, v3);
  }

  else
  {
    v22 = __chkstk_darwin(v16);
    *(&v23 - 2) = v26;
    *(&v23 - 1) = v22;
    return sub_1001F7C68(sub_100039E10, (&v23 - 4));
  }
}

uint64_t sub_1001FD960(void *a1, uint64_t a2, double a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000C4FC(a1, v8);
  static Date.- infix(_:_:)();
  (*(v9 + 152))(v7, v8, v9);
  (*(v5 + 8))(v7, v4);
  return sub_10003991C(a1);
}

uint64_t sub_1001FDAA4(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = os_transaction_create();
  v10 = type metadata accessor for TaskPriority();
  sub_100002728(v8, 1, 1, v10);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v4 + 32))(&v12[v11], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *&v12[(v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v9;

  swift_unknownObjectRetain();
  sub_1001FDDEC(0, 0, v8, &unk_10024A398, v12);
  swift_unknownObjectRelease();

  return sub_100004E24(v8, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_1001FDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  sub_100099DF4(&qword_1002E2720, &unk_10024A310);
  sub_1000326A8(&qword_1002E2728, &qword_1002E2720, &unk_10024A310, byte_10024AC98);
  v5[8] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;

  return _swift_task_switch(sub_100038FD0);
}

uint64_t sub_1001FDDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  sub_10003D1E4();
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100004DFC(v10, 1, v11);

  if (v12 == 1)
  {
    sub_100004E24(v10, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1001FE090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100099DF4(&qword_1002E2768, &unk_10024A340);
  sub_1000326A8(&unk_1002E2770, &qword_1002E2768, &unk_10024A340, byte_10024AFC0);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1001FE170(a2, a3);
}

uint64_t sub_1001FE170(uint64_t a1, uint64_t a2)
{
  os_transaction_create();
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  sub_100008494(v2 + 16, v5);
  (*(v6 + 32))(a1, a2, &type metadata for ()[1], v5, v6);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001FE244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, *(a2 + 24) + qword_100310708, v8, v10);
  v13 = sub_1001F2CC8(a1, v12, a3);
  LOBYTE(a2) = v14;
  (*(v9 + 8))(v12, v8);
  v15 = *(sub_100099DF4(&unk_1002E2780, &unk_10024A350) + 48);
  *a4 = v13;
  if (a2)
  {
    sub_1001E68AC();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for UUID();
  return sub_100002728(a4 + v15, v16, 1, v17);
}

uint64_t sub_1001FE3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v10 = a3;
  sub_10003A1D4(&v10, &v9);

  if (!v3)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1001FE468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100039834(&v8);
}

uint64_t sub_1001FE4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100039834(&v8);
}

uint64_t sub_1001FE590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100039834(&v8);
}

uint64_t sub_1001FE624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_10003A40C(&v8);
}

unint64_t sub_1001FE6B8()
{
  result = qword_1002E2710;
  if (!qword_1002E2710)
  {
    result = swift_getWitnessTable("݂\a", &type metadata for PIVoidCodableResult, v0, v1);
    atomic_store(result, &qword_1002E2710);
  }

  return result;
}

uint64_t (*sub_1001FE718(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1001FE70C(a3);
  sub_1000397D4(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_1000397F8;
}

void *sub_1001FE7A4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(&v6);
  if (!v2)
  {
    v5 = v7;
    *a2 = v6;
    *(a2 + 8) = v5;
  }

  return result;
}

void *sub_1001FE7F0@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(&v7, *a1);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 8) = v6;
  }

  return result;
}

unint64_t sub_1001FE8E4()
{
  result = qword_1002E27F0;
  if (!qword_1002E27F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E27F0);
  }

  return result;
}

unint64_t sub_1001FE928()
{
  result = qword_1002E27F8;
  if (!qword_1002E27F8)
  {
    result = swift_getWitnessTable(byte_10024B6D4, &type metadata for PrivateIdentifierMappingCreationInternalInconsistencyError, v0, v1);
    atomic_store(result, &qword_1002E27F8);
  }

  return result;
}

uint64_t sub_1001FE9B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001FE9C0(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

unint64_t sub_1001FE9CC()
{
  result = qword_1002E2820;
  if (!qword_1002E2820)
  {
    result = swift_getWitnessTable("1i\a", &type metadata for XPCServer.SyncEngineCreationError, v0, v1);
    atomic_store(result, &qword_1002E2820);
  }

  return result;
}

unint64_t sub_1001FEA20()
{
  result = qword_1002E2830;
  if (!qword_1002E2830)
  {
    result = swift_getWitnessTable("Ag\a", &_s26FailedToCreateSecTaskErrorVN, v0, v1);
    atomic_store(result, &qword_1002E2830);
  }

  return result;
}

unint64_t sub_1001FEA74()
{
  result = qword_1002E2838;
  if (!qword_1002E2838)
  {
    result = swift_getWitnessTable(byte_10024A418, &_s28FailedToCopyEntitlementErrorVN, v0, v1);
    atomic_store(result, &qword_1002E2838);
  }

  return result;
}

void sub_1001FEB10(uint64_t a1)
{
  sub_1001FEB94(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001FEB94(uint64_t a1)
{
  if (!qword_1002E28B0)
  {
    v4[0] = type metadata accessor for PIAccountKeypair(255);
    v4[1] = type metadata accessor for PIDeviceKeypair(255);
    v4[2] = _s20GlobalSyncStateModelCMa_0(255);
    v4[3] = _s22PrivateIdentifierModelCMa_0(255);
    v4[4] = _s29PrivateIdentifierHistoryModelCMa(255);
    v4[5] = &off_1002BF1E0;
    v4[6] = sub_1000396D0(&qword_1002E28B8, type metadata accessor for PIAccountKeypair, byte_1002473D4);
    v4[7] = sub_1000396D0(&qword_1002E28C0, type metadata accessor for PIDeviceKeypair, byte_100247468);
    v4[8] = &off_1002BF288;
    v4[9] = sub_1000396D0(&qword_1002E28C8, _s20GlobalSyncStateModelCMa_0, ")j\a");
    v4[10] = sub_1000396D0(&qword_1002E28D0, _s20GlobalSyncStateModelCMa_0, "y~\a");
    v4[11] = sub_1000396D0(&qword_1002E28D8, _s22PrivateIdentifierModelCMa_0, "1j\a");
    v4[12] = sub_1000396D0(&qword_1002E28E0, _s22PrivateIdentifierModelCMa_0, ")}\a");
    v4[13] = sub_1000396D0(&unk_1002E28E8, _s29PrivateIdentifierHistoryModelCMa, byte_100247B70);
    v2 = type metadata accessor for SyncEngine(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1002E28B0);
    }
  }
}

NSObject *sub_1001FEDEC()
{
  v67 = type metadata accessor for Logger();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  __chkstk_darwin(v2);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModelConfiguration.GroupContainer();
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100099DF4(&qword_1002E2920, &qword_10024A498);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for ModelConfiguration();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  v24 = *(v23 + 72);
  if (*(v0 + v24))
  {
    v25 = *(v0 + v24);
LABEL_3:

    return v25;
  }

  v51 = v15;
  v52 = v9;
  v53 = v23;
  v54 = v12;
  v50 = v24;
  v57 = v22;
  v58 = v20;
  v56 = v19;
  type metadata accessor for Schema();
  sub_1001DABAC();
  Schema.__allocating_init(versionedSchema:)();
  sub_10003D178(v0, v18, &qword_1002E2920, &qword_10024A498);
  v26 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v27 = sub_100004DFC(v18, 1, v26);
  v55 = v0;
  if (v27 == 1)
  {

    static ModelConfiguration.GroupContainer.none.getter();
    static ModelConfiguration.CloudKitDatabase.none.getter();
    v28 = v57;
    ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  }

  else
  {
    v29 = v63;
    v30 = v52;
    v31 = v18;
    v32 = v64;
    (*(v63 + 32))(v52, v31, v64);
    v68 = 0xD000000000000012;
    v69 = 0x8000000100277C40;
    v33 = v61;
    v34 = v62;
    v35 = v59;
    (*(v62 + 104))(v59, enum case for URL.DirectoryHint.notDirectory(_:), v61);
    sub_1000BBBB0();
    URL.append<A>(path:directoryHint:)();
    (*(v34 + 8))(v35, v33);
    v36._countAndFlagsBits = 0x6574696C7173;
    v36._object = 0xE600000000000000;
    URL.appendPathExtension(_:)(v36);
    (*(v29 + 16))(v60, v30, v32);

    static ModelConfiguration.CloudKitDatabase.none.getter();
    v28 = v57;
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v29 + 8))(v30, v32);
  }

  v37 = v65;
  v38 = v58;
  type metadata accessor for ModelContainer();
  sub_1001DAC00();
  sub_100099DF4(qword_1002E1440, qword_100247608);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10022E400;
  v41 = v56;
  (*(v38 + 16))(v40 + v39, v28, v56);

  v42 = v70;
  v43 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (!v42)
  {
    v25 = v43;
    (*(v38 + 8))(v28, v41);

    *(v55 + v50) = v25;

    goto LABEL_3;
  }

  (*(v37 + 16))(v66, v55 + *(v53 + 68), v67);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v47;
    *v46 = v47;
    _os_log_impl(&_mh_execute_header, v25, v44, "Failed to create model container: %@", v45, 0xCu);
    sub_100004E24(v46, &qword_1002E2700, &unk_1002474D0);
    v28 = v57;
  }

  (*(v37 + 8))(v66, v67);
  swift_willThrow();

  (*(v58 + 8))(v28, v41);
  return v25;
}

uint64_t sub_1001FF598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v41 = a4;
  v6 = type metadata accessor for Logger();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100099DF4(&qword_1002E1410, &qword_1002475E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100099DF4(&qword_1002E1418, &unk_1002475E8);
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = sub_100099DF4(&qword_1002E2958, &qword_10024A4B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  v44 = a1;
  result = sub_1001FEDEC();
  if (!v4)
  {
    v34 = v6;
    v35 = v8;
    v36 = v11;
    v37 = v14;
    v33 = v17;
    v38 = v12;
    type metadata accessor for ModelContext();
    swift_allocObject();
    v22 = ModelContext.init(_:)();
    v23 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
    v24 = sub_100002728(v20, 1, 1, v23);
    __chkstk_darwin(v24);
    v26 = v42;
    v25 = v43;
    *(&v32 - 6) = v20;
    *(&v32 - 5) = v26;
    *(&v32 - 4) = v25;
    *(&v32 - 3) = v22;
    *(&v32 - 2) = v44;
    dispatch thunk of ModelContext.transaction(block:)();
    v27 = v41;
    v29 = v36;
    v28 = v37;
    v30 = sub_100099DF4(&qword_1002E1420, &unk_1002475F8);
    sub_100002728(v29, 1, 1, v30);
    type metadata accessor for DefaultHistoryTransaction();
    sub_10003AAD4(&qword_1002E1428, &type metadata accessor for DefaultHistoryTransaction, &protocol conformance descriptor for DefaultHistoryTransaction);
    HistoryDescriptor.init(predicate:)();
    dispatch thunk of ModelContext.deleteHistory<A>(_:)();
    v31 = v33;
    sub_10003D178(v20, v33, &qword_1002E2958, &qword_10024A4B0);
    result = sub_100004DFC(v31, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v40 + 8))(v28, v38);

      sub_100012CF4(v31, v27, &qword_1002E1AB8, &qword_100247AD0);
      return sub_100004E24(v20, &qword_1002E2958, &qword_10024A4B0);
    }
  }

  return result;
}

uint64_t sub_1001FFBD4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v8 = sub_100099DF4(&qword_1002E2958, &qword_10024A4B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21[-1] - v9;
  v11 = *(sub_100099DF4(&qword_1002E2928, &qword_10024A4A0) + 68);
  v12 = sub_100099DF4(&qword_1002E2968, &unk_10024A4C0);
  v21[3] = v12;
  v21[4] = sub_1000326A8(&qword_1002E2970, &qword_1002E2968, &unk_10024A4C0, byte_1002476D0);
  v13 = sub_100007914(v21);
  v14 = *(v12 + 68);
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 16))(v13 + v14, a5 + v11, v15);
  *v13 = a4;

  v16 = v21[6];
  a2(v21);
  if (v16)
  {
    sub_100099DF4(&qword_1002E2960, &qword_10024A4B8);
    sub_1000326A8(&qword_1002E2978, &qword_1002E2960, &qword_10024A4B8, byte_100247690);
    swift_allocError();
    *v17 = v16;
    return swift_willThrow();
  }

  else
  {
    v19 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
    sub_100002728(v10, 0, 1, v19);
    return sub_1002012E0(v10, v20);
  }
}

uint64_t static XPCServer.createListener(machServiceName:requiredEntitlement:persistenceAccessQueue:xpcServerLogger:persistenceDirectoryURL:persistenceLogger:cloudKitContainerEnvironment:apsMachServiceName:syncEngineLogger:shouldCreateSyncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v89 = a1;
  v91 = a8;
  v80 = a5;
  v81 = a6;
  v86 = a3;
  v87 = a4;
  v88 = a2;
  v83 = a14;
  v84 = a13;
  v78 = a10;
  v79 = a9;
  v77 = a11;
  v75 = a12;
  v14 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v14 - 8);
  v85 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  sub_1000038DC();
  v18 = v17;
  v94 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  v82 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v76 = &v68 - v23;
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v72 = &v68 - v25;
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  v71 = &v68 - v28;
  v70 = type metadata accessor for URL();
  sub_1000038DC();
  v31 = v30;
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v34);
  v73 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v35);
  v36 = *(v18 + 16);
  v92 = v18 + 16;
  v93 = v36;
  v90 = v16;
  v36(v29, v91, v16);
  v36(v26, v75, v16);
  v37 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v38 = *(v18 + 80);
  v39 = (v33 + v38 + v37) & ~v38;
  v74 = v38 | 7;
  v75 = v20 + 7;
  v40 = (v20 + 7 + v39) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v31 + 32))(v42 + v37, v73, v70);
  v44 = v94 + 32;
  v43 = *(v94 + 32);
  v45 = v90;
  v43(v42 + v39, v71, v90);
  v73 = v43;
  v94 = v44;
  v91 = v42;
  v46 = (v42 + v40);
  v47 = v77;
  *v46 = v78;
  v46[1] = v47;
  v48 = v80;
  *(v42 + v69) = v79;
  *(v42 + v41) = v48;
  v43(v42 + ((v38 + v41 + 8) & ~v38), v72, v45);
  v49 = v76;
  v50 = v81;
  v93(v76, v81, v45);
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  swift_allocObject();
  v51 = v48;

  v52 = v83;

  v53 = v91;

  sub_1001F3D1C(v51, v49, v84, v52, sub_10003A80C, v53);
  v55 = v54;
  v56 = v82;
  v57 = v90;
  v93(v82, v50, v90);
  v58 = (v38 + 16) & ~v38;
  v59 = (v75 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (v73)(v61 + v58, v56, v57);
  v62 = (v61 + v59);
  v63 = v87;
  *v62 = v86;
  v62[1] = v63;
  *(v61 + v60) = v55;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
  v64 = v51;

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  v65 = v64;
  v66 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  return v66;
}

uint64_t sub_100200354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v25 = a6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v24 - v18;
  sub_100200574(a1, a2, &v24 - v18);
  sub_100003AE0(0, &qword_1002E2930, CKContainer_ptr);
  sub_100003AE0(0, &qword_1002E2938, CKContainerID_ptr);
  v20 = sub_10020084C(0xD00000000000002FLL, 0x8000000100277C10, a5);
  v21 = sub_1002008C8();
  v22 = sub_10020094C(v20, v21);
  (*(v14 + 16))(v16, a7, v13);
  sub_1002009A8(a3, a4, v26);
  sub_100099DF4(&qword_1002E2720, &unk_10024A310);
  swift_allocObject();
  return sub_100200A94(v22, v19, v25, v16, v26);
}

uint64_t sub_100200574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100099DF4(&qword_1002E2920, &qword_10024A498);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - v11;
  v13 = *(type metadata accessor for URL() - 8);
  (*(v13 + 16))(v12, a1);
  v14 = *(sub_100099DF4(qword_1002E12D8, &unk_100247550) - 8);
  (*(v14 + 56))(v12, 0, 1);
  (*(v7 + 16))(v9, a2, v6);
  _s20GlobalSyncStateModelCMa_0(0);
  _s22PrivateIdentifierModelCMa_0(0);
  _s29PrivateIdentifierHistoryModelCMa(0);
  sub_10003AAD4(&qword_1002E28D0, _s20GlobalSyncStateModelCMa_0, "y~\a");
  sub_10003AAD4(&qword_1002E28E0, _s22PrivateIdentifierModelCMa_0, ")}\a");
  sub_10003AAD4(&unk_1002E28E8, _s29PrivateIdentifierHistoryModelCMa, byte_100247B70);
  return sub_1001D2364(v12, v9, 0, a3);
}

id sub_10020084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithContainerIdentifier:v5 environment:a3];

  return v6;
}

id sub_1002008C8()
{
  v0 = [objc_allocWithZone(CKContainerOptions) init];
  [v0 setUseZoneWidePCS:1];
  v1 = String._bridgeToObjectiveC()();
  [v0 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v1];

  return v0;
}

id sub_10020094C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerID:a1 options:a2];

  return v4;
}

uint64_t sub_1002009A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100003AE0(0, &qword_1002E2980, CKRecordZoneID_ptr);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._object = 0x8000000100277C40;
  v8._countAndFlagsBits = 0xD000000000000012;
  v9.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v8, v6).super.isa;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0x417E133800000000;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0x417E133800000000;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x4143C68000000000;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
}

uint64_t sub_100200A94(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v56 = a1;
  v8 = type metadata accessor for CKSyncEngine.Configuration();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v48 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  __chkstk_darwin(v18 - 8);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  __chkstk_darwin(v23);
  v25 = &v48 - v24;
  v26 = objc_autoreleasePoolPush();
  sub_1001FF598(a2, sub_1002010D0, 0, v22);
  v60 = v12;
  v53 = v25;
  objc_autoreleasePoolPop(v26);
  sub_100012CF4(v22, v25, &qword_1002E1AB8, &qword_100247AD0);
  sub_100012CF4(a2, v17, &qword_1002E2928, &qword_10024A4A0);
  v27 = *(a5 + 24);
  v28 = v50;
  (*(v13 + 16))(v50, a4, v12);
  v29 = *(a5 + 48);
  v61 = *(a5 + 32);
  v62[0] = v29;
  *(v62 + 9) = *(a5 + 57);
  v30 = v13;
  v31 = *(a5 + 80);
  v32 = *(a5 + 88);
  v49 = a4;
  v34 = *(a5 + 96);
  v33 = *(a5 + 104);
  sub_100099DF4(&qword_1002E2768, &unk_10024A340);
  swift_allocObject();
  v35 = v17;
  v36 = v52;
  v37 = sub_100201160(v35, v27, v52, v28, &v61, v31, v32, v34, v33);
  v38 = v59;
  *(v59 + 24) = v37;
  v39 = v27;
  v52 = v36;
  sub_10003AAA0(v31, v32);
  sub_10003AAA0(v34, v33);
  v40 = v56;
  v41 = [v56 privateCloudDatabase];
  v42 = v53;
  sub_10003D178(v53, v51, &qword_1002E1AB8, &qword_100247AD0);
  sub_1000326A8(&qword_1002E2940, &qword_1002E2768, &unk_10024A340, "1j\a");

  v43 = v55;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();

  CKSyncEngine.Configuration.apsMachServiceName.setter();
  CKSyncEngine.Configuration.automaticallySync.setter();
  v45 = v57;
  v44 = v58;
  (*(v57 + 16))(v54, v43, v58);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v46 = CKSyncEngine.init(_:)();

  sub_100004E24(a5, &qword_1002E2948, &qword_10024A4A8);
  (*(v30 + 8))(v49, v60);
  (*(v45 + 8))(v43, v44);
  sub_100004E24(v42, &qword_1002E1AB8, &qword_100247AD0);
  *(v38 + 16) = v46;
  return v38;
}

uint64_t sub_1002010D0(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000C4FC(a1, v3);
  (*(v4 + 56))(v3, v4);
  if (!v1)
  {
    sub_1001E27AC();
  }

  return sub_100004118(a1);
}

uint64_t sub_100201160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  v27 = sub_1000326A8(&qword_1002E2950, &qword_1002E2928, &qword_10024A4A0, byte_1002475C0);
  v16 = sub_100007914(&v25);
  sub_100012CF4(a1, v16, &qword_1002E2928, &qword_10024A4A0);
  swift_beginAccess();
  sub_10000601C(&v25, v9 + 16);
  *(v9 + 56) = a2;
  v17 = a5[1];
  *(v9 + 64) = *a5;
  *(v9 + 80) = v17;
  *(v9 + 89) = *(a5 + 25);
  *(v9 + 112) = a3;
  v18 = qword_100310708;
  v19 = type metadata accessor for Logger();
  (*(*(v19 - 8) + 32))(v9 + v18, a4, v19);
  v20 = (v9 + qword_100310710);
  *v20 = a6;
  v20[1] = a7;
  v21 = (v9 + qword_100310718);
  *v21 = a8;
  v21[1] = a9;
  return v9;
}

uint64_t sub_1002012E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E2958, &qword_10024A4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100201350(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(a2 + 40))(a1, a2, v6);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_10020148C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  sub_1000038DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000030E4();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1000038DC();
  v48 = v14;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  __chkstk_darwin(v18);
  sub_1000030E4();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  sub_1000038DC();
  v36 = v21;
  v37 = v20;
  __chkstk_darwin(v20);
  v23 = &v33 - v22;
  v24 = dispatch thunk of Collection.count.getter();
  if (!v24)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v47 = v24;
  v51 = ContiguousArray.init()();
  v38 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v47);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = dispatch thunk of Collection.subscript.read();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = sub_10003AB84();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = sub_10003AB84();
      v30(v29);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

CKRecordID sub_100201860(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003AE0(0, &qword_1002E27F0, CKRecordID_ptr);
  v6 = (*(a3 + 32))(a2, a3);
  v8 = v7;
  v9 = a1;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  return CKRecordID.init(recordName:zoneID:)(v10, v9);
}

Class sub_1002018F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100201944(a1, a2, a3);
  v7 = v6;
  if (!v3)
  {
    sub_100201AB8(v6, a2, a3);
  }

  return v7;
}

Class sub_100201944(id a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 40))(a2, a3);
  if (v8 >> 60 == 15)
  {
    return sub_100201F70(a1, a2, a3).super.isa;
  }

  v10 = v7;
  v11 = v8;
  v12 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_10000FF98(v10, v11);
  v13 = sub_100202470(v10, v11);
  if (!v3)
  {
    v14 = v13;
    [v13 setRequiresSecureCoding:1];
    v15 = [objc_allocWithZone(CKRecord) initWithCoder:v14];
    if (v15)
    {
      a1 = v15;

      sub_10009A7A0(v10, v11);
      return a1;
    }

    v17 = type metadata accessor for MalformedLocalRecordError(0, a2, a3, v16);
    swift_getWitnessTable(byte_10024B2B0, v17);
    swift_allocError();
    swift_willThrow();
  }

  sub_10009A7A0(v10, v11);
  return a1;
}

uint64_t sub_100201AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v23 - v7;
  (*(a3 + 24))(a2, a3, v6);
  v9 = swift_getAssociatedTypeWitness();
  sub_10009A468(&qword_1002E2988, &unk_10024A760);
  swift_getFunctionTypeMetadata1();
  swift_getAssociatedConformanceWitness();
  v10 = Dictionary.keys.getter();

  v37 = v10;
  v11 = type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v11);
  v28 = Set.init<A>(_:)();
  swift_checkMetadataState();
  dispatch thunk of static CaseIterable.allCases.getter();
  v35 = a2;
  v36 = a3;
  KeyPath = swift_getKeyPath();
  v32 = a2;
  v33 = a3;
  v25 = a3;
  v34 = KeyPath;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10020148C(sub_10003AB38, v31, AssociatedTypeWitness, v9, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v13);
  v23 = 0;

  v15 = *(v30 + 8);
  v30 += 8;
  v15(v8, AssociatedTypeWitness);
  v37 = v14;
  v16 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v16);
  Set.init<A>(_:)();
  v17 = static Set.== infix(_:_:)();

  if (v17)
  {
    v19 = dispatch thunk of static CaseIterable.allCases.getter();
    __chkstk_darwin(v19);
    v20 = v25;
    v21 = v26;
    *(&v23 - 4) = a2;
    *(&v23 - 3) = v20;
    v22 = v27;
    *(&v23 - 2) = v21;
    *(&v23 - 1) = v22;
    Sequence.forEach(_:)();
    return (v15)(v8, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_100201F2C(void *a1, uint64_t a2, uint64_t a3)
{
  isa = sub_100201F70(a1, a2, a3).super.isa;
  sub_100201AB8(isa, a2, a3);
  return isa;
}

CKRecord sub_100201F70(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003AE0(0, &qword_1002E1208, CKRecord_ptr);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v10 = v9;
  isa = sub_100201860(a1, a2, a3).super.isa;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  return CKRecord.init(recordType:recordID:)(v12, isa);
}

uint64_t sub_100202064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_100202158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v18 = a3;
  v21[6] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v17 - v10;
  (*(a5 + 24))(a4, a5, v9);
  v12 = *(AssociatedConformanceWitness + 40);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  sub_10009A468(&qword_1002E2988, &unk_10024A760);
  swift_getFunctionTypeMetadata1();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();

  result = (*(v20 + 8))(v11, AssociatedTypeWitness);
  v15 = v21[0];
  if (v21[0])
  {
    v16 = v21[1];
    if ((*(AssociatedConformanceWitness + 48))(v13, AssociatedConformanceWitness))
    {
      [v19 encryptedValues];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    sub_100201350(v13, AssociatedConformanceWitness);
    v15(v21, v18);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_10003D150(v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100202470(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = 0;
  v7 = [v3 initForReadingFromData:isa error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10000D170(a1, a2);
  return v7;
}

unint64_t sub_100202554()
{
  result = qword_1002E2990;
  if (!qword_1002E2990)
  {
    result = swift_getWitnessTable("5j\a", &unk_1002C1168, v0, v1);
    atomic_store(result, &qword_1002E2990);
  }

  return result;
}

Swift::Int sub_1002025A8(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)((a1 & 1u) + 3);
  return Hasher._finalize()();
}

Swift::Int sub_100202600(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_1002029B8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100202674(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10003ACA4();
    sub_10003AC6C();
  }

  else
  {
    sub_10003AC88();
  }

  String.hash(into:)();
}

uint64_t sub_100202714(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100202820(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Hasher.init(_seed:)();
  sub_1002029B8(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100202880(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)((a2 & 1u) + 3);
  return Hasher._finalize()();
}

Swift::Int sub_1002028D8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    sub_10003ACA4();
    sub_10003AC6C();
  }

  else
  {
    sub_10003AC88();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020296C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCD18, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002029B8(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4B746E756F636361;
      break;
    case 3:
      result = 0x6E6F697461746F72;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_100202AB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020296C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100202AE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002029B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100202B48()
{
  result = qword_1002E29B8;
  if (!qword_1002E29B8)
  {
    result = swift_getWitnessTable("\tj\a", &unk_1002C10F0, v0, v1);
    atomic_store(result, &qword_1002E29B8);
  }

  return result;
}

unint64_t sub_100202BA0()
{
  result = qword_1002E29C0;
  if (!qword_1002E29C0)
  {
    result = swift_getWitnessTable("!j\a", &unk_1002C10F0, v0, v1);
    atomic_store(result, &qword_1002E29C0);
  }

  return result;
}

unint64_t sub_100202BF4(uint64_t a1)
{
  result = sub_100202C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100202C1C()
{
  result = qword_1002E2A08;
  if (!qword_1002E2A08)
  {
    result = swift_getWitnessTable(byte_10024A680, &unk_1002C1168, v0, v1);
    atomic_store(result, &qword_1002E2A08);
  }

  return result;
}

unint64_t sub_100202C74()
{
  result = qword_1002E2A10;
  if (!qword_1002E2A10)
  {
    result = swift_getWitnessTable(byte_10024A650, &unk_1002C10F0, v0, v1);
    atomic_store(result, &qword_1002E2A10);
  }

  return result;
}

unint64_t sub_100202CCC()
{
  result = qword_1002E2A18;
  if (!qword_1002E2A18)
  {
    v3 = sub_10009A468(&qword_1002E2A20, &qword_10024A678);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002E2A18);
  }

  return result;
}

id sub_100202D40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v9 = type metadata accessor for UUID();
  if (sub_100004DFC(v7, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a2, v7, v9);
  }

  sub_100202EAC(v7);
  sub_100202F14();
  swift_allocError();
  *v10 = a1;
  swift_willThrow();
  return a1;
}

uint64_t sub_100202EAC(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100202F14()
{
  result = qword_1002E2A28;
  if (!qword_1002E2A28)
  {
    result = swift_getWitnessTable("qh\a", &type metadata for UnparseableUUIDError, v0, v1);
    atomic_store(result, &qword_1002E2A28);
  }

  return result;
}

BOOL sub_100202F68(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_100202D40(a1, &v11[-v6]);
  v8 = type metadata accessor for UUID();
  sub_100002728(v7, 0, 1, v8);
  sub_100203080(v7, v4);
  v9 = sub_100004DFC(v4, 1, v8);
  if (v9 != 1)
  {
    sub_100202EAC(v4);
  }

  return v9 != 1;
}

uint64_t sub_100203080(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1002030F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1002031C8(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100203264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10020335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a2;
  v26 = a1;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27[-1] - v14;
  sub_1001512EC(a3, v27);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  if (swift_dynamicCast())
  {
    sub_100002728(v15, 0, 1, a5);
    return (*(*(a5 - 8) + 32))(a7, v15, a5);
  }

  else
  {
    sub_100002728(v15, 1, 1, a5);
    (*(v13 + 8))(v15, v12);
    v18 = type metadata accessor for MalformedCKRecordError(0, a4, a6, v17);
    swift_getWitnessTable(byte_10024B2F0, v18);
    swift_allocError();
    v20 = v19;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v22 = a3[4];
    v27[0] = DynamicType;
    v27[1] = v22;
    v23 = v28;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v24 = String.init<A>(describing:)();
    *v20 = v26;
    *(v20 + 8) = v23;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }
}

uint64_t *(*sub_1002035C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;

  return sub_10003AD20;
}

uint64_t sub_100203648(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  sub_100204BF8(a4, &v13);
  if (v14)
  {
    sub_10000601C(&v13, v15);
    a1[3] = type metadata accessor for UUID();
    v10 = sub_100007914(a1);
    sub_1002098AC(a2, a3, v15, v10);
    sub_100004118(v15);
    if (v4)
    {
      sub_1001513E8(a1);
    }

    else
    {
    }
  }

  else
  {
    sub_100204C68(&v13);
    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    sub_100204CE8();
    swift_allocError();
    *v11 = a2;
    *(v11 + 8) = a3;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return KeyPath;
}

uint64_t *sub_100203774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, void *), uint64_t a7, uint64_t a8)
{
  v15 = *a5;
  sub_100204BF8(a4, &v20);
  if (v21)
  {
    sub_10000601C(&v20, v22);
    a1[3] = *(v15 + class metadata base offset for KeyPath + 8);
    sub_100007914(a1);
    a6(a2, a3, v22);
    sub_100004118(v22);
    if (v8)
    {
      sub_1001513E8(a1);
    }

    else
    {
    }
  }

  else
  {
    sub_100204C68(&v20);
    v17 = type metadata accessor for MalformedCKRecordError(0, *(v15 + class metadata base offset for KeyPath), a8, v16);
    swift_getWitnessTable(byte_10024B2F0, v17);
    swift_allocError();
    *v18 = a2;
    *(v18 + 8) = a3;
    *(v18 + 48) = 1;
    swift_willThrow();
  }

  return a5;
}

uint64_t sub_100203908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CKRecord.recordType.getter();
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (v3 == (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness) && v5 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void sub_1002039F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v65 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v66 = v58 - v11;
  if (((*(a3 + 48))(a1, a2, a3, v10) & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v58[0] = v4;
  v64 = a1;
  (*(a3 + 24))(a2, a3);
  v12 = swift_getAssociatedTypeWitness();
  v62 = v9;
  v13 = v12;
  type metadata accessor for InitializableFromCKRecordPropertyValueProvider(0, a2, a3, v14);
  swift_getAssociatedConformanceWitness();
  v15 = Dictionary.keys.getter();

  v69 = v15;
  v16 = type metadata accessor for Dictionary.Keys();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v16);
  v63 = sub_10003AE84(WitnessTable);
  swift_checkMetadataState();
  v18 = v66;
  v61 = v5;
  v19 = dispatch thunk of static CaseIterable.allCases.getter();
  __chkstk_darwin(v19);
  v58[-2] = a2;
  v58[-1] = a3;
  KeyPath = swift_getKeyPath();
  v60 = v58;
  __chkstk_darwin(KeyPath);
  v59 = a2;
  v58[-4] = a2;
  v58[-3] = a3;
  v68 = a3;
  v58[-2] = v21;
  v22 = v62;
  v23 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = v61;
  v27 = sub_10020148C(sub_10003AD5C, &v58[-6], v23, v13, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v26);
  v61 = v25;

  v28 = *(v22 + 8);
  v28(v18, v23);
  v69 = v27;
  v29 = type metadata accessor for Array();
  v30 = sub_10003AE40();
  v31 = swift_getWitnessTable(v30, v29);
  sub_10003AE84(v31);
  v32 = static Set.== infix(_:_:)();

  if ((v32 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v63 = v28;
  v33 = v66;
  v34 = dispatch thunk of static CaseIterable.allCases.getter();
  __chkstk_darwin(v34);
  v35 = AssociatedConformanceWitness;
  v36 = v59;
  v37 = v68;
  v58[-4] = v59;
  v58[-3] = v37;
  v58[-2] = v64;
  v38 = type metadata accessor for PartialKeyPath();
  v39 = sub_10009A468(&qword_1002DBBC8, &qword_100238210);
  v65 = v38;
  v62 = v39;
  swift_getTupleTypeMetadata2();
  sub_10009A468(&qword_1002DB2F0, &qword_10023F010);
  type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = AssociatedTypeWitness;
  v43 = sub_10020148C(sub_10003AD88, &v58[-6], AssociatedTypeWitness, TupleTypeMetadata2, &type metadata for Never, v35, &protocol witness table for Never, v42);
  v44 = v63(v33, v41);
  v45 = v43;
  v69 = v43;
  __chkstk_darwin(v44);
  v58[-2] = v36;
  v58[-1] = v37;
  v46 = type metadata accessor for Array();
  sub_100099DF4(&qword_1002E1D20, &qword_100248030);
  v47 = sub_10003AE40();
  swift_getWitnessTable(v47, v46);
  sub_10003AE58();
  v48 = sub_10020B60C();
  if (v48[2])
  {

    v50 = type metadata accessor for MalformedCKRecordError(0, v36, v68, v49);
    swift_getWitnessTable(byte_10024B2F0, v50);
    swift_allocError();
    *v51 = v48;
    *(v51 + 48) = 0;
    swift_willThrow();
  }

  else
  {

    v69 = v45;
    __chkstk_darwin(v52);
    v53 = v68;
    v58[-2] = v36;
    v58[-1] = v53;
    swift_getTupleTypeMetadata2();
    v54 = sub_10003AE58();

    v69 = v54;
    v55 = type metadata accessor for Array();
    v56 = sub_10003AE40();
    swift_getWitnessTable(v56, v55);
    v57 = Dictionary.init<A>(uniqueKeysWithValues:)();
    (*(v68 + 40))(v64, v57, v36);
  }
}

uint64_t sub_100204170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_100204264@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a2;
  v30[6] = a1;
  v26 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v24 - v10;
  v28 = (*(a4 + 24))(a3, a4, v9);
  v12 = *(AssociatedConformanceWitness + 40);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  v24 = a4;
  v25 = a3;
  type metadata accessor for InitializableFromCKRecordPropertyValueProvider(0, a3, a4, v14);
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();

  result = (*(v29 + 8))(v11, AssociatedTypeWitness);
  v16 = v30[0];
  if (v30[0])
  {
    v17 = v30[1];
    if ((*(AssociatedConformanceWitness + 48))(v13, AssociatedConformanceWitness))
    {
      [v27 encryptedValues];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v18 = sub_100201350(v13, AssociatedConformanceWitness);
    v20 = v19;
    swift_getObjectType();
    v21 = CKRecordKeyValueSetting.subscript.getter();
    v22 = v26;
    *v26 = v18;
    v22[1] = v20;
    __chkstk_darwin(v21);
    v23 = v24;
    *(&v24 - 8) = v25;
    *(&v24 - 7) = v23;
    *(&v24 - 6) = v16;
    *(&v24 - 5) = v17;
    *(&v24 - 4) = v18;
    *(&v24 - 3) = v20;
    *(&v24 - 2) = v30;
    type metadata accessor for PartialKeyPath();

    sub_10009A468(&qword_1002DBBC8, &qword_100238210);
    swift_getTupleTypeMetadata2();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_100204634(sub_10003ADE4, (v22 + 2));

    swift_unknownObjectRelease();
    sub_10003D150(v16, v17);
    return sub_100204C68(v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100204634@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v12[-v9];
  a1(v5, v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t sub_1002047E8@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  type metadata accessor for PartialKeyPath();
  sub_10009A468(&qword_1002DBBC8, &qword_100238210);
  swift_getTupleTypeMetadata2();
  sub_10009A468(&qword_1002DB2F0, &qword_10023F010);
  v6 = type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 16);
  v8(v12, a1, TupleTypeMetadata2);

  if (v14)
  {
    v9 = v13[0];
    v8(v12, a1, TupleTypeMetadata2);
    v10 = v12[1];
    *a3 = v12[0];
    a3[1] = v10;
    a3[2] = v9;
    return (*(*(v6 - 8) + 8))(v13, v6);
  }

  else
  {
    result = (*(*(v6 - 8) + 8))(v13, v6);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

_OWORD *sub_1002049A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for PartialKeyPath();
  sub_10009A468(&qword_1002DBBC8, &qword_100238210);
  swift_getTupleTypeMetadata2();
  sub_10009A468(&qword_1002DB2F0, &qword_10023F010);
  v6 = type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(&v10, a1, TupleTypeMetadata2);

  if (v13 == 1)
  {
    result = (*(*(v6 - 8) + 8))(&v11, v6);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v9 = v11;
    sub_1001514B8(&v12, v14);
    *a3 = v9;
    return sub_1001514B8(v14, (a3 + 8));
  }

  return result;
}

uint64_t sub_100204B24(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v5 = (*(a2 + 32))(a1, a2);
  [v5 encodeSystemFieldsWithCoder:v4];

  v6 = [v4 encodedData];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_100204BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E2A30, &qword_10024A758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100204C68(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002E2A30, &qword_10024A758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100204CE8()
{
  result = qword_1002E2A48[0];
  if (!qword_1002E2A48[0])
  {
    v3 = sub_10009A468(&qword_1002E2A40, &qword_10024A7C8);
    result = swift_getWitnessTable(byte_10024B2F0, v3, v0, v1);
    atomic_store(result, qword_1002E2A48);
  }

  return result;
}

uint64_t sub_100204D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100204D88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100204DC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100204E08()
{
  result = qword_1002E2AD0;
  if (!qword_1002E2AD0)
  {
    result = swift_getWitnessTable("qh\a", &unk_1002C1D28, v0, v1);
    atomic_store(result, &qword_1002E2AD0);
  }

  return result;
}

uint64_t sub_100204E5C()
{
  v1 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [*(v0 + *(type metadata accessor for SyncDownSynchronizationRecord(0) + 20)) encodeSystemFieldsWithCoder:v1];
  v2 = [v1 encodedData];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100204EF8()
{
  sub_100099DF4(&qword_1002E2B08, &qword_10024A868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  _s20GlobalSyncStateModelCMa_0(0);
  sub_10003AF38(&qword_1002E28C8, ")j\a");
  sub_10003AF38(&qword_1002E28D0, "y~\a");
  KeyPath = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10003AF7C;
  *(v2 + 24) = KeyPath;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10003AFBC;
  *(v3 + 24) = v2;
  *(inited + 32) = sub_10003B000;
  *(inited + 40) = v3;
  sub_100099DF4(&qword_1002E2B10, &qword_10024A8D0);
  sub_1002052F4();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100205054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100205348(a1, &v11 - v8);
  return (*(v6 + 48))(v9, v5, v6);
}

uint64_t sub_100205188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  sub_100205294(a1, a2, a3);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_100002728(v8, 0, 1, v9);
  return (*(a3 + 48))(v8, a2, a3);
}

uint64_t sub_100205294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100204E5C();
  v5 = *(a3 + 72);

  return v5(v4);
}

unint64_t sub_1002052F4()
{
  result = qword_1002E2B18;
  if (!qword_1002E2B18)
  {
    result = swift_getWitnessTable("1h\a", &unk_1002C1D08, v0, v1);
    atomic_store(result, &qword_1002E2B18);
  }

  return result;
}

uint64_t sub_100205348(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002053BC()
{
  result = qword_1002E2B20;
  if (!qword_1002E2B20)
  {
    result = swift_getWitnessTable("Ij\a", &unk_1002C1190, v0, v1);
    atomic_store(result, &qword_1002E2B20);
  }

  return result;
}

uint64_t sub_100205410()
{
  sub_100099DF4(&qword_1002E2B58, &qword_10024A8F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002381F0;
  _s22PrivateIdentifierModelCMa_0(0);
  sub_1000329DC(&qword_1002E28D8, "1j\a");
  sub_1000329DC(&qword_1002E28E0, ")}\a");
  KeyPath = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10003B258;
  *(v2 + 24) = KeyPath;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10003B094;
  *(v3 + 24) = v2;
  *(inited + 32) = 1;
  *(inited + 40) = sub_10003B0AC;
  *(inited + 48) = v3;
  v4 = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003B0DC;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10003B26C;
  *(v6 + 24) = v5;
  *(inited + 56) = 0;
  *(inited + 64) = sub_10003B244;
  *(inited + 72) = v6;
  v7 = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10003B104;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003B10C;
  *(v9 + 24) = v8;
  *(inited + 80) = 2;
  *(inited + 88) = sub_10003B248;
  *(inited + 96) = v9;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10003B178;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10003B180;
  *(v12 + 24) = v11;
  *(inited + 104) = 3;
  *(inited + 112) = sub_10003B24C;
  *(inited + 120) = v12;
  *(inited + 128) = 4;
  *(inited + 136) = sub_1002060CC;
  *(inited + 144) = 0;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10003B210;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10003B218;
  *(v15 + 24) = v14;
  *(inited + 152) = 5;
  *(inited + 160) = sub_10003B250;
  *(inited + 168) = v15;
  sub_100099DF4(&qword_1002E2B60, qword_10024AA40);
  sub_100202B48();
  return Dictionary.init(dictionaryLiteral:)();
}

double sub_1002057D8@<D0>(uint64_t a4@<X8>)
{
  dispatch thunk of Identifiable.id.getter();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_100205838@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 24))(*(a1 + a2 - 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100205884(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v5 + 32);
  sub_1001D035C(*a1, v6);
  return v8(v7, v6, v4, v5);
}

uint64_t sub_1002058FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 72))(*(a1 + a2 - 24));
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1002059D4(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_100205A24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001E6DFC();
  result = sub_1001E6E08();
  a1[3] = &type metadata for Int64;
  a1[4] = &protocol witness table for Int64;
  *a1 = v2;
  return result;
}

uint64_t sub_100205A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return (*(v6 + 176))(v10, v5, v6);
}

uint64_t sub_100205B6C(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_100205BC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for Date();
  a3[4] = &protocol witness table for Date;
  sub_100007914(a3);
  return a2(a1);
}

uint64_t sub_100205C24()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E68AC();
  v4 = UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100205D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = type metadata accessor for SyncDownIdentifierRecord(0, a7, a11, a12);
  v19 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v43 = a6;
  dispatch thunk of Identifiable.id.getter();
  LOBYTE(v23) = sub_1001EC54C(v19, v21, v23, v25, v47, v48, v49, v50);

  if (v23)
  {
    v38 = v18[13];
    sub_1001CCE80();
    v39 = v27;
    v29 = v28;
    v37 = *(a1 + v18[15]);
    v30 = sub_10003B270();
    WitnessTable = swift_getWitnessTable(v30, v18);
    v32 = sub_100204B24(v18, WitnessTable);
    v34 = v33;
    sub_1001CE75C(a1 + v38, v39, v29 & 1, v37, v32, v33, a1 + v18[12], a1 + v18[16], a2, a3, a4, a5, v43, a7, a8, a9, a10, a11, a12, a13, a14, a15, v37, v38, v39, v15, a12, a11, a2, a10, a8, a7, v43, a5);
    v36 = v35;
    sub_10000D170(v32, v34);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100205F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10003B288(a1, a2, a3, a4, a5, a6, a7);
  v11 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v15 = sub_10003B2BC(v11, v12, v13, v14);
  v23 = sub_10003B2F0(v15, v16, v17, v18, v19, v20, v21, v22, v31, v32, v34, v35, v36, v37, v38, v39);

  if (v23)
  {
    v25 = *(v9 + *(v10 + 60));
    v26 = sub_10003B270();
    WitnessTable = swift_getWitnessTable(v26, v10);
    v28 = sub_100204B24(v10, WitnessTable);
    v30 = v29;
    sub_1001CE61C(v25, v28, v29, v9 + *(v10 + 48), v33, v8, v7);
    return sub_10000D170(v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100206004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10003B288(a1, a2, a3, a4, a5, a6, a7);
  v10 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v14 = sub_10003B2BC(v10, v11, v12, v13);
  v22 = sub_10003B2F0(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46);

  if (v22)
  {
    v24 = sub_10003B270();
    WitnessTable = swift_getWitnessTable(v24, v9);
    v26 = sub_100204B24(v9, WitnessTable);
    v28 = v27;
    sub_1001CE4E8(v26, v27, v35, v8, v7, v29, v30, v31, v33, v35, v37, v39, v41, v43, v45, v47, v48, v49, v50, v51);
    return sub_10000D170(v26, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1002060D4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_10003B4E8(&unk_1002C15A8);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return sub_10003B384;
}

uint64_t sub_100206130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v20 = type metadata accessor for SyncDownIdentifierRecord(0, a13, a14, a15);
  v21 = v20[12];
  type metadata accessor for UUID();
  sub_10000307C();
  (*(v22 + 32))(&a9[v21], a5);
  (*(*(a13 - 8) + 32))(&a9[v20[13]], a6, a13);
  v23 = &a9[v20[14]];
  *v23 = a7;
  v23[8] = a8 & 1;
  *&a9[v20[15]] = a10;
  v24 = v20[16];
  type metadata accessor for Date();
  sub_10000307C();
  result = (*(v25 + 32))(&a9[v24], a11);
  *&a9[v20[17]] = a12;
  return result;
}

uint64_t sub_10020628C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v62 = a4;
  v63 = a5;
  v66 = a2;
  v60 = a6;
  v59 = type metadata accessor for Date();
  sub_10000307C();
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a3;
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v46 - v20;
  v22 = [a1 recordID];
  sub_100202D40(v22, v21);

  if (v6)
  {
  }

  v55 = v21;
  v56 = v15;
  v52 = 0;
  v53 = a1;
  v57 = v17;
  v58 = v14;
  v54 = v11;
  __chkstk_darwin(v23);
  v25 = v61;
  v26 = v62;
  v27 = v63;
  swift_getKeyPath();
  sub_10003B468();
  *&v85[0] = v28;
  type metadata accessor for SyncDownIdentifierRecord(255, v25, v26, v27);
  v29 = type metadata accessor for PartialKeyPath();
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  v65 = v29;
  Dictionary.subscript.getter();

  if (!v84)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1001514B8(&v83, v85);
  v31 = sub_10003B4D0(v82, v85, v30, &type metadata for String);
  v50 = v82[1];
  v51 = v82[0];
  __chkstk_darwin(v31);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v81[0] = v32;
  Dictionary.subscript.getter();

  if (!v80)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001514B8(&v79, v81);
  sub_10003B4D0(v78, v81, v33, &type metadata for String);
  v48 = v78[1];
  v49 = v78[0];
  v34 = (*(v64 + 16))(v57, v55, v56);
  __chkstk_darwin(v34);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v77[0] = v35;
  Dictionary.subscript.getter();

  sub_100099DF4(&qword_1002DFF40, &qword_10024AB00);
  v36 = swift_dynamicCast();
  __chkstk_darwin(v36);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v77[0] = v37;
  Dictionary.subscript.getter();

  v38 = v54;
  if (!v76)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1001514B8(&v75, v77);
  v40 = sub_10003B4D0(&v73, v77, v39, &type metadata for PIKeypairsRotationReason);
  v41 = v73;
  v47 = v74;
  __chkstk_darwin(v40);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v72[0] = v42;
  Dictionary.subscript.getter();

  if (!v71)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1001514B8(&v70, v72);
  v44 = sub_10003B4D0(&v86, v72, v43, &type metadata for UInt64);
  v46 = v86;
  __chkstk_darwin(v44);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v69 = v45;
  Dictionary.subscript.getter();

  if (v68)
  {
    (*(v64 + 8))(v55, v56);

    sub_1001514B8(&v67, &v69);
    swift_dynamicCast();
    return sub_100206130(v51, v50, v49, v48, v57, v58, v41, v47, v60, v46, v38, v53, v25, v26, v27);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100206870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for SyncDownIdentifierRecord(255, a1, a2, a3);
  WitnessTable = swift_getWitnessTable(byte_10024AA78, v3);
  v28 = v3;
  type metadata accessor for InitializableFromCKRecordPropertyValueProvider(255, v3, WitnessTable, v5);
  swift_getTupleTypeMetadata2();
  type metadata accessor for _ContiguousArrayStorage();
  swift_initStackObject();
  static Array._adoptStorage(_:count:)();
  v7 = v6;
  *v6 = 0;
  KeyPath = swift_getKeyPath();
  sub_1002060D4(v3, &type metadata for String, WitnessTable);
  v10 = v9;
  v11 = sub_1002035C0(KeyPath, sub_10003B384, v9, WitnessTable);
  v13 = v12;

  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  v7[24] = 1;
  v14 = swift_getKeyPath();
  v15 = sub_1002035C0(v14, sub_10003B384, v10, WitnessTable);
  v17 = v16;

  *(v7 + 4) = v15;
  *(v7 + 5) = v17;
  v7[48] = 2;
  swift_getKeyPath();
  v18 = sub_10003B4E8(&unk_1002C1530);
  sub_10003B474(v18);
  sub_10003B448();
  sub_10003B490();

  *(v7 + 7) = v15;
  *(v7 + 8) = v17;
  v7[72] = 3;
  swift_getKeyPath();
  v19 = sub_10003B4E8(&unk_1002C1558);
  sub_10003B474(v19);
  sub_10003B448();
  sub_10003B490();

  *(v7 + 10) = v15;
  *(v7 + 11) = v17;
  v7[96] = 4;
  swift_getKeyPath();
  v20 = sub_10003B4E8(&unk_1002C1580);
  sub_10003B474(v20);
  sub_10003B448();
  sub_10003B490();

  *(v7 + 13) = v15;
  *(v7 + 14) = v17;
  v7[120] = 5;
  v21 = swift_getKeyPath();
  v22 = type metadata accessor for Date();
  sub_1002060D4(v28, v22, WitnessTable);
  v24 = sub_1002035C0(v21, sub_10003B384, v23, WitnessTable);
  v26 = v25;

  *(v7 + 16) = v24;
  *(v7 + 17) = v26;
  type metadata accessor for Array();
  sub_100202B48();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100206BB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001512EC(a3, v25);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  if (swift_dynamicCast())
  {
    return (*(a6 + 16))(v23, v24, a4, a6);
  }

  v13 = type metadata accessor for SyncDownIdentifierRecord(255, a4, a5, a6);
  WitnessTable = swift_getWitnessTable(byte_10024AA78, v13);
  v16 = type metadata accessor for MalformedCKRecordError(0, v13, WitnessTable, v15);
  swift_getWitnessTable(byte_10024B2F0, v16);
  swift_allocError();
  v18 = v17;
  sub_10000C4FC(a3, a3[3]);
  DynamicType = swift_getDynamicType();
  v20 = a3[4];
  v25[0] = DynamicType;
  v25[1] = v20;

  sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
  v21 = String.init<A>(describing:)();
  *v18 = a1;
  *(v18 + 8) = a2;
  *(v18 + 16) = v21;
  *(v18 + 24) = v22;
  *(v18 + 48) = 2;
  return swift_willThrow();
}

uint64_t sub_100206D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1001512EC(a3, v26);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  result = swift_dynamicCast();
  if (result)
  {
    *a7 = v25;
    *(a7 + 8) = v25 < 6;
  }

  else
  {
    v15 = type metadata accessor for SyncDownIdentifierRecord(255, a4, a5, a6);
    WitnessTable = swift_getWitnessTable(byte_10024AA78, v15);
    v18 = type metadata accessor for MalformedCKRecordError(0, v15, WitnessTable, v17);
    swift_getWitnessTable(byte_10024B2F0, v18);
    swift_allocError();
    v20 = v19;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v22 = a3[4];
    v26[0] = DynamicType;
    v26[1] = v22;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v23 = String.init<A>(describing:)();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = v23;
    *(v20 + 24) = v24;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100206F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1001512EC(a3, v26);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  result = swift_dynamicCast();
  if (result)
  {
    *a7 = v25;
  }

  else
  {
    v15 = type metadata accessor for SyncDownIdentifierRecord(255, a4, a5, a6);
    WitnessTable = swift_getWitnessTable(byte_10024AA78, v15);
    v18 = type metadata accessor for MalformedCKRecordError(0, v15, WitnessTable, v17);
    swift_getWitnessTable(byte_10024B2F0, v18);
    swift_allocError();
    v20 = v19;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v22 = a3[4];
    v26[0] = DynamicType;
    v26[1] = v22;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v23 = String.init<A>(describing:)();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = v23;
    *(v20 + 24) = v24;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1002070DC(int *a1)
{
  _StringGuts.grow(_:)(142);
  v3._countAndFlagsBits = 60;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v19._countAndFlagsBits = _typeName(_:qualified:)();
  sub_10003B4AC(v19);

  sub_10003B484();
  String.append(_:)(v4);
  String.append(_:)(*v1);
  v5._countAndFlagsBits = 0x7073656D616E202CLL;
  v5._object = 0xEC0000003D656361;
  String.append(_:)(v5);
  String.append(_:)(v1[1]);
  v6._countAndFlagsBits = 0x3D64697575202CLL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  type metadata accessor for UUID();
  sub_10003B3A0(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10003B4AC(v20);

  sub_10003B484();
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10003B484();
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v21._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*(&v1->_countAndFlagsBits + a1[14]), *(&v1->_object + a1[14]));
  sub_10003B4AC(v21);

  sub_10003B484();
  String.append(_:)(v9);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10003B4AC(v22);

  sub_10003B484();
  String.append(_:)(v10);
  type metadata accessor for Date();
  sub_10003B3A0(&qword_1002DBC58, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10003B4AC(v23);

  v11._countAndFlagsBits = 0x6F6365526B63202CLL;
  v11._object = 0xEB000000003D6472;
  String.append(_:)(v11);
  v12 = [*(&v1->_countAndFlagsBits + a1[17]) description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_1002073FC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        result = sub_100207B24();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002074DC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v32 = *(a3 + 16);
  v33 = v5;
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v8 + 80);
  v19 = *(v12 + 80);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v8 + 64) + 23;
  v21 = v19 + 8;
  if (v15 >= a2)
  {
LABEL_31:
    if ((v14 & 0x80000000) != 0)
    {
      v31 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16;
      if (v7 == v15)
      {
        v13 = v7;
        v11 = v33;
      }

      else
      {
        v31 = (v31 + v17 + v18) & ~v18;
        if (v9 == v15)
        {
          v13 = v9;
          v11 = v32;
        }

        else
        {
          v31 = (v21 + ((v20 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
        }
      }

      return sub_100004DFC(v31, v13, v11);
    }

    else
    {
      v30 = *(a1 + 1);
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }
  }

  else
  {
    v22 = ((*(*(v11 - 8) + 64) + ((v21 + ((v20 + ((v17 + ((v16 + 32) & ~v16) + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    result = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v15 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      case 2:
        v27 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_31;
        }

LABEL_28:
        v28 = v27 - 1;
        if ((v22 & 0xFFFFFFF8) != 0)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        result = v15 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1002077D8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v31 = *(a4 + 16);
  v32 = v6;
  v9 = *(v31 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v11 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  v19 = *(v9 + 80);
  v20 = *(v9 + 64) + 23;
  v21 = *(v13 + 80);
  v22 = v21 + 8;
  v23 = ((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v26 = 0;
  }

  else
  {
    if (((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = a3 - v16 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  if (a2 <= v16)
  {
    v29 = ~v21;
    switch(v26)
    {
      case 1:
        *(a1 + v23) = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *(a1 + v23) = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *(a1 + v23) = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if ((v15 & 0x80000000) != 0)
          {
            v30 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 16) & ~v17;
            if (v8 == v16)
            {
              v14 = v8;
              v12 = v32;
            }

            else
            {
              v30 = (v30 + v18 + v19) & ~v19;
              if (v10 == v16)
              {
                v14 = v10;
                v12 = v31;
              }

              else
              {
                v30 = (v22 + ((v20 + v30) & 0xFFFFFFFFFFFFFFF8)) & v29;
              }
            }

            sub_100002728(v30, a2, v14, v12);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a2 - v16;
    }

    else
    {
      v27 = 1;
    }

    if (((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v28 = ~v16 + a2;
      bzero(a1, v23);
      *a1 = v28;
    }

    switch(v26)
    {
      case 1:
        *(a1 + v23) = v27;
        break;
      case 2:
        *(a1 + v23) = v27;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v23) = v27;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_100207B24()
{
  result = qword_1002E1208;
  if (!qword_1002E1208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E1208);
  }

  return result;
}

uint64_t sub_100207B68(NSObject *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (**a9)(void), uint64_t a10, uint64_t a11)
{
  v260 = a6;
  v261 = a7;
  v249 = a5;
  v248 = a4;
  v247 = a3;
  v14 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v14 - 8);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_100008280(&v230[-v16]);
  v236 = type metadata accessor for UUID();
  sub_100003724();
  v234 = v17;
  __chkstk_darwin(v18);
  sub_100008280(&v230[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v243 = type metadata accessor for Date();
  sub_100003724();
  v245 = v20;
  __chkstk_darwin(v21);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v22);
  v24 = sub_100008280(&v230[-v23]);
  v251 = a11;
  v252 = a8;
  v250 = a10;
  v25 = type metadata accessor for SyncDownIdentifierRecord(v24, a8, a10, a11);
  sub_100003724();
  v258 = v26;
  __chkstk_darwin(v27);
  sub_1000037D4();
  v246 = v28;
  __chkstk_darwin(v29);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  v253 = v35;
  __chkstk_darwin(v36);
  v38 = &v230[-v37];
  v39 = a1;
  v40 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v259 = a2;
  v262 = a2;
  v257 = a9;
  dispatch thunk of Identifiable.id.getter();
  v47 = sub_1001EC54C(v40, v42, v44, v46, v263[0], v263[1], v263[2], v263[3]);

  if ((v47 & 1) == 0)
  {
    __break(1u);
LABEL_67:
    v263[0] = v47;
    goto LABEL_69;
  }

  v48 = v258;
  v50 = (v258 + 16);
  v49 = *(v258 + 16);
  v256 = v39;
  v49(v38, v39, v25);
  swift_unknownObjectRetain_n();
  v51 = v260;
  v52 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_10003B684();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v25;
  v56 = v48;
  v254 = v49;
  v255 = v50;
  if (v54)
  {
    v57 = v55;
    v58 = sub_1000328AC();
    v232 = sub_10003B648();
    v263[0] = v232;
    *v58 = 136315394;
    v59 = v253;
    v49(v253, v38, v57);
    v60 = *(v56 + 8);
    v60(v38, v57);
    v231 = v51;
    sub_1002070DC(v57);
    sub_10003B5CC();
    v60(v59, v57);
    v61 = v259;
    sub_10003B57C();
    sub_10003B614();
    *(v58 + 4) = &unk_100247000;
    *(v58 + 12) = 2080;
    v262 = v61;
    v62 = v257;
    v63 = v261;
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10003B5CC();
    swift_unknownObjectRelease_n();
    sub_10003B57C();
    sub_10003B614();
    *(v58 + 14) = &unk_100247000;
    _os_log_impl(&_mh_execute_header, v52, v231, "Comparing %s with %s", v58, 0x16u);
    v64 = v232;
    swift_arrayDestroy();
    sub_1000327B4(v64);
    v65 = v58;
    v55 = v57;
    v66 = v60;
    sub_1000327B4(v65);
  }

  else
  {
    v67 = v259;
    swift_unknownObjectRelease();
    v66 = *(v48 + 8);
    v68 = sub_10003B660();
    v66(v68);
    swift_unknownObjectRelease();

    v62 = v257;
    v63 = v261;
    v61 = v67;
  }

  v69 = v256;
  v70 = *(&v256->isa + v55[15]);
  v71 = v62 + 120;
  v72 = *(v62 + 120);
  v73 = sub_10003B604();
  if (v70 != v72(v73))
  {
    v90 = sub_10003B604();
    if (v72(v90) < v70)
    {
      sub_10003B5BC();
      v91();
      swift_unknownObjectRetain();
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = v66;
        v95 = sub_1000328AC();
        v260 = swift_slowAlloc();
        v263[0] = v260;
        *v95 = 134218242;
        sub_10003B598();
        v96 = sub_10003B678();
        v94(v96);
        sub_10003B5F4();
        v97 = sub_10003B66C();
        (v72)(v97, v257);
        PIGenerationCounter.description.getter();
        sub_10003B5CC();
        swift_unknownObjectRelease();
        sub_10003B57C();
        sub_10003B614();
        *(v95 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v92, v93, "syncDownIdentifierRecord wins because its generation counter %llu is greater than the generation counter of persistedIdentifierRecord (%s", v95, 0x16u);
        v98 = v260;
        sub_100004118(v260);
        sub_1000327B4(v98);
        sub_1000327B4(v95);
      }

      else
      {
        sub_10003B598();
        v136 = sub_10003B678();
        v66(v136);
        swift_unknownObjectRelease();
      }

      return 1;
    }

    v123 = v66;
    v124 = v246;
    sub_10003B5BC();
    v125();
    swift_unknownObjectRetain();
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.info.getter();
    if (sub_10003B62C(v127))
    {
      v259 = v55;
      v128 = v62;
      v129 = sub_1000328AC();
      v130 = swift_slowAlloc();
      v260 = v123;
      v131 = v130;
      v263[0] = v130;
      *v129 = 136315394;
      v132 = sub_10003B66C();
      (v72)(v132, v128);
      PIGenerationCounter.description.getter();
      sub_10003B5CC();
      swift_unknownObjectRelease();
      sub_10003B57C();
      sub_10003B614();
      *(v129 + 4) = v71;
      *(v129 + 12) = 2048;
      v133 = *(v124 + *(v259 + 60));
      sub_10003B598();
      v134(v124);
      *(v129 + 14) = v133;
      _os_log_impl(&_mh_execute_header, v126, v70, "persistedIdentifierRecord wins because its generation counter %s is greater than the generation counter of syncDownIdentifierRecord (%llu", v129, 0x16u);
      sub_100004118(v131);
      v135 = v131;
      v85 = -1;
      sub_1000327B4(v135);
      sub_1000327B4(v129);

      return v85;
    }

    sub_10003B598();
    (v123)(v124, v55);
LABEL_36:
    swift_unknownObjectRelease();

    return -1;
  }

  v74 = v69 + v55[14];
  v75 = *v74;
  v76 = v74[8];
  v77 = sub_10003B604();
  v79 = v78(v77) == 3;
  v81 = v80 & v79;
  if (v76 == 1 && v75 == 3)
  {
    if ((v81 & 1) == 0)
    {
      v137 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_10003B684();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        sub_10003B6B0(&_mh_execute_header, v140, v141, "syncDownIdentifierRecord wins because is a user initiated rotation and persistedIdentifierRecord is not");
        sub_1000327B4(v139);
      }

      return 1;
    }
  }

  else if (v81)
  {
    v83 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10003B684();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = -1;
      v86 = swift_slowAlloc();
      *v86 = 0;
      sub_10003B6B0(&_mh_execute_header, v87, v88, "persistedIdentifierRecord wins because is a user initiated rotation and syncDownIdentifierRecord is not");
      v89 = v86;
LABEL_57:
      sub_1000327B4(v89);

      return v85;
    }

    return -1;
  }

  v99 = sub_1001D0040(v247, v248 & 1, v249);
  v100 = sub_10003B560();
  v107 = sub_100208FF4(v100, v101, v102, v103, v104, v105, v106);
  v47 = v107;
  if (v99)
  {
    if (v107 || (v108 = sub_10003B560(), sub_100209130(v108, v109, v110, v111, v112, v113, v114)))
    {
      v115 = v243;
      (*(v245 + 16))(v244, v249, v243);
      swift_unknownObjectRetain();
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = 7104878;
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v263[0] = v120;
        *v119 = 136315650;
        if (v248)
        {
          v121 = 0xE300000000000000;
          v122 = 7104878;
        }

        else
        {
          v122 = Double.description.getter();
          v121 = v187;
        }

        v188 = sub_100009E5C(v122, v121, v263);

        *(v119 + 4) = v188;
        *(v119 + 12) = 2080;
        v189 = v242;
        v257[33](v261);
        v190 = v189;
        v191 = v239;
        sub_1000A9914(v190, v239);
        if (sub_100004DFC(v191, 1, v115) == 1)
        {
          v192 = 0xE300000000000000;
        }

        else
        {
          v193 = v245;
          v194 = v241;
          (*(v245 + 32))(v241, v191, v115);
          v118 = Date.description.getter();
          v192 = v195;
          (*(v193 + 8))(v194, v115);
        }

        sub_1000ACD3C(v242);
        v196 = sub_100009E5C(v118, v192, v263);

        *(v119 + 14) = v196;
        *(v119 + 22) = 2080;
        sub_10003B548();
        sub_10003B500(v197, v198, &protocol conformance descriptor for Date);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        v199 = sub_10003B678();
        v200(v199);
        sub_10003B57C();
        sub_10003B614();
        *(v119 + 24) = v192;
        _os_log_impl(&_mh_execute_header, v116, v117, "syncDownIdentifierRecord wins because persistedIdentifierRecord is considered stale: stalenessInterval=%s, persistedIdentifierRecord.lastAccessDate=%s, now=%s", v119, 0x20u);
        swift_arrayDestroy();
        sub_1000327B4(v120);
        sub_1000327B4(v119);
      }

      else
      {

        v154 = sub_10003B660();
        v155(v154);
      }

      return 1;
    }

    v151 = v69;
    v152 = v61;
    v153 = v260;
LABEL_53:
    sub_100209308(v151, v152, v153, v63, v252, v62, v250, v251);
    return 0;
  }

  type metadata accessor for ComparisonResult(0);
  if (v47 == -1)
  {
    v156 = v240;
    sub_10003B5BC();
    v157();
    swift_unknownObjectRetain();
    v126 = Logger.logObject.getter();
    v158 = static os_log_type_t.info.getter();
    if (sub_10003B62C(v158))
    {
      v159 = v62;
      v85 = -1;
      v160 = sub_1000328AC();
      v260 = v66;
      v161 = v160;
      v259 = sub_10003B648();
      v263[0] = v259;
      *v161 = 136315394;
      v162 = v241;
      v256 = v126;
      v163 = sub_10003B66C();
      v164(v163, v159);
      sub_10003B548();
      v257 = sub_10003B500(v165, v166, &protocol conformance descriptor for Date);
      v167 = v243;
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10003B690();
      v168 = v245;
      v255 = *(v245 + 8);
      v255(v162, v167);
      sub_10003B5D8();
      sub_10003B6F0();
      sub_10003B5F4();
      v169 = v240;
      (*(v168 + 16))(v162, v240 + v55[16], v167);
      sub_10003B598();
      (v260)(v169, v55);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10003B5CC();
      v255(v162, v167);
      sub_10003B57C();
      sub_10003B614();
      *(v161 + 14) = v159;
      v170 = "persistedIdentifierRecord wins because its synchronizedLastRotationDate %s is earlier than syncDownIdentifierRecord.lastRotationDate (%s)";
LABEL_56:
      v83 = v256;
      _os_log_impl(&_mh_execute_header, v256, v261, v170, v161, 0x16u);
      v214 = v259;
      swift_arrayDestroy();
      sub_1000327B4(v214);
      v89 = v161;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v142 = v260;
  if (v47)
  {
    if (v47 == 1)
    {
      v171 = v238;
      v254(v238, v69, v55);
      swift_unknownObjectRetain_n();
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = sub_1000328AC();
        LODWORD(v259) = v173;
        v175 = v55;
        v176 = v174;
        v260 = sub_10003B648();
        v263[0] = v260;
        *v176 = 136315394;
        v177 = v55[16];
        v178 = v245;
        v179 = v66;
        v180 = v241;
        v181 = v243;
        (*(v245 + 16))(v241, v171 + v177, v243);
        sub_10003B598();
        (v179)(v171, v175);
        sub_10003B548();
        v184 = sub_10003B500(v182, v183, &protocol conformance descriptor for Date);
        v185 = dispatch thunk of CustomStringConvertible.description.getter();
        v186 = *(v178 + 8);
        v186(v180, v181);
        sub_10003B5D8();
        sub_10003B6F0();
        *(v176 + 4) = v185;
        *(v176 + 12) = 2080;
        v257[21](v261);
        swift_unknownObjectRelease();
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        swift_unknownObjectRelease();
        v186(v180, v181);
        sub_10003B57C();
        sub_10003B614();
        *(v176 + 14) = v184;
        _os_log_impl(&_mh_execute_header, v172, v259, "syncDownIdentifierRecord wins because its lastRotationDate %s is earlier than persistedIdentifierRecord.synchronizedLastRotationDate (%s)", v176, 0x16u);
        sub_10003B6D0();
        sub_1000327B4(v184);
        sub_1000327B4(v176);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_10003B598();
        v201 = sub_10003B678();
        v66(v201);
        swift_unknownObjectRelease();
      }

      return 1;
    }

    goto LABEL_67;
  }

  v143 = sub_10003B560();
  v150 = sub_100209130(v143, v144, v145, v146, v147, v148, v149);
  switch(v150)
  {
    case -1:
      v156 = v237;
      sub_10003B5BC();
      v202();
      swift_unknownObjectRetain();
      v126 = Logger.logObject.getter();
      v203 = static os_log_type_t.info.getter();
      if (sub_10003B62C(v203))
      {
        v204 = v62;
        v85 = -1;
        v205 = sub_1000328AC();
        v260 = v66;
        v161 = v205;
        v259 = sub_10003B648();
        v263[0] = v259;
        *v161 = 136315394;
        v206 = v235;
        v256 = v126;
        v207 = sub_10003B66C();
        v208(v207, v204);
        sub_10003B5A4();
        v257 = sub_10003B500(v209, v210, &protocol conformance descriptor for UUID);
        v211 = v236;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B690();
        v212 = v234;
        v255 = *(v234 + 8);
        v255(v206, v211);
        sub_10003B5D8();
        sub_10003B6F0();
        sub_10003B5F4();
        v213 = v237;
        (*(v212 + 16))(v206, v237 + v55[12], v211);
        sub_10003B598();
        (v260)(v213, v55);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        v255(v206, v211);
        sub_10003B57C();
        sub_10003B614();
        *(v161 + 14) = v204;
        v170 = "persistedIdentifierRecord wins because its uuid %s is less than syncDownIdentifierRecord.uuid (%s)";
        goto LABEL_56;
      }

LABEL_58:
      sub_10003B598();
      (v66)(v156, v55);
      goto LABEL_36;
    case 0:
      v151 = v69;
      v152 = v61;
      v153 = v142;
      goto LABEL_53;
    case 1:
      v215 = v66;
      v216 = v233;
      v254(v233, v69, v55);
      swift_unknownObjectRetain_n();
      v217 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_10003B684();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = sub_1000328AC();
        v220 = sub_10003B648();
        LODWORD(v259) = v142;
        v260 = v220;
        v263[0] = v220;
        *v219 = 136315394;
        v221 = v234;
        (*(v234 + 16))(v235, v216 + v55[12], v236);
        sub_10003B598();
        (v215)(v216, v55);
        sub_10003B5A4();
        v224 = sub_10003B500(v222, v223, &protocol conformance descriptor for UUID);
        v225 = dispatch thunk of CustomStringConvertible.description.getter();
        v226 = *(v221 + 8);
        v227 = sub_10003B660();
        v226(v227);
        sub_10003B5D8();
        sub_10003B6F0();
        *(v219 + 4) = v225;
        *(v219 + 12) = 2080;
        v257[18](v261);
        swift_unknownObjectRelease();
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        swift_unknownObjectRelease();
        v228 = sub_10003B660();
        v226(v228);
        sub_10003B57C();
        sub_10003B614();
        *(v219 + 14) = v224;
        _os_log_impl(&_mh_execute_header, v217, v259, "syncDownIdentifierRecord wins because its uuid %s is less than persistedIdentifierRecord.uuid (%s)", v219, 0x16u);
        sub_10003B6D0();
        sub_1000327B4(v224);
        sub_1000327B4(v219);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_10003B598();
        (v66)(v216, v55);
        swift_unknownObjectRelease();
      }

      return 1;
  }

  v263[0] = v150;
LABEL_69:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100208FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncDownIdentifierRecord(0, a4, a6, a7);
  (*(a5 + 168))(a3, a5);
  v16 = Date.compare(_:)();
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t sub_100209130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncDownIdentifierRecord(0, a4, a6, a7);
  v17 = *(a5 + 144);
  v21[0] = a3;
  v17(a3, a5);
  v21[1] = a1;
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v18 = *(v14 + 8);
  v18(v16, v13);
  result = 0;
  if ((a1 & 1) == 0)
  {
    v17(v21[0], a5);
    sub_10003B500(&qword_1002E1958, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of static Comparable.> infix(_:_:)();
    v18(v16, v13);
    if (v20)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_100209308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "syncDownIdentifierRecord and persistedIdentifierRecord are considered equal", v16, 2u);
  }

  v17 = type metadata accessor for SyncDownIdentifierRecord(0, a5, a7, a8);
  v18 = (*(a8 + 24))(a5, a8);
  v20 = v19;
  v22 = (*(a6 + 24))(a4, a6);
  v23 = v21;
  if (v20 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      sub_10009A7A0(v18, v20);
      goto LABEL_11;
    }
  }

  else if (v21 >> 60 != 15)
  {
    sub_10000FF98(v18, v20);
    sub_1001D035C(v22, v23);
    v33 = static Data.== infix(_:_:)();
    sub_10009A7A0(v22, v23);
    sub_10000D170(v18, v20);
    sub_10009A7A0(v22, v23);
    sub_10009A7A0(v18, v20);
    if (v33)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_10009A7A0(v18, v20);
  sub_10009A7A0(v22, v23);
LABEL_8:
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "syncDownIdentifierRecord and persistedIdentifierRecord are considered equal, but have different account keypairs!", v26, 2u);
  }

LABEL_11:
  v27 = a1 + *(v17 + 56);
  v28 = *v27;
  v29 = *(v27 + 8);
  (*(a6 + 72))(a4, a6);
  sub_1001CCE80();
  if (!sub_1001C3048(v28, v29, v30))
  {
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v31, "syncDownIdentifierRecord and persistedIdentifierRecord are considered equal, but have different rotation reasons!", v32, 2u);
    }
  }
}

uint64_t sub_100209668(void *a1)
{
  v2 = CKRecord.recordType.getter();
  if (v2 == 0x6E6F7268636E7953 && v3 == 0xEF6E6F6974617A69)
  {
  }

  else
  {
    v5 = sub_10003B85C(v2);

    result = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v7 = [a1 recordID];
  v8 = [v7 recordName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == 0x6E6F7268636E7953 && v11 == 0xEF6E6F6974617A69)
  {

    return 1;
  }

  else
  {
    v13 = sub_10003B85C(v9);

    return v13 & 1;
  }
}

uint64_t sub_100209770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (*(a2 + 16) && (v7 = sub_1001CC2C8(KeyPath), (v8 & 1) != 0))
  {
    sub_100009F20(*(a2 + 56) + 32 * v7, v10);

    sub_1001514B8(v10, &v11);
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    type metadata accessor for UUID();
    swift_dynamicCast();
    result = type metadata accessor for SyncDownSynchronizationRecord(0);
    *(a3 + *(result + 20)) = a1;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10020984C()
{
  sub_100099DF4(&qword_1002E2C58, &unk_10024AC20);
  sub_1002052F4();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1002098AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  sub_1001512EC(a3, v25);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    v16 = sub_100204CE8();
    sub_10003B87C(v16);
    v18 = v17;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v20 = a3[4];
    v25[0] = DynamicType;
    v25[1] = v20;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v21 = String.init<A>(describing:)();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = v21;
    *(v18 + 24) = v22;
    *(v18 + 48) = 2;
    return swift_willThrow();
  }

  v12 = v24[1];
  v11 = v24[2];
  UUID.init(uuidString:)();
  v13 = type metadata accessor for UUID();
  if (sub_100004DFC(v10, 1, v13) == 1)
  {
    sub_100202EAC(v10);
    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    v14 = sub_100204CE8();
    sub_10003B87C(v14);
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 40) = &type metadata for String;
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    *(v15 + 48) = 3;

    return swift_willThrow();
  }

  return (*(*(v13 - 8) + 32))(a4, v10, v13);
}

unint64_t sub_100209B24()
{
  _StringGuts.grow(_:)(25);

  type metadata accessor for UUID();
  sub_100209C98();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6F6365526B63202CLL;
  v2._object = 0xEB000000003D6472;
  String.append(_:)(v2);
  v3 = [*(v0 + *(type metadata accessor for SyncDownSynchronizationRecord(0) + 20)) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000024;
}

uint64_t type metadata accessor for SyncDownSynchronizationRecord(uint64_t a1)
{
  result = qword_1002E2CB8;
  if (!qword_1002E2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100209C98()
{
  result = qword_1002E27E0;
  if (!qword_1002E27E0)
  {
    v3 = type metadata accessor for UUID();
    result = swift_getWitnessTable(&protocol conformance descriptor for UUID, v3, v0, v1);
    atomic_store(result, &qword_1002E27E0);
  }

  return result;
}

unint64_t sub_100209D18(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_100207B24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100209DE4()
{
  v0 = sub_100209E28();
  v1 = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();

  return v1;
}

uint64_t sub_100209E34()
{

  return v0;
}

uint64_t sub_100209E5C()
{
  sub_100209E34();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100209EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100209EF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100209F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100209FAC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[4] = a2;
  return sub_100217C68(sub_10003B89C, v3, &type metadata for ()[1]);
}

uint64_t sub_10020A02C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSyncEngine.Event.AccountChange.changeType.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = v9;
    if (v9 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
    {
      (*(v6 + 8))(v8, v5);
      sub_100209FF8(a1);
      return sub_100004118(a1);
    }

    v11 = enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:);
    (*(v6 + 8))(v8, v5);
    if (v10 != v11)
    {
      return sub_100004118(a1);
    }

    sub_100209FF8(a1);
  }

  sub_10020A60C(a1);
  return sub_100004118(a1);
}

uint64_t sub_10020A1EC(uint64_t a1, void *a2)
{
  sub_100099DF4(&qword_1002E1200, &qword_100247438);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  sub_100003724();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10022E400;
  sub_1001FE8E4();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = a2;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  *(v7 + v6) = CKRecordID.init(recordName:zoneID:)(v12, v11);
  (*(v5 + 104))(v7 + v6, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v3);
  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v7);
}

uint64_t sub_10020A334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = StaticString.description.getter();
    v11 = sub_100009E5C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Attempting to reset all local sync state", v7, 0xCu);
    sub_100004118(v8);
    sub_100031B34();

    sub_100031B34();
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_10000C4FC(a1, v12);
  return sub_1001DD1E8(v12, v13);
}

uint64_t sub_10020A60C(void *a1)
{
  v3 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    sub_10003B91C(&_mh_execute_header, v7, v8, "Attempting to schedule sending all sync-eligible persisted records to the cloud");
    sub_100031B34();
  }

  v9 = a1[3];
  v10 = a1[4];
  sub_10000C4FC(a1, v9);
  (*(v10 + 88))(v22, v9, v10);
  if (v2)
  {
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to schedule sending all sync-eligible persisted records to the cloud: %@", v13, 0xCu);
      sub_1001A7228(v14);
      sub_100031B34();

      sub_100031B34();
    }

    return swift_willThrow();
  }

  else
  {
    v17 = v23;
    v18 = v24;
    sub_10000C4FC(v22, v23);
    v19 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v21 = sub_10020148C(sub_10003B8BC, v3, v17, v19, &type metadata for Never, v18, &protocol witness table for Never, v20);
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v21);

    return sub_100004118(v22);
  }
}

uint64_t sub_10020A84C@<X0>(void *a1@<X1>, CKRecordID *a2@<X8>)
{
  swift_getWitnessTable(byte_10024AFC0, *a1);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[7];
  sub_1001FE8E4();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v8 = v4;
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  a2->super.isa = CKRecordID.init(recordName:zoneID:)(v9, v8).super.isa;
  v10 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v11 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

uint64_t sub_10020A9E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v6 = a4;
  return sub_100217C68(sub_10003B8DC, v5, &type metadata for ()[1]);
}

uint64_t sub_10020AAFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    sub_10003B91C(&_mh_execute_header, v8, v9, "Handling identity loss by marking the CKRecordZone for deletion and re-sending all local sync-eligible persisted records");
    sub_100031B34();
  }

  sub_100099DF4(&qword_1002E2DF0, &qword_10024AD78);
  v10 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  sub_100003724();
  v12 = v11;
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10022E400;
  v15 = *(v3 + 56);
  *(v14 + v13) = v15;
  (*(v12 + 104))(v14 + v13, enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v10);
  v16 = v15;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v14);

  return sub_10020A990(a1, a2, "Handling identity loss", 22, 2);
}

uint64_t sub_10020AD60(uint64_t a1)
{
  sub_1002052F4();
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v9;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_8:
        v6 &= v6 - 1;
        result = sub_100210EA8();
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10020AE38(uint64_t a1)
{
  sub_1002052F4();
  v2 = Set.init(minimumCapacity:)();
  v6 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    do
    {
      sub_100210EA8();
      --v3;
    }

    while (v3);

    return v6;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

Swift::Int sub_10020AEC0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_12:
    v7 &= v7 - 1;
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10020AFD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3;
  if (sub_100209668(a1))
  {
    v2 = sub_100099DF4(&qword_1002E2C58, &unk_10024AC20);
    sub_1002052F4();
    sub_10003C0F4();
    v11 = Dictionary.init(dictionaryLiteral:)();
    v4 = sub_10020AD60(v11);
    v6 = _swiftEmptyArrayStorage;
    v80 = _swiftEmptyArrayStorage;
    sub_1001CC60C(0, 1, 0);
    v12 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    v5 = v13 + 1;
    if (v13 < v10 >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v68 = sub_10003C0E8(v10);
  sub_1001CC60C(v68, v5, 1);
  v12 = v80;
LABEL_3:
  v12[2] = v5;
  v14 = sub_10020AE38(v12);
  v15 = sub_10020AEC0(v4, v14);

  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    v69 = sub_10003C0E8(v16);
    sub_1001CC5EC(v69, v15, 1);
    v6 = *&v74[0];
    goto LABEL_10;
  }

  *&v74[0] = v6;
  sub_1001CC5EC(0, 1, 0);
  sub_10003C0F4();
  v17 = Dictionary.init(dictionaryLiteral:)();
  if (!*(v17 + 16) || (v18 = sub_1001CC3E4(), (v19 & 1) == 0))
  {

    __break(1u);
    return;
  }

  v20 = *(*(v17 + 56) + 16 * v18);

  [a1 encryptedValues];
  v72 = a2;
  v85 = a1;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v21 = v20(v81, 1684632949, 0xE400000000000000, &v76);
  if (v3)
  {
    LOBYTE(a2) = 1;
    LOBYTE(v80) = 1;
  }

  else
  {
    v7 = v21;
    LOBYTE(a2) = 0;
    v82 = 0;
    v83 = v81[0];
    v84 = v81[1];
  }

  swift_unknownObjectRelease();
  sub_10003CD48(&v76, &qword_1002E2A30, &qword_10024A758);
  v2 = v6[2];
  v16 = v6[3];
  v15 = v2 + 1;
  if (v2 >= v16 >> 1)
  {
    goto LABEL_34;
  }

LABEL_10:
  v22 = v6 + 4;
  v70 = v2;
  v23 = &v6[8 * v2 + 4];
  v24 = v84;
  *(v23 + 24) = v83;
  v6[2] = v15;
  v25 = _swiftEmptyArrayStorage;
  v26 = &qword_1002E1218;
  *v23 = 1684632949;
  *(v23 + 8) = 0xE400000000000000;
  *(v23 + 16) = v7;
  *(v23 + 40) = v24;
  *(v23 + 56) = a2;
  v71 = v22;
  do
  {
    sub_10003C0F4();
    sub_100012C2C(v27, v28, v29, v30);
    sub_10003C0F4();
    sub_100012C2C(v31, v32, v33, v34);

    if (v79)
    {
      v35 = v26;
      v36 = v77;
      sub_10003C0A4();
      v37 = v76;
      sub_10003CD48(&v77, &qword_1002E2E48, &qword_10024ADC0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_10000657C();
        sub_1001DEF84(v41, v42, v43, v25);
        v25 = v44;
      }

      v39 = v25[2];
      v38 = v25[3];
      if (v39 >= v38 >> 1)
      {
        v45 = sub_10003C0E8(v38);
        sub_1001DEF84(v45, v39 + 1, 1, v25);
        v25 = v46;
      }

      v25[2] = v39 + 1;
      v40 = &v25[3 * v39];
      *(v40 + 2) = v37;
      v40[6] = v36;
      v26 = v35;
    }

    else
    {
      sub_10003CD48(&v80, v26, &qword_100247448);
      sub_10003CD48(&v77, &qword_1002E2E48, &qword_10024ADC0);
    }

    v22 += 8;
    --v15;
  }

  while (v15);
  sub_10003C08C();
  v50 = sub_10003BC64(v25, v47, v48, v49);
  if (v50[2])
  {

    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    sub_1000326A8(qword_1002E2A48, &qword_1002E2A40, &qword_10024A7C8, byte_10024B2F0);
    swift_allocError();
    *v51 = v50;
    *(v51 + 48) = 0;
    swift_willThrow();
  }

  else
  {

    v52 = _swiftEmptyArrayStorage;
    v53 = v71;
    v54 = v70 + 1;
    do
    {
      sub_100012C2C(v53, &v80, &qword_1002E1218, &qword_100247448);
      sub_10003C0A4();

      if (v79 == 1)
      {
        sub_10003CD48(&v77, &qword_1002E2E48, &qword_10024ADC0);
      }

      else
      {
        v55 = v77;
        sub_1001514B8((&v77 + 8), v73);
        *&v74[0] = v55;
        sub_1001514B8(v73, (v74 + 8));
        v76 = v74[0];
        v77 = v74[1];
        v78 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_10000657C();
          sub_1001DEE88(v61, v62, v63, v52);
          v52 = v64;
        }

        v57 = v52[2];
        v56 = v52[3];
        if (v57 >= v56 >> 1)
        {
          v65 = sub_10003C0E8(v56);
          sub_1001DEE88(v65, v57 + 1, 1, v52);
          v52 = v66;
        }

        v52[2] = v57 + 1;
        v58 = &v52[5 * v57];
        v59 = v76;
        v60 = v77;
        v58[8] = v78;
        *(v58 + 2) = v59;
        *(v58 + 3) = v60;
      }

      v53 += 64;
      --v54;
    }

    while (v54);

    v67 = sub_10003BC64(v52, &qword_1002E2E50, &qword_10024ADC8, sub_100211F88);
    sub_100209770(v85, v67, v72);
  }
}

uint64_t sub_10020B684(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D4();
  v37 = v7;
  __chkstk_darwin(v8);
  v10 = &v34[-v9];
  __chkstk_darwin(v11);
  v38 = &v34[-v12];
  v13 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
  v14 = 0;
  v15 = *(v13 + 16);
  v40 = v5 + 8;
  while (1)
  {
    if (v15 == v14)
    {
    }

    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_13:

      v32 = sub_10003C114();
      result = v33(v32);
      __break(1u);
      return result;
    }

    v16 = *(v5 + 16);
    v16(v10, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v3);
    v17 = sub_10020BA08(v10, v41);
    if (v2)
    {
      goto LABEL_13;
    }

    if (v17)
    {
      break;
    }

    v18 = sub_10003C114();
    v19(v18);
    ++v14;
  }

  v21 = v38;
  (*(v5 + 32))(v38, v10, v3);
  v16(v37, v21, v3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v24 = 136315138;
    sub_10003C044(&qword_1002E2DF8, &type metadata accessor for CKDatabase.DatabaseChange.Deletion, &protocol conformance descriptor for CKDatabase.DatabaseChange.Deletion);
    v35 = v23;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = sub_10003C0D4();
    v10(v28);
    v29 = sub_100009E5C(v25, v27, &v42);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v35, "Fetched deletion of CKRecordZone %s, resetting local sync state and re-adding all sync-eligible persisted records", v24, 0xCu);
    v30 = v36;
    sub_100004118(v36);
    sub_1000327B4(v30);
    sub_1000327B4(v24);
  }

  else
  {

    v31 = sub_10003C0D4();
    v10(v31);
  }

  sub_10020A9E0(v39, "Handling CKRecordZone deletion", 30, 2);
  return (v10)(v21, v3);
}

uint64_t sub_10020BA08(uint64_t a1, void *a2)
{
  swift_getWitnessTable(byte_10024AFC0, *a2);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
  v2 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
  v3 = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_10020BB08(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[4] = a2;
  v3 = sub_100099DF4(&qword_1002E2E08, &qword_10024AD88);
  result = sub_100217C68(sub_10003BD18, v5, v3);
  if (!v2 && v6 == 1)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10020BB98@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v86 = a4;
  v82 = a5;
  v8 = type metadata accessor for Date();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v74 - v15;
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v19 = *(CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter() + 16);

  v85 = v10;
  v87 = v11;
  v78 = a3;
  v83 = a2;
  if (v19)
  {
    (*(v12 + 16))(v18, a2, v11);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88 = v23;
      *v22 = 136315138;
      CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
      type metadata accessor for CKDatabase.RecordZoneChange.Modification();
      v24 = Array.description.getter();
      v75 = a1;
      v25 = v24;
      v27 = v26;

      (*(v12 + 8))(v18, v87);
      v28 = v25;
      a1 = v75;
      v29 = sub_100009E5C(v28, v27, &v88);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Fetched CKRecord modifications: %s", v22, 0xCu);
      sub_100004118(v23);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }

    v10 = v85;
    a3 = v78;
    a2 = v83;
  }

  v84 = v12;
  static Date.now.getter();
  v30 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  __chkstk_darwin(v30);
  *(&v74 - 4) = a3;
  *(&v74 - 3) = a1;
  v31 = v86;
  *(&v74 - 2) = v10;
  *(&v74 - 1) = v31;
  v32 = v79;
  v33 = sub_10003BAD0(sub_10003BD38, (&v74 - 6), v30, &type metadata accessor for CKDatabase.RecordZoneChange.Modification, sub_1001DEE64);
  v34 = v32;

  v79 = sub_10003BC64(v33, &qword_1002E2E28, &qword_10024ADA0, sub_100211B64);
  v35 = a2;
  v36 = *(CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter() + 16);

  v37 = a3;
  if (v36)
  {
    v75 = v32;
    v38 = v84;
    v39 = v76;
    v40 = v87;
    (*(v84 + 16))(v76, v35, v87);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v88 = v44;
      *v43 = 136315138;
      CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
      type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
      v45 = Array.description.getter();
      v46 = a1;
      v48 = v47;

      (*(v84 + 8))(v39, v87);
      v49 = sub_100009E5C(v45, v48, &v88);
      a1 = v46;

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Fetched CKRecord deletions: %s", v43, 0xCu);
      sub_100004118(v44);
      v37 = v78;
    }

    else
    {

      (*(v38 + 8))(v39, v40);
    }

    v10 = v85;
    v35 = v83;
    v34 = v75;
  }

  v50 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  __chkstk_darwin(v50);
  *(&v74 - 4) = v37;
  *(&v74 - 3) = a1;
  *(&v74 - 2) = v86;
  *(&v74 - 1) = v10;
  v51 = v34;
  v52 = sub_10003BAD0(sub_10003BD58, (&v74 - 6), v50, &type metadata accessor for CKDatabase.RecordZoneChange.Deletion, sub_1001DEE40);

  v53 = sub_10003BC64(v52, &qword_1002E2E18, &qword_10024AD90, sub_100211864);
  v54 = *(CKSyncEngine.Event.FetchedRecordZoneChanges.zoneAttributesModifications.getter() + 16);

  if (v54)
  {
    v86 = v53;
    v55 = v84;
    v56 = v77;
    v57 = v87;
    (*(v84 + 16))(v77, v35, v87);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v88 = v78;
      *v60 = 136315138;
      CKSyncEngine.Event.FetchedRecordZoneChanges.zoneAttributesModifications.getter();
      type metadata accessor for CKDatabase.RecordZoneChange.ZoneAttributesModification();
      v61 = a1;
      v62 = Array.description.getter();
      v83 = v51;
      v64 = v63;

      (*(v55 + 8))(v56, v87);
      v65 = v62;
      a1 = v61;
      v66 = sub_100009E5C(v65, v64, &v88);

      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Fetched CKRecordZone attribute modifications: %s", v60, 0xCu);
      sub_100004118(v78);
    }

    else
    {

      (*(v55 + 8))(v56, v57);
    }

    v10 = v85;
    v53 = v86;
  }

  v67 = v79;
  if (v79[2] || v53[2])
  {
    sub_1002108F4();
    v68 = swift_allocError();
    *v69 = v67;
    *(v69 + 8) = v53;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 16) = 0;
    v70 = 1;
    *(v69 + 40) = 0;
  }

  else
  {

    v68 = 0;
    v70 = 0;
  }

  v71 = v81;
  v72 = v82;
  *v82 = v68;
  *(v72 + 8) = v70;
  (*(v80 + 8))(v10, v71);
  return sub_100004118(a1);
}

void sub_10020C418(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = *a2;
  v14 = *(*a2 + 6);
  v19[0] = *(*a2 + 5);
  v19[1] = v14;
  v15 = *(v13 + 8);
  v19[2] = *(v13 + 7);
  v19[3] = v15;
  v16 = *(v13 + 10);
  v19[4] = *(v13 + 9);
  v19[5] = v16;
  v19[6] = *(v13 + 11);
  v17 = _s18SyncEngineDelegateCMa(0, v19);
  swift_getWitnessTable(byte_10024AFC0, v17);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = objc_autoreleasePoolPush();
  sub_10020C574(a1, a2, a3, a4, a5, v19);
  objc_autoreleasePoolPop(v18);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a6 = v19[0];
  }
}

void sub_10020C574(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t *a6@<X8>)
{
  v299 = a5;
  *&v310 = a4;
  *&v314 = a3;
  v319 = a6;
  v307 = *a2;
  v8 = v307;
  v322 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v320 = *(v322 - 8);
  __chkstk_darwin(v322);
  *&v311 = &v285 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v317 = &v285 - v11;
  __chkstk_darwin(v12);
  v318 = &v285 - v13;
  __chkstk_darwin(v14);
  v16 = &v285 - v15;
  v17 = type metadata accessor for SyncDownSynchronizationRecord(0);
  __chkstk_darwin(v17 - 8);
  *&v309 = &v285 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  *&v313 = &v285 - v20;
  __chkstk_darwin(v21);
  *&v312 = &v285 - v22;
  v302 = type metadata accessor for UUID();
  *&v301 = *(v302 - 1);
  __chkstk_darwin(v302);
  v300 = &v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8[15];
  v25 = v8[16];
  v306 = v8[10];
  v305 = v24;
  v304 = v25;
  v26 = type metadata accessor for SyncDownIdentifierRecord(0, v306, v24, v25);
  v316 = *(v26 - 8);
  __chkstk_darwin(v26);
  v303 = (&v285 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v298 = &v285 - v29;
  __chkstk_darwin(v30);
  v308 = &v285 - v31;
  __chkstk_darwin(v32);
  v34 = &v285 - v33;
  __chkstk_darwin(v35);
  v37 = &v285 - v36;
  __chkstk_darwin(v38);
  v315 = (&v285 - v39);
  v40 = CKDatabase.RecordZoneChange.Modification.record.getter();
  WitnessTable = swift_getWitnessTable(byte_10024AA78, v26);
  *&v321 = v26;
  LOBYTE(v8) = sub_100203908(v40, v26, WitnessTable);

  v324 = a1;
  if ((v8 & 1) == 0)
  {
    v62 = CKDatabase.RecordZoneChange.Modification.record.getter();
    v63 = sub_100209668(v62);

    if (v63)
    {
      v323 = a2;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v322;
      v68 = v320;
      v69 = v325;
      if (v66)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Fetched synchronization CKRecord", v70, 2u);
      }

      v71 = v324;
      v72 = CKDatabase.RecordZoneChange.Modification.record.getter();
      v73 = v313;
      sub_10020AFD4(v72, v313);
      v325 = v69;
      if (v69)
      {
        v51 = v68;
        v74 = v311;
        (*(v68 + 16))(v311, v71, v67);
        swift_errorRetain();
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412546;
          v79 = CKDatabase.RecordZoneChange.Modification.record.getter();
          (*(v68 + 8))(v74, v67);
          *(v77 + 4) = v79;
          *v78 = v79;
          *(v77 + 12) = 2112;
          swift_errorRetain();
          v80 = _swift_stdlib_bridgeErrorToNSError();
          *(v77 + 14) = v80;
          v78[1] = v80;
          _os_log_impl(&_mh_execute_header, v75, v76, "Failed to create SyncDownSynchronizationRecord instance from CKRecord %@: %@", v77, 0x16u);
          sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
          swift_arrayDestroy();
          v51 = v68;

          v71 = v324;
        }

        else
        {

          (*(v68 + 8))(v74, v67);
        }

        swift_willThrow();
        v102 = v318;
        goto LABEL_53;
      }

      v103 = v73;
      v104 = v312;
      sub_100211E64(v103, v312);
      v105 = v104;
      v106 = v309;
      sub_100211EC8(v105, v309);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = v106;
        v110 = v67;
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        p_isa = v112;
        *v111 = 136315138;
        v113 = sub_100209B24();
        v115 = v114;
        sub_100211F2C(v109);
        v116 = sub_100009E5C(v113, v115, &p_isa);

        *(v111 + 4) = v116;
        _os_log_impl(&_mh_execute_header, v107, v108, "syncDownSynchronizationRecord=%s", v111, 0xCu);
        sub_100004118(v112);

        v67 = v110;
        v51 = v320;

        v117 = v314;
      }

      else
      {

        sub_100211F2C(v106);
        v117 = v314;
        v51 = v68;
      }

      v142 = v117[3];
      v143 = v117[4];
      sub_10000C4FC(v117, v142);
      v144 = v325;
      (*(v143 + 56))(v142, v143);
      if (v144)
      {
        sub_100211F2C(v312);
        v325 = v144;
        v102 = v318;
        goto LABEL_52;
      }

      v145 = v312;
      sub_100205188(v312, v307[12], v307[20]);
      swift_unknownObjectRelease();
      sub_100211F2C(v145);
    }

    else
    {
      v81 = v320;
      v82 = v322;
      (*(v320 + 16))(v16, a1, v322);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        v87 = CKDatabase.RecordZoneChange.Modification.record.getter();
        (*(v81 + 8))(v16, v82);
        *(v85 + 4) = v87;
        *v86 = v87;
        _os_log_impl(&_mh_execute_header, v83, v84, "fetched modification of an unknown CKRecord %@, ignoring", v85, 0xCu);
        sub_10003CD48(v86, &qword_1002E2700, &unk_1002474D0);
      }

      else
      {

        (*(v81 + 8))(v16, v82);
      }
    }

LABEL_34:
    v146 = v319;
LABEL_35:
    *v146 = 0;
    v146[1] = 0;
    return;
  }

  v42 = qword_100310708;
  v323 = a2;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Fetched identifier CKRecord", v45, 2u);
  }

  v46 = v324;
  v47 = CKDatabase.RecordZoneChange.Modification.record.getter();
  v48 = v321;
  v49 = v325;
  sub_1002039F8(v47, v321, WitnessTable, v37);
  v325 = v49;
  v50 = v317;
  if (v49)
  {
    v51 = v320;
    v52 = v322;
    (*(v320 + 16))(v317, v46, v322);
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v51;
      v57 = swift_slowAlloc();
      *v55 = 138412546;
      v58 = CKDatabase.RecordZoneChange.Modification.record.getter();
      v59 = v50;
      v60 = v52;
      (*(v56 + 8))(v59, v52);
      *(v55 + 4) = v58;
      *v57 = v58;
      *(v55 + 12) = 2112;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v61;
      v57[1] = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to create SyncDownIdentifierRecord instance from CKRecord %@: %@", v55, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
      v51 = v56;
    }

    else
    {

      v101 = v50;
      v60 = v52;
      (*(v51 + 8))(v101, v52);
    }

    v102 = v318;
    swift_willThrow();
    v71 = v324;
    v67 = v60;
    goto LABEL_53;
  }

  v88 = v316;
  v89 = v315;
  (*(v316 + 32))(v315, v37, v48);
  v90 = *(v88 + 16);
  v90(v34, v89, v48);
  *&v313 = v42;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  v93 = os_log_type_enabled(v91, v92);
  *&v312 = v88 + 16;
  *&v311 = v90;
  if (v93)
  {
    v94 = swift_slowAlloc();
    *&v309 = swift_slowAlloc();
    p_isa = v309;
    *v94 = 136315138;
    v95 = v308;
    v90(v308, v34, v321);
    v96 = *(v88 + 8);
    (v96)(v34, v321);
    v97 = sub_1002070DC(v321);
    v99 = v98;
    v317 = v96;
    (v96)(v95, v321);
    v89 = v315;
    v100 = sub_100009E5C(v97, v99, &p_isa);

    *(v94 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v91, v92, "syncDownIdentifierRecord=%s", v94, 0xCu);
    sub_100004118(v309);

    v48 = v321;
  }

  else
  {
    v317 = *(v88 + 8);
    (v317)(v34, v48);
  }

  v118 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v119 = v89;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v126 = *(v314 + 24);
  v127 = *(v314 + 32);
  sub_10000C4FC(v314, v126);
  v128 = v325;
  v129 = (*(v127 + 64))(v118, v121, v123, v125, v126, v127);
  v71 = v324;
  v325 = v128;
  if (!v128)
  {
    v130 = v129;
    v295 = v118;
    v296 = v123;
    v308 = v125;
    *&v309 = v121;
    if (v129)
    {
      swift_unknownObjectRetain();
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        p_isa = v303;
        *v133 = 136315138;
        v326 = v130;
        v134 = v307;
        v135 = v307[13];
        v291 = v307[22];
        v136 = dispatch thunk of CustomStringConvertible.description.getter();
        v138 = v137;
        swift_unknownObjectRelease();
        v139 = sub_100009E5C(v136, v138, &p_isa);

        *(v133 + 4) = v139;
        v140 = v130;
        _os_log_impl(&_mh_execute_header, v131, v132, "Found existing identifier record for fetched CKRecord: %s", v133, 0xCu);
        sub_100004118(v303);

        v141 = v291;
      }

      else
      {
        swift_unknownObjectRelease();

        v140 = v130;
        v134 = v307;
        v135 = v307[13];
        v141 = v307[22];
      }

      v170 = v306;
      v171 = v134[11];
      v303 = v134[14];
      v172 = v134[17];
      v294 = v134[18];
      v293 = v134[23];
      v173 = v304;
      v174 = v305;
      v297 = v140;
      v175 = sub_1001CFDE8(1, 1, (v323 + v313), v310, v306, v171, v135, v306, v171, v303, v141, v305, v304, v172, v294, v293);
      v307 = v135;
      v292 = &v285;
      p_isa = v175;
      __chkstk_darwin(v175);
      *(&v285 - 16) = v170;
      *(&v285 - 15) = v171;
      v290 = v171;
      v177 = v176;
      *(&v285 - 14) = v134[12];
      *(&v285 - 13) = v178;
      *(&v285 - 12) = v303;
      *(&v285 - 11) = v174;
      v179 = v293;
      *(&v285 - 10) = v173;
      *(&v285 - 9) = v172;
      v289 = v172;
      v279 = v294;
      v180 = v141;
      v280 = *(v134 + 19);
      v181 = v134[21];
      v281 = v181;
      v282 = v141;
      v283 = v179;
      v284 = v314;
      v182 = type metadata accessor for Array();

      swift_getWitnessTable(&protocol conformance descriptor for [A], v182);
      v183 = v325;
      Sequence.forEach(_:)();
      if (v183)
      {
        swift_unknownObjectRelease();

        (v317)(v315, v321);
        v325 = v183;
        v71 = v324;
        v102 = v318;
        v67 = v322;
LABEL_41:
        v51 = v320;
        goto LABEL_53;
      }

      v288 = v181;
      v325 = 0;

      v184 = v315;
      v185 = v310;
      v186 = sub_100207B68(v315, v297, v323[8], *(v323 + 72), v310, (v323 + v313), v307, v306, v180, v305, v304);
      type metadata accessor for ComparisonResult(0);
      v187 = v186 == -1 || v186 == 1;
      v188 = v180;
      if (!v187)
      {
        v266 = v321;
        if (!v186)
        {

          v267 = Logger.logObject.getter();
          v268 = static os_log_type_t.info.getter();
          v269 = os_log_type_enabled(v267, v268);
          v270 = v315;
          if (v269)
          {
            v271 = swift_slowAlloc();
            *v271 = 0;
            _os_log_impl(&_mh_execute_header, v267, v268, "Cloud version of fetched identifier record is equivalent to the local version of the record, adopting CKRecord system fields locally and not performing conflict resolution", v271, 2u);
          }

          sub_100206004(v270, v185, v307, v306, v188, v305, v304);
          swift_unknownObjectRelease();
          (v317)(v270, v266);
          goto LABEL_34;
        }

LABEL_80:
        p_isa = &v186->isa;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v292 = v186;
      v287 = v177;
      v189 = v298;
      v190 = v184;
      v191 = v321;
      (v311)(v298, v190, v321);

      swift_unknownObjectRetain_n();
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();

      v194 = os_log_type_enabled(v192, v193);
      v291 = v180;
      if (v194)
      {
        v195 = swift_slowAlloc();
        *&v312 = v195;
        *&v311 = swift_slowAlloc();
        p_isa = v311;
        *v195 = 136315650;
        v196 = *(v191 + 48);
        v286 = v192;
        v197 = v301;
        v198 = v300;
        v199 = v302;
        (*(v301 + 16))(v300, &v189[v196], v302);
        (v317)(v189, v191);
        v285 = sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v298) = v193;
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        v202 = v201;
        v203 = *(v197 + 8);
        v203(v198, v199);
        v204 = sub_100009E5C(v200, v202, &p_isa);

        v205 = v312;
        *(v312 + 4) = v204;
        *(v205 + 12) = 2080;
        v206 = v297;
        (*(v180 + 144))(v307, v180);
        swift_unknownObjectRelease();
        v207 = dispatch thunk of CustomStringConvertible.description.getter();
        v209 = v208;
        swift_unknownObjectRelease();
        v203(v198, v199);
        v210 = sub_100009E5C(v207, v209, &p_isa);

        v211 = v312;
        *(v312 + 14) = v210;
        *(v211 + 22) = 2080;

        v212 = sub_1001ECC0C();
        v214 = v213;

        v215 = sub_100009E5C(v212, v214, &p_isa);

        *(v211 + 24) = v215;
        v216 = v286;
        _os_log_impl(&_mh_execute_header, v286, v298, "Conflict between cloud record and local record: cloud uuid=%s, local uuid=%s, persistedRecordID=%s", v211, 0x20u);
        swift_arrayDestroy();

        v186 = v299;
        v217 = v206;
      }

      else
      {
        v241 = v297;
        swift_unknownObjectRelease();
        (v317)(v189, v191);
        swift_unknownObjectRelease();

        v186 = v299;
        v217 = v241;
      }

      v242 = v290;
      v243 = sub_100099DF4(&qword_1002E1200, &qword_100247438);
      v244 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v245 = *(v244 - 8);
      v246 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      *&v311 = *(v245 + 72);
      *&v312 = v243;
      v247 = swift_allocObject();
      v301 = xmmword_10022E400;
      *(v247 + 16) = xmmword_10022E400;
      p_isa = v217;
      v302 = v323[7];
      *(v247 + v246) = sub_100201860(v302, v307, v288);
      v248 = *(v245 + 104);
      LODWORD(v300) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
      v298 = v248;
      (v248)(v247 + v246);
      CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v247);

      if (v292 == -1)
      {

        v272 = Logger.logObject.getter();
        v273 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v272, v273))
        {
          v274 = swift_slowAlloc();
          *v274 = 0;
          _os_log_impl(&_mh_execute_header, v272, v273, "Local record wins, adopting cloud uuid, generation counter and CKRecord system fields locally and scheduling local record for sending to the cloud", v274, 2u);
        }

        v275 = v315;
        v276 = v307;
        v277 = v297;
        sub_100205F20(v315, v310, v307, v306, v291, v305, v304);
        v278 = swift_allocObject();
        *(v278 + 16) = v301;
        p_isa = v277;
        *(v278 + v246) = sub_100201860(v302, v276, v288);
        (v298)(v278 + v246, v300, v244);
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v278);
        swift_unknownObjectRelease();

        (v317)(v275, v321);
      }

      else
      {
        if (v292 != 1)
        {
          __break(1u);
          goto LABEL_80;
        }

        v249 = Logger.logObject.getter();
        v250 = static os_log_type_t.default.getter();
        v251 = os_log_type_enabled(v249, v250);
        v67 = v322;
        v252 = v321;
        v253 = v306;
        v254 = v307;
        if (v251)
        {
          v255 = swift_slowAlloc();
          *v255 = 0;
          _os_log_impl(&_mh_execute_header, v249, v250, "Cloud record wins, adopting entire cloud record state locally", v255, 2u);
        }

        v256 = v315;
        v257 = sub_100205D2C(v315, v323 + v313, v310, v242, v303, v254, v253, v242, v303, v291, v305, v304, v289, v294, v293);
        if (v257)
        {
          v258 = v257;
          v259 = *(v314 + 24);
          v260 = *(v314 + 32);
          sub_10000C4FC(v314, v259);
          v261 = v325;
          (*(v260 + 144))(v258, v327, v259, v260);
          if (v261)
          {
            LOBYTE(p_isa) = v328;
            sub_100099DF4(&qword_1002E2798, &qword_10024A360);
            sub_1000326A8(&qword_1002E27A0, &qword_1002E2798, &qword_10024A360, byte_100249F30);
            v314 = v327[0];
            v311 = v327[1];
            v313 = v327[2];
            v310 = v327[3];
            v312 = v327[4];
            v309 = v327[5];
            v325 = swift_allocError();
            v262 = v311;
            *v263 = v314;
            *(v263 + 16) = v262;
            v264 = v310;
            *(v263 + 32) = v313;
            *(v263 + 48) = v264;
            v265 = v309;
            *(v263 + 64) = v312;
            *(v263 + 80) = v265;
            *(v263 + 96) = p_isa;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            (v317)(v315, v252);
            v71 = v324;
            v102 = v318;
            goto LABEL_41;
          }

          (v317)(v315, v252);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        (v317)(v256, v252);
        swift_unknownObjectRelease();
      }

      v146 = v319;
      goto LABEL_35;
    }

    v147 = v303;
    (v311)(v303, v315, v48);
    v148 = v309;

    v149 = v308;

    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.info.getter();

    v152 = os_log_type_enabled(v150, v151);
    v67 = v322;
    if (v152)
    {
      v153 = swift_slowAlloc();
      *&v312 = swift_slowAlloc();
      p_isa = v312;
      *v153 = 136315394;
      v154 = *(v321 + 48);
      LODWORD(v311) = v151;
      v155 = v301;
      v156 = *(v301 + 16);
      v299 = v150;
      v157 = v300;
      v158 = v302;
      v156(v300, &v147[v154], v302);
      (v317)(v147, v321);
      sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      (*(v155 + 8))(v157, v158);
      v162 = sub_100009E5C(v159, v161, &p_isa);

      *(v153 + 4) = v162;
      *(v153 + 12) = 2080;

      v163 = v295;
      v164 = sub_1001ECC0C();
      v166 = v165;

      v167 = sub_100009E5C(v164, v166, &p_isa);

      *(v153 + 14) = v167;
      v168 = v299;
      _os_log_impl(&_mh_execute_header, v299, v311, "No existing record for fetched CKRecord: cloud uuid=%s, record id=%s", v153, 0x16u);
      swift_arrayDestroy();

      v48 = v321;

      v169 = v314;
    }

    else
    {
      (v317)(v147, v48);

      v169 = v314;
      v163 = v295;
    }

    v218 = v169[3];
    v219 = v169[4];
    sub_10000C4FC(v169, v218);
    v220 = v325;
    (*(v219 + 72))(v163, v148, v296, v149, v310, v329, v218, v219);
    if (!v220)
    {

      v236 = v313;
      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        *v239 = 0;
        _os_log_impl(&_mh_execute_header, v237, v238, "Adopting entire cloud record state locally", v239, 2u);
        v236 = v313;
      }

      v240 = v315;
      sub_100205D2C(v315, v323 + v236, v310, v307[11], v307[14], v307[13], v306, v307[11], v307[14], v307[22], v305, v304, v307[17], v307[18], v307[23]);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (v317)(v240, v48);
      v146 = v319;
      goto LABEL_35;
    }

    LOBYTE(p_isa) = v330;
    v321 = v329[0];
    v313 = v329[1];
    v314 = v329[2];
    v312 = v329[3];

    sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
    sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8, byte_100249F30);
    v325 = swift_allocError();
    v221 = v313;
    *v222 = v321;
    *(v222 + 16) = v221;
    v223 = v312;
    *(v222 + 32) = v314;
    *(v222 + 48) = v223;
    *(v222 + 64) = p_isa;
    (v317)(v315, v48);
    v102 = v318;
    v51 = v320;
LABEL_52:
    v71 = v324;
    goto LABEL_53;
  }

  (v317)(v119, v48);

  v102 = v318;
  v51 = v320;
  v67 = v322;
LABEL_53:
  (*(v51 + 16))(v102, v71, v67);
  swift_errorRetain();
  swift_errorRetain();
  v224 = Logger.logObject.getter();
  v225 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v224, v225))
  {
    v226 = v102;
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    *v227 = 138412546;
    v229 = CKDatabase.RecordZoneChange.Modification.record.getter();
    v230 = [v229 recordID];

    v231 = v325;
    (*(v51 + 8))(v226, v322);
    *(v227 + 4) = v230;
    *v228 = v230;
    *(v227 + 12) = 2112;
    swift_errorRetain();
    v325 = v231;
    v232 = _swift_stdlib_bridgeErrorToNSError();
    *(v227 + 14) = v232;
    v228[1] = v232;
    _os_log_impl(&_mh_execute_header, v224, v225, "Caught error while processing fetched record with CKRecordID %@: %@", v227, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
  }

  else
  {

    (*(v51 + 8))(v102, v67);
  }

  v233 = CKDatabase.RecordZoneChange.Modification.record.getter();
  v234 = v325;

  v235 = v319;
  *v319 = v233;
  v235[1] = v234;
}

__n128 sub_10020ED30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[3];
  v5 = a2[4];
  sub_10000C4FC(a2, v4);
  (*(v5 + 144))(v3, v14, v4, v5);
  if (v2)
  {
    v16 = v15;
    sub_100099DF4(&qword_1002E2798, &qword_10024A360);
    sub_1000326A8(&qword_1002E27A0, &qword_1002E2798, &qword_10024A360, byte_100249F30);
    v12 = v14[2];
    v13 = v14[0];
    v9 = v14[3];
    v10 = v14[1];
    v11 = v14[4];
    v8 = v14[5];
    swift_allocError();
    *v7 = v13;
    *(v7 + 16) = v10;
    *(v7 + 32) = v12;
    *(v7 + 48) = v9;
    result = v11;
    *(v7 + 64) = v11;
    *(v7 + 80) = v8;
    *(v7 + 96) = v16;
  }

  return result;
}

void sub_10020EE6C(void *a1@<X0>, void *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = *a2;
  v14 = *(*a2 + 96);
  v19[0] = *(*a2 + 80);
  v19[1] = v14;
  v15 = v13[8];
  v19[2] = v13[7];
  v19[3] = v15;
  v16 = v13[10];
  v19[4] = v13[9];
  v19[5] = v16;
  v19[6] = v13[11];
  v17 = _s18SyncEngineDelegateCMa(0, v19);
  swift_getWitnessTable(byte_10024AFC0, v17);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = objc_autoreleasePoolPush();
  sub_10020EFC8(a1, a2, a3, a4, a5, v19);
  objc_autoreleasePoolPop(v18);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a6 = v19[0];
  }
}

void sub_10020EFC8(void *a1@<X0>, void *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v155 = a5;
  v160 = a4;
  v167 = a3;
  v168 = a6;
  v169 = a2;
  v162 = *a2;
  v8 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v9 = *(v8 - 8);
  v165 = v8;
  v166 = v9;
  __chkstk_darwin(v8);
  v164 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v146 - v12;
  __chkstk_darwin(v14);
  v16 = &v146 - v15;
  __chkstk_darwin(v17);
  v19 = &v146 - v18;
  __chkstk_darwin(v20);
  v156 = &v146 - v21;
  v163 = type metadata accessor for UUID();
  v159 = *(v163 - 8);
  __chkstk_darwin(v163);
  v157 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v146 - v24;
  __chkstk_darwin(v25);
  v158 = &v146 - v26;
  __chkstk_darwin(v27);
  v161 = &v146 - v28;
  v29 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v29 - 8);
  v31 = &v146 - v30;
  v170 = a1;
  v32 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
  v34 = v33;
  if (v32 != 0x6E6F7268636E7953 || v33 != 0xEF6E6F6974617A69)
  {
    v36 = v32;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v36 == 0xD000000000000018 && 0x8000000100277C60 == v34)
      {
      }

      else
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v59 & 1) == 0)
        {
          v60 = v165;
          v61 = *(v166 + 16);
          v62 = v170;
          v61(v16, v170, v165);
          v61(v13, v62, v60);
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v63, v64))
          {

            v89 = v165;
            v90 = *(v166 + 8);
            v90(v13, v165);
            v90(v16, v89);
            goto LABEL_33;
          }

          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v171 = v170;
          *v65 = 138412546;
          LODWORD(v169) = v64;
          v67 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
          v167 = v63;
          v68 = v165;
          v69 = *(v166 + 8);
          v69(v16, v165);
          *(v65 + 4) = v67;
          *v66 = v67;
          *(v65 + 12) = 2080;
          v70 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
          v72 = v71;
          v69(v13, v68);
          v73 = sub_100009E5C(v70, v72, &v171);

          *(v65 + 14) = v73;
          v74 = v167;
          _os_log_impl(&_mh_execute_header, v167, v169, "Fetched deletion of an unknown CKRecord with ID %@ and type %s, ignoring", v65, 0x16u);
          sub_10003CD48(v66, &qword_1002E2700, &unk_1002474D0);

          sub_100004118(v170);

          goto LABEL_31;
        }
      }

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Fetched deletion of identifier CKRecord", v77, 2u);
      }

      v78 = CKSyncEngine.State.pendingRecordZoneChanges.getter();
      __chkstk_darwin(v78);
      *(&v146 - 2) = v170;
      v79 = sub_1002103E4(sub_10003BFDC, (&v146 - 4), v78);

      v44 = v166;
      v80 = v161;
      if (v79)
      {
        v81 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
        sub_100202D40(v81, v80);
        v42 = v6;
        if (v6)
        {

          v43 = v170;
          v46 = v164;
          v45 = v165;
          goto LABEL_10;
        }

        isa = v167[3].isa;
        v86 = v167[4].isa;
        sub_10000C4FC(v167, isa);
        v87 = (*(v86 + 13))(v80, isa, v86);
        v88 = 0;
        if (!v87)
        {
          v109 = v165;
          (*(v44 + 16))(v19, v170, v165);
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            *v112 = 138412290;
            v114 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
            (*(v44 + 8))(v19, v109);
            *(v112 + 4) = v114;
            *v113 = v114;
            _os_log_impl(&_mh_execute_header, v110, v111, "Fetched deletion of an identifier record with CKRecordID %@, but there is already no persisted record for this uuid", v112, 0xCu);
            sub_10003CD48(v113, &qword_1002E2700, &unk_1002474D0);
          }

          else
          {

            (*(v44 + 8))(v19, v109);
          }

          (*(v159 + 8))(v161, v163);
          goto LABEL_33;
        }

        v152 = v87;
        v91 = v156;
        v92 = v165;
        (*(v44 + 16))(v156, v170, v165);
        v93 = v158;
        v94 = v159;
        v95 = v80;
        v96 = v44;
        v97 = v163;
        v150 = *(v159 + 16);
        v151 = v159 + 16;
        v150(v158, v95, v163);
        v98 = Logger.logObject.getter();
        v149 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v98, v149))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v153 = 0;
          v101 = v100;
          v148 = swift_slowAlloc();
          v171 = v148;
          *v99 = 138412546;
          v147 = v98;
          v102 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
          (*(v96 + 8))(v91, v92);
          *(v99 + 4) = v102;
          *v101 = v102;
          *(v99 + 12) = 2080;
          sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v103 = v158;
          v104 = dispatch thunk of CustomStringConvertible.description.getter();
          v106 = v105;
          v158 = *(v94 + 8);
          (v158)(v103, v97);
          v107 = sub_100009E5C(v104, v106, &v171);

          *(v99 + 14) = v107;
          v108 = v147;
          _os_log_impl(&_mh_execute_header, v147, v149, "Found existing persisted record for fetched deletion of identifier CKRecord with CKRecordID %@: uuid=%s", v99, 0x16u);
          sub_10003CD48(v101, &qword_1002E2700, &unk_1002474D0);
          v88 = v153;

          sub_100004118(v148);
        }

        else
        {

          v158 = *(v94 + 8);
          (v158)(v93, v97);
          (*(v96 + 8))(v91, v92);
        }

        v115 = v161;
        v116 = v157;
        if ((v169[11] & 1) != 0 || (sub_1001D0040(v169[10], 0, v155) & 1) == 0)
        {
          v128 = v163;
          v150(v116, v115, v163);
          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v171 = v169;
            *v131 = 136315138;
            sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v132 = dispatch thunk of CustomStringConvertible.description.getter();
            v133 = v116;
            v135 = v134;
            v136 = v158;
            (v158)(v133, v128);
            v137 = sub_100009E5C(v132, v135, &v171);

            *(v131 + 4) = v137;
            _os_log_impl(&_mh_execute_header, v129, v130, "Not deleting local identifier record with uuid %s because it was accessed recently enough, scheduling record to be sent to the cloud", v131, 0xCu);
            sub_100004118(v169);
          }

          else
          {

            v136 = v158;
            (v158)(v116, v128);
          }

          v138 = v128;
          sub_100099DF4(&qword_1002E1200, &qword_100247438);
          v139 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
          v140 = *(v139 - 8);
          v141 = (*(v140 + 80) + 32) & ~*(v140 + 80);
          v142 = swift_allocObject();
          *(v142 + 16) = xmmword_10022E400;
          *(v142 + v141) = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
          (*(v140 + 104))(v142 + v141, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v139);
          CKSyncEngine.State.add(pendingRecordZoneChanges:)(v142);

          swift_unknownObjectRelease();
          v136(v161, v138);
          goto LABEL_33;
        }

        v117 = v154;
        v118 = v163;
        v150(v154, v115, v163);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v171 = v122;
          *v121 = 136315138;
          sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v123 = dispatch thunk of CustomStringConvertible.description.getter();
          v124 = v117;
          v126 = v125;
          (v158)(v124, v118);
          v127 = sub_100009E5C(v123, v126, &v171);

          *(v121 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v119, v120, "Deleting local identifier record with uuid %s because it has not been accessed recently enough", v121, 0xCu);
          sub_100004118(v122);
        }

        else
        {

          (v158)(v117, v118);
        }

        v45 = v165;
        v44 = v166;
        v143 = v167[3].isa;
        v144 = v167[4].isa;
        sub_10000C4FC(v167, v143);
        v145 = v161;
        (*(v144 + 14))(v161, v143, v144);
        if (v88)
        {
          (v158)(v145, v118);
          swift_unknownObjectRelease();
          v42 = v88;
          v43 = v170;
          v46 = v164;
          goto LABEL_10;
        }

        (v158)(v145, v118);
        goto LABEL_13;
      }

      v74 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v74, v82))
      {
LABEL_32:

        goto LABEL_33;
      }

      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v74, v82, "Fetched deletion of identifier CKRecord, but it's currently pending send. Skipping deletion.", v83, 2u);
LABEL_31:

      goto LABEL_32;
    }
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Fetched deletion of a singleton synchronization CKRecord, deleting its UUID and CKRecord system fields", v39, 2u);
  }

  v40 = v167[3].isa;
  v41 = v167[4].isa;
  sub_10000C4FC(v167, v40);
  (*(v41 + 7))(v40, v41);
  if (!v6)
  {
    v54 = *(v162 + 160);
    v55 = *(v162 + 96);
    (*(v54 + 72))(0, 0xF000000000000000, v55, v54);
    sub_100002728(v31, 1, 1, v163);
    (*(v54 + 48))(v31, v55, v54);
LABEL_13:
    swift_unknownObjectRelease();
LABEL_33:
    v84 = v168;
    *v168 = 0;
    v84[1] = 0;
    return;
  }

  v42 = v6;
  v43 = v170;
  v45 = v165;
  v44 = v166;
  v46 = v164;
LABEL_10:
  (*(v44 + 16))(v46, v43, v45);
  swift_errorRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v153 = 0;
    v51 = v50;
    *v49 = 138412546;
    v52 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    (*(v44 + 8))(v46, v45);
    *(v49 + 4) = v52;
    *v51 = v52;
    *(v49 + 12) = 2112;
    swift_errorRetain();
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v53;
    v51[1] = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "Caught error while processing fetched record deletion for CKRecordID %@: %@", v49, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
  }

  else
  {

    (*(v44 + 8))(v46, v45);
  }

  v56 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
  v57 = v168;
  *v168 = v56;
  v57[1] = v42;
}

uint64_t sub_10021025C(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:))
  {
    (*(v3 + 96))(v6, v2);
    v7 = *v6;
    sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
    v8 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    v9 = static NSObject.== infix(_:_:)();
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1002103E4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_1002104B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v48 = a2;
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  sub_100003724();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D4();
  v53 = v10;
  v12 = __chkstk_darwin(v11);
  v13 = qword_100310708;
  v14 = *(v8 + 16);
  v54 = a1;
  v49 = v14;
  (v14)(&v47 - v15, a1, RecordZoneChanges, v12);
  v50 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v18 = os_log_type_enabled(v16, v17);
  v51 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = v3;
    v22 = v21;
    *v20 = 138412290;
    RecordZone = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
    v24 = sub_10003C0C0();
    v25(v24);
    *(v20 + 4) = RecordZone;
    *v22 = RecordZone;
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully fetched changes for CKRecordZone with identifier %@", v20, 0xCu);
    sub_10003CD48(v22, &qword_1002E2700, &unk_1002474D0);
    sub_1000327B4(v22);
    v26 = v20;
    v4 = v52;
    sub_1000327B4(v26);
  }

  else
  {

    v27 = sub_10003C0C0();
    v28(v27);
  }

  v29 = v54;
  v30 = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
  if (v30)
  {
    v31 = v30;
    v49(v53, v29, RecordZoneChanges);
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v4;
      v37 = v36;
      *v35 = 138412546;
      v38 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
      v39 = sub_10003C100();
      v40(v39);
      *(v35 + 4) = v38;
      *v37 = v38;
      *(v35 + 12) = 2112;
      v41 = v32;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v42;
      v37[1] = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to fetch changes for CKRecordZone with identifier %@: %@", v35, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
      sub_1000327B4(v37);
      sub_1000327B4(v35);
    }

    else
    {

      v43 = sub_10003C100();
      v44(v43);
    }

    sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
    v45 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
    v46 = static NSObject.== infix(_:_:)();

    if (v46)
    {
      v56 = v32;
      type metadata accessor for CKError(0);
      sub_10003C044(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);
      _BridgedStoredNSError.code.getter();
      if (v55 == 112)
      {
        sub_10020AA78(v48);
      }

      else if (v55 == 28)
      {
        sub_10020A9E0(v48, "Handling .userDeletedZone error after fetching zone changes", 59, 2);
      }
    }
  }
}

unint64_t sub_1002108F4()
{
  result = qword_1002E2E10;
  if (!qword_1002E2E10)
  {
    result = swift_getWitnessTable("1i\a", &type metadata for SyncEngineError, v0, v1);
    atomic_store(result, &qword_1002E2E10);
  }

  return result;
}

Swift::Int sub_100210948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100099DF4(&qword_1002E2E38, &qword_10024ADB0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1000EA578(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {

      swift_errorRetain();
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100210BEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100099DF4(&qword_1002E2E50, &qword_10024ADC8);
  v31 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      sub_1000EA578(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v33 = v20;
    v21 = (v19 + 32 * v18);
    if (v31)
    {
      sub_1001514B8(v21, v32);
    }

    else
    {
      sub_100009F20(v21, v32);
    }

    sub_100099DF4(&qword_1002E11F8, &qword_100247430);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v20;
    result = sub_1001514B8(v32, (*(v7 + 56) + 32 * v25));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

BOOL sub_100210EA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_100211180(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

Swift::Int sub_100210F64(uint64_t a1)
{
  v2 = *v1;
  sub_100099DF4(&qword_1002E2E60, &qword_10024ADD8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (!v9)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v13) >> 6;
        while (++v15 != v18 || (v17 & 1) == 0)
        {
          v19 = v15 == v18;
          if (v15 == v18)
          {
            v15 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v15);
          if (v20 != -1)
          {
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
            goto LABEL_19;
          }
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v9 &= v9 - 1;
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++*(v4 + 16);
    }

    while (v9);
    while (1)
    {
LABEL_6:
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = v6[v12];
      ++v5;
      if (v9)
      {
        v5 = v12;
        goto LABEL_10;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      sub_1000EA578(0, (v21 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100211180(unint64_t result, char a2)
{
  v3 = result;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v5 <= v4 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_100210F64(v4 + 1);
      goto LABEL_8;
    }

    if (v5 <= v4)
    {
      sub_1002113A0(v4 + 1);
LABEL_8:
      v6 = *v2;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v3 = result & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    result = sub_100211294();
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (v3 >> 6) + 56) |= 1 << v3;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100211294()
{
  v1 = v0;
  sub_100099DF4(&qword_1002E2E60, &qword_10024ADD8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_1002113A0(uint64_t a1)
{
  v2 = *v1;
  sub_100099DF4(&qword_1002E2E60, &qword_10024ADD8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (!v8)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v10 + 8 * (v13 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v12) >> 6;
        while (++v14 != v17 || (v16 & 1) == 0)
        {
          v18 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v14);
          if (v19 != -1)
          {
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v10 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v8 &= v8 - 1;
      *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++*(v4 + 16);
    }

    while (v8);
LABEL_6:
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_21;
      }

      v8 = *(v2 + 56 + 8 * v11);
      ++v5;
      if (v8)
      {
        v5 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100211580(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    swift_errorRetain();
    v11 = sub_10014EB30(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E40, &qword_10024ADB8);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_100210948(v14, a2 & 1);
  v16 = sub_10014EB30(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000100272E40;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
  return result;
}

uint64_t sub_100211864(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v25 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_100003AE0(0, &qword_1002E27F0, CKRecordID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    swift_errorRetain();
    v11 = sub_1001CC344(v9);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E20, &qword_10024AD98);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v9;
    *(v18[7] + 8 * v11) = v7;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_10003BD78(v14, a2 & 1, &qword_1002E2E18, &qword_10024AD90);
  v16 = sub_1001CC344(v9);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v23._object = 0x8000000100272E40;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v23);
  sub_100003AE0(0, &qword_1002E27F0, CKRecordID_ptr);
  _print_unlocked<A, B>(_:_:)();
  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
  return result;
}

uint64_t sub_100211B64(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v25 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_100003AE0(0, &qword_1002E1208, CKRecord_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    swift_errorRetain();
    v11 = sub_1001CC394(v9);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E30, &qword_10024ADA8);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v9;
    *(v18[7] + 8 * v11) = v7;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_10003BD78(v14, a2 & 1, &qword_1002E2E28, &qword_10024ADA0);
  v16 = sub_1001CC394(v9);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v23._object = 0x8000000100272E40;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v23);
  sub_100003AE0(0, &qword_1002E1208, CKRecord_ptr);
  _print_unlocked<A, B>(_:_:)();
  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
  return result;
}

uint64_t sub_100211E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncDownSynchronizationRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncDownSynchronizationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211F2C(uint64_t a1)
{
  v2 = type metadata accessor for SyncDownSynchronizationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100211F88(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 40)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_100099DF4(&qword_1002E11F8, &qword_100247430);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    sub_100012C2C(i, &v27, &qword_1002E1D30, &qword_100248040);
    v8 = v27;
    v29 = v27;
    sub_1001514B8(&v28, v26);
    v9 = *a3;
    v11 = sub_1001CC2C8(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E58, &qword_10024ADD0);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v8;
    sub_1001514B8(v26, (v18[7] + 32 * v11));
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v6;
    v18[2] = v21;
    a2 = 1;
    if (v25 == v6)
    {
    }
  }

  sub_100210BEC(v14, a2 & 1);
  v16 = sub_1001CC2C8(v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100004118(v26);
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v23._object = 0x8000000100272E40;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v23);
  sub_100099DF4(&qword_1002E11F8, &qword_100247430);
  _print_unlocked<A, B>(_:_:)();
  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
  return result;
}

uint64_t sub_1002122AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v52 = a1;
  v46 = a2;
  v47 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D4();
  v49 = v6;
  __chkstk_darwin(v7);
  v9 = v43 - v8;
  type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  sub_100003724();
  v50 = v11;
  v51 = v10;
  __chkstk_darwin(v10);
  sub_1000037D4();
  v55 = v12;
  __chkstk_darwin(v13);
  v15 = v43 - v14;
  v16 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  sub_100003724();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  v43[1] = qword_100310708;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Forming nextRecordZoneChangeBatch", v24, 2u);
  }

  CKSyncEngine.state.getter();
  v25 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v18 + 8))(v21, v16);
  result = (*(v50 + 32))(v55, v15, v51);
  v27 = 0;
  v28 = *(v25 + 16);
  v54 = v4 + 16;
  v48 = (v4 + 32);
  v53 = _swiftEmptyArrayStorage;
  v29 = v47;
  while (1)
  {
    if (v28 == v27)
    {
      (*(v50 + 8))(v55, v51);

      __chkstk_darwin(v39);
      v40 = v52;
      v41 = v45;
      v43[-4] = v53;
      v43[-3] = v41;
      v43[-2] = v40;
      v42 = sub_100099DF4(&qword_1002E2E68, &unk_10024ADE0);
      sub_100217C68(sub_10003C128, &v43[-6], v42);
    }

    if (v27 >= *(v25 + 16))
    {
      break;
    }

    v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v31 = *(v4 + 72);
    (*(v4 + 16))(v9, v25 + v30 + v31 * v27, v29);
    v32 = v29;
    if (CKSyncEngine.SendChangesOptions.Scope.contains(_:)())
    {
      v44 = *v48;
      v44(v49, v9, v29);
      v33 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v33;
      v56 = v33;
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v32;
      }

      else
      {
        sub_1001CC62C(0, v33[2] + 1, 1);
        v29 = v47;
        v35 = v56;
      }

      v37 = v35[2];
      v36 = v35[3];
      v38 = (v37 + 1);
      if (v37 >= v36 >> 1)
      {
        v53 = (v37 + 1);
        sub_1001CC62C((v36 > 1), v37 + 1, 1);
        v38 = v53;
        v29 = v47;
        v35 = v56;
      }

      ++v27;
      v35[2] = v38;
      v53 = v35;
      result = (v44)(v35 + v30 + v37 * v31, v49, v29);
    }

    else
    {
      result = (*(v4 + 8))(v9, v29);
      ++v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100212894@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v50 = a4;
  v8 = *a2;
  v9 = sub_100099DF4(&qword_1002E2E68, &unk_10024ADE0);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  v53 = a1;
  v54 = a3;

  CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)();
  if (sub_100004DFC(v11, 1, v12) == 1)
  {
    sub_10003CD48(v11, &qword_1002E2E68, &unk_10024ADE0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "RecordZoneChangeBatch initializer returned nil. Returning nil from nextRecordZoneChangeBatch().", v17, 2u);
    }

    v18 = 1;
    v19 = v50;
  }

  else
  {
    v48 = v8;
    v49 = a2;
    v20 = a1;
    v22 = v51 + 32;
    v21 = *(v51 + 32);
    v21(v14, v11, v12);
    v23 = v20[3];
    v24 = v20[4];
    sub_10000C4FC(v20, v23);
    v25 = (*(v24 + 56))(v23, v24);
    if (v4)
    {
      (*(v51 + 8))(v14, v12);
      return sub_100004118(v20);
    }

    v27 = v25;
    v46 = v20;
    v47 = v21;
    v44 = v12;
    v45 = v14;
    v51 = v22;
    v28 = *(v48 + 96);
    sub_1001D08D0();
    v29 = qword_100310708;
    swift_unknownObjectRetain();
    v43[1] = v29;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55[0] = v33;
      *v32 = 136315138;
      v55[5] = v27;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      swift_unknownObjectRelease();
      v37 = sub_100009E5C(v34, v36, v55);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Adding to the batch updated synchronization state: %s", v32, 0xCu);
      sub_100004118(v33);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v12 = v44;
    v55[0] = v27;
    v38 = sub_1002018F0(v49[7], v28, *(v48 + 152));
    v39 = v45;
    v40 = CKSyncEngine.RecordZoneChangeBatch.recordsToSave.modify();
    v42 = v41;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100213B90(*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40(v55, 0);
    CKSyncEngine.RecordZoneChangeBatch.atomicByZone.setter();
    swift_unknownObjectRelease();

    v19 = v50;
    v47(v50, v39, v12);
    v18 = 0;
    a1 = v46;
  }

  sub_100002728(v19, v18, 1, v12);
  return sub_100004118(a1);
}

uint64_t sub_100212EA4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(*a2 + 96);
  v15[0] = *(*a2 + 80);
  v15[1] = v9;
  v10 = v8[8];
  v15[2] = v8[7];
  v15[3] = v10;
  v11 = v8[10];
  v15[4] = v8[9];
  v15[5] = v11;
  v15[6] = v8[11];
  v12 = _s18SyncEngineDelegateCMa(0, v15);
  swift_getWitnessTable(byte_10024AFC0, v12);
  Actor.preconditionIsolated(_:file:line:)();
  v13 = objc_autoreleasePoolPush();
  sub_100212FC0(a1, a2, a3, a4, v15);
  objc_autoreleasePoolPop(v13);
  return *&v15[0];
}

void sub_100212FC0(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v113 = a2;
  v9 = *a2;
  v109 = a4;
  v110 = v9;
  v10 = type metadata accessor for UUID();
  v111 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v100 - v14;
  __chkstk_darwin(v16);
  v18 = v100 - v17;
  __chkstk_darwin(v19);
  v21 = v100 - v20;
  v112 = a1;
  sub_100202D40(a1, v100 - v20);
  if (v5)
  {
    v22 = a5;
    v26 = v112;
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = v26;
      *(v29 + 12) = 2112;
      v31 = v26;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v32;
      v30[1] = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to return existing record for recordID %@ when composing record zone change batch: %@. Returning nil CKRecord.", v29, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_7:
    v33 = 0;
    goto LABEL_8;
  }

  v105 = v12;
  v106 = v18;
  v107 = a5;
  v108 = v10;
  v24 = a3[3];
  v23 = a3[4];
  sub_10000C4FC(a3, v24);
  v25 = (*(v23 + 104))(v21, v24, v23);
  v34 = v25;
  v104 = 0;
  v35 = v108;
  v36 = v111;
  if (!v25)
  {
    v55 = v106;
    (*(v111 + 16))(v106, v21, v108);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    v58 = os_log_type_enabled(v56, v57);
    v103 = v21;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = v36;
      v61 = swift_slowAlloc();
      v115 = v61;
      *v59 = 136315138;
      sub_100209C98();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v35;
      v65 = v64;
      v113 = *(v60 + 8);
      (v113)(v55, v63);
      v66 = sub_100009E5C(v62, v65, &v115);

      *(v59 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Unable to find existing record for UUID %s when composing record zone change batch.", v59, 0xCu);
      sub_100004118(v61);
    }

    else
    {

      v113 = *(v36 + 8);
      (v113)(v55, v35);
    }

    v22 = v107;
    CKSyncEngine.state.getter();
    sub_100099DF4(&qword_1002E1200, &qword_100247438);
    v88 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v89 = *(v88 - 8);
    v90 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_10022E400;
    v92 = v112;
    *(v91 + v90) = v112;
    (*(v89 + 104))(v91 + v90, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v88);
    v93 = v92;
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v91);

    (v113)(v103, v108);
    goto LABEL_7;
  }

  v37 = qword_100310708;
  v38 = *(v111 + 16);
  v39 = v15;
  v100[1] = v111 + 16;
  v101 = v38;
  v38(v15, v21, v108);
  swift_unknownObjectRetain_n();
  v40 = v36;
  v41 = v113;
  v102 = v37;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    v115 = v100[0];
    *v44 = 136315394;
    sub_100209C98();
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v106 = *(v40 + 8);
    v106(v39, v108);
    v48 = sub_100009E5C(v45, v47, &v115);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v114 = v34;
    v49 = v110[13];
    v50 = v110[22];
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    swift_unknownObjectRelease_n();
    v54 = sub_100009E5C(v51, v53, &v115);
    v35 = v108;

    *(v44 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v42, v43, "Adding to the batch existing record for uuid %s: %s", v44, 0x16u);
    swift_arrayDestroy();

    v41 = v113;
  }

  else
  {

    swift_unknownObjectRelease_n();
    v106 = *(v40 + 8);
    v106(v39, v35);
    v49 = v110[13];
    v50 = v110[22];
  }

  if (sub_1001D08CC(v49, v50))
  {
    v115 = v34;
    v67 = v41[7];
    v68 = v110[21];
    v113 = v49;
    v69 = v104;
    v70 = sub_1002018F0(v67, v49, v68);
    if (v69)
    {
      swift_errorRetain();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        swift_errorRetain();
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 4) = v75;
        *v74 = v75;
        _os_log_impl(&_mh_execute_header, v71, v72, "Unable to decode identifier mapping CKRecord from persisted CKRecord system fields data: %@. Returning populated CKRecord without system fields instead.", v73, 0xCu);
        sub_10003CD48(v74, &qword_1002E2700, &unk_1002474D0);

        v35 = v108;
      }

      v115 = v34;
      v33 = sub_100201F2C(v67, v113, v68);

      v106(v21, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v70;
      v106(v21, v35);
      swift_unknownObjectRelease();
    }

    v22 = v107;
  }

  else
  {
    v113 = v34;
    v76 = v105;
    v101(v105, v21, v35);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.fault.getter();
    v79 = os_log_type_enabled(v77, v78);
    v103 = v21;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v115 = v81;
      *v80 = 136315138;
      sub_100209C98();
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v35;
      v85 = v84;
      v86 = v106;
      v106(v76, v83);
      v87 = sub_100009E5C(v82, v85, &v115);

      *(v80 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "Existing record for UUID %s is not eligible for cloud sync when composing record zone change batch.", v80, 0xCu);
      sub_100004118(v81);
    }

    else
    {

      v86 = v106;
      v106(v76, v35);
    }

    v22 = v107;
    CKSyncEngine.state.getter();
    sub_100099DF4(&qword_1002E1200, &qword_100247438);
    v94 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v95 = *(v94 - 8);
    v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_10022E400;
    v98 = v112;
    *(v97 + v96) = v112;
    (*(v95 + 104))(v97 + v96, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v94);
    v99 = v98;
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v97);
    swift_unknownObjectRelease();

    v86(v103, v108);
    v33 = 0;
  }

LABEL_8:
  *v22 = v33;
}

uint64_t sub_100213B90(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void sub_100213BBC(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v4 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v54 - v11;
  v12 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  sub_100003724();
  v14 = v13;
  __chkstk_darwin(v15);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v63 = a1;
  v20 = *(CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter() + 16);

  if (v20)
  {
    (*(v14 + 16))(v19, v63, v12);
    v21 = Logger.logObject.getter();
    LODWORD(v58) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v58))
    {
      v22 = swift_slowAlloc();
      v55 = v22;
      v57 = swift_slowAlloc();
      v66 = v57;
      *v22 = 136315138;
      v56 = v21;
      CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
      sub_100003AE0(0, &qword_1002E2980, CKRecordZoneID_ptr);
      v59 = v12;
      type metadata accessor for CKError(0);
      v23 = v14;
      sub_100217A80();
      v24 = Dictionary.description.getter();
      v26 = v25;

      (*(v23 + 8))(v19, v59);
      v27 = v24;
      v14 = v23;
      v28 = sub_100009E5C(v27, v26, &v66);
      v12 = v59;

      v30 = v55;
      v29 = v56;
      *(v55 + 1) = v28;
      _os_log_impl(&_mh_execute_header, v29, v58, "Failed to send zone deletes: %s", v30, 0xCu);
      v31 = v57;
      sub_100004118(v57);
      sub_1000327B4(v31);
      sub_1000327B4(v30);
    }

    else
    {

      (*(v14 + 8))(v19, v12);
    }
  }

  v32 = *(CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter() + 16);

  if (v32)
  {
    v33 = v62;
    (*(v14 + 16))(v62, v63, v12);
    v34 = Logger.logObject.getter();
    LODWORD(v59) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v59))
    {
      v35 = swift_slowAlloc();
      v56 = v35;
      v58 = swift_slowAlloc();
      v66 = v58;
      LODWORD(v35->isa) = 136315138;
      v57 = v34;
      CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
      v55 = Array.description.getter();
      v37 = v36;

      (*(v14 + 8))(v33, v12);
      v38 = sub_100009E5C(v55, v37, &v66);

      v39 = v56;
      v40 = v57;
      *(&v56->isa + 4) = v38;
      v41 = v39;
      _os_log_impl(&_mh_execute_header, v40, v59, "Failed to send zone saves: %s", v39, 0xCu);
      v42 = v58;
      sub_100004118(v58);
      sub_1000327B4(v42);
      sub_1000327B4(v41);
    }

    else
    {

      (*(v14 + 8))(v33, v12);
    }

    v43 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
    v44 = 0;
    v45 = *(v43 + 16);
    v46 = (v6 + 8);
    while (1)
    {
      if (v45 == v44)
      {

        return;
      }

      if (v44 >= *(v43 + 16))
      {
        __break(1u);
LABEL_21:

        v52 = sub_10003C21C();
        v53(v52);
        __break(1u);
        return;
      }

      (*(v6 + 16))(v9, v43 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v44, v4);
      v47 = sub_100214204(v9, v64);
      if (v2)
      {
        goto LABEL_21;
      }

      if (v47)
      {
        break;
      }

      v48 = sub_10003C21C();
      v49(v48);
      ++v44;
    }

    v50 = v61;
    (*(v6 + 32))(v61, v9, v4);
    v51 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
    v66 = v51;
    type metadata accessor for CKError(0);
    sub_10003C1D4(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);
    _BridgedStoredNSError.code.getter();
    if (v65 == 112)
    {

      sub_10020AA78(v60);
      (*v46)(v50, v4);
    }

    else
    {
      (*v46)(v50, v4);
    }
  }
}

uint64_t sub_100214204(uint64_t a1, void *a2)
{
  swift_getWitnessTable(byte_10024AFC0, *a2);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
  v2 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
  v3 = [v2 zoneID];

  LOBYTE(v2) = static NSObject.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_100214324(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Date();
  sub_100003724();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Date.init()();
  v15 = a1;
  v16 = v2;
  v17 = v11;
  v18 = a2;
  v12 = sub_100099DF4(&qword_1002E2E08, &qword_10024AD88);
  sub_100217C68(sub_10003C154, v14, v12);
  if (!v3 && v19 == 1)
  {
    swift_willThrow();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100214460@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int64_t a5@<X8>)
{
  v10 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
  v77 = a2;
  v78 = a1;
  v79 = a3;
  sub_10020ACA0(sub_10003C174, v76, v10);
  v12 = v11;

  v61 = sub_10020B634(v12);
  v13 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  v74 = a2;
  v75 = a1;
  sub_10020ACE0(sub_10003C194, v73, v13);
  v15 = v14;

  v60 = sub_10020B65C(v15);
  v81 = 0;
  v80 = 0;
  v16 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v64 = a2;
  v65 = a1;
  v67 = a2;
  v68 = &v81 + 1;
  v69 = a4;
  v70 = &v81;
  v71 = &v80;
  v72 = a1;
  v17 = sub_10020AD20(sub_10003C1B0, v66, v16);

  v59 = sub_10020B634(v17);
  v18 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  v19 = v18;
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v63 = _swiftEmptyArrayStorage;
  while (v23)
  {
LABEL_9:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = (v25 << 9) | (8 * v27);
    v29 = *(*(v19 + 56) + v28);
    v30 = *(*(v19 + 48) + v28);
    v31 = v29;
    v32 = sub_1002172B0(v30, v31, v64, &v81 + 1, v65, &v81, &v80);
    v34 = v33;

    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DEE40(0, v63[2] + 1, 1, v63);
        v63 = v38;
      }

      v36 = v63[2];
      v35 = v63[3];
      if (v36 >= v35 >> 1)
      {
        sub_1001DEE40(v35 > 1, v36 + 1, 1, v63);
        v63 = v39;
      }

      v63[2] = v36 + 1;
      v37 = &v63[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  v40 = sub_10020B65C(v63);
  if ((v80 & 1) == 0)
  {
    v42 = v5;
    v43 = v59;
    if (v81 == 1)
    {
      v44 = CKSyncEngine.state.getter();
      sub_10020A990(v65, v44, "Handling sent record zone changes", 33, 2);
      if (v5)
      {
        goto LABEL_20;
      }
    }

    if (HIBYTE(v81) == 1)
    {
      CKSyncEngine.state.getter();
      sub_100099DF4(&qword_1002E2DF0, &qword_10024AD78);
      v51 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10022E400;
      *(v54 + v53) = [objc_allocWithZone(CKRecordZone) initWithZoneID:*(v64 + 56)];
      (*(v52 + 104))(v54 + v53, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v51);
      CKSyncEngine.State.add(pendingDatabaseChanges:)(v54);
    }

    goto LABEL_26;
  }

  v41 = CKSyncEngine.state.getter();
  sub_10020AAFC(v65, v41);
  v42 = v5;
  v43 = v59;
  if (!v5)
  {

LABEL_26:
    v45 = 0;
    goto LABEL_27;
  }

LABEL_20:
  v45 = v42;

  swift_errorRetain();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    swift_errorRetain();
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "Caught error while attempting to repopulate the zone: %@", v48, 0xCu);
    sub_10003CD48(v49, &qword_1002E2700, &unk_1002474D0);
  }

  swift_errorRetain();
LABEL_27:
  v24 = a5;
  if (v61[2] || v60[2] || v43[2] || v40[2] || v45)
  {

    sub_1002108F4();
    v55 = swift_allocError();
    *v56 = v61;
    *(v56 + 8) = v60;
    *(v56 + 16) = v43;
    *(v56 + 24) = v40;
    *(v56 + 32) = v45;
    v57 = 1;
    *(v56 + 40) = 1;
    goto LABEL_33;
  }

LABEL_35:

  v55 = 0;
  v57 = 0;
LABEL_33:
  *v24 = v55;
  *(v24 + 8) = v57;
  return sub_100004118(v65);
}

void sub_100214A7C(int ***a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = *a2;
  v11 = *a1;
  v12 = *(*a2 + 96);
  v17[0] = *(*a2 + 80);
  v17[1] = v12;
  v13 = v10[8];
  v17[2] = v10[7];
  v17[3] = v13;
  v14 = v10[10];
  v17[4] = v10[9];
  v17[5] = v14;
  v17[6] = v10[11];
  v15 = _s18SyncEngineDelegateCMa(0, v17);
  swift_getWitnessTable(byte_10024AFC0, v15);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = objc_autoreleasePoolPush();
  sub_100214BC8(v11, a2, a3, a4, v17);
  objc_autoreleasePoolPop(v16);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a5 = v17[0];
  }
}

void sub_100214BC8(int **a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, int ***a5@<X8>)
{
  v164 = a4;
  v172 = a5;
  v168 = *a2;
  v8 = v168;
  isa = a3;
  v9 = type metadata accessor for SyncDownSynchronizationRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v170 = (&v148 - v13);
  v167 = type metadata accessor for UUID();
  v165 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v8[10];
  v16 = v8[15];
  v173 = a2;
  v17 = v8[16];
  v162 = v16;
  v163 = v15;
  v161 = v17;
  v18 = type metadata accessor for SyncDownIdentifierRecord(0, v15, v16, v17);
  v171 = *(v18 - 1);
  __chkstk_darwin(v18);
  v160 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v148 - v21;
  __chkstk_darwin(v23);
  v25 = &v148 - v24;
  v27 = __chkstk_darwin(v26);
  v29 = &v148 - v28;
  WitnessTable = swift_getWitnessTable(byte_10024AA78, v18, v27);
  if (sub_100203908(a1, v18, WitnessTable))
  {
    v170 = a1;
    v31 = a1;
    sub_1002039F8(v31, v18, WitnessTable, v29);
    v32 = v5;
    if (v5)
    {
      goto LABEL_16;
    }

    v159 = 0;
    v40 = PIPersonalizedPrivateIdentifierMapping.id.getter();
    v156 = v41;
    v157 = v40;
    v43 = v42;
    v45 = v44;
    v46 = qword_100310708;
    v48 = v171 + 16;
    v47 = *(v171 + 16);
    v155 = v29;
    v153 = v47;
    (v47)(v25, v29, v18);

    v49 = v31;
    v50 = v43;
    v151 = v46;
    v51 = v49;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    v154 = v45;

    v152 = v53;
    v54 = os_log_type_enabled(v52, v53);
    v150 = v48;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v158 = v50;
      v56 = v55;
      v57 = swift_slowAlloc();
      v149 = v57;
      v175 = swift_slowAlloc();
      *v56 = 138412802;
      v58 = [v51 recordID];
      *(v56 + 4) = v58;
      *v57 = v58;
      *(v56 + 12) = 2080;
      (v153)(v22, v25, v18);
      v59 = *(v171 + 8);
      (v59)(v25, v18);
      v60 = v52;
      v61 = sub_1002070DC(v18);
      v63 = v62;
      v64 = v22;
      v65 = v59;
      (v59)(v64, v18);
      v66 = sub_100009E5C(v61, v63, &v175);

      *(v56 + 14) = v66;
      *(v56 + 22) = 2080;

      v67 = v154;

      v68 = sub_1001ECC0C();
      v70 = v69;

      v71 = sub_100009E5C(v68, v70, &v175);

      *(v56 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v60, v152, "Handling successfully saved sent identifier record: CKRecordID=%@, syncDownIdentifierRecord=%s, persistedRecordID=%s", v56, 0x20u);
      sub_10003CD48(v149, &qword_1002E2700, &unk_1002474D0);

      swift_arrayDestroy();

      v50 = v158;
    }

    else
    {
      v65 = *(v171 + 8);
      (v65)(v25, v18);

      v67 = v154;
    }

    v75 = *(isa + 3);
    v76 = *(isa + 4);
    sub_10000C4FC(isa, v75);
    v77 = v159;
    v78 = (*(v76 + 64))(v157, v50, v156, v67, v75, v76);
    v32 = v77;
    if (v77)
    {
      (v65)(v155, v18);

LABEL_16:
      a1 = v170;
      goto LABEL_17;
    }

    v88 = v78;

    if (v88)
    {
      v170 = v65;
      v148 = v18;
      v159 = 0;
      swift_unknownObjectRetain();
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v175 = v92;
        *v91 = 136315138;
        v174 = v88;
        v93 = v168[13];
        v94 = v168[22];
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        swift_unknownObjectRelease();
        v98 = sub_100009E5C(v95, v97, &v175);

        *(v91 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v89, v90, "Found existing persisted record for syncDownIdentifierRecord: %s", v91, 0xCu);
        sub_100004118(v92);

        v99 = v93;
        v100 = v94;
      }

      else
      {
        swift_unknownObjectRelease();

        v100 = v168[22];
        v99 = v168[13];
      }

      v122 = v155;
      v123 = v148;
      v124 = *(v100 + 144);
      v125 = v166;
      v168 = (v100 + 144);
      v158 = v124;
      v124(v99, v100);
      sub_10003C1D4(&qword_1002E1918, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v126 = v167;
      v127 = dispatch thunk of static Equatable.== infix(_:_:)();
      isa = v165[1].isa;
      isa(v125, v126);
      if ((v127 & 1) == 0)
      {
        v156 = v99;
        v157 = v100;
        v128 = v160;
        (v153)(v160, v122, v123);
        swift_unknownObjectRetain_n();
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v175 = v173;
          *v131 = 136315394;
          v132 = v165[2].isa;
          v133 = &v128[v123[12]];
          v165 = v129;
          v134 = v128;
          v135 = v166;
          LODWORD(v154) = v130;
          v136 = v167;
          (v132)(v166, v133, v167);
          (v170)(v134, v123);
          sub_10003C1D4(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v137 = dispatch thunk of CustomStringConvertible.description.getter();
          v139 = v138;
          isa(v135, v136);
          v140 = sub_100009E5C(v137, v139, &v175);

          v153 = v131;
          *(v131 + 4) = v140;
          *(v131 + 12) = 2080;
          v99 = v156;
          v100 = v157;
          v158(v156, v157);
          swift_unknownObjectRelease();
          v141 = dispatch thunk of CustomStringConvertible.description.getter();
          v143 = v142;
          swift_unknownObjectRelease();
          isa(v135, v136);
          v144 = sub_100009E5C(v141, v143, &v175);

          v145 = v153;
          *(v153 + 14) = v144;
          v146 = v165;
          _os_log_impl(&_mh_execute_header, v165, v154, "Detected uuid change after successfully sending CKRecord, uuid in synced down CKRecord is %s, uuid in existing persisted record is %s", v145, 0x16u);
          swift_arrayDestroy();

          v123 = v148;
          v122 = v155;
        }

        else
        {
          swift_unknownObjectRelease();
          (v170)(v128, v123);
          swift_unknownObjectRelease();

          v122 = v155;
          v99 = v156;
          v100 = v157;
        }
      }

      sub_100206004(v122, v164, v99, v163, v100, v162, v161);
      swift_unknownObjectRelease();
      (v170)(v122, v123);
    }

    else
    {
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&_mh_execute_header, v119, v120, "Failed to find existing persisted record for syncDownIdentifierRecord while handling sent record zone changes", v121, 2u);
      }

      (v65)(v155, v18);
    }

LABEL_36:
    v147 = v172;
    *v172 = 0;
    v147[1] = 0;
    return;
  }

  if ((sub_100209668(a1) & 1) == 0)
  {
    v34 = a1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "Encountered unexpected saved CKRecord %@ while handling sent record zone changes.", v37, 0xCu);
      sub_10003CD48(v38, &qword_1002E2700, &unk_1002474D0);
    }

    goto LABEL_36;
  }

  v33 = a1;
  sub_10020AFD4(v33, v170);
  if (!v5)
  {
    v72 = *(isa + 3);
    v73 = *(isa + 4);
    sub_10000C4FC(isa, v72);
    v74 = (*(v73 + 56))(v72, v73);
    v159 = 0;
    v101 = v74;
    v102 = v170;
    sub_100211EC8(v170, v11);
    swift_unknownObjectRetain_n();
    v103 = v33;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v173 = v107;
      v175 = swift_slowAlloc();
      *v106 = 138412802;
      v108 = [v103 recordID];
      *(v106 + 4) = v108;
      *v107 = v108;
      *(v106 + 12) = 2080;
      v109 = sub_100209B24();
      v111 = v110;
      sub_100211F2C(v11);
      v112 = sub_100009E5C(v109, v111, &v175);

      *(v106 + 14) = v112;
      *(v106 + 22) = 2080;
      v174 = v101;
      v113 = v168[12];
      v114 = v168[20];
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v116;
      swift_unknownObjectRelease_n();
      v118 = sub_100009E5C(v115, v117, &v175);
      v102 = v170;

      *(v106 + 24) = v118;
      _os_log_impl(&_mh_execute_header, v104, v105, "Handling successfully saved sent synchronization CKRecord: CKRecordID=%@, syncDownSynchronizationRecord=%s, syncState=%s", v106, 0x20u);
      sub_10003CD48(v173, &qword_1002E2700, &unk_1002474D0);

      swift_arrayDestroy();
    }

    else
    {

      swift_unknownObjectRelease_n();
      sub_100211F2C(v11);
      v113 = v168[12];
      v114 = v168[20];
    }

    sub_100205294(v102, v113, v114);
    swift_unknownObjectRelease();
    sub_100211F2C(v102);
    goto LABEL_36;
  }

  v32 = v5;
LABEL_17:
  v79 = a1;
  swift_errorRetain();
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 138412546;
    *(v82 + 4) = v79;
    *v83 = v79;
    *(v82 + 12) = 2112;
    v84 = v79;
    swift_errorRetain();
    v85 = _swift_stdlib_bridgeErrorToNSError();
    *(v82 + 14) = v85;
    v83[1] = v85;
    _os_log_impl(&_mh_execute_header, v80, v81, "Caught error while handling successfully saved sent CKRecord %@: %@", v82, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
  }

  v86 = v172;
  *v172 = v79;
  v86[1] = v32;
  v87 = v79;
}

void sub_100215CC4(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  v9 = *a1;
  v10 = *(*a2 + 96);
  v15[0] = *(*a2 + 80);
  v15[1] = v10;
  v11 = v8[8];
  v15[2] = v8[7];
  v15[3] = v11;
  v12 = v8[10];
  v15[4] = v8[9];
  v15[5] = v12;
  v15[6] = v8[11];
  v13 = _s18SyncEngineDelegateCMa(0, v15);
  swift_getWitnessTable(byte_10024AFC0, v13);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = objc_autoreleasePoolPush();
  sub_100215E08(a2, v9, a3, v15);
  objc_autoreleasePoolPop(v14);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a4 = v15[0];
  }
}

void sub_100215E08(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v38 = a4;
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35 = a3;
    v19 = a1;
    v20 = v18;
    *v17 = 138412290;
    *(v17 + 4) = v13;
    *v18 = v13;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Handling successfully deleted CKRecord with CKRecordID=%@", v17, 0xCu);
    sub_10003CD48(v20, &qword_1002E2700, &unk_1002474D0);
    a1 = v19;
    a3 = v35;

    v11 = v34;
  }

  v22 = v37;
  sub_100202D40(v13, v9);
  if (v22)
  {

    sub_100002728(v9, 1, 1, v10);
    sub_10003CD48(v9, &qword_1002E12C8, &qword_100248D50);
    v23 = v13;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected deletion of unknown record ID %@ while handling sent record zone changes.", v26, 0xCu);
      sub_10003CD48(v27, &qword_1002E2700, &unk_1002474D0);
    }
  }

  else
  {
    v37 = a1;
    sub_100002728(v9, 0, 1, v10);
    v30 = v36;
    (*(v11 + 32))(v36, v9, v10);
    v31 = v11;
    v32 = a3[3];
    v33 = a3[4];
    sub_10000C4FC(a3, v32);
    (*(v33 + 112))(v30, v32, v33);
    (*(v31 + 8))(v30, v10);
  }

  v29 = v38;
  *v38 = 0;
  v29[1] = 0;
}

void sub_100216314(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X6>, _OWORD *a8@<X8>)
{
  v23 = a8;
  v15 = *a2;
  v16 = *(*a2 + 96);
  v22[0] = *(*a2 + 80);
  v22[1] = v16;
  v17 = v15[8];
  v22[2] = v15[7];
  v22[3] = v17;
  v18 = v15[10];
  v22[4] = v15[9];
  v22[5] = v18;
  v22[6] = v15[11];
  v19 = _s18SyncEngineDelegateCMa(0, v22);
  swift_getWitnessTable(byte_10024AFC0, v19);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = objc_autoreleasePoolPush();
  sub_100216484(a2, a1, a3, a4, a5, a6, a7, v22);
  objc_autoreleasePoolPop(v20);
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *v23 = v22[0];
  }
}

void sub_100216484(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v121 = a7;
  v130 = a6;
  v131 = a5;
  v129 = a4;
  v132 = a3;
  v133 = a8;
  v118 = *a1;
  v10 = type metadata accessor for UUID();
  v119 = *(v10 - 8);
  v120 = v10;
  __chkstk_darwin(v10);
  v117 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v122 = &v114 - v13;
  v14 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v128 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v114 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v114 - v22;
  v24 = qword_100310708;
  v25 = *(v15 + 16);
  v25(&v114 - v22, a2, v14, v21);
  v134 = a2;
  v123 = v25;
  v124 = v15 + 16;
  (v25)(v19, a2, v14);
  v126 = v24;
  v127 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v125 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v29 = 138412546;
    v30 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v31 = [v30 recordID];

    v115 = v26;
    v32 = v27;
    v33 = *(v15 + 8);
    v33(v23, v14);
    *(v29 + 4) = v31;
    v34 = v116;
    *v116 = v31;
    v35 = v33;
    *(v29 + 12) = 2112;
    CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    v33(v19, v14);
    v37 = v134;
    *(v29 + 14) = v36;
    v34[1] = v36;
    v38 = v115;
    _os_log_impl(&_mh_execute_header, v115, v32, "Received error for failed save of CKRecord with CKRecordID=%@: %@", v29, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
    v39 = v135;

    v40 = v14;
  }

  else
  {

    v35 = *(v15 + 8);
    v35(v19, v14);
    v35(v23, v14);
    v40 = v14;
    v37 = v134;
    v39 = v135;
  }

  v41 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
  v139 = v41;
  type metadata accessor for CKError(0);
  sub_10003C1D4(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);
  _BridgedStoredNSError.code.getter();

  v42 = v138;
  switch(v138)
  {
    case 112:
      v45 = v130;
      goto LABEL_11;
    case 28:
      v45 = v131;
      *v132 = 1;
LABEL_11:
      *v45 = 1;
      goto LABEL_15;
    case 26:
      *v132 = 1;
      v43 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v44 = [v43 recordID];

      LOBYTE(v43) = sub_100202F68(v44);
      if (v43)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
  }

  v46 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
  v137 = v46;
  _BridgedStoredNSError.code.getter();

  if (sub_100141154(v136, &off_1002BCE50))
  {
    v47 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v48 = [v47 recordID];

    LOBYTE(v47) = sub_100202F68(v48);
    if (v47)
    {
LABEL_14:
      CKSyncEngine.state.getter();
      sub_100099DF4(&qword_1002E1200, &qword_100247438);
      v49 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10022E400;
      v53 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v54 = [v53 recordID];

      *(v52 + v51) = v54;
      (*(v50 + 104))(v52 + v51, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v49);
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v52);
    }

LABEL_15:
    v55 = v133;
    *v133 = 0;
    v55[1] = 0;
    return;
  }

  v56 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
  v57 = v56;
  if (v42 != 11)
  {
    goto LABEL_20;
  }

  v58 = [v56 recordID];

  v59 = sub_100202F68(v58);
  v60 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
  v61 = [v60 recordID];

  if (!v59)
  {
    v66 = v40;
    v67 = [v61 recordName];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    if (v68 == 0x6E6F7268636E7953 && v70 == 0xEF6E6F6974617A69)
    {

      v40 = v66;
      v77 = v128;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v40 = v66;
      v77 = v128;
      if ((v72 & 1) == 0)
      {
        v57 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
LABEL_20:
        v64 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
        v65 = v133;
        *v133 = v57;
        v65[1] = v64;
        return;
      }
    }

    v73 = v121[3];
    v74 = v121[4];
    sub_10000C4FC(v121, v73);
    (*(v74 + 56))(v73, v74);
    if (!v39)
    {
      (*(v118[20] + 72))(0, 0xF000000000000000, v118[12]);
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v63 = v39;
    goto LABEL_31;
  }

  v62 = v122;
  sub_100202D40(v61, v122);
  v63 = v39;
  if (v39)
  {

    v77 = v128;
LABEL_31:
    (v123)(v77, v37, v40);
    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v132 = v35;
      v81 = v77;
      v82 = v80;
      v83 = swift_slowAlloc();
      v131 = v40;
      v84 = v83;
      *v82 = 138412546;
      v135 = v78;
      v85 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v86 = [v85 recordID];

      v132(v81, v131);
      *(v82 + 4) = v86;
      *v84 = v86;
      *(v82 + 12) = 2112;
      swift_errorRetain();
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v87;
      v84[1] = v87;
      v88 = v135;
      _os_log_impl(&_mh_execute_header, v135, v79, "Caught error while handling unknownItem error for CKRecord with CKRecordID=%@: %@", v82, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
    }

    else
    {

      v35(v77, v40);
    }

    v89 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v90 = v133;
    *v133 = v89;
    v90[1] = v63;
    return;
  }

  v75 = v121[3];
  v76 = v121[4];
  sub_10000C4FC(v121, v75);
  if ((*(v76 + 104))(v62, v75, v76))
  {
    (*(v118[22] + 368))(0, 0xF000000000000000, v118[13]);
    CKSyncEngine.state.getter();
    sub_100099DF4(&qword_1002E1200, &qword_100247438);
    v91 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v92 = *(v91 - 8);
    v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_10022E400;
    v95 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v96 = [v95 recordID];

    *(v94 + v93) = v96;
    (*(v92 + 104))(v94 + v93, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v91);
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v94);

    swift_unknownObjectRelease();
    (*(v119 + 8))(v122, v120);
    goto LABEL_15;
  }

  v135 = 0;
  v98 = v119;
  v97 = v120;
  v99 = v117;
  v100 = v122;
  (*(v119 + 16))(v117, v122, v120);
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v137 = v104;
    *v103 = 136315138;
    sub_10003C1D4(&qword_1002E27E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v99;
    v108 = v107;
    v109 = *(v98 + 8);
    v109(v106, v120);
    v110 = sub_100009E5C(v105, v108, &v137);

    *(v103 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v101, v102, "Unable to find existing record for UUID %s when handling .unknownItem error.", v103, 0xCu);
    sub_100004118(v104);
    v100 = v122;

    v97 = v120;
  }

  else
  {

    v109 = *(v98 + 8);
    v109(v99, v97);
  }

  v111 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
  v112 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
  v109(v100, v97);
  v113 = v133;
  *v133 = v111;
  v113[1] = v112;
}

uint64_t sub_1002172B0(void *a1, void *a2, uint64_t a3, _BYTE *a4, void *a5, _BYTE *a6, _BYTE *a7)
{
  v13 = *a3;
  v14 = *(*a3 + 96);
  v20[0] = *(*a3 + 80);
  v20[1] = v14;
  v15 = v13[8];
  v20[2] = v13[7];
  v20[3] = v15;
  v16 = v13[10];
  v20[4] = v13[9];
  v20[5] = v16;
  v20[6] = v13[11];
  v17 = _s18SyncEngineDelegateCMa(0, v20);
  swift_getWitnessTable(byte_10024AFC0, v17);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = objc_autoreleasePoolPush();
  sub_1002173F8(a1, a2, a4, a5, a6, a7, v20);
  objc_autoreleasePoolPop(v18);
  return *&v20[0];
}

id sub_1002173F8@<X0>(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X3>, void *a4@<X4>, _BYTE *a5@<X5>, _BYTE *a6@<X6>, void *a7@<X8>)
{
  v8 = v7;
  v12 = a1;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v34 = a4;
    v16 = swift_slowAlloc();
    v17 = a7;
    v18 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v18 = v12;
    *(v16 + 12) = 2112;
    v19 = v12;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v18[1] = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received error for failed deletion of CKRecord with CKRecordID=%@: %@", v16, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
    a7 = v17;
    v8 = v7;

    a4 = v34;
  }

  type metadata accessor for CKError(0);
  sub_10003C1D4(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);
  _BridgedStoredNSError.code.getter();
  if (v38 != 11)
  {
    switch(v38)
    {
      case 112:
        v22 = a6;
        break;
      case 28:
        v22 = a5;
        *a3 = 1;
        break;
      case 26:
        v22 = a3;
        break;
      default:
LABEL_19:
        *a7 = v12;
        a7[1] = v13;
        v33 = v12;
        return v13;
    }

    *v22 = 1;
  }

  result = sub_1002177A4(v12, v13, a4);
  if (v8)
  {
    v12 = v12;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a7;
      v29 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v12;
      *v29 = v12;
      *(v27 + 12) = 2112;
      v30 = v12;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Caught error while handling failed record deletion for CKRecordID=%@: %@", v27, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
      a7 = v28;
    }

    else
    {
    }

    goto LABEL_19;
  }

  if (result)
  {
    v32 = v24;
  }

  else
  {
    v32 = 0;
  }

  *a7 = result;
  a7[1] = v32;
  return result;
}

id sub_1002177A4(void *a1, void *a2, void *a3)
{
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v7 - 8);
  v9 = v29 - v8;
  v10 = type metadata accessor for UUID();
  sub_100003724();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100202D40(a1, v9);
  if (v3)
  {

    sub_100002728(v9, 1, 1, v10);
    sub_10003CD48(v9, &qword_1002E12C8, &qword_100248D50);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unexpected failed deletion of unknown record ID %@ while handling failed record deletions.", v19, 0xCu);
      sub_10003CD48(v20, &qword_1002E2700, &unk_1002474D0);
      sub_1000327B4(v20);
      sub_1000327B4(v19);
    }

    v22 = v16;
    v23 = a2;
  }

  else
  {
    sub_100002728(v9, 0, 1, v10);
    (*(v12 + 32))(v15, v9, v10);
    v24 = a3[3];
    v25 = a3[4];
    sub_10000C4FC(a3, v24);
    (*(v25 + 112))(v15, v24, v25);
    v26 = sub_10003C21C();
    v27(v26);
    return 0;
  }

  return v16;
}

unint64_t sub_100217A80()
{
  result = qword_1002E2E70[0];
  if (!qword_1002E2E70[0])
  {
    v3 = sub_100003AE0(255, &qword_1002E2980, CKRecordZoneID_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, qword_1002E2E70);
  }

  return result;
}

uint64_t sub_100217AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100217B24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100217B38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100217B58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_100217BA8(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100217C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_transaction_create();
  swift_beginAccess();
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  sub_100008494(v3 + 16, v7);
  (*(v8 + 32))(a1, a2, a3, v7, v8);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100217D64()
{
  sub_100004118((v0 + 16));

  v1 = qword_100310708;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003D150(*(v0 + qword_100310710), *(v0 + qword_100310710 + 8));
  sub_10003D150(*(v0 + qword_100310718), *(v0 + qword_100310718 + 8));
  return v0;
}

uint64_t sub_100217E04()
{
  sub_100217D64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100217E78()
{
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100247D00;
  v8 = *(v0 + 56);
  *(v7 + 32) = v8;
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), Changes);
  v9 = v8;
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  sub_100099DF4(&qword_1002E2F78, &qword_10024AFF0);
  v10 = *(sub_100099DF4(&qword_1002E2F80, &qword_10024AFF8) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10022E400;
  *(v12 + v11) = v9;
  CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)();
  sub_10021A728();
  type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
  sub_10003C580(qword_1002E2E70, sub_10021A728, &protocol conformance descriptor for NSObject);
  Dictionary.init(dictionaryLiteral:)();
  return CKSyncEngine.FetchChangesOptions.zoneConfigurations.setter();
}

uint64_t sub_1002180B0(uint64_t a1, uint64_t a2)
{
  v364 = *v2;
  v338 = type metadata accessor for CKSyncEngine.Event.DidSendChanges();
  sub_100003724();
  v337 = v5;
  __chkstk_darwin(v6);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v7);
  sub_10000D478();
  sub_100008280(v8);
  v352 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  sub_100003724();
  v351 = v9;
  __chkstk_darwin(v10);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v11);
  sub_10000D478();
  sub_100008280(v12);
  v355 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  sub_100003724();
  v354 = v13;
  __chkstk_darwin(v14);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_10000D478();
  sub_100008280(v16);
  v340 = type metadata accessor for CKSyncEngine.Event.WillSendChanges();
  sub_100003724();
  v339 = v17;
  __chkstk_darwin(v18);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v19);
  sub_10000D478();
  sub_100008280(v20);
  Changes = type metadata accessor for CKSyncEngine.Event.DidFetchChanges();
  sub_100003724();
  v341 = v21;
  __chkstk_darwin(v22);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v23);
  sub_10000D478();
  sub_100008280(v24);
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  sub_100003724();
  v346 = v25;
  __chkstk_darwin(v26);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_10000D478();
  sub_100008280(v28);
  type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  sub_100003724();
  v358 = v30;
  v359 = v29;
  __chkstk_darwin(v29);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_10000D478();
  v357 = v32;
  v344 = type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges();
  sub_100003724();
  v343 = v33;
  __chkstk_darwin(v34);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_10000D478();
  sub_100008280(v36);
  v365 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  sub_100003724();
  v362 = v37;
  __chkstk_darwin(v38);
  sub_1000037D4();
  v356 = v39;
  __chkstk_darwin(v40);
  sub_10000D478();
  v361 = v41;
  v349 = type metadata accessor for CKSyncEngine.Event.WillFetchChanges();
  sub_100003724();
  v348 = v42;
  __chkstk_darwin(v43);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_10000D478();
  sub_100008280(v45);
  v360 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  sub_100003724();
  v363 = v46;
  __chkstk_darwin(v47);
  v49 = v335 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = (v335 - v51);
  v53 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  sub_100003724();
  v367 = v54;
  __chkstk_darwin(v55);
  v57 = v335 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = v335 - v59;
  type metadata accessor for CKSyncEngine.Event();
  sub_100003724();
  v371 = v61;
  v372 = v62;
  __chkstk_darwin(v61);
  sub_1000037D4();
  v366[2] = v63;
  __chkstk_darwin(v64);
  sub_10000690C();
  __chkstk_darwin(v65);
  sub_10000690C();
  __chkstk_darwin(v66);
  sub_10000690C();
  __chkstk_darwin(v67);
  v69 = v335 - v68;
  __chkstk_darwin(v70);
  sub_10000D478();
  v369 = v71;
  v370 = v2;
  v72 = *&v2[qword_100310710];
  if (v72)
  {
    v72(a1, a2);
  }

  v73 = a2;
  v74 = v372;
  v75 = *(v372 + 16);
  v76 = v369;
  v368 = a1;
  v77 = a1;
  v78 = v371;
  v366[0] = v75;
  v366[1] = v372 + 16;
  v75(v369, v77, v371);
  v79 = (*(v74 + 88))(v76, v78);
  if (v79 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v365 = v73;
    (*(v74 + 96))(v76, v78);
    v80 = v367;
    (*(v367 + 32))(v60, v76, v53);
    sub_10003C768();
    v82 = v81(v57, v60, v53);
    v83 = sub_10003C7E8(v82);
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = sub_10003A604();
      v86 = swift_slowAlloc();
      v373 = v86;
      *v85 = 136315138;
      sub_10003C580(qword_1002E2FE8, &type metadata accessor for CKSyncEngine.Event.StateUpdate, &protocol conformance descriptor for CKSyncEngine.Event.StateUpdate);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v90 = *(v367 + 8);
      v90(v57, v53);
      v91 = sub_100009E5C(v87, v89, &v373);
      v69 = v370;

      *(v85 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v83, v84, "State update: %s", v85, 0xCu);
      sub_100004118(v86);
      sub_1000327B4(v86);
      sub_1000327B4(v85);
    }

    else
    {

      v90 = *(v80 + 8);
      v92 = (v90)(v57, v53);
    }

    __chkstk_darwin(v92);
    v106 = v364;
    v107 = v364[6];
    *&v335[-16] = v364[5];
    *&v335[-14] = v107;
    v108 = v106[8];
    *&v335[-12] = v106[7];
    *&v335[-10] = v108;
    v109 = v106[10];
    *&v335[-8] = v106[9];
    *&v335[-6] = v109;
    *&v335[-4] = v106[11];
    v335[-2] = v60;
    sub_100217C68(sub_10003C538, &v335[-18], &type metadata for ()[1]);
    result = (v90)(v60, v53);
    v93 = v365;
    goto LABEL_47;
  }

  v93 = v73;
  if (v79 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v94 = v369;
    (*(v372 + 96))(v369, v371);
    v95 = v363;
    v96 = v360;
    (*(v363 + 32))(v52, v94, v360);
    (*(v95 + 16))(v49, v52, v96);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v97, v98))
    {
      sub_10003A604();
      v369 = sub_10003C6D8();
      v373 = v369;
      *v57 = 136315138;
      sub_10003C580(&qword_1002E2FE0, &type metadata accessor for CKSyncEngine.Event.AccountChange, &protocol conformance descriptor for CKSyncEngine.Event.AccountChange);
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v93;
      v102 = v101;
      v103 = sub_10003C880();
      (v95)(v103);
      v104 = sub_100009E5C(v99, v102, &v373);
      v93 = v100;

      *(v57 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v97, v98, "Account change: %s", v57, 0xCu);
      sub_10003C668();
      sub_10003C6F4();
    }

    else
    {

      v127 = sub_10003C880();
      v105 = (v95)(v127);
    }

    v128 = sub_10003C840(v105);
    sub_100209FAC(v52, v128);
    v145 = sub_10003C86C();
    (v95)(v145);

    goto LABEL_19;
  }

  v110 = v371;
  if (v79 != enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v112 = v372;
    if (v79 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
    {
      v129 = sub_10003C6B0();
      v130(v129);
      v131 = v357;
      v112 = v358;
      v132 = sub_10003C858();
      v114 = v359;
      v133(v132);
      sub_10003C768();
      v134 = sub_10003C6C4();
      v136 = v135(v134);
      v137 = sub_10003C7E8(v136);
      v138 = static os_log_type_t.info.getter();
      if (sub_10003C710(v138))
      {
        sub_10003A604();
        v139 = sub_10003C6D8();
        sub_10003C7BC(v139);
        *v57 = 136315138;
        sub_10003C580(&qword_1002E2FC0, &type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges, &protocol conformance descriptor for CKSyncEngine.Event.FetchedRecordZoneChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v140 = sub_10003C5E0();
        (v112)(v140, v359);
        sub_10003C72C();
        sub_10000878C();

        *(v57 + 4) = v131;
        sub_10003C610(&_mh_execute_header, v141, v142, "Fetched record zone changes: %s");
        v143 = sub_10003C790();
        v114 = v359;
        sub_1000327B4(v143);
        sub_10003C6F4();
      }

      else
      {

        v165 = sub_10003C630();
        v144 = (v112)(v165);
      }

      sub_10003C840(v144);
      v147 = v357;
      v166 = sub_10003C69C();
      sub_10020BB08(v166, v167);
      if (v57)
      {
        v365 = v93;
        goto LABEL_37;
      }

      goto LABEL_46;
    }

    if (v79 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
    {
      v150 = sub_10003C6B0();
      v151(v150);
      sub_10003C644();
      v152 = sub_10003C800();
      v114 = v355;
      v153(v152);
      sub_10003C768();
      v154 = sub_10003C6C4();
      v156 = v155(v154);
      v157 = sub_10003C7E8(v156);
      v158 = static os_log_type_t.info.getter();
      if (sub_10003C710(v158))
      {
        sub_10003A604();
        v159 = sub_10003C6D8();
        sub_10003C7BC(v159);
        *v57 = 136315138;
        sub_10003C580(&qword_1002E2FA0, &type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges, &protocol conformance descriptor for CKSyncEngine.Event.SentDatabaseChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v160 = sub_10003C5E0();
        (v112)(v160, v355);
        sub_10003C72C();
        sub_10000878C();

        *(v57 + 4) = v73;
        sub_10003C610(&_mh_execute_header, v161, v162, "Sent database changes: %s");
        v163 = sub_10003C790();
        v114 = v355;
        sub_1000327B4(v163);
        sub_10003C6F4();
      }

      else
      {

        v182 = sub_10003C630();
        v164 = (v112)(v182);
      }

      sub_10003C840(v164);
      v147 = v353;
      v183 = sub_10003C69C();
      sub_100213BBC(v183, v184);
      if (v57)
      {
        v365 = v73;
        goto LABEL_37;
      }

      goto LABEL_46;
    }

    if (v79 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
    {
      v168 = sub_10003C6B0();
      v169(v168);
      sub_10003C644();
      v170 = sub_10003C800();
      v171(v170);
      sub_10003C768();
      v172 = sub_10003C6C4();
      v174 = v173(v172);
      v175 = sub_10003C7E8(v174);
      v176 = static os_log_type_t.info.getter();
      if (sub_10003C710(v176))
      {
        sub_10003A604();
        v177 = sub_10003C6D8();
        sub_10003C7BC(v177);
        *v57 = 136315138;
        sub_10003C580(&qword_1002E2F98, &type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges, &protocol conformance descriptor for CKSyncEngine.Event.SentRecordZoneChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v178 = sub_10003C5E0();
        (v112)(v178, v352);
        sub_10003C72C();
        sub_10000878C();

        *(v57 + 4) = v73;
        sub_10003C610(&_mh_execute_header, v179, v180, "Sent record zone changes: %s");
        v181 = sub_10003C790();
        sub_1000327B4(v181);
        sub_10003C6F4();
      }

      else
      {

        v219 = sub_10003C630();
        (v112)(v219);
      }

      sub_100214324(v350, v73);
      v231 = sub_10003C810();
      result = (v112)(v231);
      goto LABEL_47;
    }

    if (v79 == enum case for CKSyncEngine.Event.willFetchChanges(_:))
    {
      v205 = sub_10003C758();
      v206(v205);
      sub_10003C644();
      sub_10003C748();
      sub_10003C834();
      v207();
      sub_10003C768();
      v208 = sub_10003C654();
      v210 = v209(v208);
      v211 = sub_10003C7E8(v210);
      v212 = static os_log_type_t.info.getter();
      if (sub_10003C710(v212))
      {
        sub_10003A604();
        v213 = sub_10003C6D8();
        sub_10003C828(v213);
        *v57 = 136315138;
        sub_10003C580(&qword_1002E2FD8, &type metadata accessor for CKSyncEngine.Event.WillFetchChanges, &protocol conformance descriptor for CKSyncEngine.Event.WillFetchChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v214 = sub_10003C5F8();
        v52(v214);
        sub_10003C72C();
        sub_10000878C();

        *(v57 + 4) = v73;
        sub_10003C610(&_mh_execute_header, v215, v216, "Will fetch changes: %s");
        sub_10003C668();
        sub_10003C6F4();

        v217 = &v374;
LABEL_55:
        result = (v52)(*(v217 - 32), v110);
        goto LABEL_47;
      }
    }

    else if (v79 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
    {
      v220 = sub_10003C758();
      v221(v220);
      sub_10003C644();
      sub_10003C748();
      sub_10003C834();
      v222();
      sub_10003C768();
      v223 = sub_10003C654();
      v225 = v224(v223);
      v211 = sub_10003C7E8(v225);
      v226 = static os_log_type_t.info.getter();
      if (sub_10003C710(v226))
      {
        sub_10003A604();
        v227 = sub_10003C6D8();
        sub_10003C828(v227);
        *v57 = 136315138;
        sub_10003C580(&qword_1002E2FC8, &type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges, &protocol conformance descriptor for CKSyncEngine.Event.WillFetchRecordZoneChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v228 = sub_10003C5F8();
        v52(v228);
        sub_10003C72C();
        sub_10000878C();

        *(v57 + 4) = v73;
        sub_10003C610(&_mh_execute_header, v229, v230, "Will fetch record zone changes: %s");
        sub_10003C668();
        sub_10003C6F4();

        v217 = &v372;
        goto LABEL_55;
      }
    }

    else
    {
      if (v79 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
      {
        v232 = sub_10003C6B0();
        v233(v232);
        sub_10003C644();
        v234 = sub_10003C800();
        v114 = RecordZoneChanges;
        v235(v234);
        sub_10003C768();
        v236 = sub_10003C6C4();
        v238 = v237(v236);
        v239 = sub_10003C7E8(v238);
        v240 = static os_log_type_t.info.getter();
        if (sub_10003C710(v240))
        {
          sub_10003A604();
          v241 = sub_10003C6D8();
          sub_10003C7BC(v241);
          *v57 = 136315138;
          sub_10003C580(&qword_1002E2FB8, &type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges, &protocol conformance descriptor for CKSyncEngine.Event.DidFetchRecordZoneChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v242 = sub_10003C5E0();
          (v112)(v242, RecordZoneChanges);
          sub_10003C72C();
          sub_10000878C();

          *(v57 + 4) = v73;
          sub_10003C610(&_mh_execute_header, v243, v244, "Did fetch record zone changes: %s");
          v245 = sub_10003C790();
          v114 = RecordZoneChanges;
          sub_1000327B4(v245);
          sub_10003C6F4();
        }

        else
        {

          v258 = sub_10003C630();
          v246 = (v112)(v258);
        }

        sub_10003C840(v246);
        v147 = v345;
        v259 = sub_10003C69C();
        sub_1002104B8(v259, v260);
        if (v57)
        {
          v365 = v73;
          goto LABEL_37;
        }

        goto LABEL_46;
      }

      if (v79 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
      {
        v247 = sub_10003C758();
        v248(v247);
        sub_10003C644();
        sub_10003C748();
        sub_10003C834();
        v249();
        sub_10003C768();
        v250 = sub_10003C654();
        v252 = v251(v250);
        v211 = sub_10003C7E8(v252);
        v253 = static os_log_type_t.info.getter();
        if (sub_10003C710(v253))
        {
          sub_10003A604();
          v254 = sub_10003C6D8();
          sub_10003C828(v254);
          *v57 = 136315138;
          sub_10003C580(&qword_1002E2FB0, &type metadata accessor for CKSyncEngine.Event.DidFetchChanges, &protocol conformance descriptor for CKSyncEngine.Event.DidFetchChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v255 = sub_10003C5F8();
          v52(v255);
          sub_10003C72C();
          sub_10000878C();

          *(v57 + 4) = v73;
          sub_10003C610(&_mh_execute_header, v256, v257, "Did fetch changes: %s");
          sub_10003C668();
          sub_10003C6F4();

          v217 = v366;
          goto LABEL_55;
        }
      }

      else if (v79 == enum case for CKSyncEngine.Event.willSendChanges(_:))
      {
        v261 = sub_10003C758();
        v262(v261);
        sub_10003C644();
        sub_10003C748();
        sub_10003C834();
        v263();
        sub_10003C768();
        v264 = sub_10003C654();
        v266 = v265(v264);
        v211 = sub_10003C7E8(v266);
        v267 = static os_log_type_t.info.getter();
        if (sub_10003C710(v267))
        {
          sub_10003A604();
          v268 = sub_10003C6D8();
          sub_10003C828(v268);
          *v57 = 136315138;
          sub_10003C580(&qword_1002E2FA8, &type metadata accessor for CKSyncEngine.Event.WillSendChanges, &protocol conformance descriptor for CKSyncEngine.Event.WillSendChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v269 = sub_10003C5F8();
          v52(v269);
          sub_10003C72C();
          sub_10000878C();

          *(v57 + 4) = v73;
          sub_10003C610(&_mh_execute_header, v270, v271, "Will send changes: %s");
          sub_10003C668();
          sub_10003C6F4();

          v217 = &v362;
          goto LABEL_55;
        }
      }

      else
      {
        if (v79 != enum case for CKSyncEngine.Event.didSendChanges(_:))
        {
          if (v79 == enum case for CKSyncEngine.Event.willFetchAsset(_:))
          {
            sub_10003C780();
            v284();
            v285 = Logger.logObject.getter();
            v286 = static os_log_type_t.error.getter();
            if (sub_10003C710(v286))
            {
              sub_10003A604();
              v367 = sub_10003C6D8();
              v373 = v367;
              *v57 = 136315138;
              sub_10003C5C8();
              sub_10003C580(v287, v288, &protocol conformance descriptor for CKSyncEngine.Event);
              v289 = dispatch thunk of CustomStringConvertible.description.getter();
              v290 = sub_10003C7C8();
              (v112)(v290);
              sub_10003C72C();
              sub_10000878C();

              *(v57 + 4) = v289;
              sub_10003C610(&_mh_execute_header, v291, v292, "Unexpected .willFetchAsset event: %s");
              sub_10003C668();
              sub_10003C6F4();
            }

            else
            {

              v306 = sub_10003C7C8();
              (v112)(v306);
            }

            v307 = v369;
            v308 = v52;
          }

          else
          {
            if (v79 != enum case for CKSyncEngine.Event.fetchedAsset(_:))
            {
              v365 = v73;
              if (v79 == enum case for CKSyncEngine.Event.didFetchAsset(_:))
              {
                sub_10003C780();
                v309();
                v310 = Logger.logObject.getter();
                v311 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v310, v311))
                {
                  v312 = sub_10003A604();
                  v313 = swift_slowAlloc();
                  v373 = v313;
                  *v312 = 136315138;
                  sub_10003C5C8();
                  sub_10003C580(v314, v315, &protocol conformance descriptor for CKSyncEngine.Event);
                  v316 = v335[0];
                  v317 = v371;
                  v318 = dispatch thunk of CustomStringConvertible.description.getter();
                  v320 = v319;
                  v321 = *(v372 + 8);
                  v321(v316, v317);
                  v322 = sub_100009E5C(v318, v320, &v373);

                  *(v312 + 4) = v322;
                  _os_log_impl(&_mh_execute_header, v310, v311, "Unexpected .didFetchAsset event: %s", v312, 0xCu);
                  sub_100004118(v313);
                  sub_1000327B4(v313);
                  sub_1000327B4(v312);
                }

                else
                {

                  v321 = *(v372 + 8);
                  v321(v335[0], v371);
                }

                result = (v321)(v369, v371);
              }

              else
              {
                sub_10003C780();
                v323();
                v324 = Logger.logObject.getter();
                v325 = static os_log_type_t.error.getter();
                if (sub_10003C710(v325))
                {
                  sub_10003A604();
                  v326 = sub_10003C6D8();
                  sub_10003C7BC(v326);
                  *v57 = 136315138;
                  sub_10003C5C8();
                  sub_10003C580(v327, v328, &protocol conformance descriptor for CKSyncEngine.Event);
                  v329 = v336;
                  v330 = v371;
                  v331 = dispatch thunk of CustomStringConvertible.description.getter();
                  sub_10003C7AC();
                  (v112)(v329, v330);
                  sub_10003C72C();
                  sub_10000878C();

                  *(v57 + 4) = v331;
                  sub_10003C610(&_mh_execute_header, v332, v333, "Unknown CKSyncEngine.Event: %s");
                  v334 = sub_10003C790();
                  sub_1000327B4(v334);
                  sub_10003C6F4();
                }

                else
                {

                  sub_10003C7AC();
                  (v112)(v336);
                }

                result = (v112)(v369, v371);
              }

              v93 = v365;
              goto LABEL_19;
            }

            v293 = qword_100310708;
            v294 = v335[1];
            sub_10003C780();
            v295();
            v296 = &v370[v293];
            v297 = Logger.logObject.getter();
            v298 = static os_log_type_t.error.getter();
            if (sub_10003C710(v298))
            {
              sub_10003A604();
              v299 = sub_10003C6D8();
              sub_10003C7BC(v299);
              *v57 = 136315138;
              sub_10003C5C8();
              sub_10003C580(v300, v301, &protocol conformance descriptor for CKSyncEngine.Event);
              sub_10003C774();
              dispatch thunk of CustomStringConvertible.description.getter();
              v302 = sub_10003C5E0();
              (v112)(v302, v110);
              sub_10003C72C();
              sub_10000878C();

              *(v57 + 4) = v296;
              sub_10003C610(&_mh_execute_header, v303, v304, "Unexpected .fetchedAsset event: %s");
              v305 = sub_10003C790();
              sub_1000327B4(v305);
              sub_10003C6F4();
            }

            else
            {

              sub_10003C7AC();
              (v112)(v294, v110);
            }

            v307 = v369;
            v308 = v110;
          }

          result = (v112)(v307, v308);
LABEL_19:
          v69 = v370;
          goto LABEL_47;
        }

        v272 = sub_10003C758();
        v273(v272);
        sub_10003C644();
        sub_10003C748();
        sub_10003C834();
        v274();
        sub_10003C768();
        v275 = sub_10003C654();
        v277 = v276(v275);
        v211 = sub_10003C7E8(v277);
        v278 = static os_log_type_t.info.getter();
        if (sub_10003C710(v278))
        {
          sub_10003A604();
          v279 = sub_10003C6D8();
          sub_10003C828(v279);
          *v57 = 136315138;
          sub_10003C580(&qword_1002E2F90, &type metadata accessor for CKSyncEngine.Event.DidSendChanges, &protocol conformance descriptor for CKSyncEngine.Event.DidSendChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v280 = sub_10003C5F8();
          v52(v280);
          sub_10003C72C();
          sub_10000878C();

          *(v57 + 4) = v73;
          sub_10003C610(&_mh_execute_header, v281, v282, "Did send changes: %s");
          sub_10003C668();
          sub_10003C6F4();

          v217 = &v358;
          goto LABEL_55;
        }
      }
    }

    v283 = *(v112 + 8);
    v283(v53, v110);
    result = (v283)(v57, v110);
LABEL_47:
    v218 = *&v69[qword_100310718];
    if (v218)
    {
      return v218(v368, v93, 0);
    }

    return result;
  }

  (*(v372 + 96))(v369, v371);
  v111 = v361;
  v112 = v362;
  v113 = sub_10003C858();
  v114 = v365;
  v115(v113);
  sub_10003C768();
  v53 = v356;
  v117 = v116(v356, v111, v114);
  v118 = sub_10003C7E8(v117);
  v119 = static os_log_type_t.info.getter();
  if (sub_10003C710(v119))
  {
    sub_10003A604();
    v120 = sub_10003C6D8();
    sub_10003C7BC(v120);
    *v57 = 136315138;
    sub_10003C580(&qword_1002E2FD0, &type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges, &protocol conformance descriptor for CKSyncEngine.Event.FetchedDatabaseChanges);
    sub_10003C774();
    dispatch thunk of CustomStringConvertible.description.getter();
    v121 = sub_10003C5E0();
    (v112)(v121, v365);
    sub_10003C72C();
    sub_10000878C();

    *(v57 + 4) = v111;
    sub_10003C610(&_mh_execute_header, v122, v123, "Fetched database changes: %s");
    v124 = sub_10003C790();
    v114 = v365;
    sub_1000327B4(v124);
    sub_10003C6F4();
  }

  else
  {

    v146 = sub_10003C630();
    v125 = (v112)(v146);
  }

  sub_10003C840(v125);
  v147 = v361;
  v148 = sub_10003C69C();
  sub_10020B684(v148, v149);
  if (!v57)
  {
LABEL_46:
    (v112)(v147, v114);

    goto LABEL_47;
  }

  v365 = v93;
LABEL_37:
  (v112)(v147, v114);

  v185 = v368;
  (v366[0])(v53, v368, v110);
  swift_errorRetain();
  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v190 = v53;
    v191 = swift_slowAlloc();
    v373 = v191;
    *v188 = 136315394;
    sub_10003C5C8();
    sub_10003C580(v192, v193, &protocol conformance descriptor for CKSyncEngine.Event);
    v194 = v69;
    v195 = dispatch thunk of CustomStringConvertible.description.getter();
    v196 = v110;
    v198 = v197;
    (*(v372 + 8))(v190, v196);
    v199 = v195;
    v69 = v194;
    v200 = sub_100009E5C(v199, v198, &v373);

    *(v188 + 4) = v200;
    *(v188 + 12) = 2112;
    swift_errorRetain();
    v201 = _swift_stdlib_bridgeErrorToNSError();
    *(v188 + 14) = v201;
    *v189 = v201;
    _os_log_impl(&_mh_execute_header, v186, v187, "Caught error while handling %s: %@", v188, 0x16u);
    sub_1001A7228(v189);
    v202 = v189;
    v185 = v368;
    sub_1000327B4(v202);
    sub_100004118(v191);
    sub_1000327B4(v191);
    sub_1000327B4(v188);
  }

  else
  {

    (*(v372 + 8))(v53, v110);
  }

  v203 = v365;
  v204 = *&v69[qword_100310718];
  if (v204)
  {
    swift_errorRetain();
    v204(v185, v203, v57);
  }
}

uint64_t sub_10021A1DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v23 - v17;
  v19 = a1[3];
  v20 = a1[4];
  sub_10000C4FC(a1, v19);
  (*(v20 + 56))(v19, v20);
  if (!v13)
  {
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v21 = type metadata accessor for CKSyncEngine.State.Serialization();
    sub_100002728(v18, 0, 1, v21);
    (*(a13 + 24))(v18, a5, a13);
    swift_unknownObjectRelease();
  }

  return sub_100004118(a1);
}

uint64_t sub_10021A318(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  swift_getWitnessTable(byte_10024AFC0, *v2);
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C228);
}

uint64_t sub_10021A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  swift_getWitnessTable(byte_10024AFC0, *v3);
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C288);
}

uint64_t sub_10021A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  swift_getWitnessTable(byte_10024AFC0, *v3);
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C2E8);
}

uint64_t sub_10021A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10003C348;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, v9, a4);
}

uint64_t sub_10021A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_10003C440;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, v11, a5);
}

unint64_t sub_10021A728()
{
  result = qword_1002E2980;
  if (!qword_1002E2980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E2980);
  }

  return result;
}

uint64_t sub_10021A778(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021A7B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *sub_10021A82C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_10021A8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10021A928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021A964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021A9B4(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_10021AA24()
{
  result = qword_1002E30F0;
  if (!qword_1002E30F0)
  {
    v3 = sub_10009A468(&qword_1002E30F8, &qword_10024B370);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002E30F0);
  }

  return result;
}

BOOL sub_10021AA88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCE80, v2);

  return v3 != 0;
}

BOOL sub_10021AADC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021AA88(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10021AB38()
{
  result = qword_1002E3100;
  if (!qword_1002E3100)
  {
    result = swift_getWitnessTable("]h\a", &unk_1002C1DA0, v0, v1);
    atomic_store(result, &qword_1002E3100);
  }

  return result;
}

unint64_t sub_10021AB94()
{
  result = qword_1002E3128;
  if (!qword_1002E3128)
  {
    result = swift_getWitnessTable("Ih\a", &unk_1002C1D08, v0, v1);
    atomic_store(result, &qword_1002E3128);
  }

  return result;
}

unint64_t sub_10021ABE8(uint64_t a1)
{
  result = sub_10021AC10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10021AC10()
{
  result = qword_1002E3170;
  if (!qword_1002E3170)
  {
    result = swift_getWitnessTable(byte_10024B378, &unk_1002C1DA0, v0, v1);
    atomic_store(result, &qword_1002E3170);
  }

  return result;
}

unint64_t sub_10021AC68()
{
  result = qword_1002E3178;
  if (!qword_1002E3178)
  {
    result = swift_getWitnessTable(byte_10024B460, &unk_1002C1D08, v0, v1);
    atomic_store(result, &qword_1002E3178);
  }

  return result;
}

_BYTE *sub_10021ACBC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_10021AD70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10021AE08(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10021AEEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021AF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021AF98(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  if (*(a1 + 48))
  {
    v7 = a1[2];
    v8 = a1[3];
    if (*(a1 + 48) == 1)
    {
      if (*(a2 + 48) != 1)
      {
        return 0;
      }

      v9 = a2[2];
      v10 = a2[3];
      v11 = v4 == v6 && v5 == a2[1];
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (!v10)
        {
          return 0;
        }

        v12 = v7 == v9 && v8 == v10;
        return v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      if (!v10)
      {
        return 1;
      }
    }

    else if (*(a2 + 48) == 2)
    {
      v16 = a1[4];
      v15 = a1[5];
      v17 = a2[1];
      v18 = a2[2];
      v19 = a2[3];
      v20 = a2[4];
      v21 = a2[5];
      if (v5)
      {
        if (!v17)
        {
          return 0;
        }

        v22 = v4 == v6 && v5 == v17;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v17)
      {
        return 0;
      }

      v23 = v7 == v18 && v8 == v19;
      if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v16 == v20 && v15 == v21;
    }

    return 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  if (v4 == v6 && v5 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10021B19C()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return sub_10021B1C0();
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}