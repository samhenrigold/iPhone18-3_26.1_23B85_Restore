unint64_t sub_10002ACF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2BC0;
  if (!qword_1000A2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BC0);
  }

  return result;
}

unint64_t sub_10002AD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2BD0;
  if (!qword_1000A2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BD0);
  }

  return result;
}

unint64_t sub_10002AD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2BD8;
  if (!qword_1000A2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BD8);
  }

  return result;
}

unint64_t sub_10002ADEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2BE0;
  if (!qword_1000A2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BE0);
  }

  return result;
}

unint64_t sub_10002AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2BF0;
  if (!qword_1000A2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BF0);
  }

  return result;
}

unint64_t sub_10002AE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2BF8;
  if (!qword_1000A2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnforcementEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnforcementEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileAccessEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FileAccessEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RapidRepair.Rule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RapidRepair.Rule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002B2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C00;
  if (!qword_1000A2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C00);
  }

  return result;
}

unint64_t sub_10002B354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C08;
  if (!qword_1000A2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C08);
  }

  return result;
}

unint64_t sub_10002B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C10;
  if (!qword_1000A2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C10);
  }

  return result;
}

unint64_t sub_10002B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C18;
  if (!qword_1000A2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C18);
  }

  return result;
}

unint64_t sub_10002B45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C20;
  if (!qword_1000A2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C20);
  }

  return result;
}

unint64_t sub_10002B4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C28;
  if (!qword_1000A2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C28);
  }

  return result;
}

unint64_t sub_10002B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C30;
  if (!qword_1000A2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C30);
  }

  return result;
}

unint64_t sub_10002B564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C38;
  if (!qword_1000A2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C38);
  }

  return result;
}

unint64_t sub_10002B5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C40;
  if (!qword_1000A2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C40);
  }

  return result;
}

unint64_t sub_10002B610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C48;
  if (!qword_1000A2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C48);
  }

  return result;
}

unint64_t sub_10002B664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C50;
  if (!qword_1000A2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C50);
  }

  return result;
}

unint64_t sub_10002B6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C58;
  if (!qword_1000A2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C58);
  }

  return result;
}

char *sub_10002B71C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return strdup(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return strdup(v3);
    }
  }

  sub_10000A0C8(&qword_1000A3290, &unk_100076BF0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v5[3];
  }

  return result;
}

uint64_t sub_10002B7E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B19B0);
  sub_100002DB8(v0, qword_1000B19B0);
  return Logger.init(subsystem:category:)();
}

ProtectionDomainManager::ScanningAction_optional __swiftcall ScanningAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095FC0, v2);

  if (v3 == 1)
  {
    v4.value = ProtectionDomainManager_ScanningAction_CountSubdirs;
  }

  else
  {
    v4.value = ProtectionDomainManager_ScanningAction_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ScanningAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x627553746E756F43;
  }

  else
  {
    return 0x726944746E756F43;
  }
}

uint64_t sub_10002B8F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x627553746E756F43;
  }

  else
  {
    v3 = 0x726944746E756F43;
  }

  if (v2)
  {
    v4 = 0xEE0079726F746365;
  }

  else
  {
    v4 = 0xEC00000073726964;
  }

  if (*a2)
  {
    v5 = 0x627553746E756F43;
  }

  else
  {
    v5 = 0x726944746E756F43;
  }

  if (*a2)
  {
    v6 = 0xEC00000073726964;
  }

  else
  {
    v6 = 0xEE0079726F746365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10002B9B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002BA4C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10002BAD0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002BB64@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100095FC0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10002BBC4(uint64_t *a1@<X8>)
{
  v2 = 0x726944746E756F43;
  if (*v1)
  {
    v2 = 0x627553746E756F43;
  }

  v3 = 0xEE0079726F746365;
  if (*v1)
  {
    v3 = 0xEC00000073726964;
  }

  *a1 = v2;
  a1[1] = v3;
}

ProtectionDomainManager::ScanningRule __swiftcall ScanningRule.init(_:_:)(ProtectionDomainManager::ScanningRule result, ProtectionDomainManager::ScanningAction a2)
{
  v2 = a2 & 1;
  result.action = v2;
  return result;
}

uint64_t sub_10002BCD0()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_10002BD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10002BDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002BFE0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002BE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002BFE0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t ScanningRule.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = a4;
  v6 = sub_10000A0C8(&qword_1000A2C60, &qword_1000763A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_100006978(a1, a1[3]);
  sub_10002BFE0(v10, v11, v12);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  v13 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v20 = v18 & 1;
    v19 = 1;
    sub_10002C034(v13, v14, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10002BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C68;
  if (!qword_1000A2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C68);
  }

  return result;
}

unint64_t sub_10002C034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C70;
  if (!qword_1000A2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C70);
  }

  return result;
}

uint64_t ScanningRule.init(from:)(void *a1)
{
  result = sub_100031B30(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002C0B0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100031B30(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10002C104()
{
  if (*v0)
  {
    return 0x73656C7572;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_10002C134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10002C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100031D20(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100031D20(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t ScanningCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = sub_10000A0C8(&qword_1000A2C78, &qword_1000763A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  v10 = sub_100006978(a1, a1[3]);
  sub_100031D20(v10, v11, v12);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_10000A0C8(&qword_1000A2C88, &qword_1000763B0);
    sub_100031D74();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ScanningCommand.init(from:)(void *a1)
{
  result = sub_100031E4C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002C450@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100031E4C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

ProtectionDomainManager::ScanningConfiguration __swiftcall ScanningConfiguration.init(commands:enableFileDetails:enableDirectoryDetails:enableProtectionClassDetails:enableHardLinkDetails:)(Swift::OpaquePointer commands, Swift::Bool enableFileDetails, Swift::Bool enableDirectoryDetails, Swift::OpaquePointer enableProtectionClassDetails, Swift::Bool enableHardLinkDetails)
{
  if (enableDirectoryDetails)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = enableHardLinkDetails;
  v8 = v6 & 0xFFFE | enableFileDetails;
  rawValue = enableProtectionClassDetails._rawValue;
  result.enableProtectionClassDetails._rawValue = rawValue;
  result.commands = commands;
  result.enableFileDetails = v8;
  result.enableDirectoryDetails = HIBYTE(v8);
  result.enableHardLinkDetails = v7;
  return result;
}

unint64_t sub_10002C4C4()
{
  v1 = *v0;
  v2 = 0x73646E616D6D6F63;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002C56C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100032200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10002C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100032050(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002C5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100032050(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t ScanningConfiguration.encode(to:)(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v17[1] = a5;
  v17[2] = a3;
  v9 = sub_10000A0C8(&qword_1000A2CA0, &qword_1000763B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  v13 = sub_100006978(a1, a1[3]);
  sub_100032050(v13, v14, v15);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  sub_10000A0C8(&qword_1000A2CB0, &qword_1000763C0);
  sub_1000320A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = a4;
    v18 = 3;
    sub_10000A0C8(&qword_1000A2CC8, &qword_1000763C8);
    sub_10003217C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t ScanningConfiguration.init(from:)(void *a1)
{
  result = sub_1000323B4(a1);
  if (v1)
  {
    return v3 & 0x101;
  }

  return result;
}

uint64_t sub_10002C8C0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000323B4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5) & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_10002C908(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ScanningConfiguration.encode(to:)(a1, *v1, v2 | *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

void *sub_10002C948(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProtectionClassCounter();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = sub_100032728(_swiftEmptyArrayStorage);
  *(v5 + 32) = 0;
  v2[4] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = sub_100032728(_swiftEmptyArrayStorage);
  *(v6 + 32) = 0;
  v2[5] = v6;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_10002C9E4(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = v1[4];
    swift_beginAccess();
    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(1);
    }

    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(2);
    }

    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(3);
    }

    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(4);
    }

    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(5);
    }

    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(6);
    }

    if (*(*(v3 + 24) + 16))
    {

      sub_10003086C(7);
    }

    v6 = v1[5];
    swift_beginAccess();
    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(1);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(2);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(3);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(4);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(5);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(6);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(7);
    }

    if (*(*(v6 + 24) + 16))
    {

      sub_10003086C(0);
    }

    sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100076380;
    _StringGuts.grow(_:)(50);
    v9 = v1[2];
    v8 = v1[3];

    v10._countAndFlagsBits = 44;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 44;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 44;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 44;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 44;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 44;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 44;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 44;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 44;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 44;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 44;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 44;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 44;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 44;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 44;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 44;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v41);

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v9;
    *(v7 + 40) = v8;
    print(_:separator:terminator:)();
  }

  else
  {
    sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100076380;
    *(v4 + 56) = type metadata accessor for DirectoryCounter();
    *(v4 + 32) = v2;

    print(_:separator:terminator:)();
  }
}

uint64_t sub_10002D328()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10002D370()
{
  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = sub_10002D958();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A5352494420;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_10002D958();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  return 0x203A53454C4946;
}

uint64_t sub_10002D46C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v1 + 16) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        sub_10002C9E4(a1 & 1);
      }

      while (v9);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D580(uint64_t a1, char a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_10003086C(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1000311C0(v12, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 24) = v16;
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v14 = *(v3 + 32);
  v11 = __CFADD__(v14, 1);
  v15 = v14 + 1;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(v3 + 32) = v15;
  return result;
}

uint64_t sub_10002D688(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v39 = a1;
  v4 = *(a1 + 24);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v40 = v4;

  swift_beginAccess();
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8)) | (v9 << 6);
    v13 = *(*(v40 + 48) + v12);
    v14 = *(*(v40 + 56) + 8 * v12);
    v15 = *(v2 + 24);
    if (*(v15 + 16))
    {

      v16 = sub_10003086C(v13);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = __CFADD__(v18, v14);
    v20 = v18 + v14;
    if (v19)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    v23 = sub_10003086C(v13);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_32;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      sub_100030B94(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_10003086C(v13);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }

LABEL_23:
      v31 = v22;
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v34 = v23;
    sub_100031460();
    v23 = v34;
    v31 = v22;
    if (v29)
    {
LABEL_4:
      *(v31[7] + 8 * v23) = v20;
      goto LABEL_5;
    }

LABEL_24:
    v31[(v23 >> 6) + 8] |= 1 << v23;
    *(v31[6] + v23) = v13;
    *(v31[7] + 8 * v23) = v20;
    v32 = v31[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_33;
    }

    v31[2] = v33;
LABEL_5:
    v8 &= v8 - 1;
    *(v2 + 24) = v31;
    swift_endAccess();
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v9;
    if (v8)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v36 = *(v39 + 32);
  v37 = *(v2 + 32);
  v19 = __CFADD__(v37, v36);
  v38 = v37 + v36;
  if (v19)
  {
    goto LABEL_34;
  }

  *(v2 + 32) = v38;
  return result;
}

uint64_t sub_10002D920()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10002D958()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setFormatWidth:4];
  [v2 setPaddingPosition:3];
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {

    sub_10003086C(1);
  }

  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v4 = [v2 stringForObjectValue:isa];

  if (v4)
  {
    v53._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53._object = v5;
  }

  else
  {
    v53._countAndFlagsBits = 4271950;
    v53._object = 0xE300000000000000;
  }

  if (*(*(v1 + 24) + 16))
  {

    sub_10003086C(2);
  }

  v6 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v7 = [v2 stringForObjectValue:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v9;
  }

  else
  {
    v52 = 0xE300000000000000;
    v8 = 4271950;
  }

  if (*(*(v1 + 24) + 16))
  {

    sub_10003086C(3);
  }

  v10 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v11 = [v2 stringForObjectValue:v10];

  if (v11)
  {
    v51._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51._object = v12;
  }

  else
  {
    v51._countAndFlagsBits = 4271950;
    v51._object = 0xE300000000000000;
  }

  if (*(*(v1 + 24) + 16))
  {

    sub_10003086C(4);
  }

  v13 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v14 = [v2 stringForObjectValue:v13];

  if (v14)
  {
    v50._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50._object = v15;
  }

  else
  {
    v50._countAndFlagsBits = 4271950;
    v50._object = 0xE300000000000000;
  }

  if (*(*(v1 + 24) + 16))
  {

    sub_10003086C(5);
  }

  v16 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v17 = [v2 stringForObjectValue:v16];

  if (v17)
  {
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v49 = 4271950;
  }

  if (*(*(v1 + 24) + 16))
  {

    sub_10003086C(6);
  }

  v20 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v21 = [v2 stringForObjectValue:v20];

  if (v21)
  {
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE300000000000000;
    v48 = 4271950;
  }

  if (*(*(v1 + 24) + 16))
  {

    sub_10003086C(7);
  }

  v24 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v25 = [v2 stringForObjectValue:v24];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
    v26 = 4271950;
  }

  if (*(v1 + 16) == 1)
  {
    if (*(*(v1 + 24) + 16))
    {

      sub_10003086C(0);
    }

    v31 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v32 = [v2 stringForObjectValue:v31];

    if (v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 4271950;
    }

    v54._countAndFlagsBits = 0x3D656E6F4ELL;
    v54._object = 0xE500000000000000;
    v29 = v33;
    v30 = v35;
  }

  else
  {
    v54._countAndFlagsBits = 0x3D64656B6E694CLL;
    v54._object = 0xE700000000000000;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  String.append(_:)(*&v29);

  _StringGuts.grow(_:)(38);

  String.append(_:)(v53);

  v36._countAndFlagsBits = 4014624;
  v36._object = 0xE300000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = v8;
  v37._object = v52;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 4014880;
  v38._object = 0xE300000000000000;
  String.append(_:)(v38);
  String.append(_:)(v51);

  v39._countAndFlagsBits = 4015136;
  v39._object = 0xE300000000000000;
  String.append(_:)(v39);
  String.append(_:)(v50);

  v40._countAndFlagsBits = 4015392;
  v40._object = 0xE300000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = v49;
  v41._object = v19;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 4015648;
  v42._object = 0xE300000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = v48;
  v43._object = v23;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 1029194528;
  v44._object = 0xE400000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = v26;
  v45._object = v28;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 32;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  String.append(_:)(v54);

  return 15681;
}

void *sub_10002E0BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a3)
  {
    type metadata accessor for DirectoryCounterCollection();
    v7 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    *(v7 + 16) = sub_100032814(_swiftEmptyArrayStorage);
    type metadata accessor for DirectoryCounter();
    v8 = swift_allocObject();
    sub_10002C948(a1, a2);

    *(v7 + 24) = v8;
    v10 = v7 | 0x8000000000000000;
  }

  else
  {
    type metadata accessor for DirectoryCounter();
    v10 = swift_allocObject();

    v9 = sub_10002C948(a1, a2);
  }

  v4[4] = v10;
  v11 = v4[2];
  v12 = v4[3];
  v26[0] = 47;
  v26[1] = 0xE100000000000000;
  __chkstk_darwin(v9);
  v25[2] = v26;

  v14 = sub_10003045C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000339E4, v25, v11, v12, v13);
  v15 = v14[2];
  if (v15)
  {
    v26[0] = _swiftEmptyArrayStorage;
    sub_10003171C(0, v15, 0);
    v16 = v26[0];
    v17 = v14 + 7;
    do
    {

      v18 = static String._fromSubstring(_:)();
      v20 = v19;

      v26[0] = v16;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        sub_10003171C((v21 > 1), v22 + 1, 1);
        v16 = v26[0];
      }

      v16[2] = v22 + 1;
      v23 = &v16[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v17 += 4;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v4[5] = v16;
  return v4;
}

uint64_t sub_10002E300()
{

  sub_100032D84(*(v0 + 32));

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10002E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  *(v3 + 32) = 0;
  v8 = *(a3 + 16);
  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for ScanningRuleState();
    v9 = (a3 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v9 += 24;
      swift_allocObject();

      sub_10002E0BC(v10, v11, v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v8;
    }

    while (v8);

    v6 = a2;
  }

  else
  {
  }

  *(v4 + 16) = _swiftEmptyArrayStorage;
  type metadata accessor for DirectoryCounter();
  v13 = swift_allocObject();
  sub_10002C948(a1, v6);
  *(v4 + 24) = v13;
  return v4;
}

uint64_t sub_10002E490(uint64_t a1, unint64_t a2, void *a3, char a4, char a5)
{
  v6 = v5;

  v47 = a5;
  sub_10002D580(a3, a5);

  v57[0] = 47;
  v57[1] = 0xE100000000000000;
  v53 = v57;

  v12 = sub_10003045C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000335D4, v52, a1, a2, v11);
  v13 = v12[2];
  if (v13)
  {
    v57[0] = _swiftEmptyArrayStorage;
    sub_10003171C(0, v13, 0);
    v14 = v57[0];
    v15 = v12 + 7;
    do
    {

      v16 = static String._fromSubstring(_:)();
      v18 = v17;

      v57[0] = v14;
      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        sub_10003171C((v19 > 1), v20 + 1, 1);
        v14 = v57[0];
      }

      v14[2] = v20 + 1;
      v21 = &v14[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v23 = *(v6 + 16);
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_10;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_41:
  result = _CocoaArrayWrapper.endIndex.getter();
  v24 = result;
  if (!result)
  {
    goto LABEL_42;
  }

LABEL_10:
  if (v24 < 1)
  {
    goto LABEL_43;
  }

  v46 = a3;
  v25 = v14[2];
  v51 = (v14 + 4);

  v49 = 0;
  v50 = 0;
  v26 = 0;
  for (i = 0; i != v24; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v23 + 8 * i + 32);
    }

    v29 = *(v28 + 40);
    v30 = *(v29 + 16);
    if (v30 >= v25)
    {
LABEL_12:

      continue;
    }

    if (v14[2] < v30)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    a3 = v26;
    v31 = (2 * v30) | 1;

    LOBYTE(v31) = sub_100032918(v51, 0, v31, v29);

    if (v31)
    {
      if (a3)
      {
        v26 = a3;
        if (*(a3[5] + 16) >= *(*(v28 + 40) + 16))
        {
          goto LABEL_12;
        }
      }

      v32 = *(*(v28 + 40) + 16);
      if (v32 >= v14[2])
      {
        goto LABEL_40;
      }

      v33 = (v51 + 16 * v32);
      v49 = *v33;
      v50 = v33[1];

      v26 = v28;
    }

    else
    {

      v26 = a3;
    }
  }

  if (!v26)
  {
    goto LABEL_44;
  }

  v34 = v50;
  if (!v50)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v35 = v26[4];
  if (v35 < 0)
  {
    v36 = v14[2];

    if (v36 != *(v26[5] + 16) + 1 || (a4 & 1) != 0)
    {
    }

    else
    {

      v34 = 0xE100000000000000;
      v49 = 46;
    }

    swift_beginAccess();
    if (*(*((v35 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 16) && (, sub_10000613C(v49, v34), v38 = v37, , (v38 & 1) != 0))
    {

      swift_retain_n();
    }

    else
    {

      v39 = v26[3];
      v55 = v26[2];
      v56 = v39;

      v40._countAndFlagsBits = 47;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v49;
      v41._object = v34;
      String.append(_:)(v41);
      v42 = v55;
      v43 = v56;
      type metadata accessor for DirectoryCounter();
      v44 = swift_allocObject();
      sub_10002C948(v42, v43);
      swift_beginAccess();
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *((v35 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      *((v35 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) = 0x8000000000000000;
      sub_1000312E4(v44, v49, v34, isUniquelyReferenced_nonNull_native);

      *((v35 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) = v54;
      swift_endAccess();
    }

    sub_10002D580(v46, v47 & 1);

    sub_10002D580(v46, v47 & 1);

    sub_100032D84(v35);
  }

  else
  {

    sub_10002D580(v46, v47 & 1);

    return sub_100032D84(v35);
  }
}

uint64_t sub_10002EA64(uint64_t a1)
{

  return _swift_deallocClassInstance(v1, a1, 7);
}

uint64_t ProtectionClassScanner.__allocating_init(_:)(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 25) = HIBYTE(a2) & 1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t ProtectionClassScanner.init(_:)(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  *(v4 + 25) = HIBYTE(a2) & 1;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t ProtectionClassScanner.__allocating_init(fromConfig:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 56))(v10, 1, 1, v11);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);

  URL.init(filePath:directoryHint:relativeTo:)();
  v15 = v36;
  v16 = Data.init(contentsOf:options:)();
  if (v15)
  {

    v18 = (*(v12 + 8))(v14, v11);
    sub_10000EEA4(v18, v19, v20);
    swift_allocError();
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 13;
    return swift_willThrow();
  }

  else
  {
    v23 = v16;
    v24 = v17;
    (*(v12 + 8))(v14, v11);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v25 = JSONDecoder.init()();
    sub_10003268C(v25, v26, v27);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10000B068(v23, v24);

    v28 = v31;
    v29 = v32;
    LOBYTE(v24) = v33;
    v30 = v34;
    LOBYTE(v25) = v35;
    type metadata accessor for ProtectionClassScanner();
    result = swift_allocObject();
    *(result + 16) = v28;
    *(result + 24) = v29;
    *(result + 25) = v24;
    *(result + 32) = v30;
    *(result + 40) = v25;
  }

  return result;
}

uint64_t ProtectionClassScanner.__allocating_init(forPath:enableFileDetails:enableDirectoryDetails:enableProtectionClassDetails:enableHardLinkDetails:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  sub_10000A0C8(&qword_1000A2CE8, &qword_1000763D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100076380;
  sub_10000A0C8(&qword_1000A2CF0, &qword_1000763E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100076380;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = v13;
  type metadata accessor for ProtectionClassScanner();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a3;
  *(v14 + 25) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;

  return v14;
}

uint64_t ProtectionClassScanner.scan(csv:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return _swift_task_switch(sub_10002EFE4, 0, 0);
}

void *sub_10002EFE4(uint64_t a1)
{
  v2 = *(v1 + 72);
  type metadata accessor for DirectoryCounter();
  swift_allocObject();
  result = sub_10002C948(0x4C41544F54, 0xE500000000000000);
  if (v2 == 1)
  {
    sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100076380;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 32) = 0xD00000000000005BLL;
    *(v4 + 40) = 0x8000000100083480;
    print(_:separator:terminator:)();
  }

  v5 = *(*(v1 + 64) + 16);
  v29 = *(v5 + 16);
  if (v29)
  {
    v6 = 0;
    v7 = 0;
    v27 = *(*(v1 + 64) + 16);
    v28 = v5 + 32;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v8 = *(v1 + 64);
      v31 = v7;
      v9 = (v28 + 24 * v7);
      v11 = v9[1];
      v10 = v9[2];
      v12 = *v9;
      type metadata accessor for ScanningState();

      inited = swift_initStackObject();

      sub_10002E348(v12, v11, v10);

      sub_100032A6C(v12, v11, v12, v11, inited, v8);

      v14 = inited[2];
      if (v14 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v15 = result;
        if (result)
        {
LABEL_8:
          if (v15 < 1)
          {
            goto LABEL_32;
          }

          v30 = v6;

          for (i = 0; i != v15; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v14 + 8 * i + 32);
            }

            v18 = *(v17 + 32);
            v19 = *(v1 + 72);

            if (v18 < 0)
            {
              sub_10002D46C(v19);
            }

            else
            {
              sub_10002C9E4(v19);
            }

            sub_100032D84(v18);
          }

          v6 = v30;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_8;
        }
      }

      v20 = inited[3];
      v21 = *(v20 + 32);

      sub_10002D688(v21);
      sub_10002D688(*(v20 + 40));

      v22 = inited[4];

      v23 = __OFADD__(v6, v22);
      v6 += v22;
      if (v23)
      {
        goto LABEL_31;
      }

      v7 = v31 + 1;
      v5 = v27;
      if (v31 + 1 == v29)
      {
        sub_10002C9E4(*(v1 + 72));
        if (v6 >= 1)
        {
          sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_100076380;
          *(v1 + 56) = v6;
          v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v25);

          *(v24 + 56) = &type metadata for String;
          *(v24 + 32) = 0x73726F7272452023;
          *(v24 + 40) = 0xEA0000000000203ALL;
          print(_:separator:terminator:)();

          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }
  }

  sub_10002C9E4(*(v1 + 72));
LABEL_26:

LABEL_27:
  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_10002F420(uint64_t result, void *a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v8 = result;
  if (result != a4 || a2 != a5)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      v11 = sub_10005A65C(v8, v7);
      if (HIDWORD(v11))
      {
        v12 = errno.getter();
        v15 = v12;
        LODWORD(v77) = v12;
        goto LABEL_8;
      }

      LOBYTE(v12) = ProtectionClass.init(value:)(v11);
      if (v12 == 9)
      {
        v15 = 34;
        LODWORD(v77) = 34;
LABEL_8:
        sub_100033644(v12, v13, v14);
        v16 = swift_willThrowTypedImpl();
        sub_100033644(v16, v17, v18);
        v19 = swift_allocError();
        *v20 = v15;
        v77 = v19;
        swift_errorRetain();
        sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
        if ((swift_dynamicCast() & 1) != 0 && v79 == 2)
        {
          if (qword_1000A21A0 == -1)
          {
LABEL_11:
            v21 = type metadata accessor for Logger();
            sub_100002DB8(v21, qword_1000B19B0);

            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v77 = v25;
              *v24 = 136315138;
              *(v24 + 4) = sub_100005C68(v8, v7, &v77);
              _os_log_impl(&_mh_execute_header, v22, v23, "file at %s deleted before it could be processed", v24, 0xCu);
              sub_100005E9C(v25);
            }
          }
        }

        else
        {
          swift_errorRetain();
          if (qword_1000A21A0 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          sub_100002DB8(v26, qword_1000B19B0);
          swift_errorRetain();

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v77 = v31;
            *v29 = 136315394;
            *(v29 + 4) = sub_100005C68(v8, v7, &v77);
            *(v29 + 12) = 2112;
            swift_errorRetain();
            v32 = _swift_stdlib_bridgeErrorToNSError();
            *(v29 + 14) = v32;
            *v30 = v32;
            _os_log_impl(&_mh_execute_header, v27, v28, "cannot get protectionClass for %s: %@", v29, 0x16u);
            sub_10000A50C(v30);

            sub_100005E9C(v31);
          }

          else
          {
          }

          v33 = *(a6 + 32);
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (!v34)
          {
            *(a6 + 32) = v35;
          }

          __break(1u);
        }

        swift_once();
        goto LABEL_11;
      }

      v36 = v12;
      if (a3)
      {
        v37 = a3;
        v38 = 1;
      }

      else
      {
        v39 = sub_10002FCA8(v8, v7);
        v37 = a3;
        v38 = v39;
      }

      v40 = v37;
      result = sub_10002E490(v8, v7, v36, v37 & 1, v38 > 1);
      v41 = *(a7 + 32);
      if (v40)
      {
        if ((*(a7 + 25) & 1) == 0)
        {
          return result;
        }
      }

      else if (*(a7 + 24) != 1)
      {
        return result;
      }

      if (!*(a7 + 40) || v38 >= 2)
      {
        v73 = v38;
        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = 0xEC000000656E6F4ELL;
          v44 = (v41 + 32);
          v45 = 0xE600000000000000;
          v74 = v7;
          while (v42)
          {
            v50 = *v44;
            if (v50 <= 3)
            {
              if (v50 == 2)
              {
                v53 = 0x427373616C63;
              }

              else
              {
                v53 = 0x437373616C63;
              }

              if (*v44)
              {
                v54 = 0x417373616C63;
              }

              else
              {
                v54 = 0x7269447373616C63;
              }

              if (*v44)
              {
                v55 = 0xE600000000000000;
              }

              else
              {
                v55 = v43;
              }

              if (*v44 <= 1u)
              {
                v52 = v54;
              }

              else
              {
                v52 = v53;
              }

              if (*v44 <= 1u)
              {
                v51 = v55;
              }

              else
              {
                v51 = 0xE600000000000000;
              }
            }

            else if (*v44 <= 5u)
            {
              if (v50 == 4)
              {
                v52 = 0x447373616C63;
              }

              else
              {
                v52 = 0x457373616C63;
              }

              v51 = 0xE600000000000000;
            }

            else if (v50 == 6)
            {
              v51 = 0xE600000000000000;
              v52 = 0x467373616C63;
            }

            else if (v50 == 7)
            {
              v51 = 0xE700000000000000;
              v52 = 0x58437373616C63;
            }

            else
            {
              v52 = 0x6365746F72506F6ELL;
              v51 = 0xEC0000006E6F6974;
            }

            v56 = 0x6365746F72506F6ELL;
            if (v36 == 7)
            {
              v56 = 0x58437373616C63;
            }

            v57 = 0xEC0000006E6F6974;
            if (v36 == 7)
            {
              v57 = 0xE700000000000000;
            }

            if (v36 == 6)
            {
              v56 = 0x467373616C63;
              v57 = 0xE600000000000000;
            }

            v58 = 0x457373616C63;
            if (v36 == 4)
            {
              v58 = 0x447373616C63;
            }

            if (v36 <= 5u)
            {
              v56 = v58;
              v57 = 0xE600000000000000;
            }

            if (v36 == 2)
            {
              v59 = 0x427373616C63;
            }

            else
            {
              v59 = 0x437373616C63;
            }

            v60 = 0xE600000000000000;
            if (v36)
            {
              v61 = 0x417373616C63;
            }

            else
            {
              v61 = 0x7269447373616C63;
            }

            if (!v36)
            {
              v45 = v43;
            }

            if (v36 <= 1u)
            {
              v59 = v61;
              v60 = v45;
            }

            if (v36 <= 3u)
            {
              v62 = v59;
            }

            else
            {
              v62 = v56;
            }

            if (v36 <= 3u)
            {
              v63 = v60;
            }

            else
            {
              v63 = v57;
            }

            if (v52 == v62 && v51 == v63)
            {

              goto LABEL_91;
            }

            v46 = v42;
            v47 = v36;
            v48 = v43;
            v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v45 = 0xE600000000000000;
            v49 = v46;
            v7 = v74;
            v43 = v48;
            v36 = v47;
            ++v44;
            v42 = v49 - 1;
            if (v76)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
LABEL_91:
          sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_100076380;
          v77 = 0;
          v78 = 0xE000000000000000;
          if (v73 < 2)
          {
            LOBYTE(v79) = v36;
            _print_unlocked<A, B>(_:_:)();
            v69._countAndFlagsBits = 32;
            v69._object = 0xE100000000000000;
            String.append(_:)(v69);
            v70._countAndFlagsBits = v8;
            v70._object = v7;
            String.append(_:)(v70);
          }

          else
          {
            _StringGuts.grow(_:)(18);
            _print_unlocked<A, B>(_:_:)();
            v65._countAndFlagsBits = 32;
            v65._object = 0xE100000000000000;
            String.append(_:)(v65);
            v66._countAndFlagsBits = v8;
            v66._object = v7;
            String.append(_:)(v66);
            v67._countAndFlagsBits = 0x6E694C6472614820;
            v67._object = 0xEB000000003D736BLL;
            String.append(_:)(v67);
            v79 = v73;
            v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v68);
          }

          v71 = v77;
          v72 = v78;
          *(v64 + 56) = &type metadata for String;
          *(v64 + 32) = v71;
          *(v64 + 40) = v72;
          print(_:separator:terminator:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002FCA8(uint64_t a1, unint64_t a2)
{
  memset(&v12, 0, sizeof(v12));
  v4 = String.utf8CString.getter();
  v5 = stat((v4 + 32), &v12);

  if (!v5)
  {
    return v12.st_nlink;
  }

  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002DB8(v6, qword_1000B19B0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100005C68(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "stat failed for %s", v9, 0xCu);
    sub_100005E9C(v10);
  }

  return 0;
}

void sub_10002FE64(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  v4 = v3;
  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DB8(v8, qword_1000B19B0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005C68(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v9, v10, "scanning %s", v11, 0xCu);
    sub_100005E9C(v12);
    v4 = v3;
  }

  v13 = sub_10002B71C(a1, a2);
  v22[0] = v13;
  v22[1] = 0;
  v14 = fts_open(v22, 84, 0);
  if (!v14)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67240192;
      *(v21 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v19, v20, "failed to scan: %{public}d", v21, 8u);
    }

LABEL_20:
    free(v13);
    return;
  }

  v15 = v14;
  while (1)
  {
    v16 = fts_read(v15);
    if (!v16)
    {
      goto LABEL_19;
    }

    fts_info = v16->fts_info;
    if (fts_info == 8)
    {
      break;
    }

    if (fts_info == 1)
    {
      if (!v16->fts_path)
      {
        goto LABEL_22;
      }

LABEL_13:
      v18 = String.init(cString:)();
      a3(v18);
      if (v4)
      {

LABEL_19:
        fts_close(v15);
        goto LABEL_20;
      }
    }
  }

  if (v16->fts_path)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t ProtectionClassScanner.deinit()
{

  return v0;
}

uint64_t ProtectionClassScanner.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 41, 7);
}

char *sub_1000301A0@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000301D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6365746F72506F6ELL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x427373616C63;
    if (a1 != 2)
    {
      v12 = 0x437373616C63;
    }

    v13 = 0x7269447373616C63;
    v14 = 0xEC000000656E6F4ELL;
    if (a1)
    {
      v13 = 0x417373616C63;
      v14 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x467373616C63;
    v7 = 0xE700000000000000;
    v8 = 0x58437373616C63;
    if (a1 != 7)
    {
      v8 = 0x6365746F72506F6ELL;
      v7 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x447373616C63;
    if (a1 != 4)
    {
      v9 = 0x457373616C63;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (v4 <= 5)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x417373616C63)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEC000000656E6F4ELL;
        if (v10 != 0x7269447373616C63)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v2 = 0xE600000000000000;
    if (a2 == 2)
    {
      if (v10 != 0x427373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x437373616C63;
  }

  else
  {
    if (a2 <= 5u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x447373616C63)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x457373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x467373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x58437373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  if (v10 != v3)
  {
LABEL_49:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v2)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

void *sub_10003045C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000287C8(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1000287C8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1000287C8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000287C8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000287C8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003081C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10003083C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10003086C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_10003173C(v4, v1);
  v2 = Hasher._finalize()();

  return sub_1000308D8(v1, v2);
}

unint64_t sub_1000308D8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = 0xE600000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v25 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x427373616C63;
        }

        else
        {
          v10 = 0x437373616C63;
        }

        if (*(*(v25 + 48) + v4))
        {
          v11 = 0x417373616C63;
        }

        else
        {
          v11 = 0x7269447373616C63;
        }

        if (*(*(v25 + 48) + v4))
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xEC000000656E6F4ELL;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v9 = v11;
        }

        else
        {
          v9 = v10;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = 0xE600000000000000;
        }
      }

      else if (*(*(v25 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v9 = 0x447373616C63;
        }

        else
        {
          v9 = 0x457373616C63;
        }

        v8 = 0xE600000000000000;
      }

      else if (v7 == 6)
      {
        v8 = 0xE600000000000000;
        v9 = 0x467373616C63;
      }

      else if (v7 == 7)
      {
        v8 = 0xE700000000000000;
        v9 = 0x58437373616C63;
      }

      else
      {
        v9 = 0x6365746F72506F6ELL;
        v8 = 0xEC0000006E6F6974;
      }

      v13 = 0x6365746F72506F6ELL;
      if (v6 == 7)
      {
        v13 = 0x58437373616C63;
      }

      v14 = 0xEC0000006E6F6974;
      if (v6 == 7)
      {
        v14 = 0xE700000000000000;
      }

      if (v6 == 6)
      {
        v13 = 0x467373616C63;
        v14 = 0xE600000000000000;
      }

      v15 = 0x457373616C63;
      if (v6 == 4)
      {
        v15 = 0x447373616C63;
      }

      if (v6 <= 5)
      {
        v13 = v15;
        v14 = 0xE600000000000000;
      }

      if (v6 == 2)
      {
        v16 = 0x427373616C63;
      }

      else
      {
        v16 = 0x437373616C63;
      }

      v17 = 0xE600000000000000;
      if (v6)
      {
        v18 = 0x417373616C63;
      }

      else
      {
        v18 = 0x7269447373616C63;
      }

      if (!v6)
      {
        v5 = 0xEC000000656E6F4ELL;
      }

      if (v6 <= 1)
      {
        v16 = v18;
        v17 = v5;
      }

      v19 = v6 <= 3 ? v16 : v13;
      v20 = v6 <= 3 ? v17 : v14;
      if (v9 == v19 && v8 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        v5 = 0xE600000000000000;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

Swift::Int sub_100030B94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A0C8(&qword_1000A3278, &qword_100076BE0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100030F18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A0C8(&qword_1000A3270, &qword_100076BD8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000311C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10003086C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100031460();
    result = v17;
    goto LABEL_8;
  }

  sub_100030B94(v14, a3 & 1);
  result = sub_10003086C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000312E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000613C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100030F18(v16, a4 & 1);
      v11 = sub_10000613C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000315AC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_100031460()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A3278, &qword_100076BE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000315AC()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A3270, &qword_100076BD8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10003171C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100068444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10003173C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

void sub_10003187C(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DB8(v8, qword_1000B19B0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a4;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005C68(a1, a2, &v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "scanning %s", v11, 0xCu);
    sub_100005E9C(v13);
    a4 = v12;
  }

  v14 = sub_10002B71C(a1, a2);
  v24[0] = v14;
  v24[1] = 0;
  v15 = fts_open(v24, 84, 0);
  if (!v15)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67240192;
      *(v23 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v21, v22, "failed to scan: %{public}d", v23, 8u);
    }

LABEL_20:
    free(v14);
    return;
  }

  v16 = v15;
  do
  {
    while (1)
    {
      v17 = fts_read(v16);
      if (!v17)
      {
        fts_close(v16);
        goto LABEL_20;
      }

      fts_info = v17->fts_info;
      if (fts_info != 1)
      {
        break;
      }

      if (!v17->fts_path)
      {
        goto LABEL_22;
      }

      String.init(cString:)();
LABEL_7:
    }
  }

  while (fts_info != 8);
  if (v17->fts_path)
  {
    v19 = String.init(cString:)();
    if ((sub_10006B728(v19, v20, a3) & 1) == 0)
    {
      *a4 = 0;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_100031B30(void *a1)
{
  v3 = sub_10000A0C8(&qword_1000A32D8, &qword_100076C18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = a1[4];
  v8 = sub_100006978(a1, a1[3]);
  sub_10002BFE0(v8, v9, v10);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v14[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v14[13] = 1;
    sub_100033924(v7, v12, v13);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005E9C(a1);
  return v7;
}

unint64_t sub_100031D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C80;
  if (!qword_1000A2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C80);
  }

  return result;
}

unint64_t sub_100031D74()
{
  result = qword_1000A2C90;
  if (!qword_1000A2C90)
  {
    v1 = sub_10000A738(&qword_1000A2C88, &qword_1000763B0);
    sub_100031DF8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C90);
  }

  return result;
}

unint64_t sub_100031DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2C98;
  if (!qword_1000A2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C98);
  }

  return result;
}

uint64_t sub_100031E4C(void *a1)
{
  v3 = sub_10000A0C8(&qword_1000A32C0, &qword_100076C10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-v5];
  v7 = a1[4];
  v8 = sub_100006978(a1, a1[3]);
  sub_100031D20(v8, v9, v10);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000A0C8(&qword_1000A2C88, &qword_1000763B0);
    v12[15] = 1;
    sub_10003384C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005E9C(a1);
  return v7;
}

unint64_t sub_100032050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2CA8;
  if (!qword_1000A2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CA8);
  }

  return result;
}

unint64_t sub_1000320A4()
{
  result = qword_1000A2CB8;
  if (!qword_1000A2CB8)
  {
    v1 = sub_10000A738(&qword_1000A2CB0, &qword_1000763C0);
    sub_100032128(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CB8);
  }

  return result;
}

unint64_t sub_100032128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2CC0;
  if (!qword_1000A2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CC0);
  }

  return result;
}

unint64_t sub_10003217C()
{
  result = qword_1000A2CD0;
  if (!qword_1000A2CD0)
  {
    v1 = sub_10000A738(&qword_1000A2CC8, &qword_1000763C8);
    sub_10002AC9C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CD0);
  }

  return result;
}

uint64_t sub_100032200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000836E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100083700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100083720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100083740 == a2)
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

uint64_t sub_1000323B4(void *a1)
{
  v2 = sub_10000A0C8(&qword_1000A32A0, &qword_100076C08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  v6 = sub_100006978(a1, a1[3]);
  sub_100032050(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10000A0C8(&qword_1000A2CB0, &qword_1000763C0);
  v12 = 0;
  sub_1000336F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13;
  LOBYTE(v13) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v13) = 2;
  v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000A0C8(&qword_1000A2CC8, &qword_1000763C8);
  v12 = 3;
  sub_1000337C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v13) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005E9C(a1);
  return v10;
}

unint64_t sub_10003268C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2CE0;
  if (!qword_1000A2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CE0);
  }

  return result;
}

unint64_t sub_100032728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A0C8(&qword_1000A3278, &qword_100076BE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10003086C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100032814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A0C8(&qword_1000A3270, &qword_100076BD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000613C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100032918(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = a3 >> 1;
  v8 = a4 + 32;
  for (i = (result + 16 * a2 + 8); ; i += 2)
  {
    if (v5 == v6)
    {
      if (v7 == v4)
      {
        return 1;
      }

      v11 = 0;
      v12 = 0;
      v5 = v6;
    }

    else
    {
      if (v5 >= v6)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_26;
      }

      v13 = (v8 + 16 * v5);
      v12 = *v13;
      v11 = v13[1];

      if (v7 == v4)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        return 1;
      }

      ++v5;
    }

    if (v4 >= v7)
    {
      break;
    }

    v15 = *(i - 1);
    v14 = *i;

    if (!v11)
    {
      if (v14)
      {
LABEL_21:

        return 0;
      }

      return 1;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    if (v12 == v15 && v11 == v14)
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

    ++v4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_100032A6C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002DB8(v13, qword_1000B19B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a4;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    v18 = a1;
    *(v16 + 4) = sub_100005C68(a1, a2, &v35);
    _os_log_impl(&_mh_execute_header, v14, v15, "scanning %s", v16, 0xCu);
    sub_100005E9C(v17);
    a4 = v32;

    v7 = v6;
  }

  else
  {

    v18 = a1;
  }

  v19 = sub_10002B71C(v18, a2);
  v20 = v7;
  v34[0] = v19;
  v34[1] = 0;
  v21 = fts_open(v34, 84, 0);
  if (!v21)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240192;
      *(v31 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v29, v30, "failed to scan: %{public}d", v31, 8u);
    }

LABEL_22:
    free(v19);
  }

  v22 = v21;
  while (1)
  {
    v23 = fts_read(v22);
    if (!v23)
    {
      goto LABEL_21;
    }

    fts_info = v23->fts_info;
    if (fts_info == 1)
    {
      break;
    }

    if (fts_info == 8)
    {
      result = v23->fts_path;
      if (!result)
      {
        goto LABEL_24;
      }

      v26 = String.init(cString:)();
      v28 = 0;
LABEL_15:
      sub_10002F420(v26, v27, v28, a3, a4, a5, a6);
      if (v20)
      {

LABEL_21:
        fts_close(v22);
        goto LABEL_22;
      }
    }
  }

  result = v23->fts_path;
  if (result)
  {
    v26 = String.init(cString:)();
    v28 = 1;
    goto LABEL_15;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100032D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A2D00;
  if (!qword_1000A2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2D00);
  }

  return result;
}

__n128 sub_100032DF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100032E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100032E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032EA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100032EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100032F38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100032F4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100032F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003306C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000330C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanningConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanningConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000332C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3228;
  if (!qword_1000A3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3228);
  }

  return result;
}

unint64_t sub_100033318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3230;
  if (!qword_1000A3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3230);
  }

  return result;
}

unint64_t sub_100033370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3238;
  if (!qword_1000A3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3238);
  }

  return result;
}

unint64_t sub_1000333C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3240;
  if (!qword_1000A3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3240);
  }

  return result;
}

unint64_t sub_100033420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3248;
  if (!qword_1000A3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3248);
  }

  return result;
}

unint64_t sub_100033478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3250;
  if (!qword_1000A3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3250);
  }

  return result;
}

unint64_t sub_1000334D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3258;
  if (!qword_1000A3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3258);
  }

  return result;
}

unint64_t sub_100033528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3260;
  if (!qword_1000A3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3260);
  }

  return result;
}

unint64_t sub_100033580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3268;
  if (!qword_1000A3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3268);
  }

  return result;
}

unint64_t sub_1000335F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3288;
  if (!qword_1000A3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3288);
  }

  return result;
}

unint64_t sub_100033644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A3298;
  if (!qword_1000A3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3298);
  }

  return result;
}

uint64_t sub_100033698(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1000336F0()
{
  result = qword_1000A32A8;
  if (!qword_1000A32A8)
  {
    v1 = sub_10000A738(&qword_1000A2CB0, &qword_1000763C0);
    sub_100033774(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32A8);
  }

  return result;
}

unint64_t sub_100033774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A32B0;
  if (!qword_1000A32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32B0);
  }

  return result;
}

unint64_t sub_1000337C8()
{
  result = qword_1000A32B8;
  if (!qword_1000A32B8)
  {
    v1 = sub_10000A738(&qword_1000A2CC8, &qword_1000763C8);
    sub_10002ABA0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32B8);
  }

  return result;
}

unint64_t sub_10003384C()
{
  result = qword_1000A32C8;
  if (!qword_1000A32C8)
  {
    v1 = sub_10000A738(&qword_1000A2C88, &qword_1000763B0);
    sub_1000338D0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32C8);
  }

  return result;
}

unint64_t sub_1000338D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A32D0;
  if (!qword_1000A32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32D0);
  }

  return result;
}

unint64_t sub_100033924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A32E0;
  if (!qword_1000A32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32E0);
  }

  return result;
}

unint64_t sub_100033978()
{
  result = qword_1000A32E8;
  if (!qword_1000A32E8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32E8);
  }

  return result;
}

uint64_t sub_100033A04()
{
  v1[110] = v0;
  v2 = type metadata accessor for URLResourceValues();
  v1[111] = v2;
  v1[112] = *(v2 - 8);
  v1[113] = swift_task_alloc();
  v3 = type metadata accessor for URL.DirectoryHint();
  v1[114] = v3;
  v1[115] = *(v3 - 8);
  v1[116] = swift_task_alloc();
  sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v1[117] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[118] = v4;
  v1[119] = *(v4 - 8);
  v1[120] = swift_task_alloc();
  v1[121] = sub_10000A0C8(&qword_1000A3568, &unk_100076E70);
  v1[122] = swift_task_alloc();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[123] = v5;
  v1[124] = *(v5 - 8);
  v1[125] = swift_task_alloc();
  v1[126] = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[127] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v1[128] = swift_task_alloc();
  v6 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v1[129] = v6;
  v7 = *(v6 - 8);
  v1[130] = v7;
  v1[131] = *(v7 + 64);
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  sub_10000A0C8(&qword_1000A2230, &qword_100073A58);
  v1[134] = swift_task_alloc();

  return _swift_task_switch(sub_100033D5C, 0, 0);
}

uint64_t sub_100033D5C()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[130];
  v18 = v0[125];
  v4 = v0[124];
  v19 = v0[123];
  v5 = v0[110];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  v0[135] = sub_10000DD40(0, 0, v1, &unk_100076E88, v7);
  v8 = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream;
  v0[136] = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream;
  sub_10003F3B4(v5 + v8, v2, qword_1000A3480, &qword_100076D10);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_100002D50(v2, v10 + v9, qword_1000A3480, &qword_100076D10);
  sub_10000A5D8();
  static DispatchQoS.unspecified.getter();
  v0[107] = _swiftEmptyArrayStorage;
  sub_10003F52C(&unk_1000A4E70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A0C8(&qword_1000A3570, &unk_100076E90);
  sub_10003F574();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000803C;
  *(v12 + 24) = v10;
  v0[100] = sub_100007B40;
  v0[101] = v12;
  v0[96] = _NSConcreteStackBlock;
  v0[97] = 1107296256;
  v0[98] = sub_100007A6C;
  v0[99] = &unk_100097E20;
  v13 = _Block_copy(v0 + 96);

  v14 = AKSEventsRegister();

  _Block_release(v13);
  v15 = 0;
  if (v14)
  {
    type metadata accessor for LockState.NotificationContext();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  v0[137] = v15;
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }

  v16 = swift_task_alloc();
  v0[138] = v16;
  *v16 = v0;
  v16[1] = sub_100034158;

  return RapidRepair.run()();
}

uint64_t sub_100034158()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_100034CD0;
  }

  else
  {
    v2 = sub_10003426C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003426C()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Succesfully applied repair rules", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 1120) = v5;
  *v5 = v0;
  v5[1] = sub_1000343B8;

  return sub_1000374F8();
}

uint64_t sub_1000343B8()
{
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v2 = sub_100035050;
  }

  else
  {
    v2 = sub_1000344CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000344CC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 976);
  v5 = (*(v0 + 880) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue);
  v6 = *v5;
  v7 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v5 + *(v7 + 28), v2, qword_1000A3480, &qword_100076D10);
  v8 = *(v3 + 48);

  v9 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  *(v0 + 1136) = v9;
  AsyncStream.makeAsyncIterator()();
  v10 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  *(v0 + 1144) = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  *(v0 + 1152) = v12;
  *(v0 + 1160) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2 + v8, v10);
  v13 = *(v9 - 8);
  v14 = *(v13 + 8);
  *(v0 + 1168) = v14;
  *(v0 + 1176) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v2, v9);
  *v4 = v6;
  *(v0 + 1248) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v0 + 1184) = NSURLIsSymbolicLinkKey;
  *(v0 + 1192) = v1;
  v15 = swift_task_alloc();
  *(v0 + 1200) = v15;
  *v15 = v0;
  v15[1] = sub_100002DF0;

  return sub_10003DAB8(v0 + 304);
}

uint64_t sub_1000346E0()
{
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v2 = sub_1000348F0;
  }

  else
  {
    v2 = sub_1000347F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000347F4()
{
  v1 = v0[153];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[118];
  sub_100002CF0((v0 + 26), &qword_1000A3548, &qword_100076E40);
  (*(v3 + 8))(v2, v4);
  v0[149] = v1;
  v5 = swift_task_alloc();
  v0[150] = v5;
  *v5 = v0;
  v5[1] = sub_100002DF0;

  return sub_10003DAB8((v0 + 38));
}

uint64_t sub_1000348F0()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  sub_100002CF0((v0 + 26), &qword_1000A3548, &qword_100076E40);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to upgrade path: %@", v6, 0xCu);
    sub_100002CF0(v7, &qword_1000A4EC0, &qword_100076C00);
  }

  else
  {
  }

  v0[149] = 0;
  v9 = swift_task_alloc();
  v0[150] = v9;
  *v9 = v0;
  v9[1] = sub_100002DF0;

  return sub_10003DAB8((v0 + 38));
}

uint64_t sub_100034AE0()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  sub_100002CF0((v0 + 26), &qword_1000A3548, &qword_100076E40);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to upgrade path: %@", v6, 0xCu);
    sub_100002CF0(v7, &qword_1000A4EC0, &qword_100076C00);
  }

  else
  {
  }

  v0[149] = 0;
  v9 = swift_task_alloc();
  v0[150] = v9;
  *v9 = v0;
  v9[1] = sub_100002DF0;

  return sub_10003DAB8((v0 + 38));
}

uint64_t sub_100034CD0()
{
  *(v0 + 864) = *(v0 + 1112);
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if (swift_dynamicCast())
  {

    if (*(v0 + 1252) == 1)
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_100002DB8(v1, qword_1000B19C8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Failed to repair some files";
    }

    else
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100002DB8(v11, qword_1000B19C8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot repair files, device is still before-first-unlock";
    }

    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
  }

  else
  {

    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002DB8(v6, qword_1000B19C8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v2, v7, "Repair failed for unknown reason: %@", v8, 0xCu);
      sub_100002CF0(v9, &qword_1000A4EC0, &qword_100076C00);

      goto LABEL_17;
    }
  }

LABEL_16:

LABEL_17:
  v12 = swift_task_alloc();
  *(v0 + 1120) = v12;
  *v12 = v0;
  v12[1] = sub_1000343B8;

  return sub_1000374F8();
}

uint64_t sub_100035050()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to schedule backlog of tasks", v4, 2u);
  }

  v5 = *(v0 + 1056);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 976);
  v8 = (*(v0 + 880) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue);
  v9 = *v8;
  v10 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v8 + *(v10 + 28), v5, qword_1000A3480, &qword_100076D10);
  v11 = *(v6 + 48);

  v12 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  *(v0 + 1136) = v12;
  AsyncStream.makeAsyncIterator()();
  v13 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  *(v0 + 1144) = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  *(v0 + 1152) = v15;
  *(v0 + 1160) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v5 + v11, v13);
  v16 = *(v12 - 8);
  v17 = *(v16 + 8);
  *(v0 + 1168) = v17;
  *(v0 + 1176) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v5, v12);
  *v7 = v9;
  *(v0 + 1248) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v0 + 1184) = NSURLIsSymbolicLinkKey;
  *(v0 + 1192) = 0;
  v18 = swift_task_alloc();
  *(v0 + 1200) = v18;
  *v18 = v0;
  v18[1] = sub_100002DF0;

  return sub_10003DAB8(v0 + 304);
}

uint64_t sub_10003531C(uint64_t a1)
{
  v2[99] = v1;
  v2[98] = a1;
  v2[100] = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v2[101] = swift_task_alloc();
  v3 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  v2[102] = v3;
  v2[103] = *(v3 - 8);
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_100035428, 0, 0);
}

uint64_t sub_100035428()
{
  v34 = v0;
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 784);
  v2 = type metadata accessor for Logger();
  sub_100002DB8(v2, qword_1000B19C8);
  sub_10000626C(v1, v0 + 496);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100005BFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    v7 = sub_100003644();
    v10 = v8;
    if (v11)
    {
      v12 = v7;
      v13 = v9;
      v14 = sub_100005A2C(0, v7, v8, v9);
      v16 = v15;
      sub_100005C50(v12, v10, v13, 1);
      v7 = v14;
      v10 = v16;
    }

    v17 = sub_100005C68(v7, v10, &v33);

    *(v5 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "scheduling remediation for event: %s", v5, 0xCu);
    sub_100005E9C(v6);
  }

  v18 = *(v0 + 784);
  if (*(v18 + 54))
  {
    goto LABEL_11;
  }

  if (*(v18 + 50) == 4)
  {

    v18 = *(v0 + 784);
LABEL_11:
    v20 = *(v0 + 792);
    v21 = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
    *(v0 + 840) = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
    v22 = *(v18 + 80);
    v24 = *(v18 + 48);
    v23 = *(v18 + 64);
    *(v0 + 240) = *(v18 + 32);
    *(v0 + 256) = v24;
    *(v0 + 272) = v23;
    *(v0 + 288) = v22;
    v25 = *(v18 + 16);
    *(v0 + 208) = *v18;
    *(v0 + 224) = v25;
    *(v0 + 296) = 0;
    sub_10000626C(v18, v0 + 672);
    v26 = *(v20 + v21);
    *(v0 + 848) = v26;

    return _swift_task_switch(sub_100035830, v26, 0);
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v18 = *(v0 + 784);
  if (v19)
  {
    goto LABEL_11;
  }

  v27 = *(v18 + 16);
  *(v0 + 112) = *v18;
  *(v0 + 128) = v27;
  v28 = *(v18 + 32);
  v29 = *(v18 + 64);
  v30 = *(v18 + 80);
  *(v0 + 160) = *(v18 + 48);
  *(v0 + 176) = v29;
  *(v0 + 144) = v28;
  *(v0 + 192) = v30;
  *(v0 + 200) = 0;
  sub_10000626C(v18, v0 + 584);
  v31 = swift_task_alloc();
  *(v0 + 864) = v31;
  *v31 = v0;
  v31[1] = sub_100035E04;

  return sub_1000363FC(v0 + 112);
}

uint64_t sub_100035830()
{
  v1 = *(v0 + 848);
  swift_beginAccess();
  v2 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v2;
  v3 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v3;
  v4 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v4;
  sub_10003F37C(v0 + 208, v0 + 304);
  sub_10003F2A8(0, 0, (v0 + 16));
  swift_endAccess();
  sub_10003F01C(v0 + 208);
  v5 = *(*(v1 + 112) + 16);
  *(v0 + 856) = v5;
  if (v5 < 0x41)
  {
    v6 = sub_100035BBC;
  }

  else
  {
    sub_10003EA4C((v0 + 400));
    sub_100002CF0(v0 + 400, &qword_1000A3548, &qword_100076E40);
    v6 = sub_100035938;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100035938()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 792);
  v3 = *(v2 + v1 + *(sub_10000A0C8(&qword_1000A3538, &qword_100076E20) + 32));
  if (v3)
  {
    v3();
    v1 = *(v0 + 840);
    v2 = *(v0 + 792);
  }

  v4 = *(v0 + 856);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);
  v7 = *(v0 + 816);
  v8 = *(v0 + 808);
  v9 = v2 + v1;
  v10 = *(v0 + 800);
  v11 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v9 + *(v11 + 28), v8, qword_1000A3480, &qword_100076D10);
  v12 = *(v10 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v6 + 8))(v5, v7);
  v13 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v14 - 8) + 8))(v8, v14);
  sub_10003F01C(v0 + 208);
  if (v4 < 0x41)
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v15 = *(v0 + 784);
    v16 = *(v15 + 16);
    *(v0 + 112) = *v15;
    *(v0 + 128) = v16;
    v17 = *(v15 + 32);
    v18 = *(v15 + 64);
    v19 = *(v15 + 80);
    *(v0 + 160) = *(v15 + 48);
    *(v0 + 176) = v18;
    *(v0 + 144) = v17;
    *(v0 + 192) = v19;
    *(v0 + 200) = 0;
    sub_10000626C(v15, v0 + 584);
    v20 = swift_task_alloc();
    *(v0 + 864) = v20;
    *v20 = v0;
    v20[1] = sub_100035E04;

    return sub_1000363FC(v0 + 112);
  }
}

uint64_t sub_100035BBC()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v7 = *(v0 + 792) + *(v0 + 840);
  v8 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v7 + *(v8 + 28), v5, qword_1000A3480, &qword_100076D10);
  v9 = *(v6 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v11 - 8) + 8))(v5, v11);
  sub_10003F01C(v0 + 208);
  if (v1 < 0x41)
  {

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v12 = *(v0 + 784);
    v13 = *(v12 + 16);
    *(v0 + 112) = *v12;
    *(v0 + 128) = v13;
    v14 = *(v12 + 32);
    v15 = *(v12 + 64);
    v16 = *(v12 + 80);
    *(v0 + 160) = *(v12 + 48);
    *(v0 + 176) = v15;
    *(v0 + 144) = v14;
    *(v0 + 192) = v16;
    *(v0 + 200) = 0;
    sub_10000626C(v12, v0 + 584);
    v17 = swift_task_alloc();
    *(v0 + 864) = v17;
    *v17 = v0;
    v17[1] = sub_100035E04;

    return sub_1000363FC(v0 + 112);
  }
}

uint64_t sub_100035E04()
{
  v2 = *v1;
  *(v2 + 872) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100035F58, 0, 0);
  }

  else
  {
    sub_10003F01C(v2 + 112);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100035F58()
{
  sub_10003F01C(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100035FD4()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B19C8);
  sub_100002DB8(v0, qword_1000B19C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100036050(uint64_t a1)
{
  v17 = a1;
  v19 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20) - 8;
  __chkstk_darwin(v19);
  v18 = (&v16 - v2);
  v3 = sub_10000A0C8(&qword_1000A3588, &qword_100076F40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - v5);
  v16 = v1;
  *(v1 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_maxRetryCount) = 5;
  *(v1 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_rescheduleBatchSize) = 256;
  sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  *v6 = 1;
  v7 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  v8 = *(v4 + 104);
  v8(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  *v6 = 1;
  v8(v6, v7, v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v9(v6, v3);
  sub_10000A0C8(qword_1000A3590, &qword_100076F48);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = _swiftEmptyArrayStorage;
  *(v10 + 120) = 64;
  v11 = v18;
  v12 = v19;
  *v18 = v10;
  v13 = (v11 + *(v12 + 40));
  *v13 = sub_100036314;
  v13[1] = 0;
  v14 = v16;
  sub_100002D50(v11, v16 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue, &qword_1000A3538, &qword_100076E20);
  *(v14 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext) = v17;
  return v14;
}

void sub_100036314()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002DB8(v0, qword_1000B19C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Remediation queue dropped entries", v2, 2u);
  }
}

uint64_t sub_1000363FC(uint64_t a1)
{
  v2[61] = a1;
  v2[62] = v1;
  v2[63] = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v2[64] = swift_task_alloc();
  v3 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  v2[65] = v3;
  v2[66] = *(v3 - 8);
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_100036504, 0, 0);
}

uint64_t sub_100036504()
{
  v29 = v0;
  v1 = *(v0 + 488);
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 32);
  *(v0 + 448) = *(v1 + 48);
  v5 = *(v1 + 16);
  *(v0 + 400) = *v1;
  *(v0 + 416) = v5;
  *(v0 + 432) = v4;
  *(v0 + 480) = v3;
  *(v0 + 464) = v2;
  if ((*(v0 + 452) & 1) == 0)
  {
LABEL_10:

    v24 = *(v0 + 8);

    return v24();
  }

  v6 = *(v1 + 88);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 > 5)
  {
    if (qword_1000A21A8 == -1)
    {
LABEL_5:
      v8 = type metadata accessor for Logger();
      sub_100002DB8(v8, qword_1000B19C8);
      sub_10003F37C(v1, v0 + 304);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      sub_10003F01C(v1);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v28 = v12;
        *v11 = 136315138;
        v13 = sub_100003644();
        v16 = v14;
        if (v17)
        {
          v18 = v13;
          v19 = v15;
          v20 = sub_100005A2C(0, v13, v14, v15);
          v22 = v21;
          sub_100005C50(v18, v16, v19, 1);
          v13 = v20;
          v16 = v22;
        }

        v23 = sub_100005C68(v13, v16, &v28);

        *(v11 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v9, v10, "retry count exceeded for event %s", v11, 0xCu);
        sub_100005E9C(v12);
      }

      goto LABEL_10;
    }

LABEL_17:
    swift_once();
    v1 = *(v0 + 488);
    goto LABEL_5;
  }

  *(v0 + 544) = *(*(v0 + 496) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);
  type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  swift_allocObject();
  sub_10003F37C(v1, v0 + 16);
  *(v0 + 552) = sub_10004E014(v0 + 400, v7);
  *(v0 + 560) = type metadata accessor for AnalyticsStoreContext();
  sub_10003F52C(&qword_1000A2338, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 568) = v27;
  *(v0 + 576) = v26;

  return _swift_task_switch(sub_10003683C, v27, v26);
}

uint64_t sub_10003683C()
{
  *(v0 + 584) = sub_100045114(*(v0 + 552)) & 1;

  return _swift_task_switch(sub_1000368BC, 0, 0);
}

uint64_t sub_1000368BC()
{
  v36 = v0;
  if (*(v0 + 584) == 1)
  {
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 488);
    v2 = type metadata accessor for Logger();
    sub_100002DB8(v2, qword_1000B19C8);
    sub_10003F37C(v1, v0 + 208);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_10003F01C(v1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35 = v6;
      *v5 = 136315138;
      v7 = sub_100003644();
      v10 = v8;
      if (v11)
      {
        v12 = v7;
        v13 = v9;
        v14 = sub_100005A2C(0, v7, v8, v9);
        v16 = v15;
        sub_100005C50(v12, v10, v13, 1);
        v7 = v14;
        v10 = v16;
      }

      v17 = sub_100005C68(v7, v10, &v35);

      *(v5 + 4) = v17;
      v18 = "rescheduled %s for later";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v3, v4, v18, v5, 0xCu);
      sub_100005E9C(v6);
    }
  }

  else
  {
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 488);
    v20 = type metadata accessor for Logger();
    sub_100002DB8(v20, qword_1000B19C8);
    sub_10003F37C(v19, v0 + 112);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_10003F01C(v19);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35 = v6;
      *v5 = 136315138;
      v21 = sub_100003644();
      v24 = v22;
      if (v25)
      {
        v26 = v21;
        v27 = v23;
        v28 = sub_100005A2C(0, v21, v22, v23);
        v30 = v29;
        sub_100005C50(v26, v24, v27, 1);
        v21 = v28;
        v24 = v30;
      }

      v31 = sub_100005C68(v21, v24, &v35);

      *(v5 + 4) = v31;
      v18 = "discarded duplicate event %s";
      goto LABEL_14;
    }
  }

  v32 = *(v0 + 576);
  v33 = *(v0 + 568);

  return _swift_task_switch(sub_100036BDC, v33, v32);
}

uint64_t sub_100036BDC()
{
  sub_10003F52C(&qword_1000A2B30, type metadata accessor for AnalyticsStoreContext, &protocol conformance descriptor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  return _swift_task_switch(sub_100036D08, 0, 0);
}

uint64_t sub_100036D08()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  sub_10003F3B4(v0[62] + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, v4, qword_1000A3480, &qword_100076D10);
  v6 = *(v5 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v1, v3);
  v7 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v8 - 8) + 8))(v4, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100036E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v4[4] = swift_task_alloc();
  v5 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100036F78, 0, 0);
}

uint64_t sub_100036F78()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10003F3B4(v0[2] + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, v1, qword_1000A3480, &qword_100076D10);
  v3 = *(v2 + 48);
  v4 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  AsyncStream.makeAsyncIterator()();
  v5 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v5 - 8) + 8))(v1 + v3, v5);
  (*(*(v4 - 8) + 8))(v1, v4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1000370F4;
  v7 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v7);
}

uint64_t sub_1000370F4()
{

  return _swift_task_switch(sub_1000371F0, 0, 0);
}

uint64_t sub_1000371F0()
{
  if (*(v0 + 88) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1000372EC;

    return sub_1000374F8();
  }
}

uint64_t sub_1000372EC()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100037470, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_1000370F4;
    v4 = v2[5];

    return AsyncStream.Iterator.next(isolation:)(v2 + 11, 0, 0, v4);
  }
}

uint64_t sub_100037470()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100037518()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "scheduling class D tasks", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_10003766C;

  return sub_100038214(4);
}

uint64_t sub_10003766C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000377A0, 0, 0);
  }
}

uint64_t sub_1000377A0(uint64_t a1)
{
  v2 = *(v1 + 80);
  sub_10006DCE4(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8);
LABEL_10:

    return v3();
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v3 = *(v1 + 8);
    goto LABEL_10;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "scheduling class C tasks", v6, 2u);
  }

  v7 = swift_task_alloc();
  *(v1 + 88) = v7;
  *v7 = v1;
  v7[1] = sub_10003790C;

  return sub_100038214(3);
}

uint64_t sub_10003790C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100037A1C()
{
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100037AE8;

  return RapidRepair.run()();
}

uint64_t sub_100037AE8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100037D10;
  }

  else
  {
    v2 = sub_100037BFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100037BFC()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Succesfully applied repair rules (lockNotification handler)", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100037D10()
{
  *(v0 + 16) = *(v0 + 32);
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if (swift_dynamicCast())
  {

    if (*(v0 + 40) == 1)
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_100002DB8(v1, qword_1000B19C8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Failed to repair some files (lockNotification handler)";
    }

    else
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100002DB8(v11, qword_1000B19C8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot repair files, device is unexpectedly still before-first-unlock (lockNotification handler)";
    }

    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
  }

  else
  {

    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002DB8(v6, qword_1000B19C8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v2, v7, "Repair failed for unknown reason (lockNotification handler): %@", v8, 0xCu);
      sub_100002CF0(v9, &qword_1000A4EC0, &qword_100076C00);

      goto LABEL_17;
    }
  }

LABEL_16:

LABEL_17:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100038058@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = *v2;
  sub_10003F3B4(v2 + *(a1 + 28), v8, qword_1000A3480, &qword_100076D10);
  v13 = *(v6 + 56);

  v14 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  AsyncStream.makeAsyncIterator()();
  v15 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v15 - 8) + 8))(&v8[v13], v15);
  (*(*(v14 - 8) + 8))(v8, v14);
  return sub_10003DA14(v12, v11, a2, v16, v17);
}

uint64_t sub_100038214(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 81) = a1;
  *(v2 + 24) = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  *(v2 + 32) = swift_task_alloc();
  v3 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100038320, 0, 0);
}

uint64_t sub_100038320()
{
  v1 = *(v0 + 16);
  *(v0 + 80) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100038400;
  v4 = *(v0 + 16);
  v5 = *(v0 + 81);

  return sub_100044414(v5, 256, v2, v4, v0 + 80);
}

uint64_t sub_100038400(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10003869C;
  }

  else
  {
    *(v4 + 82) = a1 & 1;
    v5 = sub_10003852C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003852C()
{
  if ((*(v0 + 80) & 1) != 0 || *(v0 + 82))
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_10003F3B4(*(v0 + 16) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, v3, qword_1000A3480, &qword_100076D10);
    v6 = *(v5 + 48);
    AsyncStream.Continuation.yield<A>()();
    (*(v2 + 8))(v1, v4);
    v7 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
    v8 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10003869C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v4[79] = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v4[80] = swift_task_alloc();
  v5 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  v4[81] = v5;
  v4[82] = *(v5 - 8);
  v4[83] = swift_task_alloc();

  return _swift_task_switch(sub_100038820, 0, 0);
}

uint64_t sub_100038820()
{
  v30 = v0;
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = type metadata accessor for Logger();
  *(v0 + 672) = sub_100002DB8(v2, qword_1000B19C8);
  sub_10000626C(v1, v0 + 400);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100005BFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    v7 = sub_100003644();
    v10 = v8;
    if (v11)
    {
      v12 = v7;
      v13 = v9;
      v14 = sub_100005A2C(0, v7, v8, v9);
      v16 = v15;
      sub_100005C50(v12, v10, v13, 1);
      v7 = v14;
      v10 = v16;
    }

    v17 = *(v0 + 608);
    v18 = sub_100005C68(v7, v10, &v29);

    *(v5 + 4) = v18;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "enqueuing deferred enforcement event: %s retryCount=%ld", v5, 0x16u);
    sub_100005E9C(v6);
  }

  v19 = *(v0 + 616);
  v20 = *(v0 + 608);
  v21 = *(v0 + 600);
  v22 = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
  *(v0 + 680) = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
  v23 = *(v21 + 80);
  v25 = *(v21 + 48);
  v24 = *(v21 + 64);
  *(v0 + 144) = *(v21 + 32);
  *(v0 + 160) = v25;
  *(v0 + 176) = v24;
  *(v0 + 192) = v23;
  v26 = *(v21 + 16);
  *(v0 + 112) = *v21;
  *(v0 + 128) = v26;
  *(v0 + 200) = v20;
  sub_10000626C(v21, v0 + 488);
  v27 = *(v19 + v22);
  *(v0 + 688) = v27;

  return _swift_task_switch(sub_100038A68, v27, 0);
}

uint64_t sub_100038A68()
{
  v1 = *(v0 + 688);
  swift_beginAccess();
  v2 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v2;
  v3 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v3;
  v4 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v4;
  sub_10003F37C(v0 + 112, v0 + 208);
  sub_10003F2A8(0, 0, (v0 + 16));
  swift_endAccess();
  sub_10003F01C(v0 + 112);
  v5 = *(*(v1 + 112) + 16);
  *(v0 + 696) = v5;
  if (v5 >= 0x41)
  {
    sub_10003EA4C((v0 + 304));
    sub_100002CF0(v0 + 304, &qword_1000A3548, &qword_100076E40);
    v6 = sub_100038B70;
  }

  else
  {
    v6 = sub_100038DD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100038B70()
{
  v1 = v0[85];
  v2 = v0[77];
  v3 = *(v2 + v1 + *(sub_10000A0C8(&qword_1000A3538, &qword_100076E20) + 32));
  if (v3)
  {
    v3();
    v1 = v0[85];
    v2 = v0[77];
  }

  v4 = v0[87];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v2 + v1;
  v10 = v0[79];
  v11 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v9 + *(v11 + 28), v8, qword_1000A3480, &qword_100076D10);
  v12 = *(v10 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v6 + 8))(v5, v7);
  v13 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v14 - 8) + 8))(v8, v14);
  sub_10003F01C((v0 + 14));
  if (v4 >= 0x41)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "failed to enqueue deferred enforcement event", v17, 2u);
    }

    v18 = v0[78];

    *v18 = 1;
  }

  v19 = v0[1];
  v20 = v0[87] < 0x41uLL;

  return v19(v20);
}

uint64_t sub_100038DD4()
{
  v1 = v0[87];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[77] + v0[85];
  v8 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v7 + *(v8 + 28), v5, qword_1000A3480, &qword_100076D10);
  v9 = *(v6 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v11 - 8) + 8))(v5, v11);
  sub_10003F01C((v0 + 14));
  if (v1 >= 0x41)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "failed to enqueue deferred enforcement event", v14, 2u);
    }

    v15 = v0[78];

    *v15 = 1;
  }

  v16 = v0[1];
  v17 = v0[87] < 0x41uLL;

  return v16(v17);
}

uint64_t sub_100038FFC()
{
  v0 = type metadata accessor for URLResourceValues();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A0C8(&qword_1000A3558, &qword_100076E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100076380;
  *(inited + 32) = NSURLIsSymbolicLinkKey;
  v5 = NSURLIsSymbolicLinkKey;
  sub_100005EE8(inited);
  swift_setDeallocating();
  sub_10003F41C(inited + 32);
  URL.resourceValues(forKeys:)();

  v6 = URLResourceValues.isSymbolicLink.getter();
  (*(v1 + 8))(v3, v0);
  return v6 & 1;
}

uint64_t sub_10003916C(uint64_t a1)
{
  *(v2 + 1256) = v1;
  *(v2 + 1248) = a1;

  return _swift_task_switch(sub_100039200, 0, 0);
}

uint64_t sub_100039200()
{
  v98 = v0;
  v1 = *(v0 + 1248);
  *(v0 + 1232) = 0;
  v2 = *(v1 + 16);
  *(v0 + 392) = *v1;
  *(v0 + 408) = v2;
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  *(v0 + 472) = *(v1 + 80);
  *(v0 + 440) = v4;
  *(v0 + 456) = v5;
  *(v0 + 424) = v3;
  *(v0 + 1177) = 2;
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  *(v0 + 1264) = v7;
  *(v0 + 1272) = v6;

  v8._object = 0x8000000100083850;
  v8._countAndFlagsBits = 0xD00000000000003CLL;
  if (String.hasPrefix(_:)(v8))
  {

    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 1248);
    v10 = type metadata accessor for Logger();
    sub_100002DB8(v10, qword_1000B19C8);
    sub_10003F37C(v9, v0 + 16);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_10003F01C(v9);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v97 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100005C68(v7, v6, &v97);
      _os_log_impl(&_mh_execute_header, v11, v12, "skipping %s due to rdar://150951905", v13, 0xCu);
      sub_100005E9C(v14);
    }

    goto LABEL_101;
  }

  v15 = sub_10002B71C(v7, v6);
  *(v0 + 1280) = v15;
  *(v0 + 1128) = v15;
  *(v0 + 1136) = 0;
  v16 = fts_open((v0 + 1128), 84, 0);
  *(v0 + 1288) = v16;
  if (!v16)
  {

    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100002DB8(v49, qword_1000B19C8);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67240192;
      *(v52 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v50, v51, "failed to scan: %{public}d", v52, 8u);
    }

    v53 = v15;
LABEL_100:
    free(v53);
LABEL_101:
    v59 = *(v0 + 8);
    goto LABEL_102;
  }

  v95 = (v0 + 1232);
  *(v0 + 1296) = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext;
  v17 = fts_read(v16);
  if (!v17)
  {
LABEL_73:
    v36 = *v95;
    if (*v95 >= 1)
    {
      v37 = *(v0 + 1177);
      if (v37 != 2 && (v37 & 1) != 0)
      {

        if (qword_1000A21A8 != -1)
        {
          swift_once();
        }

        v38 = *(v0 + 1248);
        v39 = type metadata accessor for Logger();
        sub_100002DB8(v39, qword_1000B19C8);
        sub_10003F37C(v38, v0 + 112);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        sub_10003F01C(v38);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = *(v0 + 1272);
          v43 = *(v0 + 1264);
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v97 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_100005C68(v43, v42, &v97);
          _os_log_impl(&_mh_execute_header, v40, v41, "rescheduling directory %s", v44, 0xCu);
          sub_100005E9C(v45);
        }

        v46 = swift_task_alloc();
        *(v0 + 1368) = v46;
        *v46 = v0;
        v46[1] = sub_10003C014;
        v47 = *(v0 + 1248);

        return sub_1000363FC(v47);
      }

      v54 = *(v0 + 1272);
      v55 = *(v0 + 1264);
      v56 = *(v0 + 442);
      sub_10000EEA4(v17, v18, v19);
      swift_allocError();
      *v57 = v55;
      *(v57 + 8) = v54;
      *(v57 + 16) = v56;
      *(v57 + 24) = v36;
      *(v57 + 32) = 15;
      swift_willThrow();
      v58 = *(v0 + 1280);
      fts_close(*(v0 + 1288));
      free(v58);
      v59 = *(v0 + 8);
LABEL_102:

      return v59();
    }

LABEL_98:

LABEL_99:
    v82 = *(v0 + 1280);
    fts_close(*(v0 + 1288));
    v53 = v82;
    goto LABEL_100;
  }

  v94 = (v0 + 1008);
  v96 = (v0 + 1392);
  while (1)
  {
    if (v17->fts_info != 8)
    {
      goto LABEL_12;
    }

    if (!v17->fts_path)
    {
      __break(1u);
    }

    v20 = String.init(cString:)();
    v22 = v21;
    *(v0 + 1304) = v20;
    *(v0 + 1312) = v21;
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    *(v0 + 1320) = sub_100002DB8(v23, qword_1000B19C8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v97 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100005C68(v20, v22, &v97);
      _os_log_impl(&_mh_execute_header, v24, v25, "remediating file in dir: %s", v26, 0xCu);
      sub_100005E9C(v27);
    }

    if ((v22 & 0x1000000000000000) == 0)
    {
      if ((v22 & 0x2000000000000000) != 0)
      {
        *(v0 + 1216) = v20;
        *(v0 + 1224) = v22 & 0xFFFFFFFFFFFFFFLL;
        *(v0 + 1388) = 0;
        if (get_protection_class((v0 + 1216), (v0 + 1388)))
        {
          goto LABEL_90;
        }

        v28 = *(v0 + 1388);
        goto LABEL_26;
      }

      if ((v20 & 0x1000000000000000) != 0)
      {
        *v96 = 0;
        if (get_protection_class(((v22 & 0xFFFFFFFFFFFFFFFLL) + 32), v96))
        {
          goto LABEL_90;
        }

        v28 = *v96;
        goto LABEL_26;
      }
    }

    sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
    _StringGuts._slowWithCString<A>(_:)();
    if (*(v0 + 1184))
    {
LABEL_90:

      v60 = errno.getter();
      v61 = v60;
      *(v0 + 1188) = v60;
      sub_100033644(v60, v62, v63);
      swift_willThrowTypedImpl();
      if (v61 == 2)
      {

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v97 = v67;
          *v66 = 136315138;
          v68 = sub_100005C68(v20, v22, &v97);

          *(v66 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v64, v65, "file at %s deleted before it could be processed", v66, 0xCu);
          sub_100005E9C(v67);
LABEL_96:

          goto LABEL_99;
        }

        goto LABEL_97;
      }

LABEL_94:

      v64 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v97 = v75;
        *v73 = 136315394;
        v76 = sub_100005C68(v20, v22, &v97);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2112;
        sub_100033644(v77, v78, v79);
        swift_allocError();
        *v80 = v61;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 14) = v81;
        *v74 = v81;
        _os_log_impl(&_mh_execute_header, v64, v72, "failed to get current protection class for %s: %@", v73, 0x16u);
        sub_100002CF0(v74, &qword_1000A4EC0, &qword_100076C00);

        sub_100005E9C(v75);
        goto LABEL_96;
      }

LABEL_97:

      goto LABEL_98;
    }

    v28 = *(v0 + 1180);
LABEL_26:
    if (ProtectionClass.init(value:)(v28).value == libdomainpolicy_ProtectionClass_unknownDefault)
    {

      v61 = 34;
      *(v0 + 1384) = 34;
      sub_100033644(v69, v70, v71);
      swift_willThrowTypedImpl();
      goto LABEL_94;
    }

    v29 = *(v0 + 442);
    if (!ProtectionClass.allowed(forMinimumProtection:)(*(v0 + 442)))
    {
      break;
    }

    if (v29 <= 3)
    {
      if (v29 > 1)
      {
        v30 = 0xE600000000000000;
        if (v29 == 2)
        {
          v31 = 0x427373616C63;
        }

        else
        {
          v31 = 0x437373616C63;
        }
      }

      else
      {
        v31 = 0x7269447373616C63;
        v30 = 0xEC000000656E6F4ELL;
        if (v29)
        {
          v30 = 0xE600000000000000;
          v31 = 0x417373616C63;
        }
      }
    }

    else if (v29 <= 5)
    {
      v30 = 0xE600000000000000;
      if (v29 == 4)
      {
        v31 = 0x447373616C63;
      }

      else
      {
        v31 = 0x457373616C63;
      }
    }

    else if (v29 == 6)
    {
      v30 = 0xE600000000000000;
      v31 = 0x467373616C63;
    }

    else if (v29 == 7)
    {
      v30 = 0xE700000000000000;
      v31 = 0x58437373616C63;
    }

    else
    {
      v31 = 0x6365746F72506F6ELL;
      v30 = 0xEC0000006E6F6974;
    }

    v32 = *(v0 + 443);
    if (v32 <= 3)
    {
      if (*(v0 + 443) > 1u)
      {
        v33 = 0xE600000000000000;
        if (v32 == 2)
        {
          if (v31 != 0x427373616C63)
          {
            goto LABEL_67;
          }
        }

        else if (v31 != 0x437373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v34 = 0x7269447373616C63;
      v33 = 0xEC000000656E6F4ELL;
      if (*(v0 + 443))
      {
        v33 = 0xE600000000000000;
        if (v31 != 0x417373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (*(v0 + 443) > 5u)
    {
      if (v32 == 6)
      {
        v33 = 0xE600000000000000;
        if (v31 != 0x467373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if (v32 == 7)
      {
        v33 = 0xE700000000000000;
        if (v31 != 0x58437373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v34 = 0x6365746F72506F6ELL;
      v33 = 0xEC0000006E6F6974;
LABEL_65:
      if (v31 != v34)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    v33 = 0xE600000000000000;
    if (v32 == 4)
    {
      if (v31 != 0x447373616C63)
      {
        goto LABEL_67;
      }
    }

    else if (v31 != 0x457373616C63)
    {
LABEL_67:
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        sub_10003FA60(v20, v22, *(v0 + 392), *(v0 + 400), (v0 + 1144));
      }

      goto LABEL_11;
    }

LABEL_66:
    if (v30 != v33)
    {
      goto LABEL_67;
    }

LABEL_11:

LABEL_12:
    v17 = fts_read(*(v0 + 1288));
    if (!v17)
    {
      goto LABEL_73;
    }
  }

  v83 = *(v0 + 1296);
  v84 = *(v0 + 1256);
  v85 = *(v0 + 1248);
  v86 = *(v0 + 440);
  *(v0 + 512) = *(v0 + 424);
  *(v0 + 528) = v86;
  *(v0 + 544) = *(v0 + 456);
  *(v0 + 560) = *(v0 + 472);
  v87 = *(v0 + 408);
  *(v0 + 480) = *(v0 + 392);
  *(v0 + 496) = v87;
  swift_beginAccess();
  *(v0 + 496) = v20;
  *(v0 + 504) = v22;
  sub_10003F37C(v85, v0 + 208);

  sub_100024DD8(v88, v89, v100);
  swift_endAccess();
  v90 = *(v0 + 528);
  *(v0 + 1040) = *(v0 + 512);
  *(v0 + 1056) = v90;
  *(v0 + 1072) = *(v0 + 544);
  *(v0 + 1088) = *(v0 + 560);
  v91 = *(v0 + 496);
  *v94 = *(v0 + 480);
  *(v0 + 1024) = v91;
  v92 = *(v84 + v83);
  sub_10000626C(v94, v0 + 568);
  v93 = swift_task_alloc();
  *(v0 + 1328) = v93;
  *v93 = v0;
  v93[1] = sub_10003A0B8;

  return sub_100024EA4(v92);
}

uint64_t sub_10003A0B8()
{
  v1 = *v0;

  sub_100005BFC(v1 + 1008);

  return _swift_task_switch(sub_10003A1E8, 0, 0);
}

uint64_t sub_10003A1E8(uint64_t a1)
{
  v2 = (v1 + 480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *(v1 + 1240) = v6;
    *v5 = 136446210;
    v7 = *(v1 + 528);
    *(v1 + 336) = *(v1 + 512);
    *(v1 + 352) = v7;
    *(v1 + 368) = *(v1 + 544);
    *(v1 + 384) = *(v1 + 560);
    v8 = *(v1 + 496);
    *(v1 + 304) = *v2;
    *(v1 + 320) = v8;
    sub_10000626C(v1 + 304, v1 + 920);
    v9 = sub_100003644();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_100005BFC(v1 + 304);
    if (v15)
    {

      v16 = sub_100005A2C(1, v9, v11, v13);
      v30 = v17;
      sub_100005C50(v9, v11, v13, 1);
      sub_100005C50(v9, v11, v13, 1);
      v9 = v16;
      v11 = v30;
    }

    v18 = sub_100005C68(v9, v11, (v1 + 1240));

    *(v5 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "VIOLATION %{public}s", v5, 0xCu);
    sub_100005E9C(v6);
  }

  if (*(v1 + 444))
  {
    v19 = swift_task_alloc();
    *(v1 + 1336) = v19;
    *(v19 + 16) = v1 + 1177;
    *(v19 + 24) = v1 + 1232;
    v20 = swift_task_alloc();
    *(v1 + 1344) = v20;
    *(v20 + 16) = v1 + 1177;
    *(v20 + 24) = v1 + 1232;
    v21 = swift_task_alloc();
    *(v1 + 1352) = v21;
    *v21 = v1;
    v21[1] = sub_10003A554;
    v22 = *(v1 + 1312);
    v23 = *(v1 + 1304);

    return sub_1000077A4(v23, v22, v1 + 392, &unk_100076ED8, v19, &unk_100076EE8, v20);
  }

  else
  {
    v25 = *(v1 + 1288);
    v26 = *(v1 + 1280);

    v27 = *(v1 + 528);
    *(v1 + 688) = *(v1 + 512);
    *(v1 + 704) = v27;
    *(v1 + 720) = *(v1 + 544);
    *(v1 + 736) = *(v1 + 560);
    v28 = *(v1 + 496);
    *(v1 + 656) = *v2;
    *(v1 + 672) = v28;
    sub_100005BFC(v1 + 656);
    fts_close(v25);
    free(v26);
    v29 = *(v1 + 8);

    return v29();
  }
}

uint64_t sub_10003A554()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2 = sub_10003B35C;
  }

  else
  {
    v2 = sub_10003A6B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003A6B8()
{
  v94 = v0;
  v91 = (v0 + 1232);
  v1 = *(v0 + 528);
  *(v0 + 864) = *(v0 + 512);
  *(v0 + 880) = v1;
  *(v0 + 896) = *(v0 + 544);
  *(v0 + 912) = *(v0 + 560);
  v2 = *(v0 + 496);
  *(v0 + 832) = *(v0 + 480);
  *(v0 + 848) = v2;
  sub_100005BFC(v0 + 832);

  v92 = *(v0 + 1360);
  v3 = fts_read(*(v0 + 1288));
  if (v3)
  {
    v89 = (v0 + 480);
    v90 = (v0 + 1008);
    v6 = (v0 + 1392);
    p_base_props = &AnalyticsSchemaV1.EnforcementTask.base_props;
    v8 = qword_1000B19C8;
    do
    {
      if (v3->fts_info != 8)
      {
        goto LABEL_5;
      }

      if (!v3->fts_path)
      {
        __break(1u);
      }

      v9 = String.init(cString:)();
      v11 = v10;
      *(v0 + 1304) = v9;
      *(v0 + 1312) = v10;
      if (p_base_props[53] != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      *(v0 + 1320) = sub_100002DB8(v12, v8);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v8;
        v16 = swift_slowAlloc();
        v17 = v6;
        v18 = p_base_props;
        v19 = swift_slowAlloc();
        v93[0] = v19;
        *v16 = 136315138;
        *(v16 + 4) = sub_100005C68(v9, v11, v93);
        _os_log_impl(&_mh_execute_header, v13, v14, "remediating file in dir: %s", v16, 0xCu);
        sub_100005E9C(v19);
        p_base_props = v18;
        v6 = v17;

        v8 = v15;
      }

      if ((v11 & 0x1000000000000000) == 0)
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          *(v0 + 1216) = v9;
          *(v0 + 1224) = v11 & 0xFFFFFFFFFFFFFFLL;
          *(v0 + 1388) = 0;
          if (get_protection_class((v0 + 1216), (v0 + 1388)))
          {
            goto LABEL_80;
          }

          v20 = *(v0 + 1388);
          goto LABEL_19;
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          *v6 = 0;
          if (get_protection_class(((v11 & 0xFFFFFFFFFFFFFFFLL) + 32), v6))
          {
            goto LABEL_80;
          }

          v20 = *v6;
          goto LABEL_19;
        }
      }

      sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
      _StringGuts._slowWithCString<A>(_:)();
      if (*(v0 + 1184))
      {
LABEL_80:

        v55 = errno.getter();
        v56 = v55;
        *(v0 + 1188) = v55;
        sub_100033644(v55, v57, v58);
        swift_willThrowTypedImpl();
        if (v56 == 2)
        {

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v93[0] = v62;
            *v61 = 136315138;
            v63 = sub_100005C68(v9, v11, v93);

            *(v61 + 4) = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "file at %s deleted before it could be processed", v61, 0xCu);
            sub_100005E9C(v62);
LABEL_86:

            goto LABEL_89;
          }

          goto LABEL_87;
        }

LABEL_84:

        v59 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v93[0] = v70;
          *v68 = 136315394;
          v71 = sub_100005C68(v9, v11, v93);

          *(v68 + 4) = v71;
          *(v68 + 12) = 2112;
          sub_100033644(v72, v73, v74);
          swift_allocError();
          *v75 = v56;
          v76 = _swift_stdlib_bridgeErrorToNSError();
          *(v68 + 14) = v76;
          *v69 = v76;
          _os_log_impl(&_mh_execute_header, v59, v67, "failed to get current protection class for %s: %@", v68, 0x16u);
          sub_100002CF0(v69, &qword_1000A4EC0, &qword_100076C00);

          sub_100005E9C(v70);
          goto LABEL_86;
        }

LABEL_87:

        goto LABEL_88;
      }

      v20 = *(v0 + 1180);
LABEL_19:
      if (ProtectionClass.init(value:)(v20).value == libdomainpolicy_ProtectionClass_unknownDefault)
      {

        v56 = 34;
        *(v0 + 1384) = 34;
        sub_100033644(v64, v65, v66);
        swift_willThrowTypedImpl();
        goto LABEL_84;
      }

      v21 = *(v0 + 442);
      if (!ProtectionClass.allowed(forMinimumProtection:)(*(v0 + 442)))
      {
        v78 = *(v0 + 1296);
        v79 = *(v0 + 1256);
        v80 = *(v0 + 1248);
        v81 = *(v0 + 440);
        *(v0 + 512) = *(v0 + 424);
        *(v0 + 528) = v81;
        *(v0 + 544) = *(v0 + 456);
        *(v0 + 560) = *(v0 + 472);
        v82 = *(v0 + 408);
        *v89 = *(v0 + 392);
        *(v0 + 496) = v82;
        swift_beginAccess();
        *(v0 + 496) = v9;
        *(v0 + 504) = v11;
        sub_10003F37C(v80, v0 + 208);

        sub_100024DD8(v83, v84, v96);
        swift_endAccess();
        v85 = *(v0 + 528);
        *(v0 + 1040) = *(v0 + 512);
        *(v0 + 1056) = v85;
        *(v0 + 1072) = *(v0 + 544);
        *(v0 + 1088) = *(v0 + 560);
        v86 = *(v0 + 496);
        *v90 = *v89;
        *(v0 + 1024) = v86;
        v87 = *(v79 + v78);
        sub_10000626C(v90, v0 + 568);
        v88 = swift_task_alloc();
        *(v0 + 1328) = v88;
        *v88 = v0;
        v88[1] = sub_10003A0B8;

        return sub_100024EA4(v87);
      }

      if (v21 <= 3)
      {
        if (v21 > 1)
        {
          v22 = 0xE600000000000000;
          if (v21 == 2)
          {
            v23 = 0x427373616C63;
          }

          else
          {
            v23 = 0x437373616C63;
          }
        }

        else
        {
          v23 = 0x7269447373616C63;
          v22 = 0xEC000000656E6F4ELL;
          if (v21)
          {
            v22 = 0xE600000000000000;
            v23 = 0x417373616C63;
          }
        }
      }

      else if (v21 <= 5)
      {
        v22 = 0xE600000000000000;
        if (v21 == 4)
        {
          v23 = 0x447373616C63;
        }

        else
        {
          v23 = 0x457373616C63;
        }
      }

      else if (v21 == 6)
      {
        v22 = 0xE600000000000000;
        v23 = 0x467373616C63;
      }

      else if (v21 == 7)
      {
        v22 = 0xE700000000000000;
        v23 = 0x58437373616C63;
      }

      else
      {
        v23 = 0x6365746F72506F6ELL;
        v22 = 0xEC0000006E6F6974;
      }

      v24 = *(v0 + 443);
      if (v24 <= 3)
      {
        if (*(v0 + 443) > 1u)
        {
          v25 = 0xE600000000000000;
          if (v24 == 2)
          {
            if (v23 != 0x427373616C63)
            {
              goto LABEL_60;
            }
          }

          else if (v23 != 0x437373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v26 = 0x7269447373616C63;
        v25 = 0xEC000000656E6F4ELL;
        if (*(v0 + 443))
        {
          v25 = 0xE600000000000000;
          if (v23 != 0x417373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

LABEL_58:
        if (v23 != v26)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      if (*(v0 + 443) > 5u)
      {
        if (v24 == 6)
        {
          v25 = 0xE600000000000000;
          if (v23 != 0x467373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        if (v24 == 7)
        {
          v25 = 0xE700000000000000;
          if (v23 != 0x58437373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v26 = 0x6365746F72506F6ELL;
        v25 = 0xEC0000006E6F6974;
        goto LABEL_58;
      }

      v25 = 0xE600000000000000;
      if (v24 == 4)
      {
        if (v23 != 0x447373616C63)
        {
          goto LABEL_60;
        }
      }

      else if (v23 != 0x457373616C63)
      {
        goto LABEL_60;
      }

LABEL_59:
      if (v22 == v25)
      {

LABEL_4:

        goto LABEL_5;
      }

LABEL_60:
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_4;
      }

      sub_10003FA60(v9, v11, *(v0 + 392), *(v0 + 400), (v0 + 1144));
      if (v92)
      {
        v28 = *(v0 + 1144);
        v29 = *(v0 + 1152);
        v30 = *(v0 + 1160);
        v31 = *(v0 + 1168);
        v32 = *(v0 + 1176);

        sub_100021030(v28, v29, v30, v31, v32);
        v33 = *(v0 + 1232);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          __break(1u);
          goto LABEL_97;
        }

        v92 = 0;
        *v91 = v35;
      }

      else
      {

        v92 = 0;
      }

LABEL_5:
      v3 = fts_read(*(v0 + 1288));
    }

    while (v3);
  }

  v36 = *v91;
  if (*v91 < 1)
  {
LABEL_88:

LABEL_89:
    v77 = *(v0 + 1280);
    fts_close(*(v0 + 1288));
    free(v77);
    v54 = *(v0 + 8);
    goto LABEL_90;
  }

  v37 = *(v0 + 1177);
  if (v37 == 2 || (v37 & 1) == 0)
  {
    v49 = *(v0 + 1272);
    v50 = *(v0 + 1264);
    v51 = *(v0 + 442);
    sub_10000EEA4(v3, v4, v5);
    swift_allocError();
    *v52 = v50;
    *(v52 + 8) = v49;
    *(v52 + 16) = v51;
    *(v52 + 24) = v36;
    *(v52 + 32) = 15;
    swift_willThrow();
    v53 = *(v0 + 1280);
    fts_close(*(v0 + 1288));
    free(v53);
    v54 = *(v0 + 8);
LABEL_90:

    return v54();
  }

  if (qword_1000A21A8 != -1)
  {
LABEL_97:
    swift_once();
  }

  v38 = *(v0 + 1248);
  v39 = type metadata accessor for Logger();
  sub_100002DB8(v39, qword_1000B19C8);
  sub_10003F37C(v38, v0 + 112);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  sub_10003F01C(v38);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 1272);
    v43 = *(v0 + 1264);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v93[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_100005C68(v43, v42, v93);
    _os_log_impl(&_mh_execute_header, v40, v41, "rescheduling directory %s", v44, 0xCu);
    sub_100005E9C(v45);
  }

  v46 = swift_task_alloc();
  *(v0 + 1368) = v46;
  *v46 = v0;
  v46[1] = sub_10003C014;
  v47 = *(v0 + 1248);

  return sub_1000363FC(v47);
}

uint64_t sub_10003B35C()
{
  v90 = v0;

  v1 = *(v0 + 528);
  *(v0 + 776) = *(v0 + 512);
  *(v0 + 792) = v1;
  *(v0 + 808) = *(v0 + 544);
  *(v0 + 824) = *(v0 + 560);
  v2 = *(v0 + 496);
  *(v0 + 744) = *(v0 + 480);
  *(v0 + 760) = v2;
  sub_100005BFC(v0 + 744);
  v3 = *(v0 + 1232);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    __break(1u);
    goto LABEL_95;
  }

  v87 = (v0 + 1232);
  *(v0 + 1232) = v5;

  v6 = fts_read(*(v0 + 1288));
  if (!v6)
  {
LABEL_67:
    v31 = *v87;
    if (*v87 < 1)
    {
LABEL_86:

LABEL_87:
      v72 = *(v0 + 1280);
      fts_close(*(v0 + 1288));
      free(v72);
      v49 = *(v0 + 8);
    }

    else
    {
      v32 = *(v0 + 1177);
      if (v32 != 2 && (v32 & 1) != 0)
      {

        if (qword_1000A21A8 == -1)
        {
LABEL_71:
          v33 = *(v0 + 1248);
          v34 = type metadata accessor for Logger();
          sub_100002DB8(v34, qword_1000B19C8);
          sub_10003F37C(v33, v0 + 112);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.debug.getter();
          sub_10003F01C(v33);
          if (os_log_type_enabled(v35, v36))
          {
            v37 = *(v0 + 1272);
            v38 = *(v0 + 1264);
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v89[0] = v40;
            *v39 = 136315138;
            *(v39 + 4) = sub_100005C68(v38, v37, v89);
            _os_log_impl(&_mh_execute_header, v35, v36, "rescheduling directory %s", v39, 0xCu);
            sub_100005E9C(v40);
          }

          v41 = swift_task_alloc();
          *(v0 + 1368) = v41;
          *v41 = v0;
          v41[1] = sub_10003C014;
          v42 = *(v0 + 1248);

          return sub_1000363FC(v42);
        }

LABEL_95:
        swift_once();
        goto LABEL_71;
      }

      v44 = *(v0 + 1272);
      v45 = *(v0 + 1264);
      v46 = *(v0 + 442);
      sub_10000EEA4(v6, v7, v8);
      swift_allocError();
      *v47 = v45;
      *(v47 + 8) = v44;
      *(v47 + 16) = v46;
      *(v47 + 24) = v31;
      *(v47 + 32) = 15;
      swift_willThrow();
      v48 = *(v0 + 1280);
      fts_close(*(v0 + 1288));
      free(v48);
      v49 = *(v0 + 8);
    }

    return v49();
  }

  v84 = v0 + 392;
  v85 = v0 + 480;
  v86 = v0 + 1008;
  v9 = (v0 + 1392);
  p_base_props = &AnalyticsSchemaV1.EnforcementTask.base_props;
  v11 = qword_1000B19C8;
  v88 = v0;
  while (1)
  {
    if (v6->fts_info != 8)
    {
      goto LABEL_6;
    }

    if (!v6->fts_path)
    {
      __break(1u);
    }

    v12 = String.init(cString:)();
    v14 = v13;
    *(v0 + 1304) = v12;
    *(v0 + 1312) = v13;
    if (p_base_props[53] != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    *(v0 + 1320) = sub_100002DB8(v15, v11);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v11;
      v19 = swift_slowAlloc();
      v20 = v9;
      v21 = p_base_props;
      v22 = swift_slowAlloc();
      v89[0] = v22;
      *v19 = 136315138;
      *(v19 + 4) = sub_100005C68(v12, v14, v89);
      _os_log_impl(&_mh_execute_header, v16, v17, "remediating file in dir: %s", v19, 0xCu);
      sub_100005E9C(v22);
      p_base_props = v21;
      v9 = v20;

      v11 = v18;
      v0 = v88;
    }

    if ((v14 & 0x1000000000000000) == 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        *(v0 + 1216) = v12;
        *(v0 + 1224) = v14 & 0xFFFFFFFFFFFFFFLL;
        *(v0 + 1388) = 0;
        if (get_protection_class((v0 + 1216), (v0 + 1388)))
        {
          goto LABEL_78;
        }

        v23 = *(v0 + 1388);
        goto LABEL_20;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        *v9 = 0;
        if (get_protection_class(((v14 & 0xFFFFFFFFFFFFFFFLL) + 32), v9))
        {
          goto LABEL_78;
        }

        v23 = *v9;
        goto LABEL_20;
      }
    }

    sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
    _StringGuts._slowWithCString<A>(_:)();
    if (*(v0 + 1184))
    {
LABEL_78:

      v50 = errno.getter();
      v51 = v50;
      *(v0 + 1188) = v50;
      sub_100033644(v50, v52, v53);
      swift_willThrowTypedImpl();
      if (v51 == 2)
      {

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v89[0] = v57;
          *v56 = 136315138;
          v58 = sub_100005C68(v12, v14, v89);

          *(v56 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v54, v55, "file at %s deleted before it could be processed", v56, 0xCu);
          sub_100005E9C(v57);
LABEL_84:

          goto LABEL_87;
        }

        goto LABEL_85;
      }

LABEL_82:

      v54 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v89[0] = v65;
        *v63 = 136315394;
        v66 = sub_100005C68(v12, v14, v89);

        *(v63 + 4) = v66;
        *(v63 + 12) = 2112;
        sub_100033644(v67, v68, v69);
        swift_allocError();
        *v70 = v51;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 14) = v71;
        *v64 = v71;
        _os_log_impl(&_mh_execute_header, v54, v62, "failed to get current protection class for %s: %@", v63, 0x16u);
        sub_100002CF0(v64, &qword_1000A4EC0, &qword_100076C00);

        sub_100005E9C(v65);
        goto LABEL_84;
      }

LABEL_85:

      goto LABEL_86;
    }

    v23 = *(v0 + 1180);
LABEL_20:
    if (ProtectionClass.init(value:)(v23).value == libdomainpolicy_ProtectionClass_unknownDefault)
    {

      v51 = 34;
      *(v0 + 1384) = 34;
      sub_100033644(v59, v60, v61);
      swift_willThrowTypedImpl();
      goto LABEL_82;
    }

    v24 = *(v0 + 442);
    if (!ProtectionClass.allowed(forMinimumProtection:)(*(v0 + 442)))
    {
      break;
    }

    if (v24 <= 3)
    {
      if (v24 > 1)
      {
        v25 = 0xE600000000000000;
        if (v24 == 2)
        {
          v26 = 0x427373616C63;
        }

        else
        {
          v26 = 0x437373616C63;
        }
      }

      else
      {
        v26 = 0x7269447373616C63;
        v25 = 0xEC000000656E6F4ELL;
        if (v24)
        {
          v25 = 0xE600000000000000;
          v26 = 0x417373616C63;
        }
      }
    }

    else if (v24 <= 5)
    {
      v25 = 0xE600000000000000;
      if (v24 == 4)
      {
        v26 = 0x447373616C63;
      }

      else
      {
        v26 = 0x457373616C63;
      }
    }

    else if (v24 == 6)
    {
      v25 = 0xE600000000000000;
      v26 = 0x467373616C63;
    }

    else if (v24 == 7)
    {
      v25 = 0xE700000000000000;
      v26 = 0x58437373616C63;
    }

    else
    {
      v26 = 0x6365746F72506F6ELL;
      v25 = 0xEC0000006E6F6974;
    }

    v27 = *(v0 + 443);
    if (v27 <= 3)
    {
      if (*(v0 + 443) > 1u)
      {
        v28 = 0xE600000000000000;
        if (v27 == 2)
        {
          if (v26 != 0x427373616C63)
          {
            goto LABEL_61;
          }
        }

        else if (v26 != 0x437373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v29 = 0x7269447373616C63;
      v28 = 0xEC000000656E6F4ELL;
      if (*(v0 + 443))
      {
        v28 = 0xE600000000000000;
        if (v26 != 0x417373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      goto LABEL_59;
    }

    if (*(v0 + 443) > 5u)
    {
      if (v27 == 6)
      {
        v28 = 0xE600000000000000;
        if (v26 != 0x467373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v27 == 7)
      {
        v28 = 0xE700000000000000;
        if (v26 != 0x58437373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v29 = 0x6365746F72506F6ELL;
      v28 = 0xEC0000006E6F6974;
LABEL_59:
      if (v26 != v29)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v28 = 0xE600000000000000;
    if (v27 == 4)
    {
      if (v26 != 0x447373616C63)
      {
        goto LABEL_61;
      }
    }

    else if (v26 != 0x457373616C63)
    {
LABEL_61:
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        sub_10003FA60(v12, v14, *(v0 + 392), *(v0 + 400), (v0 + 1144));

        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_60:
    if (v25 != v28)
    {
      goto LABEL_61;
    }

LABEL_5:

LABEL_6:
    v6 = fts_read(*(v0 + 1288));
    if (!v6)
    {
      goto LABEL_67;
    }
  }

  v73 = *(v0 + 1296);
  v74 = *(v0 + 1256);
  v75 = *(v0 + 1248);
  v76 = *(v84 + 48);
  *(v85 + 32) = *(v84 + 32);
  *(v85 + 48) = v76;
  *(v85 + 64) = *(v84 + 64);
  *(v85 + 80) = *(v84 + 80);
  v77 = *(v84 + 16);
  *v85 = *v84;
  *(v85 + 16) = v77;
  swift_beginAccess();
  *(v0 + 496) = v12;
  *(v0 + 504) = v14;
  sub_10003F37C(v75, v0 + 208);

  sub_100024DD8(v78, v79, v92);
  swift_endAccess();
  v80 = *(v85 + 48);
  *(v86 + 32) = *(v85 + 32);
  *(v86 + 48) = v80;
  *(v86 + 64) = *(v85 + 64);
  *(v86 + 80) = *(v85 + 80);
  v81 = *(v85 + 16);
  *v86 = *v85;
  *(v86 + 16) = v81;
  v82 = *(v74 + v73);
  sub_10000626C(v86, v0 + 568);
  v83 = swift_task_alloc();
  *(v0 + 1328) = v83;
  *v83 = v0;
  v83[1] = sub_10003A0B8;

  return sub_100024EA4(v82);
}

uint64_t sub_10003C014()
{
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v2 = sub_10003C1F0;
  }

  else
  {
    v2 = sub_10003C154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003C154()
{
  v1 = *(v0 + 1280);
  fts_close(*(v0 + 1288));
  free(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003C1F0()
{
  v1 = *(v0 + 1280);
  fts_close(*(v0 + 1288));
  free(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003C294(uint64_t a1)
{
  *(v2 + 2128) = v1;
  *(v2 + 2120) = a1;
  return _swift_task_switch(sub_10003C2B8, 0, 0);
}

uint64_t sub_10003C2B8()
{
  v1 = *(v0 + 2120);
  *(v0 + 464) = *v1;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *(v0 + 2096) = *(v1 + 72);
  *(v0 + 480) = v3;
  *(v0 + 488) = v2;
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  *(v0 + 544) = *(v1 + 80);
  *(v0 + 512) = v5;
  *(v0 + 528) = v6;
  *(v0 + 496) = v4;
  v7._countAndFlagsBits = sub_10003F37C(v1, v0 + 16);
  ScanningCommand.init(_:_:)(v7, v8);
  ProtectionDomainIndex.find(_:)(v3, v2, v0 + 1960);
  if (*(v0 + 1984))
  {
    sub_100006B04(v0 + 1960, v0 + 2032);
    sub_10001139C(v0 + 1960);
    v9 = *(v0 + 2056);
    v10 = *(v0 + 2064);
    sub_100006978((v0 + 2032), v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_100005E9C((v0 + 2032));
    sub_100002CF0(v0 + 2096, &qword_1000A25C0, &qword_100074D80);
  }

  else
  {
    sub_100002CF0(v0 + 1960, &qword_1000A25B8, &unk_100074610);
    sub_100002CF0(v0 + 2096, &qword_1000A25C0, &qword_100074D80);
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v0 + 2128);
  *(v0 + 536) = v11;
  *(v0 + 544) = v13;
  v15 = *(v0 + 512);
  *(v0 + 1288) = *(v0 + 496);
  *(v0 + 1304) = v15;
  v16 = *(v0 + 480);
  *(v0 + 1256) = *(v0 + 464);
  *(v0 + 1272) = v16;
  *(v0 + 1320) = *(v0 + 528);
  *(v0 + 1336) = *(v0 + 544);
  v17 = *(v14 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);
  v18 = swift_task_alloc();
  *(v0 + 2136) = v18;
  *v18 = v0;
  v18[1] = sub_10003C494;

  return sub_100024EA4(v17);
}

uint64_t sub_10003C494()
{

  return _swift_task_switch(sub_10003C590, 0, 0);
}

uint64_t sub_10003C590()
{
  v33 = v0;
  v1 = (v0 + 464);
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 2144) = sub_100002DB8(v2, qword_1000B19C8);
  v3 = *(v0 + 512);
  *(v0 + 232) = *(v0 + 496);
  *(v0 + 248) = v3;
  *(v0 + 264) = *(v0 + 528);
  *(v0 + 280) = *(v0 + 544);
  v4 = *(v0 + 480);
  *(v0 + 200) = *v1;
  *(v0 + 216) = v4;
  sub_10000626C(v0 + 200, v0 + 552);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100005BFC(v0 + 200);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136446210;
    v9 = sub_100003644();
    v12 = v10;
    if (v13)
    {
      v14 = v9;
      v15 = v11;
      v16 = sub_100005A2C(1, v9, v10, v11);
      v31 = v17;
      sub_100005C50(v14, v12, v15, 1);
      v9 = v16;
      v12 = v31;
    }

    v18 = sub_100005C68(v9, v12, &v32);

    *(v7 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "VIOLATION %{public}s", v7, 0xCu);
    sub_100005E9C(v8);
  }

  if (*(v0 + 252))
  {
    v19 = *(v0 + 2128);
    v20 = *(v0 + 2120);
    v21 = *(v0 + 216);
    v22 = *(v0 + 224);
    swift_beginAccess();
    v23 = *(v0 + 512);
    *(v0 + 320) = *(v0 + 496);
    *(v0 + 336) = v23;
    *(v0 + 352) = *(v0 + 528);
    *(v0 + 368) = *(v0 + 544);
    v24 = *(v0 + 480);
    *(v0 + 288) = *v1;
    *(v0 + 304) = v24;
    v25 = swift_task_alloc();
    *(v0 + 2152) = v25;
    *(v25 + 16) = v19;
    *(v25 + 24) = v20;
    sub_10000626C(v0 + 288, v0 + 816);
    v26 = swift_task_alloc();
    *(v0 + 2160) = v26;
    *v26 = v0;
    v26[1] = sub_10003C8E0;

    return sub_1000077A4(v21, v22, v0 + 288, &unk_100076F10, v25, &unk_100076F18, 0);
  }

  else
  {
    v28 = *(v0 + 512);
    *(v0 + 672) = *(v0 + 496);
    *(v0 + 688) = v28;
    *(v0 + 704) = *(v0 + 528);
    *(v0 + 720) = *(v0 + 544);
    v29 = *(v0 + 480);
    *(v0 + 640) = *v1;
    *(v0 + 656) = v29;
    sub_100005BFC(v0 + 640);
    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_10003C8E0(char a1)
{
  v4 = *v2;
  *(*v2 + 2168) = v1;

  if (v1)
  {
    sub_100005BFC(v4 + 288);
    v5 = *(v4 + 512);
    *(v4 + 936) = *(v4 + 496);
    *(v4 + 952) = v5;
    *(v4 + 968) = *(v4 + 528);
    *(v4 + 984) = *(v4 + 544);
    v6 = *(v4 + 480);
    *(v4 + 904) = *(v4 + 464);
    *(v4 + 920) = v6;
    sub_100005BFC(v4 + 904);
    v7 = sub_10003D42C;
  }

  else
  {
    *(v4 + 2188) = a1 & 1;
    sub_100005BFC(v4 + 288);

    v7 = sub_10003CA50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003CA50()
{
  v85 = v0;
  v1 = (v0 + 464);
  if (*(v0 + 2188) != 1)
  {
    v9 = *(v0 + 496);
    *(v0 + 1040) = *(v0 + 512);
    *(v0 + 1056) = *(v0 + 528);
    *(v0 + 1072) = *(v0 + 544);
    v10 = *(v0 + 480);
    *(v0 + 992) = *v1;
    *(v0 + 1008) = v10;
    *(v0 + 1024) = v9;
    v11 = v0 + 992;
    goto LABEL_6;
  }

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);

  v4 = sub_10005A65C(v3, v2);
  if (HIDWORD(v4))
  {
    v5 = errno.getter();
    v8 = v5;
    *(v0 + 2180) = v5;
    goto LABEL_8;
  }

  LOBYTE(v5) = ProtectionClass.init(value:)(v4);
  if (v5 == 9)
  {
    v8 = 34;
    *(v0 + 2176) = 34;
LABEL_8:
    sub_100033644(v5, v6, v7);
    swift_willThrowTypedImpl();
    v12 = swift_allocError();
    *v13 = v8;
    goto LABEL_9;
  }

  if (sub_1000301D0(v5, *(v0 + 338)))
  {
    v33 = *(v0 + 496);
    v34 = *(v0 + 512);
    *(v0 + 1112) = v33;
    *(v0 + 1128) = v34;
    v35 = *(v0 + 528);
    *(v0 + 1144) = v35;
    v36 = *(v0 + 544);
    *(v0 + 1160) = v36;
    v37 = *v1;
    v38 = *(v0 + 480);
    *(v0 + 1080) = *v1;
    *(v0 + 1096) = v38;
    *(v0 + 1216) = v34;
    *(v0 + 1232) = v35;
    *(v0 + 1184) = v38;
    *(v0 + 1200) = v33;
    *(v0 + 1248) = v36;
    *(v0 + 1168) = v37;
    sub_10000626C(v0 + 1080, v0 + 728);
    sub_10000626C(v0 + 1168, v0 + 376);
    v16 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    sub_100005BFC(v0 + 1168);
    if (os_log_type_enabled(v16, v39))
    {
      v40 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v40 = 136315394;
      v41 = *(v0 + 1096);
      v42 = *(v0 + 1104);

      sub_100005BFC(v0 + 1080);
      v43 = sub_100005C68(v41, v42, v84);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = *(v0 + 1218);
      sub_100005BFC(v0 + 1168);
      if (v44 <= 3)
      {
        v72 = 0x7269447373616C63;
        v73 = 0xEC000000656E6F4ELL;
        v74 = 0x427373616C63;
        if (v44 != 2)
        {
          v74 = 0x437373616C63;
        }

        if (v44)
        {
          v72 = 0x417373616C63;
          v73 = 0xE600000000000000;
        }

        if (v44 <= 1)
        {
          v45 = v72;
        }

        else
        {
          v45 = v74;
        }

        if (v44 <= 1)
        {
          v46 = v73;
        }

        else
        {
          v46 = 0xE600000000000000;
        }
      }

      else if (v44 <= 5)
      {
        if (v44 == 4)
        {
          v45 = 0x447373616C63;
        }

        else
        {
          v45 = 0x457373616C63;
        }

        v46 = 0xE600000000000000;
      }

      else if (v44 == 6)
      {
        v46 = 0xE600000000000000;
        v45 = 0x467373616C63;
      }

      else
      {
        if (v44 == 7)
        {
          v45 = 0x58437373616C63;
        }

        else
        {
          v45 = 0x6365746F72506F6ELL;
        }

        if (v44 == 7)
        {
          v46 = 0xE700000000000000;
        }

        else
        {
          v46 = 0xEC0000006E6F6974;
        }
      }

      v80 = sub_100005C68(v45, v46, v84);

      *(v40 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v16, v39, "set %s to protectionClass: %s", v40, 0x16u);
      swift_arrayDestroy();

      goto LABEL_72;
    }

    sub_100005BFC(v0 + 1080);
    v11 = v0 + 1168;
LABEL_6:
    sub_100005BFC(v11);
    goto LABEL_74;
  }

  v47 = *(v0 + 496);
  v48 = *(v0 + 512);
  *(v0 + 1904) = v47;
  *(v0 + 1920) = v48;
  v49 = *(v0 + 528);
  *(v0 + 1936) = v49;
  v50 = *(v0 + 544);
  *(v0 + 1952) = v50;
  v51 = *v1;
  v52 = *(v0 + 480);
  *(v0 + 1872) = *v1;
  *(v0 + 1888) = v52;
  *(v0 + 1832) = v48;
  *(v0 + 1848) = v49;
  *(v0 + 1800) = v52;
  *(v0 + 1816) = v47;
  *(v0 + 1864) = v50;
  *(v0 + 1784) = v51;
  v53 = *(v0 + 1800);
  v54 = *(v0 + 1808);
  v55 = *(v0 + 1834);
  sub_10000626C(v0 + 1872, v0 + 112);
  sub_10000626C(v0 + 1784, v0 + 1696);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  sub_100005BFC(v0 + 1872);
  sub_100005BFC(v0 + 1784);
  if (os_log_type_enabled(v56, v57))
  {
    v83 = v53;
    v58 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v58 = 136315394;
    v59 = *(v0 + 1888);
    v60 = *(v0 + 1896);

    v61 = sub_100005C68(v59, v60, v84);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2082;
    if (v55 <= 3)
    {
      v75 = 0x7269447373616C63;
      v76 = 0xEC000000656E6F4ELL;
      v77 = 0x427373616C63;
      if (v55 != 2)
      {
        v77 = 0x437373616C63;
      }

      if (v55)
      {
        v75 = 0x417373616C63;
        v76 = 0xE600000000000000;
      }

      if (v55 <= 1)
      {
        v67 = v75;
      }

      else
      {
        v67 = v77;
      }

      if (v55 <= 1)
      {
        v68 = v76;
      }

      else
      {
        v68 = 0xE600000000000000;
      }
    }

    else
    {
      v62 = 0xE600000000000000;
      v63 = 0x467373616C63;
      v64 = 0xE700000000000000;
      v65 = 0x58437373616C63;
      if (v55 != 7)
      {
        v65 = 0x6365746F72506F6ELL;
        v64 = 0xEC0000006E6F6974;
      }

      if (v55 != 6)
      {
        v63 = v65;
        v62 = v64;
      }

      v66 = 0x447373616C63;
      if (v55 != 4)
      {
        v66 = 0x457373616C63;
      }

      if (v55 <= 5)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      if (v55 <= 5)
      {
        v68 = 0xE600000000000000;
      }

      else
      {
        v68 = v62;
      }
    }

    v78 = sub_100005C68(v67, v68, v84);

    *(v58 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v56, v57, "setProtectionClass(for: %s, protection: %{public}s) returned 0, but did not actually change the effective class", v58, 0x16u);
    swift_arrayDestroy();

    v53 = v83;
  }

  else
  {
  }

  sub_10000EEA4(v69, v70, v71);
  v12 = swift_allocError();
  *v79 = v53;
  *(v79 + 8) = v54;
  *(v79 + 16) = v55;
  *(v79 + 24) = 0;
  *(v79 + 32) = 14;
  swift_willThrow();
LABEL_9:
  *(v0 + 2112) = v12;
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if (swift_dynamicCast() && *(v0 + 2184) == 2)
  {

    v14 = *(v0 + 512);
    *(v0 + 1552) = *(v0 + 496);
    *(v0 + 1568) = v14;
    *(v0 + 1584) = *(v0 + 528);
    *(v0 + 1600) = *(v0 + 544);
    v15 = *(v0 + 480);
    *(v0 + 1520) = *v1;
    *(v0 + 1536) = v15;
    sub_10000626C(v0 + 1520, v0 + 1608);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    sub_100005BFC(v0 + 1520);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v84[0] = v19;
      *v18 = 136315138;
      v20 = *(v0 + 1536);
      v21 = *(v0 + 1544);

      sub_100005BFC(v0 + 1520);
      v22 = sub_100005C68(v20, v21, v84);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "getProtectionClass(for: %s) skipped: file no longer exists", v18, 0xCu);
      sub_100005E9C(v19);

LABEL_72:

      goto LABEL_73;
    }

    v11 = v0 + 1520;
    goto LABEL_6;
  }

  v23 = *(v0 + 512);
  *(v0 + 1376) = *(v0 + 496);
  *(v0 + 1392) = v23;
  *(v0 + 1408) = *(v0 + 528);
  *(v0 + 1424) = *(v0 + 544);
  v24 = *(v0 + 480);
  *(v0 + 1344) = *v1;
  *(v0 + 1360) = v24;
  swift_errorRetain();
  sub_10000626C(v0 + 1344, v0 + 1432);
  v16 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  sub_100005BFC(v0 + 1344);

  if (!os_log_type_enabled(v16, v25))
  {

    sub_100005BFC(v0 + 1344);

    goto LABEL_74;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v84[0] = v28;
  *v26 = 136315394;
  v29 = *(v0 + 1360);
  v30 = *(v0 + 1368);

  sub_100005BFC(v0 + 1344);
  v31 = sub_100005C68(v29, v30, v84);

  *(v26 + 4) = v31;
  *(v26 + 12) = 2112;
  swift_errorRetain();
  v32 = _swift_stdlib_bridgeErrorToNSError();
  *(v26 + 14) = v32;
  *v27 = v32;
  _os_log_impl(&_mh_execute_header, v16, v25, "getProtectionClass(for: %s) failed: errno(%@)", v26, 0x16u);
  sub_100002CF0(v27, &qword_1000A4EC0, &qword_100076C00);

  sub_100005E9C(v28);

LABEL_73:

LABEL_74:
  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_10003D42C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003D4B0, 0, 0);
}

uint64_t sub_10003D4B0()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = (**(v0 + 16) == 2) | **(v0 + 16) & 1;
  v2 = *v1;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    **(v0 + 24) = v4;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_10003D4FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003D51C, 0, 0);
}

uint64_t sub_10003D51C()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = 0;
  v2 = *v1;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    **(v0 + 24) = v4;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_10003D554(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DBBC;

  return sub_1000363FC(a2);
}