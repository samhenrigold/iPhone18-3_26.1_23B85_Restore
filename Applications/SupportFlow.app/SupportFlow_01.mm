unint64_t sub_10001A71C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174FB8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001A768(char a1)
{
  result = 0x5349445F49464957;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10001A8D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001A71C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001A908@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001A768(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001A934@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E7240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001A994()
{
  result = qword_100189778;
  if (!qword_100189778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189778);
  }

  return result;
}

unint64_t sub_10001A9E8()
{
  result = qword_100189780;
  if (!qword_100189780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189780);
  }

  return result;
}

uint64_t sub_10001AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10001AAA4()
{
  result = qword_100189788;
  if (!qword_100189788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189788);
  }

  return result;
}

unint64_t sub_10001AAF8()
{
  result = qword_100189790;
  if (!qword_100189790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189790);
  }

  return result;
}

unint64_t sub_10001AB50()
{
  result = qword_100189798;
  if (!qword_100189798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189798);
  }

  return result;
}

unint64_t sub_10001ABA4()
{
  result = qword_1001897A0;
  if (!qword_1001897A0)
  {
    type metadata accessor for WiFiFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897A0);
  }

  return result;
}

unint64_t sub_10001ABFC()
{
  result = qword_1001897B0;
  if (!qword_1001897B0)
  {
    sub_100004D48(&qword_1001897A8, &qword_100122EA8);
    sub_10001AC88();
    sub_10001AF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897B0);
  }

  return result;
}

unint64_t sub_10001AC88()
{
  result = qword_1001897B8;
  if (!qword_1001897B8)
  {
    sub_100004D48(&qword_1001897C0, &qword_100122EB0);
    sub_10001AD14();
    sub_10001AE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897B8);
  }

  return result;
}

unint64_t sub_10001AD14()
{
  result = qword_1001897C8;
  if (!qword_1001897C8)
  {
    sub_100004D48(&qword_1001897D0, &qword_100122EB8);
    sub_10001ADA0();
    sub_10001ADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897C8);
  }

  return result;
}

unint64_t sub_10001ADA0()
{
  result = qword_1001897D8;
  if (!qword_1001897D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897D8);
  }

  return result;
}

unint64_t sub_10001ADF4()
{
  result = qword_1001897E0;
  if (!qword_1001897E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897E0);
  }

  return result;
}

unint64_t sub_10001AE48()
{
  result = qword_1001897E8;
  if (!qword_1001897E8)
  {
    sub_100004D48(&qword_1001897F0, &qword_100122EC0);
    sub_10001AED4();
    sub_10001AF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897E8);
  }

  return result;
}

unint64_t sub_10001AED4()
{
  result = qword_1001897F8;
  if (!qword_1001897F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001897F8);
  }

  return result;
}

unint64_t sub_10001AF28()
{
  result = qword_100189800;
  if (!qword_100189800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189800);
  }

  return result;
}

unint64_t sub_10001AF7C()
{
  result = qword_100189808;
  if (!qword_100189808)
  {
    sub_100004D48(&qword_100189810, &qword_100122EC8);
    sub_10001B008();
    sub_10001B13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189808);
  }

  return result;
}

unint64_t sub_10001B008()
{
  result = qword_100189818;
  if (!qword_100189818)
  {
    sub_100004D48(&qword_100189820, &qword_100122ED0);
    sub_10001B094();
    sub_10001B0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189818);
  }

  return result;
}

unint64_t sub_10001B094()
{
  result = qword_100189828;
  if (!qword_100189828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189828);
  }

  return result;
}

unint64_t sub_10001B0E8()
{
  result = qword_100189830;
  if (!qword_100189830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189830);
  }

  return result;
}

unint64_t sub_10001B13C()
{
  result = qword_100189838;
  if (!qword_100189838)
  {
    sub_100004D48(&qword_100189840, &qword_100122ED8);
    sub_10001B1C8();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189838);
  }

  return result;
}

unint64_t sub_10001B1C8()
{
  result = qword_100189848;
  if (!qword_100189848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189848);
  }

  return result;
}

unint64_t sub_10001B21C()
{
  result = qword_100189850;
  if (!qword_100189850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189850);
  }

  return result;
}

unint64_t sub_10001B270()
{
  result = qword_100189858;
  if (!qword_100189858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189858);
  }

  return result;
}

unint64_t sub_10001B2C8()
{
  result = qword_100189860;
  if (!qword_100189860)
  {
    sub_100004D48(&qword_100189868, &unk_100122EE0);
    sub_10001ABFC();
    sub_10001B270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189860);
  }

  return result;
}

uint64_t sub_10001B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10001B42C(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10001B448()
{
}

uint64_t sub_10001B460(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10001B48C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A56B0 = result;
  *algn_1001A56B8 = v3;
  return result;
}

uint64_t sub_10001B5AC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A56C0 = result;
  *algn_1001A56C8 = v3;
  return result;
}

unint64_t sub_10001B6EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001750B0, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001B738(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10001B840@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B6EC(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsStepProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleAccountServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x10001B9C4);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001B9FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B738(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001BA2C()
{
  result = qword_100189870;
  if (!qword_100189870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189870);
  }

  return result;
}

uint64_t sub_10001BAD0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;

  return v7;
}

unint64_t sub_10001BB68()
{
  result = qword_100189878;
  if (!qword_100189878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189878);
  }

  return result;
}

uint64_t sub_10001BBBC(uint64_t a1)
{
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001BDA0(a1, v4);
  if (sub_10000E5F0(v4, 1, v5) == 1)
  {
    return sub_10001BE10(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v12 setSensitive:1];
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    [v11 openURL:v14 configuration:v12 completionHandler:0];
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001BDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BE10(uint64_t a1)
{
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001BE78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175238, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001BEC4(char a1)
{
  if (!a1)
  {
    return 0x615065676E616863;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6573616863727570;
}

unint64_t sub_10001BF5C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001BE78(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001BF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001BEC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001BFB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001BFE4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_100188130 != -1)
      {
        swift_once();
      }

      v2 = 0xD000000000000043;
      v3 = 0x8000000100134150;
      v4 = &qword_100189890;
    }

    else
    {
      if (qword_100188138 != -1)
      {
        swift_once();
      }

      v2 = 0;
      v3 = 0;
      v4 = &qword_1001898A0;
    }
  }

  else
  {
    if (qword_100188128 != -1)
    {
      swift_once();
    }

    v3 = 0x80000001001341A0;
    v2 = 0xD00000000000004ALL;
    v4 = &qword_100189880;
  }

  v6 = *v4;
  v5 = v4[1];

  v9 = &type metadata for PurchasesActionInfoType;
  v10 = sub_10001C46C();
  v8[0] = a1;
  return sub_1000ED910(v6, v5, v2, v3, v8);
}

uint64_t sub_10001C154()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100189880 = result;
  *algn_100189888 = v3;
  return result;
}

uint64_t sub_10001C25C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100189890 = result;
  *algn_100189898 = v3;
  return result;
}

uint64_t sub_10001C364()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001898A0 = result;
  *algn_1001898A8 = v3;
  return result;
}

unint64_t sub_10001C46C()
{
  result = qword_1001898B0;
  if (!qword_1001898B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleAccountPlacardInfoItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PurchasesActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001C614);
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

unint64_t sub_10001C64C(uint64_t a1)
{
  result = sub_10001C46C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001C678()
{
  result = qword_1001898B8;
  if (!qword_1001898B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898B8);
  }

  return result;
}

unint64_t sub_10001C6CC(uint64_t a1)
{
  result = sub_10001C6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001C6F4()
{
  result = qword_1001898C0;
  if (!qword_1001898C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisabledAccountStepProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisabledAccountStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10001C89CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001C8F0(char a1)
{
  switch(a1)
  {
    case 1:
      sub_10001D8C0();
      v44 = v13 + 5;
      v45 = v12;
      v46 = xmmword_100123260;
      v47 = 1;
      sub_10001D460();
      v14 = sub_10001D4B4();
      sub_10001D950(v14, &type metadata for DisabledAccountStepIssueListView, &type metadata for DisabledAccountStepSecurityLockedView, v15, v14, v16, v17, v18, v42);
      sub_10001D938();
      sub_100003768(&qword_100189918, &qword_100123400);
      sub_100003768(&qword_100189938, &qword_100123408);
      sub_10001D3D4();
      sub_10001D508();
      sub_10001D8D4();
      sub_10001D92C();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_9;
    case 2:
    case 5:
      sub_1000D2994(a1);
      v44 = v1;
      v45 = v2;
      LOBYTE(v46) = 0;
      sub_10001B21C();
      v3 = sub_10001D2F4();
      sub_10001D950(v3, &_s18ContactSupportViewVN, &type metadata for DisabledAccountStepAccountRecoveryView, v4, v3, v5, v6, v7, v42);
      sub_10001D96C();
      v56 = 1;
      goto LABEL_7;
    case 3:
      sub_10001D8C0();
      v52[0] = v36 | 4;
      v52[1] = v35;
      v53 = 2;
      v54 = 0;
      sub_10001D594();
      sub_10001D5E8();
      _ConditionalContent<>.init(storage:)();
      sub_10001D910(v43);
      v55 = 1;
      sub_100003768(&qword_100189918, &qword_100123400);
      sub_10001D980();
      sub_10001D3D4();
      sub_10001D508();
      v37 = sub_10001D8D4();
      sub_10001D8F4(v37);
      sub_10001D92C();
      sub_10001D724(v38, v39, v40);
LABEL_9:
      sub_10001D910(&v44);
      v56 = 0;
      sub_10001D980();
      sub_100003768(&qword_100189900, &qword_1001233F8);
      sub_10001D348();
      sub_10001D63C();
      v41 = sub_10001D8E4();
      sub_10001D8F4(v41);
      sub_10001D92C();
      goto LABEL_10;
    case 4:
      v51 = 0;
      v50 = 0u;
      v49 = 0u;
      strcpy(v48, "UNLOCK_ACCOUNT");
      v48[15] = -18;
      sub_10001D6C8(v48, v52);
      v54 = 1;
      sub_10001D594();
      sub_10001D5E8();
      _ConditionalContent<>.init(storage:)();
      sub_10001D910(v43);
      v55 = 1;
      sub_100003768(&qword_100189918, &qword_100123400);
      sub_10001D980();
      sub_10001D3D4();
      sub_10001D508();
      v19 = sub_10001D8D4();
      sub_10001D8F4(v19);
      sub_10001D92C();
      sub_10001D724(v20, v21, v22);
      sub_10001D910(&v44);
      v56 = 0;
      sub_10001D980();
      sub_100003768(&qword_100189900, &qword_1001233F8);
      sub_10001D348();
      sub_10001D63C();
      v23 = sub_10001D8E4();
      sub_10001D8F4(v23);
      sub_10001D92C();
      sub_10001D724(v24, v25, v26);
      return sub_10001D784(v48);
    case 6:
      sub_10001D8C0();
      v44 = v29 + 6;
      v45 = v28;
      LOBYTE(v46) = 1;
      sub_10001B21C();
      v30 = sub_10001D2F4();
      sub_10001D950(v30, &_s18ContactSupportViewVN, &type metadata for DisabledAccountStepAccountRecoveryView, v31, v30, v32, v33, v34, v42);
      sub_10001D96C();
      v56 = 1;
LABEL_7:
      sub_100003768(&qword_1001898F8, &qword_1001233F0);
      sub_100003768(&qword_100189900, &qword_1001233F8);
      sub_10001D348();
      sub_10001D63C();
      sub_10001D8E4();
      sub_10001D92C();
      result = _ConditionalContent<>.init(storage:)();
      break;
    default:
      type metadata accessor for DisabledAccountFlowViewModel(0);
      sub_10001D7D8();
      v44 = Environment.init<A>(_:)();
      v45 = v8 & 1;
      *&v46 = 0xD00000000000001BLL;
      *(&v46 + 1) = 0x8000000100132A10;
      v47 = 0;
      sub_10001D460();
      sub_10001D4B4();

      _ConditionalContent<>.init(storage:)();
      sub_10001D938();
      sub_100003768(&qword_100189918, &qword_100123400);
      sub_100003768(&qword_100189938, &qword_100123408);
      sub_10001D3D4();
      sub_10001D508();
      sub_10001D8D4();
      _ConditionalContent<>.init(storage:)();
      sub_100006578(&v44, v52, &qword_1001898F8, &qword_1001233F0);
      v56 = 0;
      sub_100003768(&qword_1001898F8, &qword_1001233F0);
      sub_100003768(&qword_100189900, &qword_1001233F8);
      sub_10001D348();
      sub_10001D63C();
      sub_10001D8E4();
      _ConditionalContent<>.init(storage:)();

      v9 = &v44;
      v10 = &qword_1001898F8;
      v11 = &qword_1001233F0;
LABEL_10:
      result = sub_10001D724(v9, v10, v11);
      break;
  }

  return result;
}

unint64_t sub_10001CE98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001752A0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001CEE4(char a1)
{
  result = 0x63416B636F6C6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000029;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

unint64_t sub_10001D028@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CE98(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001D058@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001CEE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10001D084(uint64_t *a1@<X8>)
{
  sub_1000E7888(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10001D0E4()
{
  result = qword_1001898C8;
  if (!qword_1001898C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898C8);
  }

  return result;
}

unint64_t sub_10001D138()
{
  result = qword_1001898D0;
  if (!qword_1001898D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898D0);
  }

  return result;
}

uint64_t sub_10001D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10001D1F4()
{
  result = qword_1001898D8;
  if (!qword_1001898D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898D8);
  }

  return result;
}

unint64_t sub_10001D248()
{
  result = qword_1001898E0;
  if (!qword_1001898E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898E0);
  }

  return result;
}

unint64_t sub_10001D2A0()
{
  result = qword_1001898E8;
  if (!qword_1001898E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898E8);
  }

  return result;
}

unint64_t sub_10001D2F4()
{
  result = qword_1001898F0;
  if (!qword_1001898F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001898F0);
  }

  return result;
}

unint64_t sub_10001D348()
{
  result = qword_100189908;
  if (!qword_100189908)
  {
    sub_100004D48(&qword_1001898F8, &qword_1001233F0);
    sub_10001D3D4();
    sub_10001D508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189908);
  }

  return result;
}

unint64_t sub_10001D3D4()
{
  result = qword_100189910;
  if (!qword_100189910)
  {
    sub_100004D48(&qword_100189918, &qword_100123400);
    sub_10001D460();
    sub_10001D4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189910);
  }

  return result;
}

unint64_t sub_10001D460()
{
  result = qword_100189920;
  if (!qword_100189920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189920);
  }

  return result;
}

unint64_t sub_10001D4B4()
{
  result = qword_100189928;
  if (!qword_100189928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189928);
  }

  return result;
}

unint64_t sub_10001D508()
{
  result = qword_100189930;
  if (!qword_100189930)
  {
    sub_100004D48(&qword_100189938, &qword_100123408);
    sub_10001D594();
    sub_10001D5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189930);
  }

  return result;
}

unint64_t sub_10001D594()
{
  result = qword_100189940;
  if (!qword_100189940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189940);
  }

  return result;
}

unint64_t sub_10001D5E8()
{
  result = qword_100189948;
  if (!qword_100189948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189948);
  }

  return result;
}

unint64_t sub_10001D63C()
{
  result = qword_100189950;
  if (!qword_100189950)
  {
    sub_100004D48(&qword_100189900, &qword_1001233F8);
    sub_10001B21C();
    sub_10001D2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189950);
  }

  return result;
}

uint64_t sub_10001D724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003768(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10001D7D8()
{
  result = qword_100189958;
  if (!qword_100189958)
  {
    type metadata accessor for DisabledAccountFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189958);
  }

  return result;
}

unint64_t sub_10001D834()
{
  result = qword_100189960;
  if (!qword_100189960)
  {
    sub_100004D48(&qword_100189968, &unk_100123410);
    sub_10001D348();
    sub_10001D63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189960);
  }

  return result;
}

uint64_t sub_10001D8F4(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10001D910(uint64_t a1)
{

  return sub_100006578(a1, v3 - 128, v1, v2);
}

__n128 sub_10001D938()
{
  v2 = *(v1 - 96);
  result = *v0;
  v4 = *(v0 + 16);
  *v0 = *v0;
  *(v0 + 16) = v4;
  *(v1 - 96) = v2;
  *(v1 - 71) = 0;
  return result;
}

uint64_t sub_10001D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return _ConditionalContent<>.init(storage:)();
}

__n128 sub_10001D96C()
{
  v2 = *(v1 - 112);
  result = *v0;
  *v0 = *v0;
  *(v1 - 112) = v2;
  return result;
}

uint64_t sub_10001D980()
{

  return sub_100003768(v0, v1);
}

uint64_t sub_10001D998()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A56D0 = result;
  *algn_1001A56D8 = v3;
  return result;
}

uint64_t sub_10001DAB8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A56E0 = result;
  *algn_1001A56E8 = v3;
  return result;
}

unint64_t sub_10001DBD8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175368, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001DC24(char a1)
{
  result = 16967;
  switch(a1)
  {
    case 1:
      result = 21825;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 1094939238;
      break;
    case 4:
      result = 23118;
      break;
    case 5:
      result = 17737;
      break;
    case 6:
      result = 20041;
      break;
    case 7:
      result = 18259;
      break;
    case 8:
      result = 20035;
      break;
    case 9:
      result = 21577;
      break;
    case 10:
      result = 17732;
      break;
    case 11:
      result = 18499;
      break;
    case 12:
      result = 21317;
      break;
    case 13:
      result = 22605;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10001DD2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001DBD8(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppStoreServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x10001DE28);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001DE60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001DC24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001DE90()
{
  result = qword_100189970;
  if (!qword_100189970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189970);
  }

  return result;
}

uint64_t sub_10001DF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v11 = (v10 - v9);
  v12 = type metadata accessor for BatterySuggestion(0);
  __chkstk_darwin(v12);
  sub_10000C30C();
  v15 = v14 - v13;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_100083754(0x656C746954, 0xE500000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = sub_10001E894(*(a1 + 56) + 32 * v16, v54);
  if ((sub_10001ECBC(v18, v19, v20, &type metadata for String) & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = v53;
  v51 = v52;
  sub_100082C6C(1701869908, 0xE400000000000000, a1, v54);
  if (!v55)
  {
    goto LABEL_17;
  }

  if (sub_10001ECBC(v22, v23, v24, &type metadata for Int32))
  {
    v50 = v52;
    sub_100082C6C(1954047316, 0xE400000000000000, a1, v54);
    if (!v55)
    {
      goto LABEL_17;
    }

    if (sub_10001ECBC(v25, v26, v27, &type metadata for String))
    {
      v48 = v52;
      v49 = v53;
      sub_100082C6C(0x6349657079545455, 0xEA00000000006E6FLL, a1, v54);
      if (v55)
      {
        if ((sub_10001ECBC(v28, v29, v30, &type metadata for String) & 1) == 0)
        {
LABEL_23:

          goto LABEL_19;
        }

        v46 = v52;
        v47 = v53;
        sub_100082C6C(0x6B6E694C70656544, 0xE800000000000000, a1, v54);

        if (v55)
        {
          if (sub_10001ECBC(v31, v32, v33, &type metadata for String))
          {
            URL.init(string:)();

            v34 = sub_10000E5F0(v6, 1, v7);
            v35 = v49;
            if (v34 != 1)
            {
              v41 = *(v8 + 32);
              v41(v11, v6, v7);
              UUID.init()();
              v42 = (v15 + v12[5]);
              *v42 = v51;
              v42[1] = v21;
              *(v15 + v12[6]) = v50;
              v43 = (v15 + v12[7]);
              *v43 = v48;
              v43[1] = v35;
              v44 = (v15 + v12[8]);
              v45 = v47;
              *v44 = v46;
              v44[1] = v45;
              v41((v15 + v12[9]), v11, v7);
              sub_10001E8F0(v15, a2);
              v39 = 0;
              return sub_100003CE8(a2, v39, 1, v12);
            }

            v36 = &qword_100188EE0;
            v37 = &unk_100122AE0;
            v38 = v6;
            goto LABEL_18;
          }

          goto LABEL_23;
        }
      }

LABEL_17:

      v36 = &unk_10018A520;
      v37 = &unk_100124310;
      v38 = v54;
LABEL_18:
      sub_10001D724(v38, v36, v37);
      goto LABEL_15;
    }
  }

LABEL_19:

LABEL_14:

LABEL_15:
  v39 = 1;
  return sub_100003CE8(a2, v39, 1, v12);
}

uint64_t sub_10001E360(int a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  switch(a1)
  {
    case 2:
    case 3:
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_100017B50();
      break;
    default:
      sub_10001ECDC();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_100017B50();
      break;
  }

  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t type metadata accessor for BatterySuggestion(uint64_t a1)
{
  result = qword_1001899D0;
  if (!qword_1001899D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E5A0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BatterySuggestion(0);
  sub_10001ECA4(v4[5]);
  v7 = v7 && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  sub_10001ECA4(v4[7]);
  v10 = v7 && v8 == v9;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001ECA4(v4[8]);
  v13 = v7 && v11 == v12;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = v4[9];

  return static URL.== infix(_:_:)(a1 + v14, a2 + v14);
}

uint64_t sub_10001E678(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001EC5C(&qword_100189A20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for BatterySuggestion(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v2 + 24)));
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_10001EC5C(&qword_100189A28, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10001E7A4()
{
  Hasher.init(_seed:)();
  sub_10001E678(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001E7E4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_10001E854(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10001E678(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001E894(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001E8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatterySuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_10000E5F0(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for URL();
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_10001EA50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for URL();
    v10 = a1 + *(a4 + 36);
  }

  return sub_100003CE8(v10, a2, a2, v9);
}

void sub_10001EB20(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BatteryUISuggestionList(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001EC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

_BYTE *storeEnumTagSinglePayload for CompromisedAccountStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001EDC4);
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

unint64_t sub_10001EE18(char a1)
{
  result = 0x6150207465736552;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x4420796669726556;
      break;
    case 3:
      result = 0x20746361746E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10001EEDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001754F0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001EF28(char a1)
{
  result = 0x7361507465736572;
  switch(a1)
  {
    case 1:
      result = 0x776569766572;
      break;
    case 2:
      result = 0x796669726576;
      break;
    case 3:
      result = 0x53746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10001EFF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EEDC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001F020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001EF28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001F098()
{
  result = qword_100189A30;
  if (!qword_100189A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189A30);
  }

  return result;
}

unint64_t sub_10001F0EC()
{
  result = qword_100189A38;
  if (!qword_100189A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189A38);
  }

  return result;
}

uint64_t sub_10001F1A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100189A48, &qword_100123658);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10001F260()
{
  result = qword_100189A90;
  if (!qword_100189A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189A90);
  }

  return result;
}

unint64_t sub_10001F2B4()
{
  result = qword_100189A98;
  if (!qword_100189A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189A98);
  }

  return result;
}

unint64_t sub_10001F30C()
{
  result = qword_100189AA0;
  if (!qword_100189AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189AA0);
  }

  return result;
}

unint64_t sub_10001F364()
{
  result = qword_100189AA8[0];
  if (!qword_100189AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100189AA8);
  }

  return result;
}

uint64_t sub_10001F3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001F3F4(uint64_t *a1, int a2)
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

uint64_t sub_10001F434(uint64_t result, int a2, int a3)
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

uint64_t sub_10001F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for State();
  State.wrappedValue.getter();
  sub_1000BC704(v26, &v26);
  v12 = *(&v27 + 1);
  v29 = v26;
  v30 = BYTE8(v26);
  v23 = v26;
  v24 = v27;
  v13 = v28;
  v25 = v28;
  v17 = a3;
  v18 = a4;
  *&v19 = a5;
  *(&v19 + 1) = &type metadata for EmptyView;
  v20 = a6;
  v21 = a7;
  v22 = &protocol witness table for EmptyView;
  type metadata accessor for FlowStackView(0, &v17);
  sub_10001F724();
  swift_getWitnessTable();
  sub_1000C6A00();
  sub_10001F65C(&v29);

  sub_1000068F8(v12, v13);
  v14 = *(&v19 + 1);
  v15 = v20;
  *&v23 = v17;
  BYTE8(v23) = v18;
  v24 = v19;
  v25 = v20;
  sub_1000C6A00();

  return sub_1000068F8(v14, v15);
}

uint64_t sub_10001F65C(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189B30, &unk_100123800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001F6C4(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  v5 = &type metadata for EmptyView;
  v6 = *(a1 + 24);
  v7 = &protocol witness table for EmptyView;
  type metadata accessor for FlowStackView(255, &v3);
  sub_10001F724();
  return swift_getWitnessTable();
}

uint64_t sub_10001F768(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v4);
    return v12[1];
  }

  return a1;
}

uint64_t sub_10001F89C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 56) = 0;
  *(a5 + 80) = sub_10001FCE0;
  *(a5 + 88) = v10;

  return swift_bridgeObjectRetain_n();
}

double sub_10001F940@<D0>(uint64_t a5@<X8>)
{
  sub_10001FD10();
  Section<>.init(content:)();
  v6 = a5 + *(sub_100003768(&qword_100189B40, &qword_1001238E8) + 36);
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

double sub_10001F9D0@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = sub_10001F768(a1, a2 & 1);
  sub_10005F124(v4);

  type metadata accessor for WiFiFlowViewModel(0);
  sub_100020F70(&qword_1001897A0, type metadata accessor for WiFiFlowViewModel, &unk_10012B6F0);
  v5 = Environment.init<A>(_:)();
  sub_10001FA90(v5, v6 & 1, v9);
  v7 = v9[1];
  *a3 = v9[0];
  a3[1] = v7;
  result = *&v10;
  a3[2] = v10;
  return result;
}

void *sub_10001FA90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a5@<X8>)
{
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v9;
  *(a5 + 40) = v10;
  return result;
}

uint64_t sub_10001FB38()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 8);
  v7 = *v0;
  v12 = *v0;
  v8 = v13;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000ABCC(&v12, &qword_100189B70, &qword_1001239F8);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_10001FCA0()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10001FD10()
{
  result = qword_100189B38;
  if (!qword_100189B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189B38);
  }

  return result;
}

__n128 sub_10001FD64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10001FD78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_10001FDCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10001FE9C()
{
  v1 = sub_100003768(&qword_100189B58, &qword_1001239E0);
  sub_10000AF7C();
  __chkstk_darwin(v2);
  v4 = &v12[-v3 - 8];
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100003768(&qword_100189B60, &qword_1001239E8);
  sub_1000200B4(v0, &v4[*(v5 + 44)]);
  v6 = static Edge.Set.all.getter();
  v7 = &v4[*(v1 + 36)];
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  v16 = *(v0 + 16);
  v13 = *(v0 + 16);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  v12[23] = v12[0];
  v14 = *v0;
  v15 = *(v0 + 8);
  v13 = *(v0 + 32);
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  v8[1] = *v0;
  v8[2] = v9;
  v8[3] = *(v0 + 32);
  sub_10000EC9C(&v14, v12, &qword_100189B70, &qword_1001239F8);
  sub_10000EC9C(&v16, v12, &qword_100189B68, &qword_1001239F0);
  sub_10000EC9C(&v13, v12, &qword_100189B68, &qword_1001239F0);
  sub_100020CD0();
  View.onChange<A>(of:initial:_:)();

  return sub_10000ABCC(v4, &qword_100189B58, &qword_1001239E0);
}

uint64_t sub_1000200B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v46 = a2;
  v40 = sub_100003768(&qword_100189B90, &qword_100123A20);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v35 - v2;
  v45 = sub_100003768(&qword_100189B98, &qword_100123A28);
  __chkstk_darwin(v45);
  v39 = &v35 - v3;
  v43 = sub_100003768(&qword_100189BA0, &qword_100123A30);
  __chkstk_darwin(v43);
  v5 = &v35 - v4;
  v6 = sub_100003768(&qword_100189BA8, &qword_100123A38);
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v42 = sub_100003768(&qword_100189BB0, &qword_100123A40);
  __chkstk_darwin(v42);
  v10 = &v35 - v9;
  v11 = sub_100003768(&qword_100189BB8, &qword_100123A48);
  v12 = __chkstk_darwin(v11 - 8);
  v44 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = sub_100003768(&qword_100189580, &qword_100123A50);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  *&v48 = sub_100021124();
  *(&v48 + 1) = v22;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  static String.connectWiFiToggleTitle.getter();
  View.accessibilityIdentifier(_:)();

  v23 = v41;

  v48 = *(v23 + 32);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  if (v47 == 1)
  {
    ProgressView<>.init<>()();
    static String.connectWiFiProgress.getter();
    sub_10000AAEC(&qword_100189BD0, &qword_100189BA8, &qword_100123A38, &protocol conformance descriptor for ProgressView<A, B>);
    View.accessibilityIdentifier(_:)();

    (*(v36 + 8))(v8, v6);
    v24 = &qword_100189BB0;
    v25 = &qword_100123A40;
    sub_10000EC9C(v10, v5, &qword_100189BB0, &qword_100123A40);
    swift_storeEnumTagMultiPayload();
    sub_100020E88();
    sub_100020FB8();
    _ConditionalContent<>.init(storage:)();
    v26 = v10;
  }

  else
  {
    v47 = *(v23 + 16);
    State.projectedValue.getter();
    v27 = v37;
    Toggle.init(isOn:label:)();
    static String.connectWiFiToggle.getter();
    sub_10000AAEC(&qword_100189BC0, &qword_100189B90, &qword_100123A20, &protocol conformance descriptor for Toggle<A>);
    v28 = v39;
    v29 = v40;
    View.accessibilityIdentifier(_:)();

    (*(v38 + 8))(v27, v29);
    v24 = &qword_100189B98;
    v25 = &qword_100123A28;
    sub_10000EC9C(v28, v5, &qword_100189B98, &qword_100123A28);
    swift_storeEnumTagMultiPayload();
    sub_100020E88();
    sub_100020FB8();
    _ConditionalContent<>.init(storage:)();
    v26 = v28;
  }

  sub_10000ABCC(v26, v24, v25);
  sub_10000EC9C(v21, v19, &qword_100189580, &qword_100123A50);
  v30 = v44;
  sub_10000EC9C(v15, v44, &qword_100189BB8, &qword_100123A48);
  v31 = v46;
  sub_10000EC9C(v19, v46, &qword_100189580, &qword_100123A50);
  v32 = sub_100003768(&qword_100189BE0, &qword_100123A58);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_10000EC9C(v30, v31 + *(v32 + 64), &qword_100189BB8, &qword_100123A48);
  sub_10000ABCC(v15, &qword_100189BB8, &qword_100123A48);
  sub_10000ABCC(v21, &qword_100189580, &qword_100123A50);
  sub_10000ABCC(v30, &qword_100189BB8, &qword_100123A48);
  return sub_10000ABCC(v19, &qword_100189580, &qword_100123A50);
}

uint64_t sub_10002077C(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v5 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  result = __chkstk_darwin(v5 - 8);
  v8 = &v13[-v7];
  if (*a2 == 1)
  {
    v17 = *(a3 + 2);
    v14 = *(a3 + 2);
    v13[0] = 1;
    sub_100003768(&qword_100189B68, &qword_1001239F0);
    State.wrappedValue.setter();
    v9 = type metadata accessor for TaskPriority();
    sub_100003CE8(v8, 1, 1, v9);
    v15 = *a3;
    v16 = *(a3 + 8);
    v14 = *(a3 + 1);
    type metadata accessor for MainActor();
    sub_10000EC9C(&v15, v13, &qword_100189B70, &qword_1001239F8);
    sub_10000EC9C(&v14, v13, &qword_100189B68, &qword_1001239F0);
    sub_10000EC9C(&v17, v13, &qword_100189B68, &qword_1001239F0);
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    v12 = *(a3 + 1);
    *(v11 + 32) = *a3;
    *(v11 + 48) = v12;
    *(v11 + 64) = *(a3 + 2);
    sub_100085200();
  }

  return result;
}

uint64_t sub_100020938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1000209D0, v6, v5);
}

uint64_t sub_1000209D0()
{
  *(v0 + 64) = sub_10001FB38();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100020A6C;

  return sub_1000611BC();
}

uint64_t sub_100020A6C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100020BB0, v3, v2);
}

uint64_t sub_100020BB0()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 32);
  *(v0 + 80) = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100020C80()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100020CD0()
{
  result = qword_100189B78;
  if (!qword_100189B78)
  {
    sub_100004D48(&qword_100189B58, &qword_1001239E0);
    sub_10000AAEC(&qword_100189B80, &qword_100189B88, &unk_100123A00, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189B78);
  }

  return result;
}

uint64_t sub_100020D88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100020DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D870;

  return sub_100020938(a1, v4, v5, v1 + 32);
}

unint64_t sub_100020E88()
{
  result = qword_100189BC8;
  if (!qword_100189BC8)
  {
    sub_100004D48(&qword_100189BB0, &qword_100123A40);
    sub_10000AAEC(&qword_100189BD0, &qword_100189BA8, &qword_100123A38, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100020F70(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189BC8);
  }

  return result;
}

uint64_t sub_100020F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100020FB8()
{
  result = qword_100189BD8;
  if (!qword_100189BD8)
  {
    sub_100004D48(&qword_100189B98, &qword_100123A28);
    sub_10000AAEC(&qword_100189BC0, &qword_100189B90, &qword_100123A20, &protocol conformance descriptor for Toggle<A>);
    sub_100020F70(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189BD8);
  }

  return result;
}

uint64_t sub_1000210A0()
{
  sub_100004D48(&qword_100189B58, &qword_1001239E0);
  sub_100020CD0();
  return swift_getOpaqueTypeConformance2();
}

id sub_100021124()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = sub_100021644();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  sub_10002166C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100021678();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  result = sub_100021684();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_wapiCapability();

    sub_100021660();

    return sub_100021634();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100021258()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = sub_100021644();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  sub_10002166C();
  sub_100021624();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100021678();
  sub_100021624();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  result = sub_100021684();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_wapiCapability();

    sub_100021660();

    return sub_100021634();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100021394()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = sub_100021644();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  sub_10002166C();
  sub_100021624();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100021678();
  sub_100021624();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  result = sub_100021684();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_wapiCapability();

    sub_100021660();

    return sub_100021634();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000214D0()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = sub_100021644();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  sub_10002166C();
  sub_100021624();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100021678();
  sub_100021624();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10002160C();
  String.init(localized:table:bundle:locale:comment:)();
  result = sub_100021684();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_wapiCapability();

    sub_100021660();

    return sub_100021634();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021644()
{

  return type metadata accessor for String.LocalizationValue();
}

uint64_t sub_100021660()
{
  if (v2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100021684()
{

  return _MobileGestalt_get_current_device();
}

uint64_t sub_10002169C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1000216DC(uint64_t result, int a2, int a3)
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

uint64_t sub_100021744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = sub_100021774;
  *(a3 + 88) = 0;
}

uint64_t sub_100021774()
{
  sub_100021824();

  return Section<>.init(content:)();
}

uint64_t sub_1000217D0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WiFiFlowViewModel(0);
  sub_10001ABA4();
  result = Environment.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100021824()
{
  result = qword_100189BE8;
  if (!qword_100189BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189BE8);
  }

  return result;
}

unint64_t sub_10002187C()
{
  result = qword_100189BF0;
  if (!qword_100189BF0)
  {
    sub_100004D48(&qword_100189BF8, &unk_100123AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189BF0);
  }

  return result;
}

uint64_t sub_10002190C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = &type metadata for DisabledAccountStepProvider;
  v13 = sub_1000219CC();
  v11[0] = a3;
  type metadata accessor for SharedResetPasswordViewModel();
  *(swift_allocObject() + 16) = 0;

  State.init(wrappedValue:)();
  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  result = sub_10000B18C(v11, a4 + 32);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  return result;
}

unint64_t sub_1000219CC()
{
  result = qword_100189C00;
  if (!qword_100189C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C00);
  }

  return result;
}

uint64_t sub_100021A58@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(a3 + 72) = &type metadata for ForgotPasswordStepProvider;
  v6 = sub_10000B138();
  *(a3 + 80) = v6;
  *(a3 + 48) = 2;
  *(a3 + 112) = &type metadata for ForgotPasswordStepProvider;
  *(a3 + 120) = v6;
  *(a3 + 88) = 1;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();

  result = Environment.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

unint64_t sub_100021B04()
{
  result = qword_100189C08;
  if (!qword_100189C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C08);
  }

  return result;
}

id sub_100021B58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 code];

  return v9;
}

_BYTE *storeEnumTagSinglePayload for ScreenRepairStepProvider(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100021D58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100021DAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  result = Environment.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = 0xD000000000000015;
  *(a1 + 24) = 0x8000000100132B40;
  return result;
}

BOOL sub_100021E14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175598, v2);

  return v3 != 0;
}

BOOL sub_100021E84@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021E14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100021EB8@<X0>(void *a1@<X8>)
{
  result = sub_100021E5C();
  *a1 = 0xD000000000000015;
  a1[1] = v3;
  return result;
}

unint64_t sub_100021EE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100021E5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100021F40()
{
  result = qword_100189C10;
  if (!qword_100189C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C10);
  }

  return result;
}

unint64_t sub_100021F94()
{
  result = qword_100189C18;
  if (!qword_100189C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C18);
  }

  return result;
}

uint64_t sub_100022014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100022050()
{
  result = qword_100189C20;
  if (!qword_100189C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C20);
  }

  return result;
}

unint64_t sub_1000220A4()
{
  result = qword_100189C28;
  if (!qword_100189C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C28);
  }

  return result;
}

unint64_t sub_1000220FC()
{
  result = qword_100189C30;
  if (!qword_100189C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C30);
  }

  return result;
}

unint64_t sub_100022154()
{
  result = qword_100189C38;
  if (!qword_100189C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189C38);
  }

  return result;
}

uint64_t sub_1000221BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189C40, &qword_100123DF0);

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_100022224(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189C40, &qword_100123DF0);

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowHeaderView(uint64_t a1)
{
  result = qword_100189CA0;
  if (!qword_100189CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000222C8(uint64_t a1)
{
  sub_100022334(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100022334(uint64_t a1)
{
  if (!qword_100189CB0)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100189CB0);
    }
  }
}

void *sub_1000223A8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = type metadata accessor for AccessibilityChildBehavior();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_100189CE0, &qword_100123E60);
  sub_10000AF7C();
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_100003768(&qword_100189CE8, &qword_100123E68);
  sub_10000AF7C();
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v25 = sub_100003768(&qword_100189CF0, &qword_100123E70);
  sub_100008780();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = sub_100003768(&qword_100189CF8, &qword_100123E78);
  sub_1000226F4(&v9[*(v18 + 44)]);
  v19 = static Edge.Set.horizontal.getter();
  v20 = &v9[*(v6 + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  static String.landingListHeader.getter();
  sub_100023280();
  View.accessibilityIdentifier(_:)();

  sub_10000ABCC(v9, &qword_100189CE0, &qword_100123E60);
  static AccessibilityChildBehavior.combine.getter();
  sub_100023338();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v5, v26);
  sub_10000ABCC(v12, &qword_100189CE8, &qword_100123E68);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v27;
  (*(v14 + 32))(v27, v17, v25);
  v22 = sub_100003768(&qword_100189D20, &qword_100123E88);
  return memcpy((v21 + *(v22 + 36)), __src, 0x70uLL);
}

uint64_t sub_1000226F4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_100003768(&qword_100189D28, &qword_100123E90);
  v2 = __chkstk_darwin(v1 - 8);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v43 = &v42 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ImageResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003768(&qword_100189D30, &qword_100123E98);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = sub_100003768(&qword_100189D38, &qword_100123EA0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v42 - v22;
  if (qword_100188420 != -1)
  {
    swift_once();
  }

  v24 = sub_10000C2D4(v11, qword_1001A5AB8);
  (*(v12 + 16))(v14, v24, v11);
  *&v46 = Image.init(_:)();
  static String.landingListHeaderImage.getter();
  View.accessibilityIdentifier(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = &v17[*(sub_100003768(&qword_100189D40, &qword_100123EA8) + 36)];
  v26 = v47;
  *v25 = v46;
  *(v25 + 1) = v26;
  *(v25 + 2) = v48;
  *&v17[*(sub_100003768(&qword_100189D48, &qword_100123EB0) + 36)] = 256;
  v27 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v28 = &v17[*(v15 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_10002341C();
  v33 = v23;
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v17, &qword_100189D30, &qword_100123E98);
  sub_100022C0C(v10);
  sub_100022FB4(v8);
  v34 = v21;
  sub_10000EC9C(v23, v21, &qword_100189D38, &qword_100123EA0);
  v35 = v43;
  sub_10000EC9C(v10, v43, &qword_100189D28, &qword_100123E90);
  v36 = v44;
  sub_10000EC9C(v8, v44, &qword_100189D28, &qword_100123E90);
  v37 = v10;
  v38 = v8;
  v39 = v45;
  sub_10000EC9C(v34, v45, &qword_100189D38, &qword_100123EA0);
  v40 = sub_100003768(&qword_100189D88, &qword_100123EC8);
  sub_10000EC9C(v35, v39 + *(v40 + 48), &qword_100189D28, &qword_100123E90);
  sub_10000EC9C(v36, v39 + *(v40 + 64), &qword_100189D28, &qword_100123E90);
  sub_10000ABCC(v38, &qword_100189D28, &qword_100123E90);
  sub_10000ABCC(v37, &qword_100189D28, &qword_100123E90);
  sub_10000ABCC(v33, &qword_100189D38, &qword_100123EA0);
  sub_10000ABCC(v36, &qword_100189D28, &qword_100123E90);
  sub_10000ABCC(v35, &qword_100189D28, &qword_100123E90);
  return sub_10000ABCC(v34, &qword_100189D38, &qword_100123EA0);
}

void *sub_100022C0C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for AccessibilityTraits();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100003768(&qword_100189D90, &qword_100123ED0);
  v3 = __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = &v24 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10000AC78(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v15 & 1;
  *&__src[0] = v11;
  *(&__src[0] + 1) = v13;
  LOBYTE(__src[1]) = v15 & 1;
  *(&__src[1] + 1) = v17;
  *&__src[2] = KeyPath;
  WORD4(__src[2]) = 0;
  BYTE10(__src[2]) = 1;
  static AccessibilityTraits.isHeader.getter();
  sub_100003768(&qword_100189D98, &qword_100123F08);
  sub_100023720();
  v19 = v24;
  View.accessibilityAddTraits(_:)();
  (*(v26 + 8))(v2, v28);
  v32 = __src[0];
  v33[0] = __src[1];
  *(v33 + 11) = *(&__src[1] + 11);
  sub_10000ABCC(&v32, &qword_100189D98, &qword_100123F08);
  static String.landingListHeaderTitle.getter();
  v20 = v25;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_10000ABCC(v19, &qword_100189D90, &qword_100123ED0);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v29;
  sub_100023864(v20, v29);
  v22 = sub_100003768(&qword_100189D28, &qword_100123E90);
  return memcpy((v21 + *(v22 + 36)), __src, 0x70uLL);
}

void *sub_100022FB4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_100003768(&qword_100189D90, &qword_100123ED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Font.title2.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10000AC78(v4, v6, v8 & 1);

  LODWORD(__src[0]) = static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10000AC78(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v26 = v18 & 1;
  *&__src[0] = v14;
  *(&__src[0] + 1) = v16;
  LOBYTE(__src[1]) = v18 & 1;
  *(&__src[1] + 1) = v20;
  *&__src[2] = KeyPath;
  WORD4(__src[2]) = 0;
  BYTE10(__src[2]) = 1;
  static String.landingListHeaderDescription.getter();
  sub_100003768(&qword_100189D98, &qword_100123F08);
  sub_100023720();
  View.accessibilityIdentifier(_:)();

  v28 = __src[0];
  v29[0] = __src[1];
  *(v29 + 11) = *(&__src[1] + 11);
  sub_10000ABCC(&v28, &qword_100189D98, &qword_100123F08);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v25;
  sub_100023864(v3, v25);
  v23 = sub_100003768(&qword_100189D28, &qword_100123E90);
  return memcpy((v22 + *(v23 + 36)), __src, 0x70uLL);
}

unint64_t sub_100023280()
{
  result = qword_100189D00;
  if (!qword_100189D00)
  {
    sub_100004D48(&qword_100189CE0, &qword_100123E60);
    sub_10000AAEC(&qword_100189D08, &qword_100189D10, &qword_100123E80, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189D00);
  }

  return result;
}

unint64_t sub_100023338()
{
  result = qword_100189D18;
  if (!qword_100189D18)
  {
    sub_100004D48(&qword_100189CE8, &qword_100123E68);
    sub_100023280();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189D18);
  }

  return result;
}

unint64_t sub_1000233C4()
{
  result = qword_1001887F8;
  if (!qword_1001887F8)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887F8);
  }

  return result;
}

unint64_t sub_10002341C()
{
  result = qword_100189D50;
  if (!qword_100189D50)
  {
    sub_100004D48(&qword_100189D30, &qword_100123E98);
    sub_1000234A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189D50);
  }

  return result;
}

unint64_t sub_1000234A8()
{
  result = qword_100189D58;
  if (!qword_100189D58)
  {
    sub_100004D48(&qword_100189D48, &qword_100123EB0);
    sub_100023560();
    sub_10000AAEC(&qword_100189D78, &qword_100189D80, &qword_100123EC0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189D58);
  }

  return result;
}

unint64_t sub_100023560()
{
  result = qword_100189D60;
  if (!qword_100189D60)
  {
    sub_100004D48(&qword_100189D40, &qword_100123EA8);
    sub_1000235EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189D60);
  }

  return result;
}

unint64_t sub_1000235EC()
{
  result = qword_100189D68;
  if (!qword_100189D68)
  {
    sub_100004D48(&qword_100189D70, &qword_100123EB8);
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189D68);
  }

  return result;
}

uint64_t sub_100023678@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000236A4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100023720()
{
  result = qword_100189DA0;
  if (!qword_100189DA0)
  {
    sub_100004D48(&qword_100189D98, &qword_100123F08);
    sub_1000237AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189DA0);
  }

  return result;
}

unint64_t sub_1000237AC()
{
  result = qword_100189DA8;
  if (!qword_100189DA8)
  {
    sub_100004D48(&qword_100189DB0, &qword_100123F10);
    sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189DA8);
  }

  return result;
}

uint64_t sub_100023864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189D90, &qword_100123ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000238D8()
{
  result = qword_100189DC8;
  if (!qword_100189DC8)
  {
    sub_100004D48(&qword_100189D20, &qword_100123E88);
    sub_100004D48(&qword_100189CE8, &qword_100123E68);
    sub_100023338();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189DC8);
  }

  return result;
}

uint64_t sub_1000239A0()
{
  sub_100003768(&qword_10018A100, &unk_100123FA0);
  sub_1000257D8();
  sub_10000AAEC(&qword_10018A110, &qword_10018A100, &unk_100123FA0, &unk_10012D890);
  swift_getKeyPath();
  sub_10000AAEC(&qword_10018A118, &qword_10018A120, &unk_100123FB0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + *(*v0 + 152));

  return v1;
}

uint64_t sub_100023AD4()
{
  sub_100003768(&qword_10018A170, &unk_100127780);
  sub_10000737C();
  sub_10000AAEC(&qword_10018A178, &qword_10018A170, &unk_100127780, &unk_10012D890);
  swift_getKeyPath();
  sub_10000AAEC(&qword_10018A180, &qword_10018A188, &unk_100123FE0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + *(*v0 + 152));

  return v1;
}

uint64_t sub_100023C08()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000258DC();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  sub_10000AAEC(&qword_10018A160, &qword_10018A168, &unk_100123FD0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + *(*v0 + 152));

  return v1;
}

uint64_t sub_100023D3C()
{
  sub_100003768(&qword_10018A128, &unk_100131CD0);
  sub_10001362C();
  sub_10000AAEC(&qword_10018A130, &qword_10018A128, &unk_100131CD0, &unk_10012D890);
  swift_getKeyPath();
  sub_10000AAEC(&qword_10018A138, &qword_10018A140, &unk_100123FC0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + *(*v0 + 152));

  return v1;
}

uint64_t sub_100023E70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 152));
  v6 = sub_100114848(*v5, v5[1], a1, a2);
  if (v6)
  {
    __chkstk_darwin(v6);
    sub_100003768(&qword_10018A100, &unk_100123FA0);
    sub_1000257D8();
    sub_10000AAEC(&qword_10018A110, &qword_10018A100, &unk_100123FA0, &unk_10012D890);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109120();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;

    return sub_1000253F0(sub_1000239A0, sub_100105E00, sub_100104628);
  }
}

uint64_t sub_10002402C()
{
  sub_100025A50();
  v5 = sub_100025A24(*(v4 + 152));
  v9 = sub_100114848(v5, v6, v7, v8);
  if (v9)
  {
    __chkstk_darwin(v9);
    sub_100025A64();
    *(v3 - 32) = &type metadata for WiFiStepProvider;
    v10 = sub_100025A88();
    *(v3 - 24) = sub_100003768(v10, v11);
    *(v3 - 16) = sub_10000737C();
    *(v3 - 8) = sub_1000259E0(&qword_10018A178);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v12);
    sub_100025A0C();
    sub_100114874();
  }

  else
  {
    *v2 = v1;
    v2[1] = v0;

    return sub_1000253F0(sub_100023AD4, sub_100106070, sub_100104860);
  }
}

uint64_t sub_100024188()
{
  sub_100025A50();
  v5 = sub_100025A24(*(v4 + 152));
  v9 = sub_100114848(v5, v6, v7, v8);
  if (v9)
  {
    __chkstk_darwin(v9);
    sub_100025A64();
    *(v3 - 32) = &type metadata for PurchasesStepProvider;
    v10 = sub_100025A88();
    *(v3 - 24) = sub_100003768(v10, v11);
    *(v3 - 16) = sub_1000258DC();
    *(v3 - 8) = sub_1000259E0(&qword_10018A158);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v12);
    sub_100025A0C();
    sub_100109210();
  }

  else
  {
    *v2 = v1;
    v2[1] = v0;

    return sub_1000253F0(sub_100023C08, sub_100106550, sub_100104BB4);
  }
}

uint64_t sub_1000242E4()
{
  sub_100025A50();
  v5 = sub_100025A24(*(v4 + 152));
  v9 = sub_100114848(v5, v6, v7, v8);
  if (v9)
  {
    __chkstk_darwin(v9);
    sub_100025A64();
    *(v3 - 32) = &type metadata for MessagesStepProvider;
    v10 = sub_100025A88();
    *(v3 - 24) = sub_100003768(v10, v11);
    *(v3 - 16) = sub_10001362C();
    *(v3 - 8) = sub_1000259E0(&qword_10018A130);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v12);
    sub_100025A0C();
    sub_100109240();
  }

  else
  {
    *v2 = v1;
    v2[1] = v0;

    return sub_1000253F0(sub_100023D3C, sub_100106688, sub_100104CD0);
  }
}

uint64_t sub_100024440(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = sub_10000ED84(v3);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v7 = type metadata accessor for SupportFlowIdentifier();
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  *(v1 + qword_1001A5708) = 0;
  (*(v11 + 104))(v9 - v8, enum case for SupportFlowIdentifier.mail(_:));

  sub_1001056E4(v10, &type metadata for MailStepOverrideProvider, a1, 0, 0);
  v13 = v12;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  sub_100023E70(v14, v15);

  return v13;
}

uint64_t sub_100024620()
{
  sub_100025A94();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000246B4, v3, v2);
}

uint64_t sub_1000246F0()
{
  sub_100025A94();
  *(v0 + 56) = DeviceEventCoordinator.hasRecentMailError()();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_100024764, v1, v2);
}

uint64_t sub_100024764()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = qword_1001A5708;
  *(v2 + qword_1001A5708) = v1;
  if (qword_100188150 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C2D4(v4, qword_1001A56F0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v2 + v3);

    _os_log_impl(&_mh_execute_header, v5, v6, "hasAccountIssues %{BOOL}d", v7, 8u);
  }

  else
  {
  }

  sub_10000875C();

  return v8();
}

uint64_t sub_1000248CC()
{
  if (*(v0 + qword_1001A5708))
  {
    return sub_100107914(0);
  }

  else
  {
    return sub_100107914(3);
  }
}

uint64_t sub_1000248E8()
{
  sub_100025A94();
  v1[19] = v0;
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_10002497C, v3, v2);
}

uint64_t sub_10002497C()
{
  v1 = [objc_opt_self() defaultStore];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v39 = v0;
    isUniquelyReferenced_nonNull_native = sub_1000256AC(v1);
    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = sub_100114850(isUniquelyReferenced_nonNull_native);
      v5 = 0;
      v41 = isUniquelyReferenced_nonNull_native;
      v40 = v2;
LABEL_4:
      while (v5 != v41)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          isUniquelyReferenced_nonNull_native = *(v4 + 32 + 8 * v5);
        }

        v6 = isUniquelyReferenced_nonNull_native;
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_51;
        }

        v8 = [v2 supportedDataclassesForAccountType:isUniquelyReferenced_nonNull_native];
        if (v8)
        {
          v9 = v8;
          v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v11 = -1 << *(v10 + 32);
          if (-v11 < 64)
          {
            v12 = ~(-1 << -v11);
          }

          else
          {
            v12 = -1;
          }

          v13 = v12 & *(v10 + 56);
          v14 = (63 - v11) >> 6;

          v15 = 0;
          while (v13)
          {
LABEL_19:
            v17 = (*(v10 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
            v19 = *v17;
            v18 = v17[1];
            if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v20)
            {

LABEL_28:

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._endMutation()();
              v2 = v40;
              goto LABEL_4;
            }

            v13 &= v13 - 1;
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v22)
            {
              goto LABEL_28;
            }
          }

          while (1)
          {
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v16 >= v14)
            {

              v2 = v40;
              goto LABEL_4;
            }

            v13 = *(v10 + 56 + 8 * v16);
            ++v15;
            if (v13)
            {
              v15 = v16;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      isUniquelyReferenced_nonNull_native = sub_100114850(_swiftEmptyArrayStorage);
      v23 = isUniquelyReferenced_nonNull_native;
      v24 = 0;
      v25 = _swiftEmptyArrayStorage;
      while (v23 != v24)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage[v24 + 4];
        }

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_53;
        }

        v27 = isUniquelyReferenced_nonNull_native;
        v28 = [v27 identifier];
        if (v28)
        {
          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000CFF70();
            v25 = isUniquelyReferenced_nonNull_native;
          }

          v33 = v25[2];
          if (v33 >= v25[3] >> 1)
          {
            sub_1000CFF70();
            v25 = isUniquelyReferenced_nonNull_native;
          }

          v25[2] = (v33 + 1);
          v34 = &v25[2 * v33];
          v34[4] = v30;
          v34[5] = v32;
          v24 = v26;
          v2 = v40;
        }

        else
        {

          ++v24;
        }
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
      v39[24] = isa;

      v39[2] = v39;
      v39[7] = v39 + 18;
      v39[3] = sub_100024EA4;
      v36 = swift_continuation_init();
      v39[17] = sub_100003768(&qword_10018A0E8, &qword_100123F60);
      v39[10] = _NSConcreteStackBlock;
      v39[11] = 1107296256;
      v39[12] = sub_100025154;
      v39[13] = &unk_100178EC0;
      v39[14] = v36;
      [v2 accountsWithAccountTypeIdentifiers:isa completion:v39 + 10];
      isUniquelyReferenced_nonNull_native = (v39 + 2);
    }

    else
    {
LABEL_55:
      __break(1u);
    }

    return _swift_continuation_await(isUniquelyReferenced_nonNull_native);
  }

  else
  {

    sub_10000875C();

    return v37();
  }
}

uint64_t sub_100024EA4()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_10002508C;
  }

  else
  {
    v5 = sub_100024FD0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100024FD0()
{
  v2 = *(v0 + 192);

  v3 = *(v0 + 144);

  if (!v3)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100025A74();
  sub_100114850(v3);

  sub_100085FE4();

  sub_10000875C();

  return v4();
}

uint64_t sub_10002508C()
{
  v2 = *(v0 + 192);

  swift_willThrow();

  sub_100025A74();
  sub_100114850(_swiftEmptyArrayStorage);

  sub_100085FE4();

  sub_10000875C();

  return v3();
}

uint64_t sub_100025154(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100025734((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1000CAC1C();
  }

  else
  {
    if (a2)
    {
      sub_100025778(0, &qword_10018A0F0, ACAccount_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_1000C976C(v5, v8);
  }
}

uint64_t sub_100025208()
{
  v0 = sub_10011484C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MailFlowViewModel(uint64_t a1)
{
  result = qword_100189DF8;
  if (!qword_100189DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000252EC()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  sub_10000C270(v4, qword_1001A56F0);
  sub_10000C2D4(v4, qword_1001A56F0);
  (*(v1 + 104))(v3, enum case for SupportFlowIdentifier.mail(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_1000253F0(uint64_t (*a1)(void), void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = type metadata accessor for Locale();
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = sub_10000ED84(v7);
  __chkstk_darwin(v8);
  sub_10000C30C();
  v9 = a1();
  v11 = v9;
  if (v10)
  {
    v12 = v10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100003768(&qword_100188810, &unk_100121780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100121620;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100017A18();
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_100025A88();
    v14 = String.init(format:_:)();
    v16 = v15;

    (a2)(v14, v16);
    if (qword_100188238 != -1)
    {
      swift_once();
    }

    v17 = qword_1001A57D0;
    v18 = *algn_1001A57D8;

    return a3(v17, v18);
  }

  else
  {
    a2(v9);

    return a3(v11, 0);
  }
}

uint64_t sub_100025628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = (a1 + *(*a1 + 152));
  *v9 = a2;
  v9[1] = a3;

  return sub_1000253F0(a4, a5, a6);
}

uint64_t sub_1000256AC(void *a1)
{
  v1 = [a1 allAccountTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100025778(0, &qword_10018A0F8, ACAccountType_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_100025734(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100025778(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_1000257CC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000257D8()
{
  result = qword_10018A108;
  if (!qword_10018A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A108);
  }

  return result;
}

unint64_t sub_1000258DC()
{
  result = qword_10018A150;
  if (!qword_10018A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A150);
  }

  return result;
}

uint64_t sub_1000259E0(unint64_t *a1)
{

  return sub_10000AAEC(a1, v1, v2, &unk_10012D890);
}

uint64_t sub_100025AAC(char a1)
{
  sub_100025B24(a1);
  v1 = String._bridgeToObjectiveC()();

  v2 = MGGetStringAnswer();

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100025B24(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x6C43656369766544;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6E6974656B72616DLL;
      break;
    case 4:
      result = 0x54746375646F7250;
      break;
    case 5:
      result = 0x56746375646F7250;
      break;
    case 6:
      result = 0x54657361656C6552;
      break;
    case 7:
      result = 0x754E6C6169726553;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WiFiDiagnosticsData.ServiceLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MailStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100025DD8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 sub_100025E2C@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_1000267DC();
      v52 = v24;
      v58 = v23;
      v5 = 258;
      goto LABEL_8;
    case 2:
      v54 = sub_1000D2AAC(2);
      v59 = v7;
      LOWORD(v60) = 0;
      goto LABEL_6;
    case 3:
      sub_1000267DC();
      v54 = v9 - 3;
      v59 = v8;
      LOWORD(v60) = 260;
LABEL_6:
      sub_10001B21C();
      v10 = sub_1000266A4();
      sub_100026818(v10, &_s18ContactSupportViewVN, &type metadata for MailStepAddAccountView, v11, v10, v12, v13, v14, v54);
      _ConditionalContent<>.init(storage:)();
      sub_1000267F0();
      sub_100026804(v15, v16, v17, v18, v19, v20, v21, v22, v55, v59, v60, v61, v62);
      goto LABEL_9;
    case 4:
      sub_1000267DC();
      v53 = v6 + 2;
      goto LABEL_10;
    default:
      sub_1000267DC();
      v52 = v4;
      v58 = v3;
      v5 = 1;
LABEL_8:
      LOWORD(v60) = v5;
      sub_100026570();
      v25 = sub_1000265C4();
      sub_100026818(v25, &type metadata for MailStepAccountIssuesView, &type metadata for MailStepRemoveAccountView, v26, v25, v27, v28, v29, v52);
      _ConditionalContent<>.init(storage:)();
      sub_1000267F0();
      sub_100026804(v30, v31, v32, v33, v34, v35, v36, v37, v57, v58, v60, v61, v62);
LABEL_9:
      sub_100003768(&qword_10018A1D0, &qword_100124170);
      sub_100003768(&qword_10018A1F0, &qword_100124178);
      sub_1000264E4();
      v38 = sub_100026618();
      sub_100026818(v38, v39, v40, v41, v38, v42, v43, v44, v56);
      _ConditionalContent<>.init(storage:)();
      v53 = v62;
LABEL_10:
      sub_100003768(&qword_10018A1B8, &qword_100124168);
      sub_100026458();
      v45 = sub_1000266F8();
      sub_100026818(v45, v46, &type metadata for MailStepCommonQuestionsView, v47, v45, v48, v49, v50, v53);
      _ConditionalContent<>.init(storage:)();
      result = v62;
      *a2 = v62;
      a2[1].n128_u16[0] = v63;
      a2[1].n128_u8[2] = v64;
      a2[1].n128_u8[3] = v65;
      return result;
  }
}

unint64_t sub_10002607C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001755D0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000260C8(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10002618C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002607C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000261BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000260C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1000261E8(uint64_t *a1@<X8>)
{
  sub_1000E71A4(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_100026248()
{
  result = qword_10018A190;
  if (!qword_10018A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A190);
  }

  return result;
}

unint64_t sub_10002629C()
{
  result = qword_10018A198;
  if (!qword_10018A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A198);
  }

  return result;
}

uint64_t sub_10002631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100026358()
{
  result = qword_10018A1A0;
  if (!qword_10018A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1A0);
  }

  return result;
}

unint64_t sub_1000263AC()
{
  result = qword_10018A1A8;
  if (!qword_10018A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1A8);
  }

  return result;
}

unint64_t sub_100026404()
{
  result = qword_10018A1B0;
  if (!qword_10018A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1B0);
  }

  return result;
}

unint64_t sub_100026458()
{
  result = qword_10018A1C0;
  if (!qword_10018A1C0)
  {
    sub_100004D48(&qword_10018A1B8, &qword_100124168);
    sub_1000264E4();
    sub_100026618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1C0);
  }

  return result;
}

unint64_t sub_1000264E4()
{
  result = qword_10018A1C8;
  if (!qword_10018A1C8)
  {
    sub_100004D48(&qword_10018A1D0, &qword_100124170);
    sub_100026570();
    sub_1000265C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1C8);
  }

  return result;
}

unint64_t sub_100026570()
{
  result = qword_10018A1D8;
  if (!qword_10018A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1D8);
  }

  return result;
}

unint64_t sub_1000265C4()
{
  result = qword_10018A1E0;
  if (!qword_10018A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1E0);
  }

  return result;
}

unint64_t sub_100026618()
{
  result = qword_10018A1E8;
  if (!qword_10018A1E8)
  {
    sub_100004D48(&qword_10018A1F0, &qword_100124178);
    sub_10001B21C();
    sub_1000266A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1E8);
  }

  return result;
}

unint64_t sub_1000266A4()
{
  result = qword_10018A1F8;
  if (!qword_10018A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A1F8);
  }

  return result;
}

unint64_t sub_1000266F8()
{
  result = qword_10018A200;
  if (!qword_10018A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A200);
  }

  return result;
}

unint64_t sub_100026750()
{
  result = qword_10018A208;
  if (!qword_10018A208)
  {
    sub_100004D48(&unk_10018A210, &qword_100124180);
    sub_100026458();
    sub_1000266F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A208);
  }

  return result;
}

void sub_100026824()
{
  sub_100017C00();
  v3 = v2;
  sub_100028EC4();
  v63 = type metadata accessor for SupportFlowHostingController.HostingType();
  sub_100008780();
  v61 = v4;
  __chkstk_darwin(v5);
  sub_10000C30C();
  v65 = v7 - v6;
  v8 = type metadata accessor for SupportFlowHostingController.Configuration();
  v9 = sub_10000ED84(v8);
  __chkstk_darwin(v9);
  sub_10000C30C();
  v66 = v11 - v10;
  v12 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v13 = sub_10000ED84(v12);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v64 = type metadata accessor for RootView(0);
  sub_10000AF7C();
  __chkstk_darwin(v16);
  sub_10000C30C();
  v62 = v18 - v17;
  v19 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v20 = sub_10000ED84(v19);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  v24 = sub_10000ED84(v23);
  v25 = __chkstk_darwin(v24);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v60 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v60 - v32;
  __chkstk_darwin(v31);
  v35 = &v60 - v34;
  v67 = v0;
  sub_100026E6C();
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    v38 = objc_allocWithZone(UIWindow);
    v60 = v1;
    v39 = [v38 initWithWindowScene:v37];
    v40 = [v3 URLContexts];
    sub_100028A60();
    sub_100028C38();
    sub_100028B80(v41, v42, &protocol conformance descriptor for NSObject);
    v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = sub_1001097BC(v43);

    if (v44)
    {
      v45 = [v44 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = type metadata accessor for URL();
      v47 = 0;
    }

    else
    {
      v46 = type metadata accessor for URL();
      v47 = 1;
    }

    sub_100003CE8(v22, v47, 1, v46);
    sub_10000E220(v22, v35);
    sub_10000EC9C(v35, v33, &qword_10018A310, &unk_1001241F0);
    v48 = type metadata accessor for DeepLinkContext(0);
    if (sub_10000E5F0(v33, 1, v48) == 1)
    {
      sub_10000ABCC(v33, &qword_10018A310, &unk_1001241F0);
      v49 = 0;
    }

    else
    {
      v49 = *&v33[*(v48 + 28) + 8];

      sub_100028BC8(v33);
    }

    sub_10000EC9C(v35, v30, &qword_10018A310, &unk_1001241F0);
    if (sub_10000E5F0(v30, 1, v48) == 1)
    {
      sub_10000ABCC(v30, &qword_10018A310, &unk_1001241F0);
      v50 = type metadata accessor for SupportFlowIdentifier();
      sub_100003CE8(v15, 1, 1, v50);
    }

    else
    {
      sub_10000EC9C(v30, v15, &unk_10018A300, &unk_1001241E0);
      sub_100028BC8(v30);
    }

    v51 = v65;
    sub_10000EC9C(v35, v27, &qword_10018A310, &unk_1001241F0);
    sub_1000F350C(v15, v27, v62);
    (*(v61 + 104))(v51, enum case for SupportFlowHostingController.HostingType.application(_:), v63);
    if (!v49)
    {
      v52 = [objc_opt_self() mainBundle];
      sub_100028AA4(v52);
    }

    SupportFlowHostingController.Configuration.init(hostingType:showsSearchBar:clientBundleIdentifier:)();
    v53 = objc_allocWithZone(type metadata accessor for SupportFlowHostingController());
    sub_100028B80(&qword_10018A318, type metadata accessor for RootView, &unk_100130E40);
    v54 = SupportFlowHostingController.init<A>(rootView:configuration:delegate:)();
    v55 = v67;
    v56 = *(v67 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_hostingController);
    *(v67 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_hostingController) = v54;
    v57 = v54;

    [v39 setRootViewController:v57];
    v58 = *(v55 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_window);
    *(v55 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_window) = v39;
    v59 = v39;

    [v59 makeKeyAndVisible];
    sub_10000ABCC(v35, &qword_10018A310, &unk_1001241F0);
  }

  sub_100017C18();
}

void sub_100026E6C()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  sub_100008780();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  sub_10000871C(v12);
  v13 = v4;
  v14 = v6;
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v36 = v17;
    v18 = swift_slowAlloc();
    v19 = sub_100018FBC();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v18 = 136316930;
    v20 = sub_100018C34(ObjectType);
    v38 = v8;
    v22 = sub_10009CACC(v20, v21, &v39);

    *(v18 + 4) = v22;
    sub_100028CD8();
    sub_100018F80();
    *(v18 + 14) = sub_10009CACC(0xD00000000000001FLL, v23, v24);
    *(v18 + 22) = 2112;
    *(v18 + 24) = v14;
    *(v18 + 32) = 2112;
    *(v18 + 34) = v13;
    *v19 = v14;
    v19[1] = v13;
    *(v18 + 42) = 2080;
    v25 = v13;
    v26 = v14;
    v27 = [v25 role];
    type metadata accessor for Role(0);
    v28 = String.init<A>(describing:)();
    v30 = sub_10009CACC(v28, v29, &v39);

    *(v18 + 44) = v30;
    *(v18 + 52) = 2112;
    v31 = [v25 configuration];
    *(v18 + 54) = v31;
    v19[2] = v31;
    *(v18 + 62) = 2080;
    sub_100028B14(v25);
    sub_100003768(&qword_10018A2F8, &qword_1001241D8);
    v32 = String.init<A>(describing:)();
    v34 = sub_10009CACC(v32, v33, &v39);

    *(v18 + 64) = v34;
    *(v18 + 72) = 2112;
    *(v18 + 74) = v15;
    v19[3] = v15;
    v35 = v15;
    _os_log_impl(&_mh_execute_header, v16, v36, "%s.%s - scene: %@,\n    session: %@,\n    sessionRole: %s,\n    session.configuration: %@,\n    session.userInfo: %s,\n    connectionOptions: %@", v18, 0x52u);
    sub_100003768(&qword_100189390, &qword_1001241D0);
    swift_arrayDestroy();
    sub_100028CF4();
    swift_arrayDestroy();
    sub_100008744(v37);
    sub_100028CB0();

    (*(v10 + 8))(v0, v38);
  }

  else
  {

    (*(v10 + 8))(v0, v8);
  }

  sub_100017C18();
}

void sub_10002721C(uint64_t a1, uint64_t a2)
{
  sub_1000272A8();
  v3 = *(v2 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_hostingController);
  if (v3)
  {
    v4 = v3;
    SupportFlowHostingController.scene(_:openURLContexts:)();
  }
}

void sub_1000272A8()
{
  sub_100017C00();
  v2 = sub_100028E24();
  v3 = type metadata accessor for Logger();
  sub_100008780();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  sub_10000871C(v7);
  v8 = v1;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100028ED0();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    sub_100028EB8(v13);
    *v11 = 136315906;
    v14 = sub_100018C34(v2);
    v16 = sub_10009CACC(v14, v15, &v29);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_100018F80();
    *(v11 + 14) = sub_10009CACC(0xD000000000000019, v17, v18);
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v8;
    *(v11 + 32) = 2080;
    sub_100028A60();
    sub_100028C38();
    sub_100028B80(v19, v20, &protocol conformance descriptor for NSObject);
    v21 = v8;
    v22 = Set.description.getter();
    v24 = v23;
    v25 = sub_10009CACC(v22, v23, &v29);

    *(v11 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s - scene: %@, URLContext: %s", v11, 0x2Au);
    sub_10000ABCC(v12, &qword_100189390, &qword_1001241D0);
    sub_100028D10();
    sub_100028CE4();
    swift_arrayDestroy();
    sub_100008744(v24);
    sub_100008744(v11);

    v26 = sub_100028CCC();
  }

  else
  {

    v28 = *(v5 + 8);
    v26 = v0;
    v27 = v3;
  }

  v28(v26, v27);
  sub_100017C18();
}

void sub_10002754C()
{
  sub_100017C00();
  sub_100028E24();
  sub_100028E88();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  v4 = v0;
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100018FBC();
    sub_100028C90();
    v6 = sub_100028D48();
    sub_100028D8C(v6);
    v7 = sub_100028E58(4.8152e-34);
    sub_100028E70(v7, v8);
    sub_100028EA0();
    sub_100028C80();
    sub_100018F80();
    v11 = sub_10009CACC(0xD000000000000018, v9, v10);
    sub_100028C24(v11);
    *v1 = v4;
    v12 = v4;
    sub_100028C50();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
    sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
    sub_100028D10();
    sub_100028D2C();
    sub_100028CF4();
    sub_100028CB0();

    v18 = sub_100028C70();
  }

  else
  {

    v18 = sub_100028C60();
  }

  v19(v18);
  sub_100017C18();
}

void sub_10002774C()
{
  sub_100017C00();
  sub_100028E24();
  sub_100028E88();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  v4 = v0;
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100018FBC();
    sub_100028C90();
    v6 = sub_100028D48();
    sub_100028D8C(v6);
    v7 = sub_100028E58(4.8152e-34);
    sub_100028E70(v7, v8);
    sub_100028EA0();
    sub_100028C80();
    sub_100018F80();
    v11 = sub_10009CACC(0xD000000000000019, v9, v10);
    sub_100028C24(v11);
    *v1 = v4;
    v12 = v4;
    sub_100028C50();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
    sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
    sub_100028D10();
    sub_100028D2C();
    sub_100028CF4();
    sub_100028CB0();

    v18 = sub_100028C70();
  }

  else
  {

    v18 = sub_100028C60();
  }

  v19(v18);
  sub_100017C18();
}

void sub_10002794C(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  a2();
  v6 = *(v3 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_hostingController);
  if (v6)
  {
    v7 = v6;
    a3(a1);
  }
}

void sub_1000279DC()
{
  sub_100017C00();
  sub_100028E24();
  sub_100028E88();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  v4 = v0;
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100018FBC();
    sub_100028C90();
    v6 = sub_100028D48();
    sub_100028D8C(v6);
    v7 = sub_100028E58(4.8152e-34);
    sub_100028E70(v7, v8);
    sub_100028EA0();
    sub_100028C80();
    sub_100018F80();
    v11 = sub_10009CACC(0xD00000000000001BLL, v9, v10);
    sub_100028C24(v11);
    *v1 = v4;
    v12 = v4;
    sub_100028C50();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
    sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
    sub_100028D10();
    sub_100028D2C();
    sub_100028CF4();
    sub_100028CB0();

    v18 = sub_100028C70();
  }

  else
  {

    v18 = sub_100028C60();
  }

  v19(v18);
  sub_100017C18();
}

id sub_100027BB0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_window] = 0;
  *&v1[OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_hostingController] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_100027C20()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow20DefaultSceneDelegate_hostingController);
}

void sub_100027CE8()
{
  sub_100017C00();
  sub_100028E08();
  sub_100028EC4();
  v4 = type metadata accessor for Logger();
  sub_100008780();
  v6 = __chkstk_darwin(v5);
  sub_10000871C(v6);
  v7 = v1;
  v8 = v0;
  v9 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100028ED0();
    sub_100028DD0();
    v10 = sub_100028E3C();
    sub_100028EB8(v10);
    *v1 = 136315906;
    v11 = sub_100018C34(v2);
    sub_10009CACC(v11, v12, &v26);
    sub_100028D98();
    *(v1 + 1) = v4;
    sub_100028CD8();
    sub_100018F80();
    v15 = sub_10009CACC(0xD000000000000012, v13, v14);
    sub_100028C24(v15);
    sub_100028DB4(v16);
    v17 = v8;
    sub_100028C50();
    _os_log_impl(v18, v19, v20, v21, v22, 0x2Au);
    v23 = sub_100003768(&qword_100189390, &qword_1001241D0);
    sub_100028DEC(v23);
    sub_100008744(v3);
    sub_100028CE4();
    swift_arrayDestroy();
    sub_100008744(v4);
    sub_100028CB0();

    v24 = sub_100028CCC();
  }

  else
  {

    v24 = sub_100028D64();
  }

  v25(v24);
  sub_100017C18();
}

void sub_100027E8C()
{
  sub_100017C00();
  sub_100028E24();
  sub_100028E88();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  v4 = v0;
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100018FBC();
    sub_100028C90();
    v6 = sub_100028D48();
    sub_100028D8C(v6);
    v7 = sub_100028E58(4.8152e-34);
    sub_100028E70(v7, v8);
    sub_100028EA0();
    sub_100028C80();
    sub_100018F80();
    v11 = sub_10009CACC(0xD000000000000016, v9, v10);
    sub_100028C24(v11);
    *v1 = v4;
    v12 = v4;
    sub_100028C50();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
    sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
    sub_100028D10();
    sub_100028D2C();
    sub_100028CF4();
    sub_100028CB0();

    v18 = sub_100028C70();
  }

  else
  {

    v18 = sub_100028C60();
  }

  v19(v18);
  sub_100017C18();
}

void sub_100027FF8()
{
  sub_100017C00();
  sub_100028E24();
  sub_100028E88();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  v4 = v0;
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100018FBC();
    sub_100028C90();
    v6 = sub_100028D48();
    sub_100028D8C(v6);
    v7 = sub_100028E58(4.8152e-34);
    sub_100028E70(v7, v8);
    sub_100028EA0();
    sub_100028C80();
    sub_100018F80();
    v11 = sub_10009CACC(0xD00000000000001CLL, v9, v10);
    sub_100028C24(v11);
    *v1 = v4;
    v12 = v4;
    sub_100028C50();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
    sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
    sub_100028D10();
    sub_100028D2C();
    sub_100028CF4();
    sub_100028CB0();

    v18 = sub_100028C70();
  }

  else
  {

    v18 = sub_100028C60();
  }

  v19(v18);
  sub_100017C18();
}

void sub_100028164()
{
  sub_100017C00();
  sub_100028E08();
  sub_100028EC4();
  v4 = type metadata accessor for Logger();
  sub_100008780();
  v6 = __chkstk_darwin(v5);
  sub_10000871C(v6);
  v7 = v1;
  v8 = v0;
  v9 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100028ED0();
    sub_100028DD0();
    v10 = sub_100028E3C();
    sub_100028EB8(v10);
    *v1 = 136315906;
    v11 = sub_100018C34(v2);
    sub_10009CACC(v11, v12, &v26);
    sub_100028D98();
    *(v1 + 1) = v4;
    sub_100028CD8();
    sub_100018F80();
    v15 = sub_10009CACC(0xD000000000000013, v13, v14);
    sub_100028C24(v15);
    sub_100028DB4(v16);
    v17 = v8;
    sub_100028C50();
    _os_log_impl(v18, v19, v20, v21, v22, 0x2Au);
    v23 = sub_100003768(&qword_100189390, &qword_1001241D0);
    sub_100028DEC(v23);
    sub_100008744(v3);
    sub_100028CE4();
    swift_arrayDestroy();
    sub_100008744(v4);
    sub_100028CB0();

    v24 = sub_100028CCC();
  }

  else
  {

    v24 = sub_100028D64();
  }

  v25(v24);
  sub_100017C18();
}

void sub_100028308()
{
  sub_100017C00();
  sub_100028E08();
  sub_100028EC4();
  v4 = type metadata accessor for Logger();
  sub_100008780();
  v6 = __chkstk_darwin(v5);
  sub_10000871C(v6);
  v7 = v1;
  v8 = v0;
  v9 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_100028D74())
  {
    sub_100028ED0();
    sub_100028DD0();
    v10 = sub_100028E3C();
    sub_100028EB8(v10);
    *v1 = 136315906;
    v11 = sub_100018C34(v2);
    sub_10009CACC(v11, v12, &v26);
    sub_100028D98();
    *(v1 + 1) = v4;
    sub_100028CD8();
    sub_100018F80();
    v15 = sub_10009CACC(0xD000000000000025, v13, v14);
    sub_100028C24(v15);
    sub_100028DB4(v16);
    v17 = v8;
    sub_100028C50();
    _os_log_impl(v18, v19, v20, v21, v22, 0x2Au);
    v23 = sub_100003768(&qword_100189390, &qword_1001241D0);
    sub_100028DEC(v23);
    sub_100008744(v3);
    sub_100028CE4();
    swift_arrayDestroy();
    sub_100008744(v4);
    sub_100028CB0();

    v24 = sub_100028CCC();
  }

  else
  {

    v24 = sub_100028D64();
  }

  v25(v24);
  sub_100017C18();
}

uint64_t sub_1000285D8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  sub_100028A60();
  sub_100028C38();
  sub_100028B80(v8, v9, &protocol conformance descriptor for NSObject);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a1;
  a5(v11, v10);
}

id sub_100028994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegateImpl();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100028A04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100028A60()
{
  result = qword_10018A2E8;
  if (!qword_10018A2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018A2E8);
  }

  return result;
}

uint64_t sub_100028AA4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100028B14(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100028B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100028BC8(uint64_t a1)
{
  v2 = type metadata accessor for DeepLinkContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028C24(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_100028C90()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

uint64_t sub_100028CB0()
{
}

uint64_t sub_100028CF4()
{
}

uint64_t sub_100028D10()
{
}

uint64_t sub_100028D2C()
{

  return swift_arrayDestroy();
}

uint64_t sub_100028D48()
{

  return swift_slowAlloc();
}

BOOL sub_100028D74()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100028D98()
{
  *(v1 - 96) = v0;
}

id sub_100028DB4@<X0>(__int16 a1@<W8>)
{
  *(v1 + 32) = a1;
  *(v1 + 34) = v3;
  *v4 = v2;
  v4[1] = v3;

  return v2;
}

uint64_t sub_100028DD0()
{

  return swift_slowAlloc();
}

uint64_t sub_100028DEC(uint64_t a1)
{

  return swift_arrayDestroy();
}

uint64_t sub_100028E08()
{

  return swift_getObjectType();
}

uint64_t sub_100028E24()
{

  return swift_getObjectType();
}

uint64_t sub_100028E3C()
{

  return swift_slowAlloc();
}

uint64_t sub_100028E58(float a1)
{
  *v1 = a1;

  return sub_100018C34(v2);
}

unint64_t sub_100028E70(uint64_t a1, unint64_t a2)
{

  return sub_10009CACC(a1, a2, (v2 - 88));
}

uint64_t sub_100028E88()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100028EA0()
{
}

uint64_t sub_100028EB8(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 88) = result;
  return result;
}

uint64_t sub_100028ED0()
{

  return swift_slowAlloc();
}

uint64_t sub_100028EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100028FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_1001889F0, &qword_100121D20);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FlowStepSectionHeaderView(uint64_t a1)
{
  result = qword_10018A378;
  if (!qword_10018A378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000290D0(uint64_t a1)
{
  sub_100029144(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100029144(uint64_t a1)
{
  if (!qword_10018A388)
  {
    type metadata accessor for FlowImage(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10018A388);
    }
  }
}

uint64_t sub_1000291B8@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100003768(&qword_10018A3B8, &qword_100124270);
  sub_100029268(v2, a2 + *(v4 + 44));
  v5 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_100003768(&qword_10018A3C0, &qword_100124278);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_100029268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_100003768(&qword_10018A3C8, &qword_100124280);
  v36[1] = v3;
  __chkstk_darwin(v3);
  v5 = v36 - v4;
  v39 = sub_100003768(&qword_10018A3D0, &unk_100124288);
  v6 = *(v39 - 8);
  v7 = __chkstk_darwin(v39);
  v38 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = v36 - v9;
  v10 = type metadata accessor for FlowImageView(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v36 - v14;
  sub_1000295B0(a1, v36 - v14);
  v16 = (a1 + *(type metadata accessor for FlowStepSectionHeaderView(0) + 20));
  v17 = v16[1];
  v41 = *v16;
  v42 = v17;
  sub_10000AC24();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v5[*(v3 + 36)];
  v26 = *(sub_100003768(&qword_100189040, &qword_1001223E0) + 28);
  v27 = type metadata accessor for Text.Case();
  sub_100003CE8(v25 + v26, 1, 1, v27);
  *v25 = swift_getKeyPath();
  *v5 = v18;
  *(v5 + 1) = v20;
  v5[16] = v22 & 1;
  *(v5 + 3) = v24;
  static Font.Weight.semibold.getter();
  sub_100029628();
  v28 = v37;
  View.fontWeight(_:)();
  sub_1000296E0(v5);
  sub_100029748(v15, v13);
  v29 = *(v6 + 16);
  v31 = v38;
  v30 = v39;
  v29(v38, v28, v39);
  v32 = v40;
  sub_100029748(v13, v40);
  v33 = sub_100003768(&qword_10018A3E0, &qword_1001242C8);
  v29((v32 + *(v33 + 48)), v31, v30);
  v34 = *(v6 + 8);
  v34(v28, v30);
  sub_1000297AC(v15);
  v34(v31, v30);
  return sub_1000297AC(v13);
}

uint64_t sub_1000295B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100029628()
{
  result = qword_10018A3D8;
  if (!qword_10018A3D8)
  {
    sub_100004D48(&qword_10018A3C8, &qword_100124280);
    sub_10000AAEC(&qword_100189090, &qword_100189040, &qword_1001223E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A3D8);
  }

  return result;
}

uint64_t sub_1000296E0(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018A3C8, &qword_100124280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000297AC(uint64_t a1)
{
  v2 = type metadata accessor for FlowImageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002980C()
{
  result = qword_10018A3E8;
  if (!qword_10018A3E8)
  {
    sub_100004D48(&qword_10018A3C0, &qword_100124278);
    sub_10000AAEC(&qword_10018A3F0, &qword_10018A3F8, &qword_1001242D0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A3E8);
  }

  return result;
}

void *sub_1000298F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow24RemoteAlertSceneDelegate_window);
  v2 = v1;
  return v1;
}

id sub_100029998(void *a1)
{
  v2 = v1;
  type metadata accessor for SupportFlowHostingController.HostingType();
  sub_100008780();
  v130 = v5;
  v131 = v4;
  __chkstk_darwin(v4);
  sub_10000C30C();
  v129 = v7 - v6;
  v8 = type metadata accessor for SupportFlowHostingController.Configuration();
  __chkstk_darwin(v8 - 8);
  sub_10000C30C();
  v11 = v10 - v9;
  type metadata accessor for PresentationDetent();
  sub_100008780();
  v125 = v13;
  v126 = v12;
  __chkstk_darwin(v12);
  sub_100012454();
  v124 = v14 - v15;
  sub_10002B0CC();
  __chkstk_darwin(v16);
  v123 = &v116 - v17;
  v128 = type metadata accessor for RemoteAlertView(0);
  __chkstk_darwin(v128);
  sub_10000C30C();
  v127 = v19 - v18;
  v20 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v20 - 8);
  sub_100012454();
  v122 = v21 - v22;
  sub_10002B0CC();
  __chkstk_darwin(v23);
  v119 = &v116 - v24;
  sub_10002B0CC();
  __chkstk_darwin(v25);
  v132 = &v116 - v26;
  sub_10002B0CC();
  __chkstk_darwin(v27);
  v29 = &v116 - v28;
  v135 = type metadata accessor for Logger();
  sub_100008780();
  v133 = v30;
  __chkstk_darwin(v31);
  sub_100012454();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v121 = &v116 - v36;
  sub_10002B0CC();
  v38 = __chkstk_darwin(v37);
  v40 = &v116 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v116 - v42;
  __chkstk_darwin(v41);
  v45 = &v116 - v44;
  sub_100026E6C();
  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (v46)
  {
    v47 = v46;
    v117 = v40;
    v48 = a1;
    static Logger.supportFlowApp.getter();
    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v52 = os_log_type_enabled(v50, v51);
    v120 = v29;
    v116 = v2;
    v118 = v11;
    v134 = v47;
    if (v52)
    {
      v53 = sub_10002B114();
      v54 = sub_100018FBC();
      v137 = v54;
      *v53 = 136315138;
      v136[0] = sub_10002AF30(v47);
      v136[1] = v55;
      sub_100003768(&qword_10018A518, &qword_100124920);
      v56 = String.init<A>(describing:)();
      v58 = sub_10009CACC(v56, v57, &v137);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Configuration Identifier: %s", v53, 0xCu);
      sub_1000086BC(v54);
      v59 = v54;
      v29 = v120;
      sub_100008744(v59);
      sub_100008744(v53);
    }

    v60 = *(v133 + 1);
    v61 = v135;
    v60(v45, v135);
    static Logger.supportFlowApp.getter();
    v62 = v49;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    v65 = os_log_type_enabled(v63, v64);
    v133 = v60;
    v66 = v117;
    if (v65)
    {
      v67 = sub_10002B114();
      v68 = sub_100018FBC();
      v136[0] = v68;
      *v67 = 136315138;
      v69 = [v134 configurationContext];
      if (v69)
      {
        v69 = sub_10002B000(v69);
      }

      v137 = v69;
      sub_100003768(&qword_10018A510, &unk_100124300);
      v70 = String.init<A>(describing:)();
      v72 = sub_10009CACC(v70, v71, v136);

      *(v67 + 4) = v72;
      sub_10002B0F4(&_mh_execute_header, v73, v74, "Configuration Context: %s");
      sub_1000086BC(v68);
      sub_100008744(v68);
      sub_100008744(v67);

      v61 = v135;
      v60 = v133;
      v133(v43, v135);
      v29 = v120;
    }

    else
    {

      v60(v43, v61);
    }

    static Logger.supportFlowApp.getter();
    v79 = v62;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v80, v81))
    {
      sub_10002B114();
      v82 = sub_10002B0D8();
      *v61 = 138412290;
      v83 = [v134 activationContext];
      *(v61 + 4) = v83;
      *v82 = v83;
      sub_10002B0F4(&_mh_execute_header, v84, v85, "Activation Context: %@");
      sub_10001D724(v82, &qword_100189390, &qword_1001241D0);
      v86 = v82;
      v60 = v133;
      sub_100008744(v86);
      v87 = v61;
      v61 = v135;
      sub_100008744(v87);
    }

    v60(v66, v61);
    v117 = v79;
    sub_10002A614(v134, v29);
    v88 = v121;
    static Logger.supportFlowApp.getter();
    v89 = v132;
    sub_10002AE78(v29, v132);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = v89;
      v93 = sub_10002B114();
      v94 = sub_100018FBC();
      v136[0] = v94;
      *v93 = 136315138;
      v95 = v119;
      sub_10002AE78(v92, v119);
      v96 = type metadata accessor for SupportFlowIdentifier();
      if (sub_10000E5F0(v95, 1, v96) == 1)
      {
        sub_10001D724(v95, &unk_10018A300, &unk_1001241E0);
        v97 = 0xE700000000000000;
        v98 = 0x6E776F6E6B6E55;
      }

      else
      {
        v98 = SupportFlowIdentifier.rawValue.getter();
        v97 = v99;
        (*(*(v96 - 8) + 8))(v95, v96);
      }

      sub_10001D724(v132, &unk_10018A300, &unk_1001241E0);
      v100 = sub_10009CACC(v98, v97, v136);

      *(v93 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v90, v91, "Requested Flow Identifier: %s", v93, 0xCu);
      sub_1000086BC(v94);
      sub_100008744(v94);
      sub_100008744(v93);

      v133(v88, v135);
      v29 = v120;
    }

    else
    {

      sub_10001D724(v89, &unk_10018A300, &unk_1001241E0);
      v60(v88, v61);
    }

    v101 = objc_allocWithZone(UIWindow);
    v102 = v134;
    v103 = [v101 initWithWindowScene:v134];
    v104 = v122;
    sub_10002AE78(v29, v122);
    type metadata accessor for RemoteAlertViewModel(0);
    swift_allocObject();
    v105 = sub_1000D6730(v102, v104, 0);

    v106 = v123;
    static PresentationDetent.large.getter();
    v107 = v125;
    v108 = v126;
    (*(v125 + 16))(v124, v106, v126);
    v109 = v127;
    State.init(wrappedValue:)();
    (*(v107 + 8))(v106, v108);
    v110 = v129;
    *(v109 + *(v128 + 20)) = v105;
    (*(v130 + 104))(v110, enum case for SupportFlowHostingController.HostingType.remoteAlert(_:), v131);
    SupportFlowHostingController.Configuration.init(hostingType:showsSearchBar:clientBundleIdentifier:)();
    sub_10002AEE8(&qword_10018A4F8, type metadata accessor for RemoteAlertViewModel, &unk_10012E974);
    objc_allocWithZone(type metadata accessor for SupportFlowHostingController());
    sub_10002AEE8(&unk_10018A500, type metadata accessor for RemoteAlertView, &unk_100130D34);

    v111 = SupportFlowHostingController.init<A>(rootView:configuration:delegate:)();
    result = [v111 view];
    if (result)
    {
      v112 = result;
      v113 = [objc_opt_self() clearColor];
      [v112 setBackgroundColor:v113];

      [v103 setRootViewController:v111];
      v114 = *(v116 + OBJC_IVAR____TtC11SupportFlow24RemoteAlertSceneDelegate_window);
      *(v116 + OBJC_IVAR____TtC11SupportFlow24RemoteAlertSceneDelegate_window) = v103;
      v115 = v103;

      [v115 makeKeyAndVisible];
      [v102 setAllowsMenuButtonDismissal:1];

      return sub_10001D724(v29, &unk_10018A300, &unk_1001241E0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logger.supportFlowApp.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Remote scene not available", v77, 2u);
      sub_100008744(v77);
    }

    return (*(v133 + 1))(v34, v135);
  }

  return result;
}

void sub_10002A614(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  v3 = a1;
  v4 = sub_10002AF30(v3);
  v6 = v5;
  type metadata accessor for SupportFlowRemoteUIPresenter();
  v7 = static SupportFlowRemoteUIPresenter.configurationIdentifier.getter();
  if (!v6)
  {

    goto LABEL_20;
  }

  if (v4 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = [v3 configurationContext];
  if (!v11)
  {
LABEL_20:

    goto LABEL_21;
  }

  v12 = v11;
  v13 = sub_10002AF94(v11);
  if (v13)
  {
    v14 = v13;
    static SupportFlowRemoteUIPresenter.ConfigurationContextKey.flowIdentifier.getter();
    AnyHashable.init<A>(_:)();
    sub_100082CD0(v14, &v17, &v16);

    sub_10002B078(&v16);
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        SupportFlowIdentifier.init(rawValue:)();

        return;
      }

      goto LABEL_20;
    }
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  sub_10001D724(&v17, &unk_10018A520, &unk_100124310);
LABEL_21:
  v15 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(a2, 1, 1, v15);
}

uint64_t sub_10002A7EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  sub_100008780();
  __chkstk_darwin(v4);
  sub_10000C30C();
  static Logger.supportFlowApp.getter();
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    sub_100018FBC();
    v8 = sub_10002B0D8();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v3 = 136315650;
    v10 = sub_100018C34(ObjectType);
    v12 = sub_10009CACC(v10, v11, &v17);

    *(v3 + 4) = v12;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_10009CACC(0xD000000000000041, 0x8000000100134DF0, &v17);
    *(v3 + 22) = 2112;
    *(v3 + 24) = v5;
    *v8 = v5;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s - scene: %@", v3, 0x20u);
    sub_10001D724(v8, &qword_100189390, &qword_1001241D0);
    sub_100008744(v8);
    swift_arrayDestroy();
    sub_100008744(v9);
    sub_100008744(v3);

    v14 = sub_100018FB0();
  }

  else
  {

    v14 = sub_100018FB0();
  }

  return v15(v14, v3);
}

uint64_t sub_10002AA68(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for Logger();
  sub_100008780();
  __chkstk_darwin(v10);
  sub_10000C30C();
  static Logger.supportFlowApp.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    swift_slowAlloc();
    v14 = sub_10002B0D8();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v9 = 136316162;
    v15 = sub_100018C34(ObjectType);
    v17 = sub_10009CACC(v15, v16, &v26);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10009CACC(0xD000000000000064, 0x8000000100134D80, &v26);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v11;
    *v14 = v11;
    *(v9 + 32) = 1024;
    *(v9 + 34) = a2 & 1;
    *(v9 + 38) = 2080;
    type metadata accessor for CGRect(0);
    v18 = v11;
    v19 = String.init<A>(describing:)();
    v21 = sub_10009CACC(v19, v20, &v26);

    *(v9 + 40) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s - scene: %@, attachedToWindowedAccessory: %{BOOL}d, windowedAccessoryCutoutFrameInScreen: %s", v9, 0x30u);
    sub_10001D724(v14, &qword_100189390, &qword_1001241D0);
    sub_100008744(v14);
    swift_arrayDestroy();
    sub_100008744(v25);
    sub_100008744(v9);

    v22 = sub_100018FB0();
  }

  else
  {

    v22 = sub_100018FB0();
  }

  return v23(v22, v9);
}

id sub_10002AD9C()
{
  *&v0[OBJC_IVAR____TtC11SupportFlow24RemoteAlertSceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002AE10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002AE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AEE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002AF30(void *a1)
{
  v1 = [a1 configurationIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002AF94(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002B000(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002B0D8()
{

  return swift_slowAlloc();
}

void sub_10002B0F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10002B114()
{

  return swift_slowAlloc();
}

uint64_t sub_10002B134(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10002B174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002B1F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

void sub_10002B32C()
{
  sub_100017C00();
  v1 = v0;
  v39 = v2;
  v37 = sub_100003768(&qword_10018A530, &qword_100124440);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100012454();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_100003768(&qword_10018A538, &qword_100124448);
  sub_10000AF7C();
  __chkstk_darwin(v11);
  sub_100012454();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v38 = &v34 - v16;
  v17 = v1[3];
  v36 = v1[2];
  v35 = v17;
  v18 = v1[11];
  v34 = v1[10];
  sub_10002BE60((v1 + 5), v45, &qword_100189310, &qword_1001221A0);
  sub_10002BE1C(v1, v44);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v44, 0x60uLL);
  sub_10002BE60(v45, v44, &qword_100189310, &qword_1001221A0);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10002C280(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

  *v14 = Environment.init<A>(_:)();
  *(v14 + 8) = v20 & 1;
  v21 = type metadata accessor for HandoffBundle(0);
  sub_100003CE8(v9, 1, 1, v21);
  sub_10002BE60(v9, v6, &qword_10018A530, &qword_100124440);
  State.init(wrappedValue:)();
  sub_10000ABCC(v9, &qword_10018A530, &qword_100124440);
  v22 = v14 + *(v10 + 60);
  v41 = 0;
  v40 = 0;
  sub_100003768(&qword_10018A518, &qword_100124920);
  State.init(wrappedValue:)();
  v23 = v43;
  *v22 = v42;
  *(v22 + 16) = v23;
  v24 = (v14 + *(v10 + 64));
  v40 = 0;
  State.init(wrappedValue:)();
  v25 = *(&v42 + 1);
  *v24 = v42;
  v24[1] = v25;
  v26 = v35;
  *(v14 + 16) = v36;
  *(v14 + 24) = v26;
  if (v18)
  {
    v27 = v34;
  }

  else
  {
    v18 = sub_1000FF880(_swiftEmptyArrayStorage);
    v27 = 0;
  }

  sub_10000ABCC(v45, &qword_100189310, &qword_1001221A0);
  *(v14 + 32) = v27;
  *(v14 + 40) = v18;
  *(v14 + 48) = 0;
  v28 = v44[1];
  *(v14 + 56) = v44[0];
  *(v14 + 72) = v28;
  *(v14 + 88) = *&v44[2];
  *(v14 + 96) = sub_10002BE58;
  *(v14 + 104) = v19;
  v29 = v38;
  sub_10002CE6C(v14, v38, &qword_10018A538, &qword_100124448);
  sub_10002BE1C(v1, v44);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v44, 0x60uLL);
  sub_10002CEC8();
  sub_10000AAEC(v31, v32, &qword_100124448, v33);
  View.onLoad(perform:)();

  sub_10000ABCC(v29, &qword_10018A538, &qword_100124448);
  sub_100017C18();
}

uint64_t sub_10002B778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_10018A548, &qword_100124460);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &__src[-v6 - 8];
  if (*(a1 + 32))
  {

    sub_10002BF94(v8, sub_100114850, &qword_10018A580, &qword_1001244A0);
    v10 = v9;

    v16 = v10;
    swift_getKeyPath();
    sub_10002BE1C(a1, __src);
    v11 = swift_allocObject();
    memcpy((v11 + 16), __src, 0x60uLL);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10002C130;
    *(v12 + 24) = v11;
    sub_100003768(&qword_10018A550, &qword_100124488);
    sub_100003768(&qword_10018A558, &unk_100124490);
    sub_10000AAEC(&qword_10018A560, &qword_10018A550, &qword_100124488, &protocol conformance descriptor for [A]);
    sub_10002C280(&qword_10018A568, type metadata accessor for PlacardInfoItem, &unk_1001300C8);
    sub_10002C170();
    ForEach<>.init(_:id:content:)();
    (*(v5 + 32))(a2, v7, v4);
    return sub_100003CE8(a2, 0, 1, v4);
  }

  else
  {

    return sub_100003CE8(a2, 1, 1, v4);
  }
}

uint64_t sub_10002BA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002BE1C(a3, v8);
  v5 = swift_allocObject();
  memcpy((v5 + 16), v8, 0x60uLL);
  if (qword_1001881D8 != -1)
  {
    swift_once();
  }

  v8[0] = a2;
  LOBYTE(v8[1]) = 0;
  v8[2] = qword_1001A5758;
  v8[3] = qword_1001A5758;
  v8[4] = 0;
  v8[5] = sub_10002C328;
  v8[6] = v5;
  swift_retain_n();

  static String.stepSectionActionsFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100121620;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  String.init(format:_:)();

  sub_10002C22C();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_10002BBF0(uint64_t a1)
{
  v1 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B1F8();
  (*(v2 + 104))(v4, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v1);
  sub_100086184();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10002BCFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002BD94, v3, v2);
}

uint64_t sub_10002BD94()
{
  v1 = *(v0 + 16);

  if (*(v1 + 32))
  {
    sub_10002B1F8();
    sub_100086430();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002BE60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10002BEB0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_10002BCFC(v0 + 16);
}

void sub_10002BF94(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v6 = a2();
  v7 = 0;
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = _swiftEmptyArrayStorage;
  v11 = &_swiftEmptyArrayStorage[4];
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  while (v6 != v7)
  {
    if (v9)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v12 + 16))
      {
        goto LABEL_29;
      }

      v13 = *(a1 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v8)
    {
      sub_10002CEF0();
      if (v14)
      {
        goto LABEL_31;
      }

      v15 = v6;
      v16 = v9;
      sub_10002CEE4();
      if (v14 ^ v19 | v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = v17;
      }

      sub_100003768(a3, a4);
      v21 = sub_10002CF24();
      j__malloc_size(v21);
      sub_10002CEFC();
      v21[2] = v20;
      v21[3] = v22;
      v23 = (v21 + 4);
      v24 = v10[3];
      v25 = v24 >> 1;
      if (v10[2])
      {
        if (v21 != v10 || v23 >= &v10[2 * v25 + 4])
        {
          memmove(v21 + 4, v10 + 4, 16 * v25);
        }

        v10[2] = 0;
      }

      v11 = (v23 + 16 * v25);
      v8 = (v4 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

      v10 = v21;
      v9 = v16;
      v6 = v15;
      v12 = v30;
      a1 = v31;
    }

    v19 = __OFSUB__(v8--, 1);
    if (v19)
    {
      goto LABEL_30;
    }

    *v11 = v7;
    v11[1] = v13;
    v11 += 2;
    ++v7;
  }

  v27 = v10[3];
  if (v27 < 2)
  {
    return;
  }

  v28 = v27 >> 1;
  v19 = __OFSUB__(v28, v8);
  v29 = (v28 - v8);
  if (!v19)
  {
    v10[2] = v29;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10002C138()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002C170()
{
  result = qword_10018A570;
  if (!qword_10018A570)
  {
    sub_100004D48(&qword_10018A558, &unk_100124490);
    sub_10002C22C();
    sub_10002C280(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A570);
  }

  return result;
}

unint64_t sub_10002C22C()
{
  result = qword_10018A578;
  if (!qword_10018A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A578);
  }

  return result;
}

uint64_t sub_10002C280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C2C8()
{

  if (*(v0 + 80))
  {
    sub_1000086BC((v0 + 56));
  }

  return _swift_deallocObject(v0, 112, 7);
}

void sub_10002C370()
{
  sub_100017C00();
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v1;
    v6 = v0;
    v7 = 0;
    v8 = 0;
    v9 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      if (!v7)
      {
        sub_10002CEF0();
        if (v10)
        {
          goto LABEL_26;
        }

        sub_10002CEE4();
        if (v10 ^ v13 | v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        sub_100003768(v6, v5);
        v15 = sub_10002CF24();
        v16 = (j__malloc_size(v15) - 32) / 8;
        v15[2] = v14;
        v15[3] = (2 * v16);
        v17 = (v15 + 4);
        v18 = v4[3];
        v19 = v18 >> 1;
        if (v4[2])
        {
          if (v15 != v4 || v17 >= &v4[v19 + 4])
          {
            memmove(v15 + 4, v4 + 4, 8 * v19);
          }

          v4[2] = 0;
        }

        v9 = (v17 + 8 * v19);
        v7 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

        v4 = v15;
      }

      v13 = __OFSUB__(v7--, 1);
      if (v13)
      {
        break;
      }

      *v9++ = v8;
      if (v3 == ++v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = 0;
LABEL_21:
  v21 = v4[3];
  if (v21 < 2)
  {
LABEL_24:
    sub_100017C18();
    return;
  }

  v22 = v21 >> 1;
  v13 = __OFSUB__(v22, v7);
  v23 = (v22 - v7);
  if (!v13)
  {
    v4[2] = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
}

void sub_10002C4CC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  v4 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v3)
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = result + 32;
    while (1)
    {
      v9 = v6[v8];
      if (!v5)
      {
        sub_10002CEF0();
        if (v10)
        {
          goto LABEL_24;
        }

        sub_10002CEE4();
        if (v10 ^ v13 | v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        sub_100003768(a2, a3);
        v15 = sub_10002CF24();
        v16 = (j__malloc_size(v15) - 32) / 16;
        v15[2] = v14;
        v15[3] = (2 * v16);
        v17 = (v15 + 4);
        v18 = v4[3];
        v19 = v18 >> 1;
        if (v4[2])
        {
          if (v15 != v4 || v17 >= &v4[2 * v19 + 4])
          {
            memmove(v15 + 4, v4 + 4, 16 * v19);
          }

          v4[2] = 0;
        }

        v7 = (v17 + 16 * v19);
        v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

        v4 = v15;
      }

      v13 = __OFSUB__(v5--, 1);
      if (v13)
      {
        break;
      }

      *v7 = v6;
      *(v7 + 8) = v9;
      v7 += 2;
      if (v3 == ++v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v21 = v4[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v13 = __OFSUB__(v22, v5);
    v23 = (v22 - v5);
    if (v13)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v4[2] = v23;
  }
}

void sub_10002C618()
{
  sub_100017C00();
  v1 = v0;
  v2 = sub_100003768(&qword_10018A5A0, &qword_1001244C0);
  sub_100008780();
  __chkstk_darwin(v3);
  sub_100012454();
  v6 = (v4 - v5);
  v8 = __chkstk_darwin(v7);
  sub_10002CF10(v8, v9, v10, v11, v12, v13, v14, v15, v42);
  v16 = 0;
  v17 = 0;
  v19 = _swiftEmptyArrayStorage;
  v43 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = _swiftEmptyArrayStorage + v43;
  v44 = *(v1 + 16);
  while (1)
  {
    if (v44 == v17)
    {
      v39 = v19[3];
      if (v39 >= 2)
      {
        v40 = v39 >> 1;
        v28 = __OFSUB__(v40, v16);
        v41 = (v40 - v16);
        if (v28)
        {
          goto LABEL_35;
        }

        v19[2] = v41;
      }

      sub_100017C18();
      return;
    }

    v21 = *(type metadata accessor for DefaultFlowOverride(0) - 8);
    v22 = v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17;
    v23 = *(v2 + 48);
    *v6 = v17;
    sub_10002CE08(v22, v6 + v23);
    sub_10002CE6C(v6, v46, &qword_10018A5A0, &qword_1001244C0);
    if (v16)
    {
      v24 = v19;
    }

    else
    {
      sub_10002CEF0();
      if (v25)
      {
        goto LABEL_32;
      }

      v26 = v1;
      sub_10002CEE4();
      if (v25 ^ v28 | v33)
      {
        v29 = 1;
      }

      else
      {
        v29 = v27;
      }

      sub_100003768(&qword_10018A5A8, &qword_1001244C8);
      v30 = *(v45 + 72);
      v24 = swift_allocObject();
      v31 = j__malloc_size(v24);
      if (!v30)
      {
        goto LABEL_33;
      }

      v32 = v31 - v43;
      v33 = v31 - v43 == 0x8000000000000000 && v30 == -1;
      if (v33)
      {
        goto LABEL_34;
      }

      v34 = v32 / v30;
      v24[2] = v29;
      v24[3] = (2 * (v32 / v30));
      v35 = v24 + v43;
      v36 = v19[3];
      v37 = (v36 >> 1) * v30;
      if (v19[2])
      {
        if (v24 < v19 || v35 >= v19 + v43 + v37)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v24 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v19[2] = 0;
      }

      v20 = &v35[v37];
      v16 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - (v36 >> 1);

      v1 = v26;
    }

    v28 = __OFSUB__(v16--, 1);
    if (v28)
    {
      break;
    }

    sub_10002CE6C(v46, v20, &qword_10018A5A0, &qword_1001244C0);
    v20 += *(v45 + 72);
    ++v17;
    v19 = v24;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_10002C8FC()
{
  sub_100017C00();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v51 = sub_100003768(&qword_10018A5D8, &qword_1001244F8);
  sub_100008780();
  __chkstk_darwin(v6);
  sub_100012454();
  v9 = (v7 - v8);
  v11 = __chkstk_darwin(v10);
  sub_10002CF10(v11, v12, v13, v14, v15, v16, v17, v18, v47);
  v19 = 0;
  v20 = 0;
  v22 = _swiftEmptyArrayStorage;
  v48 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = _swiftEmptyArrayStorage + v48;
  v49 = v1 >> 1;
  v50 = v3 - (v1 >> 1);
  while (1)
  {
    if (!(v50 + v19))
    {
      v44 = v22[3];
      if (v44 >= 2)
      {
        v45 = v44 >> 1;
        v33 = __OFSUB__(v45, v20);
        v46 = (v45 - v20);
        if (v33)
        {
          goto LABEL_39;
        }

        v22[2] = v46;
      }

      sub_100017C18();
      return;
    }

    if (v3 + v19 >= v49)
    {
      break;
    }

    type metadata accessor for HMTSolution.Article();
    sub_10000AF7C();
    v25 = *(v24 + 16);
    v26 = v5 + *(v24 + 72) * (v3 + v19);
    v27 = *(v51 + 48);
    *v9 = v19;
    v25(&v9[v27], v26);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_34;
    }

    sub_10002CE6C(v9, v53, &qword_10018A5D8, &qword_1001244F8);
    if (v20)
    {
      v28 = v22;
    }

    else
    {
      sub_10002CEF0();
      if (v29)
      {
        goto LABEL_36;
      }

      v30 = v5;
      v31 = v3;
      sub_10002CEE4();
      if (v29 ^ v33 | v38)
      {
        v34 = 1;
      }

      else
      {
        v34 = v32;
      }

      sub_100003768(&qword_10018A5E0, &unk_100124500);
      v35 = *(v52 + 72);
      v28 = swift_allocObject();
      v36 = j__malloc_size(v28);
      if (!v35)
      {
        goto LABEL_37;
      }

      v37 = v36 - v48;
      v38 = v36 - v48 == 0x8000000000000000 && v35 == -1;
      if (v38)
      {
        goto LABEL_38;
      }

      v39 = v37 / v35;
      v28[2] = v34;
      v28[3] = (2 * (v37 / v35));
      v40 = v28 + v48;
      v41 = v22[3];
      v42 = (v41 >> 1) * v35;
      if (v22[2])
      {
        if (v28 < v22 || v40 >= v22 + v48 + v42)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v28 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v22[2] = 0;
      }

      v23 = &v40[v42];
      v20 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - (v41 >> 1);

      v3 = v31;
      v5 = v30;
    }

    v33 = __OFSUB__(v20--, 1);
    if (v33)
    {
      goto LABEL_35;
    }

    sub_10002CE6C(v53, v23, &qword_10018A5D8, &qword_1001244F8);
    v23 += *(v52 + 72);
    ++v19;
    v22 = v28;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_10002CBE8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100114850(a1);
  v4 = 0;
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = _swiftEmptyArrayStorage;
  v8 = &_swiftEmptyArrayStorage[4];
  v9 = v2 & 0xFFFFFFFFFFFFFF8;
  v28 = v2 & 0xFFFFFFFFFFFFFF8;
  v29 = v2;
  while (v3 != v4)
  {
    if (v6)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v2 + 8 * v4 + 32);
    }

    v11 = v10;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v5)
    {
      sub_10002CEF0();
      if (v12)
      {
        goto LABEL_31;
      }

      v13 = v3;
      v14 = v6;
      sub_10002CEE4();
      if (v12 ^ v17 | v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = v15;
      }

      sub_100003768(&qword_10018A590, &qword_1001244B0);
      v19 = sub_10002CF24();
      j__malloc_size(v19);
      sub_10002CEFC();
      v19[2] = v18;
      v19[3] = v20;
      v21 = (v19 + 4);
      v22 = v7[3];
      v23 = v22 >> 1;
      if (v7[2])
      {
        if (v19 != v7 || v21 >= &v7[2 * v23 + 4])
        {
          memmove(v19 + 4, v7 + 4, 16 * v23);
        }

        v7[2] = 0;
      }

      v8 = (v21 + 16 * v23);
      v5 = (v1 & 0x7FFFFFFFFFFFFFFFLL) - (v22 >> 1);

      v7 = v19;
      v6 = v14;
      v3 = v13;
      v9 = v28;
      v2 = v29;
    }

    v17 = __OFSUB__(v5--, 1);
    if (v17)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v11;
    v8 += 2;
    ++v4;
  }

  v25 = v7[3];
  if (v25 < 2)
  {
    return;
  }

  v26 = v25 >> 1;
  v17 = __OFSUB__(v26, v5);
  v27 = (v26 - v5);
  if (!v17)
  {
    v7[2] = v27;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10002CD84()
{
  sub_100004D48(&qword_10018A538, &qword_100124448);
  sub_10002CEC8();
  sub_10000AAEC(v0, v1, &qword_100124448, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002CE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultFlowOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CE6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_10002CF24()
{

  return swift_allocObject();
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdateStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10002D008);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002D05C(uint64_t a1)
{
  if (a1 == 1)
  {
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    v5 = Environment.init<A>(_:)();
    v6 = v2 & 1;
    if (qword_1001881C8 != -1)
    {
      swift_once();
    }

    v7 = qword_1001A5738;
    v3 = 0;
    v4 = -1;

    sub_100003768(&qword_10018A630, &qword_100128450);
    State.init(wrappedValue:)();
    v15 = 0;
    v16 = v19[0];
    v17 = v19[1];
    v18 = v20;
    v9 = 0;
    v10 = 0;
    v8 = 1;
    v14 = 0;
    sub_10002D87C(&v5, v19);
    v21 = 1;
    sub_10002D7D4();
    sub_10002D828();
    _ConditionalContent<>.init(storage:)();
    sub_10002D8D8(&v3, v19);
    v22 = 0;
    sub_100003768(&qword_10018A610, &unk_100124690);
    sub_10002D748();
    sub_10002DA94();
    sub_10002D948(&v3);
    return sub_10002D9B0(&v5);
  }

  else if (a1)
  {
    sub_100003768(&qword_10018A610, &unk_100124690);
    sub_10002D748();
    return sub_10002DA94();
  }

  else
  {
    strcpy(v19, "SU_BETA_INFO");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    LOBYTE(v20) = 1;
    v21 = 0;
    sub_10002D7D4();
    sub_10002D828();
    _ConditionalContent<>.init(storage:)();
    sub_10002D8D8(&v3, v19);
    v22 = 0;
    sub_100003768(&qword_10018A610, &unk_100124690);
    sub_10002D748();
    sub_10002DA94();
    return sub_10002D948(&v3);
  }
}

unint64_t sub_10002D2F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175C88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002D33C(char a1)
{
  result = 0x5F415445425F5553;
  switch(a1)
  {
    case 1:
      result = 0x726F466B63656863;
      break;
    case 2:
      result = 0x4E494D4F435F5553;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0x524F5252455F5553;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10002D47C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002D2F0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002D4AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10002D33C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10002D4D8(uint64_t *a1@<X8>)
{
  sub_1000E7770(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10002D538()
{
  result = qword_10018A5E8;
  if (!qword_10018A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A5E8);
  }

  return result;
}

unint64_t sub_10002D58C()
{
  result = qword_10018A5F0;
  if (!qword_10018A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A5F0);
  }

  return result;
}

uint64_t sub_10002D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002D648()
{
  result = qword_10018A5F8;
  if (!qword_10018A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A5F8);
  }

  return result;
}

unint64_t sub_10002D69C()
{
  result = qword_10018A600;
  if (!qword_10018A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A600);
  }

  return result;
}

unint64_t sub_10002D6F4()
{
  result = qword_10018A608;
  if (!qword_10018A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A608);
  }

  return result;
}

unint64_t sub_10002D748()
{
  result = qword_10018A618;
  if (!qword_10018A618)
  {
    sub_100004D48(&qword_10018A610, &unk_100124690);
    sub_10002D7D4();
    sub_10002D828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A618);
  }

  return result;
}

unint64_t sub_10002D7D4()
{
  result = qword_10018A620;
  if (!qword_10018A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A620);
  }

  return result;
}

unint64_t sub_10002D828()
{
  result = qword_10018A628;
  if (!qword_10018A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A628);
  }

  return result;
}

uint64_t sub_10002D8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018A610, &unk_100124690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D948(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018A610, &unk_100124690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002DA08()
{
  result = qword_10018A638;
  if (!qword_10018A638)
  {
    sub_100004D48(&qword_10018A640, &unk_1001246A0);
    sub_10002D748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A638);
  }

  return result;
}

uint64_t sub_10002DA94()
{

  return _ConditionalContent<>.init(storage:)();
}

void sub_10002DAB0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v55 = type metadata accessor for SupportFlowHostingController.HostingType();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = type metadata accessor for SupportFlowHostingController.Configuration();
  __chkstk_darwin(v11 - 8);
  sub_10000C30C();
  v14 = v13 - v12;
  v15 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v50 - v16;
  v18 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v50 - v19;
  v54 = type metadata accessor for RootView(0);
  __chkstk_darwin(v54);
  sub_10000C30C();
  v23 = v22 - v21;
  sub_100026E6C();
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v52 = v14;
    v26 = objc_allocWithZone(UIWindow);
    v51 = a1;
    v50 = [v26 initWithWindowScene:v25];
    v27 = [a3 userActivities];
    sub_100025778(0, &qword_10018A680, NSUserActivity_ptr);
    sub_10002E878(&qword_10018A688, &qword_10018A680, NSUserActivity_ptr);
    v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = sub_1001097D0(v28);

    if (v29)
    {
      v30 = v29;
      sub_10002DFAC(v20);
    }

    else
    {
      v31 = type metadata accessor for SupportFlowIdentifier();
      sub_100003CE8(v20, 1, 1, v31);
    }

    v32 = type metadata accessor for DeepLinkContext(0);
    sub_100003CE8(v17, 1, 1, v32);
    sub_1000F350C(v20, v17, v23);
    v33 = [a2 role];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

      v40 = &enum case for SupportFlowHostingController.HostingType.sceneHosting(_:);
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v40 = &enum case for SupportFlowHostingController.HostingType.application(_:);
      if (v39)
      {
        v40 = &enum case for SupportFlowHostingController.HostingType.sceneHosting(_:);
      }
    }

    (*(v53 + 104))(v10, *v40, v55);
    if (v29)
    {
      v41 = v29;
      sub_10002E09C();

      v42 = v41;
      sub_10002E168();
    }

    SupportFlowHostingController.Configuration.init(hostingType:showsSearchBar:clientBundleIdentifier:)();
    v43 = objc_allocWithZone(type metadata accessor for SupportFlowHostingController());
    sub_10002E7B8();
    v44 = SupportFlowHostingController.init<A>(rootView:configuration:delegate:)();
    v45 = *(v4 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_hostingController);
    *(v4 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_hostingController) = v44;
    v46 = v44;

    v47 = v50;
    [v50 setRootViewController:v46];

    v48 = *(v4 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_window);
    *(v4 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_window) = v47;
    v49 = v47;

    [v49 makeKeyAndVisible];
  }
}

uint64_t sub_10002DFAC@<X0>(uint64_t a1@<X8>)
{
  if ((NSUserActivity.isSupportFlowServiceActivity.getter() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = sub_10002AF94(v1);
  if (!v3)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_7;
  }

  v4 = v3;
  static NSUserActivity.UserInfoKey.flowIdentifier.getter();
  AnyHashable.init<A>(_:)();
  sub_100082CD0(v4, &v8, &v7);

  sub_10002B078(&v7);
  if (!*(&v9 + 1))
  {
LABEL_7:
    sub_10002E810(&v8);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    return SupportFlowIdentifier.init(rawValue:)();
  }

LABEL_8:
  v6 = type metadata accessor for SupportFlowIdentifier();
  return sub_100003CE8(a1, 1, 1, v6);
}

uint64_t sub_10002E09C()
{
  if ((NSUserActivity.isSupportFlowServiceActivity.getter() & 1) == 0)
  {
    return 1;
  }

  v1 = sub_10002AF94(v0);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_7;
  }

  v2 = v1;
  static NSUserActivity.UserInfoKey.showsSearchBar.getter();
  AnyHashable.init<A>(_:)();
  sub_100082CD0(v2, &v5, v4);

  sub_10002B078(v4);
  if (!*(&v6 + 1))
  {
LABEL_7:
    sub_10002E810(&v5);
    return 1;
  }

  if (swift_dynamicCast())
  {
    return v4[0];
  }

  return 1;
}

uint64_t sub_10002E168()
{
  if ((NSUserActivity.isSupportFlowServiceActivity.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = sub_10002AF94(v0);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_7;
  }

  v2 = v1;
  static NSUserActivity.UserInfoKey.bundleIdentifier.getter();
  AnyHashable.init<A>(_:)();
  sub_100082CD0(v2, &v5, &v4);

  sub_10002B078(&v4);
  if (!*(&v6 + 1))
  {
LABEL_7:
    sub_10002E810(&v5);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

void sub_10002E2D0(uint64_t a1, uint64_t a2)
{
  sub_1000272A8();
  v3 = *(v2 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_hostingController);
  if (v3)
  {
    v4 = v3;
    SupportFlowHostingController.scene(_:openURLContexts:)();
  }
}

void sub_10002E56C(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  a2();
  v6 = *(v3 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_hostingController);
  if (v6)
  {
    v7 = v6;
    a3(a1);
  }
}

id sub_10002E664(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_window] = 0;
  *&v1[OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_hostingController] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneHostingDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_10002E6D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow20SceneHostingDelegate_hostingController);
}

id sub_10002E714(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneHostingDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10002E7B8()
{
  result = qword_10018A318;
  if (!qword_10018A318)
  {
    type metadata accessor for RootView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A318);
  }

  return result;
}

uint64_t sub_10002E810(uint64_t a1)
{
  v2 = sub_100003768(&unk_10018A520, &unk_100124310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E878(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100025778(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002E8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
}

_BYTE *storeEnumTagSinglePayload for SupportHandoffStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002E9ECLL);
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

unint64_t sub_10002EA50()
{
  result = qword_10018A690;
  if (!qword_10018A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A690);
  }

  return result;
}

unint64_t sub_10002EAA4()
{
  result = qword_10018A698;
  if (!qword_10018A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A698);
  }

  return result;
}

uint64_t sub_10002EAF8(char a1)
{
  v2 = sub_100003768(&qword_10018A6B8, &qword_1001248F0);
  __chkstk_darwin(v2);
  v4 = v21 - v3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  sub_10000C30C();
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  sub_10000C30C();
  v7 = type metadata accessor for FlowProgressView(0);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = (v9 - v8);
  if (a1)
  {
    type metadata accessor for SupportHandoffUserConsentViewModel(0);
    sub_10002F0C0(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel, &unk_100129670);
    *v4 = Environment.init<A>(_:)();
    v4[8] = v11 & 1;
    swift_storeEnumTagMultiPayload();
    sub_10002F2DC();
    sub_10002F0C0(v12, v13, &unk_10012F5D4);
    sub_10002F108();
    return sub_10002F2F4();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v17 = v16;
    v21[0] = 0;
    State.init(wrappedValue:)();
    v18 = v21[2];
    v10[4] = v21[1];
    v10[5] = v18;
    AccessibilityFocusState.init<>()();
    *v10 = v15;
    v10[1] = v17;
    v10[2] = 0;
    v10[3] = 0;
    sub_10002F15C(v10, v4);
    swift_storeEnumTagMultiPayload();
    sub_10002F2DC();
    sub_10002F0C0(v19, v20, &unk_10012F5D4);
    sub_10002F108();
    sub_10002F2F4();
    return sub_10002F1C0(v10);
  }
}

uint64_t sub_10002EDF0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175D50, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t sub_10002EE44(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x676E697461657263;
  }
}

uint64_t sub_10002EEAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002EDF0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10002EEDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002EE44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002EF08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7154();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002EF9C()
{
  result = qword_10018A6A0;
  if (!qword_10018A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6A0);
  }

  return result;
}

unint64_t sub_10002EFF0()
{
  result = qword_10018A6A8;
  if (!qword_10018A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6A8);
  }

  return result;
}

unint64_t sub_10002F06C()
{
  result = qword_10018A6B0;
  if (!qword_10018A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6B0);
  }

  return result;
}

uint64_t sub_10002F0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002F108()
{
  result = qword_10018A6C8;
  if (!qword_10018A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6C8);
  }

  return result;
}

uint64_t sub_10002F15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowProgressView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F1C0(uint64_t a1)
{
  v2 = type metadata accessor for FlowProgressView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002F220()
{
  result = qword_10018A6D0;
  if (!qword_10018A6D0)
  {
    sub_100004D48(&qword_10018A6D8, &qword_1001248F8);
    sub_10002F0C0(&qword_100189260, type metadata accessor for FlowProgressView, &unk_10012F5D4);
    sub_10002F108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6D0);
  }

  return result;
}

uint64_t sub_10002F2F4()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10002F314@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v14 = v2[4];
  v13 = v2[5];
  v15 = a1[2];
  v16 = a1[3];
  v18 = *v15;
  v19 = v15[2];
  v17 = v15[1];
  v28 = v15[3];
  v21 = v15[4];
  v20 = v15[5];
  v22 = *v16;
  v29 = v16[1];
  v23 = v16[2];
  v24 = v16[3];
  v25 = v16[4];
  v26 = v16[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v14;
  a2[11] = v13;
  a2[12] = v18;
  a2[13] = v17;
  a2[14] = v19;
  a2[15] = v28;
  a2[16] = v21;
  a2[17] = v20;
  a2[18] = v22;
  a2[19] = v29;
  a2[20] = v23;
  a2[21] = v24;
  a2[22] = v25;
  a2[23] = v26;

  sub_100032C08(v9, v10, v11, v12, v14, v13);
}

uint64_t sub_10002F438@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100003768(&qword_10018A7E8, &qword_100124AD8);
  sub_10002F4F4(v2, a2 + *(v4 + 44));
  v5 = (a2 + *(sub_100003768(&qword_10018A7F0, &qword_100124AE0) + 36));
  v6 = *(sub_100003768(&qword_10018A7F8, &qword_100124AE8) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v7 = type metadata accessor for SymbolRenderingMode();
  sub_100003CE8(v5 + v6, 0, 1, v7);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_10002F4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100003768(qword_10018A760, &qword_100124970);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_100003768(&qword_10018A800, &qword_100124B20);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v24 - v11);

  v13 = Image.init(_internalSystemName:)();
  v14 = type metadata accessor for Font.Design();
  sub_100003CE8(v5, 1, 1, v14);
  v15 = static Font.system(size:weight:design:)();
  sub_10000ABCC(v5, qword_10018A760, &qword_100124970);
  KeyPath = swift_getKeyPath();
  sub_100003768(&qword_10018A808, &qword_100124B58);
  TintShapeStyle.init()();
  *v12 = v13;
  v12[1] = KeyPath;
  v12[2] = v15;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = (v12 + *(v7 + 44));
  v18 = v29;
  *v17 = v28;
  v17[1] = v18;
  v17[2] = v30;
  v19 = static HorizontalAlignment.leading.getter();
  LOBYTE(v33[0]) = 1;
  sub_10002F850(a1, v31);
  *&v27[7] = v31[0];
  *&v27[23] = v31[1];
  *&v27[39] = v31[2];
  *&v27[55] = v31[3];
  LOBYTE(v15) = v33[0];
  v20 = swift_getKeyPath();
  v25 = v10;
  sub_10000EC9C(v12, v10, &qword_10018A800, &qword_100124B20);
  v21 = v26;
  sub_10000EC9C(v10, v26, &qword_10018A800, &qword_100124B20);
  v22 = *(sub_100003768(&qword_10018A810, &qword_100124B90) + 48);
  v32[0] = v19;
  v32[1] = 0;
  LOBYTE(v32[2]) = v15;
  memcpy(&v32[2] + 1, v27, 0x47uLL);
  v32[11] = v20;
  v32[12] = 2;
  LOBYTE(v32[13]) = 0;
  memcpy((v21 + v22), v32, 0x69uLL);
  sub_10000EC9C(v32, v33, &qword_10018A818, &qword_100124B98);
  sub_10000ABCC(v12, &qword_10018A800, &qword_100124B20);
  v33[0] = v19;
  v33[1] = 0;
  v34 = v15;
  memcpy(v35, v27, sizeof(v35));
  v36 = v20;
  v37 = 2;
  v38 = 0;
  sub_10000ABCC(v33, &qword_10018A818, &qword_100124B98);
  return sub_10000ABCC(v25, &qword_10018A800, &qword_100124B20);
}

uint64_t sub_10002F850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000AC24();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.Weight.bold.getter();
  v9 = Text.fontWeight(_:)();
  v37 = v10;
  v12 = v11;
  v14 = v13;
  sub_10000AC78(v4, v6, v8 & 1);

  if (a1[3])
  {

    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    static Font.subheadline.getter();
    v20 = Text.font(_:)();
    v35 = v12;
    v22 = v21;
    v36 = v14;
    v24 = v23;

    sub_10000AC78(v15, v17, v19 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v25 = Text.foregroundStyle<A>(_:)();
    v27 = v26;
    LOBYTE(v15) = v28;
    v30 = v29;
    v31 = v24 & 1;
    v14 = v36;
    v32 = v22;
    v12 = v35;
    sub_10000AC78(v20, v32, v31);

    v33 = v15 & 1;
    sub_100017564(v25, v27, v15 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v33 = 0;
    v30 = 0;
  }

  sub_100017564(v9, v37, v12 & 1);

  sub_100033128(v25, v27, v33, v30);
  sub_10003316C(v25, v27, v33, v30);
  *a2 = v9;
  *(a2 + 8) = v37;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v33;
  *(a2 + 56) = v30;
  sub_10003316C(v25, v27, v33, v30);
  sub_10000AC78(v9, v37, v12 & 1);
}

uint64_t sub_10002FB08(uint64_t a1)
{
  sub_100004D48(&qword_10018A820, &qword_100124BA0);
  v3 = *(a1 + 16);
  sub_100004D48(&qword_10018A828, &qword_100124BA8);
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_100189DC0, &qword_100124BB0);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  sub_100008780();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  static VerticalAlignment.top.getter();
  v13 = *(a1 + 24);
  v17 = v3;
  v18 = v13;
  v19 = v1;
  HStack.init(alignment:spacing:content:)();
  sub_10003349C();
  swift_getWitnessTable();
  sub_1000C6A00();
  v14 = *(v6 + 8);
  v14(v10, v4);
  sub_1000C6A00();
  return (v14)(v12, v4);
}

uint64_t sub_10002FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v36 = a4;
  v33 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004D48(&qword_10018A828, &qword_100124BA8);
  v8 = type metadata accessor for ModifiedContent();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v31 = &v29 - v9;
  sub_100004D48(&qword_100189DC0, &qword_100124BB0);
  v10 = type metadata accessor for ModifiedContent();
  v35 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v32 = &v29 - v14;
  v15 = static HorizontalAlignment.leading.getter();
  LOBYTE(__dst[0]) = 1;
  sub_10003024C(a1, v46);
  *&v45[7] = v46[0];
  *&v45[23] = v46[1];
  *&v45[39] = v46[2];
  *&v45[55] = v46[3];
  v16 = __dst[0];
  KeyPath = swift_getKeyPath();
  v47[0] = v15;
  v47[1] = 0;
  LOBYTE(v47[2]) = v16;
  v18 = memcpy(&v47[2] + 1, v45, 0x47uLL);
  v47[11] = KeyPath;
  LOBYTE(v47[12]) = 0;
  (*(a1 + 32))(v18);
  __dst[0] = static HierarchicalShapeStyle.secondary.getter();
  v20 = v30;
  v19 = v31;
  View.foregroundStyle<A>(_:)();
  (*(v33 + 8))(v7, a2);
  v21 = sub_10000AAEC(&qword_10018A830, &qword_10018A828, &qword_100124BA8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v44[5] = v20;
  v44[6] = v21;
  WitnessTable = swift_getWitnessTable();
  View.multilineTextAlignment(_:)();
  (*(v34 + 8))(v19, v8);
  v23 = sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v44[3] = WitnessTable;
  v44[4] = v23;
  v24 = swift_getWitnessTable();
  v25 = v32;
  sub_1000C6A00();
  v26 = v35;
  v27 = *(v35 + 8);
  v27(v13, v10);
  memcpy(v43, v47, 0x61uLL);
  v41 = 0x4030000000000000;
  v42 = 0;
  v44[0] = v43;
  v44[1] = &v41;
  (*(v26 + 16))(v13, v25, v10);
  v44[2] = v13;
  sub_10000EC9C(v47, __dst, &qword_10018A820, &qword_100124BA0);
  v40[0] = sub_100003768(&qword_10018A820, &qword_100124BA0);
  v40[1] = &type metadata for Spacer;
  v40[2] = v10;
  v37 = sub_1000331C4();
  v38 = &protocol witness table for Spacer;
  v39 = v24;
  sub_1000C2BF0(v44, 3, v40);
  sub_10000ABCC(v47, &qword_10018A820, &qword_100124BA0);
  v27(v25, v10);
  v27(v13, v10);
  memcpy(__dst, v43, 0x61uLL);
  return sub_10000ABCC(__dst, &qword_10018A820, &qword_100124BA0);
}

uint64_t sub_10003024C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000AC24();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.Weight.bold.getter();
  v9 = Text.fontWeight(_:)();
  v11 = v10;
  v37 = v12;
  v14 = v13;
  sub_10000AC78(v4, v6, v8 & 1);

  v15 = a1[3];
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    static Font.subheadline.getter();
    Font.bold()();

    v22 = Text.font(_:)();
    v36 = v14;
    v35 = v23;
    v25 = v24;

    sub_10000AC78(v17, v19, v21 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v26 = Text.foregroundStyle<A>(_:)();
    v28 = v27;
    LOBYTE(v17) = v29;
    v31 = v30;
    v32 = v25 & 1;
    v14 = v36;
    sub_10000AC78(v22, v35, v32);

    v33 = v17 & 1;
    sub_100017564(v26, v28, v17 & 1);
  }

  else
  {
LABEL_6:
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v31 = 0;
  }

  sub_100017564(v9, v11, v37 & 1);

  sub_100033128(v26, v28, v33, v31);
  sub_10003316C(v26, v28, v33, v31);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v33;
  *(a2 + 56) = v31;
  sub_10003316C(v26, v28, v33, v31);
  sub_10000AC78(v9, v11, v37 & 1);
}

void sub_100030530()
{
  v1 = 0;
  v2 = *(v0 + *(type metadata accessor for HandoffBundle(0) + 44));
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = (v2 + 40 + 32 * v1); ; i += 4)
  {
    if (v3 == v1)
    {
      sub_100003768(&qword_10018A748, &qword_100124960);
      sub_10000AAEC(&qword_10018A750, &qword_10018A748, &qword_100124960, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = sub_10009A9A8(v6, v7);
    if (v8 != 18)
    {
      v9 = sub_1000306F0(v8);
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000CFF70();
        v4 = v14;
      }

      v12 = v4[2];
      if (v12 >= v4[3] >> 1)
      {
        sub_1000CFF70();
        v4 = v15;
      }

      ++v1;
      v4[2] = (v12 + 1);
      v13 = &v4[2 * v12];
      v13[4] = v9;
      v13[5] = v11;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
}