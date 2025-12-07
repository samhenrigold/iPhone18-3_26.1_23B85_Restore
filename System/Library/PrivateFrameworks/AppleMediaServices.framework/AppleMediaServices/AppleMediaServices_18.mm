_BYTE *sub_1001B9F4C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001BA128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  type metadata accessor for P384.Signing.PrivateKey();
  sub_100003724();
  v33 = v6;
  v34 = v5;
  __chkstk_darwin(v5);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  sub_100003724();
  v32 = v11;
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v17 = sub_1000030B8(v16);
  __chkstk_darwin(v17);
  sub_10000306C();
  v20 = v19 - v18;
  type metadata accessor for PIDeviceKeypair(0);
  sub_10000307C();
  __chkstk_darwin(v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v32 - v25;
  if (static SecureEnclave.isAvailable.getter())
  {
    v27 = v38;
    result = SecureEnclave.P384.Signing.PrivateKey.init(dataRepresentation:authenticationContext:)();
    if (v27)
    {
      return result;
    }

    (*(v32 + 32))(v20, v15, v10);
    sub_10002F194();
    sub_10002EF08(v20, v26, v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v36 = a1;
    v37 = a2;
    v30 = v38;
    result = P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
    if (v30)
    {
      return result;
    }

    (*(v33 + 32))(v23, v9, v34);
    swift_storeEnumTagMultiPayload();
    v26 = v23;
  }

  sub_10002F1F8();
  return sub_10002EF08(v26, v35, v31);
}

uint64_t sub_1001BA3B8()
{
  v1 = v0;
  v2 = type metadata accessor for PIDeviceKeypair.NonSEP(0);
  v3 = sub_1000030B8(v2);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  v7 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  type metadata accessor for PIDeviceKeypair(0);
  sub_10000307C();
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  sub_1001BAD60(v1, v14 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_10002F1AC();
    sub_10002EF08(v16, v6, v17);
    v18 = P384.Signing.PrivateKey.rawRepresentation.getter();
    sub_10002F1E0();
    v20 = v6;
  }

  else
  {
    sub_10002F194();
    sub_10002EF08(v15, v11, v21);
    v18 = SecureEnclave.P384.Signing.PrivateKey.dataRepresentation.getter();
    sub_10002F1C8();
    v20 = v11;
  }

  sub_10002EF68(v20, v19);
  return v18;
}

BOOL sub_1001BA510(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCC20, v2);

  return v3 != 0;
}

BOOL sub_1001BA558@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BA510(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1001BA58C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BA510(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BA5B8(uint64_t a1)
{
  v2 = sub_1001BA82C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BA5F4(uint64_t a1)
{
  v2 = sub_1001BA82C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIDeviceKeypair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PIDeviceKeypair(0);
  v5 = sub_1000030B8(v4);
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = sub_100099DF4(&qword_1002E05A8, &qword_1002446F0);
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v18 - v13;
  sub_10000C4FC(a1, a1[3]);
  sub_1001BA82C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v19;
    sub_1001B57CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001BA128(v18[0], v18[1], v8);
    (*(v11 + 8))(v14, v9);
    sub_10002F1F8();
    sub_10002EF08(v8, v15, v16);
  }

  return sub_100004118(a1);
}

unint64_t sub_1001BA82C()
{
  result = qword_1002E05B0;
  if (!qword_1002E05B0)
  {
    result = swift_getWitnessTable(byte_1002448FC, &type metadata for PIDeviceKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E05B0);
  }

  return result;
}

uint64_t PIDeviceKeypair.encode(to:)(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E05B8, &qword_1002446F8);
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_10000C4FC(a1, a1[3]);
  sub_1001BA82C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = sub_1001BA3B8();
  v11 = v8;
  sub_1001B5884();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000D170(v10, v11);
  return (*(v4 + 8))(v7, v2);
}

unint64_t PIDeviceKeypair.SEP.description.getter()
{
  sub_10002F224();

  type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  sub_100099DF4(&qword_1002E05C0, &unk_100244700);
  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

unint64_t PIDeviceKeypair.NonSEP.description.getter()
{
  sub_10002F224();

  type metadata accessor for P384.Signing.PrivateKey();
  sub_100099DF4(&qword_1002E0210, &qword_1002439A0);
  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000013;
}

uint64_t PIDeviceKeypair.description.getter()
{
  v1 = type metadata accessor for PIDeviceKeypair.NonSEP(0);
  v2 = sub_1000030B8(v1);
  __chkstk_darwin(v2);
  sub_10000306C();
  v5 = v4 - v3;
  v6 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  type metadata accessor for PIDeviceKeypair(0);
  sub_10000307C();
  __chkstk_darwin(v11);
  sub_10000306C();
  v14 = v13 - v12;
  sub_1001BAD60(v0, v13 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10002F1AC();
    sub_10002EF08(v15, v5, v16);
    v17._countAndFlagsBits = PIDeviceKeypair.NonSEP.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = 0x287065536E6F6ELL;
    sub_10002F1E0();
    v21 = v5;
  }

  else
  {
    sub_10002F194();
    sub_10002EF08(v14, v10, v22);
    v23._countAndFlagsBits = PIDeviceKeypair.SEP.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 41;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v19 = 678454643;
    sub_10002F1C8();
    v21 = v10;
  }

  sub_10002EF68(v21, v20);
  return v19;
}

uint64_t sub_1001BAD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIDeviceKeypair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001BADC8(uint64_t a1)
{
  sub_10002EFC0(319, &qword_1002E0648, type metadata accessor for PIDeviceKeypair.SEP);
  if (v1 <= 0x3F)
  {
    sub_10002EFC0(319, &unk_1002E0650, type metadata accessor for PIDeviceKeypair.NonSEP);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIDeviceKeypair.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1001BAFA4()
{
  result = qword_1002E07A0;
  if (!qword_1002E07A0)
  {
    result = swift_getWitnessTable(byte_1002448D4, &type metadata for PIDeviceKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07A0);
  }

  return result;
}

unint64_t sub_1001BAFFC()
{
  result = qword_1002E07A8;
  if (!qword_1002E07A8)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for PIDeviceKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07A8);
  }

  return result;
}

unint64_t sub_1001BB054()
{
  result = qword_1002E07B0;
  if (!qword_1002E07B0)
  {
    result = swift_getWitnessTable(byte_100244834, &type metadata for PIDeviceKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07B0);
  }

  return result;
}

PrivateIdentifiers::PIExternalKeypairsRotationReason_optional __swiftcall PIExternalKeypairsRotationReason.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 4)
  {
    v1.value = PrivateIdentifiers_PIExternalKeypairsRotationReason_programmaticRotation;
  }

  else
  {
    v1.value = PrivateIdentifiers_PIExternalKeypairsRotationReason_unknownDefault;
  }

  if (rawValue == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

PrivateIdentifiers::PIExternalKeypairsRotationReason_optional sub_1001BB100@<W0>(Swift::Int *a1@<X0>, PrivateIdentifiers::PIExternalKeypairsRotationReason_optional *a2@<X8>)
{
  result.value = PIExternalKeypairsRotationReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001BB12C@<X0>(uint64_t *a1@<X8>)
{
  result = PIExternalKeypairsRotationReason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t PIExternalKeypairsRotationReason.description.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_1001BB240()
{
  result = qword_1002E07B8;
  if (!qword_1002E07B8)
  {
    result = swift_getWitnessTable("Ɏ\a", &type metadata for PIExternalKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E07B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIExternalKeypairsRotationReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001BB378()
{
  result = qword_1002E07C0;
  if (!qword_1002E07C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIExternalKeypairsRotationReason, &type metadata for PIExternalKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E07C0);
  }

  return result;
}

uint64_t sub_1001BB3D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001002769E0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100276A00 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1001BB4A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1001BB4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BB3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BB510(uint64_t a1)
{
  v2 = sub_1001BB6F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB54C(uint64_t a1)
{
  v2 = sub_1001BB6F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIGenerationCounter.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100099DF4(&qword_1002E07C8, &qword_100244AA0);
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10000C4FC(a1, a1[3]);
  sub_1001BB6F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001BB6F8()
{
  result = qword_1002E07D0;
  if (!qword_1002E07D0)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for PIGenerationCounter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07D0);
  }

  return result;
}

Swift::Int PIGenerationCounter.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t PIGenerationCounter.init(from:)(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E07D8, &qword_100244AA8);
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_10000C4FC(a1, v9);
  sub_1001BB6F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[15] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100004118(a1);
  return v9;
}

Swift::Int sub_1001BB98C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1001BB9E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PIGenerationCounter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t PIGenerationCounter.description.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

unint64_t sub_1001BBAD8()
{
  result = qword_1002E07E0;
  if (!qword_1002E07E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIGenerationCounter, &type metadata for PIGenerationCounter, v0, v1);
    atomic_store(result, &qword_1002E07E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIGenerationCounter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001BBC24()
{
  result = qword_1002E07E8;
  if (!qword_1002E07E8)
  {
    result = swift_getWitnessTable(asc_100244C60, &type metadata for PIGenerationCounter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07E8);
  }

  return result;
}

unint64_t sub_1001BBC7C()
{
  result = qword_1002E07F0;
  if (!qword_1002E07F0)
  {
    result = swift_getWitnessTable(byte_100244BD0, &type metadata for PIGenerationCounter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07F0);
  }

  return result;
}

unint64_t sub_1001BBCD4()
{
  result = qword_1002E07F8;
  if (!qword_1002E07F8)
  {
    result = swift_getWitnessTable(byte_100244BF8, &type metadata for PIGenerationCounter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E07F8);
  }

  return result;
}

uint64_t sub_1001BBD28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000100276A40 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000100276A20 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7665446C61636F6CLL && a2 == 0xEF796C6E4F656369)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1001BBE90(char a1)
{
  result = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x7665446C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001BBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BBD28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BBF58(uint64_t a1)
{
  v2 = sub_1001BC578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BBF94(uint64_t a1)
{
  v2 = sub_1001BC578();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BBFD0(uint64_t a1)
{
  v2 = sub_1001BC6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC00C(uint64_t a1)
{
  v2 = sub_1001BC6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC048(uint64_t a1)
{
  v2 = sub_1001BC5CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC084(uint64_t a1)
{
  v2 = sub_1001BC5CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC0C0(uint64_t a1)
{
  v2 = sub_1001BC620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC0FC(uint64_t a1)
{
  v2 = sub_1001BC620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC138(uint64_t a1)
{
  v2 = sub_1001BC674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC174(uint64_t a1)
{
  v2 = sub_1001BC674();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIKeypairsModificationKind.encode(to:)(void *a1, uint64_t a2)
{
  v41 = a2;
  sub_100099DF4(&qword_1002E0800, &qword_100244CE0);
  sub_100003724();
  v39 = v4;
  v40 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100003018();
  v38 = v6;
  sub_100099DF4(&qword_1002E0808, &qword_100244CE8);
  sub_100003724();
  v36 = v8;
  v37 = v7;
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v35 = v10;
  sub_100099DF4(&qword_1002E0810, &qword_100244CF0);
  sub_100003724();
  v33 = v12;
  v34 = v11;
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_100099DF4(&qword_1002E0818, &qword_100244CF8);
  sub_100003724();
  v32 = v17;
  sub_100003774();
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v21 = sub_100099DF4(&qword_1002E0820, &qword_100244D00);
  sub_100003724();
  v23 = v22;
  sub_100003774();
  __chkstk_darwin(v24);
  v26 = &v31 - v25;
  sub_10000C4FC(a1, a1[3]);
  sub_1001BC578();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v41)
  {
    case 1:
      v43 = 1;
      sub_1001BC674();
      sub_10002F404(&type metadata for PIKeypairsModificationKind.SyncedDownReplacingNothingCodingKeys, &v43);
      (*(v33 + 8))(v15, v34);
      break;
    case 2:
      v44 = 2;
      sub_1001BC620();
      v27 = v35;
      sub_10002F404(&type metadata for PIKeypairsModificationKind.SyncedDownReplacingExistingCodingKeys, &v44);
      v29 = v36;
      v28 = v37;
      goto LABEL_5;
    case 3:
      v45 = 3;
      sub_1001BC5CC();
      v27 = v38;
      sub_10002F404(&type metadata for PIKeypairsModificationKind.LocalDeviceOnlyCodingKeys, &v45);
      v29 = v39;
      v28 = v40;
LABEL_5:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1001BC6C8();
      sub_10002F404(&type metadata for PIKeypairsModificationKind.LocalCodingKeys, &v42);
      (*(v32 + 8))(v20, v16);
      break;
  }

  return (*(v23 + 8))(v26, v21);
}

unint64_t sub_1001BC578()
{
  result = qword_1002E0828;
  if (!qword_1002E0828)
  {
    result = swift_getWitnessTable(byte_100245214, &type metadata for PIKeypairsModificationKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0828);
  }

  return result;
}

unint64_t sub_1001BC5CC()
{
  result = qword_1002E0830;
  if (!qword_1002E0830)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for PIKeypairsModificationKind.LocalDeviceOnlyCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0830);
  }

  return result;
}

unint64_t sub_1001BC620()
{
  result = qword_1002E0838;
  if (!qword_1002E0838)
  {
    result = swift_getWitnessTable(byte_100245174, &type metadata for PIKeypairsModificationKind.SyncedDownReplacingExistingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0838);
  }

  return result;
}

unint64_t sub_1001BC674()
{
  result = qword_1002E0840;
  if (!qword_1002E0840)
  {
    result = swift_getWitnessTable(byte_100245124, &type metadata for PIKeypairsModificationKind.SyncedDownReplacingNothingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0840);
  }

  return result;
}

unint64_t sub_1001BC6C8()
{
  result = qword_1002E0848;
  if (!qword_1002E0848)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for PIKeypairsModificationKind.LocalCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0848);
  }

  return result;
}

void PIKeypairsModificationKind.init(from:)(void *a1)
{
  v63 = sub_100099DF4(&qword_1002E0850, &qword_100244D08);
  sub_100003724();
  v60 = v2;
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100003018();
  v62 = v4;
  sub_100099DF4(&qword_1002E0858, &qword_100244D10);
  sub_100003724();
  v57 = v6;
  v58 = v5;
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003018();
  v59 = v8;
  sub_100099DF4(&qword_1002E0860, &qword_100244D18);
  sub_100003724();
  v55 = v10;
  v56 = v9;
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_100099DF4(&qword_1002E0868, &qword_100244D20);
  sub_100003724();
  v54 = v15;
  sub_100003774();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = sub_100099DF4(&qword_1002E0870, &unk_100244D28);
  sub_100003724();
  v61 = v20;
  sub_100003774();
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  sub_10000C4FC(a1, a1[3]);
  sub_1001BC578();
  v24 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_9;
  }

  v51 = v14;
  v52 = v18;
  v53 = v13;
  v25 = v62;
  v26 = v63;
  v64 = a1;
  v27 = v23;
  v28 = KeyedDecodingContainer.allKeys.getter();
  sub_10003CDEC(v28, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v50 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return;
  }

  v33 = *(v30 + v31);
  sub_10003CE24(v31 + 1, v32 >> 1, v29, v30, v31, v32);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v44 = &type metadata for PIKeypairsModificationKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v27, v19);
    a1 = v64;
LABEL_9:
    sub_100004118(a1);
    return;
  }

  v38 = v33;
  v40 = v60;
  v39 = v61;
  switch(v38)
  {
    case 1:
      v66 = 1;
      sub_1001BC674();
      v45 = v53;
      sub_10002F3E4(&type metadata for PIKeypairsModificationKind.SyncedDownReplacingNothingCodingKeys, &v66);
      swift_unknownObjectRelease();
      v47 = v55;
      v46 = v56;
      goto LABEL_18;
    case 2:
      v67[0] = 2;
      sub_1001BC620();
      v45 = v59;
      sub_10002F3E4(&type metadata for PIKeypairsModificationKind.SyncedDownReplacingExistingCodingKeys, v67);
      swift_unknownObjectRelease();
      v47 = v57;
      v46 = v58;
LABEL_18:
      (*(v47 + 8))(v45, v46);
      goto LABEL_19;
    case 3:
      v67[1] = 3;
      sub_1001BC5CC();
      v48 = v50;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v48)
      {
        (*(v39 + 8))(v27, v19);
        swift_unknownObjectRelease();
        a1 = v64;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      (*(v40 + 8))(v25, v26);
LABEL_19:
      (*(v39 + 8))(v27, v19);
      sub_100004118(v64);
      break;
    default:
      v65 = 0;
      sub_1001BC6C8();
      v41 = v52;
      sub_10002F3E4(&type metadata for PIKeypairsModificationKind.LocalCodingKeys, &v65);
      swift_unknownObjectRelease();
      (*(v54 + 8))(v41, v51);
      goto LABEL_19;
  }
}

void sub_1001BCD08(void *a1@<X0>, _BYTE *a2@<X8>)
{
  PIKeypairsModificationKind.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t PIKeypairsModificationKind.description.getter(char a1)
{
  result = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x7665446C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001BCDF8()
{
  result = qword_1002E0878;
  if (!qword_1002E0878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIKeypairsModificationKind, &type metadata for PIKeypairsModificationKind, v0, v1);
    atomic_store(result, &qword_1002E0878);
  }

  return result;
}

unint64_t sub_1001BCEB0()
{
  result = qword_1002E0880;
  if (!qword_1002E0880)
  {
    result = swift_getWitnessTable(byte_1002450AC, &type metadata for PIKeypairsModificationKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0880);
  }

  return result;
}

unint64_t sub_1001BCF08()
{
  result = qword_1002E0888;
  if (!qword_1002E0888)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for PIKeypairsModificationKind.LocalCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0888);
  }

  return result;
}

unint64_t sub_1001BCF60()
{
  result = qword_1002E0890;
  if (!qword_1002E0890)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for PIKeypairsModificationKind.LocalCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0890);
  }

  return result;
}

unint64_t sub_1001BCFB8()
{
  result = qword_1002E0898;
  if (!qword_1002E0898)
  {
    result = swift_getWitnessTable(byte_100244F7C, &type metadata for PIKeypairsModificationKind.SyncedDownReplacingNothingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0898);
  }

  return result;
}

unint64_t sub_1001BD010()
{
  result = qword_1002E08A0;
  if (!qword_1002E08A0)
  {
    result = swift_getWitnessTable("ŋ\a", &type metadata for PIKeypairsModificationKind.SyncedDownReplacingNothingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08A0);
  }

  return result;
}

unint64_t sub_1001BD068()
{
  result = qword_1002E08A8;
  if (!qword_1002E08A8)
  {
    result = swift_getWitnessTable(byte_100244F2C, &type metadata for PIKeypairsModificationKind.SyncedDownReplacingExistingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08A8);
  }

  return result;
}

unint64_t sub_1001BD0C0()
{
  result = qword_1002E08B0;
  if (!qword_1002E08B0)
  {
    result = swift_getWitnessTable(byte_100244F54, &type metadata for PIKeypairsModificationKind.SyncedDownReplacingExistingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08B0);
  }

  return result;
}

unint64_t sub_1001BD118()
{
  result = qword_1002E08B8;
  if (!qword_1002E08B8)
  {
    result = swift_getWitnessTable(asc_100244EDC, &type metadata for PIKeypairsModificationKind.LocalDeviceOnlyCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08B8);
  }

  return result;
}

unint64_t sub_1001BD170()
{
  result = qword_1002E08C0;
  if (!qword_1002E08C0)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for PIKeypairsModificationKind.LocalDeviceOnlyCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08C0);
  }

  return result;
}

unint64_t sub_1001BD1C8()
{
  result = qword_1002E08C8;
  if (!qword_1002E08C8)
  {
    result = swift_getWitnessTable(byte_10024501C, &type metadata for PIKeypairsModificationKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08C8);
  }

  return result;
}

unint64_t sub_1001BD220()
{
  result = qword_1002E08D0;
  if (!qword_1002E08D0)
  {
    result = swift_getWitnessTable(asc_100245044, &type metadata for PIKeypairsModificationKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08D0);
  }

  return result;
}

void sub_1001BD290(uint64_t a1@<X8>)
{
  PIKeypairsRotationReason.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
  *(a1 + 9) = 0;
}

uint64_t PIKeypairsRotationReason.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        result = 0xD000000000000011;
        break;
      case 2:
        sub_10002F438();
        result = v6 + 5;
        break;
      case 3:
        sub_10002F438();
        result = v7 | 4;
        break;
      case 4:
        sub_10002F438();
        result = v5 + 3;
        break;
      case 5:
        sub_10002F438();
        result = v8 | 8;
        break;
      default:
        result = 0xD000000000000011;
        break;
    }
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, "futureUnknown(");
    HIBYTE(v9[1]) = -18;
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v9[0];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIKeypairsRotationReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIKeypairsRotationReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1001BD574(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001BD590(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_1001BD5C0()
{
  result = qword_1002E08D8;
  if (!qword_1002E08D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIKeypairsRotationReason, &type metadata for PIKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E08D8);
  }

  return result;
}

uint64_t sub_1001BD614()
{
  v1 = v0;
  type metadata accessor for PIDeviceKeypair(0);
  sub_10000307C();
  __chkstk_darwin(v2);
  sub_10000306C();
  v5 = v4 - v3;
  sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_1001BDF08(v1, &v16 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9._countAndFlagsBits = *(v8 + 7);
    v10 = *(v8 + 8);
    v16 = 0x286572756C696166;
    v17 = 0xE800000000000000;
    v9._object = v10;
    String.append(_:)(v9);

    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    return v16;
  }

  else
  {
    sub_10002FD34(v8, v5, type metadata accessor for PIDeviceKeypair);
    v16 = 0;
    v17 = 0xE000000000000000;
    v13._countAndFlagsBits = 0x2873736563637573;
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v12 = v16;
    sub_10002F56C(v5, type metadata accessor for PIDeviceKeypair);
  }

  return v12;
}

uint64_t sub_1001BD80C(char a1)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      v3 = 0xD00000000000001ALL;
      v2 = 0x8000000100276A40;
      break;
    case 2:
      v2 = 0x8000000100276A20;
      v3 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0xEF796C6E4F656369;
      v3 = 0x7665446C61636F6CLL;
      break;
    default:
      break;
  }

  v4 = v2;
  String.append(_:)(*&v3);
}

uint64_t sub_1001BD90C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100276840 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001BD9E4(char a1)
{
  if (a1)
  {
    return 0x63617073656D616ELL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1001BDA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BD90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BDA54(uint64_t a1)
{
  v2 = sub_1001BDC1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BDA90(uint64_t a1)
{
  v2 = sub_1001BDC1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void PIPersonalizedPrivateIdentifierMapping.Key.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v26 = v25;
  v27 = sub_100099DF4(&qword_1002E08E0, &qword_100245370);
  sub_100003724();
  v29 = v28;
  sub_100003774();
  __chkstk_darwin(v30);
  sub_100004880();
  sub_10000C4FC(v26, v26[3]);
  sub_1001BDC1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v29 + 8))(v24, v27);
  sub_100005074();
}

unint64_t sub_1001BDC1C()
{
  result = qword_1002E08E8;
  if (!qword_1002E08E8)
  {
    result = swift_getWitnessTable(byte_100245934, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E08E8);
  }

  return result;
}

void PIPersonalizedPrivateIdentifierMapping.Key.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v25 = v24;
  sub_100099DF4(&qword_1002E08F0, &qword_100245378);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100004880();
  sub_10000C4FC(v25, v25[3]);
  sub_1001BDC1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v27 = sub_100002960();
    v28(v27);
  }

  sub_100004118(v25);
  sub_100005074();
}

Swift::Int sub_1001BDE14(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001BDF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(v2) + 28);
  type metadata accessor for Date();
  sub_10000307C();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t sub_1001BE050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100276880 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4B746E756F636361 && a2 == 0xEE00726961707965;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461746F72 && a2 == 0xEE006E6F73616552;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000100276C20 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001BE250(char a1)
{
  result = 0x4B746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6E6F697461746F72;
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

uint64_t sub_1001BE334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BE050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BE35C(uint64_t a1)
{
  v2 = sub_1001BE68C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BE398(uint64_t a1)
{
  v2 = sub_1001BE68C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E08F8, &qword_100245388);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000C4FC(a1, a1[3]);
  v11 = sub_1001BE68C();
  sub_10000A484(&type metadata for PIPersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v12, v11);
  v23 = *v3;
  v22 = 0;
  sub_1001BE6E0();
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
    LOBYTE(v23) = 1;
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 2;
    type metadata accessor for PIAccountKeypair(0);
    sub_10002FDAC();
    sub_10002F474(v14, v15, protocol conformance descriptor for PIAccountKeypair);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 3;
    type metadata accessor for Date();
    sub_10002FD94();
    sub_10002F474(v16, v17, &protocol conformance descriptor for Date);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v3 + *(v13 + 32);
    v19 = *v18;
    LOBYTE(v18) = v18[8];
    *&v23 = v19;
    BYTE8(v23) = v18;
    v22 = 4;
    sub_1001BE734();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + *(v13 + 36));
    v22 = 5;
    sub_1001BE788();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001BE68C()
{
  result = qword_1002E0900;
  if (!qword_1002E0900)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for PIPersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0900);
  }

  return result;
}

unint64_t sub_1001BE6E0()
{
  result = qword_1002E0908;
  if (!qword_1002E0908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIGenerationCounter, &type metadata for PIGenerationCounter, v0, v1);
    atomic_store(result, &qword_1002E0908);
  }

  return result;
}

unint64_t sub_1001BE734()
{
  result = qword_1002E0920;
  if (!qword_1002E0920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIKeypairsRotationReason, &type metadata for PIKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E0920);
  }

  return result;
}

unint64_t sub_1001BE788()
{
  result = qword_1002E0928;
  if (!qword_1002E0928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIKeypairsModificationKind, &type metadata for PIKeypairsModificationKind, v0, v1);
    atomic_store(result, &qword_1002E0928);
  }

  return result;
}

void PIPersonalizedPrivateIdentifierMapping.HistoryItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v75 = v23;
  v25 = v24;
  v68 = v26;
  type metadata accessor for Date();
  sub_100003724();
  v73 = v28;
  v74 = v27;
  __chkstk_darwin(v27);
  sub_10000306C();
  v69 = v30 - v29;
  v70 = type metadata accessor for PIAccountKeypair(0);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_10000306C();
  v34 = v33 - v32;
  sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v35);
  v37 = &v68 - v36;
  sub_100099DF4(&qword_1002E0930, &qword_100245390);
  sub_100003724();
  v71 = v39;
  v72 = v38;
  sub_100003774();
  __chkstk_darwin(v40);
  sub_100004880();
  v76 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  sub_10000307C();
  __chkstk_darwin(v41);
  sub_10000306C();
  v44 = (v43 - v42);
  v46 = v25[3];
  v45 = v25[4];
  v77 = v25;
  v47 = sub_10000C4FC(v25, v46);
  sub_1001BE68C();
  v48 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v48)
  {
    sub_10002FE9C();
    v49 = v44;
    v50 = v76;
    sub_100004118(v77);
    if (v47)
    {
      sub_10002FE18();
      sub_10002F56C(&v49[v51], v52);
      if ((v45 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v45)
    {
      goto LABEL_9;
    }

    (*(v73 + 8))(&v49[*(v50 + 28)], v74);
    goto LABEL_9;
  }

  v75 = v34;
  sub_1001BEDE8();
  sub_10002FEA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v53 = v44;
  *v44 = v78;
  LOBYTE(v78) = 1;
  sub_10002FE54(&qword_1002E0940);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = v76;
  sub_1001BEE3C(v37, v53 + *(v76 + 20));
  LOBYTE(v78) = 2;
  sub_10002FDAC();
  sub_10002F474(v55, v56, protocol conformance descriptor for PIAccountKeypair);
  v57 = v75;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10002FE00();
  sub_10002FD34(v57, v53 + v58, v59);
  LOBYTE(v78) = 3;
  sub_10002FD94();
  sub_10002F474(v60, v61, &protocol conformance descriptor for Date);
  v62 = v69;
  v63 = v74;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v73 + 32))(v53 + v54[7], v62, v63);
  sub_1001BEEAC();
  sub_10002FEA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = BYTE8(v78);
  v65 = v53 + v54[8];
  *v65 = v78;
  *(v65 + 8) = v64;
  sub_1001BEF00();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v66 = sub_10002FDD8();
  v67(v66);
  *(v53 + v54[9]) = v78;
  sub_10002F50C(v53, v68, type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem);
  sub_100004118(v77);
  sub_10002F56C(v53, type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem);
LABEL_9:
  sub_100005074();
}

uint64_t sub_1001BED80(uint64_t a1)
{
  v2 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001BEDE8()
{
  result = qword_1002E0938;
  if (!qword_1002E0938)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIGenerationCounter, &type metadata for PIGenerationCounter, v0, v1);
    atomic_store(result, &qword_1002E0938);
  }

  return result;
}

uint64_t sub_1001BEE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001BEEAC()
{
  result = qword_1002E0950;
  if (!qword_1002E0950)
  {
    result = swift_getWitnessTable("Ɋ\a", &type metadata for PIKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E0950);
  }

  return result;
}

unint64_t sub_1001BEF00()
{
  result = qword_1002E0958;
  if (!qword_1002E0958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIKeypairsModificationKind, &type metadata for PIKeypairsModificationKind, v0, v1);
    atomic_store(result, &qword_1002E0958);
  }

  return result;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.metadata.getter()
{
  v2 = sub_10000309C();
  v3 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(v2);
  return sub_10002F50C(v1 + *(v3 + 28), v0, type metadata accessor for PIPrivateIdentifierMetadata);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIPersonalizedPrivateIdentifierMapping(v2) + 32);
  type metadata accessor for Date();
  sub_10000307C();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.history.getter()
{
  type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
}

uint64_t sub_1001BF10C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4B746E756F636361 && a2 == 0xEE00726961707965;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001BF304(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x4B746E756F636361;
      break;
    case 3:
      result = 0x617461646174656DLL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x79726F74736968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001BF3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BF10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BF3F4(uint64_t a1)
{
  v2 = sub_1001BF778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BF430(uint64_t a1)
{
  v2 = sub_1001BF778();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIPersonalizedPrivateIdentifierMapping.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0960, &qword_100245398);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_10000C4FC(a1, a1[3]);
  v11 = sub_1001BF778();
  sub_10000A484(&type metadata for PIPersonalizedPrivateIdentifierMapping.CodingKeys, v12, v11);
  v13 = *(v3 + 2);
  v14 = *(v3 + 3);
  v25 = *v3;
  v26 = v13;
  v27 = v14;
  v24 = 0;
  sub_1001BF7CC();
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
    LOBYTE(v25) = 1;
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25) = 2;
    type metadata accessor for PIAccountKeypair(0);
    sub_10002FDAC();
    sub_10002F474(v16, v17, protocol conformance descriptor for PIAccountKeypair);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25) = 3;
    type metadata accessor for PIPrivateIdentifierMetadata(0);
    sub_10002FDE8();
    sub_10002F474(v18, v19, protocol conformance descriptor for PIPrivateIdentifierMetadata);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25) = 4;
    type metadata accessor for Date();
    sub_10002FD94();
    sub_10002F474(v20, v21, &protocol conformance descriptor for Date);
    sub_10002FE78();
    sub_10002FDC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v25 = *(v3 + *(v15 + 36));
    v24 = 5;
    sub_100099DF4(&qword_1002E0980, &qword_1002453A0);
    sub_10002F674(&qword_1002E0988, &qword_1002E0990, "ɉ\a", &protocol conformance descriptor for <A> [A]);
    sub_10002FDC4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001BF778()
{
  result = qword_1002E0968;
  if (!qword_1002E0968)
  {
    result = swift_getWitnessTable(byte_100245894, &type metadata for PIPersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0968);
  }

  return result;
}

unint64_t sub_1001BF7CC()
{
  result = qword_1002E0970;
  if (!qword_1002E0970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIPersonalizedPrivateIdentifierMapping.Key, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E0970);
  }

  return result;
}

void PIPersonalizedPrivateIdentifierMapping.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v83 = v23;
  v25 = v24;
  v73 = v26;
  type metadata accessor for Date();
  sub_100003724();
  v78 = v28;
  v79 = v27;
  __chkstk_darwin(v27);
  sub_10000306C();
  v74 = v30 - v29;
  v75 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_10000306C();
  v76 = v33 - v32;
  v77 = type metadata accessor for PIAccountKeypair(0);
  sub_10000307C();
  __chkstk_darwin(v34);
  sub_10000306C();
  v37 = v36 - v35;
  sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v38);
  v40 = &v73 - v39;
  sub_100099DF4(&qword_1002E0998, &qword_1002453A8);
  sub_100003724();
  v80 = v42;
  v81 = v41;
  sub_100003774();
  __chkstk_darwin(v43);
  v82 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  sub_10000307C();
  __chkstk_darwin(v44);
  sub_10000306C();
  v47 = v46 - v45;
  v48 = v25[3];
  v84 = v25;
  sub_10000C4FC(v25, v48);
  sub_1001BF778();
  v49 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v49)
  {
    sub_100004118(v84);
  }

  else
  {
    v83 = v37;
    sub_1001BFE9C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v86;
    v51 = v87;
    v52 = v47;
    *v47 = v85;
    *(v47 + 16) = v50;
    *(v47 + 24) = v51;
    LOBYTE(v85) = 1;
    sub_10002FE54(&qword_1002E0940);
    sub_10002FEC0();
    v53 = v40;
    sub_10002FED8(v54, v55);
    v56 = v82;
    sub_1001BEE3C(v53, v52 + *(v82 + 20));
    LOBYTE(v85) = 2;
    sub_10002FDAC();
    sub_10002F474(v57, v58, protocol conformance descriptor for PIAccountKeypair);
    sub_10002FEC0();
    v59 = v83;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10002FE00();
    sub_10002FD34(v59, v52 + v60, v61);
    LOBYTE(v85) = 3;
    sub_10002FDE8();
    sub_10002F474(v62, v63, "Ň\a");
    sub_10002FEC0();
    v64 = v76;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10002FD34(v64, v52 + v56[7], type metadata accessor for PIPrivateIdentifierMetadata);
    LOBYTE(v85) = 4;
    sub_10002FD94();
    sub_10002F474(v65, v66, &protocol conformance descriptor for Date);
    sub_10002FEC0();
    v67 = v74;
    v68 = v79;
    sub_10002FED8(v69, v70);
    (*(v78 + 32))(v52 + v56[8], v67, v68);
    sub_100099DF4(&qword_1002E0980, &qword_1002453A0);
    sub_10002F674(&qword_1002E09B0, &qword_1002E09B8, protocol conformance descriptor for PIPersonalizedPrivateIdentifierMapping.HistoryItem, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v71 = sub_10002FE84();
    v72(v71, v81);
    *(v52 + v56[9]) = v85;
    sub_10002F50C(v52, v73, type metadata accessor for PIPersonalizedPrivateIdentifierMapping);
    sub_100004118(v84);
    sub_10002F56C(v52, type metadata accessor for PIPersonalizedPrivateIdentifierMapping);
  }

  sub_100005074();
}

unint64_t sub_1001BFE9C()
{
  result = qword_1002E09A0;
  if (!qword_1002E09A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIPersonalizedPrivateIdentifierMapping.Key, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E09A0);
  }

  return result;
}

uint64_t sub_1001BFEF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

unint64_t PIPersonalizedPrivateIdentifierMapping.Key.description.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(39);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x7073656D616E202CLL;
  v9._object = 0xEC0000003D656361;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000017;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.HistoryItem.description.getter()
{
  _StringGuts.grow(_:)(130);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x4979726F74736948;
  v2._object = 0xEB000000006D6574;
  String.append(_:)(v2);
  sub_10002FE90();
  String.append(_:)(v3);
  v4._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v4);

  sub_10002FE90();
  String.append(_:)(v5);
  v6 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v15._countAndFlagsBits = sub_1001BD614();
  sub_10002FEF8(v15);

  sub_10002FE90();
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v16._countAndFlagsBits = PIAccountKeypair.description.getter();
  sub_10002FEF8(v16);

  sub_10002FE90();
  String.append(_:)(v8);
  type metadata accessor for Date();
  sub_10002FD94();
  sub_10002F474(v9, v10, &protocol conformance descriptor for Date);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10002FEF8(v17);

  sub_10002FE90();
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  v18._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*(v0 + *(v6 + 32)), *(v0 + *(v6 + 32) + 8));
  sub_10002FEF8(v18);

  sub_10002FE90();
  String.append(_:)(v12);
  sub_1001BD80C(*(v0 + *(v6 + 36)));
  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t PIPersonalizedPrivateIdentifierMapping.description.getter()
{
  _StringGuts.grow(_:)(93);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  sub_10002FECC();
  String.append(_:)(v2);
  sub_10002FECC();
  String.append(_:)(v3);
  v4 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  v5._countAndFlagsBits = sub_1001BD614();
  String.append(_:)(v5);

  sub_10002FECC();
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  v7._countAndFlagsBits = PIAccountKeypair.description.getter();
  String.append(_:)(v7);

  sub_10002FECC();
  String.append(_:)(v8);
  type metadata accessor for Date();
  sub_10002FD94();
  sub_10002F474(v9, v10, &protocol conformance descriptor for Date);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x726F74736968202CLL;
  v12._object = 0xEA00000000003D79;
  String.append(_:)(v12);
  v13 = *(v0 + *(v4 + 36));
  swift_getKeyPath();
  if (v13)
  {

    swift_getAtKeyPath();

    v14 = v21;
    v15 = v22;
  }

  else
  {

    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 0x61646174656D202CLL;
  v17._object = 0xEB000000003D6174;
  String.append(_:)(v17);
  v18._countAndFlagsBits = PIPrivateIdentifierMetadata.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 0;
}

uint64_t sub_1001C04C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  result = Array.description.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1001C0504()
{
  result = qword_1002E09C0;
  if (!qword_1002E09C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIPersonalizedPrivateIdentifierMapping.Key, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E09C0);
  }

  return result;
}

unint64_t sub_1001C055C()
{
  result = qword_1002E09C8;
  if (!qword_1002E09C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIPersonalizedPrivateIdentifierMapping.Key, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E09C8);
  }

  return result;
}

void sub_1001C05D8(uint64_t a1)
{
  sub_1001C06B4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PIAccountKeypair(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PIPrivateIdentifierMetadata(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_1001C0780(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001C06B4(uint64_t a1)
{
  if (!qword_1002E0A38)
  {
    v2 = type metadata accessor for PIDeviceKeypair(255);
    v3 = sub_10002F474(&qword_1002E0A40, type metadata accessor for PIDeviceKeypair, protocol conformance descriptor for PIDeviceKeypair);
    v4 = sub_10002F474(&qword_1002E0A48, type metadata accessor for PIDeviceKeypair, protocol conformance descriptor for PIDeviceKeypair);
    v5 = type metadata accessor for PICodableResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1002E0A38);
    }
  }
}

void sub_1001C0780(uint64_t a1)
{
  if (!qword_1002E0A50)
  {
    sub_10009A468(&qword_1002E0980, &qword_1002453A0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002E0A50);
    }
  }
}

void sub_1001C081C(uint64_t a1)
{
  sub_1001C06B4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PIAccountKeypair(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIPersonalizedPrivateIdentifierMapping.Key.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001C09E0()
{
  result = qword_1002E0B30;
  if (!qword_1002E0B30)
  {
    result = swift_getWitnessTable("Ň\a", &type metadata for PIPersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B30);
  }

  return result;
}

unint64_t sub_1001C0A38()
{
  result = qword_1002E0B38;
  if (!qword_1002E0B38)
  {
    result = swift_getWitnessTable(asc_1002457B4, &type metadata for PIPersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B38);
  }

  return result;
}

unint64_t sub_1001C0A90()
{
  result = qword_1002E0B40;
  if (!qword_1002E0B40)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for PIPersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B40);
  }

  return result;
}

unint64_t sub_1001C0AE8()
{
  result = qword_1002E0B48;
  if (!qword_1002E0B48)
  {
    result = swift_getWitnessTable(asc_1002457DC, &type metadata for PIPersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B48);
  }

  return result;
}

unint64_t sub_1001C0B40()
{
  result = qword_1002E0B50;
  if (!qword_1002E0B50)
  {
    result = swift_getWitnessTable(byte_100245804, &type metadata for PIPersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B50);
  }

  return result;
}

unint64_t sub_1001C0B98()
{
  result = qword_1002E0B58;
  if (!qword_1002E0B58)
  {
    result = swift_getWitnessTable(byte_100245724, &type metadata for PIPersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B58);
  }

  return result;
}

unint64_t sub_1001C0BF0()
{
  result = qword_1002E0B60;
  if (!qword_1002E0B60)
  {
    result = swift_getWitnessTable(byte_10024574C, &type metadata for PIPersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B60);
  }

  return result;
}

unint64_t sub_1001C0C48()
{
  result = qword_1002E0B68;
  if (!qword_1002E0B68)
  {
    result = swift_getWitnessTable("͊\a", &type metadata for PIPersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B68);
  }

  return result;
}

unint64_t sub_1001C0CA0()
{
  result = qword_1002E0B70;
  if (!qword_1002E0B70)
  {
    result = swift_getWitnessTable(asc_100245694, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B70);
  }

  return result;
}

uint64_t sub_1001C0CFC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E657461746F72;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000020;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001002767F0;
    }

    else
    {
      v6 = 0x8000000100276820;
    }
  }

  else
  {
    v5 = 0x6F4E657461746F72;
    v6 = 0xE900000000000077;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000020;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001002767F0;
    }

    else
    {
      v2 = 0x8000000100276820;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001C0DEC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x63617073656D616ELL;
  v4 = a1;
  v5 = 0x63617073656D616ELL;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      goto LABEL_9;
    case 2:
      v5 = 0x4B746E756F636361;
      v8 = 0x726961707965;
      goto LABEL_7;
    case 3:
      v5 = 0x6E6F697461746F72;
      v8 = 0x6E6F73616552;
LABEL_7:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      goto LABEL_9;
    case 4:
      v5 = 0xD000000000000011;
      v7 = "untKeypair";
      goto LABEL_4;
    case 5:
      v6 = 0x80000001002768A0;
      v5 = 0xD000000000000010;
      goto LABEL_9;
    default:
      v5 = 0xD000000000000011;
      v7 = "resetLastRotationDateToNow";
LABEL_4:
      v6 = v7 | 0x8000000000000000;
LABEL_9:
      switch(a2)
      {
        case 1:
          goto LABEL_17;
        case 2:
          v3 = 0x4B746E756F636361;
          v10 = 0x726961707965;
          goto LABEL_15;
        case 3:
          v3 = 0x6E6F697461746F72;
          v10 = 0x6E6F73616552;
LABEL_15:
          v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          goto LABEL_17;
        case 4:
          v3 = 0xD000000000000011;
          v9 = "untKeypair";
          goto LABEL_12;
        case 5:
          v2 = 0x80000001002768A0;
          v3 = 0xD000000000000010;
          goto LABEL_17;
        default:
          v3 = 0xD000000000000011;
          v9 = "resetLastRotationDateToNow";
LABEL_12:
          v2 = v9 | 0x8000000000000000;
LABEL_17:
          if (v5 == v3 && v6 == v2)
          {
            v12 = 1;
          }

          else
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return v12 & 1;
      }
  }
}

uint64_t sub_1001C0FC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461746F72 && a2 == 0xEE006E6F73616552;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000100276DF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100276880 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684632949 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000100276E10 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001002768A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x8000000100276E30 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000100276E50 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x8000000100276E70 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001CLL && 0x8000000100276E90 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000021 && 0x8000000100276EB0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001C131C(char a1)
{
  result = 0x6E6F697461746F72;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1684632949;
      break;
    case 4:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C0FC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C14A4(uint64_t a1)
{
  v2 = sub_1001C2B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C14E0(uint64_t a1)
{
  v2 = sub_1001C2B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static PIPrivateIdentifierMetadata.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v11);
  sub_100003774();
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = *a1;
  v20 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v20)
    {
      case 1:
        if (v19 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v19 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v19 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v19 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v19 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v19)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v19 != v20)
  {
    return 0;
  }

LABEL_6:
  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v21 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v21)
  {
    return 0;
  }

  v22 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  sub_10003CF3C(v22[7]);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003CF3C(v22[8]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003CF3C(v22[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003CF3C(v22[10]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[11];
  v24 = *(v15 + 48);
  sub_1000A9914(a1 + v23, v18);
  sub_1000A9914(a2 + v23, &v18[v24]);
  sub_1000071D8(v18);
  if (v21)
  {
    sub_1000071D8(&v18[v24]);
    if (v21)
    {
      sub_100004E24(v18, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_36;
    }

LABEL_34:
    sub_100004E24(v18, &qword_1002DACF0, &qword_100232140);
    return 0;
  }

  sub_1000A9914(v18, v14);
  sub_1000071D8(&v18[v24]);
  if (v26)
  {
    (*(v6 + 8))(v14, v4);
    goto LABEL_34;
  }

  (*(v6 + 32))(v10, &v18[v24], v4);
  sub_100030218();
  sub_10002FF90(v27, v28, &protocol conformance descriptor for Date);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v6 + 8);
  v30(v10, v4);
  v30(v14, v4);
  sub_100004E24(v18, &qword_1002DA970, &qword_1002318B0);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v31 = v22[12];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 32);
  v34 = (a2 + v31);
  if (v33)
  {
    if ((v34[4] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v34[4] & 1) != 0 || !static PIScheduledRotationConfiguration.__derived_struct_equals(_:_:)(*v32, v32[1], v32[2], v32[3], *v34, v34[1], v34[2], v34[3]))
  {
    return 0;
  }

  sub_10003CF48();
  if (v36)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    sub_10003CF28();
    if (v37)
    {
      return 0;
    }
  }

  sub_10003CF48();
  if (v39)
  {
    return (v38 & 1) != 0;
  }

  sub_10003CF28();
  return (v40 & 1) == 0;
}

uint64_t type metadata accessor for PIPrivateIdentifierMetadata(uint64_t a1)
{
  result = qword_1002E0C08;
  if (!qword_1002E0C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PIPrivateIdentifierMetadata.encode(to:)(uint64_t a1)
{
  v3 = sub_100099DF4(&qword_1002E0B78, &qword_100245990);
  sub_100003724();
  v5 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10000492C();
  sub_10000C4FC(v9, v10);
  sub_1001C2B64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v1 + 8);
  *&v21[0] = *v1;
  BYTE8(v21[0]) = v11;
  v23 = 0;
  sub_1001BE734();
  sub_100030264();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v21[0]) = *(v1 + 9);
    v23 = 1;
    sub_1001BE788();
    sub_100030264();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[0] = *(v1 + 16);
    v23 = 2;
    sub_1001BE6E0();
    sub_100030264();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = type metadata accessor for PIPrivateIdentifierMetadata(0);
    LOBYTE(v21[0]) = 3;
    type metadata accessor for UUID();
    sub_100030230();
    sub_10002FF90(v13, v14, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21[0]) = 4;
    type metadata accessor for Date();
    sub_100030218();
    sub_10002FF90(v15, v16, &protocol conformance descriptor for Date);
    sub_100030248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21[0]) = 5;
    sub_100030248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21[0]) = 6;
    sub_100030248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21[0]) = 7;
    sub_100030248();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v1 + *(v12 + 48);
    v18 = *(v17 + 32);
    v19 = *(v17 + 16);
    v21[0] = *v17;
    v21[1] = v19;
    v22 = v18;
    v23 = 8;
    sub_1001C2BB8();
    sub_100030264();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100030300(9);
    sub_100030300(10);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PIPrivateIdentifierMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v3);
  sub_100003774();
  __chkstk_darwin(v4);
  v65 = &v60 - v5;
  v72 = type metadata accessor for Date();
  sub_100003724();
  v74 = v6;
  __chkstk_darwin(v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  __chkstk_darwin(v13);
  type metadata accessor for UUID();
  sub_100003724();
  v68 = v15;
  v69 = v14;
  __chkstk_darwin(v14);
  sub_10000306C();
  v18 = v17 - v16;
  v67 = sub_100099DF4(&qword_1002E0B98, &qword_100245998);
  sub_100003724();
  v20 = v19;
  sub_100003774();
  __chkstk_darwin(v21);
  v23 = &v60 - v22;
  v75 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  sub_10000307C();
  __chkstk_darwin(v24);
  sub_10000306C();
  v73 = (v26 - v25);
  v27 = a1[3];
  v71 = a1;
  v28 = sub_10000C4FC(a1, v27);
  sub_1001C2B64();
  v66 = v23;
  v29 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v70 = v12;
    v63 = v9;
    v79 = 0;
    sub_1001BEEAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = BYTE8(v76);
    v36 = v73;
    *v73 = v76;
    *(v36 + 8) = v35;
    v79 = 1;
    sub_1001BEF00();
    sub_1000302A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v36 + 9) = v76;
    v79 = 2;
    sub_1001BEDE8();
    sub_1000302A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v36 + 1) = v76;
    LOBYTE(v76) = 3;
    sub_100030230();
    sub_10002FF90(v37, v38, &protocol conformance descriptor for UUID);
    v39 = v69;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v68 + 32))(v36 + v75[7], v18, v39);
    LOBYTE(v76) = 4;
    sub_100030218();
    sub_10002FF90(v40, v41, &protocol conformance descriptor for Date);
    sub_10003027C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v75;
    v43 = sub_1000302E0(v75[8]);
    v61 = v45;
    v62 = v44;
    v45(v43);
    LOBYTE(v76) = 5;
    sub_10003027C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46 = sub_1000302E0(v42[9]);
    v61(v46);
    LOBYTE(v76) = 6;
    sub_10003027C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v70 = v20;
    v47 = sub_1000302E0(v42[10]);
    v61(v47);
    LOBYTE(v76) = 7;
    v48 = v65;
    sub_10003027C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v48, v36 + v75[11]);
    v79 = 8;
    sub_1001C2C0C();
    sub_1000302A8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = v78;
    v50 = v36 + v75[12];
    v51 = v77;
    *v50 = v76;
    *(v50 + 1) = v51;
    v50[32] = v49;
    LOBYTE(v76) = 9;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v73 + v75[13];
    *v53 = v52;
    v53[8] = v54 & 1;
    LOBYTE(v76) = 10;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v56;
    (*(v20 + 1))(v66, v67);
    v58 = v73;
    v59 = v73 + v75[14];
    *v59 = v55;
    v59[8] = v57 & 1;
    sub_1001C2C60(v58, v64);
    sub_100004118(v71);
    return sub_1001C2CC4(v58);
  }

  sub_100030294();
  v30 = v72;
  v31 = v73;
  result = sub_100004118(v71);
  v34 = v75;
  if (v23)
  {
    v33 = *(v74 + 8);
    result = v33(&v31[v75[8]], v30);
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_11:
    if (!v28)
    {
      goto LABEL_15;
    }

    v33 = *(v74 + 8);
    goto LABEL_13;
  }

  if (!v27)
  {
    goto LABEL_11;
  }

  v33 = *(v74 + 8);
LABEL_9:
  result = v33(&v31[v34[9]], v30);
  if ((v28 & 1) == 0)
  {
LABEL_15:
    if (!v18)
    {
      return result;
    }

    return sub_100004E24(&v31[v34[11]], &qword_1002DA970, &qword_1002318B0);
  }

LABEL_13:
  result = v33(&v31[v34[10]], v30);
  if (v18)
  {
    return sub_100004E24(&v31[v34[11]], &qword_1002DA970, &qword_1002318B0);
  }

  return result;
}

uint64_t sub_1001C24D8()
{
  v1 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v1);
  sub_100003774();
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  sub_1000A9914(v0 + *(v12 + 44), v4);
  if (sub_100004DFC(v4, 1, v5) == 1)
  {
    sub_100004E24(v4, &qword_1002DA970, &qword_1002318B0);
    v13 = 0;
  }

  else
  {
    (*(v7 + 32))(v11, v4, v5);
    v13 = static Date.> infix(_:_:)();
    (*(v7 + 8))(v11, v5);
  }

  return v13 & 1;
}

uint64_t PIPrivateIdentifierMetadata.description.getter()
{
  v1 = type metadata accessor for Date();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v8);
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = v55 - v10;
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(330);
  v12._countAndFlagsBits = 60;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x8000000100245980;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000010;
  v14._object = 0x8000000100276C40;
  String.append(_:)(v14);
  v15._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*v0, *(v0 + 8));
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x8000000100276C60;
  String.append(_:)(v16);
  sub_1001BD80C(*(v0 + 9));
  v17._countAndFlagsBits = 0xD000000000000014;
  v17._object = 0x8000000100276C80;
  String.append(_:)(v17);
  v18._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x3D64697575202CLL;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  type metadata accessor for UUID();
  sub_100030230();
  sub_10002FF90(v21, v22, &protocol conformance descriptor for UUID);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x8000000100276CA0;
  String.append(_:)(v24);
  sub_100030218();
  sub_10002FF90(v25, v26, &protocol conformance descriptor for Date);
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  sub_100030338(", lastRotationDate=");
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0xD000000000000020;
  v29._object = 0x8000000100276CE0;
  String.append(_:)(v29);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  sub_100030338(", lastSyncDownDate=");
  sub_1000A9914(v0 + v20[11], v11);
  if (sub_100004DFC(v11, 1, v1) == 1)
  {
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    (*(v3 + 32))(v7, v11, v1);
    v32 = Date.description.getter();
    v31 = v33;
    (*(v3 + 8))(v7, v1);
  }

  v34._countAndFlagsBits = v32;
  v34._object = v31;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0xD000000000000021;
  v35._object = 0x8000000100276D30;
  String.append(_:)(v35);
  if (*(v0 + v20[12] + 32))
  {
    v36 = sub_1000302F0();
  }

  else
  {
    v36 = PIScheduledRotationConfiguration.description.getter();
    v1 = v37;
  }

  v38 = v1;
  String.append(_:)(*&v36);

  v39._countAndFlagsBits = 0xD000000000000020;
  v39._object = 0x8000000100276D60;
  String.append(_:)(v39);
  if (*(v0 + v20[13] + 8))
  {
    v40 = sub_1000302F0();
  }

  else
  {
    v40 = Double.description.getter();
    v1 = v41;
  }

  v42 = v1;
  String.append(_:)(*&v40);

  v43._countAndFlagsBits = 0xD000000000000024;
  v43._object = 0x8000000100276D90;
  String.append(_:)(v43);
  if (*(v0 + v20[14] + 8))
  {
    v44 = sub_1000302F0();
  }

  else
  {
    v44 = Double.description.getter();
    v1 = v45;
  }

  v46 = v1;
  String.append(_:)(*&v44);

  v47._countAndFlagsBits = 0xD000000000000022;
  v47._object = 0x8000000100276DC0;
  String.append(_:)(v47);
  v48 = sub_1001C24D8();
  v49 = (v48 & 1) == 0;
  if (v48)
  {
    v50 = 1702195828;
  }

  else
  {
    v50 = 0x65736C6166;
  }

  if (v49)
  {
    v51 = 0xE500000000000000;
  }

  else
  {
    v51 = 0xE400000000000000;
  }

  v52 = v51;
  String.append(_:)(*&v50);

  v53._countAndFlagsBits = 62;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  return v55[0];
}

unint64_t sub_1001C2B64()
{
  result = qword_1002E0B80;
  if (!qword_1002E0B80)
  {
    result = swift_getWitnessTable(byte_100245B28, &type metadata for PIPrivateIdentifierMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0B80);
  }

  return result;
}

unint64_t sub_1001C2BB8()
{
  result = qword_1002E0B90;
  if (!qword_1002E0B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfiguration, &type metadata for PIScheduledRotationConfiguration, v0, v1);
    atomic_store(result, &qword_1002E0B90);
  }

  return result;
}

unint64_t sub_1001C2C0C()
{
  result = qword_1002E0BA8;
  if (!qword_1002E0BA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfiguration, &type metadata for PIScheduledRotationConfiguration, v0, v1);
    atomic_store(result, &qword_1002E0BA8);
  }

  return result;
}

uint64_t sub_1001C2C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2CC4(uint64_t a1)
{
  v2 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001C2D48(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000A1F0C(319);
      if (v3 <= 0x3F)
      {
        sub_10003D104(319, &unk_1002E0C18, &type metadata for PIScheduledRotationConfiguration);
        if (v4 <= 0x3F)
        {
          sub_10003D104(319, &qword_1002DC7B8, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIPrivateIdentifierMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001C2F44()
{
  result = qword_1002E0C70;
  if (!qword_1002E0C70)
  {
    result = swift_getWitnessTable(byte_100245B00, &type metadata for PIPrivateIdentifierMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0C70);
  }

  return result;
}

unint64_t sub_1001C2F9C()
{
  result = qword_1002E0C78;
  if (!qword_1002E0C78)
  {
    result = swift_getWitnessTable(byte_100245A70, &type metadata for PIPrivateIdentifierMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0C78);
  }

  return result;
}

unint64_t sub_1001C2FF4()
{
  result = qword_1002E0C80;
  if (!qword_1002E0C80)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for PIPrivateIdentifierMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0C80);
  }

  return result;
}

uint64_t PIScheduledRotationConfiguration.description.getter()
{
  sub_100030404();
  _StringGuts.grow(_:)(48);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x8000000100245B60;
  String.append(_:)(v1);
  v2._object = 0x8000000100276EE0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100276F00;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_1001C3174(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7889261 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001C328C(char a1)
{
  if (!a1)
  {
    return 7235949;
  }

  if (a1 == 1)
  {
    return 7889261;
  }

  return 0x6E6F697463617266;
}

uint64_t sub_1001C32DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C3174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C3304(uint64_t a1)
{
  v2 = sub_1001C34F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C3340(uint64_t a1)
{
  v2 = sub_1001C34F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static PIScheduledRotationConfiguration.JitterConfiguration.__derived_struct_equals(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

uint64_t PIScheduledRotationConfiguration.JitterConfiguration.encode(to:)(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E0C88, &qword_100245BA8);
  sub_100003724();
  v5 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_10000C4FC(a1, a1[3]);
  v9 = sub_1001C34F8();
  sub_100030418(&type metadata for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys, v10, v9);
  v15 = 0;
  sub_1000303A8(&v15);
  if (!v1)
  {
    v14 = 1;
    sub_1000303A8(&v14);
    v13 = 2;
    sub_1000303A8(&v13);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1001C34F8()
{
  result = qword_1002E0C90;
  if (!qword_1002E0C90)
  {
    result = swift_getWitnessTable(byte_100245F00, &type metadata for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0C90);
  }

  return result;
}

double PIScheduledRotationConfiguration.JitterConfiguration.init(from:)(void *a1)
{
  sub_100099DF4(&qword_1002E0C98, &qword_100245BB0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_1001C34F8();
  sub_1000303E0(&type metadata for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    v13 = 0;
    sub_1000303C4(&v13);
    v2 = v7;
    v12 = 1;
    sub_1000303C4(&v12);
    v11 = 2;
    sub_1000303C4(&v11);
    v9 = sub_10000BD0C();
    v10(v9);
    sub_100004118(a1);
  }

  return v2;
}

void sub_1001C36E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PIScheduledRotationConfiguration.JitterConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1001C3744(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100276F20 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100276F40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1001C3818(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1001C3858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C3744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C3880(uint64_t a1)
{
  v2 = sub_1001C3A7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C38BC(uint64_t a1)
{
  v2 = sub_1001C3A7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static PIScheduledRotationConfiguration.__derived_struct_equals(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a2 == a6;
  if (a3 != a7)
  {
    v8 = 0;
  }

  if (a4 != a8)
  {
    v8 = 0;
  }

  return a1 == a5 && v8;
}

uint64_t PIScheduledRotationConfiguration.encode(to:)()
{
  sub_100030404();
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002E0CA0, &qword_100245BB8);
  sub_100003724();
  v8 = v7;
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = &v16[-1] - v10;
  sub_10000C4FC(v5, v5[3]);
  v12 = sub_1001C3A7C();
  sub_100030418(&type metadata for PIScheduledRotationConfiguration.CodingKeys, v13, v12);
  LOBYTE(v16[0]) = 0;
  sub_1000303A8(v16);
  if (!v0)
  {
    v16[0] = v3;
    v16[1] = v2;
    v16[2] = v1;
    v17 = 1;
    sub_1001C3AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_1001C3A7C()
{
  result = qword_1002E0CA8;
  if (!qword_1002E0CA8)
  {
    result = swift_getWitnessTable(byte_100245EB0, &type metadata for PIScheduledRotationConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CA8);
  }

  return result;
}

unint64_t sub_1001C3AD0()
{
  result = qword_1002E0CB0;
  if (!qword_1002E0CB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfiguration.JitterConfiguration, &type metadata for PIScheduledRotationConfiguration.JitterConfiguration, v0, v1);
    atomic_store(result, &qword_1002E0CB0);
  }

  return result;
}

double PIScheduledRotationConfiguration.init(from:)(void *a1)
{
  sub_100099DF4(&qword_1002E0CB8, &qword_100245BC0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_1001C3A7C();
  sub_1000303E0(&type metadata for PIScheduledRotationConfiguration.CodingKeys, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1000303C4(&v11);
    v2 = v7;
    sub_1001C3CC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10000BD0C();
    v9(v8);
    sub_100004118(a1);
  }

  return v2;
}

unint64_t sub_1001C3CC0()
{
  result = qword_1002E0CC0;
  if (!qword_1002E0CC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfiguration.JitterConfiguration, &type metadata for PIScheduledRotationConfiguration.JitterConfiguration, v0, v1);
    atomic_store(result, &qword_1002E0CC0);
  }

  return result;
}

void sub_1001C3D28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PIScheduledRotationConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1001C3D84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C3DA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PIScheduledRotationConfiguration.JitterConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIScheduledRotationConfiguration.JitterConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PIScheduledRotationConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001C3FF8()
{
  result = qword_1002E0CC8;
  if (!qword_1002E0CC8)
  {
    result = swift_getWitnessTable(asc_100245DD0, &type metadata for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CC8);
  }

  return result;
}

unint64_t sub_1001C4050()
{
  result = qword_1002E0CD0;
  if (!qword_1002E0CD0)
  {
    result = swift_getWitnessTable(aI_7, &type metadata for PIScheduledRotationConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CD0);
  }

  return result;
}

unint64_t sub_1001C40A8()
{
  result = qword_1002E0CD8;
  if (!qword_1002E0CD8)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for PIScheduledRotationConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CD8);
  }

  return result;
}

unint64_t sub_1001C4100()
{
  result = qword_1002E0CE0;
  if (!qword_1002E0CE0)
  {
    result = swift_getWitnessTable(byte_100245E20, &type metadata for PIScheduledRotationConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CE0);
  }

  return result;
}

unint64_t sub_1001C4158()
{
  result = qword_1002E0CE8;
  if (!qword_1002E0CE8)
  {
    result = swift_getWitnessTable(byte_100245D40, &type metadata for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CE8);
  }

  return result;
}

unint64_t sub_1001C41B0()
{
  result = qword_1002E0CF0;
  if (!qword_1002E0CF0)
  {
    result = swift_getWitnessTable(byte_100245D68, &type metadata for PIScheduledRotationConfiguration.JitterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0CF0);
  }

  return result;
}

__n128 PIScheduledRotationConfigurationUpdate.scheduledRotationConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001C4230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x8000000100276E70 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x8000000100276EB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001C434C(char a1)
{
  if (!a1)
  {
    return 0x726F697661686562;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ELL;
  }

  return 0xD000000000000021;
}

uint64_t sub_1001C43B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C4230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C43D8(uint64_t a1)
{
  v2 = sub_1001C45F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C4414(uint64_t a1)
{
  v2 = sub_1001C45F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIScheduledRotationConfigurationUpdate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0CF8, &qword_100245F50);
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  sub_10000C4FC(a1, a1[3]);
  sub_1001C45F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = *v3;
  v15 = 0;
  sub_1001C4644();
  sub_10003054C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v13[0] = *(v3 + 8);
    v13[1] = v11;
    v14 = *(v3 + 40);
    v15 = 1;
    sub_1001C2BB8();
    sub_10003054C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001C45F0()
{
  result = qword_1002E0D00;
  if (!qword_1002E0D00)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for PIScheduledRotationConfigurationUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D00);
  }

  return result;
}

unint64_t sub_1001C4644()
{
  result = qword_1002E0D08;
  if (!qword_1002E0D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfigurationUpdate.Behavior, &type metadata for PIScheduledRotationConfigurationUpdate.Behavior, v0, v1);
    atomic_store(result, &qword_1002E0D08);
  }

  return result;
}

uint64_t PIScheduledRotationConfigurationUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002E0D10, &qword_100245F58);
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10000C4FC(a1, a1[3]);
  sub_1001C45F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  v23 = 0;
  sub_1001C48AC();
  sub_100030530();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v20;
  v23 = 1;
  sub_1001C2C0C();
  sub_100030530();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v21;
  v18 = v20;
  v24 = v22;
  LOBYTE(v20) = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v7 + 8))(v10, v5);
  v23 = v24;
  v19 = v14 & 1;
  result = sub_100004118(a1);
  *a2 = v11;
  v16 = v18;
  *(a2 + 24) = v17;
  *(a2 + 8) = v16;
  *(a2 + 40) = v23;
  *(a2 + 48) = v12;
  *(a2 + 56) = v19;
  return result;
}

unint64_t sub_1001C48AC()
{
  result = qword_1002E0D18;
  if (!qword_1002E0D18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfigurationUpdate.Behavior, &type metadata for PIScheduledRotationConfigurationUpdate.Behavior, v0, v1);
    atomic_store(result, &qword_1002E0D18);
  }

  return result;
}

double sub_1001C4900@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  PIScheduledRotationConfigurationUpdate.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

PrivateIdentifiers::PIScheduledRotationConfigurationUpdate::Behavior_optional __swiftcall PIScheduledRotationConfigurationUpdate.Behavior.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCC58, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PIScheduledRotationConfigurationUpdate.Behavior.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4E657461746F72;
  }

  if (a1 == 1)
  {
    return 0xD000000000000020;
  }

  return 0xD00000000000001ALL;
}

PrivateIdentifiers::PIScheduledRotationConfigurationUpdate::Behavior_optional sub_1001C4A3C@<W0>(Swift::String *a1@<X0>, PrivateIdentifiers::PIScheduledRotationConfigurationUpdate::Behavior_optional *a2@<X8>)
{
  result.value = PIScheduledRotationConfigurationUpdate.Behavior.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001C4A6C@<X0>(uint64_t *a1@<X8>)
{
  result = PIScheduledRotationConfigurationUpdate.Behavior.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PIScheduledRotationConfigurationUpdate.description.getter()
{
  v1 = 7104878;
  v16[8] = 0;
  _StringGuts.grow(_:)(89);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000026;
  v3._object = 0x8000000100245F40;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6F69766168656220;
  v4._object = 0xEA00000000003D72;
  String.append(_:)(v4);
  *v16 = *v0;
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x8000000100276D30;
  v5._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v5);
  if (v0[40])
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v7 = PIScheduledRotationConfiguration.description.getter();
    v6 = v8;
  }

  v9 = v6;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD000000000000024;
  v10._object = 0x8000000100276D90;
  String.append(_:)(v10);
  if (v0[56])
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v1 = Double.description.getter();
    v11 = v12;
  }

  v13._countAndFlagsBits = v1;
  v13._object = v11;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return *&v16[1];
}

unint64_t sub_1001C4CEC()
{
  result = qword_1002E0D20;
  if (!qword_1002E0D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfigurationUpdate.Behavior, &type metadata for PIScheduledRotationConfigurationUpdate.Behavior, v0, v1);
    atomic_store(result, &qword_1002E0D20);
  }

  return result;
}

uint64_t sub_1001C4D44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[57])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C4D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1001C4E08()
{
  result = qword_1002E0D28;
  if (!qword_1002E0D28)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for PIScheduledRotationConfigurationUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D28);
  }

  return result;
}

unint64_t sub_1001C4E60()
{
  result = qword_1002E0D30;
  if (!qword_1002E0D30)
  {
    result = swift_getWitnessTable(byte_100246128, &type metadata for PIScheduledRotationConfigurationUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D30);
  }

  return result;
}

unint64_t sub_1001C4EB8()
{
  result = qword_1002E0D38;
  if (!qword_1002E0D38)
  {
    result = swift_getWitnessTable(byte_100246150, &type metadata for PIScheduledRotationConfigurationUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D38);
  }

  return result;
}

unint64_t sub_1001C4F0C()
{
  result = qword_1002E0D40;
  if (!qword_1002E0D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfigurationUpdate.Behavior, &type metadata for PIScheduledRotationConfigurationUpdate.Behavior, v0, v1);
    atomic_store(result, &qword_1002E0D40);
  }

  return result;
}

uint64_t sub_1001C4F68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001C5008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C4F68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001C5034(uint64_t a1)
{
  v2 = sub_1001C51D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5070(uint64_t a1)
{
  v2 = sub_1001C51D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.Key.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100099DF4(&qword_1002E0D48, &qword_100246230);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003B38();
  sub_10000C4FC(a1, a1[3]);
  sub_1001C51D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v3, v5);
}

unint64_t sub_1001C51D4()
{
  result = qword_1002E0D50;
  if (!qword_1002E0D50)
  {
    result = swift_getWitnessTable(asc_1002467EC, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D50);
  }

  return result;
}

void *PIUnpersonalizedPrivateIdentifierMapping.Key.init(from:)(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E0D58, &unk_100246238);
  sub_100003724();
  v5 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_10000C4FC(a1, a1[3]);
  sub_1001C51D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100004118(a1);
  return v9;
}

void *sub_1001C537C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = PIUnpersonalizedPrivateIdentifierMapping.Key.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(v2) + 24);
  type metadata accessor for Date();
  sub_10000307C();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t sub_1001C54BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100276880 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461746F72 && a2 == 0xEE006E6F73616552;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000100276C20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1001C566C(char a1)
{
  result = 0x6E6F697461746F72;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1001C572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C54BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C5754(uint64_t a1)
{
  v2 = sub_1001C5A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5790(uint64_t a1)
{
  v2 = sub_1001C5A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0D60, &qword_100246248);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = a1[3];
  sub_10000C4FC(a1, v11);
  v12 = sub_1001C5A08();
  sub_10000A484(&type metadata for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v13, v12);
  v21 = *v3;
  v20 = 0;
  sub_1001BE6E0();
  sub_100030CBC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
    sub_100030D30();
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100030D44();
    type metadata accessor for Date();
    sub_100030C90();
    sub_100030578(v14, v15, &protocol conformance descriptor for Date);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v3 + *(v11 + 28);
    v17 = *v16;
    LOBYTE(v16) = v16[8];
    *&v21 = v17;
    BYTE8(v21) = v16;
    v20 = 3;
    sub_1001BE734();
    sub_100030CBC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21) = *(v3 + *(v11 + 32));
    v20 = 4;
    sub_1001BE788();
    sub_100030CBC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001C5A08()
{
  result = qword_1002E0D68;
  if (!qword_1002E0D68)
  {
    result = swift_getWitnessTable(byte_10024679C, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D68);
  }

  return result;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  type metadata accessor for Date();
  sub_100003724();
  v31 = v5;
  v32 = v4;
  __chkstk_darwin(v4);
  sub_10000306C();
  v8 = v7 - v6;
  sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v34 = sub_100099DF4(&qword_1002E0D70, &qword_100246250);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003B38();
  v36 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  sub_10000307C();
  __chkstk_darwin(v13);
  sub_10000306C();
  v16 = (v15 - v14);
  v17 = a1[3];
  v37 = a1;
  sub_10000C4FC(a1, v17);
  sub_1001C5A08();
  v33 = v2;
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100004118(v37);
  }

  v39 = 0;
  sub_1001BEDE8();
  sub_100030CE8(&type metadata for PIGenerationCounter);
  *v16 = v38;
  LOBYTE(v38) = 1;
  sub_10002FE54(&qword_1002E0940);
  sub_100030D0C();
  v19 = v11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v36;
  sub_1001BEE3C(v19, &v16[*(v36 + 20)]);
  LOBYTE(v38) = 2;
  sub_100030C90();
  sub_100030578(v21, v22, &protocol conformance descriptor for Date);
  sub_100030D0C();
  v23 = v8;
  v24 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 32))(&v16[v20[6]], v23, v24);
  v39 = 3;
  sub_1001BEEAC();
  sub_100030CE8(&type metadata for PIKeypairsRotationReason);
  v25 = BYTE8(v38);
  v26 = &v16[v20[7]];
  *v26 = v38;
  v26[8] = v25;
  v39 = 4;
  sub_1001BEF00();
  sub_100030CE8(&type metadata for PIKeypairsModificationKind);
  v27 = sub_100030D18();
  v28(v27);
  v16[v20[8]] = v38;
  sub_100030608(v16, v30, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem);
  sub_100004118(v37);
  return sub_10003067C(v16, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.metadata.getter()
{
  v2 = sub_10000309C();
  v3 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(v2);
  return sub_100030608(v1 + *(v3 + 24), v0, type metadata accessor for PIPrivateIdentifierMetadata);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.validityStartDate.getter()
{
  v2 = sub_10000309C();
  v3 = *(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(v2) + 28);
  type metadata accessor for Date();
  sub_10000307C();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.history.getter()
{
  type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
}

uint64_t sub_1001C6004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100276BE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000100276C00 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1001C61AC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x79726F74736968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C6250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C6004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C6278(uint64_t a1)
{
  v2 = sub_1001C6598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C62B4(uint64_t a1)
{
  v2 = sub_1001C6598();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0D78, &qword_100246258);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = a1[3];
  sub_10000C4FC(a1, v11);
  v12 = sub_1001C6598();
  sub_10000A484(&type metadata for PIUnpersonalizedPrivateIdentifierMapping.CodingKeys, v13, v12);
  v14 = v3[1];
  v23 = *v3;
  v24 = v14;
  v22 = 0;
  sub_1001C65EC();
  sub_100030CBC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
    sub_100030D30();
    sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_10002FE30(&qword_1002E0910);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = sub_100030D44();
    type metadata accessor for PIPrivateIdentifierMetadata(v15);
    sub_100030CD0();
    sub_100030578(v16, v17, protocol conformance descriptor for PIPrivateIdentifierMetadata);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 3;
    type metadata accessor for Date();
    sub_100030C90();
    sub_100030578(v18, v19, &protocol conformance descriptor for Date);
    sub_100030CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v3 + *(v11 + 32));
    v22 = 4;
    sub_100099DF4(&qword_1002E0D90, &qword_100246260);
    sub_1000306D4(&qword_1002E0D98, &qword_1002E0DA0, protocol conformance descriptor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001C6598()
{
  result = qword_1002E0D80;
  if (!qword_1002E0D80)
  {
    result = swift_getWitnessTable("݃\a", &type metadata for PIUnpersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0D80);
  }

  return result;
}

unint64_t sub_1001C65EC()
{
  result = qword_1002E0D88;
  if (!qword_1002E0D88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIUnpersonalizedPrivateIdentifierMapping.Key, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E0D88);
  }

  return result;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  type metadata accessor for Date();
  sub_100003724();
  v39 = v4;
  v40 = v5;
  __chkstk_darwin(v4);
  sub_10000306C();
  v36 = v7 - v6;
  v37 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  sub_10000307C();
  __chkstk_darwin(v8);
  sub_10000306C();
  v38 = v10 - v9;
  sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100003B38();
  v43 = sub_100099DF4(&qword_1002E0DA8, &qword_100246268);
  sub_100003724();
  v41 = v12;
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = v34 - v14;
  v16 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  sub_10000307C();
  __chkstk_darwin(v17);
  sub_10000306C();
  v20 = (v19 - v18);
  sub_10000C4FC(a1, a1[3]);
  sub_1001C6598();
  v42 = v15;
  v21 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100004118(a1);
  }

  v44 = v16;
  v47 = 0;
  sub_1001C6BFC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v46;
  *v20 = v45;
  *(v20 + 1) = v22;
  v34[1] = v22;
  LOBYTE(v45) = 1;
  sub_10002FE54(&qword_1002E0940);
  sub_100030D0C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v44;
  sub_1001BEE3C(v2, &v20[v44[5]]);
  LOBYTE(v45) = 2;
  sub_100030CD0();
  sub_100030578(v24, v25, "Ň\a");
  sub_100030D0C();
  v26 = v38;
  v37 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1001C6C50(v26, &v20[v23[6]]);
  LOBYTE(v45) = 3;
  sub_100030C90();
  sub_100030578(v27, v28, &protocol conformance descriptor for Date);
  sub_100030D0C();
  v29 = v36;
  v30 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v40 + 32))(&v20[v23[7]], v29, v30);
  sub_100099DF4(&qword_1002E0D90, &qword_100246260);
  v47 = 4;
  sub_1000306D4(&qword_1002E0DB8, &qword_1002E0DC0, protocol conformance descriptor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = sub_100030D24();
  v32(v31);
  *&v20[v23[8]] = v45;
  sub_100030608(v20, v35, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping);
  sub_100004118(a1);
  return sub_10003067C(v20, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping);
}

unint64_t sub_1001C6BFC()
{
  result = qword_1002E0DB0;
  if (!qword_1002E0DB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIUnpersonalizedPrivateIdentifierMapping.Key, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E0DB0);
  }

  return result;
}

uint64_t sub_1001C6C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIPrivateIdentifierMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C6CB4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(17);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0x6D616E2079654B3CLL;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.description.getter()
{
  _StringGuts.grow(_:)(111);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x4979726F74736948;
  v2._object = 0xEB000000006D6574;
  String.append(_:)(v2);
  sub_10002FE90();
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  v4._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v4);

  sub_10002FE90();
  String.append(_:)(v5);
  v6 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v7._countAndFlagsBits = sub_1001BD614();
  String.append(_:)(v7);

  sub_10002FE90();
  String.append(_:)(v8);
  type metadata accessor for Date();
  sub_100030C90();
  sub_100030578(v9, v10, &protocol conformance descriptor for Date);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  sub_10002FE90();
  String.append(_:)(v12);
  v13._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*(v0 + *(v6 + 28)), *(v0 + *(v6 + 28) + 8));
  String.append(_:)(v13);

  sub_10002FE90();
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  sub_1001BD80C(*(v0 + *(v6 + 32)));
  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0;
}

uint64_t PIUnpersonalizedPrivateIdentifierMapping.description.getter()
{
  _StringGuts.grow(_:)(74);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x8000000100246250;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100276BC0;
  String.append(_:)(v3);
  v4 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  v5._countAndFlagsBits = sub_1001BD614();
  String.append(_:)(v5);

  v6._object = 0x8000000100276B60;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  type metadata accessor for Date();
  sub_100030C90();
  sub_100030578(v7, v8, &protocol conformance descriptor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x726F74736968202CLL;
  v10._object = 0xEA00000000003D79;
  String.append(_:)(v10);
  v11 = *(v0 + *(v4 + 32));
  swift_getKeyPath();
  if (v11)
  {

    swift_getAtKeyPath();

    v12 = v19;
    v13 = v20;
  }

  else
  {

    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 0x61646174656D202CLL;
  v15._object = 0xEB000000003D6174;
  String.append(_:)(v15);
  v16._countAndFlagsBits = PIPrivateIdentifierMetadata.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_1001C71C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  result = Array.description.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1001C7200()
{
  result = qword_1002E0DC8;
  if (!qword_1002E0DC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIUnpersonalizedPrivateIdentifierMapping.Key, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E0DC8);
  }

  return result;
}

unint64_t sub_1001C7258()
{
  result = qword_1002E0DD0;
  if (!qword_1002E0DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIUnpersonalizedPrivateIdentifierMapping.Key, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key, v0, v1);
    atomic_store(result, &qword_1002E0DD0);
  }

  return result;
}

void sub_1001C72D8(uint64_t a1)
{
  sub_1001C06B4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PIPrivateIdentifierMetadata(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1001C739C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001C739C(uint64_t a1)
{
  if (!qword_1002E0E40)
  {
    sub_10009A468(&qword_1002E0D90, &qword_100246260);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002E0E40);
    }
  }
}

void sub_1001C7438(uint64_t a1)
{
  sub_1001C06B4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIUnpersonalizedPrivateIdentifierMapping.Key.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1001C75B4()
{
  result = qword_1002E0F20;
  if (!qword_1002E0F20)
  {
    result = swift_getWitnessTable(byte_1002465B4, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F20);
  }

  return result;
}

unint64_t sub_1001C760C()
{
  result = qword_1002E0F28;
  if (!qword_1002E0F28)
  {
    result = swift_getWitnessTable(asc_10024666C, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F28);
  }

  return result;
}

unint64_t sub_1001C7664()
{
  result = qword_1002E0F30;
  if (!qword_1002E0F30)
  {
    result = swift_getWitnessTable(byte_100246724, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F30);
  }

  return result;
}

unint64_t sub_1001C76BC()
{
  result = qword_1002E0F38;
  if (!qword_1002E0F38)
  {
    result = swift_getWitnessTable(byte_100246694, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F38);
  }

  return result;
}

unint64_t sub_1001C7714()
{
  result = qword_1002E0F40;
  if (!qword_1002E0F40)
  {
    result = swift_getWitnessTable(byte_1002466BC, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F40);
  }

  return result;
}

unint64_t sub_1001C776C()
{
  result = qword_1002E0F48;
  if (!qword_1002E0F48)
  {
    result = swift_getWitnessTable(asc_1002465DC, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F48);
  }

  return result;
}

unint64_t sub_1001C77C4()
{
  result = qword_1002E0F50;
  if (!qword_1002E0F50)
  {
    result = swift_getWitnessTable("Ղ\a", &type metadata for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F50);
  }

  return result;
}

unint64_t sub_1001C781C()
{
  result = qword_1002E0F58;
  if (!qword_1002E0F58)
  {
    result = swift_getWitnessTable(byte_100246524, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F58);
  }

  return result;
}

unint64_t sub_1001C7874()
{
  result = qword_1002E0F60;
  if (!qword_1002E0F60)
  {
    result = swift_getWitnessTable(byte_10024654C, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F60);
  }

  return result;
}

uint64_t sub_1001C78CC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3)
  {
    v9[0] = *a1;
    v9[1] = v3;
    memcpy(v10, a1 + 2, sizeof(v10));
    v4 = a2[1];
    if (v4)
    {
      v7[0] = *a2;
      v7[1] = v4;
      memcpy(v8, a2 + 2, sizeof(v8));
      v5 = static PICodableError.__derived_struct_equals(_:_:)(v9, v7);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = a2[1] == 0;
  }

  return v5 & 1;
}

uint64_t sub_1001C7964(void *a1)
{
  v2 = v1;
  sub_100099DF4(&qword_1002E0F70, &qword_1002469A0);
  sub_100003724();
  v26 = v5;
  v27 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  sub_100099DF4(&qword_1002E0F78, &qword_1002469A8);
  sub_100003724();
  v24 = v10;
  v25 = v9;
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_100099DF4(&qword_1002E0F80, &qword_1002469B0);
  sub_100003724();
  v16 = v15;
  sub_100003774();
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  sub_10000C4FC(a1, a1[3]);
  sub_1001C87AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v2[1];
  if (v20)
  {
    v21 = *v2;
    LOBYTE(v28) = 1;
    sub_1001C8800();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v21;
    v29 = v20;
    memcpy(v30, v2 + 2, sizeof(v30));
    sub_1001B6C10();
    v22 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v8, v22);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1001C8854();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v25);
  }

  return (*(v16 + 8))(v19, v14);
}

void sub_1001C7C50(uint64_t a1)
{
  if (*(v1 + 8))
  {
    memcpy(v3, (v1 + 16), sizeof(v3));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1001C7CC4()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  if (v1)
  {
    v4 = *v0;
    v5 = v1;
    memcpy(v6, v0 + 2, sizeof(v6));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1001C7D48(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a2;
  *&v47 = sub_100099DF4(&qword_1002E0FA0, &qword_1002469B8);
  sub_100003724();
  *&v44 = v3;
  sub_100003774();
  __chkstk_darwin(v4);
  v5 = sub_100099DF4(&qword_1002E0FA8, &qword_1002469C0);
  sub_100003724();
  *&v43 = v6;
  sub_100003774();
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  v10 = sub_100099DF4(&qword_1002E0FB0, &unk_1002469C8);
  sub_100003724();
  *&v46 = v11;
  sub_100003774();
  __chkstk_darwin(v12);
  v14 = &v39[-v13];
  sub_10000C4FC(a1, a1[3]);
  sub_1001C87AC();
  v15 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_8;
  }

  *&v42 = v9;
  *&v41 = v5;
  v54 = a1;
  v16 = KeyedDecodingContainer.allKeys.getter();
  sub_10003CDEC(v16, 0);
  if (v18 == v19 >> 1)
  {
    goto LABEL_7;
  }

  if (v18 >= (v19 >> 1))
  {
    __break(1u);
    return;
  }

  v40 = *(v17 + v18);
  sub_1001BD27C();
  v21 = v20;
  v23 = v22;
  swift_unknownObjectRelease();
  if (v21 != v23 >> 1)
  {
LABEL_7:
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v27 = &type metadata for PIVoidCodableResult;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_100030DA8();
    v29(v28);
    a1 = v54;
LABEL_8:
    sub_100004118(a1);
    return;
  }

  if (v40)
  {
    LOBYTE(v48) = 1;
    sub_1001C8800();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v45;
    sub_1001B7BAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v46;
    swift_unknownObjectRelease();
    v34 = sub_100030DBC();
    v35(v34);
    (*(v31 + 8))(v14, v10);
    v46 = v49;
    v47 = v48;
    v43 = v51;
    v44 = v50;
    v41 = v53;
    v42 = v52;
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_1001C8854();
    v30 = v42;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v45;
    swift_unknownObjectRelease();
    (*(v43 + 8))(v30, v41);
    v32 = sub_100030DA8();
    v33(v32);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
  }

  sub_100004118(v54);
  v36 = v46;
  *v24 = v47;
  v24[1] = v36;
  v37 = v43;
  v24[2] = v44;
  v24[3] = v37;
  v38 = v41;
  v24[4] = v42;
  v24[5] = v38;
}

uint64_t sub_1001C830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B80DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C8334(uint64_t a1)
{
  v2 = sub_1001C87AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8370(uint64_t a1)
{
  v2 = sub_1001C87AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C83B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002EBD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001C83DC(uint64_t a1)
{
  v2 = sub_1001C8800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8418(uint64_t a1)
{
  v2 = sub_1001C8800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C8454(uint64_t a1)
{
  v2 = sub_1001C8854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8490(uint64_t a1)
{
  v2 = sub_1001C8854();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001C84CC(void *a1@<X0>, void *a2@<X8>)
{
  sub_1001C7D48(a1, v4);
  if (!v2)
  {
    memcpy(a2, v4, 0x60uLL);
  }
}

Swift::Int sub_1001C8538(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3)
  {
    v6 = v2;
    v7 = v3;
    memcpy(v8, v1 + 2, sizeof(v8));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001C85C0()
{
  if (!*(v0 + 8))
  {
    return 0x73736563637573;
  }

  String.append(_:)(*(v0 + 56));
  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x286572756C696166;
}

uint64_t sub_1001C8640(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C8658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001C86A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1001C8708(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1001C8758()
{
  result = qword_1002E0F68;
  if (!qword_1002E0F68)
  {
    result = swift_getWitnessTable(asc_1002468E4, &type metadata for PIVoidCodableResult, v0, v1);
    atomic_store(result, &qword_1002E0F68);
  }

  return result;
}

unint64_t sub_1001C87AC()
{
  result = qword_1002E0F88;
  if (!qword_1002E0F88)
  {
    result = swift_getWitnessTable(asc_100246C84, &type metadata for PIVoidCodableResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F88);
  }

  return result;
}

unint64_t sub_1001C8800()
{
  result = qword_1002E0F90;
  if (!qword_1002E0F90)
  {
    result = swift_getWitnessTable(byte_100246C34, &type metadata for PIVoidCodableResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F90);
  }

  return result;
}

unint64_t sub_1001C8854()
{
  result = qword_1002E0F98;
  if (!qword_1002E0F98)
  {
    result = swift_getWitnessTable("݁\a", &type metadata for PIVoidCodableResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0F98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIVoidCodableResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PIVoidCodableResult.FailureCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1001C8A44()
{
  result = qword_1002E0FB8;
  if (!qword_1002E0FB8)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for PIVoidCodableResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FB8);
  }

  return result;
}

unint64_t sub_1001C8A9C()
{
  result = qword_1002E0FC0;
  if (!qword_1002E0FC0)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for PIVoidCodableResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FC0);
  }

  return result;
}

unint64_t sub_1001C8AF4()
{
  result = qword_1002E0FC8;
  if (!qword_1002E0FC8)
  {
    result = swift_getWitnessTable("Ղ\a", &type metadata for PIVoidCodableResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FC8);
  }

  return result;
}

unint64_t sub_1001C8B4C()
{
  result = qword_1002E0FD0;
  if (!qword_1002E0FD0)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for PIVoidCodableResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FD0);
  }

  return result;
}

unint64_t sub_1001C8BA4()
{
  result = qword_1002E0FD8;
  if (!qword_1002E0FD8)
  {
    result = swift_getWitnessTable(byte_100246A24, &type metadata for PIVoidCodableResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FD8);
  }

  return result;
}

unint64_t sub_1001C8BFC()
{
  result = qword_1002E0FE0;
  if (!qword_1002E0FE0)
  {
    result = swift_getWitnessTable(byte_100246A4C, &type metadata for PIVoidCodableResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FE0);
  }

  return result;
}

unint64_t sub_1001C8C54()
{
  result = qword_1002E0FE8;
  if (!qword_1002E0FE8)
  {
    result = swift_getWitnessTable(byte_100246B2C, &type metadata for PIVoidCodableResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FE8);
  }

  return result;
}

unint64_t sub_1001C8CAC()
{
  result = qword_1002E0FF0;
  if (!qword_1002E0FF0)
  {
    result = swift_getWitnessTable(byte_100246B54, &type metadata for PIVoidCodableResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0FF0);
  }

  return result;
}

uint64_t sub_1001C8D00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001002770A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001002770C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000001002770E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ELL && 0x8000000100277100 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1001C8E5C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C8ED8(void *a1)
{
  v81 = sub_100099DF4(&qword_1002E1130, &qword_100246DB8);
  sub_100003724();
  v80 = v2;
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100003018();
  sub_10000A1C0(v4);
  v77 = sub_100099DF4(&qword_1002E1138, &qword_100246DC0);
  sub_100003724();
  v76 = v5;
  sub_100003774();
  __chkstk_darwin(v6);
  v83 = sub_100099DF4(&qword_1002E1140, &qword_100246DC8);
  sub_100003724();
  v82 = v7;
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003018();
  sub_10000A1C0(v9);
  v79 = sub_100099DF4(&qword_1002E1148, &qword_100246DD0);
  sub_100003724();
  v78 = v10;
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100003018();
  sub_10000A1C0(v12);
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v13 - 8);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  sub_10000A1C0(&v74 - v16);
  type metadata accessor for PIXPCMessage(0);
  sub_10000307C();
  __chkstk_darwin(v17);
  sub_10000306C();
  v20 = v19 - v18;
  sub_100099DF4(&qword_1002E1150, &qword_100246DD8);
  sub_100003724();
  v86 = v21;
  sub_100003774();
  __chkstk_darwin(v22);
  sub_10000C4FC(a1, a1[3]);
  sub_1001CAF68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001CAE28(v84, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *v20;
      v52 = *(v20 + 8);
      v54 = sub_100099DF4(&qword_1002E2730, &qword_100246D10);
      v55 = sub_100031440(v54);
      v56 = v75;
      sub_1000A99D8(v55, v75);
      LOBYTE(v87) = 1;
      sub_1001CB11C();
      sub_1000314D4(&type metadata for PIXPCMessage.UnpersonalizedKeypairQueryCodingKeys, &v87);
      v87 = v53;
      v88 = v52;
      v95 = 0;
      sub_1001C65EC();
      sub_100031668();
      v57 = v83;
      v58 = v85;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v58)
      {
        v59 = sub_1000313EC();
        v60(v59, v57);
        sub_1000ACD3C(v56);
        v61 = sub_10003140C();
        v62(v61);
      }

      LOBYTE(v87) = 1;
      type metadata accessor for Date();
      sub_10003148C(&qword_1002DACE8);
      sub_1000315D4();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_10003153C();
      sub_100031668();
      sub_1000315D4();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v70 = sub_1000313EC();
      v71(v70, v57);
      v69 = v56;
      goto LABEL_21;
    case 2u:
      v35 = *v20;
      v34 = *(v20 + 8);
      v37 = *(v20 + 16);
      v36 = *(v20 + 24);
      LODWORD(v84) = *(v20 + 32);
      LOBYTE(v91) = 2;
      sub_1001CB0C8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v91 = v35;
      v92 = v34;
      v93 = v37;
      v94 = v36;
      LOBYTE(v87) = 0;
      sub_1001BF7CC();
      sub_100031634();
      v38 = v85;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v38)
      {
        v39 = sub_1000315B0();
        v40(v39);
        goto LABEL_6;
      }

      LOBYTE(v91) = v84;
      LOBYTE(v87) = 1;
      sub_1001CB218();
      sub_100031634();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v64 = sub_1000315B0();
      goto LABEL_14;
    case 3u:
      v44 = *v20;
      v43 = *(v20 + 8);
      v45 = *(v20 + 16);
      LOBYTE(v91) = 3;
      sub_1001CAFBC();
      sub_1000314D4(&type metadata for PIXPCMessage.UnpersonalizedOnDemandRotationCodingKeys, &v91);
      v91 = v44;
      v92 = v43;
      LOBYTE(v87) = 0;
      sub_1001C65EC();
      sub_100031634();
      v46 = v81;
      v47 = v85;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v47)
      {
        v48 = sub_1000313EC();
        v49(v48, v46);
        v50 = sub_10003140C();
        v51(v50);
      }

      LOBYTE(v91) = v45;
      LOBYTE(v87) = 1;
      sub_1001CB218();
      sub_100031634();
      sub_1000315D4();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v64 = sub_1000313EC();
      v65 = v46;
LABEL_14:
      v66(v64, v65);
      goto LABEL_22;
    default:
      v24 = *v20;
      v23 = *(v20 + 8);
      v25 = *(v20 + 16);
      v26 = *(v20 + 24);
      v27 = sub_100099DF4(&qword_1002E0FF8, &qword_100246D18);
      v28 = sub_100031440(v27);
      v29 = v74;
      sub_1000A99D8(v28, v74);
      LOBYTE(v87) = 0;
      sub_1001CB1C4();
      sub_1000314D4(&type metadata for PIXPCMessage.PersonalizedKeypairQueryCodingKeys, &v87);
      v87 = v24;
      v88 = v23;
      v89 = v25;
      v90 = v26;
      v95 = 0;
      sub_1001BF7CC();
      sub_100031668();
      v30 = v79;
      v31 = v85;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v31)
      {
        v32 = sub_1000313EC();
        v33(v32, v30);
        sub_1000ACD3C(v29);
LABEL_6:
        v41 = sub_10003140C();
        v42(v41);
      }

      else
      {

        LOBYTE(v87) = 1;
        type metadata accessor for Date();
        sub_10003148C(&qword_1002DACE8);
        sub_1000315D4();
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        sub_10003153C();
        sub_100031668();
        sub_1000315D4();
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v67 = sub_1000313EC();
        v68(v67, v30);
        v69 = v29;
LABEL_21:
        sub_1000ACD3C(v69);
LABEL_22:
        v72 = sub_10003140C();
        return v73(v72);
      }
  }
}

void sub_1001C9738(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  sub_100099DF4(&qword_1002E10D0, &qword_100246D88);
  sub_100003724();
  v98 = v5;
  v99 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003018();
  v102 = v7;
  v97 = sub_100099DF4(&qword_1002E10D8, &qword_100246D90);
  sub_100003724();
  v104 = v8;
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v101 = v10;
  sub_100099DF4(&qword_1002E10E0, &qword_100246D98);
  sub_100003724();
  v105 = v12;
  v106 = v11;
  sub_100003774();
  __chkstk_darwin(v13);
  sub_100003018();
  v110 = v14;
  v100 = sub_100099DF4(&qword_1002E10E8, &qword_100246DA0);
  sub_100003724();
  v96 = v15;
  sub_100003774();
  __chkstk_darwin(v16);
  sub_100003018();
  v103 = v17;
  v111 = sub_100099DF4(&qword_1002E10F0, &unk_100246DA8);
  sub_100003724();
  v109 = v18;
  sub_100003774();
  __chkstk_darwin(v19);
  v21 = &v91 - v20;
  v108 = type metadata accessor for PIXPCMessage(0);
  sub_10000307C();
  __chkstk_darwin(v22);
  sub_10000BA50();
  __chkstk_darwin(v23);
  v25 = &v91 - v24;
  __chkstk_darwin(v26);
  v28 = &v91 - v27;
  __chkstk_darwin(v29);
  v31 = &v91 - v30;
  __chkstk_darwin(v32);
  v34 = &v91 - v33;
  v35 = a1[3];
  v112 = a1;
  sub_10000C4FC(a1, v35);
  sub_1001CAF68();
  v36 = v113;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
LABEL_8:
    v53 = v112;
LABEL_9:
    sub_100004118(v53);
    return;
  }

  v92 = v25;
  v93 = v2;
  v95 = v28;
  v113 = v31;
  v94 = v34;
  v37 = v111;
  v38 = KeyedDecodingContainer.allKeys.getter();
  sub_1001BCDF0(v38, 0);
  if (v40 == v41 >> 1)
  {
    goto LABEL_7;
  }

  v91 = 0;
  if (v40 >= (v41 >> 1))
  {
    __break(1u);
    return;
  }

  v42 = *(v39 + v40);
  sub_1001BD27C();
  v44 = v43;
  v46 = v45;
  swift_unknownObjectRelease();
  if (v44 != v46 >> 1)
  {
LABEL_7:
    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v50 = v49;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v50 = v108;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_10003CD30();
    v52(v51, v37);
    goto LABEL_8;
  }

  switch(v42)
  {
    case 1:
      v55 = v107;
      LOBYTE(v114) = 1;
      sub_1001CB11C();
      sub_100031420(&type metadata for PIXPCMessage.UnpersonalizedKeypairQueryCodingKeys, &v114);
      v113 = v21;
      LOBYTE(v114) = 0;
      sub_1001C6BFC();
      v57 = v95;
      sub_10003CF68();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v104 = sub_100099DF4(&qword_1002E2730, &qword_100246D10);
      v69 = *(v104 + 48);
      type metadata accessor for Date();
      LOBYTE(v114) = 1;
      sub_1000314B0(&qword_1002DACC8);
      sub_100031620();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v103 = v69;
      LOBYTE(v114) = 2;
      sub_1001CB170();
      v60 = v106;
      sub_10003CF68();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v91 = 0;
      swift_unknownObjectRelease();
      v87 = sub_100031674();
      v88(v87);
      v89 = sub_10003147C();
      v90(v89);
      swift_storeEnumTagMultiPayload();
      v82 = v57;
      goto LABEL_17;
    case 2:
      LOBYTE(v114) = 2;
      sub_1001CB0C8();
      sub_100031420(&type metadata for PIXPCMessage.PersonalizedOnDemandRotationCodingKeys, &v114);
      v119 = 0;
      sub_1001BFE9C();
      v54 = v97;
      sub_10003CF68();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v58 = v37;
      v113 = v114;
      v59 = v54;
      v60 = v115;
      v61 = v116;
      v62 = v117;
      v118 = 1;
      sub_1001CB010();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v70 = sub_10003CD30();
      v71(v70, v59);
      sub_1000315C8();
      v72(v21, v58);
      v73 = v119;
      v74 = v92;
      *v92 = v113;
      *(v74 + 8) = v60;
      *(v74 + 16) = v61;
      *(v74 + 24) = v62;
      *(v74 + 32) = v73;
      swift_storeEnumTagMultiPayload();
      sub_100031604(v74);
      v75 = v112;
      v91 = 0;
      goto LABEL_16;
    case 3:
      v55 = v107;
      LOBYTE(v114) = 3;
      sub_1001CAFBC();
      sub_100031420(&type metadata for PIXPCMessage.UnpersonalizedOnDemandRotationCodingKeys, &v114);
      v119 = 0;
      sub_1001C6BFC();
      v56 = v99;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v113 = v114;
      v60 = v115;
      v118 = 1;
      sub_1001CB010();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v91 = 0;
      swift_unknownObjectRelease();
      v76 = sub_10003CD30();
      v77(v76, v56);
      v78 = sub_10003CF5C();
      v79(v78);
      v80 = v119;
      v81 = v93;
      *v93 = v113;
      v81[1] = v60;
      *(v81 + 16) = v80;
      swift_storeEnumTagMultiPayload();
      v82 = v81;
LABEL_17:
      sub_100031604(v82);
      v75 = v112;
      v86 = v55;
      goto LABEL_18;
    default:
      LOBYTE(v114) = 0;
      sub_1001CB1C4();
      sub_100031420(&type metadata for PIXPCMessage.PersonalizedKeypairQueryCodingKeys, &v114);
      LOBYTE(v114) = 0;
      sub_1001BFE9C();
      v47 = v113;
      sub_10003CF68();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v63 = sub_100099DF4(&qword_1002E0FF8, &qword_100246D18);
      v91 = 0;
      v110 = v63;
      v64 = *(v63 + 48);
      type metadata accessor for Date();
      LOBYTE(v114) = 1;
      sub_1000314B0(&qword_1002DACC8);
      sub_100031620();
      v65 = v91;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if (v65)
      {
        swift_unknownObjectRelease();
        sub_1000313FC();
        v66(v103, v100);
        v67 = sub_1000314F8();
        v68(v67);

        v53 = v112;
        goto LABEL_9;
      }

      v106 = v64;
      LOBYTE(v114) = 2;
      sub_1001CB170();
      v60 = v100;
      sub_10003CF68();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v91 = 0;
      swift_unknownObjectRelease();
      sub_1000313FC();
      v83(v103, v60);
      v84 = sub_1000314F8();
      v85(v84);
      swift_storeEnumTagMultiPayload();
      sub_100031604(v47);
      v75 = v112;
LABEL_16:
      v86 = v107;
LABEL_18:
      sub_1001CB064(v60, v86);
      sub_100004118(v75);
      break;
  }
}

uint64_t sub_1001CA484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C8D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001CA4AC(uint64_t a1)
{
  v2 = sub_1001CAF68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA4E8(uint64_t a1)
{
  v2 = sub_1001CAF68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA524(uint64_t a1)
{
  v2 = sub_1001CB1C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA560(uint64_t a1)
{
  v2 = sub_1001CB1C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA59C(uint64_t a1)
{
  v2 = sub_1001CB0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA5D8(uint64_t a1)
{
  v2 = sub_1001CB0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA614(uint64_t a1)
{
  v2 = sub_1001CB11C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA650(uint64_t a1)
{
  v2 = sub_1001CB11C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA68C(uint64_t a1)
{
  v2 = sub_1001CAFBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CA6C8(uint64_t a1)
{
  v2 = sub_1001CAFBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CA734()
{
  v2 = type metadata accessor for Date();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v9 - 8);
  sub_10000BA50();
  __chkstk_darwin(v10);
  v12 = &v106 - v11;
  __chkstk_darwin(v13);
  v15 = &v106 - v14;
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  type metadata accessor for PIXPCMessage(0);
  sub_10000307C();
  __chkstk_darwin(v19);
  sub_10000306C();
  v22 = v21 - v20;
  sub_1001CAE28(v0, v21 - v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v107 = v4;
      v64 = 7104878;
      v65 = sub_100099DF4(&qword_1002E2730, &qword_100246D10);
      v66 = *(v22 + *(v65 + 64));
      v67 = sub_100031518(*(v65 + 48));
      sub_1000A99D8(v67, v12);
      sub_100031508();
      _StringGuts.grow(_:)(92);
      sub_1000315E0();
      sub_1000313C0();
      sub_10003146C();
      v69._countAndFlagsBits = v68 + 11;
      v69._object = (v70 | 0x8000000000000000);
      String.append(_:)(v69);
      v71 = sub_10003CF5C();
      v73 = PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(v71, v72);
      v75 = v74;

      v76._countAndFlagsBits = v73;
      v76._object = v75;
      String.append(_:)(v76);

      sub_100002860();
      v77._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v77);
      sub_1000A9914(v12, v1);
      if (sub_100004DFC(v1, 1, v2) == 1)
      {
        v78 = 0xE300000000000000;
        v79 = 7104878;
      }

      else
      {
        v89 = sub_100031654();
        v90(v89, v1, v2);
        v79 = Date.description.getter();
        v78 = v91;
        (*(v73 + 8))(v8, v2);
      }

      v92._countAndFlagsBits = v79;
      v92._object = v78;
      String.append(_:)(v92);

      sub_10003146C();
      v94._countAndFlagsBits = v93 + 8;
      v94._object = (v95 | 0x8000000000000000);
      String.append(_:)(v94);
      if (v66 == 3)
      {
        v96 = 0xE300000000000000;
      }

      else
      {
        sub_10003156C();
        v109 = v66;
        v64 = PIScheduledRotationConfigurationUpdate.description.getter();
        v96 = v102;
      }

      v103._countAndFlagsBits = v64;
      v103._object = v96;
      String.append(_:)(v103);

      v104._countAndFlagsBits = 62;
      v104._object = 0xE100000000000000;
      String.append(_:)(v104);
      v63 = v108;
      v101 = v12;
      goto LABEL_26;
    case 2u:
      v41 = *v22;
      v40 = *(v22 + 8);
      v43 = *(v22 + 16);
      v42 = *(v22 + 24);
      v44 = *(v22 + 32);
      sub_100031508();
      _StringGuts.grow(_:)(56);
      sub_100031688();
      sub_1000313C0();
      v45._countAndFlagsBits = 0xD000000000000027;
      v45._object = 0x8000000100276F90;
      String.append(_:)(v45);
      v46 = PIPersonalizedPrivateIdentifierMapping.Key.description.getter(v41, v40, v43, v42);
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);

      sub_100031588();
      v50 = v44 == 0;
      if (v44)
      {
        v51 = 0xD000000000000014;
      }

      else
      {
        v51 = 0xD000000000000015;
      }

      goto LABEL_10;
    case 3u:
      v52 = *v22;
      v53 = *(v22 + 8);
      v54 = *(v22 + 16);
      sub_100031508();
      _StringGuts.grow(_:)(58);
      sub_100031688();
      sub_1000313C0();
      v55._countAndFlagsBits = 0xD000000000000029;
      v55._object = 0x8000000100276F60;
      String.append(_:)(v55);
      v56 = PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(v52, v53);
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);

      sub_100031588();
      v50 = v54 == 0;
      if (v54)
      {
        v51 = 0xD000000000000014;
      }

      else
      {
        v51 = 0xD000000000000015;
      }

LABEL_10:
      if (v50)
      {
        v60 = "programmaticRotation";
      }

      else
      {
        v60 = "<NonSEP privateKey=";
      }

      v61 = v60 | 0x8000000000000000;
      String.append(_:)(*&v51);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      v63 = v109;
      break;
    default:
      v107 = v4;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = sub_100099DF4(&qword_1002E0FF8, &qword_100246D18);
      v28 = *(v27 + 48);
      v106 = *(v22 + *(v27 + 64));
      v29 = sub_100031518(v28);
      sub_1000A99D8(v29, v18);
      sub_100031508();
      _StringGuts.grow(_:)(90);
      sub_1000315E0();
      sub_1000313C0();
      sub_10003146C();
      v31._countAndFlagsBits = v30 + 9;
      v31._object = (v32 | 0x8000000000000000);
      String.append(_:)(v31);
      v33 = PIPersonalizedPrivateIdentifierMapping.Key.description.getter(v24, v23, v25, v26);
      v35 = v34;

      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      sub_100002860();
      v37._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v37);
      sub_1000A9914(v18, v15);
      if (sub_100004DFC(v15, 1, v2) == 1)
      {
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }

      else
      {
        v80 = sub_100031654();
        v81(v80, v15, v2);
        v39 = Date.description.getter();
        v38 = v82;
        v35[1](v8, v2);
      }

      v83._countAndFlagsBits = v39;
      v83._object = v38;
      String.append(_:)(v83);

      sub_10003146C();
      v85._countAndFlagsBits = v84 + 8;
      v85._object = (v86 | 0x8000000000000000);
      String.append(_:)(v85);
      if (v106 == 3)
      {
        v87 = 0xE300000000000000;
        v88 = 7104878;
      }

      else
      {
        sub_10003156C();
        v109 = v97;
        v88 = PIScheduledRotationConfigurationUpdate.description.getter();
        v87 = v98;
      }

      v99 = v87;
      String.append(_:)(*&v88);

      v100._countAndFlagsBits = 62;
      v100._object = 0xE100000000000000;
      String.append(_:)(v100);
      v63 = v108;
      v101 = v18;
LABEL_26:
      sub_1000ACD3C(v101);
      break;
  }

  return v63;
}

uint64_t type metadata accessor for PIXPCMessage(uint64_t a1)
{
  result = qword_1002E1070;
  if (!qword_1002E1070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CAE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIXPCMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001CAE8C(uint64_t a1)
{
  sub_100031074(319, &qword_1002E1080, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key);
  if (v1 <= 0x3F)
  {
    sub_100031074(319, &qword_1002E1090, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key);
    if (v2 <= 0x3F)
    {
      sub_100031108(319, &qword_1002E1098, &type metadata for PIPersonalizedPrivateIdentifierMapping.Key);
      if (v3 <= 0x3F)
      {
        sub_100031108(319, &unk_1002E10A0, &type metadata for PIUnpersonalizedPrivateIdentifierMapping.Key);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1001CAF68()
{
  result = qword_1002E10F8;
  if (!qword_1002E10F8)
  {
    result = swift_getWitnessTable(byte_100247384, &type metadata for PIXPCMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E10F8);
  }

  return result;
}

unint64_t sub_1001CAFBC()
{
  result = qword_1002E1100;
  if (!qword_1002E1100)
  {
    result = swift_getWitnessTable("E~\a", &type metadata for PIXPCMessage.UnpersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1100);
  }

  return result;
}

unint64_t sub_1001CB010()
{
  result = qword_1002E1108;
  if (!qword_1002E1108)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIExternalKeypairsRotationReason, &type metadata for PIExternalKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E1108);
  }

  return result;
}

uint64_t sub_1001CB064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIXPCMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001CB0C8()
{
  result = qword_1002E1110;
  if (!qword_1002E1110)
  {
    result = swift_getWitnessTable(byte_1002472E4, &type metadata for PIXPCMessage.PersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1110);
  }

  return result;
}

unint64_t sub_1001CB11C()
{
  result = qword_1002E1118;
  if (!qword_1002E1118)
  {
    result = swift_getWitnessTable(byte_100247294, &type metadata for PIXPCMessage.UnpersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1118);
  }

  return result;
}

unint64_t sub_1001CB170()
{
  result = qword_1002E1120;
  if (!qword_1002E1120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfigurationUpdate, &type metadata for PIScheduledRotationConfigurationUpdate, v0, v1);
    atomic_store(result, &qword_1002E1120);
  }

  return result;
}

unint64_t sub_1001CB1C4()
{
  result = qword_1002E1128;
  if (!qword_1002E1128)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for PIXPCMessage.PersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1128);
  }

  return result;
}

unint64_t sub_1001CB218()
{
  result = qword_1002E1158;
  if (!qword_1002E1158)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIExternalKeypairsRotationReason, &type metadata for PIExternalKeypairsRotationReason, v0, v1);
    atomic_store(result, &qword_1002E1158);
  }

  return result;
}

unint64_t sub_1001CB26C()
{
  result = qword_1002E1160;
  if (!qword_1002E1160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIScheduledRotationConfigurationUpdate, &type metadata for PIScheduledRotationConfigurationUpdate, v0, v1);
    atomic_store(result, &qword_1002E1160);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIXPCMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CB3E0()
{
  result = qword_1002E1168;
  if (!qword_1002E1168)
  {
    result = swift_getWitnessTable(asc_100246F3C, &type metadata for PIXPCMessage.UnpersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1168);
  }

  return result;
}

unint64_t sub_1001CB438()
{
  result = qword_1002E1170;
  if (!qword_1002E1170)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for PIXPCMessage.PersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1170);
  }

  return result;
}

unint64_t sub_1001CB490()
{
  result = qword_1002E1178;
  if (!qword_1002E1178)
  {
    result = swift_getWitnessTable(byte_1002470AC, &type metadata for PIXPCMessage.UnpersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1178);
  }

  return result;
}

unint64_t sub_1001CB4E8()
{
  result = qword_1002E1180;
  if (!qword_1002E1180)
  {
    result = swift_getWitnessTable(byte_100247164, &type metadata for PIXPCMessage.PersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1180);
  }

  return result;
}

unint64_t sub_1001CB540()
{
  result = qword_1002E1188;
  if (!qword_1002E1188)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for PIXPCMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1188);
  }

  return result;
}

unint64_t sub_1001CB598()
{
  result = qword_1002E1190;
  if (!qword_1002E1190)
  {
    result = swift_getWitnessTable(asc_1002470D4, &type metadata for PIXPCMessage.PersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1190);
  }

  return result;
}

unint64_t sub_1001CB5F0()
{
  result = qword_1002E1198;
  if (!qword_1002E1198)
  {
    result = swift_getWitnessTable(byte_1002470FC, &type metadata for PIXPCMessage.PersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E1198);
  }

  return result;
}

unint64_t sub_1001CB648()
{
  result = qword_1002E11A0;
  if (!qword_1002E11A0)
  {
    result = swift_getWitnessTable(byte_10024701C, &type metadata for PIXPCMessage.UnpersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11A0);
  }

  return result;
}

unint64_t sub_1001CB6A0()
{
  result = qword_1002E11A8;
  if (!qword_1002E11A8)
  {
    result = swift_getWitnessTable(byte_100247044, &type metadata for PIXPCMessage.UnpersonalizedKeypairQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11A8);
  }

  return result;
}

unint64_t sub_1001CB6F8()
{
  result = qword_1002E11B0;
  if (!qword_1002E11B0)
  {
    result = swift_getWitnessTable("́\a", &type metadata for PIXPCMessage.PersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11B0);
  }

  return result;
}

unint64_t sub_1001CB750()
{
  result = qword_1002E11B8;
  if (!qword_1002E11B8)
  {
    result = swift_getWitnessTable("m~\a", &type metadata for PIXPCMessage.PersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11B8);
  }

  return result;
}

unint64_t sub_1001CB7A8()
{
  result = qword_1002E11C0;
  if (!qword_1002E11C0)
  {
    result = swift_getWitnessTable(byte_100246EAC, &type metadata for PIXPCMessage.UnpersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11C0);
  }

  return result;
}

unint64_t sub_1001CB800()
{
  result = qword_1002E11C8;
  if (!qword_1002E11C8)
  {
    result = swift_getWitnessTable(asc_100246ED4, &type metadata for PIXPCMessage.UnpersonalizedOnDemandRotationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11C8);
  }

  return result;
}

unint64_t sub_1001CB858()
{
  result = qword_1002E11D0;
  if (!qword_1002E11D0)
  {
    result = swift_getWitnessTable(byte_10024718C, &type metadata for PIXPCMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11D0);
  }

  return result;
}

unint64_t sub_1001CB8B0()
{
  result = qword_1002E11D8;
  if (!qword_1002E11D8)
  {
    result = swift_getWitnessTable("E|\a", &type metadata for PIXPCMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E11D8);
  }

  return result;
}

uint64_t static PIAccountKeypair.== infix(_:_:)(uint64_t a1)
{
  v1 = P384.Signing.PrivateKey.rawRepresentation.getter();
  v3 = v2;
  v4 = P384.Signing.PrivateKey.rawRepresentation.getter();
  v6 = v5;
  v7 = static Data.== infix(_:_:)();
  sub_10000D170(v4, v6);
  sub_10000D170(v1, v3);
  return v7 & 1;
}

unint64_t sub_1001CB9B0(uint64_t a1)
{
  result = sub_1001CB9D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001CB9D8()
{
  result = qword_1002E11E0;
  if (!qword_1002E11E0)
  {
    v3 = type metadata accessor for PIAccountKeypair(255);
    result = swift_getWitnessTable(protocol conformance descriptor for PIAccountKeypair, v3, v0, v1);
    atomic_store(result, &qword_1002E11E0);
  }

  return result;
}

void sub_1001CBA30(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_errorRetain();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v4 = a1;
  }

  v5 = _convertErrorToNSError(_:)();

  v6 = [v5 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v8;
  v30 = v7;

  v28 = [v5 code];
  v9 = [v5 localizedDescription];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v11;
  v27 = v10;

  v12 = [v5 localizedFailureReason];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = String.init<A>(describing:)();
  v19 = v18;
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  v23 = [v5 userInfo];
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = sub_1001CBF64(v24);

  *a2 = v30;
  a2[1] = v29;
  a2[2] = v28;
  a2[3] = v27;
  a2[4] = v26;
  a2[5] = v14;
  a2[6] = v16;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v20;
  a2[10] = v22;
  a2[11] = v25;
}

uint64_t sub_1001CBC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v49 = *(v7 + 16);
  v49(&v40 - v12, a1, a2, v11);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v7 + 8))(v13, a2);
  }

  else
  {
    swift_allocError();
    (*(v7 + 32))(v14, v13, a2);
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = [v15 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v18;
  v48 = v17;

  v46 = [v15 code];
  v19 = [v15 localizedDescription];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v21;
  v45 = v20;

  v22 = [v15 localizedFailureReason];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v25;
    v43 = v24;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v26 = v49;
  (v49)(v9, a1, a2);
  v27 = String.init<A>(describing:)();
  v41 = v28;
  v26(v9, a1, a2);
  v29 = String.init<A>(reflecting:)();
  v31 = v30;
  v32 = [v15 userInfo];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = sub_1001CBF64(v33);

  result = (*(v7 + 8))(a1, a2);
  v36 = v47;
  *a4 = v48;
  a4[1] = v36;
  v37 = v45;
  a4[2] = v46;
  a4[3] = v37;
  v38 = v43;
  a4[4] = v44;
  a4[5] = v38;
  v39 = v41;
  a4[6] = v42;
  a4[7] = v27;
  a4[8] = v39;
  a4[9] = v29;
  a4[10] = v31;
  a4[11] = v34;
  return result;
}

void *sub_1001CBF64(uint64_t a1)
{
  v30 = _swiftEmptyArrayStorage;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001ABEF4(v2, v3, a1, v32);

  if (*(&v32[1] + 1))
  {
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    if (swift_dynamicCast())
    {
      ErrorValue = swift_getErrorValue();
      v5 = v27;
      v6 = v28;
      v7 = __chkstk_darwin(ErrorValue);
      v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v9, v7);
      sub_1001CBC4C(v9, v5, v6, __src);
      sub_1001DE9FC(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v11;
      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        sub_1001DE9FC(v13 > 1, v14 + 1, 1, v11);
        v12 = v25;
      }

      v12[2] = v14 + 1;
      memcpy(&v12[12 * v14 + 4], __src, 0x60uLL);
      v30 = v12;
    }
  }

  else
  {
    sub_100009DF4(v32);
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001ABEF4(v15, v16, a1, v32);

  if (*(&v32[1] + 1))
  {
    sub_100099DF4(&qword_1002E11E8, &qword_100247428);
    if (swift_dynamicCast())
    {
      v17 = v29;
      v18 = v29[2];
      if (v18)
      {
        v29 = _swiftEmptyArrayStorage;
        sub_1001CC554(0, v18, 0);
        v19 = 4;
        v20 = v29;
        do
        {
          v21 = v17[v19];
          swift_errorRetain();
          sub_1001CBA30(v21, v32);
          v29 = v20;
          v23 = v20[2];
          v22 = v20[3];
          if (v23 >= v22 >> 1)
          {
            sub_1001CC554((v22 > 1), v23 + 1, 1);
            v20 = v29;
          }

          v20[2] = v23 + 1;
          memcpy(&v20[12 * v23 + 4], v32, 0x60uLL);
          ++v19;
          --v18;
        }

        while (v18);
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      sub_1001DD2CC(v20);
    }
  }

  else
  {
    sub_100009DF4(v32);
  }

  return v30;
}

unint64_t sub_1001CC2C8(uint64_t a1)
{
  sub_100099DF4(&qword_1002E11F8, &qword_100247430);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001CC444(a1, v2);
}

unint64_t sub_1001CC344(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000316A8(a1, v4, &qword_1002E27F0, CKRecordID_ptr);
}

unint64_t sub_1001CC394(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000316A8(a1, v4, &qword_1002E1208, CKRecord_ptr);
}

uint64_t sub_1001CC3E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_1001CC528(v0);
}

unint64_t sub_1001CC444(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100099DF4(&qword_1002E11F8, &qword_100247430);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }
  }

  return i;
}

char *sub_1001CC554(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001CC684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001CC574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001CC78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001CC594(void *a1, int64_t a2, char a3)
{
  result = sub_100031778(a1, a2, a3, *v3, &qword_1002E1238, &qword_100247460, &type metadata accessor for UUID, sub_1001DF168);
  *v3 = result;
  return result;
}

char *sub_1001CC5EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001CC958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001CC60C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001CCA68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001CC62C(void *a1, int64_t a2, char a3)
{
  result = sub_100031778(a1, a2, a3, *v3, &qword_1002E1200, &qword_100247438, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange, sub_1001DF1C8);
  *v3 = result;
  return result;
}

char *sub_1001CC684(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002E11F0, &qword_100248000);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 96);
      if (v5)
      {
LABEL_13:
        sub_1001DF080((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1001CC78C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100099DF4(&qword_1002E1228, &qword_100247458);
  v10 = *(sub_100099DF4(&qword_1002E1230, &qword_1002479B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  if (v5)
  {
    sub_1001DF0A8();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001CC958(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002E1210, &qword_100247440);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1001DF180((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002E1218, &qword_100247448);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001CCA68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100099DF4(&qword_1002E1220, &qword_100247450);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1001DF1A0(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, a4 + 32, v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

SecAccessControlRef sub_1001CCB54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = type metadata accessor for PIDeviceKeypair.SEP(0);
  __chkstk_darwin(v8 - 8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for PIDeviceKeypair(0);
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  if (static SecureEnclave.isAvailable.getter())
  {
    result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
    if (result)
    {
      result = SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
      if (!v1)
      {
        (*(v4 + 32))(v11, v7, v3);
        sub_100031940(v11, v15, type metadata accessor for PIDeviceKeypair.SEP);
        swift_storeEnumTagMultiPayload();
        return sub_100031940(v15, a1, type metadata accessor for PIDeviceKeypair);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    P384.Signing.PrivateKey.init(compactRepresentable:)();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t static PIDeviceKeypair.== infix(_:_:)()
{
  v0 = sub_1001BA3B8();
  v2 = v1;
  v3 = sub_1001BA3B8();
  v5 = v4;
  v6 = static Data.== infix(_:_:)();
  sub_10000D170(v3, v5);
  sub_10000D170(v0, v2);
  return v6 & 1;
}

unint64_t sub_1001CCE00(uint64_t a1)
{
  result = sub_1001CCE28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001CCE28()
{
  result = qword_1002E1240[0];
  if (!qword_1002E1240[0])
  {
    v3 = type metadata accessor for PIDeviceKeypair(255);
    result = swift_getWitnessTable("\r~\a", v3, v0, v1);
    atomic_store(result, qword_1002E1240);
  }

  return result;
}

uint64_t sub_1001CCE88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a3;
  v55 = a5;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10003CF74();
  v19(v18);
  sub_1001CD1B0();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_unknownObjectRelease();
    v20 = *(v10 + 8);
    v20(a2, v9);
    v20(v17, v9);
    return 0;
  }

  else
  {
    *&v59 = a1;
    dispatch thunk of Identifiable.id.getter();
    v50 = v56;
    v51 = v6;
    v52 = a2;
    v22 = v57;
    v23 = v58;
    v24 = sub_10003CF74();
    v26 = v25(v24);
    v59 = v50;
    v60 = v22;
    v61 = v23;
    v62 = v26;
    v63 = v27;
    v28 = sub_10003CF74();
    v30 = v29(v28);
    v49 = v31;
    *&v50 = v30;
    v32 = sub_10003CF74();
    v34 = v33(v32);
    v47 = v35;
    v48 = v34;
    v36 = *(v10 + 16);
    v36(v14, v17, v9);
    v37 = v53;
    v36(v53, v52, v9);
    v38 = sub_10003CF74();
    v46 = v39(v38);
    LOBYTE(v36) = v40;
    v41 = sub_10003CF74();
    HIBYTE(v45) = v42(v41);
    LOBYTE(v45) = v36 & 1;
    v21 = (*(v55 + 120))(&v59, v50, v49, v48, v47, v14, v37, v46, v45, v54, v55);
    swift_unknownObjectRelease();
    v43 = *(v10 + 8);
    v43(v52, v9);
    v43(v17, v9);
  }

  return v21;
}

unint64_t sub_1001CD1B0()
{
  result = qword_1002E27C0;
  if (!qword_1002E27C0)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_1002E27C0);
  }

  return result;
}

uint64_t sub_1001CD208@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  __chkstk_darwin(a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (sub_100004DFC(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return sub_100002728(a5, v21, 1, v27);
}

uint64_t sub_1001CD47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v10 = *(type metadata accessor for SingleRotationOutcome(0, v13) + 60);
  v11 = type metadata accessor for Optional();
  return (*(*(v11 - 8) + 32))(&a8[v10], a2, v11);
}

uint64_t sub_1001CD514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  v15 = swift_unknownObjectRetain();
  return sub_1001CCE88(v15, v13, a3, a2, a5, a4);
}

uint64_t sub_1001CD614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for Date();
  sub_100003724();
  v40 = v13;
  v41 = v12;
  __chkstk_darwin(v12);
  sub_10000306C();
  v16 = v15 - v14;
  swift_unknownObjectRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    sub_100031BA8();
    v35 = swift_slowAlloc();
    sub_100031B9C();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v35 = 136315138;
    dispatch thunk of Identifiable.id.getter();
    v38 = a6;
    v19 = a2;
    v20 = a8;
    v21 = sub_1001ECC0C();
    v37 = a4;
    v23 = v22;

    swift_unknownObjectRelease();

    v24 = v21;
    a8 = v20;
    a2 = v19;
    v25 = sub_100009E5C(v24, v23, &v44);
    a4 = v37;

    *(v35 + 4) = v25;
    a6 = v38;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: Generating new device keypair", v35, 0xCu);
    sub_100004118(v36);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v40 + 16))(v16, a2, v41);
  (*(a6 + 248))(v16, a4, a6);
  (*(a8 + 8))(a5, a8);
  if (v42)
  {
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      sub_100031BA8();
      v28 = a6;
      v29 = swift_slowAlloc();
      v30 = a4;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to generate device keypair: %@. Clearing device keypair data to try regenerating device keypair later.", v29, 0xCu);
      sub_100004E7C(v31, &qword_1002E2700, &unk_1002474D0);
      a4 = v30;
      sub_100031B34();

      a6 = v28;
      sub_100031B34();
    }

    (*(a6 + 56))(0, 0xF000000000000000, a4, a6);
    return swift_willThrow();
  }

  else
  {
    v34 = (*(a7 + 24))(a5);
    return (*(a6 + 56))(v34);
  }
}

void sub_1001CD9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004168();
  v23 = v22;
  v68 = v24;
  v69 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v72 = a22;
  v73 = v36;
  v71 = type metadata accessor for Optional();
  sub_100003724();
  v38 = v37;
  sub_100003774();
  __chkstk_darwin(v39);
  v41 = &v63 - v40;
  swift_unknownObjectRetain();
  v67 = v35;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  v70 = v41;
  if (v44)
  {
    sub_100031BA8();
    v45 = swift_slowAlloc();
    v63 = v45;
    sub_100031B9C();
    v64 = swift_slowAlloc();
    v74 = v23;
    v75 = v64;
    *v45 = 136315138;
    dispatch thunk of Identifiable.id.getter();
    v46 = sub_1001ECC0C();
    v65 = v31;
    v66 = v33;
    v47 = v38;
    v48 = v29;
    v49 = v46;
    v51 = v50;

    swift_unknownObjectRelease();

    v52 = v49;
    v29 = v48;
    v38 = v47;
    v33 = v66;
    v53 = sub_100009E5C(v52, v51, &v75);
    v31 = v65;

    v54 = v63;
    *(v63 + 1) = v53;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s: Attempting to rotate device keypair", v54, 0xCu);
    sub_100004118(v64);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1001CD514(v33, v31, v73, v27, v72);
  v55 = v31;
  v56 = v33;
  v57 = (*(v27 + 136))(v76, v55, v27);
  v59 = *(v58 + 8);
  v60 = __CFADD__(v59, 1);
  v61 = v59 + 1;
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *(v58 + 8) = v61;
    v57(v76, 0);
    (*(v27 + 104))(4, v55, v27);
    v62 = v70;
    sub_1001CD614(v67, v56, v68, v55, v29, v27, v69, a21);
    sub_100002728(v62, 0, 1, v29);
    (*(v38 + 8))(v62, v71);
    sub_1000027F8();
  }
}

unint64_t sub_1001CDCF8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 120))(a3, a4);
  if (result == a1)
  {
    v10 = v9 > a2;
  }

  else
  {
    v10 = result > a1;
  }

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a4 + 128);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

void sub_1001CDD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (**a28)(void, void, void), uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_100004168();
  v34 = v33;
  v36 = v35;
  v108 = v37;
  v99 = v38;
  v100 = v39;
  v98 = v40;
  v110 = v41;
  v111 = v42;
  v113 = v43;
  v112 = type metadata accessor for Date();
  sub_100003724();
  v109 = v44;
  __chkstk_darwin(v45);
  sub_10000306C();
  v107 = v47 - v46;
  v114 = a25;
  type metadata accessor for Optional();
  sub_100003724();
  v103 = v49;
  v104 = v48;
  sub_100003774();
  __chkstk_darwin(v50);
  v52 = &v94[-v51];
  v101 = type metadata accessor for Optional();
  sub_100003724();
  v97 = v53;
  sub_100003774();
  __chkstk_darwin(v54);
  v56 = &v94[-v55];
  swift_unknownObjectRetain();
  v102 = v36;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  v59 = os_log_type_enabled(v57, v58);
  v105 = a26;
  v106 = v52;
  v96 = v56;
  if (v59)
  {
    sub_100031BA8();
    v60 = swift_slowAlloc();
    sub_100031B9C();
    v61 = swift_slowAlloc();
    v115 = v34;
    v116[0] = v61;
    *v60 = 136315138;
    v95 = v58;
    dispatch thunk of Identifiable.id.getter();
    v62 = sub_1001ECC0C();
    v64 = v63;

    swift_unknownObjectRelease();

    v65 = sub_100009E5C(v62, v64, v116);

    *(v60 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v57, v95, "%s: Setting new account keypair", v60, 0xCu);
    sub_100004118(v61);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v66 = sub_100007B1C();
  v68 = sub_1000319A8(v66, v67);
  v69 = sub_100004DFC(v113, 1, v114);
  if (v68)
  {
    if (v69 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v69 != 1)
  {
    __break(1u);
    return;
  }

LABEL_9:
  v70 = sub_100007B1C();
  v72 = v71(v70);
  v74 = v73 < v100;
  if (v72 != v98)
  {
    v74 = v72 < v98;
  }

  if (v74)
  {
    sub_1001CD514(a21, a24, a27, a28, a33);
    sub_100031C08();
    sub_1001CDCF8(v75, v76, v77, v78);
  }

  v79 = v96;
  v80 = v105;
  sub_1001CD614(v102, a21, a22, a24, v105, a28, a31, a32);
  v81 = v106;
  v82 = v104;
  sub_100002728(v79, 0, 1, v80);
  (*(v97 + 8))(v79, v101);
  v83 = v103;
  (*(v103 + 16))(v81, v113, v82);
  if (sub_100004DFC(v81, 1, v114) == 1)
  {
    (*(v83 + 8))(v81, v82);
  }

  else
  {
    v84 = v114;
    (*(a30 + 24))(v114);
    sub_10000B7EC();
    (*(v85 + 8))(v81, v84);
  }

  sub_100031C08();
  v86();
  v87 = *(v109 + 16);
  v88 = v107;
  v89 = v112;
  v87(v107, a21, v112);
  a28[25](v88, a24, a28);
  sub_100031C08();
  v90();
  a28[13](v99, a24, a28);
  v87(v88, v108, v89);
  a28[22](v88, a24, a28);
  v91 = sub_100007B1C();
  v92(v91);
  if ((v117 & 1) == 0)
  {
    sub_1001CE3D0(*&v116[2], *&v116[3], *&v116[4], *&v116[5]);
  }

  sub_100031C08();
  v93();
  sub_1000027F8();
}